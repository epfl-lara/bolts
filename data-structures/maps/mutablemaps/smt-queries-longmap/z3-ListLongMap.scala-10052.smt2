; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118458 () Bool)

(assert start!118458)

(declare-fun b!1385097 () Bool)

(declare-fun e!784829 () Bool)

(declare-datatypes ((array!94679 0))(
  ( (array!94680 (arr!45713 (Array (_ BitVec 32) (_ BitVec 64))) (size!46264 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94679)

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1385097 (= e!784829 (or (= (select (arr!45713 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!45713 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1385098 () Bool)

(declare-fun res!926494 () Bool)

(assert (=> b!1385098 (=> (not res!926494) (not e!784829))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385098 (= res!926494 (validKeyInArray!0 (select (arr!45713 a!2938) i!1065)))))

(declare-fun b!1385099 () Bool)

(declare-fun res!926493 () Bool)

(assert (=> b!1385099 (=> (not res!926493) (not e!784829))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1385099 (= res!926493 (and (= (size!46264 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46264 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46264 a!2938))))))

(declare-fun b!1385100 () Bool)

(declare-fun res!926496 () Bool)

(assert (=> b!1385100 (=> (not res!926496) (not e!784829))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94679 (_ BitVec 32)) Bool)

(assert (=> b!1385100 (= res!926496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!926492 () Bool)

(assert (=> start!118458 (=> (not res!926492) (not e!784829))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118458 (= res!926492 (validMask!0 mask!2987))))

(assert (=> start!118458 e!784829))

(assert (=> start!118458 true))

(declare-fun array_inv!34658 (array!94679) Bool)

(assert (=> start!118458 (array_inv!34658 a!2938)))

(declare-fun b!1385101 () Bool)

(declare-fun res!926495 () Bool)

(assert (=> b!1385101 (=> (not res!926495) (not e!784829))))

(declare-datatypes ((List!32421 0))(
  ( (Nil!32418) (Cons!32417 (h!33626 (_ BitVec 64)) (t!47122 List!32421)) )
))
(declare-fun arrayNoDuplicates!0 (array!94679 (_ BitVec 32) List!32421) Bool)

(assert (=> b!1385101 (= res!926495 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32418))))

(assert (= (and start!118458 res!926492) b!1385099))

(assert (= (and b!1385099 res!926493) b!1385098))

(assert (= (and b!1385098 res!926494) b!1385101))

(assert (= (and b!1385101 res!926495) b!1385100))

(assert (= (and b!1385100 res!926496) b!1385097))

(declare-fun m!1270493 () Bool)

(assert (=> b!1385097 m!1270493))

(declare-fun m!1270495 () Bool)

(assert (=> b!1385101 m!1270495))

(declare-fun m!1270497 () Bool)

(assert (=> start!118458 m!1270497))

(declare-fun m!1270499 () Bool)

(assert (=> start!118458 m!1270499))

(assert (=> b!1385098 m!1270493))

(assert (=> b!1385098 m!1270493))

(declare-fun m!1270501 () Bool)

(assert (=> b!1385098 m!1270501))

(declare-fun m!1270503 () Bool)

(assert (=> b!1385100 m!1270503))

(check-sat (not b!1385100) (not b!1385098) (not start!118458) (not b!1385101))
(check-sat)
(get-model)

(declare-fun b!1385125 () Bool)

(declare-fun e!784843 () Bool)

(declare-fun call!66537 () Bool)

(assert (=> b!1385125 (= e!784843 call!66537)))

(declare-fun b!1385126 () Bool)

(declare-fun e!784842 () Bool)

(assert (=> b!1385126 (= e!784842 call!66537)))

(declare-fun d!149287 () Bool)

(declare-fun res!926516 () Bool)

(declare-fun e!784844 () Bool)

(assert (=> d!149287 (=> res!926516 e!784844)))

(assert (=> d!149287 (= res!926516 (bvsge #b00000000000000000000000000000000 (size!46264 a!2938)))))

(assert (=> d!149287 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987) e!784844)))

(declare-fun b!1385127 () Bool)

(assert (=> b!1385127 (= e!784842 e!784843)))

(declare-fun lt!609134 () (_ BitVec 64))

(assert (=> b!1385127 (= lt!609134 (select (arr!45713 a!2938) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!46194 0))(
  ( (Unit!46195) )
))
(declare-fun lt!609136 () Unit!46194)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94679 (_ BitVec 64) (_ BitVec 32)) Unit!46194)

(assert (=> b!1385127 (= lt!609136 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2938 lt!609134 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!94679 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1385127 (arrayContainsKey!0 a!2938 lt!609134 #b00000000000000000000000000000000)))

(declare-fun lt!609135 () Unit!46194)

(assert (=> b!1385127 (= lt!609135 lt!609136)))

(declare-fun res!926517 () Bool)

(declare-datatypes ((SeekEntryResult!10126 0))(
  ( (MissingZero!10126 (index!42874 (_ BitVec 32))) (Found!10126 (index!42875 (_ BitVec 32))) (Intermediate!10126 (undefined!10938 Bool) (index!42876 (_ BitVec 32)) (x!124378 (_ BitVec 32))) (Undefined!10126) (MissingVacant!10126 (index!42877 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94679 (_ BitVec 32)) SeekEntryResult!10126)

(assert (=> b!1385127 (= res!926517 (= (seekEntryOrOpen!0 (select (arr!45713 a!2938) #b00000000000000000000000000000000) a!2938 mask!2987) (Found!10126 #b00000000000000000000000000000000)))))

(assert (=> b!1385127 (=> (not res!926517) (not e!784843))))

(declare-fun bm!66534 () Bool)

(assert (=> bm!66534 (= call!66537 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2938 mask!2987))))

(declare-fun b!1385128 () Bool)

(assert (=> b!1385128 (= e!784844 e!784842)))

(declare-fun c!128747 () Bool)

(assert (=> b!1385128 (= c!128747 (validKeyInArray!0 (select (arr!45713 a!2938) #b00000000000000000000000000000000)))))

(assert (= (and d!149287 (not res!926516)) b!1385128))

(assert (= (and b!1385128 c!128747) b!1385127))

(assert (= (and b!1385128 (not c!128747)) b!1385126))

(assert (= (and b!1385127 res!926517) b!1385125))

(assert (= (or b!1385125 b!1385126) bm!66534))

(declare-fun m!1270517 () Bool)

(assert (=> b!1385127 m!1270517))

(declare-fun m!1270519 () Bool)

(assert (=> b!1385127 m!1270519))

(declare-fun m!1270521 () Bool)

(assert (=> b!1385127 m!1270521))

(assert (=> b!1385127 m!1270517))

(declare-fun m!1270523 () Bool)

(assert (=> b!1385127 m!1270523))

(declare-fun m!1270525 () Bool)

(assert (=> bm!66534 m!1270525))

(assert (=> b!1385128 m!1270517))

(assert (=> b!1385128 m!1270517))

(declare-fun m!1270527 () Bool)

(assert (=> b!1385128 m!1270527))

(assert (=> b!1385100 d!149287))

(declare-fun d!149291 () Bool)

(assert (=> d!149291 (= (validKeyInArray!0 (select (arr!45713 a!2938) i!1065)) (and (not (= (select (arr!45713 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45713 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1385098 d!149291))

(declare-fun d!149293 () Bool)

(assert (=> d!149293 (= (validMask!0 mask!2987) (and (or (= mask!2987 #b00000000000000000000000000000111) (= mask!2987 #b00000000000000000000000000001111) (= mask!2987 #b00000000000000000000000000011111) (= mask!2987 #b00000000000000000000000000111111) (= mask!2987 #b00000000000000000000000001111111) (= mask!2987 #b00000000000000000000000011111111) (= mask!2987 #b00000000000000000000000111111111) (= mask!2987 #b00000000000000000000001111111111) (= mask!2987 #b00000000000000000000011111111111) (= mask!2987 #b00000000000000000000111111111111) (= mask!2987 #b00000000000000000001111111111111) (= mask!2987 #b00000000000000000011111111111111) (= mask!2987 #b00000000000000000111111111111111) (= mask!2987 #b00000000000000001111111111111111) (= mask!2987 #b00000000000000011111111111111111) (= mask!2987 #b00000000000000111111111111111111) (= mask!2987 #b00000000000001111111111111111111) (= mask!2987 #b00000000000011111111111111111111) (= mask!2987 #b00000000000111111111111111111111) (= mask!2987 #b00000000001111111111111111111111) (= mask!2987 #b00000000011111111111111111111111) (= mask!2987 #b00000000111111111111111111111111) (= mask!2987 #b00000001111111111111111111111111) (= mask!2987 #b00000011111111111111111111111111) (= mask!2987 #b00000111111111111111111111111111) (= mask!2987 #b00001111111111111111111111111111) (= mask!2987 #b00011111111111111111111111111111) (= mask!2987 #b00111111111111111111111111111111)) (bvsle mask!2987 #b00111111111111111111111111111111)))))

(assert (=> start!118458 d!149293))

(declare-fun d!149305 () Bool)

(assert (=> d!149305 (= (array_inv!34658 a!2938) (bvsge (size!46264 a!2938) #b00000000000000000000000000000000))))

(assert (=> start!118458 d!149305))

(declare-fun bm!66546 () Bool)

(declare-fun call!66549 () Bool)

(declare-fun c!128759 () Bool)

(assert (=> bm!66546 (= call!66549 (arrayNoDuplicates!0 a!2938 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!128759 (Cons!32417 (select (arr!45713 a!2938) #b00000000000000000000000000000000) Nil!32418) Nil!32418)))))

(declare-fun b!1385181 () Bool)

(declare-fun e!784889 () Bool)

(assert (=> b!1385181 (= e!784889 call!66549)))

(declare-fun b!1385182 () Bool)

(assert (=> b!1385182 (= e!784889 call!66549)))

(declare-fun b!1385183 () Bool)

(declare-fun e!784888 () Bool)

(assert (=> b!1385183 (= e!784888 e!784889)))

(assert (=> b!1385183 (= c!128759 (validKeyInArray!0 (select (arr!45713 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1385184 () Bool)

(declare-fun e!784886 () Bool)

(declare-fun contains!9754 (List!32421 (_ BitVec 64)) Bool)

(assert (=> b!1385184 (= e!784886 (contains!9754 Nil!32418 (select (arr!45713 a!2938) #b00000000000000000000000000000000)))))

(declare-fun b!1385185 () Bool)

(declare-fun e!784887 () Bool)

(assert (=> b!1385185 (= e!784887 e!784888)))

(declare-fun res!926550 () Bool)

(assert (=> b!1385185 (=> (not res!926550) (not e!784888))))

(assert (=> b!1385185 (= res!926550 (not e!784886))))

(declare-fun res!926549 () Bool)

(assert (=> b!1385185 (=> (not res!926549) (not e!784886))))

(assert (=> b!1385185 (= res!926549 (validKeyInArray!0 (select (arr!45713 a!2938) #b00000000000000000000000000000000)))))

(declare-fun d!149307 () Bool)

(declare-fun res!926548 () Bool)

(assert (=> d!149307 (=> res!926548 e!784887)))

(assert (=> d!149307 (= res!926548 (bvsge #b00000000000000000000000000000000 (size!46264 a!2938)))))

(assert (=> d!149307 (= (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32418) e!784887)))

(assert (= (and d!149307 (not res!926548)) b!1385185))

(assert (= (and b!1385185 res!926549) b!1385184))

(assert (= (and b!1385185 res!926550) b!1385183))

(assert (= (and b!1385183 c!128759) b!1385182))

(assert (= (and b!1385183 (not c!128759)) b!1385181))

(assert (= (or b!1385182 b!1385181) bm!66546))

(assert (=> bm!66546 m!1270517))

(declare-fun m!1270553 () Bool)

(assert (=> bm!66546 m!1270553))

(assert (=> b!1385183 m!1270517))

(assert (=> b!1385183 m!1270517))

(assert (=> b!1385183 m!1270527))

(assert (=> b!1385184 m!1270517))

(assert (=> b!1385184 m!1270517))

(declare-fun m!1270555 () Bool)

(assert (=> b!1385184 m!1270555))

(assert (=> b!1385185 m!1270517))

(assert (=> b!1385185 m!1270517))

(assert (=> b!1385185 m!1270527))

(assert (=> b!1385101 d!149307))

(check-sat (not bm!66534) (not b!1385183) (not b!1385127) (not b!1385185) (not b!1385184) (not b!1385128) (not bm!66546))
