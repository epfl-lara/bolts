; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68828 () Bool)

(assert start!68828)

(declare-fun b!801848 () Bool)

(declare-fun res!546542 () Bool)

(declare-fun e!444453 () Bool)

(assert (=> b!801848 (=> (not res!546542) (not e!444453))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801848 (= res!546542 (validKeyInArray!0 k!2044))))

(declare-fun b!801849 () Bool)

(declare-fun res!546545 () Bool)

(assert (=> b!801849 (=> (not res!546545) (not e!444453))))

(declare-datatypes ((array!43569 0))(
  ( (array!43570 (arr!20861 (Array (_ BitVec 32) (_ BitVec 64))) (size!21282 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43569)

(declare-fun arrayContainsKey!0 (array!43569 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801849 (= res!546545 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801850 () Bool)

(declare-fun res!546537 () Bool)

(declare-fun e!444452 () Bool)

(assert (=> b!801850 (=> (not res!546537) (not e!444452))))

(declare-datatypes ((List!14877 0))(
  ( (Nil!14874) (Cons!14873 (h!16002 (_ BitVec 64)) (t!21200 List!14877)) )
))
(declare-fun arrayNoDuplicates!0 (array!43569 (_ BitVec 32) List!14877) Bool)

(assert (=> b!801850 (= res!546537 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14874))))

(declare-fun b!801851 () Bool)

(declare-fun res!546539 () Bool)

(assert (=> b!801851 (=> (not res!546539) (not e!444453))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!801851 (= res!546539 (validKeyInArray!0 (select (arr!20861 a!3170) j!153)))))

(declare-fun b!801852 () Bool)

(declare-fun e!444454 () Bool)

(assert (=> b!801852 (= e!444452 e!444454)))

(declare-fun res!546544 () Bool)

(assert (=> b!801852 (=> (not res!546544) (not e!444454))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!358530 () array!43569)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!358531 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8459 0))(
  ( (MissingZero!8459 (index!36203 (_ BitVec 32))) (Found!8459 (index!36204 (_ BitVec 32))) (Intermediate!8459 (undefined!9271 Bool) (index!36205 (_ BitVec 32)) (x!67082 (_ BitVec 32))) (Undefined!8459) (MissingVacant!8459 (index!36206 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43569 (_ BitVec 32)) SeekEntryResult!8459)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43569 (_ BitVec 32)) SeekEntryResult!8459)

(assert (=> b!801852 (= res!546544 (= (seekEntryOrOpen!0 lt!358531 lt!358530 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358531 lt!358530 mask!3266)))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!801852 (= lt!358531 (select (store (arr!20861 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!801852 (= lt!358530 (array!43570 (store (arr!20861 a!3170) i!1163 k!2044) (size!21282 a!3170)))))

(declare-fun res!546541 () Bool)

(assert (=> start!68828 (=> (not res!546541) (not e!444453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68828 (= res!546541 (validMask!0 mask!3266))))

(assert (=> start!68828 e!444453))

(assert (=> start!68828 true))

(declare-fun array_inv!16635 (array!43569) Bool)

(assert (=> start!68828 (array_inv!16635 a!3170)))

(declare-fun b!801853 () Bool)

(assert (=> b!801853 (= e!444453 e!444452)))

(declare-fun res!546543 () Bool)

(assert (=> b!801853 (=> (not res!546543) (not e!444452))))

(declare-fun lt!358532 () SeekEntryResult!8459)

(assert (=> b!801853 (= res!546543 (or (= lt!358532 (MissingZero!8459 i!1163)) (= lt!358532 (MissingVacant!8459 i!1163))))))

(assert (=> b!801853 (= lt!358532 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!801854 () Bool)

(declare-fun e!444450 () Bool)

(assert (=> b!801854 (= e!444450 (not (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun lt!358529 () (_ BitVec 32))

(assert (=> b!801854 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358529 vacantAfter!23 lt!358531 lt!358530 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358529 vacantBefore!23 (select (arr!20861 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27460 0))(
  ( (Unit!27461) )
))
(declare-fun lt!358528 () Unit!27460)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43569 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27460)

(assert (=> b!801854 (= lt!358528 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358529 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801854 (= lt!358529 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801855 () Bool)

(declare-fun res!546546 () Bool)

(assert (=> b!801855 (=> (not res!546546) (not e!444452))))

(assert (=> b!801855 (= res!546546 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21282 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20861 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21282 a!3170)) (= (select (arr!20861 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801856 () Bool)

(declare-fun res!546540 () Bool)

(assert (=> b!801856 (=> (not res!546540) (not e!444453))))

(assert (=> b!801856 (= res!546540 (and (= (size!21282 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21282 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21282 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801857 () Bool)

(declare-fun res!546547 () Bool)

(assert (=> b!801857 (=> (not res!546547) (not e!444452))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43569 (_ BitVec 32)) Bool)

(assert (=> b!801857 (= res!546547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801858 () Bool)

(assert (=> b!801858 (= e!444454 e!444450)))

(declare-fun res!546538 () Bool)

(assert (=> b!801858 (=> (not res!546538) (not e!444450))))

(declare-fun lt!358533 () SeekEntryResult!8459)

(declare-fun lt!358534 () SeekEntryResult!8459)

(assert (=> b!801858 (= res!546538 (and (= lt!358534 lt!358533) (= lt!358533 (Found!8459 j!153)) (not (= (select (arr!20861 a!3170) index!1236) (select (arr!20861 a!3170) j!153)))))))

(assert (=> b!801858 (= lt!358533 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20861 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!801858 (= lt!358534 (seekEntryOrOpen!0 (select (arr!20861 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68828 res!546541) b!801856))

(assert (= (and b!801856 res!546540) b!801851))

(assert (= (and b!801851 res!546539) b!801848))

(assert (= (and b!801848 res!546542) b!801849))

(assert (= (and b!801849 res!546545) b!801853))

(assert (= (and b!801853 res!546543) b!801857))

(assert (= (and b!801857 res!546547) b!801850))

(assert (= (and b!801850 res!546537) b!801855))

(assert (= (and b!801855 res!546546) b!801852))

(assert (= (and b!801852 res!546544) b!801858))

(assert (= (and b!801858 res!546538) b!801854))

(declare-fun m!743249 () Bool)

(assert (=> b!801848 m!743249))

(declare-fun m!743251 () Bool)

(assert (=> b!801854 m!743251))

(declare-fun m!743253 () Bool)

(assert (=> b!801854 m!743253))

(declare-fun m!743255 () Bool)

(assert (=> b!801854 m!743255))

(declare-fun m!743257 () Bool)

(assert (=> b!801854 m!743257))

(assert (=> b!801854 m!743251))

(declare-fun m!743259 () Bool)

(assert (=> b!801854 m!743259))

(declare-fun m!743261 () Bool)

(assert (=> b!801855 m!743261))

(declare-fun m!743263 () Bool)

(assert (=> b!801855 m!743263))

(declare-fun m!743265 () Bool)

(assert (=> b!801853 m!743265))

(declare-fun m!743267 () Bool)

(assert (=> b!801852 m!743267))

(declare-fun m!743269 () Bool)

(assert (=> b!801852 m!743269))

(declare-fun m!743271 () Bool)

(assert (=> b!801852 m!743271))

(declare-fun m!743273 () Bool)

(assert (=> b!801852 m!743273))

(declare-fun m!743275 () Bool)

(assert (=> b!801857 m!743275))

(declare-fun m!743277 () Bool)

(assert (=> b!801850 m!743277))

(declare-fun m!743279 () Bool)

(assert (=> b!801858 m!743279))

(assert (=> b!801858 m!743251))

(assert (=> b!801858 m!743251))

(declare-fun m!743281 () Bool)

(assert (=> b!801858 m!743281))

(assert (=> b!801858 m!743251))

(declare-fun m!743283 () Bool)

(assert (=> b!801858 m!743283))

(assert (=> b!801851 m!743251))

(assert (=> b!801851 m!743251))

(declare-fun m!743285 () Bool)

(assert (=> b!801851 m!743285))

(declare-fun m!743287 () Bool)

(assert (=> start!68828 m!743287))

(declare-fun m!743289 () Bool)

(assert (=> start!68828 m!743289))

(declare-fun m!743291 () Bool)

(assert (=> b!801849 m!743291))

(push 1)

(assert (not start!68828))

(assert (not b!801848))

(assert (not b!801851))

(assert (not b!801854))

(assert (not b!801850))

(assert (not b!801849))

(assert (not b!801857))

(assert (not b!801853))

(assert (not b!801852))

(assert (not b!801858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

