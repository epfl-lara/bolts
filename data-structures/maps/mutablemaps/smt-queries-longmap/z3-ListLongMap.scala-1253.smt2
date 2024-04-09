; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26088 () Bool)

(assert start!26088)

(declare-fun res!133248 () Bool)

(declare-fun e!173632 () Bool)

(assert (=> start!26088 (=> (not res!133248) (not e!173632))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26088 (= res!133248 (validMask!0 mask!3868))))

(assert (=> start!26088 e!173632))

(declare-datatypes ((array!13174 0))(
  ( (array!13175 (arr!6236 (Array (_ BitVec 32) (_ BitVec 64))) (size!6588 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13174)

(declare-fun array_inv!4190 (array!13174) Bool)

(assert (=> start!26088 (array_inv!4190 a!3325)))

(assert (=> start!26088 true))

(declare-fun b!268927 () Bool)

(declare-fun res!133244 () Bool)

(assert (=> b!268927 (=> (not res!133244) (not e!173632))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13174 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268927 (= res!133244 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!268928 () Bool)

(declare-fun res!133245 () Bool)

(assert (=> b!268928 (=> (not res!133245) (not e!173632))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268928 (= res!133245 (validKeyInArray!0 k0!2581))))

(declare-fun b!268929 () Bool)

(declare-fun res!133247 () Bool)

(assert (=> b!268929 (=> (not res!133247) (not e!173632))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!268929 (= res!133247 (and (= (size!6588 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6588 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6588 a!3325))))))

(declare-fun b!268930 () Bool)

(declare-fun e!173631 () Bool)

(assert (=> b!268930 (= e!173631 false)))

(declare-fun lt!135077 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13174 (_ BitVec 32)) Bool)

(assert (=> b!268930 (= lt!135077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268931 () Bool)

(declare-fun res!133246 () Bool)

(assert (=> b!268931 (=> (not res!133246) (not e!173632))))

(declare-datatypes ((List!4065 0))(
  ( (Nil!4062) (Cons!4061 (h!4728 (_ BitVec 64)) (t!9155 List!4065)) )
))
(declare-fun arrayNoDuplicates!0 (array!13174 (_ BitVec 32) List!4065) Bool)

(assert (=> b!268931 (= res!133246 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4062))))

(declare-fun b!268932 () Bool)

(assert (=> b!268932 (= e!173632 e!173631)))

(declare-fun res!133243 () Bool)

(assert (=> b!268932 (=> (not res!133243) (not e!173631))))

(declare-datatypes ((SeekEntryResult!1405 0))(
  ( (MissingZero!1405 (index!7790 (_ BitVec 32))) (Found!1405 (index!7791 (_ BitVec 32))) (Intermediate!1405 (undefined!2217 Bool) (index!7792 (_ BitVec 32)) (x!26114 (_ BitVec 32))) (Undefined!1405) (MissingVacant!1405 (index!7793 (_ BitVec 32))) )
))
(declare-fun lt!135076 () SeekEntryResult!1405)

(assert (=> b!268932 (= res!133243 (or (= lt!135076 (MissingZero!1405 i!1267)) (= lt!135076 (MissingVacant!1405 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13174 (_ BitVec 32)) SeekEntryResult!1405)

(assert (=> b!268932 (= lt!135076 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(assert (= (and start!26088 res!133248) b!268929))

(assert (= (and b!268929 res!133247) b!268928))

(assert (= (and b!268928 res!133245) b!268931))

(assert (= (and b!268931 res!133246) b!268927))

(assert (= (and b!268927 res!133244) b!268932))

(assert (= (and b!268932 res!133243) b!268930))

(declare-fun m!284979 () Bool)

(assert (=> start!26088 m!284979))

(declare-fun m!284981 () Bool)

(assert (=> start!26088 m!284981))

(declare-fun m!284983 () Bool)

(assert (=> b!268931 m!284983))

(declare-fun m!284985 () Bool)

(assert (=> b!268927 m!284985))

(declare-fun m!284987 () Bool)

(assert (=> b!268930 m!284987))

(declare-fun m!284989 () Bool)

(assert (=> b!268928 m!284989))

(declare-fun m!284991 () Bool)

(assert (=> b!268932 m!284991))

(check-sat (not b!268930) (not b!268931) (not b!268927) (not b!268932) (not start!26088) (not b!268928))
(check-sat)
