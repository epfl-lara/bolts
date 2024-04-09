; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68470 () Bool)

(assert start!68470)

(declare-fun b!795480 () Bool)

(declare-fun res!540172 () Bool)

(declare-fun e!441522 () Bool)

(assert (=> b!795480 (=> (not res!540172) (not e!441522))))

(declare-datatypes ((array!43211 0))(
  ( (array!43212 (arr!20682 (Array (_ BitVec 32) (_ BitVec 64))) (size!21103 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43211)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43211 (_ BitVec 32)) Bool)

(assert (=> b!795480 (= res!540172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795482 () Bool)

(declare-fun e!441521 () Bool)

(assert (=> b!795482 (= e!441522 e!441521)))

(declare-fun res!540169 () Bool)

(assert (=> b!795482 (=> (not res!540169) (not e!441521))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354622 () array!43211)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!354621 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8280 0))(
  ( (MissingZero!8280 (index!35487 (_ BitVec 32))) (Found!8280 (index!35488 (_ BitVec 32))) (Intermediate!8280 (undefined!9092 Bool) (index!35489 (_ BitVec 32)) (x!66431 (_ BitVec 32))) (Undefined!8280) (MissingVacant!8280 (index!35490 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43211 (_ BitVec 32)) SeekEntryResult!8280)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43211 (_ BitVec 32)) SeekEntryResult!8280)

(assert (=> b!795482 (= res!540169 (= (seekEntryOrOpen!0 lt!354621 lt!354622 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354621 lt!354622 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!795482 (= lt!354621 (select (store (arr!20682 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795482 (= lt!354622 (array!43212 (store (arr!20682 a!3170) i!1163 k!2044) (size!21103 a!3170)))))

(declare-fun b!795483 () Bool)

(declare-fun res!540178 () Bool)

(declare-fun e!441523 () Bool)

(assert (=> b!795483 (=> (not res!540178) (not e!441523))))

(declare-fun arrayContainsKey!0 (array!43211 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795483 (= res!540178 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795484 () Bool)

(declare-fun res!540174 () Bool)

(assert (=> b!795484 (=> (not res!540174) (not e!441523))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795484 (= res!540174 (validKeyInArray!0 (select (arr!20682 a!3170) j!153)))))

(declare-fun b!795485 () Bool)

(declare-fun res!540170 () Bool)

(assert (=> b!795485 (=> (not res!540170) (not e!441522))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!795485 (= res!540170 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21103 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20682 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21103 a!3170)) (= (select (arr!20682 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795486 () Bool)

(declare-fun res!540171 () Bool)

(assert (=> b!795486 (=> (not res!540171) (not e!441523))))

(assert (=> b!795486 (= res!540171 (and (= (size!21103 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21103 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21103 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795487 () Bool)

(declare-fun res!540175 () Bool)

(assert (=> b!795487 (=> (not res!540175) (not e!441523))))

(assert (=> b!795487 (= res!540175 (validKeyInArray!0 k!2044))))

(declare-fun b!795488 () Bool)

(assert (=> b!795488 (= e!441523 e!441522)))

(declare-fun res!540173 () Bool)

(assert (=> b!795488 (=> (not res!540173) (not e!441522))))

(declare-fun lt!354623 () SeekEntryResult!8280)

(assert (=> b!795488 (= res!540173 (or (= lt!354623 (MissingZero!8280 i!1163)) (= lt!354623 (MissingVacant!8280 i!1163))))))

(assert (=> b!795488 (= lt!354623 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!795489 () Bool)

(assert (=> b!795489 (= e!441521 false)))

(declare-fun lt!354624 () SeekEntryResult!8280)

(assert (=> b!795489 (= lt!354624 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20682 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354625 () SeekEntryResult!8280)

(assert (=> b!795489 (= lt!354625 (seekEntryOrOpen!0 (select (arr!20682 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795481 () Bool)

(declare-fun res!540177 () Bool)

(assert (=> b!795481 (=> (not res!540177) (not e!441522))))

(declare-datatypes ((List!14698 0))(
  ( (Nil!14695) (Cons!14694 (h!15823 (_ BitVec 64)) (t!21021 List!14698)) )
))
(declare-fun arrayNoDuplicates!0 (array!43211 (_ BitVec 32) List!14698) Bool)

(assert (=> b!795481 (= res!540177 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14695))))

(declare-fun res!540176 () Bool)

(assert (=> start!68470 (=> (not res!540176) (not e!441523))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68470 (= res!540176 (validMask!0 mask!3266))))

(assert (=> start!68470 e!441523))

(assert (=> start!68470 true))

(declare-fun array_inv!16456 (array!43211) Bool)

(assert (=> start!68470 (array_inv!16456 a!3170)))

(assert (= (and start!68470 res!540176) b!795486))

(assert (= (and b!795486 res!540171) b!795484))

(assert (= (and b!795484 res!540174) b!795487))

(assert (= (and b!795487 res!540175) b!795483))

(assert (= (and b!795483 res!540178) b!795488))

(assert (= (and b!795488 res!540173) b!795480))

(assert (= (and b!795480 res!540172) b!795481))

(assert (= (and b!795481 res!540177) b!795485))

(assert (= (and b!795485 res!540170) b!795482))

(assert (= (and b!795482 res!540169) b!795489))

(declare-fun m!736249 () Bool)

(assert (=> b!795487 m!736249))

(declare-fun m!736251 () Bool)

(assert (=> b!795480 m!736251))

(declare-fun m!736253 () Bool)

(assert (=> b!795483 m!736253))

(declare-fun m!736255 () Bool)

(assert (=> b!795489 m!736255))

(assert (=> b!795489 m!736255))

(declare-fun m!736257 () Bool)

(assert (=> b!795489 m!736257))

(assert (=> b!795489 m!736255))

(declare-fun m!736259 () Bool)

(assert (=> b!795489 m!736259))

(declare-fun m!736261 () Bool)

(assert (=> b!795485 m!736261))

(declare-fun m!736263 () Bool)

(assert (=> b!795485 m!736263))

(declare-fun m!736265 () Bool)

(assert (=> b!795488 m!736265))

(assert (=> b!795484 m!736255))

(assert (=> b!795484 m!736255))

(declare-fun m!736267 () Bool)

(assert (=> b!795484 m!736267))

(declare-fun m!736269 () Bool)

(assert (=> b!795481 m!736269))

(declare-fun m!736271 () Bool)

(assert (=> b!795482 m!736271))

(declare-fun m!736273 () Bool)

(assert (=> b!795482 m!736273))

(declare-fun m!736275 () Bool)

(assert (=> b!795482 m!736275))

(declare-fun m!736277 () Bool)

(assert (=> b!795482 m!736277))

(declare-fun m!736279 () Bool)

(assert (=> start!68470 m!736279))

(declare-fun m!736281 () Bool)

(assert (=> start!68470 m!736281))

(push 1)

