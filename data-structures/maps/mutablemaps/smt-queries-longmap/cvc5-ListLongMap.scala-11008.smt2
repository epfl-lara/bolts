; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128926 () Bool)

(assert start!128926)

(declare-fun b!1510479 () Bool)

(declare-fun res!1030454 () Bool)

(declare-fun e!843500 () Bool)

(assert (=> b!1510479 (=> (not res!1030454) (not e!843500))))

(declare-datatypes ((array!100695 0))(
  ( (array!100696 (arr!48580 (Array (_ BitVec 32) (_ BitVec 64))) (size!49131 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100695)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510479 (= res!1030454 (validKeyInArray!0 (select (arr!48580 a!2804) i!961)))))

(declare-fun e!843497 () Bool)

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun b!1510480 () Bool)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1510480 (= e!843497 (not (or (not (= (select (arr!48580 a!2804) j!70) (select (store (arr!48580 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48580 a!2804) index!487) (select (arr!48580 a!2804) j!70)) (not (= (select (arr!48580 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(declare-fun e!843499 () Bool)

(assert (=> b!1510480 e!843499))

(declare-fun res!1030462 () Bool)

(assert (=> b!1510480 (=> (not res!1030462) (not e!843499))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100695 (_ BitVec 32)) Bool)

(assert (=> b!1510480 (= res!1030462 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50368 0))(
  ( (Unit!50369) )
))
(declare-fun lt!655151 () Unit!50368)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100695 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50368)

(assert (=> b!1510480 (= lt!655151 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510481 () Bool)

(declare-fun res!1030458 () Bool)

(assert (=> b!1510481 (=> (not res!1030458) (not e!843500))))

(declare-datatypes ((List!35243 0))(
  ( (Nil!35240) (Cons!35239 (h!36652 (_ BitVec 64)) (t!49944 List!35243)) )
))
(declare-fun arrayNoDuplicates!0 (array!100695 (_ BitVec 32) List!35243) Bool)

(assert (=> b!1510481 (= res!1030458 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35240))))

(declare-fun b!1510482 () Bool)

(assert (=> b!1510482 (= e!843500 e!843497)))

(declare-fun res!1030457 () Bool)

(assert (=> b!1510482 (=> (not res!1030457) (not e!843497))))

(declare-datatypes ((SeekEntryResult!12772 0))(
  ( (MissingZero!12772 (index!53482 (_ BitVec 32))) (Found!12772 (index!53483 (_ BitVec 32))) (Intermediate!12772 (undefined!13584 Bool) (index!53484 (_ BitVec 32)) (x!135239 (_ BitVec 32))) (Undefined!12772) (MissingVacant!12772 (index!53485 (_ BitVec 32))) )
))
(declare-fun lt!655153 () SeekEntryResult!12772)

(declare-fun lt!655152 () SeekEntryResult!12772)

(assert (=> b!1510482 (= res!1030457 (= lt!655153 lt!655152))))

(assert (=> b!1510482 (= lt!655152 (Intermediate!12772 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100695 (_ BitVec 32)) SeekEntryResult!12772)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510482 (= lt!655153 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48580 a!2804) j!70) mask!2512) (select (arr!48580 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510483 () Bool)

(declare-fun res!1030456 () Bool)

(assert (=> b!1510483 (=> (not res!1030456) (not e!843497))))

(assert (=> b!1510483 (= res!1030456 (= lt!655153 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48580 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48580 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100696 (store (arr!48580 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49131 a!2804)) mask!2512)))))

(declare-fun b!1510484 () Bool)

(declare-fun res!1030461 () Bool)

(assert (=> b!1510484 (=> (not res!1030461) (not e!843500))))

(assert (=> b!1510484 (= res!1030461 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49131 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49131 a!2804))))))

(declare-fun res!1030459 () Bool)

(assert (=> start!128926 (=> (not res!1030459) (not e!843500))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128926 (= res!1030459 (validMask!0 mask!2512))))

(assert (=> start!128926 e!843500))

(assert (=> start!128926 true))

(declare-fun array_inv!37525 (array!100695) Bool)

(assert (=> start!128926 (array_inv!37525 a!2804)))

(declare-fun b!1510485 () Bool)

(declare-fun res!1030463 () Bool)

(assert (=> b!1510485 (=> (not res!1030463) (not e!843500))))

(assert (=> b!1510485 (= res!1030463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510486 () Bool)

(declare-fun res!1030455 () Bool)

(assert (=> b!1510486 (=> (not res!1030455) (not e!843500))))

(assert (=> b!1510486 (= res!1030455 (and (= (size!49131 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49131 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49131 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510487 () Bool)

(declare-fun res!1030464 () Bool)

(assert (=> b!1510487 (=> (not res!1030464) (not e!843497))))

(assert (=> b!1510487 (= res!1030464 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48580 a!2804) j!70) a!2804 mask!2512) lt!655152))))

(declare-fun b!1510488 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100695 (_ BitVec 32)) SeekEntryResult!12772)

(assert (=> b!1510488 (= e!843499 (= (seekEntry!0 (select (arr!48580 a!2804) j!70) a!2804 mask!2512) (Found!12772 j!70)))))

(declare-fun b!1510489 () Bool)

(declare-fun res!1030460 () Bool)

(assert (=> b!1510489 (=> (not res!1030460) (not e!843500))))

(assert (=> b!1510489 (= res!1030460 (validKeyInArray!0 (select (arr!48580 a!2804) j!70)))))

(assert (= (and start!128926 res!1030459) b!1510486))

(assert (= (and b!1510486 res!1030455) b!1510479))

(assert (= (and b!1510479 res!1030454) b!1510489))

(assert (= (and b!1510489 res!1030460) b!1510485))

(assert (= (and b!1510485 res!1030463) b!1510481))

(assert (= (and b!1510481 res!1030458) b!1510484))

(assert (= (and b!1510484 res!1030461) b!1510482))

(assert (= (and b!1510482 res!1030457) b!1510487))

(assert (= (and b!1510487 res!1030464) b!1510483))

(assert (= (and b!1510483 res!1030456) b!1510480))

(assert (= (and b!1510480 res!1030462) b!1510488))

(declare-fun m!1393131 () Bool)

(assert (=> start!128926 m!1393131))

(declare-fun m!1393133 () Bool)

(assert (=> start!128926 m!1393133))

(declare-fun m!1393135 () Bool)

(assert (=> b!1510480 m!1393135))

(declare-fun m!1393137 () Bool)

(assert (=> b!1510480 m!1393137))

(declare-fun m!1393139 () Bool)

(assert (=> b!1510480 m!1393139))

(declare-fun m!1393141 () Bool)

(assert (=> b!1510480 m!1393141))

(declare-fun m!1393143 () Bool)

(assert (=> b!1510480 m!1393143))

(declare-fun m!1393145 () Bool)

(assert (=> b!1510480 m!1393145))

(assert (=> b!1510483 m!1393139))

(assert (=> b!1510483 m!1393143))

(assert (=> b!1510483 m!1393143))

(declare-fun m!1393147 () Bool)

(assert (=> b!1510483 m!1393147))

(assert (=> b!1510483 m!1393147))

(assert (=> b!1510483 m!1393143))

(declare-fun m!1393149 () Bool)

(assert (=> b!1510483 m!1393149))

(declare-fun m!1393151 () Bool)

(assert (=> b!1510479 m!1393151))

(assert (=> b!1510479 m!1393151))

(declare-fun m!1393153 () Bool)

(assert (=> b!1510479 m!1393153))

(assert (=> b!1510488 m!1393135))

(assert (=> b!1510488 m!1393135))

(declare-fun m!1393155 () Bool)

(assert (=> b!1510488 m!1393155))

(declare-fun m!1393157 () Bool)

(assert (=> b!1510485 m!1393157))

(assert (=> b!1510482 m!1393135))

(assert (=> b!1510482 m!1393135))

(declare-fun m!1393159 () Bool)

(assert (=> b!1510482 m!1393159))

(assert (=> b!1510482 m!1393159))

(assert (=> b!1510482 m!1393135))

(declare-fun m!1393161 () Bool)

(assert (=> b!1510482 m!1393161))

(assert (=> b!1510489 m!1393135))

(assert (=> b!1510489 m!1393135))

(declare-fun m!1393163 () Bool)

(assert (=> b!1510489 m!1393163))

(declare-fun m!1393165 () Bool)

(assert (=> b!1510481 m!1393165))

(assert (=> b!1510487 m!1393135))

(assert (=> b!1510487 m!1393135))

(declare-fun m!1393167 () Bool)

(assert (=> b!1510487 m!1393167))

(push 1)

