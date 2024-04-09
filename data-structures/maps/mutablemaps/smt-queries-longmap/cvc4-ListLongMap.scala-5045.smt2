; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68804 () Bool)

(assert start!68804)

(declare-fun b!801450 () Bool)

(declare-fun res!546147 () Bool)

(declare-fun e!444274 () Bool)

(assert (=> b!801450 (=> (not res!546147) (not e!444274))))

(declare-datatypes ((array!43545 0))(
  ( (array!43546 (arr!20849 (Array (_ BitVec 32) (_ BitVec 64))) (size!21270 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43545)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801450 (= res!546147 (validKeyInArray!0 (select (arr!20849 a!3170) j!153)))))

(declare-fun b!801451 () Bool)

(declare-fun res!546143 () Bool)

(assert (=> b!801451 (=> (not res!546143) (not e!444274))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!801451 (= res!546143 (validKeyInArray!0 k!2044))))

(declare-fun b!801452 () Bool)

(declare-fun res!546146 () Bool)

(declare-fun e!444269 () Bool)

(assert (=> b!801452 (=> (not res!546146) (not e!444269))))

(declare-datatypes ((List!14865 0))(
  ( (Nil!14862) (Cons!14861 (h!15990 (_ BitVec 64)) (t!21188 List!14865)) )
))
(declare-fun arrayNoDuplicates!0 (array!43545 (_ BitVec 32) List!14865) Bool)

(assert (=> b!801452 (= res!546146 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14862))))

(declare-fun b!801453 () Bool)

(declare-fun res!546141 () Bool)

(assert (=> b!801453 (=> (not res!546141) (not e!444269))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43545 (_ BitVec 32)) Bool)

(assert (=> b!801453 (= res!546141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801454 () Bool)

(declare-fun e!444270 () Bool)

(declare-fun e!444271 () Bool)

(assert (=> b!801454 (= e!444270 e!444271)))

(declare-fun res!546148 () Bool)

(assert (=> b!801454 (=> (not res!546148) (not e!444271))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!358277 () (_ BitVec 32))

(assert (=> b!801454 (= res!546148 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!358277 #b00000000000000000000000000000000) (bvslt lt!358277 (size!21270 a!3170))))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801454 (= lt!358277 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801455 () Bool)

(declare-fun res!546145 () Bool)

(assert (=> b!801455 (=> (not res!546145) (not e!444274))))

(declare-fun arrayContainsKey!0 (array!43545 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801455 (= res!546145 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801456 () Bool)

(declare-fun res!546150 () Bool)

(assert (=> b!801456 (=> (not res!546150) (not e!444274))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!801456 (= res!546150 (and (= (size!21270 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21270 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21270 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801457 () Bool)

(declare-fun res!546139 () Bool)

(assert (=> b!801457 (=> (not res!546139) (not e!444269))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!801457 (= res!546139 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21270 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20849 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21270 a!3170)) (= (select (arr!20849 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801458 () Bool)

(declare-fun e!444272 () Bool)

(assert (=> b!801458 (= e!444272 e!444270)))

(declare-fun res!546142 () Bool)

(assert (=> b!801458 (=> (not res!546142) (not e!444270))))

(declare-datatypes ((SeekEntryResult!8447 0))(
  ( (MissingZero!8447 (index!36155 (_ BitVec 32))) (Found!8447 (index!36156 (_ BitVec 32))) (Intermediate!8447 (undefined!9259 Bool) (index!36157 (_ BitVec 32)) (x!67038 (_ BitVec 32))) (Undefined!8447) (MissingVacant!8447 (index!36158 (_ BitVec 32))) )
))
(declare-fun lt!358278 () SeekEntryResult!8447)

(declare-fun lt!358281 () SeekEntryResult!8447)

(assert (=> b!801458 (= res!546142 (and (= lt!358278 lt!358281) (= lt!358281 (Found!8447 j!153)) (not (= (select (arr!20849 a!3170) index!1236) (select (arr!20849 a!3170) j!153)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43545 (_ BitVec 32)) SeekEntryResult!8447)

(assert (=> b!801458 (= lt!358281 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20849 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43545 (_ BitVec 32)) SeekEntryResult!8447)

(assert (=> b!801458 (= lt!358278 (seekEntryOrOpen!0 (select (arr!20849 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801459 () Bool)

(assert (=> b!801459 (= e!444271 false)))

(declare-fun lt!358279 () SeekEntryResult!8447)

(assert (=> b!801459 (= lt!358279 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358277 vacantBefore!23 (select (arr!20849 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801460 () Bool)

(declare-fun res!546144 () Bool)

(assert (=> b!801460 (=> (not res!546144) (not e!444271))))

(declare-fun lt!358280 () SeekEntryResult!8447)

(declare-fun lt!358282 () array!43545)

(declare-fun lt!358276 () (_ BitVec 64))

(assert (=> b!801460 (= res!546144 (= lt!358280 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358277 vacantAfter!23 lt!358276 lt!358282 mask!3266)))))

(declare-fun res!546149 () Bool)

(assert (=> start!68804 (=> (not res!546149) (not e!444274))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68804 (= res!546149 (validMask!0 mask!3266))))

(assert (=> start!68804 e!444274))

(assert (=> start!68804 true))

(declare-fun array_inv!16623 (array!43545) Bool)

(assert (=> start!68804 (array_inv!16623 a!3170)))

(declare-fun b!801461 () Bool)

(assert (=> b!801461 (= e!444274 e!444269)))

(declare-fun res!546151 () Bool)

(assert (=> b!801461 (=> (not res!546151) (not e!444269))))

(declare-fun lt!358275 () SeekEntryResult!8447)

(assert (=> b!801461 (= res!546151 (or (= lt!358275 (MissingZero!8447 i!1163)) (= lt!358275 (MissingVacant!8447 i!1163))))))

(assert (=> b!801461 (= lt!358275 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!801462 () Bool)

(assert (=> b!801462 (= e!444269 e!444272)))

(declare-fun res!546140 () Bool)

(assert (=> b!801462 (=> (not res!546140) (not e!444272))))

(assert (=> b!801462 (= res!546140 (= lt!358280 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358276 lt!358282 mask!3266)))))

(assert (=> b!801462 (= lt!358280 (seekEntryOrOpen!0 lt!358276 lt!358282 mask!3266))))

(assert (=> b!801462 (= lt!358276 (select (store (arr!20849 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!801462 (= lt!358282 (array!43546 (store (arr!20849 a!3170) i!1163 k!2044) (size!21270 a!3170)))))

(assert (= (and start!68804 res!546149) b!801456))

(assert (= (and b!801456 res!546150) b!801450))

(assert (= (and b!801450 res!546147) b!801451))

(assert (= (and b!801451 res!546143) b!801455))

(assert (= (and b!801455 res!546145) b!801461))

(assert (= (and b!801461 res!546151) b!801453))

(assert (= (and b!801453 res!546141) b!801452))

(assert (= (and b!801452 res!546146) b!801457))

(assert (= (and b!801457 res!546139) b!801462))

(assert (= (and b!801462 res!546140) b!801458))

(assert (= (and b!801458 res!546142) b!801454))

(assert (= (and b!801454 res!546148) b!801460))

(assert (= (and b!801460 res!546144) b!801459))

(declare-fun m!742723 () Bool)

(assert (=> start!68804 m!742723))

(declare-fun m!742725 () Bool)

(assert (=> start!68804 m!742725))

(declare-fun m!742727 () Bool)

(assert (=> b!801455 m!742727))

(declare-fun m!742729 () Bool)

(assert (=> b!801453 m!742729))

(declare-fun m!742731 () Bool)

(assert (=> b!801450 m!742731))

(assert (=> b!801450 m!742731))

(declare-fun m!742733 () Bool)

(assert (=> b!801450 m!742733))

(declare-fun m!742735 () Bool)

(assert (=> b!801457 m!742735))

(declare-fun m!742737 () Bool)

(assert (=> b!801457 m!742737))

(declare-fun m!742739 () Bool)

(assert (=> b!801452 m!742739))

(declare-fun m!742741 () Bool)

(assert (=> b!801462 m!742741))

(declare-fun m!742743 () Bool)

(assert (=> b!801462 m!742743))

(declare-fun m!742745 () Bool)

(assert (=> b!801462 m!742745))

(declare-fun m!742747 () Bool)

(assert (=> b!801462 m!742747))

(declare-fun m!742749 () Bool)

(assert (=> b!801461 m!742749))

(declare-fun m!742751 () Bool)

(assert (=> b!801454 m!742751))

(assert (=> b!801459 m!742731))

(assert (=> b!801459 m!742731))

(declare-fun m!742753 () Bool)

(assert (=> b!801459 m!742753))

(declare-fun m!742755 () Bool)

(assert (=> b!801460 m!742755))

(declare-fun m!742757 () Bool)

(assert (=> b!801451 m!742757))

(declare-fun m!742759 () Bool)

(assert (=> b!801458 m!742759))

(assert (=> b!801458 m!742731))

(assert (=> b!801458 m!742731))

(declare-fun m!742761 () Bool)

(assert (=> b!801458 m!742761))

(assert (=> b!801458 m!742731))

(declare-fun m!742763 () Bool)

(assert (=> b!801458 m!742763))

(push 1)

