; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131520 () Bool)

(assert start!131520)

(declare-fun res!1057672 () Bool)

(declare-fun e!857036 () Bool)

(assert (=> start!131520 (=> (not res!1057672) (not e!857036))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131520 (= res!1057672 (validMask!0 mask!4052))))

(assert (=> start!131520 e!857036))

(assert (=> start!131520 true))

(declare-datatypes ((array!102350 0))(
  ( (array!102351 (arr!49379 (Array (_ BitVec 32) (_ BitVec 64))) (size!49930 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102350)

(declare-fun array_inv!38324 (array!102350) Bool)

(assert (=> start!131520 (array_inv!38324 a!3920)))

(declare-fun b!1540986 () Bool)

(declare-fun res!1057673 () Bool)

(assert (=> b!1540986 (=> (not res!1057673) (not e!857036))))

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1540986 (= res!1057673 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49930 a!3920))))))

(declare-fun b!1540987 () Bool)

(declare-fun res!1057671 () Bool)

(assert (=> b!1540987 (=> (not res!1057671) (not e!857036))))

(assert (=> b!1540987 (= res!1057671 (and (= (size!49930 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49930 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49930 a!3920))))))

(declare-fun b!1540988 () Bool)

(declare-fun res!1057674 () Bool)

(assert (=> b!1540988 (=> (not res!1057674) (not e!857036))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102350 (_ BitVec 32)) Bool)

(assert (=> b!1540988 (= res!1057674 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1540989 () Bool)

(declare-fun res!1057670 () Bool)

(assert (=> b!1540989 (=> (not res!1057670) (not e!857036))))

(assert (=> b!1540989 (= res!1057670 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1540990 () Bool)

(assert (=> b!1540990 (= e!857036 (not true))))

(assert (=> b!1540990 (arrayForallSeekEntryOrOpenFound!0 newFrom!293 a!3920 mask!4052)))

(declare-datatypes ((Unit!51418 0))(
  ( (Unit!51419) )
))
(declare-fun lt!665506 () Unit!51418)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!102350 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51418)

(assert (=> b!1540990 (= lt!665506 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3920 mask!4052 (bvadd #b00000000000000000000000000000001 from!3298) newFrom!293))))

(assert (= (and start!131520 res!1057672) b!1540987))

(assert (= (and b!1540987 res!1057671) b!1540989))

(assert (= (and b!1540989 res!1057670) b!1540986))

(assert (= (and b!1540986 res!1057673) b!1540988))

(assert (= (and b!1540988 res!1057674) b!1540990))

(declare-fun m!1423053 () Bool)

(assert (=> start!131520 m!1423053))

(declare-fun m!1423055 () Bool)

(assert (=> start!131520 m!1423055))

(declare-fun m!1423057 () Bool)

(assert (=> b!1540988 m!1423057))

(declare-fun m!1423059 () Bool)

(assert (=> b!1540989 m!1423059))

(declare-fun m!1423061 () Bool)

(assert (=> b!1540990 m!1423061))

(declare-fun m!1423063 () Bool)

(assert (=> b!1540990 m!1423063))

(check-sat (not b!1540990) (not b!1540989) (not start!131520) (not b!1540988))
