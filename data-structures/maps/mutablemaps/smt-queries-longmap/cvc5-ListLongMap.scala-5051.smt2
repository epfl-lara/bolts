; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68836 () Bool)

(assert start!68836)

(declare-fun b!801980 () Bool)

(declare-fun res!546673 () Bool)

(declare-fun e!444512 () Bool)

(assert (=> b!801980 (=> (not res!546673) (not e!444512))))

(declare-datatypes ((array!43577 0))(
  ( (array!43578 (arr!20865 (Array (_ BitVec 32) (_ BitVec 64))) (size!21286 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43577)

(declare-datatypes ((List!14881 0))(
  ( (Nil!14878) (Cons!14877 (h!16006 (_ BitVec 64)) (t!21204 List!14881)) )
))
(declare-fun arrayNoDuplicates!0 (array!43577 (_ BitVec 32) List!14881) Bool)

(assert (=> b!801980 (= res!546673 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14878))))

(declare-fun b!801981 () Bool)

(declare-fun res!546671 () Bool)

(declare-fun e!444513 () Bool)

(assert (=> b!801981 (=> (not res!546671) (not e!444513))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!801981 (= res!546671 (and (= (size!21286 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21286 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21286 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801982 () Bool)

(declare-fun res!546678 () Bool)

(assert (=> b!801982 (=> (not res!546678) (not e!444513))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801982 (= res!546678 (validKeyInArray!0 (select (arr!20865 a!3170) j!153)))))

(declare-fun b!801983 () Bool)

(assert (=> b!801983 (= e!444513 e!444512)))

(declare-fun res!546675 () Bool)

(assert (=> b!801983 (=> (not res!546675) (not e!444512))))

(declare-datatypes ((SeekEntryResult!8463 0))(
  ( (MissingZero!8463 (index!36219 (_ BitVec 32))) (Found!8463 (index!36220 (_ BitVec 32))) (Intermediate!8463 (undefined!9275 Bool) (index!36221 (_ BitVec 32)) (x!67102 (_ BitVec 32))) (Undefined!8463) (MissingVacant!8463 (index!36222 (_ BitVec 32))) )
))
(declare-fun lt!358612 () SeekEntryResult!8463)

(assert (=> b!801983 (= res!546675 (or (= lt!358612 (MissingZero!8463 i!1163)) (= lt!358612 (MissingVacant!8463 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43577 (_ BitVec 32)) SeekEntryResult!8463)

(assert (=> b!801983 (= lt!358612 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!801984 () Bool)

(declare-fun res!546677 () Bool)

(assert (=> b!801984 (=> (not res!546677) (not e!444512))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!801984 (= res!546677 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21286 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20865 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21286 a!3170)) (= (select (arr!20865 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun e!444514 () Bool)

(declare-fun b!801985 () Bool)

(assert (=> b!801985 (= e!444514 (not (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun lt!358613 () (_ BitVec 64))

(declare-fun lt!358616 () (_ BitVec 32))

(declare-fun lt!358618 () array!43577)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43577 (_ BitVec 32)) SeekEntryResult!8463)

(assert (=> b!801985 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358616 vacantAfter!23 lt!358613 lt!358618 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358616 vacantBefore!23 (select (arr!20865 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27468 0))(
  ( (Unit!27469) )
))
(declare-fun lt!358615 () Unit!27468)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43577 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27468)

(assert (=> b!801985 (= lt!358615 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358616 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801985 (= lt!358616 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801987 () Bool)

(declare-fun res!546672 () Bool)

(assert (=> b!801987 (=> (not res!546672) (not e!444513))))

(declare-fun arrayContainsKey!0 (array!43577 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801987 (= res!546672 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801988 () Bool)

(declare-fun res!546676 () Bool)

(assert (=> b!801988 (=> (not res!546676) (not e!444512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43577 (_ BitVec 32)) Bool)

(assert (=> b!801988 (= res!546676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801989 () Bool)

(declare-fun e!444510 () Bool)

(assert (=> b!801989 (= e!444512 e!444510)))

(declare-fun res!546670 () Bool)

(assert (=> b!801989 (=> (not res!546670) (not e!444510))))

(assert (=> b!801989 (= res!546670 (= (seekEntryOrOpen!0 lt!358613 lt!358618 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358613 lt!358618 mask!3266)))))

(assert (=> b!801989 (= lt!358613 (select (store (arr!20865 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!801989 (= lt!358618 (array!43578 (store (arr!20865 a!3170) i!1163 k!2044) (size!21286 a!3170)))))

(declare-fun b!801990 () Bool)

(assert (=> b!801990 (= e!444510 e!444514)))

(declare-fun res!546679 () Bool)

(assert (=> b!801990 (=> (not res!546679) (not e!444514))))

(declare-fun lt!358617 () SeekEntryResult!8463)

(declare-fun lt!358614 () SeekEntryResult!8463)

(assert (=> b!801990 (= res!546679 (and (= lt!358617 lt!358614) (= lt!358614 (Found!8463 j!153)) (not (= (select (arr!20865 a!3170) index!1236) (select (arr!20865 a!3170) j!153)))))))

(assert (=> b!801990 (= lt!358614 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20865 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!801990 (= lt!358617 (seekEntryOrOpen!0 (select (arr!20865 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!546669 () Bool)

(assert (=> start!68836 (=> (not res!546669) (not e!444513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68836 (= res!546669 (validMask!0 mask!3266))))

(assert (=> start!68836 e!444513))

(assert (=> start!68836 true))

(declare-fun array_inv!16639 (array!43577) Bool)

(assert (=> start!68836 (array_inv!16639 a!3170)))

(declare-fun b!801986 () Bool)

(declare-fun res!546674 () Bool)

(assert (=> b!801986 (=> (not res!546674) (not e!444513))))

(assert (=> b!801986 (= res!546674 (validKeyInArray!0 k!2044))))

(assert (= (and start!68836 res!546669) b!801981))

(assert (= (and b!801981 res!546671) b!801982))

(assert (= (and b!801982 res!546678) b!801986))

(assert (= (and b!801986 res!546674) b!801987))

(assert (= (and b!801987 res!546672) b!801983))

(assert (= (and b!801983 res!546675) b!801988))

(assert (= (and b!801988 res!546676) b!801980))

(assert (= (and b!801980 res!546673) b!801984))

(assert (= (and b!801984 res!546677) b!801989))

(assert (= (and b!801989 res!546670) b!801990))

(assert (= (and b!801990 res!546679) b!801985))

(declare-fun m!743425 () Bool)

(assert (=> b!801989 m!743425))

(declare-fun m!743427 () Bool)

(assert (=> b!801989 m!743427))

(declare-fun m!743429 () Bool)

(assert (=> b!801989 m!743429))

(declare-fun m!743431 () Bool)

(assert (=> b!801989 m!743431))

(declare-fun m!743433 () Bool)

(assert (=> b!801985 m!743433))

(declare-fun m!743435 () Bool)

(assert (=> b!801985 m!743435))

(assert (=> b!801985 m!743433))

(declare-fun m!743437 () Bool)

(assert (=> b!801985 m!743437))

(declare-fun m!743439 () Bool)

(assert (=> b!801985 m!743439))

(declare-fun m!743441 () Bool)

(assert (=> b!801985 m!743441))

(declare-fun m!743443 () Bool)

(assert (=> b!801980 m!743443))

(declare-fun m!743445 () Bool)

(assert (=> b!801983 m!743445))

(declare-fun m!743447 () Bool)

(assert (=> b!801986 m!743447))

(assert (=> b!801982 m!743433))

(assert (=> b!801982 m!743433))

(declare-fun m!743449 () Bool)

(assert (=> b!801982 m!743449))

(declare-fun m!743451 () Bool)

(assert (=> start!68836 m!743451))

(declare-fun m!743453 () Bool)

(assert (=> start!68836 m!743453))

(declare-fun m!743455 () Bool)

(assert (=> b!801990 m!743455))

(assert (=> b!801990 m!743433))

(assert (=> b!801990 m!743433))

(declare-fun m!743457 () Bool)

(assert (=> b!801990 m!743457))

(assert (=> b!801990 m!743433))

(declare-fun m!743459 () Bool)

(assert (=> b!801990 m!743459))

(declare-fun m!743461 () Bool)

(assert (=> b!801984 m!743461))

(declare-fun m!743463 () Bool)

(assert (=> b!801984 m!743463))

(declare-fun m!743465 () Bool)

(assert (=> b!801988 m!743465))

(declare-fun m!743467 () Bool)

(assert (=> b!801987 m!743467))

(push 1)

(assert (not b!801987))

(assert (not b!801989))

(assert (not b!801980))

(assert (not b!801986))

(assert (not b!801985))

(assert (not start!68836))

(assert (not b!801982))

(assert (not b!801983))

(assert (not b!801988))

(assert (not b!801990))

(check-sat)

(pop 1)

(push 1)

(check-sat)

