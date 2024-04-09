; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68750 () Bool)

(assert start!68750)

(declare-fun b!800397 () Bool)

(declare-fun e!443783 () Bool)

(declare-fun e!443787 () Bool)

(assert (=> b!800397 (= e!443783 e!443787)))

(declare-fun res!545089 () Bool)

(assert (=> b!800397 (=> (not res!545089) (not e!443787))))

(declare-datatypes ((SeekEntryResult!8420 0))(
  ( (MissingZero!8420 (index!36047 (_ BitVec 32))) (Found!8420 (index!36048 (_ BitVec 32))) (Intermediate!8420 (undefined!9232 Bool) (index!36049 (_ BitVec 32)) (x!66939 (_ BitVec 32))) (Undefined!8420) (MissingVacant!8420 (index!36050 (_ BitVec 32))) )
))
(declare-fun lt!357630 () SeekEntryResult!8420)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!800397 (= res!545089 (or (= lt!357630 (MissingZero!8420 i!1163)) (= lt!357630 (MissingVacant!8420 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!43491 0))(
  ( (array!43492 (arr!20822 (Array (_ BitVec 32) (_ BitVec 64))) (size!21243 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43491)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43491 (_ BitVec 32)) SeekEntryResult!8420)

(assert (=> b!800397 (= lt!357630 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!800398 () Bool)

(declare-fun e!443788 () Bool)

(assert (=> b!800398 (= e!443788 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!357628 () SeekEntryResult!8420)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun lt!357627 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43491 (_ BitVec 32)) SeekEntryResult!8420)

(assert (=> b!800398 (= lt!357628 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357627 vacantBefore!23 (select (arr!20822 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800399 () Bool)

(declare-fun res!545086 () Bool)

(assert (=> b!800399 (=> (not res!545086) (not e!443783))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800399 (= res!545086 (validKeyInArray!0 k!2044))))

(declare-fun b!800400 () Bool)

(declare-fun res!545088 () Bool)

(assert (=> b!800400 (=> (not res!545088) (not e!443787))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!800400 (= res!545088 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21243 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20822 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21243 a!3170)) (= (select (arr!20822 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800401 () Bool)

(declare-fun res!545087 () Bool)

(assert (=> b!800401 (=> (not res!545087) (not e!443783))))

(assert (=> b!800401 (= res!545087 (validKeyInArray!0 (select (arr!20822 a!3170) j!153)))))

(declare-fun b!800403 () Bool)

(declare-fun res!545096 () Bool)

(assert (=> b!800403 (=> (not res!545096) (not e!443783))))

(declare-fun arrayContainsKey!0 (array!43491 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800403 (= res!545096 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800404 () Bool)

(declare-fun e!443785 () Bool)

(assert (=> b!800404 (= e!443785 e!443788)))

(declare-fun res!545095 () Bool)

(assert (=> b!800404 (=> (not res!545095) (not e!443788))))

(assert (=> b!800404 (= res!545095 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357627 #b00000000000000000000000000000000) (bvslt lt!357627 (size!21243 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800404 (= lt!357627 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!800405 () Bool)

(declare-fun res!545097 () Bool)

(assert (=> b!800405 (=> (not res!545097) (not e!443787))))

(declare-datatypes ((List!14838 0))(
  ( (Nil!14835) (Cons!14834 (h!15963 (_ BitVec 64)) (t!21161 List!14838)) )
))
(declare-fun arrayNoDuplicates!0 (array!43491 (_ BitVec 32) List!14838) Bool)

(assert (=> b!800405 (= res!545097 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14835))))

(declare-fun b!800406 () Bool)

(declare-fun res!545091 () Bool)

(assert (=> b!800406 (=> (not res!545091) (not e!443787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43491 (_ BitVec 32)) Bool)

(assert (=> b!800406 (= res!545091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800407 () Bool)

(declare-fun res!545094 () Bool)

(assert (=> b!800407 (=> (not res!545094) (not e!443783))))

(assert (=> b!800407 (= res!545094 (and (= (size!21243 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21243 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21243 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!545093 () Bool)

(assert (=> start!68750 (=> (not res!545093) (not e!443783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68750 (= res!545093 (validMask!0 mask!3266))))

(assert (=> start!68750 e!443783))

(assert (=> start!68750 true))

(declare-fun array_inv!16596 (array!43491) Bool)

(assert (=> start!68750 (array_inv!16596 a!3170)))

(declare-fun b!800402 () Bool)

(declare-fun res!545090 () Bool)

(assert (=> b!800402 (=> (not res!545090) (not e!443788))))

(declare-fun lt!357633 () SeekEntryResult!8420)

(declare-fun lt!357634 () (_ BitVec 64))

(declare-fun lt!357632 () array!43491)

(assert (=> b!800402 (= res!545090 (= lt!357633 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357627 vacantAfter!23 lt!357634 lt!357632 mask!3266)))))

(declare-fun b!800408 () Bool)

(declare-fun e!443786 () Bool)

(assert (=> b!800408 (= e!443786 e!443785)))

(declare-fun res!545098 () Bool)

(assert (=> b!800408 (=> (not res!545098) (not e!443785))))

(declare-fun lt!357631 () SeekEntryResult!8420)

(declare-fun lt!357629 () SeekEntryResult!8420)

(assert (=> b!800408 (= res!545098 (and (= lt!357631 lt!357629) (= lt!357629 (Found!8420 j!153)) (not (= (select (arr!20822 a!3170) index!1236) (select (arr!20822 a!3170) j!153)))))))

(assert (=> b!800408 (= lt!357629 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20822 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!800408 (= lt!357631 (seekEntryOrOpen!0 (select (arr!20822 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800409 () Bool)

(assert (=> b!800409 (= e!443787 e!443786)))

(declare-fun res!545092 () Bool)

(assert (=> b!800409 (=> (not res!545092) (not e!443786))))

(assert (=> b!800409 (= res!545092 (= lt!357633 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357634 lt!357632 mask!3266)))))

(assert (=> b!800409 (= lt!357633 (seekEntryOrOpen!0 lt!357634 lt!357632 mask!3266))))

(assert (=> b!800409 (= lt!357634 (select (store (arr!20822 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!800409 (= lt!357632 (array!43492 (store (arr!20822 a!3170) i!1163 k!2044) (size!21243 a!3170)))))

(assert (= (and start!68750 res!545093) b!800407))

(assert (= (and b!800407 res!545094) b!800401))

(assert (= (and b!800401 res!545087) b!800399))

(assert (= (and b!800399 res!545086) b!800403))

(assert (= (and b!800403 res!545096) b!800397))

(assert (= (and b!800397 res!545089) b!800406))

(assert (= (and b!800406 res!545091) b!800405))

(assert (= (and b!800405 res!545097) b!800400))

(assert (= (and b!800400 res!545088) b!800409))

(assert (= (and b!800409 res!545092) b!800408))

(assert (= (and b!800408 res!545098) b!800404))

(assert (= (and b!800404 res!545095) b!800402))

(assert (= (and b!800402 res!545090) b!800398))

(declare-fun m!741589 () Bool)

(assert (=> start!68750 m!741589))

(declare-fun m!741591 () Bool)

(assert (=> start!68750 m!741591))

(declare-fun m!741593 () Bool)

(assert (=> b!800398 m!741593))

(assert (=> b!800398 m!741593))

(declare-fun m!741595 () Bool)

(assert (=> b!800398 m!741595))

(declare-fun m!741597 () Bool)

(assert (=> b!800402 m!741597))

(declare-fun m!741599 () Bool)

(assert (=> b!800399 m!741599))

(declare-fun m!741601 () Bool)

(assert (=> b!800408 m!741601))

(assert (=> b!800408 m!741593))

(assert (=> b!800408 m!741593))

(declare-fun m!741603 () Bool)

(assert (=> b!800408 m!741603))

(assert (=> b!800408 m!741593))

(declare-fun m!741605 () Bool)

(assert (=> b!800408 m!741605))

(declare-fun m!741607 () Bool)

(assert (=> b!800409 m!741607))

(declare-fun m!741609 () Bool)

(assert (=> b!800409 m!741609))

(declare-fun m!741611 () Bool)

(assert (=> b!800409 m!741611))

(declare-fun m!741613 () Bool)

(assert (=> b!800409 m!741613))

(declare-fun m!741615 () Bool)

(assert (=> b!800397 m!741615))

(declare-fun m!741617 () Bool)

(assert (=> b!800403 m!741617))

(declare-fun m!741619 () Bool)

(assert (=> b!800400 m!741619))

(declare-fun m!741621 () Bool)

(assert (=> b!800400 m!741621))

(declare-fun m!741623 () Bool)

(assert (=> b!800406 m!741623))

(assert (=> b!800401 m!741593))

(assert (=> b!800401 m!741593))

(declare-fun m!741625 () Bool)

(assert (=> b!800401 m!741625))

(declare-fun m!741627 () Bool)

(assert (=> b!800404 m!741627))

(declare-fun m!741629 () Bool)

(assert (=> b!800405 m!741629))

(push 1)

