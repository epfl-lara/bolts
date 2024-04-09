; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123562 () Bool)

(assert start!123562)

(declare-fun b!1431729 () Bool)

(declare-fun res!965703 () Bool)

(declare-fun e!808318 () Bool)

(assert (=> b!1431729 (=> (not res!965703) (not e!808318))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97452 0))(
  ( (array!97453 (arr!47029 (Array (_ BitVec 32) (_ BitVec 64))) (size!47580 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97452)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1431729 (= res!965703 (and (= (size!47580 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47580 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47580 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1431731 () Bool)

(declare-fun e!808319 () Bool)

(assert (=> b!1431731 (= e!808319 true)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!630263 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431731 (= lt!630263 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1431732 () Bool)

(declare-fun e!808316 () Bool)

(declare-datatypes ((SeekEntryResult!11330 0))(
  ( (MissingZero!11330 (index!47711 (_ BitVec 32))) (Found!11330 (index!47712 (_ BitVec 32))) (Intermediate!11330 (undefined!12142 Bool) (index!47713 (_ BitVec 32)) (x!129367 (_ BitVec 32))) (Undefined!11330) (MissingVacant!11330 (index!47714 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97452 (_ BitVec 32)) SeekEntryResult!11330)

(assert (=> b!1431732 (= e!808316 (= (seekEntryOrOpen!0 (select (arr!47029 a!2831) j!81) a!2831 mask!2608) (Found!11330 j!81)))))

(declare-fun b!1431733 () Bool)

(declare-fun res!965710 () Bool)

(assert (=> b!1431733 (=> (not res!965710) (not e!808318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1431733 (= res!965710 (validKeyInArray!0 (select (arr!47029 a!2831) i!982)))))

(declare-fun b!1431734 () Bool)

(declare-fun res!965707 () Bool)

(assert (=> b!1431734 (=> (not res!965707) (not e!808318))))

(assert (=> b!1431734 (= res!965707 (validKeyInArray!0 (select (arr!47029 a!2831) j!81)))))

(declare-fun b!1431735 () Bool)

(declare-fun res!965712 () Bool)

(declare-fun e!808317 () Bool)

(assert (=> b!1431735 (=> (not res!965712) (not e!808317))))

(declare-fun lt!630267 () SeekEntryResult!11330)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97452 (_ BitVec 32)) SeekEntryResult!11330)

(assert (=> b!1431735 (= res!965712 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47029 a!2831) j!81) a!2831 mask!2608) lt!630267))))

(declare-fun b!1431736 () Bool)

(declare-fun res!965708 () Bool)

(assert (=> b!1431736 (=> (not res!965708) (not e!808318))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1431736 (= res!965708 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47580 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47580 a!2831))))))

(declare-fun b!1431737 () Bool)

(declare-fun res!965713 () Bool)

(assert (=> b!1431737 (=> (not res!965713) (not e!808318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97452 (_ BitVec 32)) Bool)

(assert (=> b!1431737 (= res!965713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1431738 () Bool)

(declare-fun res!965704 () Bool)

(assert (=> b!1431738 (=> (not res!965704) (not e!808317))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1431738 (= res!965704 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1431739 () Bool)

(declare-fun res!965706 () Bool)

(assert (=> b!1431739 (=> (not res!965706) (not e!808318))))

(declare-datatypes ((List!33719 0))(
  ( (Nil!33716) (Cons!33715 (h!35038 (_ BitVec 64)) (t!48420 List!33719)) )
))
(declare-fun arrayNoDuplicates!0 (array!97452 (_ BitVec 32) List!33719) Bool)

(assert (=> b!1431739 (= res!965706 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33716))))

(declare-fun b!1431740 () Bool)

(declare-fun res!965705 () Bool)

(assert (=> b!1431740 (=> (not res!965705) (not e!808317))))

(declare-fun lt!630266 () array!97452)

(declare-fun lt!630268 () (_ BitVec 64))

(declare-fun lt!630264 () SeekEntryResult!11330)

(assert (=> b!1431740 (= res!965705 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630268 lt!630266 mask!2608) lt!630264))))

(declare-fun b!1431741 () Bool)

(declare-fun e!808315 () Bool)

(assert (=> b!1431741 (= e!808318 e!808315)))

(declare-fun res!965715 () Bool)

(assert (=> b!1431741 (=> (not res!965715) (not e!808315))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431741 (= res!965715 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47029 a!2831) j!81) mask!2608) (select (arr!47029 a!2831) j!81) a!2831 mask!2608) lt!630267))))

(assert (=> b!1431741 (= lt!630267 (Intermediate!11330 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1431742 () Bool)

(assert (=> b!1431742 (= e!808317 (not e!808319))))

(declare-fun res!965711 () Bool)

(assert (=> b!1431742 (=> res!965711 e!808319)))

(assert (=> b!1431742 (= res!965711 (or (= (select (arr!47029 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47029 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47029 a!2831) index!585) (select (arr!47029 a!2831) j!81)) (= (select (store (arr!47029 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1431742 e!808316))

(declare-fun res!965714 () Bool)

(assert (=> b!1431742 (=> (not res!965714) (not e!808316))))

(assert (=> b!1431742 (= res!965714 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48354 0))(
  ( (Unit!48355) )
))
(declare-fun lt!630265 () Unit!48354)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97452 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48354)

(assert (=> b!1431742 (= lt!630265 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun res!965709 () Bool)

(assert (=> start!123562 (=> (not res!965709) (not e!808318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123562 (= res!965709 (validMask!0 mask!2608))))

(assert (=> start!123562 e!808318))

(assert (=> start!123562 true))

(declare-fun array_inv!35974 (array!97452) Bool)

(assert (=> start!123562 (array_inv!35974 a!2831)))

(declare-fun b!1431730 () Bool)

(assert (=> b!1431730 (= e!808315 e!808317)))

(declare-fun res!965702 () Bool)

(assert (=> b!1431730 (=> (not res!965702) (not e!808317))))

(assert (=> b!1431730 (= res!965702 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630268 mask!2608) lt!630268 lt!630266 mask!2608) lt!630264))))

(assert (=> b!1431730 (= lt!630264 (Intermediate!11330 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1431730 (= lt!630268 (select (store (arr!47029 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1431730 (= lt!630266 (array!97453 (store (arr!47029 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47580 a!2831)))))

(assert (= (and start!123562 res!965709) b!1431729))

(assert (= (and b!1431729 res!965703) b!1431733))

(assert (= (and b!1431733 res!965710) b!1431734))

(assert (= (and b!1431734 res!965707) b!1431737))

(assert (= (and b!1431737 res!965713) b!1431739))

(assert (= (and b!1431739 res!965706) b!1431736))

(assert (= (and b!1431736 res!965708) b!1431741))

(assert (= (and b!1431741 res!965715) b!1431730))

(assert (= (and b!1431730 res!965702) b!1431735))

(assert (= (and b!1431735 res!965712) b!1431740))

(assert (= (and b!1431740 res!965705) b!1431738))

(assert (= (and b!1431738 res!965704) b!1431742))

(assert (= (and b!1431742 res!965714) b!1431732))

(assert (= (and b!1431742 (not res!965711)) b!1431731))

(declare-fun m!1321565 () Bool)

(assert (=> b!1431742 m!1321565))

(declare-fun m!1321567 () Bool)

(assert (=> b!1431742 m!1321567))

(declare-fun m!1321569 () Bool)

(assert (=> b!1431742 m!1321569))

(declare-fun m!1321571 () Bool)

(assert (=> b!1431742 m!1321571))

(declare-fun m!1321573 () Bool)

(assert (=> b!1431742 m!1321573))

(declare-fun m!1321575 () Bool)

(assert (=> b!1431742 m!1321575))

(assert (=> b!1431732 m!1321573))

(assert (=> b!1431732 m!1321573))

(declare-fun m!1321577 () Bool)

(assert (=> b!1431732 m!1321577))

(declare-fun m!1321579 () Bool)

(assert (=> b!1431740 m!1321579))

(declare-fun m!1321581 () Bool)

(assert (=> b!1431737 m!1321581))

(assert (=> b!1431741 m!1321573))

(assert (=> b!1431741 m!1321573))

(declare-fun m!1321583 () Bool)

(assert (=> b!1431741 m!1321583))

(assert (=> b!1431741 m!1321583))

(assert (=> b!1431741 m!1321573))

(declare-fun m!1321585 () Bool)

(assert (=> b!1431741 m!1321585))

(declare-fun m!1321587 () Bool)

(assert (=> b!1431730 m!1321587))

(assert (=> b!1431730 m!1321587))

(declare-fun m!1321589 () Bool)

(assert (=> b!1431730 m!1321589))

(assert (=> b!1431730 m!1321565))

(declare-fun m!1321591 () Bool)

(assert (=> b!1431730 m!1321591))

(assert (=> b!1431734 m!1321573))

(assert (=> b!1431734 m!1321573))

(declare-fun m!1321593 () Bool)

(assert (=> b!1431734 m!1321593))

(declare-fun m!1321595 () Bool)

(assert (=> start!123562 m!1321595))

(declare-fun m!1321597 () Bool)

(assert (=> start!123562 m!1321597))

(declare-fun m!1321599 () Bool)

(assert (=> b!1431731 m!1321599))

(assert (=> b!1431735 m!1321573))

(assert (=> b!1431735 m!1321573))

(declare-fun m!1321601 () Bool)

(assert (=> b!1431735 m!1321601))

(declare-fun m!1321603 () Bool)

(assert (=> b!1431739 m!1321603))

(declare-fun m!1321605 () Bool)

(assert (=> b!1431733 m!1321605))

(assert (=> b!1431733 m!1321605))

(declare-fun m!1321607 () Bool)

(assert (=> b!1431733 m!1321607))

(push 1)

