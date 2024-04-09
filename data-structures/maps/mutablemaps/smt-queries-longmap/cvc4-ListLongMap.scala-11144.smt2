; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130262 () Bool)

(assert start!130262)

(declare-fun b!1528576 () Bool)

(declare-fun e!851976 () Bool)

(declare-fun e!851981 () Bool)

(assert (=> b!1528576 (= e!851976 (not e!851981))))

(declare-fun res!1046421 () Bool)

(assert (=> b!1528576 (=> res!1046421 e!851981)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun lt!662104 () (_ BitVec 64))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-datatypes ((array!101539 0))(
  ( (array!101540 (arr!48990 (Array (_ BitVec 32) (_ BitVec 64))) (size!49541 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101539)

(assert (=> b!1528576 (= res!1046421 (or (not (= (select (arr!48990 a!2804) j!70) lt!662104)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48990 a!2804) index!487) (select (arr!48990 a!2804) j!70)) (not (= (select (arr!48990 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!851979 () Bool)

(assert (=> b!1528576 e!851979))

(declare-fun res!1046430 () Bool)

(assert (=> b!1528576 (=> (not res!1046430) (not e!851979))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101539 (_ BitVec 32)) Bool)

(assert (=> b!1528576 (= res!1046430 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51092 0))(
  ( (Unit!51093) )
))
(declare-fun lt!662106 () Unit!51092)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101539 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51092)

(assert (=> b!1528576 (= lt!662106 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528577 () Bool)

(declare-fun res!1046429 () Bool)

(declare-fun e!851978 () Bool)

(assert (=> b!1528577 (=> (not res!1046429) (not e!851978))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528577 (= res!1046429 (validKeyInArray!0 (select (arr!48990 a!2804) j!70)))))

(declare-fun b!1528578 () Bool)

(declare-fun e!851977 () Bool)

(assert (=> b!1528578 (= e!851977 e!851976)))

(declare-fun res!1046428 () Bool)

(assert (=> b!1528578 (=> (not res!1046428) (not e!851976))))

(declare-datatypes ((SeekEntryResult!13176 0))(
  ( (MissingZero!13176 (index!55098 (_ BitVec 32))) (Found!13176 (index!55099 (_ BitVec 32))) (Intermediate!13176 (undefined!13988 Bool) (index!55100 (_ BitVec 32)) (x!136794 (_ BitVec 32))) (Undefined!13176) (MissingVacant!13176 (index!55101 (_ BitVec 32))) )
))
(declare-fun lt!662112 () SeekEntryResult!13176)

(declare-fun lt!662109 () array!101539)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101539 (_ BitVec 32)) SeekEntryResult!13176)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528578 (= res!1046428 (= lt!662112 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!662104 mask!2512) lt!662104 lt!662109 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1528578 (= lt!662104 (select (store (arr!48990 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1528578 (= lt!662109 (array!101540 (store (arr!48990 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49541 a!2804)))))

(declare-fun res!1046431 () Bool)

(assert (=> start!130262 (=> (not res!1046431) (not e!851978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130262 (= res!1046431 (validMask!0 mask!2512))))

(assert (=> start!130262 e!851978))

(assert (=> start!130262 true))

(declare-fun array_inv!37935 (array!101539) Bool)

(assert (=> start!130262 (array_inv!37935 a!2804)))

(declare-fun b!1528579 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101539 (_ BitVec 32)) SeekEntryResult!13176)

(assert (=> b!1528579 (= e!851979 (= (seekEntry!0 (select (arr!48990 a!2804) j!70) a!2804 mask!2512) (Found!13176 j!70)))))

(declare-fun b!1528580 () Bool)

(assert (=> b!1528580 (= e!851978 e!851977)))

(declare-fun res!1046433 () Bool)

(assert (=> b!1528580 (=> (not res!1046433) (not e!851977))))

(declare-fun lt!662105 () SeekEntryResult!13176)

(assert (=> b!1528580 (= res!1046433 (= lt!662112 lt!662105))))

(assert (=> b!1528580 (= lt!662105 (Intermediate!13176 false resIndex!21 resX!21))))

(assert (=> b!1528580 (= lt!662112 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48990 a!2804) j!70) mask!2512) (select (arr!48990 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528581 () Bool)

(declare-fun e!851975 () Bool)

(declare-fun lt!662111 () SeekEntryResult!13176)

(declare-fun lt!662107 () SeekEntryResult!13176)

(assert (=> b!1528581 (= e!851975 (= lt!662111 lt!662107))))

(declare-fun lt!662108 () SeekEntryResult!13176)

(declare-fun lt!662110 () SeekEntryResult!13176)

(assert (=> b!1528581 (= lt!662108 lt!662110)))

(declare-fun lt!662113 () Unit!51092)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!101539 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51092)

(assert (=> b!1528581 (= lt!662113 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1528582 () Bool)

(declare-fun res!1046426 () Bool)

(assert (=> b!1528582 (=> (not res!1046426) (not e!851978))))

(assert (=> b!1528582 (= res!1046426 (validKeyInArray!0 (select (arr!48990 a!2804) i!961)))))

(declare-fun b!1528583 () Bool)

(declare-fun res!1046432 () Bool)

(assert (=> b!1528583 (=> (not res!1046432) (not e!851978))))

(assert (=> b!1528583 (= res!1046432 (and (= (size!49541 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49541 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49541 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528584 () Bool)

(declare-fun res!1046427 () Bool)

(assert (=> b!1528584 (=> (not res!1046427) (not e!851977))))

(assert (=> b!1528584 (= res!1046427 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48990 a!2804) j!70) a!2804 mask!2512) lt!662105))))

(declare-fun b!1528585 () Bool)

(declare-fun res!1046422 () Bool)

(assert (=> b!1528585 (=> (not res!1046422) (not e!851978))))

(assert (=> b!1528585 (= res!1046422 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49541 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49541 a!2804))))))

(declare-fun b!1528586 () Bool)

(declare-fun res!1046424 () Bool)

(assert (=> b!1528586 (=> (not res!1046424) (not e!851978))))

(assert (=> b!1528586 (= res!1046424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528587 () Bool)

(declare-fun res!1046423 () Bool)

(assert (=> b!1528587 (=> (not res!1046423) (not e!851978))))

(declare-datatypes ((List!35653 0))(
  ( (Nil!35650) (Cons!35649 (h!37086 (_ BitVec 64)) (t!50354 List!35653)) )
))
(declare-fun arrayNoDuplicates!0 (array!101539 (_ BitVec 32) List!35653) Bool)

(assert (=> b!1528587 (= res!1046423 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35650))))

(declare-fun b!1528588 () Bool)

(assert (=> b!1528588 (= e!851981 e!851975)))

(declare-fun res!1046425 () Bool)

(assert (=> b!1528588 (=> res!1046425 e!851975)))

(assert (=> b!1528588 (= res!1046425 (not (= lt!662110 (Found!13176 j!70))))))

(assert (=> b!1528588 (= lt!662107 lt!662108)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101539 (_ BitVec 32)) SeekEntryResult!13176)

(assert (=> b!1528588 (= lt!662108 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!662104 lt!662109 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101539 (_ BitVec 32)) SeekEntryResult!13176)

(assert (=> b!1528588 (= lt!662107 (seekEntryOrOpen!0 lt!662104 lt!662109 mask!2512))))

(assert (=> b!1528588 (= lt!662111 lt!662110)))

(assert (=> b!1528588 (= lt!662110 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48990 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1528588 (= lt!662111 (seekEntryOrOpen!0 (select (arr!48990 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!130262 res!1046431) b!1528583))

(assert (= (and b!1528583 res!1046432) b!1528582))

(assert (= (and b!1528582 res!1046426) b!1528577))

(assert (= (and b!1528577 res!1046429) b!1528586))

(assert (= (and b!1528586 res!1046424) b!1528587))

(assert (= (and b!1528587 res!1046423) b!1528585))

(assert (= (and b!1528585 res!1046422) b!1528580))

(assert (= (and b!1528580 res!1046433) b!1528584))

(assert (= (and b!1528584 res!1046427) b!1528578))

(assert (= (and b!1528578 res!1046428) b!1528576))

(assert (= (and b!1528576 res!1046430) b!1528579))

(assert (= (and b!1528576 (not res!1046421)) b!1528588))

(assert (= (and b!1528588 (not res!1046425)) b!1528581))

(declare-fun m!1411521 () Bool)

(assert (=> b!1528578 m!1411521))

(assert (=> b!1528578 m!1411521))

(declare-fun m!1411523 () Bool)

(assert (=> b!1528578 m!1411523))

(declare-fun m!1411525 () Bool)

(assert (=> b!1528578 m!1411525))

(declare-fun m!1411527 () Bool)

(assert (=> b!1528578 m!1411527))

(declare-fun m!1411529 () Bool)

(assert (=> b!1528577 m!1411529))

(assert (=> b!1528577 m!1411529))

(declare-fun m!1411531 () Bool)

(assert (=> b!1528577 m!1411531))

(declare-fun m!1411533 () Bool)

(assert (=> start!130262 m!1411533))

(declare-fun m!1411535 () Bool)

(assert (=> start!130262 m!1411535))

(assert (=> b!1528576 m!1411529))

(declare-fun m!1411537 () Bool)

(assert (=> b!1528576 m!1411537))

(declare-fun m!1411539 () Bool)

(assert (=> b!1528576 m!1411539))

(declare-fun m!1411541 () Bool)

(assert (=> b!1528576 m!1411541))

(declare-fun m!1411543 () Bool)

(assert (=> b!1528588 m!1411543))

(assert (=> b!1528588 m!1411529))

(declare-fun m!1411545 () Bool)

(assert (=> b!1528588 m!1411545))

(assert (=> b!1528588 m!1411529))

(declare-fun m!1411547 () Bool)

(assert (=> b!1528588 m!1411547))

(assert (=> b!1528588 m!1411529))

(declare-fun m!1411549 () Bool)

(assert (=> b!1528588 m!1411549))

(declare-fun m!1411551 () Bool)

(assert (=> b!1528582 m!1411551))

(assert (=> b!1528582 m!1411551))

(declare-fun m!1411553 () Bool)

(assert (=> b!1528582 m!1411553))

(declare-fun m!1411555 () Bool)

(assert (=> b!1528581 m!1411555))

(assert (=> b!1528580 m!1411529))

(assert (=> b!1528580 m!1411529))

(declare-fun m!1411557 () Bool)

(assert (=> b!1528580 m!1411557))

(assert (=> b!1528580 m!1411557))

(assert (=> b!1528580 m!1411529))

(declare-fun m!1411559 () Bool)

(assert (=> b!1528580 m!1411559))

(assert (=> b!1528584 m!1411529))

(assert (=> b!1528584 m!1411529))

(declare-fun m!1411561 () Bool)

(assert (=> b!1528584 m!1411561))

(declare-fun m!1411563 () Bool)

(assert (=> b!1528586 m!1411563))

(assert (=> b!1528579 m!1411529))

(assert (=> b!1528579 m!1411529))

(declare-fun m!1411565 () Bool)

(assert (=> b!1528579 m!1411565))

(declare-fun m!1411567 () Bool)

(assert (=> b!1528587 m!1411567))

(push 1)

