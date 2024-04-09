; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25932 () Bool)

(assert start!25932)

(declare-fun res!131968 () Bool)

(declare-fun e!173032 () Bool)

(assert (=> start!25932 (=> (not res!131968) (not e!173032))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25932 (= res!131968 (validMask!0 mask!3868))))

(assert (=> start!25932 e!173032))

(declare-datatypes ((array!13018 0))(
  ( (array!13019 (arr!6158 (Array (_ BitVec 32) (_ BitVec 64))) (size!6510 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13018)

(declare-fun array_inv!4112 (array!13018) Bool)

(assert (=> start!25932 (array_inv!4112 a!3325)))

(assert (=> start!25932 true))

(declare-fun b!267652 () Bool)

(declare-fun res!131970 () Bool)

(assert (=> b!267652 (=> (not res!131970) (not e!173032))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!267652 (= res!131970 (and (= (size!6510 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6510 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6510 a!3325))))))

(declare-fun b!267653 () Bool)

(declare-fun res!131969 () Bool)

(assert (=> b!267653 (=> (not res!131969) (not e!173032))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!267653 (= res!131969 (validKeyInArray!0 k0!2581))))

(declare-fun b!267654 () Bool)

(assert (=> b!267654 (= e!173032 false)))

(declare-fun lt!134738 () Bool)

(declare-datatypes ((List!3987 0))(
  ( (Nil!3984) (Cons!3983 (h!4650 (_ BitVec 64)) (t!9077 List!3987)) )
))
(declare-fun arrayNoDuplicates!0 (array!13018 (_ BitVec 32) List!3987) Bool)

(assert (=> b!267654 (= lt!134738 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!3984))))

(assert (= (and start!25932 res!131968) b!267652))

(assert (= (and b!267652 res!131970) b!267653))

(assert (= (and b!267653 res!131969) b!267654))

(declare-fun m!283995 () Bool)

(assert (=> start!25932 m!283995))

(declare-fun m!283997 () Bool)

(assert (=> start!25932 m!283997))

(declare-fun m!283999 () Bool)

(assert (=> b!267653 m!283999))

(declare-fun m!284001 () Bool)

(assert (=> b!267654 m!284001))

(check-sat (not b!267653) (not start!25932) (not b!267654))
