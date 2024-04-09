; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128626 () Bool)

(assert start!128626)

(declare-fun b!1507377 () Bool)

(declare-fun res!1027667 () Bool)

(declare-fun e!842270 () Bool)

(assert (=> b!1507377 (=> (not res!1027667) (not e!842270))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100512 0))(
  ( (array!100513 (arr!48493 (Array (_ BitVec 32) (_ BitVec 64))) (size!49044 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100512)

(assert (=> b!1507377 (= res!1027667 (and (= (size!49044 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49044 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49044 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507378 () Bool)

(declare-fun res!1027674 () Bool)

(assert (=> b!1507378 (=> (not res!1027674) (not e!842270))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100512 (_ BitVec 32)) Bool)

(assert (=> b!1507378 (= res!1027674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1507379 () Bool)

(declare-fun res!1027669 () Bool)

(assert (=> b!1507379 (=> (not res!1027669) (not e!842270))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507379 (= res!1027669 (validKeyInArray!0 (select (arr!48493 a!2804) j!70)))))

(declare-fun b!1507380 () Bool)

(declare-fun res!1027668 () Bool)

(assert (=> b!1507380 (=> (not res!1027668) (not e!842270))))

(declare-datatypes ((List!35156 0))(
  ( (Nil!35153) (Cons!35152 (h!36556 (_ BitVec 64)) (t!49857 List!35156)) )
))
(declare-fun arrayNoDuplicates!0 (array!100512 (_ BitVec 32) List!35156) Bool)

(assert (=> b!1507380 (= res!1027668 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35153))))

(declare-fun b!1507381 () Bool)

(declare-fun res!1027672 () Bool)

(assert (=> b!1507381 (=> (not res!1027672) (not e!842270))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1507381 (= res!1027672 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49044 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49044 a!2804))))))

(declare-fun res!1027670 () Bool)

(assert (=> start!128626 (=> (not res!1027670) (not e!842270))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128626 (= res!1027670 (validMask!0 mask!2512))))

(assert (=> start!128626 e!842270))

(assert (=> start!128626 true))

(declare-fun array_inv!37438 (array!100512) Bool)

(assert (=> start!128626 (array_inv!37438 a!2804)))

(declare-fun b!1507382 () Bool)

(assert (=> b!1507382 (= e!842270 false)))

(declare-datatypes ((SeekEntryResult!12685 0))(
  ( (MissingZero!12685 (index!53134 (_ BitVec 32))) (Found!12685 (index!53135 (_ BitVec 32))) (Intermediate!12685 (undefined!13497 Bool) (index!53136 (_ BitVec 32)) (x!134902 (_ BitVec 32))) (Undefined!12685) (MissingVacant!12685 (index!53137 (_ BitVec 32))) )
))
(declare-fun lt!654349 () SeekEntryResult!12685)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100512 (_ BitVec 32)) SeekEntryResult!12685)

(assert (=> b!1507382 (= lt!654349 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48493 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1507383 () Bool)

(declare-fun res!1027671 () Bool)

(assert (=> b!1507383 (=> (not res!1027671) (not e!842270))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507383 (= res!1027671 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48493 a!2804) j!70) mask!2512) (select (arr!48493 a!2804) j!70) a!2804 mask!2512) (Intermediate!12685 false resIndex!21 resX!21)))))

(declare-fun b!1507384 () Bool)

(declare-fun res!1027673 () Bool)

(assert (=> b!1507384 (=> (not res!1027673) (not e!842270))))

(assert (=> b!1507384 (= res!1027673 (validKeyInArray!0 (select (arr!48493 a!2804) i!961)))))

(assert (= (and start!128626 res!1027670) b!1507377))

(assert (= (and b!1507377 res!1027667) b!1507384))

(assert (= (and b!1507384 res!1027673) b!1507379))

(assert (= (and b!1507379 res!1027669) b!1507378))

(assert (= (and b!1507378 res!1027674) b!1507380))

(assert (= (and b!1507380 res!1027668) b!1507381))

(assert (= (and b!1507381 res!1027672) b!1507383))

(assert (= (and b!1507383 res!1027671) b!1507382))

(declare-fun m!1390185 () Bool)

(assert (=> start!128626 m!1390185))

(declare-fun m!1390187 () Bool)

(assert (=> start!128626 m!1390187))

(declare-fun m!1390189 () Bool)

(assert (=> b!1507384 m!1390189))

(assert (=> b!1507384 m!1390189))

(declare-fun m!1390191 () Bool)

(assert (=> b!1507384 m!1390191))

(declare-fun m!1390193 () Bool)

(assert (=> b!1507379 m!1390193))

(assert (=> b!1507379 m!1390193))

(declare-fun m!1390195 () Bool)

(assert (=> b!1507379 m!1390195))

(declare-fun m!1390197 () Bool)

(assert (=> b!1507378 m!1390197))

(declare-fun m!1390199 () Bool)

(assert (=> b!1507380 m!1390199))

(assert (=> b!1507382 m!1390193))

(assert (=> b!1507382 m!1390193))

(declare-fun m!1390201 () Bool)

(assert (=> b!1507382 m!1390201))

(assert (=> b!1507383 m!1390193))

(assert (=> b!1507383 m!1390193))

(declare-fun m!1390203 () Bool)

(assert (=> b!1507383 m!1390203))

(assert (=> b!1507383 m!1390203))

(assert (=> b!1507383 m!1390193))

(declare-fun m!1390205 () Bool)

(assert (=> b!1507383 m!1390205))

(push 1)

(assert (not b!1507379))

(assert (not b!1507384))

(assert (not b!1507378))

(assert (not b!1507382))

(assert (not b!1507380))

(assert (not b!1507383))

(assert (not start!128626))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

