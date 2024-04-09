; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119028 () Bool)

(assert start!119028)

(declare-fun b!1388843 () Bool)

(declare-fun e!786781 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1388843 (= e!786781 (bvslt mask!2840 #b00000000000000000000000000000000))))

(declare-fun b!1388844 () Bool)

(declare-fun res!929183 () Bool)

(assert (=> b!1388844 (=> (not res!929183) (not e!786781))))

(declare-datatypes ((array!94943 0))(
  ( (array!94944 (arr!45836 (Array (_ BitVec 32) (_ BitVec 64))) (size!46387 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94943)

(declare-datatypes ((List!32535 0))(
  ( (Nil!32532) (Cons!32531 (h!33746 (_ BitVec 64)) (t!47236 List!32535)) )
))
(declare-fun arrayNoDuplicates!0 (array!94943 (_ BitVec 32) List!32535) Bool)

(assert (=> b!1388844 (= res!929183 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32532))))

(declare-fun b!1388845 () Bool)

(declare-fun res!929186 () Bool)

(assert (=> b!1388845 (=> (not res!929186) (not e!786781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94943 (_ BitVec 32)) Bool)

(assert (=> b!1388845 (= res!929186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!929187 () Bool)

(assert (=> start!119028 (=> (not res!929187) (not e!786781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119028 (= res!929187 (validMask!0 mask!2840))))

(assert (=> start!119028 e!786781))

(assert (=> start!119028 true))

(declare-fun array_inv!34781 (array!94943) Bool)

(assert (=> start!119028 (array_inv!34781 a!2901)))

(declare-fun b!1388846 () Bool)

(declare-fun res!929182 () Bool)

(assert (=> b!1388846 (=> (not res!929182) (not e!786781))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1388846 (= res!929182 (and (= (size!46387 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46387 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46387 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1388847 () Bool)

(declare-fun res!929185 () Bool)

(assert (=> b!1388847 (=> (not res!929185) (not e!786781))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388847 (= res!929185 (validKeyInArray!0 (select (arr!45836 a!2901) i!1037)))))

(declare-fun b!1388848 () Bool)

(declare-fun res!929184 () Bool)

(assert (=> b!1388848 (=> (not res!929184) (not e!786781))))

(assert (=> b!1388848 (= res!929184 (validKeyInArray!0 (select (arr!45836 a!2901) j!112)))))

(assert (= (and start!119028 res!929187) b!1388846))

(assert (= (and b!1388846 res!929182) b!1388847))

(assert (= (and b!1388847 res!929185) b!1388848))

(assert (= (and b!1388848 res!929184) b!1388845))

(assert (= (and b!1388845 res!929186) b!1388844))

(assert (= (and b!1388844 res!929183) b!1388843))

(declare-fun m!1274619 () Bool)

(assert (=> b!1388847 m!1274619))

(assert (=> b!1388847 m!1274619))

(declare-fun m!1274621 () Bool)

(assert (=> b!1388847 m!1274621))

(declare-fun m!1274623 () Bool)

(assert (=> b!1388844 m!1274623))

(declare-fun m!1274625 () Bool)

(assert (=> b!1388848 m!1274625))

(assert (=> b!1388848 m!1274625))

(declare-fun m!1274627 () Bool)

(assert (=> b!1388848 m!1274627))

(declare-fun m!1274629 () Bool)

(assert (=> b!1388845 m!1274629))

(declare-fun m!1274631 () Bool)

(assert (=> start!119028 m!1274631))

(declare-fun m!1274633 () Bool)

(assert (=> start!119028 m!1274633))

(check-sat (not b!1388844) (not b!1388848) (not b!1388847) (not b!1388845) (not start!119028))
(check-sat)
