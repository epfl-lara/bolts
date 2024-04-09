; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122738 () Bool)

(assert start!122738)

(declare-fun b!1421417 () Bool)

(declare-fun res!956963 () Bool)

(declare-fun e!803738 () Bool)

(assert (=> b!1421417 (=> (not res!956963) (not e!803738))))

(declare-datatypes ((array!97021 0))(
  ( (array!97022 (arr!46824 (Array (_ BitVec 32) (_ BitVec 64))) (size!47375 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97021)

(declare-datatypes ((List!33514 0))(
  ( (Nil!33511) (Cons!33510 (h!34812 (_ BitVec 64)) (t!48215 List!33514)) )
))
(declare-fun arrayNoDuplicates!0 (array!97021 (_ BitVec 32) List!33514) Bool)

(assert (=> b!1421417 (= res!956963 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33511))))

(declare-fun b!1421418 () Bool)

(declare-fun res!956964 () Bool)

(declare-fun e!803740 () Bool)

(assert (=> b!1421418 (=> (not res!956964) (not e!803740))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421418 (= res!956964 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421419 () Bool)

(declare-fun res!956969 () Bool)

(assert (=> b!1421419 (=> (not res!956969) (not e!803738))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1421419 (= res!956969 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47375 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47375 a!2831))))))

(declare-fun b!1421420 () Bool)

(declare-fun e!803741 () Bool)

(assert (=> b!1421420 (= e!803738 e!803741)))

(declare-fun res!956968 () Bool)

(assert (=> b!1421420 (=> (not res!956968) (not e!803741))))

(declare-datatypes ((SeekEntryResult!11131 0))(
  ( (MissingZero!11131 (index!46915 (_ BitVec 32))) (Found!11131 (index!46916 (_ BitVec 32))) (Intermediate!11131 (undefined!11943 Bool) (index!46917 (_ BitVec 32)) (x!128568 (_ BitVec 32))) (Undefined!11131) (MissingVacant!11131 (index!46918 (_ BitVec 32))) )
))
(declare-fun lt!626233 () SeekEntryResult!11131)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97021 (_ BitVec 32)) SeekEntryResult!11131)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421420 (= res!956968 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46824 a!2831) j!81) mask!2608) (select (arr!46824 a!2831) j!81) a!2831 mask!2608) lt!626233))))

(assert (=> b!1421420 (= lt!626233 (Intermediate!11131 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421421 () Bool)

(declare-fun res!956967 () Bool)

(assert (=> b!1421421 (=> (not res!956967) (not e!803740))))

(declare-fun lt!626232 () (_ BitVec 64))

(declare-fun lt!626230 () SeekEntryResult!11131)

(declare-fun lt!626229 () array!97021)

(assert (=> b!1421421 (= res!956967 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626232 lt!626229 mask!2608) lt!626230))))

(declare-fun res!956961 () Bool)

(assert (=> start!122738 (=> (not res!956961) (not e!803738))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122738 (= res!956961 (validMask!0 mask!2608))))

(assert (=> start!122738 e!803738))

(assert (=> start!122738 true))

(declare-fun array_inv!35769 (array!97021) Bool)

(assert (=> start!122738 (array_inv!35769 a!2831)))

(declare-fun b!1421422 () Bool)

(declare-fun res!956970 () Bool)

(assert (=> b!1421422 (=> (not res!956970) (not e!803738))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421422 (= res!956970 (validKeyInArray!0 (select (arr!46824 a!2831) i!982)))))

(declare-fun b!1421423 () Bool)

(declare-fun res!956959 () Bool)

(assert (=> b!1421423 (=> (not res!956959) (not e!803738))))

(assert (=> b!1421423 (= res!956959 (and (= (size!47375 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47375 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47375 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421424 () Bool)

(assert (=> b!1421424 (= e!803741 e!803740)))

(declare-fun res!956965 () Bool)

(assert (=> b!1421424 (=> (not res!956965) (not e!803740))))

(assert (=> b!1421424 (= res!956965 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626232 mask!2608) lt!626232 lt!626229 mask!2608) lt!626230))))

(assert (=> b!1421424 (= lt!626230 (Intermediate!11131 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1421424 (= lt!626232 (select (store (arr!46824 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421424 (= lt!626229 (array!97022 (store (arr!46824 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47375 a!2831)))))

(declare-fun b!1421425 () Bool)

(declare-fun res!956960 () Bool)

(assert (=> b!1421425 (=> (not res!956960) (not e!803738))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97021 (_ BitVec 32)) Bool)

(assert (=> b!1421425 (= res!956960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421426 () Bool)

(declare-fun res!956966 () Bool)

(assert (=> b!1421426 (=> (not res!956966) (not e!803738))))

(assert (=> b!1421426 (= res!956966 (validKeyInArray!0 (select (arr!46824 a!2831) j!81)))))

(declare-fun b!1421427 () Bool)

(declare-fun res!956962 () Bool)

(assert (=> b!1421427 (=> (not res!956962) (not e!803740))))

(assert (=> b!1421427 (= res!956962 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46824 a!2831) j!81) a!2831 mask!2608) lt!626233))))

(declare-fun b!1421428 () Bool)

(assert (=> b!1421428 (= e!803740 (not true))))

(assert (=> b!1421428 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-datatypes ((Unit!48046 0))(
  ( (Unit!48047) )
))
(declare-fun lt!626231 () Unit!48046)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97021 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48046)

(assert (=> b!1421428 (= lt!626231 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (= (and start!122738 res!956961) b!1421423))

(assert (= (and b!1421423 res!956959) b!1421422))

(assert (= (and b!1421422 res!956970) b!1421426))

(assert (= (and b!1421426 res!956966) b!1421425))

(assert (= (and b!1421425 res!956960) b!1421417))

(assert (= (and b!1421417 res!956963) b!1421419))

(assert (= (and b!1421419 res!956969) b!1421420))

(assert (= (and b!1421420 res!956968) b!1421424))

(assert (= (and b!1421424 res!956965) b!1421427))

(assert (= (and b!1421427 res!956962) b!1421421))

(assert (= (and b!1421421 res!956967) b!1421418))

(assert (= (and b!1421418 res!956964) b!1421428))

(declare-fun m!1312019 () Bool)

(assert (=> b!1421417 m!1312019))

(declare-fun m!1312021 () Bool)

(assert (=> b!1421425 m!1312021))

(declare-fun m!1312023 () Bool)

(assert (=> b!1421424 m!1312023))

(assert (=> b!1421424 m!1312023))

(declare-fun m!1312025 () Bool)

(assert (=> b!1421424 m!1312025))

(declare-fun m!1312027 () Bool)

(assert (=> b!1421424 m!1312027))

(declare-fun m!1312029 () Bool)

(assert (=> b!1421424 m!1312029))

(declare-fun m!1312031 () Bool)

(assert (=> b!1421428 m!1312031))

(declare-fun m!1312033 () Bool)

(assert (=> b!1421428 m!1312033))

(declare-fun m!1312035 () Bool)

(assert (=> b!1421422 m!1312035))

(assert (=> b!1421422 m!1312035))

(declare-fun m!1312037 () Bool)

(assert (=> b!1421422 m!1312037))

(declare-fun m!1312039 () Bool)

(assert (=> b!1421421 m!1312039))

(declare-fun m!1312041 () Bool)

(assert (=> b!1421426 m!1312041))

(assert (=> b!1421426 m!1312041))

(declare-fun m!1312043 () Bool)

(assert (=> b!1421426 m!1312043))

(assert (=> b!1421427 m!1312041))

(assert (=> b!1421427 m!1312041))

(declare-fun m!1312045 () Bool)

(assert (=> b!1421427 m!1312045))

(assert (=> b!1421420 m!1312041))

(assert (=> b!1421420 m!1312041))

(declare-fun m!1312047 () Bool)

(assert (=> b!1421420 m!1312047))

(assert (=> b!1421420 m!1312047))

(assert (=> b!1421420 m!1312041))

(declare-fun m!1312049 () Bool)

(assert (=> b!1421420 m!1312049))

(declare-fun m!1312051 () Bool)

(assert (=> start!122738 m!1312051))

(declare-fun m!1312053 () Bool)

(assert (=> start!122738 m!1312053))

(push 1)

(assert (not b!1421425))

