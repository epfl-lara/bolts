; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127150 () Bool)

(assert start!127150)

(declare-fun b!1493840 () Bool)

(declare-fun res!1016389 () Bool)

(declare-fun e!836825 () Bool)

(assert (=> b!1493840 (=> (not res!1016389) (not e!836825))))

(declare-datatypes ((array!99714 0))(
  ( (array!99715 (arr!48121 (Array (_ BitVec 32) (_ BitVec 64))) (size!48672 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99714)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1493840 (= res!1016389 (validKeyInArray!0 (select (arr!48121 a!2862) i!1006)))))

(declare-fun res!1016381 () Bool)

(assert (=> start!127150 (=> (not res!1016381) (not e!836825))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127150 (= res!1016381 (validMask!0 mask!2687))))

(assert (=> start!127150 e!836825))

(assert (=> start!127150 true))

(declare-fun array_inv!37066 (array!99714) Bool)

(assert (=> start!127150 (array_inv!37066 a!2862)))

(declare-fun b!1493841 () Bool)

(declare-fun res!1016384 () Bool)

(declare-fun e!836824 () Bool)

(assert (=> b!1493841 (=> (not res!1016384) (not e!836824))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1493841 (= res!1016384 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-datatypes ((SeekEntryResult!12384 0))(
  ( (MissingZero!12384 (index!51927 (_ BitVec 32))) (Found!12384 (index!51928 (_ BitVec 32))) (Intermediate!12384 (undefined!13196 Bool) (index!51929 (_ BitVec 32)) (x!133531 (_ BitVec 32))) (Undefined!12384) (MissingVacant!12384 (index!51930 (_ BitVec 32))) )
))
(declare-fun lt!651127 () SeekEntryResult!12384)

(declare-fun b!1493842 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!836829 () Bool)

(declare-fun lt!651129 () (_ BitVec 64))

(declare-fun lt!651130 () array!99714)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99714 (_ BitVec 32)) SeekEntryResult!12384)

(assert (=> b!1493842 (= e!836829 (= lt!651127 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651129 lt!651130 mask!2687)))))

(declare-fun b!1493843 () Bool)

(declare-fun res!1016379 () Bool)

(assert (=> b!1493843 (=> (not res!1016379) (not e!836825))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99714 (_ BitVec 32)) Bool)

(assert (=> b!1493843 (= res!1016379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1493844 () Bool)

(declare-fun res!1016385 () Bool)

(declare-fun e!836828 () Bool)

(assert (=> b!1493844 (=> (not res!1016385) (not e!836828))))

(declare-fun lt!651128 () SeekEntryResult!12384)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1493844 (= res!1016385 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48121 a!2862) j!93) a!2862 mask!2687) lt!651128))))

(declare-fun b!1493845 () Bool)

(declare-fun res!1016383 () Bool)

(assert (=> b!1493845 (=> (not res!1016383) (not e!836824))))

(assert (=> b!1493845 (= res!1016383 e!836829)))

(declare-fun c!138263 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1493845 (= c!138263 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1493846 () Bool)

(declare-fun res!1016380 () Bool)

(assert (=> b!1493846 (=> (not res!1016380) (not e!836825))))

(declare-datatypes ((List!34802 0))(
  ( (Nil!34799) (Cons!34798 (h!36187 (_ BitVec 64)) (t!49503 List!34802)) )
))
(declare-fun arrayNoDuplicates!0 (array!99714 (_ BitVec 32) List!34802) Bool)

(assert (=> b!1493846 (= res!1016380 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34799))))

(declare-fun b!1493847 () Bool)

(declare-fun res!1016382 () Bool)

(assert (=> b!1493847 (=> (not res!1016382) (not e!836825))))

(assert (=> b!1493847 (= res!1016382 (and (= (size!48672 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48672 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48672 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1493848 () Bool)

(declare-fun e!836830 () Bool)

(assert (=> b!1493848 (= e!836830 e!836828)))

(declare-fun res!1016387 () Bool)

(assert (=> b!1493848 (=> (not res!1016387) (not e!836828))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493848 (= res!1016387 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48121 a!2862) j!93) mask!2687) (select (arr!48121 a!2862) j!93) a!2862 mask!2687) lt!651128))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1493848 (= lt!651128 (Intermediate!12384 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1493849 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99714 (_ BitVec 32)) SeekEntryResult!12384)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99714 (_ BitVec 32)) SeekEntryResult!12384)

(assert (=> b!1493849 (= e!836829 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651129 lt!651130 mask!2687) (seekEntryOrOpen!0 lt!651129 lt!651130 mask!2687)))))

(declare-fun b!1493850 () Bool)

(declare-fun res!1016390 () Bool)

(declare-fun e!836831 () Bool)

(assert (=> b!1493850 (=> (not res!1016390) (not e!836831))))

(assert (=> b!1493850 (= res!1016390 (= (seekEntryOrOpen!0 (select (arr!48121 a!2862) j!93) a!2862 mask!2687) (Found!12384 j!93)))))

(declare-fun b!1493851 () Bool)

(declare-fun res!1016394 () Bool)

(assert (=> b!1493851 (=> (not res!1016394) (not e!836825))))

(assert (=> b!1493851 (= res!1016394 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48672 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48672 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48672 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1493852 () Bool)

(assert (=> b!1493852 (= e!836825 e!836830)))

(declare-fun res!1016392 () Bool)

(assert (=> b!1493852 (=> (not res!1016392) (not e!836830))))

(assert (=> b!1493852 (= res!1016392 (= (select (store (arr!48121 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1493852 (= lt!651130 (array!99715 (store (arr!48121 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48672 a!2862)))))

(declare-fun b!1493853 () Bool)

(assert (=> b!1493853 (= e!836831 (or (= (select (arr!48121 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48121 a!2862) intermediateBeforeIndex!19) (select (arr!48121 a!2862) j!93))))))

(declare-fun b!1493854 () Bool)

(assert (=> b!1493854 (= e!836828 e!836824)))

(declare-fun res!1016388 () Bool)

(assert (=> b!1493854 (=> (not res!1016388) (not e!836824))))

(assert (=> b!1493854 (= res!1016388 (= lt!651127 (Intermediate!12384 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1493854 (= lt!651127 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651129 mask!2687) lt!651129 lt!651130 mask!2687))))

(assert (=> b!1493854 (= lt!651129 (select (store (arr!48121 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1493855 () Bool)

(declare-fun res!1016393 () Bool)

(assert (=> b!1493855 (=> (not res!1016393) (not e!836825))))

(assert (=> b!1493855 (= res!1016393 (validKeyInArray!0 (select (arr!48121 a!2862) j!93)))))

(declare-fun b!1493856 () Bool)

(declare-fun e!836827 () Bool)

(assert (=> b!1493856 (= e!836824 (not e!836827))))

(declare-fun res!1016391 () Bool)

(assert (=> b!1493856 (=> res!1016391 e!836827)))

(assert (=> b!1493856 (= res!1016391 (or (and (= (select (arr!48121 a!2862) index!646) (select (store (arr!48121 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48121 a!2862) index!646) (select (arr!48121 a!2862) j!93))) (= (select (arr!48121 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1493856 e!836831))

(declare-fun res!1016386 () Bool)

(assert (=> b!1493856 (=> (not res!1016386) (not e!836831))))

(assert (=> b!1493856 (= res!1016386 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50056 0))(
  ( (Unit!50057) )
))
(declare-fun lt!651125 () Unit!50056)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99714 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50056)

(assert (=> b!1493856 (= lt!651125 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1493857 () Bool)

(assert (=> b!1493857 (= e!836827 true)))

(declare-fun lt!651126 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493857 (= lt!651126 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (= (and start!127150 res!1016381) b!1493847))

(assert (= (and b!1493847 res!1016382) b!1493840))

(assert (= (and b!1493840 res!1016389) b!1493855))

(assert (= (and b!1493855 res!1016393) b!1493843))

(assert (= (and b!1493843 res!1016379) b!1493846))

(assert (= (and b!1493846 res!1016380) b!1493851))

(assert (= (and b!1493851 res!1016394) b!1493852))

(assert (= (and b!1493852 res!1016392) b!1493848))

(assert (= (and b!1493848 res!1016387) b!1493844))

(assert (= (and b!1493844 res!1016385) b!1493854))

(assert (= (and b!1493854 res!1016388) b!1493845))

(assert (= (and b!1493845 c!138263) b!1493842))

(assert (= (and b!1493845 (not c!138263)) b!1493849))

(assert (= (and b!1493845 res!1016383) b!1493841))

(assert (= (and b!1493841 res!1016384) b!1493856))

(assert (= (and b!1493856 res!1016386) b!1493850))

(assert (= (and b!1493850 res!1016390) b!1493853))

(assert (= (and b!1493856 (not res!1016391)) b!1493857))

(declare-fun m!1377663 () Bool)

(assert (=> b!1493843 m!1377663))

(declare-fun m!1377665 () Bool)

(assert (=> b!1493853 m!1377665))

(declare-fun m!1377667 () Bool)

(assert (=> b!1493853 m!1377667))

(declare-fun m!1377669 () Bool)

(assert (=> b!1493840 m!1377669))

(assert (=> b!1493840 m!1377669))

(declare-fun m!1377671 () Bool)

(assert (=> b!1493840 m!1377671))

(assert (=> b!1493850 m!1377667))

(assert (=> b!1493850 m!1377667))

(declare-fun m!1377673 () Bool)

(assert (=> b!1493850 m!1377673))

(declare-fun m!1377675 () Bool)

(assert (=> b!1493857 m!1377675))

(declare-fun m!1377677 () Bool)

(assert (=> b!1493849 m!1377677))

(declare-fun m!1377679 () Bool)

(assert (=> b!1493849 m!1377679))

(declare-fun m!1377681 () Bool)

(assert (=> b!1493856 m!1377681))

(declare-fun m!1377683 () Bool)

(assert (=> b!1493856 m!1377683))

(declare-fun m!1377685 () Bool)

(assert (=> b!1493856 m!1377685))

(declare-fun m!1377687 () Bool)

(assert (=> b!1493856 m!1377687))

(declare-fun m!1377689 () Bool)

(assert (=> b!1493856 m!1377689))

(assert (=> b!1493856 m!1377667))

(assert (=> b!1493855 m!1377667))

(assert (=> b!1493855 m!1377667))

(declare-fun m!1377691 () Bool)

(assert (=> b!1493855 m!1377691))

(declare-fun m!1377693 () Bool)

(assert (=> b!1493846 m!1377693))

(declare-fun m!1377695 () Bool)

(assert (=> b!1493854 m!1377695))

(assert (=> b!1493854 m!1377695))

(declare-fun m!1377697 () Bool)

(assert (=> b!1493854 m!1377697))

(assert (=> b!1493854 m!1377683))

(declare-fun m!1377699 () Bool)

(assert (=> b!1493854 m!1377699))

(declare-fun m!1377701 () Bool)

(assert (=> b!1493842 m!1377701))

(assert (=> b!1493852 m!1377683))

(declare-fun m!1377703 () Bool)

(assert (=> b!1493852 m!1377703))

(assert (=> b!1493844 m!1377667))

(assert (=> b!1493844 m!1377667))

(declare-fun m!1377705 () Bool)

(assert (=> b!1493844 m!1377705))

(declare-fun m!1377707 () Bool)

(assert (=> start!127150 m!1377707))

(declare-fun m!1377709 () Bool)

(assert (=> start!127150 m!1377709))

(assert (=> b!1493848 m!1377667))

(assert (=> b!1493848 m!1377667))

(declare-fun m!1377711 () Bool)

(assert (=> b!1493848 m!1377711))

(assert (=> b!1493848 m!1377711))

(assert (=> b!1493848 m!1377667))

(declare-fun m!1377713 () Bool)

(assert (=> b!1493848 m!1377713))

(push 1)

