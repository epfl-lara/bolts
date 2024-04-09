; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129590 () Bool)

(assert start!129590)

(declare-fun b!1520811 () Bool)

(declare-fun res!1040171 () Bool)

(declare-fun e!848347 () Bool)

(assert (=> b!1520811 (=> (not res!1040171) (not e!848347))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101192 0))(
  ( (array!101193 (arr!48824 (Array (_ BitVec 32) (_ BitVec 64))) (size!49375 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101192)

(assert (=> b!1520811 (= res!1040171 (and (= (size!49375 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49375 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49375 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1520812 () Bool)

(declare-fun res!1040172 () Bool)

(assert (=> b!1520812 (=> (not res!1040172) (not e!848347))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101192 (_ BitVec 32)) Bool)

(assert (=> b!1520812 (= res!1040172 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1520813 () Bool)

(declare-fun res!1040175 () Bool)

(assert (=> b!1520813 (=> (not res!1040175) (not e!848347))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1520813 (= res!1040175 (validKeyInArray!0 (select (arr!48824 a!2804) j!70)))))

(declare-fun b!1520814 () Bool)

(assert (=> b!1520814 (= e!848347 false)))

(declare-fun lt!659206 () Bool)

(declare-datatypes ((List!35487 0))(
  ( (Nil!35484) (Cons!35483 (h!36905 (_ BitVec 64)) (t!50188 List!35487)) )
))
(declare-fun arrayNoDuplicates!0 (array!101192 (_ BitVec 32) List!35487) Bool)

(assert (=> b!1520814 (= lt!659206 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35484))))

(declare-fun b!1520815 () Bool)

(declare-fun res!1040174 () Bool)

(assert (=> b!1520815 (=> (not res!1040174) (not e!848347))))

(assert (=> b!1520815 (= res!1040174 (validKeyInArray!0 (select (arr!48824 a!2804) i!961)))))

(declare-fun res!1040173 () Bool)

(assert (=> start!129590 (=> (not res!1040173) (not e!848347))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129590 (= res!1040173 (validMask!0 mask!2512))))

(assert (=> start!129590 e!848347))

(assert (=> start!129590 true))

(declare-fun array_inv!37769 (array!101192) Bool)

(assert (=> start!129590 (array_inv!37769 a!2804)))

(assert (= (and start!129590 res!1040173) b!1520811))

(assert (= (and b!1520811 res!1040171) b!1520815))

(assert (= (and b!1520815 res!1040174) b!1520813))

(assert (= (and b!1520813 res!1040175) b!1520812))

(assert (= (and b!1520812 res!1040172) b!1520814))

(declare-fun m!1403997 () Bool)

(assert (=> b!1520813 m!1403997))

(assert (=> b!1520813 m!1403997))

(declare-fun m!1403999 () Bool)

(assert (=> b!1520813 m!1403999))

(declare-fun m!1404001 () Bool)

(assert (=> b!1520812 m!1404001))

(declare-fun m!1404003 () Bool)

(assert (=> start!129590 m!1404003))

(declare-fun m!1404005 () Bool)

(assert (=> start!129590 m!1404005))

(declare-fun m!1404007 () Bool)

(assert (=> b!1520814 m!1404007))

(declare-fun m!1404009 () Bool)

(assert (=> b!1520815 m!1404009))

(assert (=> b!1520815 m!1404009))

(declare-fun m!1404011 () Bool)

(assert (=> b!1520815 m!1404011))

(check-sat (not start!129590) (not b!1520815) (not b!1520814) (not b!1520812) (not b!1520813))
