; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130882 () Bool)

(assert start!130882)

(declare-fun b!1534456 () Bool)

(declare-fun res!1051682 () Bool)

(declare-fun e!854495 () Bool)

(assert (=> b!1534456 (=> (not res!1051682) (not e!854495))))

(declare-datatypes ((array!101907 0))(
  ( (array!101908 (arr!49165 (Array (_ BitVec 32) (_ BitVec 64))) (size!49716 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101907)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534456 (= res!1051682 (validKeyInArray!0 (select (arr!49165 a!2792) j!64)))))

(declare-fun b!1534457 () Bool)

(declare-fun res!1051681 () Bool)

(assert (=> b!1534457 (=> (not res!1051681) (not e!854495))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534457 (= res!1051681 (validKeyInArray!0 (select (arr!49165 a!2792) i!951)))))

(declare-fun b!1534458 () Bool)

(declare-fun res!1051680 () Bool)

(assert (=> b!1534458 (=> (not res!1051680) (not e!854495))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101907 (_ BitVec 32)) Bool)

(assert (=> b!1534458 (= res!1051680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1051688 () Bool)

(assert (=> start!130882 (=> (not res!1051688) (not e!854495))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130882 (= res!1051688 (validMask!0 mask!2480))))

(assert (=> start!130882 e!854495))

(assert (=> start!130882 true))

(declare-fun array_inv!38110 (array!101907) Bool)

(assert (=> start!130882 (array_inv!38110 a!2792)))

(declare-fun b!1534459 () Bool)

(declare-fun e!854494 () Bool)

(assert (=> b!1534459 (= e!854494 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13320 0))(
  ( (MissingZero!13320 (index!55674 (_ BitVec 32))) (Found!13320 (index!55675 (_ BitVec 32))) (Intermediate!13320 (undefined!14132 Bool) (index!55676 (_ BitVec 32)) (x!137437 (_ BitVec 32))) (Undefined!13320) (MissingVacant!13320 (index!55677 (_ BitVec 32))) )
))
(declare-fun lt!663811 () SeekEntryResult!13320)

(declare-fun lt!663810 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101907 (_ BitVec 32)) SeekEntryResult!13320)

(assert (=> b!1534459 (= lt!663811 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663810 vacantIndex!5 (select (arr!49165 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534460 () Bool)

(declare-fun res!1051686 () Bool)

(assert (=> b!1534460 (=> (not res!1051686) (not e!854495))))

(assert (=> b!1534460 (= res!1051686 (and (= (size!49716 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49716 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49716 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534461 () Bool)

(declare-fun res!1051689 () Bool)

(assert (=> b!1534461 (=> (not res!1051689) (not e!854495))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1534461 (= res!1051689 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49165 a!2792) j!64) a!2792 mask!2480) (Found!13320 j!64)))))

(declare-fun b!1534462 () Bool)

(declare-fun res!1051684 () Bool)

(assert (=> b!1534462 (=> (not res!1051684) (not e!854495))))

(assert (=> b!1534462 (= res!1051684 (not (= (select (arr!49165 a!2792) index!463) (select (arr!49165 a!2792) j!64))))))

(declare-fun b!1534463 () Bool)

(declare-fun res!1051687 () Bool)

(assert (=> b!1534463 (=> (not res!1051687) (not e!854495))))

(declare-datatypes ((List!35819 0))(
  ( (Nil!35816) (Cons!35815 (h!37261 (_ BitVec 64)) (t!50520 List!35819)) )
))
(declare-fun arrayNoDuplicates!0 (array!101907 (_ BitVec 32) List!35819) Bool)

(assert (=> b!1534463 (= res!1051687 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35816))))

(declare-fun b!1534464 () Bool)

(declare-fun res!1051683 () Bool)

(assert (=> b!1534464 (=> (not res!1051683) (not e!854495))))

(assert (=> b!1534464 (= res!1051683 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49716 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49716 a!2792)) (= (select (arr!49165 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534465 () Bool)

(assert (=> b!1534465 (= e!854495 e!854494)))

(declare-fun res!1051685 () Bool)

(assert (=> b!1534465 (=> (not res!1051685) (not e!854494))))

(assert (=> b!1534465 (= res!1051685 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663810 #b00000000000000000000000000000000) (bvslt lt!663810 (size!49716 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534465 (= lt!663810 (nextIndex!0 index!463 x!510 mask!2480))))

(assert (= (and start!130882 res!1051688) b!1534460))

(assert (= (and b!1534460 res!1051686) b!1534457))

(assert (= (and b!1534457 res!1051681) b!1534456))

(assert (= (and b!1534456 res!1051682) b!1534458))

(assert (= (and b!1534458 res!1051680) b!1534463))

(assert (= (and b!1534463 res!1051687) b!1534464))

(assert (= (and b!1534464 res!1051683) b!1534461))

(assert (= (and b!1534461 res!1051689) b!1534462))

(assert (= (and b!1534462 res!1051684) b!1534465))

(assert (= (and b!1534465 res!1051685) b!1534459))

(declare-fun m!1417137 () Bool)

(assert (=> b!1534462 m!1417137))

(declare-fun m!1417139 () Bool)

(assert (=> b!1534462 m!1417139))

(declare-fun m!1417141 () Bool)

(assert (=> b!1534457 m!1417141))

(assert (=> b!1534457 m!1417141))

(declare-fun m!1417143 () Bool)

(assert (=> b!1534457 m!1417143))

(assert (=> b!1534456 m!1417139))

(assert (=> b!1534456 m!1417139))

(declare-fun m!1417145 () Bool)

(assert (=> b!1534456 m!1417145))

(declare-fun m!1417147 () Bool)

(assert (=> b!1534464 m!1417147))

(declare-fun m!1417149 () Bool)

(assert (=> b!1534465 m!1417149))

(assert (=> b!1534461 m!1417139))

(assert (=> b!1534461 m!1417139))

(declare-fun m!1417151 () Bool)

(assert (=> b!1534461 m!1417151))

(declare-fun m!1417153 () Bool)

(assert (=> b!1534458 m!1417153))

(assert (=> b!1534459 m!1417139))

(assert (=> b!1534459 m!1417139))

(declare-fun m!1417155 () Bool)

(assert (=> b!1534459 m!1417155))

(declare-fun m!1417157 () Bool)

(assert (=> start!130882 m!1417157))

(declare-fun m!1417159 () Bool)

(assert (=> start!130882 m!1417159))

(declare-fun m!1417161 () Bool)

(assert (=> b!1534463 m!1417161))

(push 1)

