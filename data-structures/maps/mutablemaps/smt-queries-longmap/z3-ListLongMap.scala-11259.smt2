; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131340 () Bool)

(assert start!131340)

(declare-fun b!1539670 () Bool)

(declare-fun res!1056612 () Bool)

(declare-fun e!856382 () Bool)

(assert (=> b!1539670 (=> (not res!1056612) (not e!856382))))

(declare-datatypes ((array!102254 0))(
  ( (array!102255 (arr!49334 (Array (_ BitVec 32) (_ BitVec 64))) (size!49885 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102254)

(declare-datatypes ((List!35988 0))(
  ( (Nil!35985) (Cons!35984 (h!37430 (_ BitVec 64)) (t!50689 List!35988)) )
))
(declare-fun arrayNoDuplicates!0 (array!102254 (_ BitVec 32) List!35988) Bool)

(assert (=> b!1539670 (= res!1056612 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35985))))

(declare-fun b!1539671 () Bool)

(declare-fun res!1056610 () Bool)

(assert (=> b!1539671 (=> (not res!1056610) (not e!856382))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1539671 (= res!1056610 (and (= (size!49885 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49885 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49885 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1539672 () Bool)

(declare-fun res!1056614 () Bool)

(assert (=> b!1539672 (=> (not res!1056614) (not e!856382))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539672 (= res!1056614 (validKeyInArray!0 (select (arr!49334 a!2792) j!64)))))

(declare-fun b!1539673 () Bool)

(declare-fun res!1056609 () Bool)

(assert (=> b!1539673 (=> (not res!1056609) (not e!856382))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1539673 (= res!1056609 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49885 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49885 a!2792)) (= (select (arr!49334 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1539674 () Bool)

(declare-fun res!1056607 () Bool)

(assert (=> b!1539674 (=> (not res!1056607) (not e!856382))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102254 (_ BitVec 32)) Bool)

(assert (=> b!1539674 (= res!1056607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1539675 () Bool)

(declare-fun e!856381 () Bool)

(assert (=> b!1539675 (= e!856382 e!856381)))

(declare-fun res!1056611 () Bool)

(assert (=> b!1539675 (=> (not res!1056611) (not e!856381))))

(declare-datatypes ((SeekEntryResult!13483 0))(
  ( (MissingZero!13483 (index!56326 (_ BitVec 32))) (Found!13483 (index!56327 (_ BitVec 32))) (Intermediate!13483 (undefined!14295 Bool) (index!56328 (_ BitVec 32)) (x!138063 (_ BitVec 32))) (Undefined!13483) (MissingVacant!13483 (index!56329 (_ BitVec 32))) )
))
(declare-fun lt!665056 () SeekEntryResult!13483)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102254 (_ BitVec 32)) SeekEntryResult!13483)

(assert (=> b!1539675 (= res!1056611 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49334 a!2792) j!64) a!2792 mask!2480) lt!665056))))

(assert (=> b!1539675 (= lt!665056 (Found!13483 j!64))))

(declare-fun e!856380 () Bool)

(declare-fun lt!665055 () (_ BitVec 32))

(declare-fun b!1539676 () Bool)

(assert (=> b!1539676 (= e!856380 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665055 vacantIndex!5 (select (arr!49334 a!2792) j!64) a!2792 mask!2480) lt!665056)))))

(declare-fun b!1539677 () Bool)

(declare-fun res!1056613 () Bool)

(assert (=> b!1539677 (=> (not res!1056613) (not e!856381))))

(assert (=> b!1539677 (= res!1056613 (not (= (select (arr!49334 a!2792) index!463) (select (arr!49334 a!2792) j!64))))))

(declare-fun b!1539678 () Bool)

(assert (=> b!1539678 (= e!856381 e!856380)))

(declare-fun res!1056606 () Bool)

(assert (=> b!1539678 (=> (not res!1056606) (not e!856380))))

(assert (=> b!1539678 (= res!1056606 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665055 #b00000000000000000000000000000000) (bvslt lt!665055 (size!49885 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539678 (= lt!665055 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1539679 () Bool)

(declare-fun res!1056608 () Bool)

(assert (=> b!1539679 (=> (not res!1056608) (not e!856382))))

(assert (=> b!1539679 (= res!1056608 (validKeyInArray!0 (select (arr!49334 a!2792) i!951)))))

(declare-fun res!1056615 () Bool)

(assert (=> start!131340 (=> (not res!1056615) (not e!856382))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131340 (= res!1056615 (validMask!0 mask!2480))))

(assert (=> start!131340 e!856382))

(assert (=> start!131340 true))

(declare-fun array_inv!38279 (array!102254) Bool)

(assert (=> start!131340 (array_inv!38279 a!2792)))

(assert (= (and start!131340 res!1056615) b!1539671))

(assert (= (and b!1539671 res!1056610) b!1539679))

(assert (= (and b!1539679 res!1056608) b!1539672))

(assert (= (and b!1539672 res!1056614) b!1539674))

(assert (= (and b!1539674 res!1056607) b!1539670))

(assert (= (and b!1539670 res!1056612) b!1539673))

(assert (= (and b!1539673 res!1056609) b!1539675))

(assert (= (and b!1539675 res!1056611) b!1539677))

(assert (= (and b!1539677 res!1056613) b!1539678))

(assert (= (and b!1539678 res!1056606) b!1539676))

(declare-fun m!1421903 () Bool)

(assert (=> b!1539673 m!1421903))

(declare-fun m!1421905 () Bool)

(assert (=> b!1539677 m!1421905))

(declare-fun m!1421907 () Bool)

(assert (=> b!1539677 m!1421907))

(declare-fun m!1421909 () Bool)

(assert (=> start!131340 m!1421909))

(declare-fun m!1421911 () Bool)

(assert (=> start!131340 m!1421911))

(assert (=> b!1539672 m!1421907))

(assert (=> b!1539672 m!1421907))

(declare-fun m!1421913 () Bool)

(assert (=> b!1539672 m!1421913))

(assert (=> b!1539676 m!1421907))

(assert (=> b!1539676 m!1421907))

(declare-fun m!1421915 () Bool)

(assert (=> b!1539676 m!1421915))

(assert (=> b!1539675 m!1421907))

(assert (=> b!1539675 m!1421907))

(declare-fun m!1421917 () Bool)

(assert (=> b!1539675 m!1421917))

(declare-fun m!1421919 () Bool)

(assert (=> b!1539678 m!1421919))

(declare-fun m!1421921 () Bool)

(assert (=> b!1539674 m!1421921))

(declare-fun m!1421923 () Bool)

(assert (=> b!1539679 m!1421923))

(assert (=> b!1539679 m!1421923))

(declare-fun m!1421925 () Bool)

(assert (=> b!1539679 m!1421925))

(declare-fun m!1421927 () Bool)

(assert (=> b!1539670 m!1421927))

(check-sat (not b!1539676) (not start!131340) (not b!1539678) (not b!1539679) (not b!1539670) (not b!1539672) (not b!1539675) (not b!1539674))
(check-sat)
(get-model)

(declare-fun d!160395 () Bool)

(declare-fun lt!665065 () (_ BitVec 32))

(assert (=> d!160395 (and (bvsge lt!665065 #b00000000000000000000000000000000) (bvslt lt!665065 (bvadd mask!2480 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!160395 (= lt!665065 (choose!52 index!463 x!510 mask!2480))))

(assert (=> d!160395 (validMask!0 mask!2480)))

(assert (=> d!160395 (= (nextIndex!0 index!463 x!510 mask!2480) lt!665065)))

(declare-fun bs!44195 () Bool)

(assert (= bs!44195 d!160395))

(declare-fun m!1421955 () Bool)

(assert (=> bs!44195 m!1421955))

(assert (=> bs!44195 m!1421909))

(assert (=> b!1539678 d!160395))

(declare-fun d!160397 () Bool)

(assert (=> d!160397 (= (validKeyInArray!0 (select (arr!49334 a!2792) j!64)) (and (not (= (select (arr!49334 a!2792) j!64) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49334 a!2792) j!64) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1539672 d!160397))

(declare-fun d!160399 () Bool)

(assert (=> d!160399 (= (validMask!0 mask!2480) (and (or (= mask!2480 #b00000000000000000000000000000111) (= mask!2480 #b00000000000000000000000000001111) (= mask!2480 #b00000000000000000000000000011111) (= mask!2480 #b00000000000000000000000000111111) (= mask!2480 #b00000000000000000000000001111111) (= mask!2480 #b00000000000000000000000011111111) (= mask!2480 #b00000000000000000000000111111111) (= mask!2480 #b00000000000000000000001111111111) (= mask!2480 #b00000000000000000000011111111111) (= mask!2480 #b00000000000000000000111111111111) (= mask!2480 #b00000000000000000001111111111111) (= mask!2480 #b00000000000000000011111111111111) (= mask!2480 #b00000000000000000111111111111111) (= mask!2480 #b00000000000000001111111111111111) (= mask!2480 #b00000000000000011111111111111111) (= mask!2480 #b00000000000000111111111111111111) (= mask!2480 #b00000000000001111111111111111111) (= mask!2480 #b00000000000011111111111111111111) (= mask!2480 #b00000000000111111111111111111111) (= mask!2480 #b00000000001111111111111111111111) (= mask!2480 #b00000000011111111111111111111111) (= mask!2480 #b00000000111111111111111111111111) (= mask!2480 #b00000001111111111111111111111111) (= mask!2480 #b00000011111111111111111111111111) (= mask!2480 #b00000111111111111111111111111111) (= mask!2480 #b00001111111111111111111111111111) (= mask!2480 #b00011111111111111111111111111111) (= mask!2480 #b00111111111111111111111111111111)) (bvsle mask!2480 #b00111111111111111111111111111111)))))

(assert (=> start!131340 d!160399))

(declare-fun d!160401 () Bool)

(assert (=> d!160401 (= (array_inv!38279 a!2792) (bvsge (size!49885 a!2792) #b00000000000000000000000000000000))))

(assert (=> start!131340 d!160401))

(declare-fun d!160403 () Bool)

(declare-fun lt!665085 () SeekEntryResult!13483)

(get-info :version)

(assert (=> d!160403 (and (or ((_ is Undefined!13483) lt!665085) (not ((_ is Found!13483) lt!665085)) (and (bvsge (index!56327 lt!665085) #b00000000000000000000000000000000) (bvslt (index!56327 lt!665085) (size!49885 a!2792)))) (or ((_ is Undefined!13483) lt!665085) ((_ is Found!13483) lt!665085) (not ((_ is MissingVacant!13483) lt!665085)) (not (= (index!56329 lt!665085) vacantIndex!5)) (and (bvsge (index!56329 lt!665085) #b00000000000000000000000000000000) (bvslt (index!56329 lt!665085) (size!49885 a!2792)))) (or ((_ is Undefined!13483) lt!665085) (ite ((_ is Found!13483) lt!665085) (= (select (arr!49334 a!2792) (index!56327 lt!665085)) (select (arr!49334 a!2792) j!64)) (and ((_ is MissingVacant!13483) lt!665085) (= (index!56329 lt!665085) vacantIndex!5) (= (select (arr!49334 a!2792) (index!56329 lt!665085)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!856418 () SeekEntryResult!13483)

(assert (=> d!160403 (= lt!665085 e!856418)))

(declare-fun c!141105 () Bool)

(assert (=> d!160403 (= c!141105 (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110))))

(declare-fun lt!665086 () (_ BitVec 64))

(assert (=> d!160403 (= lt!665086 (select (arr!49334 a!2792) lt!665055))))

(assert (=> d!160403 (validMask!0 mask!2480)))

(assert (=> d!160403 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665055 vacantIndex!5 (select (arr!49334 a!2792) j!64) a!2792 mask!2480) lt!665085)))

(declare-fun b!1539744 () Bool)

(declare-fun c!141106 () Bool)

(assert (=> b!1539744 (= c!141106 (= lt!665086 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!856420 () SeekEntryResult!13483)

(declare-fun e!856419 () SeekEntryResult!13483)

(assert (=> b!1539744 (= e!856420 e!856419)))

(declare-fun b!1539745 () Bool)

(assert (=> b!1539745 (= e!856420 (Found!13483 lt!665055))))

(declare-fun b!1539746 () Bool)

(assert (=> b!1539746 (= e!856418 e!856420)))

(declare-fun c!141104 () Bool)

(assert (=> b!1539746 (= c!141104 (= lt!665086 (select (arr!49334 a!2792) j!64)))))

(declare-fun b!1539747 () Bool)

(assert (=> b!1539747 (= e!856419 (MissingVacant!13483 vacantIndex!5))))

(declare-fun b!1539748 () Bool)

(assert (=> b!1539748 (= e!856418 Undefined!13483)))

(declare-fun b!1539749 () Bool)

(assert (=> b!1539749 (= e!856419 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510 #b00000000000000000000000000000001) (nextIndex!0 lt!665055 (bvadd #b00000000000000000000000000000001 x!510) mask!2480) vacantIndex!5 (select (arr!49334 a!2792) j!64) a!2792 mask!2480))))

(assert (= (and d!160403 c!141105) b!1539748))

(assert (= (and d!160403 (not c!141105)) b!1539746))

(assert (= (and b!1539746 c!141104) b!1539745))

(assert (= (and b!1539746 (not c!141104)) b!1539744))

(assert (= (and b!1539744 c!141106) b!1539747))

(assert (= (and b!1539744 (not c!141106)) b!1539749))

(declare-fun m!1421973 () Bool)

(assert (=> d!160403 m!1421973))

(declare-fun m!1421975 () Bool)

(assert (=> d!160403 m!1421975))

(declare-fun m!1421977 () Bool)

(assert (=> d!160403 m!1421977))

(assert (=> d!160403 m!1421909))

(declare-fun m!1421979 () Bool)

(assert (=> b!1539749 m!1421979))

(assert (=> b!1539749 m!1421979))

(assert (=> b!1539749 m!1421907))

(declare-fun m!1421981 () Bool)

(assert (=> b!1539749 m!1421981))

(assert (=> b!1539676 d!160403))

(declare-fun d!160417 () Bool)

(declare-fun lt!665087 () SeekEntryResult!13483)

(assert (=> d!160417 (and (or ((_ is Undefined!13483) lt!665087) (not ((_ is Found!13483) lt!665087)) (and (bvsge (index!56327 lt!665087) #b00000000000000000000000000000000) (bvslt (index!56327 lt!665087) (size!49885 a!2792)))) (or ((_ is Undefined!13483) lt!665087) ((_ is Found!13483) lt!665087) (not ((_ is MissingVacant!13483) lt!665087)) (not (= (index!56329 lt!665087) vacantIndex!5)) (and (bvsge (index!56329 lt!665087) #b00000000000000000000000000000000) (bvslt (index!56329 lt!665087) (size!49885 a!2792)))) (or ((_ is Undefined!13483) lt!665087) (ite ((_ is Found!13483) lt!665087) (= (select (arr!49334 a!2792) (index!56327 lt!665087)) (select (arr!49334 a!2792) j!64)) (and ((_ is MissingVacant!13483) lt!665087) (= (index!56329 lt!665087) vacantIndex!5) (= (select (arr!49334 a!2792) (index!56329 lt!665087)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!856425 () SeekEntryResult!13483)

(assert (=> d!160417 (= lt!665087 e!856425)))

(declare-fun c!141109 () Bool)

(assert (=> d!160417 (= c!141109 (bvsge x!510 #b01111111111111111111111111111110))))

(declare-fun lt!665088 () (_ BitVec 64))

(assert (=> d!160417 (= lt!665088 (select (arr!49334 a!2792) index!463))))

(assert (=> d!160417 (validMask!0 mask!2480)))

(assert (=> d!160417 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49334 a!2792) j!64) a!2792 mask!2480) lt!665087)))

(declare-fun b!1539755 () Bool)

(declare-fun c!141110 () Bool)

(assert (=> b!1539755 (= c!141110 (= lt!665088 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!856427 () SeekEntryResult!13483)

(declare-fun e!856426 () SeekEntryResult!13483)

(assert (=> b!1539755 (= e!856427 e!856426)))

(declare-fun b!1539756 () Bool)

(assert (=> b!1539756 (= e!856427 (Found!13483 index!463))))

(declare-fun b!1539757 () Bool)

(assert (=> b!1539757 (= e!856425 e!856427)))

(declare-fun c!141108 () Bool)

(assert (=> b!1539757 (= c!141108 (= lt!665088 (select (arr!49334 a!2792) j!64)))))

(declare-fun b!1539758 () Bool)

(assert (=> b!1539758 (= e!856426 (MissingVacant!13483 vacantIndex!5))))

(declare-fun b!1539759 () Bool)

(assert (=> b!1539759 (= e!856425 Undefined!13483)))

(declare-fun b!1539760 () Bool)

(assert (=> b!1539760 (= e!856426 (seekKeyOrZeroReturnVacant!0 (bvadd x!510 #b00000000000000000000000000000001) (nextIndex!0 index!463 x!510 mask!2480) vacantIndex!5 (select (arr!49334 a!2792) j!64) a!2792 mask!2480))))

(assert (= (and d!160417 c!141109) b!1539759))

(assert (= (and d!160417 (not c!141109)) b!1539757))

(assert (= (and b!1539757 c!141108) b!1539756))

(assert (= (and b!1539757 (not c!141108)) b!1539755))

(assert (= (and b!1539755 c!141110) b!1539758))

(assert (= (and b!1539755 (not c!141110)) b!1539760))

(declare-fun m!1421991 () Bool)

(assert (=> d!160417 m!1421991))

(declare-fun m!1421993 () Bool)

(assert (=> d!160417 m!1421993))

(assert (=> d!160417 m!1421905))

(assert (=> d!160417 m!1421909))

(assert (=> b!1539760 m!1421919))

(assert (=> b!1539760 m!1421919))

(assert (=> b!1539760 m!1421907))

(declare-fun m!1421995 () Bool)

(assert (=> b!1539760 m!1421995))

(assert (=> b!1539675 d!160417))

(declare-fun b!1539794 () Bool)

(declare-fun e!856456 () Bool)

(declare-fun call!68643 () Bool)

(assert (=> b!1539794 (= e!856456 call!68643)))

(declare-fun bm!68640 () Bool)

(declare-fun c!141118 () Bool)

(assert (=> bm!68640 (= call!68643 (arrayNoDuplicates!0 a!2792 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!141118 (Cons!35984 (select (arr!49334 a!2792) #b00000000000000000000000000000000) Nil!35985) Nil!35985)))))

(declare-fun b!1539795 () Bool)

(declare-fun e!856455 () Bool)

(declare-fun contains!10030 (List!35988 (_ BitVec 64)) Bool)

(assert (=> b!1539795 (= e!856455 (contains!10030 Nil!35985 (select (arr!49334 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1539796 () Bool)

(declare-fun e!856457 () Bool)

(declare-fun e!856454 () Bool)

(assert (=> b!1539796 (= e!856457 e!856454)))

(declare-fun res!1056682 () Bool)

(assert (=> b!1539796 (=> (not res!1056682) (not e!856454))))

(assert (=> b!1539796 (= res!1056682 (not e!856455))))

(declare-fun res!1056681 () Bool)

(assert (=> b!1539796 (=> (not res!1056681) (not e!856455))))

(assert (=> b!1539796 (= res!1056681 (validKeyInArray!0 (select (arr!49334 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1539797 () Bool)

(assert (=> b!1539797 (= e!856454 e!856456)))

(assert (=> b!1539797 (= c!141118 (validKeyInArray!0 (select (arr!49334 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1539798 () Bool)

(assert (=> b!1539798 (= e!856456 call!68643)))

(declare-fun d!160421 () Bool)

(declare-fun res!1056680 () Bool)

(assert (=> d!160421 (=> res!1056680 e!856457)))

(assert (=> d!160421 (= res!1056680 (bvsge #b00000000000000000000000000000000 (size!49885 a!2792)))))

(assert (=> d!160421 (= (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35985) e!856457)))

(assert (= (and d!160421 (not res!1056680)) b!1539796))

(assert (= (and b!1539796 res!1056681) b!1539795))

(assert (= (and b!1539796 res!1056682) b!1539797))

(assert (= (and b!1539797 c!141118) b!1539798))

(assert (= (and b!1539797 (not c!141118)) b!1539794))

(assert (= (or b!1539798 b!1539794) bm!68640))

(declare-fun m!1422001 () Bool)

(assert (=> bm!68640 m!1422001))

(declare-fun m!1422003 () Bool)

(assert (=> bm!68640 m!1422003))

(assert (=> b!1539795 m!1422001))

(assert (=> b!1539795 m!1422001))

(declare-fun m!1422005 () Bool)

(assert (=> b!1539795 m!1422005))

(assert (=> b!1539796 m!1422001))

(assert (=> b!1539796 m!1422001))

(declare-fun m!1422007 () Bool)

(assert (=> b!1539796 m!1422007))

(assert (=> b!1539797 m!1422001))

(assert (=> b!1539797 m!1422001))

(assert (=> b!1539797 m!1422007))

(assert (=> b!1539670 d!160421))

(declare-fun d!160425 () Bool)

(assert (=> d!160425 (= (validKeyInArray!0 (select (arr!49334 a!2792) i!951)) (and (not (= (select (arr!49334 a!2792) i!951) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49334 a!2792) i!951) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1539679 d!160425))

(declare-fun b!1539811 () Bool)

(declare-fun e!856469 () Bool)

(declare-fun call!68649 () Bool)

(assert (=> b!1539811 (= e!856469 call!68649)))

(declare-fun b!1539812 () Bool)

(declare-fun e!856467 () Bool)

(declare-fun e!856468 () Bool)

(assert (=> b!1539812 (= e!856467 e!856468)))

(declare-fun c!141122 () Bool)

(assert (=> b!1539812 (= c!141122 (validKeyInArray!0 (select (arr!49334 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1539813 () Bool)

(assert (=> b!1539813 (= e!856468 call!68649)))

(declare-fun d!160427 () Bool)

(declare-fun res!1056690 () Bool)

(assert (=> d!160427 (=> res!1056690 e!856467)))

(assert (=> d!160427 (= res!1056690 (bvsge #b00000000000000000000000000000000 (size!49885 a!2792)))))

(assert (=> d!160427 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480) e!856467)))

(declare-fun b!1539814 () Bool)

(assert (=> b!1539814 (= e!856468 e!856469)))

(declare-fun lt!665105 () (_ BitVec 64))

(assert (=> b!1539814 (= lt!665105 (select (arr!49334 a!2792) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51364 0))(
  ( (Unit!51365) )
))
(declare-fun lt!665104 () Unit!51364)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!102254 (_ BitVec 64) (_ BitVec 32)) Unit!51364)

(assert (=> b!1539814 (= lt!665104 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2792 lt!665105 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!102254 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1539814 (arrayContainsKey!0 a!2792 lt!665105 #b00000000000000000000000000000000)))

(declare-fun lt!665106 () Unit!51364)

(assert (=> b!1539814 (= lt!665106 lt!665104)))

(declare-fun res!1056689 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!102254 (_ BitVec 32)) SeekEntryResult!13483)

(assert (=> b!1539814 (= res!1056689 (= (seekEntryOrOpen!0 (select (arr!49334 a!2792) #b00000000000000000000000000000000) a!2792 mask!2480) (Found!13483 #b00000000000000000000000000000000)))))

(assert (=> b!1539814 (=> (not res!1056689) (not e!856469))))

(declare-fun bm!68646 () Bool)

(assert (=> bm!68646 (= call!68649 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2792 mask!2480))))

(assert (= (and d!160427 (not res!1056690)) b!1539812))

(assert (= (and b!1539812 c!141122) b!1539814))

(assert (= (and b!1539812 (not c!141122)) b!1539813))

(assert (= (and b!1539814 res!1056689) b!1539811))

(assert (= (or b!1539811 b!1539813) bm!68646))

(assert (=> b!1539812 m!1422001))

(assert (=> b!1539812 m!1422001))

(assert (=> b!1539812 m!1422007))

(assert (=> b!1539814 m!1422001))

(declare-fun m!1422017 () Bool)

(assert (=> b!1539814 m!1422017))

(declare-fun m!1422019 () Bool)

(assert (=> b!1539814 m!1422019))

(assert (=> b!1539814 m!1422001))

(declare-fun m!1422021 () Bool)

(assert (=> b!1539814 m!1422021))

(declare-fun m!1422023 () Bool)

(assert (=> bm!68646 m!1422023))

(assert (=> b!1539674 d!160427))

(check-sat (not bm!68646) (not b!1539797) (not d!160403) (not b!1539814) (not bm!68640) (not d!160417) (not b!1539812) (not b!1539749) (not d!160395) (not b!1539795) (not b!1539796) (not b!1539760))
(check-sat)
