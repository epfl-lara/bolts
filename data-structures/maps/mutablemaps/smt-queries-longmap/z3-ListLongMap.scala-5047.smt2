; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68814 () Bool)

(assert start!68814)

(declare-fun b!801617 () Bool)

(declare-fun e!444347 () Bool)

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!801617 (= e!444347 (not (bvsge mask!3266 #b00000000000000000000000000000000)))))

(declare-fun lt!358383 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43555 0))(
  ( (array!43556 (arr!20854 (Array (_ BitVec 32) (_ BitVec 64))) (size!21275 (_ BitVec 32))) )
))
(declare-fun lt!358381 () array!43555)

(declare-fun a!3170 () array!43555)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun lt!358386 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8452 0))(
  ( (MissingZero!8452 (index!36175 (_ BitVec 32))) (Found!8452 (index!36176 (_ BitVec 32))) (Intermediate!8452 (undefined!9264 Bool) (index!36177 (_ BitVec 32)) (x!67059 (_ BitVec 32))) (Undefined!8452) (MissingVacant!8452 (index!36178 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43555 (_ BitVec 32)) SeekEntryResult!8452)

(assert (=> b!801617 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358383 vacantAfter!23 lt!358386 lt!358381 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358383 vacantBefore!23 (select (arr!20854 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27446 0))(
  ( (Unit!27447) )
))
(declare-fun lt!358382 () Unit!27446)

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43555 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27446)

(assert (=> b!801617 (= lt!358382 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!358383 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801617 (= lt!358383 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801618 () Bool)

(declare-fun res!546307 () Bool)

(declare-fun e!444345 () Bool)

(assert (=> b!801618 (=> (not res!546307) (not e!444345))))

(assert (=> b!801618 (= res!546307 (and (= (size!21275 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21275 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21275 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801619 () Bool)

(declare-fun res!546313 () Bool)

(assert (=> b!801619 (=> (not res!546313) (not e!444345))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801619 (= res!546313 (validKeyInArray!0 (select (arr!20854 a!3170) j!153)))))

(declare-fun b!801620 () Bool)

(declare-fun res!546306 () Bool)

(assert (=> b!801620 (=> (not res!546306) (not e!444345))))

(declare-fun arrayContainsKey!0 (array!43555 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801620 (= res!546306 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801621 () Bool)

(declare-fun e!444346 () Bool)

(assert (=> b!801621 (= e!444345 e!444346)))

(declare-fun res!546314 () Bool)

(assert (=> b!801621 (=> (not res!546314) (not e!444346))))

(declare-fun lt!358387 () SeekEntryResult!8452)

(assert (=> b!801621 (= res!546314 (or (= lt!358387 (MissingZero!8452 i!1163)) (= lt!358387 (MissingVacant!8452 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43555 (_ BitVec 32)) SeekEntryResult!8452)

(assert (=> b!801621 (= lt!358387 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!801622 () Bool)

(declare-fun e!444348 () Bool)

(assert (=> b!801622 (= e!444348 e!444347)))

(declare-fun res!546315 () Bool)

(assert (=> b!801622 (=> (not res!546315) (not e!444347))))

(declare-fun lt!358385 () SeekEntryResult!8452)

(declare-fun lt!358384 () SeekEntryResult!8452)

(assert (=> b!801622 (= res!546315 (and (= lt!358385 lt!358384) (= lt!358384 (Found!8452 j!153)) (not (= (select (arr!20854 a!3170) index!1236) (select (arr!20854 a!3170) j!153)))))))

(assert (=> b!801622 (= lt!358384 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20854 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!801622 (= lt!358385 (seekEntryOrOpen!0 (select (arr!20854 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801624 () Bool)

(assert (=> b!801624 (= e!444346 e!444348)))

(declare-fun res!546309 () Bool)

(assert (=> b!801624 (=> (not res!546309) (not e!444348))))

(assert (=> b!801624 (= res!546309 (= (seekEntryOrOpen!0 lt!358386 lt!358381 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358386 lt!358381 mask!3266)))))

(assert (=> b!801624 (= lt!358386 (select (store (arr!20854 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!801624 (= lt!358381 (array!43556 (store (arr!20854 a!3170) i!1163 k0!2044) (size!21275 a!3170)))))

(declare-fun b!801625 () Bool)

(declare-fun res!546316 () Bool)

(assert (=> b!801625 (=> (not res!546316) (not e!444346))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43555 (_ BitVec 32)) Bool)

(assert (=> b!801625 (= res!546316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801626 () Bool)

(declare-fun res!546310 () Bool)

(assert (=> b!801626 (=> (not res!546310) (not e!444345))))

(assert (=> b!801626 (= res!546310 (validKeyInArray!0 k0!2044))))

(declare-fun b!801627 () Bool)

(declare-fun res!546308 () Bool)

(assert (=> b!801627 (=> (not res!546308) (not e!444346))))

(declare-datatypes ((List!14870 0))(
  ( (Nil!14867) (Cons!14866 (h!15995 (_ BitVec 64)) (t!21193 List!14870)) )
))
(declare-fun arrayNoDuplicates!0 (array!43555 (_ BitVec 32) List!14870) Bool)

(assert (=> b!801627 (= res!546308 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14867))))

(declare-fun b!801623 () Bool)

(declare-fun res!546312 () Bool)

(assert (=> b!801623 (=> (not res!546312) (not e!444346))))

(assert (=> b!801623 (= res!546312 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21275 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20854 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21275 a!3170)) (= (select (arr!20854 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!546311 () Bool)

(assert (=> start!68814 (=> (not res!546311) (not e!444345))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68814 (= res!546311 (validMask!0 mask!3266))))

(assert (=> start!68814 e!444345))

(assert (=> start!68814 true))

(declare-fun array_inv!16628 (array!43555) Bool)

(assert (=> start!68814 (array_inv!16628 a!3170)))

(assert (= (and start!68814 res!546311) b!801618))

(assert (= (and b!801618 res!546307) b!801619))

(assert (= (and b!801619 res!546313) b!801626))

(assert (= (and b!801626 res!546310) b!801620))

(assert (= (and b!801620 res!546306) b!801621))

(assert (= (and b!801621 res!546314) b!801625))

(assert (= (and b!801625 res!546316) b!801627))

(assert (= (and b!801627 res!546308) b!801623))

(assert (= (and b!801623 res!546312) b!801624))

(assert (= (and b!801624 res!546309) b!801622))

(assert (= (and b!801622 res!546315) b!801617))

(declare-fun m!742941 () Bool)

(assert (=> start!68814 m!742941))

(declare-fun m!742943 () Bool)

(assert (=> start!68814 m!742943))

(declare-fun m!742945 () Bool)

(assert (=> b!801617 m!742945))

(declare-fun m!742947 () Bool)

(assert (=> b!801617 m!742947))

(declare-fun m!742949 () Bool)

(assert (=> b!801617 m!742949))

(declare-fun m!742951 () Bool)

(assert (=> b!801617 m!742951))

(assert (=> b!801617 m!742945))

(declare-fun m!742953 () Bool)

(assert (=> b!801617 m!742953))

(declare-fun m!742955 () Bool)

(assert (=> b!801621 m!742955))

(declare-fun m!742957 () Bool)

(assert (=> b!801620 m!742957))

(assert (=> b!801619 m!742945))

(assert (=> b!801619 m!742945))

(declare-fun m!742959 () Bool)

(assert (=> b!801619 m!742959))

(declare-fun m!742961 () Bool)

(assert (=> b!801624 m!742961))

(declare-fun m!742963 () Bool)

(assert (=> b!801624 m!742963))

(declare-fun m!742965 () Bool)

(assert (=> b!801624 m!742965))

(declare-fun m!742967 () Bool)

(assert (=> b!801624 m!742967))

(declare-fun m!742969 () Bool)

(assert (=> b!801622 m!742969))

(assert (=> b!801622 m!742945))

(assert (=> b!801622 m!742945))

(declare-fun m!742971 () Bool)

(assert (=> b!801622 m!742971))

(assert (=> b!801622 m!742945))

(declare-fun m!742973 () Bool)

(assert (=> b!801622 m!742973))

(declare-fun m!742975 () Bool)

(assert (=> b!801626 m!742975))

(declare-fun m!742977 () Bool)

(assert (=> b!801625 m!742977))

(declare-fun m!742979 () Bool)

(assert (=> b!801627 m!742979))

(declare-fun m!742981 () Bool)

(assert (=> b!801623 m!742981))

(declare-fun m!742983 () Bool)

(assert (=> b!801623 m!742983))

(check-sat (not start!68814) (not b!801622) (not b!801625) (not b!801626) (not b!801627) (not b!801624) (not b!801617) (not b!801619) (not b!801621) (not b!801620))
(check-sat)
