; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122672 () Bool)

(assert start!122672)

(declare-fun b!1420357 () Bool)

(declare-fun e!803371 () Bool)

(declare-fun e!803370 () Bool)

(assert (=> b!1420357 (= e!803371 e!803370)))

(declare-fun res!955902 () Bool)

(assert (=> b!1420357 (=> (not res!955902) (not e!803370))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96955 0))(
  ( (array!96956 (arr!46791 (Array (_ BitVec 32) (_ BitVec 64))) (size!47342 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96955)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11098 0))(
  ( (MissingZero!11098 (index!46783 (_ BitVec 32))) (Found!11098 (index!46784 (_ BitVec 32))) (Intermediate!11098 (undefined!11910 Bool) (index!46785 (_ BitVec 32)) (x!128447 (_ BitVec 32))) (Undefined!11098) (MissingVacant!11098 (index!46786 (_ BitVec 32))) )
))
(declare-fun lt!625855 () SeekEntryResult!11098)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96955 (_ BitVec 32)) SeekEntryResult!11098)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420357 (= res!955902 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46791 a!2831) j!81) mask!2608) (select (arr!46791 a!2831) j!81) a!2831 mask!2608) lt!625855))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1420357 (= lt!625855 (Intermediate!11098 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1420358 () Bool)

(declare-fun res!955906 () Bool)

(assert (=> b!1420358 (=> (not res!955906) (not e!803370))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1420358 (= res!955906 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46791 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46791 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96956 (store (arr!46791 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47342 a!2831)) mask!2608) (Intermediate!11098 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1420359 () Bool)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1420359 (= e!803370 (and (bvsge mask!2608 #b00000000000000000000000000000000) (bvsge index!585 (bvadd #b00000000000000000000000000000001 mask!2608))))))

(declare-fun b!1420360 () Bool)

(declare-fun res!955905 () Bool)

(assert (=> b!1420360 (=> (not res!955905) (not e!803371))))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1420360 (= res!955905 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47342 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47342 a!2831))))))

(declare-fun b!1420361 () Bool)

(declare-fun res!955900 () Bool)

(assert (=> b!1420361 (=> (not res!955900) (not e!803371))))

(assert (=> b!1420361 (= res!955900 (and (= (size!47342 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47342 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47342 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420362 () Bool)

(declare-fun res!955907 () Bool)

(assert (=> b!1420362 (=> (not res!955907) (not e!803371))))

(declare-datatypes ((List!33481 0))(
  ( (Nil!33478) (Cons!33477 (h!34779 (_ BitVec 64)) (t!48182 List!33481)) )
))
(declare-fun arrayNoDuplicates!0 (array!96955 (_ BitVec 32) List!33481) Bool)

(assert (=> b!1420362 (= res!955907 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33478))))

(declare-fun res!955901 () Bool)

(assert (=> start!122672 (=> (not res!955901) (not e!803371))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122672 (= res!955901 (validMask!0 mask!2608))))

(assert (=> start!122672 e!803371))

(assert (=> start!122672 true))

(declare-fun array_inv!35736 (array!96955) Bool)

(assert (=> start!122672 (array_inv!35736 a!2831)))

(declare-fun b!1420363 () Bool)

(declare-fun res!955903 () Bool)

(assert (=> b!1420363 (=> (not res!955903) (not e!803371))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96955 (_ BitVec 32)) Bool)

(assert (=> b!1420363 (= res!955903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420364 () Bool)

(declare-fun res!955908 () Bool)

(assert (=> b!1420364 (=> (not res!955908) (not e!803370))))

(assert (=> b!1420364 (= res!955908 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46791 a!2831) j!81) a!2831 mask!2608) lt!625855))))

(declare-fun b!1420365 () Bool)

(declare-fun res!955904 () Bool)

(assert (=> b!1420365 (=> (not res!955904) (not e!803371))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420365 (= res!955904 (validKeyInArray!0 (select (arr!46791 a!2831) i!982)))))

(declare-fun b!1420366 () Bool)

(declare-fun res!955899 () Bool)

(assert (=> b!1420366 (=> (not res!955899) (not e!803371))))

(assert (=> b!1420366 (= res!955899 (validKeyInArray!0 (select (arr!46791 a!2831) j!81)))))

(assert (= (and start!122672 res!955901) b!1420361))

(assert (= (and b!1420361 res!955900) b!1420365))

(assert (= (and b!1420365 res!955904) b!1420366))

(assert (= (and b!1420366 res!955899) b!1420363))

(assert (= (and b!1420363 res!955903) b!1420362))

(assert (= (and b!1420362 res!955907) b!1420360))

(assert (= (and b!1420360 res!955905) b!1420357))

(assert (= (and b!1420357 res!955902) b!1420358))

(assert (= (and b!1420358 res!955906) b!1420364))

(assert (= (and b!1420364 res!955908) b!1420359))

(declare-fun m!1310927 () Bool)

(assert (=> b!1420365 m!1310927))

(assert (=> b!1420365 m!1310927))

(declare-fun m!1310929 () Bool)

(assert (=> b!1420365 m!1310929))

(declare-fun m!1310931 () Bool)

(assert (=> b!1420362 m!1310931))

(declare-fun m!1310933 () Bool)

(assert (=> b!1420363 m!1310933))

(declare-fun m!1310935 () Bool)

(assert (=> b!1420358 m!1310935))

(declare-fun m!1310937 () Bool)

(assert (=> b!1420358 m!1310937))

(assert (=> b!1420358 m!1310937))

(declare-fun m!1310939 () Bool)

(assert (=> b!1420358 m!1310939))

(assert (=> b!1420358 m!1310939))

(assert (=> b!1420358 m!1310937))

(declare-fun m!1310941 () Bool)

(assert (=> b!1420358 m!1310941))

(declare-fun m!1310943 () Bool)

(assert (=> b!1420357 m!1310943))

(assert (=> b!1420357 m!1310943))

(declare-fun m!1310945 () Bool)

(assert (=> b!1420357 m!1310945))

(assert (=> b!1420357 m!1310945))

(assert (=> b!1420357 m!1310943))

(declare-fun m!1310947 () Bool)

(assert (=> b!1420357 m!1310947))

(declare-fun m!1310949 () Bool)

(assert (=> start!122672 m!1310949))

(declare-fun m!1310951 () Bool)

(assert (=> start!122672 m!1310951))

(assert (=> b!1420364 m!1310943))

(assert (=> b!1420364 m!1310943))

(declare-fun m!1310953 () Bool)

(assert (=> b!1420364 m!1310953))

(assert (=> b!1420366 m!1310943))

(assert (=> b!1420366 m!1310943))

(declare-fun m!1310955 () Bool)

(assert (=> b!1420366 m!1310955))

(push 1)

(assert (not b!1420363))

(assert (not b!1420365))

(assert (not b!1420362))

(assert (not b!1420364))

(assert (not b!1420366))

(assert (not b!1420358))

(assert (not b!1420357))

(assert (not start!122672))

(check-sat)

(pop 1)

(push 1)

(check-sat)

