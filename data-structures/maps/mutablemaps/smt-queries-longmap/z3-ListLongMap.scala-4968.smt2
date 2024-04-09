; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68340 () Bool)

(assert start!68340)

(declare-fun b!793561 () Bool)

(declare-fun res!538255 () Bool)

(declare-fun e!440799 () Bool)

(assert (=> b!793561 (=> (not res!538255) (not e!440799))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43081 0))(
  ( (array!43082 (arr!20617 (Array (_ BitVec 32) (_ BitVec 64))) (size!21038 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43081)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793561 (= res!538255 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21038 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20617 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21038 a!3170)) (= (select (arr!20617 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793562 () Bool)

(declare-fun res!538256 () Bool)

(declare-fun e!440800 () Bool)

(assert (=> b!793562 (=> (not res!538256) (not e!440800))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793562 (= res!538256 (validKeyInArray!0 k0!2044))))

(declare-fun b!793563 () Bool)

(declare-fun res!538257 () Bool)

(assert (=> b!793563 (=> (not res!538257) (not e!440800))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!793563 (= res!538257 (and (= (size!21038 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21038 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21038 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793564 () Bool)

(declare-fun res!538253 () Bool)

(assert (=> b!793564 (=> (not res!538253) (not e!440799))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43081 (_ BitVec 32)) Bool)

(assert (=> b!793564 (= res!538253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!538258 () Bool)

(assert (=> start!68340 (=> (not res!538258) (not e!440800))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68340 (= res!538258 (validMask!0 mask!3266))))

(assert (=> start!68340 e!440800))

(assert (=> start!68340 true))

(declare-fun array_inv!16391 (array!43081) Bool)

(assert (=> start!68340 (array_inv!16391 a!3170)))

(declare-fun b!793565 () Bool)

(declare-fun res!538250 () Bool)

(assert (=> b!793565 (=> (not res!538250) (not e!440799))))

(declare-datatypes ((List!14633 0))(
  ( (Nil!14630) (Cons!14629 (h!15758 (_ BitVec 64)) (t!20956 List!14633)) )
))
(declare-fun arrayNoDuplicates!0 (array!43081 (_ BitVec 32) List!14633) Bool)

(assert (=> b!793565 (= res!538250 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14630))))

(declare-fun b!793566 () Bool)

(assert (=> b!793566 (= e!440800 e!440799)))

(declare-fun res!538254 () Bool)

(assert (=> b!793566 (=> (not res!538254) (not e!440799))))

(declare-datatypes ((SeekEntryResult!8215 0))(
  ( (MissingZero!8215 (index!35227 (_ BitVec 32))) (Found!8215 (index!35228 (_ BitVec 32))) (Intermediate!8215 (undefined!9027 Bool) (index!35229 (_ BitVec 32)) (x!66190 (_ BitVec 32))) (Undefined!8215) (MissingVacant!8215 (index!35230 (_ BitVec 32))) )
))
(declare-fun lt!353757 () SeekEntryResult!8215)

(assert (=> b!793566 (= res!538254 (or (= lt!353757 (MissingZero!8215 i!1163)) (= lt!353757 (MissingVacant!8215 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43081 (_ BitVec 32)) SeekEntryResult!8215)

(assert (=> b!793566 (= lt!353757 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!793567 () Bool)

(assert (=> b!793567 (= e!440799 false)))

(declare-fun lt!353758 () (_ BitVec 64))

(declare-fun lt!353754 () array!43081)

(declare-fun lt!353755 () SeekEntryResult!8215)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43081 (_ BitVec 32)) SeekEntryResult!8215)

(assert (=> b!793567 (= lt!353755 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353758 lt!353754 mask!3266))))

(declare-fun lt!353756 () SeekEntryResult!8215)

(assert (=> b!793567 (= lt!353756 (seekEntryOrOpen!0 lt!353758 lt!353754 mask!3266))))

(assert (=> b!793567 (= lt!353758 (select (store (arr!20617 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!793567 (= lt!353754 (array!43082 (store (arr!20617 a!3170) i!1163 k0!2044) (size!21038 a!3170)))))

(declare-fun b!793568 () Bool)

(declare-fun res!538252 () Bool)

(assert (=> b!793568 (=> (not res!538252) (not e!440800))))

(assert (=> b!793568 (= res!538252 (validKeyInArray!0 (select (arr!20617 a!3170) j!153)))))

(declare-fun b!793569 () Bool)

(declare-fun res!538251 () Bool)

(assert (=> b!793569 (=> (not res!538251) (not e!440800))))

(declare-fun arrayContainsKey!0 (array!43081 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793569 (= res!538251 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68340 res!538258) b!793563))

(assert (= (and b!793563 res!538257) b!793568))

(assert (= (and b!793568 res!538252) b!793562))

(assert (= (and b!793562 res!538256) b!793569))

(assert (= (and b!793569 res!538251) b!793566))

(assert (= (and b!793566 res!538254) b!793564))

(assert (= (and b!793564 res!538253) b!793565))

(assert (= (and b!793565 res!538250) b!793561))

(assert (= (and b!793561 res!538255) b!793567))

(declare-fun m!734143 () Bool)

(assert (=> b!793561 m!734143))

(declare-fun m!734145 () Bool)

(assert (=> b!793561 m!734145))

(declare-fun m!734147 () Bool)

(assert (=> b!793568 m!734147))

(assert (=> b!793568 m!734147))

(declare-fun m!734149 () Bool)

(assert (=> b!793568 m!734149))

(declare-fun m!734151 () Bool)

(assert (=> b!793564 m!734151))

(declare-fun m!734153 () Bool)

(assert (=> b!793562 m!734153))

(declare-fun m!734155 () Bool)

(assert (=> start!68340 m!734155))

(declare-fun m!734157 () Bool)

(assert (=> start!68340 m!734157))

(declare-fun m!734159 () Bool)

(assert (=> b!793569 m!734159))

(declare-fun m!734161 () Bool)

(assert (=> b!793566 m!734161))

(declare-fun m!734163 () Bool)

(assert (=> b!793565 m!734163))

(declare-fun m!734165 () Bool)

(assert (=> b!793567 m!734165))

(declare-fun m!734167 () Bool)

(assert (=> b!793567 m!734167))

(declare-fun m!734169 () Bool)

(assert (=> b!793567 m!734169))

(declare-fun m!734171 () Bool)

(assert (=> b!793567 m!734171))

(check-sat (not b!793569) (not b!793566) (not b!793565) (not b!793568) (not b!793564) (not b!793567) (not start!68340) (not b!793562))
(check-sat)
