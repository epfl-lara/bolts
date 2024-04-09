; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68744 () Bool)

(assert start!68744)

(declare-fun b!800280 () Bool)

(declare-fun e!443729 () Bool)

(assert (=> b!800280 (= e!443729 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43485 0))(
  ( (array!43486 (arr!20819 (Array (_ BitVec 32) (_ BitVec 64))) (size!21240 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43485)

(declare-datatypes ((SeekEntryResult!8417 0))(
  ( (MissingZero!8417 (index!36035 (_ BitVec 32))) (Found!8417 (index!36036 (_ BitVec 32))) (Intermediate!8417 (undefined!9229 Bool) (index!36037 (_ BitVec 32)) (x!66928 (_ BitVec 32))) (Undefined!8417) (MissingVacant!8417 (index!36038 (_ BitVec 32))) )
))
(declare-fun lt!357560 () SeekEntryResult!8417)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun lt!357559 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43485 (_ BitVec 32)) SeekEntryResult!8417)

(assert (=> b!800280 (= lt!357560 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357559 vacantBefore!23 (select (arr!20819 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800281 () Bool)

(declare-fun res!544972 () Bool)

(declare-fun e!443730 () Bool)

(assert (=> b!800281 (=> (not res!544972) (not e!443730))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800281 (= res!544972 (validKeyInArray!0 (select (arr!20819 a!3170) j!153)))))

(declare-fun b!800282 () Bool)

(declare-fun res!544981 () Bool)

(assert (=> b!800282 (=> (not res!544981) (not e!443730))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!800282 (= res!544981 (and (= (size!21240 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21240 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21240 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800283 () Bool)

(declare-fun res!544976 () Bool)

(declare-fun e!443731 () Bool)

(assert (=> b!800283 (=> (not res!544976) (not e!443731))))

(declare-datatypes ((List!14835 0))(
  ( (Nil!14832) (Cons!14831 (h!15960 (_ BitVec 64)) (t!21158 List!14835)) )
))
(declare-fun arrayNoDuplicates!0 (array!43485 (_ BitVec 32) List!14835) Bool)

(assert (=> b!800283 (= res!544976 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14832))))

(declare-fun b!800284 () Bool)

(declare-fun e!443733 () Bool)

(declare-fun e!443732 () Bool)

(assert (=> b!800284 (= e!443733 e!443732)))

(declare-fun res!544977 () Bool)

(assert (=> b!800284 (=> (not res!544977) (not e!443732))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!357556 () SeekEntryResult!8417)

(declare-fun lt!357558 () SeekEntryResult!8417)

(assert (=> b!800284 (= res!544977 (and (= lt!357556 lt!357558) (= lt!357558 (Found!8417 j!153)) (not (= (select (arr!20819 a!3170) index!1236) (select (arr!20819 a!3170) j!153)))))))

(assert (=> b!800284 (= lt!357558 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20819 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43485 (_ BitVec 32)) SeekEntryResult!8417)

(assert (=> b!800284 (= lt!357556 (seekEntryOrOpen!0 (select (arr!20819 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800285 () Bool)

(assert (=> b!800285 (= e!443730 e!443731)))

(declare-fun res!544980 () Bool)

(assert (=> b!800285 (=> (not res!544980) (not e!443731))))

(declare-fun lt!357557 () SeekEntryResult!8417)

(assert (=> b!800285 (= res!544980 (or (= lt!357557 (MissingZero!8417 i!1163)) (= lt!357557 (MissingVacant!8417 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!800285 (= lt!357557 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!800286 () Bool)

(assert (=> b!800286 (= e!443731 e!443733)))

(declare-fun res!544975 () Bool)

(assert (=> b!800286 (=> (not res!544975) (not e!443733))))

(declare-fun lt!357562 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357561 () SeekEntryResult!8417)

(declare-fun lt!357555 () array!43485)

(assert (=> b!800286 (= res!544975 (= lt!357561 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357562 lt!357555 mask!3266)))))

(assert (=> b!800286 (= lt!357561 (seekEntryOrOpen!0 lt!357562 lt!357555 mask!3266))))

(assert (=> b!800286 (= lt!357562 (select (store (arr!20819 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!800286 (= lt!357555 (array!43486 (store (arr!20819 a!3170) i!1163 k!2044) (size!21240 a!3170)))))

(declare-fun b!800287 () Bool)

(declare-fun res!544969 () Bool)

(assert (=> b!800287 (=> (not res!544969) (not e!443730))))

(declare-fun arrayContainsKey!0 (array!43485 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800287 (= res!544969 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800288 () Bool)

(declare-fun res!544974 () Bool)

(assert (=> b!800288 (=> (not res!544974) (not e!443731))))

(assert (=> b!800288 (= res!544974 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21240 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20819 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21240 a!3170)) (= (select (arr!20819 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800289 () Bool)

(declare-fun res!544979 () Bool)

(assert (=> b!800289 (=> (not res!544979) (not e!443731))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43485 (_ BitVec 32)) Bool)

(assert (=> b!800289 (= res!544979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800290 () Bool)

(declare-fun res!544971 () Bool)

(assert (=> b!800290 (=> (not res!544971) (not e!443730))))

(assert (=> b!800290 (= res!544971 (validKeyInArray!0 k!2044))))

(declare-fun b!800291 () Bool)

(assert (=> b!800291 (= e!443732 e!443729)))

(declare-fun res!544970 () Bool)

(assert (=> b!800291 (=> (not res!544970) (not e!443729))))

(assert (=> b!800291 (= res!544970 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357559 #b00000000000000000000000000000000) (bvslt lt!357559 (size!21240 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800291 (= lt!357559 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!544973 () Bool)

(assert (=> start!68744 (=> (not res!544973) (not e!443730))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68744 (= res!544973 (validMask!0 mask!3266))))

(assert (=> start!68744 e!443730))

(assert (=> start!68744 true))

(declare-fun array_inv!16593 (array!43485) Bool)

(assert (=> start!68744 (array_inv!16593 a!3170)))

(declare-fun b!800292 () Bool)

(declare-fun res!544978 () Bool)

(assert (=> b!800292 (=> (not res!544978) (not e!443729))))

(assert (=> b!800292 (= res!544978 (= lt!357561 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357559 vacantAfter!23 lt!357562 lt!357555 mask!3266)))))

(assert (= (and start!68744 res!544973) b!800282))

(assert (= (and b!800282 res!544981) b!800281))

(assert (= (and b!800281 res!544972) b!800290))

(assert (= (and b!800290 res!544971) b!800287))

(assert (= (and b!800287 res!544969) b!800285))

(assert (= (and b!800285 res!544980) b!800289))

(assert (= (and b!800289 res!544979) b!800283))

(assert (= (and b!800283 res!544976) b!800288))

(assert (= (and b!800288 res!544974) b!800286))

(assert (= (and b!800286 res!544975) b!800284))

(assert (= (and b!800284 res!544977) b!800291))

(assert (= (and b!800291 res!544970) b!800292))

(assert (= (and b!800292 res!544978) b!800280))

(declare-fun m!741463 () Bool)

(assert (=> b!800288 m!741463))

(declare-fun m!741465 () Bool)

(assert (=> b!800288 m!741465))

(declare-fun m!741467 () Bool)

(assert (=> b!800281 m!741467))

(assert (=> b!800281 m!741467))

(declare-fun m!741469 () Bool)

(assert (=> b!800281 m!741469))

(declare-fun m!741471 () Bool)

(assert (=> b!800292 m!741471))

(declare-fun m!741473 () Bool)

(assert (=> b!800289 m!741473))

(declare-fun m!741475 () Bool)

(assert (=> b!800286 m!741475))

(declare-fun m!741477 () Bool)

(assert (=> b!800286 m!741477))

(declare-fun m!741479 () Bool)

(assert (=> b!800286 m!741479))

(declare-fun m!741481 () Bool)

(assert (=> b!800286 m!741481))

(assert (=> b!800280 m!741467))

(assert (=> b!800280 m!741467))

(declare-fun m!741483 () Bool)

(assert (=> b!800280 m!741483))

(declare-fun m!741485 () Bool)

(assert (=> b!800283 m!741485))

(declare-fun m!741487 () Bool)

(assert (=> b!800285 m!741487))

(declare-fun m!741489 () Bool)

(assert (=> b!800287 m!741489))

(declare-fun m!741491 () Bool)

(assert (=> start!68744 m!741491))

(declare-fun m!741493 () Bool)

(assert (=> start!68744 m!741493))

(declare-fun m!741495 () Bool)

(assert (=> b!800290 m!741495))

(declare-fun m!741497 () Bool)

(assert (=> b!800291 m!741497))

(declare-fun m!741499 () Bool)

(assert (=> b!800284 m!741499))

(assert (=> b!800284 m!741467))

(assert (=> b!800284 m!741467))

(declare-fun m!741501 () Bool)

(assert (=> b!800284 m!741501))

(assert (=> b!800284 m!741467))

(declare-fun m!741503 () Bool)

(assert (=> b!800284 m!741503))

(push 1)

