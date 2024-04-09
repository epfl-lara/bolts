; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129262 () Bool)

(assert start!129262)

(declare-fun b!1516936 () Bool)

(declare-fun res!1036913 () Bool)

(declare-fun e!846408 () Bool)

(assert (=> b!1516936 (=> (not res!1036913) (not e!846408))))

(declare-datatypes ((array!101031 0))(
  ( (array!101032 (arr!48748 (Array (_ BitVec 32) (_ BitVec 64))) (size!49299 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101031)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101031 (_ BitVec 32)) Bool)

(assert (=> b!1516936 (= res!1036913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516937 () Bool)

(declare-fun res!1036912 () Bool)

(assert (=> b!1516937 (=> (not res!1036912) (not e!846408))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516937 (= res!1036912 (validKeyInArray!0 (select (arr!48748 a!2804) i!961)))))

(declare-fun b!1516938 () Bool)

(declare-fun res!1036917 () Bool)

(assert (=> b!1516938 (=> (not res!1036917) (not e!846408))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1516938 (= res!1036917 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49299 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49299 a!2804))))))

(declare-fun b!1516939 () Bool)

(declare-fun e!846409 () Bool)

(assert (=> b!1516939 (= e!846409 true)))

(declare-fun lt!657569 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12940 0))(
  ( (MissingZero!12940 (index!54154 (_ BitVec 32))) (Found!12940 (index!54155 (_ BitVec 32))) (Intermediate!12940 (undefined!13752 Bool) (index!54156 (_ BitVec 32)) (x!135855 (_ BitVec 32))) (Undefined!12940) (MissingVacant!12940 (index!54157 (_ BitVec 32))) )
))
(declare-fun lt!657568 () SeekEntryResult!12940)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101031 (_ BitVec 32)) SeekEntryResult!12940)

(assert (=> b!1516939 (= lt!657568 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657569 (select (arr!48748 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516940 () Bool)

(declare-fun e!846412 () Bool)

(declare-fun e!846410 () Bool)

(assert (=> b!1516940 (= e!846412 (not e!846410))))

(declare-fun res!1036920 () Bool)

(assert (=> b!1516940 (=> res!1036920 e!846410)))

(assert (=> b!1516940 (= res!1036920 (or (not (= (select (arr!48748 a!2804) j!70) (select (store (arr!48748 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846413 () Bool)

(assert (=> b!1516940 e!846413))

(declare-fun res!1036915 () Bool)

(assert (=> b!1516940 (=> (not res!1036915) (not e!846413))))

(assert (=> b!1516940 (= res!1036915 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50704 0))(
  ( (Unit!50705) )
))
(declare-fun lt!657567 () Unit!50704)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101031 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50704)

(assert (=> b!1516940 (= lt!657567 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516941 () Bool)

(declare-fun res!1036914 () Bool)

(assert (=> b!1516941 (=> (not res!1036914) (not e!846408))))

(declare-datatypes ((List!35411 0))(
  ( (Nil!35408) (Cons!35407 (h!36820 (_ BitVec 64)) (t!50112 List!35411)) )
))
(declare-fun arrayNoDuplicates!0 (array!101031 (_ BitVec 32) List!35411) Bool)

(assert (=> b!1516941 (= res!1036914 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35408))))

(declare-fun b!1516942 () Bool)

(declare-fun res!1036911 () Bool)

(assert (=> b!1516942 (=> (not res!1036911) (not e!846408))))

(assert (=> b!1516942 (= res!1036911 (and (= (size!49299 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49299 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49299 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1036921 () Bool)

(assert (=> start!129262 (=> (not res!1036921) (not e!846408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129262 (= res!1036921 (validMask!0 mask!2512))))

(assert (=> start!129262 e!846408))

(assert (=> start!129262 true))

(declare-fun array_inv!37693 (array!101031) Bool)

(assert (=> start!129262 (array_inv!37693 a!2804)))

(declare-fun b!1516943 () Bool)

(assert (=> b!1516943 (= e!846408 e!846412)))

(declare-fun res!1036919 () Bool)

(assert (=> b!1516943 (=> (not res!1036919) (not e!846412))))

(declare-fun lt!657570 () SeekEntryResult!12940)

(declare-fun lt!657571 () SeekEntryResult!12940)

(assert (=> b!1516943 (= res!1036919 (= lt!657570 lt!657571))))

(assert (=> b!1516943 (= lt!657571 (Intermediate!12940 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516943 (= lt!657570 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48748 a!2804) j!70) mask!2512) (select (arr!48748 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516944 () Bool)

(assert (=> b!1516944 (= e!846410 e!846409)))

(declare-fun res!1036922 () Bool)

(assert (=> b!1516944 (=> res!1036922 e!846409)))

(assert (=> b!1516944 (= res!1036922 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657569 #b00000000000000000000000000000000) (bvsge lt!657569 (size!49299 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516944 (= lt!657569 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1516945 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101031 (_ BitVec 32)) SeekEntryResult!12940)

(assert (=> b!1516945 (= e!846413 (= (seekEntry!0 (select (arr!48748 a!2804) j!70) a!2804 mask!2512) (Found!12940 j!70)))))

(declare-fun b!1516946 () Bool)

(declare-fun res!1036923 () Bool)

(assert (=> b!1516946 (=> (not res!1036923) (not e!846412))))

(assert (=> b!1516946 (= res!1036923 (= lt!657570 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48748 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48748 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101032 (store (arr!48748 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49299 a!2804)) mask!2512)))))

(declare-fun b!1516947 () Bool)

(declare-fun res!1036916 () Bool)

(assert (=> b!1516947 (=> (not res!1036916) (not e!846408))))

(assert (=> b!1516947 (= res!1036916 (validKeyInArray!0 (select (arr!48748 a!2804) j!70)))))

(declare-fun b!1516948 () Bool)

(declare-fun res!1036918 () Bool)

(assert (=> b!1516948 (=> (not res!1036918) (not e!846412))))

(assert (=> b!1516948 (= res!1036918 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48748 a!2804) j!70) a!2804 mask!2512) lt!657571))))

(assert (= (and start!129262 res!1036921) b!1516942))

(assert (= (and b!1516942 res!1036911) b!1516937))

(assert (= (and b!1516937 res!1036912) b!1516947))

(assert (= (and b!1516947 res!1036916) b!1516936))

(assert (= (and b!1516936 res!1036913) b!1516941))

(assert (= (and b!1516941 res!1036914) b!1516938))

(assert (= (and b!1516938 res!1036917) b!1516943))

(assert (= (and b!1516943 res!1036919) b!1516948))

(assert (= (and b!1516948 res!1036918) b!1516946))

(assert (= (and b!1516946 res!1036923) b!1516940))

(assert (= (and b!1516940 res!1036915) b!1516945))

(assert (= (and b!1516940 (not res!1036920)) b!1516944))

(assert (= (and b!1516944 (not res!1036922)) b!1516939))

(declare-fun m!1400271 () Bool)

(assert (=> b!1516947 m!1400271))

(assert (=> b!1516947 m!1400271))

(declare-fun m!1400273 () Bool)

(assert (=> b!1516947 m!1400273))

(assert (=> b!1516939 m!1400271))

(assert (=> b!1516939 m!1400271))

(declare-fun m!1400275 () Bool)

(assert (=> b!1516939 m!1400275))

(declare-fun m!1400277 () Bool)

(assert (=> b!1516941 m!1400277))

(assert (=> b!1516948 m!1400271))

(assert (=> b!1516948 m!1400271))

(declare-fun m!1400279 () Bool)

(assert (=> b!1516948 m!1400279))

(assert (=> b!1516940 m!1400271))

(declare-fun m!1400281 () Bool)

(assert (=> b!1516940 m!1400281))

(declare-fun m!1400283 () Bool)

(assert (=> b!1516940 m!1400283))

(declare-fun m!1400285 () Bool)

(assert (=> b!1516940 m!1400285))

(declare-fun m!1400287 () Bool)

(assert (=> b!1516940 m!1400287))

(declare-fun m!1400289 () Bool)

(assert (=> start!129262 m!1400289))

(declare-fun m!1400291 () Bool)

(assert (=> start!129262 m!1400291))

(assert (=> b!1516943 m!1400271))

(assert (=> b!1516943 m!1400271))

(declare-fun m!1400293 () Bool)

(assert (=> b!1516943 m!1400293))

(assert (=> b!1516943 m!1400293))

(assert (=> b!1516943 m!1400271))

(declare-fun m!1400295 () Bool)

(assert (=> b!1516943 m!1400295))

(declare-fun m!1400297 () Bool)

(assert (=> b!1516936 m!1400297))

(assert (=> b!1516946 m!1400283))

(assert (=> b!1516946 m!1400285))

(assert (=> b!1516946 m!1400285))

(declare-fun m!1400299 () Bool)

(assert (=> b!1516946 m!1400299))

(assert (=> b!1516946 m!1400299))

(assert (=> b!1516946 m!1400285))

(declare-fun m!1400301 () Bool)

(assert (=> b!1516946 m!1400301))

(assert (=> b!1516945 m!1400271))

(assert (=> b!1516945 m!1400271))

(declare-fun m!1400303 () Bool)

(assert (=> b!1516945 m!1400303))

(declare-fun m!1400305 () Bool)

(assert (=> b!1516944 m!1400305))

(declare-fun m!1400307 () Bool)

(assert (=> b!1516937 m!1400307))

(assert (=> b!1516937 m!1400307))

(declare-fun m!1400309 () Bool)

(assert (=> b!1516937 m!1400309))

(push 1)

