; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68294 () Bool)

(assert start!68294)

(declare-fun b!792978 () Bool)

(declare-fun e!440584 () Bool)

(assert (=> b!792978 (= e!440584 false)))

(declare-fun lt!353602 () Bool)

(declare-datatypes ((array!43035 0))(
  ( (array!43036 (arr!20594 (Array (_ BitVec 32) (_ BitVec 64))) (size!21015 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43035)

(declare-datatypes ((List!14610 0))(
  ( (Nil!14607) (Cons!14606 (h!15735 (_ BitVec 64)) (t!20933 List!14610)) )
))
(declare-fun arrayNoDuplicates!0 (array!43035 (_ BitVec 32) List!14610) Bool)

(assert (=> b!792978 (= lt!353602 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14607))))

(declare-fun b!792979 () Bool)

(declare-fun e!440583 () Bool)

(assert (=> b!792979 (= e!440583 e!440584)))

(declare-fun res!537672 () Bool)

(assert (=> b!792979 (=> (not res!537672) (not e!440584))))

(declare-datatypes ((SeekEntryResult!8192 0))(
  ( (MissingZero!8192 (index!35135 (_ BitVec 32))) (Found!8192 (index!35136 (_ BitVec 32))) (Intermediate!8192 (undefined!9004 Bool) (index!35137 (_ BitVec 32)) (x!66103 (_ BitVec 32))) (Undefined!8192) (MissingVacant!8192 (index!35138 (_ BitVec 32))) )
))
(declare-fun lt!353601 () SeekEntryResult!8192)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!792979 (= res!537672 (or (= lt!353601 (MissingZero!8192 i!1163)) (= lt!353601 (MissingVacant!8192 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43035 (_ BitVec 32)) SeekEntryResult!8192)

(assert (=> b!792979 (= lt!353601 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!537668 () Bool)

(assert (=> start!68294 (=> (not res!537668) (not e!440583))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68294 (= res!537668 (validMask!0 mask!3266))))

(assert (=> start!68294 e!440583))

(assert (=> start!68294 true))

(declare-fun array_inv!16368 (array!43035) Bool)

(assert (=> start!68294 (array_inv!16368 a!3170)))

(declare-fun b!792980 () Bool)

(declare-fun res!537670 () Bool)

(assert (=> b!792980 (=> (not res!537670) (not e!440584))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43035 (_ BitVec 32)) Bool)

(assert (=> b!792980 (= res!537670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!792981 () Bool)

(declare-fun res!537667 () Bool)

(assert (=> b!792981 (=> (not res!537667) (not e!440583))))

(declare-fun arrayContainsKey!0 (array!43035 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792981 (= res!537667 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792982 () Bool)

(declare-fun res!537673 () Bool)

(assert (=> b!792982 (=> (not res!537673) (not e!440583))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!792982 (= res!537673 (and (= (size!21015 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21015 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21015 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!792983 () Bool)

(declare-fun res!537669 () Bool)

(assert (=> b!792983 (=> (not res!537669) (not e!440583))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792983 (= res!537669 (validKeyInArray!0 (select (arr!20594 a!3170) j!153)))))

(declare-fun b!792984 () Bool)

(declare-fun res!537671 () Bool)

(assert (=> b!792984 (=> (not res!537671) (not e!440583))))

(assert (=> b!792984 (= res!537671 (validKeyInArray!0 k!2044))))

(assert (= (and start!68294 res!537668) b!792982))

(assert (= (and b!792982 res!537673) b!792983))

(assert (= (and b!792983 res!537669) b!792984))

(assert (= (and b!792984 res!537671) b!792981))

(assert (= (and b!792981 res!537667) b!792979))

(assert (= (and b!792979 res!537672) b!792980))

(assert (= (and b!792980 res!537670) b!792978))

(declare-fun m!733561 () Bool)

(assert (=> b!792984 m!733561))

(declare-fun m!733563 () Bool)

(assert (=> b!792983 m!733563))

(assert (=> b!792983 m!733563))

(declare-fun m!733565 () Bool)

(assert (=> b!792983 m!733565))

(declare-fun m!733567 () Bool)

(assert (=> b!792981 m!733567))

(declare-fun m!733569 () Bool)

(assert (=> b!792978 m!733569))

(declare-fun m!733571 () Bool)

(assert (=> b!792979 m!733571))

(declare-fun m!733573 () Bool)

(assert (=> start!68294 m!733573))

(declare-fun m!733575 () Bool)

(assert (=> start!68294 m!733575))

(declare-fun m!733577 () Bool)

(assert (=> b!792980 m!733577))

(push 1)

(assert (not start!68294))

(assert (not b!792981))

(assert (not b!792980))

