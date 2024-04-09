; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118570 () Bool)

(assert start!118570)

(declare-fun b!1385710 () Bool)

(declare-fun res!927072 () Bool)

(declare-fun e!785137 () Bool)

(assert (=> b!1385710 (=> (not res!927072) (not e!785137))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94764 0))(
  ( (array!94765 (arr!45754 (Array (_ BitVec 32) (_ BitVec 64))) (size!46305 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94764)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1385710 (= res!927072 (and (= (size!46305 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46305 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46305 a!2938))))))

(declare-fun b!1385713 () Bool)

(assert (=> b!1385713 (= e!785137 false)))

(declare-fun lt!609256 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94764 (_ BitVec 32)) Bool)

(assert (=> b!1385713 (= lt!609256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!927069 () Bool)

(assert (=> start!118570 (=> (not res!927069) (not e!785137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118570 (= res!927069 (validMask!0 mask!2987))))

(assert (=> start!118570 e!785137))

(assert (=> start!118570 true))

(declare-fun array_inv!34699 (array!94764) Bool)

(assert (=> start!118570 (array_inv!34699 a!2938)))

(declare-fun b!1385712 () Bool)

(declare-fun res!927071 () Bool)

(assert (=> b!1385712 (=> (not res!927071) (not e!785137))))

(declare-datatypes ((List!32462 0))(
  ( (Nil!32459) (Cons!32458 (h!33667 (_ BitVec 64)) (t!47163 List!32462)) )
))
(declare-fun arrayNoDuplicates!0 (array!94764 (_ BitVec 32) List!32462) Bool)

(assert (=> b!1385712 (= res!927071 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32459))))

(declare-fun b!1385711 () Bool)

(declare-fun res!927070 () Bool)

(assert (=> b!1385711 (=> (not res!927070) (not e!785137))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385711 (= res!927070 (validKeyInArray!0 (select (arr!45754 a!2938) i!1065)))))

(assert (= (and start!118570 res!927069) b!1385710))

(assert (= (and b!1385710 res!927072) b!1385711))

(assert (= (and b!1385711 res!927070) b!1385712))

(assert (= (and b!1385712 res!927071) b!1385713))

(declare-fun m!1271045 () Bool)

(assert (=> b!1385713 m!1271045))

(declare-fun m!1271047 () Bool)

(assert (=> start!118570 m!1271047))

(declare-fun m!1271049 () Bool)

(assert (=> start!118570 m!1271049))

(declare-fun m!1271051 () Bool)

(assert (=> b!1385712 m!1271051))

(declare-fun m!1271053 () Bool)

(assert (=> b!1385711 m!1271053))

(assert (=> b!1385711 m!1271053))

(declare-fun m!1271055 () Bool)

(assert (=> b!1385711 m!1271055))

(push 1)

(assert (not b!1385713))

(assert (not b!1385712))

(assert (not start!118570))

(assert (not b!1385711))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

