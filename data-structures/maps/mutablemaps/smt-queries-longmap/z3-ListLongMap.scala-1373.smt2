; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27102 () Bool)

(assert start!27102)

(declare-fun b!279865 () Bool)

(declare-fun res!142983 () Bool)

(declare-fun e!178399 () Bool)

(assert (=> b!279865 (=> (not res!142983) (not e!178399))))

(declare-datatypes ((array!13909 0))(
  ( (array!13910 (arr!6596 (Array (_ BitVec 32) (_ BitVec 64))) (size!6948 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13909)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13909 (_ BitVec 32)) Bool)

(assert (=> b!279865 (= res!142983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!279866 () Bool)

(declare-fun res!142979 () Bool)

(assert (=> b!279866 (=> (not res!142979) (not e!178399))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!279866 (= res!142979 (validKeyInArray!0 (select (arr!6596 a!3325) startIndex!26)))))

(declare-fun b!279867 () Bool)

(declare-fun res!142976 () Bool)

(assert (=> b!279867 (=> (not res!142976) (not e!178399))))

(declare-datatypes ((List!4425 0))(
  ( (Nil!4422) (Cons!4421 (h!5091 (_ BitVec 64)) (t!9515 List!4425)) )
))
(declare-fun contains!1975 (List!4425 (_ BitVec 64)) Bool)

(assert (=> b!279867 (= res!142976 (not (contains!1975 Nil!4422 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!279868 () Bool)

(declare-fun res!142975 () Bool)

(assert (=> b!279868 (=> (not res!142975) (not e!178399))))

(declare-fun noDuplicate!159 (List!4425) Bool)

(assert (=> b!279868 (= res!142975 (noDuplicate!159 Nil!4422))))

(declare-fun b!279869 () Bool)

(declare-fun res!142977 () Bool)

(assert (=> b!279869 (=> (not res!142977) (not e!178399))))

(assert (=> b!279869 (= res!142977 (not (contains!1975 Nil!4422 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!279870 () Bool)

(declare-fun e!178397 () Bool)

(assert (=> b!279870 (= e!178397 e!178399)))

(declare-fun res!142971 () Bool)

(assert (=> b!279870 (=> (not res!142971) (not e!178399))))

(declare-datatypes ((SeekEntryResult!1765 0))(
  ( (MissingZero!1765 (index!9230 (_ BitVec 32))) (Found!1765 (index!9231 (_ BitVec 32))) (Intermediate!1765 (undefined!2577 Bool) (index!9232 (_ BitVec 32)) (x!27443 (_ BitVec 32))) (Undefined!1765) (MissingVacant!1765 (index!9233 (_ BitVec 32))) )
))
(declare-fun lt!138767 () SeekEntryResult!1765)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!279870 (= res!142971 (or (= lt!138767 (MissingZero!1765 i!1267)) (= lt!138767 (MissingVacant!1765 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13909 (_ BitVec 32)) SeekEntryResult!1765)

(assert (=> b!279870 (= lt!138767 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!279871 () Bool)

(declare-fun res!142978 () Bool)

(assert (=> b!279871 (=> (not res!142978) (not e!178397))))

(assert (=> b!279871 (= res!142978 (validKeyInArray!0 k0!2581))))

(declare-fun b!279872 () Bool)

(assert (=> b!279872 (= e!178399 false)))

(declare-fun lt!138766 () Bool)

(assert (=> b!279872 (= lt!138766 (contains!1975 Nil!4422 k0!2581))))

(declare-fun b!279873 () Bool)

(declare-fun res!142972 () Bool)

(assert (=> b!279873 (=> (not res!142972) (not e!178397))))

(declare-fun arrayNoDuplicates!0 (array!13909 (_ BitVec 32) List!4425) Bool)

(assert (=> b!279873 (= res!142972 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4422))))

(declare-fun b!279874 () Bool)

(declare-fun res!142973 () Bool)

(assert (=> b!279874 (=> (not res!142973) (not e!178397))))

(assert (=> b!279874 (= res!142973 (and (= (size!6948 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6948 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6948 a!3325))))))

(declare-fun res!142974 () Bool)

(assert (=> start!27102 (=> (not res!142974) (not e!178397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27102 (= res!142974 (validMask!0 mask!3868))))

(assert (=> start!27102 e!178397))

(declare-fun array_inv!4550 (array!13909) Bool)

(assert (=> start!27102 (array_inv!4550 a!3325)))

(assert (=> start!27102 true))

(declare-fun b!279864 () Bool)

(declare-fun res!142982 () Bool)

(assert (=> b!279864 (=> (not res!142982) (not e!178397))))

(declare-fun arrayContainsKey!0 (array!13909 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!279864 (= res!142982 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!279875 () Bool)

(declare-fun res!142981 () Bool)

(assert (=> b!279875 (=> (not res!142981) (not e!178399))))

(assert (=> b!279875 (= res!142981 (and (bvslt (size!6948 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6948 a!3325))))))

(declare-fun b!279876 () Bool)

(declare-fun res!142980 () Bool)

(assert (=> b!279876 (=> (not res!142980) (not e!178399))))

(assert (=> b!279876 (= res!142980 (not (= startIndex!26 i!1267)))))

(assert (= (and start!27102 res!142974) b!279874))

(assert (= (and b!279874 res!142973) b!279871))

(assert (= (and b!279871 res!142978) b!279873))

(assert (= (and b!279873 res!142972) b!279864))

(assert (= (and b!279864 res!142982) b!279870))

(assert (= (and b!279870 res!142971) b!279865))

(assert (= (and b!279865 res!142983) b!279876))

(assert (= (and b!279876 res!142980) b!279866))

(assert (= (and b!279866 res!142979) b!279875))

(assert (= (and b!279875 res!142981) b!279868))

(assert (= (and b!279868 res!142975) b!279869))

(assert (= (and b!279869 res!142977) b!279867))

(assert (= (and b!279867 res!142976) b!279872))

(declare-fun m!294513 () Bool)

(assert (=> b!279868 m!294513))

(declare-fun m!294515 () Bool)

(assert (=> b!279870 m!294515))

(declare-fun m!294517 () Bool)

(assert (=> b!279865 m!294517))

(declare-fun m!294519 () Bool)

(assert (=> b!279869 m!294519))

(declare-fun m!294521 () Bool)

(assert (=> b!279864 m!294521))

(declare-fun m!294523 () Bool)

(assert (=> b!279873 m!294523))

(declare-fun m!294525 () Bool)

(assert (=> start!27102 m!294525))

(declare-fun m!294527 () Bool)

(assert (=> start!27102 m!294527))

(declare-fun m!294529 () Bool)

(assert (=> b!279872 m!294529))

(declare-fun m!294531 () Bool)

(assert (=> b!279867 m!294531))

(declare-fun m!294533 () Bool)

(assert (=> b!279866 m!294533))

(assert (=> b!279866 m!294533))

(declare-fun m!294535 () Bool)

(assert (=> b!279866 m!294535))

(declare-fun m!294537 () Bool)

(assert (=> b!279871 m!294537))

(check-sat (not b!279867) (not b!279872) (not b!279868) (not b!279865) (not b!279870) (not b!279873) (not start!27102) (not b!279869) (not b!279864) (not b!279871) (not b!279866))
(check-sat)
