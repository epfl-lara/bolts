; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122854 () Bool)

(assert start!122854)

(declare-fun b!1424089 () Bool)

(declare-fun res!959635 () Bool)

(declare-fun e!804887 () Bool)

(assert (=> b!1424089 (=> (not res!959635) (not e!804887))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97137 0))(
  ( (array!97138 (arr!46882 (Array (_ BitVec 32) (_ BitVec 64))) (size!47433 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97137)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1424089 (= res!959635 (and (= (size!47433 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47433 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47433 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424090 () Bool)

(declare-fun res!959645 () Bool)

(declare-fun e!804886 () Bool)

(assert (=> b!1424090 (=> res!959645 e!804886)))

(declare-fun lt!627379 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11189 0))(
  ( (MissingZero!11189 (index!47147 (_ BitVec 32))) (Found!11189 (index!47148 (_ BitVec 32))) (Intermediate!11189 (undefined!12001 Bool) (index!47149 (_ BitVec 32)) (x!128786 (_ BitVec 32))) (Undefined!11189) (MissingVacant!11189 (index!47150 (_ BitVec 32))) )
))
(declare-fun lt!627374 () SeekEntryResult!11189)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97137 (_ BitVec 32)) SeekEntryResult!11189)

(assert (=> b!1424090 (= res!959645 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627379 (select (arr!46882 a!2831) j!81) a!2831 mask!2608) lt!627374)))))

(declare-fun b!1424091 () Bool)

(assert (=> b!1424091 (= e!804886 true)))

(declare-fun lt!627375 () array!97137)

(declare-fun lt!627373 () (_ BitVec 64))

(declare-fun lt!627378 () SeekEntryResult!11189)

(assert (=> b!1424091 (= lt!627378 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627379 lt!627373 lt!627375 mask!2608))))

(declare-fun b!1424092 () Bool)

(declare-fun res!959639 () Bool)

(assert (=> b!1424092 (=> (not res!959639) (not e!804887))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97137 (_ BitVec 32)) Bool)

(assert (=> b!1424092 (= res!959639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1424093 () Bool)

(declare-fun e!804884 () Bool)

(assert (=> b!1424093 (= e!804884 e!804886)))

(declare-fun res!959634 () Bool)

(assert (=> b!1424093 (=> res!959634 e!804886)))

(assert (=> b!1424093 (= res!959634 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627379 #b00000000000000000000000000000000) (bvsge lt!627379 (size!47433 a!2831))))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424093 (= lt!627379 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1424095 () Bool)

(declare-fun res!959636 () Bool)

(assert (=> b!1424095 (=> (not res!959636) (not e!804887))))

(declare-datatypes ((List!33572 0))(
  ( (Nil!33569) (Cons!33568 (h!34870 (_ BitVec 64)) (t!48273 List!33572)) )
))
(declare-fun arrayNoDuplicates!0 (array!97137 (_ BitVec 32) List!33572) Bool)

(assert (=> b!1424095 (= res!959636 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33569))))

(declare-fun b!1424096 () Bool)

(declare-fun res!959640 () Bool)

(assert (=> b!1424096 (=> (not res!959640) (not e!804887))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1424096 (= res!959640 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47433 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47433 a!2831))))))

(declare-fun b!1424097 () Bool)

(declare-fun res!959631 () Bool)

(declare-fun e!804885 () Bool)

(assert (=> b!1424097 (=> (not res!959631) (not e!804885))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1424097 (= res!959631 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1424098 () Bool)

(declare-fun res!959638 () Bool)

(assert (=> b!1424098 (=> (not res!959638) (not e!804885))))

(declare-fun lt!627376 () SeekEntryResult!11189)

(assert (=> b!1424098 (= res!959638 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627373 lt!627375 mask!2608) lt!627376))))

(declare-fun b!1424094 () Bool)

(declare-fun e!804882 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97137 (_ BitVec 32)) SeekEntryResult!11189)

(assert (=> b!1424094 (= e!804882 (= (seekEntryOrOpen!0 (select (arr!46882 a!2831) j!81) a!2831 mask!2608) (Found!11189 j!81)))))

(declare-fun res!959641 () Bool)

(assert (=> start!122854 (=> (not res!959641) (not e!804887))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122854 (= res!959641 (validMask!0 mask!2608))))

(assert (=> start!122854 e!804887))

(assert (=> start!122854 true))

(declare-fun array_inv!35827 (array!97137) Bool)

(assert (=> start!122854 (array_inv!35827 a!2831)))

(declare-fun b!1424099 () Bool)

(declare-fun res!959643 () Bool)

(assert (=> b!1424099 (=> (not res!959643) (not e!804885))))

(assert (=> b!1424099 (= res!959643 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46882 a!2831) j!81) a!2831 mask!2608) lt!627374))))

(declare-fun b!1424100 () Bool)

(declare-fun e!804881 () Bool)

(assert (=> b!1424100 (= e!804887 e!804881)))

(declare-fun res!959644 () Bool)

(assert (=> b!1424100 (=> (not res!959644) (not e!804881))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424100 (= res!959644 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46882 a!2831) j!81) mask!2608) (select (arr!46882 a!2831) j!81) a!2831 mask!2608) lt!627374))))

(assert (=> b!1424100 (= lt!627374 (Intermediate!11189 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1424101 () Bool)

(assert (=> b!1424101 (= e!804881 e!804885)))

(declare-fun res!959633 () Bool)

(assert (=> b!1424101 (=> (not res!959633) (not e!804885))))

(assert (=> b!1424101 (= res!959633 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627373 mask!2608) lt!627373 lt!627375 mask!2608) lt!627376))))

(assert (=> b!1424101 (= lt!627376 (Intermediate!11189 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1424101 (= lt!627373 (select (store (arr!46882 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1424101 (= lt!627375 (array!97138 (store (arr!46882 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47433 a!2831)))))

(declare-fun b!1424102 () Bool)

(declare-fun res!959642 () Bool)

(assert (=> b!1424102 (=> (not res!959642) (not e!804887))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424102 (= res!959642 (validKeyInArray!0 (select (arr!46882 a!2831) j!81)))))

(declare-fun b!1424103 () Bool)

(assert (=> b!1424103 (= e!804885 (not e!804884))))

(declare-fun res!959646 () Bool)

(assert (=> b!1424103 (=> res!959646 e!804884)))

(assert (=> b!1424103 (= res!959646 (or (= (select (arr!46882 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46882 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46882 a!2831) index!585) (select (arr!46882 a!2831) j!81)) (= (select (store (arr!46882 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1424103 e!804882))

(declare-fun res!959632 () Bool)

(assert (=> b!1424103 (=> (not res!959632) (not e!804882))))

(assert (=> b!1424103 (= res!959632 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48162 0))(
  ( (Unit!48163) )
))
(declare-fun lt!627377 () Unit!48162)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97137 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48162)

(assert (=> b!1424103 (= lt!627377 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1424104 () Bool)

(declare-fun res!959637 () Bool)

(assert (=> b!1424104 (=> (not res!959637) (not e!804887))))

(assert (=> b!1424104 (= res!959637 (validKeyInArray!0 (select (arr!46882 a!2831) i!982)))))

(assert (= (and start!122854 res!959641) b!1424089))

(assert (= (and b!1424089 res!959635) b!1424104))

(assert (= (and b!1424104 res!959637) b!1424102))

(assert (= (and b!1424102 res!959642) b!1424092))

(assert (= (and b!1424092 res!959639) b!1424095))

(assert (= (and b!1424095 res!959636) b!1424096))

(assert (= (and b!1424096 res!959640) b!1424100))

(assert (= (and b!1424100 res!959644) b!1424101))

(assert (= (and b!1424101 res!959633) b!1424099))

(assert (= (and b!1424099 res!959643) b!1424098))

(assert (= (and b!1424098 res!959638) b!1424097))

(assert (= (and b!1424097 res!959631) b!1424103))

(assert (= (and b!1424103 res!959632) b!1424094))

(assert (= (and b!1424103 (not res!959646)) b!1424093))

(assert (= (and b!1424093 (not res!959634)) b!1424090))

(assert (= (and b!1424090 (not res!959645)) b!1424091))

(declare-fun m!1314695 () Bool)

(assert (=> b!1424104 m!1314695))

(assert (=> b!1424104 m!1314695))

(declare-fun m!1314697 () Bool)

(assert (=> b!1424104 m!1314697))

(declare-fun m!1314699 () Bool)

(assert (=> b!1424098 m!1314699))

(declare-fun m!1314701 () Bool)

(assert (=> b!1424091 m!1314701))

(declare-fun m!1314703 () Bool)

(assert (=> b!1424101 m!1314703))

(assert (=> b!1424101 m!1314703))

(declare-fun m!1314705 () Bool)

(assert (=> b!1424101 m!1314705))

(declare-fun m!1314707 () Bool)

(assert (=> b!1424101 m!1314707))

(declare-fun m!1314709 () Bool)

(assert (=> b!1424101 m!1314709))

(declare-fun m!1314711 () Bool)

(assert (=> b!1424092 m!1314711))

(declare-fun m!1314713 () Bool)

(assert (=> b!1424093 m!1314713))

(declare-fun m!1314715 () Bool)

(assert (=> b!1424094 m!1314715))

(assert (=> b!1424094 m!1314715))

(declare-fun m!1314717 () Bool)

(assert (=> b!1424094 m!1314717))

(assert (=> b!1424090 m!1314715))

(assert (=> b!1424090 m!1314715))

(declare-fun m!1314719 () Bool)

(assert (=> b!1424090 m!1314719))

(assert (=> b!1424103 m!1314707))

(declare-fun m!1314721 () Bool)

(assert (=> b!1424103 m!1314721))

(declare-fun m!1314723 () Bool)

(assert (=> b!1424103 m!1314723))

(declare-fun m!1314725 () Bool)

(assert (=> b!1424103 m!1314725))

(assert (=> b!1424103 m!1314715))

(declare-fun m!1314727 () Bool)

(assert (=> b!1424103 m!1314727))

(assert (=> b!1424102 m!1314715))

(assert (=> b!1424102 m!1314715))

(declare-fun m!1314729 () Bool)

(assert (=> b!1424102 m!1314729))

(assert (=> b!1424100 m!1314715))

(assert (=> b!1424100 m!1314715))

(declare-fun m!1314731 () Bool)

(assert (=> b!1424100 m!1314731))

(assert (=> b!1424100 m!1314731))

(assert (=> b!1424100 m!1314715))

(declare-fun m!1314733 () Bool)

(assert (=> b!1424100 m!1314733))

(declare-fun m!1314735 () Bool)

(assert (=> b!1424095 m!1314735))

(declare-fun m!1314737 () Bool)

(assert (=> start!122854 m!1314737))

(declare-fun m!1314739 () Bool)

(assert (=> start!122854 m!1314739))

(assert (=> b!1424099 m!1314715))

(assert (=> b!1424099 m!1314715))

(declare-fun m!1314741 () Bool)

(assert (=> b!1424099 m!1314741))

(push 1)

