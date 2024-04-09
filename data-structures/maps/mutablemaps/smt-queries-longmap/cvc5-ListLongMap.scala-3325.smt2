; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45904 () Bool)

(assert start!45904)

(declare-fun b!508144 () Bool)

(declare-fun res!309259 () Bool)

(declare-fun e!297286 () Bool)

(assert (=> b!508144 (=> (not res!309259) (not e!297286))))

(declare-datatypes ((array!32620 0))(
  ( (array!32621 (arr!15687 (Array (_ BitVec 32) (_ BitVec 64))) (size!16051 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32620)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32620 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508144 (= res!309259 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!508145 () Bool)

(declare-fun res!309257 () Bool)

(declare-fun e!297284 () Bool)

(assert (=> b!508145 (=> (not res!309257) (not e!297284))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32620 (_ BitVec 32)) Bool)

(assert (=> b!508145 (= res!309257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508146 () Bool)

(declare-fun res!309255 () Bool)

(assert (=> b!508146 (=> (not res!309255) (not e!297286))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508146 (= res!309255 (validKeyInArray!0 (select (arr!15687 a!3235) j!176)))))

(declare-fun b!508147 () Bool)

(declare-fun res!309260 () Bool)

(assert (=> b!508147 (=> (not res!309260) (not e!297286))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508147 (= res!309260 (and (= (size!16051 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16051 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16051 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508148 () Bool)

(declare-datatypes ((SeekEntryResult!4161 0))(
  ( (MissingZero!4161 (index!18832 (_ BitVec 32))) (Found!4161 (index!18833 (_ BitVec 32))) (Intermediate!4161 (undefined!4973 Bool) (index!18834 (_ BitVec 32)) (x!47845 (_ BitVec 32))) (Undefined!4161) (MissingVacant!4161 (index!18835 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32620 (_ BitVec 32)) SeekEntryResult!4161)

(assert (=> b!508148 (= e!297284 (not (= (seekEntryOrOpen!0 (select (arr!15687 a!3235) j!176) a!3235 mask!3524) (Found!4161 j!176))))))

(assert (=> b!508148 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15572 0))(
  ( (Unit!15573) )
))
(declare-fun lt!232171 () Unit!15572)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32620 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15572)

(assert (=> b!508148 (= lt!232171 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!309256 () Bool)

(assert (=> start!45904 (=> (not res!309256) (not e!297286))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45904 (= res!309256 (validMask!0 mask!3524))))

(assert (=> start!45904 e!297286))

(assert (=> start!45904 true))

(declare-fun array_inv!11461 (array!32620) Bool)

(assert (=> start!45904 (array_inv!11461 a!3235)))

(declare-fun b!508149 () Bool)

(declare-fun res!309253 () Bool)

(assert (=> b!508149 (=> (not res!309253) (not e!297284))))

(declare-datatypes ((List!9898 0))(
  ( (Nil!9895) (Cons!9894 (h!10771 (_ BitVec 64)) (t!16134 List!9898)) )
))
(declare-fun arrayNoDuplicates!0 (array!32620 (_ BitVec 32) List!9898) Bool)

(assert (=> b!508149 (= res!309253 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9895))))

(declare-fun b!508150 () Bool)

(assert (=> b!508150 (= e!297286 e!297284)))

(declare-fun res!309258 () Bool)

(assert (=> b!508150 (=> (not res!309258) (not e!297284))))

(declare-fun lt!232172 () SeekEntryResult!4161)

(assert (=> b!508150 (= res!309258 (or (= lt!232172 (MissingZero!4161 i!1204)) (= lt!232172 (MissingVacant!4161 i!1204))))))

(assert (=> b!508150 (= lt!232172 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!508151 () Bool)

(declare-fun res!309254 () Bool)

(assert (=> b!508151 (=> (not res!309254) (not e!297286))))

(assert (=> b!508151 (= res!309254 (validKeyInArray!0 k!2280))))

(assert (= (and start!45904 res!309256) b!508147))

(assert (= (and b!508147 res!309260) b!508146))

(assert (= (and b!508146 res!309255) b!508151))

(assert (= (and b!508151 res!309254) b!508144))

(assert (= (and b!508144 res!309259) b!508150))

(assert (= (and b!508150 res!309258) b!508145))

(assert (= (and b!508145 res!309257) b!508149))

(assert (= (and b!508149 res!309253) b!508148))

(declare-fun m!488965 () Bool)

(assert (=> b!508150 m!488965))

(declare-fun m!488967 () Bool)

(assert (=> start!45904 m!488967))

(declare-fun m!488969 () Bool)

(assert (=> start!45904 m!488969))

(declare-fun m!488971 () Bool)

(assert (=> b!508145 m!488971))

(declare-fun m!488973 () Bool)

(assert (=> b!508148 m!488973))

(assert (=> b!508148 m!488973))

(declare-fun m!488975 () Bool)

(assert (=> b!508148 m!488975))

(declare-fun m!488977 () Bool)

(assert (=> b!508148 m!488977))

(declare-fun m!488979 () Bool)

(assert (=> b!508148 m!488979))

(declare-fun m!488981 () Bool)

(assert (=> b!508151 m!488981))

(assert (=> b!508146 m!488973))

(assert (=> b!508146 m!488973))

(declare-fun m!488983 () Bool)

(assert (=> b!508146 m!488983))

(declare-fun m!488985 () Bool)

(assert (=> b!508149 m!488985))

(declare-fun m!488987 () Bool)

(assert (=> b!508144 m!488987))

(push 1)

(assert (not start!45904))

(assert (not b!508148))

(assert (not b!508146))

(assert (not b!508144))

(assert (not b!508151))

(assert (not b!508150))

(assert (not b!508149))

(assert (not b!508145))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!78621 () Bool)

(assert (=> d!78621 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!45904 d!78621))

(declare-fun d!78627 () Bool)

(assert (=> d!78627 (= (array_inv!11461 a!3235) (bvsge (size!16051 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!45904 d!78627))

(declare-fun b!508241 () Bool)

(declare-fun e!297332 () Bool)

(declare-fun call!31475 () Bool)

(assert (=> b!508241 (= e!297332 call!31475)))

(declare-fun d!78629 () Bool)

(declare-fun res!309323 () Bool)

(declare-fun e!297333 () Bool)

(assert (=> d!78629 (=> res!309323 e!297333)))

(assert (=> d!78629 (= res!309323 (bvsge #b00000000000000000000000000000000 (size!16051 a!3235)))))

(assert (=> d!78629 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!297333)))

(declare-fun b!508242 () Bool)

(declare-fun e!297334 () Bool)

(assert (=> b!508242 (= e!297334 call!31475)))

(declare-fun bm!31472 () Bool)

(assert (=> bm!31472 (= call!31475 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!508243 () Bool)

(assert (=> b!508243 (= e!297333 e!297334)))

(declare-fun c!59738 () Bool)

(assert (=> b!508243 (= c!59738 (validKeyInArray!0 (select (arr!15687 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!508244 () Bool)

(assert (=> b!508244 (= e!297334 e!297332)))

(declare-fun lt!232201 () (_ BitVec 64))

(assert (=> b!508244 (= lt!232201 (select (arr!15687 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!232202 () Unit!15572)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32620 (_ BitVec 64) (_ BitVec 32)) Unit!15572)

(assert (=> b!508244 (= lt!232202 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!232201 #b00000000000000000000000000000000))))

(assert (=> b!508244 (arrayContainsKey!0 a!3235 lt!232201 #b00000000000000000000000000000000)))

(declare-fun lt!232200 () Unit!15572)

(assert (=> b!508244 (= lt!232200 lt!232202)))

(declare-fun res!309322 () Bool)

(assert (=> b!508244 (= res!309322 (= (seekEntryOrOpen!0 (select (arr!15687 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4161 #b00000000000000000000000000000000)))))

(assert (=> b!508244 (=> (not res!309322) (not e!297332))))

(assert (= (and d!78629 (not res!309323)) b!508243))

(assert (= (and b!508243 c!59738) b!508244))

(assert (= (and b!508243 (not c!59738)) b!508242))

(assert (= (and b!508244 res!309322) b!508241))

(assert (= (or b!508241 b!508242) bm!31472))

(declare-fun m!489059 () Bool)

(assert (=> bm!31472 m!489059))

(declare-fun m!489061 () Bool)

(assert (=> b!508243 m!489061))

(assert (=> b!508243 m!489061))

(declare-fun m!489063 () Bool)

(assert (=> b!508243 m!489063))

(assert (=> b!508244 m!489061))

(declare-fun m!489065 () Bool)

(assert (=> b!508244 m!489065))

(declare-fun m!489067 () Bool)

(assert (=> b!508244 m!489067))

(assert (=> b!508244 m!489061))

(declare-fun m!489069 () Bool)

(assert (=> b!508244 m!489069))

(assert (=> b!508145 d!78629))

(declare-fun d!78633 () Bool)

(assert (=> d!78633 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!508151 d!78633))

(declare-fun d!78635 () Bool)

(assert (=> d!78635 (= (validKeyInArray!0 (select (arr!15687 a!3235) j!176)) (and (not (= (select (arr!15687 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15687 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!508146 d!78635))

(declare-fun b!508285 () Bool)

(declare-fun e!297361 () Bool)

(declare-fun call!31481 () Bool)

(assert (=> b!508285 (= e!297361 call!31481)))

(declare-fun bm!31478 () Bool)

(declare-fun c!59753 () Bool)

(assert (=> bm!31478 (= call!31481 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!59753 (Cons!9894 (select (arr!15687 a!3235) #b00000000000000000000000000000000) Nil!9895) Nil!9895)))))

(declare-fun b!508286 () Bool)

(declare-fun e!297363 () Bool)

(declare-fun e!297362 () Bool)

(assert (=> b!508286 (= e!297363 e!297362)))

(declare-fun res!309337 () Bool)

(assert (=> b!508286 (=> (not res!309337) (not e!297362))))

(declare-fun e!297364 () Bool)

(assert (=> b!508286 (= res!309337 (not e!297364))))

(declare-fun res!309338 () Bool)

(assert (=> b!508286 (=> (not res!309338) (not e!297364))))

(assert (=> b!508286 (= res!309338 (validKeyInArray!0 (select (arr!15687 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!508287 () Bool)

(assert (=> b!508287 (= e!297361 call!31481)))

(declare-fun b!508288 () Bool)

(assert (=> b!508288 (= e!297362 e!297361)))

(assert (=> b!508288 (= c!59753 (validKeyInArray!0 (select (arr!15687 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!78637 () Bool)

(declare-fun res!309336 () Bool)

(assert (=> d!78637 (=> res!309336 e!297363)))

(assert (=> d!78637 (= res!309336 (bvsge #b00000000000000000000000000000000 (size!16051 a!3235)))))

(assert (=> d!78637 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9895) e!297363)))

(declare-fun b!508289 () Bool)

(declare-fun contains!2726 (List!9898 (_ BitVec 64)) Bool)

(assert (=> b!508289 (= e!297364 (contains!2726 Nil!9895 (select (arr!15687 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!78637 (not res!309336)) b!508286))

(assert (= (and b!508286 res!309338) b!508289))

(assert (= (and b!508286 res!309337) b!508288))

(assert (= (and b!508288 c!59753) b!508287))

(assert (= (and b!508288 (not c!59753)) b!508285))

(assert (= (or b!508287 b!508285) bm!31478))

(assert (=> bm!31478 m!489061))

(declare-fun m!489091 () Bool)

(assert (=> bm!31478 m!489091))

(assert (=> b!508286 m!489061))

(assert (=> b!508286 m!489061))

(assert (=> b!508286 m!489063))

(assert (=> b!508288 m!489061))

(assert (=> b!508288 m!489061))

(assert (=> b!508288 m!489063))

(assert (=> b!508289 m!489061))

(assert (=> b!508289 m!489061))

(declare-fun m!489093 () Bool)

(assert (=> b!508289 m!489093))

(assert (=> b!508149 d!78637))

(declare-fun d!78645 () Bool)

(declare-fun res!309343 () Bool)

(declare-fun e!297369 () Bool)

(assert (=> d!78645 (=> res!309343 e!297369)))

(assert (=> d!78645 (= res!309343 (= (select (arr!15687 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!78645 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!297369)))

(declare-fun b!508294 () Bool)

(declare-fun e!297370 () Bool)

(assert (=> b!508294 (= e!297369 e!297370)))

(declare-fun res!309344 () Bool)

(assert (=> b!508294 (=> (not res!309344) (not e!297370))))

(assert (=> b!508294 (= res!309344 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16051 a!3235)))))

(declare-fun b!508295 () Bool)

(assert (=> b!508295 (= e!297370 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!78645 (not res!309343)) b!508294))

(assert (= (and b!508294 res!309344) b!508295))

(assert (=> d!78645 m!489061))

(declare-fun m!489095 () Bool)

(assert (=> b!508295 m!489095))

(assert (=> b!508144 d!78645))

(declare-fun b!508363 () Bool)

(declare-fun e!297420 () SeekEntryResult!4161)

(assert (=> b!508363 (= e!297420 Undefined!4161)))

(declare-fun b!508364 () Bool)

(declare-fun lt!232254 () SeekEntryResult!4161)

(declare-fun e!297421 () SeekEntryResult!4161)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32620 (_ BitVec 32)) SeekEntryResult!4161)

(assert (=> b!508364 (= e!297421 (seekKeyOrZeroReturnVacant!0 (x!47845 lt!232254) (index!18834 lt!232254) (index!18834 lt!232254) k!2280 a!3235 mask!3524))))

(declare-fun b!508365 () Bool)

(assert (=> b!508365 (= e!297421 (MissingZero!4161 (index!18834 lt!232254)))))

(declare-fun d!78647 () Bool)

(declare-fun lt!232256 () SeekEntryResult!4161)

(assert (=> d!78647 (and (or (is-Undefined!4161 lt!232256) (not (is-Found!4161 lt!232256)) (and (bvsge (index!18833 lt!232256) #b00000000000000000000000000000000) (bvslt (index!18833 lt!232256) (size!16051 a!3235)))) (or (is-Undefined!4161 lt!232256) (is-Found!4161 lt!232256) (not (is-MissingZero!4161 lt!232256)) (and (bvsge (index!18832 lt!232256) #b00000000000000000000000000000000) (bvslt (index!18832 lt!232256) (size!16051 a!3235)))) (or (is-Undefined!4161 lt!232256) (is-Found!4161 lt!232256) (is-MissingZero!4161 lt!232256) (not (is-MissingVacant!4161 lt!232256)) (and (bvsge (index!18835 lt!232256) #b00000000000000000000000000000000) (bvslt (index!18835 lt!232256) (size!16051 a!3235)))) (or (is-Undefined!4161 lt!232256) (ite (is-Found!4161 lt!232256) (= (select (arr!15687 a!3235) (index!18833 lt!232256)) k!2280) (ite (is-MissingZero!4161 lt!232256) (= (select (arr!15687 a!3235) (index!18832 lt!232256)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4161 lt!232256) (= (select (arr!15687 a!3235) (index!18835 lt!232256)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78647 (= lt!232256 e!297420)))

(declare-fun c!59775 () Bool)

(assert (=> d!78647 (= c!59775 (and (is-Intermediate!4161 lt!232254) (undefined!4973 lt!232254)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32620 (_ BitVec 32)) SeekEntryResult!4161)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!78647 (= lt!232254 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!78647 (validMask!0 mask!3524)))

(assert (=> d!78647 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!232256)))

(declare-fun b!508366 () Bool)

(declare-fun e!297422 () SeekEntryResult!4161)

(assert (=> b!508366 (= e!297422 (Found!4161 (index!18834 lt!232254)))))

(declare-fun b!508367 () Bool)

(declare-fun c!59774 () Bool)

(declare-fun lt!232255 () (_ BitVec 64))

(assert (=> b!508367 (= c!59774 (= lt!232255 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!508367 (= e!297422 e!297421)))

(declare-fun b!508368 () Bool)

(assert (=> b!508368 (= e!297420 e!297422)))

(assert (=> b!508368 (= lt!232255 (select (arr!15687 a!3235) (index!18834 lt!232254)))))

(declare-fun c!59776 () Bool)

(assert (=> b!508368 (= c!59776 (= lt!232255 k!2280))))

(assert (= (and d!78647 c!59775) b!508363))

(assert (= (and d!78647 (not c!59775)) b!508368))

(assert (= (and b!508368 c!59776) b!508366))

(assert (= (and b!508368 (not c!59776)) b!508367))

(assert (= (and b!508367 c!59774) b!508365))

(assert (= (and b!508367 (not c!59774)) b!508364))

(declare-fun m!489161 () Bool)

(assert (=> b!508364 m!489161))

(declare-fun m!489163 () Bool)

(assert (=> d!78647 m!489163))

(declare-fun m!489165 () Bool)

(assert (=> d!78647 m!489165))

(declare-fun m!489167 () Bool)

(assert (=> d!78647 m!489167))

(assert (=> d!78647 m!488967))

(assert (=> d!78647 m!489165))

(declare-fun m!489169 () Bool)

(assert (=> d!78647 m!489169))

(declare-fun m!489171 () Bool)

(assert (=> d!78647 m!489171))

(declare-fun m!489173 () Bool)

(assert (=> b!508368 m!489173))

(assert (=> b!508150 d!78647))

(declare-fun b!508373 () Bool)

(declare-fun e!297425 () SeekEntryResult!4161)

(assert (=> b!508373 (= e!297425 Undefined!4161)))

(declare-fun e!297426 () SeekEntryResult!4161)

(declare-fun lt!232257 () SeekEntryResult!4161)

(declare-fun b!508374 () Bool)

(assert (=> b!508374 (= e!297426 (seekKeyOrZeroReturnVacant!0 (x!47845 lt!232257) (index!18834 lt!232257) (index!18834 lt!232257) (select (arr!15687 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!508375 () Bool)

(assert (=> b!508375 (= e!297426 (MissingZero!4161 (index!18834 lt!232257)))))

(declare-fun d!78673 () Bool)

(declare-fun lt!232259 () SeekEntryResult!4161)

(assert (=> d!78673 (and (or (is-Undefined!4161 lt!232259) (not (is-Found!4161 lt!232259)) (and (bvsge (index!18833 lt!232259) #b00000000000000000000000000000000) (bvslt (index!18833 lt!232259) (size!16051 a!3235)))) (or (is-Undefined!4161 lt!232259) (is-Found!4161 lt!232259) (not (is-MissingZero!4161 lt!232259)) (and (bvsge (index!18832 lt!232259) #b00000000000000000000000000000000) (bvslt (index!18832 lt!232259) (size!16051 a!3235)))) (or (is-Undefined!4161 lt!232259) (is-Found!4161 lt!232259) (is-MissingZero!4161 lt!232259) (not (is-MissingVacant!4161 lt!232259)) (and (bvsge (index!18835 lt!232259) #b00000000000000000000000000000000) (bvslt (index!18835 lt!232259) (size!16051 a!3235)))) (or (is-Undefined!4161 lt!232259) (ite (is-Found!4161 lt!232259) (= (select (arr!15687 a!3235) (index!18833 lt!232259)) (select (arr!15687 a!3235) j!176)) (ite (is-MissingZero!4161 lt!232259) (= (select (arr!15687 a!3235) (index!18832 lt!232259)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4161 lt!232259) (= (select (arr!15687 a!3235) (index!18835 lt!232259)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78673 (= lt!232259 e!297425)))

(declare-fun c!59778 () Bool)

(assert (=> d!78673 (= c!59778 (and (is-Intermediate!4161 lt!232257) (undefined!4973 lt!232257)))))

(assert (=> d!78673 (= lt!232257 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15687 a!3235) j!176) mask!3524) (select (arr!15687 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!78673 (validMask!0 mask!3524)))

(assert (=> d!78673 (= (seekEntryOrOpen!0 (select (arr!15687 a!3235) j!176) a!3235 mask!3524) lt!232259)))

(declare-fun b!508376 () Bool)

(declare-fun e!297427 () SeekEntryResult!4161)

(assert (=> b!508376 (= e!297427 (Found!4161 (index!18834 lt!232257)))))

(declare-fun b!508377 () Bool)

(declare-fun c!59777 () Bool)

(declare-fun lt!232258 () (_ BitVec 64))

(assert (=> b!508377 (= c!59777 (= lt!232258 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!508377 (= e!297427 e!297426)))

(declare-fun b!508378 () Bool)

(assert (=> b!508378 (= e!297425 e!297427)))

(assert (=> b!508378 (= lt!232258 (select (arr!15687 a!3235) (index!18834 lt!232257)))))

(declare-fun c!59779 () Bool)

(assert (=> b!508378 (= c!59779 (= lt!232258 (select (arr!15687 a!3235) j!176)))))

(assert (= (and d!78673 c!59778) b!508373))

(assert (= (and d!78673 (not c!59778)) b!508378))

(assert (= (and b!508378 c!59779) b!508376))

(assert (= (and b!508378 (not c!59779)) b!508377))

(assert (= (and b!508377 c!59777) b!508375))

(assert (= (and b!508377 (not c!59777)) b!508374))

(assert (=> b!508374 m!488973))

(declare-fun m!489177 () Bool)

(assert (=> b!508374 m!489177))

(declare-fun m!489179 () Bool)

(assert (=> d!78673 m!489179))

(assert (=> d!78673 m!488973))

(declare-fun m!489181 () Bool)

(assert (=> d!78673 m!489181))

(declare-fun m!489183 () Bool)

(assert (=> d!78673 m!489183))

(assert (=> d!78673 m!488967))

(assert (=> d!78673 m!489181))

(assert (=> d!78673 m!488973))

(declare-fun m!489185 () Bool)

(assert (=> d!78673 m!489185))

(declare-fun m!489187 () Bool)

(assert (=> d!78673 m!489187))

(declare-fun m!489189 () Bool)

(assert (=> b!508378 m!489189))

