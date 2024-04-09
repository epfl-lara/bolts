; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130838 () Bool)

(assert start!130838)

(declare-fun b!1533942 () Bool)

(declare-fun res!1051170 () Bool)

(declare-fun e!854350 () Bool)

(assert (=> b!1533942 (=> (not res!1051170) (not e!854350))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101863 0))(
  ( (array!101864 (arr!49143 (Array (_ BitVec 32) (_ BitVec 64))) (size!49694 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101863)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13298 0))(
  ( (MissingZero!13298 (index!55586 (_ BitVec 32))) (Found!13298 (index!55587 (_ BitVec 32))) (Intermediate!13298 (undefined!14110 Bool) (index!55588 (_ BitVec 32)) (x!137351 (_ BitVec 32))) (Undefined!13298) (MissingVacant!13298 (index!55589 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101863 (_ BitVec 32)) SeekEntryResult!13298)

(assert (=> b!1533942 (= res!1051170 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49143 a!2792) j!64) a!2792 mask!2480) (Found!13298 j!64)))))

(declare-fun b!1533943 () Bool)

(declare-fun res!1051172 () Bool)

(assert (=> b!1533943 (=> (not res!1051172) (not e!854350))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533943 (= res!1051172 (and (= (size!49694 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49694 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49694 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533944 () Bool)

(declare-fun res!1051168 () Bool)

(assert (=> b!1533944 (=> (not res!1051168) (not e!854350))))

(declare-datatypes ((List!35797 0))(
  ( (Nil!35794) (Cons!35793 (h!37239 (_ BitVec 64)) (t!50498 List!35797)) )
))
(declare-fun arrayNoDuplicates!0 (array!101863 (_ BitVec 32) List!35797) Bool)

(assert (=> b!1533944 (= res!1051168 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35794))))

(declare-fun b!1533945 () Bool)

(declare-fun res!1051173 () Bool)

(assert (=> b!1533945 (=> (not res!1051173) (not e!854350))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533945 (= res!1051173 (validKeyInArray!0 (select (arr!49143 a!2792) i!951)))))

(declare-fun b!1533946 () Bool)

(declare-fun res!1051171 () Bool)

(assert (=> b!1533946 (=> (not res!1051171) (not e!854350))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101863 (_ BitVec 32)) Bool)

(assert (=> b!1533946 (= res!1051171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533947 () Bool)

(declare-fun res!1051167 () Bool)

(assert (=> b!1533947 (=> (not res!1051167) (not e!854350))))

(assert (=> b!1533947 (= res!1051167 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49694 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49694 a!2792)) (= (select (arr!49143 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533948 () Bool)

(assert (=> b!1533948 (= e!854350 (and (= (select (arr!49143 a!2792) index!463) (select (arr!49143 a!2792) j!64)) (bvsge mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(declare-fun b!1533949 () Bool)

(declare-fun res!1051169 () Bool)

(assert (=> b!1533949 (=> (not res!1051169) (not e!854350))))

(assert (=> b!1533949 (= res!1051169 (validKeyInArray!0 (select (arr!49143 a!2792) j!64)))))

(declare-fun res!1051166 () Bool)

(assert (=> start!130838 (=> (not res!1051166) (not e!854350))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130838 (= res!1051166 (validMask!0 mask!2480))))

(assert (=> start!130838 e!854350))

(assert (=> start!130838 true))

(declare-fun array_inv!38088 (array!101863) Bool)

(assert (=> start!130838 (array_inv!38088 a!2792)))

(assert (= (and start!130838 res!1051166) b!1533943))

(assert (= (and b!1533943 res!1051172) b!1533945))

(assert (= (and b!1533945 res!1051173) b!1533949))

(assert (= (and b!1533949 res!1051169) b!1533946))

(assert (= (and b!1533946 res!1051171) b!1533944))

(assert (= (and b!1533944 res!1051168) b!1533947))

(assert (= (and b!1533947 res!1051167) b!1533942))

(assert (= (and b!1533942 res!1051170) b!1533948))

(declare-fun m!1416665 () Bool)

(assert (=> b!1533944 m!1416665))

(declare-fun m!1416667 () Bool)

(assert (=> start!130838 m!1416667))

(declare-fun m!1416669 () Bool)

(assert (=> start!130838 m!1416669))

(declare-fun m!1416671 () Bool)

(assert (=> b!1533946 m!1416671))

(declare-fun m!1416673 () Bool)

(assert (=> b!1533948 m!1416673))

(declare-fun m!1416675 () Bool)

(assert (=> b!1533948 m!1416675))

(declare-fun m!1416677 () Bool)

(assert (=> b!1533945 m!1416677))

(assert (=> b!1533945 m!1416677))

(declare-fun m!1416679 () Bool)

(assert (=> b!1533945 m!1416679))

(declare-fun m!1416681 () Bool)

(assert (=> b!1533947 m!1416681))

(assert (=> b!1533942 m!1416675))

(assert (=> b!1533942 m!1416675))

(declare-fun m!1416683 () Bool)

(assert (=> b!1533942 m!1416683))

(assert (=> b!1533949 m!1416675))

(assert (=> b!1533949 m!1416675))

(declare-fun m!1416685 () Bool)

(assert (=> b!1533949 m!1416685))

(push 1)

(assert (not b!1533946))

(assert (not b!1533944))

(assert (not b!1533942))

(assert (not b!1533945))

(assert (not b!1533949))

(assert (not start!130838))

(check-sat)

(pop 1)

(push 1)

(check-sat)

