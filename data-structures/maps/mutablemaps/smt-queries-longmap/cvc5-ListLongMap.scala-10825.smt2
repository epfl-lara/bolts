; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126706 () Bool)

(assert start!126706)

(declare-fun b!1486922 () Bool)

(declare-fun res!1011333 () Bool)

(declare-fun e!833528 () Bool)

(assert (=> b!1486922 (=> (not res!1011333) (not e!833528))))

(declare-datatypes ((array!99522 0))(
  ( (array!99523 (arr!48031 (Array (_ BitVec 32) (_ BitVec 64))) (size!48582 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99522)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12294 0))(
  ( (MissingZero!12294 (index!51567 (_ BitVec 32))) (Found!12294 (index!51568 (_ BitVec 32))) (Intermediate!12294 (undefined!13106 Bool) (index!51569 (_ BitVec 32)) (x!133153 (_ BitVec 32))) (Undefined!12294) (MissingVacant!12294 (index!51570 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99522 (_ BitVec 32)) SeekEntryResult!12294)

(assert (=> b!1486922 (= res!1011333 (= (seekEntryOrOpen!0 (select (arr!48031 a!2862) j!93) a!2862 mask!2687) (Found!12294 j!93)))))

(declare-fun res!1011343 () Bool)

(declare-fun e!833530 () Bool)

(assert (=> start!126706 (=> (not res!1011343) (not e!833530))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126706 (= res!1011343 (validMask!0 mask!2687))))

(assert (=> start!126706 e!833530))

(assert (=> start!126706 true))

(declare-fun array_inv!36976 (array!99522) Bool)

(assert (=> start!126706 (array_inv!36976 a!2862)))

(declare-fun b!1486923 () Bool)

(declare-fun e!833531 () Bool)

(declare-fun e!833527 () Bool)

(assert (=> b!1486923 (= e!833531 e!833527)))

(declare-fun res!1011330 () Bool)

(assert (=> b!1486923 (=> (not res!1011330) (not e!833527))))

(declare-fun lt!648597 () SeekEntryResult!12294)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99522 (_ BitVec 32)) SeekEntryResult!12294)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486923 (= res!1011330 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48031 a!2862) j!93) mask!2687) (select (arr!48031 a!2862) j!93) a!2862 mask!2687) lt!648597))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1486923 (= lt!648597 (Intermediate!12294 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1486924 () Bool)

(declare-fun res!1011329 () Bool)

(assert (=> b!1486924 (=> (not res!1011329) (not e!833528))))

(assert (=> b!1486924 (= res!1011329 (or (= (select (arr!48031 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48031 a!2862) intermediateBeforeIndex!19) (select (arr!48031 a!2862) j!93))))))

(declare-fun b!1486925 () Bool)

(declare-fun e!833526 () Bool)

(declare-fun e!833532 () Bool)

(assert (=> b!1486925 (= e!833526 (not e!833532))))

(declare-fun res!1011342 () Bool)

(assert (=> b!1486925 (=> res!1011342 e!833532)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1486925 (= res!1011342 (or (and (= (select (arr!48031 a!2862) index!646) (select (store (arr!48031 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48031 a!2862) index!646) (select (arr!48031 a!2862) j!93))) (= (select (arr!48031 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486925 e!833528))

(declare-fun res!1011339 () Bool)

(assert (=> b!1486925 (=> (not res!1011339) (not e!833528))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99522 (_ BitVec 32)) Bool)

(assert (=> b!1486925 (= res!1011339 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49876 0))(
  ( (Unit!49877) )
))
(declare-fun lt!648599 () Unit!49876)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99522 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49876)

(assert (=> b!1486925 (= lt!648599 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1486926 () Bool)

(assert (=> b!1486926 (= e!833532 true)))

(declare-fun lt!648596 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486926 (= lt!648596 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1486927 () Bool)

(declare-fun e!833533 () Bool)

(declare-fun e!833534 () Bool)

(assert (=> b!1486927 (= e!833533 e!833534)))

(declare-fun res!1011344 () Bool)

(assert (=> b!1486927 (=> (not res!1011344) (not e!833534))))

(declare-fun lt!648600 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1486927 (= res!1011344 (and (= index!646 intermediateAfterIndex!19) (= lt!648600 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1486928 () Bool)

(declare-fun res!1011331 () Bool)

(assert (=> b!1486928 (=> (not res!1011331) (not e!833530))))

(assert (=> b!1486928 (= res!1011331 (and (= (size!48582 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48582 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48582 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1486929 () Bool)

(declare-fun res!1011334 () Bool)

(assert (=> b!1486929 (=> (not res!1011334) (not e!833530))))

(assert (=> b!1486929 (= res!1011334 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48582 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48582 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48582 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1486930 () Bool)

(assert (=> b!1486930 (= e!833530 e!833531)))

(declare-fun res!1011335 () Bool)

(assert (=> b!1486930 (=> (not res!1011335) (not e!833531))))

(assert (=> b!1486930 (= res!1011335 (= (select (store (arr!48031 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!648601 () array!99522)

(assert (=> b!1486930 (= lt!648601 (array!99523 (store (arr!48031 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48582 a!2862)))))

(declare-fun b!1486931 () Bool)

(declare-fun res!1011345 () Bool)

(assert (=> b!1486931 (=> (not res!1011345) (not e!833530))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1486931 (= res!1011345 (validKeyInArray!0 (select (arr!48031 a!2862) j!93)))))

(declare-fun b!1486932 () Bool)

(declare-fun res!1011337 () Bool)

(assert (=> b!1486932 (=> (not res!1011337) (not e!833530))))

(declare-datatypes ((List!34712 0))(
  ( (Nil!34709) (Cons!34708 (h!36085 (_ BitVec 64)) (t!49413 List!34712)) )
))
(declare-fun arrayNoDuplicates!0 (array!99522 (_ BitVec 32) List!34712) Bool)

(assert (=> b!1486932 (= res!1011337 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34709))))

(declare-fun lt!648598 () (_ BitVec 64))

(declare-fun b!1486933 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99522 (_ BitVec 32)) SeekEntryResult!12294)

(assert (=> b!1486933 (= e!833534 (= (seekEntryOrOpen!0 lt!648598 lt!648601 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648598 lt!648601 mask!2687)))))

(declare-fun b!1486934 () Bool)

(assert (=> b!1486934 (= e!833528 e!833533)))

(declare-fun res!1011327 () Bool)

(assert (=> b!1486934 (=> res!1011327 e!833533)))

(assert (=> b!1486934 (= res!1011327 (or (and (= (select (arr!48031 a!2862) index!646) lt!648600) (= (select (arr!48031 a!2862) index!646) (select (arr!48031 a!2862) j!93))) (= (select (arr!48031 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486934 (= lt!648600 (select (store (arr!48031 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1486935 () Bool)

(declare-fun res!1011338 () Bool)

(assert (=> b!1486935 (=> (not res!1011338) (not e!833526))))

(assert (=> b!1486935 (= res!1011338 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1486936 () Bool)

(declare-fun res!1011336 () Bool)

(assert (=> b!1486936 (=> (not res!1011336) (not e!833530))))

(assert (=> b!1486936 (= res!1011336 (validKeyInArray!0 (select (arr!48031 a!2862) i!1006)))))

(declare-fun b!1486937 () Bool)

(declare-fun e!833525 () Bool)

(assert (=> b!1486937 (= e!833525 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648598 lt!648601 mask!2687) (seekEntryOrOpen!0 lt!648598 lt!648601 mask!2687)))))

(declare-fun b!1486938 () Bool)

(declare-fun res!1011340 () Bool)

(assert (=> b!1486938 (=> (not res!1011340) (not e!833527))))

(assert (=> b!1486938 (= res!1011340 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48031 a!2862) j!93) a!2862 mask!2687) lt!648597))))

(declare-fun b!1486939 () Bool)

(declare-fun res!1011332 () Bool)

(assert (=> b!1486939 (=> (not res!1011332) (not e!833530))))

(assert (=> b!1486939 (= res!1011332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1486940 () Bool)

(assert (=> b!1486940 (= e!833527 e!833526)))

(declare-fun res!1011341 () Bool)

(assert (=> b!1486940 (=> (not res!1011341) (not e!833526))))

(declare-fun lt!648595 () SeekEntryResult!12294)

(assert (=> b!1486940 (= res!1011341 (= lt!648595 (Intermediate!12294 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1486940 (= lt!648595 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648598 mask!2687) lt!648598 lt!648601 mask!2687))))

(assert (=> b!1486940 (= lt!648598 (select (store (arr!48031 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1486941 () Bool)

(declare-fun res!1011328 () Bool)

(assert (=> b!1486941 (=> (not res!1011328) (not e!833526))))

(assert (=> b!1486941 (= res!1011328 e!833525)))

(declare-fun c!137324 () Bool)

(assert (=> b!1486941 (= c!137324 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1486942 () Bool)

(assert (=> b!1486942 (= e!833525 (= lt!648595 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648598 lt!648601 mask!2687)))))

(assert (= (and start!126706 res!1011343) b!1486928))

(assert (= (and b!1486928 res!1011331) b!1486936))

(assert (= (and b!1486936 res!1011336) b!1486931))

(assert (= (and b!1486931 res!1011345) b!1486939))

(assert (= (and b!1486939 res!1011332) b!1486932))

(assert (= (and b!1486932 res!1011337) b!1486929))

(assert (= (and b!1486929 res!1011334) b!1486930))

(assert (= (and b!1486930 res!1011335) b!1486923))

(assert (= (and b!1486923 res!1011330) b!1486938))

(assert (= (and b!1486938 res!1011340) b!1486940))

(assert (= (and b!1486940 res!1011341) b!1486941))

(assert (= (and b!1486941 c!137324) b!1486942))

(assert (= (and b!1486941 (not c!137324)) b!1486937))

(assert (= (and b!1486941 res!1011328) b!1486935))

(assert (= (and b!1486935 res!1011338) b!1486925))

(assert (= (and b!1486925 res!1011339) b!1486922))

(assert (= (and b!1486922 res!1011333) b!1486924))

(assert (= (and b!1486924 res!1011329) b!1486934))

(assert (= (and b!1486934 (not res!1011327)) b!1486927))

(assert (= (and b!1486927 res!1011344) b!1486933))

(assert (= (and b!1486925 (not res!1011342)) b!1486926))

(declare-fun m!1371759 () Bool)

(assert (=> b!1486939 m!1371759))

(declare-fun m!1371761 () Bool)

(assert (=> b!1486938 m!1371761))

(assert (=> b!1486938 m!1371761))

(declare-fun m!1371763 () Bool)

(assert (=> b!1486938 m!1371763))

(declare-fun m!1371765 () Bool)

(assert (=> b!1486933 m!1371765))

(declare-fun m!1371767 () Bool)

(assert (=> b!1486933 m!1371767))

(declare-fun m!1371769 () Bool)

(assert (=> b!1486930 m!1371769))

(declare-fun m!1371771 () Bool)

(assert (=> b!1486930 m!1371771))

(declare-fun m!1371773 () Bool)

(assert (=> b!1486940 m!1371773))

(assert (=> b!1486940 m!1371773))

(declare-fun m!1371775 () Bool)

(assert (=> b!1486940 m!1371775))

(assert (=> b!1486940 m!1371769))

(declare-fun m!1371777 () Bool)

(assert (=> b!1486940 m!1371777))

(declare-fun m!1371779 () Bool)

(assert (=> b!1486924 m!1371779))

(assert (=> b!1486924 m!1371761))

(assert (=> b!1486937 m!1371767))

(assert (=> b!1486937 m!1371765))

(assert (=> b!1486922 m!1371761))

(assert (=> b!1486922 m!1371761))

(declare-fun m!1371781 () Bool)

(assert (=> b!1486922 m!1371781))

(declare-fun m!1371783 () Bool)

(assert (=> b!1486925 m!1371783))

(assert (=> b!1486925 m!1371769))

(declare-fun m!1371785 () Bool)

(assert (=> b!1486925 m!1371785))

(declare-fun m!1371787 () Bool)

(assert (=> b!1486925 m!1371787))

(declare-fun m!1371789 () Bool)

(assert (=> b!1486925 m!1371789))

(assert (=> b!1486925 m!1371761))

(declare-fun m!1371791 () Bool)

(assert (=> b!1486942 m!1371791))

(declare-fun m!1371793 () Bool)

(assert (=> b!1486926 m!1371793))

(assert (=> b!1486931 m!1371761))

(assert (=> b!1486931 m!1371761))

(declare-fun m!1371795 () Bool)

(assert (=> b!1486931 m!1371795))

(assert (=> b!1486923 m!1371761))

(assert (=> b!1486923 m!1371761))

(declare-fun m!1371797 () Bool)

(assert (=> b!1486923 m!1371797))

(assert (=> b!1486923 m!1371797))

(assert (=> b!1486923 m!1371761))

(declare-fun m!1371799 () Bool)

(assert (=> b!1486923 m!1371799))

(declare-fun m!1371801 () Bool)

(assert (=> b!1486936 m!1371801))

(assert (=> b!1486936 m!1371801))

(declare-fun m!1371803 () Bool)

(assert (=> b!1486936 m!1371803))

(declare-fun m!1371805 () Bool)

(assert (=> b!1486932 m!1371805))

(declare-fun m!1371807 () Bool)

(assert (=> start!126706 m!1371807))

(declare-fun m!1371809 () Bool)

(assert (=> start!126706 m!1371809))

(assert (=> b!1486934 m!1371787))

(assert (=> b!1486934 m!1371761))

(assert (=> b!1486934 m!1371769))

(assert (=> b!1486934 m!1371785))

(push 1)

