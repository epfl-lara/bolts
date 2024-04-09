; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27040 () Bool)

(assert start!27040)

(declare-fun b!279507 () Bool)

(declare-fun res!142704 () Bool)

(declare-fun e!178206 () Bool)

(assert (=> b!279507 (=> (not res!142704) (not e!178206))))

(declare-datatypes ((array!13898 0))(
  ( (array!13899 (arr!6592 (Array (_ BitVec 32) (_ BitVec 64))) (size!6944 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13898)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13898 (_ BitVec 32)) Bool)

(assert (=> b!279507 (= res!142704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!279508 () Bool)

(declare-fun res!142712 () Bool)

(declare-fun e!178207 () Bool)

(assert (=> b!279508 (=> (not res!142712) (not e!178207))))

(declare-datatypes ((List!4421 0))(
  ( (Nil!4418) (Cons!4417 (h!5087 (_ BitVec 64)) (t!9511 List!4421)) )
))
(declare-fun arrayNoDuplicates!0 (array!13898 (_ BitVec 32) List!4421) Bool)

(assert (=> b!279508 (= res!142712 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4418))))

(declare-fun b!279509 () Bool)

(assert (=> b!279509 (= e!178207 e!178206)))

(declare-fun res!142715 () Bool)

(assert (=> b!279509 (=> (not res!142715) (not e!178206))))

(declare-datatypes ((SeekEntryResult!1761 0))(
  ( (MissingZero!1761 (index!9214 (_ BitVec 32))) (Found!1761 (index!9215 (_ BitVec 32))) (Intermediate!1761 (undefined!2573 Bool) (index!9216 (_ BitVec 32)) (x!27431 (_ BitVec 32))) (Undefined!1761) (MissingVacant!1761 (index!9217 (_ BitVec 32))) )
))
(declare-fun lt!138680 () SeekEntryResult!1761)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!279509 (= res!142715 (or (= lt!138680 (MissingZero!1761 i!1267)) (= lt!138680 (MissingVacant!1761 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13898 (_ BitVec 32)) SeekEntryResult!1761)

(assert (=> b!279509 (= lt!138680 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!279511 () Bool)

(declare-fun res!142713 () Bool)

(assert (=> b!279511 (=> (not res!142713) (not e!178206))))

(declare-fun noDuplicate!155 (List!4421) Bool)

(assert (=> b!279511 (= res!142713 (noDuplicate!155 Nil!4418))))

(declare-fun b!279512 () Bool)

(declare-fun res!142708 () Bool)

(assert (=> b!279512 (=> (not res!142708) (not e!178206))))

(declare-fun contains!1971 (List!4421 (_ BitVec 64)) Bool)

(assert (=> b!279512 (= res!142708 (not (contains!1971 Nil!4418 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!279513 () Bool)

(declare-fun res!142716 () Bool)

(assert (=> b!279513 (=> (not res!142716) (not e!178207))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!279513 (= res!142716 (and (= (size!6944 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6944 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6944 a!3325))))))

(declare-fun b!279514 () Bool)

(assert (=> b!279514 (= e!178206 (contains!1971 Nil!4418 k!2581))))

(declare-fun b!279515 () Bool)

(declare-fun res!142707 () Bool)

(assert (=> b!279515 (=> (not res!142707) (not e!178206))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!279515 (= res!142707 (validKeyInArray!0 (select (arr!6592 a!3325) startIndex!26)))))

(declare-fun b!279516 () Bool)

(declare-fun res!142710 () Bool)

(assert (=> b!279516 (=> (not res!142710) (not e!178206))))

(assert (=> b!279516 (= res!142710 (not (contains!1971 Nil!4418 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!279517 () Bool)

(declare-fun res!142709 () Bool)

(assert (=> b!279517 (=> (not res!142709) (not e!178207))))

(assert (=> b!279517 (= res!142709 (validKeyInArray!0 k!2581))))

(declare-fun b!279518 () Bool)

(declare-fun res!142705 () Bool)

(assert (=> b!279518 (=> (not res!142705) (not e!178206))))

(assert (=> b!279518 (= res!142705 (and (bvslt (size!6944 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6944 a!3325))))))

(declare-fun b!279519 () Bool)

(declare-fun res!142711 () Bool)

(assert (=> b!279519 (=> (not res!142711) (not e!178206))))

(assert (=> b!279519 (= res!142711 (not (= startIndex!26 i!1267)))))

(declare-fun b!279510 () Bool)

(declare-fun res!142706 () Bool)

(assert (=> b!279510 (=> (not res!142706) (not e!178207))))

(declare-fun arrayContainsKey!0 (array!13898 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!279510 (= res!142706 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!142714 () Bool)

(assert (=> start!27040 (=> (not res!142714) (not e!178207))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27040 (= res!142714 (validMask!0 mask!3868))))

(assert (=> start!27040 e!178207))

(declare-fun array_inv!4546 (array!13898) Bool)

(assert (=> start!27040 (array_inv!4546 a!3325)))

(assert (=> start!27040 true))

(assert (= (and start!27040 res!142714) b!279513))

(assert (= (and b!279513 res!142716) b!279517))

(assert (= (and b!279517 res!142709) b!279508))

(assert (= (and b!279508 res!142712) b!279510))

(assert (= (and b!279510 res!142706) b!279509))

(assert (= (and b!279509 res!142715) b!279507))

(assert (= (and b!279507 res!142704) b!279519))

(assert (= (and b!279519 res!142711) b!279515))

(assert (= (and b!279515 res!142707) b!279518))

(assert (= (and b!279518 res!142705) b!279511))

(assert (= (and b!279511 res!142713) b!279516))

(assert (= (and b!279516 res!142710) b!279512))

(assert (= (and b!279512 res!142708) b!279514))

(declare-fun m!294259 () Bool)

(assert (=> b!279508 m!294259))

(declare-fun m!294261 () Bool)

(assert (=> start!27040 m!294261))

(declare-fun m!294263 () Bool)

(assert (=> start!27040 m!294263))

(declare-fun m!294265 () Bool)

(assert (=> b!279511 m!294265))

(declare-fun m!294267 () Bool)

(assert (=> b!279515 m!294267))

(assert (=> b!279515 m!294267))

(declare-fun m!294269 () Bool)

(assert (=> b!279515 m!294269))

(declare-fun m!294271 () Bool)

(assert (=> b!279507 m!294271))

(declare-fun m!294273 () Bool)

(assert (=> b!279517 m!294273))

(declare-fun m!294275 () Bool)

(assert (=> b!279509 m!294275))

(declare-fun m!294277 () Bool)

(assert (=> b!279510 m!294277))

(declare-fun m!294279 () Bool)

(assert (=> b!279514 m!294279))

(declare-fun m!294281 () Bool)

(assert (=> b!279516 m!294281))

(declare-fun m!294283 () Bool)

(assert (=> b!279512 m!294283))

(push 1)

(assert (not start!27040))

(assert (not b!279509))

(assert (not b!279516))

(assert (not b!279512))

(assert (not b!279511))

(assert (not b!279515))

(assert (not b!279508))

(assert (not b!279517))

(assert (not b!279514))

(assert (not b!279507))

(assert (not b!279510))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!65029 () Bool)

(declare-fun lt!138692 () Bool)

(declare-fun content!188 (List!4421) (Set (_ BitVec 64)))

(assert (=> d!65029 (= lt!138692 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!188 Nil!4418)))))

(declare-fun e!178236 () Bool)

(assert (=> d!65029 (= lt!138692 e!178236)))

(declare-fun res!142805 () Bool)

(assert (=> d!65029 (=> (not res!142805) (not e!178236))))

(assert (=> d!65029 (= res!142805 (is-Cons!4417 Nil!4418))))

(assert (=> d!65029 (= (contains!1971 Nil!4418 #b1000000000000000000000000000000000000000000000000000000000000000) lt!138692)))

(declare-fun b!279608 () Bool)

(declare-fun e!178237 () Bool)

(assert (=> b!279608 (= e!178236 e!178237)))

(declare-fun res!142806 () Bool)

(assert (=> b!279608 (=> res!142806 e!178237)))

(assert (=> b!279608 (= res!142806 (= (h!5087 Nil!4418) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!279609 () Bool)

(assert (=> b!279609 (= e!178237 (contains!1971 (t!9511 Nil!4418) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!65029 res!142805) b!279608))

(assert (= (and b!279608 (not res!142806)) b!279609))

(declare-fun m!294343 () Bool)

(assert (=> d!65029 m!294343))

(declare-fun m!294345 () Bool)

(assert (=> d!65029 m!294345))

(declare-fun m!294347 () Bool)

(assert (=> b!279609 m!294347))

(assert (=> b!279512 d!65029))

(declare-fun b!279628 () Bool)

(declare-fun e!178254 () Bool)

(declare-fun call!25444 () Bool)

(assert (=> b!279628 (= e!178254 call!25444)))

(declare-fun b!279629 () Bool)

(declare-fun e!178252 () Bool)

(assert (=> b!279629 (= e!178252 call!25444)))

(declare-fun bm!25441 () Bool)

(assert (=> bm!25441 (= call!25444 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!279630 () Bool)

(assert (=> b!279630 (= e!178254 e!178252)))

(declare-fun lt!138706 () (_ BitVec 64))

(assert (=> b!279630 (= lt!138706 (select (arr!6592 a!3325) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!8817 0))(
  ( (Unit!8818) )
))
(declare-fun lt!138707 () Unit!8817)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!13898 (_ BitVec 64) (_ BitVec 32)) Unit!8817)

(assert (=> b!279630 (= lt!138707 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!138706 #b00000000000000000000000000000000))))

(assert (=> b!279630 (arrayContainsKey!0 a!3325 lt!138706 #b00000000000000000000000000000000)))

(declare-fun lt!138708 () Unit!8817)

(assert (=> b!279630 (= lt!138708 lt!138707)))

(declare-fun res!142817 () Bool)

(assert (=> b!279630 (= res!142817 (= (seekEntryOrOpen!0 (select (arr!6592 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1761 #b00000000000000000000000000000000)))))

(assert (=> b!279630 (=> (not res!142817) (not e!178252))))

(declare-fun b!279631 () Bool)

(declare-fun e!178253 () Bool)

(assert (=> b!279631 (= e!178253 e!178254)))

(declare-fun c!45958 () Bool)

(assert (=> b!279631 (= c!45958 (validKeyInArray!0 (select (arr!6592 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!65037 () Bool)

(declare-fun res!142818 () Bool)

(assert (=> d!65037 (=> res!142818 e!178253)))

(assert (=> d!65037 (= res!142818 (bvsge #b00000000000000000000000000000000 (size!6944 a!3325)))))

(assert (=> d!65037 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!178253)))

(assert (= (and d!65037 (not res!142818)) b!279631))

(assert (= (and b!279631 c!45958) b!279630))

(assert (= (and b!279631 (not c!45958)) b!279628))

(assert (= (and b!279630 res!142817) b!279629))

(assert (= (or b!279629 b!279628) bm!25441))

(declare-fun m!294353 () Bool)

(assert (=> bm!25441 m!294353))

(declare-fun m!294357 () Bool)

(assert (=> b!279630 m!294357))

(declare-fun m!294359 () Bool)

(assert (=> b!279630 m!294359))

(declare-fun m!294363 () Bool)

(assert (=> b!279630 m!294363))

(assert (=> b!279630 m!294357))

(declare-fun m!294367 () Bool)

(assert (=> b!279630 m!294367))

(assert (=> b!279631 m!294357))

(assert (=> b!279631 m!294357))

(declare-fun m!294373 () Bool)

(assert (=> b!279631 m!294373))

(assert (=> b!279507 d!65037))

(declare-fun d!65041 () Bool)

(assert (=> d!65041 (= (validKeyInArray!0 k!2581) (and (not (= k!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!279517 d!65041))

(declare-fun d!65045 () Bool)

(declare-fun lt!138712 () Bool)

(assert (=> d!65045 (= lt!138712 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!188 Nil!4418)))))

(declare-fun e!178258 () Bool)

(assert (=> d!65045 (= lt!138712 e!178258)))

(declare-fun res!142821 () Bool)

(assert (=> d!65045 (=> (not res!142821) (not e!178258))))

(assert (=> d!65045 (= res!142821 (is-Cons!4417 Nil!4418))))

(assert (=> d!65045 (= (contains!1971 Nil!4418 #b0000000000000000000000000000000000000000000000000000000000000000) lt!138712)))

(declare-fun b!279636 () Bool)

(declare-fun e!178259 () Bool)

(assert (=> b!279636 (= e!178258 e!178259)))

(declare-fun res!142822 () Bool)

(assert (=> b!279636 (=> res!142822 e!178259)))

(assert (=> b!279636 (= res!142822 (= (h!5087 Nil!4418) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!279637 () Bool)

(assert (=> b!279637 (= e!178259 (contains!1971 (t!9511 Nil!4418) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!65045 res!142821) b!279636))

(assert (= (and b!279636 (not res!142822)) b!279637))

(assert (=> d!65045 m!294343))

(declare-fun m!294377 () Bool)

(assert (=> d!65045 m!294377))

(declare-fun m!294379 () Bool)

(assert (=> b!279637 m!294379))

(assert (=> b!279516 d!65045))

(declare-fun d!65047 () Bool)

(declare-fun res!142833 () Bool)

(declare-fun e!178270 () Bool)

(assert (=> d!65047 (=> res!142833 e!178270)))

(assert (=> d!65047 (= res!142833 (is-Nil!4418 Nil!4418))))

(assert (=> d!65047 (= (noDuplicate!155 Nil!4418) e!178270)))

(declare-fun b!279648 () Bool)

(declare-fun e!178271 () Bool)

(assert (=> b!279648 (= e!178270 e!178271)))

(declare-fun res!142834 () Bool)

(assert (=> b!279648 (=> (not res!142834) (not e!178271))))

(assert (=> b!279648 (= res!142834 (not (contains!1971 (t!9511 Nil!4418) (h!5087 Nil!4418))))))

(declare-fun b!279649 () Bool)

(assert (=> b!279649 (= e!178271 (noDuplicate!155 (t!9511 Nil!4418)))))

(assert (= (and d!65047 (not res!142833)) b!279648))

(assert (= (and b!279648 res!142834) b!279649))

(declare-fun m!294385 () Bool)

(assert (=> b!279648 m!294385))

(declare-fun m!294387 () Bool)

(assert (=> b!279649 m!294387))

(assert (=> b!279511 d!65047))

(declare-fun d!65051 () Bool)

(declare-fun res!142845 () Bool)

(declare-fun e!178288 () Bool)

(assert (=> d!65051 (=> res!142845 e!178288)))

(assert (=> d!65051 (= res!142845 (= (select (arr!6592 a!3325) #b00000000000000000000000000000000) k!2581))))

(assert (=> d!65051 (= (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000) e!178288)))

(declare-fun b!279672 () Bool)

(declare-fun e!178289 () Bool)

(assert (=> b!279672 (= e!178288 e!178289)))

(declare-fun res!142846 () Bool)

(assert (=> b!279672 (=> (not res!142846) (not e!178289))))

(assert (=> b!279672 (= res!142846 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6944 a!3325)))))

(declare-fun b!279673 () Bool)

(assert (=> b!279673 (= e!178289 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65051 (not res!142845)) b!279672))

(assert (= (and b!279672 res!142846) b!279673))

(assert (=> d!65051 m!294357))

(declare-fun m!294391 () Bool)

(assert (=> b!279673 m!294391))

(assert (=> b!279510 d!65051))

(declare-fun d!65055 () Bool)

(assert (=> d!65055 (= (validKeyInArray!0 (select (arr!6592 a!3325) startIndex!26)) (and (not (= (select (arr!6592 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6592 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!279515 d!65055))

(declare-fun d!65057 () Bool)

(declare-fun lt!138719 () Bool)

(assert (=> d!65057 (= lt!138719 (set.member k!2581 (content!188 Nil!4418)))))

(declare-fun e!178290 () Bool)

(assert (=> d!65057 (= lt!138719 e!178290)))

(declare-fun res!142847 () Bool)

(assert (=> d!65057 (=> (not res!142847) (not e!178290))))

(assert (=> d!65057 (= res!142847 (is-Cons!4417 Nil!4418))))

(assert (=> d!65057 (= (contains!1971 Nil!4418 k!2581) lt!138719)))

(declare-fun b!279674 () Bool)

(declare-fun e!178291 () Bool)

(assert (=> b!279674 (= e!178290 e!178291)))

(declare-fun res!142848 () Bool)

(assert (=> b!279674 (=> res!142848 e!178291)))

(assert (=> b!279674 (= res!142848 (= (h!5087 Nil!4418) k!2581))))

(declare-fun b!279675 () Bool)

(assert (=> b!279675 (= e!178291 (contains!1971 (t!9511 Nil!4418) k!2581))))

(assert (= (and d!65057 res!142847) b!279674))

(assert (= (and b!279674 (not res!142848)) b!279675))

(assert (=> d!65057 m!294343))

(declare-fun m!294393 () Bool)

(assert (=> d!65057 m!294393))

(declare-fun m!294395 () Bool)

(assert (=> b!279675 m!294395))

(assert (=> b!279514 d!65057))

(declare-fun d!65059 () Bool)

(assert (=> d!65059 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!27040 d!65059))

(declare-fun d!65069 () Bool)

(assert (=> d!65069 (= (array_inv!4546 a!3325) (bvsge (size!6944 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!27040 d!65069))

(declare-fun b!279755 () Bool)

(declare-fun e!178347 () SeekEntryResult!1761)

(declare-fun lt!138752 () SeekEntryResult!1761)

(assert (=> b!279755 (= e!178347 (Found!1761 (index!9216 lt!138752)))))

(declare-fun b!279756 () Bool)

(declare-fun e!178349 () SeekEntryResult!1761)

(assert (=> b!279756 (= e!178349 e!178347)))

(declare-fun lt!138754 () (_ BitVec 64))

(assert (=> b!279756 (= lt!138754 (select (arr!6592 a!3325) (index!9216 lt!138752)))))

(declare-fun c!45991 () Bool)

(assert (=> b!279756 (= c!45991 (= lt!138754 k!2581))))

(declare-fun b!279757 () Bool)

(declare-fun c!45990 () Bool)

(assert (=> b!279757 (= c!45990 (= lt!138754 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!178348 () SeekEntryResult!1761)

(assert (=> b!279757 (= e!178347 e!178348)))

(declare-fun b!279758 () Bool)

(assert (=> b!279758 (= e!178348 (MissingZero!1761 (index!9216 lt!138752)))))

(declare-fun d!65071 () Bool)

(declare-fun lt!138753 () SeekEntryResult!1761)

(assert (=> d!65071 (and (or (is-Undefined!1761 lt!138753) (not (is-Found!1761 lt!138753)) (and (bvsge (index!9215 lt!138753) #b00000000000000000000000000000000) (bvslt (index!9215 lt!138753) (size!6944 a!3325)))) (or (is-Undefined!1761 lt!138753) (is-Found!1761 lt!138753) (not (is-MissingZero!1761 lt!138753)) (and (bvsge (index!9214 lt!138753) #b00000000000000000000000000000000) (bvslt (index!9214 lt!138753) (size!6944 a!3325)))) (or (is-Undefined!1761 lt!138753) (is-Found!1761 lt!138753) (is-MissingZero!1761 lt!138753) (not (is-MissingVacant!1761 lt!138753)) (and (bvsge (index!9217 lt!138753) #b00000000000000000000000000000000) (bvslt (index!9217 lt!138753) (size!6944 a!3325)))) (or (is-Undefined!1761 lt!138753) (ite (is-Found!1761 lt!138753) (= (select (arr!6592 a!3325) (index!9215 lt!138753)) k!2581) (ite (is-MissingZero!1761 lt!138753) (= (select (arr!6592 a!3325) (index!9214 lt!138753)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1761 lt!138753) (= (select (arr!6592 a!3325) (index!9217 lt!138753)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65071 (= lt!138753 e!178349)))

(declare-fun c!45992 () Bool)

(assert (=> d!65071 (= c!45992 (and (is-Intermediate!1761 lt!138752) (undefined!2573 lt!138752)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13898 (_ BitVec 32)) SeekEntryResult!1761)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!65071 (= lt!138752 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868))))

(assert (=> d!65071 (validMask!0 mask!3868)))

(assert (=> d!65071 (= (seekEntryOrOpen!0 k!2581 a!3325 mask!3868) lt!138753)))

(declare-fun b!279759 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13898 (_ BitVec 32)) SeekEntryResult!1761)

(assert (=> b!279759 (= e!178348 (seekKeyOrZeroReturnVacant!0 (x!27431 lt!138752) (index!9216 lt!138752) (index!9216 lt!138752) k!2581 a!3325 mask!3868))))

(declare-fun b!279760 () Bool)

(assert (=> b!279760 (= e!178349 Undefined!1761)))

(assert (= (and d!65071 c!45992) b!279760))

(assert (= (and d!65071 (not c!45992)) b!279756))

(assert (= (and b!279756 c!45991) b!279755))

(assert (= (and b!279756 (not c!45991)) b!279757))

(assert (= (and b!279757 c!45990) b!279758))

(assert (= (and b!279757 (not c!45990)) b!279759))

(declare-fun m!294457 () Bool)

(assert (=> b!279756 m!294457))

(declare-fun m!294459 () Bool)

(assert (=> d!65071 m!294459))

(assert (=> d!65071 m!294459))

(declare-fun m!294461 () Bool)

(assert (=> d!65071 m!294461))

(declare-fun m!294463 () Bool)

(assert (=> d!65071 m!294463))

(declare-fun m!294465 () Bool)

(assert (=> d!65071 m!294465))

(assert (=> d!65071 m!294261))

(declare-fun m!294467 () Bool)

(assert (=> d!65071 m!294467))

(declare-fun m!294469 () Bool)

(assert (=> b!279759 m!294469))

(assert (=> b!279509 d!65071))

(declare-fun d!65085 () Bool)

(declare-fun res!142897 () Bool)

(declare-fun e!178370 () Bool)

(assert (=> d!65085 (=> res!142897 e!178370)))

(assert (=> d!65085 (= res!142897 (bvsge #b00000000000000000000000000000000 (size!6944 a!3325)))))

(assert (=> d!65085 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4418) e!178370)))

(declare-fun b!279786 () Bool)

(declare-fun e!178371 () Bool)

(declare-fun e!178372 () Bool)

(assert (=> b!279786 (= e!178371 e!178372)))

(declare-fun c!45998 () Bool)

(assert (=> b!279786 (= c!45998 (validKeyInArray!0 (select (arr!6592 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!279787 () Bool)

(declare-fun call!25457 () Bool)

(assert (=> b!279787 (= e!178372 call!25457)))

(declare-fun bm!25454 () Bool)

(assert (=> bm!25454 (= call!25457 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!45998 (Cons!4417 (select (arr!6592 a!3325) #b00000000000000000000000000000000) Nil!4418) Nil!4418)))))

(declare-fun b!279788 () Bool)

(assert (=> b!279788 (= e!178372 call!25457)))

(declare-fun b!279789 () Bool)

(assert (=> b!279789 (= e!178370 e!178371)))

(declare-fun res!142896 () Bool)

(assert (=> b!279789 (=> (not res!142896) (not e!178371))))

(declare-fun e!178373 () Bool)

(assert (=> b!279789 (= res!142896 (not e!178373))))

(declare-fun res!142895 () Bool)

(assert (=> b!279789 (=> (not res!142895) (not e!178373))))

(assert (=> b!279789 (= res!142895 (validKeyInArray!0 (select (arr!6592 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!279790 () Bool)

(assert (=> b!279790 (= e!178373 (contains!1971 Nil!4418 (select (arr!6592 a!3325) #b00000000000000000000000000000000)))))

