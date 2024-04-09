; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122740 () Bool)

(assert start!122740)

(declare-fun b!1421455 () Bool)

(declare-fun res!957005 () Bool)

(declare-fun e!803755 () Bool)

(assert (=> b!1421455 (=> (not res!957005) (not e!803755))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97023 0))(
  ( (array!97024 (arr!46825 (Array (_ BitVec 32) (_ BitVec 64))) (size!47376 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97023)

(declare-datatypes ((SeekEntryResult!11132 0))(
  ( (MissingZero!11132 (index!46919 (_ BitVec 32))) (Found!11132 (index!46920 (_ BitVec 32))) (Intermediate!11132 (undefined!11944 Bool) (index!46921 (_ BitVec 32)) (x!128577 (_ BitVec 32))) (Undefined!11132) (MissingVacant!11132 (index!46922 (_ BitVec 32))) )
))
(declare-fun lt!626248 () SeekEntryResult!11132)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97023 (_ BitVec 32)) SeekEntryResult!11132)

(assert (=> b!1421455 (= res!957005 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46825 a!2831) j!81) a!2831 mask!2608) lt!626248))))

(declare-fun b!1421456 () Bool)

(declare-fun res!957009 () Bool)

(declare-fun e!803754 () Bool)

(assert (=> b!1421456 (=> (not res!957009) (not e!803754))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421456 (= res!957009 (and (= (size!47376 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47376 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47376 a!2831)) (not (= i!982 j!81))))))

(declare-fun e!803753 () Bool)

(declare-fun b!1421457 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97023 (_ BitVec 32)) SeekEntryResult!11132)

(assert (=> b!1421457 (= e!803753 (= (seekEntryOrOpen!0 (select (arr!46825 a!2831) j!81) a!2831 mask!2608) (Found!11132 j!81)))))

(declare-fun b!1421458 () Bool)

(declare-fun res!956997 () Bool)

(assert (=> b!1421458 (=> (not res!956997) (not e!803755))))

(declare-fun lt!626247 () array!97023)

(declare-fun lt!626246 () SeekEntryResult!11132)

(declare-fun lt!626244 () (_ BitVec 64))

(assert (=> b!1421458 (= res!956997 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626244 lt!626247 mask!2608) lt!626246))))

(declare-fun b!1421459 () Bool)

(declare-fun res!957003 () Bool)

(assert (=> b!1421459 (=> (not res!957003) (not e!803754))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97023 (_ BitVec 32)) Bool)

(assert (=> b!1421459 (= res!957003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421460 () Bool)

(declare-fun res!957007 () Bool)

(assert (=> b!1421460 (=> (not res!957007) (not e!803754))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421460 (= res!957007 (validKeyInArray!0 (select (arr!46825 a!2831) j!81)))))

(declare-fun b!1421461 () Bool)

(declare-fun res!957001 () Bool)

(assert (=> b!1421461 (=> (not res!957001) (not e!803754))))

(assert (=> b!1421461 (= res!957001 (validKeyInArray!0 (select (arr!46825 a!2831) i!982)))))

(declare-fun b!1421462 () Bool)

(assert (=> b!1421462 (= e!803755 (not true))))

(assert (=> b!1421462 e!803753))

(declare-fun res!957002 () Bool)

(assert (=> b!1421462 (=> (not res!957002) (not e!803753))))

(assert (=> b!1421462 (= res!957002 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48048 0))(
  ( (Unit!48049) )
))
(declare-fun lt!626245 () Unit!48048)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97023 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48048)

(assert (=> b!1421462 (= lt!626245 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun res!957004 () Bool)

(assert (=> start!122740 (=> (not res!957004) (not e!803754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122740 (= res!957004 (validMask!0 mask!2608))))

(assert (=> start!122740 e!803754))

(assert (=> start!122740 true))

(declare-fun array_inv!35770 (array!97023) Bool)

(assert (=> start!122740 (array_inv!35770 a!2831)))

(declare-fun b!1421463 () Bool)

(declare-fun e!803756 () Bool)

(assert (=> b!1421463 (= e!803754 e!803756)))

(declare-fun res!957000 () Bool)

(assert (=> b!1421463 (=> (not res!957000) (not e!803756))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421463 (= res!957000 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46825 a!2831) j!81) mask!2608) (select (arr!46825 a!2831) j!81) a!2831 mask!2608) lt!626248))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1421463 (= lt!626248 (Intermediate!11132 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421464 () Bool)

(assert (=> b!1421464 (= e!803756 e!803755)))

(declare-fun res!957006 () Bool)

(assert (=> b!1421464 (=> (not res!957006) (not e!803755))))

(assert (=> b!1421464 (= res!957006 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626244 mask!2608) lt!626244 lt!626247 mask!2608) lt!626246))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421464 (= lt!626246 (Intermediate!11132 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1421464 (= lt!626244 (select (store (arr!46825 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421464 (= lt!626247 (array!97024 (store (arr!46825 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47376 a!2831)))))

(declare-fun b!1421465 () Bool)

(declare-fun res!957008 () Bool)

(assert (=> b!1421465 (=> (not res!957008) (not e!803754))))

(assert (=> b!1421465 (= res!957008 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47376 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47376 a!2831))))))

(declare-fun b!1421466 () Bool)

(declare-fun res!956998 () Bool)

(assert (=> b!1421466 (=> (not res!956998) (not e!803755))))

(assert (=> b!1421466 (= res!956998 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421467 () Bool)

(declare-fun res!956999 () Bool)

(assert (=> b!1421467 (=> (not res!956999) (not e!803754))))

(declare-datatypes ((List!33515 0))(
  ( (Nil!33512) (Cons!33511 (h!34813 (_ BitVec 64)) (t!48216 List!33515)) )
))
(declare-fun arrayNoDuplicates!0 (array!97023 (_ BitVec 32) List!33515) Bool)

(assert (=> b!1421467 (= res!956999 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33512))))

(assert (= (and start!122740 res!957004) b!1421456))

(assert (= (and b!1421456 res!957009) b!1421461))

(assert (= (and b!1421461 res!957001) b!1421460))

(assert (= (and b!1421460 res!957007) b!1421459))

(assert (= (and b!1421459 res!957003) b!1421467))

(assert (= (and b!1421467 res!956999) b!1421465))

(assert (= (and b!1421465 res!957008) b!1421463))

(assert (= (and b!1421463 res!957000) b!1421464))

(assert (= (and b!1421464 res!957006) b!1421455))

(assert (= (and b!1421455 res!957005) b!1421458))

(assert (= (and b!1421458 res!956997) b!1421466))

(assert (= (and b!1421466 res!956998) b!1421462))

(assert (= (and b!1421462 res!957002) b!1421457))

(declare-fun m!1312055 () Bool)

(assert (=> start!122740 m!1312055))

(declare-fun m!1312057 () Bool)

(assert (=> start!122740 m!1312057))

(declare-fun m!1312059 () Bool)

(assert (=> b!1421458 m!1312059))

(declare-fun m!1312061 () Bool)

(assert (=> b!1421460 m!1312061))

(assert (=> b!1421460 m!1312061))

(declare-fun m!1312063 () Bool)

(assert (=> b!1421460 m!1312063))

(assert (=> b!1421463 m!1312061))

(assert (=> b!1421463 m!1312061))

(declare-fun m!1312065 () Bool)

(assert (=> b!1421463 m!1312065))

(assert (=> b!1421463 m!1312065))

(assert (=> b!1421463 m!1312061))

(declare-fun m!1312067 () Bool)

(assert (=> b!1421463 m!1312067))

(assert (=> b!1421457 m!1312061))

(assert (=> b!1421457 m!1312061))

(declare-fun m!1312069 () Bool)

(assert (=> b!1421457 m!1312069))

(declare-fun m!1312071 () Bool)

(assert (=> b!1421459 m!1312071))

(declare-fun m!1312073 () Bool)

(assert (=> b!1421464 m!1312073))

(assert (=> b!1421464 m!1312073))

(declare-fun m!1312075 () Bool)

(assert (=> b!1421464 m!1312075))

(declare-fun m!1312077 () Bool)

(assert (=> b!1421464 m!1312077))

(declare-fun m!1312079 () Bool)

(assert (=> b!1421464 m!1312079))

(declare-fun m!1312081 () Bool)

(assert (=> b!1421462 m!1312081))

(declare-fun m!1312083 () Bool)

(assert (=> b!1421462 m!1312083))

(declare-fun m!1312085 () Bool)

(assert (=> b!1421461 m!1312085))

(assert (=> b!1421461 m!1312085))

(declare-fun m!1312087 () Bool)

(assert (=> b!1421461 m!1312087))

(assert (=> b!1421455 m!1312061))

(assert (=> b!1421455 m!1312061))

(declare-fun m!1312089 () Bool)

(assert (=> b!1421455 m!1312089))

(declare-fun m!1312091 () Bool)

(assert (=> b!1421467 m!1312091))

(push 1)

