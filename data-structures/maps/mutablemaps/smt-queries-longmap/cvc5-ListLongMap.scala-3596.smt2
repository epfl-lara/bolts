; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49462 () Bool)

(assert start!49462)

(declare-fun b!544290 () Bool)

(declare-fun res!338706 () Bool)

(declare-fun e!314684 () Bool)

(assert (=> b!544290 (=> (not res!338706) (not e!314684))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34345 0))(
  ( (array!34346 (arr!16500 (Array (_ BitVec 32) (_ BitVec 64))) (size!16864 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34345)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!544290 (= res!338706 (and (= (size!16864 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16864 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16864 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!544291 () Bool)

(declare-fun res!338713 () Bool)

(assert (=> b!544291 (=> (not res!338713) (not e!314684))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34345 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!544291 (= res!338713 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!544292 () Bool)

(declare-fun res!338704 () Bool)

(declare-fun e!314686 () Bool)

(assert (=> b!544292 (=> (not res!338704) (not e!314686))))

(declare-datatypes ((SeekEntryResult!4965 0))(
  ( (MissingZero!4965 (index!22084 (_ BitVec 32))) (Found!4965 (index!22085 (_ BitVec 32))) (Intermediate!4965 (undefined!5777 Bool) (index!22086 (_ BitVec 32)) (x!51030 (_ BitVec 32))) (Undefined!4965) (MissingVacant!4965 (index!22087 (_ BitVec 32))) )
))
(declare-fun lt!248463 () SeekEntryResult!4965)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34345 (_ BitVec 32)) SeekEntryResult!4965)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544292 (= res!338704 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16500 a!3154) j!147) mask!3216) (select (arr!16500 a!3154) j!147) a!3154 mask!3216) lt!248463))))

(declare-fun b!544293 () Bool)

(declare-fun res!338711 () Bool)

(declare-fun e!314685 () Bool)

(assert (=> b!544293 (=> (not res!338711) (not e!314685))))

(declare-datatypes ((List!10672 0))(
  ( (Nil!10669) (Cons!10668 (h!11626 (_ BitVec 64)) (t!16908 List!10672)) )
))
(declare-fun arrayNoDuplicates!0 (array!34345 (_ BitVec 32) List!10672) Bool)

(assert (=> b!544293 (= res!338711 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10669))))

(declare-fun b!544294 () Bool)

(declare-fun res!338714 () Bool)

(assert (=> b!544294 (=> (not res!338714) (not e!314685))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34345 (_ BitVec 32)) Bool)

(assert (=> b!544294 (= res!338714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!544295 () Bool)

(assert (=> b!544295 (= e!314685 e!314686)))

(declare-fun res!338703 () Bool)

(assert (=> b!544295 (=> (not res!338703) (not e!314686))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!544295 (= res!338703 (= lt!248463 (Intermediate!4965 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!544295 (= lt!248463 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16500 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544296 () Bool)

(declare-fun res!338712 () Bool)

(assert (=> b!544296 (=> (not res!338712) (not e!314684))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!544296 (= res!338712 (validKeyInArray!0 k!1998))))

(declare-fun b!544297 () Bool)

(assert (=> b!544297 (= e!314684 e!314685)))

(declare-fun res!338708 () Bool)

(assert (=> b!544297 (=> (not res!338708) (not e!314685))))

(declare-fun lt!248464 () SeekEntryResult!4965)

(assert (=> b!544297 (= res!338708 (or (= lt!248464 (MissingZero!4965 i!1153)) (= lt!248464 (MissingVacant!4965 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34345 (_ BitVec 32)) SeekEntryResult!4965)

(assert (=> b!544297 (= lt!248464 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!544298 () Bool)

(declare-fun res!338710 () Bool)

(assert (=> b!544298 (=> (not res!338710) (not e!314684))))

(assert (=> b!544298 (= res!338710 (validKeyInArray!0 (select (arr!16500 a!3154) j!147)))))

(declare-fun b!544299 () Bool)

(declare-fun res!338709 () Bool)

(assert (=> b!544299 (=> (not res!338709) (not e!314686))))

(assert (=> b!544299 (= res!338709 (and (not (= (select (arr!16500 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16500 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16500 a!3154) index!1177) (select (arr!16500 a!3154) j!147)))))))

(declare-fun b!544300 () Bool)

(declare-fun lt!248465 () (_ BitVec 32))

(assert (=> b!544300 (= e!314686 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (or (bvslt lt!248465 #b00000000000000000000000000000000) (bvsge lt!248465 (size!16864 a!3154)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544300 (= lt!248465 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!544301 () Bool)

(declare-fun res!338705 () Bool)

(assert (=> b!544301 (=> (not res!338705) (not e!314685))))

(assert (=> b!544301 (= res!338705 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16864 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16864 a!3154)) (= (select (arr!16500 a!3154) resIndex!32) (select (arr!16500 a!3154) j!147))))))

(declare-fun res!338707 () Bool)

(assert (=> start!49462 (=> (not res!338707) (not e!314684))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49462 (= res!338707 (validMask!0 mask!3216))))

(assert (=> start!49462 e!314684))

(assert (=> start!49462 true))

(declare-fun array_inv!12274 (array!34345) Bool)

(assert (=> start!49462 (array_inv!12274 a!3154)))

(assert (= (and start!49462 res!338707) b!544290))

(assert (= (and b!544290 res!338706) b!544298))

(assert (= (and b!544298 res!338710) b!544296))

(assert (= (and b!544296 res!338712) b!544291))

(assert (= (and b!544291 res!338713) b!544297))

(assert (= (and b!544297 res!338708) b!544294))

(assert (= (and b!544294 res!338714) b!544293))

(assert (= (and b!544293 res!338711) b!544301))

(assert (= (and b!544301 res!338705) b!544295))

(assert (= (and b!544295 res!338703) b!544292))

(assert (= (and b!544292 res!338704) b!544299))

(assert (= (and b!544299 res!338709) b!544300))

(declare-fun m!522217 () Bool)

(assert (=> b!544295 m!522217))

(assert (=> b!544295 m!522217))

(declare-fun m!522219 () Bool)

(assert (=> b!544295 m!522219))

(declare-fun m!522221 () Bool)

(assert (=> b!544291 m!522221))

(assert (=> b!544298 m!522217))

(assert (=> b!544298 m!522217))

(declare-fun m!522223 () Bool)

(assert (=> b!544298 m!522223))

(declare-fun m!522225 () Bool)

(assert (=> b!544300 m!522225))

(declare-fun m!522227 () Bool)

(assert (=> b!544296 m!522227))

(declare-fun m!522229 () Bool)

(assert (=> start!49462 m!522229))

(declare-fun m!522231 () Bool)

(assert (=> start!49462 m!522231))

(assert (=> b!544292 m!522217))

(assert (=> b!544292 m!522217))

(declare-fun m!522233 () Bool)

(assert (=> b!544292 m!522233))

(assert (=> b!544292 m!522233))

(assert (=> b!544292 m!522217))

(declare-fun m!522235 () Bool)

(assert (=> b!544292 m!522235))

(declare-fun m!522237 () Bool)

(assert (=> b!544297 m!522237))

(declare-fun m!522239 () Bool)

(assert (=> b!544293 m!522239))

(declare-fun m!522241 () Bool)

(assert (=> b!544294 m!522241))

(declare-fun m!522243 () Bool)

(assert (=> b!544299 m!522243))

(assert (=> b!544299 m!522217))

(declare-fun m!522245 () Bool)

(assert (=> b!544301 m!522245))

(assert (=> b!544301 m!522217))

(push 1)

(assert (not start!49462))

(assert (not b!544296))

(assert (not b!544293))

(assert (not b!544298))

(assert (not b!544291))

(assert (not b!544297))

(assert (not b!544292))

(assert (not b!544294))

(assert (not b!544295))

(assert (not b!544300))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!81977 () Bool)

(declare-fun lt!248490 () (_ BitVec 32))

(assert (=> d!81977 (and (bvsge lt!248490 #b00000000000000000000000000000000) (bvslt lt!248490 (bvadd mask!3216 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!81977 (= lt!248490 (choose!52 index!1177 x!1030 mask!3216))))

(assert (=> d!81977 (validMask!0 mask!3216)))

(assert (=> d!81977 (= (nextIndex!0 index!1177 x!1030 mask!3216) lt!248490)))

(declare-fun bs!16986 () Bool)

(assert (= bs!16986 d!81977))

(declare-fun m!522315 () Bool)

(assert (=> bs!16986 m!522315))

(assert (=> bs!16986 m!522229))

(assert (=> b!544300 d!81977))

(declare-fun d!81979 () Bool)

(declare-fun res!338801 () Bool)

(declare-fun e!314738 () Bool)

(assert (=> d!81979 (=> res!338801 e!314738)))

(assert (=> d!81979 (= res!338801 (bvsge #b00000000000000000000000000000000 (size!16864 a!3154)))))

(assert (=> d!81979 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!314738)))

(declare-fun b!544415 () Bool)

(declare-fun e!314739 () Bool)

(declare-fun call!32096 () Bool)

(assert (=> b!544415 (= e!314739 call!32096)))

(declare-fun b!544416 () Bool)

(assert (=> b!544416 (= e!314738 e!314739)))

(declare-fun c!63131 () Bool)

(assert (=> b!544416 (= c!63131 (validKeyInArray!0 (select (arr!16500 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!544417 () Bool)

(declare-fun e!314740 () Bool)

(assert (=> b!544417 (= e!314739 e!314740)))

(declare-fun lt!248505 () (_ BitVec 64))

(assert (=> b!544417 (= lt!248505 (select (arr!16500 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16886 0))(
  ( (Unit!16887) )
))
(declare-fun lt!248507 () Unit!16886)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34345 (_ BitVec 64) (_ BitVec 32)) Unit!16886)

(assert (=> b!544417 (= lt!248507 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!248505 #b00000000000000000000000000000000))))

(assert (=> b!544417 (arrayContainsKey!0 a!3154 lt!248505 #b00000000000000000000000000000000)))

(declare-fun lt!248506 () Unit!16886)

(assert (=> b!544417 (= lt!248506 lt!248507)))

(declare-fun res!338800 () Bool)

(assert (=> b!544417 (= res!338800 (= (seekEntryOrOpen!0 (select (arr!16500 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4965 #b00000000000000000000000000000000)))))

(assert (=> b!544417 (=> (not res!338800) (not e!314740))))

(declare-fun bm!32093 () Bool)

(assert (=> bm!32093 (= call!32096 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!544418 () Bool)

(assert (=> b!544418 (= e!314740 call!32096)))

(assert (= (and d!81979 (not res!338801)) b!544416))

(assert (= (and b!544416 c!63131) b!544417))

(assert (= (and b!544416 (not c!63131)) b!544415))

(assert (= (and b!544417 res!338800) b!544418))

(assert (= (or b!544418 b!544415) bm!32093))

(declare-fun m!522333 () Bool)

(assert (=> b!544416 m!522333))

(assert (=> b!544416 m!522333))

(declare-fun m!522335 () Bool)

(assert (=> b!544416 m!522335))

(assert (=> b!544417 m!522333))

(declare-fun m!522337 () Bool)

(assert (=> b!544417 m!522337))

(declare-fun m!522339 () Bool)

(assert (=> b!544417 m!522339))

(assert (=> b!544417 m!522333))

(declare-fun m!522341 () Bool)

(assert (=> b!544417 m!522341))

(declare-fun m!522343 () Bool)

(assert (=> bm!32093 m!522343))

(assert (=> b!544294 d!81979))

(declare-fun b!544429 () Bool)

(declare-fun e!314750 () Bool)

(declare-fun call!32099 () Bool)

(assert (=> b!544429 (= e!314750 call!32099)))

(declare-fun b!544430 () Bool)

(declare-fun e!314752 () Bool)

(assert (=> b!544430 (= e!314752 e!314750)))

(declare-fun c!63134 () Bool)

(assert (=> b!544430 (= c!63134 (validKeyInArray!0 (select (arr!16500 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!32096 () Bool)

(assert (=> bm!32096 (= call!32099 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63134 (Cons!10668 (select (arr!16500 a!3154) #b00000000000000000000000000000000) Nil!10669) Nil!10669)))))

(declare-fun d!81989 () Bool)

(declare-fun res!338810 () Bool)

(declare-fun e!314749 () Bool)

(assert (=> d!81989 (=> res!338810 e!314749)))

(assert (=> d!81989 (= res!338810 (bvsge #b00000000000000000000000000000000 (size!16864 a!3154)))))

(assert (=> d!81989 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10669) e!314749)))

(declare-fun b!544431 () Bool)

(assert (=> b!544431 (= e!314750 call!32099)))

(declare-fun b!544432 () Bool)

(declare-fun e!314751 () Bool)

(declare-fun contains!2814 (List!10672 (_ BitVec 64)) Bool)

(assert (=> b!544432 (= e!314751 (contains!2814 Nil!10669 (select (arr!16500 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!544433 () Bool)

(assert (=> b!544433 (= e!314749 e!314752)))

(declare-fun res!338808 () Bool)

(assert (=> b!544433 (=> (not res!338808) (not e!314752))))

(assert (=> b!544433 (= res!338808 (not e!314751))))

(declare-fun res!338809 () Bool)

(assert (=> b!544433 (=> (not res!338809) (not e!314751))))

(assert (=> b!544433 (= res!338809 (validKeyInArray!0 (select (arr!16500 a!3154) #b00000000000000000000000000000000)))))

(assert (= (and d!81989 (not res!338810)) b!544433))

(assert (= (and b!544433 res!338809) b!544432))

(assert (= (and b!544433 res!338808) b!544430))

(assert (= (and b!544430 c!63134) b!544431))

(assert (= (and b!544430 (not c!63134)) b!544429))

(assert (= (or b!544431 b!544429) bm!32096))

(assert (=> b!544430 m!522333))

(assert (=> b!544430 m!522333))

(assert (=> b!544430 m!522335))

(assert (=> bm!32096 m!522333))

(declare-fun m!522345 () Bool)

(assert (=> bm!32096 m!522345))

(assert (=> b!544432 m!522333))

(assert (=> b!544432 m!522333))

(declare-fun m!522347 () Bool)

(assert (=> b!544432 m!522347))

(assert (=> b!544433 m!522333))

(assert (=> b!544433 m!522333))

(assert (=> b!544433 m!522335))

(assert (=> b!544293 d!81989))

(declare-fun d!81995 () Bool)

(assert (=> d!81995 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49462 d!81995))

(declare-fun d!81997 () Bool)

(assert (=> d!81997 (= (array_inv!12274 a!3154) (bvsge (size!16864 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!49462 d!81997))

(declare-fun d!81999 () Bool)

(assert (=> d!81999 (= (validKeyInArray!0 (select (arr!16500 a!3154) j!147)) (and (not (= (select (arr!16500 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16500 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!544298 d!81999))

(declare-fun b!544526 () Bool)

(declare-fun e!314810 () SeekEntryResult!4965)

(declare-fun e!314808 () SeekEntryResult!4965)

(assert (=> b!544526 (= e!314810 e!314808)))

(declare-fun lt!248541 () (_ BitVec 64))

(declare-fun lt!248540 () SeekEntryResult!4965)

(assert (=> b!544526 (= lt!248541 (select (arr!16500 a!3154) (index!22086 lt!248540)))))

(declare-fun c!63164 () Bool)

(assert (=> b!544526 (= c!63164 (= lt!248541 k!1998))))

(declare-fun b!544527 () Bool)

(declare-fun c!63165 () Bool)

(assert (=> b!544527 (= c!63165 (= lt!248541 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!314809 () SeekEntryResult!4965)

(assert (=> b!544527 (= e!314808 e!314809)))

(declare-fun b!544528 () Bool)

(assert (=> b!544528 (= e!314810 Undefined!4965)))

(declare-fun b!544529 () Bool)

(assert (=> b!544529 (= e!314809 (MissingZero!4965 (index!22086 lt!248540)))))

(declare-fun b!544530 () Bool)

(assert (=> b!544530 (= e!314808 (Found!4965 (index!22086 lt!248540)))))

(declare-fun b!544525 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34345 (_ BitVec 32)) SeekEntryResult!4965)

(assert (=> b!544525 (= e!314809 (seekKeyOrZeroReturnVacant!0 (x!51030 lt!248540) (index!22086 lt!248540) (index!22086 lt!248540) k!1998 a!3154 mask!3216))))

(declare-fun d!82001 () Bool)

(declare-fun lt!248542 () SeekEntryResult!4965)

(assert (=> d!82001 (and (or (is-Undefined!4965 lt!248542) (not (is-Found!4965 lt!248542)) (and (bvsge (index!22085 lt!248542) #b00000000000000000000000000000000) (bvslt (index!22085 lt!248542) (size!16864 a!3154)))) (or (is-Undefined!4965 lt!248542) (is-Found!4965 lt!248542) (not (is-MissingZero!4965 lt!248542)) (and (bvsge (index!22084 lt!248542) #b00000000000000000000000000000000) (bvslt (index!22084 lt!248542) (size!16864 a!3154)))) (or (is-Undefined!4965 lt!248542) (is-Found!4965 lt!248542) (is-MissingZero!4965 lt!248542) (not (is-MissingVacant!4965 lt!248542)) (and (bvsge (index!22087 lt!248542) #b00000000000000000000000000000000) (bvslt (index!22087 lt!248542) (size!16864 a!3154)))) (or (is-Undefined!4965 lt!248542) (ite (is-Found!4965 lt!248542) (= (select (arr!16500 a!3154) (index!22085 lt!248542)) k!1998) (ite (is-MissingZero!4965 lt!248542) (= (select (arr!16500 a!3154) (index!22084 lt!248542)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4965 lt!248542) (= (select (arr!16500 a!3154) (index!22087 lt!248542)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82001 (= lt!248542 e!314810)))

(declare-fun c!63166 () Bool)

(assert (=> d!82001 (= c!63166 (and (is-Intermediate!4965 lt!248540) (undefined!5777 lt!248540)))))

(assert (=> d!82001 (= lt!248540 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!82001 (validMask!0 mask!3216)))

(assert (=> d!82001 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!248542)))

(assert (= (and d!82001 c!63166) b!544528))

(assert (= (and d!82001 (not c!63166)) b!544526))

(assert (= (and b!544526 c!63164) b!544530))

(assert (= (and b!544526 (not c!63164)) b!544527))

(assert (= (and b!544527 c!63165) b!544529))

(assert (= (and b!544527 (not c!63165)) b!544525))

(declare-fun m!522373 () Bool)

(assert (=> b!544526 m!522373))

(declare-fun m!522375 () Bool)

(assert (=> b!544525 m!522375))

(assert (=> d!82001 m!522229))

(declare-fun m!522377 () Bool)

(assert (=> d!82001 m!522377))

(declare-fun m!522379 () Bool)

(assert (=> d!82001 m!522379))

(declare-fun m!522381 () Bool)

(assert (=> d!82001 m!522381))

(assert (=> d!82001 m!522377))

(declare-fun m!522383 () Bool)

(assert (=> d!82001 m!522383))

(declare-fun m!522385 () Bool)

(assert (=> d!82001 m!522385))

(assert (=> b!544297 d!82001))

(declare-fun b!544584 () Bool)

(declare-fun e!314851 () Bool)

(declare-fun e!314850 () Bool)

(assert (=> b!544584 (= e!314851 e!314850)))

(declare-fun res!338874 () Bool)

(declare-fun lt!248566 () SeekEntryResult!4965)

(assert (=> b!544584 (= res!338874 (and (is-Intermediate!4965 lt!248566) (not (undefined!5777 lt!248566)) (bvslt (x!51030 lt!248566) #b01111111111111111111111111111110) (bvsge (x!51030 lt!248566) #b00000000000000000000000000000000) (bvsge (x!51030 lt!248566) #b00000000000000000000000000000000)))))

(assert (=> b!544584 (=> (not res!338874) (not e!314850))))

(declare-fun b!544585 () Bool)

(declare-fun e!314853 () SeekEntryResult!4965)

(assert (=> b!544585 (= e!314853 (Intermediate!4965 false (toIndex!0 (select (arr!16500 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!544586 () Bool)

(assert (=> b!544586 (= e!314853 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16500 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16500 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544587 () Bool)

(declare-fun e!314849 () SeekEntryResult!4965)

(assert (=> b!544587 (= e!314849 e!314853)))

(declare-fun lt!248565 () (_ BitVec 64))

(declare-fun c!63180 () Bool)

(assert (=> b!544587 (= c!63180 (or (= lt!248565 (select (arr!16500 a!3154) j!147)) (= (bvadd lt!248565 lt!248565) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!544588 () Bool)

(assert (=> b!544588 (= e!314849 (Intermediate!4965 true (toIndex!0 (select (arr!16500 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!544589 () Bool)

(assert (=> b!544589 (and (bvsge (index!22086 lt!248566) #b00000000000000000000000000000000) (bvslt (index!22086 lt!248566) (size!16864 a!3154)))))

(declare-fun res!338875 () Bool)

(assert (=> b!544589 (= res!338875 (= (select (arr!16500 a!3154) (index!22086 lt!248566)) (select (arr!16500 a!3154) j!147)))))

(declare-fun e!314852 () Bool)

(assert (=> b!544589 (=> res!338875 e!314852)))

(assert (=> b!544589 (= e!314850 e!314852)))

(declare-fun b!544590 () Bool)

(assert (=> b!544590 (= e!314851 (bvsge (x!51030 lt!248566) #b01111111111111111111111111111110))))

(declare-fun d!82021 () Bool)

(assert (=> d!82021 e!314851))

(declare-fun c!63181 () Bool)

(assert (=> d!82021 (= c!63181 (and (is-Intermediate!4965 lt!248566) (undefined!5777 lt!248566)))))

(assert (=> d!82021 (= lt!248566 e!314849)))

(declare-fun c!63182 () Bool)

(assert (=> d!82021 (= c!63182 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!82021 (= lt!248565 (select (arr!16500 a!3154) (toIndex!0 (select (arr!16500 a!3154) j!147) mask!3216)))))

(assert (=> d!82021 (validMask!0 mask!3216)))

(assert (=> d!82021 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16500 a!3154) j!147) mask!3216) (select (arr!16500 a!3154) j!147) a!3154 mask!3216) lt!248566)))

(declare-fun b!544591 () Bool)

(assert (=> b!544591 (and (bvsge (index!22086 lt!248566) #b00000000000000000000000000000000) (bvslt (index!22086 lt!248566) (size!16864 a!3154)))))

(assert (=> b!544591 (= e!314852 (= (select (arr!16500 a!3154) (index!22086 lt!248566)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!544592 () Bool)

(assert (=> b!544592 (and (bvsge (index!22086 lt!248566) #b00000000000000000000000000000000) (bvslt (index!22086 lt!248566) (size!16864 a!3154)))))

(declare-fun res!338873 () Bool)

(assert (=> b!544592 (= res!338873 (= (select (arr!16500 a!3154) (index!22086 lt!248566)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!544592 (=> res!338873 e!314852)))

(assert (= (and d!82021 c!63182) b!544588))

(assert (= (and d!82021 (not c!63182)) b!544587))

(assert (= (and b!544587 c!63180) b!544585))

(assert (= (and b!544587 (not c!63180)) b!544586))

(assert (= (and d!82021 c!63181) b!544590))

(assert (= (and d!82021 (not c!63181)) b!544584))

(assert (= (and b!544584 res!338874) b!544589))

(assert (= (and b!544589 (not res!338875)) b!544592))

(assert (= (and b!544592 (not res!338873)) b!544591))

(declare-fun m!522411 () Bool)

(assert (=> b!544589 m!522411))

(assert (=> b!544586 m!522233))

(declare-fun m!522413 () Bool)

(assert (=> b!544586 m!522413))

(assert (=> b!544586 m!522413))

(assert (=> b!544586 m!522217))

(declare-fun m!522415 () Bool)

(assert (=> b!544586 m!522415))

(assert (=> b!544592 m!522411))

(assert (=> d!82021 m!522233))

(declare-fun m!522417 () Bool)

(assert (=> d!82021 m!522417))

(assert (=> d!82021 m!522229))

(assert (=> b!544591 m!522411))

(assert (=> b!544292 d!82021))

(declare-fun d!82033 () Bool)

(declare-fun lt!248578 () (_ BitVec 32))

(declare-fun lt!248577 () (_ BitVec 32))

(assert (=> d!82033 (= lt!248578 (bvmul (bvxor lt!248577 (bvlshr lt!248577 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82033 (= lt!248577 ((_ extract 31 0) (bvand (bvxor (select (arr!16500 a!3154) j!147) (bvlshr (select (arr!16500 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82033 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!338876 (let ((h!11631 ((_ extract 31 0) (bvand (bvxor (select (arr!16500 a!3154) j!147) (bvlshr (select (arr!16500 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51040 (bvmul (bvxor h!11631 (bvlshr h!11631 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51040 (bvlshr x!51040 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!338876 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!338876 #b00000000000000000000000000000000))))))

(assert (=> d!82033 (= (toIndex!0 (select (arr!16500 a!3154) j!147) mask!3216) (bvand (bvxor lt!248578 (bvlshr lt!248578 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!544292 d!82033))

(declare-fun d!82035 () Bool)

(declare-fun res!338881 () Bool)

(declare-fun e!314867 () Bool)

(assert (=> d!82035 (=> res!338881 e!314867)))

(assert (=> d!82035 (= res!338881 (= (select (arr!16500 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!82035 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!314867)))

(declare-fun b!544615 () Bool)

(declare-fun e!314868 () Bool)

(assert (=> b!544615 (= e!314867 e!314868)))

(declare-fun res!338882 () Bool)

(assert (=> b!544615 (=> (not res!338882) (not e!314868))))

(assert (=> b!544615 (= res!338882 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16864 a!3154)))))

(declare-fun b!544616 () Bool)

(assert (=> b!544616 (= e!314868 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82035 (not res!338881)) b!544615))

(assert (= (and b!544615 res!338882) b!544616))

(assert (=> d!82035 m!522333))

(declare-fun m!522433 () Bool)

(assert (=> b!544616 m!522433))

(assert (=> b!544291 d!82035))

(declare-fun d!82039 () Bool)

(assert (=> d!82039 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!544296 d!82039))

(declare-fun b!544617 () Bool)

(declare-fun e!314871 () Bool)

(declare-fun e!314870 () Bool)

(assert (=> b!544617 (= e!314871 e!314870)))

(declare-fun res!338884 () Bool)

(declare-fun lt!248583 () SeekEntryResult!4965)

(assert (=> b!544617 (= res!338884 (and (is-Intermediate!4965 lt!248583) (not (undefined!5777 lt!248583)) (bvslt (x!51030 lt!248583) #b01111111111111111111111111111110) (bvsge (x!51030 lt!248583) #b00000000000000000000000000000000) (bvsge (x!51030 lt!248583) x!1030)))))

(assert (=> b!544617 (=> (not res!338884) (not e!314870))))

(declare-fun b!544618 () Bool)

(declare-fun e!314873 () SeekEntryResult!4965)

(assert (=> b!544618 (= e!314873 (Intermediate!4965 false index!1177 x!1030))))

(declare-fun b!544619 () Bool)

(assert (=> b!544619 (= e!314873 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16500 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544620 () Bool)

(declare-fun e!314869 () SeekEntryResult!4965)

(assert (=> b!544620 (= e!314869 e!314873)))

(declare-fun c!63192 () Bool)

(declare-fun lt!248582 () (_ BitVec 64))

(assert (=> b!544620 (= c!63192 (or (= lt!248582 (select (arr!16500 a!3154) j!147)) (= (bvadd lt!248582 lt!248582) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!544621 () Bool)

(assert (=> b!544621 (= e!314869 (Intermediate!4965 true index!1177 x!1030))))

(declare-fun b!544622 () Bool)

(assert (=> b!544622 (and (bvsge (index!22086 lt!248583) #b00000000000000000000000000000000) (bvslt (index!22086 lt!248583) (size!16864 a!3154)))))

(declare-fun res!338885 () Bool)

(assert (=> b!544622 (= res!338885 (= (select (arr!16500 a!3154) (index!22086 lt!248583)) (select (arr!16500 a!3154) j!147)))))

(declare-fun e!314872 () Bool)

(assert (=> b!544622 (=> res!338885 e!314872)))

(assert (=> b!544622 (= e!314870 e!314872)))

(declare-fun b!544623 () Bool)

(assert (=> b!544623 (= e!314871 (bvsge (x!51030 lt!248583) #b01111111111111111111111111111110))))

(declare-fun d!82041 () Bool)

(assert (=> d!82041 e!314871))

(declare-fun c!63193 () Bool)

(assert (=> d!82041 (= c!63193 (and (is-Intermediate!4965 lt!248583) (undefined!5777 lt!248583)))))

(assert (=> d!82041 (= lt!248583 e!314869)))

(declare-fun c!63194 () Bool)

(assert (=> d!82041 (= c!63194 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!82041 (= lt!248582 (select (arr!16500 a!3154) index!1177))))

(assert (=> d!82041 (validMask!0 mask!3216)))

(assert (=> d!82041 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16500 a!3154) j!147) a!3154 mask!3216) lt!248583)))

(declare-fun b!544624 () Bool)

(assert (=> b!544624 (and (bvsge (index!22086 lt!248583) #b00000000000000000000000000000000) (bvslt (index!22086 lt!248583) (size!16864 a!3154)))))

(assert (=> b!544624 (= e!314872 (= (select (arr!16500 a!3154) (index!22086 lt!248583)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!544625 () Bool)

(assert (=> b!544625 (and (bvsge (index!22086 lt!248583) #b00000000000000000000000000000000) (bvslt (index!22086 lt!248583) (size!16864 a!3154)))))

(declare-fun res!338883 () Bool)

(assert (=> b!544625 (= res!338883 (= (select (arr!16500 a!3154) (index!22086 lt!248583)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!544625 (=> res!338883 e!314872)))

(assert (= (and d!82041 c!63194) b!544621))

(assert (= (and d!82041 (not c!63194)) b!544620))

(assert (= (and b!544620 c!63192) b!544618))

(assert (= (and b!544620 (not c!63192)) b!544619))

(assert (= (and d!82041 c!63193) b!544623))

(assert (= (and d!82041 (not c!63193)) b!544617))

(assert (= (and b!544617 res!338884) b!544622))

(assert (= (and b!544622 (not res!338885)) b!544625))

(assert (= (and b!544625 (not res!338883)) b!544624))

(declare-fun m!522435 () Bool)

(assert (=> b!544622 m!522435))

(assert (=> b!544619 m!522225))

(assert (=> b!544619 m!522225))

(assert (=> b!544619 m!522217))

(declare-fun m!522437 () Bool)

(assert (=> b!544619 m!522437))

(assert (=> b!544625 m!522435))

(assert (=> d!82041 m!522243))

(assert (=> d!82041 m!522229))

(assert (=> b!544624 m!522435))

(assert (=> b!544295 d!82041))

(push 1)

