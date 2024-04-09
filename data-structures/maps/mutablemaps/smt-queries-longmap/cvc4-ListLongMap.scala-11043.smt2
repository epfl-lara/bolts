; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129140 () Bool)

(assert start!129140)

(declare-fun b!1514592 () Bool)

(declare-fun res!1034576 () Bool)

(declare-fun e!845278 () Bool)

(assert (=> b!1514592 (=> (not res!1034576) (not e!845278))))

(declare-datatypes ((array!100909 0))(
  ( (array!100910 (arr!48687 (Array (_ BitVec 32) (_ BitVec 64))) (size!49238 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100909)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100909 (_ BitVec 32)) Bool)

(assert (=> b!1514592 (= res!1034576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514593 () Bool)

(declare-fun res!1034569 () Bool)

(assert (=> b!1514593 (=> (not res!1034569) (not e!845278))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514593 (= res!1034569 (validKeyInArray!0 (select (arr!48687 a!2804) j!70)))))

(declare-fun b!1514594 () Bool)

(declare-fun res!1034570 () Bool)

(assert (=> b!1514594 (=> (not res!1034570) (not e!845278))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1514594 (= res!1034570 (and (= (size!49238 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49238 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49238 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514595 () Bool)

(declare-fun res!1034577 () Bool)

(assert (=> b!1514595 (=> (not res!1034577) (not e!845278))))

(declare-datatypes ((List!35350 0))(
  ( (Nil!35347) (Cons!35346 (h!36759 (_ BitVec 64)) (t!50051 List!35350)) )
))
(declare-fun arrayNoDuplicates!0 (array!100909 (_ BitVec 32) List!35350) Bool)

(assert (=> b!1514595 (= res!1034577 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35347))))

(declare-fun b!1514596 () Bool)

(declare-fun res!1034579 () Bool)

(declare-fun e!845275 () Bool)

(assert (=> b!1514596 (=> (not res!1034579) (not e!845275))))

(declare-datatypes ((SeekEntryResult!12879 0))(
  ( (MissingZero!12879 (index!53910 (_ BitVec 32))) (Found!12879 (index!53911 (_ BitVec 32))) (Intermediate!12879 (undefined!13691 Bool) (index!53912 (_ BitVec 32)) (x!135626 (_ BitVec 32))) (Undefined!12879) (MissingVacant!12879 (index!53913 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100909 (_ BitVec 32)) SeekEntryResult!12879)

(assert (=> b!1514596 (= res!1034579 (= (seekEntry!0 (select (arr!48687 a!2804) j!70) a!2804 mask!2512) (Found!12879 j!70)))))

(declare-fun b!1514597 () Bool)

(declare-fun e!845277 () Bool)

(assert (=> b!1514597 (= e!845278 e!845277)))

(declare-fun res!1034573 () Bool)

(assert (=> b!1514597 (=> (not res!1034573) (not e!845277))))

(declare-fun lt!656364 () SeekEntryResult!12879)

(declare-fun lt!656367 () SeekEntryResult!12879)

(assert (=> b!1514597 (= res!1034573 (= lt!656364 lt!656367))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1514597 (= lt!656367 (Intermediate!12879 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100909 (_ BitVec 32)) SeekEntryResult!12879)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514597 (= lt!656364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48687 a!2804) j!70) mask!2512) (select (arr!48687 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1034568 () Bool)

(assert (=> start!129140 (=> (not res!1034568) (not e!845278))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129140 (= res!1034568 (validMask!0 mask!2512))))

(assert (=> start!129140 e!845278))

(assert (=> start!129140 true))

(declare-fun array_inv!37632 (array!100909) Bool)

(assert (=> start!129140 (array_inv!37632 a!2804)))

(declare-fun b!1514598 () Bool)

(declare-fun res!1034575 () Bool)

(assert (=> b!1514598 (=> (not res!1034575) (not e!845278))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1514598 (= res!1034575 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49238 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49238 a!2804))))))

(declare-fun b!1514599 () Bool)

(declare-fun lt!656368 () array!100909)

(declare-fun e!845274 () Bool)

(declare-fun lt!656366 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100909 (_ BitVec 32)) SeekEntryResult!12879)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100909 (_ BitVec 32)) SeekEntryResult!12879)

(assert (=> b!1514599 (= e!845274 (= (seekEntryOrOpen!0 lt!656366 lt!656368 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656366 lt!656368 mask!2512)))))

(declare-fun b!1514600 () Bool)

(declare-fun e!845276 () Bool)

(assert (=> b!1514600 (= e!845276 e!845274)))

(declare-fun res!1034567 () Bool)

(assert (=> b!1514600 (=> (not res!1034567) (not e!845274))))

(assert (=> b!1514600 (= res!1034567 (= (seekEntryOrOpen!0 (select (arr!48687 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48687 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1514601 () Bool)

(declare-fun res!1034574 () Bool)

(assert (=> b!1514601 (=> (not res!1034574) (not e!845278))))

(assert (=> b!1514601 (= res!1034574 (validKeyInArray!0 (select (arr!48687 a!2804) i!961)))))

(declare-fun b!1514602 () Bool)

(declare-fun e!845273 () Bool)

(assert (=> b!1514602 (= e!845273 (not true))))

(assert (=> b!1514602 e!845275))

(declare-fun res!1034571 () Bool)

(assert (=> b!1514602 (=> (not res!1034571) (not e!845275))))

(assert (=> b!1514602 (= res!1034571 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50582 0))(
  ( (Unit!50583) )
))
(declare-fun lt!656365 () Unit!50582)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100909 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50582)

(assert (=> b!1514602 (= lt!656365 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514603 () Bool)

(assert (=> b!1514603 (= e!845277 e!845273)))

(declare-fun res!1034572 () Bool)

(assert (=> b!1514603 (=> (not res!1034572) (not e!845273))))

(assert (=> b!1514603 (= res!1034572 (= lt!656364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656366 mask!2512) lt!656366 lt!656368 mask!2512)))))

(assert (=> b!1514603 (= lt!656366 (select (store (arr!48687 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514603 (= lt!656368 (array!100910 (store (arr!48687 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49238 a!2804)))))

(declare-fun b!1514604 () Bool)

(declare-fun res!1034578 () Bool)

(assert (=> b!1514604 (=> (not res!1034578) (not e!845277))))

(assert (=> b!1514604 (= res!1034578 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48687 a!2804) j!70) a!2804 mask!2512) lt!656367))))

(declare-fun b!1514605 () Bool)

(assert (=> b!1514605 (= e!845275 e!845276)))

(declare-fun res!1034580 () Bool)

(assert (=> b!1514605 (=> res!1034580 e!845276)))

(assert (=> b!1514605 (= res!1034580 (or (not (= (select (arr!48687 a!2804) j!70) lt!656366)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48687 a!2804) index!487) (select (arr!48687 a!2804) j!70)) (not (= (select (arr!48687 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!129140 res!1034568) b!1514594))

(assert (= (and b!1514594 res!1034570) b!1514601))

(assert (= (and b!1514601 res!1034574) b!1514593))

(assert (= (and b!1514593 res!1034569) b!1514592))

(assert (= (and b!1514592 res!1034576) b!1514595))

(assert (= (and b!1514595 res!1034577) b!1514598))

(assert (= (and b!1514598 res!1034575) b!1514597))

(assert (= (and b!1514597 res!1034573) b!1514604))

(assert (= (and b!1514604 res!1034578) b!1514603))

(assert (= (and b!1514603 res!1034572) b!1514602))

(assert (= (and b!1514602 res!1034571) b!1514596))

(assert (= (and b!1514596 res!1034579) b!1514605))

(assert (= (and b!1514605 (not res!1034580)) b!1514600))

(assert (= (and b!1514600 res!1034567) b!1514599))

(declare-fun m!1397621 () Bool)

(assert (=> b!1514595 m!1397621))

(declare-fun m!1397623 () Bool)

(assert (=> b!1514604 m!1397623))

(assert (=> b!1514604 m!1397623))

(declare-fun m!1397625 () Bool)

(assert (=> b!1514604 m!1397625))

(declare-fun m!1397627 () Bool)

(assert (=> start!129140 m!1397627))

(declare-fun m!1397629 () Bool)

(assert (=> start!129140 m!1397629))

(assert (=> b!1514605 m!1397623))

(declare-fun m!1397631 () Bool)

(assert (=> b!1514605 m!1397631))

(declare-fun m!1397633 () Bool)

(assert (=> b!1514602 m!1397633))

(declare-fun m!1397635 () Bool)

(assert (=> b!1514602 m!1397635))

(declare-fun m!1397637 () Bool)

(assert (=> b!1514592 m!1397637))

(declare-fun m!1397639 () Bool)

(assert (=> b!1514599 m!1397639))

(declare-fun m!1397641 () Bool)

(assert (=> b!1514599 m!1397641))

(assert (=> b!1514593 m!1397623))

(assert (=> b!1514593 m!1397623))

(declare-fun m!1397643 () Bool)

(assert (=> b!1514593 m!1397643))

(assert (=> b!1514600 m!1397623))

(assert (=> b!1514600 m!1397623))

(declare-fun m!1397645 () Bool)

(assert (=> b!1514600 m!1397645))

(assert (=> b!1514600 m!1397623))

(declare-fun m!1397647 () Bool)

(assert (=> b!1514600 m!1397647))

(declare-fun m!1397649 () Bool)

(assert (=> b!1514601 m!1397649))

(assert (=> b!1514601 m!1397649))

(declare-fun m!1397651 () Bool)

(assert (=> b!1514601 m!1397651))

(declare-fun m!1397653 () Bool)

(assert (=> b!1514603 m!1397653))

(assert (=> b!1514603 m!1397653))

(declare-fun m!1397655 () Bool)

(assert (=> b!1514603 m!1397655))

(declare-fun m!1397657 () Bool)

(assert (=> b!1514603 m!1397657))

(declare-fun m!1397659 () Bool)

(assert (=> b!1514603 m!1397659))

(assert (=> b!1514597 m!1397623))

(assert (=> b!1514597 m!1397623))

(declare-fun m!1397661 () Bool)

(assert (=> b!1514597 m!1397661))

(assert (=> b!1514597 m!1397661))

(assert (=> b!1514597 m!1397623))

(declare-fun m!1397663 () Bool)

(assert (=> b!1514597 m!1397663))

(assert (=> b!1514596 m!1397623))

(assert (=> b!1514596 m!1397623))

(declare-fun m!1397665 () Bool)

(assert (=> b!1514596 m!1397665))

(push 1)

(assert (not b!1514601))

(assert (not b!1514602))

(assert (not b!1514604))

(assert (not b!1514595))

(assert (not b!1514593))

(assert (not b!1514592))

(assert (not start!129140))

(assert (not b!1514600))

(assert (not b!1514599))

(assert (not b!1514596))

(assert (not b!1514597))

(assert (not b!1514603))

(check-sat)

