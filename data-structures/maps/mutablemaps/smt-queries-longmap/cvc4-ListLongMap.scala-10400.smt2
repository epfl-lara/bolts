; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122606 () Bool)

(assert start!122606)

(declare-fun b!1419486 () Bool)

(declare-fun res!955030 () Bool)

(declare-fun e!803147 () Bool)

(assert (=> b!1419486 (=> (not res!955030) (not e!803147))))

(declare-datatypes ((array!96889 0))(
  ( (array!96890 (arr!46758 (Array (_ BitVec 32) (_ BitVec 64))) (size!47309 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96889)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419486 (= res!955030 (validKeyInArray!0 (select (arr!46758 a!2831) j!81)))))

(declare-fun b!1419487 () Bool)

(declare-fun res!955032 () Bool)

(assert (=> b!1419487 (=> (not res!955032) (not e!803147))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1419487 (= res!955032 (validKeyInArray!0 (select (arr!46758 a!2831) i!982)))))

(declare-fun b!1419488 () Bool)

(declare-fun res!955031 () Bool)

(assert (=> b!1419488 (=> (not res!955031) (not e!803147))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96889 (_ BitVec 32)) Bool)

(assert (=> b!1419488 (= res!955031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419489 () Bool)

(declare-fun res!955033 () Bool)

(assert (=> b!1419489 (=> (not res!955033) (not e!803147))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1419489 (= res!955033 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47309 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47309 a!2831))))))

(declare-fun b!1419490 () Bool)

(declare-fun res!955028 () Bool)

(assert (=> b!1419490 (=> (not res!955028) (not e!803147))))

(declare-datatypes ((List!33448 0))(
  ( (Nil!33445) (Cons!33444 (h!34746 (_ BitVec 64)) (t!48149 List!33448)) )
))
(declare-fun arrayNoDuplicates!0 (array!96889 (_ BitVec 32) List!33448) Bool)

(assert (=> b!1419490 (= res!955028 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33445))))

(declare-fun b!1419491 () Bool)

(declare-fun res!955034 () Bool)

(assert (=> b!1419491 (=> (not res!955034) (not e!803147))))

(assert (=> b!1419491 (= res!955034 (and (= (size!47309 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47309 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47309 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419492 () Bool)

(declare-fun res!955029 () Bool)

(assert (=> b!1419492 (=> (not res!955029) (not e!803147))))

(declare-datatypes ((SeekEntryResult!11065 0))(
  ( (MissingZero!11065 (index!46651 (_ BitVec 32))) (Found!11065 (index!46652 (_ BitVec 32))) (Intermediate!11065 (undefined!11877 Bool) (index!46653 (_ BitVec 32)) (x!128326 (_ BitVec 32))) (Undefined!11065) (MissingVacant!11065 (index!46654 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96889 (_ BitVec 32)) SeekEntryResult!11065)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419492 (= res!955029 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46758 a!2831) j!81) mask!2608) (select (arr!46758 a!2831) j!81) a!2831 mask!2608) (Intermediate!11065 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun res!955035 () Bool)

(assert (=> start!122606 (=> (not res!955035) (not e!803147))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122606 (= res!955035 (validMask!0 mask!2608))))

(assert (=> start!122606 e!803147))

(assert (=> start!122606 true))

(declare-fun array_inv!35703 (array!96889) Bool)

(assert (=> start!122606 (array_inv!35703 a!2831)))

(declare-fun b!1419493 () Bool)

(assert (=> b!1419493 (= e!803147 false)))

(declare-fun lt!625774 () (_ BitVec 32))

(assert (=> b!1419493 (= lt!625774 (toIndex!0 (select (store (arr!46758 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(assert (= (and start!122606 res!955035) b!1419491))

(assert (= (and b!1419491 res!955034) b!1419487))

(assert (= (and b!1419487 res!955032) b!1419486))

(assert (= (and b!1419486 res!955030) b!1419488))

(assert (= (and b!1419488 res!955031) b!1419490))

(assert (= (and b!1419490 res!955028) b!1419489))

(assert (= (and b!1419489 res!955033) b!1419492))

(assert (= (and b!1419492 res!955029) b!1419493))

(declare-fun m!1309983 () Bool)

(assert (=> b!1419488 m!1309983))

(declare-fun m!1309985 () Bool)

(assert (=> b!1419486 m!1309985))

(assert (=> b!1419486 m!1309985))

(declare-fun m!1309987 () Bool)

(assert (=> b!1419486 m!1309987))

(declare-fun m!1309989 () Bool)

(assert (=> b!1419493 m!1309989))

(declare-fun m!1309991 () Bool)

(assert (=> b!1419493 m!1309991))

(assert (=> b!1419493 m!1309991))

(declare-fun m!1309993 () Bool)

(assert (=> b!1419493 m!1309993))

(declare-fun m!1309995 () Bool)

(assert (=> start!122606 m!1309995))

(declare-fun m!1309997 () Bool)

(assert (=> start!122606 m!1309997))

(assert (=> b!1419492 m!1309985))

(assert (=> b!1419492 m!1309985))

(declare-fun m!1309999 () Bool)

(assert (=> b!1419492 m!1309999))

(assert (=> b!1419492 m!1309999))

(assert (=> b!1419492 m!1309985))

(declare-fun m!1310001 () Bool)

(assert (=> b!1419492 m!1310001))

(declare-fun m!1310003 () Bool)

(assert (=> b!1419487 m!1310003))

(assert (=> b!1419487 m!1310003))

(declare-fun m!1310005 () Bool)

(assert (=> b!1419487 m!1310005))

(declare-fun m!1310007 () Bool)

(assert (=> b!1419490 m!1310007))

(push 1)

(assert (not b!1419487))

(assert (not b!1419493))

(assert (not b!1419490))

(assert (not start!122606))

(assert (not b!1419488))

(assert (not b!1419486))

(assert (not b!1419492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

