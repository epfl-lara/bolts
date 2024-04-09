; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119026 () Bool)

(assert start!119026)

(declare-fun b!1388825 () Bool)

(declare-fun res!929166 () Bool)

(declare-fun e!786775 () Bool)

(assert (=> b!1388825 (=> (not res!929166) (not e!786775))))

(declare-datatypes ((array!94941 0))(
  ( (array!94942 (arr!45835 (Array (_ BitVec 32) (_ BitVec 64))) (size!46386 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94941)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94941 (_ BitVec 32)) Bool)

(assert (=> b!1388825 (= res!929166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1388826 () Bool)

(assert (=> b!1388826 (= e!786775 (bvslt mask!2840 #b00000000000000000000000000000000))))

(declare-fun b!1388827 () Bool)

(declare-fun res!929164 () Bool)

(assert (=> b!1388827 (=> (not res!929164) (not e!786775))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388827 (= res!929164 (validKeyInArray!0 (select (arr!45835 a!2901) j!112)))))

(declare-fun res!929165 () Bool)

(assert (=> start!119026 (=> (not res!929165) (not e!786775))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119026 (= res!929165 (validMask!0 mask!2840))))

(assert (=> start!119026 e!786775))

(assert (=> start!119026 true))

(declare-fun array_inv!34780 (array!94941) Bool)

(assert (=> start!119026 (array_inv!34780 a!2901)))

(declare-fun b!1388828 () Bool)

(declare-fun res!929168 () Bool)

(assert (=> b!1388828 (=> (not res!929168) (not e!786775))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1388828 (= res!929168 (and (= (size!46386 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46386 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46386 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1388829 () Bool)

(declare-fun res!929169 () Bool)

(assert (=> b!1388829 (=> (not res!929169) (not e!786775))))

(assert (=> b!1388829 (= res!929169 (validKeyInArray!0 (select (arr!45835 a!2901) i!1037)))))

(declare-fun b!1388830 () Bool)

(declare-fun res!929167 () Bool)

(assert (=> b!1388830 (=> (not res!929167) (not e!786775))))

(declare-datatypes ((List!32534 0))(
  ( (Nil!32531) (Cons!32530 (h!33745 (_ BitVec 64)) (t!47235 List!32534)) )
))
(declare-fun arrayNoDuplicates!0 (array!94941 (_ BitVec 32) List!32534) Bool)

(assert (=> b!1388830 (= res!929167 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32531))))

(assert (= (and start!119026 res!929165) b!1388828))

(assert (= (and b!1388828 res!929168) b!1388829))

(assert (= (and b!1388829 res!929169) b!1388827))

(assert (= (and b!1388827 res!929164) b!1388825))

(assert (= (and b!1388825 res!929166) b!1388830))

(assert (= (and b!1388830 res!929167) b!1388826))

(declare-fun m!1274603 () Bool)

(assert (=> b!1388827 m!1274603))

(assert (=> b!1388827 m!1274603))

(declare-fun m!1274605 () Bool)

(assert (=> b!1388827 m!1274605))

(declare-fun m!1274607 () Bool)

(assert (=> b!1388830 m!1274607))

(declare-fun m!1274609 () Bool)

(assert (=> b!1388829 m!1274609))

(assert (=> b!1388829 m!1274609))

(declare-fun m!1274611 () Bool)

(assert (=> b!1388829 m!1274611))

(declare-fun m!1274613 () Bool)

(assert (=> b!1388825 m!1274613))

(declare-fun m!1274615 () Bool)

(assert (=> start!119026 m!1274615))

(declare-fun m!1274617 () Bool)

(assert (=> start!119026 m!1274617))

(push 1)

(assert (not b!1388827))

(assert (not start!119026))

(assert (not b!1388830))

