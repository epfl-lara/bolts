; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56846 () Bool)

(assert start!56846)

(declare-fun b!629384 () Bool)

(declare-fun res!406966 () Bool)

(declare-fun e!359914 () Bool)

(assert (=> b!629384 (=> (not res!406966) (not e!359914))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37997 0))(
  ( (array!37998 (arr!18232 (Array (_ BitVec 32) (_ BitVec 64))) (size!18596 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37997)

(assert (=> b!629384 (= res!406966 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18232 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18232 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!629385 () Bool)

(declare-fun e!359917 () Bool)

(assert (=> b!629385 (= e!359914 e!359917)))

(declare-fun res!406959 () Bool)

(assert (=> b!629385 (=> (not res!406959) (not e!359917))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6679 0))(
  ( (MissingZero!6679 (index!28999 (_ BitVec 32))) (Found!6679 (index!29000 (_ BitVec 32))) (Intermediate!6679 (undefined!7491 Bool) (index!29001 (_ BitVec 32)) (x!57760 (_ BitVec 32))) (Undefined!6679) (MissingVacant!6679 (index!29002 (_ BitVec 32))) )
))
(declare-fun lt!290751 () SeekEntryResult!6679)

(assert (=> b!629385 (= res!406959 (and (= lt!290751 (Found!6679 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18232 a!2986) index!984) (select (arr!18232 a!2986) j!136))) (not (= (select (arr!18232 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37997 (_ BitVec 32)) SeekEntryResult!6679)

(assert (=> b!629385 (= lt!290751 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18232 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!406967 () Bool)

(declare-fun e!359916 () Bool)

(assert (=> start!56846 (=> (not res!406967) (not e!359916))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56846 (= res!406967 (validMask!0 mask!3053))))

(assert (=> start!56846 e!359916))

(assert (=> start!56846 true))

(declare-fun array_inv!14006 (array!37997) Bool)

(assert (=> start!56846 (array_inv!14006 a!2986)))

(declare-fun b!629386 () Bool)

(declare-fun res!406960 () Bool)

(assert (=> b!629386 (=> (not res!406960) (not e!359916))))

(assert (=> b!629386 (= res!406960 (and (= (size!18596 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18596 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18596 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!629387 () Bool)

(assert (=> b!629387 (= e!359916 e!359914)))

(declare-fun res!406962 () Bool)

(assert (=> b!629387 (=> (not res!406962) (not e!359914))))

(declare-fun lt!290754 () SeekEntryResult!6679)

(assert (=> b!629387 (= res!406962 (or (= lt!290754 (MissingZero!6679 i!1108)) (= lt!290754 (MissingVacant!6679 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37997 (_ BitVec 32)) SeekEntryResult!6679)

(assert (=> b!629387 (= lt!290754 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!629388 () Bool)

(declare-fun res!406961 () Bool)

(assert (=> b!629388 (=> (not res!406961) (not e!359916))))

(declare-fun arrayContainsKey!0 (array!37997 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629388 (= res!406961 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!629389 () Bool)

(declare-fun res!406958 () Bool)

(assert (=> b!629389 (=> (not res!406958) (not e!359916))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629389 (= res!406958 (validKeyInArray!0 k0!1786))))

(declare-fun b!629390 () Bool)

(declare-fun res!406964 () Bool)

(assert (=> b!629390 (=> (not res!406964) (not e!359916))))

(assert (=> b!629390 (= res!406964 (validKeyInArray!0 (select (arr!18232 a!2986) j!136)))))

(declare-fun b!629391 () Bool)

(declare-fun res!406965 () Bool)

(assert (=> b!629391 (=> (not res!406965) (not e!359914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37997 (_ BitVec 32)) Bool)

(assert (=> b!629391 (= res!406965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!629392 () Bool)

(declare-fun lt!290750 () SeekEntryResult!6679)

(assert (=> b!629392 (= e!359917 (not (= lt!290751 lt!290750)))))

(declare-fun lt!290753 () (_ BitVec 32))

(assert (=> b!629392 (= lt!290750 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290753 vacantSpotIndex!68 (select (store (arr!18232 a!2986) i!1108 k0!1786) j!136) (array!37998 (store (arr!18232 a!2986) i!1108 k0!1786) (size!18596 a!2986)) mask!3053))))

(assert (=> b!629392 (= lt!290750 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290753 vacantSpotIndex!68 (select (arr!18232 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!21102 0))(
  ( (Unit!21103) )
))
(declare-fun lt!290752 () Unit!21102)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37997 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21102)

(assert (=> b!629392 (= lt!290752 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290753 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629392 (= lt!290753 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!629393 () Bool)

(declare-fun res!406963 () Bool)

(assert (=> b!629393 (=> (not res!406963) (not e!359914))))

(declare-datatypes ((List!12326 0))(
  ( (Nil!12323) (Cons!12322 (h!13367 (_ BitVec 64)) (t!18562 List!12326)) )
))
(declare-fun arrayNoDuplicates!0 (array!37997 (_ BitVec 32) List!12326) Bool)

(assert (=> b!629393 (= res!406963 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12323))))

(assert (= (and start!56846 res!406967) b!629386))

(assert (= (and b!629386 res!406960) b!629390))

(assert (= (and b!629390 res!406964) b!629389))

(assert (= (and b!629389 res!406958) b!629388))

(assert (= (and b!629388 res!406961) b!629387))

(assert (= (and b!629387 res!406962) b!629391))

(assert (= (and b!629391 res!406965) b!629393))

(assert (= (and b!629393 res!406963) b!629384))

(assert (= (and b!629384 res!406966) b!629385))

(assert (= (and b!629385 res!406959) b!629392))

(declare-fun m!604481 () Bool)

(assert (=> b!629384 m!604481))

(declare-fun m!604483 () Bool)

(assert (=> b!629384 m!604483))

(declare-fun m!604485 () Bool)

(assert (=> b!629384 m!604485))

(declare-fun m!604487 () Bool)

(assert (=> b!629390 m!604487))

(assert (=> b!629390 m!604487))

(declare-fun m!604489 () Bool)

(assert (=> b!629390 m!604489))

(declare-fun m!604491 () Bool)

(assert (=> b!629387 m!604491))

(declare-fun m!604493 () Bool)

(assert (=> b!629385 m!604493))

(assert (=> b!629385 m!604487))

(assert (=> b!629385 m!604487))

(declare-fun m!604495 () Bool)

(assert (=> b!629385 m!604495))

(declare-fun m!604497 () Bool)

(assert (=> b!629391 m!604497))

(declare-fun m!604499 () Bool)

(assert (=> b!629393 m!604499))

(declare-fun m!604501 () Bool)

(assert (=> start!56846 m!604501))

(declare-fun m!604503 () Bool)

(assert (=> start!56846 m!604503))

(declare-fun m!604505 () Bool)

(assert (=> b!629389 m!604505))

(declare-fun m!604507 () Bool)

(assert (=> b!629388 m!604507))

(declare-fun m!604509 () Bool)

(assert (=> b!629392 m!604509))

(declare-fun m!604511 () Bool)

(assert (=> b!629392 m!604511))

(assert (=> b!629392 m!604487))

(assert (=> b!629392 m!604511))

(declare-fun m!604513 () Bool)

(assert (=> b!629392 m!604513))

(declare-fun m!604515 () Bool)

(assert (=> b!629392 m!604515))

(assert (=> b!629392 m!604487))

(declare-fun m!604517 () Bool)

(assert (=> b!629392 m!604517))

(assert (=> b!629392 m!604483))

(check-sat (not start!56846) (not b!629387) (not b!629385) (not b!629393) (not b!629388) (not b!629392) (not b!629389) (not b!629391) (not b!629390))
(check-sat)
(get-model)

(declare-fun b!629436 () Bool)

(declare-fun e!359938 () SeekEntryResult!6679)

(declare-fun e!359937 () SeekEntryResult!6679)

(assert (=> b!629436 (= e!359938 e!359937)))

(declare-fun lt!290775 () (_ BitVec 64))

(declare-fun c!71586 () Bool)

(assert (=> b!629436 (= c!71586 (= lt!290775 (select (store (arr!18232 a!2986) i!1108 k0!1786) j!136)))))

(declare-fun b!629437 () Bool)

(declare-fun c!71588 () Bool)

(assert (=> b!629437 (= c!71588 (= lt!290775 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!359936 () SeekEntryResult!6679)

(assert (=> b!629437 (= e!359937 e!359936)))

(declare-fun d!89001 () Bool)

(declare-fun lt!290774 () SeekEntryResult!6679)

(get-info :version)

(assert (=> d!89001 (and (or ((_ is Undefined!6679) lt!290774) (not ((_ is Found!6679) lt!290774)) (and (bvsge (index!29000 lt!290774) #b00000000000000000000000000000000) (bvslt (index!29000 lt!290774) (size!18596 (array!37998 (store (arr!18232 a!2986) i!1108 k0!1786) (size!18596 a!2986)))))) (or ((_ is Undefined!6679) lt!290774) ((_ is Found!6679) lt!290774) (not ((_ is MissingVacant!6679) lt!290774)) (not (= (index!29002 lt!290774) vacantSpotIndex!68)) (and (bvsge (index!29002 lt!290774) #b00000000000000000000000000000000) (bvslt (index!29002 lt!290774) (size!18596 (array!37998 (store (arr!18232 a!2986) i!1108 k0!1786) (size!18596 a!2986)))))) (or ((_ is Undefined!6679) lt!290774) (ite ((_ is Found!6679) lt!290774) (= (select (arr!18232 (array!37998 (store (arr!18232 a!2986) i!1108 k0!1786) (size!18596 a!2986))) (index!29000 lt!290774)) (select (store (arr!18232 a!2986) i!1108 k0!1786) j!136)) (and ((_ is MissingVacant!6679) lt!290774) (= (index!29002 lt!290774) vacantSpotIndex!68) (= (select (arr!18232 (array!37998 (store (arr!18232 a!2986) i!1108 k0!1786) (size!18596 a!2986))) (index!29002 lt!290774)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89001 (= lt!290774 e!359938)))

(declare-fun c!71587 () Bool)

(assert (=> d!89001 (= c!71587 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89001 (= lt!290775 (select (arr!18232 (array!37998 (store (arr!18232 a!2986) i!1108 k0!1786) (size!18596 a!2986))) lt!290753))))

(assert (=> d!89001 (validMask!0 mask!3053)))

(assert (=> d!89001 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290753 vacantSpotIndex!68 (select (store (arr!18232 a!2986) i!1108 k0!1786) j!136) (array!37998 (store (arr!18232 a!2986) i!1108 k0!1786) (size!18596 a!2986)) mask!3053) lt!290774)))

(declare-fun b!629438 () Bool)

(assert (=> b!629438 (= e!359937 (Found!6679 lt!290753))))

(declare-fun b!629439 () Bool)

(assert (=> b!629439 (= e!359938 Undefined!6679)))

(declare-fun b!629440 () Bool)

(assert (=> b!629440 (= e!359936 (MissingVacant!6679 vacantSpotIndex!68))))

(declare-fun b!629441 () Bool)

(assert (=> b!629441 (= e!359936 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!290753 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (store (arr!18232 a!2986) i!1108 k0!1786) j!136) (array!37998 (store (arr!18232 a!2986) i!1108 k0!1786) (size!18596 a!2986)) mask!3053))))

(assert (= (and d!89001 c!71587) b!629439))

(assert (= (and d!89001 (not c!71587)) b!629436))

(assert (= (and b!629436 c!71586) b!629438))

(assert (= (and b!629436 (not c!71586)) b!629437))

(assert (= (and b!629437 c!71588) b!629440))

(assert (= (and b!629437 (not c!71588)) b!629441))

(declare-fun m!604557 () Bool)

(assert (=> d!89001 m!604557))

(declare-fun m!604559 () Bool)

(assert (=> d!89001 m!604559))

(declare-fun m!604561 () Bool)

(assert (=> d!89001 m!604561))

(assert (=> d!89001 m!604501))

(declare-fun m!604563 () Bool)

(assert (=> b!629441 m!604563))

(assert (=> b!629441 m!604563))

(assert (=> b!629441 m!604511))

(declare-fun m!604565 () Bool)

(assert (=> b!629441 m!604565))

(assert (=> b!629392 d!89001))

(declare-fun b!629442 () Bool)

(declare-fun e!359941 () SeekEntryResult!6679)

(declare-fun e!359940 () SeekEntryResult!6679)

(assert (=> b!629442 (= e!359941 e!359940)))

(declare-fun c!71589 () Bool)

(declare-fun lt!290777 () (_ BitVec 64))

(assert (=> b!629442 (= c!71589 (= lt!290777 (select (arr!18232 a!2986) j!136)))))

(declare-fun b!629443 () Bool)

(declare-fun c!71591 () Bool)

(assert (=> b!629443 (= c!71591 (= lt!290777 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!359939 () SeekEntryResult!6679)

(assert (=> b!629443 (= e!359940 e!359939)))

(declare-fun lt!290776 () SeekEntryResult!6679)

(declare-fun d!89003 () Bool)

(assert (=> d!89003 (and (or ((_ is Undefined!6679) lt!290776) (not ((_ is Found!6679) lt!290776)) (and (bvsge (index!29000 lt!290776) #b00000000000000000000000000000000) (bvslt (index!29000 lt!290776) (size!18596 a!2986)))) (or ((_ is Undefined!6679) lt!290776) ((_ is Found!6679) lt!290776) (not ((_ is MissingVacant!6679) lt!290776)) (not (= (index!29002 lt!290776) vacantSpotIndex!68)) (and (bvsge (index!29002 lt!290776) #b00000000000000000000000000000000) (bvslt (index!29002 lt!290776) (size!18596 a!2986)))) (or ((_ is Undefined!6679) lt!290776) (ite ((_ is Found!6679) lt!290776) (= (select (arr!18232 a!2986) (index!29000 lt!290776)) (select (arr!18232 a!2986) j!136)) (and ((_ is MissingVacant!6679) lt!290776) (= (index!29002 lt!290776) vacantSpotIndex!68) (= (select (arr!18232 a!2986) (index!29002 lt!290776)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89003 (= lt!290776 e!359941)))

(declare-fun c!71590 () Bool)

(assert (=> d!89003 (= c!71590 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89003 (= lt!290777 (select (arr!18232 a!2986) lt!290753))))

(assert (=> d!89003 (validMask!0 mask!3053)))

(assert (=> d!89003 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290753 vacantSpotIndex!68 (select (arr!18232 a!2986) j!136) a!2986 mask!3053) lt!290776)))

(declare-fun b!629444 () Bool)

(assert (=> b!629444 (= e!359940 (Found!6679 lt!290753))))

(declare-fun b!629445 () Bool)

(assert (=> b!629445 (= e!359941 Undefined!6679)))

(declare-fun b!629446 () Bool)

(assert (=> b!629446 (= e!359939 (MissingVacant!6679 vacantSpotIndex!68))))

(declare-fun b!629447 () Bool)

(assert (=> b!629447 (= e!359939 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!290753 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18232 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!89003 c!71590) b!629445))

(assert (= (and d!89003 (not c!71590)) b!629442))

(assert (= (and b!629442 c!71589) b!629444))

(assert (= (and b!629442 (not c!71589)) b!629443))

(assert (= (and b!629443 c!71591) b!629446))

(assert (= (and b!629443 (not c!71591)) b!629447))

(declare-fun m!604567 () Bool)

(assert (=> d!89003 m!604567))

(declare-fun m!604569 () Bool)

(assert (=> d!89003 m!604569))

(declare-fun m!604571 () Bool)

(assert (=> d!89003 m!604571))

(assert (=> d!89003 m!604501))

(assert (=> b!629447 m!604563))

(assert (=> b!629447 m!604563))

(assert (=> b!629447 m!604487))

(declare-fun m!604573 () Bool)

(assert (=> b!629447 m!604573))

(assert (=> b!629392 d!89003))

(declare-fun d!89005 () Bool)

(declare-fun e!359944 () Bool)

(assert (=> d!89005 e!359944))

(declare-fun res!407000 () Bool)

(assert (=> d!89005 (=> (not res!407000) (not e!359944))))

(assert (=> d!89005 (= res!407000 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18596 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18596 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18596 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18596 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18596 a!2986))))))

(declare-fun lt!290780 () Unit!21102)

(declare-fun choose!9 (array!37997 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21102)

(assert (=> d!89005 (= lt!290780 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290753 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89005 (validMask!0 mask!3053)))

(assert (=> d!89005 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290753 vacantSpotIndex!68 mask!3053) lt!290780)))

(declare-fun b!629450 () Bool)

(assert (=> b!629450 (= e!359944 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290753 vacantSpotIndex!68 (select (arr!18232 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290753 vacantSpotIndex!68 (select (store (arr!18232 a!2986) i!1108 k0!1786) j!136) (array!37998 (store (arr!18232 a!2986) i!1108 k0!1786) (size!18596 a!2986)) mask!3053)))))

(assert (= (and d!89005 res!407000) b!629450))

(declare-fun m!604575 () Bool)

(assert (=> d!89005 m!604575))

(assert (=> d!89005 m!604501))

(assert (=> b!629450 m!604511))

(assert (=> b!629450 m!604487))

(assert (=> b!629450 m!604487))

(assert (=> b!629450 m!604517))

(assert (=> b!629450 m!604483))

(assert (=> b!629450 m!604511))

(assert (=> b!629450 m!604513))

(assert (=> b!629392 d!89005))

(declare-fun d!89009 () Bool)

(declare-fun lt!290783 () (_ BitVec 32))

(assert (=> d!89009 (and (bvsge lt!290783 #b00000000000000000000000000000000) (bvslt lt!290783 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89009 (= lt!290783 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89009 (validMask!0 mask!3053)))

(assert (=> d!89009 (= (nextIndex!0 index!984 x!910 mask!3053) lt!290783)))

(declare-fun bs!18983 () Bool)

(assert (= bs!18983 d!89009))

(declare-fun m!604577 () Bool)

(assert (=> bs!18983 m!604577))

(assert (=> bs!18983 m!604501))

(assert (=> b!629392 d!89009))

(declare-fun d!89011 () Bool)

(assert (=> d!89011 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!56846 d!89011))

(declare-fun d!89017 () Bool)

(assert (=> d!89017 (= (array_inv!14006 a!2986) (bvsge (size!18596 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!56846 d!89017))

(declare-fun b!629489 () Bool)

(declare-fun e!359970 () Bool)

(declare-fun call!33287 () Bool)

(assert (=> b!629489 (= e!359970 call!33287)))

(declare-fun b!629490 () Bool)

(declare-fun e!359971 () Bool)

(assert (=> b!629490 (= e!359970 e!359971)))

(declare-fun lt!290799 () (_ BitVec 64))

(assert (=> b!629490 (= lt!290799 (select (arr!18232 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!290798 () Unit!21102)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37997 (_ BitVec 64) (_ BitVec 32)) Unit!21102)

(assert (=> b!629490 (= lt!290798 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!290799 #b00000000000000000000000000000000))))

(assert (=> b!629490 (arrayContainsKey!0 a!2986 lt!290799 #b00000000000000000000000000000000)))

(declare-fun lt!290800 () Unit!21102)

(assert (=> b!629490 (= lt!290800 lt!290798)))

(declare-fun res!407012 () Bool)

(assert (=> b!629490 (= res!407012 (= (seekEntryOrOpen!0 (select (arr!18232 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6679 #b00000000000000000000000000000000)))))

(assert (=> b!629490 (=> (not res!407012) (not e!359971))))

(declare-fun b!629491 () Bool)

(assert (=> b!629491 (= e!359971 call!33287)))

(declare-fun d!89021 () Bool)

(declare-fun res!407011 () Bool)

(declare-fun e!359969 () Bool)

(assert (=> d!89021 (=> res!407011 e!359969)))

(assert (=> d!89021 (= res!407011 (bvsge #b00000000000000000000000000000000 (size!18596 a!2986)))))

(assert (=> d!89021 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!359969)))

(declare-fun bm!33284 () Bool)

(assert (=> bm!33284 (= call!33287 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!629492 () Bool)

(assert (=> b!629492 (= e!359969 e!359970)))

(declare-fun c!71606 () Bool)

(assert (=> b!629492 (= c!71606 (validKeyInArray!0 (select (arr!18232 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!89021 (not res!407011)) b!629492))

(assert (= (and b!629492 c!71606) b!629490))

(assert (= (and b!629492 (not c!71606)) b!629489))

(assert (= (and b!629490 res!407012) b!629491))

(assert (= (or b!629491 b!629489) bm!33284))

(declare-fun m!604601 () Bool)

(assert (=> b!629490 m!604601))

(declare-fun m!604603 () Bool)

(assert (=> b!629490 m!604603))

(declare-fun m!604605 () Bool)

(assert (=> b!629490 m!604605))

(assert (=> b!629490 m!604601))

(declare-fun m!604607 () Bool)

(assert (=> b!629490 m!604607))

(declare-fun m!604609 () Bool)

(assert (=> bm!33284 m!604609))

(assert (=> b!629492 m!604601))

(assert (=> b!629492 m!604601))

(declare-fun m!604611 () Bool)

(assert (=> b!629492 m!604611))

(assert (=> b!629391 d!89021))

(declare-fun b!629495 () Bool)

(declare-fun e!359974 () SeekEntryResult!6679)

(declare-fun e!359973 () SeekEntryResult!6679)

(assert (=> b!629495 (= e!359974 e!359973)))

(declare-fun lt!290806 () (_ BitVec 64))

(declare-fun c!71607 () Bool)

(assert (=> b!629495 (= c!71607 (= lt!290806 (select (arr!18232 a!2986) j!136)))))

(declare-fun b!629496 () Bool)

(declare-fun c!71609 () Bool)

(assert (=> b!629496 (= c!71609 (= lt!290806 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!359972 () SeekEntryResult!6679)

(assert (=> b!629496 (= e!359973 e!359972)))

(declare-fun d!89025 () Bool)

(declare-fun lt!290805 () SeekEntryResult!6679)

(assert (=> d!89025 (and (or ((_ is Undefined!6679) lt!290805) (not ((_ is Found!6679) lt!290805)) (and (bvsge (index!29000 lt!290805) #b00000000000000000000000000000000) (bvslt (index!29000 lt!290805) (size!18596 a!2986)))) (or ((_ is Undefined!6679) lt!290805) ((_ is Found!6679) lt!290805) (not ((_ is MissingVacant!6679) lt!290805)) (not (= (index!29002 lt!290805) vacantSpotIndex!68)) (and (bvsge (index!29002 lt!290805) #b00000000000000000000000000000000) (bvslt (index!29002 lt!290805) (size!18596 a!2986)))) (or ((_ is Undefined!6679) lt!290805) (ite ((_ is Found!6679) lt!290805) (= (select (arr!18232 a!2986) (index!29000 lt!290805)) (select (arr!18232 a!2986) j!136)) (and ((_ is MissingVacant!6679) lt!290805) (= (index!29002 lt!290805) vacantSpotIndex!68) (= (select (arr!18232 a!2986) (index!29002 lt!290805)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89025 (= lt!290805 e!359974)))

(declare-fun c!71608 () Bool)

(assert (=> d!89025 (= c!71608 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89025 (= lt!290806 (select (arr!18232 a!2986) index!984))))

(assert (=> d!89025 (validMask!0 mask!3053)))

(assert (=> d!89025 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18232 a!2986) j!136) a!2986 mask!3053) lt!290805)))

(declare-fun b!629497 () Bool)

(assert (=> b!629497 (= e!359973 (Found!6679 index!984))))

(declare-fun b!629498 () Bool)

(assert (=> b!629498 (= e!359974 Undefined!6679)))

(declare-fun b!629499 () Bool)

(assert (=> b!629499 (= e!359972 (MissingVacant!6679 vacantSpotIndex!68))))

(declare-fun b!629500 () Bool)

(assert (=> b!629500 (= e!359972 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18232 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!89025 c!71608) b!629498))

(assert (= (and d!89025 (not c!71608)) b!629495))

(assert (= (and b!629495 c!71607) b!629497))

(assert (= (and b!629495 (not c!71607)) b!629496))

(assert (= (and b!629496 c!71609) b!629499))

(assert (= (and b!629496 (not c!71609)) b!629500))

(declare-fun m!604613 () Bool)

(assert (=> d!89025 m!604613))

(declare-fun m!604615 () Bool)

(assert (=> d!89025 m!604615))

(assert (=> d!89025 m!604493))

(assert (=> d!89025 m!604501))

(assert (=> b!629500 m!604509))

(assert (=> b!629500 m!604509))

(assert (=> b!629500 m!604487))

(declare-fun m!604617 () Bool)

(assert (=> b!629500 m!604617))

(assert (=> b!629385 d!89025))

(declare-fun d!89027 () Bool)

(assert (=> d!89027 (= (validKeyInArray!0 (select (arr!18232 a!2986) j!136)) (and (not (= (select (arr!18232 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18232 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!629390 d!89027))

(declare-fun d!89029 () Bool)

(assert (=> d!89029 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!629389 d!89029))

(declare-fun d!89031 () Bool)

(declare-fun res!407019 () Bool)

(declare-fun e!359990 () Bool)

(assert (=> d!89031 (=> res!407019 e!359990)))

(assert (=> d!89031 (= res!407019 (= (select (arr!18232 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!89031 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!359990)))

(declare-fun b!629523 () Bool)

(declare-fun e!359991 () Bool)

(assert (=> b!629523 (= e!359990 e!359991)))

(declare-fun res!407020 () Bool)

(assert (=> b!629523 (=> (not res!407020) (not e!359991))))

(assert (=> b!629523 (= res!407020 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18596 a!2986)))))

(declare-fun b!629524 () Bool)

(assert (=> b!629524 (= e!359991 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89031 (not res!407019)) b!629523))

(assert (= (and b!629523 res!407020) b!629524))

(assert (=> d!89031 m!604601))

(declare-fun m!604625 () Bool)

(assert (=> b!629524 m!604625))

(assert (=> b!629388 d!89031))

(declare-fun b!629544 () Bool)

(declare-fun e!360008 () Bool)

(declare-fun e!360010 () Bool)

(assert (=> b!629544 (= e!360008 e!360010)))

(declare-fun c!71623 () Bool)

(assert (=> b!629544 (= c!71623 (validKeyInArray!0 (select (arr!18232 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!629545 () Bool)

(declare-fun call!33290 () Bool)

(assert (=> b!629545 (= e!360010 call!33290)))

(declare-fun d!89033 () Bool)

(declare-fun res!407032 () Bool)

(declare-fun e!360007 () Bool)

(assert (=> d!89033 (=> res!407032 e!360007)))

(assert (=> d!89033 (= res!407032 (bvsge #b00000000000000000000000000000000 (size!18596 a!2986)))))

(assert (=> d!89033 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12323) e!360007)))

(declare-fun b!629546 () Bool)

(assert (=> b!629546 (= e!360007 e!360008)))

(declare-fun res!407034 () Bool)

(assert (=> b!629546 (=> (not res!407034) (not e!360008))))

(declare-fun e!360009 () Bool)

(assert (=> b!629546 (= res!407034 (not e!360009))))

(declare-fun res!407033 () Bool)

(assert (=> b!629546 (=> (not res!407033) (not e!360009))))

(assert (=> b!629546 (= res!407033 (validKeyInArray!0 (select (arr!18232 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33287 () Bool)

(assert (=> bm!33287 (= call!33290 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!71623 (Cons!12322 (select (arr!18232 a!2986) #b00000000000000000000000000000000) Nil!12323) Nil!12323)))))

(declare-fun b!629547 () Bool)

(declare-fun contains!3088 (List!12326 (_ BitVec 64)) Bool)

(assert (=> b!629547 (= e!360009 (contains!3088 Nil!12323 (select (arr!18232 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!629548 () Bool)

(assert (=> b!629548 (= e!360010 call!33290)))

(assert (= (and d!89033 (not res!407032)) b!629546))

(assert (= (and b!629546 res!407033) b!629547))

(assert (= (and b!629546 res!407034) b!629544))

(assert (= (and b!629544 c!71623) b!629545))

(assert (= (and b!629544 (not c!71623)) b!629548))

(assert (= (or b!629545 b!629548) bm!33287))

(assert (=> b!629544 m!604601))

(assert (=> b!629544 m!604601))

(assert (=> b!629544 m!604611))

(assert (=> b!629546 m!604601))

(assert (=> b!629546 m!604601))

(assert (=> b!629546 m!604611))

(assert (=> bm!33287 m!604601))

(declare-fun m!604631 () Bool)

(assert (=> bm!33287 m!604631))

(assert (=> b!629547 m!604601))

(assert (=> b!629547 m!604601))

(declare-fun m!604633 () Bool)

(assert (=> b!629547 m!604633))

(assert (=> b!629393 d!89033))

(declare-fun d!89041 () Bool)

(declare-fun lt!290841 () SeekEntryResult!6679)

(assert (=> d!89041 (and (or ((_ is Undefined!6679) lt!290841) (not ((_ is Found!6679) lt!290841)) (and (bvsge (index!29000 lt!290841) #b00000000000000000000000000000000) (bvslt (index!29000 lt!290841) (size!18596 a!2986)))) (or ((_ is Undefined!6679) lt!290841) ((_ is Found!6679) lt!290841) (not ((_ is MissingZero!6679) lt!290841)) (and (bvsge (index!28999 lt!290841) #b00000000000000000000000000000000) (bvslt (index!28999 lt!290841) (size!18596 a!2986)))) (or ((_ is Undefined!6679) lt!290841) ((_ is Found!6679) lt!290841) ((_ is MissingZero!6679) lt!290841) (not ((_ is MissingVacant!6679) lt!290841)) (and (bvsge (index!29002 lt!290841) #b00000000000000000000000000000000) (bvslt (index!29002 lt!290841) (size!18596 a!2986)))) (or ((_ is Undefined!6679) lt!290841) (ite ((_ is Found!6679) lt!290841) (= (select (arr!18232 a!2986) (index!29000 lt!290841)) k0!1786) (ite ((_ is MissingZero!6679) lt!290841) (= (select (arr!18232 a!2986) (index!28999 lt!290841)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6679) lt!290841) (= (select (arr!18232 a!2986) (index!29002 lt!290841)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!360055 () SeekEntryResult!6679)

(assert (=> d!89041 (= lt!290841 e!360055)))

(declare-fun c!71640 () Bool)

(declare-fun lt!290839 () SeekEntryResult!6679)

(assert (=> d!89041 (= c!71640 (and ((_ is Intermediate!6679) lt!290839) (undefined!7491 lt!290839)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37997 (_ BitVec 32)) SeekEntryResult!6679)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89041 (= lt!290839 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!89041 (validMask!0 mask!3053)))

(assert (=> d!89041 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!290841)))

(declare-fun e!360053 () SeekEntryResult!6679)

(declare-fun b!629607 () Bool)

(assert (=> b!629607 (= e!360053 (seekKeyOrZeroReturnVacant!0 (x!57760 lt!290839) (index!29001 lt!290839) (index!29001 lt!290839) k0!1786 a!2986 mask!3053))))

(declare-fun b!629608 () Bool)

(assert (=> b!629608 (= e!360053 (MissingZero!6679 (index!29001 lt!290839)))))

(declare-fun b!629609 () Bool)

(declare-fun e!360054 () SeekEntryResult!6679)

(assert (=> b!629609 (= e!360055 e!360054)))

(declare-fun lt!290840 () (_ BitVec 64))

(assert (=> b!629609 (= lt!290840 (select (arr!18232 a!2986) (index!29001 lt!290839)))))

(declare-fun c!71641 () Bool)

(assert (=> b!629609 (= c!71641 (= lt!290840 k0!1786))))

(declare-fun b!629610 () Bool)

(declare-fun c!71642 () Bool)

(assert (=> b!629610 (= c!71642 (= lt!290840 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!629610 (= e!360054 e!360053)))

(declare-fun b!629611 () Bool)

(assert (=> b!629611 (= e!360055 Undefined!6679)))

(declare-fun b!629612 () Bool)

(assert (=> b!629612 (= e!360054 (Found!6679 (index!29001 lt!290839)))))

(assert (= (and d!89041 c!71640) b!629611))

(assert (= (and d!89041 (not c!71640)) b!629609))

(assert (= (and b!629609 c!71641) b!629612))

(assert (= (and b!629609 (not c!71641)) b!629610))

(assert (= (and b!629610 c!71642) b!629608))

(assert (= (and b!629610 (not c!71642)) b!629607))

(declare-fun m!604665 () Bool)

(assert (=> d!89041 m!604665))

(declare-fun m!604667 () Bool)

(assert (=> d!89041 m!604667))

(declare-fun m!604669 () Bool)

(assert (=> d!89041 m!604669))

(declare-fun m!604671 () Bool)

(assert (=> d!89041 m!604671))

(assert (=> d!89041 m!604501))

(declare-fun m!604673 () Bool)

(assert (=> d!89041 m!604673))

(assert (=> d!89041 m!604667))

(declare-fun m!604675 () Bool)

(assert (=> b!629607 m!604675))

(declare-fun m!604677 () Bool)

(assert (=> b!629609 m!604677))

(assert (=> b!629387 d!89041))

(check-sat (not bm!33287) (not b!629441) (not b!629546) (not b!629500) (not b!629490) (not d!89003) (not b!629607) (not b!629447) (not b!629492) (not b!629524) (not d!89005) (not b!629544) (not b!629450) (not d!89009) (not bm!33284) (not d!89025) (not d!89041) (not b!629547) (not d!89001))
(check-sat)
