; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45740 () Bool)

(assert start!45740)

(declare-fun b!505348 () Bool)

(declare-fun e!295835 () Bool)

(assert (=> b!505348 (= e!295835 true)))

(declare-datatypes ((SeekEntryResult!4079 0))(
  ( (MissingZero!4079 (index!18504 (_ BitVec 32))) (Found!4079 (index!18505 (_ BitVec 32))) (Intermediate!4079 (undefined!4891 Bool) (index!18506 (_ BitVec 32)) (x!47539 (_ BitVec 32))) (Undefined!4079) (MissingVacant!4079 (index!18507 (_ BitVec 32))) )
))
(declare-fun lt!230400 () SeekEntryResult!4079)

(declare-fun lt!230401 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32456 0))(
  ( (array!32457 (arr!15605 (Array (_ BitVec 32) (_ BitVec 64))) (size!15969 (_ BitVec 32))) )
))
(declare-fun lt!230411 () array!32456)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32456 (_ BitVec 32)) SeekEntryResult!4079)

(assert (=> b!505348 (= (seekEntryOrOpen!0 lt!230401 lt!230411 mask!3524) lt!230400)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun a!3235 () array!32456)

(declare-datatypes ((Unit!15406 0))(
  ( (Unit!15407) )
))
(declare-fun lt!230403 () Unit!15406)

(declare-fun lt!230406 () (_ BitVec 32))

(declare-fun lt!230409 () SeekEntryResult!4079)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32456 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15406)

(assert (=> b!505348 (= lt!230403 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!230406 #b00000000000000000000000000000000 (index!18506 lt!230409) (x!47539 lt!230409) mask!3524))))

(declare-fun b!505349 () Bool)

(declare-fun e!295837 () Bool)

(assert (=> b!505349 (= e!295837 false)))

(declare-fun b!505350 () Bool)

(declare-fun res!306551 () Bool)

(declare-fun e!295836 () Bool)

(assert (=> b!505350 (=> (not res!306551) (not e!295836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!505350 (= res!306551 (validKeyInArray!0 k!2280))))

(declare-fun b!505351 () Bool)

(declare-fun res!306552 () Bool)

(assert (=> b!505351 (=> (not res!306552) (not e!295836))))

(assert (=> b!505351 (= res!306552 (and (= (size!15969 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15969 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15969 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!505352 () Bool)

(declare-fun e!295829 () Bool)

(assert (=> b!505352 (= e!295829 (= (seekEntryOrOpen!0 (select (arr!15605 a!3235) j!176) a!3235 mask!3524) (Found!4079 j!176)))))

(declare-fun res!306550 () Bool)

(assert (=> start!45740 (=> (not res!306550) (not e!295836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45740 (= res!306550 (validMask!0 mask!3524))))

(assert (=> start!45740 e!295836))

(assert (=> start!45740 true))

(declare-fun array_inv!11379 (array!32456) Bool)

(assert (=> start!45740 (array_inv!11379 a!3235)))

(declare-fun b!505353 () Bool)

(declare-fun res!306553 () Bool)

(assert (=> b!505353 (=> res!306553 e!295835)))

(declare-fun e!295833 () Bool)

(assert (=> b!505353 (= res!306553 e!295833)))

(declare-fun res!306554 () Bool)

(assert (=> b!505353 (=> (not res!306554) (not e!295833))))

(assert (=> b!505353 (= res!306554 (bvsgt #b00000000000000000000000000000000 (x!47539 lt!230409)))))

(declare-fun b!505354 () Bool)

(declare-fun res!306563 () Bool)

(assert (=> b!505354 (=> res!306563 e!295835)))

(declare-fun lt!230410 () SeekEntryResult!4079)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32456 (_ BitVec 32)) SeekEntryResult!4079)

(assert (=> b!505354 (= res!306563 (not (= lt!230410 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230406 lt!230401 lt!230411 mask!3524))))))

(declare-fun b!505355 () Bool)

(declare-fun e!295834 () Unit!15406)

(declare-fun Unit!15408 () Unit!15406)

(assert (=> b!505355 (= e!295834 Unit!15408)))

(declare-fun b!505356 () Bool)

(declare-fun res!306556 () Bool)

(assert (=> b!505356 (=> (not res!306556) (not e!295836))))

(declare-fun arrayContainsKey!0 (array!32456 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!505356 (= res!306556 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!505357 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32456 (_ BitVec 32)) SeekEntryResult!4079)

(assert (=> b!505357 (= e!295833 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230406 (index!18506 lt!230409) (select (arr!15605 a!3235) j!176) a!3235 mask!3524) lt!230400)))))

(declare-fun b!505358 () Bool)

(declare-fun e!295832 () Bool)

(declare-fun e!295830 () Bool)

(assert (=> b!505358 (= e!295832 (not e!295830))))

(declare-fun res!306555 () Bool)

(assert (=> b!505358 (=> res!306555 e!295830)))

(assert (=> b!505358 (= res!306555 (or (= lt!230409 lt!230410) (undefined!4891 lt!230409) (not (is-Intermediate!4079 lt!230409))))))

(declare-fun lt!230399 () (_ BitVec 32))

(assert (=> b!505358 (= lt!230410 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230399 lt!230401 lt!230411 mask!3524))))

(assert (=> b!505358 (= lt!230409 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230406 (select (arr!15605 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505358 (= lt!230399 (toIndex!0 lt!230401 mask!3524))))

(assert (=> b!505358 (= lt!230401 (select (store (arr!15605 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!505358 (= lt!230406 (toIndex!0 (select (arr!15605 a!3235) j!176) mask!3524))))

(assert (=> b!505358 (= lt!230411 (array!32457 (store (arr!15605 a!3235) i!1204 k!2280) (size!15969 a!3235)))))

(assert (=> b!505358 (= lt!230400 (Found!4079 j!176))))

(assert (=> b!505358 e!295829))

(declare-fun res!306549 () Bool)

(assert (=> b!505358 (=> (not res!306549) (not e!295829))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32456 (_ BitVec 32)) Bool)

(assert (=> b!505358 (= res!306549 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230402 () Unit!15406)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32456 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15406)

(assert (=> b!505358 (= lt!230402 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!505359 () Bool)

(assert (=> b!505359 (= e!295830 e!295835)))

(declare-fun res!306557 () Bool)

(assert (=> b!505359 (=> res!306557 e!295835)))

(assert (=> b!505359 (= res!306557 (or (bvsgt (x!47539 lt!230409) #b01111111111111111111111111111110) (bvslt lt!230406 #b00000000000000000000000000000000) (bvsge lt!230406 (size!15969 a!3235)) (bvslt (index!18506 lt!230409) #b00000000000000000000000000000000) (bvsge (index!18506 lt!230409) (size!15969 a!3235)) (not (= lt!230409 (Intermediate!4079 false (index!18506 lt!230409) (x!47539 lt!230409))))))))

(assert (=> b!505359 (= (index!18506 lt!230409) i!1204)))

(declare-fun lt!230404 () Unit!15406)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32456 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15406)

(assert (=> b!505359 (= lt!230404 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!230406 #b00000000000000000000000000000000 (index!18506 lt!230409) (x!47539 lt!230409) mask!3524))))

(assert (=> b!505359 (and (or (= (select (arr!15605 a!3235) (index!18506 lt!230409)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15605 a!3235) (index!18506 lt!230409)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15605 a!3235) (index!18506 lt!230409)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15605 a!3235) (index!18506 lt!230409)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230407 () Unit!15406)

(assert (=> b!505359 (= lt!230407 e!295834)))

(declare-fun c!59678 () Bool)

(assert (=> b!505359 (= c!59678 (= (select (arr!15605 a!3235) (index!18506 lt!230409)) (select (arr!15605 a!3235) j!176)))))

(assert (=> b!505359 (and (bvslt (x!47539 lt!230409) #b01111111111111111111111111111110) (or (= (select (arr!15605 a!3235) (index!18506 lt!230409)) (select (arr!15605 a!3235) j!176)) (= (select (arr!15605 a!3235) (index!18506 lt!230409)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15605 a!3235) (index!18506 lt!230409)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!505360 () Bool)

(declare-fun res!306558 () Bool)

(assert (=> b!505360 (=> (not res!306558) (not e!295832))))

(assert (=> b!505360 (= res!306558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!505361 () Bool)

(declare-fun res!306561 () Bool)

(assert (=> b!505361 (=> (not res!306561) (not e!295832))))

(declare-datatypes ((List!9816 0))(
  ( (Nil!9813) (Cons!9812 (h!10689 (_ BitVec 64)) (t!16052 List!9816)) )
))
(declare-fun arrayNoDuplicates!0 (array!32456 (_ BitVec 32) List!9816) Bool)

(assert (=> b!505361 (= res!306561 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9813))))

(declare-fun b!505362 () Bool)

(declare-fun res!306562 () Bool)

(assert (=> b!505362 (=> (not res!306562) (not e!295836))))

(assert (=> b!505362 (= res!306562 (validKeyInArray!0 (select (arr!15605 a!3235) j!176)))))

(declare-fun b!505363 () Bool)

(declare-fun Unit!15409 () Unit!15406)

(assert (=> b!505363 (= e!295834 Unit!15409)))

(declare-fun lt!230408 () Unit!15406)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32456 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15406)

(assert (=> b!505363 (= lt!230408 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!230406 #b00000000000000000000000000000000 (index!18506 lt!230409) (x!47539 lt!230409) mask!3524))))

(declare-fun res!306559 () Bool)

(assert (=> b!505363 (= res!306559 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230406 lt!230401 lt!230411 mask!3524) (Intermediate!4079 false (index!18506 lt!230409) (x!47539 lt!230409))))))

(assert (=> b!505363 (=> (not res!306559) (not e!295837))))

(assert (=> b!505363 e!295837))

(declare-fun b!505364 () Bool)

(assert (=> b!505364 (= e!295836 e!295832)))

(declare-fun res!306560 () Bool)

(assert (=> b!505364 (=> (not res!306560) (not e!295832))))

(declare-fun lt!230405 () SeekEntryResult!4079)

(assert (=> b!505364 (= res!306560 (or (= lt!230405 (MissingZero!4079 i!1204)) (= lt!230405 (MissingVacant!4079 i!1204))))))

(assert (=> b!505364 (= lt!230405 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!45740 res!306550) b!505351))

(assert (= (and b!505351 res!306552) b!505362))

(assert (= (and b!505362 res!306562) b!505350))

(assert (= (and b!505350 res!306551) b!505356))

(assert (= (and b!505356 res!306556) b!505364))

(assert (= (and b!505364 res!306560) b!505360))

(assert (= (and b!505360 res!306558) b!505361))

(assert (= (and b!505361 res!306561) b!505358))

(assert (= (and b!505358 res!306549) b!505352))

(assert (= (and b!505358 (not res!306555)) b!505359))

(assert (= (and b!505359 c!59678) b!505363))

(assert (= (and b!505359 (not c!59678)) b!505355))

(assert (= (and b!505363 res!306559) b!505349))

(assert (= (and b!505359 (not res!306557)) b!505353))

(assert (= (and b!505353 res!306554) b!505357))

(assert (= (and b!505353 (not res!306553)) b!505354))

(assert (= (and b!505354 (not res!306563)) b!505348))

(declare-fun m!486047 () Bool)

(assert (=> b!505358 m!486047))

(declare-fun m!486049 () Bool)

(assert (=> b!505358 m!486049))

(declare-fun m!486051 () Bool)

(assert (=> b!505358 m!486051))

(declare-fun m!486053 () Bool)

(assert (=> b!505358 m!486053))

(assert (=> b!505358 m!486047))

(declare-fun m!486055 () Bool)

(assert (=> b!505358 m!486055))

(assert (=> b!505358 m!486047))

(declare-fun m!486057 () Bool)

(assert (=> b!505358 m!486057))

(declare-fun m!486059 () Bool)

(assert (=> b!505358 m!486059))

(declare-fun m!486061 () Bool)

(assert (=> b!505358 m!486061))

(declare-fun m!486063 () Bool)

(assert (=> b!505358 m!486063))

(declare-fun m!486065 () Bool)

(assert (=> b!505359 m!486065))

(declare-fun m!486067 () Bool)

(assert (=> b!505359 m!486067))

(assert (=> b!505359 m!486047))

(assert (=> b!505352 m!486047))

(assert (=> b!505352 m!486047))

(declare-fun m!486069 () Bool)

(assert (=> b!505352 m!486069))

(declare-fun m!486071 () Bool)

(assert (=> b!505363 m!486071))

(declare-fun m!486073 () Bool)

(assert (=> b!505363 m!486073))

(assert (=> b!505362 m!486047))

(assert (=> b!505362 m!486047))

(declare-fun m!486075 () Bool)

(assert (=> b!505362 m!486075))

(declare-fun m!486077 () Bool)

(assert (=> b!505348 m!486077))

(declare-fun m!486079 () Bool)

(assert (=> b!505348 m!486079))

(declare-fun m!486081 () Bool)

(assert (=> b!505356 m!486081))

(declare-fun m!486083 () Bool)

(assert (=> b!505360 m!486083))

(declare-fun m!486085 () Bool)

(assert (=> b!505364 m!486085))

(assert (=> b!505357 m!486047))

(assert (=> b!505357 m!486047))

(declare-fun m!486087 () Bool)

(assert (=> b!505357 m!486087))

(declare-fun m!486089 () Bool)

(assert (=> b!505350 m!486089))

(assert (=> b!505354 m!486073))

(declare-fun m!486091 () Bool)

(assert (=> b!505361 m!486091))

(declare-fun m!486093 () Bool)

(assert (=> start!45740 m!486093))

(declare-fun m!486095 () Bool)

(assert (=> start!45740 m!486095))

(push 1)

