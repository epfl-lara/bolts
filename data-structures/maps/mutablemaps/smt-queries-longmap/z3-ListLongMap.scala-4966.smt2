; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68328 () Bool)

(assert start!68328)

(declare-fun b!793390 () Bool)

(declare-fun res!538086 () Bool)

(declare-fun e!440736 () Bool)

(assert (=> b!793390 (=> (not res!538086) (not e!440736))))

(declare-datatypes ((array!43069 0))(
  ( (array!43070 (arr!20611 (Array (_ BitVec 32) (_ BitVec 64))) (size!21032 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43069)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793390 (= res!538086 (validKeyInArray!0 (select (arr!20611 a!3170) j!153)))))

(declare-fun b!793391 () Bool)

(declare-fun e!440735 () Bool)

(assert (=> b!793391 (= e!440735 false)))

(declare-fun lt!353683 () array!43069)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8209 0))(
  ( (MissingZero!8209 (index!35203 (_ BitVec 32))) (Found!8209 (index!35204 (_ BitVec 32))) (Intermediate!8209 (undefined!9021 Bool) (index!35205 (_ BitVec 32)) (x!66168 (_ BitVec 32))) (Undefined!8209) (MissingVacant!8209 (index!35206 (_ BitVec 32))) )
))
(declare-fun lt!353682 () SeekEntryResult!8209)

(declare-fun lt!353686 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43069 (_ BitVec 32)) SeekEntryResult!8209)

(assert (=> b!793391 (= lt!353682 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353686 lt!353683 mask!3266))))

(declare-fun lt!353685 () SeekEntryResult!8209)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43069 (_ BitVec 32)) SeekEntryResult!8209)

(assert (=> b!793391 (= lt!353685 (seekEntryOrOpen!0 lt!353686 lt!353683 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!793391 (= lt!353686 (select (store (arr!20611 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!793391 (= lt!353683 (array!43070 (store (arr!20611 a!3170) i!1163 k0!2044) (size!21032 a!3170)))))

(declare-fun b!793392 () Bool)

(assert (=> b!793392 (= e!440736 e!440735)))

(declare-fun res!538079 () Bool)

(assert (=> b!793392 (=> (not res!538079) (not e!440735))))

(declare-fun lt!353684 () SeekEntryResult!8209)

(assert (=> b!793392 (= res!538079 (or (= lt!353684 (MissingZero!8209 i!1163)) (= lt!353684 (MissingVacant!8209 i!1163))))))

(assert (=> b!793392 (= lt!353684 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!793393 () Bool)

(declare-fun res!538081 () Bool)

(assert (=> b!793393 (=> (not res!538081) (not e!440735))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43069 (_ BitVec 32)) Bool)

(assert (=> b!793393 (= res!538081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793394 () Bool)

(declare-fun res!538083 () Bool)

(assert (=> b!793394 (=> (not res!538083) (not e!440736))))

(assert (=> b!793394 (= res!538083 (and (= (size!21032 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21032 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21032 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793396 () Bool)

(declare-fun res!538087 () Bool)

(assert (=> b!793396 (=> (not res!538087) (not e!440736))))

(assert (=> b!793396 (= res!538087 (validKeyInArray!0 k0!2044))))

(declare-fun b!793397 () Bool)

(declare-fun res!538082 () Bool)

(assert (=> b!793397 (=> (not res!538082) (not e!440736))))

(declare-fun arrayContainsKey!0 (array!43069 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793397 (= res!538082 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793398 () Bool)

(declare-fun res!538085 () Bool)

(assert (=> b!793398 (=> (not res!538085) (not e!440735))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!793398 (= res!538085 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21032 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20611 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21032 a!3170)) (= (select (arr!20611 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793395 () Bool)

(declare-fun res!538080 () Bool)

(assert (=> b!793395 (=> (not res!538080) (not e!440735))))

(declare-datatypes ((List!14627 0))(
  ( (Nil!14624) (Cons!14623 (h!15752 (_ BitVec 64)) (t!20950 List!14627)) )
))
(declare-fun arrayNoDuplicates!0 (array!43069 (_ BitVec 32) List!14627) Bool)

(assert (=> b!793395 (= res!538080 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14624))))

(declare-fun res!538084 () Bool)

(assert (=> start!68328 (=> (not res!538084) (not e!440736))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68328 (= res!538084 (validMask!0 mask!3266))))

(assert (=> start!68328 e!440736))

(assert (=> start!68328 true))

(declare-fun array_inv!16385 (array!43069) Bool)

(assert (=> start!68328 (array_inv!16385 a!3170)))

(assert (= (and start!68328 res!538084) b!793394))

(assert (= (and b!793394 res!538083) b!793390))

(assert (= (and b!793390 res!538086) b!793396))

(assert (= (and b!793396 res!538087) b!793397))

(assert (= (and b!793397 res!538082) b!793392))

(assert (= (and b!793392 res!538079) b!793393))

(assert (= (and b!793393 res!538081) b!793395))

(assert (= (and b!793395 res!538080) b!793398))

(assert (= (and b!793398 res!538085) b!793391))

(declare-fun m!733963 () Bool)

(assert (=> b!793395 m!733963))

(declare-fun m!733965 () Bool)

(assert (=> b!793391 m!733965))

(declare-fun m!733967 () Bool)

(assert (=> b!793391 m!733967))

(declare-fun m!733969 () Bool)

(assert (=> b!793391 m!733969))

(declare-fun m!733971 () Bool)

(assert (=> b!793391 m!733971))

(declare-fun m!733973 () Bool)

(assert (=> b!793396 m!733973))

(declare-fun m!733975 () Bool)

(assert (=> b!793397 m!733975))

(declare-fun m!733977 () Bool)

(assert (=> start!68328 m!733977))

(declare-fun m!733979 () Bool)

(assert (=> start!68328 m!733979))

(declare-fun m!733981 () Bool)

(assert (=> b!793392 m!733981))

(declare-fun m!733983 () Bool)

(assert (=> b!793390 m!733983))

(assert (=> b!793390 m!733983))

(declare-fun m!733985 () Bool)

(assert (=> b!793390 m!733985))

(declare-fun m!733987 () Bool)

(assert (=> b!793393 m!733987))

(declare-fun m!733989 () Bool)

(assert (=> b!793398 m!733989))

(declare-fun m!733991 () Bool)

(assert (=> b!793398 m!733991))

(check-sat (not b!793392) (not b!793395) (not start!68328) (not b!793390) (not b!793391) (not b!793393) (not b!793397) (not b!793396))
(check-sat)
