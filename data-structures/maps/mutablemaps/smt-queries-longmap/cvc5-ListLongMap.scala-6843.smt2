; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86182 () Bool)

(assert start!86182)

(declare-fun b!997611 () Bool)

(declare-fun res!667727 () Bool)

(declare-fun e!562680 () Bool)

(assert (=> b!997611 (=> (not res!667727) (not e!562680))))

(declare-datatypes ((array!63088 0))(
  ( (array!63089 (arr!30370 (Array (_ BitVec 32) (_ BitVec 64))) (size!30873 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63088)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!997611 (= res!667727 (validKeyInArray!0 (select (arr!30370 a!3219) j!170)))))

(declare-fun b!997612 () Bool)

(declare-fun e!562682 () Bool)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun lt!441465 () (_ BitVec 32))

(assert (=> b!997612 (= e!562682 (and (bvsge mask!3464 #b00000000000000000000000000000000) (or (bvslt lt!441465 #b00000000000000000000000000000000) (bvsge lt!441465 (bvadd #b00000000000000000000000000000001 mask!3464)))))))

(declare-fun b!997613 () Bool)

(declare-fun res!667725 () Bool)

(assert (=> b!997613 (=> (not res!667725) (not e!562680))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63088 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!997613 (= res!667725 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!997614 () Bool)

(declare-fun res!667724 () Bool)

(assert (=> b!997614 (=> (not res!667724) (not e!562682))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9302 0))(
  ( (MissingZero!9302 (index!39578 (_ BitVec 32))) (Found!9302 (index!39579 (_ BitVec 32))) (Intermediate!9302 (undefined!10114 Bool) (index!39580 (_ BitVec 32)) (x!87041 (_ BitVec 32))) (Undefined!9302) (MissingVacant!9302 (index!39581 (_ BitVec 32))) )
))
(declare-fun lt!441464 () SeekEntryResult!9302)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63088 (_ BitVec 32)) SeekEntryResult!9302)

(assert (=> b!997614 (= res!667724 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30370 a!3219) j!170) a!3219 mask!3464) lt!441464))))

(declare-fun b!997615 () Bool)

(declare-fun res!667726 () Bool)

(declare-fun e!562679 () Bool)

(assert (=> b!997615 (=> (not res!667726) (not e!562679))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!997615 (= res!667726 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30873 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30873 a!3219))))))

(declare-fun b!997617 () Bool)

(declare-fun res!667730 () Bool)

(assert (=> b!997617 (=> (not res!667730) (not e!562680))))

(assert (=> b!997617 (= res!667730 (validKeyInArray!0 k!2224))))

(declare-fun b!997618 () Bool)

(declare-fun res!667728 () Bool)

(assert (=> b!997618 (=> (not res!667728) (not e!562679))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63088 (_ BitVec 32)) Bool)

(assert (=> b!997618 (= res!667728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!997619 () Bool)

(assert (=> b!997619 (= e!562680 e!562679)))

(declare-fun res!667722 () Bool)

(assert (=> b!997619 (=> (not res!667722) (not e!562679))))

(declare-fun lt!441463 () SeekEntryResult!9302)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!997619 (= res!667722 (or (= lt!441463 (MissingVacant!9302 i!1194)) (= lt!441463 (MissingZero!9302 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63088 (_ BitVec 32)) SeekEntryResult!9302)

(assert (=> b!997619 (= lt!441463 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!997620 () Bool)

(declare-fun res!667729 () Bool)

(assert (=> b!997620 (=> (not res!667729) (not e!562679))))

(declare-datatypes ((List!21172 0))(
  ( (Nil!21169) (Cons!21168 (h!22336 (_ BitVec 64)) (t!30181 List!21172)) )
))
(declare-fun arrayNoDuplicates!0 (array!63088 (_ BitVec 32) List!21172) Bool)

(assert (=> b!997620 (= res!667729 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21169))))

(declare-fun b!997621 () Bool)

(declare-fun res!667731 () Bool)

(assert (=> b!997621 (=> (not res!667731) (not e!562680))))

(assert (=> b!997621 (= res!667731 (and (= (size!30873 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30873 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30873 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!997616 () Bool)

(assert (=> b!997616 (= e!562679 e!562682)))

(declare-fun res!667732 () Bool)

(assert (=> b!997616 (=> (not res!667732) (not e!562682))))

(assert (=> b!997616 (= res!667732 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!441465 (select (arr!30370 a!3219) j!170) a!3219 mask!3464) lt!441464))))

(assert (=> b!997616 (= lt!441464 (Intermediate!9302 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997616 (= lt!441465 (toIndex!0 (select (arr!30370 a!3219) j!170) mask!3464))))

(declare-fun res!667723 () Bool)

(assert (=> start!86182 (=> (not res!667723) (not e!562680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86182 (= res!667723 (validMask!0 mask!3464))))

(assert (=> start!86182 e!562680))

(declare-fun array_inv!23360 (array!63088) Bool)

(assert (=> start!86182 (array_inv!23360 a!3219)))

(assert (=> start!86182 true))

(assert (= (and start!86182 res!667723) b!997621))

(assert (= (and b!997621 res!667731) b!997611))

(assert (= (and b!997611 res!667727) b!997617))

(assert (= (and b!997617 res!667730) b!997613))

(assert (= (and b!997613 res!667725) b!997619))

(assert (= (and b!997619 res!667722) b!997618))

(assert (= (and b!997618 res!667728) b!997620))

(assert (= (and b!997620 res!667729) b!997615))

(assert (= (and b!997615 res!667726) b!997616))

(assert (= (and b!997616 res!667732) b!997614))

(assert (= (and b!997614 res!667724) b!997612))

(declare-fun m!924477 () Bool)

(assert (=> b!997620 m!924477))

(declare-fun m!924479 () Bool)

(assert (=> b!997619 m!924479))

(declare-fun m!924481 () Bool)

(assert (=> b!997613 m!924481))

(declare-fun m!924483 () Bool)

(assert (=> start!86182 m!924483))

(declare-fun m!924485 () Bool)

(assert (=> start!86182 m!924485))

(declare-fun m!924487 () Bool)

(assert (=> b!997614 m!924487))

(assert (=> b!997614 m!924487))

(declare-fun m!924489 () Bool)

(assert (=> b!997614 m!924489))

(declare-fun m!924491 () Bool)

(assert (=> b!997618 m!924491))

(assert (=> b!997611 m!924487))

(assert (=> b!997611 m!924487))

(declare-fun m!924493 () Bool)

(assert (=> b!997611 m!924493))

(assert (=> b!997616 m!924487))

(assert (=> b!997616 m!924487))

(declare-fun m!924495 () Bool)

(assert (=> b!997616 m!924495))

(assert (=> b!997616 m!924487))

(declare-fun m!924497 () Bool)

(assert (=> b!997616 m!924497))

(declare-fun m!924499 () Bool)

(assert (=> b!997617 m!924499))

(push 1)

(assert (not b!997613))

(assert (not b!997616))

(assert (not b!997619))

(assert (not b!997620))

(assert (not start!86182))

(assert (not b!997611))

(assert (not b!997618))

(assert (not b!997614))

(assert (not b!997617))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!119047 () Bool)

(assert (=> d!119047 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!997617 d!119047))

(declare-fun b!997728 () Bool)

(declare-fun e!562727 () SeekEntryResult!9302)

(declare-fun lt!441504 () SeekEntryResult!9302)

(assert (=> b!997728 (= e!562727 (Found!9302 (index!39580 lt!441504)))))

(declare-fun b!997729 () Bool)

(declare-fun c!101108 () Bool)

(declare-fun lt!441503 () (_ BitVec 64))

(assert (=> b!997729 (= c!101108 (= lt!441503 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!562728 () SeekEntryResult!9302)

(assert (=> b!997729 (= e!562727 e!562728)))

(declare-fun d!119049 () Bool)

(declare-fun lt!441505 () SeekEntryResult!9302)

(assert (=> d!119049 (and (or (is-Undefined!9302 lt!441505) (not (is-Found!9302 lt!441505)) (and (bvsge (index!39579 lt!441505) #b00000000000000000000000000000000) (bvslt (index!39579 lt!441505) (size!30873 a!3219)))) (or (is-Undefined!9302 lt!441505) (is-Found!9302 lt!441505) (not (is-MissingZero!9302 lt!441505)) (and (bvsge (index!39578 lt!441505) #b00000000000000000000000000000000) (bvslt (index!39578 lt!441505) (size!30873 a!3219)))) (or (is-Undefined!9302 lt!441505) (is-Found!9302 lt!441505) (is-MissingZero!9302 lt!441505) (not (is-MissingVacant!9302 lt!441505)) (and (bvsge (index!39581 lt!441505) #b00000000000000000000000000000000) (bvslt (index!39581 lt!441505) (size!30873 a!3219)))) (or (is-Undefined!9302 lt!441505) (ite (is-Found!9302 lt!441505) (= (select (arr!30370 a!3219) (index!39579 lt!441505)) k!2224) (ite (is-MissingZero!9302 lt!441505) (= (select (arr!30370 a!3219) (index!39578 lt!441505)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9302 lt!441505) (= (select (arr!30370 a!3219) (index!39581 lt!441505)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!562726 () SeekEntryResult!9302)

(assert (=> d!119049 (= lt!441505 e!562726)))

(declare-fun c!101109 () Bool)

(assert (=> d!119049 (= c!101109 (and (is-Intermediate!9302 lt!441504) (undefined!10114 lt!441504)))))

(assert (=> d!119049 (= lt!441504 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!119049 (validMask!0 mask!3464)))

(assert (=> d!119049 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!441505)))

(declare-fun b!997730 () Bool)

(assert (=> b!997730 (= e!562728 (MissingZero!9302 (index!39580 lt!441504)))))

(declare-fun b!997731 () Bool)

(assert (=> b!997731 (= e!562726 Undefined!9302)))

(declare-fun b!997732 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63088 (_ BitVec 32)) SeekEntryResult!9302)

(assert (=> b!997732 (= e!562728 (seekKeyOrZeroReturnVacant!0 (x!87041 lt!441504) (index!39580 lt!441504) (index!39580 lt!441504) k!2224 a!3219 mask!3464))))

(declare-fun b!997733 () Bool)

(assert (=> b!997733 (= e!562726 e!562727)))

(assert (=> b!997733 (= lt!441503 (select (arr!30370 a!3219) (index!39580 lt!441504)))))

(declare-fun c!101110 () Bool)

(assert (=> b!997733 (= c!101110 (= lt!441503 k!2224))))

(assert (= (and d!119049 c!101109) b!997731))

(assert (= (and d!119049 (not c!101109)) b!997733))

(assert (= (and b!997733 c!101110) b!997728))

(assert (= (and b!997733 (not c!101110)) b!997729))

(assert (= (and b!997729 c!101108) b!997730))

(assert (= (and b!997729 (not c!101108)) b!997732))

(declare-fun m!924563 () Bool)

(assert (=> d!119049 m!924563))

(assert (=> d!119049 m!924483))

(declare-fun m!924565 () Bool)

(assert (=> d!119049 m!924565))

(declare-fun m!924567 () Bool)

(assert (=> d!119049 m!924567))

(assert (=> d!119049 m!924563))

(declare-fun m!924569 () Bool)

(assert (=> d!119049 m!924569))

(declare-fun m!924571 () Bool)

(assert (=> d!119049 m!924571))

(declare-fun m!924573 () Bool)

(assert (=> b!997732 m!924573))

(declare-fun m!924575 () Bool)

(assert (=> b!997733 m!924575))

(assert (=> b!997619 d!119049))

(declare-fun d!119055 () Bool)

(declare-fun res!667815 () Bool)

(declare-fun e!562749 () Bool)

(assert (=> d!119055 (=> res!667815 e!562749)))

(assert (=> d!119055 (= res!667815 (= (select (arr!30370 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!119055 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!562749)))

(declare-fun b!997764 () Bool)

(declare-fun e!562750 () Bool)

(assert (=> b!997764 (= e!562749 e!562750)))

(declare-fun res!667816 () Bool)

(assert (=> b!997764 (=> (not res!667816) (not e!562750))))

(assert (=> b!997764 (= res!667816 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30873 a!3219)))))

(declare-fun b!997765 () Bool)

(assert (=> b!997765 (= e!562750 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119055 (not res!667815)) b!997764))

(assert (= (and b!997764 res!667816) b!997765))

(declare-fun m!924577 () Bool)

(assert (=> d!119055 m!924577))

(declare-fun m!924579 () Bool)

(assert (=> b!997765 m!924579))

(assert (=> b!997613 d!119055))

(declare-fun b!997792 () Bool)

(declare-fun e!562768 () Bool)

(declare-fun e!562769 () Bool)

(assert (=> b!997792 (= e!562768 e!562769)))

(declare-fun c!101127 () Bool)

(assert (=> b!997792 (= c!101127 (validKeyInArray!0 (select (arr!30370 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!997793 () Bool)

(declare-fun e!562767 () Bool)

(assert (=> b!997793 (= e!562769 e!562767)))

(declare-fun lt!441534 () (_ BitVec 64))

(assert (=> b!997793 (= lt!441534 (select (arr!30370 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32926 0))(
  ( (Unit!32927) )
))
(declare-fun lt!441533 () Unit!32926)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63088 (_ BitVec 64) (_ BitVec 32)) Unit!32926)

(assert (=> b!997793 (= lt!441533 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!441534 #b00000000000000000000000000000000))))

(assert (=> b!997793 (arrayContainsKey!0 a!3219 lt!441534 #b00000000000000000000000000000000)))

(declare-fun lt!441532 () Unit!32926)

(assert (=> b!997793 (= lt!441532 lt!441533)))

(declare-fun res!667830 () Bool)

(assert (=> b!997793 (= res!667830 (= (seekEntryOrOpen!0 (select (arr!30370 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9302 #b00000000000000000000000000000000)))))

(assert (=> b!997793 (=> (not res!667830) (not e!562767))))

(declare-fun d!119057 () Bool)

(declare-fun res!667829 () Bool)

(assert (=> d!119057 (=> res!667829 e!562768)))

(assert (=> d!119057 (= res!667829 (bvsge #b00000000000000000000000000000000 (size!30873 a!3219)))))

(assert (=> d!119057 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!562768)))

(declare-fun b!997794 () Bool)

(declare-fun call!42262 () Bool)

(assert (=> b!997794 (= e!562767 call!42262)))

(declare-fun bm!42259 () Bool)

(assert (=> bm!42259 (= call!42262 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!997795 () Bool)

(assert (=> b!997795 (= e!562769 call!42262)))

(assert (= (and d!119057 (not res!667829)) b!997792))

(assert (= (and b!997792 c!101127) b!997793))

(assert (= (and b!997792 (not c!101127)) b!997795))

(assert (= (and b!997793 res!667830) b!997794))

(assert (= (or b!997794 b!997795) bm!42259))

(assert (=> b!997792 m!924577))

(assert (=> b!997792 m!924577))

(declare-fun m!924597 () Bool)

(assert (=> b!997792 m!924597))

(assert (=> b!997793 m!924577))

(declare-fun m!924599 () Bool)

(assert (=> b!997793 m!924599))

(declare-fun m!924601 () Bool)

(assert (=> b!997793 m!924601))

(assert (=> b!997793 m!924577))

(declare-fun m!924603 () Bool)

(assert (=> b!997793 m!924603))

(declare-fun m!924605 () Bool)

(assert (=> bm!42259 m!924605))

(assert (=> b!997618 d!119057))

(declare-fun b!997825 () Bool)

(declare-fun e!562798 () Bool)

(declare-fun contains!5879 (List!21172 (_ BitVec 64)) Bool)

(assert (=> b!997825 (= e!562798 (contains!5879 Nil!21169 (select (arr!30370 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!997829 () Bool)

(declare-fun e!562797 () Bool)

(declare-fun e!562795 () Bool)

(assert (=> b!997829 (= e!562797 e!562795)))

(declare-fun c!101133 () Bool)

(assert (=> b!997829 (= c!101133 (validKeyInArray!0 (select (arr!30370 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42262 () Bool)

(declare-fun call!42265 () Bool)

(assert (=> bm!42262 (= call!42265 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101133 (Cons!21168 (select (arr!30370 a!3219) #b00000000000000000000000000000000) Nil!21169) Nil!21169)))))

(declare-fun b!997830 () Bool)

(assert (=> b!997830 (= e!562795 call!42265)))

(declare-fun b!997831 () Bool)

(assert (=> b!997831 (= e!562795 call!42265)))

(declare-fun d!119069 () Bool)

(declare-fun res!667853 () Bool)

(declare-fun e!562796 () Bool)

(assert (=> d!119069 (=> res!667853 e!562796)))

(assert (=> d!119069 (= res!667853 (bvsge #b00000000000000000000000000000000 (size!30873 a!3219)))))

(assert (=> d!119069 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21169) e!562796)))

(declare-fun b!997827 () Bool)

(assert (=> b!997827 (= e!562796 e!562797)))

(declare-fun res!667854 () Bool)

(assert (=> b!997827 (=> (not res!667854) (not e!562797))))

(assert (=> b!997827 (= res!667854 (not e!562798))))

(declare-fun res!667852 () Bool)

(assert (=> b!997827 (=> (not res!667852) (not e!562798))))

(assert (=> b!997827 (= res!667852 (validKeyInArray!0 (select (arr!30370 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119069 (not res!667853)) b!997827))

(assert (= (and b!997827 res!667852) b!997825))

(assert (= (and b!997827 res!667854) b!997829))

(assert (= (and b!997829 c!101133) b!997831))

(assert (= (and b!997829 (not c!101133)) b!997830))

(assert (= (or b!997831 b!997830) bm!42262))

(assert (=> b!997825 m!924577))

(assert (=> b!997825 m!924577))

(declare-fun m!924619 () Bool)

(assert (=> b!997825 m!924619))

(assert (=> b!997829 m!924577))

(assert (=> b!997829 m!924577))

(assert (=> b!997829 m!924597))

(assert (=> bm!42262 m!924577))

(declare-fun m!924621 () Bool)

(assert (=> bm!42262 m!924621))

(assert (=> b!997827 m!924577))

(assert (=> b!997827 m!924577))

(assert (=> b!997827 m!924597))

(assert (=> b!997620 d!119069))

(declare-fun b!997889 () Bool)

(declare-fun e!562834 () Bool)

(declare-fun lt!441559 () SeekEntryResult!9302)

(assert (=> b!997889 (= e!562834 (bvsge (x!87041 lt!441559) #b01111111111111111111111111111110))))

(declare-fun b!997890 () Bool)

(declare-fun e!562837 () Bool)

(assert (=> b!997890 (= e!562834 e!562837)))

(declare-fun res!667871 () Bool)

(assert (=> b!997890 (= res!667871 (and (is-Intermediate!9302 lt!441559) (not (undefined!10114 lt!441559)) (bvslt (x!87041 lt!441559) #b01111111111111111111111111111110) (bvsge (x!87041 lt!441559) #b00000000000000000000000000000000) (bvsge (x!87041 lt!441559) x!1245)))))

(assert (=> b!997890 (=> (not res!667871) (not e!562837))))

(declare-fun b!997891 () Bool)

(declare-fun e!562833 () SeekEntryResult!9302)

(declare-fun e!562836 () SeekEntryResult!9302)

(assert (=> b!997891 (= e!562833 e!562836)))

(declare-fun c!101156 () Bool)

(declare-fun lt!441560 () (_ BitVec 64))

(assert (=> b!997891 (= c!101156 (or (= lt!441560 (select (arr!30370 a!3219) j!170)) (= (bvadd lt!441560 lt!441560) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!997892 () Bool)

(assert (=> b!997892 (and (bvsge (index!39580 lt!441559) #b00000000000000000000000000000000) (bvslt (index!39580 lt!441559) (size!30873 a!3219)))))

(declare-fun res!667872 () Bool)

(assert (=> b!997892 (= res!667872 (= (select (arr!30370 a!3219) (index!39580 lt!441559)) (select (arr!30370 a!3219) j!170)))))

(declare-fun e!562835 () Bool)

(assert (=> b!997892 (=> res!667872 e!562835)))

(assert (=> b!997892 (= e!562837 e!562835)))

(declare-fun d!119077 () Bool)

(assert (=> d!119077 e!562834))

(declare-fun c!101155 () Bool)

(assert (=> d!119077 (= c!101155 (and (is-Intermediate!9302 lt!441559) (undefined!10114 lt!441559)))))

(assert (=> d!119077 (= lt!441559 e!562833)))

(declare-fun c!101157 () Bool)

(assert (=> d!119077 (= c!101157 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119077 (= lt!441560 (select (arr!30370 a!3219) index!1507))))

(assert (=> d!119077 (validMask!0 mask!3464)))

(assert (=> d!119077 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30370 a!3219) j!170) a!3219 mask!3464) lt!441559)))

(declare-fun b!997893 () Bool)

(assert (=> b!997893 (= e!562833 (Intermediate!9302 true index!1507 x!1245))))

(declare-fun b!997894 () Bool)

(assert (=> b!997894 (and (bvsge (index!39580 lt!441559) #b00000000000000000000000000000000) (bvslt (index!39580 lt!441559) (size!30873 a!3219)))))

(declare-fun res!667870 () Bool)

(assert (=> b!997894 (= res!667870 (= (select (arr!30370 a!3219) (index!39580 lt!441559)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!997894 (=> res!667870 e!562835)))

(declare-fun b!997895 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997895 (= e!562836 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30370 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!997896 () Bool)

(assert (=> b!997896 (= e!562836 (Intermediate!9302 false index!1507 x!1245))))

(declare-fun b!997897 () Bool)

(assert (=> b!997897 (and (bvsge (index!39580 lt!441559) #b00000000000000000000000000000000) (bvslt (index!39580 lt!441559) (size!30873 a!3219)))))

(assert (=> b!997897 (= e!562835 (= (select (arr!30370 a!3219) (index!39580 lt!441559)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!119077 c!101157) b!997893))

(assert (= (and d!119077 (not c!101157)) b!997891))

(assert (= (and b!997891 c!101156) b!997896))

(assert (= (and b!997891 (not c!101156)) b!997895))

(assert (= (and d!119077 c!101155) b!997889))

(assert (= (and d!119077 (not c!101155)) b!997890))

(assert (= (and b!997890 res!667871) b!997892))

(assert (= (and b!997892 (not res!667872)) b!997894))

(assert (= (and b!997894 (not res!667870)) b!997897))

(declare-fun m!924651 () Bool)

(assert (=> d!119077 m!924651))

(assert (=> d!119077 m!924483))

(declare-fun m!924653 () Bool)

(assert (=> b!997897 m!924653))

(assert (=> b!997894 m!924653))

(assert (=> b!997892 m!924653))

(declare-fun m!924655 () Bool)

(assert (=> b!997895 m!924655))

(assert (=> b!997895 m!924655))

(assert (=> b!997895 m!924487))

(declare-fun m!924657 () Bool)

(assert (=> b!997895 m!924657))

(assert (=> b!997614 d!119077))

(declare-fun d!119087 () Bool)

(assert (=> d!119087 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86182 d!119087))

(declare-fun d!119099 () Bool)

(assert (=> d!119099 (= (array_inv!23360 a!3219) (bvsge (size!30873 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86182 d!119099))

(declare-fun d!119101 () Bool)

(assert (=> d!119101 (= (validKeyInArray!0 (select (arr!30370 a!3219) j!170)) (and (not (= (select (arr!30370 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30370 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!997611 d!119101))

(declare-fun b!997922 () Bool)

(declare-fun e!562856 () Bool)

(declare-fun lt!441563 () SeekEntryResult!9302)

(assert (=> b!997922 (= e!562856 (bvsge (x!87041 lt!441563) #b01111111111111111111111111111110))))

(declare-fun b!997923 () Bool)

(declare-fun e!562859 () Bool)

(assert (=> b!997923 (= e!562856 e!562859)))

(declare-fun res!667886 () Bool)

(assert (=> b!997923 (= res!667886 (and (is-Intermediate!9302 lt!441563) (not (undefined!10114 lt!441563)) (bvslt (x!87041 lt!441563) #b01111111111111111111111111111110) (bvsge (x!87041 lt!441563) #b00000000000000000000000000000000) (bvsge (x!87041 lt!441563) #b00000000000000000000000000000000)))))

(assert (=> b!997923 (=> (not res!667886) (not e!562859))))

(declare-fun b!997924 () Bool)

(declare-fun e!562855 () SeekEntryResult!9302)

(declare-fun e!562858 () SeekEntryResult!9302)

(assert (=> b!997924 (= e!562855 e!562858)))

(declare-fun lt!441564 () (_ BitVec 64))

(declare-fun c!101165 () Bool)

(assert (=> b!997924 (= c!101165 (or (= lt!441564 (select (arr!30370 a!3219) j!170)) (= (bvadd lt!441564 lt!441564) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!997925 () Bool)

(assert (=> b!997925 (and (bvsge (index!39580 lt!441563) #b00000000000000000000000000000000) (bvslt (index!39580 lt!441563) (size!30873 a!3219)))))

(declare-fun res!667887 () Bool)

(assert (=> b!997925 (= res!667887 (= (select (arr!30370 a!3219) (index!39580 lt!441563)) (select (arr!30370 a!3219) j!170)))))

(declare-fun e!562857 () Bool)

(assert (=> b!997925 (=> res!667887 e!562857)))

(assert (=> b!997925 (= e!562859 e!562857)))

(declare-fun d!119103 () Bool)

(assert (=> d!119103 e!562856))

(declare-fun c!101164 () Bool)

(assert (=> d!119103 (= c!101164 (and (is-Intermediate!9302 lt!441563) (undefined!10114 lt!441563)))))

(assert (=> d!119103 (= lt!441563 e!562855)))

(declare-fun c!101166 () Bool)

(assert (=> d!119103 (= c!101166 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119103 (= lt!441564 (select (arr!30370 a!3219) lt!441465))))

(assert (=> d!119103 (validMask!0 mask!3464)))

(assert (=> d!119103 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!441465 (select (arr!30370 a!3219) j!170) a!3219 mask!3464) lt!441563)))

(declare-fun b!997926 () Bool)

(assert (=> b!997926 (= e!562855 (Intermediate!9302 true lt!441465 #b00000000000000000000000000000000))))

(declare-fun b!997927 () Bool)

(assert (=> b!997927 (and (bvsge (index!39580 lt!441563) #b00000000000000000000000000000000) (bvslt (index!39580 lt!441563) (size!30873 a!3219)))))

(declare-fun res!667885 () Bool)

(assert (=> b!997927 (= res!667885 (= (select (arr!30370 a!3219) (index!39580 lt!441563)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!997927 (=> res!667885 e!562857)))

(declare-fun b!997928 () Bool)

(assert (=> b!997928 (= e!562858 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!441465 #b00000000000000000000000000000000 mask!3464) (select (arr!30370 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!997929 () Bool)

(assert (=> b!997929 (= e!562858 (Intermediate!9302 false lt!441465 #b00000000000000000000000000000000))))

(declare-fun b!997930 () Bool)

(assert (=> b!997930 (and (bvsge (index!39580 lt!441563) #b00000000000000000000000000000000) (bvslt (index!39580 lt!441563) (size!30873 a!3219)))))

(assert (=> b!997930 (= e!562857 (= (select (arr!30370 a!3219) (index!39580 lt!441563)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!119103 c!101166) b!997926))

(assert (= (and d!119103 (not c!101166)) b!997924))

(assert (= (and b!997924 c!101165) b!997929))

(assert (= (and b!997924 (not c!101165)) b!997928))

(assert (= (and d!119103 c!101164) b!997922))

(assert (= (and d!119103 (not c!101164)) b!997923))

(assert (= (and b!997923 res!667886) b!997925))

(assert (= (and b!997925 (not res!667887)) b!997927))

(assert (= (and b!997927 (not res!667885)) b!997930))

(declare-fun m!924675 () Bool)

(assert (=> d!119103 m!924675))

(assert (=> d!119103 m!924483))

(declare-fun m!924677 () Bool)

(assert (=> b!997930 m!924677))

(assert (=> b!997927 m!924677))

(assert (=> b!997925 m!924677))

(declare-fun m!924679 () Bool)

(assert (=> b!997928 m!924679))

(assert (=> b!997928 m!924679))

(assert (=> b!997928 m!924487))

(declare-fun m!924681 () Bool)

(assert (=> b!997928 m!924681))

(assert (=> b!997616 d!119103))

(declare-fun d!119105 () Bool)

(declare-fun lt!441576 () (_ BitVec 32))

(declare-fun lt!441575 () (_ BitVec 32))

(assert (=> d!119105 (= lt!441576 (bvmul (bvxor lt!441575 (bvlshr lt!441575 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119105 (= lt!441575 ((_ extract 31 0) (bvand (bvxor (select (arr!30370 a!3219) j!170) (bvlshr (select (arr!30370 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119105 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!667888 (let ((h!22341 ((_ extract 31 0) (bvand (bvxor (select (arr!30370 a!3219) j!170) (bvlshr (select (arr!30370 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87049 (bvmul (bvxor h!22341 (bvlshr h!22341 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87049 (bvlshr x!87049 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!667888 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!667888 #b00000000000000000000000000000000))))))

(assert (=> d!119105 (= (toIndex!0 (select (arr!30370 a!3219) j!170) mask!3464) (bvand (bvxor lt!441576 (bvlshr lt!441576 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!997616 d!119105))

(push 1)

