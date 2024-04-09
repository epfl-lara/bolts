; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130746 () Bool)

(assert start!130746)

(declare-fun res!1050150 () Bool)

(declare-fun e!854075 () Bool)

(assert (=> start!130746 (=> (not res!1050150) (not e!854075))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130746 (= res!1050150 (validMask!0 mask!2480))))

(assert (=> start!130746 e!854075))

(assert (=> start!130746 true))

(declare-datatypes ((array!101771 0))(
  ( (array!101772 (arr!49097 (Array (_ BitVec 32) (_ BitVec 64))) (size!49648 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101771)

(declare-fun array_inv!38042 (array!101771) Bool)

(assert (=> start!130746 (array_inv!38042 a!2792)))

(declare-fun b!1532922 () Bool)

(declare-fun res!1050146 () Bool)

(assert (=> b!1532922 (=> (not res!1050146) (not e!854075))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532922 (= res!1050146 (validKeyInArray!0 (select (arr!49097 a!2792) j!64)))))

(declare-fun b!1532923 () Bool)

(declare-fun res!1050149 () Bool)

(assert (=> b!1532923 (=> (not res!1050149) (not e!854075))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101771 (_ BitVec 32)) Bool)

(assert (=> b!1532923 (= res!1050149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532924 () Bool)

(declare-fun res!1050147 () Bool)

(assert (=> b!1532924 (=> (not res!1050147) (not e!854075))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532924 (= res!1050147 (validKeyInArray!0 (select (arr!49097 a!2792) i!951)))))

(declare-fun b!1532925 () Bool)

(declare-fun res!1050148 () Bool)

(assert (=> b!1532925 (=> (not res!1050148) (not e!854075))))

(assert (=> b!1532925 (= res!1050148 (and (= (size!49648 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49648 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49648 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532926 () Bool)

(assert (=> b!1532926 (= e!854075 false)))

(declare-fun lt!663685 () Bool)

(declare-datatypes ((List!35751 0))(
  ( (Nil!35748) (Cons!35747 (h!37193 (_ BitVec 64)) (t!50452 List!35751)) )
))
(declare-fun arrayNoDuplicates!0 (array!101771 (_ BitVec 32) List!35751) Bool)

(assert (=> b!1532926 (= lt!663685 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35748))))

(assert (= (and start!130746 res!1050150) b!1532925))

(assert (= (and b!1532925 res!1050148) b!1532924))

(assert (= (and b!1532924 res!1050147) b!1532922))

(assert (= (and b!1532922 res!1050146) b!1532923))

(assert (= (and b!1532923 res!1050149) b!1532926))

(declare-fun m!1415683 () Bool)

(assert (=> start!130746 m!1415683))

(declare-fun m!1415685 () Bool)

(assert (=> start!130746 m!1415685))

(declare-fun m!1415687 () Bool)

(assert (=> b!1532926 m!1415687))

(declare-fun m!1415689 () Bool)

(assert (=> b!1532924 m!1415689))

(assert (=> b!1532924 m!1415689))

(declare-fun m!1415691 () Bool)

(assert (=> b!1532924 m!1415691))

(declare-fun m!1415693 () Bool)

(assert (=> b!1532923 m!1415693))

(declare-fun m!1415695 () Bool)

(assert (=> b!1532922 m!1415695))

(assert (=> b!1532922 m!1415695))

(declare-fun m!1415697 () Bool)

(assert (=> b!1532922 m!1415697))

(check-sat (not b!1532923) (not b!1532926) (not b!1532922) (not start!130746) (not b!1532924))
