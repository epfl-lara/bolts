; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68956 () Bool)

(assert start!68956)

(declare-fun b!804015 () Bool)

(declare-fun res!548708 () Bool)

(declare-fun e!445478 () Bool)

(assert (=> b!804015 (=> (not res!548708) (not e!445478))))

(declare-datatypes ((array!43697 0))(
  ( (array!43698 (arr!20925 (Array (_ BitVec 32) (_ BitVec 64))) (size!21346 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43697)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43697 (_ BitVec 32)) Bool)

(assert (=> b!804015 (= res!548708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804016 () Bool)

(declare-fun res!548704 () Bool)

(declare-fun e!445480 () Bool)

(assert (=> b!804016 (=> (not res!548704) (not e!445480))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43697 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804016 (= res!548704 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804017 () Bool)

(declare-fun res!548705 () Bool)

(assert (=> b!804017 (=> (not res!548705) (not e!445480))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804017 (= res!548705 (validKeyInArray!0 (select (arr!20925 a!3170) j!153)))))

(declare-fun b!804018 () Bool)

(declare-fun res!548710 () Bool)

(assert (=> b!804018 (=> (not res!548710) (not e!445480))))

(assert (=> b!804018 (= res!548710 (validKeyInArray!0 k!2044))))

(declare-fun b!804019 () Bool)

(assert (=> b!804019 (= e!445480 e!445478)))

(declare-fun res!548706 () Bool)

(assert (=> b!804019 (=> (not res!548706) (not e!445478))))

(declare-datatypes ((SeekEntryResult!8523 0))(
  ( (MissingZero!8523 (index!36459 (_ BitVec 32))) (Found!8523 (index!36460 (_ BitVec 32))) (Intermediate!8523 (undefined!9335 Bool) (index!36461 (_ BitVec 32)) (x!67322 (_ BitVec 32))) (Undefined!8523) (MissingVacant!8523 (index!36462 (_ BitVec 32))) )
))
(declare-fun lt!360024 () SeekEntryResult!8523)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804019 (= res!548706 (or (= lt!360024 (MissingZero!8523 i!1163)) (= lt!360024 (MissingVacant!8523 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43697 (_ BitVec 32)) SeekEntryResult!8523)

(assert (=> b!804019 (= lt!360024 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804020 () Bool)

(assert (=> b!804020 (= e!445478 false)))

(declare-fun lt!360025 () Bool)

(declare-datatypes ((List!14941 0))(
  ( (Nil!14938) (Cons!14937 (h!16066 (_ BitVec 64)) (t!21264 List!14941)) )
))
(declare-fun arrayNoDuplicates!0 (array!43697 (_ BitVec 32) List!14941) Bool)

(assert (=> b!804020 (= lt!360025 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14938))))

(declare-fun b!804021 () Bool)

(declare-fun res!548709 () Bool)

(assert (=> b!804021 (=> (not res!548709) (not e!445480))))

(assert (=> b!804021 (= res!548709 (and (= (size!21346 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21346 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21346 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!548707 () Bool)

(assert (=> start!68956 (=> (not res!548707) (not e!445480))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68956 (= res!548707 (validMask!0 mask!3266))))

(assert (=> start!68956 e!445480))

(assert (=> start!68956 true))

(declare-fun array_inv!16699 (array!43697) Bool)

(assert (=> start!68956 (array_inv!16699 a!3170)))

(assert (= (and start!68956 res!548707) b!804021))

(assert (= (and b!804021 res!548709) b!804017))

(assert (= (and b!804017 res!548705) b!804018))

(assert (= (and b!804018 res!548710) b!804016))

(assert (= (and b!804016 res!548704) b!804019))

(assert (= (and b!804019 res!548706) b!804015))

(assert (= (and b!804015 res!548708) b!804020))

(declare-fun m!746023 () Bool)

(assert (=> b!804015 m!746023))

(declare-fun m!746025 () Bool)

(assert (=> b!804017 m!746025))

(assert (=> b!804017 m!746025))

(declare-fun m!746027 () Bool)

(assert (=> b!804017 m!746027))

(declare-fun m!746029 () Bool)

(assert (=> b!804019 m!746029))

(declare-fun m!746031 () Bool)

(assert (=> b!804016 m!746031))

(declare-fun m!746033 () Bool)

(assert (=> b!804020 m!746033))

(declare-fun m!746035 () Bool)

(assert (=> start!68956 m!746035))

(declare-fun m!746037 () Bool)

(assert (=> start!68956 m!746037))

(declare-fun m!746039 () Bool)

(assert (=> b!804018 m!746039))

(push 1)

