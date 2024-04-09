; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125960 () Bool)

(assert start!125960)

(declare-fun b!1474380 () Bool)

(declare-fun res!1001697 () Bool)

(declare-fun e!827264 () Bool)

(assert (=> b!1474380 (=> (not res!1001697) (not e!827264))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((array!99154 0))(
  ( (array!99155 (arr!47856 (Array (_ BitVec 32) (_ BitVec 64))) (size!48407 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99154)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1474380 (= res!1001697 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48407 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48407 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48407 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1474381 () Bool)

(declare-fun res!1001696 () Bool)

(declare-fun e!827268 () Bool)

(assert (=> b!1474381 (=> (not res!1001696) (not e!827268))))

(declare-fun e!827267 () Bool)

(assert (=> b!1474381 (= res!1001696 e!827267)))

(declare-fun c!135863 () Bool)

(assert (=> b!1474381 (= c!135863 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1474382 () Bool)

(declare-fun res!1001698 () Bool)

(assert (=> b!1474382 (=> (not res!1001698) (not e!827268))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1474382 (= res!1001698 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1474383 () Bool)

(declare-fun res!1001695 () Bool)

(assert (=> b!1474383 (=> (not res!1001695) (not e!827264))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1474383 (= res!1001695 (and (= (size!48407 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48407 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48407 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1474384 () Bool)

(declare-fun res!1001691 () Bool)

(assert (=> b!1474384 (=> (not res!1001691) (not e!827264))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99154 (_ BitVec 32)) Bool)

(assert (=> b!1474384 (= res!1001691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1001689 () Bool)

(assert (=> start!125960 (=> (not res!1001689) (not e!827264))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125960 (= res!1001689 (validMask!0 mask!2687))))

(assert (=> start!125960 e!827264))

(assert (=> start!125960 true))

(declare-fun array_inv!36801 (array!99154) Bool)

(assert (=> start!125960 (array_inv!36801 a!2862)))

(declare-datatypes ((SeekEntryResult!12119 0))(
  ( (MissingZero!12119 (index!50867 (_ BitVec 32))) (Found!12119 (index!50868 (_ BitVec 32))) (Intermediate!12119 (undefined!12931 Bool) (index!50869 (_ BitVec 32)) (x!132446 (_ BitVec 32))) (Undefined!12119) (MissingVacant!12119 (index!50870 (_ BitVec 32))) )
))
(declare-fun lt!644199 () SeekEntryResult!12119)

(declare-fun b!1474385 () Bool)

(declare-fun lt!644198 () (_ BitVec 64))

(declare-fun lt!644197 () array!99154)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99154 (_ BitVec 32)) SeekEntryResult!12119)

(assert (=> b!1474385 (= e!827267 (= lt!644199 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644198 lt!644197 mask!2687)))))

(declare-fun b!1474386 () Bool)

(declare-fun res!1001701 () Bool)

(assert (=> b!1474386 (=> (not res!1001701) (not e!827264))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1474386 (= res!1001701 (validKeyInArray!0 (select (arr!47856 a!2862) i!1006)))))

(declare-fun b!1474387 () Bool)

(declare-fun e!827270 () Bool)

(declare-fun e!827266 () Bool)

(assert (=> b!1474387 (= e!827270 e!827266)))

(declare-fun res!1001693 () Bool)

(assert (=> b!1474387 (=> (not res!1001693) (not e!827266))))

(declare-fun lt!644200 () SeekEntryResult!12119)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1474387 (= res!1001693 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47856 a!2862) j!93) mask!2687) (select (arr!47856 a!2862) j!93) a!2862 mask!2687) lt!644200))))

(assert (=> b!1474387 (= lt!644200 (Intermediate!12119 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1474388 () Bool)

(declare-fun res!1001702 () Bool)

(assert (=> b!1474388 (=> (not res!1001702) (not e!827264))))

(assert (=> b!1474388 (= res!1001702 (validKeyInArray!0 (select (arr!47856 a!2862) j!93)))))

(declare-fun b!1474389 () Bool)

(assert (=> b!1474389 (= e!827264 e!827270)))

(declare-fun res!1001694 () Bool)

(assert (=> b!1474389 (=> (not res!1001694) (not e!827270))))

(assert (=> b!1474389 (= res!1001694 (= (select (store (arr!47856 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474389 (= lt!644197 (array!99155 (store (arr!47856 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48407 a!2862)))))

(declare-fun b!1474390 () Bool)

(declare-fun res!1001692 () Bool)

(declare-fun e!827265 () Bool)

(assert (=> b!1474390 (=> (not res!1001692) (not e!827265))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99154 (_ BitVec 32)) SeekEntryResult!12119)

(assert (=> b!1474390 (= res!1001692 (= (seekEntryOrOpen!0 (select (arr!47856 a!2862) j!93) a!2862 mask!2687) (Found!12119 j!93)))))

(declare-fun b!1474391 () Bool)

(declare-fun res!1001699 () Bool)

(assert (=> b!1474391 (=> (not res!1001699) (not e!827266))))

(assert (=> b!1474391 (= res!1001699 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47856 a!2862) j!93) a!2862 mask!2687) lt!644200))))

(declare-fun b!1474392 () Bool)

(assert (=> b!1474392 (= e!827268 (not true))))

(assert (=> b!1474392 e!827265))

(declare-fun res!1001690 () Bool)

(assert (=> b!1474392 (=> (not res!1001690) (not e!827265))))

(assert (=> b!1474392 (= res!1001690 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49526 0))(
  ( (Unit!49527) )
))
(declare-fun lt!644196 () Unit!49526)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99154 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49526)

(assert (=> b!1474392 (= lt!644196 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1474393 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99154 (_ BitVec 32)) SeekEntryResult!12119)

(assert (=> b!1474393 (= e!827267 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644198 lt!644197 mask!2687) (seekEntryOrOpen!0 lt!644198 lt!644197 mask!2687)))))

(declare-fun b!1474394 () Bool)

(assert (=> b!1474394 (= e!827266 e!827268)))

(declare-fun res!1001703 () Bool)

(assert (=> b!1474394 (=> (not res!1001703) (not e!827268))))

(assert (=> b!1474394 (= res!1001703 (= lt!644199 (Intermediate!12119 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1474394 (= lt!644199 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644198 mask!2687) lt!644198 lt!644197 mask!2687))))

(assert (=> b!1474394 (= lt!644198 (select (store (arr!47856 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1474395 () Bool)

(assert (=> b!1474395 (= e!827265 (or (= (select (arr!47856 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47856 a!2862) intermediateBeforeIndex!19) (select (arr!47856 a!2862) j!93))))))

(declare-fun b!1474396 () Bool)

(declare-fun res!1001700 () Bool)

(assert (=> b!1474396 (=> (not res!1001700) (not e!827264))))

(declare-datatypes ((List!34537 0))(
  ( (Nil!34534) (Cons!34533 (h!35892 (_ BitVec 64)) (t!49238 List!34537)) )
))
(declare-fun arrayNoDuplicates!0 (array!99154 (_ BitVec 32) List!34537) Bool)

(assert (=> b!1474396 (= res!1001700 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34534))))

(assert (= (and start!125960 res!1001689) b!1474383))

(assert (= (and b!1474383 res!1001695) b!1474386))

(assert (= (and b!1474386 res!1001701) b!1474388))

(assert (= (and b!1474388 res!1001702) b!1474384))

(assert (= (and b!1474384 res!1001691) b!1474396))

(assert (= (and b!1474396 res!1001700) b!1474380))

(assert (= (and b!1474380 res!1001697) b!1474389))

(assert (= (and b!1474389 res!1001694) b!1474387))

(assert (= (and b!1474387 res!1001693) b!1474391))

(assert (= (and b!1474391 res!1001699) b!1474394))

(assert (= (and b!1474394 res!1001703) b!1474381))

(assert (= (and b!1474381 c!135863) b!1474385))

(assert (= (and b!1474381 (not c!135863)) b!1474393))

(assert (= (and b!1474381 res!1001696) b!1474382))

(assert (= (and b!1474382 res!1001698) b!1474392))

(assert (= (and b!1474392 res!1001690) b!1474390))

(assert (= (and b!1474390 res!1001692) b!1474395))

(declare-fun m!1360883 () Bool)

(assert (=> b!1474385 m!1360883))

(declare-fun m!1360885 () Bool)

(assert (=> b!1474394 m!1360885))

(assert (=> b!1474394 m!1360885))

(declare-fun m!1360887 () Bool)

(assert (=> b!1474394 m!1360887))

(declare-fun m!1360889 () Bool)

(assert (=> b!1474394 m!1360889))

(declare-fun m!1360891 () Bool)

(assert (=> b!1474394 m!1360891))

(declare-fun m!1360893 () Bool)

(assert (=> b!1474386 m!1360893))

(assert (=> b!1474386 m!1360893))

(declare-fun m!1360895 () Bool)

(assert (=> b!1474386 m!1360895))

(declare-fun m!1360897 () Bool)

(assert (=> b!1474387 m!1360897))

(assert (=> b!1474387 m!1360897))

(declare-fun m!1360899 () Bool)

(assert (=> b!1474387 m!1360899))

(assert (=> b!1474387 m!1360899))

(assert (=> b!1474387 m!1360897))

(declare-fun m!1360901 () Bool)

(assert (=> b!1474387 m!1360901))

(declare-fun m!1360903 () Bool)

(assert (=> b!1474384 m!1360903))

(assert (=> b!1474390 m!1360897))

(assert (=> b!1474390 m!1360897))

(declare-fun m!1360905 () Bool)

(assert (=> b!1474390 m!1360905))

(declare-fun m!1360907 () Bool)

(assert (=> b!1474396 m!1360907))

(assert (=> b!1474389 m!1360889))

(declare-fun m!1360909 () Bool)

(assert (=> b!1474389 m!1360909))

(declare-fun m!1360911 () Bool)

(assert (=> b!1474393 m!1360911))

(declare-fun m!1360913 () Bool)

(assert (=> b!1474393 m!1360913))

(assert (=> b!1474388 m!1360897))

(assert (=> b!1474388 m!1360897))

(declare-fun m!1360915 () Bool)

(assert (=> b!1474388 m!1360915))

(declare-fun m!1360917 () Bool)

(assert (=> b!1474392 m!1360917))

(declare-fun m!1360919 () Bool)

(assert (=> b!1474392 m!1360919))

(declare-fun m!1360921 () Bool)

(assert (=> start!125960 m!1360921))

(declare-fun m!1360923 () Bool)

(assert (=> start!125960 m!1360923))

(declare-fun m!1360925 () Bool)

(assert (=> b!1474395 m!1360925))

(assert (=> b!1474395 m!1360897))

(assert (=> b!1474391 m!1360897))

(assert (=> b!1474391 m!1360897))

(declare-fun m!1360927 () Bool)

(assert (=> b!1474391 m!1360927))

(push 1)

