; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86796 () Bool)

(assert start!86796)

(declare-fun b!1005748 () Bool)

(declare-fun res!675001 () Bool)

(declare-fun e!566269 () Bool)

(assert (=> b!1005748 (=> (not res!675001) (not e!566269))))

(declare-datatypes ((array!63447 0))(
  ( (array!63448 (arr!30542 (Array (_ BitVec 32) (_ BitVec 64))) (size!31045 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63447)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005748 (= res!675001 (validKeyInArray!0 (select (arr!30542 a!3219) j!170)))))

(declare-fun b!1005749 () Bool)

(declare-fun res!674994 () Bool)

(declare-fun e!566268 () Bool)

(assert (=> b!1005749 (=> (not res!674994) (not e!566268))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9474 0))(
  ( (MissingZero!9474 (index!40266 (_ BitVec 32))) (Found!9474 (index!40267 (_ BitVec 32))) (Intermediate!9474 (undefined!10286 Bool) (index!40268 (_ BitVec 32)) (x!87699 (_ BitVec 32))) (Undefined!9474) (MissingVacant!9474 (index!40269 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63447 (_ BitVec 32)) SeekEntryResult!9474)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1005749 (= res!674994 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30542 a!3219) j!170) mask!3464) (select (arr!30542 a!3219) j!170) a!3219 mask!3464) (Intermediate!9474 false resIndex!38 resX!38)))))

(declare-fun b!1005750 () Bool)

(declare-fun res!674993 () Bool)

(assert (=> b!1005750 (=> (not res!674993) (not e!566268))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1005750 (= res!674993 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31045 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31045 a!3219))))))

(declare-fun b!1005751 () Bool)

(declare-fun res!675000 () Bool)

(assert (=> b!1005751 (=> (not res!675000) (not e!566268))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63447 (_ BitVec 32)) Bool)

(assert (=> b!1005751 (= res!675000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005752 () Bool)

(declare-fun res!674995 () Bool)

(assert (=> b!1005752 (=> (not res!674995) (not e!566269))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005752 (= res!674995 (and (= (size!31045 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31045 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31045 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005753 () Bool)

(declare-fun res!674996 () Bool)

(assert (=> b!1005753 (=> (not res!674996) (not e!566269))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63447 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005753 (= res!674996 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005754 () Bool)

(declare-fun res!674997 () Bool)

(assert (=> b!1005754 (=> (not res!674997) (not e!566268))))

(declare-datatypes ((List!21344 0))(
  ( (Nil!21341) (Cons!21340 (h!22523 (_ BitVec 64)) (t!30353 List!21344)) )
))
(declare-fun arrayNoDuplicates!0 (array!63447 (_ BitVec 32) List!21344) Bool)

(assert (=> b!1005754 (= res!674997 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21341))))

(declare-fun res!674999 () Bool)

(assert (=> start!86796 (=> (not res!674999) (not e!566269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86796 (= res!674999 (validMask!0 mask!3464))))

(assert (=> start!86796 e!566269))

(declare-fun array_inv!23532 (array!63447) Bool)

(assert (=> start!86796 (array_inv!23532 a!3219)))

(assert (=> start!86796 true))

(declare-fun b!1005755 () Bool)

(declare-fun res!674998 () Bool)

(assert (=> b!1005755 (=> (not res!674998) (not e!566269))))

(assert (=> b!1005755 (= res!674998 (validKeyInArray!0 k0!2224))))

(declare-fun b!1005756 () Bool)

(assert (=> b!1005756 (= e!566268 false)))

(declare-fun lt!444590 () SeekEntryResult!9474)

(assert (=> b!1005756 (= lt!444590 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30542 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1005757 () Bool)

(assert (=> b!1005757 (= e!566269 e!566268)))

(declare-fun res!674992 () Bool)

(assert (=> b!1005757 (=> (not res!674992) (not e!566268))))

(declare-fun lt!444591 () SeekEntryResult!9474)

(assert (=> b!1005757 (= res!674992 (or (= lt!444591 (MissingVacant!9474 i!1194)) (= lt!444591 (MissingZero!9474 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63447 (_ BitVec 32)) SeekEntryResult!9474)

(assert (=> b!1005757 (= lt!444591 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(assert (= (and start!86796 res!674999) b!1005752))

(assert (= (and b!1005752 res!674995) b!1005748))

(assert (= (and b!1005748 res!675001) b!1005755))

(assert (= (and b!1005755 res!674998) b!1005753))

(assert (= (and b!1005753 res!674996) b!1005757))

(assert (= (and b!1005757 res!674992) b!1005751))

(assert (= (and b!1005751 res!675000) b!1005754))

(assert (= (and b!1005754 res!674997) b!1005750))

(assert (= (and b!1005750 res!674993) b!1005749))

(assert (= (and b!1005749 res!674994) b!1005756))

(declare-fun m!931017 () Bool)

(assert (=> b!1005754 m!931017))

(declare-fun m!931019 () Bool)

(assert (=> b!1005756 m!931019))

(assert (=> b!1005756 m!931019))

(declare-fun m!931021 () Bool)

(assert (=> b!1005756 m!931021))

(declare-fun m!931023 () Bool)

(assert (=> b!1005755 m!931023))

(declare-fun m!931025 () Bool)

(assert (=> b!1005753 m!931025))

(declare-fun m!931027 () Bool)

(assert (=> start!86796 m!931027))

(declare-fun m!931029 () Bool)

(assert (=> start!86796 m!931029))

(assert (=> b!1005749 m!931019))

(assert (=> b!1005749 m!931019))

(declare-fun m!931031 () Bool)

(assert (=> b!1005749 m!931031))

(assert (=> b!1005749 m!931031))

(assert (=> b!1005749 m!931019))

(declare-fun m!931033 () Bool)

(assert (=> b!1005749 m!931033))

(assert (=> b!1005748 m!931019))

(assert (=> b!1005748 m!931019))

(declare-fun m!931035 () Bool)

(assert (=> b!1005748 m!931035))

(declare-fun m!931037 () Bool)

(assert (=> b!1005757 m!931037))

(declare-fun m!931039 () Bool)

(assert (=> b!1005751 m!931039))

(check-sat (not b!1005755) (not b!1005754) (not b!1005757) (not start!86796) (not b!1005753) (not b!1005749) (not b!1005756) (not b!1005751) (not b!1005748))
(check-sat)
