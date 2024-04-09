; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125650 () Bool)

(assert start!125650)

(declare-fun b!1469936 () Bool)

(declare-fun res!998462 () Bool)

(declare-fun e!825191 () Bool)

(assert (=> b!1469936 (=> (not res!998462) (not e!825191))))

(declare-datatypes ((array!99015 0))(
  ( (array!99016 (arr!47791 (Array (_ BitVec 32) (_ BitVec 64))) (size!48342 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99015)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469936 (= res!998462 (validKeyInArray!0 (select (arr!47791 a!2862) j!93)))))

(declare-fun lt!642693 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!642694 () array!99015)

(declare-fun b!1469937 () Bool)

(declare-fun e!825186 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12054 0))(
  ( (MissingZero!12054 (index!50607 (_ BitVec 32))) (Found!12054 (index!50608 (_ BitVec 32))) (Intermediate!12054 (undefined!12866 Bool) (index!50609 (_ BitVec 32)) (x!132186 (_ BitVec 32))) (Undefined!12054) (MissingVacant!12054 (index!50610 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99015 (_ BitVec 32)) SeekEntryResult!12054)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99015 (_ BitVec 32)) SeekEntryResult!12054)

(assert (=> b!1469937 (= e!825186 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642693 lt!642694 mask!2687) (seekEntryOrOpen!0 lt!642693 lt!642694 mask!2687)))))

(declare-fun b!1469938 () Bool)

(declare-fun res!998463 () Bool)

(declare-fun e!825189 () Bool)

(assert (=> b!1469938 (=> (not res!998463) (not e!825189))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1469938 (= res!998463 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1469939 () Bool)

(declare-fun res!998454 () Bool)

(assert (=> b!1469939 (=> (not res!998454) (not e!825191))))

(assert (=> b!1469939 (= res!998454 (validKeyInArray!0 (select (arr!47791 a!2862) i!1006)))))

(declare-fun b!1469940 () Bool)

(declare-fun res!998466 () Bool)

(assert (=> b!1469940 (=> (not res!998466) (not e!825191))))

(assert (=> b!1469940 (= res!998466 (and (= (size!48342 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48342 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48342 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!998457 () Bool)

(assert (=> start!125650 (=> (not res!998457) (not e!825191))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125650 (= res!998457 (validMask!0 mask!2687))))

(assert (=> start!125650 e!825191))

(assert (=> start!125650 true))

(declare-fun array_inv!36736 (array!99015) Bool)

(assert (=> start!125650 (array_inv!36736 a!2862)))

(declare-fun b!1469941 () Bool)

(declare-fun res!998461 () Bool)

(assert (=> b!1469941 (=> (not res!998461) (not e!825191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99015 (_ BitVec 32)) Bool)

(assert (=> b!1469941 (= res!998461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1469942 () Bool)

(declare-fun res!998465 () Bool)

(assert (=> b!1469942 (=> (not res!998465) (not e!825191))))

(declare-datatypes ((List!34472 0))(
  ( (Nil!34469) (Cons!34468 (h!35818 (_ BitVec 64)) (t!49173 List!34472)) )
))
(declare-fun arrayNoDuplicates!0 (array!99015 (_ BitVec 32) List!34472) Bool)

(assert (=> b!1469942 (= res!998465 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34469))))

(declare-fun b!1469943 () Bool)

(declare-fun e!825188 () Bool)

(declare-fun e!825190 () Bool)

(assert (=> b!1469943 (= e!825188 e!825190)))

(declare-fun res!998456 () Bool)

(assert (=> b!1469943 (=> (not res!998456) (not e!825190))))

(declare-fun lt!642690 () SeekEntryResult!12054)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99015 (_ BitVec 32)) SeekEntryResult!12054)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469943 (= res!998456 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47791 a!2862) j!93) mask!2687) (select (arr!47791 a!2862) j!93) a!2862 mask!2687) lt!642690))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1469943 (= lt!642690 (Intermediate!12054 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469944 () Bool)

(declare-fun lt!642692 () SeekEntryResult!12054)

(assert (=> b!1469944 (= e!825186 (= lt!642692 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642693 lt!642694 mask!2687)))))

(declare-fun b!1469945 () Bool)

(declare-fun res!998458 () Bool)

(assert (=> b!1469945 (=> (not res!998458) (not e!825189))))

(assert (=> b!1469945 (= res!998458 e!825186)))

(declare-fun c!135254 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1469945 (= c!135254 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469946 () Bool)

(assert (=> b!1469946 (= e!825189 (not (= (seekEntryOrOpen!0 (select (arr!47791 a!2862) j!93) a!2862 mask!2687) (Found!12054 j!93))))))

(assert (=> b!1469946 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49396 0))(
  ( (Unit!49397) )
))
(declare-fun lt!642691 () Unit!49396)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99015 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49396)

(assert (=> b!1469946 (= lt!642691 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1469947 () Bool)

(declare-fun res!998460 () Bool)

(assert (=> b!1469947 (=> (not res!998460) (not e!825191))))

(assert (=> b!1469947 (= res!998460 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48342 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48342 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48342 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1469948 () Bool)

(declare-fun res!998464 () Bool)

(assert (=> b!1469948 (=> (not res!998464) (not e!825190))))

(assert (=> b!1469948 (= res!998464 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47791 a!2862) j!93) a!2862 mask!2687) lt!642690))))

(declare-fun b!1469949 () Bool)

(assert (=> b!1469949 (= e!825190 e!825189)))

(declare-fun res!998455 () Bool)

(assert (=> b!1469949 (=> (not res!998455) (not e!825189))))

(assert (=> b!1469949 (= res!998455 (= lt!642692 (Intermediate!12054 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1469949 (= lt!642692 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642693 mask!2687) lt!642693 lt!642694 mask!2687))))

(assert (=> b!1469949 (= lt!642693 (select (store (arr!47791 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1469950 () Bool)

(assert (=> b!1469950 (= e!825191 e!825188)))

(declare-fun res!998459 () Bool)

(assert (=> b!1469950 (=> (not res!998459) (not e!825188))))

(assert (=> b!1469950 (= res!998459 (= (select (store (arr!47791 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1469950 (= lt!642694 (array!99016 (store (arr!47791 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48342 a!2862)))))

(assert (= (and start!125650 res!998457) b!1469940))

(assert (= (and b!1469940 res!998466) b!1469939))

(assert (= (and b!1469939 res!998454) b!1469936))

(assert (= (and b!1469936 res!998462) b!1469941))

(assert (= (and b!1469941 res!998461) b!1469942))

(assert (= (and b!1469942 res!998465) b!1469947))

(assert (= (and b!1469947 res!998460) b!1469950))

(assert (= (and b!1469950 res!998459) b!1469943))

(assert (= (and b!1469943 res!998456) b!1469948))

(assert (= (and b!1469948 res!998464) b!1469949))

(assert (= (and b!1469949 res!998455) b!1469945))

(assert (= (and b!1469945 c!135254) b!1469944))

(assert (= (and b!1469945 (not c!135254)) b!1469937))

(assert (= (and b!1469945 res!998458) b!1469938))

(assert (= (and b!1469938 res!998463) b!1469946))

(declare-fun m!1357131 () Bool)

(assert (=> b!1469939 m!1357131))

(assert (=> b!1469939 m!1357131))

(declare-fun m!1357133 () Bool)

(assert (=> b!1469939 m!1357133))

(declare-fun m!1357135 () Bool)

(assert (=> b!1469949 m!1357135))

(assert (=> b!1469949 m!1357135))

(declare-fun m!1357137 () Bool)

(assert (=> b!1469949 m!1357137))

(declare-fun m!1357139 () Bool)

(assert (=> b!1469949 m!1357139))

(declare-fun m!1357141 () Bool)

(assert (=> b!1469949 m!1357141))

(declare-fun m!1357143 () Bool)

(assert (=> b!1469942 m!1357143))

(declare-fun m!1357145 () Bool)

(assert (=> b!1469944 m!1357145))

(declare-fun m!1357147 () Bool)

(assert (=> b!1469948 m!1357147))

(assert (=> b!1469948 m!1357147))

(declare-fun m!1357149 () Bool)

(assert (=> b!1469948 m!1357149))

(assert (=> b!1469943 m!1357147))

(assert (=> b!1469943 m!1357147))

(declare-fun m!1357151 () Bool)

(assert (=> b!1469943 m!1357151))

(assert (=> b!1469943 m!1357151))

(assert (=> b!1469943 m!1357147))

(declare-fun m!1357153 () Bool)

(assert (=> b!1469943 m!1357153))

(declare-fun m!1357155 () Bool)

(assert (=> b!1469937 m!1357155))

(declare-fun m!1357157 () Bool)

(assert (=> b!1469937 m!1357157))

(assert (=> b!1469946 m!1357147))

(assert (=> b!1469946 m!1357147))

(declare-fun m!1357159 () Bool)

(assert (=> b!1469946 m!1357159))

(declare-fun m!1357161 () Bool)

(assert (=> b!1469946 m!1357161))

(declare-fun m!1357163 () Bool)

(assert (=> b!1469946 m!1357163))

(assert (=> b!1469936 m!1357147))

(assert (=> b!1469936 m!1357147))

(declare-fun m!1357165 () Bool)

(assert (=> b!1469936 m!1357165))

(declare-fun m!1357167 () Bool)

(assert (=> start!125650 m!1357167))

(declare-fun m!1357169 () Bool)

(assert (=> start!125650 m!1357169))

(assert (=> b!1469950 m!1357139))

(declare-fun m!1357171 () Bool)

(assert (=> b!1469950 m!1357171))

(declare-fun m!1357173 () Bool)

(assert (=> b!1469941 m!1357173))

(push 1)

(assert (not b!1469937))

(assert (not b!1469939))

(assert (not b!1469942))

(assert (not b!1469949))

(assert (not b!1469941))

(assert (not start!125650))

(assert (not b!1469946))

(assert (not b!1469948))

(assert (not b!1469943))

(assert (not b!1469944))

(assert (not b!1469936))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!155263 () Bool)

(declare-fun lt!642783 () SeekEntryResult!12054)

(assert (=> d!155263 (and (or (is-Undefined!12054 lt!642783) (not (is-Found!12054 lt!642783)) (and (bvsge (index!50608 lt!642783) #b00000000000000000000000000000000) (bvslt (index!50608 lt!642783) (size!48342 a!2862)))) (or (is-Undefined!12054 lt!642783) (is-Found!12054 lt!642783) (not (is-MissingZero!12054 lt!642783)) (and (bvsge (index!50607 lt!642783) #b00000000000000000000000000000000) (bvslt (index!50607 lt!642783) (size!48342 a!2862)))) (or (is-Undefined!12054 lt!642783) (is-Found!12054 lt!642783) (is-MissingZero!12054 lt!642783) (not (is-MissingVacant!12054 lt!642783)) (and (bvsge (index!50610 lt!642783) #b00000000000000000000000000000000) (bvslt (index!50610 lt!642783) (size!48342 a!2862)))) (or (is-Undefined!12054 lt!642783) (ite (is-Found!12054 lt!642783) (= (select (arr!47791 a!2862) (index!50608 lt!642783)) (select (arr!47791 a!2862) j!93)) (ite (is-MissingZero!12054 lt!642783) (= (select (arr!47791 a!2862) (index!50607 lt!642783)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12054 lt!642783) (= (select (arr!47791 a!2862) (index!50610 lt!642783)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!825300 () SeekEntryResult!12054)

(assert (=> d!155263 (= lt!642783 e!825300)))

(declare-fun c!135319 () Bool)

(declare-fun lt!642781 () SeekEntryResult!12054)

(assert (=> d!155263 (= c!135319 (and (is-Intermediate!12054 lt!642781) (undefined!12866 lt!642781)))))

(assert (=> d!155263 (= lt!642781 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47791 a!2862) j!93) mask!2687) (select (arr!47791 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!155263 (validMask!0 mask!2687)))

(assert (=> d!155263 (= (seekEntryOrOpen!0 (select (arr!47791 a!2862) j!93) a!2862 mask!2687) lt!642783)))

(declare-fun b!1470175 () Bool)

(declare-fun e!825301 () SeekEntryResult!12054)

(assert (=> b!1470175 (= e!825301 (MissingZero!12054 (index!50609 lt!642781)))))

(declare-fun b!1470176 () Bool)

(assert (=> b!1470176 (= e!825300 Undefined!12054)))

(declare-fun b!1470177 () Bool)

(declare-fun c!135318 () Bool)

(declare-fun lt!642782 () (_ BitVec 64))

(assert (=> b!1470177 (= c!135318 (= lt!642782 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!825302 () SeekEntryResult!12054)

(assert (=> b!1470177 (= e!825302 e!825301)))

(declare-fun b!1470178 () Bool)

(assert (=> b!1470178 (= e!825302 (Found!12054 (index!50609 lt!642781)))))

(declare-fun b!1470179 () Bool)

(assert (=> b!1470179 (= e!825300 e!825302)))

(assert (=> b!1470179 (= lt!642782 (select (arr!47791 a!2862) (index!50609 lt!642781)))))

(declare-fun c!135317 () Bool)

(assert (=> b!1470179 (= c!135317 (= lt!642782 (select (arr!47791 a!2862) j!93)))))

(declare-fun b!1470180 () Bool)

(assert (=> b!1470180 (= e!825301 (seekKeyOrZeroReturnVacant!0 (x!132186 lt!642781) (index!50609 lt!642781) (index!50609 lt!642781) (select (arr!47791 a!2862) j!93) a!2862 mask!2687))))

(assert (= (and d!155263 c!135319) b!1470176))

(assert (= (and d!155263 (not c!135319)) b!1470179))

(assert (= (and b!1470179 c!135317) b!1470178))

(assert (= (and b!1470179 (not c!135317)) b!1470177))

(assert (= (and b!1470177 c!135318) b!1470175))

(assert (= (and b!1470177 (not c!135318)) b!1470180))

(declare-fun m!1357329 () Bool)

(assert (=> d!155263 m!1357329))

(assert (=> d!155263 m!1357167))

(assert (=> d!155263 m!1357147))

(assert (=> d!155263 m!1357151))

(declare-fun m!1357331 () Bool)

(assert (=> d!155263 m!1357331))

(declare-fun m!1357333 () Bool)

(assert (=> d!155263 m!1357333))

(assert (=> d!155263 m!1357151))

(assert (=> d!155263 m!1357147))

(assert (=> d!155263 m!1357153))

(declare-fun m!1357335 () Bool)

(assert (=> b!1470179 m!1357335))

(assert (=> b!1470180 m!1357147))

(declare-fun m!1357337 () Bool)

(assert (=> b!1470180 m!1357337))

(assert (=> b!1469946 d!155263))

(declare-fun bm!67698 () Bool)

(declare-fun call!67701 () Bool)

(assert (=> bm!67698 (= call!67701 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1470205 () Bool)

(declare-fun e!825320 () Bool)

(declare-fun e!825318 () Bool)

(assert (=> b!1470205 (= e!825320 e!825318)))

(declare-fun c!135329 () Bool)

(assert (=> b!1470205 (= c!135329 (validKeyInArray!0 (select (arr!47791 a!2862) j!93)))))

(declare-fun d!155273 () Bool)

(declare-fun res!998574 () Bool)

(assert (=> d!155273 (=> res!998574 e!825320)))

(assert (=> d!155273 (= res!998574 (bvsge j!93 (size!48342 a!2862)))))

(assert (=> d!155273 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!825320)))

(declare-fun b!1470206 () Bool)

(declare-fun e!825319 () Bool)

(assert (=> b!1470206 (= e!825318 e!825319)))

(declare-fun lt!642803 () (_ BitVec 64))

(assert (=> b!1470206 (= lt!642803 (select (arr!47791 a!2862) j!93))))

(declare-fun lt!642802 () Unit!49396)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99015 (_ BitVec 64) (_ BitVec 32)) Unit!49396)

(assert (=> b!1470206 (= lt!642802 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!642803 j!93))))

(declare-fun arrayContainsKey!0 (array!99015 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1470206 (arrayContainsKey!0 a!2862 lt!642803 #b00000000000000000000000000000000)))

(declare-fun lt!642804 () Unit!49396)

(assert (=> b!1470206 (= lt!642804 lt!642802)))

(declare-fun res!998575 () Bool)

(assert (=> b!1470206 (= res!998575 (= (seekEntryOrOpen!0 (select (arr!47791 a!2862) j!93) a!2862 mask!2687) (Found!12054 j!93)))))

(assert (=> b!1470206 (=> (not res!998575) (not e!825319))))

(declare-fun b!1470207 () Bool)

(assert (=> b!1470207 (= e!825319 call!67701)))

(declare-fun b!1470208 () Bool)

(assert (=> b!1470208 (= e!825318 call!67701)))

(assert (= (and d!155273 (not res!998574)) b!1470205))

(assert (= (and b!1470205 c!135329) b!1470206))

(assert (= (and b!1470205 (not c!135329)) b!1470208))

(assert (= (and b!1470206 res!998575) b!1470207))

(assert (= (or b!1470207 b!1470208) bm!67698))

(declare-fun m!1357347 () Bool)

(assert (=> bm!67698 m!1357347))

(assert (=> b!1470205 m!1357147))

(assert (=> b!1470205 m!1357147))

(assert (=> b!1470205 m!1357165))

(assert (=> b!1470206 m!1357147))

(declare-fun m!1357349 () Bool)

(assert (=> b!1470206 m!1357349))

(declare-fun m!1357351 () Bool)

(assert (=> b!1470206 m!1357351))

(assert (=> b!1470206 m!1357147))

(assert (=> b!1470206 m!1357159))

(assert (=> b!1469946 d!155273))

(declare-fun d!155281 () Bool)

(assert (=> d!155281 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!642810 () Unit!49396)

(declare-fun choose!38 (array!99015 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49396)

(assert (=> d!155281 (= lt!642810 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!155281 (validMask!0 mask!2687)))

(assert (=> d!155281 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!642810)))

(declare-fun bs!42486 () Bool)

(assert (= bs!42486 d!155281))

(assert (=> bs!42486 m!1357161))

(declare-fun m!1357367 () Bool)

(assert (=> bs!42486 m!1357367))

(assert (=> bs!42486 m!1357167))

(assert (=> b!1469946 d!155281))

(declare-fun bm!67702 () Bool)

(declare-fun call!67705 () Bool)

(assert (=> bm!67702 (= call!67705 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1470230 () Bool)

(declare-fun e!825338 () Bool)

(declare-fun e!825336 () Bool)

(assert (=> b!1470230 (= e!825338 e!825336)))

(declare-fun c!135336 () Bool)

(assert (=> b!1470230 (= c!135336 (validKeyInArray!0 (select (arr!47791 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!155289 () Bool)

(declare-fun res!998585 () Bool)

(assert (=> d!155289 (=> res!998585 e!825338)))

(assert (=> d!155289 (= res!998585 (bvsge #b00000000000000000000000000000000 (size!48342 a!2862)))))

(assert (=> d!155289 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!825338)))

(declare-fun b!1470231 () Bool)

(declare-fun e!825337 () Bool)

(assert (=> b!1470231 (= e!825336 e!825337)))

(declare-fun lt!642812 () (_ BitVec 64))

(assert (=> b!1470231 (= lt!642812 (select (arr!47791 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!642811 () Unit!49396)

(assert (=> b!1470231 (= lt!642811 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!642812 #b00000000000000000000000000000000))))

(assert (=> b!1470231 (arrayContainsKey!0 a!2862 lt!642812 #b00000000000000000000000000000000)))

(declare-fun lt!642813 () Unit!49396)

(assert (=> b!1470231 (= lt!642813 lt!642811)))

(declare-fun res!998586 () Bool)

(assert (=> b!1470231 (= res!998586 (= (seekEntryOrOpen!0 (select (arr!47791 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12054 #b00000000000000000000000000000000)))))

(assert (=> b!1470231 (=> (not res!998586) (not e!825337))))

(declare-fun b!1470232 () Bool)

(assert (=> b!1470232 (= e!825337 call!67705)))

(declare-fun b!1470233 () Bool)

(assert (=> b!1470233 (= e!825336 call!67705)))

(assert (= (and d!155289 (not res!998585)) b!1470230))

(assert (= (and b!1470230 c!135336) b!1470231))

(assert (= (and b!1470230 (not c!135336)) b!1470233))

(assert (= (and b!1470231 res!998586) b!1470232))

(assert (= (or b!1470232 b!1470233) bm!67702))

(declare-fun m!1357381 () Bool)

(assert (=> bm!67702 m!1357381))

(declare-fun m!1357383 () Bool)

(assert (=> b!1470230 m!1357383))

(assert (=> b!1470230 m!1357383))

(declare-fun m!1357385 () Bool)

(assert (=> b!1470230 m!1357385))

(assert (=> b!1470231 m!1357383))

(declare-fun m!1357387 () Bool)

(assert (=> b!1470231 m!1357387))

(declare-fun m!1357389 () Bool)

(assert (=> b!1470231 m!1357389))

(assert (=> b!1470231 m!1357383))

(declare-fun m!1357391 () Bool)

(assert (=> b!1470231 m!1357391))

(assert (=> b!1469941 d!155289))

(declare-fun d!155295 () Bool)

(assert (=> d!155295 (= (validKeyInArray!0 (select (arr!47791 a!2862) j!93)) (and (not (= (select (arr!47791 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47791 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1469936 d!155295))

(declare-fun d!155297 () Bool)

(assert (=> d!155297 (= (validKeyInArray!0 (select (arr!47791 a!2862) i!1006)) (and (not (= (select (arr!47791 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47791 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1469939 d!155297))

(declare-fun b!1470271 () Bool)

(declare-fun e!825366 () SeekEntryResult!12054)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1470271 (= e!825366 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47791 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47791 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1470272 () Bool)

(declare-fun e!825365 () SeekEntryResult!12054)

(assert (=> b!1470272 (= e!825365 e!825366)))

(declare-fun c!135348 () Bool)

(declare-fun lt!642822 () (_ BitVec 64))

(assert (=> b!1470272 (= c!135348 (or (= lt!642822 (select (arr!47791 a!2862) j!93)) (= (bvadd lt!642822 lt!642822) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1470273 () Bool)

(declare-fun lt!642821 () SeekEntryResult!12054)

(assert (=> b!1470273 (and (bvsge (index!50609 lt!642821) #b00000000000000000000000000000000) (bvslt (index!50609 lt!642821) (size!48342 a!2862)))))

(declare-fun e!825368 () Bool)

(assert (=> b!1470273 (= e!825368 (= (select (arr!47791 a!2862) (index!50609 lt!642821)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1470274 () Bool)

(declare-fun e!825367 () Bool)

(declare-fun e!825364 () Bool)

(assert (=> b!1470274 (= e!825367 e!825364)))

(declare-fun res!998606 () Bool)

(assert (=> b!1470274 (= res!998606 (and (is-Intermediate!12054 lt!642821) (not (undefined!12866 lt!642821)) (bvslt (x!132186 lt!642821) #b01111111111111111111111111111110) (bvsge (x!132186 lt!642821) #b00000000000000000000000000000000) (bvsge (x!132186 lt!642821) #b00000000000000000000000000000000)))))

(assert (=> b!1470274 (=> (not res!998606) (not e!825364))))

(declare-fun b!1470275 () Bool)

(assert (=> b!1470275 (= e!825366 (Intermediate!12054 false (toIndex!0 (select (arr!47791 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1470276 () Bool)

(assert (=> b!1470276 (and (bvsge (index!50609 lt!642821) #b00000000000000000000000000000000) (bvslt (index!50609 lt!642821) (size!48342 a!2862)))))

(declare-fun res!998605 () Bool)

(assert (=> b!1470276 (= res!998605 (= (select (arr!47791 a!2862) (index!50609 lt!642821)) (select (arr!47791 a!2862) j!93)))))

(assert (=> b!1470276 (=> res!998605 e!825368)))

(assert (=> b!1470276 (= e!825364 e!825368)))

(declare-fun d!155299 () Bool)

(assert (=> d!155299 e!825367))

(declare-fun c!135347 () Bool)

(assert (=> d!155299 (= c!135347 (and (is-Intermediate!12054 lt!642821) (undefined!12866 lt!642821)))))

(assert (=> d!155299 (= lt!642821 e!825365)))

(declare-fun c!135349 () Bool)

(assert (=> d!155299 (= c!135349 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!155299 (= lt!642822 (select (arr!47791 a!2862) (toIndex!0 (select (arr!47791 a!2862) j!93) mask!2687)))))

(assert (=> d!155299 (validMask!0 mask!2687)))

(assert (=> d!155299 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47791 a!2862) j!93) mask!2687) (select (arr!47791 a!2862) j!93) a!2862 mask!2687) lt!642821)))

(declare-fun b!1470277 () Bool)

(assert (=> b!1470277 (= e!825365 (Intermediate!12054 true (toIndex!0 (select (arr!47791 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1470278 () Bool)

(assert (=> b!1470278 (= e!825367 (bvsge (x!132186 lt!642821) #b01111111111111111111111111111110))))

(declare-fun b!1470279 () Bool)

(assert (=> b!1470279 (and (bvsge (index!50609 lt!642821) #b00000000000000000000000000000000) (bvslt (index!50609 lt!642821) (size!48342 a!2862)))))

