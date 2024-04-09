; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49368 () Bool)

(assert start!49368)

(declare-fun b!543639 () Bool)

(declare-fun e!314325 () Bool)

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!543639 (= e!314325 (bvsgt (bvadd #b00000000000000000000000000000001 x!1030) resX!32))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun lt!248233 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543639 (= lt!248233 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!543640 () Bool)

(declare-fun res!338340 () Bool)

(declare-fun e!314323 () Bool)

(assert (=> b!543640 (=> (not res!338340) (not e!314323))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!543640 (= res!338340 (validKeyInArray!0 k0!1998))))

(declare-fun b!543641 () Bool)

(declare-fun res!338342 () Bool)

(declare-fun e!314324 () Bool)

(assert (=> b!543641 (=> (not res!338342) (not e!314324))))

(declare-datatypes ((array!34332 0))(
  ( (array!34333 (arr!16495 (Array (_ BitVec 32) (_ BitVec 64))) (size!16859 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34332)

(declare-datatypes ((List!10667 0))(
  ( (Nil!10664) (Cons!10663 (h!11618 (_ BitVec 64)) (t!16903 List!10667)) )
))
(declare-fun arrayNoDuplicates!0 (array!34332 (_ BitVec 32) List!10667) Bool)

(assert (=> b!543641 (= res!338342 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10664))))

(declare-fun b!543642 () Bool)

(declare-fun res!338349 () Bool)

(assert (=> b!543642 (=> (not res!338349) (not e!314324))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34332 (_ BitVec 32)) Bool)

(assert (=> b!543642 (= res!338349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!338351 () Bool)

(assert (=> start!49368 (=> (not res!338351) (not e!314323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49368 (= res!338351 (validMask!0 mask!3216))))

(assert (=> start!49368 e!314323))

(assert (=> start!49368 true))

(declare-fun array_inv!12269 (array!34332) Bool)

(assert (=> start!49368 (array_inv!12269 a!3154)))

(declare-fun b!543643 () Bool)

(declare-fun res!338350 () Bool)

(assert (=> b!543643 (=> (not res!338350) (not e!314325))))

(declare-datatypes ((SeekEntryResult!4960 0))(
  ( (MissingZero!4960 (index!22064 (_ BitVec 32))) (Found!4960 (index!22065 (_ BitVec 32))) (Intermediate!4960 (undefined!5772 Bool) (index!22066 (_ BitVec 32)) (x!50994 (_ BitVec 32))) (Undefined!4960) (MissingVacant!4960 (index!22067 (_ BitVec 32))) )
))
(declare-fun lt!248232 () SeekEntryResult!4960)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34332 (_ BitVec 32)) SeekEntryResult!4960)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543643 (= res!338350 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16495 a!3154) j!147) mask!3216) (select (arr!16495 a!3154) j!147) a!3154 mask!3216) lt!248232))))

(declare-fun b!543644 () Bool)

(declare-fun res!338341 () Bool)

(assert (=> b!543644 (=> (not res!338341) (not e!314323))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!543644 (= res!338341 (and (= (size!16859 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16859 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16859 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!543645 () Bool)

(declare-fun res!338347 () Bool)

(assert (=> b!543645 (=> (not res!338347) (not e!314323))))

(declare-fun arrayContainsKey!0 (array!34332 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!543645 (= res!338347 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!543646 () Bool)

(declare-fun res!338343 () Bool)

(assert (=> b!543646 (=> (not res!338343) (not e!314324))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!543646 (= res!338343 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16859 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16859 a!3154)) (= (select (arr!16495 a!3154) resIndex!32) (select (arr!16495 a!3154) j!147))))))

(declare-fun b!543647 () Bool)

(declare-fun res!338345 () Bool)

(assert (=> b!543647 (=> (not res!338345) (not e!314325))))

(assert (=> b!543647 (= res!338345 (and (not (= (select (arr!16495 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16495 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16495 a!3154) index!1177) (select (arr!16495 a!3154) j!147)))))))

(declare-fun b!543648 () Bool)

(assert (=> b!543648 (= e!314323 e!314324)))

(declare-fun res!338344 () Bool)

(assert (=> b!543648 (=> (not res!338344) (not e!314324))))

(declare-fun lt!248234 () SeekEntryResult!4960)

(assert (=> b!543648 (= res!338344 (or (= lt!248234 (MissingZero!4960 i!1153)) (= lt!248234 (MissingVacant!4960 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34332 (_ BitVec 32)) SeekEntryResult!4960)

(assert (=> b!543648 (= lt!248234 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!543649 () Bool)

(assert (=> b!543649 (= e!314324 e!314325)))

(declare-fun res!338348 () Bool)

(assert (=> b!543649 (=> (not res!338348) (not e!314325))))

(assert (=> b!543649 (= res!338348 (= lt!248232 (Intermediate!4960 false resIndex!32 resX!32)))))

(assert (=> b!543649 (= lt!248232 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16495 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543650 () Bool)

(declare-fun res!338346 () Bool)

(assert (=> b!543650 (=> (not res!338346) (not e!314323))))

(assert (=> b!543650 (= res!338346 (validKeyInArray!0 (select (arr!16495 a!3154) j!147)))))

(assert (= (and start!49368 res!338351) b!543644))

(assert (= (and b!543644 res!338341) b!543650))

(assert (= (and b!543650 res!338346) b!543640))

(assert (= (and b!543640 res!338340) b!543645))

(assert (= (and b!543645 res!338347) b!543648))

(assert (= (and b!543648 res!338344) b!543642))

(assert (= (and b!543642 res!338349) b!543641))

(assert (= (and b!543641 res!338342) b!543646))

(assert (= (and b!543646 res!338343) b!543649))

(assert (= (and b!543649 res!338348) b!543643))

(assert (= (and b!543643 res!338350) b!543647))

(assert (= (and b!543647 res!338345) b!543639))

(declare-fun m!521701 () Bool)

(assert (=> b!543642 m!521701))

(declare-fun m!521703 () Bool)

(assert (=> b!543641 m!521703))

(declare-fun m!521705 () Bool)

(assert (=> b!543645 m!521705))

(declare-fun m!521707 () Bool)

(assert (=> b!543639 m!521707))

(declare-fun m!521709 () Bool)

(assert (=> b!543646 m!521709))

(declare-fun m!521711 () Bool)

(assert (=> b!543646 m!521711))

(declare-fun m!521713 () Bool)

(assert (=> b!543647 m!521713))

(assert (=> b!543647 m!521711))

(declare-fun m!521715 () Bool)

(assert (=> start!49368 m!521715))

(declare-fun m!521717 () Bool)

(assert (=> start!49368 m!521717))

(declare-fun m!521719 () Bool)

(assert (=> b!543640 m!521719))

(declare-fun m!521721 () Bool)

(assert (=> b!543648 m!521721))

(assert (=> b!543650 m!521711))

(assert (=> b!543650 m!521711))

(declare-fun m!521723 () Bool)

(assert (=> b!543650 m!521723))

(assert (=> b!543649 m!521711))

(assert (=> b!543649 m!521711))

(declare-fun m!521725 () Bool)

(assert (=> b!543649 m!521725))

(assert (=> b!543643 m!521711))

(assert (=> b!543643 m!521711))

(declare-fun m!521727 () Bool)

(assert (=> b!543643 m!521727))

(assert (=> b!543643 m!521727))

(assert (=> b!543643 m!521711))

(declare-fun m!521729 () Bool)

(assert (=> b!543643 m!521729))

(check-sat (not b!543643) (not b!543650) (not start!49368) (not b!543641) (not b!543640) (not b!543642) (not b!543645) (not b!543639) (not b!543649) (not b!543648))
(check-sat)
(get-model)

(declare-fun d!81807 () Bool)

(declare-fun res!338392 () Bool)

(declare-fun e!314343 () Bool)

(assert (=> d!81807 (=> res!338392 e!314343)))

(assert (=> d!81807 (= res!338392 (= (select (arr!16495 a!3154) #b00000000000000000000000000000000) k0!1998))))

(assert (=> d!81807 (= (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000) e!314343)))

(declare-fun b!543691 () Bool)

(declare-fun e!314344 () Bool)

(assert (=> b!543691 (= e!314343 e!314344)))

(declare-fun res!338393 () Bool)

(assert (=> b!543691 (=> (not res!338393) (not e!314344))))

(assert (=> b!543691 (= res!338393 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16859 a!3154)))))

(declare-fun b!543692 () Bool)

(assert (=> b!543692 (= e!314344 (arrayContainsKey!0 a!3154 k0!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81807 (not res!338392)) b!543691))

(assert (= (and b!543691 res!338393) b!543692))

(declare-fun m!521761 () Bool)

(assert (=> d!81807 m!521761))

(declare-fun m!521763 () Bool)

(assert (=> b!543692 m!521763))

(assert (=> b!543645 d!81807))

(declare-fun d!81809 () Bool)

(assert (=> d!81809 (= (validKeyInArray!0 (select (arr!16495 a!3154) j!147)) (and (not (= (select (arr!16495 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16495 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!543650 d!81809))

(declare-fun d!81811 () Bool)

(assert (=> d!81811 (= (validKeyInArray!0 k0!1998) (and (not (= k0!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!543640 d!81811))

(declare-fun b!543703 () Bool)

(declare-fun e!314353 () Bool)

(declare-fun call!32069 () Bool)

(assert (=> b!543703 (= e!314353 call!32069)))

(declare-fun b!543704 () Bool)

(declare-fun e!314356 () Bool)

(assert (=> b!543704 (= e!314356 e!314353)))

(declare-fun c!62969 () Bool)

(assert (=> b!543704 (= c!62969 (validKeyInArray!0 (select (arr!16495 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!543705 () Bool)

(declare-fun e!314354 () Bool)

(assert (=> b!543705 (= e!314354 e!314356)))

(declare-fun res!338401 () Bool)

(assert (=> b!543705 (=> (not res!338401) (not e!314356))))

(declare-fun e!314355 () Bool)

(assert (=> b!543705 (= res!338401 (not e!314355))))

(declare-fun res!338400 () Bool)

(assert (=> b!543705 (=> (not res!338400) (not e!314355))))

(assert (=> b!543705 (= res!338400 (validKeyInArray!0 (select (arr!16495 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!32066 () Bool)

(assert (=> bm!32066 (= call!32069 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62969 (Cons!10663 (select (arr!16495 a!3154) #b00000000000000000000000000000000) Nil!10664) Nil!10664)))))

(declare-fun b!543706 () Bool)

(declare-fun contains!2810 (List!10667 (_ BitVec 64)) Bool)

(assert (=> b!543706 (= e!314355 (contains!2810 Nil!10664 (select (arr!16495 a!3154) #b00000000000000000000000000000000)))))

(declare-fun d!81813 () Bool)

(declare-fun res!338402 () Bool)

(assert (=> d!81813 (=> res!338402 e!314354)))

(assert (=> d!81813 (= res!338402 (bvsge #b00000000000000000000000000000000 (size!16859 a!3154)))))

(assert (=> d!81813 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10664) e!314354)))

(declare-fun b!543707 () Bool)

(assert (=> b!543707 (= e!314353 call!32069)))

(assert (= (and d!81813 (not res!338402)) b!543705))

(assert (= (and b!543705 res!338400) b!543706))

(assert (= (and b!543705 res!338401) b!543704))

(assert (= (and b!543704 c!62969) b!543703))

(assert (= (and b!543704 (not c!62969)) b!543707))

(assert (= (or b!543703 b!543707) bm!32066))

(assert (=> b!543704 m!521761))

(assert (=> b!543704 m!521761))

(declare-fun m!521765 () Bool)

(assert (=> b!543704 m!521765))

(assert (=> b!543705 m!521761))

(assert (=> b!543705 m!521761))

(assert (=> b!543705 m!521765))

(assert (=> bm!32066 m!521761))

(declare-fun m!521767 () Bool)

(assert (=> bm!32066 m!521767))

(assert (=> b!543706 m!521761))

(assert (=> b!543706 m!521761))

(declare-fun m!521769 () Bool)

(assert (=> b!543706 m!521769))

(assert (=> b!543641 d!81813))

(declare-fun d!81815 () Bool)

(assert (=> d!81815 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49368 d!81815))

(declare-fun d!81817 () Bool)

(assert (=> d!81817 (= (array_inv!12269 a!3154) (bvsge (size!16859 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!49368 d!81817))

(declare-fun b!543716 () Bool)

(declare-fun e!314363 () Bool)

(declare-fun e!314365 () Bool)

(assert (=> b!543716 (= e!314363 e!314365)))

(declare-fun c!62972 () Bool)

(assert (=> b!543716 (= c!62972 (validKeyInArray!0 (select (arr!16495 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!543717 () Bool)

(declare-fun e!314364 () Bool)

(declare-fun call!32072 () Bool)

(assert (=> b!543717 (= e!314364 call!32072)))

(declare-fun d!81819 () Bool)

(declare-fun res!338407 () Bool)

(assert (=> d!81819 (=> res!338407 e!314363)))

(assert (=> d!81819 (= res!338407 (bvsge #b00000000000000000000000000000000 (size!16859 a!3154)))))

(assert (=> d!81819 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!314363)))

(declare-fun bm!32069 () Bool)

(assert (=> bm!32069 (= call!32072 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!543718 () Bool)

(assert (=> b!543718 (= e!314365 call!32072)))

(declare-fun b!543719 () Bool)

(assert (=> b!543719 (= e!314365 e!314364)))

(declare-fun lt!248252 () (_ BitVec 64))

(assert (=> b!543719 (= lt!248252 (select (arr!16495 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16880 0))(
  ( (Unit!16881) )
))
(declare-fun lt!248250 () Unit!16880)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34332 (_ BitVec 64) (_ BitVec 32)) Unit!16880)

(assert (=> b!543719 (= lt!248250 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!248252 #b00000000000000000000000000000000))))

(assert (=> b!543719 (arrayContainsKey!0 a!3154 lt!248252 #b00000000000000000000000000000000)))

(declare-fun lt!248251 () Unit!16880)

(assert (=> b!543719 (= lt!248251 lt!248250)))

(declare-fun res!338408 () Bool)

(assert (=> b!543719 (= res!338408 (= (seekEntryOrOpen!0 (select (arr!16495 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4960 #b00000000000000000000000000000000)))))

(assert (=> b!543719 (=> (not res!338408) (not e!314364))))

(assert (= (and d!81819 (not res!338407)) b!543716))

(assert (= (and b!543716 c!62972) b!543719))

(assert (= (and b!543716 (not c!62972)) b!543718))

(assert (= (and b!543719 res!338408) b!543717))

(assert (= (or b!543717 b!543718) bm!32069))

(assert (=> b!543716 m!521761))

(assert (=> b!543716 m!521761))

(assert (=> b!543716 m!521765))

(declare-fun m!521771 () Bool)

(assert (=> bm!32069 m!521771))

(assert (=> b!543719 m!521761))

(declare-fun m!521773 () Bool)

(assert (=> b!543719 m!521773))

(declare-fun m!521775 () Bool)

(assert (=> b!543719 m!521775))

(assert (=> b!543719 m!521761))

(declare-fun m!521777 () Bool)

(assert (=> b!543719 m!521777))

(assert (=> b!543642 d!81819))

(declare-fun e!314376 () SeekEntryResult!4960)

(declare-fun b!543738 () Bool)

(assert (=> b!543738 (= e!314376 (Intermediate!4960 true (toIndex!0 (select (arr!16495 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!543739 () Bool)

(declare-fun e!314380 () Bool)

(declare-fun lt!248257 () SeekEntryResult!4960)

(assert (=> b!543739 (= e!314380 (bvsge (x!50994 lt!248257) #b01111111111111111111111111111110))))

(declare-fun e!314378 () SeekEntryResult!4960)

(declare-fun b!543741 () Bool)

(assert (=> b!543741 (= e!314378 (Intermediate!4960 false (toIndex!0 (select (arr!16495 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!543742 () Bool)

(assert (=> b!543742 (and (bvsge (index!22066 lt!248257) #b00000000000000000000000000000000) (bvslt (index!22066 lt!248257) (size!16859 a!3154)))))

(declare-fun res!338416 () Bool)

(assert (=> b!543742 (= res!338416 (= (select (arr!16495 a!3154) (index!22066 lt!248257)) (select (arr!16495 a!3154) j!147)))))

(declare-fun e!314377 () Bool)

(assert (=> b!543742 (=> res!338416 e!314377)))

(declare-fun e!314379 () Bool)

(assert (=> b!543742 (= e!314379 e!314377)))

(declare-fun b!543743 () Bool)

(assert (=> b!543743 (= e!314378 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16495 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16495 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543744 () Bool)

(assert (=> b!543744 (= e!314380 e!314379)))

(declare-fun res!338415 () Bool)

(get-info :version)

(assert (=> b!543744 (= res!338415 (and ((_ is Intermediate!4960) lt!248257) (not (undefined!5772 lt!248257)) (bvslt (x!50994 lt!248257) #b01111111111111111111111111111110) (bvsge (x!50994 lt!248257) #b00000000000000000000000000000000) (bvsge (x!50994 lt!248257) #b00000000000000000000000000000000)))))

(assert (=> b!543744 (=> (not res!338415) (not e!314379))))

(declare-fun b!543745 () Bool)

(assert (=> b!543745 (= e!314376 e!314378)))

(declare-fun c!62981 () Bool)

(declare-fun lt!248258 () (_ BitVec 64))

(assert (=> b!543745 (= c!62981 (or (= lt!248258 (select (arr!16495 a!3154) j!147)) (= (bvadd lt!248258 lt!248258) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!543746 () Bool)

(assert (=> b!543746 (and (bvsge (index!22066 lt!248257) #b00000000000000000000000000000000) (bvslt (index!22066 lt!248257) (size!16859 a!3154)))))

(declare-fun res!338417 () Bool)

(assert (=> b!543746 (= res!338417 (= (select (arr!16495 a!3154) (index!22066 lt!248257)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!543746 (=> res!338417 e!314377)))

(declare-fun b!543740 () Bool)

(assert (=> b!543740 (and (bvsge (index!22066 lt!248257) #b00000000000000000000000000000000) (bvslt (index!22066 lt!248257) (size!16859 a!3154)))))

(assert (=> b!543740 (= e!314377 (= (select (arr!16495 a!3154) (index!22066 lt!248257)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!81821 () Bool)

(assert (=> d!81821 e!314380))

(declare-fun c!62979 () Bool)

(assert (=> d!81821 (= c!62979 (and ((_ is Intermediate!4960) lt!248257) (undefined!5772 lt!248257)))))

(assert (=> d!81821 (= lt!248257 e!314376)))

(declare-fun c!62980 () Bool)

(assert (=> d!81821 (= c!62980 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!81821 (= lt!248258 (select (arr!16495 a!3154) (toIndex!0 (select (arr!16495 a!3154) j!147) mask!3216)))))

(assert (=> d!81821 (validMask!0 mask!3216)))

(assert (=> d!81821 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16495 a!3154) j!147) mask!3216) (select (arr!16495 a!3154) j!147) a!3154 mask!3216) lt!248257)))

(assert (= (and d!81821 c!62980) b!543738))

(assert (= (and d!81821 (not c!62980)) b!543745))

(assert (= (and b!543745 c!62981) b!543741))

(assert (= (and b!543745 (not c!62981)) b!543743))

(assert (= (and d!81821 c!62979) b!543739))

(assert (= (and d!81821 (not c!62979)) b!543744))

(assert (= (and b!543744 res!338415) b!543742))

(assert (= (and b!543742 (not res!338416)) b!543746))

(assert (= (and b!543746 (not res!338417)) b!543740))

(assert (=> b!543743 m!521727))

(declare-fun m!521779 () Bool)

(assert (=> b!543743 m!521779))

(assert (=> b!543743 m!521779))

(assert (=> b!543743 m!521711))

(declare-fun m!521781 () Bool)

(assert (=> b!543743 m!521781))

(declare-fun m!521783 () Bool)

(assert (=> b!543740 m!521783))

(assert (=> b!543742 m!521783))

(assert (=> d!81821 m!521727))

(declare-fun m!521785 () Bool)

(assert (=> d!81821 m!521785))

(assert (=> d!81821 m!521715))

(assert (=> b!543746 m!521783))

(assert (=> b!543643 d!81821))

(declare-fun d!81829 () Bool)

(declare-fun lt!248264 () (_ BitVec 32))

(declare-fun lt!248263 () (_ BitVec 32))

(assert (=> d!81829 (= lt!248264 (bvmul (bvxor lt!248263 (bvlshr lt!248263 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!81829 (= lt!248263 ((_ extract 31 0) (bvand (bvxor (select (arr!16495 a!3154) j!147) (bvlshr (select (arr!16495 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!81829 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!338418 (let ((h!11620 ((_ extract 31 0) (bvand (bvxor (select (arr!16495 a!3154) j!147) (bvlshr (select (arr!16495 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!50997 (bvmul (bvxor h!11620 (bvlshr h!11620 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!50997 (bvlshr x!50997 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!338418 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!338418 #b00000000000000000000000000000000))))))

(assert (=> d!81829 (= (toIndex!0 (select (arr!16495 a!3154) j!147) mask!3216) (bvand (bvxor lt!248264 (bvlshr lt!248264 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!543643 d!81829))

(declare-fun b!543810 () Bool)

(declare-fun e!314419 () SeekEntryResult!4960)

(declare-fun lt!248286 () SeekEntryResult!4960)

(assert (=> b!543810 (= e!314419 (Found!4960 (index!22066 lt!248286)))))

(declare-fun d!81835 () Bool)

(declare-fun lt!248288 () SeekEntryResult!4960)

(assert (=> d!81835 (and (or ((_ is Undefined!4960) lt!248288) (not ((_ is Found!4960) lt!248288)) (and (bvsge (index!22065 lt!248288) #b00000000000000000000000000000000) (bvslt (index!22065 lt!248288) (size!16859 a!3154)))) (or ((_ is Undefined!4960) lt!248288) ((_ is Found!4960) lt!248288) (not ((_ is MissingZero!4960) lt!248288)) (and (bvsge (index!22064 lt!248288) #b00000000000000000000000000000000) (bvslt (index!22064 lt!248288) (size!16859 a!3154)))) (or ((_ is Undefined!4960) lt!248288) ((_ is Found!4960) lt!248288) ((_ is MissingZero!4960) lt!248288) (not ((_ is MissingVacant!4960) lt!248288)) (and (bvsge (index!22067 lt!248288) #b00000000000000000000000000000000) (bvslt (index!22067 lt!248288) (size!16859 a!3154)))) (or ((_ is Undefined!4960) lt!248288) (ite ((_ is Found!4960) lt!248288) (= (select (arr!16495 a!3154) (index!22065 lt!248288)) k0!1998) (ite ((_ is MissingZero!4960) lt!248288) (= (select (arr!16495 a!3154) (index!22064 lt!248288)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4960) lt!248288) (= (select (arr!16495 a!3154) (index!22067 lt!248288)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!314418 () SeekEntryResult!4960)

(assert (=> d!81835 (= lt!248288 e!314418)))

(declare-fun c!63007 () Bool)

(assert (=> d!81835 (= c!63007 (and ((_ is Intermediate!4960) lt!248286) (undefined!5772 lt!248286)))))

(assert (=> d!81835 (= lt!248286 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1998 mask!3216) k0!1998 a!3154 mask!3216))))

(assert (=> d!81835 (validMask!0 mask!3216)))

(assert (=> d!81835 (= (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216) lt!248288)))

(declare-fun b!543811 () Bool)

(assert (=> b!543811 (= e!314418 e!314419)))

(declare-fun lt!248287 () (_ BitVec 64))

(assert (=> b!543811 (= lt!248287 (select (arr!16495 a!3154) (index!22066 lt!248286)))))

(declare-fun c!63006 () Bool)

(assert (=> b!543811 (= c!63006 (= lt!248287 k0!1998))))

(declare-fun b!543812 () Bool)

(declare-fun e!314417 () SeekEntryResult!4960)

(assert (=> b!543812 (= e!314417 (MissingZero!4960 (index!22066 lt!248286)))))

(declare-fun b!543813 () Bool)

(assert (=> b!543813 (= e!314418 Undefined!4960)))

(declare-fun b!543814 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34332 (_ BitVec 32)) SeekEntryResult!4960)

(assert (=> b!543814 (= e!314417 (seekKeyOrZeroReturnVacant!0 (x!50994 lt!248286) (index!22066 lt!248286) (index!22066 lt!248286) k0!1998 a!3154 mask!3216))))

(declare-fun b!543815 () Bool)

(declare-fun c!63008 () Bool)

(assert (=> b!543815 (= c!63008 (= lt!248287 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!543815 (= e!314419 e!314417)))

(assert (= (and d!81835 c!63007) b!543813))

(assert (= (and d!81835 (not c!63007)) b!543811))

(assert (= (and b!543811 c!63006) b!543810))

(assert (= (and b!543811 (not c!63006)) b!543815))

(assert (= (and b!543815 c!63008) b!543812))

(assert (= (and b!543815 (not c!63008)) b!543814))

(declare-fun m!521813 () Bool)

(assert (=> d!81835 m!521813))

(declare-fun m!521815 () Bool)

(assert (=> d!81835 m!521815))

(declare-fun m!521817 () Bool)

(assert (=> d!81835 m!521817))

(declare-fun m!521819 () Bool)

(assert (=> d!81835 m!521819))

(declare-fun m!521821 () Bool)

(assert (=> d!81835 m!521821))

(assert (=> d!81835 m!521715))

(assert (=> d!81835 m!521815))

(declare-fun m!521823 () Bool)

(assert (=> b!543811 m!521823))

(declare-fun m!521825 () Bool)

(assert (=> b!543814 m!521825))

(assert (=> b!543648 d!81835))

(declare-fun b!543816 () Bool)

(declare-fun e!314420 () SeekEntryResult!4960)

(assert (=> b!543816 (= e!314420 (Intermediate!4960 true index!1177 x!1030))))

(declare-fun b!543817 () Bool)

(declare-fun e!314424 () Bool)

(declare-fun lt!248289 () SeekEntryResult!4960)

(assert (=> b!543817 (= e!314424 (bvsge (x!50994 lt!248289) #b01111111111111111111111111111110))))

(declare-fun b!543819 () Bool)

(declare-fun e!314422 () SeekEntryResult!4960)

(assert (=> b!543819 (= e!314422 (Intermediate!4960 false index!1177 x!1030))))

(declare-fun b!543820 () Bool)

(assert (=> b!543820 (and (bvsge (index!22066 lt!248289) #b00000000000000000000000000000000) (bvslt (index!22066 lt!248289) (size!16859 a!3154)))))

(declare-fun res!338436 () Bool)

(assert (=> b!543820 (= res!338436 (= (select (arr!16495 a!3154) (index!22066 lt!248289)) (select (arr!16495 a!3154) j!147)))))

(declare-fun e!314421 () Bool)

(assert (=> b!543820 (=> res!338436 e!314421)))

(declare-fun e!314423 () Bool)

(assert (=> b!543820 (= e!314423 e!314421)))

(declare-fun b!543821 () Bool)

(assert (=> b!543821 (= e!314422 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16495 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543822 () Bool)

(assert (=> b!543822 (= e!314424 e!314423)))

(declare-fun res!338435 () Bool)

(assert (=> b!543822 (= res!338435 (and ((_ is Intermediate!4960) lt!248289) (not (undefined!5772 lt!248289)) (bvslt (x!50994 lt!248289) #b01111111111111111111111111111110) (bvsge (x!50994 lt!248289) #b00000000000000000000000000000000) (bvsge (x!50994 lt!248289) x!1030)))))

(assert (=> b!543822 (=> (not res!338435) (not e!314423))))

(declare-fun b!543823 () Bool)

(assert (=> b!543823 (= e!314420 e!314422)))

(declare-fun c!63011 () Bool)

(declare-fun lt!248290 () (_ BitVec 64))

(assert (=> b!543823 (= c!63011 (or (= lt!248290 (select (arr!16495 a!3154) j!147)) (= (bvadd lt!248290 lt!248290) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!543824 () Bool)

(assert (=> b!543824 (and (bvsge (index!22066 lt!248289) #b00000000000000000000000000000000) (bvslt (index!22066 lt!248289) (size!16859 a!3154)))))

(declare-fun res!338437 () Bool)

(assert (=> b!543824 (= res!338437 (= (select (arr!16495 a!3154) (index!22066 lt!248289)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!543824 (=> res!338437 e!314421)))

(declare-fun b!543818 () Bool)

(assert (=> b!543818 (and (bvsge (index!22066 lt!248289) #b00000000000000000000000000000000) (bvslt (index!22066 lt!248289) (size!16859 a!3154)))))

(assert (=> b!543818 (= e!314421 (= (select (arr!16495 a!3154) (index!22066 lt!248289)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!81843 () Bool)

(assert (=> d!81843 e!314424))

(declare-fun c!63009 () Bool)

(assert (=> d!81843 (= c!63009 (and ((_ is Intermediate!4960) lt!248289) (undefined!5772 lt!248289)))))

(assert (=> d!81843 (= lt!248289 e!314420)))

(declare-fun c!63010 () Bool)

(assert (=> d!81843 (= c!63010 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!81843 (= lt!248290 (select (arr!16495 a!3154) index!1177))))

(assert (=> d!81843 (validMask!0 mask!3216)))

(assert (=> d!81843 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16495 a!3154) j!147) a!3154 mask!3216) lt!248289)))

(assert (= (and d!81843 c!63010) b!543816))

(assert (= (and d!81843 (not c!63010)) b!543823))

(assert (= (and b!543823 c!63011) b!543819))

(assert (= (and b!543823 (not c!63011)) b!543821))

(assert (= (and d!81843 c!63009) b!543817))

(assert (= (and d!81843 (not c!63009)) b!543822))

(assert (= (and b!543822 res!338435) b!543820))

(assert (= (and b!543820 (not res!338436)) b!543824))

(assert (= (and b!543824 (not res!338437)) b!543818))

(assert (=> b!543821 m!521707))

(assert (=> b!543821 m!521707))

(assert (=> b!543821 m!521711))

(declare-fun m!521827 () Bool)

(assert (=> b!543821 m!521827))

(declare-fun m!521829 () Bool)

(assert (=> b!543818 m!521829))

(assert (=> b!543820 m!521829))

(assert (=> d!81843 m!521713))

(assert (=> d!81843 m!521715))

(assert (=> b!543824 m!521829))

(assert (=> b!543649 d!81843))

(declare-fun d!81845 () Bool)

(declare-fun lt!248297 () (_ BitVec 32))

(assert (=> d!81845 (and (bvsge lt!248297 #b00000000000000000000000000000000) (bvslt lt!248297 (bvadd mask!3216 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!81845 (= lt!248297 (choose!52 index!1177 x!1030 mask!3216))))

(assert (=> d!81845 (validMask!0 mask!3216)))

(assert (=> d!81845 (= (nextIndex!0 index!1177 x!1030 mask!3216) lt!248297)))

(declare-fun bs!16971 () Bool)

(assert (= bs!16971 d!81845))

(declare-fun m!521831 () Bool)

(assert (=> bs!16971 m!521831))

(assert (=> bs!16971 m!521715))

(assert (=> b!543639 d!81845))

(check-sat (not b!543692) (not b!543814) (not b!543716) (not d!81821) (not d!81843) (not bm!32069) (not b!543719) (not d!81835) (not b!543821) (not d!81845) (not b!543705) (not b!543706) (not b!543704) (not b!543743) (not bm!32066))
(check-sat)
(get-model)

(declare-fun d!81907 () Bool)

(declare-fun res!338514 () Bool)

(declare-fun e!314538 () Bool)

(assert (=> d!81907 (=> res!338514 e!314538)))

(assert (=> d!81907 (= res!338514 (= (select (arr!16495 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k0!1998))))

(assert (=> d!81907 (= (arrayContainsKey!0 a!3154 k0!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!314538)))

(declare-fun b!543995 () Bool)

(declare-fun e!314539 () Bool)

(assert (=> b!543995 (= e!314538 e!314539)))

(declare-fun res!338515 () Bool)

(assert (=> b!543995 (=> (not res!338515) (not e!314539))))

(assert (=> b!543995 (= res!338515 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!16859 a!3154)))))

(declare-fun b!543996 () Bool)

(assert (=> b!543996 (= e!314539 (arrayContainsKey!0 a!3154 k0!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!81907 (not res!338514)) b!543995))

(assert (= (and b!543995 res!338515) b!543996))

(declare-fun m!521963 () Bool)

(assert (=> d!81907 m!521963))

(declare-fun m!521965 () Bool)

(assert (=> b!543996 m!521965))

(assert (=> b!543692 d!81907))

(declare-fun b!543997 () Bool)

(declare-fun e!314540 () Bool)

(declare-fun e!314542 () Bool)

(assert (=> b!543997 (= e!314540 e!314542)))

(declare-fun c!63061 () Bool)

(assert (=> b!543997 (= c!63061 (validKeyInArray!0 (select (arr!16495 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!543998 () Bool)

(declare-fun e!314541 () Bool)

(declare-fun call!32086 () Bool)

(assert (=> b!543998 (= e!314541 call!32086)))

(declare-fun d!81909 () Bool)

(declare-fun res!338516 () Bool)

(assert (=> d!81909 (=> res!338516 e!314540)))

(assert (=> d!81909 (= res!338516 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16859 a!3154)))))

(assert (=> d!81909 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216) e!314540)))

(declare-fun bm!32083 () Bool)

(assert (=> bm!32083 (= call!32086 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!543999 () Bool)

(assert (=> b!543999 (= e!314542 call!32086)))

(declare-fun b!544000 () Bool)

(assert (=> b!544000 (= e!314542 e!314541)))

(declare-fun lt!248372 () (_ BitVec 64))

(assert (=> b!544000 (= lt!248372 (select (arr!16495 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!248370 () Unit!16880)

(assert (=> b!544000 (= lt!248370 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!248372 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!544000 (arrayContainsKey!0 a!3154 lt!248372 #b00000000000000000000000000000000)))

(declare-fun lt!248371 () Unit!16880)

(assert (=> b!544000 (= lt!248371 lt!248370)))

(declare-fun res!338517 () Bool)

(assert (=> b!544000 (= res!338517 (= (seekEntryOrOpen!0 (select (arr!16495 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!3154 mask!3216) (Found!4960 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!544000 (=> (not res!338517) (not e!314541))))

(assert (= (and d!81909 (not res!338516)) b!543997))

(assert (= (and b!543997 c!63061) b!544000))

(assert (= (and b!543997 (not c!63061)) b!543999))

(assert (= (and b!544000 res!338517) b!543998))

(assert (= (or b!543998 b!543999) bm!32083))

(assert (=> b!543997 m!521963))

(assert (=> b!543997 m!521963))

(declare-fun m!521967 () Bool)

(assert (=> b!543997 m!521967))

(declare-fun m!521969 () Bool)

(assert (=> bm!32083 m!521969))

(assert (=> b!544000 m!521963))

(declare-fun m!521971 () Bool)

(assert (=> b!544000 m!521971))

(declare-fun m!521973 () Bool)

(assert (=> b!544000 m!521973))

(assert (=> b!544000 m!521963))

(declare-fun m!521975 () Bool)

(assert (=> b!544000 m!521975))

(assert (=> bm!32069 d!81909))

(assert (=> d!81821 d!81815))

(declare-fun d!81911 () Bool)

(assert (=> d!81911 (arrayContainsKey!0 a!3154 lt!248252 #b00000000000000000000000000000000)))

(declare-fun lt!248375 () Unit!16880)

(declare-fun choose!13 (array!34332 (_ BitVec 64) (_ BitVec 32)) Unit!16880)

(assert (=> d!81911 (= lt!248375 (choose!13 a!3154 lt!248252 #b00000000000000000000000000000000))))

(assert (=> d!81911 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!81911 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!248252 #b00000000000000000000000000000000) lt!248375)))

(declare-fun bs!16976 () Bool)

(assert (= bs!16976 d!81911))

(assert (=> bs!16976 m!521775))

(declare-fun m!521977 () Bool)

(assert (=> bs!16976 m!521977))

(assert (=> b!543719 d!81911))

(declare-fun d!81913 () Bool)

(declare-fun res!338518 () Bool)

(declare-fun e!314543 () Bool)

(assert (=> d!81913 (=> res!338518 e!314543)))

(assert (=> d!81913 (= res!338518 (= (select (arr!16495 a!3154) #b00000000000000000000000000000000) lt!248252))))

(assert (=> d!81913 (= (arrayContainsKey!0 a!3154 lt!248252 #b00000000000000000000000000000000) e!314543)))

(declare-fun b!544001 () Bool)

(declare-fun e!314544 () Bool)

(assert (=> b!544001 (= e!314543 e!314544)))

(declare-fun res!338519 () Bool)

(assert (=> b!544001 (=> (not res!338519) (not e!314544))))

(assert (=> b!544001 (= res!338519 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16859 a!3154)))))

(declare-fun b!544002 () Bool)

(assert (=> b!544002 (= e!314544 (arrayContainsKey!0 a!3154 lt!248252 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81913 (not res!338518)) b!544001))

(assert (= (and b!544001 res!338519) b!544002))

(assert (=> d!81913 m!521761))

(declare-fun m!521979 () Bool)

(assert (=> b!544002 m!521979))

(assert (=> b!543719 d!81913))

(declare-fun b!544003 () Bool)

(declare-fun e!314547 () SeekEntryResult!4960)

(declare-fun lt!248376 () SeekEntryResult!4960)

(assert (=> b!544003 (= e!314547 (Found!4960 (index!22066 lt!248376)))))

(declare-fun d!81915 () Bool)

(declare-fun lt!248378 () SeekEntryResult!4960)

(assert (=> d!81915 (and (or ((_ is Undefined!4960) lt!248378) (not ((_ is Found!4960) lt!248378)) (and (bvsge (index!22065 lt!248378) #b00000000000000000000000000000000) (bvslt (index!22065 lt!248378) (size!16859 a!3154)))) (or ((_ is Undefined!4960) lt!248378) ((_ is Found!4960) lt!248378) (not ((_ is MissingZero!4960) lt!248378)) (and (bvsge (index!22064 lt!248378) #b00000000000000000000000000000000) (bvslt (index!22064 lt!248378) (size!16859 a!3154)))) (or ((_ is Undefined!4960) lt!248378) ((_ is Found!4960) lt!248378) ((_ is MissingZero!4960) lt!248378) (not ((_ is MissingVacant!4960) lt!248378)) (and (bvsge (index!22067 lt!248378) #b00000000000000000000000000000000) (bvslt (index!22067 lt!248378) (size!16859 a!3154)))) (or ((_ is Undefined!4960) lt!248378) (ite ((_ is Found!4960) lt!248378) (= (select (arr!16495 a!3154) (index!22065 lt!248378)) (select (arr!16495 a!3154) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!4960) lt!248378) (= (select (arr!16495 a!3154) (index!22064 lt!248378)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4960) lt!248378) (= (select (arr!16495 a!3154) (index!22067 lt!248378)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!314546 () SeekEntryResult!4960)

(assert (=> d!81915 (= lt!248378 e!314546)))

(declare-fun c!63063 () Bool)

(assert (=> d!81915 (= c!63063 (and ((_ is Intermediate!4960) lt!248376) (undefined!5772 lt!248376)))))

(assert (=> d!81915 (= lt!248376 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16495 a!3154) #b00000000000000000000000000000000) mask!3216) (select (arr!16495 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216))))

(assert (=> d!81915 (validMask!0 mask!3216)))

(assert (=> d!81915 (= (seekEntryOrOpen!0 (select (arr!16495 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) lt!248378)))

(declare-fun b!544004 () Bool)

(assert (=> b!544004 (= e!314546 e!314547)))

(declare-fun lt!248377 () (_ BitVec 64))

(assert (=> b!544004 (= lt!248377 (select (arr!16495 a!3154) (index!22066 lt!248376)))))

(declare-fun c!63062 () Bool)

(assert (=> b!544004 (= c!63062 (= lt!248377 (select (arr!16495 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!544005 () Bool)

(declare-fun e!314545 () SeekEntryResult!4960)

(assert (=> b!544005 (= e!314545 (MissingZero!4960 (index!22066 lt!248376)))))

(declare-fun b!544006 () Bool)

(assert (=> b!544006 (= e!314546 Undefined!4960)))

(declare-fun b!544007 () Bool)

(assert (=> b!544007 (= e!314545 (seekKeyOrZeroReturnVacant!0 (x!50994 lt!248376) (index!22066 lt!248376) (index!22066 lt!248376) (select (arr!16495 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216))))

(declare-fun b!544008 () Bool)

(declare-fun c!63064 () Bool)

(assert (=> b!544008 (= c!63064 (= lt!248377 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!544008 (= e!314547 e!314545)))

(assert (= (and d!81915 c!63063) b!544006))

(assert (= (and d!81915 (not c!63063)) b!544004))

(assert (= (and b!544004 c!63062) b!544003))

(assert (= (and b!544004 (not c!63062)) b!544008))

(assert (= (and b!544008 c!63064) b!544005))

(assert (= (and b!544008 (not c!63064)) b!544007))

(declare-fun m!521981 () Bool)

(assert (=> d!81915 m!521981))

(declare-fun m!521983 () Bool)

(assert (=> d!81915 m!521983))

(assert (=> d!81915 m!521761))

(declare-fun m!521985 () Bool)

(assert (=> d!81915 m!521985))

(declare-fun m!521987 () Bool)

(assert (=> d!81915 m!521987))

(declare-fun m!521989 () Bool)

(assert (=> d!81915 m!521989))

(assert (=> d!81915 m!521715))

(assert (=> d!81915 m!521761))

(assert (=> d!81915 m!521983))

(declare-fun m!521991 () Bool)

(assert (=> b!544004 m!521991))

(assert (=> b!544007 m!521761))

(declare-fun m!521993 () Bool)

(assert (=> b!544007 m!521993))

(assert (=> b!543719 d!81915))

(declare-fun e!314548 () SeekEntryResult!4960)

(declare-fun b!544009 () Bool)

(assert (=> b!544009 (= e!314548 (Intermediate!4960 true (nextIndex!0 (toIndex!0 (select (arr!16495 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!544010 () Bool)

(declare-fun e!314552 () Bool)

(declare-fun lt!248383 () SeekEntryResult!4960)

(assert (=> b!544010 (= e!314552 (bvsge (x!50994 lt!248383) #b01111111111111111111111111111110))))

(declare-fun e!314550 () SeekEntryResult!4960)

(declare-fun b!544012 () Bool)

(assert (=> b!544012 (= e!314550 (Intermediate!4960 false (nextIndex!0 (toIndex!0 (select (arr!16495 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!544013 () Bool)

(assert (=> b!544013 (and (bvsge (index!22066 lt!248383) #b00000000000000000000000000000000) (bvslt (index!22066 lt!248383) (size!16859 a!3154)))))

(declare-fun res!338521 () Bool)

(assert (=> b!544013 (= res!338521 (= (select (arr!16495 a!3154) (index!22066 lt!248383)) (select (arr!16495 a!3154) j!147)))))

(declare-fun e!314549 () Bool)

(assert (=> b!544013 (=> res!338521 e!314549)))

(declare-fun e!314551 () Bool)

(assert (=> b!544013 (= e!314551 e!314549)))

(declare-fun b!544014 () Bool)

(assert (=> b!544014 (= e!314550 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (arr!16495 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!3216) (select (arr!16495 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544015 () Bool)

(assert (=> b!544015 (= e!314552 e!314551)))

(declare-fun res!338520 () Bool)

(assert (=> b!544015 (= res!338520 (and ((_ is Intermediate!4960) lt!248383) (not (undefined!5772 lt!248383)) (bvslt (x!50994 lt!248383) #b01111111111111111111111111111110) (bvsge (x!50994 lt!248383) #b00000000000000000000000000000000) (bvsge (x!50994 lt!248383) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!544015 (=> (not res!338520) (not e!314551))))

(declare-fun b!544017 () Bool)

(assert (=> b!544017 (= e!314548 e!314550)))

(declare-fun lt!248384 () (_ BitVec 64))

(declare-fun c!63067 () Bool)

(assert (=> b!544017 (= c!63067 (or (= lt!248384 (select (arr!16495 a!3154) j!147)) (= (bvadd lt!248384 lt!248384) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!544019 () Bool)

(assert (=> b!544019 (and (bvsge (index!22066 lt!248383) #b00000000000000000000000000000000) (bvslt (index!22066 lt!248383) (size!16859 a!3154)))))

(declare-fun res!338522 () Bool)

(assert (=> b!544019 (= res!338522 (= (select (arr!16495 a!3154) (index!22066 lt!248383)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!544019 (=> res!338522 e!314549)))

(declare-fun b!544011 () Bool)

(assert (=> b!544011 (and (bvsge (index!22066 lt!248383) #b00000000000000000000000000000000) (bvslt (index!22066 lt!248383) (size!16859 a!3154)))))

(assert (=> b!544011 (= e!314549 (= (select (arr!16495 a!3154) (index!22066 lt!248383)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!81917 () Bool)

(assert (=> d!81917 e!314552))

(declare-fun c!63065 () Bool)

(assert (=> d!81917 (= c!63065 (and ((_ is Intermediate!4960) lt!248383) (undefined!5772 lt!248383)))))

(assert (=> d!81917 (= lt!248383 e!314548)))

(declare-fun c!63066 () Bool)

(assert (=> d!81917 (= c!63066 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!81917 (= lt!248384 (select (arr!16495 a!3154) (nextIndex!0 (toIndex!0 (select (arr!16495 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216)))))

(assert (=> d!81917 (validMask!0 mask!3216)))

(assert (=> d!81917 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16495 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16495 a!3154) j!147) a!3154 mask!3216) lt!248383)))

(assert (= (and d!81917 c!63066) b!544009))

(assert (= (and d!81917 (not c!63066)) b!544017))

(assert (= (and b!544017 c!63067) b!544012))

(assert (= (and b!544017 (not c!63067)) b!544014))

(assert (= (and d!81917 c!63065) b!544010))

(assert (= (and d!81917 (not c!63065)) b!544015))

(assert (= (and b!544015 res!338520) b!544013))

(assert (= (and b!544013 (not res!338521)) b!544019))

(assert (= (and b!544019 (not res!338522)) b!544011))

(assert (=> b!544014 m!521779))

(declare-fun m!521995 () Bool)

(assert (=> b!544014 m!521995))

(assert (=> b!544014 m!521995))

(assert (=> b!544014 m!521711))

(declare-fun m!521997 () Bool)

(assert (=> b!544014 m!521997))

(declare-fun m!521999 () Bool)

(assert (=> b!544011 m!521999))

(assert (=> b!544013 m!521999))

(assert (=> d!81917 m!521779))

(declare-fun m!522001 () Bool)

(assert (=> d!81917 m!522001))

(assert (=> d!81917 m!521715))

(assert (=> b!544019 m!521999))

(assert (=> b!543743 d!81917))

(declare-fun d!81919 () Bool)

(declare-fun lt!248385 () (_ BitVec 32))

(assert (=> d!81919 (and (bvsge lt!248385 #b00000000000000000000000000000000) (bvslt lt!248385 (bvadd mask!3216 #b00000000000000000000000000000001)))))

(assert (=> d!81919 (= lt!248385 (choose!52 (toIndex!0 (select (arr!16495 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216))))

(assert (=> d!81919 (validMask!0 mask!3216)))

(assert (=> d!81919 (= (nextIndex!0 (toIndex!0 (select (arr!16495 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) lt!248385)))

(declare-fun bs!16977 () Bool)

(assert (= bs!16977 d!81919))

(assert (=> bs!16977 m!521727))

(declare-fun m!522003 () Bool)

(assert (=> bs!16977 m!522003))

(assert (=> bs!16977 m!521715))

(assert (=> b!543743 d!81919))

(declare-fun b!544053 () Bool)

(declare-fun c!63086 () Bool)

(declare-fun lt!248392 () (_ BitVec 64))

(assert (=> b!544053 (= c!63086 (= lt!248392 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!314572 () SeekEntryResult!4960)

(declare-fun e!314574 () SeekEntryResult!4960)

(assert (=> b!544053 (= e!314572 e!314574)))

(declare-fun b!544054 () Bool)

(assert (=> b!544054 (= e!314572 (Found!4960 (index!22066 lt!248286)))))

(declare-fun b!544055 () Bool)

(declare-fun e!314573 () SeekEntryResult!4960)

(assert (=> b!544055 (= e!314573 e!314572)))

(declare-fun c!63085 () Bool)

(assert (=> b!544055 (= c!63085 (= lt!248392 k0!1998))))

(declare-fun b!544056 () Bool)

(assert (=> b!544056 (= e!314574 (MissingVacant!4960 (index!22066 lt!248286)))))

(declare-fun lt!248393 () SeekEntryResult!4960)

(declare-fun d!81921 () Bool)

(assert (=> d!81921 (and (or ((_ is Undefined!4960) lt!248393) (not ((_ is Found!4960) lt!248393)) (and (bvsge (index!22065 lt!248393) #b00000000000000000000000000000000) (bvslt (index!22065 lt!248393) (size!16859 a!3154)))) (or ((_ is Undefined!4960) lt!248393) ((_ is Found!4960) lt!248393) (not ((_ is MissingVacant!4960) lt!248393)) (not (= (index!22067 lt!248393) (index!22066 lt!248286))) (and (bvsge (index!22067 lt!248393) #b00000000000000000000000000000000) (bvslt (index!22067 lt!248393) (size!16859 a!3154)))) (or ((_ is Undefined!4960) lt!248393) (ite ((_ is Found!4960) lt!248393) (= (select (arr!16495 a!3154) (index!22065 lt!248393)) k0!1998) (and ((_ is MissingVacant!4960) lt!248393) (= (index!22067 lt!248393) (index!22066 lt!248286)) (= (select (arr!16495 a!3154) (index!22067 lt!248393)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!81921 (= lt!248393 e!314573)))

(declare-fun c!63084 () Bool)

(assert (=> d!81921 (= c!63084 (bvsge (x!50994 lt!248286) #b01111111111111111111111111111110))))

(assert (=> d!81921 (= lt!248392 (select (arr!16495 a!3154) (index!22066 lt!248286)))))

(assert (=> d!81921 (validMask!0 mask!3216)))

(assert (=> d!81921 (= (seekKeyOrZeroReturnVacant!0 (x!50994 lt!248286) (index!22066 lt!248286) (index!22066 lt!248286) k0!1998 a!3154 mask!3216) lt!248393)))

(declare-fun b!544057 () Bool)

(assert (=> b!544057 (= e!314573 Undefined!4960)))

(declare-fun b!544058 () Bool)

(assert (=> b!544058 (= e!314574 (seekKeyOrZeroReturnVacant!0 (bvadd (x!50994 lt!248286) #b00000000000000000000000000000001) (nextIndex!0 (index!22066 lt!248286) (x!50994 lt!248286) mask!3216) (index!22066 lt!248286) k0!1998 a!3154 mask!3216))))

(assert (= (and d!81921 c!63084) b!544057))

(assert (= (and d!81921 (not c!63084)) b!544055))

(assert (= (and b!544055 c!63085) b!544054))

(assert (= (and b!544055 (not c!63085)) b!544053))

(assert (= (and b!544053 c!63086) b!544056))

(assert (= (and b!544053 (not c!63086)) b!544058))

(declare-fun m!522017 () Bool)

(assert (=> d!81921 m!522017))

(declare-fun m!522019 () Bool)

(assert (=> d!81921 m!522019))

(assert (=> d!81921 m!521823))

(assert (=> d!81921 m!521715))

(declare-fun m!522021 () Bool)

(assert (=> b!544058 m!522021))

(assert (=> b!544058 m!522021))

(declare-fun m!522023 () Bool)

(assert (=> b!544058 m!522023))

(assert (=> b!543814 d!81921))

(declare-fun b!544059 () Bool)

(declare-fun e!314575 () SeekEntryResult!4960)

(assert (=> b!544059 (= e!314575 (Intermediate!4960 true (toIndex!0 k0!1998 mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!544060 () Bool)

(declare-fun e!314579 () Bool)

(declare-fun lt!248394 () SeekEntryResult!4960)

(assert (=> b!544060 (= e!314579 (bvsge (x!50994 lt!248394) #b01111111111111111111111111111110))))

(declare-fun b!544062 () Bool)

(declare-fun e!314577 () SeekEntryResult!4960)

(assert (=> b!544062 (= e!314577 (Intermediate!4960 false (toIndex!0 k0!1998 mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!544063 () Bool)

(assert (=> b!544063 (and (bvsge (index!22066 lt!248394) #b00000000000000000000000000000000) (bvslt (index!22066 lt!248394) (size!16859 a!3154)))))

(declare-fun res!338527 () Bool)

(assert (=> b!544063 (= res!338527 (= (select (arr!16495 a!3154) (index!22066 lt!248394)) k0!1998))))

(declare-fun e!314576 () Bool)

(assert (=> b!544063 (=> res!338527 e!314576)))

(declare-fun e!314578 () Bool)

(assert (=> b!544063 (= e!314578 e!314576)))

(declare-fun b!544064 () Bool)

(assert (=> b!544064 (= e!314577 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!1998 mask!3216) #b00000000000000000000000000000000 mask!3216) k0!1998 a!3154 mask!3216))))

(declare-fun b!544065 () Bool)

(assert (=> b!544065 (= e!314579 e!314578)))

(declare-fun res!338526 () Bool)

(assert (=> b!544065 (= res!338526 (and ((_ is Intermediate!4960) lt!248394) (not (undefined!5772 lt!248394)) (bvslt (x!50994 lt!248394) #b01111111111111111111111111111110) (bvsge (x!50994 lt!248394) #b00000000000000000000000000000000) (bvsge (x!50994 lt!248394) #b00000000000000000000000000000000)))))

(assert (=> b!544065 (=> (not res!338526) (not e!314578))))

(declare-fun b!544066 () Bool)

(assert (=> b!544066 (= e!314575 e!314577)))

(declare-fun c!63089 () Bool)

(declare-fun lt!248395 () (_ BitVec 64))

(assert (=> b!544066 (= c!63089 (or (= lt!248395 k0!1998) (= (bvadd lt!248395 lt!248395) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!544067 () Bool)

(assert (=> b!544067 (and (bvsge (index!22066 lt!248394) #b00000000000000000000000000000000) (bvslt (index!22066 lt!248394) (size!16859 a!3154)))))

(declare-fun res!338528 () Bool)

(assert (=> b!544067 (= res!338528 (= (select (arr!16495 a!3154) (index!22066 lt!248394)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!544067 (=> res!338528 e!314576)))

(declare-fun b!544061 () Bool)

(assert (=> b!544061 (and (bvsge (index!22066 lt!248394) #b00000000000000000000000000000000) (bvslt (index!22066 lt!248394) (size!16859 a!3154)))))

(assert (=> b!544061 (= e!314576 (= (select (arr!16495 a!3154) (index!22066 lt!248394)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!81925 () Bool)

(assert (=> d!81925 e!314579))

(declare-fun c!63087 () Bool)

(assert (=> d!81925 (= c!63087 (and ((_ is Intermediate!4960) lt!248394) (undefined!5772 lt!248394)))))

(assert (=> d!81925 (= lt!248394 e!314575)))

(declare-fun c!63088 () Bool)

(assert (=> d!81925 (= c!63088 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!81925 (= lt!248395 (select (arr!16495 a!3154) (toIndex!0 k0!1998 mask!3216)))))

(assert (=> d!81925 (validMask!0 mask!3216)))

(assert (=> d!81925 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1998 mask!3216) k0!1998 a!3154 mask!3216) lt!248394)))

(assert (= (and d!81925 c!63088) b!544059))

(assert (= (and d!81925 (not c!63088)) b!544066))

(assert (= (and b!544066 c!63089) b!544062))

(assert (= (and b!544066 (not c!63089)) b!544064))

(assert (= (and d!81925 c!63087) b!544060))

(assert (= (and d!81925 (not c!63087)) b!544065))

(assert (= (and b!544065 res!338526) b!544063))

(assert (= (and b!544063 (not res!338527)) b!544067))

(assert (= (and b!544067 (not res!338528)) b!544061))

(assert (=> b!544064 m!521815))

(declare-fun m!522025 () Bool)

(assert (=> b!544064 m!522025))

(assert (=> b!544064 m!522025))

(declare-fun m!522027 () Bool)

(assert (=> b!544064 m!522027))

(declare-fun m!522029 () Bool)

(assert (=> b!544061 m!522029))

(assert (=> b!544063 m!522029))

(assert (=> d!81925 m!521815))

(declare-fun m!522031 () Bool)

(assert (=> d!81925 m!522031))

(assert (=> d!81925 m!521715))

(assert (=> b!544067 m!522029))

(assert (=> d!81835 d!81925))

(declare-fun d!81927 () Bool)

(declare-fun lt!248397 () (_ BitVec 32))

(declare-fun lt!248396 () (_ BitVec 32))

(assert (=> d!81927 (= lt!248397 (bvmul (bvxor lt!248396 (bvlshr lt!248396 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!81927 (= lt!248396 ((_ extract 31 0) (bvand (bvxor k0!1998 (bvlshr k0!1998 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!81927 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!338418 (let ((h!11620 ((_ extract 31 0) (bvand (bvxor k0!1998 (bvlshr k0!1998 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!50997 (bvmul (bvxor h!11620 (bvlshr h!11620 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!50997 (bvlshr x!50997 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!338418 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!338418 #b00000000000000000000000000000000))))))

(assert (=> d!81927 (= (toIndex!0 k0!1998 mask!3216) (bvand (bvxor lt!248397 (bvlshr lt!248397 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> d!81835 d!81927))

(assert (=> d!81835 d!81815))

(declare-fun d!81929 () Bool)

(declare-fun res!338531 () (_ BitVec 32))

(assert (=> d!81929 (and (bvsge res!338531 #b00000000000000000000000000000000) (bvslt res!338531 (bvadd mask!3216 #b00000000000000000000000000000001)))))

(assert (=> d!81929 true))

(assert (=> d!81929 (= (choose!52 index!1177 x!1030 mask!3216) res!338531)))

(assert (=> d!81845 d!81929))

(assert (=> d!81845 d!81815))

(declare-fun d!81931 () Bool)

(assert (=> d!81931 (= (validKeyInArray!0 (select (arr!16495 a!3154) #b00000000000000000000000000000000)) (and (not (= (select (arr!16495 a!3154) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16495 a!3154) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!543704 d!81931))

(assert (=> b!543705 d!81931))

(declare-fun e!314580 () SeekEntryResult!4960)

(declare-fun b!544068 () Bool)

(assert (=> b!544068 (= e!314580 (Intermediate!4960 true (nextIndex!0 index!1177 x!1030 mask!3216) (bvadd x!1030 #b00000000000000000000000000000001)))))

(declare-fun b!544069 () Bool)

(declare-fun e!314584 () Bool)

(declare-fun lt!248398 () SeekEntryResult!4960)

(assert (=> b!544069 (= e!314584 (bvsge (x!50994 lt!248398) #b01111111111111111111111111111110))))

(declare-fun b!544071 () Bool)

(declare-fun e!314582 () SeekEntryResult!4960)

(assert (=> b!544071 (= e!314582 (Intermediate!4960 false (nextIndex!0 index!1177 x!1030 mask!3216) (bvadd x!1030 #b00000000000000000000000000000001)))))

(declare-fun b!544072 () Bool)

(assert (=> b!544072 (and (bvsge (index!22066 lt!248398) #b00000000000000000000000000000000) (bvslt (index!22066 lt!248398) (size!16859 a!3154)))))

(declare-fun res!338533 () Bool)

(assert (=> b!544072 (= res!338533 (= (select (arr!16495 a!3154) (index!22066 lt!248398)) (select (arr!16495 a!3154) j!147)))))

(declare-fun e!314581 () Bool)

(assert (=> b!544072 (=> res!338533 e!314581)))

(declare-fun e!314583 () Bool)

(assert (=> b!544072 (= e!314583 e!314581)))

(declare-fun b!544073 () Bool)

(assert (=> b!544073 (= e!314582 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1177 x!1030 mask!3216) (bvadd x!1030 #b00000000000000000000000000000001) mask!3216) (select (arr!16495 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544074 () Bool)

(assert (=> b!544074 (= e!314584 e!314583)))

(declare-fun res!338532 () Bool)

(assert (=> b!544074 (= res!338532 (and ((_ is Intermediate!4960) lt!248398) (not (undefined!5772 lt!248398)) (bvslt (x!50994 lt!248398) #b01111111111111111111111111111110) (bvsge (x!50994 lt!248398) #b00000000000000000000000000000000) (bvsge (x!50994 lt!248398) (bvadd x!1030 #b00000000000000000000000000000001))))))

(assert (=> b!544074 (=> (not res!338532) (not e!314583))))

(declare-fun b!544075 () Bool)

(assert (=> b!544075 (= e!314580 e!314582)))

(declare-fun c!63092 () Bool)

(declare-fun lt!248399 () (_ BitVec 64))

(assert (=> b!544075 (= c!63092 (or (= lt!248399 (select (arr!16495 a!3154) j!147)) (= (bvadd lt!248399 lt!248399) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!544076 () Bool)

(assert (=> b!544076 (and (bvsge (index!22066 lt!248398) #b00000000000000000000000000000000) (bvslt (index!22066 lt!248398) (size!16859 a!3154)))))

(declare-fun res!338534 () Bool)

(assert (=> b!544076 (= res!338534 (= (select (arr!16495 a!3154) (index!22066 lt!248398)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!544076 (=> res!338534 e!314581)))

(declare-fun b!544070 () Bool)

(assert (=> b!544070 (and (bvsge (index!22066 lt!248398) #b00000000000000000000000000000000) (bvslt (index!22066 lt!248398) (size!16859 a!3154)))))

(assert (=> b!544070 (= e!314581 (= (select (arr!16495 a!3154) (index!22066 lt!248398)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!81933 () Bool)

(assert (=> d!81933 e!314584))

(declare-fun c!63090 () Bool)

(assert (=> d!81933 (= c!63090 (and ((_ is Intermediate!4960) lt!248398) (undefined!5772 lt!248398)))))

(assert (=> d!81933 (= lt!248398 e!314580)))

(declare-fun c!63091 () Bool)

(assert (=> d!81933 (= c!63091 (bvsge (bvadd x!1030 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!81933 (= lt!248399 (select (arr!16495 a!3154) (nextIndex!0 index!1177 x!1030 mask!3216)))))

(assert (=> d!81933 (validMask!0 mask!3216)))

(assert (=> d!81933 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16495 a!3154) j!147) a!3154 mask!3216) lt!248398)))

(assert (= (and d!81933 c!63091) b!544068))

(assert (= (and d!81933 (not c!63091)) b!544075))

(assert (= (and b!544075 c!63092) b!544071))

(assert (= (and b!544075 (not c!63092)) b!544073))

(assert (= (and d!81933 c!63090) b!544069))

(assert (= (and d!81933 (not c!63090)) b!544074))

(assert (= (and b!544074 res!338532) b!544072))

(assert (= (and b!544072 (not res!338533)) b!544076))

(assert (= (and b!544076 (not res!338534)) b!544070))

(assert (=> b!544073 m!521707))

(declare-fun m!522033 () Bool)

(assert (=> b!544073 m!522033))

(assert (=> b!544073 m!522033))

(assert (=> b!544073 m!521711))

(declare-fun m!522035 () Bool)

(assert (=> b!544073 m!522035))

(declare-fun m!522037 () Bool)

(assert (=> b!544070 m!522037))

(assert (=> b!544072 m!522037))

(assert (=> d!81933 m!521707))

(declare-fun m!522039 () Bool)

(assert (=> d!81933 m!522039))

(assert (=> d!81933 m!521715))

(assert (=> b!544076 m!522037))

(assert (=> b!543821 d!81933))

(assert (=> b!543821 d!81845))

(declare-fun b!544077 () Bool)

(declare-fun e!314585 () Bool)

(declare-fun call!32088 () Bool)

(assert (=> b!544077 (= e!314585 call!32088)))

(declare-fun b!544078 () Bool)

(declare-fun e!314588 () Bool)

(assert (=> b!544078 (= e!314588 e!314585)))

(declare-fun c!63093 () Bool)

(assert (=> b!544078 (= c!63093 (validKeyInArray!0 (select (arr!16495 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!544079 () Bool)

(declare-fun e!314586 () Bool)

(assert (=> b!544079 (= e!314586 e!314588)))

(declare-fun res!338536 () Bool)

(assert (=> b!544079 (=> (not res!338536) (not e!314588))))

(declare-fun e!314587 () Bool)

(assert (=> b!544079 (= res!338536 (not e!314587))))

(declare-fun res!338535 () Bool)

(assert (=> b!544079 (=> (not res!338535) (not e!314587))))

(assert (=> b!544079 (= res!338535 (validKeyInArray!0 (select (arr!16495 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!32085 () Bool)

(assert (=> bm!32085 (= call!32088 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!63093 (Cons!10663 (select (arr!16495 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!62969 (Cons!10663 (select (arr!16495 a!3154) #b00000000000000000000000000000000) Nil!10664) Nil!10664)) (ite c!62969 (Cons!10663 (select (arr!16495 a!3154) #b00000000000000000000000000000000) Nil!10664) Nil!10664))))))

(declare-fun b!544080 () Bool)

(assert (=> b!544080 (= e!314587 (contains!2810 (ite c!62969 (Cons!10663 (select (arr!16495 a!3154) #b00000000000000000000000000000000) Nil!10664) Nil!10664) (select (arr!16495 a!3154) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!81935 () Bool)

(declare-fun res!338537 () Bool)

(assert (=> d!81935 (=> res!338537 e!314586)))

(assert (=> d!81935 (= res!338537 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16859 a!3154)))))

(assert (=> d!81935 (= (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62969 (Cons!10663 (select (arr!16495 a!3154) #b00000000000000000000000000000000) Nil!10664) Nil!10664)) e!314586)))

(declare-fun b!544081 () Bool)

(assert (=> b!544081 (= e!314585 call!32088)))

(assert (= (and d!81935 (not res!338537)) b!544079))

(assert (= (and b!544079 res!338535) b!544080))

(assert (= (and b!544079 res!338536) b!544078))

(assert (= (and b!544078 c!63093) b!544077))

(assert (= (and b!544078 (not c!63093)) b!544081))

(assert (= (or b!544077 b!544081) bm!32085))

(assert (=> b!544078 m!521963))

(assert (=> b!544078 m!521963))

(assert (=> b!544078 m!521967))

(assert (=> b!544079 m!521963))

(assert (=> b!544079 m!521963))

(assert (=> b!544079 m!521967))

(assert (=> bm!32085 m!521963))

(declare-fun m!522041 () Bool)

(assert (=> bm!32085 m!522041))

(assert (=> b!544080 m!521963))

(assert (=> b!544080 m!521963))

(declare-fun m!522043 () Bool)

(assert (=> b!544080 m!522043))

(assert (=> bm!32066 d!81935))

(declare-fun d!81937 () Bool)

(declare-fun lt!248402 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!226 (List!10667) (InoxSet (_ BitVec 64)))

(assert (=> d!81937 (= lt!248402 (select (content!226 Nil!10664) (select (arr!16495 a!3154) #b00000000000000000000000000000000)))))

(declare-fun e!314594 () Bool)

(assert (=> d!81937 (= lt!248402 e!314594)))

(declare-fun res!338543 () Bool)

(assert (=> d!81937 (=> (not res!338543) (not e!314594))))

(assert (=> d!81937 (= res!338543 ((_ is Cons!10663) Nil!10664))))

(assert (=> d!81937 (= (contains!2810 Nil!10664 (select (arr!16495 a!3154) #b00000000000000000000000000000000)) lt!248402)))

(declare-fun b!544086 () Bool)

(declare-fun e!314593 () Bool)

(assert (=> b!544086 (= e!314594 e!314593)))

(declare-fun res!338542 () Bool)

(assert (=> b!544086 (=> res!338542 e!314593)))

(assert (=> b!544086 (= res!338542 (= (h!11618 Nil!10664) (select (arr!16495 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!544087 () Bool)

(assert (=> b!544087 (= e!314593 (contains!2810 (t!16903 Nil!10664) (select (arr!16495 a!3154) #b00000000000000000000000000000000)))))

(assert (= (and d!81937 res!338543) b!544086))

(assert (= (and b!544086 (not res!338542)) b!544087))

(declare-fun m!522045 () Bool)

(assert (=> d!81937 m!522045))

(assert (=> d!81937 m!521761))

(declare-fun m!522047 () Bool)

(assert (=> d!81937 m!522047))

(assert (=> b!544087 m!521761))

(declare-fun m!522049 () Bool)

(assert (=> b!544087 m!522049))

(assert (=> b!543706 d!81937))

(assert (=> d!81843 d!81815))

(assert (=> b!543716 d!81931))

(check-sat (not d!81937) (not b!544002) (not d!81925) (not b!544079) (not b!544078) (not d!81911) (not b!544064) (not b!544087) (not d!81915) (not b!543996) (not b!544080) (not b!544000) (not d!81917) (not b!544007) (not d!81933) (not bm!32085) (not b!544073) (not b!544058) (not d!81921) (not bm!32083) (not b!543997) (not d!81919) (not b!544014))
(check-sat)
