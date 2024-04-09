; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67146 () Bool)

(assert start!67146)

(declare-fun e!431540 () Bool)

(declare-datatypes ((array!42456 0))(
  ( (array!42457 (arr!20320 (Array (_ BitVec 32) (_ BitVec 64))) (size!20741 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42456)

(declare-fun b!775326 () Bool)

(declare-fun lt!345414 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7927 0))(
  ( (MissingZero!7927 (index!34075 (_ BitVec 32))) (Found!7927 (index!34076 (_ BitVec 32))) (Intermediate!7927 (undefined!8739 Bool) (index!34077 (_ BitVec 32)) (x!65047 (_ BitVec 32))) (Undefined!7927) (MissingVacant!7927 (index!34078 (_ BitVec 32))) )
))
(declare-fun lt!345422 () SeekEntryResult!7927)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42456 (_ BitVec 32)) SeekEntryResult!7927)

(assert (=> b!775326 (= e!431540 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345414 (select (arr!20320 a!3186) j!159) a!3186 mask!3328) lt!345422)))))

(declare-fun b!775327 () Bool)

(declare-fun res!524433 () Bool)

(declare-fun e!431532 () Bool)

(assert (=> b!775327 (=> res!524433 e!431532)))

(assert (=> b!775327 (= res!524433 e!431540)))

(declare-fun c!85857 () Bool)

(declare-fun lt!345412 () Bool)

(assert (=> b!775327 (= c!85857 lt!345412)))

(declare-fun res!524426 () Bool)

(declare-fun e!431542 () Bool)

(assert (=> start!67146 (=> (not res!524426) (not e!431542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67146 (= res!524426 (validMask!0 mask!3328))))

(assert (=> start!67146 e!431542))

(assert (=> start!67146 true))

(declare-fun array_inv!16094 (array!42456) Bool)

(assert (=> start!67146 (array_inv!16094 a!3186)))

(declare-fun b!775328 () Bool)

(assert (=> b!775328 (= e!431532 true)))

(declare-fun lt!345418 () (_ BitVec 64))

(declare-fun lt!345423 () array!42456)

(declare-fun lt!345415 () SeekEntryResult!7927)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42456 (_ BitVec 32)) SeekEntryResult!7927)

(assert (=> b!775328 (= (seekEntryOrOpen!0 lt!345418 lt!345423 mask!3328) lt!345415)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-datatypes ((Unit!26744 0))(
  ( (Unit!26745) )
))
(declare-fun lt!345417 () Unit!26744)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!42456 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26744)

(assert (=> b!775328 (= lt!345417 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k0!2102 j!159 lt!345414 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!775329 () Bool)

(declare-fun res!524428 () Bool)

(assert (=> b!775329 (=> (not res!524428) (not e!431542))))

(assert (=> b!775329 (= res!524428 (and (= (size!20741 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20741 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20741 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!775330 () Bool)

(declare-fun res!524430 () Bool)

(assert (=> b!775330 (=> (not res!524430) (not e!431542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!775330 (= res!524430 (validKeyInArray!0 k0!2102))))

(declare-fun b!775331 () Bool)

(declare-fun e!431531 () Bool)

(declare-fun e!431539 () Bool)

(assert (=> b!775331 (= e!431531 e!431539)))

(declare-fun res!524421 () Bool)

(assert (=> b!775331 (=> (not res!524421) (not e!431539))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775331 (= res!524421 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20320 a!3186) j!159) mask!3328) (select (arr!20320 a!3186) j!159) a!3186 mask!3328) lt!345422))))

(assert (=> b!775331 (= lt!345422 (Intermediate!7927 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!775332 () Bool)

(declare-fun e!431533 () Unit!26744)

(declare-fun Unit!26746 () Unit!26744)

(assert (=> b!775332 (= e!431533 Unit!26746)))

(declare-fun lt!345411 () SeekEntryResult!7927)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42456 (_ BitVec 32)) SeekEntryResult!7927)

(assert (=> b!775332 (= lt!345411 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20320 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!775332 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345414 resIntermediateIndex!5 (select (arr!20320 a!3186) j!159) a!3186 mask!3328) lt!345415)))

(declare-fun e!431538 () Bool)

(declare-fun b!775333 () Bool)

(assert (=> b!775333 (= e!431538 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20320 a!3186) j!159) a!3186 mask!3328) lt!345422))))

(declare-fun b!775334 () Bool)

(declare-fun res!524434 () Bool)

(assert (=> b!775334 (=> (not res!524434) (not e!431542))))

(declare-fun arrayContainsKey!0 (array!42456 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!775334 (= res!524434 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!775335 () Bool)

(declare-fun res!524420 () Bool)

(assert (=> b!775335 (=> (not res!524420) (not e!431531))))

(declare-datatypes ((List!14375 0))(
  ( (Nil!14372) (Cons!14371 (h!15479 (_ BitVec 64)) (t!20698 List!14375)) )
))
(declare-fun arrayNoDuplicates!0 (array!42456 (_ BitVec 32) List!14375) Bool)

(assert (=> b!775335 (= res!524420 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14372))))

(declare-fun b!775336 () Bool)

(declare-fun res!524423 () Bool)

(assert (=> b!775336 (=> (not res!524423) (not e!431542))))

(assert (=> b!775336 (= res!524423 (validKeyInArray!0 (select (arr!20320 a!3186) j!159)))))

(declare-fun b!775337 () Bool)

(assert (=> b!775337 (= e!431540 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345414 resIntermediateIndex!5 (select (arr!20320 a!3186) j!159) a!3186 mask!3328) lt!345415)))))

(declare-fun b!775338 () Bool)

(declare-fun res!524429 () Bool)

(assert (=> b!775338 (=> (not res!524429) (not e!431539))))

(assert (=> b!775338 (= res!524429 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20320 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!775339 () Bool)

(declare-fun res!524425 () Bool)

(assert (=> b!775339 (=> res!524425 e!431532)))

(declare-fun lt!345416 () SeekEntryResult!7927)

(assert (=> b!775339 (= res!524425 (not (= lt!345416 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345414 lt!345418 lt!345423 mask!3328))))))

(declare-fun b!775340 () Bool)

(declare-fun res!524427 () Bool)

(assert (=> b!775340 (=> (not res!524427) (not e!431531))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42456 (_ BitVec 32)) Bool)

(assert (=> b!775340 (= res!524427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!775341 () Bool)

(declare-fun e!431536 () Bool)

(declare-fun lt!345421 () SeekEntryResult!7927)

(assert (=> b!775341 (= e!431536 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20320 a!3186) j!159) a!3186 mask!3328) lt!345421))))

(declare-fun b!775342 () Bool)

(declare-fun res!524418 () Bool)

(assert (=> b!775342 (=> (not res!524418) (not e!431531))))

(assert (=> b!775342 (= res!524418 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20741 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20741 a!3186))))))

(declare-fun b!775343 () Bool)

(declare-fun e!431535 () Bool)

(assert (=> b!775343 (= e!431539 e!431535)))

(declare-fun res!524432 () Bool)

(assert (=> b!775343 (=> (not res!524432) (not e!431535))))

(declare-fun lt!345419 () SeekEntryResult!7927)

(assert (=> b!775343 (= res!524432 (= lt!345416 lt!345419))))

(assert (=> b!775343 (= lt!345419 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345418 lt!345423 mask!3328))))

(assert (=> b!775343 (= lt!345416 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345418 mask!3328) lt!345418 lt!345423 mask!3328))))

(assert (=> b!775343 (= lt!345418 (select (store (arr!20320 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!775343 (= lt!345423 (array!42457 (store (arr!20320 a!3186) i!1173 k0!2102) (size!20741 a!3186)))))

(declare-fun b!775344 () Bool)

(declare-fun e!431534 () Bool)

(assert (=> b!775344 (= e!431534 e!431532)))

(declare-fun res!524431 () Bool)

(assert (=> b!775344 (=> res!524431 e!431532)))

(assert (=> b!775344 (= res!524431 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!345414 #b00000000000000000000000000000000) (bvsge lt!345414 (size!20741 a!3186))))))

(declare-fun lt!345420 () Unit!26744)

(assert (=> b!775344 (= lt!345420 e!431533)))

(declare-fun c!85856 () Bool)

(assert (=> b!775344 (= c!85856 lt!345412)))

(assert (=> b!775344 (= lt!345412 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775344 (= lt!345414 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!775345 () Bool)

(assert (=> b!775345 (= e!431542 e!431531)))

(declare-fun res!524422 () Bool)

(assert (=> b!775345 (=> (not res!524422) (not e!431531))))

(declare-fun lt!345413 () SeekEntryResult!7927)

(assert (=> b!775345 (= res!524422 (or (= lt!345413 (MissingZero!7927 i!1173)) (= lt!345413 (MissingVacant!7927 i!1173))))))

(assert (=> b!775345 (= lt!345413 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!775346 () Bool)

(declare-fun Unit!26747 () Unit!26744)

(assert (=> b!775346 (= e!431533 Unit!26747)))

(assert (=> b!775346 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!345414 (select (arr!20320 a!3186) j!159) a!3186 mask!3328) lt!345422)))

(declare-fun b!775347 () Bool)

(declare-fun res!524419 () Bool)

(assert (=> b!775347 (=> (not res!524419) (not e!431539))))

(assert (=> b!775347 (= res!524419 e!431538)))

(declare-fun c!85855 () Bool)

(assert (=> b!775347 (= c!85855 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!775348 () Bool)

(assert (=> b!775348 (= e!431535 (not e!431534))))

(declare-fun res!524416 () Bool)

(assert (=> b!775348 (=> res!524416 e!431534)))

(get-info :version)

(assert (=> b!775348 (= res!524416 (or (not ((_ is Intermediate!7927) lt!345419)) (bvsge x!1131 (x!65047 lt!345419))))))

(assert (=> b!775348 (= lt!345415 (Found!7927 j!159))))

(declare-fun e!431537 () Bool)

(assert (=> b!775348 e!431537))

(declare-fun res!524417 () Bool)

(assert (=> b!775348 (=> (not res!524417) (not e!431537))))

(assert (=> b!775348 (= res!524417 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!345424 () Unit!26744)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42456 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26744)

(assert (=> b!775348 (= lt!345424 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!775349 () Bool)

(assert (=> b!775349 (= e!431537 e!431536)))

(declare-fun res!524424 () Bool)

(assert (=> b!775349 (=> (not res!524424) (not e!431536))))

(assert (=> b!775349 (= res!524424 (= (seekEntryOrOpen!0 (select (arr!20320 a!3186) j!159) a!3186 mask!3328) lt!345421))))

(assert (=> b!775349 (= lt!345421 (Found!7927 j!159))))

(declare-fun b!775350 () Bool)

(assert (=> b!775350 (= e!431538 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20320 a!3186) j!159) a!3186 mask!3328) (Found!7927 j!159)))))

(assert (= (and start!67146 res!524426) b!775329))

(assert (= (and b!775329 res!524428) b!775336))

(assert (= (and b!775336 res!524423) b!775330))

(assert (= (and b!775330 res!524430) b!775334))

(assert (= (and b!775334 res!524434) b!775345))

(assert (= (and b!775345 res!524422) b!775340))

(assert (= (and b!775340 res!524427) b!775335))

(assert (= (and b!775335 res!524420) b!775342))

(assert (= (and b!775342 res!524418) b!775331))

(assert (= (and b!775331 res!524421) b!775338))

(assert (= (and b!775338 res!524429) b!775347))

(assert (= (and b!775347 c!85855) b!775333))

(assert (= (and b!775347 (not c!85855)) b!775350))

(assert (= (and b!775347 res!524419) b!775343))

(assert (= (and b!775343 res!524432) b!775348))

(assert (= (and b!775348 res!524417) b!775349))

(assert (= (and b!775349 res!524424) b!775341))

(assert (= (and b!775348 (not res!524416)) b!775344))

(assert (= (and b!775344 c!85856) b!775346))

(assert (= (and b!775344 (not c!85856)) b!775332))

(assert (= (and b!775344 (not res!524431)) b!775327))

(assert (= (and b!775327 c!85857) b!775326))

(assert (= (and b!775327 (not c!85857)) b!775337))

(assert (= (and b!775327 (not res!524433)) b!775339))

(assert (= (and b!775339 (not res!524425)) b!775328))

(declare-fun m!719621 () Bool)

(assert (=> b!775328 m!719621))

(declare-fun m!719623 () Bool)

(assert (=> b!775328 m!719623))

(declare-fun m!719625 () Bool)

(assert (=> b!775335 m!719625))

(declare-fun m!719627 () Bool)

(assert (=> b!775346 m!719627))

(assert (=> b!775346 m!719627))

(declare-fun m!719629 () Bool)

(assert (=> b!775346 m!719629))

(declare-fun m!719631 () Bool)

(assert (=> b!775334 m!719631))

(assert (=> b!775331 m!719627))

(assert (=> b!775331 m!719627))

(declare-fun m!719633 () Bool)

(assert (=> b!775331 m!719633))

(assert (=> b!775331 m!719633))

(assert (=> b!775331 m!719627))

(declare-fun m!719635 () Bool)

(assert (=> b!775331 m!719635))

(declare-fun m!719637 () Bool)

(assert (=> start!67146 m!719637))

(declare-fun m!719639 () Bool)

(assert (=> start!67146 m!719639))

(declare-fun m!719641 () Bool)

(assert (=> b!775344 m!719641))

(assert (=> b!775332 m!719627))

(assert (=> b!775332 m!719627))

(declare-fun m!719643 () Bool)

(assert (=> b!775332 m!719643))

(assert (=> b!775332 m!719627))

(declare-fun m!719645 () Bool)

(assert (=> b!775332 m!719645))

(assert (=> b!775350 m!719627))

(assert (=> b!775350 m!719627))

(assert (=> b!775350 m!719643))

(declare-fun m!719647 () Bool)

(assert (=> b!775345 m!719647))

(declare-fun m!719649 () Bool)

(assert (=> b!775338 m!719649))

(declare-fun m!719651 () Bool)

(assert (=> b!775340 m!719651))

(assert (=> b!775341 m!719627))

(assert (=> b!775341 m!719627))

(declare-fun m!719653 () Bool)

(assert (=> b!775341 m!719653))

(assert (=> b!775333 m!719627))

(assert (=> b!775333 m!719627))

(declare-fun m!719655 () Bool)

(assert (=> b!775333 m!719655))

(declare-fun m!719657 () Bool)

(assert (=> b!775339 m!719657))

(declare-fun m!719659 () Bool)

(assert (=> b!775330 m!719659))

(assert (=> b!775349 m!719627))

(assert (=> b!775349 m!719627))

(declare-fun m!719661 () Bool)

(assert (=> b!775349 m!719661))

(declare-fun m!719663 () Bool)

(assert (=> b!775348 m!719663))

(declare-fun m!719665 () Bool)

(assert (=> b!775348 m!719665))

(assert (=> b!775326 m!719627))

(assert (=> b!775326 m!719627))

(assert (=> b!775326 m!719629))

(assert (=> b!775337 m!719627))

(assert (=> b!775337 m!719627))

(assert (=> b!775337 m!719645))

(assert (=> b!775336 m!719627))

(assert (=> b!775336 m!719627))

(declare-fun m!719667 () Bool)

(assert (=> b!775336 m!719667))

(declare-fun m!719669 () Bool)

(assert (=> b!775343 m!719669))

(declare-fun m!719671 () Bool)

(assert (=> b!775343 m!719671))

(declare-fun m!719673 () Bool)

(assert (=> b!775343 m!719673))

(declare-fun m!719675 () Bool)

(assert (=> b!775343 m!719675))

(declare-fun m!719677 () Bool)

(assert (=> b!775343 m!719677))

(assert (=> b!775343 m!719675))

(check-sat (not b!775333) (not b!775337) (not b!775336) (not b!775331) (not b!775335) (not b!775334) (not b!775350) (not b!775349) (not b!775341) (not start!67146) (not b!775330) (not b!775326) (not b!775339) (not b!775348) (not b!775343) (not b!775346) (not b!775345) (not b!775344) (not b!775328) (not b!775340) (not b!775332))
(check-sat)
