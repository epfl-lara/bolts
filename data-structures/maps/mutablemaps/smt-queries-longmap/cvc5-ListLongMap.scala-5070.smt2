; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68950 () Bool)

(assert start!68950)

(declare-fun b!803945 () Bool)

(declare-fun e!445452 () Bool)

(declare-fun e!445453 () Bool)

(assert (=> b!803945 (= e!445452 e!445453)))

(declare-fun res!548639 () Bool)

(assert (=> b!803945 (=> (not res!548639) (not e!445453))))

(declare-datatypes ((SeekEntryResult!8520 0))(
  ( (MissingZero!8520 (index!36447 (_ BitVec 32))) (Found!8520 (index!36448 (_ BitVec 32))) (Intermediate!8520 (undefined!9332 Bool) (index!36449 (_ BitVec 32)) (x!67311 (_ BitVec 32))) (Undefined!8520) (MissingVacant!8520 (index!36450 (_ BitVec 32))) )
))
(declare-fun lt!360013 () SeekEntryResult!8520)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!803945 (= res!548639 (or (= lt!360013 (MissingZero!8520 i!1163)) (= lt!360013 (MissingVacant!8520 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!43691 0))(
  ( (array!43692 (arr!20922 (Array (_ BitVec 32) (_ BitVec 64))) (size!21343 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43691)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43691 (_ BitVec 32)) SeekEntryResult!8520)

(assert (=> b!803945 (= lt!360013 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!803946 () Bool)

(declare-fun res!548640 () Bool)

(assert (=> b!803946 (=> (not res!548640) (not e!445452))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!803946 (= res!548640 (and (= (size!21343 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21343 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21343 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803947 () Bool)

(declare-fun res!548638 () Bool)

(assert (=> b!803947 (=> (not res!548638) (not e!445453))))

(declare-datatypes ((List!14938 0))(
  ( (Nil!14935) (Cons!14934 (h!16063 (_ BitVec 64)) (t!21261 List!14938)) )
))
(declare-fun arrayNoDuplicates!0 (array!43691 (_ BitVec 32) List!14938) Bool)

(assert (=> b!803947 (= res!548638 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14935))))

(declare-fun b!803948 () Bool)

(declare-fun res!548635 () Bool)

(assert (=> b!803948 (=> (not res!548635) (not e!445453))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43691 (_ BitVec 32)) Bool)

(assert (=> b!803948 (= res!548635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun b!803949 () Bool)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!803949 (= e!445453 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21343 a!3170)) (= vacantBefore!23 i!1163) (or (bvslt vacantBefore!23 #b00000000000000000000000000000000) (bvsge vacantBefore!23 (size!21343 a!3170)))))))

(declare-fun b!803950 () Bool)

(declare-fun res!548641 () Bool)

(assert (=> b!803950 (=> (not res!548641) (not e!445452))))

(declare-fun arrayContainsKey!0 (array!43691 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803950 (= res!548641 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!548636 () Bool)

(assert (=> start!68950 (=> (not res!548636) (not e!445452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68950 (= res!548636 (validMask!0 mask!3266))))

(assert (=> start!68950 e!445452))

(assert (=> start!68950 true))

(declare-fun array_inv!16696 (array!43691) Bool)

(assert (=> start!68950 (array_inv!16696 a!3170)))

(declare-fun b!803951 () Bool)

(declare-fun res!548637 () Bool)

(assert (=> b!803951 (=> (not res!548637) (not e!445452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803951 (= res!548637 (validKeyInArray!0 k!2044))))

(declare-fun b!803952 () Bool)

(declare-fun res!548634 () Bool)

(assert (=> b!803952 (=> (not res!548634) (not e!445452))))

(assert (=> b!803952 (= res!548634 (validKeyInArray!0 (select (arr!20922 a!3170) j!153)))))

(assert (= (and start!68950 res!548636) b!803946))

(assert (= (and b!803946 res!548640) b!803952))

(assert (= (and b!803952 res!548634) b!803951))

(assert (= (and b!803951 res!548637) b!803950))

(assert (= (and b!803950 res!548641) b!803945))

(assert (= (and b!803945 res!548639) b!803948))

(assert (= (and b!803948 res!548635) b!803947))

(assert (= (and b!803947 res!548638) b!803949))

(declare-fun m!745969 () Bool)

(assert (=> b!803945 m!745969))

(declare-fun m!745971 () Bool)

(assert (=> b!803948 m!745971))

(declare-fun m!745973 () Bool)

(assert (=> b!803951 m!745973))

(declare-fun m!745975 () Bool)

(assert (=> start!68950 m!745975))

(declare-fun m!745977 () Bool)

(assert (=> start!68950 m!745977))

(declare-fun m!745979 () Bool)

(assert (=> b!803950 m!745979))

(declare-fun m!745981 () Bool)

(assert (=> b!803947 m!745981))

(declare-fun m!745983 () Bool)

(assert (=> b!803952 m!745983))

(assert (=> b!803952 m!745983))

(declare-fun m!745985 () Bool)

(assert (=> b!803952 m!745985))

(push 1)

(assert (not b!803945))

(assert (not b!803952))

(assert (not b!803948))

(assert (not start!68950))

(assert (not b!803947))

(assert (not b!803950))

(assert (not b!803951))

(check-sat)

(pop 1)

(push 1)

(check-sat)

