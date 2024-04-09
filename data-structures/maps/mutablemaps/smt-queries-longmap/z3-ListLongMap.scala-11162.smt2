; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130548 () Bool)

(assert start!130548)

(declare-fun b!1531372 () Bool)

(declare-fun e!853323 () Bool)

(declare-fun e!853324 () Bool)

(assert (=> b!1531372 (= e!853323 e!853324)))

(declare-fun res!1048661 () Bool)

(assert (=> b!1531372 (=> res!1048661 e!853324)))

(declare-fun lt!663193 () (_ BitVec 32))

(declare-datatypes ((array!101654 0))(
  ( (array!101655 (arr!49043 (Array (_ BitVec 32) (_ BitVec 64))) (size!49594 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101654)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1531372 (= res!1048661 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663193 #b00000000000000000000000000000000) (bvsge lt!663193 (size!49594 a!2804))))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531372 (= lt!663193 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1531373 () Bool)

(declare-fun res!1048654 () Bool)

(declare-fun e!853325 () Bool)

(assert (=> b!1531373 (=> (not res!1048654) (not e!853325))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1531373 (= res!1048654 (validKeyInArray!0 (select (arr!49043 a!2804) i!961)))))

(declare-fun b!1531374 () Bool)

(declare-fun e!853327 () Bool)

(assert (=> b!1531374 (= e!853327 (not e!853323))))

(declare-fun res!1048653 () Bool)

(assert (=> b!1531374 (=> res!1048653 e!853323)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1531374 (= res!1048653 (or (not (= (select (arr!49043 a!2804) j!70) (select (store (arr!49043 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!853328 () Bool)

(assert (=> b!1531374 e!853328))

(declare-fun res!1048660 () Bool)

(assert (=> b!1531374 (=> (not res!1048660) (not e!853328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101654 (_ BitVec 32)) Bool)

(assert (=> b!1531374 (= res!1048660 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51198 0))(
  ( (Unit!51199) )
))
(declare-fun lt!663192 () Unit!51198)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101654 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51198)

(assert (=> b!1531374 (= lt!663192 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1531375 () Bool)

(declare-fun res!1048657 () Bool)

(assert (=> b!1531375 (=> (not res!1048657) (not e!853325))))

(assert (=> b!1531375 (= res!1048657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1531376 () Bool)

(declare-fun res!1048658 () Bool)

(assert (=> b!1531376 (=> (not res!1048658) (not e!853325))))

(assert (=> b!1531376 (= res!1048658 (and (= (size!49594 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49594 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49594 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1531377 () Bool)

(declare-fun res!1048655 () Bool)

(assert (=> b!1531377 (=> (not res!1048655) (not e!853325))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1531377 (= res!1048655 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49594 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49594 a!2804))))))

(declare-fun b!1531379 () Bool)

(declare-fun res!1048652 () Bool)

(assert (=> b!1531379 (=> (not res!1048652) (not e!853325))))

(assert (=> b!1531379 (= res!1048652 (validKeyInArray!0 (select (arr!49043 a!2804) j!70)))))

(declare-fun b!1531380 () Bool)

(declare-datatypes ((SeekEntryResult!13229 0))(
  ( (MissingZero!13229 (index!55310 (_ BitVec 32))) (Found!13229 (index!55311 (_ BitVec 32))) (Intermediate!13229 (undefined!14041 Bool) (index!55312 (_ BitVec 32)) (x!137018 (_ BitVec 32))) (Undefined!13229) (MissingVacant!13229 (index!55313 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101654 (_ BitVec 32)) SeekEntryResult!13229)

(assert (=> b!1531380 (= e!853328 (= (seekEntry!0 (select (arr!49043 a!2804) j!70) a!2804 mask!2512) (Found!13229 j!70)))))

(declare-fun b!1531381 () Bool)

(declare-fun res!1048656 () Bool)

(assert (=> b!1531381 (=> (not res!1048656) (not e!853325))))

(declare-datatypes ((List!35706 0))(
  ( (Nil!35703) (Cons!35702 (h!37148 (_ BitVec 64)) (t!50407 List!35706)) )
))
(declare-fun arrayNoDuplicates!0 (array!101654 (_ BitVec 32) List!35706) Bool)

(assert (=> b!1531381 (= res!1048656 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35703))))

(declare-fun b!1531382 () Bool)

(assert (=> b!1531382 (= e!853325 e!853327)))

(declare-fun res!1048651 () Bool)

(assert (=> b!1531382 (=> (not res!1048651) (not e!853327))))

(declare-fun lt!663190 () SeekEntryResult!13229)

(declare-fun lt!663189 () SeekEntryResult!13229)

(assert (=> b!1531382 (= res!1048651 (= lt!663190 lt!663189))))

(assert (=> b!1531382 (= lt!663189 (Intermediate!13229 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101654 (_ BitVec 32)) SeekEntryResult!13229)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531382 (= lt!663190 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49043 a!2804) j!70) mask!2512) (select (arr!49043 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531383 () Bool)

(declare-fun res!1048662 () Bool)

(assert (=> b!1531383 (=> (not res!1048662) (not e!853327))))

(assert (=> b!1531383 (= res!1048662 (= lt!663190 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49043 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49043 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101655 (store (arr!49043 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49594 a!2804)) mask!2512)))))

(declare-fun b!1531384 () Bool)

(assert (=> b!1531384 (= e!853324 true)))

(declare-fun lt!663191 () SeekEntryResult!13229)

(assert (=> b!1531384 (= lt!663191 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663193 (select (arr!49043 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1048659 () Bool)

(assert (=> start!130548 (=> (not res!1048659) (not e!853325))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130548 (= res!1048659 (validMask!0 mask!2512))))

(assert (=> start!130548 e!853325))

(assert (=> start!130548 true))

(declare-fun array_inv!37988 (array!101654) Bool)

(assert (=> start!130548 (array_inv!37988 a!2804)))

(declare-fun b!1531378 () Bool)

(declare-fun res!1048650 () Bool)

(assert (=> b!1531378 (=> (not res!1048650) (not e!853327))))

(assert (=> b!1531378 (= res!1048650 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49043 a!2804) j!70) a!2804 mask!2512) lt!663189))))

(assert (= (and start!130548 res!1048659) b!1531376))

(assert (= (and b!1531376 res!1048658) b!1531373))

(assert (= (and b!1531373 res!1048654) b!1531379))

(assert (= (and b!1531379 res!1048652) b!1531375))

(assert (= (and b!1531375 res!1048657) b!1531381))

(assert (= (and b!1531381 res!1048656) b!1531377))

(assert (= (and b!1531377 res!1048655) b!1531382))

(assert (= (and b!1531382 res!1048651) b!1531378))

(assert (= (and b!1531378 res!1048650) b!1531383))

(assert (= (and b!1531383 res!1048662) b!1531374))

(assert (= (and b!1531374 res!1048660) b!1531380))

(assert (= (and b!1531374 (not res!1048653)) b!1531372))

(assert (= (and b!1531372 (not res!1048661)) b!1531384))

(declare-fun m!1414081 () Bool)

(assert (=> b!1531383 m!1414081))

(declare-fun m!1414083 () Bool)

(assert (=> b!1531383 m!1414083))

(assert (=> b!1531383 m!1414083))

(declare-fun m!1414085 () Bool)

(assert (=> b!1531383 m!1414085))

(assert (=> b!1531383 m!1414085))

(assert (=> b!1531383 m!1414083))

(declare-fun m!1414087 () Bool)

(assert (=> b!1531383 m!1414087))

(declare-fun m!1414089 () Bool)

(assert (=> b!1531384 m!1414089))

(assert (=> b!1531384 m!1414089))

(declare-fun m!1414091 () Bool)

(assert (=> b!1531384 m!1414091))

(assert (=> b!1531378 m!1414089))

(assert (=> b!1531378 m!1414089))

(declare-fun m!1414093 () Bool)

(assert (=> b!1531378 m!1414093))

(assert (=> b!1531382 m!1414089))

(assert (=> b!1531382 m!1414089))

(declare-fun m!1414095 () Bool)

(assert (=> b!1531382 m!1414095))

(assert (=> b!1531382 m!1414095))

(assert (=> b!1531382 m!1414089))

(declare-fun m!1414097 () Bool)

(assert (=> b!1531382 m!1414097))

(assert (=> b!1531374 m!1414089))

(declare-fun m!1414099 () Bool)

(assert (=> b!1531374 m!1414099))

(assert (=> b!1531374 m!1414081))

(assert (=> b!1531374 m!1414083))

(declare-fun m!1414101 () Bool)

(assert (=> b!1531374 m!1414101))

(declare-fun m!1414103 () Bool)

(assert (=> b!1531373 m!1414103))

(assert (=> b!1531373 m!1414103))

(declare-fun m!1414105 () Bool)

(assert (=> b!1531373 m!1414105))

(assert (=> b!1531379 m!1414089))

(assert (=> b!1531379 m!1414089))

(declare-fun m!1414107 () Bool)

(assert (=> b!1531379 m!1414107))

(assert (=> b!1531380 m!1414089))

(assert (=> b!1531380 m!1414089))

(declare-fun m!1414109 () Bool)

(assert (=> b!1531380 m!1414109))

(declare-fun m!1414111 () Bool)

(assert (=> start!130548 m!1414111))

(declare-fun m!1414113 () Bool)

(assert (=> start!130548 m!1414113))

(declare-fun m!1414115 () Bool)

(assert (=> b!1531381 m!1414115))

(declare-fun m!1414117 () Bool)

(assert (=> b!1531372 m!1414117))

(declare-fun m!1414119 () Bool)

(assert (=> b!1531375 m!1414119))

(check-sat (not start!130548) (not b!1531380) (not b!1531384) (not b!1531382) (not b!1531379) (not b!1531378) (not b!1531381) (not b!1531373) (not b!1531372) (not b!1531374) (not b!1531383) (not b!1531375))
