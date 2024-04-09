; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123572 () Bool)

(assert start!123572)

(declare-fun b!1431939 () Bool)

(declare-fun e!808408 () Bool)

(declare-fun e!808405 () Bool)

(assert (=> b!1431939 (= e!808408 e!808405)))

(declare-fun res!965914 () Bool)

(assert (=> b!1431939 (=> (not res!965914) (not e!808405))))

(declare-datatypes ((array!97462 0))(
  ( (array!97463 (arr!47034 (Array (_ BitVec 32) (_ BitVec 64))) (size!47585 (_ BitVec 32))) )
))
(declare-fun lt!630354 () array!97462)

(declare-datatypes ((SeekEntryResult!11335 0))(
  ( (MissingZero!11335 (index!47731 (_ BitVec 32))) (Found!11335 (index!47732 (_ BitVec 32))) (Intermediate!11335 (undefined!12147 Bool) (index!47733 (_ BitVec 32)) (x!129380 (_ BitVec 32))) (Undefined!11335) (MissingVacant!11335 (index!47734 (_ BitVec 32))) )
))
(declare-fun lt!630358 () SeekEntryResult!11335)

(declare-fun lt!630356 () (_ BitVec 64))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97462 (_ BitVec 32)) SeekEntryResult!11335)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431939 (= res!965914 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630356 mask!2608) lt!630356 lt!630354 mask!2608) lt!630358))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1431939 (= lt!630358 (Intermediate!11335 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun a!2831 () array!97462)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1431939 (= lt!630356 (select (store (arr!47034 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1431939 (= lt!630354 (array!97463 (store (arr!47034 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47585 a!2831)))))

(declare-fun b!1431940 () Bool)

(declare-fun res!965916 () Bool)

(declare-fun e!808407 () Bool)

(assert (=> b!1431940 (=> (not res!965916) (not e!808407))))

(declare-datatypes ((List!33724 0))(
  ( (Nil!33721) (Cons!33720 (h!35043 (_ BitVec 64)) (t!48425 List!33724)) )
))
(declare-fun arrayNoDuplicates!0 (array!97462 (_ BitVec 32) List!33724) Bool)

(assert (=> b!1431940 (= res!965916 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33721))))

(declare-fun res!965925 () Bool)

(assert (=> start!123572 (=> (not res!965925) (not e!808407))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123572 (= res!965925 (validMask!0 mask!2608))))

(assert (=> start!123572 e!808407))

(assert (=> start!123572 true))

(declare-fun array_inv!35979 (array!97462) Bool)

(assert (=> start!123572 (array_inv!35979 a!2831)))

(declare-fun b!1431941 () Bool)

(declare-fun res!965921 () Bool)

(assert (=> b!1431941 (=> (not res!965921) (not e!808405))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1431941 (= res!965921 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630356 lt!630354 mask!2608) lt!630358))))

(declare-fun b!1431942 () Bool)

(declare-fun res!965922 () Bool)

(assert (=> b!1431942 (=> (not res!965922) (not e!808407))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97462 (_ BitVec 32)) Bool)

(assert (=> b!1431942 (= res!965922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1431943 () Bool)

(declare-fun res!965920 () Bool)

(assert (=> b!1431943 (=> (not res!965920) (not e!808405))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1431943 (= res!965920 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1431944 () Bool)

(declare-fun e!808409 () Bool)

(assert (=> b!1431944 (= e!808409 true)))

(declare-fun lt!630355 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431944 (= lt!630355 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1431945 () Bool)

(declare-fun res!965912 () Bool)

(assert (=> b!1431945 (=> (not res!965912) (not e!808405))))

(declare-fun lt!630353 () SeekEntryResult!11335)

(assert (=> b!1431945 (= res!965912 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47034 a!2831) j!81) a!2831 mask!2608) lt!630353))))

(declare-fun b!1431946 () Bool)

(declare-fun res!965913 () Bool)

(assert (=> b!1431946 (=> (not res!965913) (not e!808407))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1431946 (= res!965913 (validKeyInArray!0 (select (arr!47034 a!2831) i!982)))))

(declare-fun b!1431947 () Bool)

(declare-fun res!965923 () Bool)

(assert (=> b!1431947 (=> (not res!965923) (not e!808407))))

(assert (=> b!1431947 (= res!965923 (validKeyInArray!0 (select (arr!47034 a!2831) j!81)))))

(declare-fun b!1431948 () Bool)

(assert (=> b!1431948 (= e!808405 (not e!808409))))

(declare-fun res!965918 () Bool)

(assert (=> b!1431948 (=> res!965918 e!808409)))

(assert (=> b!1431948 (= res!965918 (or (= (select (arr!47034 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47034 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47034 a!2831) index!585) (select (arr!47034 a!2831) j!81)) (= (select (store (arr!47034 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!808404 () Bool)

(assert (=> b!1431948 e!808404))

(declare-fun res!965917 () Bool)

(assert (=> b!1431948 (=> (not res!965917) (not e!808404))))

(assert (=> b!1431948 (= res!965917 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48364 0))(
  ( (Unit!48365) )
))
(declare-fun lt!630357 () Unit!48364)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97462 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48364)

(assert (=> b!1431948 (= lt!630357 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1431949 () Bool)

(declare-fun res!965915 () Bool)

(assert (=> b!1431949 (=> (not res!965915) (not e!808407))))

(assert (=> b!1431949 (= res!965915 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47585 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47585 a!2831))))))

(declare-fun b!1431950 () Bool)

(assert (=> b!1431950 (= e!808407 e!808408)))

(declare-fun res!965924 () Bool)

(assert (=> b!1431950 (=> (not res!965924) (not e!808408))))

(assert (=> b!1431950 (= res!965924 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47034 a!2831) j!81) mask!2608) (select (arr!47034 a!2831) j!81) a!2831 mask!2608) lt!630353))))

(assert (=> b!1431950 (= lt!630353 (Intermediate!11335 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1431951 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97462 (_ BitVec 32)) SeekEntryResult!11335)

(assert (=> b!1431951 (= e!808404 (= (seekEntryOrOpen!0 (select (arr!47034 a!2831) j!81) a!2831 mask!2608) (Found!11335 j!81)))))

(declare-fun b!1431952 () Bool)

(declare-fun res!965919 () Bool)

(assert (=> b!1431952 (=> (not res!965919) (not e!808407))))

(assert (=> b!1431952 (= res!965919 (and (= (size!47585 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47585 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47585 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!123572 res!965925) b!1431952))

(assert (= (and b!1431952 res!965919) b!1431946))

(assert (= (and b!1431946 res!965913) b!1431947))

(assert (= (and b!1431947 res!965923) b!1431942))

(assert (= (and b!1431942 res!965922) b!1431940))

(assert (= (and b!1431940 res!965916) b!1431949))

(assert (= (and b!1431949 res!965915) b!1431950))

(assert (= (and b!1431950 res!965924) b!1431939))

(assert (= (and b!1431939 res!965914) b!1431945))

(assert (= (and b!1431945 res!965912) b!1431941))

(assert (= (and b!1431941 res!965921) b!1431943))

(assert (= (and b!1431943 res!965920) b!1431948))

(assert (= (and b!1431948 res!965917) b!1431951))

(assert (= (and b!1431948 (not res!965918)) b!1431944))

(declare-fun m!1321785 () Bool)

(assert (=> b!1431950 m!1321785))

(assert (=> b!1431950 m!1321785))

(declare-fun m!1321787 () Bool)

(assert (=> b!1431950 m!1321787))

(assert (=> b!1431950 m!1321787))

(assert (=> b!1431950 m!1321785))

(declare-fun m!1321789 () Bool)

(assert (=> b!1431950 m!1321789))

(declare-fun m!1321791 () Bool)

(assert (=> b!1431948 m!1321791))

(declare-fun m!1321793 () Bool)

(assert (=> b!1431948 m!1321793))

(declare-fun m!1321795 () Bool)

(assert (=> b!1431948 m!1321795))

(declare-fun m!1321797 () Bool)

(assert (=> b!1431948 m!1321797))

(assert (=> b!1431948 m!1321785))

(declare-fun m!1321799 () Bool)

(assert (=> b!1431948 m!1321799))

(assert (=> b!1431951 m!1321785))

(assert (=> b!1431951 m!1321785))

(declare-fun m!1321801 () Bool)

(assert (=> b!1431951 m!1321801))

(declare-fun m!1321803 () Bool)

(assert (=> b!1431941 m!1321803))

(assert (=> b!1431947 m!1321785))

(assert (=> b!1431947 m!1321785))

(declare-fun m!1321805 () Bool)

(assert (=> b!1431947 m!1321805))

(assert (=> b!1431945 m!1321785))

(assert (=> b!1431945 m!1321785))

(declare-fun m!1321807 () Bool)

(assert (=> b!1431945 m!1321807))

(declare-fun m!1321809 () Bool)

(assert (=> b!1431940 m!1321809))

(declare-fun m!1321811 () Bool)

(assert (=> b!1431939 m!1321811))

(assert (=> b!1431939 m!1321811))

(declare-fun m!1321813 () Bool)

(assert (=> b!1431939 m!1321813))

(assert (=> b!1431939 m!1321791))

(declare-fun m!1321815 () Bool)

(assert (=> b!1431939 m!1321815))

(declare-fun m!1321817 () Bool)

(assert (=> start!123572 m!1321817))

(declare-fun m!1321819 () Bool)

(assert (=> start!123572 m!1321819))

(declare-fun m!1321821 () Bool)

(assert (=> b!1431942 m!1321821))

(declare-fun m!1321823 () Bool)

(assert (=> b!1431946 m!1321823))

(assert (=> b!1431946 m!1321823))

(declare-fun m!1321825 () Bool)

(assert (=> b!1431946 m!1321825))

(declare-fun m!1321827 () Bool)

(assert (=> b!1431944 m!1321827))

(push 1)

