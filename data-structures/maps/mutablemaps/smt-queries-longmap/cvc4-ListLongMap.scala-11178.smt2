; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130736 () Bool)

(assert start!130736)

(declare-fun b!1532838 () Bool)

(declare-fun e!854044 () Bool)

(assert (=> b!1532838 (= e!854044 false)))

(declare-fun lt!663679 () Bool)

(declare-datatypes ((array!101761 0))(
  ( (array!101762 (arr!49092 (Array (_ BitVec 32) (_ BitVec 64))) (size!49643 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101761)

(declare-datatypes ((List!35746 0))(
  ( (Nil!35743) (Cons!35742 (h!37188 (_ BitVec 64)) (t!50447 List!35746)) )
))
(declare-fun arrayNoDuplicates!0 (array!101761 (_ BitVec 32) List!35746) Bool)

(assert (=> b!1532838 (= lt!663679 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35743))))

(declare-fun res!1050064 () Bool)

(assert (=> start!130736 (=> (not res!1050064) (not e!854044))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130736 (= res!1050064 (validMask!0 mask!2480))))

(assert (=> start!130736 e!854044))

(assert (=> start!130736 true))

(declare-fun array_inv!38037 (array!101761) Bool)

(assert (=> start!130736 (array_inv!38037 a!2792)))

(declare-fun b!1532839 () Bool)

(declare-fun res!1050062 () Bool)

(assert (=> b!1532839 (=> (not res!1050062) (not e!854044))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532839 (= res!1050062 (validKeyInArray!0 (select (arr!49092 a!2792) j!64)))))

(declare-fun b!1532840 () Bool)

(declare-fun res!1050066 () Bool)

(assert (=> b!1532840 (=> (not res!1050066) (not e!854044))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532840 (= res!1050066 (validKeyInArray!0 (select (arr!49092 a!2792) i!951)))))

(declare-fun b!1532841 () Bool)

(declare-fun res!1050063 () Bool)

(assert (=> b!1532841 (=> (not res!1050063) (not e!854044))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101761 (_ BitVec 32)) Bool)

(assert (=> b!1532841 (= res!1050063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532842 () Bool)

(declare-fun res!1050065 () Bool)

(assert (=> b!1532842 (=> (not res!1050065) (not e!854044))))

(assert (=> b!1532842 (= res!1050065 (and (= (size!49643 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49643 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49643 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!130736 res!1050064) b!1532842))

(assert (= (and b!1532842 res!1050065) b!1532840))

(assert (= (and b!1532840 res!1050066) b!1532839))

(assert (= (and b!1532839 res!1050062) b!1532841))

(assert (= (and b!1532841 res!1050063) b!1532838))

(declare-fun m!1415597 () Bool)

(assert (=> start!130736 m!1415597))

(declare-fun m!1415599 () Bool)

(assert (=> start!130736 m!1415599))

(declare-fun m!1415601 () Bool)

(assert (=> b!1532839 m!1415601))

(assert (=> b!1532839 m!1415601))

(declare-fun m!1415603 () Bool)

(assert (=> b!1532839 m!1415603))

(declare-fun m!1415605 () Bool)

(assert (=> b!1532841 m!1415605))

(declare-fun m!1415607 () Bool)

(assert (=> b!1532838 m!1415607))

(declare-fun m!1415609 () Bool)

(assert (=> b!1532840 m!1415609))

(assert (=> b!1532840 m!1415609))

(declare-fun m!1415611 () Bool)

(assert (=> b!1532840 m!1415611))

(push 1)

(assert (not b!1532839))

(assert (not b!1532838))

(assert (not b!1532840))

(assert (not b!1532841))

(assert (not start!130736))

(check-sat)

(pop 1)

(push 1)

