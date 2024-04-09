; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123568 () Bool)

(assert start!123568)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97458 0))(
  ( (array!97459 (arr!47032 (Array (_ BitVec 32) (_ BitVec 64))) (size!47583 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97458)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun e!808370 () Bool)

(declare-fun b!1431855 () Bool)

(declare-datatypes ((SeekEntryResult!11333 0))(
  ( (MissingZero!11333 (index!47723 (_ BitVec 32))) (Found!11333 (index!47724 (_ BitVec 32))) (Intermediate!11333 (undefined!12145 Bool) (index!47725 (_ BitVec 32)) (x!129378 (_ BitVec 32))) (Undefined!11333) (MissingVacant!11333 (index!47726 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97458 (_ BitVec 32)) SeekEntryResult!11333)

(assert (=> b!1431855 (= e!808370 (= (seekEntryOrOpen!0 (select (arr!47032 a!2831) j!81) a!2831 mask!2608) (Found!11333 j!81)))))

(declare-fun b!1431857 () Bool)

(declare-fun res!965833 () Bool)

(declare-fun e!808372 () Bool)

(assert (=> b!1431857 (=> (not res!965833) (not e!808372))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1431857 (= res!965833 (validKeyInArray!0 (select (arr!47032 a!2831) i!982)))))

(declare-fun b!1431858 () Bool)

(declare-fun res!965830 () Bool)

(declare-fun e!808368 () Bool)

(assert (=> b!1431858 (=> (not res!965830) (not e!808368))))

(declare-fun lt!630321 () array!97458)

(declare-fun lt!630318 () SeekEntryResult!11333)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!630320 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97458 (_ BitVec 32)) SeekEntryResult!11333)

(assert (=> b!1431858 (= res!965830 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630320 lt!630321 mask!2608) lt!630318))))

(declare-fun b!1431859 () Bool)

(declare-fun res!965834 () Bool)

(assert (=> b!1431859 (=> (not res!965834) (not e!808372))))

(assert (=> b!1431859 (= res!965834 (and (= (size!47583 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47583 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47583 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1431860 () Bool)

(declare-fun res!965832 () Bool)

(assert (=> b!1431860 (=> (not res!965832) (not e!808372))))

(assert (=> b!1431860 (= res!965832 (validKeyInArray!0 (select (arr!47032 a!2831) j!81)))))

(declare-fun b!1431861 () Bool)

(declare-fun res!965828 () Bool)

(assert (=> b!1431861 (=> (not res!965828) (not e!808372))))

(declare-datatypes ((List!33722 0))(
  ( (Nil!33719) (Cons!33718 (h!35041 (_ BitVec 64)) (t!48423 List!33722)) )
))
(declare-fun arrayNoDuplicates!0 (array!97458 (_ BitVec 32) List!33722) Bool)

(assert (=> b!1431861 (= res!965828 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33719))))

(declare-fun b!1431862 () Bool)

(declare-fun e!808373 () Bool)

(assert (=> b!1431862 (= e!808368 (not e!808373))))

(declare-fun res!965835 () Bool)

(assert (=> b!1431862 (=> res!965835 e!808373)))

(assert (=> b!1431862 (= res!965835 (or (= (select (arr!47032 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47032 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47032 a!2831) index!585) (select (arr!47032 a!2831) j!81)) (= (select (store (arr!47032 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1431862 e!808370))

(declare-fun res!965839 () Bool)

(assert (=> b!1431862 (=> (not res!965839) (not e!808370))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97458 (_ BitVec 32)) Bool)

(assert (=> b!1431862 (= res!965839 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48360 0))(
  ( (Unit!48361) )
))
(declare-fun lt!630322 () Unit!48360)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97458 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48360)

(assert (=> b!1431862 (= lt!630322 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1431863 () Bool)

(declare-fun res!965841 () Bool)

(assert (=> b!1431863 (=> (not res!965841) (not e!808368))))

(declare-fun lt!630319 () SeekEntryResult!11333)

(assert (=> b!1431863 (= res!965841 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47032 a!2831) j!81) a!2831 mask!2608) lt!630319))))

(declare-fun b!1431864 () Bool)

(assert (=> b!1431864 (= e!808373 true)))

(declare-fun lt!630317 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431864 (= lt!630317 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun res!965836 () Bool)

(assert (=> start!123568 (=> (not res!965836) (not e!808372))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123568 (= res!965836 (validMask!0 mask!2608))))

(assert (=> start!123568 e!808372))

(assert (=> start!123568 true))

(declare-fun array_inv!35977 (array!97458) Bool)

(assert (=> start!123568 (array_inv!35977 a!2831)))

(declare-fun b!1431856 () Bool)

(declare-fun e!808371 () Bool)

(assert (=> b!1431856 (= e!808372 e!808371)))

(declare-fun res!965829 () Bool)

(assert (=> b!1431856 (=> (not res!965829) (not e!808371))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431856 (= res!965829 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47032 a!2831) j!81) mask!2608) (select (arr!47032 a!2831) j!81) a!2831 mask!2608) lt!630319))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1431856 (= lt!630319 (Intermediate!11333 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1431865 () Bool)

(declare-fun res!965840 () Bool)

(assert (=> b!1431865 (=> (not res!965840) (not e!808372))))

(assert (=> b!1431865 (= res!965840 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47583 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47583 a!2831))))))

(declare-fun b!1431866 () Bool)

(declare-fun res!965837 () Bool)

(assert (=> b!1431866 (=> (not res!965837) (not e!808368))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1431866 (= res!965837 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1431867 () Bool)

(assert (=> b!1431867 (= e!808371 e!808368)))

(declare-fun res!965831 () Bool)

(assert (=> b!1431867 (=> (not res!965831) (not e!808368))))

(assert (=> b!1431867 (= res!965831 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630320 mask!2608) lt!630320 lt!630321 mask!2608) lt!630318))))

(assert (=> b!1431867 (= lt!630318 (Intermediate!11333 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1431867 (= lt!630320 (select (store (arr!47032 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1431867 (= lt!630321 (array!97459 (store (arr!47032 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47583 a!2831)))))

(declare-fun b!1431868 () Bool)

(declare-fun res!965838 () Bool)

(assert (=> b!1431868 (=> (not res!965838) (not e!808372))))

(assert (=> b!1431868 (= res!965838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!123568 res!965836) b!1431859))

(assert (= (and b!1431859 res!965834) b!1431857))

(assert (= (and b!1431857 res!965833) b!1431860))

(assert (= (and b!1431860 res!965832) b!1431868))

(assert (= (and b!1431868 res!965838) b!1431861))

(assert (= (and b!1431861 res!965828) b!1431865))

(assert (= (and b!1431865 res!965840) b!1431856))

(assert (= (and b!1431856 res!965829) b!1431867))

(assert (= (and b!1431867 res!965831) b!1431863))

(assert (= (and b!1431863 res!965841) b!1431858))

(assert (= (and b!1431858 res!965830) b!1431866))

(assert (= (and b!1431866 res!965837) b!1431862))

(assert (= (and b!1431862 res!965839) b!1431855))

(assert (= (and b!1431862 (not res!965835)) b!1431864))

(declare-fun m!1321697 () Bool)

(assert (=> b!1431856 m!1321697))

(assert (=> b!1431856 m!1321697))

(declare-fun m!1321699 () Bool)

(assert (=> b!1431856 m!1321699))

(assert (=> b!1431856 m!1321699))

(assert (=> b!1431856 m!1321697))

(declare-fun m!1321701 () Bool)

(assert (=> b!1431856 m!1321701))

(declare-fun m!1321703 () Bool)

(assert (=> b!1431867 m!1321703))

(assert (=> b!1431867 m!1321703))

(declare-fun m!1321705 () Bool)

(assert (=> b!1431867 m!1321705))

(declare-fun m!1321707 () Bool)

(assert (=> b!1431867 m!1321707))

(declare-fun m!1321709 () Bool)

(assert (=> b!1431867 m!1321709))

(declare-fun m!1321711 () Bool)

(assert (=> b!1431858 m!1321711))

(declare-fun m!1321713 () Bool)

(assert (=> b!1431857 m!1321713))

(assert (=> b!1431857 m!1321713))

(declare-fun m!1321715 () Bool)

(assert (=> b!1431857 m!1321715))

(assert (=> b!1431863 m!1321697))

(assert (=> b!1431863 m!1321697))

(declare-fun m!1321717 () Bool)

(assert (=> b!1431863 m!1321717))

(declare-fun m!1321719 () Bool)

(assert (=> b!1431864 m!1321719))

(declare-fun m!1321721 () Bool)

(assert (=> b!1431861 m!1321721))

(assert (=> b!1431855 m!1321697))

(assert (=> b!1431855 m!1321697))

(declare-fun m!1321723 () Bool)

(assert (=> b!1431855 m!1321723))

(declare-fun m!1321725 () Bool)

(assert (=> b!1431868 m!1321725))

(assert (=> b!1431860 m!1321697))

(assert (=> b!1431860 m!1321697))

(declare-fun m!1321727 () Bool)

(assert (=> b!1431860 m!1321727))

(declare-fun m!1321729 () Bool)

(assert (=> start!123568 m!1321729))

(declare-fun m!1321731 () Bool)

(assert (=> start!123568 m!1321731))

(assert (=> b!1431862 m!1321707))

(declare-fun m!1321733 () Bool)

(assert (=> b!1431862 m!1321733))

(declare-fun m!1321735 () Bool)

(assert (=> b!1431862 m!1321735))

(declare-fun m!1321737 () Bool)

(assert (=> b!1431862 m!1321737))

(assert (=> b!1431862 m!1321697))

(declare-fun m!1321739 () Bool)

(assert (=> b!1431862 m!1321739))

(push 1)

