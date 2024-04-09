; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119082 () Bool)

(assert start!119082)

(declare-fun b!1389140 () Bool)

(declare-fun res!929448 () Bool)

(declare-fun e!786916 () Bool)

(assert (=> b!1389140 (=> (not res!929448) (not e!786916))))

(declare-datatypes ((array!94970 0))(
  ( (array!94971 (arr!45848 (Array (_ BitVec 32) (_ BitVec 64))) (size!46399 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94970)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389140 (= res!929448 (validKeyInArray!0 (select (arr!45848 a!2901) i!1037)))))

(declare-fun b!1389141 () Bool)

(declare-fun res!929445 () Bool)

(assert (=> b!1389141 (=> (not res!929445) (not e!786916))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389141 (= res!929445 (and (= (size!46399 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46399 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46399 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389142 () Bool)

(declare-fun res!929447 () Bool)

(assert (=> b!1389142 (=> (not res!929447) (not e!786916))))

(assert (=> b!1389142 (= res!929447 (validKeyInArray!0 (select (arr!45848 a!2901) j!112)))))

(declare-fun b!1389143 () Bool)

(declare-fun res!929444 () Bool)

(assert (=> b!1389143 (=> (not res!929444) (not e!786916))))

(declare-datatypes ((List!32547 0))(
  ( (Nil!32544) (Cons!32543 (h!33758 (_ BitVec 64)) (t!47248 List!32547)) )
))
(declare-fun arrayNoDuplicates!0 (array!94970 (_ BitVec 32) List!32547) Bool)

(assert (=> b!1389143 (= res!929444 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32544))))

(declare-fun res!929443 () Bool)

(assert (=> start!119082 (=> (not res!929443) (not e!786916))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119082 (= res!929443 (validMask!0 mask!2840))))

(assert (=> start!119082 e!786916))

(assert (=> start!119082 true))

(declare-fun array_inv!34793 (array!94970) Bool)

(assert (=> start!119082 (array_inv!34793 a!2901)))

(declare-fun b!1389144 () Bool)

(assert (=> b!1389144 (= e!786916 false)))

(declare-fun lt!610438 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389144 (= lt!610438 (toIndex!0 (select (arr!45848 a!2901) j!112) mask!2840))))

(declare-fun b!1389145 () Bool)

(declare-fun res!929446 () Bool)

(assert (=> b!1389145 (=> (not res!929446) (not e!786916))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94970 (_ BitVec 32)) Bool)

(assert (=> b!1389145 (= res!929446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119082 res!929443) b!1389141))

(assert (= (and b!1389141 res!929445) b!1389140))

(assert (= (and b!1389140 res!929448) b!1389142))

(assert (= (and b!1389142 res!929447) b!1389145))

(assert (= (and b!1389145 res!929446) b!1389143))

(assert (= (and b!1389143 res!929444) b!1389144))

(declare-fun m!1274873 () Bool)

(assert (=> b!1389140 m!1274873))

(assert (=> b!1389140 m!1274873))

(declare-fun m!1274875 () Bool)

(assert (=> b!1389140 m!1274875))

(declare-fun m!1274877 () Bool)

(assert (=> b!1389143 m!1274877))

(declare-fun m!1274879 () Bool)

(assert (=> b!1389144 m!1274879))

(assert (=> b!1389144 m!1274879))

(declare-fun m!1274881 () Bool)

(assert (=> b!1389144 m!1274881))

(declare-fun m!1274883 () Bool)

(assert (=> b!1389145 m!1274883))

(declare-fun m!1274885 () Bool)

(assert (=> start!119082 m!1274885))

(declare-fun m!1274887 () Bool)

(assert (=> start!119082 m!1274887))

(assert (=> b!1389142 m!1274879))

(assert (=> b!1389142 m!1274879))

(declare-fun m!1274889 () Bool)

(assert (=> b!1389142 m!1274889))

(check-sat (not b!1389143) (not b!1389142) (not start!119082) (not b!1389145) (not b!1389144) (not b!1389140))
