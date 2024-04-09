; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68748 () Bool)

(assert start!68748)

(declare-fun b!800358 () Bool)

(declare-fun res!545048 () Bool)

(declare-fun e!443768 () Bool)

(assert (=> b!800358 (=> (not res!545048) (not e!443768))))

(declare-datatypes ((array!43489 0))(
  ( (array!43490 (arr!20821 (Array (_ BitVec 32) (_ BitVec 64))) (size!21242 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43489)

(declare-datatypes ((List!14837 0))(
  ( (Nil!14834) (Cons!14833 (h!15962 (_ BitVec 64)) (t!21160 List!14837)) )
))
(declare-fun arrayNoDuplicates!0 (array!43489 (_ BitVec 32) List!14837) Bool)

(assert (=> b!800358 (= res!545048 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14834))))

(declare-fun b!800359 () Bool)

(declare-fun e!443765 () Bool)

(assert (=> b!800359 (= e!443765 false)))

(declare-datatypes ((SeekEntryResult!8419 0))(
  ( (MissingZero!8419 (index!36043 (_ BitVec 32))) (Found!8419 (index!36044 (_ BitVec 32))) (Intermediate!8419 (undefined!9231 Bool) (index!36045 (_ BitVec 32)) (x!66938 (_ BitVec 32))) (Undefined!8419) (MissingVacant!8419 (index!36046 (_ BitVec 32))) )
))
(declare-fun lt!357605 () SeekEntryResult!8419)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun lt!357608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43489 (_ BitVec 32)) SeekEntryResult!8419)

(assert (=> b!800359 (= lt!357605 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357608 vacantBefore!23 (select (arr!20821 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800360 () Bool)

(declare-fun res!545059 () Bool)

(assert (=> b!800360 (=> (not res!545059) (not e!443768))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43489 (_ BitVec 32)) Bool)

(assert (=> b!800360 (= res!545059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800362 () Bool)

(declare-fun res!545056 () Bool)

(declare-fun e!443766 () Bool)

(assert (=> b!800362 (=> (not res!545056) (not e!443766))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43489 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800362 (= res!545056 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800363 () Bool)

(declare-fun res!545052 () Bool)

(assert (=> b!800363 (=> (not res!545052) (not e!443766))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!800363 (= res!545052 (and (= (size!21242 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21242 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21242 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800364 () Bool)

(assert (=> b!800364 (= e!443766 e!443768)))

(declare-fun res!545050 () Bool)

(assert (=> b!800364 (=> (not res!545050) (not e!443768))))

(declare-fun lt!357604 () SeekEntryResult!8419)

(assert (=> b!800364 (= res!545050 (or (= lt!357604 (MissingZero!8419 i!1163)) (= lt!357604 (MissingVacant!8419 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43489 (_ BitVec 32)) SeekEntryResult!8419)

(assert (=> b!800364 (= lt!357604 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!800365 () Bool)

(declare-fun res!545055 () Bool)

(assert (=> b!800365 (=> (not res!545055) (not e!443766))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800365 (= res!545055 (validKeyInArray!0 (select (arr!20821 a!3170) j!153)))))

(declare-fun b!800366 () Bool)

(declare-fun e!443770 () Bool)

(assert (=> b!800366 (= e!443768 e!443770)))

(declare-fun res!545054 () Bool)

(assert (=> b!800366 (=> (not res!545054) (not e!443770))))

(declare-fun lt!357606 () array!43489)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357607 () SeekEntryResult!8419)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!357610 () (_ BitVec 64))

(assert (=> b!800366 (= res!545054 (= lt!357607 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357610 lt!357606 mask!3266)))))

(assert (=> b!800366 (= lt!357607 (seekEntryOrOpen!0 lt!357610 lt!357606 mask!3266))))

(assert (=> b!800366 (= lt!357610 (select (store (arr!20821 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!800366 (= lt!357606 (array!43490 (store (arr!20821 a!3170) i!1163 k0!2044) (size!21242 a!3170)))))

(declare-fun b!800361 () Bool)

(declare-fun e!443767 () Bool)

(assert (=> b!800361 (= e!443767 e!443765)))

(declare-fun res!545051 () Bool)

(assert (=> b!800361 (=> (not res!545051) (not e!443765))))

(assert (=> b!800361 (= res!545051 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357608 #b00000000000000000000000000000000) (bvslt lt!357608 (size!21242 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800361 (= lt!357608 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!545053 () Bool)

(assert (=> start!68748 (=> (not res!545053) (not e!443766))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68748 (= res!545053 (validMask!0 mask!3266))))

(assert (=> start!68748 e!443766))

(assert (=> start!68748 true))

(declare-fun array_inv!16595 (array!43489) Bool)

(assert (=> start!68748 (array_inv!16595 a!3170)))

(declare-fun b!800367 () Bool)

(declare-fun res!545049 () Bool)

(assert (=> b!800367 (=> (not res!545049) (not e!443766))))

(assert (=> b!800367 (= res!545049 (validKeyInArray!0 k0!2044))))

(declare-fun b!800368 () Bool)

(declare-fun res!545058 () Bool)

(assert (=> b!800368 (=> (not res!545058) (not e!443768))))

(assert (=> b!800368 (= res!545058 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21242 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20821 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21242 a!3170)) (= (select (arr!20821 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800369 () Bool)

(assert (=> b!800369 (= e!443770 e!443767)))

(declare-fun res!545057 () Bool)

(assert (=> b!800369 (=> (not res!545057) (not e!443767))))

(declare-fun lt!357603 () SeekEntryResult!8419)

(declare-fun lt!357609 () SeekEntryResult!8419)

(assert (=> b!800369 (= res!545057 (and (= lt!357603 lt!357609) (= lt!357609 (Found!8419 j!153)) (not (= (select (arr!20821 a!3170) index!1236) (select (arr!20821 a!3170) j!153)))))))

(assert (=> b!800369 (= lt!357609 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20821 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!800369 (= lt!357603 (seekEntryOrOpen!0 (select (arr!20821 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800370 () Bool)

(declare-fun res!545047 () Bool)

(assert (=> b!800370 (=> (not res!545047) (not e!443765))))

(assert (=> b!800370 (= res!545047 (= lt!357607 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357608 vacantAfter!23 lt!357610 lt!357606 mask!3266)))))

(assert (= (and start!68748 res!545053) b!800363))

(assert (= (and b!800363 res!545052) b!800365))

(assert (= (and b!800365 res!545055) b!800367))

(assert (= (and b!800367 res!545049) b!800362))

(assert (= (and b!800362 res!545056) b!800364))

(assert (= (and b!800364 res!545050) b!800360))

(assert (= (and b!800360 res!545059) b!800358))

(assert (= (and b!800358 res!545048) b!800368))

(assert (= (and b!800368 res!545058) b!800366))

(assert (= (and b!800366 res!545054) b!800369))

(assert (= (and b!800369 res!545057) b!800361))

(assert (= (and b!800361 res!545051) b!800370))

(assert (= (and b!800370 res!545047) b!800359))

(declare-fun m!741547 () Bool)

(assert (=> b!800364 m!741547))

(declare-fun m!741549 () Bool)

(assert (=> b!800359 m!741549))

(assert (=> b!800359 m!741549))

(declare-fun m!741551 () Bool)

(assert (=> b!800359 m!741551))

(declare-fun m!741553 () Bool)

(assert (=> b!800362 m!741553))

(declare-fun m!741555 () Bool)

(assert (=> b!800358 m!741555))

(declare-fun m!741557 () Bool)

(assert (=> b!800366 m!741557))

(declare-fun m!741559 () Bool)

(assert (=> b!800366 m!741559))

(declare-fun m!741561 () Bool)

(assert (=> b!800366 m!741561))

(declare-fun m!741563 () Bool)

(assert (=> b!800366 m!741563))

(declare-fun m!741565 () Bool)

(assert (=> b!800367 m!741565))

(declare-fun m!741567 () Bool)

(assert (=> b!800361 m!741567))

(declare-fun m!741569 () Bool)

(assert (=> b!800368 m!741569))

(declare-fun m!741571 () Bool)

(assert (=> b!800368 m!741571))

(assert (=> b!800365 m!741549))

(assert (=> b!800365 m!741549))

(declare-fun m!741573 () Bool)

(assert (=> b!800365 m!741573))

(declare-fun m!741575 () Bool)

(assert (=> start!68748 m!741575))

(declare-fun m!741577 () Bool)

(assert (=> start!68748 m!741577))

(declare-fun m!741579 () Bool)

(assert (=> b!800369 m!741579))

(assert (=> b!800369 m!741549))

(assert (=> b!800369 m!741549))

(declare-fun m!741581 () Bool)

(assert (=> b!800369 m!741581))

(assert (=> b!800369 m!741549))

(declare-fun m!741583 () Bool)

(assert (=> b!800369 m!741583))

(declare-fun m!741585 () Bool)

(assert (=> b!800360 m!741585))

(declare-fun m!741587 () Bool)

(assert (=> b!800370 m!741587))

(check-sat (not b!800365) (not b!800359) (not b!800370) (not b!800369) (not start!68748) (not b!800361) (not b!800362) (not b!800366) (not b!800358) (not b!800367) (not b!800360) (not b!800364))
(check-sat)
