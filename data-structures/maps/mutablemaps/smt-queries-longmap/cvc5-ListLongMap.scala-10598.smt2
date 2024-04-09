; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124768 () Bool)

(assert start!124768)

(declare-fun b!1445883 () Bool)

(declare-fun res!977817 () Bool)

(declare-fun e!814443 () Bool)

(assert (=> b!1445883 (=> (not res!977817) (not e!814443))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1445883 (= res!977817 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1445884 () Bool)

(declare-fun res!977813 () Bool)

(declare-fun e!814445 () Bool)

(assert (=> b!1445884 (=> (not res!977813) (not e!814445))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((array!98133 0))(
  ( (array!98134 (arr!47350 (Array (_ BitVec 32) (_ BitVec 64))) (size!47901 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98133)

(assert (=> b!1445884 (= res!977813 (and (= (size!47901 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47901 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47901 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1445885 () Bool)

(declare-fun e!814444 () Bool)

(assert (=> b!1445885 (= e!814445 e!814444)))

(declare-fun res!977816 () Bool)

(assert (=> b!1445885 (=> (not res!977816) (not e!814444))))

(assert (=> b!1445885 (= res!977816 (= (select (store (arr!47350 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!634594 () array!98133)

(assert (=> b!1445885 (= lt!634594 (array!98134 (store (arr!47350 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47901 a!2862)))))

(declare-fun b!1445886 () Bool)

(declare-fun res!977808 () Bool)

(assert (=> b!1445886 (=> (not res!977808) (not e!814445))))

(declare-datatypes ((List!34031 0))(
  ( (Nil!34028) (Cons!34027 (h!35377 (_ BitVec 64)) (t!48732 List!34031)) )
))
(declare-fun arrayNoDuplicates!0 (array!98133 (_ BitVec 32) List!34031) Bool)

(assert (=> b!1445886 (= res!977808 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34028))))

(declare-fun b!1445887 () Bool)

(declare-fun res!977807 () Bool)

(declare-fun e!814446 () Bool)

(assert (=> b!1445887 (=> (not res!977807) (not e!814446))))

(declare-datatypes ((SeekEntryResult!11625 0))(
  ( (MissingZero!11625 (index!48891 (_ BitVec 32))) (Found!11625 (index!48892 (_ BitVec 32))) (Intermediate!11625 (undefined!12437 Bool) (index!48893 (_ BitVec 32)) (x!130581 (_ BitVec 32))) (Undefined!11625) (MissingVacant!11625 (index!48894 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98133 (_ BitVec 32)) SeekEntryResult!11625)

(assert (=> b!1445887 (= res!977807 (= (seekEntryOrOpen!0 (select (arr!47350 a!2862) j!93) a!2862 mask!2687) (Found!11625 j!93)))))

(declare-fun b!1445888 () Bool)

(declare-fun res!977804 () Bool)

(assert (=> b!1445888 (=> (not res!977804) (not e!814445))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98133 (_ BitVec 32)) Bool)

(assert (=> b!1445888 (= res!977804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1445889 () Bool)

(declare-fun res!977815 () Bool)

(assert (=> b!1445889 (=> (not res!977815) (not e!814445))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445889 (= res!977815 (validKeyInArray!0 (select (arr!47350 a!2862) i!1006)))))

(declare-fun b!1445890 () Bool)

(declare-fun res!977805 () Bool)

(declare-fun e!814447 () Bool)

(assert (=> b!1445890 (=> (not res!977805) (not e!814447))))

(declare-fun lt!634593 () SeekEntryResult!11625)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98133 (_ BitVec 32)) SeekEntryResult!11625)

(assert (=> b!1445890 (= res!977805 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47350 a!2862) j!93) a!2862 mask!2687) lt!634593))))

(declare-fun e!814448 () Bool)

(declare-fun b!1445891 () Bool)

(declare-fun lt!634591 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98133 (_ BitVec 32)) SeekEntryResult!11625)

(assert (=> b!1445891 (= e!814448 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634591 lt!634594 mask!2687) (seekEntryOrOpen!0 lt!634591 lt!634594 mask!2687)))))

(declare-fun b!1445892 () Bool)

(assert (=> b!1445892 (= e!814444 e!814447)))

(declare-fun res!977806 () Bool)

(assert (=> b!1445892 (=> (not res!977806) (not e!814447))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445892 (= res!977806 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47350 a!2862) j!93) mask!2687) (select (arr!47350 a!2862) j!93) a!2862 mask!2687) lt!634593))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1445892 (= lt!634593 (Intermediate!11625 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1445893 () Bool)

(assert (=> b!1445893 (= e!814443 (not true))))

(assert (=> b!1445893 e!814446))

(declare-fun res!977811 () Bool)

(assert (=> b!1445893 (=> (not res!977811) (not e!814446))))

(assert (=> b!1445893 (= res!977811 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48694 0))(
  ( (Unit!48695) )
))
(declare-fun lt!634592 () Unit!48694)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98133 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48694)

(assert (=> b!1445893 (= lt!634592 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!977809 () Bool)

(assert (=> start!124768 (=> (not res!977809) (not e!814445))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124768 (= res!977809 (validMask!0 mask!2687))))

(assert (=> start!124768 e!814445))

(assert (=> start!124768 true))

(declare-fun array_inv!36295 (array!98133) Bool)

(assert (=> start!124768 (array_inv!36295 a!2862)))

(declare-fun b!1445894 () Bool)

(declare-fun lt!634590 () SeekEntryResult!11625)

(assert (=> b!1445894 (= e!814448 (= lt!634590 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634591 lt!634594 mask!2687)))))

(declare-fun b!1445895 () Bool)

(assert (=> b!1445895 (= e!814447 e!814443)))

(declare-fun res!977810 () Bool)

(assert (=> b!1445895 (=> (not res!977810) (not e!814443))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1445895 (= res!977810 (= lt!634590 (Intermediate!11625 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1445895 (= lt!634590 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634591 mask!2687) lt!634591 lt!634594 mask!2687))))

(assert (=> b!1445895 (= lt!634591 (select (store (arr!47350 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1445896 () Bool)

(assert (=> b!1445896 (= e!814446 (or (= (select (arr!47350 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47350 a!2862) intermediateBeforeIndex!19) (select (arr!47350 a!2862) j!93))))))

(declare-fun b!1445897 () Bool)

(declare-fun res!977812 () Bool)

(assert (=> b!1445897 (=> (not res!977812) (not e!814443))))

(assert (=> b!1445897 (= res!977812 e!814448)))

(declare-fun c!133553 () Bool)

(assert (=> b!1445897 (= c!133553 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1445898 () Bool)

(declare-fun res!977803 () Bool)

(assert (=> b!1445898 (=> (not res!977803) (not e!814445))))

(assert (=> b!1445898 (= res!977803 (validKeyInArray!0 (select (arr!47350 a!2862) j!93)))))

(declare-fun b!1445899 () Bool)

(declare-fun res!977814 () Bool)

(assert (=> b!1445899 (=> (not res!977814) (not e!814445))))

(assert (=> b!1445899 (= res!977814 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47901 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47901 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47901 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!124768 res!977809) b!1445884))

(assert (= (and b!1445884 res!977813) b!1445889))

(assert (= (and b!1445889 res!977815) b!1445898))

(assert (= (and b!1445898 res!977803) b!1445888))

(assert (= (and b!1445888 res!977804) b!1445886))

(assert (= (and b!1445886 res!977808) b!1445899))

(assert (= (and b!1445899 res!977814) b!1445885))

(assert (= (and b!1445885 res!977816) b!1445892))

(assert (= (and b!1445892 res!977806) b!1445890))

(assert (= (and b!1445890 res!977805) b!1445895))

(assert (= (and b!1445895 res!977810) b!1445897))

(assert (= (and b!1445897 c!133553) b!1445894))

(assert (= (and b!1445897 (not c!133553)) b!1445891))

(assert (= (and b!1445897 res!977812) b!1445883))

(assert (= (and b!1445883 res!977817) b!1445893))

(assert (= (and b!1445893 res!977811) b!1445887))

(assert (= (and b!1445887 res!977807) b!1445896))

(declare-fun m!1334859 () Bool)

(assert (=> b!1445892 m!1334859))

(assert (=> b!1445892 m!1334859))

(declare-fun m!1334861 () Bool)

(assert (=> b!1445892 m!1334861))

(assert (=> b!1445892 m!1334861))

(assert (=> b!1445892 m!1334859))

(declare-fun m!1334863 () Bool)

(assert (=> b!1445892 m!1334863))

(declare-fun m!1334865 () Bool)

(assert (=> b!1445888 m!1334865))

(declare-fun m!1334867 () Bool)

(assert (=> b!1445895 m!1334867))

(assert (=> b!1445895 m!1334867))

(declare-fun m!1334869 () Bool)

(assert (=> b!1445895 m!1334869))

(declare-fun m!1334871 () Bool)

(assert (=> b!1445895 m!1334871))

(declare-fun m!1334873 () Bool)

(assert (=> b!1445895 m!1334873))

(declare-fun m!1334875 () Bool)

(assert (=> b!1445889 m!1334875))

(assert (=> b!1445889 m!1334875))

(declare-fun m!1334877 () Bool)

(assert (=> b!1445889 m!1334877))

(assert (=> b!1445890 m!1334859))

(assert (=> b!1445890 m!1334859))

(declare-fun m!1334879 () Bool)

(assert (=> b!1445890 m!1334879))

(declare-fun m!1334881 () Bool)

(assert (=> b!1445886 m!1334881))

(assert (=> b!1445898 m!1334859))

(assert (=> b!1445898 m!1334859))

(declare-fun m!1334883 () Bool)

(assert (=> b!1445898 m!1334883))

(assert (=> b!1445885 m!1334871))

(declare-fun m!1334885 () Bool)

(assert (=> b!1445885 m!1334885))

(declare-fun m!1334887 () Bool)

(assert (=> b!1445891 m!1334887))

(declare-fun m!1334889 () Bool)

(assert (=> b!1445891 m!1334889))

(assert (=> b!1445887 m!1334859))

(assert (=> b!1445887 m!1334859))

(declare-fun m!1334891 () Bool)

(assert (=> b!1445887 m!1334891))

(declare-fun m!1334893 () Bool)

(assert (=> b!1445893 m!1334893))

(declare-fun m!1334895 () Bool)

(assert (=> b!1445893 m!1334895))

(declare-fun m!1334897 () Bool)

(assert (=> b!1445896 m!1334897))

(assert (=> b!1445896 m!1334859))

(declare-fun m!1334899 () Bool)

(assert (=> start!124768 m!1334899))

(declare-fun m!1334901 () Bool)

(assert (=> start!124768 m!1334901))

(declare-fun m!1334903 () Bool)

(assert (=> b!1445894 m!1334903))

(push 1)

