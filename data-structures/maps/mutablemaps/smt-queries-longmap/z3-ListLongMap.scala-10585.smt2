; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124692 () Bool)

(assert start!124692)

(declare-fun e!813633 () Bool)

(declare-fun lt!633990 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1443923 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!98057 0))(
  ( (array!98058 (arr!47312 (Array (_ BitVec 32) (_ BitVec 64))) (size!47863 (_ BitVec 32))) )
))
(declare-fun lt!633992 () array!98057)

(declare-datatypes ((SeekEntryResult!11587 0))(
  ( (MissingZero!11587 (index!48739 (_ BitVec 32))) (Found!11587 (index!48740 (_ BitVec 32))) (Intermediate!11587 (undefined!12399 Bool) (index!48741 (_ BitVec 32)) (x!130439 (_ BitVec 32))) (Undefined!11587) (MissingVacant!11587 (index!48742 (_ BitVec 32))) )
))
(declare-fun lt!633994 () SeekEntryResult!11587)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98057 (_ BitVec 32)) SeekEntryResult!11587)

(assert (=> b!1443923 (= e!813633 (= lt!633994 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633990 lt!633992 mask!2687)))))

(declare-fun res!976074 () Bool)

(declare-fun e!813637 () Bool)

(assert (=> start!124692 (=> (not res!976074) (not e!813637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124692 (= res!976074 (validMask!0 mask!2687))))

(assert (=> start!124692 e!813637))

(assert (=> start!124692 true))

(declare-fun a!2862 () array!98057)

(declare-fun array_inv!36257 (array!98057) Bool)

(assert (=> start!124692 (array_inv!36257 a!2862)))

(declare-fun b!1443924 () Bool)

(declare-fun e!813631 () Bool)

(declare-fun e!813636 () Bool)

(assert (=> b!1443924 (= e!813631 e!813636)))

(declare-fun res!976078 () Bool)

(assert (=> b!1443924 (=> (not res!976078) (not e!813636))))

(declare-fun lt!633993 () SeekEntryResult!11587)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1443924 (= res!976078 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47312 a!2862) j!93) mask!2687) (select (arr!47312 a!2862) j!93) a!2862 mask!2687) lt!633993))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1443924 (= lt!633993 (Intermediate!11587 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1443925 () Bool)

(declare-fun e!813634 () Bool)

(declare-fun e!813638 () Bool)

(assert (=> b!1443925 (= e!813634 (not e!813638))))

(declare-fun res!976077 () Bool)

(assert (=> b!1443925 (=> res!976077 e!813638)))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1443925 (= res!976077 (or (not (= (select (arr!47312 a!2862) index!646) (select (store (arr!47312 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47312 a!2862) index!646) (select (arr!47312 a!2862) j!93)))))))

(declare-fun e!813635 () Bool)

(assert (=> b!1443925 e!813635))

(declare-fun res!976086 () Bool)

(assert (=> b!1443925 (=> (not res!976086) (not e!813635))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98057 (_ BitVec 32)) Bool)

(assert (=> b!1443925 (= res!976086 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48618 0))(
  ( (Unit!48619) )
))
(declare-fun lt!633989 () Unit!48618)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98057 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48618)

(assert (=> b!1443925 (= lt!633989 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1443926 () Bool)

(declare-fun res!976082 () Bool)

(assert (=> b!1443926 (=> (not res!976082) (not e!813636))))

(assert (=> b!1443926 (= res!976082 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47312 a!2862) j!93) a!2862 mask!2687) lt!633993))))

(declare-fun b!1443927 () Bool)

(declare-fun res!976081 () Bool)

(assert (=> b!1443927 (=> (not res!976081) (not e!813637))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1443927 (= res!976081 (validKeyInArray!0 (select (arr!47312 a!2862) i!1006)))))

(declare-fun b!1443928 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98057 (_ BitVec 32)) SeekEntryResult!11587)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98057 (_ BitVec 32)) SeekEntryResult!11587)

(assert (=> b!1443928 (= e!813633 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633990 lt!633992 mask!2687) (seekEntryOrOpen!0 lt!633990 lt!633992 mask!2687)))))

(declare-fun b!1443929 () Bool)

(assert (=> b!1443929 (= e!813636 e!813634)))

(declare-fun res!976073 () Bool)

(assert (=> b!1443929 (=> (not res!976073) (not e!813634))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1443929 (= res!976073 (= lt!633994 (Intermediate!11587 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1443929 (= lt!633994 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633990 mask!2687) lt!633990 lt!633992 mask!2687))))

(assert (=> b!1443929 (= lt!633990 (select (store (arr!47312 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1443930 () Bool)

(declare-fun res!976076 () Bool)

(assert (=> b!1443930 (=> (not res!976076) (not e!813635))))

(assert (=> b!1443930 (= res!976076 (= (seekEntryOrOpen!0 (select (arr!47312 a!2862) j!93) a!2862 mask!2687) (Found!11587 j!93)))))

(declare-fun b!1443931 () Bool)

(declare-fun res!976075 () Bool)

(assert (=> b!1443931 (=> (not res!976075) (not e!813637))))

(assert (=> b!1443931 (= res!976075 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47863 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47863 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47863 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1443932 () Bool)

(declare-fun res!976083 () Bool)

(assert (=> b!1443932 (=> (not res!976083) (not e!813634))))

(assert (=> b!1443932 (= res!976083 e!813633)))

(declare-fun c!133439 () Bool)

(assert (=> b!1443932 (= c!133439 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1443933 () Bool)

(declare-fun res!976071 () Bool)

(assert (=> b!1443933 (=> (not res!976071) (not e!813637))))

(assert (=> b!1443933 (= res!976071 (and (= (size!47863 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47863 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47863 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1443934 () Bool)

(declare-fun res!976084 () Bool)

(assert (=> b!1443934 (=> (not res!976084) (not e!813637))))

(assert (=> b!1443934 (= res!976084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1443935 () Bool)

(declare-fun res!976085 () Bool)

(assert (=> b!1443935 (=> (not res!976085) (not e!813637))))

(assert (=> b!1443935 (= res!976085 (validKeyInArray!0 (select (arr!47312 a!2862) j!93)))))

(declare-fun b!1443936 () Bool)

(assert (=> b!1443936 (= e!813638 true)))

(declare-fun lt!633991 () SeekEntryResult!11587)

(assert (=> b!1443936 (= lt!633991 (seekEntryOrOpen!0 lt!633990 lt!633992 mask!2687))))

(declare-fun b!1443937 () Bool)

(declare-fun res!976080 () Bool)

(assert (=> b!1443937 (=> (not res!976080) (not e!813634))))

(assert (=> b!1443937 (= res!976080 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1443938 () Bool)

(assert (=> b!1443938 (= e!813637 e!813631)))

(declare-fun res!976072 () Bool)

(assert (=> b!1443938 (=> (not res!976072) (not e!813631))))

(assert (=> b!1443938 (= res!976072 (= (select (store (arr!47312 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1443938 (= lt!633992 (array!98058 (store (arr!47312 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47863 a!2862)))))

(declare-fun b!1443939 () Bool)

(declare-fun res!976079 () Bool)

(assert (=> b!1443939 (=> (not res!976079) (not e!813637))))

(declare-datatypes ((List!33993 0))(
  ( (Nil!33990) (Cons!33989 (h!35339 (_ BitVec 64)) (t!48694 List!33993)) )
))
(declare-fun arrayNoDuplicates!0 (array!98057 (_ BitVec 32) List!33993) Bool)

(assert (=> b!1443939 (= res!976079 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33990))))

(declare-fun b!1443940 () Bool)

(assert (=> b!1443940 (= e!813635 (or (= (select (arr!47312 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47312 a!2862) intermediateBeforeIndex!19) (select (arr!47312 a!2862) j!93))))))

(assert (= (and start!124692 res!976074) b!1443933))

(assert (= (and b!1443933 res!976071) b!1443927))

(assert (= (and b!1443927 res!976081) b!1443935))

(assert (= (and b!1443935 res!976085) b!1443934))

(assert (= (and b!1443934 res!976084) b!1443939))

(assert (= (and b!1443939 res!976079) b!1443931))

(assert (= (and b!1443931 res!976075) b!1443938))

(assert (= (and b!1443938 res!976072) b!1443924))

(assert (= (and b!1443924 res!976078) b!1443926))

(assert (= (and b!1443926 res!976082) b!1443929))

(assert (= (and b!1443929 res!976073) b!1443932))

(assert (= (and b!1443932 c!133439) b!1443923))

(assert (= (and b!1443932 (not c!133439)) b!1443928))

(assert (= (and b!1443932 res!976083) b!1443937))

(assert (= (and b!1443937 res!976080) b!1443925))

(assert (= (and b!1443925 res!976086) b!1443930))

(assert (= (and b!1443930 res!976076) b!1443940))

(assert (= (and b!1443925 (not res!976077)) b!1443936))

(declare-fun m!1333025 () Bool)

(assert (=> b!1443927 m!1333025))

(assert (=> b!1443927 m!1333025))

(declare-fun m!1333027 () Bool)

(assert (=> b!1443927 m!1333027))

(declare-fun m!1333029 () Bool)

(assert (=> b!1443925 m!1333029))

(declare-fun m!1333031 () Bool)

(assert (=> b!1443925 m!1333031))

(declare-fun m!1333033 () Bool)

(assert (=> b!1443925 m!1333033))

(declare-fun m!1333035 () Bool)

(assert (=> b!1443925 m!1333035))

(declare-fun m!1333037 () Bool)

(assert (=> b!1443925 m!1333037))

(declare-fun m!1333039 () Bool)

(assert (=> b!1443925 m!1333039))

(declare-fun m!1333041 () Bool)

(assert (=> b!1443940 m!1333041))

(assert (=> b!1443940 m!1333039))

(declare-fun m!1333043 () Bool)

(assert (=> b!1443928 m!1333043))

(declare-fun m!1333045 () Bool)

(assert (=> b!1443928 m!1333045))

(assert (=> b!1443924 m!1333039))

(assert (=> b!1443924 m!1333039))

(declare-fun m!1333047 () Bool)

(assert (=> b!1443924 m!1333047))

(assert (=> b!1443924 m!1333047))

(assert (=> b!1443924 m!1333039))

(declare-fun m!1333049 () Bool)

(assert (=> b!1443924 m!1333049))

(declare-fun m!1333051 () Bool)

(assert (=> b!1443934 m!1333051))

(assert (=> b!1443926 m!1333039))

(assert (=> b!1443926 m!1333039))

(declare-fun m!1333053 () Bool)

(assert (=> b!1443926 m!1333053))

(declare-fun m!1333055 () Bool)

(assert (=> b!1443923 m!1333055))

(declare-fun m!1333057 () Bool)

(assert (=> start!124692 m!1333057))

(declare-fun m!1333059 () Bool)

(assert (=> start!124692 m!1333059))

(declare-fun m!1333061 () Bool)

(assert (=> b!1443939 m!1333061))

(declare-fun m!1333063 () Bool)

(assert (=> b!1443929 m!1333063))

(assert (=> b!1443929 m!1333063))

(declare-fun m!1333065 () Bool)

(assert (=> b!1443929 m!1333065))

(assert (=> b!1443929 m!1333031))

(declare-fun m!1333067 () Bool)

(assert (=> b!1443929 m!1333067))

(assert (=> b!1443930 m!1333039))

(assert (=> b!1443930 m!1333039))

(declare-fun m!1333069 () Bool)

(assert (=> b!1443930 m!1333069))

(assert (=> b!1443935 m!1333039))

(assert (=> b!1443935 m!1333039))

(declare-fun m!1333071 () Bool)

(assert (=> b!1443935 m!1333071))

(assert (=> b!1443938 m!1333031))

(declare-fun m!1333073 () Bool)

(assert (=> b!1443938 m!1333073))

(assert (=> b!1443936 m!1333045))

(check-sat (not b!1443939) (not start!124692) (not b!1443929) (not b!1443936) (not b!1443930) (not b!1443925) (not b!1443927) (not b!1443923) (not b!1443926) (not b!1443928) (not b!1443935) (not b!1443924) (not b!1443934))
(check-sat)
