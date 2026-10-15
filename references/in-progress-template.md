# [主題]開發工作單

> 文件版本：`0.2.0`  
> 文件狀態：開發中  
> 最後更新日期：`YYYY-MM-DD`  
> 文件位置：`_Documents/[專案名稱]/03-In-Progress/[主題]-開發中.md`

---

## 1. 工作資訊

| 項目 | 內容 |
|---|---|
| 專案名稱 | `[專案名稱]` |
| 工作主題 | `[主題]` |
| 負責人 | `[姓名或部門]` |
| 開始日期 | `YYYY-MM-DD` |
| 預計完成日期 | `YYYY-MM-DD 或待確認` |
| 關聯規劃文件 | `[相對路徑]` |
| 目前 Phase | `[Phase ID／名稱]` |
| 受影響系統文件 | `[相對路徑或無]` |

## 2. Repository 現況與工作邊界

### Repository Reconnaissance

- 相關模組／目錄：`[路徑]`
- 既有測試：`[測試專案或無]`
- 既有規則／限制：`[說明]`
- 與原規劃差異：`[無／差異與影響]`
- 是否需要 Re-plan：否／是，`[原因]`

### 工作範圍

- 目標：`[目標]`
- 本次範圍：`[範圍]`
- 不在本次範圍：`[非範圍]`
- 實作方式：`[實際採用作法；未定案則標示待確認]`

## 3. Work Unit 與進度

> Work Unit 以可獨立實作、驗證與 Review 為原則；若 Diff 過大、驗證方式不同或失敗時難以定位，應再拆分。

| ID | 工作單位 | 前置條件 | 驗收條件 | 狀態 |
|---|---|---|---|---|
| WU-01 | `[工作內容]` | `[前置條件或無]` | `AC-01-01 ~ AC-01-n` | 待處理／進行中／待驗證／待 Review／待人工驗收／完成 |

### Acceptance Criteria

#### WU-01：`[工作單位名稱]`

- [ ] `AC-01-01` `[可觀察且可判定的驗收條件]`
- [ ] `AC-01-02` `[可觀察且可判定的驗收條件]`

> Acceptance Criteria 應描述「結果」，不要只寫「新增某類別」、「修改某方法」等實作動作。

## 4. Verification 與 Evidence

| Work Unit | Acceptance Criteria | 驗證方式 | 結果 | Evidence |
|---|---|---|---|---|
| WU-01 | AC-01-01 | Build／Unit Test／Integration Test／Runtime／Browser／Manual | 未執行／通過／未通過／需人工驗證 | `[指令、測試名稱、結果、URL、Response、檔案或其他證據]` |

### 自動驗證摘要

| 項目 | 結果 | Evidence |
|---|---|---|
| Build | 未執行／通過／未通過 | `[指令與結果]` |
| Static Check／Lint | 不適用／未執行／通過／未通過 | `[結果]` |
| Unit Test | 不適用／未執行／`x / y` 通過 | `[測試專案或名稱]` |
| Integration Test | 不適用／未執行／`x / y` 通過 | `[測試內容]` |
| Runtime／Browser Test | 不適用／未執行／通過／未通過 | `[操作或結果]` |

> 未實際執行的驗證不得填寫為通過；無法由 Agent 執行時應標示「需人工驗證」並說明原因。

## 5. Independent Review

### Review 狀態

| 項目 | 內容 |
|---|---|
| Reviewer | `[Agent／模型／人員]` |
| Review 範圍 | `[Work Unit／Diff／Commit]` |
| 審查依據 | `[需求、Acceptance Criteria、Repository 現況與 Verification Evidence]` |
| 審查證據 | `[PR、Commit、Diff、Review 輸出或檔案位置]` |
| Review Context | 獨立／同 Agent 獨立 Context／人工 |
| Review 結果 | 未執行／通過／需修正／需人工判斷 |

### Review Findings

| ID | 等級 | 問題 | 關聯 Work Unit／位置 | 處理結果 |
|---|---|---|---|---|
| R-001 | Critical／Major／Minor／Decision | `[問題]` | `[WU／檔案／行為]` | 待處理／已修正／接受風險／Human Gate |

> Reviewer 應依需求、Acceptance Criteria、實際 Diff、Repository 與 Verification Evidence 重新判斷，不得直接以 Implementer 的完成摘要為事實。

## 6. 風險、阻礙與 Re-plan

| 項目 | 類型 | 影響 | 處理方式／負責人 | 狀態 |
|---|---|---|---|---|
| `[事項]` | Risk／Blocker／Re-plan／Question | 高／中／低 | `[處理方式]` | 待處理／已處理／已接受 |

## 7. Human Gate

### Agent 提交摘要

| 項目 | 結果 |
|---|---|
| Work Units | `x / y` 完成 |
| Acceptance Criteria | `x / y` 通過 |
| Automated Verification | `[摘要]` |
| Independent Review | `[摘要]` |
| 未解決 Major Findings | `[數量／無]` |
| 需人工驗證 | `[數量／無]` |
| Remaining Risks | `[數量／無]` |

### 建議人工檢查

| 項目 | 原因 | 關聯檔案／流程 |
|---|---|---|
| `[項目]` | `[業務邏輯／架構／不可自動驗證／高風險變更]` | `[路徑、Diff 或流程]` |

### Human Decision

- [ ] Accept
- [ ] Reject
- [ ] Revise

決策說明：`[說明]`

## 8. 轉完成前檢查

- [ ] 所有必要 Work Unit 已完成，或例外已記錄。
- [ ] 必要 Acceptance Criteria 已通過，未通過項目已有明確處置。
- [ ] 可自動執行的 Verification 已完成並保留 Evidence。
- [ ] Independent Review 已完成，重大 Finding 已處理或明確接受。
- [ ] Human Gate 已完成。
- [ ] Remaining Risks 與需人工驗證事項已記錄。
- [ ] 建立完成紀錄並更新開發歷程誌。
- [ ] 已判斷並更新受影響的系統文件。
