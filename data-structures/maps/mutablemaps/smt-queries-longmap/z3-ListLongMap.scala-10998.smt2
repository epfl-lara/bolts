; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128868 () Bool)

(assert start!128868)

(declare-fun b!1509517 () Bool)

(declare-fun e!843145 () Bool)

(declare-fun e!843144 () Bool)

(assert (=> b!1509517 (= e!843145 e!843144)))

(declare-fun res!1029493 () Bool)

(assert (=> b!1509517 (=> (not res!1029493) (not e!843144))))

(declare-datatypes ((SeekEntryResult!12743 0))(
  ( (MissingZero!12743 (index!53366 (_ BitVec 32))) (Found!12743 (index!53367 (_ BitVec 32))) (Intermediate!12743 (undefined!13555 Bool) (index!53368 (_ BitVec 32)) (x!135130 (_ BitVec 32))) (Undefined!12743) (MissingVacant!12743 (index!53369 (_ BitVec 32))) )
))
(declare-fun lt!654892 () SeekEntryResult!12743)

(declare-fun lt!654890 () SeekEntryResult!12743)

(assert (=> b!1509517 (= res!1029493 (= lt!654892 lt!654890))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1509517 (= lt!654890 (Intermediate!12743 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100637 0))(
  ( (array!100638 (arr!48551 (Array (_ BitVec 32) (_ BitVec 64))) (size!49102 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100637)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100637 (_ BitVec 32)) SeekEntryResult!12743)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509517 (= lt!654892 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48551 a!2804) j!70) mask!2512) (select (arr!48551 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1029499 () Bool)

(assert (=> start!128868 (=> (not res!1029499) (not e!843145))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128868 (= res!1029499 (validMask!0 mask!2512))))

(assert (=> start!128868 e!843145))

(assert (=> start!128868 true))

(declare-fun array_inv!37496 (array!100637) Bool)

(assert (=> start!128868 (array_inv!37496 a!2804)))

(declare-fun b!1509518 () Bool)

(declare-fun res!1029494 () Bool)

(assert (=> b!1509518 (=> (not res!1029494) (not e!843144))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1509518 (= res!1029494 (= lt!654892 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48551 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48551 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100638 (store (arr!48551 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49102 a!2804)) mask!2512)))))

(declare-fun b!1509519 () Bool)

(declare-fun res!1029496 () Bool)

(assert (=> b!1509519 (=> (not res!1029496) (not e!843145))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1509519 (= res!1029496 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49102 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49102 a!2804))))))

(declare-fun b!1509520 () Bool)

(declare-fun res!1029501 () Bool)

(assert (=> b!1509520 (=> (not res!1029501) (not e!843145))))

(assert (=> b!1509520 (= res!1029501 (and (= (size!49102 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49102 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49102 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509521 () Bool)

(declare-fun res!1029495 () Bool)

(assert (=> b!1509521 (=> (not res!1029495) (not e!843145))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509521 (= res!1029495 (validKeyInArray!0 (select (arr!48551 a!2804) j!70)))))

(declare-fun b!1509522 () Bool)

(declare-fun res!1029497 () Bool)

(assert (=> b!1509522 (=> (not res!1029497) (not e!843145))))

(declare-datatypes ((List!35214 0))(
  ( (Nil!35211) (Cons!35210 (h!36623 (_ BitVec 64)) (t!49915 List!35214)) )
))
(declare-fun arrayNoDuplicates!0 (array!100637 (_ BitVec 32) List!35214) Bool)

(assert (=> b!1509522 (= res!1029497 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35211))))

(declare-fun b!1509523 () Bool)

(declare-fun res!1029498 () Bool)

(assert (=> b!1509523 (=> (not res!1029498) (not e!843145))))

(assert (=> b!1509523 (= res!1029498 (validKeyInArray!0 (select (arr!48551 a!2804) i!961)))))

(declare-fun b!1509524 () Bool)

(declare-fun res!1029500 () Bool)

(assert (=> b!1509524 (=> (not res!1029500) (not e!843144))))

(assert (=> b!1509524 (= res!1029500 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48551 a!2804) j!70) a!2804 mask!2512) lt!654890))))

(declare-fun b!1509525 () Bool)

(assert (=> b!1509525 (= e!843144 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100637 (_ BitVec 32)) Bool)

(assert (=> b!1509525 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-datatypes ((Unit!50310 0))(
  ( (Unit!50311) )
))
(declare-fun lt!654891 () Unit!50310)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100637 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50310)

(assert (=> b!1509525 (= lt!654891 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509526 () Bool)

(declare-fun res!1029492 () Bool)

(assert (=> b!1509526 (=> (not res!1029492) (not e!843145))))

(assert (=> b!1509526 (= res!1029492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128868 res!1029499) b!1509520))

(assert (= (and b!1509520 res!1029501) b!1509523))

(assert (= (and b!1509523 res!1029498) b!1509521))

(assert (= (and b!1509521 res!1029495) b!1509526))

(assert (= (and b!1509526 res!1029492) b!1509522))

(assert (= (and b!1509522 res!1029497) b!1509519))

(assert (= (and b!1509519 res!1029496) b!1509517))

(assert (= (and b!1509517 res!1029493) b!1509524))

(assert (= (and b!1509524 res!1029500) b!1509518))

(assert (= (and b!1509518 res!1029494) b!1509525))

(declare-fun m!1392067 () Bool)

(assert (=> b!1509522 m!1392067))

(declare-fun m!1392069 () Bool)

(assert (=> b!1509517 m!1392069))

(assert (=> b!1509517 m!1392069))

(declare-fun m!1392071 () Bool)

(assert (=> b!1509517 m!1392071))

(assert (=> b!1509517 m!1392071))

(assert (=> b!1509517 m!1392069))

(declare-fun m!1392073 () Bool)

(assert (=> b!1509517 m!1392073))

(declare-fun m!1392075 () Bool)

(assert (=> b!1509523 m!1392075))

(assert (=> b!1509523 m!1392075))

(declare-fun m!1392077 () Bool)

(assert (=> b!1509523 m!1392077))

(assert (=> b!1509521 m!1392069))

(assert (=> b!1509521 m!1392069))

(declare-fun m!1392079 () Bool)

(assert (=> b!1509521 m!1392079))

(declare-fun m!1392081 () Bool)

(assert (=> b!1509525 m!1392081))

(declare-fun m!1392083 () Bool)

(assert (=> b!1509525 m!1392083))

(assert (=> b!1509524 m!1392069))

(assert (=> b!1509524 m!1392069))

(declare-fun m!1392085 () Bool)

(assert (=> b!1509524 m!1392085))

(declare-fun m!1392087 () Bool)

(assert (=> b!1509518 m!1392087))

(declare-fun m!1392089 () Bool)

(assert (=> b!1509518 m!1392089))

(assert (=> b!1509518 m!1392089))

(declare-fun m!1392091 () Bool)

(assert (=> b!1509518 m!1392091))

(assert (=> b!1509518 m!1392091))

(assert (=> b!1509518 m!1392089))

(declare-fun m!1392093 () Bool)

(assert (=> b!1509518 m!1392093))

(declare-fun m!1392095 () Bool)

(assert (=> b!1509526 m!1392095))

(declare-fun m!1392097 () Bool)

(assert (=> start!128868 m!1392097))

(declare-fun m!1392099 () Bool)

(assert (=> start!128868 m!1392099))

(check-sat (not b!1509517) (not b!1509523) (not b!1509526) (not b!1509518) (not b!1509525) (not b!1509522) (not b!1509524) (not start!128868) (not b!1509521))
(check-sat)
