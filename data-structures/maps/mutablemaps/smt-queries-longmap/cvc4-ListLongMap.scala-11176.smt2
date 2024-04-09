; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130724 () Bool)

(assert start!130724)

(declare-fun res!1049966 () Bool)

(declare-fun e!854008 () Bool)

(assert (=> start!130724 (=> (not res!1049966) (not e!854008))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130724 (= res!1049966 (validMask!0 mask!2480))))

(assert (=> start!130724 e!854008))

(assert (=> start!130724 true))

(declare-datatypes ((array!101749 0))(
  ( (array!101750 (arr!49086 (Array (_ BitVec 32) (_ BitVec 64))) (size!49637 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101749)

(declare-fun array_inv!38031 (array!101749) Bool)

(assert (=> start!130724 (array_inv!38031 a!2792)))

(declare-fun b!1532739 () Bool)

(declare-fun res!1049964 () Bool)

(assert (=> b!1532739 (=> (not res!1049964) (not e!854008))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532739 (= res!1049964 (validKeyInArray!0 (select (arr!49086 a!2792) i!951)))))

(declare-fun b!1532740 () Bool)

(declare-fun res!1049967 () Bool)

(assert (=> b!1532740 (=> (not res!1049967) (not e!854008))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1532740 (= res!1049967 (and (= (size!49637 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49637 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49637 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532741 () Bool)

(declare-fun res!1049965 () Bool)

(assert (=> b!1532741 (=> (not res!1049965) (not e!854008))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101749 (_ BitVec 32)) Bool)

(assert (=> b!1532741 (= res!1049965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532742 () Bool)

(declare-fun res!1049963 () Bool)

(assert (=> b!1532742 (=> (not res!1049963) (not e!854008))))

(assert (=> b!1532742 (= res!1049963 (validKeyInArray!0 (select (arr!49086 a!2792) j!64)))))

(declare-fun b!1532743 () Bool)

(assert (=> b!1532743 (= e!854008 false)))

(declare-fun lt!663670 () Bool)

(declare-datatypes ((List!35740 0))(
  ( (Nil!35737) (Cons!35736 (h!37182 (_ BitVec 64)) (t!50441 List!35740)) )
))
(declare-fun arrayNoDuplicates!0 (array!101749 (_ BitVec 32) List!35740) Bool)

(assert (=> b!1532743 (= lt!663670 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35737))))

(assert (= (and start!130724 res!1049966) b!1532740))

(assert (= (and b!1532740 res!1049967) b!1532739))

(assert (= (and b!1532739 res!1049964) b!1532742))

(assert (= (and b!1532742 res!1049963) b!1532741))

(assert (= (and b!1532741 res!1049965) b!1532743))

(declare-fun m!1415495 () Bool)

(assert (=> b!1532743 m!1415495))

(declare-fun m!1415497 () Bool)

(assert (=> start!130724 m!1415497))

(declare-fun m!1415499 () Bool)

(assert (=> start!130724 m!1415499))

(declare-fun m!1415501 () Bool)

(assert (=> b!1532742 m!1415501))

(assert (=> b!1532742 m!1415501))

(declare-fun m!1415503 () Bool)

(assert (=> b!1532742 m!1415503))

(declare-fun m!1415505 () Bool)

(assert (=> b!1532741 m!1415505))

(declare-fun m!1415507 () Bool)

(assert (=> b!1532739 m!1415507))

(assert (=> b!1532739 m!1415507))

(declare-fun m!1415509 () Bool)

(assert (=> b!1532739 m!1415509))

(push 1)

(assert (not b!1532739))

(assert (not b!1532741))

(assert (not start!130724))

(assert (not b!1532743))

(assert (not b!1532742))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

