; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27658 () Bool)

(assert start!27658)

(declare-datatypes ((array!14252 0))(
  ( (array!14253 (arr!6763 (Array (_ BitVec 32) (_ BitVec 64))) (size!7115 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14252)

(declare-fun e!180893 () Bool)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun b!285363 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14252 (_ BitVec 32)) Bool)

(assert (=> b!285363 (= e!180893 (not (arrayForallSeekEntryOrOpenFound!0 startIndex!26 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)) mask!3868)))))

(declare-fun b!285364 () Bool)

(declare-fun res!147808 () Bool)

(declare-fun e!180895 () Bool)

(assert (=> b!285364 (=> (not res!147808) (not e!180895))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285364 (= res!147808 (validKeyInArray!0 k!2581))))

(declare-fun b!285365 () Bool)

(declare-fun res!147809 () Bool)

(assert (=> b!285365 (=> (not res!147809) (not e!180895))))

(declare-fun arrayContainsKey!0 (array!14252 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!285365 (= res!147809 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!285366 () Bool)

(assert (=> b!285366 (= e!180895 e!180893)))

(declare-fun res!147810 () Bool)

(assert (=> b!285366 (=> (not res!147810) (not e!180893))))

(declare-datatypes ((SeekEntryResult!1932 0))(
  ( (MissingZero!1932 (index!9898 (_ BitVec 32))) (Found!1932 (index!9899 (_ BitVec 32))) (Intermediate!1932 (undefined!2744 Bool) (index!9900 (_ BitVec 32)) (x!28067 (_ BitVec 32))) (Undefined!1932) (MissingVacant!1932 (index!9901 (_ BitVec 32))) )
))
(declare-fun lt!140828 () SeekEntryResult!1932)

(assert (=> b!285366 (= res!147810 (or (= lt!140828 (MissingZero!1932 i!1267)) (= lt!140828 (MissingVacant!1932 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14252 (_ BitVec 32)) SeekEntryResult!1932)

(assert (=> b!285366 (= lt!140828 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!285367 () Bool)

(declare-fun res!147812 () Bool)

(assert (=> b!285367 (=> (not res!147812) (not e!180893))))

(assert (=> b!285367 (= res!147812 (bvsge startIndex!26 (bvsub (size!7115 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!285368 () Bool)

(declare-fun res!147814 () Bool)

(assert (=> b!285368 (=> (not res!147814) (not e!180893))))

(assert (=> b!285368 (= res!147814 (not (validKeyInArray!0 (select (arr!6763 a!3325) startIndex!26))))))

(declare-fun b!285370 () Bool)

(declare-fun res!147811 () Bool)

(assert (=> b!285370 (=> (not res!147811) (not e!180893))))

(assert (=> b!285370 (= res!147811 (not (= startIndex!26 i!1267)))))

(declare-fun res!147815 () Bool)

(assert (=> start!27658 (=> (not res!147815) (not e!180895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27658 (= res!147815 (validMask!0 mask!3868))))

(assert (=> start!27658 e!180895))

(declare-fun array_inv!4717 (array!14252) Bool)

(assert (=> start!27658 (array_inv!4717 a!3325)))

(assert (=> start!27658 true))

(declare-fun b!285369 () Bool)

(declare-fun res!147816 () Bool)

(assert (=> b!285369 (=> (not res!147816) (not e!180893))))

(assert (=> b!285369 (= res!147816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!285371 () Bool)

(declare-fun res!147807 () Bool)

(assert (=> b!285371 (=> (not res!147807) (not e!180895))))

(declare-datatypes ((List!4592 0))(
  ( (Nil!4589) (Cons!4588 (h!5261 (_ BitVec 64)) (t!9682 List!4592)) )
))
(declare-fun arrayNoDuplicates!0 (array!14252 (_ BitVec 32) List!4592) Bool)

(assert (=> b!285371 (= res!147807 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4589))))

(declare-fun b!285372 () Bool)

(declare-fun res!147813 () Bool)

(assert (=> b!285372 (=> (not res!147813) (not e!180895))))

(assert (=> b!285372 (= res!147813 (and (= (size!7115 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7115 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7115 a!3325))))))

(assert (= (and start!27658 res!147815) b!285372))

(assert (= (and b!285372 res!147813) b!285364))

(assert (= (and b!285364 res!147808) b!285371))

(assert (= (and b!285371 res!147807) b!285365))

(assert (= (and b!285365 res!147809) b!285366))

(assert (= (and b!285366 res!147810) b!285369))

(assert (= (and b!285369 res!147816) b!285370))

(assert (= (and b!285370 res!147811) b!285368))

(assert (= (and b!285368 res!147814) b!285367))

(assert (= (and b!285367 res!147812) b!285363))

(declare-fun m!300235 () Bool)

(assert (=> b!285369 m!300235))

(declare-fun m!300237 () Bool)

(assert (=> b!285364 m!300237))

(declare-fun m!300239 () Bool)

(assert (=> b!285366 m!300239))

(declare-fun m!300241 () Bool)

(assert (=> b!285365 m!300241))

(declare-fun m!300243 () Bool)

(assert (=> start!27658 m!300243))

(declare-fun m!300245 () Bool)

(assert (=> start!27658 m!300245))

(declare-fun m!300247 () Bool)

(assert (=> b!285371 m!300247))

(declare-fun m!300249 () Bool)

(assert (=> b!285363 m!300249))

(declare-fun m!300251 () Bool)

(assert (=> b!285363 m!300251))

(declare-fun m!300253 () Bool)

(assert (=> b!285368 m!300253))

(assert (=> b!285368 m!300253))

(declare-fun m!300255 () Bool)

(assert (=> b!285368 m!300255))

(push 1)

(assert (not b!285371))

(assert (not b!285365))

(assert (not start!27658))

(assert (not b!285368))

(assert (not b!285366))

(assert (not b!285364))

(assert (not b!285369))

(assert (not b!285363))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!65677 () Bool)

(declare-fun res!147881 () Bool)

(declare-fun e!180918 () Bool)

(assert (=> d!65677 (=> res!147881 e!180918)))

(assert (=> d!65677 (= res!147881 (= (select (arr!6763 a!3325) #b00000000000000000000000000000000) k!2581))))

(assert (=> d!65677 (= (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000) e!180918)))

(declare-fun b!285437 () Bool)

(declare-fun e!180919 () Bool)

(assert (=> b!285437 (= e!180918 e!180919)))

(declare-fun res!147882 () Bool)

(assert (=> b!285437 (=> (not res!147882) (not e!180919))))

(assert (=> b!285437 (= res!147882 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7115 a!3325)))))

(declare-fun b!285438 () Bool)

(assert (=> b!285438 (= e!180919 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65677 (not res!147881)) b!285437))

(assert (= (and b!285437 res!147882) b!285438))

(declare-fun m!300301 () Bool)

(assert (=> d!65677 m!300301))

(declare-fun m!300303 () Bool)

(assert (=> b!285438 m!300303))

(assert (=> b!285365 d!65677))

(declare-fun b!285457 () Bool)

(declare-fun e!180935 () Bool)

(declare-fun call!25561 () Bool)

(assert (=> b!285457 (= e!180935 call!25561)))

(declare-fun b!285458 () Bool)

(declare-fun e!180934 () Bool)

(declare-fun contains!1998 (List!4592 (_ BitVec 64)) Bool)

(assert (=> b!285458 (= e!180934 (contains!1998 Nil!4589 (select (arr!6763 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!285460 () Bool)

(declare-fun e!180936 () Bool)

(assert (=> b!285460 (= e!180936 e!180935)))

(declare-fun c!46336 () Bool)

(assert (=> b!285460 (= c!46336 (validKeyInArray!0 (select (arr!6763 a!3325) #b00000000000000000000000000000000)))))

(declare-fun bm!25558 () Bool)

(assert (=> bm!25558 (= call!25561 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46336 (Cons!4588 (select (arr!6763 a!3325) #b00000000000000000000000000000000) Nil!4589) Nil!4589)))))

(declare-fun b!285461 () Bool)

(declare-fun e!180937 () Bool)

(assert (=> b!285461 (= e!180937 e!180936)))

(declare-fun res!147893 () Bool)

(assert (=> b!285461 (=> (not res!147893) (not e!180936))))

(assert (=> b!285461 (= res!147893 (not e!180934))))

(declare-fun res!147894 () Bool)

(assert (=> b!285461 (=> (not res!147894) (not e!180934))))

(assert (=> b!285461 (= res!147894 (validKeyInArray!0 (select (arr!6763 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!65683 () Bool)

(declare-fun res!147895 () Bool)

(assert (=> d!65683 (=> res!147895 e!180937)))

(assert (=> d!65683 (= res!147895 (bvsge #b00000000000000000000000000000000 (size!7115 a!3325)))))

(assert (=> d!65683 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4589) e!180937)))

(declare-fun b!285459 () Bool)

(assert (=> b!285459 (= e!180935 call!25561)))

(assert (= (and d!65683 (not res!147895)) b!285461))

(assert (= (and b!285461 res!147894) b!285458))

(assert (= (and b!285461 res!147893) b!285460))

(assert (= (and b!285460 c!46336) b!285457))

(assert (= (and b!285460 (not c!46336)) b!285459))

(assert (= (or b!285457 b!285459) bm!25558))

(assert (=> b!285458 m!300301))

(assert (=> b!285458 m!300301))

(declare-fun m!300305 () Bool)

(assert (=> b!285458 m!300305))

(assert (=> b!285460 m!300301))

(assert (=> b!285460 m!300301))

(declare-fun m!300307 () Bool)

(assert (=> b!285460 m!300307))

(assert (=> bm!25558 m!300301))

(declare-fun m!300309 () Bool)

(assert (=> bm!25558 m!300309))

(assert (=> b!285461 m!300301))

(assert (=> b!285461 m!300301))

(assert (=> b!285461 m!300307))

(assert (=> b!285371 d!65683))

(declare-fun b!285494 () Bool)

(declare-fun e!180964 () Bool)

(declare-fun e!180966 () Bool)

(assert (=> b!285494 (= e!180964 e!180966)))

(declare-fun c!46343 () Bool)

(assert (=> b!285494 (= c!46343 (validKeyInArray!0 (select (arr!6763 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!65691 () Bool)

(declare-fun res!147917 () Bool)

(assert (=> d!65691 (=> res!147917 e!180964)))

(assert (=> d!65691 (= res!147917 (bvsge #b00000000000000000000000000000000 (size!7115 a!3325)))))

(assert (=> d!65691 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!180964)))

(declare-fun b!285495 () Bool)

(declare-fun e!180965 () Bool)

(declare-fun call!25568 () Bool)

(assert (=> b!285495 (= e!180965 call!25568)))

(declare-fun b!285496 () Bool)

(assert (=> b!285496 (= e!180966 e!180965)))

(declare-fun lt!140853 () (_ BitVec 64))

(assert (=> b!285496 (= lt!140853 (select (arr!6763 a!3325) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9045 0))(
  ( (Unit!9046) )
))
(declare-fun lt!140855 () Unit!9045)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14252 (_ BitVec 64) (_ BitVec 32)) Unit!9045)

(assert (=> b!285496 (= lt!140855 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140853 #b00000000000000000000000000000000))))

(assert (=> b!285496 (arrayContainsKey!0 a!3325 lt!140853 #b00000000000000000000000000000000)))

(declare-fun lt!140854 () Unit!9045)

(assert (=> b!285496 (= lt!140854 lt!140855)))

(declare-fun res!147916 () Bool)

(assert (=> b!285496 (= res!147916 (= (seekEntryOrOpen!0 (select (arr!6763 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1932 #b00000000000000000000000000000000)))))

(assert (=> b!285496 (=> (not res!147916) (not e!180965))))

(declare-fun bm!25565 () Bool)

(assert (=> bm!25565 (= call!25568 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!285497 () Bool)

(assert (=> b!285497 (= e!180966 call!25568)))

(assert (= (and d!65691 (not res!147917)) b!285494))

(assert (= (and b!285494 c!46343) b!285496))

(assert (= (and b!285494 (not c!46343)) b!285497))

(assert (= (and b!285496 res!147916) b!285495))

(assert (= (or b!285495 b!285497) bm!25565))

(assert (=> b!285494 m!300301))

(assert (=> b!285494 m!300301))

(assert (=> b!285494 m!300307))

(assert (=> b!285496 m!300301))

(declare-fun m!300337 () Bool)

(assert (=> b!285496 m!300337))

(declare-fun m!300339 () Bool)

(assert (=> b!285496 m!300339))

(assert (=> b!285496 m!300301))

(declare-fun m!300341 () Bool)

(assert (=> b!285496 m!300341))

(declare-fun m!300343 () Bool)

(assert (=> bm!25565 m!300343))

(assert (=> b!285369 d!65691))

(declare-fun d!65705 () Bool)

(assert (=> d!65705 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!27658 d!65705))

(declare-fun d!65713 () Bool)

(assert (=> d!65713 (= (array_inv!4717 a!3325) (bvsge (size!7115 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!27658 d!65713))

(declare-fun d!65715 () Bool)

(assert (=> d!65715 (= (validKeyInArray!0 k!2581) (and (not (= k!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!285364 d!65715))

(declare-fun d!65717 () Bool)

(assert (=> d!65717 (= (validKeyInArray!0 (select (arr!6763 a!3325) startIndex!26)) (and (not (= (select (arr!6763 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6763 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!285368 d!65717))

(declare-fun b!285515 () Bool)

(declare-fun e!180980 () Bool)

(declare-fun e!180982 () Bool)

(assert (=> b!285515 (= e!180980 e!180982)))

(declare-fun c!46348 () Bool)

(assert (=> b!285515 (= c!46348 (validKeyInArray!0 (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) startIndex!26)))))

(declare-fun d!65719 () Bool)

(declare-fun res!147928 () Bool)

(assert (=> d!65719 (=> res!147928 e!180980)))

(assert (=> d!65719 (= res!147928 (bvsge startIndex!26 (size!7115 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)))))))

(assert (=> d!65719 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!26 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)) mask!3868) e!180980)))

(declare-fun b!285516 () Bool)

(declare-fun e!180981 () Bool)

(declare-fun call!25573 () Bool)

(assert (=> b!285516 (= e!180981 call!25573)))

(declare-fun b!285517 () Bool)

(assert (=> b!285517 (= e!180982 e!180981)))

(declare-fun lt!140865 () (_ BitVec 64))

(assert (=> b!285517 (= lt!140865 (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) startIndex!26))))

(declare-fun lt!140867 () Unit!9045)

(assert (=> b!285517 (= lt!140867 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)) lt!140865 startIndex!26))))

(assert (=> b!285517 (arrayContainsKey!0 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)) lt!140865 #b00000000000000000000000000000000)))

(declare-fun lt!140866 () Unit!9045)

(assert (=> b!285517 (= lt!140866 lt!140867)))

(declare-fun res!147927 () Bool)

(assert (=> b!285517 (= res!147927 (= (seekEntryOrOpen!0 (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) startIndex!26) (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)) mask!3868) (Found!1932 startIndex!26)))))

(assert (=> b!285517 (=> (not res!147927) (not e!180981))))

(declare-fun bm!25570 () Bool)

(assert (=> bm!25570 (= call!25573 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)) mask!3868))))

(declare-fun b!285518 () Bool)

(assert (=> b!285518 (= e!180982 call!25573)))

(assert (= (and d!65719 (not res!147928)) b!285515))

(assert (= (and b!285515 c!46348) b!285517))

(assert (= (and b!285515 (not c!46348)) b!285518))

(assert (= (and b!285517 res!147927) b!285516))

(assert (= (or b!285516 b!285518) bm!25570))

(declare-fun m!300361 () Bool)

(assert (=> b!285515 m!300361))

(assert (=> b!285515 m!300361))

(declare-fun m!300363 () Bool)

(assert (=> b!285515 m!300363))

(assert (=> b!285517 m!300361))

(declare-fun m!300365 () Bool)

(assert (=> b!285517 m!300365))

(declare-fun m!300367 () Bool)

(assert (=> b!285517 m!300367))

(assert (=> b!285517 m!300361))

(declare-fun m!300369 () Bool)

(assert (=> b!285517 m!300369))

(declare-fun m!300371 () Bool)

(assert (=> bm!25570 m!300371))

(assert (=> b!285363 d!65719))

(declare-fun b!285567 () Bool)

(declare-fun e!181007 () SeekEntryResult!1932)

(declare-fun lt!140892 () SeekEntryResult!1932)

(assert (=> b!285567 (= e!181007 (MissingZero!1932 (index!9900 lt!140892)))))

(declare-fun d!65721 () Bool)

(declare-fun lt!140893 () SeekEntryResult!1932)

(assert (=> d!65721 (and (or (is-Undefined!1932 lt!140893) (not (is-Found!1932 lt!140893)) (and (bvsge (index!9899 lt!140893) #b00000000000000000000000000000000) (bvslt (index!9899 lt!140893) (size!7115 a!3325)))) (or (is-Undefined!1932 lt!140893) (is-Found!1932 lt!140893) (not (is-MissingZero!1932 lt!140893)) (and (bvsge (index!9898 lt!140893) #b00000000000000000000000000000000) (bvslt (index!9898 lt!140893) (size!7115 a!3325)))) (or (is-Undefined!1932 lt!140893) (is-Found!1932 lt!140893) (is-MissingZero!1932 lt!140893) (not (is-MissingVacant!1932 lt!140893)) (and (bvsge (index!9901 lt!140893) #b00000000000000000000000000000000) (bvslt (index!9901 lt!140893) (size!7115 a!3325)))) (or (is-Undefined!1932 lt!140893) (ite (is-Found!1932 lt!140893) (= (select (arr!6763 a!3325) (index!9899 lt!140893)) k!2581) (ite (is-MissingZero!1932 lt!140893) (= (select (arr!6763 a!3325) (index!9898 lt!140893)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1932 lt!140893) (= (select (arr!6763 a!3325) (index!9901 lt!140893)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!181009 () SeekEntryResult!1932)

(assert (=> d!65721 (= lt!140893 e!181009)))

(declare-fun c!46374 () Bool)

(assert (=> d!65721 (= c!46374 (and (is-Intermediate!1932 lt!140892) (undefined!2744 lt!140892)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14252 (_ BitVec 32)) SeekEntryResult!1932)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!65721 (= lt!140892 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868))))

(assert (=> d!65721 (validMask!0 mask!3868)))

(assert (=> d!65721 (= (seekEntryOrOpen!0 k!2581 a!3325 mask!3868) lt!140893)))

(declare-fun b!285568 () Bool)

(assert (=> b!285568 (= e!181009 Undefined!1932)))

(declare-fun b!285569 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14252 (_ BitVec 32)) SeekEntryResult!1932)

(assert (=> b!285569 (= e!181007 (seekKeyOrZeroReturnVacant!0 (x!28067 lt!140892) (index!9900 lt!140892) (index!9900 lt!140892) k!2581 a!3325 mask!3868))))

(declare-fun b!285570 () Bool)

(declare-fun e!181008 () SeekEntryResult!1932)

(assert (=> b!285570 (= e!181009 e!181008)))

(declare-fun lt!140894 () (_ BitVec 64))

(assert (=> b!285570 (= lt!140894 (select (arr!6763 a!3325) (index!9900 lt!140892)))))

(declare-fun c!46373 () Bool)

(assert (=> b!285570 (= c!46373 (= lt!140894 k!2581))))

(declare-fun b!285571 () Bool)

(declare-fun c!46375 () Bool)

(assert (=> b!285571 (= c!46375 (= lt!140894 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!285571 (= e!181008 e!181007)))

(declare-fun b!285572 () Bool)

(assert (=> b!285572 (= e!181008 (Found!1932 (index!9900 lt!140892)))))

(assert (= (and d!65721 c!46374) b!285568))

(assert (= (and d!65721 (not c!46374)) b!285570))

(assert (= (and b!285570 c!46373) b!285572))

(assert (= (and b!285570 (not c!46373)) b!285571))

(assert (= (and b!285571 c!46375) b!285567))

(assert (= (and b!285571 (not c!46375)) b!285569))

(declare-fun m!300401 () Bool)

(assert (=> d!65721 m!300401))

(declare-fun m!300403 () Bool)

(assert (=> d!65721 m!300403))

(assert (=> d!65721 m!300401))

(declare-fun m!300405 () Bool)

(assert (=> d!65721 m!300405))

(declare-fun m!300407 () Bool)

(assert (=> d!65721 m!300407))

(assert (=> d!65721 m!300243))

(declare-fun m!300409 () Bool)

(assert (=> d!65721 m!300409))

(declare-fun m!300411 () Bool)

(assert (=> b!285569 m!300411))

(declare-fun m!300413 () Bool)

(assert (=> b!285570 m!300413))

(assert (=> b!285366 d!65721))

(push 1)

(assert (not b!285515))

(assert (not d!65721))

(assert (not bm!25565))

(assert (not b!285569))

(assert (not b!285517))

(assert (not bm!25558))

(assert (not b!285496))

(assert (not b!285458))

(assert (not b!285494))

(assert (not b!285438))

(assert (not b!285460))

(assert (not bm!25570))

(assert (not b!285461))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!285610 () Bool)

(declare-fun e!181039 () SeekEntryResult!1932)

(assert (=> b!285610 (= e!181039 (Found!1932 (index!9900 lt!140892)))))

(declare-fun b!285611 () Bool)

(declare-fun e!181037 () SeekEntryResult!1932)

(assert (=> b!285611 (= e!181037 (MissingVacant!1932 (index!9900 lt!140892)))))

(declare-fun b!285612 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!285612 (= e!181037 (seekKeyOrZeroReturnVacant!0 (bvadd (x!28067 lt!140892) #b00000000000000000000000000000001) (nextIndex!0 (index!9900 lt!140892) (x!28067 lt!140892) mask!3868) (index!9900 lt!140892) k!2581 a!3325 mask!3868))))

(declare-fun b!285613 () Bool)

(declare-fun c!46388 () Bool)

(declare-fun lt!140903 () (_ BitVec 64))

(assert (=> b!285613 (= c!46388 (= lt!140903 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!285613 (= e!181039 e!181037)))

(declare-fun b!285614 () Bool)

(declare-fun e!181038 () SeekEntryResult!1932)

(assert (=> b!285614 (= e!181038 Undefined!1932)))

(declare-fun lt!140902 () SeekEntryResult!1932)

(declare-fun d!65729 () Bool)

(assert (=> d!65729 (and (or (is-Undefined!1932 lt!140902) (not (is-Found!1932 lt!140902)) (and (bvsge (index!9899 lt!140902) #b00000000000000000000000000000000) (bvslt (index!9899 lt!140902) (size!7115 a!3325)))) (or (is-Undefined!1932 lt!140902) (is-Found!1932 lt!140902) (not (is-MissingVacant!1932 lt!140902)) (not (= (index!9901 lt!140902) (index!9900 lt!140892))) (and (bvsge (index!9901 lt!140902) #b00000000000000000000000000000000) (bvslt (index!9901 lt!140902) (size!7115 a!3325)))) (or (is-Undefined!1932 lt!140902) (ite (is-Found!1932 lt!140902) (= (select (arr!6763 a!3325) (index!9899 lt!140902)) k!2581) (and (is-MissingVacant!1932 lt!140902) (= (index!9901 lt!140902) (index!9900 lt!140892)) (= (select (arr!6763 a!3325) (index!9901 lt!140902)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!65729 (= lt!140902 e!181038)))

(declare-fun c!46386 () Bool)

(assert (=> d!65729 (= c!46386 (bvsge (x!28067 lt!140892) #b01111111111111111111111111111110))))

(assert (=> d!65729 (= lt!140903 (select (arr!6763 a!3325) (index!9900 lt!140892)))))

(assert (=> d!65729 (validMask!0 mask!3868)))

(assert (=> d!65729 (= (seekKeyOrZeroReturnVacant!0 (x!28067 lt!140892) (index!9900 lt!140892) (index!9900 lt!140892) k!2581 a!3325 mask!3868) lt!140902)))

(declare-fun b!285615 () Bool)

(assert (=> b!285615 (= e!181038 e!181039)))

(declare-fun c!46387 () Bool)

(assert (=> b!285615 (= c!46387 (= lt!140903 k!2581))))

(assert (= (and d!65729 c!46386) b!285614))

(assert (= (and d!65729 (not c!46386)) b!285615))

(assert (= (and b!285615 c!46387) b!285610))

(assert (= (and b!285615 (not c!46387)) b!285613))

(assert (= (and b!285613 c!46388) b!285611))

(assert (= (and b!285613 (not c!46388)) b!285612))

(declare-fun m!300433 () Bool)

(assert (=> b!285612 m!300433))

(assert (=> b!285612 m!300433))

(declare-fun m!300435 () Bool)

(assert (=> b!285612 m!300435))

(declare-fun m!300437 () Bool)

(assert (=> d!65729 m!300437))

(declare-fun m!300439 () Bool)

(assert (=> d!65729 m!300439))

(assert (=> d!65729 m!300413))

(assert (=> d!65729 m!300243))

(assert (=> b!285569 d!65729))

(declare-fun b!285616 () Bool)

(declare-fun e!181040 () Bool)

(declare-fun e!181042 () Bool)

(assert (=> b!285616 (= e!181040 e!181042)))

(declare-fun c!46389 () Bool)

(assert (=> b!285616 (= c!46389 (validKeyInArray!0 (select (arr!6763 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!65731 () Bool)

(declare-fun res!147947 () Bool)

(assert (=> d!65731 (=> res!147947 e!181040)))

(assert (=> d!65731 (= res!147947 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7115 a!3325)))))

(assert (=> d!65731 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868) e!181040)))

(declare-fun b!285617 () Bool)

(declare-fun e!181041 () Bool)

(declare-fun call!25578 () Bool)

(assert (=> b!285617 (= e!181041 call!25578)))

(declare-fun b!285618 () Bool)

(assert (=> b!285618 (= e!181042 e!181041)))

(declare-fun lt!140904 () (_ BitVec 64))

(assert (=> b!285618 (= lt!140904 (select (arr!6763 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!140906 () Unit!9045)

(assert (=> b!285618 (= lt!140906 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140904 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!285618 (arrayContainsKey!0 a!3325 lt!140904 #b00000000000000000000000000000000)))

(declare-fun lt!140905 () Unit!9045)

(assert (=> b!285618 (= lt!140905 lt!140906)))

(declare-fun res!147946 () Bool)

(assert (=> b!285618 (= res!147946 (= (seekEntryOrOpen!0 (select (arr!6763 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!3325 mask!3868) (Found!1932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!285618 (=> (not res!147946) (not e!181041))))

(declare-fun bm!25575 () Bool)

(assert (=> bm!25575 (= call!25578 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!285619 () Bool)

(assert (=> b!285619 (= e!181042 call!25578)))

(assert (= (and d!65731 (not res!147947)) b!285616))

(assert (= (and b!285616 c!46389) b!285618))

(assert (= (and b!285616 (not c!46389)) b!285619))

(assert (= (and b!285618 res!147946) b!285617))

(assert (= (or b!285617 b!285619) bm!25575))

(declare-fun m!300441 () Bool)

(assert (=> b!285616 m!300441))

(assert (=> b!285616 m!300441))

(declare-fun m!300443 () Bool)

(assert (=> b!285616 m!300443))

(assert (=> b!285618 m!300441))

(declare-fun m!300445 () Bool)

(assert (=> b!285618 m!300445))

(declare-fun m!300447 () Bool)

(assert (=> b!285618 m!300447))

(assert (=> b!285618 m!300441))

(declare-fun m!300449 () Bool)

(assert (=> b!285618 m!300449))

(declare-fun m!300451 () Bool)

(assert (=> bm!25575 m!300451))

(assert (=> bm!25565 d!65731))

(declare-fun d!65733 () Bool)

(assert (=> d!65733 (= (validKeyInArray!0 (select (arr!6763 a!3325) #b00000000000000000000000000000000)) (and (not (= (select (arr!6763 a!3325) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6763 a!3325) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!285461 d!65733))

(declare-fun b!285638 () Bool)

(declare-fun e!181054 () Bool)

(declare-fun lt!140912 () SeekEntryResult!1932)

(assert (=> b!285638 (= e!181054 (bvsge (x!28067 lt!140912) #b01111111111111111111111111111110))))

(declare-fun b!285639 () Bool)

(declare-fun e!181053 () SeekEntryResult!1932)

(assert (=> b!285639 (= e!181053 (Intermediate!1932 false (toIndex!0 k!2581 mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!285640 () Bool)

(assert (=> b!285640 (and (bvsge (index!9900 lt!140912) #b00000000000000000000000000000000) (bvslt (index!9900 lt!140912) (size!7115 a!3325)))))

(declare-fun res!147956 () Bool)

(assert (=> b!285640 (= res!147956 (= (select (arr!6763 a!3325) (index!9900 lt!140912)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!181057 () Bool)

(assert (=> b!285640 (=> res!147956 e!181057)))

(declare-fun b!285641 () Bool)

(assert (=> b!285641 (and (bvsge (index!9900 lt!140912) #b00000000000000000000000000000000) (bvslt (index!9900 lt!140912) (size!7115 a!3325)))))

(assert (=> b!285641 (= e!181057 (= (select (arr!6763 a!3325) (index!9900 lt!140912)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!65735 () Bool)

(assert (=> d!65735 e!181054))

(declare-fun c!46398 () Bool)

(assert (=> d!65735 (= c!46398 (and (is-Intermediate!1932 lt!140912) (undefined!2744 lt!140912)))))

(declare-fun e!181056 () SeekEntryResult!1932)

(assert (=> d!65735 (= lt!140912 e!181056)))

(declare-fun c!46396 () Bool)

(assert (=> d!65735 (= c!46396 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!140911 () (_ BitVec 64))

(assert (=> d!65735 (= lt!140911 (select (arr!6763 a!3325) (toIndex!0 k!2581 mask!3868)))))

(assert (=> d!65735 (validMask!0 mask!3868)))

(assert (=> d!65735 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868) lt!140912)))

(declare-fun b!285642 () Bool)

(assert (=> b!285642 (and (bvsge (index!9900 lt!140912) #b00000000000000000000000000000000) (bvslt (index!9900 lt!140912) (size!7115 a!3325)))))

(declare-fun res!147955 () Bool)

(assert (=> b!285642 (= res!147955 (= (select (arr!6763 a!3325) (index!9900 lt!140912)) k!2581))))

(assert (=> b!285642 (=> res!147955 e!181057)))

(declare-fun e!181055 () Bool)

(assert (=> b!285642 (= e!181055 e!181057)))

(declare-fun b!285643 () Bool)

(assert (=> b!285643 (= e!181053 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2581 mask!3868) #b00000000000000000000000000000000 mask!3868) k!2581 a!3325 mask!3868))))

(declare-fun b!285644 () Bool)

(assert (=> b!285644 (= e!181056 (Intermediate!1932 true (toIndex!0 k!2581 mask!3868) #b00000000000000000000000000000000))))

(declare-fun b!285645 () Bool)

(assert (=> b!285645 (= e!181054 e!181055)))

(declare-fun res!147954 () Bool)

(assert (=> b!285645 (= res!147954 (and (is-Intermediate!1932 lt!140912) (not (undefined!2744 lt!140912)) (bvslt (x!28067 lt!140912) #b01111111111111111111111111111110) (bvsge (x!28067 lt!140912) #b00000000000000000000000000000000) (bvsge (x!28067 lt!140912) #b00000000000000000000000000000000)))))

(assert (=> b!285645 (=> (not res!147954) (not e!181055))))

(declare-fun b!285646 () Bool)

(assert (=> b!285646 (= e!181056 e!181053)))

(declare-fun c!46397 () Bool)

(assert (=> b!285646 (= c!46397 (or (= lt!140911 k!2581) (= (bvadd lt!140911 lt!140911) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!65735 c!46396) b!285644))

(assert (= (and d!65735 (not c!46396)) b!285646))

(assert (= (and b!285646 c!46397) b!285639))

(assert (= (and b!285646 (not c!46397)) b!285643))

(assert (= (and d!65735 c!46398) b!285638))

(assert (= (and d!65735 (not c!46398)) b!285645))

(assert (= (and b!285645 res!147954) b!285642))

(assert (= (and b!285642 (not res!147955)) b!285640))

(assert (= (and b!285640 (not res!147956)) b!285641))

(assert (=> b!285643 m!300401))

(declare-fun m!300453 () Bool)

(assert (=> b!285643 m!300453))

(assert (=> b!285643 m!300453))

(declare-fun m!300455 () Bool)

(assert (=> b!285643 m!300455))

(declare-fun m!300457 () Bool)

(assert (=> b!285642 m!300457))

(assert (=> d!65735 m!300401))

(declare-fun m!300459 () Bool)

(assert (=> d!65735 m!300459))

(assert (=> d!65735 m!300243))

(assert (=> b!285640 m!300457))

(assert (=> b!285641 m!300457))

(assert (=> d!65721 d!65735))

(declare-fun d!65739 () Bool)

(declare-fun lt!140924 () (_ BitVec 32))

(declare-fun lt!140923 () (_ BitVec 32))

(assert (=> d!65739 (= lt!140924 (bvmul (bvxor lt!140923 (bvlshr lt!140923 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!65739 (= lt!140923 ((_ extract 31 0) (bvand (bvxor k!2581 (bvlshr k!2581 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!65739 (and (bvsge mask!3868 #b00000000000000000000000000000000) (let ((res!147957 (let ((h!5264 ((_ extract 31 0) (bvand (bvxor k!2581 (bvlshr k!2581 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!28072 (bvmul (bvxor h!5264 (bvlshr h!5264 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!28072 (bvlshr x!28072 #b00000000000000000000000000001101)) mask!3868))))) (and (bvslt res!147957 (bvadd mask!3868 #b00000000000000000000000000000001)) (bvsge res!147957 #b00000000000000000000000000000000))))))

(assert (=> d!65739 (= (toIndex!0 k!2581 mask!3868) (bvand (bvxor lt!140924 (bvlshr lt!140924 #b00000000000000000000000000001101)) mask!3868))))

(assert (=> d!65721 d!65739))

(assert (=> d!65721 d!65705))

(declare-fun d!65751 () Bool)

(assert (=> d!65751 (arrayContainsKey!0 a!3325 lt!140853 #b00000000000000000000000000000000)))

(declare-fun lt!140927 () Unit!9045)

(declare-fun choose!13 (array!14252 (_ BitVec 64) (_ BitVec 32)) Unit!9045)

(assert (=> d!65751 (= lt!140927 (choose!13 a!3325 lt!140853 #b00000000000000000000000000000000))))

(assert (=> d!65751 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!65751 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!140853 #b00000000000000000000000000000000) lt!140927)))

(declare-fun bs!10145 () Bool)

(assert (= bs!10145 d!65751))

(assert (=> bs!10145 m!300339))

(declare-fun m!300481 () Bool)

(assert (=> bs!10145 m!300481))

(assert (=> b!285496 d!65751))

(declare-fun d!65753 () Bool)

(declare-fun res!147960 () Bool)

(declare-fun e!181063 () Bool)

(assert (=> d!65753 (=> res!147960 e!181063)))

(assert (=> d!65753 (= res!147960 (= (select (arr!6763 a!3325) #b00000000000000000000000000000000) lt!140853))))

(assert (=> d!65753 (= (arrayContainsKey!0 a!3325 lt!140853 #b00000000000000000000000000000000) e!181063)))

(declare-fun b!285655 () Bool)

(declare-fun e!181064 () Bool)

(assert (=> b!285655 (= e!181063 e!181064)))

(declare-fun res!147961 () Bool)

(assert (=> b!285655 (=> (not res!147961) (not e!181064))))

(assert (=> b!285655 (= res!147961 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7115 a!3325)))))

(declare-fun b!285656 () Bool)

(assert (=> b!285656 (= e!181064 (arrayContainsKey!0 a!3325 lt!140853 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65753 (not res!147960)) b!285655))

(assert (= (and b!285655 res!147961) b!285656))

(assert (=> d!65753 m!300301))

(declare-fun m!300483 () Bool)

(assert (=> b!285656 m!300483))

(assert (=> b!285496 d!65753))

(declare-fun b!285657 () Bool)

(declare-fun e!181065 () SeekEntryResult!1932)

(declare-fun lt!140928 () SeekEntryResult!1932)

(assert (=> b!285657 (= e!181065 (MissingZero!1932 (index!9900 lt!140928)))))

(declare-fun d!65755 () Bool)

(declare-fun lt!140929 () SeekEntryResult!1932)

(assert (=> d!65755 (and (or (is-Undefined!1932 lt!140929) (not (is-Found!1932 lt!140929)) (and (bvsge (index!9899 lt!140929) #b00000000000000000000000000000000) (bvslt (index!9899 lt!140929) (size!7115 a!3325)))) (or (is-Undefined!1932 lt!140929) (is-Found!1932 lt!140929) (not (is-MissingZero!1932 lt!140929)) (and (bvsge (index!9898 lt!140929) #b00000000000000000000000000000000) (bvslt (index!9898 lt!140929) (size!7115 a!3325)))) (or (is-Undefined!1932 lt!140929) (is-Found!1932 lt!140929) (is-MissingZero!1932 lt!140929) (not (is-MissingVacant!1932 lt!140929)) (and (bvsge (index!9901 lt!140929) #b00000000000000000000000000000000) (bvslt (index!9901 lt!140929) (size!7115 a!3325)))) (or (is-Undefined!1932 lt!140929) (ite (is-Found!1932 lt!140929) (= (select (arr!6763 a!3325) (index!9899 lt!140929)) (select (arr!6763 a!3325) #b00000000000000000000000000000000)) (ite (is-MissingZero!1932 lt!140929) (= (select (arr!6763 a!3325) (index!9898 lt!140929)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1932 lt!140929) (= (select (arr!6763 a!3325) (index!9901 lt!140929)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!181067 () SeekEntryResult!1932)

(assert (=> d!65755 (= lt!140929 e!181067)))

(declare-fun c!46403 () Bool)

(assert (=> d!65755 (= c!46403 (and (is-Intermediate!1932 lt!140928) (undefined!2744 lt!140928)))))

(assert (=> d!65755 (= lt!140928 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6763 a!3325) #b00000000000000000000000000000000) mask!3868) (select (arr!6763 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868))))

(assert (=> d!65755 (validMask!0 mask!3868)))

(assert (=> d!65755 (= (seekEntryOrOpen!0 (select (arr!6763 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) lt!140929)))

(declare-fun b!285658 () Bool)

(assert (=> b!285658 (= e!181067 Undefined!1932)))

(declare-fun b!285659 () Bool)

(assert (=> b!285659 (= e!181065 (seekKeyOrZeroReturnVacant!0 (x!28067 lt!140928) (index!9900 lt!140928) (index!9900 lt!140928) (select (arr!6763 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868))))

(declare-fun b!285660 () Bool)

(declare-fun e!181066 () SeekEntryResult!1932)

(assert (=> b!285660 (= e!181067 e!181066)))

(declare-fun lt!140930 () (_ BitVec 64))

(assert (=> b!285660 (= lt!140930 (select (arr!6763 a!3325) (index!9900 lt!140928)))))

(declare-fun c!46402 () Bool)

(assert (=> b!285660 (= c!46402 (= lt!140930 (select (arr!6763 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!285661 () Bool)

(declare-fun c!46404 () Bool)

(assert (=> b!285661 (= c!46404 (= lt!140930 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!285661 (= e!181066 e!181065)))

(declare-fun b!285662 () Bool)

(assert (=> b!285662 (= e!181066 (Found!1932 (index!9900 lt!140928)))))

(assert (= (and d!65755 c!46403) b!285658))

(assert (= (and d!65755 (not c!46403)) b!285660))

(assert (= (and b!285660 c!46402) b!285662))

(assert (= (and b!285660 (not c!46402)) b!285661))

(assert (= (and b!285661 c!46404) b!285657))

(assert (= (and b!285661 (not c!46404)) b!285659))

(declare-fun m!300485 () Bool)

(assert (=> d!65755 m!300485))

(assert (=> d!65755 m!300301))

(declare-fun m!300487 () Bool)

(assert (=> d!65755 m!300487))

(assert (=> d!65755 m!300301))

(assert (=> d!65755 m!300485))

(declare-fun m!300489 () Bool)

(assert (=> d!65755 m!300489))

(declare-fun m!300491 () Bool)

(assert (=> d!65755 m!300491))

(assert (=> d!65755 m!300243))

(declare-fun m!300493 () Bool)

(assert (=> d!65755 m!300493))

(assert (=> b!285659 m!300301))

(declare-fun m!300495 () Bool)

(assert (=> b!285659 m!300495))

(declare-fun m!300497 () Bool)

(assert (=> b!285660 m!300497))

(assert (=> b!285496 d!65755))

(declare-fun b!285663 () Bool)

(declare-fun e!181069 () Bool)

(declare-fun call!25579 () Bool)

(assert (=> b!285663 (= e!181069 call!25579)))

(declare-fun b!285664 () Bool)

(declare-fun e!181068 () Bool)

(assert (=> b!285664 (= e!181068 (contains!1998 (ite c!46336 (Cons!4588 (select (arr!6763 a!3325) #b00000000000000000000000000000000) Nil!4589) Nil!4589) (select (arr!6763 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!285666 () Bool)

(declare-fun e!181070 () Bool)

(assert (=> b!285666 (= e!181070 e!181069)))

(declare-fun c!46405 () Bool)

(assert (=> b!285666 (= c!46405 (validKeyInArray!0 (select (arr!6763 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!25576 () Bool)

(assert (=> bm!25576 (= call!25579 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!46405 (Cons!4588 (select (arr!6763 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!46336 (Cons!4588 (select (arr!6763 a!3325) #b00000000000000000000000000000000) Nil!4589) Nil!4589)) (ite c!46336 (Cons!4588 (select (arr!6763 a!3325) #b00000000000000000000000000000000) Nil!4589) Nil!4589))))))

(declare-fun b!285667 () Bool)

(declare-fun e!181071 () Bool)

(assert (=> b!285667 (= e!181071 e!181070)))

(declare-fun res!147962 () Bool)

(assert (=> b!285667 (=> (not res!147962) (not e!181070))))

(assert (=> b!285667 (= res!147962 (not e!181068))))

(declare-fun res!147963 () Bool)

(assert (=> b!285667 (=> (not res!147963) (not e!181068))))

(assert (=> b!285667 (= res!147963 (validKeyInArray!0 (select (arr!6763 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!65757 () Bool)

(declare-fun res!147964 () Bool)

(assert (=> d!65757 (=> res!147964 e!181071)))

(assert (=> d!65757 (= res!147964 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7115 a!3325)))))

(assert (=> d!65757 (= (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46336 (Cons!4588 (select (arr!6763 a!3325) #b00000000000000000000000000000000) Nil!4589) Nil!4589)) e!181071)))

(declare-fun b!285665 () Bool)

(assert (=> b!285665 (= e!181069 call!25579)))

(assert (= (and d!65757 (not res!147964)) b!285667))

(assert (= (and b!285667 res!147963) b!285664))

(assert (= (and b!285667 res!147962) b!285666))

(assert (= (and b!285666 c!46405) b!285663))

(assert (= (and b!285666 (not c!46405)) b!285665))

(assert (= (or b!285663 b!285665) bm!25576))

(assert (=> b!285664 m!300441))

(assert (=> b!285664 m!300441))

(declare-fun m!300499 () Bool)

(assert (=> b!285664 m!300499))

(assert (=> b!285666 m!300441))

(assert (=> b!285666 m!300441))

(assert (=> b!285666 m!300443))

(assert (=> bm!25576 m!300441))

(declare-fun m!300501 () Bool)

(assert (=> bm!25576 m!300501))

(assert (=> b!285667 m!300441))

(assert (=> b!285667 m!300441))

(assert (=> b!285667 m!300443))

(assert (=> bm!25558 d!65757))

(assert (=> b!285494 d!65733))

(assert (=> b!285460 d!65733))

(declare-fun d!65759 () Bool)

(declare-fun res!147965 () Bool)

(declare-fun e!181072 () Bool)

(assert (=> d!65759 (=> res!147965 e!181072)))

(assert (=> d!65759 (= res!147965 (= (select (arr!6763 a!3325) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k!2581))))

(assert (=> d!65759 (= (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!181072)))

(declare-fun b!285668 () Bool)

(declare-fun e!181073 () Bool)

(assert (=> b!285668 (= e!181072 e!181073)))

(declare-fun res!147966 () Bool)

(assert (=> b!285668 (=> (not res!147966) (not e!181073))))

(assert (=> b!285668 (= res!147966 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!7115 a!3325)))))

(declare-fun b!285669 () Bool)

(assert (=> b!285669 (= e!181073 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!65759 (not res!147965)) b!285668))

(assert (= (and b!285668 res!147966) b!285669))

(assert (=> d!65759 m!300441))

(declare-fun m!300503 () Bool)

(assert (=> b!285669 m!300503))

(assert (=> b!285438 d!65759))

(declare-fun d!65761 () Bool)

(declare-fun lt!140933 () Bool)

(declare-fun content!193 (List!4592) (Set (_ BitVec 64)))

(assert (=> d!65761 (= lt!140933 (set.member (select (arr!6763 a!3325) #b00000000000000000000000000000000) (content!193 Nil!4589)))))

(declare-fun e!181079 () Bool)

(assert (=> d!65761 (= lt!140933 e!181079)))

(declare-fun res!147971 () Bool)

(assert (=> d!65761 (=> (not res!147971) (not e!181079))))

(assert (=> d!65761 (= res!147971 (is-Cons!4588 Nil!4589))))

(assert (=> d!65761 (= (contains!1998 Nil!4589 (select (arr!6763 a!3325) #b00000000000000000000000000000000)) lt!140933)))

(declare-fun b!285674 () Bool)

(declare-fun e!181078 () Bool)

(assert (=> b!285674 (= e!181079 e!181078)))

(declare-fun res!147972 () Bool)

(assert (=> b!285674 (=> res!147972 e!181078)))

(assert (=> b!285674 (= res!147972 (= (h!5261 Nil!4589) (select (arr!6763 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!285675 () Bool)

(assert (=> b!285675 (= e!181078 (contains!1998 (t!9682 Nil!4589) (select (arr!6763 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!65761 res!147971) b!285674))

(assert (= (and b!285674 (not res!147972)) b!285675))

(declare-fun m!300505 () Bool)

(assert (=> d!65761 m!300505))

(assert (=> d!65761 m!300301))

(declare-fun m!300507 () Bool)

(assert (=> d!65761 m!300507))

(assert (=> b!285675 m!300301))

(declare-fun m!300509 () Bool)

(assert (=> b!285675 m!300509))

(assert (=> b!285458 d!65761))

(declare-fun b!285676 () Bool)

(declare-fun e!181080 () Bool)

(declare-fun e!181082 () Bool)

(assert (=> b!285676 (= e!181080 e!181082)))

(declare-fun c!46406 () Bool)

(assert (=> b!285676 (= c!46406 (validKeyInArray!0 (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) (bvadd startIndex!26 #b00000000000000000000000000000001))))))

(declare-fun d!65763 () Bool)

(declare-fun res!147974 () Bool)

(assert (=> d!65763 (=> res!147974 e!181080)))

(assert (=> d!65763 (= res!147974 (bvsge (bvadd startIndex!26 #b00000000000000000000000000000001) (size!7115 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)))))))

(assert (=> d!65763 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)) mask!3868) e!181080)))

(declare-fun b!285677 () Bool)

(declare-fun e!181081 () Bool)

(declare-fun call!25580 () Bool)

(assert (=> b!285677 (= e!181081 call!25580)))

(declare-fun b!285678 () Bool)

(assert (=> b!285678 (= e!181082 e!181081)))

(declare-fun lt!140934 () (_ BitVec 64))

(assert (=> b!285678 (= lt!140934 (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) (bvadd startIndex!26 #b00000000000000000000000000000001)))))

(declare-fun lt!140936 () Unit!9045)

(assert (=> b!285678 (= lt!140936 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)) lt!140934 (bvadd startIndex!26 #b00000000000000000000000000000001)))))

(assert (=> b!285678 (arrayContainsKey!0 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)) lt!140934 #b00000000000000000000000000000000)))

(declare-fun lt!140935 () Unit!9045)

(assert (=> b!285678 (= lt!140935 lt!140936)))

(declare-fun res!147973 () Bool)

(assert (=> b!285678 (= res!147973 (= (seekEntryOrOpen!0 (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) (bvadd startIndex!26 #b00000000000000000000000000000001)) (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)) mask!3868) (Found!1932 (bvadd startIndex!26 #b00000000000000000000000000000001))))))

(assert (=> b!285678 (=> (not res!147973) (not e!181081))))

(declare-fun bm!25577 () Bool)

(assert (=> bm!25577 (= call!25580 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)) mask!3868))))

(declare-fun b!285679 () Bool)

(assert (=> b!285679 (= e!181082 call!25580)))

(assert (= (and d!65763 (not res!147974)) b!285676))

(assert (= (and b!285676 c!46406) b!285678))

(assert (= (and b!285676 (not c!46406)) b!285679))

(assert (= (and b!285678 res!147973) b!285677))

(assert (= (or b!285677 b!285679) bm!25577))

(declare-fun m!300511 () Bool)

(assert (=> b!285676 m!300511))

(assert (=> b!285676 m!300511))

(declare-fun m!300513 () Bool)

(assert (=> b!285676 m!300513))

(assert (=> b!285678 m!300511))

(declare-fun m!300515 () Bool)

(assert (=> b!285678 m!300515))

(declare-fun m!300517 () Bool)

(assert (=> b!285678 m!300517))

(assert (=> b!285678 m!300511))

(declare-fun m!300519 () Bool)

(assert (=> b!285678 m!300519))

(declare-fun m!300521 () Bool)

(assert (=> bm!25577 m!300521))

(assert (=> bm!25570 d!65763))

(declare-fun d!65765 () Bool)

(assert (=> d!65765 (arrayContainsKey!0 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)) lt!140865 #b00000000000000000000000000000000)))

(declare-fun lt!140937 () Unit!9045)

(assert (=> d!65765 (= lt!140937 (choose!13 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)) lt!140865 startIndex!26))))

(assert (=> d!65765 (bvsge startIndex!26 #b00000000000000000000000000000000)))

(assert (=> d!65765 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)) lt!140865 startIndex!26) lt!140937)))

(declare-fun bs!10146 () Bool)

(assert (= bs!10146 d!65765))

(assert (=> bs!10146 m!300367))

(declare-fun m!300523 () Bool)

(assert (=> bs!10146 m!300523))

(assert (=> b!285517 d!65765))

(declare-fun d!65767 () Bool)

(declare-fun res!147975 () Bool)

(declare-fun e!181083 () Bool)

(assert (=> d!65767 (=> res!147975 e!181083)))

(assert (=> d!65767 (= res!147975 (= (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) #b00000000000000000000000000000000) lt!140865))))

(assert (=> d!65767 (= (arrayContainsKey!0 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)) lt!140865 #b00000000000000000000000000000000) e!181083)))

(declare-fun b!285680 () Bool)

(declare-fun e!181084 () Bool)

(assert (=> b!285680 (= e!181083 e!181084)))

(declare-fun res!147976 () Bool)

(assert (=> b!285680 (=> (not res!147976) (not e!181084))))

(assert (=> b!285680 (= res!147976 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7115 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)))))))

(declare-fun b!285681 () Bool)

(assert (=> b!285681 (= e!181084 (arrayContainsKey!0 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)) lt!140865 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65767 (not res!147975)) b!285680))

(assert (= (and b!285680 res!147976) b!285681))

(declare-fun m!300525 () Bool)

(assert (=> d!65767 m!300525))

(declare-fun m!300527 () Bool)

(assert (=> b!285681 m!300527))

(assert (=> b!285517 d!65767))

(declare-fun b!285682 () Bool)

(declare-fun e!181085 () SeekEntryResult!1932)

(declare-fun lt!140938 () SeekEntryResult!1932)

(assert (=> b!285682 (= e!181085 (MissingZero!1932 (index!9900 lt!140938)))))

(declare-fun d!65769 () Bool)

(declare-fun lt!140939 () SeekEntryResult!1932)

(assert (=> d!65769 (and (or (is-Undefined!1932 lt!140939) (not (is-Found!1932 lt!140939)) (and (bvsge (index!9899 lt!140939) #b00000000000000000000000000000000) (bvslt (index!9899 lt!140939) (size!7115 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)))))) (or (is-Undefined!1932 lt!140939) (is-Found!1932 lt!140939) (not (is-MissingZero!1932 lt!140939)) (and (bvsge (index!9898 lt!140939) #b00000000000000000000000000000000) (bvslt (index!9898 lt!140939) (size!7115 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)))))) (or (is-Undefined!1932 lt!140939) (is-Found!1932 lt!140939) (is-MissingZero!1932 lt!140939) (not (is-MissingVacant!1932 lt!140939)) (and (bvsge (index!9901 lt!140939) #b00000000000000000000000000000000) (bvslt (index!9901 lt!140939) (size!7115 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)))))) (or (is-Undefined!1932 lt!140939) (ite (is-Found!1932 lt!140939) (= (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) (index!9899 lt!140939)) (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) startIndex!26)) (ite (is-MissingZero!1932 lt!140939) (= (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) (index!9898 lt!140939)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1932 lt!140939) (= (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) (index!9901 lt!140939)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!181087 () SeekEntryResult!1932)

(assert (=> d!65769 (= lt!140939 e!181087)))

(declare-fun c!46408 () Bool)

(assert (=> d!65769 (= c!46408 (and (is-Intermediate!1932 lt!140938) (undefined!2744 lt!140938)))))

(assert (=> d!65769 (= lt!140938 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) startIndex!26) mask!3868) (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) startIndex!26) (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)) mask!3868))))

(assert (=> d!65769 (validMask!0 mask!3868)))

(assert (=> d!65769 (= (seekEntryOrOpen!0 (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) startIndex!26) (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)) mask!3868) lt!140939)))

(declare-fun b!285683 () Bool)

(assert (=> b!285683 (= e!181087 Undefined!1932)))

(declare-fun b!285684 () Bool)

(assert (=> b!285684 (= e!181085 (seekKeyOrZeroReturnVacant!0 (x!28067 lt!140938) (index!9900 lt!140938) (index!9900 lt!140938) (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) startIndex!26) (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325)) mask!3868))))

(declare-fun b!285685 () Bool)

(declare-fun e!181086 () SeekEntryResult!1932)

(assert (=> b!285685 (= e!181087 e!181086)))

(declare-fun lt!140940 () (_ BitVec 64))

(assert (=> b!285685 (= lt!140940 (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) (index!9900 lt!140938)))))

(declare-fun c!46407 () Bool)

(assert (=> b!285685 (= c!46407 (= lt!140940 (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) startIndex!26)))))

(declare-fun b!285686 () Bool)

(declare-fun c!46409 () Bool)

(assert (=> b!285686 (= c!46409 (= lt!140940 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!285686 (= e!181086 e!181085)))

(declare-fun b!285687 () Bool)

(assert (=> b!285687 (= e!181086 (Found!1932 (index!9900 lt!140938)))))

(assert (= (and d!65769 c!46408) b!285683))

(assert (= (and d!65769 (not c!46408)) b!285685))

(assert (= (and b!285685 c!46407) b!285687))

(assert (= (and b!285685 (not c!46407)) b!285686))

(assert (= (and b!285686 c!46409) b!285682))

(assert (= (and b!285686 (not c!46409)) b!285684))

(declare-fun m!300529 () Bool)

(assert (=> d!65769 m!300529))

(assert (=> d!65769 m!300361))

(declare-fun m!300531 () Bool)

(assert (=> d!65769 m!300531))

(assert (=> d!65769 m!300361))

(assert (=> d!65769 m!300529))

(declare-fun m!300533 () Bool)

(assert (=> d!65769 m!300533))

(declare-fun m!300535 () Bool)

(assert (=> d!65769 m!300535))

(assert (=> d!65769 m!300243))

(declare-fun m!300537 () Bool)

(assert (=> d!65769 m!300537))

(assert (=> b!285684 m!300361))

(declare-fun m!300539 () Bool)

(assert (=> b!285684 m!300539))

(declare-fun m!300541 () Bool)

(assert (=> b!285685 m!300541))

(assert (=> b!285517 d!65769))

(declare-fun d!65771 () Bool)

(assert (=> d!65771 (= (validKeyInArray!0 (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) startIndex!26)) (and (not (= (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6763 (array!14253 (store (arr!6763 a!3325) i!1267 k!2581) (size!7115 a!3325))) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!285515 d!65771))

(push 1)

(assert (not d!65769))

(assert (not b!285675))

(assert (not b!285643))

(assert (not b!285666))

(assert (not b!285681))

(assert (not b!285618))

(assert (not bm!25575))

(assert (not d!65729))

(assert (not b!285656))

(assert (not b!285612))

(assert (not b!285664))

(assert (not d!65765))

(assert (not b!285659))

(assert (not d!65761))

(assert (not d!65735))

(assert (not b!285669))

(assert (not bm!25577))

(assert (not b!285616))

(assert (not b!285676))

(assert (not d!65755))

(assert (not d!65751))

(assert (not b!285667))

(assert (not bm!25576))

(assert (not b!285678))

(assert (not b!285684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

