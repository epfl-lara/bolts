; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118568 () Bool)

(assert start!118568)

(declare-fun b!1385699 () Bool)

(declare-fun res!927059 () Bool)

(declare-fun e!785131 () Bool)

(assert (=> b!1385699 (=> (not res!927059) (not e!785131))))

(declare-datatypes ((array!94762 0))(
  ( (array!94763 (arr!45753 (Array (_ BitVec 32) (_ BitVec 64))) (size!46304 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94762)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385699 (= res!927059 (validKeyInArray!0 (select (arr!45753 a!2938) i!1065)))))

(declare-fun b!1385701 () Bool)

(assert (=> b!1385701 (= e!785131 false)))

(declare-fun lt!609253 () Bool)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94762 (_ BitVec 32)) Bool)

(assert (=> b!1385701 (= lt!609253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!927058 () Bool)

(assert (=> start!118568 (=> (not res!927058) (not e!785131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118568 (= res!927058 (validMask!0 mask!2987))))

(assert (=> start!118568 e!785131))

(assert (=> start!118568 true))

(declare-fun array_inv!34698 (array!94762) Bool)

(assert (=> start!118568 (array_inv!34698 a!2938)))

(declare-fun b!1385700 () Bool)

(declare-fun res!927057 () Bool)

(assert (=> b!1385700 (=> (not res!927057) (not e!785131))))

(declare-datatypes ((List!32461 0))(
  ( (Nil!32458) (Cons!32457 (h!33666 (_ BitVec 64)) (t!47162 List!32461)) )
))
(declare-fun arrayNoDuplicates!0 (array!94762 (_ BitVec 32) List!32461) Bool)

(assert (=> b!1385700 (= res!927057 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32458))))

(declare-fun b!1385698 () Bool)

(declare-fun res!927060 () Bool)

(assert (=> b!1385698 (=> (not res!927060) (not e!785131))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385698 (= res!927060 (and (= (size!46304 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46304 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46304 a!2938))))))

(assert (= (and start!118568 res!927058) b!1385698))

(assert (= (and b!1385698 res!927060) b!1385699))

(assert (= (and b!1385699 res!927059) b!1385700))

(assert (= (and b!1385700 res!927057) b!1385701))

(declare-fun m!1271033 () Bool)

(assert (=> b!1385699 m!1271033))

(assert (=> b!1385699 m!1271033))

(declare-fun m!1271035 () Bool)

(assert (=> b!1385699 m!1271035))

(declare-fun m!1271037 () Bool)

(assert (=> b!1385701 m!1271037))

(declare-fun m!1271039 () Bool)

(assert (=> start!118568 m!1271039))

(declare-fun m!1271041 () Bool)

(assert (=> start!118568 m!1271041))

(declare-fun m!1271043 () Bool)

(assert (=> b!1385700 m!1271043))

(push 1)

(assert (not start!118568))

(assert (not b!1385700))

(assert (not b!1385701))

(assert (not b!1385699))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

