; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118574 () Bool)

(assert start!118574)

(declare-fun res!927093 () Bool)

(declare-fun e!785150 () Bool)

(assert (=> start!118574 (=> (not res!927093) (not e!785150))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118574 (= res!927093 (validMask!0 mask!2987))))

(assert (=> start!118574 e!785150))

(assert (=> start!118574 true))

(declare-datatypes ((array!94768 0))(
  ( (array!94769 (arr!45756 (Array (_ BitVec 32) (_ BitVec 64))) (size!46307 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94768)

(declare-fun array_inv!34701 (array!94768) Bool)

(assert (=> start!118574 (array_inv!34701 a!2938)))

(declare-fun b!1385734 () Bool)

(declare-fun res!927094 () Bool)

(assert (=> b!1385734 (=> (not res!927094) (not e!785150))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1385734 (= res!927094 (and (= (size!46307 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46307 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46307 a!2938))))))

(declare-fun b!1385737 () Bool)

(assert (=> b!1385737 (= e!785150 false)))

(declare-fun lt!609262 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94768 (_ BitVec 32)) Bool)

(assert (=> b!1385737 (= lt!609262 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385736 () Bool)

(declare-fun res!927096 () Bool)

(assert (=> b!1385736 (=> (not res!927096) (not e!785150))))

(declare-datatypes ((List!32464 0))(
  ( (Nil!32461) (Cons!32460 (h!33669 (_ BitVec 64)) (t!47165 List!32464)) )
))
(declare-fun arrayNoDuplicates!0 (array!94768 (_ BitVec 32) List!32464) Bool)

(assert (=> b!1385736 (= res!927096 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32461))))

(declare-fun b!1385735 () Bool)

(declare-fun res!927095 () Bool)

(assert (=> b!1385735 (=> (not res!927095) (not e!785150))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385735 (= res!927095 (validKeyInArray!0 (select (arr!45756 a!2938) i!1065)))))

(assert (= (and start!118574 res!927093) b!1385734))

(assert (= (and b!1385734 res!927094) b!1385735))

(assert (= (and b!1385735 res!927095) b!1385736))

(assert (= (and b!1385736 res!927096) b!1385737))

(declare-fun m!1271069 () Bool)

(assert (=> start!118574 m!1271069))

(declare-fun m!1271071 () Bool)

(assert (=> start!118574 m!1271071))

(declare-fun m!1271073 () Bool)

(assert (=> b!1385737 m!1271073))

(declare-fun m!1271075 () Bool)

(assert (=> b!1385736 m!1271075))

(declare-fun m!1271077 () Bool)

(assert (=> b!1385735 m!1271077))

(assert (=> b!1385735 m!1271077))

(declare-fun m!1271079 () Bool)

(assert (=> b!1385735 m!1271079))

(push 1)

(assert (not b!1385735))

(assert (not b!1385737))

(assert (not b!1385736))

(assert (not start!118574))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

