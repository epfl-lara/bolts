; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45978 () Bool)

(assert start!45978)

(declare-fun b!508671 () Bool)

(declare-fun res!309666 () Bool)

(declare-fun e!297561 () Bool)

(assert (=> b!508671 (=> (not res!309666) (not e!297561))))

(declare-datatypes ((array!32649 0))(
  ( (array!32650 (arr!15700 (Array (_ BitVec 32) (_ BitVec 64))) (size!16064 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32649)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32649 (_ BitVec 32)) Bool)

(assert (=> b!508671 (= res!309666 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!508672 () Bool)

(assert (=> b!508672 (= e!297561 (not true))))

(declare-fun e!297562 () Bool)

(assert (=> b!508672 e!297562))

(declare-fun res!309671 () Bool)

(assert (=> b!508672 (=> (not res!309671) (not e!297562))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!508672 (= res!309671 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15598 0))(
  ( (Unit!15599) )
))
(declare-fun lt!232340 () Unit!15598)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32649 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15598)

(assert (=> b!508672 (= lt!232340 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!508673 () Bool)

(declare-fun res!309670 () Bool)

(declare-fun e!297560 () Bool)

(assert (=> b!508673 (=> (not res!309670) (not e!297560))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!508673 (= res!309670 (validKeyInArray!0 (select (arr!15700 a!3235) j!176)))))

(declare-fun b!508674 () Bool)

(declare-fun res!309667 () Bool)

(assert (=> b!508674 (=> (not res!309667) (not e!297561))))

(declare-datatypes ((List!9911 0))(
  ( (Nil!9908) (Cons!9907 (h!10784 (_ BitVec 64)) (t!16147 List!9911)) )
))
(declare-fun arrayNoDuplicates!0 (array!32649 (_ BitVec 32) List!9911) Bool)

(assert (=> b!508674 (= res!309667 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9908))))

(declare-fun b!508675 () Bool)

(declare-fun res!309668 () Bool)

(assert (=> b!508675 (=> (not res!309668) (not e!297560))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!508675 (= res!309668 (and (= (size!16064 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16064 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16064 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!508676 () Bool)

(declare-fun res!309672 () Bool)

(assert (=> b!508676 (=> (not res!309672) (not e!297560))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!508676 (= res!309672 (validKeyInArray!0 k0!2280))))

(declare-fun b!508677 () Bool)

(assert (=> b!508677 (= e!297560 e!297561)))

(declare-fun res!309669 () Bool)

(assert (=> b!508677 (=> (not res!309669) (not e!297561))))

(declare-datatypes ((SeekEntryResult!4174 0))(
  ( (MissingZero!4174 (index!18884 (_ BitVec 32))) (Found!4174 (index!18885 (_ BitVec 32))) (Intermediate!4174 (undefined!4986 Bool) (index!18886 (_ BitVec 32)) (x!47890 (_ BitVec 32))) (Undefined!4174) (MissingVacant!4174 (index!18887 (_ BitVec 32))) )
))
(declare-fun lt!232339 () SeekEntryResult!4174)

(assert (=> b!508677 (= res!309669 (or (= lt!232339 (MissingZero!4174 i!1204)) (= lt!232339 (MissingVacant!4174 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32649 (_ BitVec 32)) SeekEntryResult!4174)

(assert (=> b!508677 (= lt!232339 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!508678 () Bool)

(declare-fun res!309673 () Bool)

(assert (=> b!508678 (=> (not res!309673) (not e!297560))))

(declare-fun arrayContainsKey!0 (array!32649 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!508678 (= res!309673 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!309674 () Bool)

(assert (=> start!45978 (=> (not res!309674) (not e!297560))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45978 (= res!309674 (validMask!0 mask!3524))))

(assert (=> start!45978 e!297560))

(assert (=> start!45978 true))

(declare-fun array_inv!11474 (array!32649) Bool)

(assert (=> start!45978 (array_inv!11474 a!3235)))

(declare-fun b!508679 () Bool)

(assert (=> b!508679 (= e!297562 (= (seekEntryOrOpen!0 (select (arr!15700 a!3235) j!176) a!3235 mask!3524) (Found!4174 j!176)))))

(assert (= (and start!45978 res!309674) b!508675))

(assert (= (and b!508675 res!309668) b!508673))

(assert (= (and b!508673 res!309670) b!508676))

(assert (= (and b!508676 res!309672) b!508678))

(assert (= (and b!508678 res!309673) b!508677))

(assert (= (and b!508677 res!309669) b!508671))

(assert (= (and b!508671 res!309666) b!508674))

(assert (= (and b!508674 res!309667) b!508672))

(assert (= (and b!508672 res!309671) b!508679))

(declare-fun m!489445 () Bool)

(assert (=> b!508676 m!489445))

(declare-fun m!489447 () Bool)

(assert (=> b!508671 m!489447))

(declare-fun m!489449 () Bool)

(assert (=> b!508679 m!489449))

(assert (=> b!508679 m!489449))

(declare-fun m!489451 () Bool)

(assert (=> b!508679 m!489451))

(declare-fun m!489453 () Bool)

(assert (=> start!45978 m!489453))

(declare-fun m!489455 () Bool)

(assert (=> start!45978 m!489455))

(assert (=> b!508673 m!489449))

(assert (=> b!508673 m!489449))

(declare-fun m!489457 () Bool)

(assert (=> b!508673 m!489457))

(declare-fun m!489459 () Bool)

(assert (=> b!508672 m!489459))

(declare-fun m!489461 () Bool)

(assert (=> b!508672 m!489461))

(declare-fun m!489463 () Bool)

(assert (=> b!508677 m!489463))

(declare-fun m!489465 () Bool)

(assert (=> b!508674 m!489465))

(declare-fun m!489467 () Bool)

(assert (=> b!508678 m!489467))

(check-sat (not b!508673) (not b!508671) (not start!45978) (not b!508676) (not b!508672) (not b!508674) (not b!508678) (not b!508677) (not b!508679))
(check-sat)
