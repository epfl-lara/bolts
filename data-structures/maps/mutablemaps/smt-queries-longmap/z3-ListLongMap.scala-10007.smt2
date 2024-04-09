; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118122 () Bool)

(assert start!118122)

(declare-fun b!1382470 () Bool)

(declare-fun e!783607 () Bool)

(assert (=> b!1382470 (= e!783607 false)))

(declare-fun lt!608383 () Bool)

(declare-datatypes ((array!94402 0))(
  ( (array!94403 (arr!45578 (Array (_ BitVec 32) (_ BitVec 64))) (size!46129 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94402)

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94402 (_ BitVec 32)) Bool)

(assert (=> b!1382470 (= lt!608383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382469 () Bool)

(declare-fun res!924169 () Bool)

(assert (=> b!1382469 (=> (not res!924169) (not e!783607))))

(declare-datatypes ((List!32292 0))(
  ( (Nil!32289) (Cons!32288 (h!33497 (_ BitVec 64)) (t!46993 List!32292)) )
))
(declare-fun arrayNoDuplicates!0 (array!94402 (_ BitVec 32) List!32292) Bool)

(assert (=> b!1382469 (= res!924169 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32289))))

(declare-fun b!1382467 () Bool)

(declare-fun res!924170 () Bool)

(assert (=> b!1382467 (=> (not res!924170) (not e!783607))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382467 (= res!924170 (and (= (size!46129 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46129 a!2971))))))

(declare-fun b!1382468 () Bool)

(declare-fun res!924168 () Bool)

(assert (=> b!1382468 (=> (not res!924168) (not e!783607))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382468 (= res!924168 (validKeyInArray!0 (select (arr!45578 a!2971) i!1094)))))

(declare-fun res!924171 () Bool)

(assert (=> start!118122 (=> (not res!924171) (not e!783607))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118122 (= res!924171 (validMask!0 mask!3034))))

(assert (=> start!118122 e!783607))

(assert (=> start!118122 true))

(declare-fun array_inv!34523 (array!94402) Bool)

(assert (=> start!118122 (array_inv!34523 a!2971)))

(assert (= (and start!118122 res!924171) b!1382467))

(assert (= (and b!1382467 res!924170) b!1382468))

(assert (= (and b!1382468 res!924168) b!1382469))

(assert (= (and b!1382469 res!924169) b!1382470))

(declare-fun m!1267659 () Bool)

(assert (=> b!1382470 m!1267659))

(declare-fun m!1267661 () Bool)

(assert (=> b!1382469 m!1267661))

(declare-fun m!1267663 () Bool)

(assert (=> b!1382468 m!1267663))

(assert (=> b!1382468 m!1267663))

(declare-fun m!1267665 () Bool)

(assert (=> b!1382468 m!1267665))

(declare-fun m!1267667 () Bool)

(assert (=> start!118122 m!1267667))

(declare-fun m!1267669 () Bool)

(assert (=> start!118122 m!1267669))

(check-sat (not b!1382468) (not b!1382470) (not start!118122) (not b!1382469))
