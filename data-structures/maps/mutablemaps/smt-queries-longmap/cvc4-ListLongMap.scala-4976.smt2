; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68390 () Bool)

(assert start!68390)

(declare-fun b!794263 () Bool)

(declare-fun res!538953 () Bool)

(declare-fun e!441052 () Bool)

(assert (=> b!794263 (=> (not res!538953) (not e!441052))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43131 0))(
  ( (array!43132 (arr!20642 (Array (_ BitVec 32) (_ BitVec 64))) (size!21063 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43131)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!794263 (= res!538953 (and (= (size!21063 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21063 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21063 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794264 () Bool)

(declare-fun res!538955 () Bool)

(assert (=> b!794264 (=> (not res!538955) (not e!441052))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43131 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794264 (= res!538955 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794265 () Bool)

(declare-fun res!538954 () Bool)

(assert (=> b!794265 (=> (not res!538954) (not e!441052))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794265 (= res!538954 (validKeyInArray!0 k!2044))))

(declare-fun b!794266 () Bool)

(declare-fun e!441051 () Bool)

(assert (=> b!794266 (= e!441052 e!441051)))

(declare-fun res!538956 () Bool)

(assert (=> b!794266 (=> (not res!538956) (not e!441051))))

(declare-datatypes ((SeekEntryResult!8240 0))(
  ( (MissingZero!8240 (index!35327 (_ BitVec 32))) (Found!8240 (index!35328 (_ BitVec 32))) (Intermediate!8240 (undefined!9052 Bool) (index!35329 (_ BitVec 32)) (x!66279 (_ BitVec 32))) (Undefined!8240) (MissingVacant!8240 (index!35330 (_ BitVec 32))) )
))
(declare-fun lt!354078 () SeekEntryResult!8240)

(assert (=> b!794266 (= res!538956 (or (= lt!354078 (MissingZero!8240 i!1163)) (= lt!354078 (MissingVacant!8240 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43131 (_ BitVec 32)) SeekEntryResult!8240)

(assert (=> b!794266 (= lt!354078 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!538957 () Bool)

(assert (=> start!68390 (=> (not res!538957) (not e!441052))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68390 (= res!538957 (validMask!0 mask!3266))))

(assert (=> start!68390 e!441052))

(assert (=> start!68390 true))

(declare-fun array_inv!16416 (array!43131) Bool)

(assert (=> start!68390 (array_inv!16416 a!3170)))

(declare-fun b!794267 () Bool)

(assert (=> b!794267 (= e!441051 false)))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!354075 () SeekEntryResult!8240)

(declare-fun lt!354079 () (_ BitVec 64))

(declare-fun lt!354077 () array!43131)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43131 (_ BitVec 32)) SeekEntryResult!8240)

(assert (=> b!794267 (= lt!354075 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354079 lt!354077 mask!3266))))

(declare-fun lt!354076 () SeekEntryResult!8240)

(assert (=> b!794267 (= lt!354076 (seekEntryOrOpen!0 lt!354079 lt!354077 mask!3266))))

(assert (=> b!794267 (= lt!354079 (select (store (arr!20642 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794267 (= lt!354077 (array!43132 (store (arr!20642 a!3170) i!1163 k!2044) (size!21063 a!3170)))))

(declare-fun b!794268 () Bool)

(declare-fun res!538960 () Bool)

(assert (=> b!794268 (=> (not res!538960) (not e!441052))))

(assert (=> b!794268 (= res!538960 (validKeyInArray!0 (select (arr!20642 a!3170) j!153)))))

(declare-fun b!794269 () Bool)

(declare-fun res!538952 () Bool)

(assert (=> b!794269 (=> (not res!538952) (not e!441051))))

(declare-datatypes ((List!14658 0))(
  ( (Nil!14655) (Cons!14654 (h!15783 (_ BitVec 64)) (t!20981 List!14658)) )
))
(declare-fun arrayNoDuplicates!0 (array!43131 (_ BitVec 32) List!14658) Bool)

(assert (=> b!794269 (= res!538952 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14655))))

(declare-fun b!794270 () Bool)

(declare-fun res!538959 () Bool)

(assert (=> b!794270 (=> (not res!538959) (not e!441051))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!794270 (= res!538959 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21063 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20642 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21063 a!3170)) (= (select (arr!20642 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794271 () Bool)

(declare-fun res!538958 () Bool)

(assert (=> b!794271 (=> (not res!538958) (not e!441051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43131 (_ BitVec 32)) Bool)

(assert (=> b!794271 (= res!538958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68390 res!538957) b!794263))

(assert (= (and b!794263 res!538953) b!794268))

(assert (= (and b!794268 res!538960) b!794265))

(assert (= (and b!794265 res!538954) b!794264))

(assert (= (and b!794264 res!538955) b!794266))

(assert (= (and b!794266 res!538956) b!794271))

(assert (= (and b!794271 res!538958) b!794269))

(assert (= (and b!794269 res!538952) b!794270))

(assert (= (and b!794270 res!538959) b!794267))

(declare-fun m!734893 () Bool)

(assert (=> b!794264 m!734893))

(declare-fun m!734895 () Bool)

(assert (=> b!794268 m!734895))

(assert (=> b!794268 m!734895))

(declare-fun m!734897 () Bool)

(assert (=> b!794268 m!734897))

(declare-fun m!734899 () Bool)

(assert (=> b!794271 m!734899))

(declare-fun m!734901 () Bool)

(assert (=> start!68390 m!734901))

(declare-fun m!734903 () Bool)

(assert (=> start!68390 m!734903))

(declare-fun m!734905 () Bool)

(assert (=> b!794269 m!734905))

(declare-fun m!734907 () Bool)

(assert (=> b!794267 m!734907))

(declare-fun m!734909 () Bool)

(assert (=> b!794267 m!734909))

(declare-fun m!734911 () Bool)

(assert (=> b!794267 m!734911))

(declare-fun m!734913 () Bool)

(assert (=> b!794267 m!734913))

(declare-fun m!734915 () Bool)

(assert (=> b!794270 m!734915))

(declare-fun m!734917 () Bool)

(assert (=> b!794270 m!734917))

(declare-fun m!734919 () Bool)

(assert (=> b!794265 m!734919))

(declare-fun m!734921 () Bool)

(assert (=> b!794266 m!734921))

(push 1)

(assert (not start!68390))

(assert (not b!794265))

