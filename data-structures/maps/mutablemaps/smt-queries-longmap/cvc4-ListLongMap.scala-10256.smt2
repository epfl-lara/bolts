; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120632 () Bool)

(assert start!120632)

(declare-fun b!1404029 () Bool)

(declare-fun res!942651 () Bool)

(declare-fun e!794915 () Bool)

(assert (=> b!1404029 (=> (not res!942651) (not e!794915))))

(declare-datatypes ((array!95959 0))(
  ( (array!95960 (arr!46326 (Array (_ BitVec 32) (_ BitVec 64))) (size!46877 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95959)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95959 (_ BitVec 32)) Bool)

(assert (=> b!1404029 (= res!942651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1404030 () Bool)

(assert (=> b!1404030 (= e!794915 false)))

(declare-fun lt!618529 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404030 (= lt!618529 (toIndex!0 (select (arr!46326 a!2901) j!112) mask!2840))))

(declare-fun res!942650 () Bool)

(assert (=> start!120632 (=> (not res!942650) (not e!794915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120632 (= res!942650 (validMask!0 mask!2840))))

(assert (=> start!120632 e!794915))

(assert (=> start!120632 true))

(declare-fun array_inv!35271 (array!95959) Bool)

(assert (=> start!120632 (array_inv!35271 a!2901)))

(declare-fun b!1404031 () Bool)

(declare-fun res!942652 () Bool)

(assert (=> b!1404031 (=> (not res!942652) (not e!794915))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404031 (= res!942652 (validKeyInArray!0 (select (arr!46326 a!2901) i!1037)))))

(declare-fun b!1404032 () Bool)

(declare-fun res!942653 () Bool)

(assert (=> b!1404032 (=> (not res!942653) (not e!794915))))

(assert (=> b!1404032 (= res!942653 (validKeyInArray!0 (select (arr!46326 a!2901) j!112)))))

(declare-fun b!1404033 () Bool)

(declare-fun res!942649 () Bool)

(assert (=> b!1404033 (=> (not res!942649) (not e!794915))))

(assert (=> b!1404033 (= res!942649 (and (= (size!46877 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46877 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46877 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404034 () Bool)

(declare-fun res!942654 () Bool)

(assert (=> b!1404034 (=> (not res!942654) (not e!794915))))

(declare-datatypes ((List!33025 0))(
  ( (Nil!33022) (Cons!33021 (h!34269 (_ BitVec 64)) (t!47726 List!33025)) )
))
(declare-fun arrayNoDuplicates!0 (array!95959 (_ BitVec 32) List!33025) Bool)

(assert (=> b!1404034 (= res!942654 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33022))))

(assert (= (and start!120632 res!942650) b!1404033))

(assert (= (and b!1404033 res!942649) b!1404031))

(assert (= (and b!1404031 res!942652) b!1404032))

(assert (= (and b!1404032 res!942653) b!1404029))

(assert (= (and b!1404029 res!942651) b!1404034))

(assert (= (and b!1404034 res!942654) b!1404030))

(declare-fun m!1292891 () Bool)

(assert (=> b!1404034 m!1292891))

(declare-fun m!1292893 () Bool)

(assert (=> b!1404029 m!1292893))

(declare-fun m!1292895 () Bool)

(assert (=> start!120632 m!1292895))

(declare-fun m!1292897 () Bool)

(assert (=> start!120632 m!1292897))

(declare-fun m!1292899 () Bool)

(assert (=> b!1404031 m!1292899))

(assert (=> b!1404031 m!1292899))

(declare-fun m!1292901 () Bool)

(assert (=> b!1404031 m!1292901))

(declare-fun m!1292903 () Bool)

(assert (=> b!1404032 m!1292903))

(assert (=> b!1404032 m!1292903))

(declare-fun m!1292905 () Bool)

(assert (=> b!1404032 m!1292905))

(assert (=> b!1404030 m!1292903))

(assert (=> b!1404030 m!1292903))

(declare-fun m!1292907 () Bool)

(assert (=> b!1404030 m!1292907))

(push 1)

(assert (not b!1404032))

(assert (not start!120632))

(assert (not b!1404030))

(assert (not b!1404031))

(assert (not b!1404029))

(assert (not b!1404034))

(check-sat)

(pop 1)

(push 1)

(check-sat)

