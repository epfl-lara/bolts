; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119652 () Bool)

(assert start!119652)

(declare-fun res!932721 () Bool)

(declare-fun e!788921 () Bool)

(assert (=> start!119652 (=> (not res!932721) (not e!788921))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119652 (= res!932721 (validMask!0 mask!2840))))

(assert (=> start!119652 e!788921))

(assert (=> start!119652 true))

(declare-datatypes ((array!95252 0))(
  ( (array!95253 (arr!45980 (Array (_ BitVec 32) (_ BitVec 64))) (size!46531 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95252)

(declare-fun array_inv!34925 (array!95252) Bool)

(assert (=> start!119652 (array_inv!34925 a!2901)))

(declare-fun b!1393197 () Bool)

(declare-fun e!788923 () Bool)

(assert (=> b!1393197 (= e!788921 (not e!788923))))

(declare-fun res!932714 () Bool)

(assert (=> b!1393197 (=> res!932714 e!788923)))

(declare-datatypes ((SeekEntryResult!10319 0))(
  ( (MissingZero!10319 (index!43646 (_ BitVec 32))) (Found!10319 (index!43647 (_ BitVec 32))) (Intermediate!10319 (undefined!11131 Bool) (index!43648 (_ BitVec 32)) (x!125334 (_ BitVec 32))) (Undefined!10319) (MissingVacant!10319 (index!43649 (_ BitVec 32))) )
))
(declare-fun lt!611872 () SeekEntryResult!10319)

(get-info :version)

(assert (=> b!1393197 (= res!932714 (or (not ((_ is Intermediate!10319) lt!611872)) (undefined!11131 lt!611872)))))

(declare-fun e!788922 () Bool)

(assert (=> b!1393197 e!788922))

(declare-fun res!932715 () Bool)

(assert (=> b!1393197 (=> (not res!932715) (not e!788922))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95252 (_ BitVec 32)) Bool)

(assert (=> b!1393197 (= res!932715 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46592 0))(
  ( (Unit!46593) )
))
(declare-fun lt!611871 () Unit!46592)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95252 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46592)

(assert (=> b!1393197 (= lt!611871 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95252 (_ BitVec 32)) SeekEntryResult!10319)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393197 (= lt!611872 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45980 a!2901) j!112) mask!2840) (select (arr!45980 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393198 () Bool)

(declare-fun res!932720 () Bool)

(assert (=> b!1393198 (=> (not res!932720) (not e!788921))))

(assert (=> b!1393198 (= res!932720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393199 () Bool)

(declare-fun res!932717 () Bool)

(assert (=> b!1393199 (=> (not res!932717) (not e!788921))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393199 (= res!932717 (validKeyInArray!0 (select (arr!45980 a!2901) i!1037)))))

(declare-fun b!1393200 () Bool)

(declare-fun res!932719 () Bool)

(assert (=> b!1393200 (=> (not res!932719) (not e!788921))))

(assert (=> b!1393200 (= res!932719 (validKeyInArray!0 (select (arr!45980 a!2901) j!112)))))

(declare-fun b!1393201 () Bool)

(declare-fun res!932718 () Bool)

(assert (=> b!1393201 (=> (not res!932718) (not e!788921))))

(assert (=> b!1393201 (= res!932718 (and (= (size!46531 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46531 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46531 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393202 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95252 (_ BitVec 32)) SeekEntryResult!10319)

(assert (=> b!1393202 (= e!788922 (= (seekEntryOrOpen!0 (select (arr!45980 a!2901) j!112) a!2901 mask!2840) (Found!10319 j!112)))))

(declare-fun b!1393203 () Bool)

(declare-fun res!932716 () Bool)

(assert (=> b!1393203 (=> (not res!932716) (not e!788921))))

(declare-datatypes ((List!32679 0))(
  ( (Nil!32676) (Cons!32675 (h!33908 (_ BitVec 64)) (t!47380 List!32679)) )
))
(declare-fun arrayNoDuplicates!0 (array!95252 (_ BitVec 32) List!32679) Bool)

(assert (=> b!1393203 (= res!932716 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32676))))

(declare-fun b!1393204 () Bool)

(assert (=> b!1393204 (= e!788923 true)))

(declare-fun lt!611870 () SeekEntryResult!10319)

(assert (=> b!1393204 (= lt!611870 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45980 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45980 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95253 (store (arr!45980 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46531 a!2901)) mask!2840))))

(assert (= (and start!119652 res!932721) b!1393201))

(assert (= (and b!1393201 res!932718) b!1393199))

(assert (= (and b!1393199 res!932717) b!1393200))

(assert (= (and b!1393200 res!932719) b!1393198))

(assert (= (and b!1393198 res!932720) b!1393203))

(assert (= (and b!1393203 res!932716) b!1393197))

(assert (= (and b!1393197 res!932715) b!1393202))

(assert (= (and b!1393197 (not res!932714)) b!1393204))

(declare-fun m!1279101 () Bool)

(assert (=> b!1393202 m!1279101))

(assert (=> b!1393202 m!1279101))

(declare-fun m!1279103 () Bool)

(assert (=> b!1393202 m!1279103))

(assert (=> b!1393197 m!1279101))

(declare-fun m!1279105 () Bool)

(assert (=> b!1393197 m!1279105))

(assert (=> b!1393197 m!1279101))

(declare-fun m!1279107 () Bool)

(assert (=> b!1393197 m!1279107))

(assert (=> b!1393197 m!1279105))

(assert (=> b!1393197 m!1279101))

(declare-fun m!1279109 () Bool)

(assert (=> b!1393197 m!1279109))

(declare-fun m!1279111 () Bool)

(assert (=> b!1393197 m!1279111))

(assert (=> b!1393200 m!1279101))

(assert (=> b!1393200 m!1279101))

(declare-fun m!1279113 () Bool)

(assert (=> b!1393200 m!1279113))

(declare-fun m!1279115 () Bool)

(assert (=> b!1393198 m!1279115))

(declare-fun m!1279117 () Bool)

(assert (=> b!1393203 m!1279117))

(declare-fun m!1279119 () Bool)

(assert (=> start!119652 m!1279119))

(declare-fun m!1279121 () Bool)

(assert (=> start!119652 m!1279121))

(declare-fun m!1279123 () Bool)

(assert (=> b!1393204 m!1279123))

(declare-fun m!1279125 () Bool)

(assert (=> b!1393204 m!1279125))

(assert (=> b!1393204 m!1279125))

(declare-fun m!1279127 () Bool)

(assert (=> b!1393204 m!1279127))

(assert (=> b!1393204 m!1279127))

(assert (=> b!1393204 m!1279125))

(declare-fun m!1279129 () Bool)

(assert (=> b!1393204 m!1279129))

(declare-fun m!1279131 () Bool)

(assert (=> b!1393199 m!1279131))

(assert (=> b!1393199 m!1279131))

(declare-fun m!1279133 () Bool)

(assert (=> b!1393199 m!1279133))

(check-sat (not b!1393197) (not b!1393200) (not b!1393204) (not b!1393203) (not start!119652) (not b!1393198) (not b!1393199) (not b!1393202))
