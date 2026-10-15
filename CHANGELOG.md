# Skill 變更紀錄

## 2.0.1

- 統一開發歷程誌檔名範例，移除與「檔名不加時戳」規則衝突的日期前綴。
- 補上非 `.sln` 專案的文件根目錄判定順序。
- 將規劃範本的安全項目改為待確認的建議基線，避免將未知資訊寫成既定事實。
- 為 Independent Review 與完成紀錄補上可追溯的審查及 Acceptance Criteria 證據欄位。
- 新增 `scripts/Test-Skill.ps1`，檢查必要範本、SKILL.md 參考與歷程檔名範例。

## 2.0.0

本版保留既有文件生命週期與目錄結構，主要加入 Agentic Development 驗證閉環：

- 開發工作單改以 Work Unit 為核心，強調可獨立實作、驗證與 Review。
- 每個 Work Unit 加入 Acceptance Criteria。
- 加入 Verification Matrix 與 Evidence 規則。
- 加入 Independent Review 與 `Revise → Verify → Review` 循環。
- 加入 Human Gate，聚焦人工必要判斷與關鍵 Diff，而非全面逐行 Review。
- Planning 加入 Phase Objective、Boundary 與 Exit Criteria，但不強迫預先寫死所有 Work Unit。
- Completed 加入 Verification Summary 與 Remaining／Accepted Risks。
- Development Log 新增 Re-plan 類型。
- SKILL.md 加入 Agent 開發工作原則，禁止以 Agent 自述或未實際執行的測試作為完成證據。
