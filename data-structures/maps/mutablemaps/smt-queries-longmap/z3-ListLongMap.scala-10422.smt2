; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122736 () Bool)

(assert start!122736)

(declare-fun b!1421381 () Bool)

(declare-fun res!956923 () Bool)

(declare-fun e!803726 () Bool)

(assert (=> b!1421381 (=> (not res!956923) (not e!803726))))

(declare-datatypes ((array!97019 0))(
  ( (array!97020 (arr!46823 (Array (_ BitVec 32) (_ BitVec 64))) (size!47374 (_ BitVec 32))) )
))
(declare-fun lt!626215 () array!97019)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11130 0))(
  ( (MissingZero!11130 (index!46911 (_ BitVec 32))) (Found!11130 (index!46912 (_ BitVec 32))) (Intermediate!11130 (undefined!11942 Bool) (index!46913 (_ BitVec 32)) (x!128567 (_ BitVec 32))) (Undefined!11130) (MissingVacant!11130 (index!46914 (_ BitVec 32))) )
))
(declare-fun lt!626216 () SeekEntryResult!11130)

(declare-fun lt!626217 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97019 (_ BitVec 32)) SeekEntryResult!11130)

(assert (=> b!1421381 (= res!956923 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626217 lt!626215 mask!2608) lt!626216))))

(declare-fun b!1421382 () Bool)

(declare-fun res!956930 () Bool)

(declare-fun e!803728 () Bool)

(assert (=> b!1421382 (=> (not res!956930) (not e!803728))))

(declare-fun a!2831 () array!97019)

(declare-datatypes ((List!33513 0))(
  ( (Nil!33510) (Cons!33509 (h!34811 (_ BitVec 64)) (t!48214 List!33513)) )
))
(declare-fun arrayNoDuplicates!0 (array!97019 (_ BitVec 32) List!33513) Bool)

(assert (=> b!1421382 (= res!956930 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33510))))

(declare-fun b!1421383 () Bool)

(declare-fun res!956932 () Bool)

(assert (=> b!1421383 (=> (not res!956932) (not e!803728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97019 (_ BitVec 32)) Bool)

(assert (=> b!1421383 (= res!956932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!956927 () Bool)

(assert (=> start!122736 (=> (not res!956927) (not e!803728))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122736 (= res!956927 (validMask!0 mask!2608))))

(assert (=> start!122736 e!803728))

(assert (=> start!122736 true))

(declare-fun array_inv!35768 (array!97019) Bool)

(assert (=> start!122736 (array_inv!35768 a!2831)))

(declare-fun b!1421384 () Bool)

(declare-fun res!956926 () Bool)

(assert (=> b!1421384 (=> (not res!956926) (not e!803728))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421384 (= res!956926 (validKeyInArray!0 (select (arr!46823 a!2831) i!982)))))

(declare-fun b!1421385 () Bool)

(declare-fun res!956929 () Bool)

(assert (=> b!1421385 (=> (not res!956929) (not e!803728))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1421385 (= res!956929 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47374 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47374 a!2831))))))

(declare-fun b!1421386 () Bool)

(declare-fun e!803727 () Bool)

(assert (=> b!1421386 (= e!803727 e!803726)))

(declare-fun res!956934 () Bool)

(assert (=> b!1421386 (=> (not res!956934) (not e!803726))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421386 (= res!956934 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626217 mask!2608) lt!626217 lt!626215 mask!2608) lt!626216))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421386 (= lt!626216 (Intermediate!11130 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1421386 (= lt!626217 (select (store (arr!46823 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421386 (= lt!626215 (array!97020 (store (arr!46823 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47374 a!2831)))))

(declare-fun b!1421387 () Bool)

(declare-fun res!956933 () Bool)

(assert (=> b!1421387 (=> (not res!956933) (not e!803726))))

(declare-fun lt!626218 () SeekEntryResult!11130)

(assert (=> b!1421387 (= res!956933 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46823 a!2831) j!81) a!2831 mask!2608) lt!626218))))

(declare-fun b!1421388 () Bool)

(assert (=> b!1421388 (= e!803728 e!803727)))

(declare-fun res!956924 () Bool)

(assert (=> b!1421388 (=> (not res!956924) (not e!803727))))

(assert (=> b!1421388 (= res!956924 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46823 a!2831) j!81) mask!2608) (select (arr!46823 a!2831) j!81) a!2831 mask!2608) lt!626218))))

(assert (=> b!1421388 (= lt!626218 (Intermediate!11130 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421389 () Bool)

(assert (=> b!1421389 (= e!803726 (not true))))

(assert (=> b!1421389 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-datatypes ((Unit!48044 0))(
  ( (Unit!48045) )
))
(declare-fun lt!626214 () Unit!48044)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97019 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48044)

(assert (=> b!1421389 (= lt!626214 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421390 () Bool)

(declare-fun res!956928 () Bool)

(assert (=> b!1421390 (=> (not res!956928) (not e!803726))))

(assert (=> b!1421390 (= res!956928 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421391 () Bool)

(declare-fun res!956925 () Bool)

(assert (=> b!1421391 (=> (not res!956925) (not e!803728))))

(assert (=> b!1421391 (= res!956925 (validKeyInArray!0 (select (arr!46823 a!2831) j!81)))))

(declare-fun b!1421392 () Bool)

(declare-fun res!956931 () Bool)

(assert (=> b!1421392 (=> (not res!956931) (not e!803728))))

(assert (=> b!1421392 (= res!956931 (and (= (size!47374 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47374 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47374 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122736 res!956927) b!1421392))

(assert (= (and b!1421392 res!956931) b!1421384))

(assert (= (and b!1421384 res!956926) b!1421391))

(assert (= (and b!1421391 res!956925) b!1421383))

(assert (= (and b!1421383 res!956932) b!1421382))

(assert (= (and b!1421382 res!956930) b!1421385))

(assert (= (and b!1421385 res!956929) b!1421388))

(assert (= (and b!1421388 res!956924) b!1421386))

(assert (= (and b!1421386 res!956934) b!1421387))

(assert (= (and b!1421387 res!956933) b!1421381))

(assert (= (and b!1421381 res!956923) b!1421390))

(assert (= (and b!1421390 res!956928) b!1421389))

(declare-fun m!1311983 () Bool)

(assert (=> b!1421381 m!1311983))

(declare-fun m!1311985 () Bool)

(assert (=> b!1421382 m!1311985))

(declare-fun m!1311987 () Bool)

(assert (=> b!1421388 m!1311987))

(assert (=> b!1421388 m!1311987))

(declare-fun m!1311989 () Bool)

(assert (=> b!1421388 m!1311989))

(assert (=> b!1421388 m!1311989))

(assert (=> b!1421388 m!1311987))

(declare-fun m!1311991 () Bool)

(assert (=> b!1421388 m!1311991))

(declare-fun m!1311993 () Bool)

(assert (=> b!1421389 m!1311993))

(declare-fun m!1311995 () Bool)

(assert (=> b!1421389 m!1311995))

(assert (=> b!1421387 m!1311987))

(assert (=> b!1421387 m!1311987))

(declare-fun m!1311997 () Bool)

(assert (=> b!1421387 m!1311997))

(assert (=> b!1421391 m!1311987))

(assert (=> b!1421391 m!1311987))

(declare-fun m!1311999 () Bool)

(assert (=> b!1421391 m!1311999))

(declare-fun m!1312001 () Bool)

(assert (=> b!1421384 m!1312001))

(assert (=> b!1421384 m!1312001))

(declare-fun m!1312003 () Bool)

(assert (=> b!1421384 m!1312003))

(declare-fun m!1312005 () Bool)

(assert (=> b!1421383 m!1312005))

(declare-fun m!1312007 () Bool)

(assert (=> b!1421386 m!1312007))

(assert (=> b!1421386 m!1312007))

(declare-fun m!1312009 () Bool)

(assert (=> b!1421386 m!1312009))

(declare-fun m!1312011 () Bool)

(assert (=> b!1421386 m!1312011))

(declare-fun m!1312013 () Bool)

(assert (=> b!1421386 m!1312013))

(declare-fun m!1312015 () Bool)

(assert (=> start!122736 m!1312015))

(declare-fun m!1312017 () Bool)

(assert (=> start!122736 m!1312017))

(check-sat (not b!1421383) (not b!1421382) (not b!1421391) (not start!122736) (not b!1421386) (not b!1421381) (not b!1421388) (not b!1421387) (not b!1421384) (not b!1421389))
(check-sat)
