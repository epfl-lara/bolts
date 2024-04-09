; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128820 () Bool)

(assert start!128820)

(declare-fun b!1508842 () Bool)

(declare-fun e!842927 () Bool)

(declare-fun e!842925 () Bool)

(assert (=> b!1508842 (= e!842927 e!842925)))

(declare-fun res!1028817 () Bool)

(assert (=> b!1508842 (=> (not res!1028817) (not e!842925))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!654724 () (_ BitVec 32))

(assert (=> b!1508842 (= res!1028817 (and (bvsge mask!2512 #b00000000000000000000000000000000) (bvsge lt!654724 #b00000000000000000000000000000000) (bvslt lt!654724 (bvadd #b00000000000000000000000000000001 mask!2512))))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!100589 0))(
  ( (array!100590 (arr!48527 (Array (_ BitVec 32) (_ BitVec 64))) (size!49078 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100589)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508842 (= lt!654724 (toIndex!0 (select (store (arr!48527 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1508843 () Bool)

(declare-fun res!1028824 () Bool)

(declare-fun e!842926 () Bool)

(assert (=> b!1508843 (=> (not res!1028824) (not e!842926))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508843 (= res!1028824 (validKeyInArray!0 (select (arr!48527 a!2804) j!70)))))

(declare-fun b!1508844 () Bool)

(assert (=> b!1508844 (= e!842926 e!842927)))

(declare-fun res!1028818 () Bool)

(assert (=> b!1508844 (=> (not res!1028818) (not e!842927))))

(declare-datatypes ((SeekEntryResult!12719 0))(
  ( (MissingZero!12719 (index!53270 (_ BitVec 32))) (Found!12719 (index!53271 (_ BitVec 32))) (Intermediate!12719 (undefined!13531 Bool) (index!53272 (_ BitVec 32)) (x!135042 (_ BitVec 32))) (Undefined!12719) (MissingVacant!12719 (index!53273 (_ BitVec 32))) )
))
(declare-fun lt!654723 () SeekEntryResult!12719)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100589 (_ BitVec 32)) SeekEntryResult!12719)

(assert (=> b!1508844 (= res!1028818 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48527 a!2804) j!70) mask!2512) (select (arr!48527 a!2804) j!70) a!2804 mask!2512) lt!654723))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1508844 (= lt!654723 (Intermediate!12719 false resIndex!21 resX!21))))

(declare-fun b!1508845 () Bool)

(declare-fun res!1028820 () Bool)

(assert (=> b!1508845 (=> (not res!1028820) (not e!842926))))

(declare-datatypes ((List!35190 0))(
  ( (Nil!35187) (Cons!35186 (h!36599 (_ BitVec 64)) (t!49891 List!35190)) )
))
(declare-fun arrayNoDuplicates!0 (array!100589 (_ BitVec 32) List!35190) Bool)

(assert (=> b!1508845 (= res!1028820 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35187))))

(declare-fun b!1508846 () Bool)

(declare-fun res!1028822 () Bool)

(assert (=> b!1508846 (=> (not res!1028822) (not e!842926))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1508846 (= res!1028822 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49078 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49078 a!2804))))))

(declare-fun res!1028825 () Bool)

(assert (=> start!128820 (=> (not res!1028825) (not e!842926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128820 (= res!1028825 (validMask!0 mask!2512))))

(assert (=> start!128820 e!842926))

(assert (=> start!128820 true))

(declare-fun array_inv!37472 (array!100589) Bool)

(assert (=> start!128820 (array_inv!37472 a!2804)))

(declare-fun b!1508847 () Bool)

(declare-fun res!1028819 () Bool)

(assert (=> b!1508847 (=> (not res!1028819) (not e!842926))))

(assert (=> b!1508847 (= res!1028819 (validKeyInArray!0 (select (arr!48527 a!2804) i!961)))))

(declare-fun b!1508848 () Bool)

(declare-fun res!1028821 () Bool)

(assert (=> b!1508848 (=> (not res!1028821) (not e!842926))))

(assert (=> b!1508848 (= res!1028821 (and (= (size!49078 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49078 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49078 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1508849 () Bool)

(declare-fun res!1028823 () Bool)

(assert (=> b!1508849 (=> (not res!1028823) (not e!842927))))

(assert (=> b!1508849 (= res!1028823 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48527 a!2804) j!70) a!2804 mask!2512) lt!654723))))

(declare-fun b!1508850 () Bool)

(assert (=> b!1508850 (= e!842925 (not (validKeyInArray!0 (select (store (arr!48527 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))))

(declare-fun b!1508851 () Bool)

(declare-fun res!1028826 () Bool)

(assert (=> b!1508851 (=> (not res!1028826) (not e!842926))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100589 (_ BitVec 32)) Bool)

(assert (=> b!1508851 (= res!1028826 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128820 res!1028825) b!1508848))

(assert (= (and b!1508848 res!1028821) b!1508847))

(assert (= (and b!1508847 res!1028819) b!1508843))

(assert (= (and b!1508843 res!1028824) b!1508851))

(assert (= (and b!1508851 res!1028826) b!1508845))

(assert (= (and b!1508845 res!1028820) b!1508846))

(assert (= (and b!1508846 res!1028822) b!1508844))

(assert (= (and b!1508844 res!1028818) b!1508849))

(assert (= (and b!1508849 res!1028823) b!1508842))

(assert (= (and b!1508842 res!1028817) b!1508850))

(declare-fun m!1391319 () Bool)

(assert (=> b!1508844 m!1391319))

(assert (=> b!1508844 m!1391319))

(declare-fun m!1391321 () Bool)

(assert (=> b!1508844 m!1391321))

(assert (=> b!1508844 m!1391321))

(assert (=> b!1508844 m!1391319))

(declare-fun m!1391323 () Bool)

(assert (=> b!1508844 m!1391323))

(declare-fun m!1391325 () Bool)

(assert (=> b!1508847 m!1391325))

(assert (=> b!1508847 m!1391325))

(declare-fun m!1391327 () Bool)

(assert (=> b!1508847 m!1391327))

(assert (=> b!1508843 m!1391319))

(assert (=> b!1508843 m!1391319))

(declare-fun m!1391329 () Bool)

(assert (=> b!1508843 m!1391329))

(declare-fun m!1391331 () Bool)

(assert (=> b!1508850 m!1391331))

(declare-fun m!1391333 () Bool)

(assert (=> b!1508850 m!1391333))

(assert (=> b!1508850 m!1391333))

(declare-fun m!1391335 () Bool)

(assert (=> b!1508850 m!1391335))

(declare-fun m!1391337 () Bool)

(assert (=> b!1508845 m!1391337))

(assert (=> b!1508849 m!1391319))

(assert (=> b!1508849 m!1391319))

(declare-fun m!1391339 () Bool)

(assert (=> b!1508849 m!1391339))

(declare-fun m!1391341 () Bool)

(assert (=> b!1508851 m!1391341))

(assert (=> b!1508842 m!1391331))

(assert (=> b!1508842 m!1391333))

(assert (=> b!1508842 m!1391333))

(declare-fun m!1391343 () Bool)

(assert (=> b!1508842 m!1391343))

(declare-fun m!1391345 () Bool)

(assert (=> start!128820 m!1391345))

(declare-fun m!1391347 () Bool)

(assert (=> start!128820 m!1391347))

(check-sat (not b!1508851) (not start!128820) (not b!1508850) (not b!1508843) (not b!1508849) (not b!1508842) (not b!1508845) (not b!1508844) (not b!1508847))
(check-sat)
