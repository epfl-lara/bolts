; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122776 () Bool)

(assert start!122776)

(declare-fun b!1422217 () Bool)

(declare-fun res!957774 () Bool)

(declare-fun e!804068 () Bool)

(assert (=> b!1422217 (=> (not res!957774) (not e!804068))))

(declare-datatypes ((array!97059 0))(
  ( (array!97060 (arr!46843 (Array (_ BitVec 32) (_ BitVec 64))) (size!47394 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97059)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422217 (= res!957774 (validKeyInArray!0 (select (arr!46843 a!2831) j!81)))))

(declare-fun b!1422218 () Bool)

(declare-fun e!804067 () Bool)

(assert (=> b!1422218 (= e!804067 true)))

(declare-fun lt!626560 () (_ BitVec 64))

(declare-fun lt!626559 () array!97059)

(declare-datatypes ((SeekEntryResult!11150 0))(
  ( (MissingZero!11150 (index!46991 (_ BitVec 32))) (Found!11150 (index!46992 (_ BitVec 32))) (Intermediate!11150 (undefined!11962 Bool) (index!46993 (_ BitVec 32)) (x!128643 (_ BitVec 32))) (Undefined!11150) (MissingVacant!11150 (index!46994 (_ BitVec 32))) )
))
(declare-fun lt!626558 () SeekEntryResult!11150)

(declare-fun lt!626555 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97059 (_ BitVec 32)) SeekEntryResult!11150)

(assert (=> b!1422218 (= lt!626558 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626555 lt!626560 lt!626559 mask!2608))))

(declare-fun b!1422219 () Bool)

(declare-fun e!804066 () Bool)

(declare-fun e!804064 () Bool)

(assert (=> b!1422219 (= e!804066 (not e!804064))))

(declare-fun res!957764 () Bool)

(assert (=> b!1422219 (=> res!957764 e!804064)))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422219 (= res!957764 (or (= (select (arr!46843 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46843 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46843 a!2831) index!585) (select (arr!46843 a!2831) j!81)) (= (select (store (arr!46843 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804062 () Bool)

(assert (=> b!1422219 e!804062))

(declare-fun res!957771 () Bool)

(assert (=> b!1422219 (=> (not res!957771) (not e!804062))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97059 (_ BitVec 32)) Bool)

(assert (=> b!1422219 (= res!957771 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48084 0))(
  ( (Unit!48085) )
))
(declare-fun lt!626554 () Unit!48084)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97059 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48084)

(assert (=> b!1422219 (= lt!626554 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422221 () Bool)

(declare-fun res!957763 () Bool)

(assert (=> b!1422221 (=> (not res!957763) (not e!804066))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422221 (= res!957763 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1422222 () Bool)

(declare-fun res!957761 () Bool)

(assert (=> b!1422222 (=> (not res!957761) (not e!804068))))

(assert (=> b!1422222 (= res!957761 (and (= (size!47394 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47394 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47394 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422223 () Bool)

(declare-fun e!804065 () Bool)

(assert (=> b!1422223 (= e!804065 e!804066)))

(declare-fun res!957772 () Bool)

(assert (=> b!1422223 (=> (not res!957772) (not e!804066))))

(declare-fun lt!626557 () SeekEntryResult!11150)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422223 (= res!957772 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626560 mask!2608) lt!626560 lt!626559 mask!2608) lt!626557))))

(assert (=> b!1422223 (= lt!626557 (Intermediate!11150 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1422223 (= lt!626560 (select (store (arr!46843 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422223 (= lt!626559 (array!97060 (store (arr!46843 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47394 a!2831)))))

(declare-fun b!1422224 () Bool)

(declare-fun res!957768 () Bool)

(assert (=> b!1422224 (=> (not res!957768) (not e!804068))))

(assert (=> b!1422224 (= res!957768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422225 () Bool)

(assert (=> b!1422225 (= e!804068 e!804065)))

(declare-fun res!957770 () Bool)

(assert (=> b!1422225 (=> (not res!957770) (not e!804065))))

(declare-fun lt!626556 () SeekEntryResult!11150)

(assert (=> b!1422225 (= res!957770 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46843 a!2831) j!81) mask!2608) (select (arr!46843 a!2831) j!81) a!2831 mask!2608) lt!626556))))

(assert (=> b!1422225 (= lt!626556 (Intermediate!11150 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1422220 () Bool)

(declare-fun res!957759 () Bool)

(assert (=> b!1422220 (=> (not res!957759) (not e!804068))))

(assert (=> b!1422220 (= res!957759 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47394 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47394 a!2831))))))

(declare-fun res!957762 () Bool)

(assert (=> start!122776 (=> (not res!957762) (not e!804068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122776 (= res!957762 (validMask!0 mask!2608))))

(assert (=> start!122776 e!804068))

(assert (=> start!122776 true))

(declare-fun array_inv!35788 (array!97059) Bool)

(assert (=> start!122776 (array_inv!35788 a!2831)))

(declare-fun b!1422226 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97059 (_ BitVec 32)) SeekEntryResult!11150)

(assert (=> b!1422226 (= e!804062 (= (seekEntryOrOpen!0 (select (arr!46843 a!2831) j!81) a!2831 mask!2608) (Found!11150 j!81)))))

(declare-fun b!1422227 () Bool)

(declare-fun res!957760 () Bool)

(assert (=> b!1422227 (=> res!957760 e!804067)))

(assert (=> b!1422227 (= res!957760 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626555 (select (arr!46843 a!2831) j!81) a!2831 mask!2608) lt!626556)))))

(declare-fun b!1422228 () Bool)

(declare-fun res!957766 () Bool)

(assert (=> b!1422228 (=> (not res!957766) (not e!804068))))

(assert (=> b!1422228 (= res!957766 (validKeyInArray!0 (select (arr!46843 a!2831) i!982)))))

(declare-fun b!1422229 () Bool)

(declare-fun res!957767 () Bool)

(assert (=> b!1422229 (=> (not res!957767) (not e!804066))))

(assert (=> b!1422229 (= res!957767 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626560 lt!626559 mask!2608) lt!626557))))

(declare-fun b!1422230 () Bool)

(declare-fun res!957765 () Bool)

(assert (=> b!1422230 (=> (not res!957765) (not e!804068))))

(declare-datatypes ((List!33533 0))(
  ( (Nil!33530) (Cons!33529 (h!34831 (_ BitVec 64)) (t!48234 List!33533)) )
))
(declare-fun arrayNoDuplicates!0 (array!97059 (_ BitVec 32) List!33533) Bool)

(assert (=> b!1422230 (= res!957765 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33530))))

(declare-fun b!1422231 () Bool)

(assert (=> b!1422231 (= e!804064 e!804067)))

(declare-fun res!957773 () Bool)

(assert (=> b!1422231 (=> res!957773 e!804067)))

(assert (=> b!1422231 (= res!957773 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626555 #b00000000000000000000000000000000) (bvsge lt!626555 (size!47394 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422231 (= lt!626555 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1422232 () Bool)

(declare-fun res!957769 () Bool)

(assert (=> b!1422232 (=> (not res!957769) (not e!804066))))

(assert (=> b!1422232 (= res!957769 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46843 a!2831) j!81) a!2831 mask!2608) lt!626556))))

(assert (= (and start!122776 res!957762) b!1422222))

(assert (= (and b!1422222 res!957761) b!1422228))

(assert (= (and b!1422228 res!957766) b!1422217))

(assert (= (and b!1422217 res!957774) b!1422224))

(assert (= (and b!1422224 res!957768) b!1422230))

(assert (= (and b!1422230 res!957765) b!1422220))

(assert (= (and b!1422220 res!957759) b!1422225))

(assert (= (and b!1422225 res!957770) b!1422223))

(assert (= (and b!1422223 res!957772) b!1422232))

(assert (= (and b!1422232 res!957769) b!1422229))

(assert (= (and b!1422229 res!957767) b!1422221))

(assert (= (and b!1422221 res!957763) b!1422219))

(assert (= (and b!1422219 res!957771) b!1422226))

(assert (= (and b!1422219 (not res!957764)) b!1422231))

(assert (= (and b!1422231 (not res!957773)) b!1422227))

(assert (= (and b!1422227 (not res!957760)) b!1422218))

(declare-fun m!1312823 () Bool)

(assert (=> b!1422226 m!1312823))

(assert (=> b!1422226 m!1312823))

(declare-fun m!1312825 () Bool)

(assert (=> b!1422226 m!1312825))

(assert (=> b!1422227 m!1312823))

(assert (=> b!1422227 m!1312823))

(declare-fun m!1312827 () Bool)

(assert (=> b!1422227 m!1312827))

(declare-fun m!1312829 () Bool)

(assert (=> b!1422223 m!1312829))

(assert (=> b!1422223 m!1312829))

(declare-fun m!1312831 () Bool)

(assert (=> b!1422223 m!1312831))

(declare-fun m!1312833 () Bool)

(assert (=> b!1422223 m!1312833))

(declare-fun m!1312835 () Bool)

(assert (=> b!1422223 m!1312835))

(declare-fun m!1312837 () Bool)

(assert (=> b!1422231 m!1312837))

(assert (=> b!1422225 m!1312823))

(assert (=> b!1422225 m!1312823))

(declare-fun m!1312839 () Bool)

(assert (=> b!1422225 m!1312839))

(assert (=> b!1422225 m!1312839))

(assert (=> b!1422225 m!1312823))

(declare-fun m!1312841 () Bool)

(assert (=> b!1422225 m!1312841))

(declare-fun m!1312843 () Bool)

(assert (=> b!1422230 m!1312843))

(declare-fun m!1312845 () Bool)

(assert (=> b!1422224 m!1312845))

(declare-fun m!1312847 () Bool)

(assert (=> start!122776 m!1312847))

(declare-fun m!1312849 () Bool)

(assert (=> start!122776 m!1312849))

(declare-fun m!1312851 () Bool)

(assert (=> b!1422228 m!1312851))

(assert (=> b!1422228 m!1312851))

(declare-fun m!1312853 () Bool)

(assert (=> b!1422228 m!1312853))

(declare-fun m!1312855 () Bool)

(assert (=> b!1422218 m!1312855))

(assert (=> b!1422219 m!1312833))

(declare-fun m!1312857 () Bool)

(assert (=> b!1422219 m!1312857))

(declare-fun m!1312859 () Bool)

(assert (=> b!1422219 m!1312859))

(declare-fun m!1312861 () Bool)

(assert (=> b!1422219 m!1312861))

(assert (=> b!1422219 m!1312823))

(declare-fun m!1312863 () Bool)

(assert (=> b!1422219 m!1312863))

(assert (=> b!1422217 m!1312823))

(assert (=> b!1422217 m!1312823))

(declare-fun m!1312865 () Bool)

(assert (=> b!1422217 m!1312865))

(declare-fun m!1312867 () Bool)

(assert (=> b!1422229 m!1312867))

(assert (=> b!1422232 m!1312823))

(assert (=> b!1422232 m!1312823))

(declare-fun m!1312869 () Bool)

(assert (=> b!1422232 m!1312869))

(push 1)

