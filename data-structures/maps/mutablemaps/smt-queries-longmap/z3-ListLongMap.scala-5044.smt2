; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68796 () Bool)

(assert start!68796)

(declare-fun b!801294 () Bool)

(declare-fun res!545989 () Bool)

(declare-fun e!444201 () Bool)

(assert (=> b!801294 (=> (not res!545989) (not e!444201))))

(declare-datatypes ((array!43537 0))(
  ( (array!43538 (arr!20845 (Array (_ BitVec 32) (_ BitVec 64))) (size!21266 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43537)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43537 (_ BitVec 32)) Bool)

(assert (=> b!801294 (= res!545989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801295 () Bool)

(declare-fun res!545991 () Bool)

(assert (=> b!801295 (=> (not res!545991) (not e!444201))))

(declare-datatypes ((List!14861 0))(
  ( (Nil!14858) (Cons!14857 (h!15986 (_ BitVec 64)) (t!21184 List!14861)) )
))
(declare-fun arrayNoDuplicates!0 (array!43537 (_ BitVec 32) List!14861) Bool)

(assert (=> b!801295 (= res!545991 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14858))))

(declare-fun b!801296 () Bool)

(declare-fun res!545992 () Bool)

(declare-fun e!444199 () Bool)

(assert (=> b!801296 (=> (not res!545992) (not e!444199))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!358183 () (_ BitVec 64))

(declare-fun lt!358184 () array!43537)

(declare-datatypes ((SeekEntryResult!8443 0))(
  ( (MissingZero!8443 (index!36139 (_ BitVec 32))) (Found!8443 (index!36140 (_ BitVec 32))) (Intermediate!8443 (undefined!9255 Bool) (index!36141 (_ BitVec 32)) (x!67026 (_ BitVec 32))) (Undefined!8443) (MissingVacant!8443 (index!36142 (_ BitVec 32))) )
))
(declare-fun lt!358186 () SeekEntryResult!8443)

(declare-fun lt!358181 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43537 (_ BitVec 32)) SeekEntryResult!8443)

(assert (=> b!801296 (= res!545992 (= lt!358186 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358181 vacantAfter!23 lt!358183 lt!358184 mask!3266)))))

(declare-fun b!801297 () Bool)

(declare-fun e!444202 () Bool)

(declare-fun e!444198 () Bool)

(assert (=> b!801297 (= e!444202 e!444198)))

(declare-fun res!545986 () Bool)

(assert (=> b!801297 (=> (not res!545986) (not e!444198))))

(declare-fun lt!358185 () SeekEntryResult!8443)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!358180 () SeekEntryResult!8443)

(assert (=> b!801297 (= res!545986 (and (= lt!358180 lt!358185) (= lt!358185 (Found!8443 j!153)) (not (= (select (arr!20845 a!3170) index!1236) (select (arr!20845 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!801297 (= lt!358185 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20845 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43537 (_ BitVec 32)) SeekEntryResult!8443)

(assert (=> b!801297 (= lt!358180 (seekEntryOrOpen!0 (select (arr!20845 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801298 () Bool)

(assert (=> b!801298 (= e!444201 e!444202)))

(declare-fun res!545984 () Bool)

(assert (=> b!801298 (=> (not res!545984) (not e!444202))))

(assert (=> b!801298 (= res!545984 (= lt!358186 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358183 lt!358184 mask!3266)))))

(assert (=> b!801298 (= lt!358186 (seekEntryOrOpen!0 lt!358183 lt!358184 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!801298 (= lt!358183 (select (store (arr!20845 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!801298 (= lt!358184 (array!43538 (store (arr!20845 a!3170) i!1163 k0!2044) (size!21266 a!3170)))))

(declare-fun b!801299 () Bool)

(declare-fun res!545993 () Bool)

(declare-fun e!444197 () Bool)

(assert (=> b!801299 (=> (not res!545993) (not e!444197))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801299 (= res!545993 (validKeyInArray!0 (select (arr!20845 a!3170) j!153)))))

(declare-fun b!801300 () Bool)

(assert (=> b!801300 (= e!444197 e!444201)))

(declare-fun res!545990 () Bool)

(assert (=> b!801300 (=> (not res!545990) (not e!444201))))

(declare-fun lt!358182 () SeekEntryResult!8443)

(assert (=> b!801300 (= res!545990 (or (= lt!358182 (MissingZero!8443 i!1163)) (= lt!358182 (MissingVacant!8443 i!1163))))))

(assert (=> b!801300 (= lt!358182 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!801301 () Bool)

(declare-fun res!545995 () Bool)

(assert (=> b!801301 (=> (not res!545995) (not e!444197))))

(declare-fun arrayContainsKey!0 (array!43537 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801301 (= res!545995 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801302 () Bool)

(assert (=> b!801302 (= e!444199 false)))

(declare-fun lt!358179 () SeekEntryResult!8443)

(assert (=> b!801302 (= lt!358179 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358181 vacantBefore!23 (select (arr!20845 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801303 () Bool)

(declare-fun res!545985 () Bool)

(assert (=> b!801303 (=> (not res!545985) (not e!444197))))

(assert (=> b!801303 (= res!545985 (and (= (size!21266 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21266 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21266 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801304 () Bool)

(assert (=> b!801304 (= e!444198 e!444199)))

(declare-fun res!545983 () Bool)

(assert (=> b!801304 (=> (not res!545983) (not e!444199))))

(assert (=> b!801304 (= res!545983 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!358181 #b00000000000000000000000000000000) (bvslt lt!358181 (size!21266 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801304 (= lt!358181 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801305 () Bool)

(declare-fun res!545988 () Bool)

(assert (=> b!801305 (=> (not res!545988) (not e!444197))))

(assert (=> b!801305 (= res!545988 (validKeyInArray!0 k0!2044))))

(declare-fun res!545987 () Bool)

(assert (=> start!68796 (=> (not res!545987) (not e!444197))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68796 (= res!545987 (validMask!0 mask!3266))))

(assert (=> start!68796 e!444197))

(assert (=> start!68796 true))

(declare-fun array_inv!16619 (array!43537) Bool)

(assert (=> start!68796 (array_inv!16619 a!3170)))

(declare-fun b!801306 () Bool)

(declare-fun res!545994 () Bool)

(assert (=> b!801306 (=> (not res!545994) (not e!444201))))

(assert (=> b!801306 (= res!545994 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21266 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20845 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21266 a!3170)) (= (select (arr!20845 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!68796 res!545987) b!801303))

(assert (= (and b!801303 res!545985) b!801299))

(assert (= (and b!801299 res!545993) b!801305))

(assert (= (and b!801305 res!545988) b!801301))

(assert (= (and b!801301 res!545995) b!801300))

(assert (= (and b!801300 res!545990) b!801294))

(assert (= (and b!801294 res!545989) b!801295))

(assert (= (and b!801295 res!545991) b!801306))

(assert (= (and b!801306 res!545994) b!801298))

(assert (= (and b!801298 res!545984) b!801297))

(assert (= (and b!801297 res!545986) b!801304))

(assert (= (and b!801304 res!545983) b!801296))

(assert (= (and b!801296 res!545992) b!801302))

(declare-fun m!742555 () Bool)

(assert (=> b!801306 m!742555))

(declare-fun m!742557 () Bool)

(assert (=> b!801306 m!742557))

(declare-fun m!742559 () Bool)

(assert (=> b!801299 m!742559))

(assert (=> b!801299 m!742559))

(declare-fun m!742561 () Bool)

(assert (=> b!801299 m!742561))

(declare-fun m!742563 () Bool)

(assert (=> b!801300 m!742563))

(declare-fun m!742565 () Bool)

(assert (=> b!801301 m!742565))

(declare-fun m!742567 () Bool)

(assert (=> b!801294 m!742567))

(declare-fun m!742569 () Bool)

(assert (=> b!801305 m!742569))

(declare-fun m!742571 () Bool)

(assert (=> b!801296 m!742571))

(assert (=> b!801302 m!742559))

(assert (=> b!801302 m!742559))

(declare-fun m!742573 () Bool)

(assert (=> b!801302 m!742573))

(declare-fun m!742575 () Bool)

(assert (=> b!801295 m!742575))

(declare-fun m!742577 () Bool)

(assert (=> start!68796 m!742577))

(declare-fun m!742579 () Bool)

(assert (=> start!68796 m!742579))

(declare-fun m!742581 () Bool)

(assert (=> b!801304 m!742581))

(declare-fun m!742583 () Bool)

(assert (=> b!801297 m!742583))

(assert (=> b!801297 m!742559))

(assert (=> b!801297 m!742559))

(declare-fun m!742585 () Bool)

(assert (=> b!801297 m!742585))

(assert (=> b!801297 m!742559))

(declare-fun m!742587 () Bool)

(assert (=> b!801297 m!742587))

(declare-fun m!742589 () Bool)

(assert (=> b!801298 m!742589))

(declare-fun m!742591 () Bool)

(assert (=> b!801298 m!742591))

(declare-fun m!742593 () Bool)

(assert (=> b!801298 m!742593))

(declare-fun m!742595 () Bool)

(assert (=> b!801298 m!742595))

(check-sat (not b!801302) (not start!68796) (not b!801294) (not b!801300) (not b!801298) (not b!801305) (not b!801295) (not b!801301) (not b!801299) (not b!801304) (not b!801296) (not b!801297))
(check-sat)
