; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122734 () Bool)

(assert start!122734)

(declare-fun b!1421345 () Bool)

(declare-fun res!956887 () Bool)

(declare-fun e!803715 () Bool)

(assert (=> b!1421345 (=> (not res!956887) (not e!803715))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1421345 (= res!956887 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun res!956889 () Bool)

(declare-fun e!803714 () Bool)

(assert (=> start!122734 (=> (not res!956889) (not e!803714))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122734 (= res!956889 (validMask!0 mask!2608))))

(assert (=> start!122734 e!803714))

(assert (=> start!122734 true))

(declare-datatypes ((array!97017 0))(
  ( (array!97018 (arr!46822 (Array (_ BitVec 32) (_ BitVec 64))) (size!47373 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97017)

(declare-fun array_inv!35767 (array!97017) Bool)

(assert (=> start!122734 (array_inv!35767 a!2831)))

(declare-fun b!1421346 () Bool)

(declare-fun e!803716 () Bool)

(assert (=> b!1421346 (= e!803716 e!803715)))

(declare-fun res!956895 () Bool)

(assert (=> b!1421346 (=> (not res!956895) (not e!803715))))

(declare-fun lt!626202 () array!97017)

(declare-fun lt!626201 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11129 0))(
  ( (MissingZero!11129 (index!46907 (_ BitVec 32))) (Found!11129 (index!46908 (_ BitVec 32))) (Intermediate!11129 (undefined!11941 Bool) (index!46909 (_ BitVec 32)) (x!128566 (_ BitVec 32))) (Undefined!11129) (MissingVacant!11129 (index!46910 (_ BitVec 32))) )
))
(declare-fun lt!626200 () SeekEntryResult!11129)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97017 (_ BitVec 32)) SeekEntryResult!11129)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421346 (= res!956895 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626201 mask!2608) lt!626201 lt!626202 mask!2608) lt!626200))))

(assert (=> b!1421346 (= lt!626200 (Intermediate!11129 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421346 (= lt!626201 (select (store (arr!46822 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421346 (= lt!626202 (array!97018 (store (arr!46822 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47373 a!2831)))))

(declare-fun b!1421347 () Bool)

(declare-fun res!956894 () Bool)

(assert (=> b!1421347 (=> (not res!956894) (not e!803715))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1421347 (= res!956894 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626201 lt!626202 mask!2608) lt!626200))))

(declare-fun b!1421348 () Bool)

(declare-fun res!956892 () Bool)

(assert (=> b!1421348 (=> (not res!956892) (not e!803714))))

(declare-datatypes ((List!33512 0))(
  ( (Nil!33509) (Cons!33508 (h!34810 (_ BitVec 64)) (t!48213 List!33512)) )
))
(declare-fun arrayNoDuplicates!0 (array!97017 (_ BitVec 32) List!33512) Bool)

(assert (=> b!1421348 (= res!956892 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33509))))

(declare-fun b!1421349 () Bool)

(declare-fun res!956896 () Bool)

(assert (=> b!1421349 (=> (not res!956896) (not e!803714))))

(assert (=> b!1421349 (= res!956896 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47373 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47373 a!2831))))))

(declare-fun b!1421350 () Bool)

(assert (=> b!1421350 (= e!803714 e!803716)))

(declare-fun res!956893 () Bool)

(assert (=> b!1421350 (=> (not res!956893) (not e!803716))))

(declare-fun lt!626203 () SeekEntryResult!11129)

(assert (=> b!1421350 (= res!956893 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46822 a!2831) j!81) mask!2608) (select (arr!46822 a!2831) j!81) a!2831 mask!2608) lt!626203))))

(assert (=> b!1421350 (= lt!626203 (Intermediate!11129 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421351 () Bool)

(declare-fun res!956898 () Bool)

(assert (=> b!1421351 (=> (not res!956898) (not e!803714))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97017 (_ BitVec 32)) Bool)

(assert (=> b!1421351 (= res!956898 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421352 () Bool)

(assert (=> b!1421352 (= e!803715 (not true))))

(assert (=> b!1421352 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-datatypes ((Unit!48042 0))(
  ( (Unit!48043) )
))
(declare-fun lt!626199 () Unit!48042)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97017 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48042)

(assert (=> b!1421352 (= lt!626199 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421353 () Bool)

(declare-fun res!956890 () Bool)

(assert (=> b!1421353 (=> (not res!956890) (not e!803714))))

(assert (=> b!1421353 (= res!956890 (and (= (size!47373 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47373 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47373 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421354 () Bool)

(declare-fun res!956891 () Bool)

(assert (=> b!1421354 (=> (not res!956891) (not e!803714))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421354 (= res!956891 (validKeyInArray!0 (select (arr!46822 a!2831) j!81)))))

(declare-fun b!1421355 () Bool)

(declare-fun res!956897 () Bool)

(assert (=> b!1421355 (=> (not res!956897) (not e!803715))))

(assert (=> b!1421355 (= res!956897 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46822 a!2831) j!81) a!2831 mask!2608) lt!626203))))

(declare-fun b!1421356 () Bool)

(declare-fun res!956888 () Bool)

(assert (=> b!1421356 (=> (not res!956888) (not e!803714))))

(assert (=> b!1421356 (= res!956888 (validKeyInArray!0 (select (arr!46822 a!2831) i!982)))))

(assert (= (and start!122734 res!956889) b!1421353))

(assert (= (and b!1421353 res!956890) b!1421356))

(assert (= (and b!1421356 res!956888) b!1421354))

(assert (= (and b!1421354 res!956891) b!1421351))

(assert (= (and b!1421351 res!956898) b!1421348))

(assert (= (and b!1421348 res!956892) b!1421349))

(assert (= (and b!1421349 res!956896) b!1421350))

(assert (= (and b!1421350 res!956893) b!1421346))

(assert (= (and b!1421346 res!956895) b!1421355))

(assert (= (and b!1421355 res!956897) b!1421347))

(assert (= (and b!1421347 res!956894) b!1421345))

(assert (= (and b!1421345 res!956887) b!1421352))

(declare-fun m!1311947 () Bool)

(assert (=> b!1421350 m!1311947))

(assert (=> b!1421350 m!1311947))

(declare-fun m!1311949 () Bool)

(assert (=> b!1421350 m!1311949))

(assert (=> b!1421350 m!1311949))

(assert (=> b!1421350 m!1311947))

(declare-fun m!1311951 () Bool)

(assert (=> b!1421350 m!1311951))

(declare-fun m!1311953 () Bool)

(assert (=> b!1421352 m!1311953))

(declare-fun m!1311955 () Bool)

(assert (=> b!1421352 m!1311955))

(assert (=> b!1421355 m!1311947))

(assert (=> b!1421355 m!1311947))

(declare-fun m!1311957 () Bool)

(assert (=> b!1421355 m!1311957))

(declare-fun m!1311959 () Bool)

(assert (=> b!1421347 m!1311959))

(declare-fun m!1311961 () Bool)

(assert (=> b!1421348 m!1311961))

(assert (=> b!1421354 m!1311947))

(assert (=> b!1421354 m!1311947))

(declare-fun m!1311963 () Bool)

(assert (=> b!1421354 m!1311963))

(declare-fun m!1311965 () Bool)

(assert (=> start!122734 m!1311965))

(declare-fun m!1311967 () Bool)

(assert (=> start!122734 m!1311967))

(declare-fun m!1311969 () Bool)

(assert (=> b!1421356 m!1311969))

(assert (=> b!1421356 m!1311969))

(declare-fun m!1311971 () Bool)

(assert (=> b!1421356 m!1311971))

(declare-fun m!1311973 () Bool)

(assert (=> b!1421346 m!1311973))

(assert (=> b!1421346 m!1311973))

(declare-fun m!1311975 () Bool)

(assert (=> b!1421346 m!1311975))

(declare-fun m!1311977 () Bool)

(assert (=> b!1421346 m!1311977))

(declare-fun m!1311979 () Bool)

(assert (=> b!1421346 m!1311979))

(declare-fun m!1311981 () Bool)

(assert (=> b!1421351 m!1311981))

(push 1)

