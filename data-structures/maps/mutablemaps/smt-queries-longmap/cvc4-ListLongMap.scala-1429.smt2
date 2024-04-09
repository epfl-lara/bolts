; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27662 () Bool)

(assert start!27662)

(declare-fun b!285423 () Bool)

(declare-fun e!180913 () Bool)

(declare-datatypes ((array!14256 0))(
  ( (array!14257 (arr!6765 (Array (_ BitVec 32) (_ BitVec 64))) (size!7117 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14256)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14256 (_ BitVec 32)) Bool)

(assert (=> b!285423 (= e!180913 (not (arrayForallSeekEntryOrOpenFound!0 startIndex!26 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)) mask!3868)))))

(declare-fun b!285424 () Bool)

(declare-fun res!147876 () Bool)

(declare-fun e!180911 () Bool)

(assert (=> b!285424 (=> (not res!147876) (not e!180911))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285424 (= res!147876 (validKeyInArray!0 k!2581))))

(declare-fun b!285425 () Bool)

(declare-fun res!147873 () Bool)

(assert (=> b!285425 (=> (not res!147873) (not e!180913))))

(assert (=> b!285425 (= res!147873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!285426 () Bool)

(assert (=> b!285426 (= e!180911 e!180913)))

(declare-fun res!147870 () Bool)

(assert (=> b!285426 (=> (not res!147870) (not e!180913))))

(declare-datatypes ((SeekEntryResult!1934 0))(
  ( (MissingZero!1934 (index!9906 (_ BitVec 32))) (Found!1934 (index!9907 (_ BitVec 32))) (Intermediate!1934 (undefined!2746 Bool) (index!9908 (_ BitVec 32)) (x!28069 (_ BitVec 32))) (Undefined!1934) (MissingVacant!1934 (index!9909 (_ BitVec 32))) )
))
(declare-fun lt!140834 () SeekEntryResult!1934)

(assert (=> b!285426 (= res!147870 (or (= lt!140834 (MissingZero!1934 i!1267)) (= lt!140834 (MissingVacant!1934 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14256 (_ BitVec 32)) SeekEntryResult!1934)

(assert (=> b!285426 (= lt!140834 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!285427 () Bool)

(declare-fun res!147871 () Bool)

(assert (=> b!285427 (=> (not res!147871) (not e!180913))))

(assert (=> b!285427 (= res!147871 (not (= startIndex!26 i!1267)))))

(declare-fun b!285428 () Bool)

(declare-fun res!147869 () Bool)

(assert (=> b!285428 (=> (not res!147869) (not e!180913))))

(assert (=> b!285428 (= res!147869 (bvsge startIndex!26 (bvsub (size!7117 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!285429 () Bool)

(declare-fun res!147868 () Bool)

(assert (=> b!285429 (=> (not res!147868) (not e!180913))))

(assert (=> b!285429 (= res!147868 (not (validKeyInArray!0 (select (arr!6765 a!3325) startIndex!26))))))

(declare-fun res!147874 () Bool)

(assert (=> start!27662 (=> (not res!147874) (not e!180911))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27662 (= res!147874 (validMask!0 mask!3868))))

(assert (=> start!27662 e!180911))

(declare-fun array_inv!4719 (array!14256) Bool)

(assert (=> start!27662 (array_inv!4719 a!3325)))

(assert (=> start!27662 true))

(declare-fun b!285430 () Bool)

(declare-fun res!147867 () Bool)

(assert (=> b!285430 (=> (not res!147867) (not e!180911))))

(declare-fun arrayContainsKey!0 (array!14256 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!285430 (= res!147867 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!285431 () Bool)

(declare-fun res!147875 () Bool)

(assert (=> b!285431 (=> (not res!147875) (not e!180911))))

(declare-datatypes ((List!4594 0))(
  ( (Nil!4591) (Cons!4590 (h!5263 (_ BitVec 64)) (t!9684 List!4594)) )
))
(declare-fun arrayNoDuplicates!0 (array!14256 (_ BitVec 32) List!4594) Bool)

(assert (=> b!285431 (= res!147875 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4591))))

(declare-fun b!285432 () Bool)

(declare-fun res!147872 () Bool)

(assert (=> b!285432 (=> (not res!147872) (not e!180911))))

(assert (=> b!285432 (= res!147872 (and (= (size!7117 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7117 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7117 a!3325))))))

(assert (= (and start!27662 res!147874) b!285432))

(assert (= (and b!285432 res!147872) b!285424))

(assert (= (and b!285424 res!147876) b!285431))

(assert (= (and b!285431 res!147875) b!285430))

(assert (= (and b!285430 res!147867) b!285426))

(assert (= (and b!285426 res!147870) b!285425))

(assert (= (and b!285425 res!147873) b!285427))

(assert (= (and b!285427 res!147871) b!285429))

(assert (= (and b!285429 res!147868) b!285428))

(assert (= (and b!285428 res!147869) b!285423))

(declare-fun m!300279 () Bool)

(assert (=> b!285429 m!300279))

(assert (=> b!285429 m!300279))

(declare-fun m!300281 () Bool)

(assert (=> b!285429 m!300281))

(declare-fun m!300283 () Bool)

(assert (=> b!285424 m!300283))

(declare-fun m!300285 () Bool)

(assert (=> start!27662 m!300285))

(declare-fun m!300287 () Bool)

(assert (=> start!27662 m!300287))

(declare-fun m!300289 () Bool)

(assert (=> b!285426 m!300289))

(declare-fun m!300291 () Bool)

(assert (=> b!285423 m!300291))

(declare-fun m!300293 () Bool)

(assert (=> b!285423 m!300293))

(declare-fun m!300295 () Bool)

(assert (=> b!285430 m!300295))

(declare-fun m!300297 () Bool)

(assert (=> b!285425 m!300297))

(declare-fun m!300299 () Bool)

(assert (=> b!285431 m!300299))

(push 1)

(assert (not b!285426))

(assert (not b!285424))

(assert (not b!285430))

(assert (not b!285425))

(assert (not start!27662))

(assert (not b!285431))

(assert (not b!285429))

(assert (not b!285423))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!65685 () Bool)

(assert (=> d!65685 (= (validKeyInArray!0 (select (arr!6765 a!3325) startIndex!26)) (and (not (= (select (arr!6765 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6765 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!285429 d!65685))

(declare-fun d!65687 () Bool)

(assert (=> d!65687 (= (validKeyInArray!0 k!2581) (and (not (= k!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!285424 d!65687))

(declare-fun d!65689 () Bool)

(assert (=> d!65689 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!27662 d!65689))

(declare-fun d!65701 () Bool)

(assert (=> d!65701 (= (array_inv!4719 a!3325) (bvsge (size!7117 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!27662 d!65701))

(declare-fun b!285511 () Bool)

(declare-fun e!180978 () Bool)

(declare-fun e!180979 () Bool)

(assert (=> b!285511 (= e!180978 e!180979)))

(declare-fun lt!140864 () (_ BitVec 64))

(assert (=> b!285511 (= lt!140864 (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) startIndex!26))))

(declare-datatypes ((Unit!9047 0))(
  ( (Unit!9048) )
))
(declare-fun lt!140862 () Unit!9047)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14256 (_ BitVec 64) (_ BitVec 32)) Unit!9047)

(assert (=> b!285511 (= lt!140862 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)) lt!140864 startIndex!26))))

(assert (=> b!285511 (arrayContainsKey!0 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)) lt!140864 #b00000000000000000000000000000000)))

(declare-fun lt!140863 () Unit!9047)

(assert (=> b!285511 (= lt!140863 lt!140862)))

(declare-fun res!147926 () Bool)

(assert (=> b!285511 (= res!147926 (= (seekEntryOrOpen!0 (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) startIndex!26) (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)) mask!3868) (Found!1934 startIndex!26)))))

(assert (=> b!285511 (=> (not res!147926) (not e!180979))))

(declare-fun b!285512 () Bool)

(declare-fun e!180977 () Bool)

(assert (=> b!285512 (= e!180977 e!180978)))

(declare-fun c!46347 () Bool)

(assert (=> b!285512 (= c!46347 (validKeyInArray!0 (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) startIndex!26)))))

(declare-fun b!285513 () Bool)

(declare-fun call!25572 () Bool)

(assert (=> b!285513 (= e!180978 call!25572)))

(declare-fun bm!25569 () Bool)

(assert (=> bm!25569 (= call!25572 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)) mask!3868))))

(declare-fun b!285514 () Bool)

(assert (=> b!285514 (= e!180979 call!25572)))

(declare-fun d!65703 () Bool)

(declare-fun res!147925 () Bool)

(assert (=> d!65703 (=> res!147925 e!180977)))

(assert (=> d!65703 (= res!147925 (bvsge startIndex!26 (size!7117 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)))))))

(assert (=> d!65703 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!26 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)) mask!3868) e!180977)))

(assert (= (and d!65703 (not res!147925)) b!285512))

(assert (= (and b!285512 c!46347) b!285511))

(assert (= (and b!285512 (not c!46347)) b!285513))

(assert (= (and b!285511 res!147926) b!285514))

(assert (= (or b!285514 b!285513) bm!25569))

(declare-fun m!300349 () Bool)

(assert (=> b!285511 m!300349))

(declare-fun m!300351 () Bool)

(assert (=> b!285511 m!300351))

(declare-fun m!300353 () Bool)

(assert (=> b!285511 m!300353))

(assert (=> b!285511 m!300349))

(declare-fun m!300355 () Bool)

(assert (=> b!285511 m!300355))

(assert (=> b!285512 m!300349))

(assert (=> b!285512 m!300349))

(declare-fun m!300357 () Bool)

(assert (=> b!285512 m!300357))

(declare-fun m!300359 () Bool)

(assert (=> bm!25569 m!300359))

(assert (=> b!285423 d!65703))

(declare-fun b!285561 () Bool)

(declare-fun e!181006 () SeekEntryResult!1934)

(declare-fun lt!140889 () SeekEntryResult!1934)

(assert (=> b!285561 (= e!181006 (Found!1934 (index!9908 lt!140889)))))

(declare-fun b!285563 () Bool)

(declare-fun e!181004 () SeekEntryResult!1934)

(assert (=> b!285563 (= e!181004 Undefined!1934)))

(declare-fun b!285564 () Bool)

(assert (=> b!285564 (= e!181004 e!181006)))

(declare-fun lt!140891 () (_ BitVec 64))

(assert (=> b!285564 (= lt!140891 (select (arr!6765 a!3325) (index!9908 lt!140889)))))

(declare-fun c!46370 () Bool)

(assert (=> b!285564 (= c!46370 (= lt!140891 k!2581))))

(declare-fun b!285565 () Bool)

(declare-fun e!181005 () SeekEntryResult!1934)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14256 (_ BitVec 32)) SeekEntryResult!1934)

(assert (=> b!285565 (= e!181005 (seekKeyOrZeroReturnVacant!0 (x!28069 lt!140889) (index!9908 lt!140889) (index!9908 lt!140889) k!2581 a!3325 mask!3868))))

(declare-fun b!285566 () Bool)

(declare-fun c!46371 () Bool)

(assert (=> b!285566 (= c!46371 (= lt!140891 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!285566 (= e!181006 e!181005)))

(declare-fun b!285562 () Bool)

(assert (=> b!285562 (= e!181005 (MissingZero!1934 (index!9908 lt!140889)))))

(declare-fun d!65711 () Bool)

(declare-fun lt!140890 () SeekEntryResult!1934)

(assert (=> d!65711 (and (or (is-Undefined!1934 lt!140890) (not (is-Found!1934 lt!140890)) (and (bvsge (index!9907 lt!140890) #b00000000000000000000000000000000) (bvslt (index!9907 lt!140890) (size!7117 a!3325)))) (or (is-Undefined!1934 lt!140890) (is-Found!1934 lt!140890) (not (is-MissingZero!1934 lt!140890)) (and (bvsge (index!9906 lt!140890) #b00000000000000000000000000000000) (bvslt (index!9906 lt!140890) (size!7117 a!3325)))) (or (is-Undefined!1934 lt!140890) (is-Found!1934 lt!140890) (is-MissingZero!1934 lt!140890) (not (is-MissingVacant!1934 lt!140890)) (and (bvsge (index!9909 lt!140890) #b00000000000000000000000000000000) (bvslt (index!9909 lt!140890) (size!7117 a!3325)))) (or (is-Undefined!1934 lt!140890) (ite (is-Found!1934 lt!140890) (= (select (arr!6765 a!3325) (index!9907 lt!140890)) k!2581) (ite (is-MissingZero!1934 lt!140890) (= (select (arr!6765 a!3325) (index!9906 lt!140890)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1934 lt!140890) (= (select (arr!6765 a!3325) (index!9909 lt!140890)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65711 (= lt!140890 e!181004)))

(declare-fun c!46372 () Bool)

(assert (=> d!65711 (= c!46372 (and (is-Intermediate!1934 lt!140889) (undefined!2746 lt!140889)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14256 (_ BitVec 32)) SeekEntryResult!1934)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!65711 (= lt!140889 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868))))

(assert (=> d!65711 (validMask!0 mask!3868)))

(assert (=> d!65711 (= (seekEntryOrOpen!0 k!2581 a!3325 mask!3868) lt!140890)))

(assert (= (and d!65711 c!46372) b!285563))

(assert (= (and d!65711 (not c!46372)) b!285564))

(assert (= (and b!285564 c!46370) b!285561))

(assert (= (and b!285564 (not c!46370)) b!285566))

(assert (= (and b!285566 c!46371) b!285562))

(assert (= (and b!285566 (not c!46371)) b!285565))

(declare-fun m!300387 () Bool)

(assert (=> b!285564 m!300387))

(declare-fun m!300389 () Bool)

(assert (=> b!285565 m!300389))

(declare-fun m!300391 () Bool)

(assert (=> d!65711 m!300391))

(declare-fun m!300393 () Bool)

(assert (=> d!65711 m!300393))

(declare-fun m!300395 () Bool)

(assert (=> d!65711 m!300395))

(assert (=> d!65711 m!300285))

(declare-fun m!300397 () Bool)

(assert (=> d!65711 m!300397))

(declare-fun m!300399 () Bool)

(assert (=> d!65711 m!300399))

(assert (=> d!65711 m!300391))

(assert (=> b!285426 d!65711))

(declare-fun d!65723 () Bool)

(declare-fun res!147933 () Bool)

(declare-fun e!181014 () Bool)

(assert (=> d!65723 (=> res!147933 e!181014)))

(assert (=> d!65723 (= res!147933 (= (select (arr!6765 a!3325) #b00000000000000000000000000000000) k!2581))))

(assert (=> d!65723 (= (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000) e!181014)))

(declare-fun b!285577 () Bool)

(declare-fun e!181015 () Bool)

(assert (=> b!285577 (= e!181014 e!181015)))

(declare-fun res!147934 () Bool)

(assert (=> b!285577 (=> (not res!147934) (not e!181015))))

(assert (=> b!285577 (= res!147934 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7117 a!3325)))))

(declare-fun b!285578 () Bool)

(assert (=> b!285578 (= e!181015 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65723 (not res!147933)) b!285577))

(assert (= (and b!285577 res!147934) b!285578))

(declare-fun m!300415 () Bool)

(assert (=> d!65723 m!300415))

(declare-fun m!300417 () Bool)

(assert (=> b!285578 m!300417))

(assert (=> b!285430 d!65723))

(declare-fun b!285579 () Bool)

(declare-fun e!181017 () Bool)

(declare-fun e!181018 () Bool)

(assert (=> b!285579 (= e!181017 e!181018)))

(declare-fun lt!140897 () (_ BitVec 64))

(assert (=> b!285579 (= lt!140897 (select (arr!6765 a!3325) #b00000000000000000000000000000000))))

(declare-fun lt!140895 () Unit!9047)

(assert (=> b!285579 (= lt!140895 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140897 #b00000000000000000000000000000000))))

(assert (=> b!285579 (arrayContainsKey!0 a!3325 lt!140897 #b00000000000000000000000000000000)))

(declare-fun lt!140896 () Unit!9047)

(assert (=> b!285579 (= lt!140896 lt!140895)))

(declare-fun res!147936 () Bool)

(assert (=> b!285579 (= res!147936 (= (seekEntryOrOpen!0 (select (arr!6765 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1934 #b00000000000000000000000000000000)))))

(assert (=> b!285579 (=> (not res!147936) (not e!181018))))

(declare-fun b!285580 () Bool)

(declare-fun e!181016 () Bool)

(assert (=> b!285580 (= e!181016 e!181017)))

(declare-fun c!46376 () Bool)

(assert (=> b!285580 (= c!46376 (validKeyInArray!0 (select (arr!6765 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!285581 () Bool)

(declare-fun call!25574 () Bool)

(assert (=> b!285581 (= e!181017 call!25574)))

(declare-fun bm!25571 () Bool)

(assert (=> bm!25571 (= call!25574 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!285582 () Bool)

(assert (=> b!285582 (= e!181018 call!25574)))

(declare-fun d!65725 () Bool)

(declare-fun res!147935 () Bool)

(assert (=> d!65725 (=> res!147935 e!181016)))

(assert (=> d!65725 (= res!147935 (bvsge #b00000000000000000000000000000000 (size!7117 a!3325)))))

(assert (=> d!65725 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!181016)))

(assert (= (and d!65725 (not res!147935)) b!285580))

(assert (= (and b!285580 c!46376) b!285579))

(assert (= (and b!285580 (not c!46376)) b!285581))

(assert (= (and b!285579 res!147936) b!285582))

(assert (= (or b!285582 b!285581) bm!25571))

(assert (=> b!285579 m!300415))

(declare-fun m!300419 () Bool)

(assert (=> b!285579 m!300419))

(declare-fun m!300421 () Bool)

(assert (=> b!285579 m!300421))

(assert (=> b!285579 m!300415))

(declare-fun m!300423 () Bool)

(assert (=> b!285579 m!300423))

(assert (=> b!285580 m!300415))

(assert (=> b!285580 m!300415))

(declare-fun m!300425 () Bool)

(assert (=> b!285580 m!300425))

(declare-fun m!300427 () Bool)

(assert (=> bm!25571 m!300427))

(assert (=> b!285425 d!65725))

(declare-fun d!65727 () Bool)

(declare-fun res!147945 () Bool)

(declare-fun e!181030 () Bool)

(assert (=> d!65727 (=> res!147945 e!181030)))

(assert (=> d!65727 (= res!147945 (bvsge #b00000000000000000000000000000000 (size!7117 a!3325)))))

(assert (=> d!65727 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4591) e!181030)))

(declare-fun b!285593 () Bool)

(declare-fun e!181027 () Bool)

(declare-fun e!181028 () Bool)

(assert (=> b!285593 (= e!181027 e!181028)))

(declare-fun c!46379 () Bool)

(assert (=> b!285593 (= c!46379 (validKeyInArray!0 (select (arr!6765 a!3325) #b00000000000000000000000000000000)))))

(declare-fun bm!25574 () Bool)

(declare-fun call!25577 () Bool)

(assert (=> bm!25574 (= call!25577 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46379 (Cons!4590 (select (arr!6765 a!3325) #b00000000000000000000000000000000) Nil!4591) Nil!4591)))))

(declare-fun b!285594 () Bool)

(assert (=> b!285594 (= e!181028 call!25577)))

(declare-fun b!285595 () Bool)

(assert (=> b!285595 (= e!181028 call!25577)))

(declare-fun b!285596 () Bool)

(assert (=> b!285596 (= e!181030 e!181027)))

(declare-fun res!147943 () Bool)

(assert (=> b!285596 (=> (not res!147943) (not e!181027))))

(declare-fun e!181029 () Bool)

(assert (=> b!285596 (= res!147943 (not e!181029))))

(declare-fun res!147944 () Bool)

(assert (=> b!285596 (=> (not res!147944) (not e!181029))))

(assert (=> b!285596 (= res!147944 (validKeyInArray!0 (select (arr!6765 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!285597 () Bool)

(declare-fun contains!2000 (List!4594 (_ BitVec 64)) Bool)

(assert (=> b!285597 (= e!181029 (contains!2000 Nil!4591 (select (arr!6765 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!65727 (not res!147945)) b!285596))

(assert (= (and b!285596 res!147944) b!285597))

(assert (= (and b!285596 res!147943) b!285593))

(assert (= (and b!285593 c!46379) b!285594))

(assert (= (and b!285593 (not c!46379)) b!285595))

(assert (= (or b!285594 b!285595) bm!25574))

(assert (=> b!285593 m!300415))

(assert (=> b!285593 m!300415))

(assert (=> b!285593 m!300425))

(assert (=> bm!25574 m!300415))

(declare-fun m!300429 () Bool)

(assert (=> bm!25574 m!300429))

(assert (=> b!285596 m!300415))

(assert (=> b!285596 m!300415))

(assert (=> b!285596 m!300425))

(assert (=> b!285597 m!300415))

(assert (=> b!285597 m!300415))

(declare-fun m!300431 () Bool)

(assert (=> b!285597 m!300431))

(assert (=> b!285431 d!65727))

(push 1)

(assert (not b!285579))

(assert (not b!285565))

(assert (not b!285511))

(assert (not b!285593))

(assert (not b!285597))

(assert (not bm!25574))

(assert (not b!285578))

(assert (not b!285512))

(assert (not b!285596))

(assert (not d!65711))

(assert (not b!285580))

(assert (not bm!25569))

(assert (not bm!25571))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!285739 () Bool)

(declare-fun e!181121 () SeekEntryResult!1934)

(assert (=> b!285739 (= e!181121 (Found!1934 (index!9908 lt!140889)))))

(declare-fun b!285740 () Bool)

(declare-fun e!181120 () SeekEntryResult!1934)

(assert (=> b!285740 (= e!181120 Undefined!1934)))

(declare-fun d!65773 () Bool)

(declare-fun lt!140963 () SeekEntryResult!1934)

(assert (=> d!65773 (and (or (is-Undefined!1934 lt!140963) (not (is-Found!1934 lt!140963)) (and (bvsge (index!9907 lt!140963) #b00000000000000000000000000000000) (bvslt (index!9907 lt!140963) (size!7117 a!3325)))) (or (is-Undefined!1934 lt!140963) (is-Found!1934 lt!140963) (not (is-MissingVacant!1934 lt!140963)) (not (= (index!9909 lt!140963) (index!9908 lt!140889))) (and (bvsge (index!9909 lt!140963) #b00000000000000000000000000000000) (bvslt (index!9909 lt!140963) (size!7117 a!3325)))) (or (is-Undefined!1934 lt!140963) (ite (is-Found!1934 lt!140963) (= (select (arr!6765 a!3325) (index!9907 lt!140963)) k!2581) (and (is-MissingVacant!1934 lt!140963) (= (index!9909 lt!140963) (index!9908 lt!140889)) (= (select (arr!6765 a!3325) (index!9909 lt!140963)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!65773 (= lt!140963 e!181120)))

(declare-fun c!46427 () Bool)

(assert (=> d!65773 (= c!46427 (bvsge (x!28069 lt!140889) #b01111111111111111111111111111110))))

(declare-fun lt!140964 () (_ BitVec 64))

(assert (=> d!65773 (= lt!140964 (select (arr!6765 a!3325) (index!9908 lt!140889)))))

(assert (=> d!65773 (validMask!0 mask!3868)))

(assert (=> d!65773 (= (seekKeyOrZeroReturnVacant!0 (x!28069 lt!140889) (index!9908 lt!140889) (index!9908 lt!140889) k!2581 a!3325 mask!3868) lt!140963)))

(declare-fun e!181122 () SeekEntryResult!1934)

(declare-fun b!285741 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!285741 (= e!181122 (seekKeyOrZeroReturnVacant!0 (bvadd (x!28069 lt!140889) #b00000000000000000000000000000001) (nextIndex!0 (index!9908 lt!140889) (x!28069 lt!140889) mask!3868) (index!9908 lt!140889) k!2581 a!3325 mask!3868))))

(declare-fun b!285742 () Bool)

(declare-fun c!46428 () Bool)

(assert (=> b!285742 (= c!46428 (= lt!140964 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!285742 (= e!181121 e!181122)))

(declare-fun b!285743 () Bool)

(assert (=> b!285743 (= e!181120 e!181121)))

(declare-fun c!46426 () Bool)

(assert (=> b!285743 (= c!46426 (= lt!140964 k!2581))))

(declare-fun b!285744 () Bool)

(assert (=> b!285744 (= e!181122 (MissingVacant!1934 (index!9908 lt!140889)))))

(assert (= (and d!65773 c!46427) b!285740))

(assert (= (and d!65773 (not c!46427)) b!285743))

(assert (= (and b!285743 c!46426) b!285739))

(assert (= (and b!285743 (not c!46426)) b!285742))

(assert (= (and b!285742 c!46428) b!285744))

(assert (= (and b!285742 (not c!46428)) b!285741))

(declare-fun m!300573 () Bool)

(assert (=> d!65773 m!300573))

(declare-fun m!300575 () Bool)

(assert (=> d!65773 m!300575))

(assert (=> d!65773 m!300387))

(assert (=> d!65773 m!300285))

(declare-fun m!300577 () Bool)

(assert (=> b!285741 m!300577))

(assert (=> b!285741 m!300577))

(declare-fun m!300579 () Bool)

(assert (=> b!285741 m!300579))

(assert (=> b!285565 d!65773))

(declare-fun d!65785 () Bool)

(assert (=> d!65785 (= (validKeyInArray!0 (select (arr!6765 a!3325) #b00000000000000000000000000000000)) (and (not (= (select (arr!6765 a!3325) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6765 a!3325) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!285593 d!65785))

(declare-fun d!65787 () Bool)

(declare-fun res!147997 () Bool)

(declare-fun e!181129 () Bool)

(assert (=> d!65787 (=> res!147997 e!181129)))

(assert (=> d!65787 (= res!147997 (= (select (arr!6765 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k!2581))))

(assert (=> d!65787 (= (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!181129)))

(declare-fun b!285757 () Bool)

(declare-fun e!181130 () Bool)

(assert (=> b!285757 (= e!181129 e!181130)))

(declare-fun res!147998 () Bool)

(assert (=> b!285757 (=> (not res!147998) (not e!181130))))

(assert (=> b!285757 (= res!147998 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!7117 a!3325)))))

(declare-fun b!285758 () Bool)

(assert (=> b!285758 (= e!181130 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!65787 (not res!147997)) b!285757))

(assert (= (and b!285757 res!147998) b!285758))

(declare-fun m!300581 () Bool)

(assert (=> d!65787 m!300581))

(declare-fun m!300583 () Bool)

(assert (=> b!285758 m!300583))

(assert (=> b!285578 d!65787))

(declare-fun b!285759 () Bool)

(declare-fun e!181132 () Bool)

(declare-fun e!181133 () Bool)

(assert (=> b!285759 (= e!181132 e!181133)))

(declare-fun lt!140971 () (_ BitVec 64))

(assert (=> b!285759 (= lt!140971 (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) (bvadd startIndex!26 #b00000000000000000000000000000001)))))

(declare-fun lt!140969 () Unit!9047)

(assert (=> b!285759 (= lt!140969 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)) lt!140971 (bvadd startIndex!26 #b00000000000000000000000000000001)))))

(assert (=> b!285759 (arrayContainsKey!0 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)) lt!140971 #b00000000000000000000000000000000)))

(declare-fun lt!140970 () Unit!9047)

(assert (=> b!285759 (= lt!140970 lt!140969)))

(declare-fun res!148000 () Bool)

(assert (=> b!285759 (= res!148000 (= (seekEntryOrOpen!0 (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) (bvadd startIndex!26 #b00000000000000000000000000000001)) (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)) mask!3868) (Found!1934 (bvadd startIndex!26 #b00000000000000000000000000000001))))))

(assert (=> b!285759 (=> (not res!148000) (not e!181133))))

(declare-fun b!285760 () Bool)

(declare-fun e!181131 () Bool)

(assert (=> b!285760 (= e!181131 e!181132)))

(declare-fun c!46435 () Bool)

(assert (=> b!285760 (= c!46435 (validKeyInArray!0 (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) (bvadd startIndex!26 #b00000000000000000000000000000001))))))

(declare-fun b!285761 () Bool)

(declare-fun call!25582 () Bool)

(assert (=> b!285761 (= e!181132 call!25582)))

(declare-fun bm!25579 () Bool)

(assert (=> bm!25579 (= call!25582 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)) mask!3868))))

(declare-fun b!285762 () Bool)

(assert (=> b!285762 (= e!181133 call!25582)))

(declare-fun d!65789 () Bool)

(declare-fun res!147999 () Bool)

(assert (=> d!65789 (=> res!147999 e!181131)))

(assert (=> d!65789 (= res!147999 (bvsge (bvadd startIndex!26 #b00000000000000000000000000000001) (size!7117 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)))))))

(assert (=> d!65789 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)) mask!3868) e!181131)))

(assert (= (and d!65789 (not res!147999)) b!285760))

(assert (= (and b!285760 c!46435) b!285759))

(assert (= (and b!285760 (not c!46435)) b!285761))

(assert (= (and b!285759 res!148000) b!285762))

(assert (= (or b!285762 b!285761) bm!25579))

(declare-fun m!300585 () Bool)

(assert (=> b!285759 m!300585))

(declare-fun m!300587 () Bool)

(assert (=> b!285759 m!300587))

(declare-fun m!300589 () Bool)

(assert (=> b!285759 m!300589))

(assert (=> b!285759 m!300585))

(declare-fun m!300591 () Bool)

(assert (=> b!285759 m!300591))

(assert (=> b!285760 m!300585))

(assert (=> b!285760 m!300585))

(declare-fun m!300593 () Bool)

(assert (=> b!285760 m!300593))

(declare-fun m!300595 () Bool)

(assert (=> bm!25579 m!300595))

(assert (=> bm!25569 d!65789))

(declare-fun d!65791 () Bool)

(assert (=> d!65791 (= (validKeyInArray!0 (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) startIndex!26)) (and (not (= (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!285512 d!65791))

(assert (=> b!285596 d!65785))

(declare-fun d!65793 () Bool)

(assert (=> d!65793 (arrayContainsKey!0 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)) lt!140864 #b00000000000000000000000000000000)))

(declare-fun lt!140978 () Unit!9047)

(declare-fun choose!13 (array!14256 (_ BitVec 64) (_ BitVec 32)) Unit!9047)

(assert (=> d!65793 (= lt!140978 (choose!13 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)) lt!140864 startIndex!26))))

(assert (=> d!65793 (bvsge startIndex!26 #b00000000000000000000000000000000)))

(assert (=> d!65793 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)) lt!140864 startIndex!26) lt!140978)))

(declare-fun bs!10148 () Bool)

(assert (= bs!10148 d!65793))

(assert (=> bs!10148 m!300353))

(declare-fun m!300609 () Bool)

(assert (=> bs!10148 m!300609))

(assert (=> b!285511 d!65793))

(declare-fun d!65801 () Bool)

(declare-fun res!148003 () Bool)

(declare-fun e!181142 () Bool)

(assert (=> d!65801 (=> res!148003 e!181142)))

(assert (=> d!65801 (= res!148003 (= (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) #b00000000000000000000000000000000) lt!140864))))

(assert (=> d!65801 (= (arrayContainsKey!0 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)) lt!140864 #b00000000000000000000000000000000) e!181142)))

(declare-fun b!285777 () Bool)

(declare-fun e!181143 () Bool)

(assert (=> b!285777 (= e!181142 e!181143)))

(declare-fun res!148004 () Bool)

(assert (=> b!285777 (=> (not res!148004) (not e!181143))))

(assert (=> b!285777 (= res!148004 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7117 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)))))))

(declare-fun b!285778 () Bool)

(assert (=> b!285778 (= e!181143 (arrayContainsKey!0 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)) lt!140864 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65801 (not res!148003)) b!285777))

(assert (= (and b!285777 res!148004) b!285778))

(declare-fun m!300623 () Bool)

(assert (=> d!65801 m!300623))

(declare-fun m!300627 () Bool)

(assert (=> b!285778 m!300627))

(assert (=> b!285511 d!65801))

(declare-fun b!285783 () Bool)

(declare-fun e!181149 () SeekEntryResult!1934)

(declare-fun lt!140984 () SeekEntryResult!1934)

(assert (=> b!285783 (= e!181149 (Found!1934 (index!9908 lt!140984)))))

(declare-fun b!285785 () Bool)

(declare-fun e!181147 () SeekEntryResult!1934)

(assert (=> b!285785 (= e!181147 Undefined!1934)))

(declare-fun b!285786 () Bool)

(assert (=> b!285786 (= e!181147 e!181149)))

(declare-fun lt!140986 () (_ BitVec 64))

(assert (=> b!285786 (= lt!140986 (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) (index!9908 lt!140984)))))

(declare-fun c!46443 () Bool)

(assert (=> b!285786 (= c!46443 (= lt!140986 (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) startIndex!26)))))

(declare-fun e!181148 () SeekEntryResult!1934)

(declare-fun b!285787 () Bool)

(assert (=> b!285787 (= e!181148 (seekKeyOrZeroReturnVacant!0 (x!28069 lt!140984) (index!9908 lt!140984) (index!9908 lt!140984) (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) startIndex!26) (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)) mask!3868))))

(declare-fun b!285788 () Bool)

(declare-fun c!46444 () Bool)

(assert (=> b!285788 (= c!46444 (= lt!140986 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!285788 (= e!181149 e!181148)))

(declare-fun b!285784 () Bool)

(assert (=> b!285784 (= e!181148 (MissingZero!1934 (index!9908 lt!140984)))))

(declare-fun lt!140985 () SeekEntryResult!1934)

(declare-fun d!65805 () Bool)

(assert (=> d!65805 (and (or (is-Undefined!1934 lt!140985) (not (is-Found!1934 lt!140985)) (and (bvsge (index!9907 lt!140985) #b00000000000000000000000000000000) (bvslt (index!9907 lt!140985) (size!7117 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)))))) (or (is-Undefined!1934 lt!140985) (is-Found!1934 lt!140985) (not (is-MissingZero!1934 lt!140985)) (and (bvsge (index!9906 lt!140985) #b00000000000000000000000000000000) (bvslt (index!9906 lt!140985) (size!7117 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)))))) (or (is-Undefined!1934 lt!140985) (is-Found!1934 lt!140985) (is-MissingZero!1934 lt!140985) (not (is-MissingVacant!1934 lt!140985)) (and (bvsge (index!9909 lt!140985) #b00000000000000000000000000000000) (bvslt (index!9909 lt!140985) (size!7117 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)))))) (or (is-Undefined!1934 lt!140985) (ite (is-Found!1934 lt!140985) (= (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) (index!9907 lt!140985)) (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) startIndex!26)) (ite (is-MissingZero!1934 lt!140985) (= (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) (index!9906 lt!140985)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1934 lt!140985) (= (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) (index!9909 lt!140985)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65805 (= lt!140985 e!181147)))

(declare-fun c!46445 () Bool)

(assert (=> d!65805 (= c!46445 (and (is-Intermediate!1934 lt!140984) (undefined!2746 lt!140984)))))

(assert (=> d!65805 (= lt!140984 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) startIndex!26) mask!3868) (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) startIndex!26) (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)) mask!3868))))

(assert (=> d!65805 (validMask!0 mask!3868)))

(assert (=> d!65805 (= (seekEntryOrOpen!0 (select (arr!6765 (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325))) startIndex!26) (array!14257 (store (arr!6765 a!3325) i!1267 k!2581) (size!7117 a!3325)) mask!3868) lt!140985)))

(assert (= (and d!65805 c!46445) b!285785))

(assert (= (and d!65805 (not c!46445)) b!285786))

(assert (= (and b!285786 c!46443) b!285783))

(assert (= (and b!285786 (not c!46443)) b!285788))

(assert (= (and b!285788 c!46444) b!285784))

(assert (= (and b!285788 (not c!46444)) b!285787))

(declare-fun m!300639 () Bool)

(assert (=> b!285786 m!300639))

(assert (=> b!285787 m!300349))

(declare-fun m!300641 () Bool)

(assert (=> b!285787 m!300641))

(declare-fun m!300645 () Bool)

(assert (=> d!65805 m!300645))

(assert (=> d!65805 m!300349))

(declare-fun m!300647 () Bool)

(assert (=> d!65805 m!300647))

(declare-fun m!300650 () Bool)

(assert (=> d!65805 m!300650))

(assert (=> d!65805 m!300285))

(declare-fun m!300653 () Bool)

(assert (=> d!65805 m!300653))

(declare-fun m!300655 () Bool)

(assert (=> d!65805 m!300655))

(assert (=> d!65805 m!300349))

(assert (=> d!65805 m!300645))

(assert (=> b!285511 d!65805))

(declare-fun b!285794 () Bool)

(declare-fun e!181155 () Bool)

(declare-fun e!181156 () Bool)

(assert (=> b!285794 (= e!181155 e!181156)))

(declare-fun lt!140989 () (_ BitVec 64))

(assert (=> b!285794 (= lt!140989 (select (arr!6765 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!140987 () Unit!9047)

(assert (=> b!285794 (= lt!140987 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140989 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!285794 (arrayContainsKey!0 a!3325 lt!140989 #b00000000000000000000000000000000)))

(declare-fun lt!140988 () Unit!9047)

(assert (=> b!285794 (= lt!140988 lt!140987)))

(declare-fun res!148011 () Bool)

(assert (=> b!285794 (= res!148011 (= (seekEntryOrOpen!0 (select (arr!6765 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!3325 mask!3868) (Found!1934 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!285794 (=> (not res!148011) (not e!181156))))

(declare-fun b!285795 () Bool)

(declare-fun e!181154 () Bool)

(assert (=> b!285795 (= e!181154 e!181155)))

(declare-fun c!46447 () Bool)

(assert (=> b!285795 (= c!46447 (validKeyInArray!0 (select (arr!6765 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!285796 () Bool)

(declare-fun call!25585 () Bool)

(assert (=> b!285796 (= e!181155 call!25585)))

(declare-fun bm!25582 () Bool)

(assert (=> bm!25582 (= call!25585 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!285797 () Bool)

(assert (=> b!285797 (= e!181156 call!25585)))

(declare-fun d!65809 () Bool)

(declare-fun res!148010 () Bool)

(assert (=> d!65809 (=> res!148010 e!181154)))

(assert (=> d!65809 (= res!148010 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7117 a!3325)))))

(assert (=> d!65809 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868) e!181154)))

(assert (= (and d!65809 (not res!148010)) b!285795))

(assert (= (and b!285795 c!46447) b!285794))

(assert (= (and b!285795 (not c!46447)) b!285796))

(assert (= (and b!285794 res!148011) b!285797))

(assert (= (or b!285797 b!285796) bm!25582))

(assert (=> b!285794 m!300581))

(declare-fun m!300657 () Bool)

(assert (=> b!285794 m!300657))

(declare-fun m!300659 () Bool)

(assert (=> b!285794 m!300659))

(assert (=> b!285794 m!300581))

(declare-fun m!300661 () Bool)

(assert (=> b!285794 m!300661))

(assert (=> b!285795 m!300581))

(assert (=> b!285795 m!300581))

(declare-fun m!300663 () Bool)

(assert (=> b!285795 m!300663))

(declare-fun m!300665 () Bool)

(assert (=> bm!25582 m!300665))

(assert (=> bm!25571 d!65809))

(declare-fun d!65811 () Bool)

(declare-fun lt!140992 () Bool)

(declare-fun content!195 (List!4594) (Set (_ BitVec 64)))

(assert (=> d!65811 (= lt!140992 (member (select (arr!6765 a!3325) #b00000000000000000000000000000000) (content!195 Nil!4591)))))

(declare-fun e!181161 () Bool)

(assert (=> d!65811 (= lt!140992 e!181161)))

(declare-fun res!148016 () Bool)

(assert (=> d!65811 (=> (not res!148016) (not e!181161))))

(assert (=> d!65811 (= res!148016 (is-Cons!4590 Nil!4591))))

(assert (=> d!65811 (= (contains!2000 Nil!4591 (select (arr!6765 a!3325) #b00000000000000000000000000000000)) lt!140992)))

(declare-fun b!285802 () Bool)

(declare-fun e!181162 () Bool)

(assert (=> b!285802 (= e!181161 e!181162)))

(declare-fun res!148017 () Bool)

(assert (=> b!285802 (=> res!148017 e!181162)))

(assert (=> b!285802 (= res!148017 (= (h!5263 Nil!4591) (select (arr!6765 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!285803 () Bool)

(assert (=> b!285803 (= e!181162 (contains!2000 (t!9684 Nil!4591) (select (arr!6765 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!65811 res!148016) b!285802))

(assert (= (and b!285802 (not res!148017)) b!285803))

(declare-fun m!300667 () Bool)

(assert (=> d!65811 m!300667))

(assert (=> d!65811 m!300415))

(declare-fun m!300669 () Bool)

(assert (=> d!65811 m!300669))

(assert (=> b!285803 m!300415))

(declare-fun m!300671 () Bool)

(assert (=> b!285803 m!300671))

(assert (=> b!285597 d!65811))

(declare-fun b!285822 () Bool)

(declare-fun e!181177 () Bool)

(declare-fun e!181174 () Bool)

(assert (=> b!285822 (= e!181177 e!181174)))

(declare-fun res!148025 () Bool)

(declare-fun lt!140997 () SeekEntryResult!1934)

(assert (=> b!285822 (= res!148025 (and (is-Intermediate!1934 lt!140997) (not (undefined!2746 lt!140997)) (bvslt (x!28069 lt!140997) #b01111111111111111111111111111110) (bvsge (x!28069 lt!140997) #b00000000000000000000000000000000) (bvsge (x!28069 lt!140997) #b00000000000000000000000000000000)))))

(assert (=> b!285822 (=> (not res!148025) (not e!181174))))

(declare-fun b!285823 () Bool)

(declare-fun e!181175 () SeekEntryResult!1934)

(assert (=> b!285823 (= e!181175 (Intermediate!1934 false (toIndex!0 k!2581 mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!285825 () Bool)

(assert (=> b!285825 (and (bvsge (index!9908 lt!140997) #b00000000000000000000000000000000) (bvslt (index!9908 lt!140997) (size!7117 a!3325)))))

(declare-fun e!181176 () Bool)

(assert (=> b!285825 (= e!181176 (= (select (arr!6765 a!3325) (index!9908 lt!140997)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!285826 () Bool)

(assert (=> b!285826 (and (bvsge (index!9908 lt!140997) #b00000000000000000000000000000000) (bvslt (index!9908 lt!140997) (size!7117 a!3325)))))

(declare-fun res!148026 () Bool)

(assert (=> b!285826 (= res!148026 (= (select (arr!6765 a!3325) (index!9908 lt!140997)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!285826 (=> res!148026 e!181176)))

(declare-fun b!285827 () Bool)

(declare-fun e!181173 () SeekEntryResult!1934)

(assert (=> b!285827 (= e!181173 e!181175)))

(declare-fun c!46456 () Bool)

(declare-fun lt!140998 () (_ BitVec 64))

(assert (=> b!285827 (= c!46456 (or (= lt!140998 k!2581) (= (bvadd lt!140998 lt!140998) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!285828 () Bool)

(assert (=> b!285828 (and (bvsge (index!9908 lt!140997) #b00000000000000000000000000000000) (bvslt (index!9908 lt!140997) (size!7117 a!3325)))))

(declare-fun res!148024 () Bool)

(assert (=> b!285828 (= res!148024 (= (select (arr!6765 a!3325) (index!9908 lt!140997)) k!2581))))

(assert (=> b!285828 (=> res!148024 e!181176)))

(assert (=> b!285828 (= e!181174 e!181176)))

(declare-fun b!285829 () Bool)

(assert (=> b!285829 (= e!181175 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2581 mask!3868) #b00000000000000000000000000000000 mask!3868) k!2581 a!3325 mask!3868))))

(declare-fun b!285830 () Bool)

(assert (=> b!285830 (= e!181177 (bvsge (x!28069 lt!140997) #b01111111111111111111111111111110))))

(declare-fun d!65813 () Bool)

(assert (=> d!65813 e!181177))

(declare-fun c!46455 () Bool)

(assert (=> d!65813 (= c!46455 (and (is-Intermediate!1934 lt!140997) (undefined!2746 lt!140997)))))

(assert (=> d!65813 (= lt!140997 e!181173)))

(declare-fun c!46454 () Bool)

(assert (=> d!65813 (= c!46454 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!65813 (= lt!140998 (select (arr!6765 a!3325) (toIndex!0 k!2581 mask!3868)))))

(assert (=> d!65813 (validMask!0 mask!3868)))

(assert (=> d!65813 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868) lt!140997)))

(declare-fun b!285824 () Bool)

(assert (=> b!285824 (= e!181173 (Intermediate!1934 true (toIndex!0 k!2581 mask!3868) #b00000000000000000000000000000000))))

(assert (= (and d!65813 c!46454) b!285824))

(assert (= (and d!65813 (not c!46454)) b!285827))

(assert (= (and b!285827 c!46456) b!285823))

(assert (= (and b!285827 (not c!46456)) b!285829))

(assert (= (and d!65813 c!46455) b!285830))

(assert (= (and d!65813 (not c!46455)) b!285822))

(assert (= (and b!285822 res!148025) b!285828))

(assert (= (and b!285828 (not res!148024)) b!285826))

(assert (= (and b!285826 (not res!148026)) b!285825))

(declare-fun m!300673 () Bool)

(assert (=> b!285826 m!300673))

(assert (=> b!285829 m!300391))

(declare-fun m!300675 () Bool)

(assert (=> b!285829 m!300675))

(assert (=> b!285829 m!300675))

(declare-fun m!300677 () Bool)

(assert (=> b!285829 m!300677))

(assert (=> d!65813 m!300391))

(declare-fun m!300679 () Bool)

(assert (=> d!65813 m!300679))

(assert (=> d!65813 m!300285))

(assert (=> b!285825 m!300673))

(assert (=> b!285828 m!300673))

(assert (=> d!65711 d!65813))

(declare-fun d!65815 () Bool)

(declare-fun lt!141004 () (_ BitVec 32))

(declare-fun lt!141003 () (_ BitVec 32))

(assert (=> d!65815 (= lt!141004 (bvmul (bvxor lt!141003 (bvlshr lt!141003 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!65815 (= lt!141003 ((_ extract 31 0) (bvand (bvxor k!2581 (bvlshr k!2581 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!65815 (and (bvsge mask!3868 #b00000000000000000000000000000000) (let ((res!148027 (let ((h!5266 ((_ extract 31 0) (bvand (bvxor k!2581 (bvlshr k!2581 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!28078 (bvmul (bvxor h!5266 (bvlshr h!5266 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!28078 (bvlshr x!28078 #b00000000000000000000000000001101)) mask!3868))))) (and (bvslt res!148027 (bvadd mask!3868 #b00000000000000000000000000000001)) (bvsge res!148027 #b00000000000000000000000000000000))))))

(assert (=> d!65815 (= (toIndex!0 k!2581 mask!3868) (bvand (bvxor lt!141004 (bvlshr lt!141004 #b00000000000000000000000000001101)) mask!3868))))

(assert (=> d!65711 d!65815))

(assert (=> d!65711 d!65689))

(declare-fun d!65817 () Bool)

(declare-fun res!148030 () Bool)

(declare-fun e!181181 () Bool)

(assert (=> d!65817 (=> res!148030 e!181181)))

(assert (=> d!65817 (= res!148030 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7117 a!3325)))))

(assert (=> d!65817 (= (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46379 (Cons!4590 (select (arr!6765 a!3325) #b00000000000000000000000000000000) Nil!4591) Nil!4591)) e!181181)))

(declare-fun b!285831 () Bool)

(declare-fun e!181178 () Bool)

(declare-fun e!181179 () Bool)

(assert (=> b!285831 (= e!181178 e!181179)))

(declare-fun c!46457 () Bool)

(assert (=> b!285831 (= c!46457 (validKeyInArray!0 (select (arr!6765 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!25583 () Bool)

(declare-fun call!25586 () Bool)

(assert (=> bm!25583 (= call!25586 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!46457 (Cons!4590 (select (arr!6765 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!46379 (Cons!4590 (select (arr!6765 a!3325) #b00000000000000000000000000000000) Nil!4591) Nil!4591)) (ite c!46379 (Cons!4590 (select (arr!6765 a!3325) #b00000000000000000000000000000000) Nil!4591) Nil!4591))))))

(declare-fun b!285832 () Bool)

(assert (=> b!285832 (= e!181179 call!25586)))

(declare-fun b!285833 () Bool)

(assert (=> b!285833 (= e!181179 call!25586)))

(declare-fun b!285834 () Bool)

(assert (=> b!285834 (= e!181181 e!181178)))

(declare-fun res!148028 () Bool)

(assert (=> b!285834 (=> (not res!148028) (not e!181178))))

(declare-fun e!181180 () Bool)

(assert (=> b!285834 (= res!148028 (not e!181180))))

(declare-fun res!148029 () Bool)

(assert (=> b!285834 (=> (not res!148029) (not e!181180))))

(assert (=> b!285834 (= res!148029 (validKeyInArray!0 (select (arr!6765 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!285835 () Bool)

(assert (=> b!285835 (= e!181180 (contains!2000 (ite c!46379 (Cons!4590 (select (arr!6765 a!3325) #b00000000000000000000000000000000) Nil!4591) Nil!4591) (select (arr!6765 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!65817 (not res!148030)) b!285834))

(assert (= (and b!285834 res!148029) b!285835))

(assert (= (and b!285834 res!148028) b!285831))

(assert (= (and b!285831 c!46457) b!285832))

(assert (= (and b!285831 (not c!46457)) b!285833))

(assert (= (or b!285832 b!285833) bm!25583))

(assert (=> b!285831 m!300581))

(assert (=> b!285831 m!300581))

(assert (=> b!285831 m!300663))

(assert (=> bm!25583 m!300581))

(declare-fun m!300681 () Bool)

(assert (=> bm!25583 m!300681))

(assert (=> b!285834 m!300581))

(assert (=> b!285834 m!300581))

(assert (=> b!285834 m!300663))

(assert (=> b!285835 m!300581))

(assert (=> b!285835 m!300581))

(declare-fun m!300683 () Bool)

(assert (=> b!285835 m!300683))

(assert (=> bm!25574 d!65817))

(assert (=> b!285580 d!65785))

(declare-fun d!65819 () Bool)

(assert (=> d!65819 (arrayContainsKey!0 a!3325 lt!140897 #b00000000000000000000000000000000)))

(declare-fun lt!141005 () Unit!9047)

(assert (=> d!65819 (= lt!141005 (choose!13 a!3325 lt!140897 #b00000000000000000000000000000000))))

(assert (=> d!65819 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!65819 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140897 #b00000000000000000000000000000000) lt!141005)))

(declare-fun bs!10149 () Bool)

(assert (= bs!10149 d!65819))

(assert (=> bs!10149 m!300421))

(declare-fun m!300685 () Bool)

(assert (=> bs!10149 m!300685))

(assert (=> b!285579 d!65819))

(declare-fun d!65821 () Bool)

(declare-fun res!148031 () Bool)

(declare-fun e!181182 () Bool)

(assert (=> d!65821 (=> res!148031 e!181182)))

(assert (=> d!65821 (= res!148031 (= (select (arr!6765 a!3325) #b00000000000000000000000000000000) lt!140897))))

(assert (=> d!65821 (= (arrayContainsKey!0 a!3325 lt!140897 #b00000000000000000000000000000000) e!181182)))

(declare-fun b!285836 () Bool)

(declare-fun e!181183 () Bool)

(assert (=> b!285836 (= e!181182 e!181183)))

(declare-fun res!148032 () Bool)

(assert (=> b!285836 (=> (not res!148032) (not e!181183))))

(assert (=> b!285836 (= res!148032 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7117 a!3325)))))

(declare-fun b!285837 () Bool)

(assert (=> b!285837 (= e!181183 (arrayContainsKey!0 a!3325 lt!140897 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65821 (not res!148031)) b!285836))

(assert (= (and b!285836 res!148032) b!285837))

(assert (=> d!65821 m!300415))

(declare-fun m!300687 () Bool)

(assert (=> b!285837 m!300687))

(assert (=> b!285579 d!65821))

(declare-fun b!285838 () Bool)

(declare-fun e!181186 () SeekEntryResult!1934)

(declare-fun lt!141006 () SeekEntryResult!1934)

(assert (=> b!285838 (= e!181186 (Found!1934 (index!9908 lt!141006)))))

(declare-fun b!285840 () Bool)

(declare-fun e!181184 () SeekEntryResult!1934)

(assert (=> b!285840 (= e!181184 Undefined!1934)))

(declare-fun b!285841 () Bool)

(assert (=> b!285841 (= e!181184 e!181186)))

(declare-fun lt!141008 () (_ BitVec 64))

(assert (=> b!285841 (= lt!141008 (select (arr!6765 a!3325) (index!9908 lt!141006)))))

(declare-fun c!46458 () Bool)

(assert (=> b!285841 (= c!46458 (= lt!141008 (select (arr!6765 a!3325) #b00000000000000000000000000000000)))))

(declare-fun e!181185 () SeekEntryResult!1934)

(declare-fun b!285842 () Bool)

(assert (=> b!285842 (= e!181185 (seekKeyOrZeroReturnVacant!0 (x!28069 lt!141006) (index!9908 lt!141006) (index!9908 lt!141006) (select (arr!6765 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868))))

(declare-fun b!285843 () Bool)

(declare-fun c!46459 () Bool)

(assert (=> b!285843 (= c!46459 (= lt!141008 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!285843 (= e!181186 e!181185)))

(declare-fun b!285839 () Bool)

(assert (=> b!285839 (= e!181185 (MissingZero!1934 (index!9908 lt!141006)))))

(declare-fun d!65823 () Bool)

(declare-fun lt!141007 () SeekEntryResult!1934)

(assert (=> d!65823 (and (or (is-Undefined!1934 lt!141007) (not (is-Found!1934 lt!141007)) (and (bvsge (index!9907 lt!141007) #b00000000000000000000000000000000) (bvslt (index!9907 lt!141007) (size!7117 a!3325)))) (or (is-Undefined!1934 lt!141007) (is-Found!1934 lt!141007) (not (is-MissingZero!1934 lt!141007)) (and (bvsge (index!9906 lt!141007) #b00000000000000000000000000000000) (bvslt (index!9906 lt!141007) (size!7117 a!3325)))) (or (is-Undefined!1934 lt!141007) (is-Found!1934 lt!141007) (is-MissingZero!1934 lt!141007) (not (is-MissingVacant!1934 lt!141007)) (and (bvsge (index!9909 lt!141007) #b00000000000000000000000000000000) (bvslt (index!9909 lt!141007) (size!7117 a!3325)))) (or (is-Undefined!1934 lt!141007) (ite (is-Found!1934 lt!141007) (= (select (arr!6765 a!3325) (index!9907 lt!141007)) (select (arr!6765 a!3325) #b00000000000000000000000000000000)) (ite (is-MissingZero!1934 lt!141007) (= (select (arr!6765 a!3325) (index!9906 lt!141007)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1934 lt!141007) (= (select (arr!6765 a!3325) (index!9909 lt!141007)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65823 (= lt!141007 e!181184)))

(declare-fun c!46460 () Bool)

(assert (=> d!65823 (= c!46460 (and (is-Intermediate!1934 lt!141006) (undefined!2746 lt!141006)))))

(assert (=> d!65823 (= lt!141006 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6765 a!3325) #b00000000000000000000000000000000) mask!3868) (select (arr!6765 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868))))

(assert (=> d!65823 (validMask!0 mask!3868)))

(assert (=> d!65823 (= (seekEntryOrOpen!0 (select (arr!6765 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) lt!141007)))

(assert (= (and d!65823 c!46460) b!285840))

(assert (= (and d!65823 (not c!46460)) b!285841))

(assert (= (and b!285841 c!46458) b!285838))

(assert (= (and b!285841 (not c!46458)) b!285843))

(assert (= (and b!285843 c!46459) b!285839))

(assert (= (and b!285843 (not c!46459)) b!285842))

(declare-fun m!300689 () Bool)

(assert (=> b!285841 m!300689))

(assert (=> b!285842 m!300415))

(declare-fun m!300691 () Bool)

(assert (=> b!285842 m!300691))

(declare-fun m!300693 () Bool)

(assert (=> d!65823 m!300693))

(assert (=> d!65823 m!300415))

(declare-fun m!300695 () Bool)

(assert (=> d!65823 m!300695))

(declare-fun m!300697 () Bool)

(assert (=> d!65823 m!300697))

(assert (=> d!65823 m!300285))

(declare-fun m!300699 () Bool)

(assert (=> d!65823 m!300699))

(declare-fun m!300701 () Bool)

(assert (=> d!65823 m!300701))

(assert (=> d!65823 m!300415))

(assert (=> d!65823 m!300693))

(assert (=> b!285579 d!65823))

(push 1)

