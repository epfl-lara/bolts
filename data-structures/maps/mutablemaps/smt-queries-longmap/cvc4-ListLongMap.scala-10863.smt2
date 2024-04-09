; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127400 () Bool)

(assert start!127400)

(declare-fun b!1496770 () Bool)

(declare-fun e!838321 () Bool)

(assert (=> b!1496770 (= e!838321 true)))

(declare-datatypes ((SeekEntryResult!12410 0))(
  ( (MissingZero!12410 (index!52031 (_ BitVec 32))) (Found!12410 (index!52032 (_ BitVec 32))) (Intermediate!12410 (undefined!13222 Bool) (index!52033 (_ BitVec 32)) (x!133657 (_ BitVec 32))) (Undefined!12410) (MissingVacant!12410 (index!52034 (_ BitVec 32))) )
))
(declare-fun lt!652178 () SeekEntryResult!12410)

(declare-datatypes ((array!99775 0))(
  ( (array!99776 (arr!48147 (Array (_ BitVec 32) (_ BitVec 64))) (size!48698 (_ BitVec 32))) )
))
(declare-fun lt!652173 () array!99775)

(declare-fun lt!652175 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99775 (_ BitVec 32)) SeekEntryResult!12410)

(assert (=> b!1496770 (= lt!652178 (seekEntryOrOpen!0 lt!652175 lt!652173 mask!2687))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((Unit!50108 0))(
  ( (Unit!50109) )
))
(declare-fun lt!652180 () Unit!50108)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!652174 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99775)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99775 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50108)

(assert (=> b!1496770 (= lt!652180 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!652174 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1496771 () Bool)

(declare-fun res!1018129 () Bool)

(assert (=> b!1496771 (=> res!1018129 e!838321)))

(assert (=> b!1496771 (= res!1018129 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1496772 () Bool)

(declare-fun e!838318 () Bool)

(declare-fun lt!652177 () SeekEntryResult!12410)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99775 (_ BitVec 32)) SeekEntryResult!12410)

(assert (=> b!1496772 (= e!838318 (not (= lt!652177 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652174 lt!652175 lt!652173 mask!2687))))))

(declare-fun b!1496773 () Bool)

(declare-fun res!1018125 () Bool)

(declare-fun e!838315 () Bool)

(assert (=> b!1496773 (=> (not res!1018125) (not e!838315))))

(assert (=> b!1496773 (= res!1018125 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1018135 () Bool)

(declare-fun e!838316 () Bool)

(assert (=> start!127400 (=> (not res!1018135) (not e!838316))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127400 (= res!1018135 (validMask!0 mask!2687))))

(assert (=> start!127400 e!838316))

(assert (=> start!127400 true))

(declare-fun array_inv!37092 (array!99775) Bool)

(assert (=> start!127400 (array_inv!37092 a!2862)))

(declare-fun e!838314 () Bool)

(declare-fun b!1496774 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1496774 (= e!838314 (= lt!652177 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652175 lt!652173 mask!2687)))))

(declare-fun b!1496775 () Bool)

(declare-fun res!1018121 () Bool)

(assert (=> b!1496775 (=> (not res!1018121) (not e!838316))))

(declare-datatypes ((List!34828 0))(
  ( (Nil!34825) (Cons!34824 (h!36222 (_ BitVec 64)) (t!49529 List!34828)) )
))
(declare-fun arrayNoDuplicates!0 (array!99775 (_ BitVec 32) List!34828) Bool)

(assert (=> b!1496775 (= res!1018121 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34825))))

(declare-fun b!1496776 () Bool)

(declare-fun res!1018122 () Bool)

(declare-fun e!838320 () Bool)

(assert (=> b!1496776 (=> (not res!1018122) (not e!838320))))

(declare-fun lt!652179 () SeekEntryResult!12410)

(assert (=> b!1496776 (= res!1018122 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48147 a!2862) j!93) a!2862 mask!2687) lt!652179))))

(declare-fun b!1496777 () Bool)

(declare-fun res!1018128 () Bool)

(assert (=> b!1496777 (=> res!1018128 e!838321)))

(assert (=> b!1496777 (= res!1018128 e!838318)))

(declare-fun c!138862 () Bool)

(assert (=> b!1496777 (= c!138862 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1496778 () Bool)

(declare-fun res!1018134 () Bool)

(assert (=> b!1496778 (=> (not res!1018134) (not e!838315))))

(assert (=> b!1496778 (= res!1018134 e!838314)))

(declare-fun c!138863 () Bool)

(assert (=> b!1496778 (= c!138863 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1496779 () Bool)

(declare-fun res!1018120 () Bool)

(assert (=> b!1496779 (=> (not res!1018120) (not e!838316))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99775 (_ BitVec 32)) Bool)

(assert (=> b!1496779 (= res!1018120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1496780 () Bool)

(declare-fun e!838322 () Bool)

(assert (=> b!1496780 (= e!838322 e!838321)))

(declare-fun res!1018137 () Bool)

(assert (=> b!1496780 (=> res!1018137 e!838321)))

(assert (=> b!1496780 (= res!1018137 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652174 #b00000000000000000000000000000000) (bvsge lt!652174 (size!48698 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496780 (= lt!652174 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1496781 () Bool)

(declare-fun res!1018123 () Bool)

(assert (=> b!1496781 (=> (not res!1018123) (not e!838316))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1496781 (= res!1018123 (validKeyInArray!0 (select (arr!48147 a!2862) j!93)))))

(declare-fun b!1496782 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99775 (_ BitVec 32)) SeekEntryResult!12410)

(assert (=> b!1496782 (= e!838314 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652175 lt!652173 mask!2687) (seekEntryOrOpen!0 lt!652175 lt!652173 mask!2687)))))

(declare-fun b!1496783 () Bool)

(declare-fun res!1018124 () Bool)

(assert (=> b!1496783 (=> res!1018124 e!838321)))

(assert (=> b!1496783 (= res!1018124 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652174 (select (arr!48147 a!2862) j!93) a!2862 mask!2687) lt!652179)))))

(declare-fun b!1496784 () Bool)

(declare-fun e!838319 () Bool)

(assert (=> b!1496784 (= e!838316 e!838319)))

(declare-fun res!1018127 () Bool)

(assert (=> b!1496784 (=> (not res!1018127) (not e!838319))))

(assert (=> b!1496784 (= res!1018127 (= (select (store (arr!48147 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1496784 (= lt!652173 (array!99776 (store (arr!48147 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48698 a!2862)))))

(declare-fun b!1496785 () Bool)

(declare-fun res!1018131 () Bool)

(assert (=> b!1496785 (=> (not res!1018131) (not e!838316))))

(assert (=> b!1496785 (= res!1018131 (validKeyInArray!0 (select (arr!48147 a!2862) i!1006)))))

(declare-fun b!1496786 () Bool)

(assert (=> b!1496786 (= e!838318 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652174 intermediateAfterIndex!19 lt!652175 lt!652173 mask!2687) (seekEntryOrOpen!0 lt!652175 lt!652173 mask!2687))))))

(declare-fun b!1496787 () Bool)

(assert (=> b!1496787 (= e!838319 e!838320)))

(declare-fun res!1018132 () Bool)

(assert (=> b!1496787 (=> (not res!1018132) (not e!838320))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496787 (= res!1018132 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48147 a!2862) j!93) mask!2687) (select (arr!48147 a!2862) j!93) a!2862 mask!2687) lt!652179))))

(assert (=> b!1496787 (= lt!652179 (Intermediate!12410 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1496788 () Bool)

(assert (=> b!1496788 (= e!838320 e!838315)))

(declare-fun res!1018136 () Bool)

(assert (=> b!1496788 (=> (not res!1018136) (not e!838315))))

(assert (=> b!1496788 (= res!1018136 (= lt!652177 (Intermediate!12410 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1496788 (= lt!652177 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652175 mask!2687) lt!652175 lt!652173 mask!2687))))

(assert (=> b!1496788 (= lt!652175 (select (store (arr!48147 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1496789 () Bool)

(assert (=> b!1496789 (= e!838315 (not e!838322))))

(declare-fun res!1018130 () Bool)

(assert (=> b!1496789 (=> res!1018130 e!838322)))

(assert (=> b!1496789 (= res!1018130 (or (and (= (select (arr!48147 a!2862) index!646) (select (store (arr!48147 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48147 a!2862) index!646) (select (arr!48147 a!2862) j!93))) (= (select (arr!48147 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1496789 (and (= lt!652178 (Found!12410 j!93)) (or (= (select (arr!48147 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48147 a!2862) intermediateBeforeIndex!19) (select (arr!48147 a!2862) j!93))))))

(assert (=> b!1496789 (= lt!652178 (seekEntryOrOpen!0 (select (arr!48147 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1496789 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!652176 () Unit!50108)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99775 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50108)

(assert (=> b!1496789 (= lt!652176 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1496790 () Bool)

(declare-fun res!1018133 () Bool)

(assert (=> b!1496790 (=> (not res!1018133) (not e!838316))))

(assert (=> b!1496790 (= res!1018133 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48698 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48698 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48698 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1496791 () Bool)

(declare-fun res!1018126 () Bool)

(assert (=> b!1496791 (=> (not res!1018126) (not e!838316))))

(assert (=> b!1496791 (= res!1018126 (and (= (size!48698 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48698 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48698 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!127400 res!1018135) b!1496791))

(assert (= (and b!1496791 res!1018126) b!1496785))

(assert (= (and b!1496785 res!1018131) b!1496781))

(assert (= (and b!1496781 res!1018123) b!1496779))

(assert (= (and b!1496779 res!1018120) b!1496775))

(assert (= (and b!1496775 res!1018121) b!1496790))

(assert (= (and b!1496790 res!1018133) b!1496784))

(assert (= (and b!1496784 res!1018127) b!1496787))

(assert (= (and b!1496787 res!1018132) b!1496776))

(assert (= (and b!1496776 res!1018122) b!1496788))

(assert (= (and b!1496788 res!1018136) b!1496778))

(assert (= (and b!1496778 c!138863) b!1496774))

(assert (= (and b!1496778 (not c!138863)) b!1496782))

(assert (= (and b!1496778 res!1018134) b!1496773))

(assert (= (and b!1496773 res!1018125) b!1496789))

(assert (= (and b!1496789 (not res!1018130)) b!1496780))

(assert (= (and b!1496780 (not res!1018137)) b!1496783))

(assert (= (and b!1496783 (not res!1018124)) b!1496777))

(assert (= (and b!1496777 c!138862) b!1496772))

(assert (= (and b!1496777 (not c!138862)) b!1496786))

(assert (= (and b!1496777 (not res!1018128)) b!1496771))

(assert (= (and b!1496771 (not res!1018129)) b!1496770))

(declare-fun m!1379961 () Bool)

(assert (=> b!1496775 m!1379961))

(declare-fun m!1379963 () Bool)

(assert (=> b!1496782 m!1379963))

(declare-fun m!1379965 () Bool)

(assert (=> b!1496782 m!1379965))

(declare-fun m!1379967 () Bool)

(assert (=> b!1496783 m!1379967))

(assert (=> b!1496783 m!1379967))

(declare-fun m!1379969 () Bool)

(assert (=> b!1496783 m!1379969))

(assert (=> b!1496776 m!1379967))

(assert (=> b!1496776 m!1379967))

(declare-fun m!1379971 () Bool)

(assert (=> b!1496776 m!1379971))

(declare-fun m!1379973 () Bool)

(assert (=> b!1496779 m!1379973))

(assert (=> b!1496787 m!1379967))

(assert (=> b!1496787 m!1379967))

(declare-fun m!1379975 () Bool)

(assert (=> b!1496787 m!1379975))

(assert (=> b!1496787 m!1379975))

(assert (=> b!1496787 m!1379967))

(declare-fun m!1379977 () Bool)

(assert (=> b!1496787 m!1379977))

(declare-fun m!1379979 () Bool)

(assert (=> b!1496785 m!1379979))

(assert (=> b!1496785 m!1379979))

(declare-fun m!1379981 () Bool)

(assert (=> b!1496785 m!1379981))

(declare-fun m!1379983 () Bool)

(assert (=> b!1496780 m!1379983))

(declare-fun m!1379985 () Bool)

(assert (=> b!1496788 m!1379985))

(assert (=> b!1496788 m!1379985))

(declare-fun m!1379987 () Bool)

(assert (=> b!1496788 m!1379987))

(declare-fun m!1379989 () Bool)

(assert (=> b!1496788 m!1379989))

(declare-fun m!1379991 () Bool)

(assert (=> b!1496788 m!1379991))

(assert (=> b!1496781 m!1379967))

(assert (=> b!1496781 m!1379967))

(declare-fun m!1379993 () Bool)

(assert (=> b!1496781 m!1379993))

(declare-fun m!1379995 () Bool)

(assert (=> b!1496789 m!1379995))

(assert (=> b!1496789 m!1379989))

(declare-fun m!1379997 () Bool)

(assert (=> b!1496789 m!1379997))

(declare-fun m!1379999 () Bool)

(assert (=> b!1496789 m!1379999))

(declare-fun m!1380001 () Bool)

(assert (=> b!1496789 m!1380001))

(assert (=> b!1496789 m!1379967))

(declare-fun m!1380003 () Bool)

(assert (=> b!1496789 m!1380003))

(declare-fun m!1380005 () Bool)

(assert (=> b!1496789 m!1380005))

(assert (=> b!1496789 m!1379967))

(declare-fun m!1380007 () Bool)

(assert (=> b!1496786 m!1380007))

(assert (=> b!1496786 m!1379965))

(assert (=> b!1496770 m!1379965))

(declare-fun m!1380009 () Bool)

(assert (=> b!1496770 m!1380009))

(assert (=> b!1496784 m!1379989))

(declare-fun m!1380011 () Bool)

(assert (=> b!1496784 m!1380011))

(declare-fun m!1380013 () Bool)

(assert (=> b!1496774 m!1380013))

(declare-fun m!1380015 () Bool)

(assert (=> start!127400 m!1380015))

(declare-fun m!1380017 () Bool)

(assert (=> start!127400 m!1380017))

(declare-fun m!1380019 () Bool)

(assert (=> b!1496772 m!1380019))

(push 1)

