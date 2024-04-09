; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86802 () Bool)

(assert start!86802)

(declare-fun b!1005838 () Bool)

(declare-fun res!675091 () Bool)

(declare-fun e!566296 () Bool)

(assert (=> b!1005838 (=> (not res!675091) (not e!566296))))

(declare-datatypes ((array!63453 0))(
  ( (array!63454 (arr!30545 (Array (_ BitVec 32) (_ BitVec 64))) (size!31048 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63453)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63453 (_ BitVec 32)) Bool)

(assert (=> b!1005838 (= res!675091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!675088 () Bool)

(declare-fun e!566295 () Bool)

(assert (=> start!86802 (=> (not res!675088) (not e!566295))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86802 (= res!675088 (validMask!0 mask!3464))))

(assert (=> start!86802 e!566295))

(declare-fun array_inv!23535 (array!63453) Bool)

(assert (=> start!86802 (array_inv!23535 a!3219)))

(assert (=> start!86802 true))

(declare-fun b!1005839 () Bool)

(declare-fun res!675085 () Bool)

(assert (=> b!1005839 (=> (not res!675085) (not e!566296))))

(declare-datatypes ((List!21347 0))(
  ( (Nil!21344) (Cons!21343 (h!22526 (_ BitVec 64)) (t!30356 List!21347)) )
))
(declare-fun arrayNoDuplicates!0 (array!63453 (_ BitVec 32) List!21347) Bool)

(assert (=> b!1005839 (= res!675085 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21344))))

(declare-fun b!1005840 () Bool)

(declare-fun res!675086 () Bool)

(assert (=> b!1005840 (=> (not res!675086) (not e!566296))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9477 0))(
  ( (MissingZero!9477 (index!40278 (_ BitVec 32))) (Found!9477 (index!40279 (_ BitVec 32))) (Intermediate!9477 (undefined!10289 Bool) (index!40280 (_ BitVec 32)) (x!87710 (_ BitVec 32))) (Undefined!9477) (MissingVacant!9477 (index!40281 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63453 (_ BitVec 32)) SeekEntryResult!9477)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005840 (= res!675086 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30545 a!3219) j!170) mask!3464) (select (arr!30545 a!3219) j!170) a!3219 mask!3464) (Intermediate!9477 false resIndex!38 resX!38)))))

(declare-fun b!1005841 () Bool)

(declare-fun res!675084 () Bool)

(assert (=> b!1005841 (=> (not res!675084) (not e!566296))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1005841 (= res!675084 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31048 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31048 a!3219))))))

(declare-fun b!1005842 () Bool)

(declare-fun res!675087 () Bool)

(assert (=> b!1005842 (=> (not res!675087) (not e!566295))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005842 (= res!675087 (validKeyInArray!0 (select (arr!30545 a!3219) j!170)))))

(declare-fun b!1005843 () Bool)

(declare-fun res!675090 () Bool)

(assert (=> b!1005843 (=> (not res!675090) (not e!566295))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63453 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005843 (= res!675090 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005844 () Bool)

(assert (=> b!1005844 (= e!566296 false)))

(declare-fun lt!444609 () SeekEntryResult!9477)

(assert (=> b!1005844 (= lt!444609 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30545 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005845 () Bool)

(declare-fun res!675083 () Bool)

(assert (=> b!1005845 (=> (not res!675083) (not e!566295))))

(assert (=> b!1005845 (= res!675083 (validKeyInArray!0 k0!2224))))

(declare-fun b!1005846 () Bool)

(assert (=> b!1005846 (= e!566295 e!566296)))

(declare-fun res!675082 () Bool)

(assert (=> b!1005846 (=> (not res!675082) (not e!566296))))

(declare-fun lt!444608 () SeekEntryResult!9477)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005846 (= res!675082 (or (= lt!444608 (MissingVacant!9477 i!1194)) (= lt!444608 (MissingZero!9477 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63453 (_ BitVec 32)) SeekEntryResult!9477)

(assert (=> b!1005846 (= lt!444608 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1005847 () Bool)

(declare-fun res!675089 () Bool)

(assert (=> b!1005847 (=> (not res!675089) (not e!566295))))

(assert (=> b!1005847 (= res!675089 (and (= (size!31048 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31048 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31048 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86802 res!675088) b!1005847))

(assert (= (and b!1005847 res!675089) b!1005842))

(assert (= (and b!1005842 res!675087) b!1005845))

(assert (= (and b!1005845 res!675083) b!1005843))

(assert (= (and b!1005843 res!675090) b!1005846))

(assert (= (and b!1005846 res!675082) b!1005838))

(assert (= (and b!1005838 res!675091) b!1005839))

(assert (= (and b!1005839 res!675085) b!1005841))

(assert (= (and b!1005841 res!675084) b!1005840))

(assert (= (and b!1005840 res!675086) b!1005844))

(declare-fun m!931089 () Bool)

(assert (=> b!1005842 m!931089))

(assert (=> b!1005842 m!931089))

(declare-fun m!931091 () Bool)

(assert (=> b!1005842 m!931091))

(assert (=> b!1005840 m!931089))

(assert (=> b!1005840 m!931089))

(declare-fun m!931093 () Bool)

(assert (=> b!1005840 m!931093))

(assert (=> b!1005840 m!931093))

(assert (=> b!1005840 m!931089))

(declare-fun m!931095 () Bool)

(assert (=> b!1005840 m!931095))

(declare-fun m!931097 () Bool)

(assert (=> b!1005843 m!931097))

(declare-fun m!931099 () Bool)

(assert (=> start!86802 m!931099))

(declare-fun m!931101 () Bool)

(assert (=> start!86802 m!931101))

(declare-fun m!931103 () Bool)

(assert (=> b!1005845 m!931103))

(declare-fun m!931105 () Bool)

(assert (=> b!1005839 m!931105))

(assert (=> b!1005844 m!931089))

(assert (=> b!1005844 m!931089))

(declare-fun m!931107 () Bool)

(assert (=> b!1005844 m!931107))

(declare-fun m!931109 () Bool)

(assert (=> b!1005846 m!931109))

(declare-fun m!931111 () Bool)

(assert (=> b!1005838 m!931111))

(check-sat (not b!1005840) (not b!1005839) (not b!1005838) (not b!1005843) (not b!1005846) (not b!1005844) (not b!1005845) (not start!86802) (not b!1005842))
(check-sat)
