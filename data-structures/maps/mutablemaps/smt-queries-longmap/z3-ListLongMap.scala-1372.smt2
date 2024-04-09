; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27042 () Bool)

(assert start!27042)

(declare-fun b!279546 () Bool)

(declare-fun res!142749 () Bool)

(declare-fun e!178215 () Bool)

(assert (=> b!279546 (=> (not res!142749) (not e!178215))))

(declare-datatypes ((List!4422 0))(
  ( (Nil!4419) (Cons!4418 (h!5088 (_ BitVec 64)) (t!9512 List!4422)) )
))
(declare-fun noDuplicate!156 (List!4422) Bool)

(assert (=> b!279546 (= res!142749 (noDuplicate!156 Nil!4419))))

(declare-fun res!142748 () Bool)

(declare-fun e!178214 () Bool)

(assert (=> start!27042 (=> (not res!142748) (not e!178214))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27042 (= res!142748 (validMask!0 mask!3868))))

(assert (=> start!27042 e!178214))

(declare-datatypes ((array!13900 0))(
  ( (array!13901 (arr!6593 (Array (_ BitVec 32) (_ BitVec 64))) (size!6945 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13900)

(declare-fun array_inv!4547 (array!13900) Bool)

(assert (=> start!27042 (array_inv!4547 a!3325)))

(assert (=> start!27042 true))

(declare-fun b!279547 () Bool)

(declare-fun res!142746 () Bool)

(assert (=> b!279547 (=> (not res!142746) (not e!178215))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!279547 (= res!142746 (validKeyInArray!0 (select (arr!6593 a!3325) startIndex!26)))))

(declare-fun b!279548 () Bool)

(declare-fun res!142754 () Bool)

(assert (=> b!279548 (=> (not res!142754) (not e!178215))))

(declare-fun contains!1972 (List!4422 (_ BitVec 64)) Bool)

(assert (=> b!279548 (= res!142754 (not (contains!1972 Nil!4419 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!279549 () Bool)

(declare-fun res!142752 () Bool)

(assert (=> b!279549 (=> (not res!142752) (not e!178214))))

(declare-fun arrayNoDuplicates!0 (array!13900 (_ BitVec 32) List!4422) Bool)

(assert (=> b!279549 (= res!142752 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4419))))

(declare-fun b!279550 () Bool)

(declare-fun res!142750 () Bool)

(assert (=> b!279550 (=> (not res!142750) (not e!178214))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!279550 (= res!142750 (and (= (size!6945 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6945 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6945 a!3325))))))

(declare-fun b!279551 () Bool)

(declare-fun res!142747 () Bool)

(assert (=> b!279551 (=> (not res!142747) (not e!178215))))

(assert (=> b!279551 (= res!142747 (and (bvslt (size!6945 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6945 a!3325))))))

(declare-fun b!279552 () Bool)

(declare-fun res!142751 () Bool)

(assert (=> b!279552 (=> (not res!142751) (not e!178215))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13900 (_ BitVec 32)) Bool)

(assert (=> b!279552 (= res!142751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!279553 () Bool)

(declare-fun res!142753 () Bool)

(assert (=> b!279553 (=> (not res!142753) (not e!178214))))

(declare-fun k0!2581 () (_ BitVec 64))

(assert (=> b!279553 (= res!142753 (validKeyInArray!0 k0!2581))))

(declare-fun b!279554 () Bool)

(declare-fun res!142744 () Bool)

(assert (=> b!279554 (=> (not res!142744) (not e!178215))))

(assert (=> b!279554 (= res!142744 (not (contains!1972 Nil!4419 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!279555 () Bool)

(assert (=> b!279555 (= e!178214 e!178215)))

(declare-fun res!142743 () Bool)

(assert (=> b!279555 (=> (not res!142743) (not e!178215))))

(declare-datatypes ((SeekEntryResult!1762 0))(
  ( (MissingZero!1762 (index!9218 (_ BitVec 32))) (Found!1762 (index!9219 (_ BitVec 32))) (Intermediate!1762 (undefined!2574 Bool) (index!9220 (_ BitVec 32)) (x!27432 (_ BitVec 32))) (Undefined!1762) (MissingVacant!1762 (index!9221 (_ BitVec 32))) )
))
(declare-fun lt!138683 () SeekEntryResult!1762)

(assert (=> b!279555 (= res!142743 (or (= lt!138683 (MissingZero!1762 i!1267)) (= lt!138683 (MissingVacant!1762 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13900 (_ BitVec 32)) SeekEntryResult!1762)

(assert (=> b!279555 (= lt!138683 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!279556 () Bool)

(declare-fun res!142745 () Bool)

(assert (=> b!279556 (=> (not res!142745) (not e!178214))))

(declare-fun arrayContainsKey!0 (array!13900 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!279556 (= res!142745 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!279557 () Bool)

(declare-fun res!142755 () Bool)

(assert (=> b!279557 (=> (not res!142755) (not e!178215))))

(assert (=> b!279557 (= res!142755 (not (= startIndex!26 i!1267)))))

(declare-fun b!279558 () Bool)

(assert (=> b!279558 (= e!178215 (contains!1972 Nil!4419 k0!2581))))

(assert (= (and start!27042 res!142748) b!279550))

(assert (= (and b!279550 res!142750) b!279553))

(assert (= (and b!279553 res!142753) b!279549))

(assert (= (and b!279549 res!142752) b!279556))

(assert (= (and b!279556 res!142745) b!279555))

(assert (= (and b!279555 res!142743) b!279552))

(assert (= (and b!279552 res!142751) b!279557))

(assert (= (and b!279557 res!142755) b!279547))

(assert (= (and b!279547 res!142746) b!279551))

(assert (= (and b!279551 res!142747) b!279546))

(assert (= (and b!279546 res!142749) b!279548))

(assert (= (and b!279548 res!142754) b!279554))

(assert (= (and b!279554 res!142744) b!279558))

(declare-fun m!294285 () Bool)

(assert (=> b!279547 m!294285))

(assert (=> b!279547 m!294285))

(declare-fun m!294287 () Bool)

(assert (=> b!279547 m!294287))

(declare-fun m!294289 () Bool)

(assert (=> b!279555 m!294289))

(declare-fun m!294291 () Bool)

(assert (=> start!27042 m!294291))

(declare-fun m!294293 () Bool)

(assert (=> start!27042 m!294293))

(declare-fun m!294295 () Bool)

(assert (=> b!279546 m!294295))

(declare-fun m!294297 () Bool)

(assert (=> b!279548 m!294297))

(declare-fun m!294299 () Bool)

(assert (=> b!279556 m!294299))

(declare-fun m!294301 () Bool)

(assert (=> b!279558 m!294301))

(declare-fun m!294303 () Bool)

(assert (=> b!279549 m!294303))

(declare-fun m!294305 () Bool)

(assert (=> b!279552 m!294305))

(declare-fun m!294307 () Bool)

(assert (=> b!279553 m!294307))

(declare-fun m!294309 () Bool)

(assert (=> b!279554 m!294309))

(check-sat (not b!279546) (not b!279554) (not b!279556) (not b!279547) (not b!279553) (not b!279555) (not b!279548) (not start!27042) (not b!279549) (not b!279558) (not b!279552))
(check-sat)
(get-model)

(declare-fun d!65021 () Bool)

(assert (=> d!65021 (= (validKeyInArray!0 k0!2581) (and (not (= k0!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!279553 d!65021))

(declare-fun d!65023 () Bool)

(assert (=> d!65023 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!27042 d!65023))

(declare-fun d!65025 () Bool)

(assert (=> d!65025 (= (array_inv!4547 a!3325) (bvsge (size!6945 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!27042 d!65025))

(declare-fun d!65027 () Bool)

(declare-fun lt!138691 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!187 (List!4422) (InoxSet (_ BitVec 64)))

(assert (=> d!65027 (= lt!138691 (select (content!187 Nil!4419) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!178234 () Bool)

(assert (=> d!65027 (= lt!138691 e!178234)))

(declare-fun res!142804 () Bool)

(assert (=> d!65027 (=> (not res!142804) (not e!178234))))

(get-info :version)

(assert (=> d!65027 (= res!142804 ((_ is Cons!4418) Nil!4419))))

(assert (=> d!65027 (= (contains!1972 Nil!4419 #b0000000000000000000000000000000000000000000000000000000000000000) lt!138691)))

(declare-fun b!279606 () Bool)

(declare-fun e!178235 () Bool)

(assert (=> b!279606 (= e!178234 e!178235)))

(declare-fun res!142803 () Bool)

(assert (=> b!279606 (=> res!142803 e!178235)))

(assert (=> b!279606 (= res!142803 (= (h!5088 Nil!4419) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!279607 () Bool)

(assert (=> b!279607 (= e!178235 (contains!1972 (t!9512 Nil!4419) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!65027 res!142804) b!279606))

(assert (= (and b!279606 (not res!142803)) b!279607))

(declare-fun m!294337 () Bool)

(assert (=> d!65027 m!294337))

(declare-fun m!294339 () Bool)

(assert (=> d!65027 m!294339))

(declare-fun m!294341 () Bool)

(assert (=> b!279607 m!294341))

(assert (=> b!279548 d!65027))

(declare-fun d!65033 () Bool)

(assert (=> d!65033 (= (validKeyInArray!0 (select (arr!6593 a!3325) startIndex!26)) (and (not (= (select (arr!6593 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6593 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!279547 d!65033))

(declare-fun d!65035 () Bool)

(declare-fun lt!138693 () Bool)

(assert (=> d!65035 (= lt!138693 (select (content!187 Nil!4419) k0!2581))))

(declare-fun e!178238 () Bool)

(assert (=> d!65035 (= lt!138693 e!178238)))

(declare-fun res!142808 () Bool)

(assert (=> d!65035 (=> (not res!142808) (not e!178238))))

(assert (=> d!65035 (= res!142808 ((_ is Cons!4418) Nil!4419))))

(assert (=> d!65035 (= (contains!1972 Nil!4419 k0!2581) lt!138693)))

(declare-fun b!279610 () Bool)

(declare-fun e!178239 () Bool)

(assert (=> b!279610 (= e!178238 e!178239)))

(declare-fun res!142807 () Bool)

(assert (=> b!279610 (=> res!142807 e!178239)))

(assert (=> b!279610 (= res!142807 (= (h!5088 Nil!4419) k0!2581))))

(declare-fun b!279611 () Bool)

(assert (=> b!279611 (= e!178239 (contains!1972 (t!9512 Nil!4419) k0!2581))))

(assert (= (and d!65035 res!142808) b!279610))

(assert (= (and b!279610 (not res!142807)) b!279611))

(assert (=> d!65035 m!294337))

(declare-fun m!294349 () Bool)

(assert (=> d!65035 m!294349))

(declare-fun m!294351 () Bool)

(assert (=> b!279611 m!294351))

(assert (=> b!279558 d!65035))

(declare-fun b!279632 () Bool)

(declare-fun e!178256 () Bool)

(declare-fun e!178257 () Bool)

(assert (=> b!279632 (= e!178256 e!178257)))

(declare-fun c!45959 () Bool)

(assert (=> b!279632 (= c!45959 (validKeyInArray!0 (select (arr!6593 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!279633 () Bool)

(declare-fun e!178255 () Bool)

(assert (=> b!279633 (= e!178257 e!178255)))

(declare-fun lt!138711 () (_ BitVec 64))

(assert (=> b!279633 (= lt!138711 (select (arr!6593 a!3325) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!8815 0))(
  ( (Unit!8816) )
))
(declare-fun lt!138710 () Unit!8815)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!13900 (_ BitVec 64) (_ BitVec 32)) Unit!8815)

(assert (=> b!279633 (= lt!138710 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!138711 #b00000000000000000000000000000000))))

(assert (=> b!279633 (arrayContainsKey!0 a!3325 lt!138711 #b00000000000000000000000000000000)))

(declare-fun lt!138709 () Unit!8815)

(assert (=> b!279633 (= lt!138709 lt!138710)))

(declare-fun res!142819 () Bool)

(assert (=> b!279633 (= res!142819 (= (seekEntryOrOpen!0 (select (arr!6593 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1762 #b00000000000000000000000000000000)))))

(assert (=> b!279633 (=> (not res!142819) (not e!178255))))

(declare-fun bm!25442 () Bool)

(declare-fun call!25445 () Bool)

(assert (=> bm!25442 (= call!25445 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun d!65039 () Bool)

(declare-fun res!142820 () Bool)

(assert (=> d!65039 (=> res!142820 e!178256)))

(assert (=> d!65039 (= res!142820 (bvsge #b00000000000000000000000000000000 (size!6945 a!3325)))))

(assert (=> d!65039 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!178256)))

(declare-fun b!279634 () Bool)

(assert (=> b!279634 (= e!178257 call!25445)))

(declare-fun b!279635 () Bool)

(assert (=> b!279635 (= e!178255 call!25445)))

(assert (= (and d!65039 (not res!142820)) b!279632))

(assert (= (and b!279632 c!45959) b!279633))

(assert (= (and b!279632 (not c!45959)) b!279634))

(assert (= (and b!279633 res!142819) b!279635))

(assert (= (or b!279635 b!279634) bm!25442))

(declare-fun m!294355 () Bool)

(assert (=> b!279632 m!294355))

(assert (=> b!279632 m!294355))

(declare-fun m!294361 () Bool)

(assert (=> b!279632 m!294361))

(assert (=> b!279633 m!294355))

(declare-fun m!294365 () Bool)

(assert (=> b!279633 m!294365))

(declare-fun m!294369 () Bool)

(assert (=> b!279633 m!294369))

(assert (=> b!279633 m!294355))

(declare-fun m!294371 () Bool)

(assert (=> b!279633 m!294371))

(declare-fun m!294375 () Bool)

(assert (=> bm!25442 m!294375))

(assert (=> b!279552 d!65039))

(declare-fun d!65043 () Bool)

(declare-fun res!142827 () Bool)

(declare-fun e!178264 () Bool)

(assert (=> d!65043 (=> res!142827 e!178264)))

(assert (=> d!65043 (= res!142827 ((_ is Nil!4419) Nil!4419))))

(assert (=> d!65043 (= (noDuplicate!156 Nil!4419) e!178264)))

(declare-fun b!279642 () Bool)

(declare-fun e!178265 () Bool)

(assert (=> b!279642 (= e!178264 e!178265)))

(declare-fun res!142828 () Bool)

(assert (=> b!279642 (=> (not res!142828) (not e!178265))))

(assert (=> b!279642 (= res!142828 (not (contains!1972 (t!9512 Nil!4419) (h!5088 Nil!4419))))))

(declare-fun b!279643 () Bool)

(assert (=> b!279643 (= e!178265 (noDuplicate!156 (t!9512 Nil!4419)))))

(assert (= (and d!65043 (not res!142827)) b!279642))

(assert (= (and b!279642 res!142828) b!279643))

(declare-fun m!294381 () Bool)

(assert (=> b!279642 m!294381))

(declare-fun m!294383 () Bool)

(assert (=> b!279643 m!294383))

(assert (=> b!279546 d!65043))

(declare-fun d!65049 () Bool)

(declare-fun res!142839 () Bool)

(declare-fun e!178282 () Bool)

(assert (=> d!65049 (=> res!142839 e!178282)))

(assert (=> d!65049 (= res!142839 (= (select (arr!6593 a!3325) #b00000000000000000000000000000000) k0!2581))))

(assert (=> d!65049 (= (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000) e!178282)))

(declare-fun b!279666 () Bool)

(declare-fun e!178283 () Bool)

(assert (=> b!279666 (= e!178282 e!178283)))

(declare-fun res!142840 () Bool)

(assert (=> b!279666 (=> (not res!142840) (not e!178283))))

(assert (=> b!279666 (= res!142840 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6945 a!3325)))))

(declare-fun b!279667 () Bool)

(assert (=> b!279667 (= e!178283 (arrayContainsKey!0 a!3325 k0!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65049 (not res!142839)) b!279666))

(assert (= (and b!279666 res!142840) b!279667))

(assert (=> d!65049 m!294355))

(declare-fun m!294389 () Bool)

(assert (=> b!279667 m!294389))

(assert (=> b!279556 d!65049))

(declare-fun b!279706 () Bool)

(declare-fun e!178315 () SeekEntryResult!1762)

(assert (=> b!279706 (= e!178315 Undefined!1762)))

(declare-fun e!178314 () SeekEntryResult!1762)

(declare-fun b!279707 () Bool)

(declare-fun lt!138732 () SeekEntryResult!1762)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13900 (_ BitVec 32)) SeekEntryResult!1762)

(assert (=> b!279707 (= e!178314 (seekKeyOrZeroReturnVacant!0 (x!27432 lt!138732) (index!9220 lt!138732) (index!9220 lt!138732) k0!2581 a!3325 mask!3868))))

(declare-fun b!279708 () Bool)

(declare-fun e!178313 () SeekEntryResult!1762)

(assert (=> b!279708 (= e!178315 e!178313)))

(declare-fun lt!138733 () (_ BitVec 64))

(assert (=> b!279708 (= lt!138733 (select (arr!6593 a!3325) (index!9220 lt!138732)))))

(declare-fun c!45975 () Bool)

(assert (=> b!279708 (= c!45975 (= lt!138733 k0!2581))))

(declare-fun b!279709 () Bool)

(assert (=> b!279709 (= e!178313 (Found!1762 (index!9220 lt!138732)))))

(declare-fun b!279710 () Bool)

(assert (=> b!279710 (= e!178314 (MissingZero!1762 (index!9220 lt!138732)))))

(declare-fun b!279711 () Bool)

(declare-fun c!45977 () Bool)

(assert (=> b!279711 (= c!45977 (= lt!138733 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!279711 (= e!178313 e!178314)))

(declare-fun d!65053 () Bool)

(declare-fun lt!138734 () SeekEntryResult!1762)

(assert (=> d!65053 (and (or ((_ is Undefined!1762) lt!138734) (not ((_ is Found!1762) lt!138734)) (and (bvsge (index!9219 lt!138734) #b00000000000000000000000000000000) (bvslt (index!9219 lt!138734) (size!6945 a!3325)))) (or ((_ is Undefined!1762) lt!138734) ((_ is Found!1762) lt!138734) (not ((_ is MissingZero!1762) lt!138734)) (and (bvsge (index!9218 lt!138734) #b00000000000000000000000000000000) (bvslt (index!9218 lt!138734) (size!6945 a!3325)))) (or ((_ is Undefined!1762) lt!138734) ((_ is Found!1762) lt!138734) ((_ is MissingZero!1762) lt!138734) (not ((_ is MissingVacant!1762) lt!138734)) (and (bvsge (index!9221 lt!138734) #b00000000000000000000000000000000) (bvslt (index!9221 lt!138734) (size!6945 a!3325)))) (or ((_ is Undefined!1762) lt!138734) (ite ((_ is Found!1762) lt!138734) (= (select (arr!6593 a!3325) (index!9219 lt!138734)) k0!2581) (ite ((_ is MissingZero!1762) lt!138734) (= (select (arr!6593 a!3325) (index!9218 lt!138734)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1762) lt!138734) (= (select (arr!6593 a!3325) (index!9221 lt!138734)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65053 (= lt!138734 e!178315)))

(declare-fun c!45976 () Bool)

(assert (=> d!65053 (= c!45976 (and ((_ is Intermediate!1762) lt!138732) (undefined!2574 lt!138732)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13900 (_ BitVec 32)) SeekEntryResult!1762)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!65053 (= lt!138732 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2581 mask!3868) k0!2581 a!3325 mask!3868))))

(assert (=> d!65053 (validMask!0 mask!3868)))

(assert (=> d!65053 (= (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868) lt!138734)))

(assert (= (and d!65053 c!45976) b!279706))

(assert (= (and d!65053 (not c!45976)) b!279708))

(assert (= (and b!279708 c!45975) b!279709))

(assert (= (and b!279708 (not c!45975)) b!279711))

(assert (= (and b!279711 c!45977) b!279710))

(assert (= (and b!279711 (not c!45977)) b!279707))

(declare-fun m!294421 () Bool)

(assert (=> b!279707 m!294421))

(declare-fun m!294423 () Bool)

(assert (=> b!279708 m!294423))

(declare-fun m!294425 () Bool)

(assert (=> d!65053 m!294425))

(declare-fun m!294427 () Bool)

(assert (=> d!65053 m!294427))

(assert (=> d!65053 m!294427))

(declare-fun m!294429 () Bool)

(assert (=> d!65053 m!294429))

(declare-fun m!294431 () Bool)

(assert (=> d!65053 m!294431))

(declare-fun m!294433 () Bool)

(assert (=> d!65053 m!294433))

(assert (=> d!65053 m!294291))

(assert (=> b!279555 d!65053))

(declare-fun bm!25445 () Bool)

(declare-fun call!25448 () Bool)

(declare-fun c!45980 () Bool)

(assert (=> bm!25445 (= call!25448 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!45980 (Cons!4418 (select (arr!6593 a!3325) #b00000000000000000000000000000000) Nil!4419) Nil!4419)))))

(declare-fun b!279725 () Bool)

(declare-fun e!178326 () Bool)

(assert (=> b!279725 (= e!178326 (contains!1972 Nil!4419 (select (arr!6593 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!279726 () Bool)

(declare-fun e!178327 () Bool)

(assert (=> b!279726 (= e!178327 call!25448)))

(declare-fun d!65075 () Bool)

(declare-fun res!142869 () Bool)

(declare-fun e!178328 () Bool)

(assert (=> d!65075 (=> res!142869 e!178328)))

(assert (=> d!65075 (= res!142869 (bvsge #b00000000000000000000000000000000 (size!6945 a!3325)))))

(assert (=> d!65075 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4419) e!178328)))

(declare-fun b!279724 () Bool)

(declare-fun e!178329 () Bool)

(assert (=> b!279724 (= e!178329 e!178327)))

(assert (=> b!279724 (= c!45980 (validKeyInArray!0 (select (arr!6593 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!279727 () Bool)

(assert (=> b!279727 (= e!178327 call!25448)))

(declare-fun b!279728 () Bool)

(assert (=> b!279728 (= e!178328 e!178329)))

(declare-fun res!142871 () Bool)

(assert (=> b!279728 (=> (not res!142871) (not e!178329))))

(assert (=> b!279728 (= res!142871 (not e!178326))))

(declare-fun res!142870 () Bool)

(assert (=> b!279728 (=> (not res!142870) (not e!178326))))

(assert (=> b!279728 (= res!142870 (validKeyInArray!0 (select (arr!6593 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!65075 (not res!142869)) b!279728))

(assert (= (and b!279728 res!142870) b!279725))

(assert (= (and b!279728 res!142871) b!279724))

(assert (= (and b!279724 c!45980) b!279727))

(assert (= (and b!279724 (not c!45980)) b!279726))

(assert (= (or b!279727 b!279726) bm!25445))

(assert (=> bm!25445 m!294355))

(declare-fun m!294439 () Bool)

(assert (=> bm!25445 m!294439))

(assert (=> b!279725 m!294355))

(assert (=> b!279725 m!294355))

(declare-fun m!294441 () Bool)

(assert (=> b!279725 m!294441))

(assert (=> b!279724 m!294355))

(assert (=> b!279724 m!294355))

(assert (=> b!279724 m!294361))

(assert (=> b!279728 m!294355))

(assert (=> b!279728 m!294355))

(assert (=> b!279728 m!294361))

(assert (=> b!279549 d!65075))

(declare-fun d!65081 () Bool)

(declare-fun lt!138748 () Bool)

(assert (=> d!65081 (= lt!138748 (select (content!187 Nil!4419) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!178342 () Bool)

(assert (=> d!65081 (= lt!138748 e!178342)))

(declare-fun res!142877 () Bool)

(assert (=> d!65081 (=> (not res!142877) (not e!178342))))

(assert (=> d!65081 (= res!142877 ((_ is Cons!4418) Nil!4419))))

(assert (=> d!65081 (= (contains!1972 Nil!4419 #b1000000000000000000000000000000000000000000000000000000000000000) lt!138748)))

(declare-fun b!279749 () Bool)

(declare-fun e!178343 () Bool)

(assert (=> b!279749 (= e!178342 e!178343)))

(declare-fun res!142876 () Bool)

(assert (=> b!279749 (=> res!142876 e!178343)))

(assert (=> b!279749 (= res!142876 (= (h!5088 Nil!4419) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!279750 () Bool)

(assert (=> b!279750 (= e!178343 (contains!1972 (t!9512 Nil!4419) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!65081 res!142877) b!279749))

(assert (= (and b!279749 (not res!142876)) b!279750))

(assert (=> d!65081 m!294337))

(declare-fun m!294443 () Bool)

(assert (=> d!65081 m!294443))

(declare-fun m!294445 () Bool)

(assert (=> b!279750 m!294445))

(assert (=> b!279554 d!65081))

(check-sat (not d!65035) (not b!279633) (not d!65027) (not b!279724) (not bm!25442) (not b!279611) (not b!279643) (not b!279607) (not b!279725) (not d!65053) (not d!65081) (not b!279642) (not b!279707) (not b!279667) (not b!279632) (not b!279728) (not b!279750) (not bm!25445))
(check-sat)
