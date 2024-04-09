; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127404 () Bool)

(assert start!127404)

(declare-fun b!1496902 () Bool)

(declare-fun res!1018243 () Bool)

(declare-fun e!838373 () Bool)

(assert (=> b!1496902 (=> (not res!1018243) (not e!838373))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99779 0))(
  ( (array!99780 (arr!48149 (Array (_ BitVec 32) (_ BitVec 64))) (size!48700 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99779)

(assert (=> b!1496902 (= res!1018243 (and (= (size!48700 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48700 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48700 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1496903 () Bool)

(declare-fun res!1018240 () Bool)

(assert (=> b!1496903 (=> (not res!1018240) (not e!838373))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1496903 (= res!1018240 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48700 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48700 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48700 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1496904 () Bool)

(declare-fun e!838368 () Bool)

(assert (=> b!1496904 (= e!838373 e!838368)))

(declare-fun res!1018245 () Bool)

(assert (=> b!1496904 (=> (not res!1018245) (not e!838368))))

(assert (=> b!1496904 (= res!1018245 (= (select (store (arr!48149 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!652222 () array!99779)

(assert (=> b!1496904 (= lt!652222 (array!99780 (store (arr!48149 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48700 a!2862)))))

(declare-fun b!1496905 () Bool)

(declare-fun e!838376 () Bool)

(declare-fun e!838370 () Bool)

(assert (=> b!1496905 (= e!838376 e!838370)))

(declare-fun res!1018234 () Bool)

(assert (=> b!1496905 (=> (not res!1018234) (not e!838370))))

(declare-datatypes ((SeekEntryResult!12412 0))(
  ( (MissingZero!12412 (index!52039 (_ BitVec 32))) (Found!12412 (index!52040 (_ BitVec 32))) (Intermediate!12412 (undefined!13224 Bool) (index!52041 (_ BitVec 32)) (x!133667 (_ BitVec 32))) (Undefined!12412) (MissingVacant!12412 (index!52042 (_ BitVec 32))) )
))
(declare-fun lt!652223 () SeekEntryResult!12412)

(assert (=> b!1496905 (= res!1018234 (= lt!652223 (Intermediate!12412 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!652224 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99779 (_ BitVec 32)) SeekEntryResult!12412)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496905 (= lt!652223 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652224 mask!2687) lt!652224 lt!652222 mask!2687))))

(assert (=> b!1496905 (= lt!652224 (select (store (arr!48149 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1496906 () Bool)

(declare-fun res!1018231 () Bool)

(assert (=> b!1496906 (=> (not res!1018231) (not e!838370))))

(declare-fun e!838372 () Bool)

(assert (=> b!1496906 (= res!1018231 e!838372)))

(declare-fun c!138875 () Bool)

(assert (=> b!1496906 (= c!138875 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1496907 () Bool)

(declare-fun res!1018229 () Bool)

(assert (=> b!1496907 (=> (not res!1018229) (not e!838373))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1496907 (= res!1018229 (validKeyInArray!0 (select (arr!48149 a!2862) i!1006)))))

(declare-fun b!1496908 () Bool)

(declare-fun res!1018232 () Bool)

(declare-fun e!838371 () Bool)

(assert (=> b!1496908 (=> res!1018232 e!838371)))

(declare-fun lt!652227 () (_ BitVec 32))

(declare-fun lt!652225 () SeekEntryResult!12412)

(assert (=> b!1496908 (= res!1018232 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652227 (select (arr!48149 a!2862) j!93) a!2862 mask!2687) lt!652225)))))

(declare-fun b!1496909 () Bool)

(declare-fun e!838375 () Bool)

(assert (=> b!1496909 (= e!838370 (not e!838375))))

(declare-fun res!1018242 () Bool)

(assert (=> b!1496909 (=> res!1018242 e!838375)))

(assert (=> b!1496909 (= res!1018242 (or (and (= (select (arr!48149 a!2862) index!646) (select (store (arr!48149 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48149 a!2862) index!646) (select (arr!48149 a!2862) j!93))) (= (select (arr!48149 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun lt!652226 () SeekEntryResult!12412)

(assert (=> b!1496909 (and (= lt!652226 (Found!12412 j!93)) (or (= (select (arr!48149 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48149 a!2862) intermediateBeforeIndex!19) (select (arr!48149 a!2862) j!93))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99779 (_ BitVec 32)) SeekEntryResult!12412)

(assert (=> b!1496909 (= lt!652226 (seekEntryOrOpen!0 (select (arr!48149 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99779 (_ BitVec 32)) Bool)

(assert (=> b!1496909 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!50112 0))(
  ( (Unit!50113) )
))
(declare-fun lt!652221 () Unit!50112)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99779 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50112)

(assert (=> b!1496909 (= lt!652221 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1496910 () Bool)

(declare-fun res!1018228 () Bool)

(assert (=> b!1496910 (=> (not res!1018228) (not e!838373))))

(assert (=> b!1496910 (= res!1018228 (validKeyInArray!0 (select (arr!48149 a!2862) j!93)))))

(declare-fun b!1496911 () Bool)

(assert (=> b!1496911 (= e!838371 true)))

(assert (=> b!1496911 (= lt!652226 (seekEntryOrOpen!0 lt!652224 lt!652222 mask!2687))))

(declare-fun lt!652228 () Unit!50112)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99779 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50112)

(assert (=> b!1496911 (= lt!652228 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!652227 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1496913 () Bool)

(declare-fun res!1018244 () Bool)

(assert (=> b!1496913 (=> res!1018244 e!838371)))

(assert (=> b!1496913 (= res!1018244 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1496914 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99779 (_ BitVec 32)) SeekEntryResult!12412)

(assert (=> b!1496914 (= e!838372 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652224 lt!652222 mask!2687) (seekEntryOrOpen!0 lt!652224 lt!652222 mask!2687)))))

(declare-fun b!1496915 () Bool)

(declare-fun e!838374 () Bool)

(assert (=> b!1496915 (= e!838374 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652227 intermediateAfterIndex!19 lt!652224 lt!652222 mask!2687) (seekEntryOrOpen!0 lt!652224 lt!652222 mask!2687))))))

(declare-fun b!1496916 () Bool)

(assert (=> b!1496916 (= e!838372 (= lt!652223 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652224 lt!652222 mask!2687)))))

(declare-fun b!1496917 () Bool)

(declare-fun res!1018233 () Bool)

(assert (=> b!1496917 (=> (not res!1018233) (not e!838373))))

(declare-datatypes ((List!34830 0))(
  ( (Nil!34827) (Cons!34826 (h!36224 (_ BitVec 64)) (t!49531 List!34830)) )
))
(declare-fun arrayNoDuplicates!0 (array!99779 (_ BitVec 32) List!34830) Bool)

(assert (=> b!1496917 (= res!1018233 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34827))))

(declare-fun b!1496918 () Bool)

(assert (=> b!1496918 (= e!838374 (not (= lt!652223 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652227 lt!652224 lt!652222 mask!2687))))))

(declare-fun b!1496919 () Bool)

(assert (=> b!1496919 (= e!838368 e!838376)))

(declare-fun res!1018239 () Bool)

(assert (=> b!1496919 (=> (not res!1018239) (not e!838376))))

(assert (=> b!1496919 (= res!1018239 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48149 a!2862) j!93) mask!2687) (select (arr!48149 a!2862) j!93) a!2862 mask!2687) lt!652225))))

(assert (=> b!1496919 (= lt!652225 (Intermediate!12412 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1496920 () Bool)

(declare-fun res!1018236 () Bool)

(assert (=> b!1496920 (=> (not res!1018236) (not e!838376))))

(assert (=> b!1496920 (= res!1018236 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48149 a!2862) j!93) a!2862 mask!2687) lt!652225))))

(declare-fun b!1496921 () Bool)

(declare-fun res!1018238 () Bool)

(assert (=> b!1496921 (=> res!1018238 e!838371)))

(assert (=> b!1496921 (= res!1018238 e!838374)))

(declare-fun c!138874 () Bool)

(assert (=> b!1496921 (= c!138874 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun res!1018241 () Bool)

(assert (=> start!127404 (=> (not res!1018241) (not e!838373))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127404 (= res!1018241 (validMask!0 mask!2687))))

(assert (=> start!127404 e!838373))

(assert (=> start!127404 true))

(declare-fun array_inv!37094 (array!99779) Bool)

(assert (=> start!127404 (array_inv!37094 a!2862)))

(declare-fun b!1496912 () Bool)

(declare-fun res!1018237 () Bool)

(assert (=> b!1496912 (=> (not res!1018237) (not e!838370))))

(assert (=> b!1496912 (= res!1018237 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1496922 () Bool)

(assert (=> b!1496922 (= e!838375 e!838371)))

(declare-fun res!1018235 () Bool)

(assert (=> b!1496922 (=> res!1018235 e!838371)))

(assert (=> b!1496922 (= res!1018235 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652227 #b00000000000000000000000000000000) (bvsge lt!652227 (size!48700 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496922 (= lt!652227 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1496923 () Bool)

(declare-fun res!1018230 () Bool)

(assert (=> b!1496923 (=> (not res!1018230) (not e!838373))))

(assert (=> b!1496923 (= res!1018230 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!127404 res!1018241) b!1496902))

(assert (= (and b!1496902 res!1018243) b!1496907))

(assert (= (and b!1496907 res!1018229) b!1496910))

(assert (= (and b!1496910 res!1018228) b!1496923))

(assert (= (and b!1496923 res!1018230) b!1496917))

(assert (= (and b!1496917 res!1018233) b!1496903))

(assert (= (and b!1496903 res!1018240) b!1496904))

(assert (= (and b!1496904 res!1018245) b!1496919))

(assert (= (and b!1496919 res!1018239) b!1496920))

(assert (= (and b!1496920 res!1018236) b!1496905))

(assert (= (and b!1496905 res!1018234) b!1496906))

(assert (= (and b!1496906 c!138875) b!1496916))

(assert (= (and b!1496906 (not c!138875)) b!1496914))

(assert (= (and b!1496906 res!1018231) b!1496912))

(assert (= (and b!1496912 res!1018237) b!1496909))

(assert (= (and b!1496909 (not res!1018242)) b!1496922))

(assert (= (and b!1496922 (not res!1018235)) b!1496908))

(assert (= (and b!1496908 (not res!1018232)) b!1496921))

(assert (= (and b!1496921 c!138874) b!1496918))

(assert (= (and b!1496921 (not c!138874)) b!1496915))

(assert (= (and b!1496921 (not res!1018238)) b!1496913))

(assert (= (and b!1496913 (not res!1018244)) b!1496911))

(declare-fun m!1380081 () Bool)

(assert (=> b!1496920 m!1380081))

(assert (=> b!1496920 m!1380081))

(declare-fun m!1380083 () Bool)

(assert (=> b!1496920 m!1380083))

(declare-fun m!1380085 () Bool)

(assert (=> b!1496909 m!1380085))

(declare-fun m!1380087 () Bool)

(assert (=> b!1496909 m!1380087))

(declare-fun m!1380089 () Bool)

(assert (=> b!1496909 m!1380089))

(declare-fun m!1380091 () Bool)

(assert (=> b!1496909 m!1380091))

(declare-fun m!1380093 () Bool)

(assert (=> b!1496909 m!1380093))

(assert (=> b!1496909 m!1380081))

(declare-fun m!1380095 () Bool)

(assert (=> b!1496909 m!1380095))

(declare-fun m!1380097 () Bool)

(assert (=> b!1496909 m!1380097))

(assert (=> b!1496909 m!1380081))

(declare-fun m!1380099 () Bool)

(assert (=> b!1496914 m!1380099))

(declare-fun m!1380101 () Bool)

(assert (=> b!1496914 m!1380101))

(assert (=> b!1496908 m!1380081))

(assert (=> b!1496908 m!1380081))

(declare-fun m!1380103 () Bool)

(assert (=> b!1496908 m!1380103))

(declare-fun m!1380105 () Bool)

(assert (=> b!1496923 m!1380105))

(assert (=> b!1496911 m!1380101))

(declare-fun m!1380107 () Bool)

(assert (=> b!1496911 m!1380107))

(declare-fun m!1380109 () Bool)

(assert (=> b!1496922 m!1380109))

(assert (=> b!1496910 m!1380081))

(assert (=> b!1496910 m!1380081))

(declare-fun m!1380111 () Bool)

(assert (=> b!1496910 m!1380111))

(declare-fun m!1380113 () Bool)

(assert (=> b!1496916 m!1380113))

(declare-fun m!1380115 () Bool)

(assert (=> start!127404 m!1380115))

(declare-fun m!1380117 () Bool)

(assert (=> start!127404 m!1380117))

(declare-fun m!1380119 () Bool)

(assert (=> b!1496915 m!1380119))

(assert (=> b!1496915 m!1380101))

(declare-fun m!1380121 () Bool)

(assert (=> b!1496905 m!1380121))

(assert (=> b!1496905 m!1380121))

(declare-fun m!1380123 () Bool)

(assert (=> b!1496905 m!1380123))

(assert (=> b!1496905 m!1380087))

(declare-fun m!1380125 () Bool)

(assert (=> b!1496905 m!1380125))

(assert (=> b!1496904 m!1380087))

(declare-fun m!1380127 () Bool)

(assert (=> b!1496904 m!1380127))

(declare-fun m!1380129 () Bool)

(assert (=> b!1496907 m!1380129))

(assert (=> b!1496907 m!1380129))

(declare-fun m!1380131 () Bool)

(assert (=> b!1496907 m!1380131))

(declare-fun m!1380133 () Bool)

(assert (=> b!1496918 m!1380133))

(declare-fun m!1380135 () Bool)

(assert (=> b!1496917 m!1380135))

(assert (=> b!1496919 m!1380081))

(assert (=> b!1496919 m!1380081))

(declare-fun m!1380137 () Bool)

(assert (=> b!1496919 m!1380137))

(assert (=> b!1496919 m!1380137))

(assert (=> b!1496919 m!1380081))

(declare-fun m!1380139 () Bool)

(assert (=> b!1496919 m!1380139))

(check-sat (not b!1496915) (not b!1496916) (not b!1496905) (not b!1496914) (not b!1496909) (not b!1496908) (not b!1496911) (not b!1496910) (not b!1496918) (not start!127404) (not b!1496907) (not b!1496922) (not b!1496923) (not b!1496920) (not b!1496917) (not b!1496919))
