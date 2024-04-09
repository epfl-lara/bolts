; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124770 () Bool)

(assert start!124770)

(declare-fun b!1445934 () Bool)

(declare-fun res!977853 () Bool)

(declare-fun e!814467 () Bool)

(assert (=> b!1445934 (=> (not res!977853) (not e!814467))))

(declare-datatypes ((array!98135 0))(
  ( (array!98136 (arr!47351 (Array (_ BitVec 32) (_ BitVec 64))) (size!47902 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98135)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445934 (= res!977853 (validKeyInArray!0 (select (arr!47351 a!2862) i!1006)))))

(declare-fun res!977855 () Bool)

(assert (=> start!124770 (=> (not res!977855) (not e!814467))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124770 (= res!977855 (validMask!0 mask!2687))))

(assert (=> start!124770 e!814467))

(assert (=> start!124770 true))

(declare-fun array_inv!36296 (array!98135) Bool)

(assert (=> start!124770 (array_inv!36296 a!2862)))

(declare-fun b!1445935 () Bool)

(declare-fun e!814466 () Bool)

(declare-fun e!814464 () Bool)

(assert (=> b!1445935 (= e!814466 e!814464)))

(declare-fun res!977849 () Bool)

(assert (=> b!1445935 (=> (not res!977849) (not e!814464))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11626 0))(
  ( (MissingZero!11626 (index!48895 (_ BitVec 32))) (Found!11626 (index!48896 (_ BitVec 32))) (Intermediate!11626 (undefined!12438 Bool) (index!48897 (_ BitVec 32)) (x!130582 (_ BitVec 32))) (Undefined!11626) (MissingVacant!11626 (index!48898 (_ BitVec 32))) )
))
(declare-fun lt!634605 () SeekEntryResult!11626)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98135 (_ BitVec 32)) SeekEntryResult!11626)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445935 (= res!977849 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47351 a!2862) j!93) mask!2687) (select (arr!47351 a!2862) j!93) a!2862 mask!2687) lt!634605))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1445935 (= lt!634605 (Intermediate!11626 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1445936 () Bool)

(declare-fun res!977862 () Bool)

(assert (=> b!1445936 (=> (not res!977862) (not e!814467))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1445936 (= res!977862 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47902 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47902 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47902 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1445937 () Bool)

(assert (=> b!1445937 (= e!814467 e!814466)))

(declare-fun res!977860 () Bool)

(assert (=> b!1445937 (=> (not res!977860) (not e!814466))))

(assert (=> b!1445937 (= res!977860 (= (select (store (arr!47351 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!634607 () array!98135)

(assert (=> b!1445937 (= lt!634607 (array!98136 (store (arr!47351 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47902 a!2862)))))

(declare-fun b!1445938 () Bool)

(declare-fun res!977861 () Bool)

(assert (=> b!1445938 (=> (not res!977861) (not e!814464))))

(assert (=> b!1445938 (= res!977861 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47351 a!2862) j!93) a!2862 mask!2687) lt!634605))))

(declare-fun b!1445939 () Bool)

(declare-fun res!977850 () Bool)

(assert (=> b!1445939 (=> (not res!977850) (not e!814467))))

(declare-datatypes ((List!34032 0))(
  ( (Nil!34029) (Cons!34028 (h!35378 (_ BitVec 64)) (t!48733 List!34032)) )
))
(declare-fun arrayNoDuplicates!0 (array!98135 (_ BitVec 32) List!34032) Bool)

(assert (=> b!1445939 (= res!977850 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34029))))

(declare-fun b!1445940 () Bool)

(declare-fun res!977856 () Bool)

(declare-fun e!814468 () Bool)

(assert (=> b!1445940 (=> (not res!977856) (not e!814468))))

(assert (=> b!1445940 (= res!977856 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1445941 () Bool)

(declare-fun res!977852 () Bool)

(assert (=> b!1445941 (=> (not res!977852) (not e!814467))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98135 (_ BitVec 32)) Bool)

(assert (=> b!1445941 (= res!977852 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun e!814465 () Bool)

(declare-fun b!1445942 () Bool)

(assert (=> b!1445942 (= e!814465 (or (= (select (arr!47351 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47351 a!2862) intermediateBeforeIndex!19) (select (arr!47351 a!2862) j!93))))))

(declare-fun b!1445943 () Bool)

(declare-fun lt!634606 () (_ BitVec 64))

(declare-fun lt!634608 () SeekEntryResult!11626)

(declare-fun e!814469 () Bool)

(assert (=> b!1445943 (= e!814469 (= lt!634608 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634606 lt!634607 mask!2687)))))

(declare-fun b!1445944 () Bool)

(declare-fun res!977851 () Bool)

(assert (=> b!1445944 (=> (not res!977851) (not e!814468))))

(assert (=> b!1445944 (= res!977851 e!814469)))

(declare-fun c!133556 () Bool)

(assert (=> b!1445944 (= c!133556 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1445945 () Bool)

(assert (=> b!1445945 (= e!814464 e!814468)))

(declare-fun res!977848 () Bool)

(assert (=> b!1445945 (=> (not res!977848) (not e!814468))))

(assert (=> b!1445945 (= res!977848 (= lt!634608 (Intermediate!11626 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1445945 (= lt!634608 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634606 mask!2687) lt!634606 lt!634607 mask!2687))))

(assert (=> b!1445945 (= lt!634606 (select (store (arr!47351 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1445946 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98135 (_ BitVec 32)) SeekEntryResult!11626)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98135 (_ BitVec 32)) SeekEntryResult!11626)

(assert (=> b!1445946 (= e!814469 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634606 lt!634607 mask!2687) (seekEntryOrOpen!0 lt!634606 lt!634607 mask!2687)))))

(declare-fun b!1445947 () Bool)

(assert (=> b!1445947 (= e!814468 (not true))))

(assert (=> b!1445947 e!814465))

(declare-fun res!977854 () Bool)

(assert (=> b!1445947 (=> (not res!977854) (not e!814465))))

(assert (=> b!1445947 (= res!977854 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48696 0))(
  ( (Unit!48697) )
))
(declare-fun lt!634609 () Unit!48696)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98135 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48696)

(assert (=> b!1445947 (= lt!634609 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1445948 () Bool)

(declare-fun res!977859 () Bool)

(assert (=> b!1445948 (=> (not res!977859) (not e!814467))))

(assert (=> b!1445948 (= res!977859 (validKeyInArray!0 (select (arr!47351 a!2862) j!93)))))

(declare-fun b!1445949 () Bool)

(declare-fun res!977858 () Bool)

(assert (=> b!1445949 (=> (not res!977858) (not e!814467))))

(assert (=> b!1445949 (= res!977858 (and (= (size!47902 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47902 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47902 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1445950 () Bool)

(declare-fun res!977857 () Bool)

(assert (=> b!1445950 (=> (not res!977857) (not e!814465))))

(assert (=> b!1445950 (= res!977857 (= (seekEntryOrOpen!0 (select (arr!47351 a!2862) j!93) a!2862 mask!2687) (Found!11626 j!93)))))

(assert (= (and start!124770 res!977855) b!1445949))

(assert (= (and b!1445949 res!977858) b!1445934))

(assert (= (and b!1445934 res!977853) b!1445948))

(assert (= (and b!1445948 res!977859) b!1445941))

(assert (= (and b!1445941 res!977852) b!1445939))

(assert (= (and b!1445939 res!977850) b!1445936))

(assert (= (and b!1445936 res!977862) b!1445937))

(assert (= (and b!1445937 res!977860) b!1445935))

(assert (= (and b!1445935 res!977849) b!1445938))

(assert (= (and b!1445938 res!977861) b!1445945))

(assert (= (and b!1445945 res!977848) b!1445944))

(assert (= (and b!1445944 c!133556) b!1445943))

(assert (= (and b!1445944 (not c!133556)) b!1445946))

(assert (= (and b!1445944 res!977851) b!1445940))

(assert (= (and b!1445940 res!977856) b!1445947))

(assert (= (and b!1445947 res!977854) b!1445950))

(assert (= (and b!1445950 res!977857) b!1445942))

(declare-fun m!1334905 () Bool)

(assert (=> b!1445950 m!1334905))

(assert (=> b!1445950 m!1334905))

(declare-fun m!1334907 () Bool)

(assert (=> b!1445950 m!1334907))

(declare-fun m!1334909 () Bool)

(assert (=> b!1445939 m!1334909))

(declare-fun m!1334911 () Bool)

(assert (=> b!1445942 m!1334911))

(assert (=> b!1445942 m!1334905))

(assert (=> b!1445948 m!1334905))

(assert (=> b!1445948 m!1334905))

(declare-fun m!1334913 () Bool)

(assert (=> b!1445948 m!1334913))

(declare-fun m!1334915 () Bool)

(assert (=> b!1445945 m!1334915))

(assert (=> b!1445945 m!1334915))

(declare-fun m!1334917 () Bool)

(assert (=> b!1445945 m!1334917))

(declare-fun m!1334919 () Bool)

(assert (=> b!1445945 m!1334919))

(declare-fun m!1334921 () Bool)

(assert (=> b!1445945 m!1334921))

(assert (=> b!1445935 m!1334905))

(assert (=> b!1445935 m!1334905))

(declare-fun m!1334923 () Bool)

(assert (=> b!1445935 m!1334923))

(assert (=> b!1445935 m!1334923))

(assert (=> b!1445935 m!1334905))

(declare-fun m!1334925 () Bool)

(assert (=> b!1445935 m!1334925))

(declare-fun m!1334927 () Bool)

(assert (=> b!1445943 m!1334927))

(assert (=> b!1445938 m!1334905))

(assert (=> b!1445938 m!1334905))

(declare-fun m!1334929 () Bool)

(assert (=> b!1445938 m!1334929))

(declare-fun m!1334931 () Bool)

(assert (=> b!1445934 m!1334931))

(assert (=> b!1445934 m!1334931))

(declare-fun m!1334933 () Bool)

(assert (=> b!1445934 m!1334933))

(declare-fun m!1334935 () Bool)

(assert (=> b!1445946 m!1334935))

(declare-fun m!1334937 () Bool)

(assert (=> b!1445946 m!1334937))

(declare-fun m!1334939 () Bool)

(assert (=> b!1445941 m!1334939))

(declare-fun m!1334941 () Bool)

(assert (=> b!1445947 m!1334941))

(declare-fun m!1334943 () Bool)

(assert (=> b!1445947 m!1334943))

(assert (=> b!1445937 m!1334919))

(declare-fun m!1334945 () Bool)

(assert (=> b!1445937 m!1334945))

(declare-fun m!1334947 () Bool)

(assert (=> start!124770 m!1334947))

(declare-fun m!1334949 () Bool)

(assert (=> start!124770 m!1334949))

(check-sat (not b!1445939) (not b!1445946) (not b!1445934) (not b!1445938) (not b!1445945) (not b!1445935) (not b!1445947) (not start!124770) (not b!1445948) (not b!1445950) (not b!1445941) (not b!1445943))
