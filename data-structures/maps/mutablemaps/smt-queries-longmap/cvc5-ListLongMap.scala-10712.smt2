; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125452 () Bool)

(assert start!125452)

(declare-fun b!1466917 () Bool)

(declare-fun res!995646 () Bool)

(declare-fun e!824070 () Bool)

(assert (=> b!1466917 (=> res!995646 e!824070)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1466917 (= res!995646 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1466918 () Bool)

(declare-fun res!995638 () Bool)

(declare-fun e!824069 () Bool)

(assert (=> b!1466918 (=> (not res!995638) (not e!824069))))

(declare-fun e!824074 () Bool)

(assert (=> b!1466918 (= res!995638 e!824074)))

(declare-fun c!135158 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1466918 (= c!135158 (bvsle x!665 intermediateAfterX!19))))

(declare-fun lt!641901 () (_ BitVec 64))

(declare-datatypes ((array!98817 0))(
  ( (array!98818 (arr!47692 (Array (_ BitVec 32) (_ BitVec 64))) (size!48243 (_ BitVec 32))) )
))
(declare-fun lt!641898 () array!98817)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1466919 () Bool)

(declare-datatypes ((SeekEntryResult!11967 0))(
  ( (MissingZero!11967 (index!50259 (_ BitVec 32))) (Found!11967 (index!50260 (_ BitVec 32))) (Intermediate!11967 (undefined!12779 Bool) (index!50261 (_ BitVec 32)) (x!131835 (_ BitVec 32))) (Undefined!11967) (MissingVacant!11967 (index!50262 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98817 (_ BitVec 32)) SeekEntryResult!11967)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98817 (_ BitVec 32)) SeekEntryResult!11967)

(assert (=> b!1466919 (= e!824074 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641901 lt!641898 mask!2687) (seekEntryOrOpen!0 lt!641901 lt!641898 mask!2687)))))

(declare-fun b!1466920 () Bool)

(declare-fun res!995632 () Bool)

(declare-fun e!824075 () Bool)

(assert (=> b!1466920 (=> (not res!995632) (not e!824075))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!641900 () SeekEntryResult!11967)

(declare-fun a!2862 () array!98817)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98817 (_ BitVec 32)) SeekEntryResult!11967)

(assert (=> b!1466920 (= res!995632 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47692 a!2862) j!93) a!2862 mask!2687) lt!641900))))

(declare-fun b!1466921 () Bool)

(assert (=> b!1466921 (= e!824075 e!824069)))

(declare-fun res!995644 () Bool)

(assert (=> b!1466921 (=> (not res!995644) (not e!824069))))

(declare-fun lt!641896 () SeekEntryResult!11967)

(assert (=> b!1466921 (= res!995644 (= lt!641896 (Intermediate!11967 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466921 (= lt!641896 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641901 mask!2687) lt!641901 lt!641898 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1466921 (= lt!641901 (select (store (arr!47692 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1466922 () Bool)

(assert (=> b!1466922 (= e!824070 true)))

(declare-fun lt!641895 () SeekEntryResult!11967)

(assert (=> b!1466922 (= lt!641895 (seekEntryOrOpen!0 lt!641901 lt!641898 mask!2687))))

(declare-datatypes ((Unit!49378 0))(
  ( (Unit!49379) )
))
(declare-fun lt!641902 () Unit!49378)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!641897 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98817 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49378)

(assert (=> b!1466922 (= lt!641902 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641897 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1466923 () Bool)

(declare-fun res!995629 () Bool)

(assert (=> b!1466923 (=> res!995629 e!824070)))

(assert (=> b!1466923 (= res!995629 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641897 (select (arr!47692 a!2862) j!93) a!2862 mask!2687) lt!641900)))))

(declare-fun b!1466924 () Bool)

(declare-fun e!824072 () Bool)

(assert (=> b!1466924 (= e!824072 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641897 intermediateAfterIndex!19 lt!641901 lt!641898 mask!2687) (seekEntryOrOpen!0 lt!641901 lt!641898 mask!2687))))))

(declare-fun b!1466925 () Bool)

(declare-fun res!995639 () Bool)

(assert (=> b!1466925 (=> res!995639 e!824070)))

(assert (=> b!1466925 (= res!995639 e!824072)))

(declare-fun c!135157 () Bool)

(assert (=> b!1466925 (= c!135157 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1466926 () Bool)

(declare-fun res!995633 () Bool)

(declare-fun e!824073 () Bool)

(assert (=> b!1466926 (=> (not res!995633) (not e!824073))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98817 (_ BitVec 32)) Bool)

(assert (=> b!1466926 (= res!995633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1466927 () Bool)

(declare-fun e!824067 () Bool)

(assert (=> b!1466927 (= e!824067 e!824075)))

(declare-fun res!995641 () Bool)

(assert (=> b!1466927 (=> (not res!995641) (not e!824075))))

(assert (=> b!1466927 (= res!995641 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47692 a!2862) j!93) mask!2687) (select (arr!47692 a!2862) j!93) a!2862 mask!2687) lt!641900))))

(assert (=> b!1466927 (= lt!641900 (Intermediate!11967 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1466928 () Bool)

(assert (=> b!1466928 (= e!824073 e!824067)))

(declare-fun res!995631 () Bool)

(assert (=> b!1466928 (=> (not res!995631) (not e!824067))))

(assert (=> b!1466928 (= res!995631 (= (select (store (arr!47692 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1466928 (= lt!641898 (array!98818 (store (arr!47692 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48243 a!2862)))))

(declare-fun res!995637 () Bool)

(assert (=> start!125452 (=> (not res!995637) (not e!824073))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125452 (= res!995637 (validMask!0 mask!2687))))

(assert (=> start!125452 e!824073))

(assert (=> start!125452 true))

(declare-fun array_inv!36637 (array!98817) Bool)

(assert (=> start!125452 (array_inv!36637 a!2862)))

(declare-fun b!1466929 () Bool)

(assert (=> b!1466929 (= e!824072 (not (= lt!641896 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641897 lt!641901 lt!641898 mask!2687))))))

(declare-fun b!1466930 () Bool)

(declare-fun res!995630 () Bool)

(assert (=> b!1466930 (=> (not res!995630) (not e!824073))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1466930 (= res!995630 (validKeyInArray!0 (select (arr!47692 a!2862) j!93)))))

(declare-fun b!1466931 () Bool)

(declare-fun e!824071 () Bool)

(assert (=> b!1466931 (= e!824071 e!824070)))

(declare-fun res!995640 () Bool)

(assert (=> b!1466931 (=> res!995640 e!824070)))

(assert (=> b!1466931 (= res!995640 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641897 #b00000000000000000000000000000000) (bvsge lt!641897 (size!48243 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466931 (= lt!641897 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1466932 () Bool)

(assert (=> b!1466932 (= e!824069 (not e!824071))))

(declare-fun res!995635 () Bool)

(assert (=> b!1466932 (=> res!995635 e!824071)))

(assert (=> b!1466932 (= res!995635 (or (and (= (select (arr!47692 a!2862) index!646) (select (store (arr!47692 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47692 a!2862) index!646) (select (arr!47692 a!2862) j!93))) (= (select (arr!47692 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1466932 (and (= lt!641895 (Found!11967 j!93)) (or (= (select (arr!47692 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47692 a!2862) intermediateBeforeIndex!19) (select (arr!47692 a!2862) j!93))))))

(assert (=> b!1466932 (= lt!641895 (seekEntryOrOpen!0 (select (arr!47692 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1466932 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!641899 () Unit!49378)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98817 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49378)

(assert (=> b!1466932 (= lt!641899 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1466933 () Bool)

(declare-fun res!995642 () Bool)

(assert (=> b!1466933 (=> (not res!995642) (not e!824069))))

(assert (=> b!1466933 (= res!995642 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1466934 () Bool)

(assert (=> b!1466934 (= e!824074 (= lt!641896 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641901 lt!641898 mask!2687)))))

(declare-fun b!1466935 () Bool)

(declare-fun res!995636 () Bool)

(assert (=> b!1466935 (=> (not res!995636) (not e!824073))))

(assert (=> b!1466935 (= res!995636 (validKeyInArray!0 (select (arr!47692 a!2862) i!1006)))))

(declare-fun b!1466936 () Bool)

(declare-fun res!995643 () Bool)

(assert (=> b!1466936 (=> (not res!995643) (not e!824073))))

(assert (=> b!1466936 (= res!995643 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48243 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48243 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48243 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1466937 () Bool)

(declare-fun res!995645 () Bool)

(assert (=> b!1466937 (=> (not res!995645) (not e!824073))))

(declare-datatypes ((List!34373 0))(
  ( (Nil!34370) (Cons!34369 (h!35719 (_ BitVec 64)) (t!49074 List!34373)) )
))
(declare-fun arrayNoDuplicates!0 (array!98817 (_ BitVec 32) List!34373) Bool)

(assert (=> b!1466937 (= res!995645 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34370))))

(declare-fun b!1466938 () Bool)

(declare-fun res!995634 () Bool)

(assert (=> b!1466938 (=> (not res!995634) (not e!824073))))

(assert (=> b!1466938 (= res!995634 (and (= (size!48243 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48243 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48243 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125452 res!995637) b!1466938))

(assert (= (and b!1466938 res!995634) b!1466935))

(assert (= (and b!1466935 res!995636) b!1466930))

(assert (= (and b!1466930 res!995630) b!1466926))

(assert (= (and b!1466926 res!995633) b!1466937))

(assert (= (and b!1466937 res!995645) b!1466936))

(assert (= (and b!1466936 res!995643) b!1466928))

(assert (= (and b!1466928 res!995631) b!1466927))

(assert (= (and b!1466927 res!995641) b!1466920))

(assert (= (and b!1466920 res!995632) b!1466921))

(assert (= (and b!1466921 res!995644) b!1466918))

(assert (= (and b!1466918 c!135158) b!1466934))

(assert (= (and b!1466918 (not c!135158)) b!1466919))

(assert (= (and b!1466918 res!995638) b!1466933))

(assert (= (and b!1466933 res!995642) b!1466932))

(assert (= (and b!1466932 (not res!995635)) b!1466931))

(assert (= (and b!1466931 (not res!995640)) b!1466923))

(assert (= (and b!1466923 (not res!995629)) b!1466925))

(assert (= (and b!1466925 c!135157) b!1466929))

(assert (= (and b!1466925 (not c!135157)) b!1466924))

(assert (= (and b!1466925 (not res!995639)) b!1466917))

(assert (= (and b!1466917 (not res!995646)) b!1466922))

(declare-fun m!1353915 () Bool)

(assert (=> b!1466927 m!1353915))

(assert (=> b!1466927 m!1353915))

(declare-fun m!1353917 () Bool)

(assert (=> b!1466927 m!1353917))

(assert (=> b!1466927 m!1353917))

(assert (=> b!1466927 m!1353915))

(declare-fun m!1353919 () Bool)

(assert (=> b!1466927 m!1353919))

(declare-fun m!1353921 () Bool)

(assert (=> b!1466932 m!1353921))

(declare-fun m!1353923 () Bool)

(assert (=> b!1466932 m!1353923))

(declare-fun m!1353925 () Bool)

(assert (=> b!1466932 m!1353925))

(declare-fun m!1353927 () Bool)

(assert (=> b!1466932 m!1353927))

(declare-fun m!1353929 () Bool)

(assert (=> b!1466932 m!1353929))

(assert (=> b!1466932 m!1353915))

(declare-fun m!1353931 () Bool)

(assert (=> b!1466932 m!1353931))

(declare-fun m!1353933 () Bool)

(assert (=> b!1466932 m!1353933))

(assert (=> b!1466932 m!1353915))

(assert (=> b!1466920 m!1353915))

(assert (=> b!1466920 m!1353915))

(declare-fun m!1353935 () Bool)

(assert (=> b!1466920 m!1353935))

(declare-fun m!1353937 () Bool)

(assert (=> b!1466922 m!1353937))

(declare-fun m!1353939 () Bool)

(assert (=> b!1466922 m!1353939))

(declare-fun m!1353941 () Bool)

(assert (=> b!1466929 m!1353941))

(declare-fun m!1353943 () Bool)

(assert (=> b!1466924 m!1353943))

(assert (=> b!1466924 m!1353937))

(assert (=> b!1466923 m!1353915))

(assert (=> b!1466923 m!1353915))

(declare-fun m!1353945 () Bool)

(assert (=> b!1466923 m!1353945))

(declare-fun m!1353947 () Bool)

(assert (=> b!1466926 m!1353947))

(declare-fun m!1353949 () Bool)

(assert (=> b!1466937 m!1353949))

(declare-fun m!1353951 () Bool)

(assert (=> b!1466921 m!1353951))

(assert (=> b!1466921 m!1353951))

(declare-fun m!1353953 () Bool)

(assert (=> b!1466921 m!1353953))

(assert (=> b!1466921 m!1353923))

(declare-fun m!1353955 () Bool)

(assert (=> b!1466921 m!1353955))

(assert (=> b!1466930 m!1353915))

(assert (=> b!1466930 m!1353915))

(declare-fun m!1353957 () Bool)

(assert (=> b!1466930 m!1353957))

(declare-fun m!1353959 () Bool)

(assert (=> start!125452 m!1353959))

(declare-fun m!1353961 () Bool)

(assert (=> start!125452 m!1353961))

(assert (=> b!1466928 m!1353923))

(declare-fun m!1353963 () Bool)

(assert (=> b!1466928 m!1353963))

(declare-fun m!1353965 () Bool)

(assert (=> b!1466934 m!1353965))

(declare-fun m!1353967 () Bool)

(assert (=> b!1466919 m!1353967))

(assert (=> b!1466919 m!1353937))

(declare-fun m!1353969 () Bool)

(assert (=> b!1466935 m!1353969))

(assert (=> b!1466935 m!1353969))

(declare-fun m!1353971 () Bool)

(assert (=> b!1466935 m!1353971))

(declare-fun m!1353973 () Bool)

(assert (=> b!1466931 m!1353973))

(push 1)

