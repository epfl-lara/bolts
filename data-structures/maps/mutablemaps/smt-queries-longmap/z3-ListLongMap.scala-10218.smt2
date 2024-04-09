; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120402 () Bool)

(assert start!120402)

(declare-fun b!1400895 () Bool)

(declare-fun res!939517 () Bool)

(declare-fun e!793229 () Bool)

(assert (=> b!1400895 (=> (not res!939517) (not e!793229))))

(declare-datatypes ((array!95729 0))(
  ( (array!95730 (arr!46211 (Array (_ BitVec 32) (_ BitVec 64))) (size!46762 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95729)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1400895 (= res!939517 (and (= (size!46762 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46762 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46762 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400896 () Bool)

(declare-fun res!939519 () Bool)

(assert (=> b!1400896 (=> (not res!939519) (not e!793229))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400896 (= res!939519 (validKeyInArray!0 (select (arr!46211 a!2901) i!1037)))))

(declare-fun b!1400897 () Bool)

(declare-fun e!793224 () Bool)

(declare-fun e!793226 () Bool)

(assert (=> b!1400897 (= e!793224 e!793226)))

(declare-fun res!939524 () Bool)

(assert (=> b!1400897 (=> res!939524 e!793226)))

(declare-fun lt!616536 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10550 0))(
  ( (MissingZero!10550 (index!44576 (_ BitVec 32))) (Found!10550 (index!44577 (_ BitVec 32))) (Intermediate!10550 (undefined!11362 Bool) (index!44578 (_ BitVec 32)) (x!126220 (_ BitVec 32))) (Undefined!10550) (MissingVacant!10550 (index!44579 (_ BitVec 32))) )
))
(declare-fun lt!616540 () SeekEntryResult!10550)

(declare-fun lt!616537 () SeekEntryResult!10550)

(assert (=> b!1400897 (= res!939524 (or (bvslt (x!126220 lt!616537) #b00000000000000000000000000000000) (bvsgt (x!126220 lt!616537) #b01111111111111111111111111111110) (bvslt (x!126220 lt!616540) #b00000000000000000000000000000000) (bvsgt (x!126220 lt!616540) #b01111111111111111111111111111110) (bvslt lt!616536 #b00000000000000000000000000000000) (bvsge lt!616536 (size!46762 a!2901)) (bvslt (index!44578 lt!616537) #b00000000000000000000000000000000) (bvsge (index!44578 lt!616537) (size!46762 a!2901)) (bvslt (index!44578 lt!616540) #b00000000000000000000000000000000) (bvsge (index!44578 lt!616540) (size!46762 a!2901)) (not (= lt!616537 (Intermediate!10550 false (index!44578 lt!616537) (x!126220 lt!616537)))) (not (= lt!616540 (Intermediate!10550 false (index!44578 lt!616540) (x!126220 lt!616540))))))))

(declare-fun e!793223 () Bool)

(assert (=> b!1400897 e!793223))

(declare-fun res!939522 () Bool)

(assert (=> b!1400897 (=> (not res!939522) (not e!793223))))

(assert (=> b!1400897 (= res!939522 (and (not (undefined!11362 lt!616540)) (= (index!44578 lt!616540) i!1037) (bvslt (x!126220 lt!616540) (x!126220 lt!616537)) (= (select (store (arr!46211 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44578 lt!616540)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47054 0))(
  ( (Unit!47055) )
))
(declare-fun lt!616541 () Unit!47054)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95729 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47054)

(assert (=> b!1400897 (= lt!616541 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616536 (x!126220 lt!616537) (index!44578 lt!616537) (x!126220 lt!616540) (index!44578 lt!616540) (undefined!11362 lt!616540) mask!2840))))

(declare-fun b!1400898 () Bool)

(declare-fun e!793225 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95729 (_ BitVec 32)) SeekEntryResult!10550)

(assert (=> b!1400898 (= e!793225 (= (seekEntryOrOpen!0 (select (arr!46211 a!2901) j!112) a!2901 mask!2840) (Found!10550 j!112)))))

(declare-fun b!1400899 () Bool)

(declare-fun e!793227 () Bool)

(assert (=> b!1400899 (= e!793229 (not e!793227))))

(declare-fun res!939516 () Bool)

(assert (=> b!1400899 (=> res!939516 e!793227)))

(get-info :version)

(assert (=> b!1400899 (= res!939516 (or (not ((_ is Intermediate!10550) lt!616537)) (undefined!11362 lt!616537)))))

(assert (=> b!1400899 e!793225))

(declare-fun res!939521 () Bool)

(assert (=> b!1400899 (=> (not res!939521) (not e!793225))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95729 (_ BitVec 32)) Bool)

(assert (=> b!1400899 (= res!939521 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!616543 () Unit!47054)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95729 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47054)

(assert (=> b!1400899 (= lt!616543 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95729 (_ BitVec 32)) SeekEntryResult!10550)

(assert (=> b!1400899 (= lt!616537 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616536 (select (arr!46211 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400899 (= lt!616536 (toIndex!0 (select (arr!46211 a!2901) j!112) mask!2840))))

(declare-fun b!1400900 () Bool)

(assert (=> b!1400900 (= e!793227 e!793224)))

(declare-fun res!939518 () Bool)

(assert (=> b!1400900 (=> res!939518 e!793224)))

(assert (=> b!1400900 (= res!939518 (or (= lt!616537 lt!616540) (not ((_ is Intermediate!10550) lt!616540))))))

(declare-fun lt!616542 () (_ BitVec 64))

(declare-fun lt!616539 () array!95729)

(assert (=> b!1400900 (= lt!616540 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616542 mask!2840) lt!616542 lt!616539 mask!2840))))

(assert (=> b!1400900 (= lt!616542 (select (store (arr!46211 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400900 (= lt!616539 (array!95730 (store (arr!46211 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46762 a!2901)))))

(declare-fun b!1400901 () Bool)

(declare-fun res!939520 () Bool)

(assert (=> b!1400901 (=> (not res!939520) (not e!793229))))

(assert (=> b!1400901 (= res!939520 (validKeyInArray!0 (select (arr!46211 a!2901) j!112)))))

(declare-fun b!1400902 () Bool)

(declare-fun res!939523 () Bool)

(assert (=> b!1400902 (=> (not res!939523) (not e!793229))))

(declare-datatypes ((List!32910 0))(
  ( (Nil!32907) (Cons!32906 (h!34154 (_ BitVec 64)) (t!47611 List!32910)) )
))
(declare-fun arrayNoDuplicates!0 (array!95729 (_ BitVec 32) List!32910) Bool)

(assert (=> b!1400902 (= res!939523 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32907))))

(declare-fun b!1400903 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95729 (_ BitVec 32)) SeekEntryResult!10550)

(assert (=> b!1400903 (= e!793223 (= (seekEntryOrOpen!0 lt!616542 lt!616539 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126220 lt!616540) (index!44578 lt!616540) (index!44578 lt!616540) (select (arr!46211 a!2901) j!112) lt!616539 mask!2840)))))

(declare-fun res!939515 () Bool)

(assert (=> start!120402 (=> (not res!939515) (not e!793229))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120402 (= res!939515 (validMask!0 mask!2840))))

(assert (=> start!120402 e!793229))

(assert (=> start!120402 true))

(declare-fun array_inv!35156 (array!95729) Bool)

(assert (=> start!120402 (array_inv!35156 a!2901)))

(declare-fun b!1400904 () Bool)

(declare-fun res!939525 () Bool)

(assert (=> b!1400904 (=> (not res!939525) (not e!793229))))

(assert (=> b!1400904 (= res!939525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1400905 () Bool)

(assert (=> b!1400905 (= e!793226 true)))

(declare-fun lt!616538 () SeekEntryResult!10550)

(assert (=> b!1400905 (= lt!616538 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616536 lt!616542 lt!616539 mask!2840))))

(assert (= (and start!120402 res!939515) b!1400895))

(assert (= (and b!1400895 res!939517) b!1400896))

(assert (= (and b!1400896 res!939519) b!1400901))

(assert (= (and b!1400901 res!939520) b!1400904))

(assert (= (and b!1400904 res!939525) b!1400902))

(assert (= (and b!1400902 res!939523) b!1400899))

(assert (= (and b!1400899 res!939521) b!1400898))

(assert (= (and b!1400899 (not res!939516)) b!1400900))

(assert (= (and b!1400900 (not res!939518)) b!1400897))

(assert (= (and b!1400897 res!939522) b!1400903))

(assert (= (and b!1400897 (not res!939524)) b!1400905))

(declare-fun m!1288585 () Bool)

(assert (=> start!120402 m!1288585))

(declare-fun m!1288587 () Bool)

(assert (=> start!120402 m!1288587))

(declare-fun m!1288589 () Bool)

(assert (=> b!1400905 m!1288589))

(declare-fun m!1288591 () Bool)

(assert (=> b!1400902 m!1288591))

(declare-fun m!1288593 () Bool)

(assert (=> b!1400898 m!1288593))

(assert (=> b!1400898 m!1288593))

(declare-fun m!1288595 () Bool)

(assert (=> b!1400898 m!1288595))

(assert (=> b!1400901 m!1288593))

(assert (=> b!1400901 m!1288593))

(declare-fun m!1288597 () Bool)

(assert (=> b!1400901 m!1288597))

(declare-fun m!1288599 () Bool)

(assert (=> b!1400903 m!1288599))

(assert (=> b!1400903 m!1288593))

(assert (=> b!1400903 m!1288593))

(declare-fun m!1288601 () Bool)

(assert (=> b!1400903 m!1288601))

(declare-fun m!1288603 () Bool)

(assert (=> b!1400900 m!1288603))

(assert (=> b!1400900 m!1288603))

(declare-fun m!1288605 () Bool)

(assert (=> b!1400900 m!1288605))

(declare-fun m!1288607 () Bool)

(assert (=> b!1400900 m!1288607))

(declare-fun m!1288609 () Bool)

(assert (=> b!1400900 m!1288609))

(assert (=> b!1400897 m!1288607))

(declare-fun m!1288611 () Bool)

(assert (=> b!1400897 m!1288611))

(declare-fun m!1288613 () Bool)

(assert (=> b!1400897 m!1288613))

(declare-fun m!1288615 () Bool)

(assert (=> b!1400896 m!1288615))

(assert (=> b!1400896 m!1288615))

(declare-fun m!1288617 () Bool)

(assert (=> b!1400896 m!1288617))

(declare-fun m!1288619 () Bool)

(assert (=> b!1400904 m!1288619))

(assert (=> b!1400899 m!1288593))

(declare-fun m!1288621 () Bool)

(assert (=> b!1400899 m!1288621))

(assert (=> b!1400899 m!1288593))

(assert (=> b!1400899 m!1288593))

(declare-fun m!1288623 () Bool)

(assert (=> b!1400899 m!1288623))

(declare-fun m!1288625 () Bool)

(assert (=> b!1400899 m!1288625))

(declare-fun m!1288627 () Bool)

(assert (=> b!1400899 m!1288627))

(check-sat (not b!1400904) (not b!1400899) (not start!120402) (not b!1400900) (not b!1400903) (not b!1400897) (not b!1400901) (not b!1400905) (not b!1400896) (not b!1400898) (not b!1400902))
(check-sat)
