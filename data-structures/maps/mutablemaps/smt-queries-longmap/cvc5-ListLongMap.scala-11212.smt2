; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130936 () Bool)

(assert start!130936)

(declare-fun b!1535266 () Bool)

(declare-fun res!1052494 () Bool)

(declare-fun e!854738 () Bool)

(assert (=> b!1535266 (=> (not res!1052494) (not e!854738))))

(declare-datatypes ((array!101961 0))(
  ( (array!101962 (arr!49192 (Array (_ BitVec 32) (_ BitVec 64))) (size!49743 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101961)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101961 (_ BitVec 32)) Bool)

(assert (=> b!1535266 (= res!1052494 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535267 () Bool)

(declare-fun res!1052496 () Bool)

(assert (=> b!1535267 (=> (not res!1052496) (not e!854738))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13347 0))(
  ( (MissingZero!13347 (index!55782 (_ BitVec 32))) (Found!13347 (index!55783 (_ BitVec 32))) (Intermediate!13347 (undefined!14159 Bool) (index!55784 (_ BitVec 32)) (x!137536 (_ BitVec 32))) (Undefined!13347) (MissingVacant!13347 (index!55785 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101961 (_ BitVec 32)) SeekEntryResult!13347)

(assert (=> b!1535267 (= res!1052496 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49192 a!2792) j!64) a!2792 mask!2480) (Found!13347 j!64)))))

(declare-fun b!1535268 () Bool)

(declare-fun res!1052490 () Bool)

(assert (=> b!1535268 (=> (not res!1052490) (not e!854738))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535268 (= res!1052490 (validKeyInArray!0 (select (arr!49192 a!2792) i!951)))))

(declare-fun b!1535269 () Bool)

(declare-fun res!1052498 () Bool)

(assert (=> b!1535269 (=> (not res!1052498) (not e!854738))))

(assert (=> b!1535269 (= res!1052498 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49743 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49743 a!2792)) (= (select (arr!49192 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535270 () Bool)

(declare-fun res!1052495 () Bool)

(assert (=> b!1535270 (=> (not res!1052495) (not e!854738))))

(assert (=> b!1535270 (= res!1052495 (not (= (select (arr!49192 a!2792) index!463) (select (arr!49192 a!2792) j!64))))))

(declare-fun b!1535271 () Bool)

(declare-fun res!1052497 () Bool)

(assert (=> b!1535271 (=> (not res!1052497) (not e!854738))))

(assert (=> b!1535271 (= res!1052497 (and (= (size!49743 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49743 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49743 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1052492 () Bool)

(assert (=> start!130936 (=> (not res!1052492) (not e!854738))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130936 (= res!1052492 (validMask!0 mask!2480))))

(assert (=> start!130936 e!854738))

(assert (=> start!130936 true))

(declare-fun array_inv!38137 (array!101961) Bool)

(assert (=> start!130936 (array_inv!38137 a!2792)))

(declare-fun b!1535272 () Bool)

(declare-fun res!1052499 () Bool)

(assert (=> b!1535272 (=> (not res!1052499) (not e!854738))))

(assert (=> b!1535272 (= res!1052499 (validKeyInArray!0 (select (arr!49192 a!2792) j!64)))))

(declare-fun b!1535273 () Bool)

(declare-fun res!1052493 () Bool)

(assert (=> b!1535273 (=> (not res!1052493) (not e!854738))))

(declare-datatypes ((List!35846 0))(
  ( (Nil!35843) (Cons!35842 (h!37288 (_ BitVec 64)) (t!50547 List!35846)) )
))
(declare-fun arrayNoDuplicates!0 (array!101961 (_ BitVec 32) List!35846) Bool)

(assert (=> b!1535273 (= res!1052493 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35843))))

(declare-fun b!1535274 () Bool)

(declare-fun e!854736 () Bool)

(assert (=> b!1535274 (= e!854738 e!854736)))

(declare-fun res!1052491 () Bool)

(assert (=> b!1535274 (=> (not res!1052491) (not e!854736))))

(declare-fun lt!663973 () (_ BitVec 32))

(assert (=> b!1535274 (= res!1052491 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663973 #b00000000000000000000000000000000) (bvslt lt!663973 (size!49743 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535274 (= lt!663973 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535275 () Bool)

(assert (=> b!1535275 (= e!854736 false)))

(declare-fun lt!663972 () SeekEntryResult!13347)

(assert (=> b!1535275 (= lt!663972 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663973 vacantIndex!5 (select (arr!49192 a!2792) j!64) a!2792 mask!2480))))

(assert (= (and start!130936 res!1052492) b!1535271))

(assert (= (and b!1535271 res!1052497) b!1535268))

(assert (= (and b!1535268 res!1052490) b!1535272))

(assert (= (and b!1535272 res!1052499) b!1535266))

(assert (= (and b!1535266 res!1052494) b!1535273))

(assert (= (and b!1535273 res!1052493) b!1535269))

(assert (= (and b!1535269 res!1052498) b!1535267))

(assert (= (and b!1535267 res!1052496) b!1535270))

(assert (= (and b!1535270 res!1052495) b!1535274))

(assert (= (and b!1535274 res!1052491) b!1535275))

(declare-fun m!1417839 () Bool)

(assert (=> start!130936 m!1417839))

(declare-fun m!1417841 () Bool)

(assert (=> start!130936 m!1417841))

(declare-fun m!1417843 () Bool)

(assert (=> b!1535270 m!1417843))

(declare-fun m!1417845 () Bool)

(assert (=> b!1535270 m!1417845))

(assert (=> b!1535272 m!1417845))

(assert (=> b!1535272 m!1417845))

(declare-fun m!1417847 () Bool)

(assert (=> b!1535272 m!1417847))

(declare-fun m!1417849 () Bool)

(assert (=> b!1535273 m!1417849))

(assert (=> b!1535267 m!1417845))

(assert (=> b!1535267 m!1417845))

(declare-fun m!1417851 () Bool)

(assert (=> b!1535267 m!1417851))

(declare-fun m!1417853 () Bool)

(assert (=> b!1535266 m!1417853))

(assert (=> b!1535275 m!1417845))

(assert (=> b!1535275 m!1417845))

(declare-fun m!1417855 () Bool)

(assert (=> b!1535275 m!1417855))

(declare-fun m!1417857 () Bool)

(assert (=> b!1535269 m!1417857))

(declare-fun m!1417859 () Bool)

(assert (=> b!1535268 m!1417859))

(assert (=> b!1535268 m!1417859))

(declare-fun m!1417861 () Bool)

(assert (=> b!1535268 m!1417861))

(declare-fun m!1417863 () Bool)

(assert (=> b!1535274 m!1417863))

(push 1)

