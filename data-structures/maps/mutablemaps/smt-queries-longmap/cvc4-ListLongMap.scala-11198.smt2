; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130856 () Bool)

(assert start!130856)

(declare-fun b!1534132 () Bool)

(declare-fun res!1051362 () Bool)

(declare-fun e!854404 () Bool)

(assert (=> b!1534132 (=> (not res!1051362) (not e!854404))))

(declare-datatypes ((array!101881 0))(
  ( (array!101882 (arr!49152 (Array (_ BitVec 32) (_ BitVec 64))) (size!49703 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101881)

(declare-datatypes ((List!35806 0))(
  ( (Nil!35803) (Cons!35802 (h!37248 (_ BitVec 64)) (t!50507 List!35806)) )
))
(declare-fun arrayNoDuplicates!0 (array!101881 (_ BitVec 32) List!35806) Bool)

(assert (=> b!1534132 (= res!1051362 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35803))))

(declare-fun b!1534133 () Bool)

(declare-fun res!1051360 () Bool)

(assert (=> b!1534133 (=> (not res!1051360) (not e!854404))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534133 (= res!1051360 (validKeyInArray!0 (select (arr!49152 a!2792) j!64)))))

(declare-fun b!1534134 () Bool)

(assert (=> b!1534134 (= e!854404 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13307 0))(
  ( (MissingZero!13307 (index!55622 (_ BitVec 32))) (Found!13307 (index!55623 (_ BitVec 32))) (Intermediate!13307 (undefined!14119 Bool) (index!55624 (_ BitVec 32)) (x!137384 (_ BitVec 32))) (Undefined!13307) (MissingVacant!13307 (index!55625 (_ BitVec 32))) )
))
(declare-fun lt!663778 () SeekEntryResult!13307)

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101881 (_ BitVec 32)) SeekEntryResult!13307)

(assert (=> b!1534134 (= lt!663778 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49152 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1051356 () Bool)

(assert (=> start!130856 (=> (not res!1051356) (not e!854404))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130856 (= res!1051356 (validMask!0 mask!2480))))

(assert (=> start!130856 e!854404))

(assert (=> start!130856 true))

(declare-fun array_inv!38097 (array!101881) Bool)

(assert (=> start!130856 (array_inv!38097 a!2792)))

(declare-fun b!1534135 () Bool)

(declare-fun res!1051361 () Bool)

(assert (=> b!1534135 (=> (not res!1051361) (not e!854404))))

(assert (=> b!1534135 (= res!1051361 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49703 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49703 a!2792)) (= (select (arr!49152 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534136 () Bool)

(declare-fun res!1051357 () Bool)

(assert (=> b!1534136 (=> (not res!1051357) (not e!854404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101881 (_ BitVec 32)) Bool)

(assert (=> b!1534136 (= res!1051357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534137 () Bool)

(declare-fun res!1051358 () Bool)

(assert (=> b!1534137 (=> (not res!1051358) (not e!854404))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534137 (= res!1051358 (and (= (size!49703 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49703 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49703 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534138 () Bool)

(declare-fun res!1051359 () Bool)

(assert (=> b!1534138 (=> (not res!1051359) (not e!854404))))

(assert (=> b!1534138 (= res!1051359 (validKeyInArray!0 (select (arr!49152 a!2792) i!951)))))

(assert (= (and start!130856 res!1051356) b!1534137))

(assert (= (and b!1534137 res!1051358) b!1534138))

(assert (= (and b!1534138 res!1051359) b!1534133))

(assert (= (and b!1534133 res!1051360) b!1534136))

(assert (= (and b!1534136 res!1051357) b!1534132))

(assert (= (and b!1534132 res!1051362) b!1534135))

(assert (= (and b!1534135 res!1051361) b!1534134))

(declare-fun m!1416847 () Bool)

(assert (=> b!1534132 m!1416847))

(declare-fun m!1416849 () Bool)

(assert (=> b!1534134 m!1416849))

(assert (=> b!1534134 m!1416849))

(declare-fun m!1416851 () Bool)

(assert (=> b!1534134 m!1416851))

(declare-fun m!1416853 () Bool)

(assert (=> b!1534135 m!1416853))

(declare-fun m!1416855 () Bool)

(assert (=> start!130856 m!1416855))

(declare-fun m!1416857 () Bool)

(assert (=> start!130856 m!1416857))

(assert (=> b!1534133 m!1416849))

(assert (=> b!1534133 m!1416849))

(declare-fun m!1416859 () Bool)

(assert (=> b!1534133 m!1416859))

(declare-fun m!1416861 () Bool)

(assert (=> b!1534138 m!1416861))

(assert (=> b!1534138 m!1416861))

(declare-fun m!1416863 () Bool)

(assert (=> b!1534138 m!1416863))

(declare-fun m!1416865 () Bool)

(assert (=> b!1534136 m!1416865))

(push 1)

(assert (not b!1534136))

(assert (not b!1534133))

(assert (not b!1534134))

(assert (not b!1534132))

(assert (not b!1534138))

(assert (not start!130856))

(check-sat)

