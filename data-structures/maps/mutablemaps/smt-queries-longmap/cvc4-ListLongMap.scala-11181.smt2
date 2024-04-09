; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130754 () Bool)

(assert start!130754)

(declare-fun b!1532982 () Bool)

(declare-fun res!1050209 () Bool)

(declare-fun e!854099 () Bool)

(assert (=> b!1532982 (=> (not res!1050209) (not e!854099))))

(declare-datatypes ((array!101779 0))(
  ( (array!101780 (arr!49101 (Array (_ BitVec 32) (_ BitVec 64))) (size!49652 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101779)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532982 (= res!1050209 (and (= (size!49652 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49652 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49652 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532983 () Bool)

(declare-fun res!1050206 () Bool)

(assert (=> b!1532983 (=> (not res!1050206) (not e!854099))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101779 (_ BitVec 32)) Bool)

(assert (=> b!1532983 (= res!1050206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532984 () Bool)

(declare-fun res!1050207 () Bool)

(assert (=> b!1532984 (=> (not res!1050207) (not e!854099))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532984 (= res!1050207 (validKeyInArray!0 (select (arr!49101 a!2792) i!951)))))

(declare-fun b!1532985 () Bool)

(assert (=> b!1532985 (= e!854099 false)))

(declare-fun lt!663697 () Bool)

(declare-datatypes ((List!35755 0))(
  ( (Nil!35752) (Cons!35751 (h!37197 (_ BitVec 64)) (t!50456 List!35755)) )
))
(declare-fun arrayNoDuplicates!0 (array!101779 (_ BitVec 32) List!35755) Bool)

(assert (=> b!1532985 (= lt!663697 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35752))))

(declare-fun res!1050210 () Bool)

(assert (=> start!130754 (=> (not res!1050210) (not e!854099))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130754 (= res!1050210 (validMask!0 mask!2480))))

(assert (=> start!130754 e!854099))

(assert (=> start!130754 true))

(declare-fun array_inv!38046 (array!101779) Bool)

(assert (=> start!130754 (array_inv!38046 a!2792)))

(declare-fun b!1532986 () Bool)

(declare-fun res!1050208 () Bool)

(assert (=> b!1532986 (=> (not res!1050208) (not e!854099))))

(assert (=> b!1532986 (= res!1050208 (validKeyInArray!0 (select (arr!49101 a!2792) j!64)))))

(assert (= (and start!130754 res!1050210) b!1532982))

(assert (= (and b!1532982 res!1050209) b!1532984))

(assert (= (and b!1532984 res!1050207) b!1532986))

(assert (= (and b!1532986 res!1050208) b!1532983))

(assert (= (and b!1532983 res!1050206) b!1532985))

(declare-fun m!1415747 () Bool)

(assert (=> start!130754 m!1415747))

(declare-fun m!1415749 () Bool)

(assert (=> start!130754 m!1415749))

(declare-fun m!1415751 () Bool)

(assert (=> b!1532984 m!1415751))

(assert (=> b!1532984 m!1415751))

(declare-fun m!1415753 () Bool)

(assert (=> b!1532984 m!1415753))

(declare-fun m!1415755 () Bool)

(assert (=> b!1532983 m!1415755))

(declare-fun m!1415757 () Bool)

(assert (=> b!1532985 m!1415757))

(declare-fun m!1415759 () Bool)

(assert (=> b!1532986 m!1415759))

(assert (=> b!1532986 m!1415759))

(declare-fun m!1415761 () Bool)

(assert (=> b!1532986 m!1415761))

(push 1)

(assert (not b!1532984))

(assert (not b!1532985))

(assert (not b!1532986))

(assert (not b!1532983))

(assert (not start!130754))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

