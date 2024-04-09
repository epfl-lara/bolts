; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56070 () Bool)

(assert start!56070)

(declare-fun b!617414 () Bool)

(declare-fun res!397865 () Bool)

(declare-fun e!354052 () Bool)

(assert (=> b!617414 (=> (not res!397865) (not e!354052))))

(declare-datatypes ((array!37503 0))(
  ( (array!37504 (arr!17994 (Array (_ BitVec 32) (_ BitVec 64))) (size!18358 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37503)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37503 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!617414 (= res!397865 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!617415 () Bool)

(declare-fun res!397866 () Bool)

(assert (=> b!617415 (=> (not res!397866) (not e!354052))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!617415 (= res!397866 (and (= (size!18358 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18358 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18358 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!617416 () Bool)

(declare-fun res!397853 () Bool)

(declare-fun e!354047 () Bool)

(assert (=> b!617416 (=> (not res!397853) (not e!354047))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37503 (_ BitVec 32)) Bool)

(assert (=> b!617416 (= res!397853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!617417 () Bool)

(declare-fun res!397857 () Bool)

(assert (=> b!617417 (=> (not res!397857) (not e!354052))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!617417 (= res!397857 (validKeyInArray!0 (select (arr!17994 a!2986) j!136)))))

(declare-fun b!617419 () Bool)

(declare-datatypes ((Unit!20230 0))(
  ( (Unit!20231) )
))
(declare-fun e!354053 () Unit!20230)

(declare-fun Unit!20232 () Unit!20230)

(assert (=> b!617419 (= e!354053 Unit!20232)))

(assert (=> b!617419 false))

(declare-fun b!617420 () Bool)

(declare-fun res!397868 () Bool)

(assert (=> b!617420 (=> (not res!397868) (not e!354047))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!617420 (= res!397868 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17994 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!284436 () array!37503)

(declare-fun e!354054 () Bool)

(declare-fun b!617421 () Bool)

(assert (=> b!617421 (= e!354054 (arrayContainsKey!0 lt!284436 (select (arr!17994 a!2986) j!136) index!984))))

(declare-fun b!617422 () Bool)

(declare-fun e!354057 () Bool)

(declare-fun e!354061 () Bool)

(assert (=> b!617422 (= e!354057 (not e!354061))))

(declare-fun res!397864 () Bool)

(assert (=> b!617422 (=> res!397864 e!354061)))

(declare-datatypes ((SeekEntryResult!6441 0))(
  ( (MissingZero!6441 (index!28047 (_ BitVec 32))) (Found!6441 (index!28048 (_ BitVec 32))) (Intermediate!6441 (undefined!7253 Bool) (index!28049 (_ BitVec 32)) (x!56866 (_ BitVec 32))) (Undefined!6441) (MissingVacant!6441 (index!28050 (_ BitVec 32))) )
))
(declare-fun lt!284419 () SeekEntryResult!6441)

(assert (=> b!617422 (= res!397864 (not (= lt!284419 (MissingVacant!6441 vacantSpotIndex!68))))))

(declare-fun lt!284423 () Unit!20230)

(declare-fun e!354058 () Unit!20230)

(assert (=> b!617422 (= lt!284423 e!354058)))

(declare-fun c!70149 () Bool)

(assert (=> b!617422 (= c!70149 (= lt!284419 (Found!6441 index!984)))))

(declare-fun lt!284429 () Unit!20230)

(assert (=> b!617422 (= lt!284429 e!354053)))

(declare-fun c!70151 () Bool)

(assert (=> b!617422 (= c!70151 (= lt!284419 Undefined!6441))))

(declare-fun lt!284422 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37503 (_ BitVec 32)) SeekEntryResult!6441)

(assert (=> b!617422 (= lt!284419 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!284422 lt!284436 mask!3053))))

(declare-fun e!354055 () Bool)

(assert (=> b!617422 e!354055))

(declare-fun res!397858 () Bool)

(assert (=> b!617422 (=> (not res!397858) (not e!354055))))

(declare-fun lt!284432 () SeekEntryResult!6441)

(declare-fun lt!284425 () (_ BitVec 32))

(assert (=> b!617422 (= res!397858 (= lt!284432 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284425 vacantSpotIndex!68 lt!284422 lt!284436 mask!3053)))))

(assert (=> b!617422 (= lt!284432 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284425 vacantSpotIndex!68 (select (arr!17994 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!617422 (= lt!284422 (select (store (arr!17994 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!284418 () Unit!20230)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37503 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20230)

(assert (=> b!617422 (= lt!284418 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!284425 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!617422 (= lt!284425 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!617423 () Bool)

(declare-fun res!397860 () Bool)

(assert (=> b!617423 (=> (not res!397860) (not e!354047))))

(declare-datatypes ((List!12088 0))(
  ( (Nil!12085) (Cons!12084 (h!13129 (_ BitVec 64)) (t!18324 List!12088)) )
))
(declare-fun arrayNoDuplicates!0 (array!37503 (_ BitVec 32) List!12088) Bool)

(assert (=> b!617423 (= res!397860 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12085))))

(declare-fun b!617424 () Bool)

(declare-fun Unit!20233 () Unit!20230)

(assert (=> b!617424 (= e!354058 Unit!20233)))

(declare-fun b!617425 () Bool)

(declare-fun lt!284417 () SeekEntryResult!6441)

(assert (=> b!617425 (= e!354055 (= lt!284417 lt!284432))))

(declare-fun b!617426 () Bool)

(declare-fun e!354060 () Bool)

(assert (=> b!617426 (= e!354047 e!354060)))

(declare-fun res!397852 () Bool)

(assert (=> b!617426 (=> (not res!397852) (not e!354060))))

(assert (=> b!617426 (= res!397852 (= (select (store (arr!17994 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!617426 (= lt!284436 (array!37504 (store (arr!17994 a!2986) i!1108 k!1786) (size!18358 a!2986)))))

(declare-fun b!617427 () Bool)

(declare-fun res!397862 () Bool)

(assert (=> b!617427 (=> (not res!397862) (not e!354052))))

(assert (=> b!617427 (= res!397862 (validKeyInArray!0 k!1786))))

(declare-fun b!617428 () Bool)

(assert (=> b!617428 (= e!354052 e!354047)))

(declare-fun res!397867 () Bool)

(assert (=> b!617428 (=> (not res!397867) (not e!354047))))

(declare-fun lt!284428 () SeekEntryResult!6441)

(assert (=> b!617428 (= res!397867 (or (= lt!284428 (MissingZero!6441 i!1108)) (= lt!284428 (MissingVacant!6441 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37503 (_ BitVec 32)) SeekEntryResult!6441)

(assert (=> b!617428 (= lt!284428 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!617429 () Bool)

(assert (=> b!617429 false))

(declare-fun lt!284435 () Unit!20230)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37503 (_ BitVec 64) (_ BitVec 32) List!12088) Unit!20230)

(assert (=> b!617429 (= lt!284435 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284436 (select (arr!17994 a!2986) j!136) index!984 Nil!12085))))

(assert (=> b!617429 (arrayNoDuplicates!0 lt!284436 index!984 Nil!12085)))

(declare-fun lt!284430 () Unit!20230)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37503 (_ BitVec 32) (_ BitVec 32)) Unit!20230)

(assert (=> b!617429 (= lt!284430 (lemmaNoDuplicateFromThenFromBigger!0 lt!284436 #b00000000000000000000000000000000 index!984))))

(assert (=> b!617429 (arrayNoDuplicates!0 lt!284436 #b00000000000000000000000000000000 Nil!12085)))

(declare-fun lt!284420 () Unit!20230)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37503 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12088) Unit!20230)

(assert (=> b!617429 (= lt!284420 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12085))))

(assert (=> b!617429 (arrayContainsKey!0 lt!284436 (select (arr!17994 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!284434 () Unit!20230)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37503 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20230)

(assert (=> b!617429 (= lt!284434 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284436 (select (arr!17994 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!617429 e!354054))

(declare-fun res!397856 () Bool)

(assert (=> b!617429 (=> (not res!397856) (not e!354054))))

(assert (=> b!617429 (= res!397856 (arrayContainsKey!0 lt!284436 (select (arr!17994 a!2986) j!136) j!136))))

(declare-fun e!354048 () Unit!20230)

(declare-fun Unit!20234 () Unit!20230)

(assert (=> b!617429 (= e!354048 Unit!20234)))

(declare-fun e!354051 () Bool)

(declare-fun b!617430 () Bool)

(assert (=> b!617430 (= e!354051 (arrayContainsKey!0 lt!284436 (select (arr!17994 a!2986) j!136) index!984))))

(declare-fun b!617431 () Bool)

(declare-fun e!354056 () Unit!20230)

(declare-fun Unit!20235 () Unit!20230)

(assert (=> b!617431 (= e!354056 Unit!20235)))

(declare-fun b!617432 () Bool)

(declare-fun res!397863 () Bool)

(assert (=> b!617432 (= res!397863 (arrayContainsKey!0 lt!284436 (select (arr!17994 a!2986) j!136) j!136))))

(assert (=> b!617432 (=> (not res!397863) (not e!354051))))

(declare-fun e!354049 () Bool)

(assert (=> b!617432 (= e!354049 e!354051)))

(declare-fun b!617433 () Bool)

(assert (=> b!617433 (= e!354060 e!354057)))

(declare-fun res!397861 () Bool)

(assert (=> b!617433 (=> (not res!397861) (not e!354057))))

(assert (=> b!617433 (= res!397861 (and (= lt!284417 (Found!6441 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17994 a!2986) index!984) (select (arr!17994 a!2986) j!136))) (not (= (select (arr!17994 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!617433 (= lt!284417 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17994 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!617434 () Bool)

(declare-fun Unit!20236 () Unit!20230)

(assert (=> b!617434 (= e!354053 Unit!20236)))

(declare-fun b!617435 () Bool)

(declare-fun Unit!20237 () Unit!20230)

(assert (=> b!617435 (= e!354048 Unit!20237)))

(declare-fun b!617436 () Bool)

(declare-fun Unit!20238 () Unit!20230)

(assert (=> b!617436 (= e!354058 Unit!20238)))

(declare-fun res!397854 () Bool)

(assert (=> b!617436 (= res!397854 (= (select (store (arr!17994 a!2986) i!1108 k!1786) index!984) (select (arr!17994 a!2986) j!136)))))

(declare-fun e!354059 () Bool)

(assert (=> b!617436 (=> (not res!397854) (not e!354059))))

(assert (=> b!617436 e!354059))

(declare-fun c!70148 () Bool)

(assert (=> b!617436 (= c!70148 (bvslt j!136 index!984))))

(declare-fun lt!284427 () Unit!20230)

(assert (=> b!617436 (= lt!284427 e!354056)))

(declare-fun c!70150 () Bool)

(assert (=> b!617436 (= c!70150 (bvslt index!984 j!136))))

(declare-fun lt!284433 () Unit!20230)

(assert (=> b!617436 (= lt!284433 e!354048)))

(assert (=> b!617436 false))

(declare-fun res!397859 () Bool)

(assert (=> start!56070 (=> (not res!397859) (not e!354052))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56070 (= res!397859 (validMask!0 mask!3053))))

(assert (=> start!56070 e!354052))

(assert (=> start!56070 true))

(declare-fun array_inv!13768 (array!37503) Bool)

(assert (=> start!56070 (array_inv!13768 a!2986)))

(declare-fun b!617418 () Bool)

(declare-fun res!397855 () Bool)

(assert (=> b!617418 (= res!397855 (bvsge j!136 index!984))))

(assert (=> b!617418 (=> res!397855 e!354049)))

(assert (=> b!617418 (= e!354059 e!354049)))

(declare-fun b!617437 () Bool)

(assert (=> b!617437 (= e!354061 true)))

(assert (=> b!617437 (= (select (store (arr!17994 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!617438 () Bool)

(assert (=> b!617438 false))

(declare-fun lt!284426 () Unit!20230)

(assert (=> b!617438 (= lt!284426 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284436 (select (arr!17994 a!2986) j!136) j!136 Nil!12085))))

(assert (=> b!617438 (arrayNoDuplicates!0 lt!284436 j!136 Nil!12085)))

(declare-fun lt!284431 () Unit!20230)

(assert (=> b!617438 (= lt!284431 (lemmaNoDuplicateFromThenFromBigger!0 lt!284436 #b00000000000000000000000000000000 j!136))))

(assert (=> b!617438 (arrayNoDuplicates!0 lt!284436 #b00000000000000000000000000000000 Nil!12085)))

(declare-fun lt!284421 () Unit!20230)

(assert (=> b!617438 (= lt!284421 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12085))))

(assert (=> b!617438 (arrayContainsKey!0 lt!284436 (select (arr!17994 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!284424 () Unit!20230)

(assert (=> b!617438 (= lt!284424 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284436 (select (arr!17994 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20239 () Unit!20230)

(assert (=> b!617438 (= e!354056 Unit!20239)))

(assert (= (and start!56070 res!397859) b!617415))

(assert (= (and b!617415 res!397866) b!617417))

(assert (= (and b!617417 res!397857) b!617427))

(assert (= (and b!617427 res!397862) b!617414))

(assert (= (and b!617414 res!397865) b!617428))

(assert (= (and b!617428 res!397867) b!617416))

(assert (= (and b!617416 res!397853) b!617423))

(assert (= (and b!617423 res!397860) b!617420))

(assert (= (and b!617420 res!397868) b!617426))

(assert (= (and b!617426 res!397852) b!617433))

(assert (= (and b!617433 res!397861) b!617422))

(assert (= (and b!617422 res!397858) b!617425))

(assert (= (and b!617422 c!70151) b!617419))

(assert (= (and b!617422 (not c!70151)) b!617434))

(assert (= (and b!617422 c!70149) b!617436))

(assert (= (and b!617422 (not c!70149)) b!617424))

(assert (= (and b!617436 res!397854) b!617418))

(assert (= (and b!617418 (not res!397855)) b!617432))

(assert (= (and b!617432 res!397863) b!617430))

(assert (= (and b!617436 c!70148) b!617438))

(assert (= (and b!617436 (not c!70148)) b!617431))

(assert (= (and b!617436 c!70150) b!617429))

(assert (= (and b!617436 (not c!70150)) b!617435))

(assert (= (and b!617429 res!397856) b!617421))

(assert (= (and b!617422 (not res!397864)) b!617437))

(declare-fun m!593559 () Bool)

(assert (=> b!617437 m!593559))

(declare-fun m!593561 () Bool)

(assert (=> b!617437 m!593561))

(declare-fun m!593563 () Bool)

(assert (=> b!617414 m!593563))

(declare-fun m!593565 () Bool)

(assert (=> b!617432 m!593565))

(assert (=> b!617432 m!593565))

(declare-fun m!593567 () Bool)

(assert (=> b!617432 m!593567))

(declare-fun m!593569 () Bool)

(assert (=> start!56070 m!593569))

(declare-fun m!593571 () Bool)

(assert (=> start!56070 m!593571))

(declare-fun m!593573 () Bool)

(assert (=> b!617429 m!593573))

(assert (=> b!617429 m!593565))

(declare-fun m!593575 () Bool)

(assert (=> b!617429 m!593575))

(assert (=> b!617429 m!593565))

(declare-fun m!593577 () Bool)

(assert (=> b!617429 m!593577))

(assert (=> b!617429 m!593565))

(assert (=> b!617429 m!593565))

(declare-fun m!593579 () Bool)

(assert (=> b!617429 m!593579))

(declare-fun m!593581 () Bool)

(assert (=> b!617429 m!593581))

(declare-fun m!593583 () Bool)

(assert (=> b!617429 m!593583))

(assert (=> b!617429 m!593565))

(assert (=> b!617429 m!593567))

(declare-fun m!593585 () Bool)

(assert (=> b!617429 m!593585))

(declare-fun m!593587 () Bool)

(assert (=> b!617423 m!593587))

(declare-fun m!593589 () Bool)

(assert (=> b!617416 m!593589))

(declare-fun m!593591 () Bool)

(assert (=> b!617427 m!593591))

(assert (=> b!617426 m!593559))

(declare-fun m!593593 () Bool)

(assert (=> b!617426 m!593593))

(declare-fun m!593595 () Bool)

(assert (=> b!617433 m!593595))

(assert (=> b!617433 m!593565))

(assert (=> b!617433 m!593565))

(declare-fun m!593597 () Bool)

(assert (=> b!617433 m!593597))

(assert (=> b!617421 m!593565))

(assert (=> b!617421 m!593565))

(declare-fun m!593599 () Bool)

(assert (=> b!617421 m!593599))

(assert (=> b!617430 m!593565))

(assert (=> b!617430 m!593565))

(assert (=> b!617430 m!593599))

(declare-fun m!593601 () Bool)

(assert (=> b!617420 m!593601))

(assert (=> b!617438 m!593573))

(assert (=> b!617438 m!593565))

(declare-fun m!593603 () Bool)

(assert (=> b!617438 m!593603))

(declare-fun m!593605 () Bool)

(assert (=> b!617438 m!593605))

(declare-fun m!593607 () Bool)

(assert (=> b!617438 m!593607))

(assert (=> b!617438 m!593565))

(declare-fun m!593609 () Bool)

(assert (=> b!617438 m!593609))

(assert (=> b!617438 m!593585))

(assert (=> b!617438 m!593565))

(assert (=> b!617438 m!593565))

(declare-fun m!593611 () Bool)

(assert (=> b!617438 m!593611))

(assert (=> b!617436 m!593559))

(assert (=> b!617436 m!593561))

(assert (=> b!617436 m!593565))

(declare-fun m!593613 () Bool)

(assert (=> b!617422 m!593613))

(declare-fun m!593615 () Bool)

(assert (=> b!617422 m!593615))

(assert (=> b!617422 m!593565))

(assert (=> b!617422 m!593559))

(assert (=> b!617422 m!593565))

(declare-fun m!593617 () Bool)

(assert (=> b!617422 m!593617))

(declare-fun m!593619 () Bool)

(assert (=> b!617422 m!593619))

(declare-fun m!593621 () Bool)

(assert (=> b!617422 m!593621))

(declare-fun m!593623 () Bool)

(assert (=> b!617422 m!593623))

(assert (=> b!617417 m!593565))

(assert (=> b!617417 m!593565))

(declare-fun m!593625 () Bool)

(assert (=> b!617417 m!593625))

(declare-fun m!593627 () Bool)

(assert (=> b!617428 m!593627))

(push 1)

