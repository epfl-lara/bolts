; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130574 () Bool)

(assert start!130574)

(declare-fun b!1531914 () Bool)

(declare-fun e!853589 () Bool)

(declare-fun e!853583 () Bool)

(assert (=> b!1531914 (= e!853589 e!853583)))

(declare-fun res!1049193 () Bool)

(assert (=> b!1531914 (=> res!1049193 e!853583)))

(declare-fun lt!663431 () (_ BitVec 32))

(declare-datatypes ((array!101680 0))(
  ( (array!101681 (arr!49056 (Array (_ BitVec 32) (_ BitVec 64))) (size!49607 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101680)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1531914 (= res!1049193 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663431 #b00000000000000000000000000000000) (bvsge lt!663431 (size!49607 a!2804))))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531914 (= lt!663431 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun res!1049194 () Bool)

(declare-fun e!853586 () Bool)

(assert (=> start!130574 (=> (not res!1049194) (not e!853586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130574 (= res!1049194 (validMask!0 mask!2512))))

(assert (=> start!130574 e!853586))

(assert (=> start!130574 true))

(declare-fun array_inv!38001 (array!101680) Bool)

(assert (=> start!130574 (array_inv!38001 a!2804)))

(declare-fun b!1531915 () Bool)

(declare-fun res!1049198 () Bool)

(declare-fun e!853584 () Bool)

(assert (=> b!1531915 (=> (not res!1049198) (not e!853584))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13242 0))(
  ( (MissingZero!13242 (index!55362 (_ BitVec 32))) (Found!13242 (index!55363 (_ BitVec 32))) (Intermediate!13242 (undefined!14054 Bool) (index!55364 (_ BitVec 32)) (x!137063 (_ BitVec 32))) (Undefined!13242) (MissingVacant!13242 (index!55365 (_ BitVec 32))) )
))
(declare-fun lt!663432 () SeekEntryResult!13242)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101680 (_ BitVec 32)) SeekEntryResult!13242)

(assert (=> b!1531915 (= res!1049198 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49056 a!2804) j!70) a!2804 mask!2512) lt!663432))))

(declare-fun b!1531916 () Bool)

(declare-fun e!853588 () Bool)

(assert (=> b!1531916 (= e!853588 (not e!853589))))

(declare-fun res!1049199 () Bool)

(assert (=> b!1531916 (=> res!1049199 e!853589)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun lt!663429 () (_ BitVec 64))

(assert (=> b!1531916 (= res!1049199 (or (not (= (select (arr!49056 a!2804) j!70) lt!663429)) (= x!534 resX!21)))))

(declare-fun e!853585 () Bool)

(assert (=> b!1531916 e!853585))

(declare-fun res!1049195 () Bool)

(assert (=> b!1531916 (=> (not res!1049195) (not e!853585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101680 (_ BitVec 32)) Bool)

(assert (=> b!1531916 (= res!1049195 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51224 0))(
  ( (Unit!51225) )
))
(declare-fun lt!663433 () Unit!51224)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101680 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51224)

(assert (=> b!1531916 (= lt!663433 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1531917 () Bool)

(declare-fun res!1049196 () Bool)

(assert (=> b!1531917 (=> (not res!1049196) (not e!853586))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1531917 (= res!1049196 (validKeyInArray!0 (select (arr!49056 a!2804) i!961)))))

(declare-fun b!1531918 () Bool)

(declare-fun res!1049201 () Bool)

(assert (=> b!1531918 (=> (not res!1049201) (not e!853586))))

(assert (=> b!1531918 (= res!1049201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1531919 () Bool)

(assert (=> b!1531919 (= e!853584 e!853588)))

(declare-fun res!1049197 () Bool)

(assert (=> b!1531919 (=> (not res!1049197) (not e!853588))))

(declare-fun lt!663428 () SeekEntryResult!13242)

(declare-fun lt!663427 () array!101680)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1531919 (= res!1049197 (= lt!663428 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!663429 mask!2512) lt!663429 lt!663427 mask!2512)))))

(assert (=> b!1531919 (= lt!663429 (select (store (arr!49056 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1531919 (= lt!663427 (array!101681 (store (arr!49056 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49607 a!2804)))))

(declare-fun b!1531920 () Bool)

(assert (=> b!1531920 (= e!853583 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101680 (_ BitVec 32)) SeekEntryResult!13242)

(assert (=> b!1531920 (= (seekEntryOrOpen!0 (select (arr!49056 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!663429 lt!663427 mask!2512))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun lt!663430 () Unit!51224)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101680 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51224)

(assert (=> b!1531920 (= lt!663430 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!663431 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1531921 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101680 (_ BitVec 32)) SeekEntryResult!13242)

(assert (=> b!1531921 (= e!853585 (= (seekEntry!0 (select (arr!49056 a!2804) j!70) a!2804 mask!2512) (Found!13242 j!70)))))

(declare-fun b!1531922 () Bool)

(declare-fun res!1049205 () Bool)

(assert (=> b!1531922 (=> (not res!1049205) (not e!853586))))

(assert (=> b!1531922 (= res!1049205 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49607 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49607 a!2804))))))

(declare-fun b!1531923 () Bool)

(declare-fun res!1049203 () Bool)

(assert (=> b!1531923 (=> (not res!1049203) (not e!853586))))

(assert (=> b!1531923 (= res!1049203 (validKeyInArray!0 (select (arr!49056 a!2804) j!70)))))

(declare-fun b!1531924 () Bool)

(declare-fun res!1049204 () Bool)

(assert (=> b!1531924 (=> (not res!1049204) (not e!853586))))

(assert (=> b!1531924 (= res!1049204 (and (= (size!49607 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49607 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49607 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1531925 () Bool)

(declare-fun res!1049192 () Bool)

(assert (=> b!1531925 (=> (not res!1049192) (not e!853586))))

(declare-datatypes ((List!35719 0))(
  ( (Nil!35716) (Cons!35715 (h!37161 (_ BitVec 64)) (t!50420 List!35719)) )
))
(declare-fun arrayNoDuplicates!0 (array!101680 (_ BitVec 32) List!35719) Bool)

(assert (=> b!1531925 (= res!1049192 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35716))))

(declare-fun b!1531926 () Bool)

(assert (=> b!1531926 (= e!853586 e!853584)))

(declare-fun res!1049200 () Bool)

(assert (=> b!1531926 (=> (not res!1049200) (not e!853584))))

(assert (=> b!1531926 (= res!1049200 (= lt!663428 lt!663432))))

(assert (=> b!1531926 (= lt!663432 (Intermediate!13242 false resIndex!21 resX!21))))

(assert (=> b!1531926 (= lt!663428 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49056 a!2804) j!70) mask!2512) (select (arr!49056 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531927 () Bool)

(declare-fun res!1049202 () Bool)

(assert (=> b!1531927 (=> res!1049202 e!853583)))

(assert (=> b!1531927 (= res!1049202 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663431 (select (arr!49056 a!2804) j!70) a!2804 mask!2512) lt!663432)))))

(assert (= (and start!130574 res!1049194) b!1531924))

(assert (= (and b!1531924 res!1049204) b!1531917))

(assert (= (and b!1531917 res!1049196) b!1531923))

(assert (= (and b!1531923 res!1049203) b!1531918))

(assert (= (and b!1531918 res!1049201) b!1531925))

(assert (= (and b!1531925 res!1049192) b!1531922))

(assert (= (and b!1531922 res!1049205) b!1531926))

(assert (= (and b!1531926 res!1049200) b!1531915))

(assert (= (and b!1531915 res!1049198) b!1531919))

(assert (= (and b!1531919 res!1049197) b!1531916))

(assert (= (and b!1531916 res!1049195) b!1531921))

(assert (= (and b!1531916 (not res!1049199)) b!1531914))

(assert (= (and b!1531914 (not res!1049193)) b!1531927))

(assert (= (and b!1531927 (not res!1049202)) b!1531920))

(declare-fun m!1414649 () Bool)

(assert (=> b!1531925 m!1414649))

(declare-fun m!1414651 () Bool)

(assert (=> b!1531921 m!1414651))

(assert (=> b!1531921 m!1414651))

(declare-fun m!1414653 () Bool)

(assert (=> b!1531921 m!1414653))

(assert (=> b!1531926 m!1414651))

(assert (=> b!1531926 m!1414651))

(declare-fun m!1414655 () Bool)

(assert (=> b!1531926 m!1414655))

(assert (=> b!1531926 m!1414655))

(assert (=> b!1531926 m!1414651))

(declare-fun m!1414657 () Bool)

(assert (=> b!1531926 m!1414657))

(assert (=> b!1531915 m!1414651))

(assert (=> b!1531915 m!1414651))

(declare-fun m!1414659 () Bool)

(assert (=> b!1531915 m!1414659))

(declare-fun m!1414661 () Bool)

(assert (=> b!1531919 m!1414661))

(assert (=> b!1531919 m!1414661))

(declare-fun m!1414663 () Bool)

(assert (=> b!1531919 m!1414663))

(declare-fun m!1414665 () Bool)

(assert (=> b!1531919 m!1414665))

(declare-fun m!1414667 () Bool)

(assert (=> b!1531919 m!1414667))

(assert (=> b!1531923 m!1414651))

(assert (=> b!1531923 m!1414651))

(declare-fun m!1414669 () Bool)

(assert (=> b!1531923 m!1414669))

(declare-fun m!1414671 () Bool)

(assert (=> start!130574 m!1414671))

(declare-fun m!1414673 () Bool)

(assert (=> start!130574 m!1414673))

(assert (=> b!1531916 m!1414651))

(declare-fun m!1414675 () Bool)

(assert (=> b!1531916 m!1414675))

(declare-fun m!1414677 () Bool)

(assert (=> b!1531916 m!1414677))

(assert (=> b!1531927 m!1414651))

(assert (=> b!1531927 m!1414651))

(declare-fun m!1414679 () Bool)

(assert (=> b!1531927 m!1414679))

(assert (=> b!1531920 m!1414651))

(assert (=> b!1531920 m!1414651))

(declare-fun m!1414681 () Bool)

(assert (=> b!1531920 m!1414681))

(declare-fun m!1414683 () Bool)

(assert (=> b!1531920 m!1414683))

(declare-fun m!1414685 () Bool)

(assert (=> b!1531920 m!1414685))

(declare-fun m!1414687 () Bool)

(assert (=> b!1531917 m!1414687))

(assert (=> b!1531917 m!1414687))

(declare-fun m!1414689 () Bool)

(assert (=> b!1531917 m!1414689))

(declare-fun m!1414691 () Bool)

(assert (=> b!1531918 m!1414691))

(declare-fun m!1414693 () Bool)

(assert (=> b!1531914 m!1414693))

(push 1)

