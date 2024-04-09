; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119636 () Bool)

(assert start!119636)

(declare-fun res!932527 () Bool)

(declare-fun e!788828 () Bool)

(assert (=> start!119636 (=> (not res!932527) (not e!788828))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119636 (= res!932527 (validMask!0 mask!2840))))

(assert (=> start!119636 e!788828))

(assert (=> start!119636 true))

(declare-datatypes ((array!95236 0))(
  ( (array!95237 (arr!45972 (Array (_ BitVec 32) (_ BitVec 64))) (size!46523 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95236)

(declare-fun array_inv!34917 (array!95236) Bool)

(assert (=> start!119636 (array_inv!34917 a!2901)))

(declare-fun b!1393005 () Bool)

(declare-fun res!932526 () Bool)

(assert (=> b!1393005 (=> (not res!932526) (not e!788828))))

(declare-datatypes ((List!32671 0))(
  ( (Nil!32668) (Cons!32667 (h!33900 (_ BitVec 64)) (t!47372 List!32671)) )
))
(declare-fun arrayNoDuplicates!0 (array!95236 (_ BitVec 32) List!32671) Bool)

(assert (=> b!1393005 (= res!932526 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32668))))

(declare-fun b!1393006 () Bool)

(declare-fun res!932522 () Bool)

(assert (=> b!1393006 (=> (not res!932522) (not e!788828))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95236 (_ BitVec 32)) Bool)

(assert (=> b!1393006 (= res!932522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393007 () Bool)

(declare-fun res!932525 () Bool)

(assert (=> b!1393007 (=> (not res!932525) (not e!788828))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393007 (= res!932525 (validKeyInArray!0 (select (arr!45972 a!2901) j!112)))))

(declare-fun b!1393008 () Bool)

(declare-fun e!788827 () Bool)

(assert (=> b!1393008 (= e!788828 (not e!788827))))

(declare-fun res!932524 () Bool)

(assert (=> b!1393008 (=> res!932524 e!788827)))

(declare-datatypes ((SeekEntryResult!10311 0))(
  ( (MissingZero!10311 (index!43614 (_ BitVec 32))) (Found!10311 (index!43615 (_ BitVec 32))) (Intermediate!10311 (undefined!11123 Bool) (index!43616 (_ BitVec 32)) (x!125302 (_ BitVec 32))) (Undefined!10311) (MissingVacant!10311 (index!43617 (_ BitVec 32))) )
))
(declare-fun lt!611800 () SeekEntryResult!10311)

(assert (=> b!1393008 (= res!932524 (or (not (is-Intermediate!10311 lt!611800)) (undefined!11123 lt!611800)))))

(declare-fun e!788825 () Bool)

(assert (=> b!1393008 e!788825))

(declare-fun res!932529 () Bool)

(assert (=> b!1393008 (=> (not res!932529) (not e!788825))))

(assert (=> b!1393008 (= res!932529 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46576 0))(
  ( (Unit!46577) )
))
(declare-fun lt!611799 () Unit!46576)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95236 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46576)

(assert (=> b!1393008 (= lt!611799 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95236 (_ BitVec 32)) SeekEntryResult!10311)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393008 (= lt!611800 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45972 a!2901) j!112) mask!2840) (select (arr!45972 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393009 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95236 (_ BitVec 32)) SeekEntryResult!10311)

(assert (=> b!1393009 (= e!788825 (= (seekEntryOrOpen!0 (select (arr!45972 a!2901) j!112) a!2901 mask!2840) (Found!10311 j!112)))))

(declare-fun b!1393010 () Bool)

(assert (=> b!1393010 (= e!788827 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!611798 () SeekEntryResult!10311)

(assert (=> b!1393010 (= lt!611798 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45972 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45972 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95237 (store (arr!45972 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46523 a!2901)) mask!2840))))

(declare-fun b!1393011 () Bool)

(declare-fun res!932528 () Bool)

(assert (=> b!1393011 (=> (not res!932528) (not e!788828))))

(assert (=> b!1393011 (= res!932528 (and (= (size!46523 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46523 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46523 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393012 () Bool)

(declare-fun res!932523 () Bool)

(assert (=> b!1393012 (=> (not res!932523) (not e!788828))))

(assert (=> b!1393012 (= res!932523 (validKeyInArray!0 (select (arr!45972 a!2901) i!1037)))))

(assert (= (and start!119636 res!932527) b!1393011))

(assert (= (and b!1393011 res!932528) b!1393012))

(assert (= (and b!1393012 res!932523) b!1393007))

(assert (= (and b!1393007 res!932525) b!1393006))

(assert (= (and b!1393006 res!932522) b!1393005))

(assert (= (and b!1393005 res!932526) b!1393008))

(assert (= (and b!1393008 res!932529) b!1393009))

(assert (= (and b!1393008 (not res!932524)) b!1393010))

(declare-fun m!1278829 () Bool)

(assert (=> b!1393006 m!1278829))

(declare-fun m!1278831 () Bool)

(assert (=> b!1393012 m!1278831))

(assert (=> b!1393012 m!1278831))

(declare-fun m!1278833 () Bool)

(assert (=> b!1393012 m!1278833))

(declare-fun m!1278835 () Bool)

(assert (=> b!1393007 m!1278835))

(assert (=> b!1393007 m!1278835))

(declare-fun m!1278837 () Bool)

(assert (=> b!1393007 m!1278837))

(assert (=> b!1393008 m!1278835))

(declare-fun m!1278839 () Bool)

(assert (=> b!1393008 m!1278839))

(assert (=> b!1393008 m!1278835))

(declare-fun m!1278841 () Bool)

(assert (=> b!1393008 m!1278841))

(assert (=> b!1393008 m!1278839))

(assert (=> b!1393008 m!1278835))

(declare-fun m!1278843 () Bool)

(assert (=> b!1393008 m!1278843))

(declare-fun m!1278845 () Bool)

(assert (=> b!1393008 m!1278845))

(assert (=> b!1393009 m!1278835))

(assert (=> b!1393009 m!1278835))

(declare-fun m!1278847 () Bool)

(assert (=> b!1393009 m!1278847))

(declare-fun m!1278849 () Bool)

(assert (=> start!119636 m!1278849))

(declare-fun m!1278851 () Bool)

(assert (=> start!119636 m!1278851))

(declare-fun m!1278853 () Bool)

(assert (=> b!1393005 m!1278853))

(declare-fun m!1278855 () Bool)

(assert (=> b!1393010 m!1278855))

(declare-fun m!1278857 () Bool)

(assert (=> b!1393010 m!1278857))

(assert (=> b!1393010 m!1278857))

(declare-fun m!1278859 () Bool)

(assert (=> b!1393010 m!1278859))

(assert (=> b!1393010 m!1278859))

(assert (=> b!1393010 m!1278857))

(declare-fun m!1278861 () Bool)

(assert (=> b!1393010 m!1278861))

(push 1)

(assert (not b!1393007))

(assert (not b!1393010))

(assert (not b!1393008))

(assert (not b!1393009))

(assert (not b!1393005))

(assert (not start!119636))

(assert (not b!1393006))

(assert (not b!1393012))

(check-sat)

