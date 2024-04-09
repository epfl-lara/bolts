; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123614 () Bool)

(assert start!123614)

(declare-fun b!1432821 () Bool)

(declare-fun res!966796 () Bool)

(declare-fun e!808783 () Bool)

(assert (=> b!1432821 (=> (not res!966796) (not e!808783))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97504 0))(
  ( (array!97505 (arr!47055 (Array (_ BitVec 32) (_ BitVec 64))) (size!47606 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97504)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1432821 (= res!966796 (and (= (size!47606 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47606 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47606 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1432822 () Bool)

(declare-fun res!966795 () Bool)

(assert (=> b!1432822 (=> (not res!966795) (not e!808783))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432822 (= res!966795 (validKeyInArray!0 (select (arr!47055 a!2831) i!982)))))

(declare-fun b!1432823 () Bool)

(declare-fun res!966800 () Bool)

(assert (=> b!1432823 (=> (not res!966800) (not e!808783))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1432823 (= res!966800 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47606 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47606 a!2831))))))

(declare-fun b!1432824 () Bool)

(declare-fun res!966798 () Bool)

(assert (=> b!1432824 (=> (not res!966798) (not e!808783))))

(assert (=> b!1432824 (= res!966798 (validKeyInArray!0 (select (arr!47055 a!2831) j!81)))))

(declare-fun b!1432826 () Bool)

(declare-fun res!966801 () Bool)

(declare-fun e!808787 () Bool)

(assert (=> b!1432826 (=> (not res!966801) (not e!808787))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1432826 (= res!966801 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1432827 () Bool)

(declare-fun e!808784 () Bool)

(assert (=> b!1432827 (= e!808784 e!808787)))

(declare-fun res!966803 () Bool)

(assert (=> b!1432827 (=> (not res!966803) (not e!808787))))

(declare-fun lt!630736 () (_ BitVec 64))

(declare-fun lt!630732 () array!97504)

(declare-datatypes ((SeekEntryResult!11356 0))(
  ( (MissingZero!11356 (index!47815 (_ BitVec 32))) (Found!11356 (index!47816 (_ BitVec 32))) (Intermediate!11356 (undefined!12168 Bool) (index!47817 (_ BitVec 32)) (x!129457 (_ BitVec 32))) (Undefined!11356) (MissingVacant!11356 (index!47818 (_ BitVec 32))) )
))
(declare-fun lt!630735 () SeekEntryResult!11356)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97504 (_ BitVec 32)) SeekEntryResult!11356)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432827 (= res!966803 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630736 mask!2608) lt!630736 lt!630732 mask!2608) lt!630735))))

(assert (=> b!1432827 (= lt!630735 (Intermediate!11356 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1432827 (= lt!630736 (select (store (arr!47055 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432827 (= lt!630732 (array!97505 (store (arr!47055 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47606 a!2831)))))

(declare-fun b!1432828 () Bool)

(declare-fun res!966802 () Bool)

(assert (=> b!1432828 (=> (not res!966802) (not e!808783))))

(declare-datatypes ((List!33745 0))(
  ( (Nil!33742) (Cons!33741 (h!35064 (_ BitVec 64)) (t!48446 List!33745)) )
))
(declare-fun arrayNoDuplicates!0 (array!97504 (_ BitVec 32) List!33745) Bool)

(assert (=> b!1432828 (= res!966802 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33742))))

(declare-fun b!1432829 () Bool)

(declare-fun res!966806 () Bool)

(assert (=> b!1432829 (=> (not res!966806) (not e!808787))))

(assert (=> b!1432829 (= res!966806 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630736 lt!630732 mask!2608) lt!630735))))

(declare-fun b!1432830 () Bool)

(declare-fun e!808786 () Bool)

(assert (=> b!1432830 (= e!808787 (not e!808786))))

(declare-fun res!966799 () Bool)

(assert (=> b!1432830 (=> res!966799 e!808786)))

(assert (=> b!1432830 (= res!966799 (or (= (select (arr!47055 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47055 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47055 a!2831) index!585) (select (arr!47055 a!2831) j!81)) (= (select (store (arr!47055 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!808785 () Bool)

(assert (=> b!1432830 e!808785))

(declare-fun res!966807 () Bool)

(assert (=> b!1432830 (=> (not res!966807) (not e!808785))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97504 (_ BitVec 32)) Bool)

(assert (=> b!1432830 (= res!966807 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48406 0))(
  ( (Unit!48407) )
))
(declare-fun lt!630734 () Unit!48406)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97504 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48406)

(assert (=> b!1432830 (= lt!630734 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun res!966797 () Bool)

(assert (=> start!123614 (=> (not res!966797) (not e!808783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123614 (= res!966797 (validMask!0 mask!2608))))

(assert (=> start!123614 e!808783))

(assert (=> start!123614 true))

(declare-fun array_inv!36000 (array!97504) Bool)

(assert (=> start!123614 (array_inv!36000 a!2831)))

(declare-fun b!1432825 () Bool)

(assert (=> b!1432825 (= e!808783 e!808784)))

(declare-fun res!966794 () Bool)

(assert (=> b!1432825 (=> (not res!966794) (not e!808784))))

(declare-fun lt!630733 () SeekEntryResult!11356)

(assert (=> b!1432825 (= res!966794 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47055 a!2831) j!81) mask!2608) (select (arr!47055 a!2831) j!81) a!2831 mask!2608) lt!630733))))

(assert (=> b!1432825 (= lt!630733 (Intermediate!11356 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432831 () Bool)

(declare-fun res!966804 () Bool)

(assert (=> b!1432831 (=> (not res!966804) (not e!808783))))

(assert (=> b!1432831 (= res!966804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432832 () Bool)

(assert (=> b!1432832 (= e!808786 true)))

(declare-fun lt!630731 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432832 (= lt!630731 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432833 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97504 (_ BitVec 32)) SeekEntryResult!11356)

(assert (=> b!1432833 (= e!808785 (= (seekEntryOrOpen!0 (select (arr!47055 a!2831) j!81) a!2831 mask!2608) (Found!11356 j!81)))))

(declare-fun b!1432834 () Bool)

(declare-fun res!966805 () Bool)

(assert (=> b!1432834 (=> (not res!966805) (not e!808787))))

(assert (=> b!1432834 (= res!966805 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47055 a!2831) j!81) a!2831 mask!2608) lt!630733))))

(assert (= (and start!123614 res!966797) b!1432821))

(assert (= (and b!1432821 res!966796) b!1432822))

(assert (= (and b!1432822 res!966795) b!1432824))

(assert (= (and b!1432824 res!966798) b!1432831))

(assert (= (and b!1432831 res!966804) b!1432828))

(assert (= (and b!1432828 res!966802) b!1432823))

(assert (= (and b!1432823 res!966800) b!1432825))

(assert (= (and b!1432825 res!966794) b!1432827))

(assert (= (and b!1432827 res!966803) b!1432834))

(assert (= (and b!1432834 res!966805) b!1432829))

(assert (= (and b!1432829 res!966806) b!1432826))

(assert (= (and b!1432826 res!966801) b!1432830))

(assert (= (and b!1432830 res!966807) b!1432833))

(assert (= (and b!1432830 (not res!966799)) b!1432832))

(declare-fun m!1322709 () Bool)

(assert (=> b!1432825 m!1322709))

(assert (=> b!1432825 m!1322709))

(declare-fun m!1322711 () Bool)

(assert (=> b!1432825 m!1322711))

(assert (=> b!1432825 m!1322711))

(assert (=> b!1432825 m!1322709))

(declare-fun m!1322713 () Bool)

(assert (=> b!1432825 m!1322713))

(declare-fun m!1322715 () Bool)

(assert (=> b!1432828 m!1322715))

(assert (=> b!1432824 m!1322709))

(assert (=> b!1432824 m!1322709))

(declare-fun m!1322717 () Bool)

(assert (=> b!1432824 m!1322717))

(declare-fun m!1322719 () Bool)

(assert (=> b!1432830 m!1322719))

(declare-fun m!1322721 () Bool)

(assert (=> b!1432830 m!1322721))

(declare-fun m!1322723 () Bool)

(assert (=> b!1432830 m!1322723))

(declare-fun m!1322725 () Bool)

(assert (=> b!1432830 m!1322725))

(assert (=> b!1432830 m!1322709))

(declare-fun m!1322727 () Bool)

(assert (=> b!1432830 m!1322727))

(declare-fun m!1322729 () Bool)

(assert (=> b!1432827 m!1322729))

(assert (=> b!1432827 m!1322729))

(declare-fun m!1322731 () Bool)

(assert (=> b!1432827 m!1322731))

(assert (=> b!1432827 m!1322719))

(declare-fun m!1322733 () Bool)

(assert (=> b!1432827 m!1322733))

(declare-fun m!1322735 () Bool)

(assert (=> b!1432832 m!1322735))

(assert (=> b!1432834 m!1322709))

(assert (=> b!1432834 m!1322709))

(declare-fun m!1322737 () Bool)

(assert (=> b!1432834 m!1322737))

(assert (=> b!1432833 m!1322709))

(assert (=> b!1432833 m!1322709))

(declare-fun m!1322739 () Bool)

(assert (=> b!1432833 m!1322739))

(declare-fun m!1322741 () Bool)

(assert (=> b!1432829 m!1322741))

(declare-fun m!1322743 () Bool)

(assert (=> b!1432831 m!1322743))

(declare-fun m!1322745 () Bool)

(assert (=> start!123614 m!1322745))

(declare-fun m!1322747 () Bool)

(assert (=> start!123614 m!1322747))

(declare-fun m!1322749 () Bool)

(assert (=> b!1432822 m!1322749))

(assert (=> b!1432822 m!1322749))

(declare-fun m!1322751 () Bool)

(assert (=> b!1432822 m!1322751))

(push 1)

(assert (not b!1432824))

(assert (not b!1432827))

(assert (not b!1432831))

(assert (not b!1432828))

(assert (not start!123614))

(assert (not b!1432833))

(assert (not b!1432825))

(assert (not b!1432822))

(assert (not b!1432834))

(assert (not b!1432829))

(assert (not b!1432830))

(assert (not b!1432832))

(check-sat)

