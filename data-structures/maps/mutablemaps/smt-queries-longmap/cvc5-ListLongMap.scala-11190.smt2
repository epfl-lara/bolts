; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130804 () Bool)

(assert start!130804)

(declare-fun b!1533559 () Bool)

(declare-fun res!1050787 () Bool)

(declare-fun e!854249 () Bool)

(assert (=> b!1533559 (=> (not res!1050787) (not e!854249))))

(declare-datatypes ((array!101829 0))(
  ( (array!101830 (arr!49126 (Array (_ BitVec 32) (_ BitVec 64))) (size!49677 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101829)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533559 (= res!1050787 (validKeyInArray!0 (select (arr!49126 a!2792) j!64)))))

(declare-fun b!1533560 () Bool)

(declare-fun res!1050783 () Bool)

(assert (=> b!1533560 (=> (not res!1050783) (not e!854249))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1533560 (= res!1050783 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49677 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49677 a!2792)) (= (select (arr!49126 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533561 () Bool)

(declare-fun res!1050786 () Bool)

(assert (=> b!1533561 (=> (not res!1050786) (not e!854249))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533561 (= res!1050786 (and (= (size!49677 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49677 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49677 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533562 () Bool)

(declare-fun res!1050788 () Bool)

(assert (=> b!1533562 (=> (not res!1050788) (not e!854249))))

(declare-datatypes ((List!35780 0))(
  ( (Nil!35777) (Cons!35776 (h!37222 (_ BitVec 64)) (t!50481 List!35780)) )
))
(declare-fun arrayNoDuplicates!0 (array!101829 (_ BitVec 32) List!35780) Bool)

(assert (=> b!1533562 (= res!1050788 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35777))))

(declare-fun b!1533563 () Bool)

(assert (=> b!1533563 (= e!854249 false)))

(declare-datatypes ((SeekEntryResult!13281 0))(
  ( (MissingZero!13281 (index!55518 (_ BitVec 32))) (Found!13281 (index!55519 (_ BitVec 32))) (Intermediate!13281 (undefined!14093 Bool) (index!55520 (_ BitVec 32)) (x!137294 (_ BitVec 32))) (Undefined!13281) (MissingVacant!13281 (index!55521 (_ BitVec 32))) )
))
(declare-fun lt!663727 () SeekEntryResult!13281)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101829 (_ BitVec 32)) SeekEntryResult!13281)

(assert (=> b!1533563 (= lt!663727 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49126 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1533564 () Bool)

(declare-fun res!1050789 () Bool)

(assert (=> b!1533564 (=> (not res!1050789) (not e!854249))))

(assert (=> b!1533564 (= res!1050789 (validKeyInArray!0 (select (arr!49126 a!2792) i!951)))))

(declare-fun res!1050784 () Bool)

(assert (=> start!130804 (=> (not res!1050784) (not e!854249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130804 (= res!1050784 (validMask!0 mask!2480))))

(assert (=> start!130804 e!854249))

(assert (=> start!130804 true))

(declare-fun array_inv!38071 (array!101829) Bool)

(assert (=> start!130804 (array_inv!38071 a!2792)))

(declare-fun b!1533565 () Bool)

(declare-fun res!1050785 () Bool)

(assert (=> b!1533565 (=> (not res!1050785) (not e!854249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101829 (_ BitVec 32)) Bool)

(assert (=> b!1533565 (= res!1050785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130804 res!1050784) b!1533561))

(assert (= (and b!1533561 res!1050786) b!1533564))

(assert (= (and b!1533564 res!1050789) b!1533559))

(assert (= (and b!1533559 res!1050787) b!1533565))

(assert (= (and b!1533565 res!1050785) b!1533562))

(assert (= (and b!1533562 res!1050788) b!1533560))

(assert (= (and b!1533560 res!1050783) b!1533563))

(declare-fun m!1416309 () Bool)

(assert (=> b!1533563 m!1416309))

(assert (=> b!1533563 m!1416309))

(declare-fun m!1416311 () Bool)

(assert (=> b!1533563 m!1416311))

(declare-fun m!1416313 () Bool)

(assert (=> b!1533564 m!1416313))

(assert (=> b!1533564 m!1416313))

(declare-fun m!1416315 () Bool)

(assert (=> b!1533564 m!1416315))

(assert (=> b!1533559 m!1416309))

(assert (=> b!1533559 m!1416309))

(declare-fun m!1416317 () Bool)

(assert (=> b!1533559 m!1416317))

(declare-fun m!1416319 () Bool)

(assert (=> b!1533565 m!1416319))

(declare-fun m!1416321 () Bool)

(assert (=> b!1533560 m!1416321))

(declare-fun m!1416323 () Bool)

(assert (=> start!130804 m!1416323))

(declare-fun m!1416325 () Bool)

(assert (=> start!130804 m!1416325))

(declare-fun m!1416327 () Bool)

(assert (=> b!1533562 m!1416327))

(push 1)

(assert (not start!130804))

(assert (not b!1533562))

(assert (not b!1533563))

(assert (not b!1533564))

(assert (not b!1533559))

(assert (not b!1533565))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

