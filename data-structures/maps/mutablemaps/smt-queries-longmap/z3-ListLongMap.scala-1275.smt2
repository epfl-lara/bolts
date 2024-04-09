; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26220 () Bool)

(assert start!26220)

(declare-fun b!270978 () Bool)

(declare-fun res!135013 () Bool)

(declare-fun e!174442 () Bool)

(assert (=> b!270978 (=> (not res!135013) (not e!174442))))

(declare-datatypes ((array!13306 0))(
  ( (array!13307 (arr!6302 (Array (_ BitVec 32) (_ BitVec 64))) (size!6654 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13306)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!270978 (= res!135013 (and (= (size!6654 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6654 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6654 a!3325))))))

(declare-fun b!270979 () Bool)

(declare-fun res!135018 () Bool)

(declare-fun e!174440 () Bool)

(assert (=> b!270979 (=> (not res!135018) (not e!174440))))

(declare-datatypes ((List!4131 0))(
  ( (Nil!4128) (Cons!4127 (h!4794 (_ BitVec 64)) (t!9221 List!4131)) )
))
(declare-fun contains!1940 (List!4131 (_ BitVec 64)) Bool)

(assert (=> b!270979 (= res!135018 (not (contains!1940 Nil!4128 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270980 () Bool)

(declare-fun res!135008 () Bool)

(assert (=> b!270980 (=> (not res!135008) (not e!174442))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13306 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270980 (= res!135008 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270981 () Bool)

(assert (=> b!270981 (= e!174442 e!174440)))

(declare-fun res!135012 () Bool)

(assert (=> b!270981 (=> (not res!135012) (not e!174440))))

(declare-datatypes ((SeekEntryResult!1471 0))(
  ( (MissingZero!1471 (index!8054 (_ BitVec 32))) (Found!1471 (index!8055 (_ BitVec 32))) (Intermediate!1471 (undefined!2283 Bool) (index!8056 (_ BitVec 32)) (x!26356 (_ BitVec 32))) (Undefined!1471) (MissingVacant!1471 (index!8057 (_ BitVec 32))) )
))
(declare-fun lt!135760 () SeekEntryResult!1471)

(assert (=> b!270981 (= res!135012 (or (= lt!135760 (MissingZero!1471 i!1267)) (= lt!135760 (MissingVacant!1471 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13306 (_ BitVec 32)) SeekEntryResult!1471)

(assert (=> b!270981 (= lt!135760 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!270982 () Bool)

(assert (=> b!270982 (= e!174440 false)))

(declare-fun lt!135761 () Bool)

(assert (=> b!270982 (= lt!135761 (contains!1940 Nil!4128 k0!2581))))

(declare-fun b!270983 () Bool)

(declare-fun res!135016 () Bool)

(assert (=> b!270983 (=> (not res!135016) (not e!174440))))

(assert (=> b!270983 (= res!135016 (not (= startIndex!26 i!1267)))))

(declare-fun b!270984 () Bool)

(declare-fun res!135010 () Bool)

(assert (=> b!270984 (=> (not res!135010) (not e!174440))))

(assert (=> b!270984 (= res!135010 (and (bvslt (size!6654 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6654 a!3325))))))

(declare-fun b!270985 () Bool)

(declare-fun res!135011 () Bool)

(assert (=> b!270985 (=> (not res!135011) (not e!174442))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270985 (= res!135011 (validKeyInArray!0 k0!2581))))

(declare-fun b!270986 () Bool)

(declare-fun res!135009 () Bool)

(assert (=> b!270986 (=> (not res!135009) (not e!174440))))

(assert (=> b!270986 (= res!135009 (not (contains!1940 Nil!4128 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270987 () Bool)

(declare-fun res!135015 () Bool)

(assert (=> b!270987 (=> (not res!135015) (not e!174440))))

(declare-fun noDuplicate!129 (List!4131) Bool)

(assert (=> b!270987 (= res!135015 (noDuplicate!129 Nil!4128))))

(declare-fun res!135006 () Bool)

(assert (=> start!26220 (=> (not res!135006) (not e!174442))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26220 (= res!135006 (validMask!0 mask!3868))))

(assert (=> start!26220 e!174442))

(declare-fun array_inv!4256 (array!13306) Bool)

(assert (=> start!26220 (array_inv!4256 a!3325)))

(assert (=> start!26220 true))

(declare-fun b!270988 () Bool)

(declare-fun res!135014 () Bool)

(assert (=> b!270988 (=> (not res!135014) (not e!174442))))

(declare-fun arrayNoDuplicates!0 (array!13306 (_ BitVec 32) List!4131) Bool)

(assert (=> b!270988 (= res!135014 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4128))))

(declare-fun b!270989 () Bool)

(declare-fun res!135017 () Bool)

(assert (=> b!270989 (=> (not res!135017) (not e!174440))))

(assert (=> b!270989 (= res!135017 (validKeyInArray!0 (select (arr!6302 a!3325) startIndex!26)))))

(declare-fun b!270990 () Bool)

(declare-fun res!135007 () Bool)

(assert (=> b!270990 (=> (not res!135007) (not e!174440))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13306 (_ BitVec 32)) Bool)

(assert (=> b!270990 (= res!135007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26220 res!135006) b!270978))

(assert (= (and b!270978 res!135013) b!270985))

(assert (= (and b!270985 res!135011) b!270988))

(assert (= (and b!270988 res!135014) b!270980))

(assert (= (and b!270980 res!135008) b!270981))

(assert (= (and b!270981 res!135012) b!270990))

(assert (= (and b!270990 res!135007) b!270983))

(assert (= (and b!270983 res!135016) b!270989))

(assert (= (and b!270989 res!135017) b!270984))

(assert (= (and b!270984 res!135010) b!270987))

(assert (= (and b!270987 res!135015) b!270986))

(assert (= (and b!270986 res!135009) b!270979))

(assert (= (and b!270979 res!135018) b!270982))

(declare-fun m!286443 () Bool)

(assert (=> b!270986 m!286443))

(declare-fun m!286445 () Bool)

(assert (=> b!270981 m!286445))

(declare-fun m!286447 () Bool)

(assert (=> start!26220 m!286447))

(declare-fun m!286449 () Bool)

(assert (=> start!26220 m!286449))

(declare-fun m!286451 () Bool)

(assert (=> b!270989 m!286451))

(assert (=> b!270989 m!286451))

(declare-fun m!286453 () Bool)

(assert (=> b!270989 m!286453))

(declare-fun m!286455 () Bool)

(assert (=> b!270979 m!286455))

(declare-fun m!286457 () Bool)

(assert (=> b!270988 m!286457))

(declare-fun m!286459 () Bool)

(assert (=> b!270982 m!286459))

(declare-fun m!286461 () Bool)

(assert (=> b!270985 m!286461))

(declare-fun m!286463 () Bool)

(assert (=> b!270987 m!286463))

(declare-fun m!286465 () Bool)

(assert (=> b!270980 m!286465))

(declare-fun m!286467 () Bool)

(assert (=> b!270990 m!286467))

(check-sat (not b!270985) (not b!270979) (not b!270980) (not b!270990) (not b!270989) (not start!26220) (not b!270982) (not b!270981) (not b!270987) (not b!270988) (not b!270986))
(check-sat)
