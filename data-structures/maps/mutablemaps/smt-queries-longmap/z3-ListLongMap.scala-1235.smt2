; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25980 () Bool)

(assert start!25980)

(declare-fun res!132295 () Bool)

(declare-fun e!173175 () Bool)

(assert (=> start!25980 (=> (not res!132295) (not e!173175))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25980 (= res!132295 (validMask!0 mask!3868))))

(assert (=> start!25980 e!173175))

(declare-datatypes ((array!13066 0))(
  ( (array!13067 (arr!6182 (Array (_ BitVec 32) (_ BitVec 64))) (size!6534 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13066)

(declare-fun array_inv!4136 (array!13066) Bool)

(assert (=> start!25980 (array_inv!4136 a!3325)))

(assert (=> start!25980 true))

(declare-fun b!267977 () Bool)

(declare-fun res!132294 () Bool)

(assert (=> b!267977 (=> (not res!132294) (not e!173175))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267977 (= res!132294 (and (= (size!6534 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6534 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6534 a!3325))))))

(declare-fun b!267978 () Bool)

(declare-fun res!132297 () Bool)

(assert (=> b!267978 (=> (not res!132297) (not e!173175))))

(declare-datatypes ((List!4011 0))(
  ( (Nil!4008) (Cons!4007 (h!4674 (_ BitVec 64)) (t!9101 List!4011)) )
))
(declare-fun arrayNoDuplicates!0 (array!13066 (_ BitVec 32) List!4011) Bool)

(assert (=> b!267978 (= res!132297 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4008))))

(declare-fun b!267979 () Bool)

(declare-fun res!132296 () Bool)

(assert (=> b!267979 (=> (not res!132296) (not e!173175))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13066 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!267979 (= res!132296 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!267980 () Bool)

(declare-fun res!132293 () Bool)

(assert (=> b!267980 (=> (not res!132293) (not e!173175))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267980 (= res!132293 (validKeyInArray!0 k0!2581))))

(declare-fun b!267981 () Bool)

(assert (=> b!267981 (= e!173175 false)))

(declare-datatypes ((SeekEntryResult!1351 0))(
  ( (MissingZero!1351 (index!7574 (_ BitVec 32))) (Found!1351 (index!7575 (_ BitVec 32))) (Intermediate!1351 (undefined!2163 Bool) (index!7576 (_ BitVec 32)) (x!25916 (_ BitVec 32))) (Undefined!1351) (MissingVacant!1351 (index!7577 (_ BitVec 32))) )
))
(declare-fun lt!134792 () SeekEntryResult!1351)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13066 (_ BitVec 32)) SeekEntryResult!1351)

(assert (=> b!267981 (= lt!134792 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(assert (= (and start!25980 res!132295) b!267977))

(assert (= (and b!267977 res!132294) b!267980))

(assert (= (and b!267980 res!132293) b!267978))

(assert (= (and b!267978 res!132297) b!267979))

(assert (= (and b!267979 res!132296) b!267981))

(declare-fun m!284245 () Bool)

(assert (=> b!267980 m!284245))

(declare-fun m!284247 () Bool)

(assert (=> b!267978 m!284247))

(declare-fun m!284249 () Bool)

(assert (=> b!267979 m!284249))

(declare-fun m!284251 () Bool)

(assert (=> b!267981 m!284251))

(declare-fun m!284253 () Bool)

(assert (=> start!25980 m!284253))

(declare-fun m!284255 () Bool)

(assert (=> start!25980 m!284255))

(check-sat (not b!267981) (not b!267980) (not b!267979) (not start!25980) (not b!267978))
