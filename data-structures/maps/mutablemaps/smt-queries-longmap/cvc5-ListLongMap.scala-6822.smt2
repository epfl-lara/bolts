; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85824 () Bool)

(assert start!85824)

(declare-fun b!994980 () Bool)

(declare-fun res!665578 () Bool)

(declare-fun e!561487 () Bool)

(assert (=> b!994980 (=> (not res!665578) (not e!561487))))

(declare-datatypes ((array!62948 0))(
  ( (array!62949 (arr!30307 (Array (_ BitVec 32) (_ BitVec 64))) (size!30810 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62948)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994980 (= res!665578 (and (= (size!30810 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30810 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30810 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994981 () Bool)

(declare-fun e!561486 () Bool)

(declare-datatypes ((List!21109 0))(
  ( (Nil!21106) (Cons!21105 (h!22267 (_ BitVec 64)) (t!30118 List!21109)) )
))
(declare-fun noDuplicate!1463 (List!21109) Bool)

(assert (=> b!994981 (= e!561486 (not (noDuplicate!1463 Nil!21106)))))

(declare-fun b!994982 () Bool)

(declare-fun res!665573 () Bool)

(assert (=> b!994982 (=> (not res!665573) (not e!561486))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62948 (_ BitVec 32)) Bool)

(assert (=> b!994982 (= res!665573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!994983 () Bool)

(declare-fun res!665574 () Bool)

(assert (=> b!994983 (=> (not res!665574) (not e!561487))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994983 (= res!665574 (validKeyInArray!0 k!2224))))

(declare-fun b!994985 () Bool)

(declare-fun res!665575 () Bool)

(assert (=> b!994985 (=> (not res!665575) (not e!561487))))

(declare-fun arrayContainsKey!0 (array!62948 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994985 (= res!665575 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994984 () Bool)

(assert (=> b!994984 (= e!561487 e!561486)))

(declare-fun res!665571 () Bool)

(assert (=> b!994984 (=> (not res!665571) (not e!561486))))

(declare-datatypes ((SeekEntryResult!9239 0))(
  ( (MissingZero!9239 (index!39326 (_ BitVec 32))) (Found!9239 (index!39327 (_ BitVec 32))) (Intermediate!9239 (undefined!10051 Bool) (index!39328 (_ BitVec 32)) (x!86801 (_ BitVec 32))) (Undefined!9239) (MissingVacant!9239 (index!39329 (_ BitVec 32))) )
))
(declare-fun lt!440802 () SeekEntryResult!9239)

(assert (=> b!994984 (= res!665571 (or (= lt!440802 (MissingVacant!9239 i!1194)) (= lt!440802 (MissingZero!9239 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62948 (_ BitVec 32)) SeekEntryResult!9239)

(assert (=> b!994984 (= lt!440802 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!665577 () Bool)

(assert (=> start!85824 (=> (not res!665577) (not e!561487))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85824 (= res!665577 (validMask!0 mask!3464))))

(assert (=> start!85824 e!561487))

(declare-fun array_inv!23297 (array!62948) Bool)

(assert (=> start!85824 (array_inv!23297 a!3219)))

(assert (=> start!85824 true))

(declare-fun b!994986 () Bool)

(declare-fun res!665572 () Bool)

(assert (=> b!994986 (=> (not res!665572) (not e!561487))))

(assert (=> b!994986 (= res!665572 (validKeyInArray!0 (select (arr!30307 a!3219) j!170)))))

(declare-fun b!994987 () Bool)

(declare-fun res!665576 () Bool)

(assert (=> b!994987 (=> (not res!665576) (not e!561486))))

(assert (=> b!994987 (= res!665576 (and (bvsle #b00000000000000000000000000000000 (size!30810 a!3219)) (bvslt (size!30810 a!3219) #b01111111111111111111111111111111)))))

(assert (= (and start!85824 res!665577) b!994980))

(assert (= (and b!994980 res!665578) b!994986))

(assert (= (and b!994986 res!665572) b!994983))

(assert (= (and b!994983 res!665574) b!994985))

(assert (= (and b!994985 res!665575) b!994984))

(assert (= (and b!994984 res!665571) b!994982))

(assert (= (and b!994982 res!665573) b!994987))

(assert (= (and b!994987 res!665576) b!994981))

(declare-fun m!922583 () Bool)

(assert (=> b!994982 m!922583))

(declare-fun m!922585 () Bool)

(assert (=> b!994984 m!922585))

(declare-fun m!922587 () Bool)

(assert (=> b!994986 m!922587))

(assert (=> b!994986 m!922587))

(declare-fun m!922589 () Bool)

(assert (=> b!994986 m!922589))

(declare-fun m!922591 () Bool)

(assert (=> b!994983 m!922591))

(declare-fun m!922593 () Bool)

(assert (=> b!994981 m!922593))

(declare-fun m!922595 () Bool)

(assert (=> b!994985 m!922595))

(declare-fun m!922597 () Bool)

(assert (=> start!85824 m!922597))

(declare-fun m!922599 () Bool)

(assert (=> start!85824 m!922599))

(push 1)

(assert (not b!994982))

(assert (not b!994985))

(assert (not b!994986))

(assert (not start!85824))

(assert (not b!994981))

(assert (not b!994983))

(assert (not b!994984))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118737 () Bool)

(assert (=> d!118737 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!994983 d!118737))

(declare-fun b!995072 () Bool)

(declare-fun c!100861 () Bool)

(declare-fun lt!440826 () (_ BitVec 64))

(assert (=> b!995072 (= c!100861 (= lt!440826 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!561529 () SeekEntryResult!9239)

(declare-fun e!561528 () SeekEntryResult!9239)

(assert (=> b!995072 (= e!561529 e!561528)))

(declare-fun b!995073 () Bool)

(declare-fun lt!440825 () SeekEntryResult!9239)

(assert (=> b!995073 (= e!561528 (MissingZero!9239 (index!39328 lt!440825)))))

(declare-fun b!995074 () Bool)

(declare-fun e!561530 () SeekEntryResult!9239)

(assert (=> b!995074 (= e!561530 e!561529)))

(assert (=> b!995074 (= lt!440826 (select (arr!30307 a!3219) (index!39328 lt!440825)))))

(declare-fun c!100862 () Bool)

(assert (=> b!995074 (= c!100862 (= lt!440826 k!2224))))

(declare-fun b!995075 () Bool)

(assert (=> b!995075 (= e!561529 (Found!9239 (index!39328 lt!440825)))))

(declare-fun b!995076 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62948 (_ BitVec 32)) SeekEntryResult!9239)

(assert (=> b!995076 (= e!561528 (seekKeyOrZeroReturnVacant!0 (x!86801 lt!440825) (index!39328 lt!440825) (index!39328 lt!440825) k!2224 a!3219 mask!3464))))

(declare-fun d!118739 () Bool)

(declare-fun lt!440824 () SeekEntryResult!9239)

(assert (=> d!118739 (and (or (is-Undefined!9239 lt!440824) (not (is-Found!9239 lt!440824)) (and (bvsge (index!39327 lt!440824) #b00000000000000000000000000000000) (bvslt (index!39327 lt!440824) (size!30810 a!3219)))) (or (is-Undefined!9239 lt!440824) (is-Found!9239 lt!440824) (not (is-MissingZero!9239 lt!440824)) (and (bvsge (index!39326 lt!440824) #b00000000000000000000000000000000) (bvslt (index!39326 lt!440824) (size!30810 a!3219)))) (or (is-Undefined!9239 lt!440824) (is-Found!9239 lt!440824) (is-MissingZero!9239 lt!440824) (not (is-MissingVacant!9239 lt!440824)) (and (bvsge (index!39329 lt!440824) #b00000000000000000000000000000000) (bvslt (index!39329 lt!440824) (size!30810 a!3219)))) (or (is-Undefined!9239 lt!440824) (ite (is-Found!9239 lt!440824) (= (select (arr!30307 a!3219) (index!39327 lt!440824)) k!2224) (ite (is-MissingZero!9239 lt!440824) (= (select (arr!30307 a!3219) (index!39326 lt!440824)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9239 lt!440824) (= (select (arr!30307 a!3219) (index!39329 lt!440824)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!118739 (= lt!440824 e!561530)))

(declare-fun c!100863 () Bool)

(assert (=> d!118739 (= c!100863 (and (is-Intermediate!9239 lt!440825) (undefined!10051 lt!440825)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!62948 (_ BitVec 32)) SeekEntryResult!9239)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!118739 (= lt!440825 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!118739 (validMask!0 mask!3464)))

(assert (=> d!118739 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!440824)))

(declare-fun b!995077 () Bool)

(assert (=> b!995077 (= e!561530 Undefined!9239)))

(assert (= (and d!118739 c!100863) b!995077))

(assert (= (and d!118739 (not c!100863)) b!995074))

(assert (= (and b!995074 c!100862) b!995075))

(assert (= (and b!995074 (not c!100862)) b!995072))

(assert (= (and b!995072 c!100861) b!995073))

(assert (= (and b!995072 (not c!100861)) b!995076))

(declare-fun m!922655 () Bool)

(assert (=> b!995074 m!922655))

(declare-fun m!922657 () Bool)

(assert (=> b!995076 m!922657))

(declare-fun m!922659 () Bool)

(assert (=> d!118739 m!922659))

(declare-fun m!922661 () Bool)

(assert (=> d!118739 m!922661))

(declare-fun m!922663 () Bool)

(assert (=> d!118739 m!922663))

(assert (=> d!118739 m!922597))

(declare-fun m!922665 () Bool)

(assert (=> d!118739 m!922665))

(assert (=> d!118739 m!922661))

(declare-fun m!922667 () Bool)

(assert (=> d!118739 m!922667))

(assert (=> b!994984 d!118739))

(declare-fun d!118753 () Bool)

(declare-fun res!665641 () Bool)

(declare-fun e!561541 () Bool)

(assert (=> d!118753 (=> res!665641 e!561541)))

(assert (=> d!118753 (= res!665641 (= (select (arr!30307 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!118753 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!561541)))

(declare-fun b!995090 () Bool)

(declare-fun e!561542 () Bool)

(assert (=> b!995090 (= e!561541 e!561542)))

(declare-fun res!665642 () Bool)

(assert (=> b!995090 (=> (not res!665642) (not e!561542))))

(assert (=> b!995090 (= res!665642 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30810 a!3219)))))

(declare-fun b!995091 () Bool)

(assert (=> b!995091 (= e!561542 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!118753 (not res!665641)) b!995090))

(assert (= (and b!995090 res!665642) b!995091))

(declare-fun m!922669 () Bool)

(assert (=> d!118753 m!922669))

(declare-fun m!922671 () Bool)

(assert (=> b!995091 m!922671))

(assert (=> b!994985 d!118753))

(declare-fun d!118755 () Bool)

(assert (=> d!118755 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!85824 d!118755))

(declare-fun d!118761 () Bool)

(assert (=> d!118761 (= (array_inv!23297 a!3219) (bvsge (size!30810 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!85824 d!118761))

(declare-fun d!118763 () Bool)

(assert (=> d!118763 (= (validKeyInArray!0 (select (arr!30307 a!3219) j!170)) (and (not (= (select (arr!30307 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30307 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!994986 d!118763))

(declare-fun d!118765 () Bool)

(declare-fun res!665657 () Bool)

(declare-fun e!561567 () Bool)

(assert (=> d!118765 (=> res!665657 e!561567)))

(assert (=> d!118765 (= res!665657 (is-Nil!21106 Nil!21106))))

(assert (=> d!118765 (= (noDuplicate!1463 Nil!21106) e!561567)))

(declare-fun b!995126 () Bool)

(declare-fun e!561570 () Bool)

(assert (=> b!995126 (= e!561567 e!561570)))

(declare-fun res!665659 () Bool)

(assert (=> b!995126 (=> (not res!665659) (not e!561570))))

(declare-fun contains!5868 (List!21109 (_ BitVec 64)) Bool)

(assert (=> b!995126 (= res!665659 (not (contains!5868 (t!30118 Nil!21106) (h!22267 Nil!21106))))))

(declare-fun b!995127 () Bool)

(assert (=> b!995127 (= e!561570 (noDuplicate!1463 (t!30118 Nil!21106)))))

(assert (= (and d!118765 (not res!665657)) b!995126))

(assert (= (and b!995126 res!665659) b!995127))

(declare-fun m!922703 () Bool)

(assert (=> b!995126 m!922703))

(declare-fun m!922705 () Bool)

(assert (=> b!995127 m!922705))

(assert (=> b!994981 d!118765))

(declare-fun b!995155 () Bool)

(declare-fun e!561592 () Bool)

(declare-fun call!42195 () Bool)

(assert (=> b!995155 (= e!561592 call!42195)))

(declare-fun bm!42192 () Bool)

(assert (=> bm!42192 (= call!42195 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun d!118769 () Bool)

(declare-fun res!665678 () Bool)

(declare-fun e!561591 () Bool)

(assert (=> d!118769 (=> res!665678 e!561591)))

(assert (=> d!118769 (= res!665678 (bvsge #b00000000000000000000000000000000 (size!30810 a!3219)))))

(assert (=> d!118769 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!561591)))

(declare-fun b!995154 () Bool)

(declare-fun e!561593 () Bool)

(assert (=> b!995154 (= e!561591 e!561593)))

(declare-fun c!100880 () Bool)

(assert (=> b!995154 (= c!100880 (validKeyInArray!0 (select (arr!30307 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!995156 () Bool)

(assert (=> b!995156 (= e!561593 e!561592)))

(declare-fun lt!440859 () (_ BitVec 64))

(assert (=> b!995156 (= lt!440859 (select (arr!30307 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32908 0))(
  ( (Unit!32909) )
))
(declare-fun lt!440857 () Unit!32908)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62948 (_ BitVec 64) (_ BitVec 32)) Unit!32908)

(assert (=> b!995156 (= lt!440857 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!440859 #b00000000000000000000000000000000))))

(assert (=> b!995156 (arrayContainsKey!0 a!3219 lt!440859 #b00000000000000000000000000000000)))

(declare-fun lt!440858 () Unit!32908)

(assert (=> b!995156 (= lt!440858 lt!440857)))

(declare-fun res!665677 () Bool)

(assert (=> b!995156 (= res!665677 (= (seekEntryOrOpen!0 (select (arr!30307 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9239 #b00000000000000000000000000000000)))))

(assert (=> b!995156 (=> (not res!665677) (not e!561592))))

(declare-fun b!995157 () Bool)

(assert (=> b!995157 (= e!561593 call!42195)))

