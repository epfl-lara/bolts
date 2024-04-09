; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120630 () Bool)

(assert start!120630)

(declare-fun b!1404011 () Bool)

(declare-fun res!942633 () Bool)

(declare-fun e!794908 () Bool)

(assert (=> b!1404011 (=> (not res!942633) (not e!794908))))

(declare-datatypes ((array!95957 0))(
  ( (array!95958 (arr!46325 (Array (_ BitVec 32) (_ BitVec 64))) (size!46876 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95957)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404011 (= res!942633 (validKeyInArray!0 (select (arr!46325 a!2901) i!1037)))))

(declare-fun b!1404012 () Bool)

(declare-fun res!942635 () Bool)

(assert (=> b!1404012 (=> (not res!942635) (not e!794908))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1404012 (= res!942635 (validKeyInArray!0 (select (arr!46325 a!2901) j!112)))))

(declare-fun b!1404013 () Bool)

(declare-fun res!942632 () Bool)

(assert (=> b!1404013 (=> (not res!942632) (not e!794908))))

(declare-datatypes ((List!33024 0))(
  ( (Nil!33021) (Cons!33020 (h!34268 (_ BitVec 64)) (t!47725 List!33024)) )
))
(declare-fun arrayNoDuplicates!0 (array!95957 (_ BitVec 32) List!33024) Bool)

(assert (=> b!1404013 (= res!942632 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33021))))

(declare-fun b!1404014 () Bool)

(declare-fun res!942634 () Bool)

(assert (=> b!1404014 (=> (not res!942634) (not e!794908))))

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1404014 (= res!942634 (and (= (size!46876 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46876 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46876 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404015 () Bool)

(assert (=> b!1404015 (= e!794908 false)))

(declare-fun lt!618526 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404015 (= lt!618526 (toIndex!0 (select (arr!46325 a!2901) j!112) mask!2840))))

(declare-fun res!942636 () Bool)

(assert (=> start!120630 (=> (not res!942636) (not e!794908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120630 (= res!942636 (validMask!0 mask!2840))))

(assert (=> start!120630 e!794908))

(assert (=> start!120630 true))

(declare-fun array_inv!35270 (array!95957) Bool)

(assert (=> start!120630 (array_inv!35270 a!2901)))

(declare-fun b!1404016 () Bool)

(declare-fun res!942631 () Bool)

(assert (=> b!1404016 (=> (not res!942631) (not e!794908))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95957 (_ BitVec 32)) Bool)

(assert (=> b!1404016 (= res!942631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120630 res!942636) b!1404014))

(assert (= (and b!1404014 res!942634) b!1404011))

(assert (= (and b!1404011 res!942633) b!1404012))

(assert (= (and b!1404012 res!942635) b!1404016))

(assert (= (and b!1404016 res!942631) b!1404013))

(assert (= (and b!1404013 res!942632) b!1404015))

(declare-fun m!1292873 () Bool)

(assert (=> b!1404013 m!1292873))

(declare-fun m!1292875 () Bool)

(assert (=> b!1404011 m!1292875))

(assert (=> b!1404011 m!1292875))

(declare-fun m!1292877 () Bool)

(assert (=> b!1404011 m!1292877))

(declare-fun m!1292879 () Bool)

(assert (=> b!1404015 m!1292879))

(assert (=> b!1404015 m!1292879))

(declare-fun m!1292881 () Bool)

(assert (=> b!1404015 m!1292881))

(assert (=> b!1404012 m!1292879))

(assert (=> b!1404012 m!1292879))

(declare-fun m!1292883 () Bool)

(assert (=> b!1404012 m!1292883))

(declare-fun m!1292885 () Bool)

(assert (=> b!1404016 m!1292885))

(declare-fun m!1292887 () Bool)

(assert (=> start!120630 m!1292887))

(declare-fun m!1292889 () Bool)

(assert (=> start!120630 m!1292889))

(check-sat (not b!1404013) (not b!1404016) (not b!1404011) (not b!1404012) (not start!120630) (not b!1404015))
