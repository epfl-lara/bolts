; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118580 () Bool)

(assert start!118580)

(declare-fun res!927129 () Bool)

(declare-fun e!785167 () Bool)

(assert (=> start!118580 (=> (not res!927129) (not e!785167))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118580 (= res!927129 (validMask!0 mask!2987))))

(assert (=> start!118580 e!785167))

(assert (=> start!118580 true))

(declare-datatypes ((array!94774 0))(
  ( (array!94775 (arr!45759 (Array (_ BitVec 32) (_ BitVec 64))) (size!46310 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94774)

(declare-fun array_inv!34704 (array!94774) Bool)

(assert (=> start!118580 (array_inv!34704 a!2938)))

(declare-fun b!1385773 () Bool)

(assert (=> b!1385773 (= e!785167 false)))

(declare-fun lt!609271 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94774 (_ BitVec 32)) Bool)

(assert (=> b!1385773 (= lt!609271 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385770 () Bool)

(declare-fun res!927130 () Bool)

(assert (=> b!1385770 (=> (not res!927130) (not e!785167))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1385770 (= res!927130 (and (= (size!46310 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46310 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46310 a!2938))))))

(declare-fun b!1385771 () Bool)

(declare-fun res!927132 () Bool)

(assert (=> b!1385771 (=> (not res!927132) (not e!785167))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385771 (= res!927132 (validKeyInArray!0 (select (arr!45759 a!2938) i!1065)))))

(declare-fun b!1385772 () Bool)

(declare-fun res!927131 () Bool)

(assert (=> b!1385772 (=> (not res!927131) (not e!785167))))

(declare-datatypes ((List!32467 0))(
  ( (Nil!32464) (Cons!32463 (h!33672 (_ BitVec 64)) (t!47168 List!32467)) )
))
(declare-fun arrayNoDuplicates!0 (array!94774 (_ BitVec 32) List!32467) Bool)

(assert (=> b!1385772 (= res!927131 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32464))))

(assert (= (and start!118580 res!927129) b!1385770))

(assert (= (and b!1385770 res!927130) b!1385771))

(assert (= (and b!1385771 res!927132) b!1385772))

(assert (= (and b!1385772 res!927131) b!1385773))

(declare-fun m!1271105 () Bool)

(assert (=> start!118580 m!1271105))

(declare-fun m!1271107 () Bool)

(assert (=> start!118580 m!1271107))

(declare-fun m!1271109 () Bool)

(assert (=> b!1385773 m!1271109))

(declare-fun m!1271111 () Bool)

(assert (=> b!1385771 m!1271111))

(assert (=> b!1385771 m!1271111))

(declare-fun m!1271113 () Bool)

(assert (=> b!1385771 m!1271113))

(declare-fun m!1271115 () Bool)

(assert (=> b!1385772 m!1271115))

(push 1)

(assert (not b!1385773))

(assert (not start!118580))

(assert (not b!1385772))

(assert (not b!1385771))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

