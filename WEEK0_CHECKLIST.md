# Week 0: Thursday Nov 12 to Sunday Nov 15, 2026

Tick each box. Commit to GitHub at the end of every block.

## Thursday Nov 12, 2:00-4:00pm: tools and accounts
- [ ] PostgreSQL: download the Windows installer from https://www.postgresql.org/download/windows/ . Keep the default port 5432, write down the password for user `postgres`, untick Stack Builder at the end.
- [ ] DBeaver Community: https://dbeaver.io/download/ . New connection > PostgreSQL > localhost, 5432, user postgres, your password. Test the connection.
- [ ] Git: open a terminal and run `git --version`. If it fails, install Git for Windows from https://git-scm.com/download/win .
- [ ] GitHub: create an empty public repo named `sql-practice` (no README, no .gitignore; this folder already has both). Then in Anaconda Prompt:
      cd %USERPROFILE%\Documents\sql-practice
      git init
      git add .
      git commit -m "Week 0: starter kit"
      git branch -M main
      git remote add origin https://github.com/<your-username>/sql-practice.git
      git push -u origin main
- [ ] SAS OnDemand for Academics (free, no time limit): register at https://www.sas.com/en_us/software/on-demand-for-academics.html . You will not use it until Week 4; registration can take a while to activate, so do it now.
- [ ] StateJobsNY: bookmark https://statejobs.ny.gov/public/vacancyTable.cfm and search the title for "Data Analyst". Each posting's "Notes on Applying" says where to send the resume (usually an email address). Check it every Friday and on the Tuesday night shift.

## Friday Nov 13, 9:30-11:30am: load the data
- [ ] Open the dataset page: https://health.data.ny.gov/Health/Hospital-Inpatient-Discharges-SPARCS-De-Identified/46xm-urtu . Export > CSV. It is large (well over half a GB); let it finish.
- [ ] Move it into `Documents\sql-practice\data\` and rename it `sparcs_2023.csv`.
- [ ] Anaconda Prompt: `cd %USERPROFILE%\Documents\sql-practice` then `setup\load_sparcs.bat`.
- [ ] Both row counts at the end match. Screenshot the null-count table: it goes in your Project 1 data-quality notes later.
- [ ] Commit: `git add . && git commit -m "Load SPARCS 2023" && git push`

## Friday Nov 13, 2:00-3:30pm: first application
- [ ] Check StateJobsNY for open Data Analyst / Trainee postings in Albany (deadline after today).
- [ ] If one is open: send resume + a cover letter that lists, line by line, how you meet its minimum qualifications.
- [ ] If none is open: apply to one non-state target instead (HRI careers page, or NYSTEC's data analyst talent community), and note it in your tracker.

## Saturday Nov 14, 8:30am-12:00pm
- [ ] 15 join problems, logged in `problems/week00/joins_log.md`
- [ ] Answer Q1-Q5 in `sparcs_questions.sql`, one line of meaning under each
- [ ] Commit and push

## Saturday and Sunday night shifts (midnight-3:00am)
- [ ] 20 more join problems, logged
- [ ] Commit and push before you leave work
