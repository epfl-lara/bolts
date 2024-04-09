; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25950 () Bool)

(assert start!25950)

(declare-fun res!132068 () Bool)

(declare-fun e!173086 () Bool)

(assert (=> start!25950 (=> (not res!132068) (not e!173086))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25950 (= res!132068 (validMask!0 mask!3868))))

(assert (=> start!25950 e!173086))

(declare-datatypes ((array!13036 0))(
  ( (array!13037 (arr!6167 (Array (_ BitVec 32) (_ BitVec 64))) (size!6519 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13036)

(declare-fun array_inv!4121 (array!13036) Bool)

(assert (=> start!25950 (array_inv!4121 a!3325)))

(assert (=> start!25950 true))

(declare-fun b!267751 () Bool)

(declare-fun res!132067 () Bool)

(assert (=> b!267751 (=> (not res!132067) (not e!173086))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267751 (= res!132067 (and (= (size!6519 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6519 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6519 a!3325))))))

(declare-fun b!267752 () Bool)

(declare-fun res!132069 () Bool)

(assert (=> b!267752 (=> (not res!132069) (not e!173086))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267752 (= res!132069 (validKeyInArray!0 k0!2581))))

(declare-fun b!267753 () Bool)

(assert (=> b!267753 (= e!173086 false)))

(declare-fun lt!134756 () Bool)

(declare-datatypes ((List!3996 0))(
  ( (Nil!3993) (Cons!3992 (h!4659 (_ BitVec 64)) (t!9086 List!3996)) )
))
(declare-fun arrayNoDuplicates!0 (array!13036 (_ BitVec 32) List!3996) Bool)

(assert (=> b!267753 (= lt!134756 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3993))))

(assert (= (and start!25950 res!132068) b!267751))

(assert (= (and b!267751 res!132067) b!267752))

(assert (= (and b!267752 res!132069) b!267753))

(declare-fun m!284073 () Bool)

(assert (=> start!25950 m!284073))

(declare-fun m!284075 () Bool)

(assert (=> start!25950 m!284075))

(declare-fun m!284077 () Bool)

(assert (=> b!267752 m!284077))

(declare-fun m!284079 () Bool)

(assert (=> b!267753 m!284079))

(check-sat (not b!267753) (not start!25950) (not b!267752))
