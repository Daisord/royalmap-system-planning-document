# RoyalMap 系統文件與開發規劃

一套以繁體中文 Markdown 撰寫的技能指引與文件範本，協助團隊及 Coding Agent 將需求、系統現況、規劃設計、開發工作與交付紀錄分開管理，並納入版本控制。

完整使用規則請參閱 [SKILL.md](SKILL.md)，版本變更請參閱 [CHANGELOG.md](CHANGELOG.md)。

## 適用情境

- 將零散需求或討論整理成系統架構與開發規劃文件。
- 記錄技術選型、資料設計、API、權限、資安、部署與維運資訊。
- 追蹤開發工作、驗收條件、驗證證據及審查結果。
- 在交付後同步更新系統現況，保留決策、變更與問題處理歷程。

## 安裝至 Codex

前置需求：已安裝 Git 與 Codex。將本儲存庫 Clone 到個人技能目錄後，即可在不同專案使用此技能。以下指令擇一執行。

### Windows PowerShell

```powershell
New-Item -ItemType Directory -Force -Path "$HOME/.agents/skills" | Out-Null

git clone https://github.com/Daisord/royalmap-system-planning-document.git "$HOME/.agents/skills/royalmap-system-planning-document"
```

### macOS／Linux

```bash
mkdir -p "$HOME/.agents/skills"

git clone https://github.com/Daisord/royalmap-system-planning-document.git \
  "$HOME/.agents/skills/royalmap-system-planning-document"
```

第一次下載使用 `git clone`；若目標目錄已存在，請先確認是否為同一份儲存庫，再依下方方式更新。

### 更新技能

Windows PowerShell、macOS 與 Linux 均可使用：

```sh
git -C "$HOME/.agents/skills/royalmap-system-planning-document" pull --ff-only
```

若本機修改與更新衝突，或分支已分歧，更新會停止；請先處理本機變更，再重新執行。

### 已下載至其他位置

可將完整專案資料夾複製到個人技能目錄，保留 `SKILL.md`、`references/` 與 `scripts/` 的相對位置：

```text
~/.agents/skills/royalmap-system-planning-document/
├─ SKILL.md
├─ references/
└─ scripts/
```

以複製方式安裝且未保留 Git 資訊時，後續需自行同步更新檔案。

### 確認與使用

在 Codex CLI／IDE 使用 `/skills` 查看技能，或在提示中輸入：

```text
$royalmap-system-planning-document

請根據目前專案內容建立系統現況與規劃文件，
未知資訊標示為待確認，並同步建立文件索引。
```

Codex 會自動偵測技能變更；若技能未出現，請重新啟動 Codex。技能目錄與使用方式可參閱 [OpenAI 官方技能文件](https://learn.chatgpt.com/docs/build-skills)。

## 手動使用範本

1. 取得本專案：

   ```sh
   git clone https://github.com/Daisord/royalmap-system-planning-document.git
   cd royalmap-system-planning-document
   ```

2. 閱讀 [SKILL.md](SKILL.md)，依工作狀態選用下方範本；使用 Coding Agent 時，可要求它先閱讀此檔，再根據已知需求整理文件。
3. 確認目標方案根目錄與專案名稱，在 `_Documents/[專案名稱]/` 建立文件索引與所需分類目錄。
4. 複製對應範本，填入已確認資訊，將未知內容標為 `[待確認]`，並刪除不適用的章節、表格與範例。
5. 文件新增、移動、完成或作廢時，同步更新目標專案的文件索引及相關連結。

需求範例：

```text
請先閱讀本技能的 SKILL.md，再根據以下資訊整理文件：

目標方案根目錄：C:/Projects/MySolution
專案名稱：會員系統
文件類型：規劃／設計中
已確認需求：支援會員註冊、登入與角色權限管理。
已確認技術：ASP.NET Core、PostgreSQL。
其餘資訊請標示為待確認，並更新文件索引。
```

以上需求與技術僅為使用示例，實際內容應以目標專案已確認的資訊為準。

## 文件分類與範本

| 文件類型 | 目標目錄 | 用途 | 範本 |
|---|---|---|---|
| 系統現況 | `01-System` | 記錄已完成、已驗證且目前有效的系統資訊 | [系統現況範本](references/system-document-template.md) |
| 規劃／設計中 | `02-Planning` | 整理待決策或待實作的需求、方案與風險 | [規劃設計範本](references/system-planning-template.md) |
| 開發中 | `03-In-Progress` | 追蹤工作單位、驗收條件、驗證與審查 | [開發工作單範本](references/in-progress-template.md) |
| 已完成 | `04-Completed` | 保留交付範圍、驗收結果與剩餘風險 | [完成紀錄範本](references/completion-template.md) |
| 開發歷程誌 | `05-Development-Log` | 依日期記錄變更、決策、問題與計畫調整 | [開發歷程範本](references/development-log-template.md) |
| 文件索引 | 專案文件根目錄 | 列出有效文件、狀態、負責人、更新日與路徑 | [文件索引範本](references/document-index-template.md) |

目標專案的文件結構如下；本儲存庫根目錄的 README 則用於介紹技能本身。

```text
[方案根目錄]/
└─ _Documents/
   └─ [專案名稱]/
      ├─ README.md
      ├─ 01-System/
      ├─ 02-Planning/
      ├─ 03-In-Progress/
      ├─ 04-Completed/
      └─ 05-Development-Log/
```

- 方案根目錄依序以 `.sln` 所在目錄、Git 工作樹根目錄、目前工作區根目錄判定；位置有歧義時先確認。
- 檔名以中文主題與文件類型為主，例如 `使用者管理-規劃設計.md`。
- 開發歷程誌以主題命名，例如 `身分驗證調整.md`，不在檔名加上日期；日期記錄於內容中。
- 附件放在對應文件目錄的 `assets/` 子目錄。
- 預設使用上述分類，技術決策記錄於開發歷程誌；有明確需求時才另設封存或 ADR 分類。

## 開發與文件生命週期

```text
規劃／設計中 → 開發中 → 已完成
                         ├─ 更新受影響的系統現況
                         └─ 追加開發歷程紀錄
```

開發中工作以可獨立驗證與審查的 Work Unit（工作單位）切分，並定義可觀察的 Acceptance Criteria（驗收條件）。實作後執行適用驗證，留下指令、結果、Commit 或其他 Evidence（證據），再進行 Independent Review（獨立審查）；發現問題時進入修正、驗證與再審查循環。

Human Gate（人工確認關卡）聚焦於剩餘風險、業務判斷及無法自動驗證的項目。必要驗證、審查與人工確認尚未完成時，不應將工作標記為已完成。

規劃階段定義各 Phase 的目標、邊界與 Exit Criteria（離開條件）；除有明確要求，測試案例與執行細節留待後續測試或開發階段規劃。

## 撰寫原則

- 只記錄可確認的事實，清楚區分現況、建議與尚未實作的設計。
- 範本是章節參考，依實際需求保留內容，避免直接沿用範例技術、版本或數值。
- 未執行的驗證不得宣稱通過；無法自動驗證時，標示需人工驗證並說明原因。
- 系統現況只納入已完成且仍有效的內容；完成紀錄保留交付證據，歷程誌保留決策與變更原因。
- 歷程誌以追加方式維護，更正既有紀錄時保留原因與時間。

## 維護與驗證

修改技能或範本後，在本儲存庫根目錄使用 PowerShell 執行：

```powershell
./scripts/Test-Skill.ps1
```

若 Windows 的執行原則阻擋腳本，可僅針對本次程序執行：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File ./scripts/Test-Skill.ps1
```

通過時會輸出 `Skill validation passed.`。此腳本檢查必要範本是否存在、`SKILL.md` 是否引用這些範本，以及文件索引範例是否含有不符規則的歷程檔名；文件內容正確性、Markdown 顯示與實際驗收證據仍需另行檢查。

## 授權

請參閱 [LICENSE](LICENSE)。
