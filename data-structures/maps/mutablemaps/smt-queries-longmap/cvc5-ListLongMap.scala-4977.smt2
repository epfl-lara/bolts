; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68392 () Bool)

(assert start!68392)

(declare-fun b!794290 () Bool)

(declare-fun res!538981 () Bool)

(declare-fun e!441059 () Bool)

(assert (=> b!794290 (=> (not res!538981) (not e!441059))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43133 0))(
  ( (array!43134 (arr!20643 (Array (_ BitVec 32) (_ BitVec 64))) (size!21064 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43133)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!794290 (= res!538981 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21064 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20643 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21064 a!3170)) (= (select (arr!20643 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794291 () Bool)

(declare-fun res!538984 () Bool)

(assert (=> b!794291 (=> (not res!538984) (not e!441059))))

(declare-datatypes ((List!14659 0))(
  ( (Nil!14656) (Cons!14655 (h!15784 (_ BitVec 64)) (t!20982 List!14659)) )
))
(declare-fun arrayNoDuplicates!0 (array!43133 (_ BitVec 32) List!14659) Bool)

(assert (=> b!794291 (= res!538984 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14656))))

(declare-fun b!794292 () Bool)

(declare-fun res!538986 () Bool)

(declare-fun e!441060 () Bool)

(assert (=> b!794292 (=> (not res!538986) (not e!441060))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794292 (= res!538986 (validKeyInArray!0 k!2044))))

(declare-fun b!794293 () Bool)

(assert (=> b!794293 (= e!441059 false)))

(declare-datatypes ((SeekEntryResult!8241 0))(
  ( (MissingZero!8241 (index!35331 (_ BitVec 32))) (Found!8241 (index!35332 (_ BitVec 32))) (Intermediate!8241 (undefined!9053 Bool) (index!35333 (_ BitVec 32)) (x!66288 (_ BitVec 32))) (Undefined!8241) (MissingVacant!8241 (index!35334 (_ BitVec 32))) )
))
(declare-fun lt!354092 () SeekEntryResult!8241)

(declare-fun lt!354093 () array!43133)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!354094 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43133 (_ BitVec 32)) SeekEntryResult!8241)

(assert (=> b!794293 (= lt!354092 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354094 lt!354093 mask!3266))))

(declare-fun lt!354091 () SeekEntryResult!8241)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43133 (_ BitVec 32)) SeekEntryResult!8241)

(assert (=> b!794293 (= lt!354091 (seekEntryOrOpen!0 lt!354094 lt!354093 mask!3266))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!794293 (= lt!354094 (select (store (arr!20643 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794293 (= lt!354093 (array!43134 (store (arr!20643 a!3170) i!1163 k!2044) (size!21064 a!3170)))))

(declare-fun b!794294 () Bool)

(declare-fun res!538979 () Bool)

(assert (=> b!794294 (=> (not res!538979) (not e!441060))))

(assert (=> b!794294 (= res!538979 (validKeyInArray!0 (select (arr!20643 a!3170) j!153)))))

(declare-fun b!794295 () Bool)

(declare-fun res!538985 () Bool)

(assert (=> b!794295 (=> (not res!538985) (not e!441060))))

(declare-fun arrayContainsKey!0 (array!43133 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794295 (= res!538985 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794296 () Bool)

(declare-fun res!538987 () Bool)

(assert (=> b!794296 (=> (not res!538987) (not e!441059))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43133 (_ BitVec 32)) Bool)

(assert (=> b!794296 (= res!538987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794297 () Bool)

(assert (=> b!794297 (= e!441060 e!441059)))

(declare-fun res!538983 () Bool)

(assert (=> b!794297 (=> (not res!538983) (not e!441059))))

(declare-fun lt!354090 () SeekEntryResult!8241)

(assert (=> b!794297 (= res!538983 (or (= lt!354090 (MissingZero!8241 i!1163)) (= lt!354090 (MissingVacant!8241 i!1163))))))

(assert (=> b!794297 (= lt!354090 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!794298 () Bool)

(declare-fun res!538982 () Bool)

(assert (=> b!794298 (=> (not res!538982) (not e!441060))))

(assert (=> b!794298 (= res!538982 (and (= (size!21064 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21064 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21064 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!538980 () Bool)

(assert (=> start!68392 (=> (not res!538980) (not e!441060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68392 (= res!538980 (validMask!0 mask!3266))))

(assert (=> start!68392 e!441060))

(assert (=> start!68392 true))

(declare-fun array_inv!16417 (array!43133) Bool)

(assert (=> start!68392 (array_inv!16417 a!3170)))

(assert (= (and start!68392 res!538980) b!794298))

(assert (= (and b!794298 res!538982) b!794294))

(assert (= (and b!794294 res!538979) b!794292))

(assert (= (and b!794292 res!538986) b!794295))

(assert (= (and b!794295 res!538985) b!794297))

(assert (= (and b!794297 res!538983) b!794296))

(assert (= (and b!794296 res!538987) b!794291))

(assert (= (and b!794291 res!538984) b!794290))

(assert (= (and b!794290 res!538981) b!794293))

(declare-fun m!734923 () Bool)

(assert (=> start!68392 m!734923))

(declare-fun m!734925 () Bool)

(assert (=> start!68392 m!734925))

(declare-fun m!734927 () Bool)

(assert (=> b!794292 m!734927))

(declare-fun m!734929 () Bool)

(assert (=> b!794296 m!734929))

(declare-fun m!734931 () Bool)

(assert (=> b!794297 m!734931))

(declare-fun m!734933 () Bool)

(assert (=> b!794290 m!734933))

(declare-fun m!734935 () Bool)

(assert (=> b!794290 m!734935))

(declare-fun m!734937 () Bool)

(assert (=> b!794291 m!734937))

(declare-fun m!734939 () Bool)

(assert (=> b!794293 m!734939))

(declare-fun m!734941 () Bool)

(assert (=> b!794293 m!734941))

(declare-fun m!734943 () Bool)

(assert (=> b!794293 m!734943))

(declare-fun m!734945 () Bool)

(assert (=> b!794293 m!734945))

(declare-fun m!734947 () Bool)

(assert (=> b!794294 m!734947))

(assert (=> b!794294 m!734947))

(declare-fun m!734949 () Bool)

(assert (=> b!794294 m!734949))

(declare-fun m!734951 () Bool)

(assert (=> b!794295 m!734951))

(push 1)

