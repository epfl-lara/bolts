; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58886 () Bool)

(assert start!58886)

(declare-fun b!648996 () Bool)

(declare-fun e!372253 () Bool)

(declare-datatypes ((SeekEntryResult!6901 0))(
  ( (MissingZero!6901 (index!29950 (_ BitVec 32))) (Found!6901 (index!29951 (_ BitVec 32))) (Intermediate!6901 (undefined!7713 Bool) (index!29952 (_ BitVec 32)) (x!58763 (_ BitVec 32))) (Undefined!6901) (MissingVacant!6901 (index!29953 (_ BitVec 32))) )
))
(declare-fun lt!301375 () SeekEntryResult!6901)

(declare-fun lt!301374 () SeekEntryResult!6901)

(assert (=> b!648996 (= e!372253 (= lt!301375 lt!301374))))

(declare-fun b!648997 () Bool)

(declare-fun res!420713 () Bool)

(declare-fun e!372259 () Bool)

(assert (=> b!648997 (=> res!420713 e!372259)))

(declare-datatypes ((List!12548 0))(
  ( (Nil!12545) (Cons!12544 (h!13589 (_ BitVec 64)) (t!18784 List!12548)) )
))
(declare-fun contains!3171 (List!12548 (_ BitVec 64)) Bool)

(assert (=> b!648997 (= res!420713 (contains!3171 Nil!12545 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!648998 () Bool)

(declare-fun e!372260 () Bool)

(declare-fun e!372258 () Bool)

(assert (=> b!648998 (= e!372260 e!372258)))

(declare-fun res!420707 () Bool)

(assert (=> b!648998 (=> (not res!420707) (not e!372258))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38504 0))(
  ( (array!38505 (arr!18454 (Array (_ BitVec 32) (_ BitVec 64))) (size!18818 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38504)

(assert (=> b!648998 (= res!420707 (and (= lt!301375 (Found!6901 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18454 a!2986) index!984) (select (arr!18454 a!2986) j!136))) (not (= (select (arr!18454 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38504 (_ BitVec 32)) SeekEntryResult!6901)

(assert (=> b!648998 (= lt!301375 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18454 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!648999 () Bool)

(declare-fun res!420720 () Bool)

(declare-fun e!372251 () Bool)

(assert (=> b!648999 (=> (not res!420720) (not e!372251))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38504 (_ BitVec 32)) Bool)

(assert (=> b!648999 (= res!420720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!649001 () Bool)

(declare-fun res!420717 () Bool)

(declare-fun e!372249 () Bool)

(assert (=> b!649001 (=> (not res!420717) (not e!372249))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!649001 (= res!420717 (validKeyInArray!0 k0!1786))))

(declare-fun b!649002 () Bool)

(declare-fun e!372256 () Bool)

(assert (=> b!649002 (= e!372258 (not e!372256))))

(declare-fun res!420709 () Bool)

(assert (=> b!649002 (=> res!420709 e!372256)))

(declare-fun lt!301369 () SeekEntryResult!6901)

(assert (=> b!649002 (= res!420709 (not (= lt!301369 (Found!6901 index!984))))))

(declare-datatypes ((Unit!22078 0))(
  ( (Unit!22079) )
))
(declare-fun lt!301382 () Unit!22078)

(declare-fun e!372252 () Unit!22078)

(assert (=> b!649002 (= lt!301382 e!372252)))

(declare-fun c!74516 () Bool)

(assert (=> b!649002 (= c!74516 (= lt!301369 Undefined!6901))))

(declare-fun lt!301381 () array!38504)

(declare-fun lt!301368 () (_ BitVec 64))

(assert (=> b!649002 (= lt!301369 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301368 lt!301381 mask!3053))))

(assert (=> b!649002 e!372253))

(declare-fun res!420721 () Bool)

(assert (=> b!649002 (=> (not res!420721) (not e!372253))))

(declare-fun lt!301383 () (_ BitVec 32))

(assert (=> b!649002 (= res!420721 (= lt!301374 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301383 vacantSpotIndex!68 lt!301368 lt!301381 mask!3053)))))

(assert (=> b!649002 (= lt!301374 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301383 vacantSpotIndex!68 (select (arr!18454 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!649002 (= lt!301368 (select (store (arr!18454 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!301370 () Unit!22078)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38504 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22078)

(assert (=> b!649002 (= lt!301370 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301383 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!649002 (= lt!301383 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!649003 () Bool)

(declare-fun e!372248 () Unit!22078)

(declare-fun Unit!22080 () Unit!22078)

(assert (=> b!649003 (= e!372248 Unit!22080)))

(declare-fun lt!301380 () Unit!22078)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38504 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22078)

(assert (=> b!649003 (= lt!301380 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301381 (select (arr!18454 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38504 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!649003 (arrayContainsKey!0 lt!301381 (select (arr!18454 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!301376 () Unit!22078)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38504 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12548) Unit!22078)

(assert (=> b!649003 (= lt!301376 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12545))))

(declare-fun arrayNoDuplicates!0 (array!38504 (_ BitVec 32) List!12548) Bool)

(assert (=> b!649003 (arrayNoDuplicates!0 lt!301381 #b00000000000000000000000000000000 Nil!12545)))

(declare-fun lt!301372 () Unit!22078)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38504 (_ BitVec 32) (_ BitVec 32)) Unit!22078)

(assert (=> b!649003 (= lt!301372 (lemmaNoDuplicateFromThenFromBigger!0 lt!301381 #b00000000000000000000000000000000 j!136))))

(assert (=> b!649003 (arrayNoDuplicates!0 lt!301381 j!136 Nil!12545)))

(declare-fun lt!301379 () Unit!22078)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38504 (_ BitVec 64) (_ BitVec 32) List!12548) Unit!22078)

(assert (=> b!649003 (= lt!301379 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301381 (select (arr!18454 a!2986) j!136) j!136 Nil!12545))))

(assert (=> b!649003 false))

(declare-fun b!649004 () Bool)

(declare-fun res!420719 () Bool)

(assert (=> b!649004 (=> (not res!420719) (not e!372251))))

(assert (=> b!649004 (= res!420719 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18454 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!649005 () Bool)

(assert (=> b!649005 (= e!372249 e!372251)))

(declare-fun res!420701 () Bool)

(assert (=> b!649005 (=> (not res!420701) (not e!372251))))

(declare-fun lt!301373 () SeekEntryResult!6901)

(assert (=> b!649005 (= res!420701 (or (= lt!301373 (MissingZero!6901 i!1108)) (= lt!301373 (MissingVacant!6901 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38504 (_ BitVec 32)) SeekEntryResult!6901)

(assert (=> b!649005 (= lt!301373 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!649006 () Bool)

(declare-fun e!372257 () Bool)

(assert (=> b!649006 (= e!372257 (arrayContainsKey!0 lt!301381 (select (arr!18454 a!2986) j!136) index!984))))

(declare-fun e!372247 () Bool)

(declare-fun b!649007 () Bool)

(assert (=> b!649007 (= e!372247 (arrayContainsKey!0 lt!301381 (select (arr!18454 a!2986) j!136) index!984))))

(declare-fun b!649008 () Bool)

(declare-fun Unit!22081 () Unit!22078)

(assert (=> b!649008 (= e!372252 Unit!22081)))

(declare-fun b!649009 () Bool)

(declare-fun e!372261 () Bool)

(declare-fun e!372250 () Bool)

(assert (=> b!649009 (= e!372261 e!372250)))

(declare-fun res!420708 () Bool)

(assert (=> b!649009 (=> res!420708 e!372250)))

(declare-fun lt!301371 () (_ BitVec 64))

(assert (=> b!649009 (= res!420708 (or (not (= (select (arr!18454 a!2986) j!136) lt!301368)) (not (= (select (arr!18454 a!2986) j!136) lt!301371)) (bvsge j!136 index!984)))))

(declare-fun b!649010 () Bool)

(declare-fun e!372254 () Bool)

(assert (=> b!649010 (= e!372254 e!372259)))

(declare-fun res!420700 () Bool)

(assert (=> b!649010 (=> res!420700 e!372259)))

(assert (=> b!649010 (= res!420700 (or (bvsge (size!18818 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18818 a!2986))))))

(assert (=> b!649010 (arrayContainsKey!0 lt!301381 (select (arr!18454 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!301367 () Unit!22078)

(assert (=> b!649010 (= lt!301367 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301381 (select (arr!18454 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!649010 e!372257))

(declare-fun res!420714 () Bool)

(assert (=> b!649010 (=> (not res!420714) (not e!372257))))

(assert (=> b!649010 (= res!420714 (arrayContainsKey!0 lt!301381 (select (arr!18454 a!2986) j!136) j!136))))

(declare-fun b!649011 () Bool)

(assert (=> b!649011 (= e!372250 e!372247)))

(declare-fun res!420706 () Bool)

(assert (=> b!649011 (=> (not res!420706) (not e!372247))))

(assert (=> b!649011 (= res!420706 (arrayContainsKey!0 lt!301381 (select (arr!18454 a!2986) j!136) j!136))))

(declare-fun b!649012 () Bool)

(assert (=> b!649012 (= e!372251 e!372260)))

(declare-fun res!420716 () Bool)

(assert (=> b!649012 (=> (not res!420716) (not e!372260))))

(assert (=> b!649012 (= res!420716 (= (select (store (arr!18454 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!649012 (= lt!301381 (array!38505 (store (arr!18454 a!2986) i!1108 k0!1786) (size!18818 a!2986)))))

(declare-fun b!649013 () Bool)

(declare-fun e!372255 () Bool)

(assert (=> b!649013 (= e!372256 e!372255)))

(declare-fun res!420711 () Bool)

(assert (=> b!649013 (=> res!420711 e!372255)))

(assert (=> b!649013 (= res!420711 (or (not (= (select (arr!18454 a!2986) j!136) lt!301368)) (not (= (select (arr!18454 a!2986) j!136) lt!301371))))))

(assert (=> b!649013 e!372261))

(declare-fun res!420703 () Bool)

(assert (=> b!649013 (=> (not res!420703) (not e!372261))))

(assert (=> b!649013 (= res!420703 (= lt!301371 (select (arr!18454 a!2986) j!136)))))

(assert (=> b!649013 (= lt!301371 (select (store (arr!18454 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!649014 () Bool)

(assert (=> b!649014 (= e!372259 true)))

(declare-fun lt!301378 () Bool)

(assert (=> b!649014 (= lt!301378 (contains!3171 Nil!12545 k0!1786))))

(declare-fun b!649015 () Bool)

(declare-fun res!420718 () Bool)

(assert (=> b!649015 (=> (not res!420718) (not e!372249))))

(assert (=> b!649015 (= res!420718 (validKeyInArray!0 (select (arr!18454 a!2986) j!136)))))

(declare-fun b!649016 () Bool)

(declare-fun res!420712 () Bool)

(assert (=> b!649016 (=> (not res!420712) (not e!372249))))

(assert (=> b!649016 (= res!420712 (and (= (size!18818 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18818 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18818 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!649017 () Bool)

(declare-fun res!420704 () Bool)

(assert (=> b!649017 (=> res!420704 e!372259)))

(declare-fun noDuplicate!431 (List!12548) Bool)

(assert (=> b!649017 (= res!420704 (not (noDuplicate!431 Nil!12545)))))

(declare-fun b!649018 () Bool)

(declare-fun Unit!22082 () Unit!22078)

(assert (=> b!649018 (= e!372248 Unit!22082)))

(declare-fun b!649019 () Bool)

(declare-fun res!420715 () Bool)

(assert (=> b!649019 (=> (not res!420715) (not e!372251))))

(assert (=> b!649019 (= res!420715 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12545))))

(declare-fun b!649020 () Bool)

(declare-fun Unit!22083 () Unit!22078)

(assert (=> b!649020 (= e!372252 Unit!22083)))

(assert (=> b!649020 false))

(declare-fun b!649021 () Bool)

(declare-fun res!420722 () Bool)

(assert (=> b!649021 (=> res!420722 e!372259)))

(assert (=> b!649021 (= res!420722 (contains!3171 Nil!12545 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!649022 () Bool)

(assert (=> b!649022 (= e!372255 e!372254)))

(declare-fun res!420705 () Bool)

(assert (=> b!649022 (=> res!420705 e!372254)))

(assert (=> b!649022 (= res!420705 (bvsge index!984 j!136))))

(declare-fun lt!301377 () Unit!22078)

(assert (=> b!649022 (= lt!301377 e!372248)))

(declare-fun c!74515 () Bool)

(assert (=> b!649022 (= c!74515 (bvslt j!136 index!984))))

(declare-fun b!649000 () Bool)

(declare-fun res!420702 () Bool)

(assert (=> b!649000 (=> (not res!420702) (not e!372249))))

(assert (=> b!649000 (= res!420702 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!420710 () Bool)

(assert (=> start!58886 (=> (not res!420710) (not e!372249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58886 (= res!420710 (validMask!0 mask!3053))))

(assert (=> start!58886 e!372249))

(assert (=> start!58886 true))

(declare-fun array_inv!14228 (array!38504) Bool)

(assert (=> start!58886 (array_inv!14228 a!2986)))

(assert (= (and start!58886 res!420710) b!649016))

(assert (= (and b!649016 res!420712) b!649015))

(assert (= (and b!649015 res!420718) b!649001))

(assert (= (and b!649001 res!420717) b!649000))

(assert (= (and b!649000 res!420702) b!649005))

(assert (= (and b!649005 res!420701) b!648999))

(assert (= (and b!648999 res!420720) b!649019))

(assert (= (and b!649019 res!420715) b!649004))

(assert (= (and b!649004 res!420719) b!649012))

(assert (= (and b!649012 res!420716) b!648998))

(assert (= (and b!648998 res!420707) b!649002))

(assert (= (and b!649002 res!420721) b!648996))

(assert (= (and b!649002 c!74516) b!649020))

(assert (= (and b!649002 (not c!74516)) b!649008))

(assert (= (and b!649002 (not res!420709)) b!649013))

(assert (= (and b!649013 res!420703) b!649009))

(assert (= (and b!649009 (not res!420708)) b!649011))

(assert (= (and b!649011 res!420706) b!649007))

(assert (= (and b!649013 (not res!420711)) b!649022))

(assert (= (and b!649022 c!74515) b!649003))

(assert (= (and b!649022 (not c!74515)) b!649018))

(assert (= (and b!649022 (not res!420705)) b!649010))

(assert (= (and b!649010 res!420714) b!649006))

(assert (= (and b!649010 (not res!420700)) b!649017))

(assert (= (and b!649017 (not res!420704)) b!648997))

(assert (= (and b!648997 (not res!420713)) b!649021))

(assert (= (and b!649021 (not res!420722)) b!649014))

(declare-fun m!622347 () Bool)

(assert (=> b!649021 m!622347))

(declare-fun m!622349 () Bool)

(assert (=> b!649011 m!622349))

(assert (=> b!649011 m!622349))

(declare-fun m!622351 () Bool)

(assert (=> b!649011 m!622351))

(declare-fun m!622353 () Bool)

(assert (=> b!649014 m!622353))

(declare-fun m!622355 () Bool)

(assert (=> b!649000 m!622355))

(assert (=> b!649013 m!622349))

(declare-fun m!622357 () Bool)

(assert (=> b!649013 m!622357))

(declare-fun m!622359 () Bool)

(assert (=> b!649013 m!622359))

(declare-fun m!622361 () Bool)

(assert (=> b!648999 m!622361))

(declare-fun m!622363 () Bool)

(assert (=> b!648997 m!622363))

(declare-fun m!622365 () Bool)

(assert (=> b!649005 m!622365))

(assert (=> b!649003 m!622349))

(declare-fun m!622367 () Bool)

(assert (=> b!649003 m!622367))

(assert (=> b!649003 m!622349))

(declare-fun m!622369 () Bool)

(assert (=> b!649003 m!622369))

(declare-fun m!622371 () Bool)

(assert (=> b!649003 m!622371))

(declare-fun m!622373 () Bool)

(assert (=> b!649003 m!622373))

(assert (=> b!649003 m!622349))

(declare-fun m!622375 () Bool)

(assert (=> b!649003 m!622375))

(assert (=> b!649003 m!622349))

(declare-fun m!622377 () Bool)

(assert (=> b!649003 m!622377))

(declare-fun m!622379 () Bool)

(assert (=> b!649003 m!622379))

(assert (=> b!649007 m!622349))

(assert (=> b!649007 m!622349))

(declare-fun m!622381 () Bool)

(assert (=> b!649007 m!622381))

(declare-fun m!622383 () Bool)

(assert (=> b!649001 m!622383))

(declare-fun m!622385 () Bool)

(assert (=> b!649002 m!622385))

(declare-fun m!622387 () Bool)

(assert (=> b!649002 m!622387))

(assert (=> b!649002 m!622349))

(assert (=> b!649002 m!622357))

(declare-fun m!622389 () Bool)

(assert (=> b!649002 m!622389))

(declare-fun m!622391 () Bool)

(assert (=> b!649002 m!622391))

(assert (=> b!649002 m!622349))

(declare-fun m!622393 () Bool)

(assert (=> b!649002 m!622393))

(declare-fun m!622395 () Bool)

(assert (=> b!649002 m!622395))

(declare-fun m!622397 () Bool)

(assert (=> b!649017 m!622397))

(assert (=> b!649009 m!622349))

(declare-fun m!622399 () Bool)

(assert (=> b!649004 m!622399))

(assert (=> b!649010 m!622349))

(assert (=> b!649010 m!622349))

(declare-fun m!622401 () Bool)

(assert (=> b!649010 m!622401))

(assert (=> b!649010 m!622349))

(declare-fun m!622403 () Bool)

(assert (=> b!649010 m!622403))

(assert (=> b!649010 m!622349))

(assert (=> b!649010 m!622351))

(declare-fun m!622405 () Bool)

(assert (=> start!58886 m!622405))

(declare-fun m!622407 () Bool)

(assert (=> start!58886 m!622407))

(assert (=> b!649012 m!622357))

(declare-fun m!622409 () Bool)

(assert (=> b!649012 m!622409))

(assert (=> b!649006 m!622349))

(assert (=> b!649006 m!622349))

(assert (=> b!649006 m!622381))

(assert (=> b!649015 m!622349))

(assert (=> b!649015 m!622349))

(declare-fun m!622411 () Bool)

(assert (=> b!649015 m!622411))

(declare-fun m!622413 () Bool)

(assert (=> b!648998 m!622413))

(assert (=> b!648998 m!622349))

(assert (=> b!648998 m!622349))

(declare-fun m!622415 () Bool)

(assert (=> b!648998 m!622415))

(declare-fun m!622417 () Bool)

(assert (=> b!649019 m!622417))

(check-sat (not b!649003) (not b!649010) (not b!649007) (not b!649002) (not b!648997) (not b!649000) (not b!649011) (not b!649005) (not b!649014) (not b!648999) (not b!648998) (not b!649001) (not b!649021) (not b!649006) (not start!58886) (not b!649017) (not b!649019) (not b!649015))
(check-sat)
