; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128818 () Bool)

(assert start!128818)

(declare-fun b!1508812 () Bool)

(declare-fun res!1028794 () Bool)

(declare-fun e!842913 () Bool)

(assert (=> b!1508812 (=> (not res!1028794) (not e!842913))))

(declare-datatypes ((array!100587 0))(
  ( (array!100588 (arr!48526 (Array (_ BitVec 32) (_ BitVec 64))) (size!49077 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100587)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508812 (= res!1028794 (validKeyInArray!0 (select (arr!48526 a!2804) i!961)))))

(declare-fun b!1508813 () Bool)

(declare-fun e!842915 () Bool)

(declare-fun e!842912 () Bool)

(assert (=> b!1508813 (= e!842915 e!842912)))

(declare-fun res!1028787 () Bool)

(assert (=> b!1508813 (=> (not res!1028787) (not e!842912))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!654717 () (_ BitVec 32))

(assert (=> b!1508813 (= res!1028787 (and (bvsge mask!2512 #b00000000000000000000000000000000) (bvsge lt!654717 #b00000000000000000000000000000000) (bvslt lt!654717 (bvadd #b00000000000000000000000000000001 mask!2512))))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508813 (= lt!654717 (toIndex!0 (select (store (arr!48526 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1508814 () Bool)

(declare-fun res!1028792 () Bool)

(assert (=> b!1508814 (=> (not res!1028792) (not e!842913))))

(assert (=> b!1508814 (= res!1028792 (and (= (size!49077 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49077 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49077 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1028789 () Bool)

(assert (=> start!128818 (=> (not res!1028789) (not e!842913))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128818 (= res!1028789 (validMask!0 mask!2512))))

(assert (=> start!128818 e!842913))

(assert (=> start!128818 true))

(declare-fun array_inv!37471 (array!100587) Bool)

(assert (=> start!128818 (array_inv!37471 a!2804)))

(declare-fun b!1508815 () Bool)

(declare-fun res!1028791 () Bool)

(assert (=> b!1508815 (=> (not res!1028791) (not e!842913))))

(assert (=> b!1508815 (= res!1028791 (validKeyInArray!0 (select (arr!48526 a!2804) j!70)))))

(declare-fun b!1508816 () Bool)

(declare-fun res!1028796 () Bool)

(assert (=> b!1508816 (=> (not res!1028796) (not e!842913))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1508816 (= res!1028796 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49077 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49077 a!2804))))))

(declare-fun b!1508817 () Bool)

(declare-fun res!1028790 () Bool)

(assert (=> b!1508817 (=> (not res!1028790) (not e!842913))))

(declare-datatypes ((List!35189 0))(
  ( (Nil!35186) (Cons!35185 (h!36598 (_ BitVec 64)) (t!49890 List!35189)) )
))
(declare-fun arrayNoDuplicates!0 (array!100587 (_ BitVec 32) List!35189) Bool)

(assert (=> b!1508817 (= res!1028790 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35186))))

(declare-fun b!1508818 () Bool)

(declare-fun res!1028795 () Bool)

(assert (=> b!1508818 (=> (not res!1028795) (not e!842913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100587 (_ BitVec 32)) Bool)

(assert (=> b!1508818 (= res!1028795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1508819 () Bool)

(declare-fun res!1028788 () Bool)

(assert (=> b!1508819 (=> (not res!1028788) (not e!842915))))

(declare-datatypes ((SeekEntryResult!12718 0))(
  ( (MissingZero!12718 (index!53266 (_ BitVec 32))) (Found!12718 (index!53267 (_ BitVec 32))) (Intermediate!12718 (undefined!13530 Bool) (index!53268 (_ BitVec 32)) (x!135041 (_ BitVec 32))) (Undefined!12718) (MissingVacant!12718 (index!53269 (_ BitVec 32))) )
))
(declare-fun lt!654718 () SeekEntryResult!12718)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100587 (_ BitVec 32)) SeekEntryResult!12718)

(assert (=> b!1508819 (= res!1028788 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48526 a!2804) j!70) a!2804 mask!2512) lt!654718))))

(declare-fun b!1508820 () Bool)

(assert (=> b!1508820 (= e!842912 (not (validKeyInArray!0 (select (store (arr!48526 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))))

(declare-fun b!1508821 () Bool)

(assert (=> b!1508821 (= e!842913 e!842915)))

(declare-fun res!1028793 () Bool)

(assert (=> b!1508821 (=> (not res!1028793) (not e!842915))))

(assert (=> b!1508821 (= res!1028793 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48526 a!2804) j!70) mask!2512) (select (arr!48526 a!2804) j!70) a!2804 mask!2512) lt!654718))))

(assert (=> b!1508821 (= lt!654718 (Intermediate!12718 false resIndex!21 resX!21))))

(assert (= (and start!128818 res!1028789) b!1508814))

(assert (= (and b!1508814 res!1028792) b!1508812))

(assert (= (and b!1508812 res!1028794) b!1508815))

(assert (= (and b!1508815 res!1028791) b!1508818))

(assert (= (and b!1508818 res!1028795) b!1508817))

(assert (= (and b!1508817 res!1028790) b!1508816))

(assert (= (and b!1508816 res!1028796) b!1508821))

(assert (= (and b!1508821 res!1028793) b!1508819))

(assert (= (and b!1508819 res!1028788) b!1508813))

(assert (= (and b!1508813 res!1028787) b!1508820))

(declare-fun m!1391289 () Bool)

(assert (=> b!1508821 m!1391289))

(assert (=> b!1508821 m!1391289))

(declare-fun m!1391291 () Bool)

(assert (=> b!1508821 m!1391291))

(assert (=> b!1508821 m!1391291))

(assert (=> b!1508821 m!1391289))

(declare-fun m!1391293 () Bool)

(assert (=> b!1508821 m!1391293))

(declare-fun m!1391295 () Bool)

(assert (=> start!128818 m!1391295))

(declare-fun m!1391297 () Bool)

(assert (=> start!128818 m!1391297))

(declare-fun m!1391299 () Bool)

(assert (=> b!1508812 m!1391299))

(assert (=> b!1508812 m!1391299))

(declare-fun m!1391301 () Bool)

(assert (=> b!1508812 m!1391301))

(declare-fun m!1391303 () Bool)

(assert (=> b!1508813 m!1391303))

(declare-fun m!1391305 () Bool)

(assert (=> b!1508813 m!1391305))

(assert (=> b!1508813 m!1391305))

(declare-fun m!1391307 () Bool)

(assert (=> b!1508813 m!1391307))

(declare-fun m!1391309 () Bool)

(assert (=> b!1508818 m!1391309))

(assert (=> b!1508820 m!1391303))

(assert (=> b!1508820 m!1391305))

(assert (=> b!1508820 m!1391305))

(declare-fun m!1391311 () Bool)

(assert (=> b!1508820 m!1391311))

(assert (=> b!1508819 m!1391289))

(assert (=> b!1508819 m!1391289))

(declare-fun m!1391313 () Bool)

(assert (=> b!1508819 m!1391313))

(assert (=> b!1508815 m!1391289))

(assert (=> b!1508815 m!1391289))

(declare-fun m!1391315 () Bool)

(assert (=> b!1508815 m!1391315))

(declare-fun m!1391317 () Bool)

(assert (=> b!1508817 m!1391317))

(push 1)

