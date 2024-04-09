; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129388 () Bool)

(assert start!129388)

(declare-fun b!1519470 () Bool)

(declare-fun e!847621 () Bool)

(declare-fun e!847619 () Bool)

(assert (=> b!1519470 (= e!847621 e!847619)))

(declare-fun res!1039449 () Bool)

(assert (=> b!1519470 (=> (not res!1039449) (not e!847619))))

(declare-datatypes ((SeekEntryResult!13003 0))(
  ( (MissingZero!13003 (index!54406 (_ BitVec 32))) (Found!13003 (index!54407 (_ BitVec 32))) (Intermediate!13003 (undefined!13815 Bool) (index!54408 (_ BitVec 32)) (x!136086 (_ BitVec 32))) (Undefined!13003) (MissingVacant!13003 (index!54409 (_ BitVec 32))) )
))
(declare-fun lt!658652 () SeekEntryResult!13003)

(declare-fun lt!658654 () SeekEntryResult!13003)

(assert (=> b!1519470 (= res!1039449 (= lt!658652 lt!658654))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1519470 (= lt!658654 (Intermediate!13003 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101157 0))(
  ( (array!101158 (arr!48811 (Array (_ BitVec 32) (_ BitVec 64))) (size!49362 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101157)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101157 (_ BitVec 32)) SeekEntryResult!13003)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519470 (= lt!658652 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48811 a!2804) j!70) mask!2512) (select (arr!48811 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1039447 () Bool)

(assert (=> start!129388 (=> (not res!1039447) (not e!847621))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129388 (= res!1039447 (validMask!0 mask!2512))))

(assert (=> start!129388 e!847621))

(assert (=> start!129388 true))

(declare-fun array_inv!37756 (array!101157) Bool)

(assert (=> start!129388 (array_inv!37756 a!2804)))

(declare-fun b!1519471 () Bool)

(declare-fun res!1039454 () Bool)

(assert (=> b!1519471 (=> (not res!1039454) (not e!847621))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1519471 (= res!1039454 (and (= (size!49362 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49362 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49362 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1519472 () Bool)

(declare-fun res!1039451 () Bool)

(assert (=> b!1519472 (=> (not res!1039451) (not e!847621))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101157 (_ BitVec 32)) Bool)

(assert (=> b!1519472 (= res!1039451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1519473 () Bool)

(declare-fun res!1039455 () Bool)

(assert (=> b!1519473 (=> (not res!1039455) (not e!847621))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1519473 (= res!1039455 (validKeyInArray!0 (select (arr!48811 a!2804) j!70)))))

(declare-fun b!1519474 () Bool)

(declare-fun res!1039450 () Bool)

(assert (=> b!1519474 (=> (not res!1039450) (not e!847619))))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1519474 (= res!1039450 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48811 a!2804) j!70) a!2804 mask!2512) lt!658654))))

(declare-fun b!1519475 () Bool)

(declare-fun res!1039445 () Bool)

(assert (=> b!1519475 (=> (not res!1039445) (not e!847621))))

(assert (=> b!1519475 (= res!1039445 (validKeyInArray!0 (select (arr!48811 a!2804) i!961)))))

(declare-fun e!847622 () Bool)

(declare-fun b!1519476 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101157 (_ BitVec 32)) SeekEntryResult!13003)

(assert (=> b!1519476 (= e!847622 (= (seekEntry!0 (select (arr!48811 a!2804) j!70) a!2804 mask!2512) (Found!13003 j!70)))))

(declare-fun b!1519477 () Bool)

(assert (=> b!1519477 (= e!847619 (not (= (select (arr!48811 a!2804) j!70) (select (store (arr!48811 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))))

(assert (=> b!1519477 e!847622))

(declare-fun res!1039446 () Bool)

(assert (=> b!1519477 (=> (not res!1039446) (not e!847622))))

(assert (=> b!1519477 (= res!1039446 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50830 0))(
  ( (Unit!50831) )
))
(declare-fun lt!658653 () Unit!50830)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101157 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50830)

(assert (=> b!1519477 (= lt!658653 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1519478 () Bool)

(declare-fun res!1039448 () Bool)

(assert (=> b!1519478 (=> (not res!1039448) (not e!847621))))

(assert (=> b!1519478 (= res!1039448 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49362 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49362 a!2804))))))

(declare-fun b!1519479 () Bool)

(declare-fun res!1039453 () Bool)

(assert (=> b!1519479 (=> (not res!1039453) (not e!847619))))

(assert (=> b!1519479 (= res!1039453 (= lt!658652 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48811 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48811 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101158 (store (arr!48811 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49362 a!2804)) mask!2512)))))

(declare-fun b!1519480 () Bool)

(declare-fun res!1039452 () Bool)

(assert (=> b!1519480 (=> (not res!1039452) (not e!847621))))

(declare-datatypes ((List!35474 0))(
  ( (Nil!35471) (Cons!35470 (h!36883 (_ BitVec 64)) (t!50175 List!35474)) )
))
(declare-fun arrayNoDuplicates!0 (array!101157 (_ BitVec 32) List!35474) Bool)

(assert (=> b!1519480 (= res!1039452 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35471))))

(assert (= (and start!129388 res!1039447) b!1519471))

(assert (= (and b!1519471 res!1039454) b!1519475))

(assert (= (and b!1519475 res!1039445) b!1519473))

(assert (= (and b!1519473 res!1039455) b!1519472))

(assert (= (and b!1519472 res!1039451) b!1519480))

(assert (= (and b!1519480 res!1039452) b!1519478))

(assert (= (and b!1519478 res!1039448) b!1519470))

(assert (= (and b!1519470 res!1039449) b!1519474))

(assert (= (and b!1519474 res!1039450) b!1519479))

(assert (= (and b!1519479 res!1039453) b!1519477))

(assert (= (and b!1519477 res!1039446) b!1519476))

(declare-fun m!1402941 () Bool)

(assert (=> b!1519472 m!1402941))

(declare-fun m!1402943 () Bool)

(assert (=> start!129388 m!1402943))

(declare-fun m!1402945 () Bool)

(assert (=> start!129388 m!1402945))

(declare-fun m!1402947 () Bool)

(assert (=> b!1519473 m!1402947))

(assert (=> b!1519473 m!1402947))

(declare-fun m!1402949 () Bool)

(assert (=> b!1519473 m!1402949))

(assert (=> b!1519476 m!1402947))

(assert (=> b!1519476 m!1402947))

(declare-fun m!1402951 () Bool)

(assert (=> b!1519476 m!1402951))

(assert (=> b!1519477 m!1402947))

(declare-fun m!1402953 () Bool)

(assert (=> b!1519477 m!1402953))

(declare-fun m!1402955 () Bool)

(assert (=> b!1519477 m!1402955))

(declare-fun m!1402957 () Bool)

(assert (=> b!1519477 m!1402957))

(declare-fun m!1402959 () Bool)

(assert (=> b!1519477 m!1402959))

(assert (=> b!1519479 m!1402955))

(assert (=> b!1519479 m!1402957))

(assert (=> b!1519479 m!1402957))

(declare-fun m!1402961 () Bool)

(assert (=> b!1519479 m!1402961))

(assert (=> b!1519479 m!1402961))

(assert (=> b!1519479 m!1402957))

(declare-fun m!1402963 () Bool)

(assert (=> b!1519479 m!1402963))

(assert (=> b!1519474 m!1402947))

(assert (=> b!1519474 m!1402947))

(declare-fun m!1402965 () Bool)

(assert (=> b!1519474 m!1402965))

(declare-fun m!1402967 () Bool)

(assert (=> b!1519480 m!1402967))

(assert (=> b!1519470 m!1402947))

(assert (=> b!1519470 m!1402947))

(declare-fun m!1402969 () Bool)

(assert (=> b!1519470 m!1402969))

(assert (=> b!1519470 m!1402969))

(assert (=> b!1519470 m!1402947))

(declare-fun m!1402971 () Bool)

(assert (=> b!1519470 m!1402971))

(declare-fun m!1402973 () Bool)

(assert (=> b!1519475 m!1402973))

(assert (=> b!1519475 m!1402973))

(declare-fun m!1402975 () Bool)

(assert (=> b!1519475 m!1402975))

(push 1)

