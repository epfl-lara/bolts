; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68336 () Bool)

(assert start!68336)

(declare-fun b!793506 () Bool)

(declare-fun e!440781 () Bool)

(declare-fun e!440779 () Bool)

(assert (=> b!793506 (= e!440781 e!440779)))

(declare-fun res!538199 () Bool)

(assert (=> b!793506 (=> (not res!538199) (not e!440779))))

(declare-datatypes ((SeekEntryResult!8213 0))(
  ( (MissingZero!8213 (index!35219 (_ BitVec 32))) (Found!8213 (index!35220 (_ BitVec 32))) (Intermediate!8213 (undefined!9025 Bool) (index!35221 (_ BitVec 32)) (x!66180 (_ BitVec 32))) (Undefined!8213) (MissingVacant!8213 (index!35222 (_ BitVec 32))) )
))
(declare-fun lt!353728 () SeekEntryResult!8213)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!793506 (= res!538199 (or (= lt!353728 (MissingZero!8213 i!1163)) (= lt!353728 (MissingVacant!8213 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!43077 0))(
  ( (array!43078 (arr!20615 (Array (_ BitVec 32) (_ BitVec 64))) (size!21036 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43077)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43077 (_ BitVec 32)) SeekEntryResult!8213)

(assert (=> b!793506 (= lt!353728 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793507 () Bool)

(declare-fun res!538196 () Bool)

(assert (=> b!793507 (=> (not res!538196) (not e!440779))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43077 (_ BitVec 32)) Bool)

(assert (=> b!793507 (= res!538196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!538204 () Bool)

(assert (=> start!68336 (=> (not res!538204) (not e!440781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68336 (= res!538204 (validMask!0 mask!3266))))

(assert (=> start!68336 e!440781))

(assert (=> start!68336 true))

(declare-fun array_inv!16389 (array!43077) Bool)

(assert (=> start!68336 (array_inv!16389 a!3170)))

(declare-fun b!793508 () Bool)

(declare-fun res!538198 () Bool)

(assert (=> b!793508 (=> (not res!538198) (not e!440781))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793508 (= res!538198 (validKeyInArray!0 (select (arr!20615 a!3170) j!153)))))

(declare-fun b!793509 () Bool)

(declare-fun e!440782 () Bool)

(assert (=> b!793509 (= e!440779 e!440782)))

(declare-fun res!538200 () Bool)

(assert (=> b!793509 (=> (not res!538200) (not e!440782))))

(declare-fun lt!353727 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!353726 () array!43077)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43077 (_ BitVec 32)) SeekEntryResult!8213)

(assert (=> b!793509 (= res!538200 (= (seekEntryOrOpen!0 lt!353727 lt!353726 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353727 lt!353726 mask!3266)))))

(assert (=> b!793509 (= lt!353727 (select (store (arr!20615 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!793509 (= lt!353726 (array!43078 (store (arr!20615 a!3170) i!1163 k!2044) (size!21036 a!3170)))))

(declare-fun b!793510 () Bool)

(declare-fun res!538202 () Bool)

(assert (=> b!793510 (=> (not res!538202) (not e!440779))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!793510 (= res!538202 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21036 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20615 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21036 a!3170)) (= (select (arr!20615 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793511 () Bool)

(assert (=> b!793511 (= e!440782 (bvslt mask!3266 #b00000000000000000000000000000000))))

(declare-fun b!793512 () Bool)

(declare-fun res!538201 () Bool)

(assert (=> b!793512 (=> (not res!538201) (not e!440781))))

(assert (=> b!793512 (= res!538201 (and (= (size!21036 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21036 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21036 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793513 () Bool)

(declare-fun res!538197 () Bool)

(assert (=> b!793513 (=> (not res!538197) (not e!440781))))

(declare-fun arrayContainsKey!0 (array!43077 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793513 (= res!538197 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793514 () Bool)

(declare-fun res!538195 () Bool)

(assert (=> b!793514 (=> (not res!538195) (not e!440779))))

(declare-datatypes ((List!14631 0))(
  ( (Nil!14628) (Cons!14627 (h!15756 (_ BitVec 64)) (t!20954 List!14631)) )
))
(declare-fun arrayNoDuplicates!0 (array!43077 (_ BitVec 32) List!14631) Bool)

(assert (=> b!793514 (= res!538195 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14628))))

(declare-fun b!793515 () Bool)

(declare-fun res!538203 () Bool)

(assert (=> b!793515 (=> (not res!538203) (not e!440781))))

(assert (=> b!793515 (= res!538203 (validKeyInArray!0 k!2044))))

(assert (= (and start!68336 res!538204) b!793512))

(assert (= (and b!793512 res!538201) b!793508))

(assert (= (and b!793508 res!538198) b!793515))

(assert (= (and b!793515 res!538203) b!793513))

(assert (= (and b!793513 res!538197) b!793506))

(assert (= (and b!793506 res!538199) b!793507))

(assert (= (and b!793507 res!538196) b!793514))

(assert (= (and b!793514 res!538195) b!793510))

(assert (= (and b!793510 res!538202) b!793509))

(assert (= (and b!793509 res!538200) b!793511))

(declare-fun m!734083 () Bool)

(assert (=> b!793515 m!734083))

(declare-fun m!734085 () Bool)

(assert (=> b!793507 m!734085))

(declare-fun m!734087 () Bool)

(assert (=> b!793509 m!734087))

(declare-fun m!734089 () Bool)

(assert (=> b!793509 m!734089))

(declare-fun m!734091 () Bool)

(assert (=> b!793509 m!734091))

(declare-fun m!734093 () Bool)

(assert (=> b!793509 m!734093))

(declare-fun m!734095 () Bool)

(assert (=> b!793513 m!734095))

(declare-fun m!734097 () Bool)

(assert (=> start!68336 m!734097))

(declare-fun m!734099 () Bool)

(assert (=> start!68336 m!734099))

(declare-fun m!734101 () Bool)

(assert (=> b!793514 m!734101))

(declare-fun m!734103 () Bool)

(assert (=> b!793506 m!734103))

(declare-fun m!734105 () Bool)

(assert (=> b!793508 m!734105))

(assert (=> b!793508 m!734105))

(declare-fun m!734107 () Bool)

(assert (=> b!793508 m!734107))

(declare-fun m!734109 () Bool)

(assert (=> b!793510 m!734109))

(declare-fun m!734111 () Bool)

(assert (=> b!793510 m!734111))

(push 1)

(assert (not b!793509))

(assert (not b!793506))

(assert (not b!793508))

(assert (not b!793507))

(assert (not start!68336))

(assert (not b!793515))

(assert (not b!793514))

(assert (not b!793513))

