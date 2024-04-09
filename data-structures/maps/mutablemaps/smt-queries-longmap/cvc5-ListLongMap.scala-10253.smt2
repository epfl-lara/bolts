; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120610 () Bool)

(assert start!120610)

(declare-fun b!1403824 () Bool)

(declare-fun res!942447 () Bool)

(declare-fun e!794833 () Bool)

(assert (=> b!1403824 (=> (not res!942447) (not e!794833))))

(declare-datatypes ((array!95937 0))(
  ( (array!95938 (arr!46315 (Array (_ BitVec 32) (_ BitVec 64))) (size!46866 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95937)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95937 (_ BitVec 32)) Bool)

(assert (=> b!1403824 (= res!942447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1403825 () Bool)

(declare-fun res!942444 () Bool)

(assert (=> b!1403825 (=> (not res!942444) (not e!794833))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1403825 (= res!942444 (validKeyInArray!0 (select (arr!46315 a!2901) i!1037)))))

(declare-fun b!1403827 () Bool)

(declare-fun res!942450 () Bool)

(assert (=> b!1403827 (=> (not res!942450) (not e!794833))))

(declare-datatypes ((List!33014 0))(
  ( (Nil!33011) (Cons!33010 (h!34258 (_ BitVec 64)) (t!47715 List!33014)) )
))
(declare-fun arrayNoDuplicates!0 (array!95937 (_ BitVec 32) List!33014) Bool)

(assert (=> b!1403827 (= res!942450 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33011))))

(declare-fun e!794834 () Bool)

(declare-fun b!1403828 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10654 0))(
  ( (MissingZero!10654 (index!44992 (_ BitVec 32))) (Found!10654 (index!44993 (_ BitVec 32))) (Intermediate!10654 (undefined!11466 Bool) (index!44994 (_ BitVec 32)) (x!126604 (_ BitVec 32))) (Undefined!10654) (MissingVacant!10654 (index!44995 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95937 (_ BitVec 32)) SeekEntryResult!10654)

(assert (=> b!1403828 (= e!794834 (= (seekEntryOrOpen!0 (select (arr!46315 a!2901) j!112) a!2901 mask!2840) (Found!10654 j!112)))))

(declare-fun b!1403829 () Bool)

(declare-fun res!942448 () Bool)

(assert (=> b!1403829 (=> (not res!942448) (not e!794833))))

(assert (=> b!1403829 (= res!942448 (validKeyInArray!0 (select (arr!46315 a!2901) j!112)))))

(declare-fun b!1403830 () Bool)

(declare-fun res!942445 () Bool)

(assert (=> b!1403830 (=> (not res!942445) (not e!794833))))

(assert (=> b!1403830 (= res!942445 (and (= (size!46866 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46866 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46866 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!942446 () Bool)

(assert (=> start!120610 (=> (not res!942446) (not e!794833))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120610 (= res!942446 (validMask!0 mask!2840))))

(assert (=> start!120610 e!794833))

(assert (=> start!120610 true))

(declare-fun array_inv!35260 (array!95937) Bool)

(assert (=> start!120610 (array_inv!35260 a!2901)))

(declare-fun b!1403826 () Bool)

(assert (=> b!1403826 (= e!794833 (not true))))

(assert (=> b!1403826 e!794834))

(declare-fun res!942449 () Bool)

(assert (=> b!1403826 (=> (not res!942449) (not e!794834))))

(assert (=> b!1403826 (= res!942449 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47262 0))(
  ( (Unit!47263) )
))
(declare-fun lt!618480 () Unit!47262)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95937 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47262)

(assert (=> b!1403826 (= lt!618480 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618481 () SeekEntryResult!10654)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95937 (_ BitVec 32)) SeekEntryResult!10654)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1403826 (= lt!618481 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46315 a!2901) j!112) mask!2840) (select (arr!46315 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!120610 res!942446) b!1403830))

(assert (= (and b!1403830 res!942445) b!1403825))

(assert (= (and b!1403825 res!942444) b!1403829))

(assert (= (and b!1403829 res!942448) b!1403824))

(assert (= (and b!1403824 res!942447) b!1403827))

(assert (= (and b!1403827 res!942450) b!1403826))

(assert (= (and b!1403826 res!942449) b!1403828))

(declare-fun m!1292651 () Bool)

(assert (=> b!1403826 m!1292651))

(declare-fun m!1292653 () Bool)

(assert (=> b!1403826 m!1292653))

(assert (=> b!1403826 m!1292651))

(declare-fun m!1292655 () Bool)

(assert (=> b!1403826 m!1292655))

(assert (=> b!1403826 m!1292653))

(assert (=> b!1403826 m!1292651))

(declare-fun m!1292657 () Bool)

(assert (=> b!1403826 m!1292657))

(declare-fun m!1292659 () Bool)

(assert (=> b!1403826 m!1292659))

(declare-fun m!1292661 () Bool)

(assert (=> b!1403824 m!1292661))

(assert (=> b!1403828 m!1292651))

(assert (=> b!1403828 m!1292651))

(declare-fun m!1292663 () Bool)

(assert (=> b!1403828 m!1292663))

(assert (=> b!1403829 m!1292651))

(assert (=> b!1403829 m!1292651))

(declare-fun m!1292665 () Bool)

(assert (=> b!1403829 m!1292665))

(declare-fun m!1292667 () Bool)

(assert (=> b!1403825 m!1292667))

(assert (=> b!1403825 m!1292667))

(declare-fun m!1292669 () Bool)

(assert (=> b!1403825 m!1292669))

(declare-fun m!1292671 () Bool)

(assert (=> b!1403827 m!1292671))

(declare-fun m!1292673 () Bool)

(assert (=> start!120610 m!1292673))

(declare-fun m!1292675 () Bool)

(assert (=> start!120610 m!1292675))

(push 1)

(assert (not b!1403826))

(assert (not b!1403828))

(assert (not b!1403829))

(assert (not b!1403824))

(assert (not b!1403825))

(assert (not start!120610))

(assert (not b!1403827))

(check-sat)

(pop 1)

