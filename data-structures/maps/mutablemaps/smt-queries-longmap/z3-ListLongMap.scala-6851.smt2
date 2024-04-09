; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86340 () Bool)

(assert start!86340)

(declare-fun b!998940 () Bool)

(declare-fun res!668742 () Bool)

(declare-fun e!563300 () Bool)

(assert (=> b!998940 (=> (not res!668742) (not e!563300))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998940 (= res!668742 (validKeyInArray!0 k0!2224))))

(declare-fun b!998941 () Bool)

(declare-fun res!668734 () Bool)

(declare-fun e!563298 () Bool)

(assert (=> b!998941 (=> (not res!668734) (not e!563298))))

(declare-datatypes ((array!63144 0))(
  ( (array!63145 (arr!30395 (Array (_ BitVec 32) (_ BitVec 64))) (size!30898 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63144)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998941 (= res!668734 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30898 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30898 a!3219))))))

(declare-fun b!998942 () Bool)

(declare-fun e!563299 () Bool)

(assert (=> b!998942 (= e!563298 e!563299)))

(declare-fun res!668733 () Bool)

(assert (=> b!998942 (=> (not res!668733) (not e!563299))))

(declare-fun j!170 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9327 0))(
  ( (MissingZero!9327 (index!39678 (_ BitVec 32))) (Found!9327 (index!39679 (_ BitVec 32))) (Intermediate!9327 (undefined!10139 Bool) (index!39680 (_ BitVec 32)) (x!87142 (_ BitVec 32))) (Undefined!9327) (MissingVacant!9327 (index!39681 (_ BitVec 32))) )
))
(declare-fun lt!441846 () SeekEntryResult!9327)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63144 (_ BitVec 32)) SeekEntryResult!9327)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998942 (= res!668733 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30395 a!3219) j!170) mask!3464) (select (arr!30395 a!3219) j!170) a!3219 mask!3464) lt!441846))))

(assert (=> b!998942 (= lt!441846 (Intermediate!9327 false resIndex!38 resX!38))))

(declare-fun b!998943 () Bool)

(declare-fun res!668739 () Bool)

(assert (=> b!998943 (=> (not res!668739) (not e!563300))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!998943 (= res!668739 (and (= (size!30898 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30898 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30898 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998944 () Bool)

(assert (=> b!998944 (= e!563300 e!563298)))

(declare-fun res!668738 () Bool)

(assert (=> b!998944 (=> (not res!668738) (not e!563298))))

(declare-fun lt!441844 () SeekEntryResult!9327)

(assert (=> b!998944 (= res!668738 (or (= lt!441844 (MissingVacant!9327 i!1194)) (= lt!441844 (MissingZero!9327 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63144 (_ BitVec 32)) SeekEntryResult!9327)

(assert (=> b!998944 (= lt!441844 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!998945 () Bool)

(declare-fun res!668736 () Bool)

(assert (=> b!998945 (=> (not res!668736) (not e!563300))))

(declare-fun arrayContainsKey!0 (array!63144 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998945 (= res!668736 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!998946 () Bool)

(declare-fun res!668741 () Bool)

(assert (=> b!998946 (=> (not res!668741) (not e!563299))))

(assert (=> b!998946 (= res!668741 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30395 a!3219) j!170) a!3219 mask!3464) lt!441846))))

(declare-fun b!998947 () Bool)

(declare-fun res!668737 () Bool)

(assert (=> b!998947 (=> (not res!668737) (not e!563298))))

(declare-datatypes ((List!21197 0))(
  ( (Nil!21194) (Cons!21193 (h!22367 (_ BitVec 64)) (t!30206 List!21197)) )
))
(declare-fun arrayNoDuplicates!0 (array!63144 (_ BitVec 32) List!21197) Bool)

(assert (=> b!998947 (= res!668737 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21194))))

(declare-fun b!998949 () Bool)

(declare-fun res!668740 () Bool)

(assert (=> b!998949 (=> (not res!668740) (not e!563300))))

(assert (=> b!998949 (= res!668740 (validKeyInArray!0 (select (arr!30395 a!3219) j!170)))))

(declare-fun b!998950 () Bool)

(declare-fun lt!441845 () (_ BitVec 32))

(assert (=> b!998950 (= e!563299 (and (bvsge mask!3464 #b00000000000000000000000000000000) (or (bvslt lt!441845 #b00000000000000000000000000000000) (bvsge lt!441845 (bvadd #b00000000000000000000000000000001 mask!3464)))))))

(assert (=> b!998950 (= lt!441845 (toIndex!0 (select (store (arr!30395 a!3219) i!1194 k0!2224) j!170) mask!3464))))

(declare-fun res!668743 () Bool)

(assert (=> start!86340 (=> (not res!668743) (not e!563300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86340 (= res!668743 (validMask!0 mask!3464))))

(assert (=> start!86340 e!563300))

(declare-fun array_inv!23385 (array!63144) Bool)

(assert (=> start!86340 (array_inv!23385 a!3219)))

(assert (=> start!86340 true))

(declare-fun b!998948 () Bool)

(declare-fun res!668735 () Bool)

(assert (=> b!998948 (=> (not res!668735) (not e!563298))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63144 (_ BitVec 32)) Bool)

(assert (=> b!998948 (= res!668735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(assert (= (and start!86340 res!668743) b!998943))

(assert (= (and b!998943 res!668739) b!998949))

(assert (= (and b!998949 res!668740) b!998940))

(assert (= (and b!998940 res!668742) b!998945))

(assert (= (and b!998945 res!668736) b!998944))

(assert (= (and b!998944 res!668738) b!998948))

(assert (= (and b!998948 res!668735) b!998947))

(assert (= (and b!998947 res!668737) b!998941))

(assert (= (and b!998941 res!668734) b!998942))

(assert (= (and b!998942 res!668733) b!998946))

(assert (= (and b!998946 res!668741) b!998950))

(declare-fun m!925425 () Bool)

(assert (=> b!998940 m!925425))

(declare-fun m!925427 () Bool)

(assert (=> b!998946 m!925427))

(assert (=> b!998946 m!925427))

(declare-fun m!925429 () Bool)

(assert (=> b!998946 m!925429))

(assert (=> b!998942 m!925427))

(assert (=> b!998942 m!925427))

(declare-fun m!925431 () Bool)

(assert (=> b!998942 m!925431))

(assert (=> b!998942 m!925431))

(assert (=> b!998942 m!925427))

(declare-fun m!925433 () Bool)

(assert (=> b!998942 m!925433))

(declare-fun m!925435 () Bool)

(assert (=> b!998947 m!925435))

(declare-fun m!925437 () Bool)

(assert (=> b!998945 m!925437))

(declare-fun m!925439 () Bool)

(assert (=> start!86340 m!925439))

(declare-fun m!925441 () Bool)

(assert (=> start!86340 m!925441))

(assert (=> b!998949 m!925427))

(assert (=> b!998949 m!925427))

(declare-fun m!925443 () Bool)

(assert (=> b!998949 m!925443))

(declare-fun m!925445 () Bool)

(assert (=> b!998948 m!925445))

(declare-fun m!925447 () Bool)

(assert (=> b!998944 m!925447))

(declare-fun m!925449 () Bool)

(assert (=> b!998950 m!925449))

(declare-fun m!925451 () Bool)

(assert (=> b!998950 m!925451))

(assert (=> b!998950 m!925451))

(declare-fun m!925453 () Bool)

(assert (=> b!998950 m!925453))

(check-sat (not b!998948) (not b!998940) (not b!998950) (not b!998942) (not start!86340) (not b!998945) (not b!998949) (not b!998946) (not b!998947) (not b!998944))
(check-sat)
(get-model)

(declare-fun d!119193 () Bool)

(assert (=> d!119193 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86340 d!119193))

(declare-fun d!119195 () Bool)

(assert (=> d!119195 (= (array_inv!23385 a!3219) (bvsge (size!30898 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86340 d!119195))

(declare-fun d!119197 () Bool)

(declare-fun res!668782 () Bool)

(declare-fun e!563320 () Bool)

(assert (=> d!119197 (=> res!668782 e!563320)))

(assert (=> d!119197 (= res!668782 (bvsge #b00000000000000000000000000000000 (size!30898 a!3219)))))

(assert (=> d!119197 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!563320)))

(declare-fun b!998992 () Bool)

(declare-fun e!563319 () Bool)

(assert (=> b!998992 (= e!563320 e!563319)))

(declare-fun c!101253 () Bool)

(assert (=> b!998992 (= c!101253 (validKeyInArray!0 (select (arr!30395 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42295 () Bool)

(declare-fun call!42298 () Bool)

(assert (=> bm!42295 (= call!42298 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!998993 () Bool)

(declare-fun e!563321 () Bool)

(assert (=> b!998993 (= e!563321 call!42298)))

(declare-fun b!998994 () Bool)

(assert (=> b!998994 (= e!563319 call!42298)))

(declare-fun b!998995 () Bool)

(assert (=> b!998995 (= e!563319 e!563321)))

(declare-fun lt!441864 () (_ BitVec 64))

(assert (=> b!998995 (= lt!441864 (select (arr!30395 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32936 0))(
  ( (Unit!32937) )
))
(declare-fun lt!441862 () Unit!32936)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63144 (_ BitVec 64) (_ BitVec 32)) Unit!32936)

(assert (=> b!998995 (= lt!441862 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!441864 #b00000000000000000000000000000000))))

(assert (=> b!998995 (arrayContainsKey!0 a!3219 lt!441864 #b00000000000000000000000000000000)))

(declare-fun lt!441863 () Unit!32936)

(assert (=> b!998995 (= lt!441863 lt!441862)))

(declare-fun res!668781 () Bool)

(assert (=> b!998995 (= res!668781 (= (seekEntryOrOpen!0 (select (arr!30395 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9327 #b00000000000000000000000000000000)))))

(assert (=> b!998995 (=> (not res!668781) (not e!563321))))

(assert (= (and d!119197 (not res!668782)) b!998992))

(assert (= (and b!998992 c!101253) b!998995))

(assert (= (and b!998992 (not c!101253)) b!998994))

(assert (= (and b!998995 res!668781) b!998993))

(assert (= (or b!998993 b!998994) bm!42295))

(declare-fun m!925485 () Bool)

(assert (=> b!998992 m!925485))

(assert (=> b!998992 m!925485))

(declare-fun m!925487 () Bool)

(assert (=> b!998992 m!925487))

(declare-fun m!925489 () Bool)

(assert (=> bm!42295 m!925489))

(assert (=> b!998995 m!925485))

(declare-fun m!925491 () Bool)

(assert (=> b!998995 m!925491))

(declare-fun m!925493 () Bool)

(assert (=> b!998995 m!925493))

(assert (=> b!998995 m!925485))

(declare-fun m!925495 () Bool)

(assert (=> b!998995 m!925495))

(assert (=> b!998948 d!119197))

(declare-fun d!119201 () Bool)

(assert (=> d!119201 (= (validKeyInArray!0 (select (arr!30395 a!3219) j!170)) (and (not (= (select (arr!30395 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30395 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!998949 d!119201))

(declare-fun bm!42301 () Bool)

(declare-fun call!42304 () Bool)

(declare-fun c!101259 () Bool)

(assert (=> bm!42301 (= call!42304 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101259 (Cons!21193 (select (arr!30395 a!3219) #b00000000000000000000000000000000) Nil!21194) Nil!21194)))))

(declare-fun d!119205 () Bool)

(declare-fun res!668799 () Bool)

(declare-fun e!563344 () Bool)

(assert (=> d!119205 (=> res!668799 e!563344)))

(assert (=> d!119205 (= res!668799 (bvsge #b00000000000000000000000000000000 (size!30898 a!3219)))))

(assert (=> d!119205 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21194) e!563344)))

(declare-fun b!999021 () Bool)

(declare-fun e!563343 () Bool)

(assert (=> b!999021 (= e!563344 e!563343)))

(declare-fun res!668798 () Bool)

(assert (=> b!999021 (=> (not res!668798) (not e!563343))))

(declare-fun e!563342 () Bool)

(assert (=> b!999021 (= res!668798 (not e!563342))))

(declare-fun res!668800 () Bool)

(assert (=> b!999021 (=> (not res!668800) (not e!563342))))

(assert (=> b!999021 (= res!668800 (validKeyInArray!0 (select (arr!30395 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!999022 () Bool)

(declare-fun contains!5885 (List!21197 (_ BitVec 64)) Bool)

(assert (=> b!999022 (= e!563342 (contains!5885 Nil!21194 (select (arr!30395 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!999023 () Bool)

(declare-fun e!563345 () Bool)

(assert (=> b!999023 (= e!563345 call!42304)))

(declare-fun b!999024 () Bool)

(assert (=> b!999024 (= e!563345 call!42304)))

(declare-fun b!999025 () Bool)

(assert (=> b!999025 (= e!563343 e!563345)))

(assert (=> b!999025 (= c!101259 (validKeyInArray!0 (select (arr!30395 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119205 (not res!668799)) b!999021))

(assert (= (and b!999021 res!668800) b!999022))

(assert (= (and b!999021 res!668798) b!999025))

(assert (= (and b!999025 c!101259) b!999024))

(assert (= (and b!999025 (not c!101259)) b!999023))

(assert (= (or b!999024 b!999023) bm!42301))

(assert (=> bm!42301 m!925485))

(declare-fun m!925505 () Bool)

(assert (=> bm!42301 m!925505))

(assert (=> b!999021 m!925485))

(assert (=> b!999021 m!925485))

(assert (=> b!999021 m!925487))

(assert (=> b!999022 m!925485))

(assert (=> b!999022 m!925485))

(declare-fun m!925507 () Bool)

(assert (=> b!999022 m!925507))

(assert (=> b!999025 m!925485))

(assert (=> b!999025 m!925485))

(assert (=> b!999025 m!925487))

(assert (=> b!998947 d!119205))

(declare-fun e!563375 () SeekEntryResult!9327)

(declare-fun b!999074 () Bool)

(assert (=> b!999074 (= e!563375 (Intermediate!9327 true (toIndex!0 (select (arr!30395 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!999075 () Bool)

(declare-fun lt!441891 () SeekEntryResult!9327)

(assert (=> b!999075 (and (bvsge (index!39680 lt!441891) #b00000000000000000000000000000000) (bvslt (index!39680 lt!441891) (size!30898 a!3219)))))

(declare-fun e!563373 () Bool)

(assert (=> b!999075 (= e!563373 (= (select (arr!30395 a!3219) (index!39680 lt!441891)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!999076 () Bool)

(declare-fun e!563371 () SeekEntryResult!9327)

(assert (=> b!999076 (= e!563375 e!563371)))

(declare-fun lt!441890 () (_ BitVec 64))

(declare-fun c!101283 () Bool)

(assert (=> b!999076 (= c!101283 (or (= lt!441890 (select (arr!30395 a!3219) j!170)) (= (bvadd lt!441890 lt!441890) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!999077 () Bool)

(declare-fun e!563369 () Bool)

(assert (=> b!999077 (= e!563369 (bvsge (x!87142 lt!441891) #b01111111111111111111111111111110))))

(declare-fun b!999078 () Bool)

(assert (=> b!999078 (and (bvsge (index!39680 lt!441891) #b00000000000000000000000000000000) (bvslt (index!39680 lt!441891) (size!30898 a!3219)))))

(declare-fun res!668809 () Bool)

(assert (=> b!999078 (= res!668809 (= (select (arr!30395 a!3219) (index!39680 lt!441891)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!999078 (=> res!668809 e!563373)))

(declare-fun b!999079 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999079 (= e!563371 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30395 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30395 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!999080 () Bool)

(declare-fun e!563374 () Bool)

(assert (=> b!999080 (= e!563369 e!563374)))

(declare-fun res!668808 () Bool)

(get-info :version)

(assert (=> b!999080 (= res!668808 (and ((_ is Intermediate!9327) lt!441891) (not (undefined!10139 lt!441891)) (bvslt (x!87142 lt!441891) #b01111111111111111111111111111110) (bvsge (x!87142 lt!441891) #b00000000000000000000000000000000) (bvsge (x!87142 lt!441891) #b00000000000000000000000000000000)))))

(assert (=> b!999080 (=> (not res!668808) (not e!563374))))

(declare-fun b!999081 () Bool)

(assert (=> b!999081 (= e!563371 (Intermediate!9327 false (toIndex!0 (select (arr!30395 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun d!119209 () Bool)

(assert (=> d!119209 e!563369))

(declare-fun c!101279 () Bool)

(assert (=> d!119209 (= c!101279 (and ((_ is Intermediate!9327) lt!441891) (undefined!10139 lt!441891)))))

(assert (=> d!119209 (= lt!441891 e!563375)))

(declare-fun c!101282 () Bool)

(assert (=> d!119209 (= c!101282 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119209 (= lt!441890 (select (arr!30395 a!3219) (toIndex!0 (select (arr!30395 a!3219) j!170) mask!3464)))))

(assert (=> d!119209 (validMask!0 mask!3464)))

(assert (=> d!119209 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30395 a!3219) j!170) mask!3464) (select (arr!30395 a!3219) j!170) a!3219 mask!3464) lt!441891)))

(declare-fun b!999082 () Bool)

(assert (=> b!999082 (and (bvsge (index!39680 lt!441891) #b00000000000000000000000000000000) (bvslt (index!39680 lt!441891) (size!30898 a!3219)))))

(declare-fun res!668810 () Bool)

(assert (=> b!999082 (= res!668810 (= (select (arr!30395 a!3219) (index!39680 lt!441891)) (select (arr!30395 a!3219) j!170)))))

(assert (=> b!999082 (=> res!668810 e!563373)))

(assert (=> b!999082 (= e!563374 e!563373)))

(assert (= (and d!119209 c!101282) b!999074))

(assert (= (and d!119209 (not c!101282)) b!999076))

(assert (= (and b!999076 c!101283) b!999081))

(assert (= (and b!999076 (not c!101283)) b!999079))

(assert (= (and d!119209 c!101279) b!999077))

(assert (= (and d!119209 (not c!101279)) b!999080))

(assert (= (and b!999080 res!668808) b!999082))

(assert (= (and b!999082 (not res!668810)) b!999078))

(assert (= (and b!999078 (not res!668809)) b!999075))

(declare-fun m!925523 () Bool)

(assert (=> b!999078 m!925523))

(assert (=> b!999079 m!925431))

(declare-fun m!925525 () Bool)

(assert (=> b!999079 m!925525))

(assert (=> b!999079 m!925525))

(assert (=> b!999079 m!925427))

(declare-fun m!925527 () Bool)

(assert (=> b!999079 m!925527))

(assert (=> b!999082 m!925523))

(assert (=> b!999075 m!925523))

(assert (=> d!119209 m!925431))

(declare-fun m!925529 () Bool)

(assert (=> d!119209 m!925529))

(assert (=> d!119209 m!925439))

(assert (=> b!998942 d!119209))

(declare-fun d!119215 () Bool)

(declare-fun lt!441904 () (_ BitVec 32))

(declare-fun lt!441903 () (_ BitVec 32))

(assert (=> d!119215 (= lt!441904 (bvmul (bvxor lt!441903 (bvlshr lt!441903 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119215 (= lt!441903 ((_ extract 31 0) (bvand (bvxor (select (arr!30395 a!3219) j!170) (bvlshr (select (arr!30395 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119215 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!668811 (let ((h!22370 ((_ extract 31 0) (bvand (bvxor (select (arr!30395 a!3219) j!170) (bvlshr (select (arr!30395 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87147 (bvmul (bvxor h!22370 (bvlshr h!22370 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87147 (bvlshr x!87147 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!668811 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!668811 #b00000000000000000000000000000000))))))

(assert (=> d!119215 (= (toIndex!0 (select (arr!30395 a!3219) j!170) mask!3464) (bvand (bvxor lt!441904 (bvlshr lt!441904 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!998942 d!119215))

(declare-fun d!119221 () Bool)

(assert (=> d!119221 (= (validKeyInArray!0 k0!2224) (and (not (= k0!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!998940 d!119221))

(declare-fun b!999107 () Bool)

(declare-fun e!563393 () SeekEntryResult!9327)

(assert (=> b!999107 (= e!563393 (Intermediate!9327 true index!1507 x!1245))))

(declare-fun b!999108 () Bool)

(declare-fun lt!441906 () SeekEntryResult!9327)

(assert (=> b!999108 (and (bvsge (index!39680 lt!441906) #b00000000000000000000000000000000) (bvslt (index!39680 lt!441906) (size!30898 a!3219)))))

(declare-fun e!563391 () Bool)

(assert (=> b!999108 (= e!563391 (= (select (arr!30395 a!3219) (index!39680 lt!441906)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!999109 () Bool)

(declare-fun e!563390 () SeekEntryResult!9327)

(assert (=> b!999109 (= e!563393 e!563390)))

(declare-fun lt!441905 () (_ BitVec 64))

(declare-fun c!101295 () Bool)

(assert (=> b!999109 (= c!101295 (or (= lt!441905 (select (arr!30395 a!3219) j!170)) (= (bvadd lt!441905 lt!441905) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!999110 () Bool)

(declare-fun e!563389 () Bool)

(assert (=> b!999110 (= e!563389 (bvsge (x!87142 lt!441906) #b01111111111111111111111111111110))))

(declare-fun b!999111 () Bool)

(assert (=> b!999111 (and (bvsge (index!39680 lt!441906) #b00000000000000000000000000000000) (bvslt (index!39680 lt!441906) (size!30898 a!3219)))))

(declare-fun res!668819 () Bool)

(assert (=> b!999111 (= res!668819 (= (select (arr!30395 a!3219) (index!39680 lt!441906)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!999111 (=> res!668819 e!563391)))

(declare-fun b!999112 () Bool)

(assert (=> b!999112 (= e!563390 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30395 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!999113 () Bool)

(declare-fun e!563392 () Bool)

(assert (=> b!999113 (= e!563389 e!563392)))

(declare-fun res!668818 () Bool)

(assert (=> b!999113 (= res!668818 (and ((_ is Intermediate!9327) lt!441906) (not (undefined!10139 lt!441906)) (bvslt (x!87142 lt!441906) #b01111111111111111111111111111110) (bvsge (x!87142 lt!441906) #b00000000000000000000000000000000) (bvsge (x!87142 lt!441906) x!1245)))))

(assert (=> b!999113 (=> (not res!668818) (not e!563392))))

(declare-fun b!999114 () Bool)

(assert (=> b!999114 (= e!563390 (Intermediate!9327 false index!1507 x!1245))))

(declare-fun d!119223 () Bool)

(assert (=> d!119223 e!563389))

(declare-fun c!101293 () Bool)

(assert (=> d!119223 (= c!101293 (and ((_ is Intermediate!9327) lt!441906) (undefined!10139 lt!441906)))))

(assert (=> d!119223 (= lt!441906 e!563393)))

(declare-fun c!101294 () Bool)

(assert (=> d!119223 (= c!101294 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119223 (= lt!441905 (select (arr!30395 a!3219) index!1507))))

(assert (=> d!119223 (validMask!0 mask!3464)))

(assert (=> d!119223 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30395 a!3219) j!170) a!3219 mask!3464) lt!441906)))

(declare-fun b!999115 () Bool)

(assert (=> b!999115 (and (bvsge (index!39680 lt!441906) #b00000000000000000000000000000000) (bvslt (index!39680 lt!441906) (size!30898 a!3219)))))

(declare-fun res!668820 () Bool)

(assert (=> b!999115 (= res!668820 (= (select (arr!30395 a!3219) (index!39680 lt!441906)) (select (arr!30395 a!3219) j!170)))))

(assert (=> b!999115 (=> res!668820 e!563391)))

(assert (=> b!999115 (= e!563392 e!563391)))

(assert (= (and d!119223 c!101294) b!999107))

(assert (= (and d!119223 (not c!101294)) b!999109))

(assert (= (and b!999109 c!101295) b!999114))

(assert (= (and b!999109 (not c!101295)) b!999112))

(assert (= (and d!119223 c!101293) b!999110))

(assert (= (and d!119223 (not c!101293)) b!999113))

(assert (= (and b!999113 res!668818) b!999115))

(assert (= (and b!999115 (not res!668820)) b!999111))

(assert (= (and b!999111 (not res!668819)) b!999108))

(declare-fun m!925545 () Bool)

(assert (=> b!999111 m!925545))

(declare-fun m!925547 () Bool)

(assert (=> b!999112 m!925547))

(assert (=> b!999112 m!925547))

(assert (=> b!999112 m!925427))

(declare-fun m!925549 () Bool)

(assert (=> b!999112 m!925549))

(assert (=> b!999115 m!925545))

(assert (=> b!999108 m!925545))

(declare-fun m!925551 () Bool)

(assert (=> d!119223 m!925551))

(assert (=> d!119223 m!925439))

(assert (=> b!998946 d!119223))

(declare-fun d!119225 () Bool)

(declare-fun lt!441931 () SeekEntryResult!9327)

(assert (=> d!119225 (and (or ((_ is Undefined!9327) lt!441931) (not ((_ is Found!9327) lt!441931)) (and (bvsge (index!39679 lt!441931) #b00000000000000000000000000000000) (bvslt (index!39679 lt!441931) (size!30898 a!3219)))) (or ((_ is Undefined!9327) lt!441931) ((_ is Found!9327) lt!441931) (not ((_ is MissingZero!9327) lt!441931)) (and (bvsge (index!39678 lt!441931) #b00000000000000000000000000000000) (bvslt (index!39678 lt!441931) (size!30898 a!3219)))) (or ((_ is Undefined!9327) lt!441931) ((_ is Found!9327) lt!441931) ((_ is MissingZero!9327) lt!441931) (not ((_ is MissingVacant!9327) lt!441931)) (and (bvsge (index!39681 lt!441931) #b00000000000000000000000000000000) (bvslt (index!39681 lt!441931) (size!30898 a!3219)))) (or ((_ is Undefined!9327) lt!441931) (ite ((_ is Found!9327) lt!441931) (= (select (arr!30395 a!3219) (index!39679 lt!441931)) k0!2224) (ite ((_ is MissingZero!9327) lt!441931) (= (select (arr!30395 a!3219) (index!39678 lt!441931)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9327) lt!441931) (= (select (arr!30395 a!3219) (index!39681 lt!441931)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!563432 () SeekEntryResult!9327)

(assert (=> d!119225 (= lt!441931 e!563432)))

(declare-fun c!101312 () Bool)

(declare-fun lt!441930 () SeekEntryResult!9327)

(assert (=> d!119225 (= c!101312 (and ((_ is Intermediate!9327) lt!441930) (undefined!10139 lt!441930)))))

(assert (=> d!119225 (= lt!441930 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2224 mask!3464) k0!2224 a!3219 mask!3464))))

(assert (=> d!119225 (validMask!0 mask!3464)))

(assert (=> d!119225 (= (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464) lt!441931)))

(declare-fun b!999170 () Bool)

(declare-fun e!563434 () SeekEntryResult!9327)

(assert (=> b!999170 (= e!563434 (Found!9327 (index!39680 lt!441930)))))

(declare-fun b!999171 () Bool)

(declare-fun c!101313 () Bool)

(declare-fun lt!441932 () (_ BitVec 64))

(assert (=> b!999171 (= c!101313 (= lt!441932 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!563433 () SeekEntryResult!9327)

(assert (=> b!999171 (= e!563434 e!563433)))

(declare-fun b!999172 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63144 (_ BitVec 32)) SeekEntryResult!9327)

(assert (=> b!999172 (= e!563433 (seekKeyOrZeroReturnVacant!0 (x!87142 lt!441930) (index!39680 lt!441930) (index!39680 lt!441930) k0!2224 a!3219 mask!3464))))

(declare-fun b!999173 () Bool)

(assert (=> b!999173 (= e!563433 (MissingZero!9327 (index!39680 lt!441930)))))

(declare-fun b!999174 () Bool)

(assert (=> b!999174 (= e!563432 e!563434)))

(assert (=> b!999174 (= lt!441932 (select (arr!30395 a!3219) (index!39680 lt!441930)))))

(declare-fun c!101311 () Bool)

(assert (=> b!999174 (= c!101311 (= lt!441932 k0!2224))))

(declare-fun b!999175 () Bool)

(assert (=> b!999175 (= e!563432 Undefined!9327)))

(assert (= (and d!119225 c!101312) b!999175))

(assert (= (and d!119225 (not c!101312)) b!999174))

(assert (= (and b!999174 c!101311) b!999170))

(assert (= (and b!999174 (not c!101311)) b!999171))

(assert (= (and b!999171 c!101313) b!999173))

(assert (= (and b!999171 (not c!101313)) b!999172))

(declare-fun m!925579 () Bool)

(assert (=> d!119225 m!925579))

(declare-fun m!925581 () Bool)

(assert (=> d!119225 m!925581))

(declare-fun m!925583 () Bool)

(assert (=> d!119225 m!925583))

(assert (=> d!119225 m!925579))

(assert (=> d!119225 m!925439))

(declare-fun m!925585 () Bool)

(assert (=> d!119225 m!925585))

(declare-fun m!925587 () Bool)

(assert (=> d!119225 m!925587))

(declare-fun m!925589 () Bool)

(assert (=> b!999172 m!925589))

(declare-fun m!925591 () Bool)

(assert (=> b!999174 m!925591))

(assert (=> b!998944 d!119225))

(declare-fun d!119245 () Bool)

(declare-fun lt!441934 () (_ BitVec 32))

(declare-fun lt!441933 () (_ BitVec 32))

(assert (=> d!119245 (= lt!441934 (bvmul (bvxor lt!441933 (bvlshr lt!441933 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119245 (= lt!441933 ((_ extract 31 0) (bvand (bvxor (select (store (arr!30395 a!3219) i!1194 k0!2224) j!170) (bvlshr (select (store (arr!30395 a!3219) i!1194 k0!2224) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119245 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!668811 (let ((h!22370 ((_ extract 31 0) (bvand (bvxor (select (store (arr!30395 a!3219) i!1194 k0!2224) j!170) (bvlshr (select (store (arr!30395 a!3219) i!1194 k0!2224) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87147 (bvmul (bvxor h!22370 (bvlshr h!22370 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87147 (bvlshr x!87147 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!668811 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!668811 #b00000000000000000000000000000000))))))

(assert (=> d!119245 (= (toIndex!0 (select (store (arr!30395 a!3219) i!1194 k0!2224) j!170) mask!3464) (bvand (bvxor lt!441934 (bvlshr lt!441934 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!998950 d!119245))

(declare-fun d!119247 () Bool)

(declare-fun res!668856 () Bool)

(declare-fun e!563445 () Bool)

(assert (=> d!119247 (=> res!668856 e!563445)))

(assert (=> d!119247 (= res!668856 (= (select (arr!30395 a!3219) #b00000000000000000000000000000000) k0!2224))))

(assert (=> d!119247 (= (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000) e!563445)))

(declare-fun b!999186 () Bool)

(declare-fun e!563446 () Bool)

(assert (=> b!999186 (= e!563445 e!563446)))

(declare-fun res!668857 () Bool)

(assert (=> b!999186 (=> (not res!668857) (not e!563446))))

(assert (=> b!999186 (= res!668857 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30898 a!3219)))))

(declare-fun b!999187 () Bool)

(assert (=> b!999187 (= e!563446 (arrayContainsKey!0 a!3219 k0!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119247 (not res!668856)) b!999186))

(assert (= (and b!999186 res!668857) b!999187))

(assert (=> d!119247 m!925485))

(declare-fun m!925595 () Bool)

(assert (=> b!999187 m!925595))

(assert (=> b!998945 d!119247))

(check-sat (not b!998995) (not b!999187) (not b!999079) (not b!999112) (not d!119225) (not bm!42295) (not d!119223) (not b!999172) (not b!999025) (not b!999021) (not d!119209) (not bm!42301) (not b!999022) (not b!998992))
(check-sat)
