; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68454 () Bool)

(assert start!68454)

(declare-fun b!795240 () Bool)

(declare-fun e!441425 () Bool)

(declare-fun e!441426 () Bool)

(assert (=> b!795240 (= e!441425 e!441426)))

(declare-fun res!539932 () Bool)

(assert (=> b!795240 (=> (not res!539932) (not e!441426))))

(declare-datatypes ((SeekEntryResult!8272 0))(
  ( (MissingZero!8272 (index!35455 (_ BitVec 32))) (Found!8272 (index!35456 (_ BitVec 32))) (Intermediate!8272 (undefined!9084 Bool) (index!35457 (_ BitVec 32)) (x!66399 (_ BitVec 32))) (Undefined!8272) (MissingVacant!8272 (index!35458 (_ BitVec 32))) )
))
(declare-fun lt!354504 () SeekEntryResult!8272)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!795240 (= res!539932 (or (= lt!354504 (MissingZero!8272 i!1163)) (= lt!354504 (MissingVacant!8272 i!1163))))))

(declare-datatypes ((array!43195 0))(
  ( (array!43196 (arr!20674 (Array (_ BitVec 32) (_ BitVec 64))) (size!21095 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43195)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43195 (_ BitVec 32)) SeekEntryResult!8272)

(assert (=> b!795240 (= lt!354504 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!795241 () Bool)

(declare-fun res!539937 () Bool)

(assert (=> b!795241 (=> (not res!539937) (not e!441426))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43195 (_ BitVec 32)) Bool)

(assert (=> b!795241 (= res!539937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795242 () Bool)

(declare-fun res!539934 () Bool)

(assert (=> b!795242 (=> (not res!539934) (not e!441425))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795242 (= res!539934 (validKeyInArray!0 (select (arr!20674 a!3170) j!153)))))

(declare-fun b!795243 () Bool)

(declare-fun lt!354502 () SeekEntryResult!8272)

(declare-fun lt!354503 () SeekEntryResult!8272)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun e!441427 () Bool)

(assert (=> b!795243 (= e!441427 (and (= lt!354502 lt!354503) (= lt!354503 (Found!8272 j!153)) (= (select (arr!20674 a!3170) index!1236) (select (arr!20674 a!3170) j!153)) (bvslt mask!3266 #b00000000000000000000000000000000)))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43195 (_ BitVec 32)) SeekEntryResult!8272)

(assert (=> b!795243 (= lt!354503 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20674 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!795243 (= lt!354502 (seekEntryOrOpen!0 (select (arr!20674 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795244 () Bool)

(declare-fun res!539931 () Bool)

(assert (=> b!795244 (=> (not res!539931) (not e!441425))))

(declare-fun arrayContainsKey!0 (array!43195 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795244 (= res!539931 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795245 () Bool)

(assert (=> b!795245 (= e!441426 e!441427)))

(declare-fun res!539935 () Bool)

(assert (=> b!795245 (=> (not res!539935) (not e!441427))))

(declare-fun lt!354501 () array!43195)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!354505 () (_ BitVec 64))

(assert (=> b!795245 (= res!539935 (= (seekEntryOrOpen!0 lt!354505 lt!354501 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354505 lt!354501 mask!3266)))))

(assert (=> b!795245 (= lt!354505 (select (store (arr!20674 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!795245 (= lt!354501 (array!43196 (store (arr!20674 a!3170) i!1163 k0!2044) (size!21095 a!3170)))))

(declare-fun b!795246 () Bool)

(declare-fun res!539929 () Bool)

(assert (=> b!795246 (=> (not res!539929) (not e!441426))))

(declare-datatypes ((List!14690 0))(
  ( (Nil!14687) (Cons!14686 (h!15815 (_ BitVec 64)) (t!21013 List!14690)) )
))
(declare-fun arrayNoDuplicates!0 (array!43195 (_ BitVec 32) List!14690) Bool)

(assert (=> b!795246 (= res!539929 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14687))))

(declare-fun res!539933 () Bool)

(assert (=> start!68454 (=> (not res!539933) (not e!441425))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68454 (= res!539933 (validMask!0 mask!3266))))

(assert (=> start!68454 e!441425))

(assert (=> start!68454 true))

(declare-fun array_inv!16448 (array!43195) Bool)

(assert (=> start!68454 (array_inv!16448 a!3170)))

(declare-fun b!795247 () Bool)

(declare-fun res!539938 () Bool)

(assert (=> b!795247 (=> (not res!539938) (not e!441425))))

(assert (=> b!795247 (= res!539938 (and (= (size!21095 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21095 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21095 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!795248 () Bool)

(declare-fun res!539936 () Bool)

(assert (=> b!795248 (=> (not res!539936) (not e!441426))))

(assert (=> b!795248 (= res!539936 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21095 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20674 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21095 a!3170)) (= (select (arr!20674 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795249 () Bool)

(declare-fun res!539930 () Bool)

(assert (=> b!795249 (=> (not res!539930) (not e!441425))))

(assert (=> b!795249 (= res!539930 (validKeyInArray!0 k0!2044))))

(assert (= (and start!68454 res!539933) b!795247))

(assert (= (and b!795247 res!539938) b!795242))

(assert (= (and b!795242 res!539934) b!795249))

(assert (= (and b!795249 res!539930) b!795244))

(assert (= (and b!795244 res!539931) b!795240))

(assert (= (and b!795240 res!539932) b!795241))

(assert (= (and b!795241 res!539937) b!795246))

(assert (= (and b!795246 res!539929) b!795248))

(assert (= (and b!795248 res!539936) b!795245))

(assert (= (and b!795245 res!539935) b!795243))

(declare-fun m!735967 () Bool)

(assert (=> start!68454 m!735967))

(declare-fun m!735969 () Bool)

(assert (=> start!68454 m!735969))

(declare-fun m!735971 () Bool)

(assert (=> b!795243 m!735971))

(declare-fun m!735973 () Bool)

(assert (=> b!795243 m!735973))

(assert (=> b!795243 m!735973))

(declare-fun m!735975 () Bool)

(assert (=> b!795243 m!735975))

(assert (=> b!795243 m!735973))

(declare-fun m!735977 () Bool)

(assert (=> b!795243 m!735977))

(declare-fun m!735979 () Bool)

(assert (=> b!795244 m!735979))

(assert (=> b!795242 m!735973))

(assert (=> b!795242 m!735973))

(declare-fun m!735981 () Bool)

(assert (=> b!795242 m!735981))

(declare-fun m!735983 () Bool)

(assert (=> b!795241 m!735983))

(declare-fun m!735985 () Bool)

(assert (=> b!795240 m!735985))

(declare-fun m!735987 () Bool)

(assert (=> b!795249 m!735987))

(declare-fun m!735989 () Bool)

(assert (=> b!795248 m!735989))

(declare-fun m!735991 () Bool)

(assert (=> b!795248 m!735991))

(declare-fun m!735993 () Bool)

(assert (=> b!795246 m!735993))

(declare-fun m!735995 () Bool)

(assert (=> b!795245 m!735995))

(declare-fun m!735997 () Bool)

(assert (=> b!795245 m!735997))

(declare-fun m!735999 () Bool)

(assert (=> b!795245 m!735999))

(declare-fun m!736001 () Bool)

(assert (=> b!795245 m!736001))

(check-sat (not b!795246) (not start!68454) (not b!795240) (not b!795244) (not b!795241) (not b!795245) (not b!795242) (not b!795243) (not b!795249))
(check-sat)
