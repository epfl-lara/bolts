; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118586 () Bool)

(assert start!118586)

(declare-fun b!1385807 () Bool)

(declare-fun res!927168 () Bool)

(declare-fun e!785185 () Bool)

(assert (=> b!1385807 (=> (not res!927168) (not e!785185))))

(declare-datatypes ((array!94780 0))(
  ( (array!94781 (arr!45762 (Array (_ BitVec 32) (_ BitVec 64))) (size!46313 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94780)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385807 (= res!927168 (validKeyInArray!0 (select (arr!45762 a!2938) i!1065)))))

(declare-fun res!927166 () Bool)

(assert (=> start!118586 (=> (not res!927166) (not e!785185))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118586 (= res!927166 (validMask!0 mask!2987))))

(assert (=> start!118586 e!785185))

(assert (=> start!118586 true))

(declare-fun array_inv!34707 (array!94780) Bool)

(assert (=> start!118586 (array_inv!34707 a!2938)))

(declare-fun b!1385806 () Bool)

(declare-fun res!927165 () Bool)

(assert (=> b!1385806 (=> (not res!927165) (not e!785185))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385806 (= res!927165 (and (= (size!46313 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46313 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46313 a!2938))))))

(declare-fun b!1385808 () Bool)

(declare-fun res!927167 () Bool)

(assert (=> b!1385808 (=> (not res!927167) (not e!785185))))

(declare-datatypes ((List!32470 0))(
  ( (Nil!32467) (Cons!32466 (h!33675 (_ BitVec 64)) (t!47171 List!32470)) )
))
(declare-fun arrayNoDuplicates!0 (array!94780 (_ BitVec 32) List!32470) Bool)

(assert (=> b!1385808 (= res!927167 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32467))))

(declare-fun b!1385809 () Bool)

(assert (=> b!1385809 (= e!785185 false)))

(declare-fun lt!609280 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94780 (_ BitVec 32)) Bool)

(assert (=> b!1385809 (= lt!609280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118586 res!927166) b!1385806))

(assert (= (and b!1385806 res!927165) b!1385807))

(assert (= (and b!1385807 res!927168) b!1385808))

(assert (= (and b!1385808 res!927167) b!1385809))

(declare-fun m!1271141 () Bool)

(assert (=> b!1385807 m!1271141))

(assert (=> b!1385807 m!1271141))

(declare-fun m!1271143 () Bool)

(assert (=> b!1385807 m!1271143))

(declare-fun m!1271145 () Bool)

(assert (=> start!118586 m!1271145))

(declare-fun m!1271147 () Bool)

(assert (=> start!118586 m!1271147))

(declare-fun m!1271149 () Bool)

(assert (=> b!1385808 m!1271149))

(declare-fun m!1271151 () Bool)

(assert (=> b!1385809 m!1271151))

(push 1)

(assert (not b!1385809))

(assert (not b!1385808))

(assert (not start!118586))

(assert (not b!1385807))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

