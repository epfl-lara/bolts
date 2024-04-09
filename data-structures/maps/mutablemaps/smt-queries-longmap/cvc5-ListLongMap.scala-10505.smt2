; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123766 () Bool)

(assert start!123766)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97542 0))(
  ( (array!97543 (arr!47071 (Array (_ BitVec 32) (_ BitVec 64))) (size!47622 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97542)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun e!809451 () Bool)

(declare-fun b!1434111 () Bool)

(declare-datatypes ((SeekEntryResult!11372 0))(
  ( (MissingZero!11372 (index!47879 (_ BitVec 32))) (Found!11372 (index!47880 (_ BitVec 32))) (Intermediate!11372 (undefined!12184 Bool) (index!47881 (_ BitVec 32)) (x!129539 (_ BitVec 32))) (Undefined!11372) (MissingVacant!11372 (index!47882 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97542 (_ BitVec 32)) SeekEntryResult!11372)

(assert (=> b!1434111 (= e!809451 (= (seekEntryOrOpen!0 (select (arr!47071 a!2831) j!81) a!2831 mask!2608) (Found!11372 j!81)))))

(declare-fun b!1434112 () Bool)

(declare-fun res!967684 () Bool)

(declare-fun e!809450 () Bool)

(assert (=> b!1434112 (=> (not res!967684) (not e!809450))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1434112 (= res!967684 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1434113 () Bool)

(declare-fun res!967693 () Bool)

(declare-fun e!809449 () Bool)

(assert (=> b!1434113 (=> (not res!967693) (not e!809449))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1434113 (= res!967693 (validKeyInArray!0 (select (arr!47071 a!2831) j!81)))))

(declare-fun b!1434114 () Bool)

(declare-fun res!967691 () Bool)

(assert (=> b!1434114 (=> (not res!967691) (not e!809450))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!631305 () SeekEntryResult!11372)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!631306 () (_ BitVec 64))

(declare-fun lt!631301 () array!97542)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97542 (_ BitVec 32)) SeekEntryResult!11372)

(assert (=> b!1434114 (= res!967691 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631306 lt!631301 mask!2608) lt!631305))))

(declare-fun b!1434115 () Bool)

(declare-fun res!967683 () Bool)

(assert (=> b!1434115 (=> (not res!967683) (not e!809449))))

(declare-datatypes ((List!33761 0))(
  ( (Nil!33758) (Cons!33757 (h!35086 (_ BitVec 64)) (t!48462 List!33761)) )
))
(declare-fun arrayNoDuplicates!0 (array!97542 (_ BitVec 32) List!33761) Bool)

(assert (=> b!1434115 (= res!967683 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33758))))

(declare-fun b!1434116 () Bool)

(declare-fun e!809448 () Bool)

(assert (=> b!1434116 (= e!809448 true)))

(declare-fun lt!631303 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434116 (= lt!631303 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun res!967685 () Bool)

(assert (=> start!123766 (=> (not res!967685) (not e!809449))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123766 (= res!967685 (validMask!0 mask!2608))))

(assert (=> start!123766 e!809449))

(assert (=> start!123766 true))

(declare-fun array_inv!36016 (array!97542) Bool)

(assert (=> start!123766 (array_inv!36016 a!2831)))

(declare-fun b!1434117 () Bool)

(declare-fun res!967690 () Bool)

(assert (=> b!1434117 (=> (not res!967690) (not e!809450))))

(declare-fun lt!631304 () SeekEntryResult!11372)

(assert (=> b!1434117 (= res!967690 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47071 a!2831) j!81) a!2831 mask!2608) lt!631304))))

(declare-fun b!1434118 () Bool)

(declare-fun res!967682 () Bool)

(assert (=> b!1434118 (=> (not res!967682) (not e!809449))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1434118 (= res!967682 (validKeyInArray!0 (select (arr!47071 a!2831) i!982)))))

(declare-fun b!1434119 () Bool)

(assert (=> b!1434119 (= e!809450 (not e!809448))))

(declare-fun res!967686 () Bool)

(assert (=> b!1434119 (=> res!967686 e!809448)))

(assert (=> b!1434119 (= res!967686 (or (= (select (arr!47071 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47071 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47071 a!2831) index!585) (select (arr!47071 a!2831) j!81)) (= (select (store (arr!47071 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1434119 e!809451))

(declare-fun res!967688 () Bool)

(assert (=> b!1434119 (=> (not res!967688) (not e!809451))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97542 (_ BitVec 32)) Bool)

(assert (=> b!1434119 (= res!967688 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48438 0))(
  ( (Unit!48439) )
))
(declare-fun lt!631302 () Unit!48438)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97542 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48438)

(assert (=> b!1434119 (= lt!631302 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1434120 () Bool)

(declare-fun res!967694 () Bool)

(assert (=> b!1434120 (=> (not res!967694) (not e!809449))))

(assert (=> b!1434120 (= res!967694 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47622 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47622 a!2831))))))

(declare-fun b!1434121 () Bool)

(declare-fun e!809453 () Bool)

(assert (=> b!1434121 (= e!809449 e!809453)))

(declare-fun res!967687 () Bool)

(assert (=> b!1434121 (=> (not res!967687) (not e!809453))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434121 (= res!967687 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47071 a!2831) j!81) mask!2608) (select (arr!47071 a!2831) j!81) a!2831 mask!2608) lt!631304))))

(assert (=> b!1434121 (= lt!631304 (Intermediate!11372 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1434122 () Bool)

(declare-fun res!967695 () Bool)

(assert (=> b!1434122 (=> (not res!967695) (not e!809449))))

(assert (=> b!1434122 (= res!967695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1434123 () Bool)

(assert (=> b!1434123 (= e!809453 e!809450)))

(declare-fun res!967689 () Bool)

(assert (=> b!1434123 (=> (not res!967689) (not e!809450))))

(assert (=> b!1434123 (= res!967689 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631306 mask!2608) lt!631306 lt!631301 mask!2608) lt!631305))))

(assert (=> b!1434123 (= lt!631305 (Intermediate!11372 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1434123 (= lt!631306 (select (store (arr!47071 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1434123 (= lt!631301 (array!97543 (store (arr!47071 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47622 a!2831)))))

(declare-fun b!1434124 () Bool)

(declare-fun res!967692 () Bool)

(assert (=> b!1434124 (=> (not res!967692) (not e!809449))))

(assert (=> b!1434124 (= res!967692 (and (= (size!47622 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47622 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47622 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!123766 res!967685) b!1434124))

(assert (= (and b!1434124 res!967692) b!1434118))

(assert (= (and b!1434118 res!967682) b!1434113))

(assert (= (and b!1434113 res!967693) b!1434122))

(assert (= (and b!1434122 res!967695) b!1434115))

(assert (= (and b!1434115 res!967683) b!1434120))

(assert (= (and b!1434120 res!967694) b!1434121))

(assert (= (and b!1434121 res!967687) b!1434123))

(assert (= (and b!1434123 res!967689) b!1434117))

(assert (= (and b!1434117 res!967690) b!1434114))

(assert (= (and b!1434114 res!967691) b!1434112))

(assert (= (and b!1434112 res!967684) b!1434119))

(assert (= (and b!1434119 res!967688) b!1434111))

(assert (= (and b!1434119 (not res!967686)) b!1434116))

(declare-fun m!1323785 () Bool)

(assert (=> b!1434116 m!1323785))

(declare-fun m!1323787 () Bool)

(assert (=> b!1434119 m!1323787))

(declare-fun m!1323789 () Bool)

(assert (=> b!1434119 m!1323789))

(declare-fun m!1323791 () Bool)

(assert (=> b!1434119 m!1323791))

(declare-fun m!1323793 () Bool)

(assert (=> b!1434119 m!1323793))

(declare-fun m!1323795 () Bool)

(assert (=> b!1434119 m!1323795))

(declare-fun m!1323797 () Bool)

(assert (=> b!1434119 m!1323797))

(declare-fun m!1323799 () Bool)

(assert (=> start!123766 m!1323799))

(declare-fun m!1323801 () Bool)

(assert (=> start!123766 m!1323801))

(assert (=> b!1434113 m!1323795))

(assert (=> b!1434113 m!1323795))

(declare-fun m!1323803 () Bool)

(assert (=> b!1434113 m!1323803))

(declare-fun m!1323805 () Bool)

(assert (=> b!1434115 m!1323805))

(assert (=> b!1434111 m!1323795))

(assert (=> b!1434111 m!1323795))

(declare-fun m!1323807 () Bool)

(assert (=> b!1434111 m!1323807))

(declare-fun m!1323809 () Bool)

(assert (=> b!1434122 m!1323809))

(declare-fun m!1323811 () Bool)

(assert (=> b!1434114 m!1323811))

(declare-fun m!1323813 () Bool)

(assert (=> b!1434123 m!1323813))

(assert (=> b!1434123 m!1323813))

(declare-fun m!1323815 () Bool)

(assert (=> b!1434123 m!1323815))

(assert (=> b!1434123 m!1323787))

(declare-fun m!1323817 () Bool)

(assert (=> b!1434123 m!1323817))

(assert (=> b!1434117 m!1323795))

(assert (=> b!1434117 m!1323795))

(declare-fun m!1323819 () Bool)

(assert (=> b!1434117 m!1323819))

(declare-fun m!1323821 () Bool)

(assert (=> b!1434118 m!1323821))

(assert (=> b!1434118 m!1323821))

(declare-fun m!1323823 () Bool)

(assert (=> b!1434118 m!1323823))

(assert (=> b!1434121 m!1323795))

(assert (=> b!1434121 m!1323795))

(declare-fun m!1323825 () Bool)

(assert (=> b!1434121 m!1323825))

(assert (=> b!1434121 m!1323825))

(assert (=> b!1434121 m!1323795))

(declare-fun m!1323827 () Bool)

(assert (=> b!1434121 m!1323827))

(push 1)

