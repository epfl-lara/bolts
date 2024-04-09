; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125942 () Bool)

(assert start!125942)

(declare-fun res!1001281 () Bool)

(declare-fun e!827071 () Bool)

(assert (=> start!125942 (=> (not res!1001281) (not e!827071))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125942 (= res!1001281 (validMask!0 mask!2687))))

(assert (=> start!125942 e!827071))

(assert (=> start!125942 true))

(declare-datatypes ((array!99136 0))(
  ( (array!99137 (arr!47847 (Array (_ BitVec 32) (_ BitVec 64))) (size!48398 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99136)

(declare-fun array_inv!36792 (array!99136) Bool)

(assert (=> start!125942 (array_inv!36792 a!2862)))

(declare-fun e!827065 () Bool)

(declare-fun lt!644051 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12110 0))(
  ( (MissingZero!12110 (index!50831 (_ BitVec 32))) (Found!12110 (index!50832 (_ BitVec 32))) (Intermediate!12110 (undefined!12922 Bool) (index!50833 (_ BitVec 32)) (x!132413 (_ BitVec 32))) (Undefined!12110) (MissingVacant!12110 (index!50834 (_ BitVec 32))) )
))
(declare-fun lt!644052 () SeekEntryResult!12110)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1473911 () Bool)

(declare-fun lt!644054 () array!99136)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99136 (_ BitVec 32)) SeekEntryResult!12110)

(assert (=> b!1473911 (= e!827065 (= lt!644052 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644051 lt!644054 mask!2687)))))

(declare-fun b!1473912 () Bool)

(declare-fun e!827066 () Bool)

(assert (=> b!1473912 (= e!827071 e!827066)))

(declare-fun res!1001274 () Bool)

(assert (=> b!1473912 (=> (not res!1001274) (not e!827066))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1473912 (= res!1001274 (= (select (store (arr!47847 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473912 (= lt!644054 (array!99137 (store (arr!47847 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48398 a!2862)))))

(declare-fun b!1473913 () Bool)

(declare-fun e!827072 () Bool)

(assert (=> b!1473913 (= e!827066 e!827072)))

(declare-fun res!1001289 () Bool)

(assert (=> b!1473913 (=> (not res!1001289) (not e!827072))))

(declare-fun lt!644056 () SeekEntryResult!12110)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1473913 (= res!1001289 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47847 a!2862) j!93) mask!2687) (select (arr!47847 a!2862) j!93) a!2862 mask!2687) lt!644056))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1473913 (= lt!644056 (Intermediate!12110 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1473914 () Bool)

(declare-fun e!827067 () Bool)

(assert (=> b!1473914 (= e!827072 e!827067)))

(declare-fun res!1001278 () Bool)

(assert (=> b!1473914 (=> (not res!1001278) (not e!827067))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1473914 (= res!1001278 (= lt!644052 (Intermediate!12110 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1473914 (= lt!644052 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644051 mask!2687) lt!644051 lt!644054 mask!2687))))

(assert (=> b!1473914 (= lt!644051 (select (store (arr!47847 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1473915 () Bool)

(declare-fun res!1001276 () Bool)

(assert (=> b!1473915 (=> (not res!1001276) (not e!827071))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99136 (_ BitVec 32)) Bool)

(assert (=> b!1473915 (= res!1001276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1473916 () Bool)

(declare-fun res!1001284 () Bool)

(assert (=> b!1473916 (=> (not res!1001284) (not e!827071))))

(assert (=> b!1473916 (= res!1001284 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48398 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48398 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48398 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1473917 () Bool)

(declare-fun res!1001282 () Bool)

(assert (=> b!1473917 (=> (not res!1001282) (not e!827071))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1473917 (= res!1001282 (validKeyInArray!0 (select (arr!47847 a!2862) i!1006)))))

(declare-fun b!1473918 () Bool)

(declare-fun res!1001275 () Bool)

(assert (=> b!1473918 (=> (not res!1001275) (not e!827067))))

(assert (=> b!1473918 (= res!1001275 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1473919 () Bool)

(declare-fun res!1001280 () Bool)

(assert (=> b!1473919 (=> (not res!1001280) (not e!827071))))

(assert (=> b!1473919 (= res!1001280 (and (= (size!48398 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48398 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48398 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1473920 () Bool)

(declare-fun e!827068 () Bool)

(assert (=> b!1473920 (= e!827067 (not e!827068))))

(declare-fun res!1001283 () Bool)

(assert (=> b!1473920 (=> res!1001283 e!827068)))

(assert (=> b!1473920 (= res!1001283 (or (not (= (select (arr!47847 a!2862) index!646) (select (store (arr!47847 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47847 a!2862) index!646) (select (arr!47847 a!2862) j!93)))))))

(declare-fun e!827069 () Bool)

(assert (=> b!1473920 e!827069))

(declare-fun res!1001287 () Bool)

(assert (=> b!1473920 (=> (not res!1001287) (not e!827069))))

(assert (=> b!1473920 (= res!1001287 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49508 0))(
  ( (Unit!49509) )
))
(declare-fun lt!644055 () Unit!49508)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99136 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49508)

(assert (=> b!1473920 (= lt!644055 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1473921 () Bool)

(assert (=> b!1473921 (= e!827068 true)))

(declare-fun lt!644053 () SeekEntryResult!12110)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99136 (_ BitVec 32)) SeekEntryResult!12110)

(assert (=> b!1473921 (= lt!644053 (seekEntryOrOpen!0 lt!644051 lt!644054 mask!2687))))

(declare-fun b!1473922 () Bool)

(assert (=> b!1473922 (= e!827069 (or (= (select (arr!47847 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47847 a!2862) intermediateBeforeIndex!19) (select (arr!47847 a!2862) j!93))))))

(declare-fun b!1473923 () Bool)

(declare-fun res!1001286 () Bool)

(assert (=> b!1473923 (=> (not res!1001286) (not e!827071))))

(declare-datatypes ((List!34528 0))(
  ( (Nil!34525) (Cons!34524 (h!35883 (_ BitVec 64)) (t!49229 List!34528)) )
))
(declare-fun arrayNoDuplicates!0 (array!99136 (_ BitVec 32) List!34528) Bool)

(assert (=> b!1473923 (= res!1001286 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34525))))

(declare-fun b!1473924 () Bool)

(declare-fun res!1001277 () Bool)

(assert (=> b!1473924 (=> (not res!1001277) (not e!827072))))

(assert (=> b!1473924 (= res!1001277 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47847 a!2862) j!93) a!2862 mask!2687) lt!644056))))

(declare-fun b!1473925 () Bool)

(declare-fun res!1001288 () Bool)

(assert (=> b!1473925 (=> (not res!1001288) (not e!827071))))

(assert (=> b!1473925 (= res!1001288 (validKeyInArray!0 (select (arr!47847 a!2862) j!93)))))

(declare-fun b!1473926 () Bool)

(declare-fun res!1001285 () Bool)

(assert (=> b!1473926 (=> (not res!1001285) (not e!827069))))

(assert (=> b!1473926 (= res!1001285 (= (seekEntryOrOpen!0 (select (arr!47847 a!2862) j!93) a!2862 mask!2687) (Found!12110 j!93)))))

(declare-fun b!1473927 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99136 (_ BitVec 32)) SeekEntryResult!12110)

(assert (=> b!1473927 (= e!827065 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644051 lt!644054 mask!2687) (seekEntryOrOpen!0 lt!644051 lt!644054 mask!2687)))))

(declare-fun b!1473928 () Bool)

(declare-fun res!1001279 () Bool)

(assert (=> b!1473928 (=> (not res!1001279) (not e!827067))))

(assert (=> b!1473928 (= res!1001279 e!827065)))

(declare-fun c!135836 () Bool)

(assert (=> b!1473928 (= c!135836 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!125942 res!1001281) b!1473919))

(assert (= (and b!1473919 res!1001280) b!1473917))

(assert (= (and b!1473917 res!1001282) b!1473925))

(assert (= (and b!1473925 res!1001288) b!1473915))

(assert (= (and b!1473915 res!1001276) b!1473923))

(assert (= (and b!1473923 res!1001286) b!1473916))

(assert (= (and b!1473916 res!1001284) b!1473912))

(assert (= (and b!1473912 res!1001274) b!1473913))

(assert (= (and b!1473913 res!1001289) b!1473924))

(assert (= (and b!1473924 res!1001277) b!1473914))

(assert (= (and b!1473914 res!1001278) b!1473928))

(assert (= (and b!1473928 c!135836) b!1473911))

(assert (= (and b!1473928 (not c!135836)) b!1473927))

(assert (= (and b!1473928 res!1001279) b!1473918))

(assert (= (and b!1473918 res!1001275) b!1473920))

(assert (= (and b!1473920 res!1001287) b!1473926))

(assert (= (and b!1473926 res!1001285) b!1473922))

(assert (= (and b!1473920 (not res!1001283)) b!1473921))

(declare-fun m!1360453 () Bool)

(assert (=> b!1473927 m!1360453))

(declare-fun m!1360455 () Bool)

(assert (=> b!1473927 m!1360455))

(declare-fun m!1360457 () Bool)

(assert (=> b!1473917 m!1360457))

(assert (=> b!1473917 m!1360457))

(declare-fun m!1360459 () Bool)

(assert (=> b!1473917 m!1360459))

(assert (=> b!1473921 m!1360455))

(declare-fun m!1360461 () Bool)

(assert (=> b!1473915 m!1360461))

(declare-fun m!1360463 () Bool)

(assert (=> b!1473922 m!1360463))

(declare-fun m!1360465 () Bool)

(assert (=> b!1473922 m!1360465))

(assert (=> b!1473926 m!1360465))

(assert (=> b!1473926 m!1360465))

(declare-fun m!1360467 () Bool)

(assert (=> b!1473926 m!1360467))

(declare-fun m!1360469 () Bool)

(assert (=> b!1473911 m!1360469))

(assert (=> b!1473913 m!1360465))

(assert (=> b!1473913 m!1360465))

(declare-fun m!1360471 () Bool)

(assert (=> b!1473913 m!1360471))

(assert (=> b!1473913 m!1360471))

(assert (=> b!1473913 m!1360465))

(declare-fun m!1360473 () Bool)

(assert (=> b!1473913 m!1360473))

(assert (=> b!1473925 m!1360465))

(assert (=> b!1473925 m!1360465))

(declare-fun m!1360475 () Bool)

(assert (=> b!1473925 m!1360475))

(declare-fun m!1360477 () Bool)

(assert (=> start!125942 m!1360477))

(declare-fun m!1360479 () Bool)

(assert (=> start!125942 m!1360479))

(assert (=> b!1473924 m!1360465))

(assert (=> b!1473924 m!1360465))

(declare-fun m!1360481 () Bool)

(assert (=> b!1473924 m!1360481))

(declare-fun m!1360483 () Bool)

(assert (=> b!1473914 m!1360483))

(assert (=> b!1473914 m!1360483))

(declare-fun m!1360485 () Bool)

(assert (=> b!1473914 m!1360485))

(declare-fun m!1360487 () Bool)

(assert (=> b!1473914 m!1360487))

(declare-fun m!1360489 () Bool)

(assert (=> b!1473914 m!1360489))

(assert (=> b!1473912 m!1360487))

(declare-fun m!1360491 () Bool)

(assert (=> b!1473912 m!1360491))

(declare-fun m!1360493 () Bool)

(assert (=> b!1473920 m!1360493))

(assert (=> b!1473920 m!1360487))

(declare-fun m!1360495 () Bool)

(assert (=> b!1473920 m!1360495))

(declare-fun m!1360497 () Bool)

(assert (=> b!1473920 m!1360497))

(declare-fun m!1360499 () Bool)

(assert (=> b!1473920 m!1360499))

(assert (=> b!1473920 m!1360465))

(declare-fun m!1360501 () Bool)

(assert (=> b!1473923 m!1360501))

(push 1)

