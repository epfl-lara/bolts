; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27660 () Bool)

(assert start!27660)

(declare-fun res!147837 () Bool)

(declare-fun e!180902 () Bool)

(assert (=> start!27660 (=> (not res!147837) (not e!180902))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27660 (= res!147837 (validMask!0 mask!3868))))

(assert (=> start!27660 e!180902))

(declare-datatypes ((array!14254 0))(
  ( (array!14255 (arr!6764 (Array (_ BitVec 32) (_ BitVec 64))) (size!7116 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14254)

(declare-fun array_inv!4718 (array!14254) Bool)

(assert (=> start!27660 (array_inv!4718 a!3325)))

(assert (=> start!27660 true))

(declare-fun b!285393 () Bool)

(declare-fun res!147841 () Bool)

(declare-fun e!180904 () Bool)

(assert (=> b!285393 (=> (not res!147841) (not e!180904))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285393 (= res!147841 (not (validKeyInArray!0 (select (arr!6764 a!3325) startIndex!26))))))

(declare-fun b!285394 () Bool)

(declare-fun res!147838 () Bool)

(assert (=> b!285394 (=> (not res!147838) (not e!180904))))

(assert (=> b!285394 (= res!147838 (bvsge startIndex!26 (bvsub (size!7116 a!3325) #b00000000000000000000000000000001)))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun b!285395 () Bool)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14254 (_ BitVec 32)) Bool)

(assert (=> b!285395 (= e!180904 (not (arrayForallSeekEntryOrOpenFound!0 startIndex!26 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)) mask!3868)))))

(declare-fun b!285396 () Bool)

(assert (=> b!285396 (= e!180902 e!180904)))

(declare-fun res!147843 () Bool)

(assert (=> b!285396 (=> (not res!147843) (not e!180904))))

(declare-datatypes ((SeekEntryResult!1933 0))(
  ( (MissingZero!1933 (index!9902 (_ BitVec 32))) (Found!1933 (index!9903 (_ BitVec 32))) (Intermediate!1933 (undefined!2745 Bool) (index!9904 (_ BitVec 32)) (x!28068 (_ BitVec 32))) (Undefined!1933) (MissingVacant!1933 (index!9905 (_ BitVec 32))) )
))
(declare-fun lt!140831 () SeekEntryResult!1933)

(assert (=> b!285396 (= res!147843 (or (= lt!140831 (MissingZero!1933 i!1267)) (= lt!140831 (MissingVacant!1933 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14254 (_ BitVec 32)) SeekEntryResult!1933)

(assert (=> b!285396 (= lt!140831 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!285397 () Bool)

(declare-fun res!147840 () Bool)

(assert (=> b!285397 (=> (not res!147840) (not e!180902))))

(assert (=> b!285397 (= res!147840 (validKeyInArray!0 k0!2581))))

(declare-fun b!285398 () Bool)

(declare-fun res!147845 () Bool)

(assert (=> b!285398 (=> (not res!147845) (not e!180904))))

(assert (=> b!285398 (= res!147845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!285399 () Bool)

(declare-fun res!147844 () Bool)

(assert (=> b!285399 (=> (not res!147844) (not e!180902))))

(declare-fun arrayContainsKey!0 (array!14254 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!285399 (= res!147844 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!285400 () Bool)

(declare-fun res!147842 () Bool)

(assert (=> b!285400 (=> (not res!147842) (not e!180902))))

(assert (=> b!285400 (= res!147842 (and (= (size!7116 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7116 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7116 a!3325))))))

(declare-fun b!285401 () Bool)

(declare-fun res!147839 () Bool)

(assert (=> b!285401 (=> (not res!147839) (not e!180904))))

(assert (=> b!285401 (= res!147839 (not (= startIndex!26 i!1267)))))

(declare-fun b!285402 () Bool)

(declare-fun res!147846 () Bool)

(assert (=> b!285402 (=> (not res!147846) (not e!180902))))

(declare-datatypes ((List!4593 0))(
  ( (Nil!4590) (Cons!4589 (h!5262 (_ BitVec 64)) (t!9683 List!4593)) )
))
(declare-fun arrayNoDuplicates!0 (array!14254 (_ BitVec 32) List!4593) Bool)

(assert (=> b!285402 (= res!147846 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4590))))

(assert (= (and start!27660 res!147837) b!285400))

(assert (= (and b!285400 res!147842) b!285397))

(assert (= (and b!285397 res!147840) b!285402))

(assert (= (and b!285402 res!147846) b!285399))

(assert (= (and b!285399 res!147844) b!285396))

(assert (= (and b!285396 res!147843) b!285398))

(assert (= (and b!285398 res!147845) b!285401))

(assert (= (and b!285401 res!147839) b!285393))

(assert (= (and b!285393 res!147841) b!285394))

(assert (= (and b!285394 res!147838) b!285395))

(declare-fun m!300257 () Bool)

(assert (=> b!285395 m!300257))

(declare-fun m!300259 () Bool)

(assert (=> b!285395 m!300259))

(declare-fun m!300261 () Bool)

(assert (=> b!285397 m!300261))

(declare-fun m!300263 () Bool)

(assert (=> b!285399 m!300263))

(declare-fun m!300265 () Bool)

(assert (=> b!285396 m!300265))

(declare-fun m!300267 () Bool)

(assert (=> start!27660 m!300267))

(declare-fun m!300269 () Bool)

(assert (=> start!27660 m!300269))

(declare-fun m!300271 () Bool)

(assert (=> b!285402 m!300271))

(declare-fun m!300273 () Bool)

(assert (=> b!285398 m!300273))

(declare-fun m!300275 () Bool)

(assert (=> b!285393 m!300275))

(assert (=> b!285393 m!300275))

(declare-fun m!300277 () Bool)

(assert (=> b!285393 m!300277))

(check-sat (not b!285398) (not b!285399) (not b!285393) (not start!27660) (not b!285396) (not b!285397) (not b!285395) (not b!285402))
(check-sat)
(get-model)

(declare-fun d!65675 () Bool)

(assert (=> d!65675 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!27660 d!65675))

(declare-fun d!65679 () Bool)

(assert (=> d!65679 (= (array_inv!4718 a!3325) (bvsge (size!7116 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!27660 d!65679))

(declare-fun call!25562 () Bool)

(declare-fun bm!25559 () Bool)

(assert (=> bm!25559 (= call!25562 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)) mask!3868))))

(declare-fun d!65681 () Bool)

(declare-fun res!147896 () Bool)

(declare-fun e!180939 () Bool)

(assert (=> d!65681 (=> res!147896 e!180939)))

(assert (=> d!65681 (= res!147896 (bvsge startIndex!26 (size!7116 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)))))))

(assert (=> d!65681 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!26 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)) mask!3868) e!180939)))

(declare-fun b!285462 () Bool)

(declare-fun e!180940 () Bool)

(assert (=> b!285462 (= e!180939 e!180940)))

(declare-fun c!46337 () Bool)

(assert (=> b!285462 (= c!46337 (validKeyInArray!0 (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) startIndex!26)))))

(declare-fun b!285463 () Bool)

(declare-fun e!180938 () Bool)

(assert (=> b!285463 (= e!180940 e!180938)))

(declare-fun lt!140843 () (_ BitVec 64))

(assert (=> b!285463 (= lt!140843 (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) startIndex!26))))

(declare-datatypes ((Unit!9043 0))(
  ( (Unit!9044) )
))
(declare-fun lt!140841 () Unit!9043)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14254 (_ BitVec 64) (_ BitVec 32)) Unit!9043)

(assert (=> b!285463 (= lt!140841 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)) lt!140843 startIndex!26))))

(assert (=> b!285463 (arrayContainsKey!0 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)) lt!140843 #b00000000000000000000000000000000)))

(declare-fun lt!140842 () Unit!9043)

(assert (=> b!285463 (= lt!140842 lt!140841)))

(declare-fun res!147897 () Bool)

(assert (=> b!285463 (= res!147897 (= (seekEntryOrOpen!0 (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) startIndex!26) (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)) mask!3868) (Found!1933 startIndex!26)))))

(assert (=> b!285463 (=> (not res!147897) (not e!180938))))

(declare-fun b!285464 () Bool)

(assert (=> b!285464 (= e!180940 call!25562)))

(declare-fun b!285465 () Bool)

(assert (=> b!285465 (= e!180938 call!25562)))

(assert (= (and d!65681 (not res!147896)) b!285462))

(assert (= (and b!285462 c!46337) b!285463))

(assert (= (and b!285462 (not c!46337)) b!285464))

(assert (= (and b!285463 res!147897) b!285465))

(assert (= (or b!285465 b!285464) bm!25559))

(declare-fun m!300311 () Bool)

(assert (=> bm!25559 m!300311))

(declare-fun m!300313 () Bool)

(assert (=> b!285462 m!300313))

(assert (=> b!285462 m!300313))

(declare-fun m!300315 () Bool)

(assert (=> b!285462 m!300315))

(assert (=> b!285463 m!300313))

(declare-fun m!300317 () Bool)

(assert (=> b!285463 m!300317))

(declare-fun m!300319 () Bool)

(assert (=> b!285463 m!300319))

(assert (=> b!285463 m!300313))

(declare-fun m!300321 () Bool)

(assert (=> b!285463 m!300321))

(assert (=> b!285395 d!65681))

(declare-fun bm!25560 () Bool)

(declare-fun call!25563 () Bool)

(assert (=> bm!25560 (= call!25563 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun d!65693 () Bool)

(declare-fun res!147898 () Bool)

(declare-fun e!180942 () Bool)

(assert (=> d!65693 (=> res!147898 e!180942)))

(assert (=> d!65693 (= res!147898 (bvsge #b00000000000000000000000000000000 (size!7116 a!3325)))))

(assert (=> d!65693 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!180942)))

(declare-fun b!285466 () Bool)

(declare-fun e!180943 () Bool)

(assert (=> b!285466 (= e!180942 e!180943)))

(declare-fun c!46338 () Bool)

(assert (=> b!285466 (= c!46338 (validKeyInArray!0 (select (arr!6764 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!285467 () Bool)

(declare-fun e!180941 () Bool)

(assert (=> b!285467 (= e!180943 e!180941)))

(declare-fun lt!140846 () (_ BitVec 64))

(assert (=> b!285467 (= lt!140846 (select (arr!6764 a!3325) #b00000000000000000000000000000000))))

(declare-fun lt!140844 () Unit!9043)

(assert (=> b!285467 (= lt!140844 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140846 #b00000000000000000000000000000000))))

(assert (=> b!285467 (arrayContainsKey!0 a!3325 lt!140846 #b00000000000000000000000000000000)))

(declare-fun lt!140845 () Unit!9043)

(assert (=> b!285467 (= lt!140845 lt!140844)))

(declare-fun res!147899 () Bool)

(assert (=> b!285467 (= res!147899 (= (seekEntryOrOpen!0 (select (arr!6764 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1933 #b00000000000000000000000000000000)))))

(assert (=> b!285467 (=> (not res!147899) (not e!180941))))

(declare-fun b!285468 () Bool)

(assert (=> b!285468 (= e!180943 call!25563)))

(declare-fun b!285469 () Bool)

(assert (=> b!285469 (= e!180941 call!25563)))

(assert (= (and d!65693 (not res!147898)) b!285466))

(assert (= (and b!285466 c!46338) b!285467))

(assert (= (and b!285466 (not c!46338)) b!285468))

(assert (= (and b!285467 res!147899) b!285469))

(assert (= (or b!285469 b!285468) bm!25560))

(declare-fun m!300323 () Bool)

(assert (=> bm!25560 m!300323))

(declare-fun m!300325 () Bool)

(assert (=> b!285466 m!300325))

(assert (=> b!285466 m!300325))

(declare-fun m!300327 () Bool)

(assert (=> b!285466 m!300327))

(assert (=> b!285467 m!300325))

(declare-fun m!300329 () Bool)

(assert (=> b!285467 m!300329))

(declare-fun m!300331 () Bool)

(assert (=> b!285467 m!300331))

(assert (=> b!285467 m!300325))

(declare-fun m!300333 () Bool)

(assert (=> b!285467 m!300333))

(assert (=> b!285398 d!65693))

(declare-fun d!65695 () Bool)

(assert (=> d!65695 (= (validKeyInArray!0 (select (arr!6764 a!3325) startIndex!26)) (and (not (= (select (arr!6764 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6764 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!285393 d!65695))

(declare-fun d!65697 () Bool)

(declare-fun res!147904 () Bool)

(declare-fun e!180948 () Bool)

(assert (=> d!65697 (=> res!147904 e!180948)))

(assert (=> d!65697 (= res!147904 (= (select (arr!6764 a!3325) #b00000000000000000000000000000000) k0!2581))))

(assert (=> d!65697 (= (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000) e!180948)))

(declare-fun b!285474 () Bool)

(declare-fun e!180949 () Bool)

(assert (=> b!285474 (= e!180948 e!180949)))

(declare-fun res!147905 () Bool)

(assert (=> b!285474 (=> (not res!147905) (not e!180949))))

(assert (=> b!285474 (= res!147905 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7116 a!3325)))))

(declare-fun b!285475 () Bool)

(assert (=> b!285475 (= e!180949 (arrayContainsKey!0 a!3325 k0!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65697 (not res!147904)) b!285474))

(assert (= (and b!285474 res!147905) b!285475))

(assert (=> d!65697 m!300325))

(declare-fun m!300335 () Bool)

(assert (=> b!285475 m!300335))

(assert (=> b!285399 d!65697))

(declare-fun b!285498 () Bool)

(declare-fun e!180970 () Bool)

(declare-fun call!25569 () Bool)

(assert (=> b!285498 (= e!180970 call!25569)))

(declare-fun b!285499 () Bool)

(declare-fun e!180968 () Bool)

(declare-fun contains!1999 (List!4593 (_ BitVec 64)) Bool)

(assert (=> b!285499 (= e!180968 (contains!1999 Nil!4590 (select (arr!6764 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!285500 () Bool)

(declare-fun e!180969 () Bool)

(assert (=> b!285500 (= e!180969 e!180970)))

(declare-fun c!46344 () Bool)

(assert (=> b!285500 (= c!46344 (validKeyInArray!0 (select (arr!6764 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!285501 () Bool)

(assert (=> b!285501 (= e!180970 call!25569)))

(declare-fun bm!25566 () Bool)

(assert (=> bm!25566 (= call!25569 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46344 (Cons!4589 (select (arr!6764 a!3325) #b00000000000000000000000000000000) Nil!4590) Nil!4590)))))

(declare-fun d!65699 () Bool)

(declare-fun res!147918 () Bool)

(declare-fun e!180967 () Bool)

(assert (=> d!65699 (=> res!147918 e!180967)))

(assert (=> d!65699 (= res!147918 (bvsge #b00000000000000000000000000000000 (size!7116 a!3325)))))

(assert (=> d!65699 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4590) e!180967)))

(declare-fun b!285502 () Bool)

(assert (=> b!285502 (= e!180967 e!180969)))

(declare-fun res!147920 () Bool)

(assert (=> b!285502 (=> (not res!147920) (not e!180969))))

(assert (=> b!285502 (= res!147920 (not e!180968))))

(declare-fun res!147919 () Bool)

(assert (=> b!285502 (=> (not res!147919) (not e!180968))))

(assert (=> b!285502 (= res!147919 (validKeyInArray!0 (select (arr!6764 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!65699 (not res!147918)) b!285502))

(assert (= (and b!285502 res!147919) b!285499))

(assert (= (and b!285502 res!147920) b!285500))

(assert (= (and b!285500 c!46344) b!285501))

(assert (= (and b!285500 (not c!46344)) b!285498))

(assert (= (or b!285501 b!285498) bm!25566))

(assert (=> b!285499 m!300325))

(assert (=> b!285499 m!300325))

(declare-fun m!300345 () Bool)

(assert (=> b!285499 m!300345))

(assert (=> b!285500 m!300325))

(assert (=> b!285500 m!300325))

(assert (=> b!285500 m!300327))

(assert (=> bm!25566 m!300325))

(declare-fun m!300347 () Bool)

(assert (=> bm!25566 m!300347))

(assert (=> b!285502 m!300325))

(assert (=> b!285502 m!300325))

(assert (=> b!285502 m!300327))

(assert (=> b!285402 d!65699))

(declare-fun d!65707 () Bool)

(assert (=> d!65707 (= (validKeyInArray!0 k0!2581) (and (not (= k0!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!285397 d!65707))

(declare-fun b!285535 () Bool)

(declare-fun e!180993 () SeekEntryResult!1933)

(declare-fun lt!140880 () SeekEntryResult!1933)

(assert (=> b!285535 (= e!180993 (Found!1933 (index!9904 lt!140880)))))

(declare-fun b!285536 () Bool)

(declare-fun e!180991 () SeekEntryResult!1933)

(assert (=> b!285536 (= e!180991 (MissingZero!1933 (index!9904 lt!140880)))))

(declare-fun b!285537 () Bool)

(declare-fun c!46356 () Bool)

(declare-fun lt!140878 () (_ BitVec 64))

(assert (=> b!285537 (= c!46356 (= lt!140878 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!285537 (= e!180993 e!180991)))

(declare-fun b!285538 () Bool)

(declare-fun e!180992 () SeekEntryResult!1933)

(assert (=> b!285538 (= e!180992 e!180993)))

(assert (=> b!285538 (= lt!140878 (select (arr!6764 a!3325) (index!9904 lt!140880)))))

(declare-fun c!46358 () Bool)

(assert (=> b!285538 (= c!46358 (= lt!140878 k0!2581))))

(declare-fun b!285539 () Bool)

(assert (=> b!285539 (= e!180992 Undefined!1933)))

(declare-fun d!65709 () Bool)

(declare-fun lt!140879 () SeekEntryResult!1933)

(get-info :version)

(assert (=> d!65709 (and (or ((_ is Undefined!1933) lt!140879) (not ((_ is Found!1933) lt!140879)) (and (bvsge (index!9903 lt!140879) #b00000000000000000000000000000000) (bvslt (index!9903 lt!140879) (size!7116 a!3325)))) (or ((_ is Undefined!1933) lt!140879) ((_ is Found!1933) lt!140879) (not ((_ is MissingZero!1933) lt!140879)) (and (bvsge (index!9902 lt!140879) #b00000000000000000000000000000000) (bvslt (index!9902 lt!140879) (size!7116 a!3325)))) (or ((_ is Undefined!1933) lt!140879) ((_ is Found!1933) lt!140879) ((_ is MissingZero!1933) lt!140879) (not ((_ is MissingVacant!1933) lt!140879)) (and (bvsge (index!9905 lt!140879) #b00000000000000000000000000000000) (bvslt (index!9905 lt!140879) (size!7116 a!3325)))) (or ((_ is Undefined!1933) lt!140879) (ite ((_ is Found!1933) lt!140879) (= (select (arr!6764 a!3325) (index!9903 lt!140879)) k0!2581) (ite ((_ is MissingZero!1933) lt!140879) (= (select (arr!6764 a!3325) (index!9902 lt!140879)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1933) lt!140879) (= (select (arr!6764 a!3325) (index!9905 lt!140879)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65709 (= lt!140879 e!180992)))

(declare-fun c!46359 () Bool)

(assert (=> d!65709 (= c!46359 (and ((_ is Intermediate!1933) lt!140880) (undefined!2745 lt!140880)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14254 (_ BitVec 32)) SeekEntryResult!1933)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!65709 (= lt!140880 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2581 mask!3868) k0!2581 a!3325 mask!3868))))

(assert (=> d!65709 (validMask!0 mask!3868)))

(assert (=> d!65709 (= (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868) lt!140879)))

(declare-fun b!285540 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14254 (_ BitVec 32)) SeekEntryResult!1933)

(assert (=> b!285540 (= e!180991 (seekKeyOrZeroReturnVacant!0 (x!28068 lt!140880) (index!9904 lt!140880) (index!9904 lt!140880) k0!2581 a!3325 mask!3868))))

(assert (= (and d!65709 c!46359) b!285539))

(assert (= (and d!65709 (not c!46359)) b!285538))

(assert (= (and b!285538 c!46358) b!285535))

(assert (= (and b!285538 (not c!46358)) b!285537))

(assert (= (and b!285537 c!46356) b!285536))

(assert (= (and b!285537 (not c!46356)) b!285540))

(declare-fun m!300373 () Bool)

(assert (=> b!285538 m!300373))

(declare-fun m!300375 () Bool)

(assert (=> d!65709 m!300375))

(declare-fun m!300377 () Bool)

(assert (=> d!65709 m!300377))

(declare-fun m!300379 () Bool)

(assert (=> d!65709 m!300379))

(declare-fun m!300381 () Bool)

(assert (=> d!65709 m!300381))

(declare-fun m!300383 () Bool)

(assert (=> d!65709 m!300383))

(assert (=> d!65709 m!300267))

(assert (=> d!65709 m!300375))

(declare-fun m!300385 () Bool)

(assert (=> b!285540 m!300385))

(assert (=> b!285396 d!65709))

(check-sat (not b!285502) (not b!285467) (not d!65709) (not bm!25560) (not b!285475) (not b!285500) (not b!285466) (not b!285499) (not bm!25559) (not bm!25566) (not b!285462) (not b!285540) (not b!285463))
(check-sat)
(get-model)

(declare-fun d!65737 () Bool)

(assert (=> d!65737 (arrayContainsKey!0 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)) lt!140843 #b00000000000000000000000000000000)))

(declare-fun lt!140915 () Unit!9043)

(declare-fun choose!13 (array!14254 (_ BitVec 64) (_ BitVec 32)) Unit!9043)

(assert (=> d!65737 (= lt!140915 (choose!13 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)) lt!140843 startIndex!26))))

(assert (=> d!65737 (bvsge startIndex!26 #b00000000000000000000000000000000)))

(assert (=> d!65737 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)) lt!140843 startIndex!26) lt!140915)))

(declare-fun bs!10144 () Bool)

(assert (= bs!10144 d!65737))

(assert (=> bs!10144 m!300319))

(declare-fun m!300461 () Bool)

(assert (=> bs!10144 m!300461))

(assert (=> b!285463 d!65737))

(declare-fun d!65741 () Bool)

(declare-fun res!147958 () Bool)

(declare-fun e!181058 () Bool)

(assert (=> d!65741 (=> res!147958 e!181058)))

(assert (=> d!65741 (= res!147958 (= (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) #b00000000000000000000000000000000) lt!140843))))

(assert (=> d!65741 (= (arrayContainsKey!0 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)) lt!140843 #b00000000000000000000000000000000) e!181058)))

(declare-fun b!285647 () Bool)

(declare-fun e!181059 () Bool)

(assert (=> b!285647 (= e!181058 e!181059)))

(declare-fun res!147959 () Bool)

(assert (=> b!285647 (=> (not res!147959) (not e!181059))))

(assert (=> b!285647 (= res!147959 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7116 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)))))))

(declare-fun b!285648 () Bool)

(assert (=> b!285648 (= e!181059 (arrayContainsKey!0 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)) lt!140843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65741 (not res!147958)) b!285647))

(assert (= (and b!285647 res!147959) b!285648))

(declare-fun m!300463 () Bool)

(assert (=> d!65741 m!300463))

(declare-fun m!300465 () Bool)

(assert (=> b!285648 m!300465))

(assert (=> b!285463 d!65741))

(declare-fun b!285649 () Bool)

(declare-fun e!181062 () SeekEntryResult!1933)

(declare-fun lt!140918 () SeekEntryResult!1933)

(assert (=> b!285649 (= e!181062 (Found!1933 (index!9904 lt!140918)))))

(declare-fun b!285650 () Bool)

(declare-fun e!181060 () SeekEntryResult!1933)

(assert (=> b!285650 (= e!181060 (MissingZero!1933 (index!9904 lt!140918)))))

(declare-fun b!285651 () Bool)

(declare-fun c!46399 () Bool)

(declare-fun lt!140916 () (_ BitVec 64))

(assert (=> b!285651 (= c!46399 (= lt!140916 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!285651 (= e!181062 e!181060)))

(declare-fun b!285652 () Bool)

(declare-fun e!181061 () SeekEntryResult!1933)

(assert (=> b!285652 (= e!181061 e!181062)))

(assert (=> b!285652 (= lt!140916 (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) (index!9904 lt!140918)))))

(declare-fun c!46400 () Bool)

(assert (=> b!285652 (= c!46400 (= lt!140916 (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) startIndex!26)))))

(declare-fun b!285653 () Bool)

(assert (=> b!285653 (= e!181061 Undefined!1933)))

(declare-fun d!65743 () Bool)

(declare-fun lt!140917 () SeekEntryResult!1933)

(assert (=> d!65743 (and (or ((_ is Undefined!1933) lt!140917) (not ((_ is Found!1933) lt!140917)) (and (bvsge (index!9903 lt!140917) #b00000000000000000000000000000000) (bvslt (index!9903 lt!140917) (size!7116 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)))))) (or ((_ is Undefined!1933) lt!140917) ((_ is Found!1933) lt!140917) (not ((_ is MissingZero!1933) lt!140917)) (and (bvsge (index!9902 lt!140917) #b00000000000000000000000000000000) (bvslt (index!9902 lt!140917) (size!7116 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)))))) (or ((_ is Undefined!1933) lt!140917) ((_ is Found!1933) lt!140917) ((_ is MissingZero!1933) lt!140917) (not ((_ is MissingVacant!1933) lt!140917)) (and (bvsge (index!9905 lt!140917) #b00000000000000000000000000000000) (bvslt (index!9905 lt!140917) (size!7116 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)))))) (or ((_ is Undefined!1933) lt!140917) (ite ((_ is Found!1933) lt!140917) (= (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) (index!9903 lt!140917)) (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) startIndex!26)) (ite ((_ is MissingZero!1933) lt!140917) (= (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) (index!9902 lt!140917)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1933) lt!140917) (= (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) (index!9905 lt!140917)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65743 (= lt!140917 e!181061)))

(declare-fun c!46401 () Bool)

(assert (=> d!65743 (= c!46401 (and ((_ is Intermediate!1933) lt!140918) (undefined!2745 lt!140918)))))

(assert (=> d!65743 (= lt!140918 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) startIndex!26) mask!3868) (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) startIndex!26) (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)) mask!3868))))

(assert (=> d!65743 (validMask!0 mask!3868)))

(assert (=> d!65743 (= (seekEntryOrOpen!0 (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) startIndex!26) (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)) mask!3868) lt!140917)))

(declare-fun b!285654 () Bool)

(assert (=> b!285654 (= e!181060 (seekKeyOrZeroReturnVacant!0 (x!28068 lt!140918) (index!9904 lt!140918) (index!9904 lt!140918) (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) startIndex!26) (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)) mask!3868))))

(assert (= (and d!65743 c!46401) b!285653))

(assert (= (and d!65743 (not c!46401)) b!285652))

(assert (= (and b!285652 c!46400) b!285649))

(assert (= (and b!285652 (not c!46400)) b!285651))

(assert (= (and b!285651 c!46399) b!285650))

(assert (= (and b!285651 (not c!46399)) b!285654))

(declare-fun m!300467 () Bool)

(assert (=> b!285652 m!300467))

(declare-fun m!300469 () Bool)

(assert (=> d!65743 m!300469))

(assert (=> d!65743 m!300313))

(declare-fun m!300471 () Bool)

(assert (=> d!65743 m!300471))

(declare-fun m!300473 () Bool)

(assert (=> d!65743 m!300473))

(declare-fun m!300475 () Bool)

(assert (=> d!65743 m!300475))

(declare-fun m!300477 () Bool)

(assert (=> d!65743 m!300477))

(assert (=> d!65743 m!300267))

(assert (=> d!65743 m!300313))

(assert (=> d!65743 m!300469))

(assert (=> b!285654 m!300313))

(declare-fun m!300479 () Bool)

(assert (=> b!285654 m!300479))

(assert (=> b!285463 d!65743))

(declare-fun d!65745 () Bool)

(assert (=> d!65745 (= (validKeyInArray!0 (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) startIndex!26)) (and (not (= (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!285462 d!65745))

(declare-fun d!65747 () Bool)

(assert (=> d!65747 (= (validKeyInArray!0 (select (arr!6764 a!3325) #b00000000000000000000000000000000)) (and (not (= (select (arr!6764 a!3325) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6764 a!3325) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!285500 d!65747))

(declare-fun b!285707 () Bool)

(declare-fun e!181102 () Bool)

(declare-fun e!181098 () Bool)

(assert (=> b!285707 (= e!181102 e!181098)))

(declare-fun res!147984 () Bool)

(declare-fun lt!140946 () SeekEntryResult!1933)

(assert (=> b!285707 (= res!147984 (and ((_ is Intermediate!1933) lt!140946) (not (undefined!2745 lt!140946)) (bvslt (x!28068 lt!140946) #b01111111111111111111111111111110) (bvsge (x!28068 lt!140946) #b00000000000000000000000000000000) (bvsge (x!28068 lt!140946) #b00000000000000000000000000000000)))))

(assert (=> b!285707 (=> (not res!147984) (not e!181098))))

(declare-fun b!285708 () Bool)

(assert (=> b!285708 (and (bvsge (index!9904 lt!140946) #b00000000000000000000000000000000) (bvslt (index!9904 lt!140946) (size!7116 a!3325)))))

(declare-fun res!147985 () Bool)

(assert (=> b!285708 (= res!147985 (= (select (arr!6764 a!3325) (index!9904 lt!140946)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!181100 () Bool)

(assert (=> b!285708 (=> res!147985 e!181100)))

(declare-fun b!285709 () Bool)

(declare-fun e!181101 () SeekEntryResult!1933)

(assert (=> b!285709 (= e!181101 (Intermediate!1933 false (toIndex!0 k0!2581 mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!285710 () Bool)

(assert (=> b!285710 (and (bvsge (index!9904 lt!140946) #b00000000000000000000000000000000) (bvslt (index!9904 lt!140946) (size!7116 a!3325)))))

(assert (=> b!285710 (= e!181100 (= (select (arr!6764 a!3325) (index!9904 lt!140946)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!285711 () Bool)

(assert (=> b!285711 (= e!181102 (bvsge (x!28068 lt!140946) #b01111111111111111111111111111110))))

(declare-fun b!285712 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!285712 (= e!181101 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2581 mask!3868) #b00000000000000000000000000000000 mask!3868) k0!2581 a!3325 mask!3868))))

(declare-fun d!65749 () Bool)

(assert (=> d!65749 e!181102))

(declare-fun c!46418 () Bool)

(assert (=> d!65749 (= c!46418 (and ((_ is Intermediate!1933) lt!140946) (undefined!2745 lt!140946)))))

(declare-fun e!181099 () SeekEntryResult!1933)

(assert (=> d!65749 (= lt!140946 e!181099)))

(declare-fun c!46416 () Bool)

(assert (=> d!65749 (= c!46416 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!140945 () (_ BitVec 64))

(assert (=> d!65749 (= lt!140945 (select (arr!6764 a!3325) (toIndex!0 k0!2581 mask!3868)))))

(assert (=> d!65749 (validMask!0 mask!3868)))

(assert (=> d!65749 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2581 mask!3868) k0!2581 a!3325 mask!3868) lt!140946)))

(declare-fun b!285706 () Bool)

(assert (=> b!285706 (and (bvsge (index!9904 lt!140946) #b00000000000000000000000000000000) (bvslt (index!9904 lt!140946) (size!7116 a!3325)))))

(declare-fun res!147983 () Bool)

(assert (=> b!285706 (= res!147983 (= (select (arr!6764 a!3325) (index!9904 lt!140946)) k0!2581))))

(assert (=> b!285706 (=> res!147983 e!181100)))

(assert (=> b!285706 (= e!181098 e!181100)))

(declare-fun b!285713 () Bool)

(assert (=> b!285713 (= e!181099 (Intermediate!1933 true (toIndex!0 k0!2581 mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!285714 () Bool)

(assert (=> b!285714 (= e!181099 e!181101)))

(declare-fun c!46417 () Bool)

(assert (=> b!285714 (= c!46417 (or (= lt!140945 k0!2581) (= (bvadd lt!140945 lt!140945) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!65749 c!46416) b!285713))

(assert (= (and d!65749 (not c!46416)) b!285714))

(assert (= (and b!285714 c!46417) b!285709))

(assert (= (and b!285714 (not c!46417)) b!285712))

(assert (= (and d!65749 c!46418) b!285711))

(assert (= (and d!65749 (not c!46418)) b!285707))

(assert (= (and b!285707 res!147984) b!285706))

(assert (= (and b!285706 (not res!147983)) b!285708))

(assert (= (and b!285708 (not res!147985)) b!285710))

(assert (=> b!285712 m!300375))

(declare-fun m!300543 () Bool)

(assert (=> b!285712 m!300543))

(assert (=> b!285712 m!300543))

(declare-fun m!300545 () Bool)

(assert (=> b!285712 m!300545))

(declare-fun m!300547 () Bool)

(assert (=> b!285708 m!300547))

(assert (=> b!285706 m!300547))

(assert (=> b!285710 m!300547))

(assert (=> d!65749 m!300375))

(declare-fun m!300549 () Bool)

(assert (=> d!65749 m!300549))

(assert (=> d!65749 m!300267))

(assert (=> d!65709 d!65749))

(declare-fun d!65775 () Bool)

(declare-fun lt!140952 () (_ BitVec 32))

(declare-fun lt!140951 () (_ BitVec 32))

(assert (=> d!65775 (= lt!140952 (bvmul (bvxor lt!140951 (bvlshr lt!140951 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!65775 (= lt!140951 ((_ extract 31 0) (bvand (bvxor k0!2581 (bvlshr k0!2581 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!65775 (and (bvsge mask!3868 #b00000000000000000000000000000000) (let ((res!147986 (let ((h!5265 ((_ extract 31 0) (bvand (bvxor k0!2581 (bvlshr k0!2581 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!28074 (bvmul (bvxor h!5265 (bvlshr h!5265 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!28074 (bvlshr x!28074 #b00000000000000000000000000001101)) mask!3868))))) (and (bvslt res!147986 (bvadd mask!3868 #b00000000000000000000000000000001)) (bvsge res!147986 #b00000000000000000000000000000000))))))

(assert (=> d!65775 (= (toIndex!0 k0!2581 mask!3868) (bvand (bvxor lt!140952 (bvlshr lt!140952 #b00000000000000000000000000001101)) mask!3868))))

(assert (=> d!65709 d!65775))

(assert (=> d!65709 d!65675))

(declare-fun call!25581 () Bool)

(declare-fun bm!25578 () Bool)

(assert (=> bm!25578 (= call!25581 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)) mask!3868))))

(declare-fun d!65777 () Bool)

(declare-fun res!147987 () Bool)

(declare-fun e!181104 () Bool)

(assert (=> d!65777 (=> res!147987 e!181104)))

(assert (=> d!65777 (= res!147987 (bvsge (bvadd startIndex!26 #b00000000000000000000000000000001) (size!7116 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)))))))

(assert (=> d!65777 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)) mask!3868) e!181104)))

(declare-fun b!285715 () Bool)

(declare-fun e!181105 () Bool)

(assert (=> b!285715 (= e!181104 e!181105)))

(declare-fun c!46419 () Bool)

(assert (=> b!285715 (= c!46419 (validKeyInArray!0 (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) (bvadd startIndex!26 #b00000000000000000000000000000001))))))

(declare-fun b!285716 () Bool)

(declare-fun e!181103 () Bool)

(assert (=> b!285716 (= e!181105 e!181103)))

(declare-fun lt!140955 () (_ BitVec 64))

(assert (=> b!285716 (= lt!140955 (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) (bvadd startIndex!26 #b00000000000000000000000000000001)))))

(declare-fun lt!140953 () Unit!9043)

(assert (=> b!285716 (= lt!140953 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)) lt!140955 (bvadd startIndex!26 #b00000000000000000000000000000001)))))

(assert (=> b!285716 (arrayContainsKey!0 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)) lt!140955 #b00000000000000000000000000000000)))

(declare-fun lt!140954 () Unit!9043)

(assert (=> b!285716 (= lt!140954 lt!140953)))

(declare-fun res!147988 () Bool)

(assert (=> b!285716 (= res!147988 (= (seekEntryOrOpen!0 (select (arr!6764 (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325))) (bvadd startIndex!26 #b00000000000000000000000000000001)) (array!14255 (store (arr!6764 a!3325) i!1267 k0!2581) (size!7116 a!3325)) mask!3868) (Found!1933 (bvadd startIndex!26 #b00000000000000000000000000000001))))))

(assert (=> b!285716 (=> (not res!147988) (not e!181103))))

(declare-fun b!285717 () Bool)

(assert (=> b!285717 (= e!181105 call!25581)))

(declare-fun b!285718 () Bool)

(assert (=> b!285718 (= e!181103 call!25581)))

(assert (= (and d!65777 (not res!147987)) b!285715))

(assert (= (and b!285715 c!46419) b!285716))

(assert (= (and b!285715 (not c!46419)) b!285717))

(assert (= (and b!285716 res!147988) b!285718))

(assert (= (or b!285718 b!285717) bm!25578))

(declare-fun m!300551 () Bool)

(assert (=> bm!25578 m!300551))

(declare-fun m!300553 () Bool)

(assert (=> b!285715 m!300553))

(assert (=> b!285715 m!300553))

(declare-fun m!300555 () Bool)

(assert (=> b!285715 m!300555))

(assert (=> b!285716 m!300553))

(declare-fun m!300557 () Bool)

(assert (=> b!285716 m!300557))

(declare-fun m!300559 () Bool)

(assert (=> b!285716 m!300559))

(assert (=> b!285716 m!300553))

(declare-fun m!300561 () Bool)

(assert (=> b!285716 m!300561))

(assert (=> bm!25559 d!65777))

(declare-fun d!65779 () Bool)

(declare-fun lt!140958 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!194 (List!4593) (InoxSet (_ BitVec 64)))

(assert (=> d!65779 (= lt!140958 (select (content!194 Nil!4590) (select (arr!6764 a!3325) #b00000000000000000000000000000000)))))

(declare-fun e!181111 () Bool)

(assert (=> d!65779 (= lt!140958 e!181111)))

(declare-fun res!147994 () Bool)

(assert (=> d!65779 (=> (not res!147994) (not e!181111))))

(assert (=> d!65779 (= res!147994 ((_ is Cons!4589) Nil!4590))))

(assert (=> d!65779 (= (contains!1999 Nil!4590 (select (arr!6764 a!3325) #b00000000000000000000000000000000)) lt!140958)))

(declare-fun b!285723 () Bool)

(declare-fun e!181110 () Bool)

(assert (=> b!285723 (= e!181111 e!181110)))

(declare-fun res!147993 () Bool)

(assert (=> b!285723 (=> res!147993 e!181110)))

(assert (=> b!285723 (= res!147993 (= (h!5262 Nil!4590) (select (arr!6764 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!285724 () Bool)

(assert (=> b!285724 (= e!181110 (contains!1999 (t!9683 Nil!4590) (select (arr!6764 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!65779 res!147994) b!285723))

(assert (= (and b!285723 (not res!147993)) b!285724))

(declare-fun m!300563 () Bool)

(assert (=> d!65779 m!300563))

(assert (=> d!65779 m!300325))

(declare-fun m!300565 () Bool)

(assert (=> d!65779 m!300565))

(assert (=> b!285724 m!300325))

(declare-fun m!300567 () Bool)

(assert (=> b!285724 m!300567))

(assert (=> b!285499 d!65779))

(declare-fun d!65781 () Bool)

(declare-fun res!147995 () Bool)

(declare-fun e!181112 () Bool)

(assert (=> d!65781 (=> res!147995 e!181112)))

(assert (=> d!65781 (= res!147995 (= (select (arr!6764 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k0!2581))))

(assert (=> d!65781 (= (arrayContainsKey!0 a!3325 k0!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!181112)))

(declare-fun b!285725 () Bool)

(declare-fun e!181113 () Bool)

(assert (=> b!285725 (= e!181112 e!181113)))

(declare-fun res!147996 () Bool)

(assert (=> b!285725 (=> (not res!147996) (not e!181113))))

(assert (=> b!285725 (= res!147996 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!7116 a!3325)))))

(declare-fun b!285726 () Bool)

(assert (=> b!285726 (= e!181113 (arrayContainsKey!0 a!3325 k0!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!65781 (not res!147995)) b!285725))

(assert (= (and b!285725 res!147996) b!285726))

(declare-fun m!300569 () Bool)

(assert (=> d!65781 m!300569))

(declare-fun m!300571 () Bool)

(assert (=> b!285726 m!300571))

(assert (=> b!285475 d!65781))

(assert (=> b!285466 d!65747))

(declare-fun b!285763 () Bool)

(declare-fun e!181135 () SeekEntryResult!1933)

(assert (=> b!285763 (= e!181135 Undefined!1933)))

(declare-fun b!285764 () Bool)

(declare-fun e!181134 () SeekEntryResult!1933)

(assert (=> b!285764 (= e!181134 (Found!1933 (index!9904 lt!140880)))))

(declare-fun b!285765 () Bool)

(assert (=> b!285765 (= e!181135 e!181134)))

(declare-fun c!46437 () Bool)

(declare-fun lt!140973 () (_ BitVec 64))

(assert (=> b!285765 (= c!46437 (= lt!140973 k0!2581))))

(declare-fun b!285767 () Bool)

(declare-fun e!181136 () SeekEntryResult!1933)

(assert (=> b!285767 (= e!181136 (MissingVacant!1933 (index!9904 lt!140880)))))

(declare-fun b!285768 () Bool)

(declare-fun c!46436 () Bool)

(assert (=> b!285768 (= c!46436 (= lt!140973 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!285768 (= e!181134 e!181136)))

(declare-fun b!285766 () Bool)

(assert (=> b!285766 (= e!181136 (seekKeyOrZeroReturnVacant!0 (bvadd (x!28068 lt!140880) #b00000000000000000000000000000001) (nextIndex!0 (index!9904 lt!140880) (x!28068 lt!140880) mask!3868) (index!9904 lt!140880) k0!2581 a!3325 mask!3868))))

(declare-fun lt!140972 () SeekEntryResult!1933)

(declare-fun d!65783 () Bool)

(assert (=> d!65783 (and (or ((_ is Undefined!1933) lt!140972) (not ((_ is Found!1933) lt!140972)) (and (bvsge (index!9903 lt!140972) #b00000000000000000000000000000000) (bvslt (index!9903 lt!140972) (size!7116 a!3325)))) (or ((_ is Undefined!1933) lt!140972) ((_ is Found!1933) lt!140972) (not ((_ is MissingVacant!1933) lt!140972)) (not (= (index!9905 lt!140972) (index!9904 lt!140880))) (and (bvsge (index!9905 lt!140972) #b00000000000000000000000000000000) (bvslt (index!9905 lt!140972) (size!7116 a!3325)))) (or ((_ is Undefined!1933) lt!140972) (ite ((_ is Found!1933) lt!140972) (= (select (arr!6764 a!3325) (index!9903 lt!140972)) k0!2581) (and ((_ is MissingVacant!1933) lt!140972) (= (index!9905 lt!140972) (index!9904 lt!140880)) (= (select (arr!6764 a!3325) (index!9905 lt!140972)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!65783 (= lt!140972 e!181135)))

(declare-fun c!46438 () Bool)

(assert (=> d!65783 (= c!46438 (bvsge (x!28068 lt!140880) #b01111111111111111111111111111110))))

(assert (=> d!65783 (= lt!140973 (select (arr!6764 a!3325) (index!9904 lt!140880)))))

(assert (=> d!65783 (validMask!0 mask!3868)))

(assert (=> d!65783 (= (seekKeyOrZeroReturnVacant!0 (x!28068 lt!140880) (index!9904 lt!140880) (index!9904 lt!140880) k0!2581 a!3325 mask!3868) lt!140972)))

(assert (= (and d!65783 c!46438) b!285763))

(assert (= (and d!65783 (not c!46438)) b!285765))

(assert (= (and b!285765 c!46437) b!285764))

(assert (= (and b!285765 (not c!46437)) b!285768))

(assert (= (and b!285768 c!46436) b!285767))

(assert (= (and b!285768 (not c!46436)) b!285766))

(declare-fun m!300597 () Bool)

(assert (=> b!285766 m!300597))

(assert (=> b!285766 m!300597))

(declare-fun m!300599 () Bool)

(assert (=> b!285766 m!300599))

(declare-fun m!300601 () Bool)

(assert (=> d!65783 m!300601))

(declare-fun m!300603 () Bool)

(assert (=> d!65783 m!300603))

(assert (=> d!65783 m!300373))

(assert (=> d!65783 m!300267))

(assert (=> b!285540 d!65783))

(declare-fun d!65795 () Bool)

(assert (=> d!65795 (arrayContainsKey!0 a!3325 lt!140846 #b00000000000000000000000000000000)))

(declare-fun lt!140976 () Unit!9043)

(assert (=> d!65795 (= lt!140976 (choose!13 a!3325 lt!140846 #b00000000000000000000000000000000))))

(assert (=> d!65795 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!65795 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140846 #b00000000000000000000000000000000) lt!140976)))

(declare-fun bs!10147 () Bool)

(assert (= bs!10147 d!65795))

(assert (=> bs!10147 m!300331))

(declare-fun m!300605 () Bool)

(assert (=> bs!10147 m!300605))

(assert (=> b!285467 d!65795))

(declare-fun d!65797 () Bool)

(declare-fun res!148001 () Bool)

(declare-fun e!181137 () Bool)

(assert (=> d!65797 (=> res!148001 e!181137)))

(assert (=> d!65797 (= res!148001 (= (select (arr!6764 a!3325) #b00000000000000000000000000000000) lt!140846))))

(assert (=> d!65797 (= (arrayContainsKey!0 a!3325 lt!140846 #b00000000000000000000000000000000) e!181137)))

(declare-fun b!285769 () Bool)

(declare-fun e!181138 () Bool)

(assert (=> b!285769 (= e!181137 e!181138)))

(declare-fun res!148002 () Bool)

(assert (=> b!285769 (=> (not res!148002) (not e!181138))))

(assert (=> b!285769 (= res!148002 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7116 a!3325)))))

(declare-fun b!285770 () Bool)

(assert (=> b!285770 (= e!181138 (arrayContainsKey!0 a!3325 lt!140846 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65797 (not res!148001)) b!285769))

(assert (= (and b!285769 res!148002) b!285770))

(assert (=> d!65797 m!300325))

(declare-fun m!300607 () Bool)

(assert (=> b!285770 m!300607))

(assert (=> b!285467 d!65797))

(declare-fun b!285771 () Bool)

(declare-fun e!181141 () SeekEntryResult!1933)

(declare-fun lt!140980 () SeekEntryResult!1933)

(assert (=> b!285771 (= e!181141 (Found!1933 (index!9904 lt!140980)))))

(declare-fun b!285772 () Bool)

(declare-fun e!181139 () SeekEntryResult!1933)

(assert (=> b!285772 (= e!181139 (MissingZero!1933 (index!9904 lt!140980)))))

(declare-fun b!285773 () Bool)

(declare-fun c!46439 () Bool)

(declare-fun lt!140977 () (_ BitVec 64))

(assert (=> b!285773 (= c!46439 (= lt!140977 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!285773 (= e!181141 e!181139)))

(declare-fun b!285774 () Bool)

(declare-fun e!181140 () SeekEntryResult!1933)

(assert (=> b!285774 (= e!181140 e!181141)))

(assert (=> b!285774 (= lt!140977 (select (arr!6764 a!3325) (index!9904 lt!140980)))))

(declare-fun c!46440 () Bool)

(assert (=> b!285774 (= c!46440 (= lt!140977 (select (arr!6764 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!285775 () Bool)

(assert (=> b!285775 (= e!181140 Undefined!1933)))

(declare-fun d!65799 () Bool)

(declare-fun lt!140979 () SeekEntryResult!1933)

(assert (=> d!65799 (and (or ((_ is Undefined!1933) lt!140979) (not ((_ is Found!1933) lt!140979)) (and (bvsge (index!9903 lt!140979) #b00000000000000000000000000000000) (bvslt (index!9903 lt!140979) (size!7116 a!3325)))) (or ((_ is Undefined!1933) lt!140979) ((_ is Found!1933) lt!140979) (not ((_ is MissingZero!1933) lt!140979)) (and (bvsge (index!9902 lt!140979) #b00000000000000000000000000000000) (bvslt (index!9902 lt!140979) (size!7116 a!3325)))) (or ((_ is Undefined!1933) lt!140979) ((_ is Found!1933) lt!140979) ((_ is MissingZero!1933) lt!140979) (not ((_ is MissingVacant!1933) lt!140979)) (and (bvsge (index!9905 lt!140979) #b00000000000000000000000000000000) (bvslt (index!9905 lt!140979) (size!7116 a!3325)))) (or ((_ is Undefined!1933) lt!140979) (ite ((_ is Found!1933) lt!140979) (= (select (arr!6764 a!3325) (index!9903 lt!140979)) (select (arr!6764 a!3325) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!1933) lt!140979) (= (select (arr!6764 a!3325) (index!9902 lt!140979)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1933) lt!140979) (= (select (arr!6764 a!3325) (index!9905 lt!140979)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65799 (= lt!140979 e!181140)))

(declare-fun c!46441 () Bool)

(assert (=> d!65799 (= c!46441 (and ((_ is Intermediate!1933) lt!140980) (undefined!2745 lt!140980)))))

(assert (=> d!65799 (= lt!140980 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6764 a!3325) #b00000000000000000000000000000000) mask!3868) (select (arr!6764 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868))))

(assert (=> d!65799 (validMask!0 mask!3868)))

(assert (=> d!65799 (= (seekEntryOrOpen!0 (select (arr!6764 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) lt!140979)))

(declare-fun b!285776 () Bool)

(assert (=> b!285776 (= e!181139 (seekKeyOrZeroReturnVacant!0 (x!28068 lt!140980) (index!9904 lt!140980) (index!9904 lt!140980) (select (arr!6764 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868))))

(assert (= (and d!65799 c!46441) b!285775))

(assert (= (and d!65799 (not c!46441)) b!285774))

(assert (= (and b!285774 c!46440) b!285771))

(assert (= (and b!285774 (not c!46440)) b!285773))

(assert (= (and b!285773 c!46439) b!285772))

(assert (= (and b!285773 (not c!46439)) b!285776))

(declare-fun m!300611 () Bool)

(assert (=> b!285774 m!300611))

(declare-fun m!300613 () Bool)

(assert (=> d!65799 m!300613))

(assert (=> d!65799 m!300325))

(declare-fun m!300615 () Bool)

(assert (=> d!65799 m!300615))

(declare-fun m!300617 () Bool)

(assert (=> d!65799 m!300617))

(declare-fun m!300619 () Bool)

(assert (=> d!65799 m!300619))

(declare-fun m!300621 () Bool)

(assert (=> d!65799 m!300621))

(assert (=> d!65799 m!300267))

(assert (=> d!65799 m!300325))

(assert (=> d!65799 m!300613))

(assert (=> b!285776 m!300325))

(declare-fun m!300625 () Bool)

(assert (=> b!285776 m!300625))

(assert (=> b!285467 d!65799))

(declare-fun bm!25580 () Bool)

(declare-fun call!25583 () Bool)

(assert (=> bm!25580 (= call!25583 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun d!65803 () Bool)

(declare-fun res!148005 () Bool)

(declare-fun e!181145 () Bool)

(assert (=> d!65803 (=> res!148005 e!181145)))

(assert (=> d!65803 (= res!148005 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7116 a!3325)))))

(assert (=> d!65803 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868) e!181145)))

(declare-fun b!285779 () Bool)

(declare-fun e!181146 () Bool)

(assert (=> b!285779 (= e!181145 e!181146)))

(declare-fun c!46442 () Bool)

(assert (=> b!285779 (= c!46442 (validKeyInArray!0 (select (arr!6764 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!285780 () Bool)

(declare-fun e!181144 () Bool)

(assert (=> b!285780 (= e!181146 e!181144)))

(declare-fun lt!140983 () (_ BitVec 64))

(assert (=> b!285780 (= lt!140983 (select (arr!6764 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!140981 () Unit!9043)

(assert (=> b!285780 (= lt!140981 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140983 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!285780 (arrayContainsKey!0 a!3325 lt!140983 #b00000000000000000000000000000000)))

(declare-fun lt!140982 () Unit!9043)

(assert (=> b!285780 (= lt!140982 lt!140981)))

(declare-fun res!148006 () Bool)

(assert (=> b!285780 (= res!148006 (= (seekEntryOrOpen!0 (select (arr!6764 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!3325 mask!3868) (Found!1933 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!285780 (=> (not res!148006) (not e!181144))))

(declare-fun b!285781 () Bool)

(assert (=> b!285781 (= e!181146 call!25583)))

(declare-fun b!285782 () Bool)

(assert (=> b!285782 (= e!181144 call!25583)))

(assert (= (and d!65803 (not res!148005)) b!285779))

(assert (= (and b!285779 c!46442) b!285780))

(assert (= (and b!285779 (not c!46442)) b!285781))

(assert (= (and b!285780 res!148006) b!285782))

(assert (= (or b!285782 b!285781) bm!25580))

(declare-fun m!300629 () Bool)

(assert (=> bm!25580 m!300629))

(assert (=> b!285779 m!300569))

(assert (=> b!285779 m!300569))

(declare-fun m!300631 () Bool)

(assert (=> b!285779 m!300631))

(assert (=> b!285780 m!300569))

(declare-fun m!300633 () Bool)

(assert (=> b!285780 m!300633))

(declare-fun m!300635 () Bool)

(assert (=> b!285780 m!300635))

(assert (=> b!285780 m!300569))

(declare-fun m!300637 () Bool)

(assert (=> b!285780 m!300637))

(assert (=> bm!25560 d!65803))

(declare-fun b!285789 () Bool)

(declare-fun e!181153 () Bool)

(declare-fun call!25584 () Bool)

(assert (=> b!285789 (= e!181153 call!25584)))

(declare-fun b!285790 () Bool)

(declare-fun e!181151 () Bool)

(assert (=> b!285790 (= e!181151 (contains!1999 (ite c!46344 (Cons!4589 (select (arr!6764 a!3325) #b00000000000000000000000000000000) Nil!4590) Nil!4590) (select (arr!6764 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!285791 () Bool)

(declare-fun e!181152 () Bool)

(assert (=> b!285791 (= e!181152 e!181153)))

(declare-fun c!46446 () Bool)

(assert (=> b!285791 (= c!46446 (validKeyInArray!0 (select (arr!6764 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!285792 () Bool)

(assert (=> b!285792 (= e!181153 call!25584)))

(declare-fun bm!25581 () Bool)

(assert (=> bm!25581 (= call!25584 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!46446 (Cons!4589 (select (arr!6764 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!46344 (Cons!4589 (select (arr!6764 a!3325) #b00000000000000000000000000000000) Nil!4590) Nil!4590)) (ite c!46344 (Cons!4589 (select (arr!6764 a!3325) #b00000000000000000000000000000000) Nil!4590) Nil!4590))))))

(declare-fun d!65807 () Bool)

(declare-fun res!148007 () Bool)

(declare-fun e!181150 () Bool)

(assert (=> d!65807 (=> res!148007 e!181150)))

(assert (=> d!65807 (= res!148007 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7116 a!3325)))))

(assert (=> d!65807 (= (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46344 (Cons!4589 (select (arr!6764 a!3325) #b00000000000000000000000000000000) Nil!4590) Nil!4590)) e!181150)))

(declare-fun b!285793 () Bool)

(assert (=> b!285793 (= e!181150 e!181152)))

(declare-fun res!148009 () Bool)

(assert (=> b!285793 (=> (not res!148009) (not e!181152))))

(assert (=> b!285793 (= res!148009 (not e!181151))))

(declare-fun res!148008 () Bool)

(assert (=> b!285793 (=> (not res!148008) (not e!181151))))

(assert (=> b!285793 (= res!148008 (validKeyInArray!0 (select (arr!6764 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!65807 (not res!148007)) b!285793))

(assert (= (and b!285793 res!148008) b!285790))

(assert (= (and b!285793 res!148009) b!285791))

(assert (= (and b!285791 c!46446) b!285792))

(assert (= (and b!285791 (not c!46446)) b!285789))

(assert (= (or b!285792 b!285789) bm!25581))

(assert (=> b!285790 m!300569))

(assert (=> b!285790 m!300569))

(declare-fun m!300643 () Bool)

(assert (=> b!285790 m!300643))

(assert (=> b!285791 m!300569))

(assert (=> b!285791 m!300569))

(assert (=> b!285791 m!300631))

(assert (=> bm!25581 m!300569))

(declare-fun m!300651 () Bool)

(assert (=> bm!25581 m!300651))

(assert (=> b!285793 m!300569))

(assert (=> b!285793 m!300569))

(assert (=> b!285793 m!300631))

(assert (=> bm!25566 d!65807))

(assert (=> b!285502 d!65747))

(check-sat (not d!65743) (not b!285791) (not d!65799) (not b!285776) (not b!285716) (not b!285726) (not d!65749) (not b!285766) (not b!285793) (not bm!25580) (not d!65783) (not bm!25578) (not b!285715) (not b!285712) (not d!65779) (not d!65737) (not b!285770) (not b!285724) (not bm!25581) (not b!285780) (not d!65795) (not b!285648) (not b!285654) (not b!285790) (not b!285779))
(check-sat)
