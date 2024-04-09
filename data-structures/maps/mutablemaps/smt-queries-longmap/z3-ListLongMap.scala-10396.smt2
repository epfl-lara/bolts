; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122538 () Bool)

(assert start!122538)

(declare-fun b!1419012 () Bool)

(declare-fun e!802961 () Bool)

(assert (=> b!1419012 (= e!802961 false)))

(declare-fun lt!625666 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96860 0))(
  ( (array!96861 (arr!46745 (Array (_ BitVec 32) (_ BitVec 64))) (size!47296 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96860)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419012 (= lt!625666 (toIndex!0 (select (store (arr!46745 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1419013 () Bool)

(declare-fun res!954641 () Bool)

(assert (=> b!1419013 (=> (not res!954641) (not e!802961))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96860 (_ BitVec 32)) Bool)

(assert (=> b!1419013 (= res!954641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419014 () Bool)

(declare-fun res!954644 () Bool)

(assert (=> b!1419014 (=> (not res!954644) (not e!802961))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11052 0))(
  ( (MissingZero!11052 (index!46599 (_ BitVec 32))) (Found!11052 (index!46600 (_ BitVec 32))) (Intermediate!11052 (undefined!11864 Bool) (index!46601 (_ BitVec 32)) (x!128275 (_ BitVec 32))) (Undefined!11052) (MissingVacant!11052 (index!46602 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96860 (_ BitVec 32)) SeekEntryResult!11052)

(assert (=> b!1419014 (= res!954644 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46745 a!2831) j!81) mask!2608) (select (arr!46745 a!2831) j!81) a!2831 mask!2608) (Intermediate!11052 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419015 () Bool)

(declare-fun res!954647 () Bool)

(assert (=> b!1419015 (=> (not res!954647) (not e!802961))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419015 (= res!954647 (validKeyInArray!0 (select (arr!46745 a!2831) j!81)))))

(declare-fun b!1419016 () Bool)

(declare-fun res!954643 () Bool)

(assert (=> b!1419016 (=> (not res!954643) (not e!802961))))

(assert (=> b!1419016 (= res!954643 (validKeyInArray!0 (select (arr!46745 a!2831) i!982)))))

(declare-fun res!954642 () Bool)

(assert (=> start!122538 (=> (not res!954642) (not e!802961))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122538 (= res!954642 (validMask!0 mask!2608))))

(assert (=> start!122538 e!802961))

(assert (=> start!122538 true))

(declare-fun array_inv!35690 (array!96860) Bool)

(assert (=> start!122538 (array_inv!35690 a!2831)))

(declare-fun b!1419017 () Bool)

(declare-fun res!954646 () Bool)

(assert (=> b!1419017 (=> (not res!954646) (not e!802961))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419017 (= res!954646 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47296 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47296 a!2831))))))

(declare-fun b!1419018 () Bool)

(declare-fun res!954645 () Bool)

(assert (=> b!1419018 (=> (not res!954645) (not e!802961))))

(declare-datatypes ((List!33435 0))(
  ( (Nil!33432) (Cons!33431 (h!34730 (_ BitVec 64)) (t!48136 List!33435)) )
))
(declare-fun arrayNoDuplicates!0 (array!96860 (_ BitVec 32) List!33435) Bool)

(assert (=> b!1419018 (= res!954645 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33432))))

(declare-fun b!1419019 () Bool)

(declare-fun res!954648 () Bool)

(assert (=> b!1419019 (=> (not res!954648) (not e!802961))))

(assert (=> b!1419019 (= res!954648 (and (= (size!47296 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47296 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47296 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122538 res!954642) b!1419019))

(assert (= (and b!1419019 res!954648) b!1419016))

(assert (= (and b!1419016 res!954643) b!1419015))

(assert (= (and b!1419015 res!954647) b!1419013))

(assert (= (and b!1419013 res!954641) b!1419018))

(assert (= (and b!1419018 res!954645) b!1419017))

(assert (= (and b!1419017 res!954646) b!1419014))

(assert (= (and b!1419014 res!954644) b!1419012))

(declare-fun m!1309573 () Bool)

(assert (=> b!1419016 m!1309573))

(assert (=> b!1419016 m!1309573))

(declare-fun m!1309575 () Bool)

(assert (=> b!1419016 m!1309575))

(declare-fun m!1309577 () Bool)

(assert (=> b!1419012 m!1309577))

(declare-fun m!1309579 () Bool)

(assert (=> b!1419012 m!1309579))

(assert (=> b!1419012 m!1309579))

(declare-fun m!1309581 () Bool)

(assert (=> b!1419012 m!1309581))

(declare-fun m!1309583 () Bool)

(assert (=> b!1419018 m!1309583))

(declare-fun m!1309585 () Bool)

(assert (=> b!1419015 m!1309585))

(assert (=> b!1419015 m!1309585))

(declare-fun m!1309587 () Bool)

(assert (=> b!1419015 m!1309587))

(declare-fun m!1309589 () Bool)

(assert (=> start!122538 m!1309589))

(declare-fun m!1309591 () Bool)

(assert (=> start!122538 m!1309591))

(declare-fun m!1309593 () Bool)

(assert (=> b!1419013 m!1309593))

(assert (=> b!1419014 m!1309585))

(assert (=> b!1419014 m!1309585))

(declare-fun m!1309595 () Bool)

(assert (=> b!1419014 m!1309595))

(assert (=> b!1419014 m!1309595))

(assert (=> b!1419014 m!1309585))

(declare-fun m!1309597 () Bool)

(assert (=> b!1419014 m!1309597))

(check-sat (not b!1419014) (not b!1419018) (not b!1419012) (not start!122538) (not b!1419016) (not b!1419015) (not b!1419013))
