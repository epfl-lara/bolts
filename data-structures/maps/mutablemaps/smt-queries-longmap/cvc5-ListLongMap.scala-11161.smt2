; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130480 () Bool)

(assert start!130480)

(declare-fun b!1530907 () Bool)

(declare-fun res!1048393 () Bool)

(declare-fun e!853064 () Bool)

(assert (=> b!1530907 (=> (not res!1048393) (not e!853064))))

(declare-datatypes ((array!101643 0))(
  ( (array!101644 (arr!49039 (Array (_ BitVec 32) (_ BitVec 64))) (size!49590 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101643)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1530907 (= res!1048393 (validKeyInArray!0 (select (arr!49039 a!2804) i!961)))))

(declare-datatypes ((SeekEntryResult!13225 0))(
  ( (MissingZero!13225 (index!55294 (_ BitVec 32))) (Found!13225 (index!55295 (_ BitVec 32))) (Intermediate!13225 (undefined!14037 Bool) (index!55296 (_ BitVec 32)) (x!136997 (_ BitVec 32))) (Undefined!13225) (MissingVacant!13225 (index!55297 (_ BitVec 32))) )
))
(declare-fun lt!662989 () SeekEntryResult!13225)

(declare-fun b!1530908 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!662986 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun e!853066 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101643 (_ BitVec 32)) SeekEntryResult!13225)

(assert (=> b!1530908 (= e!853066 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!662986 (select (arr!49039 a!2804) j!70) a!2804 mask!2512) lt!662989))))

(declare-fun res!1048396 () Bool)

(assert (=> start!130480 (=> (not res!1048396) (not e!853064))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130480 (= res!1048396 (validMask!0 mask!2512))))

(assert (=> start!130480 e!853064))

(assert (=> start!130480 true))

(declare-fun array_inv!37984 (array!101643) Bool)

(assert (=> start!130480 (array_inv!37984 a!2804)))

(declare-fun b!1530909 () Bool)

(declare-fun e!853063 () Bool)

(declare-fun e!853062 () Bool)

(assert (=> b!1530909 (= e!853063 (not e!853062))))

(declare-fun res!1048398 () Bool)

(assert (=> b!1530909 (=> res!1048398 e!853062)))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1530909 (= res!1048398 (or (not (= (select (arr!49039 a!2804) j!70) (select (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!853067 () Bool)

(assert (=> b!1530909 e!853067))

(declare-fun res!1048395 () Bool)

(assert (=> b!1530909 (=> (not res!1048395) (not e!853067))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101643 (_ BitVec 32)) Bool)

(assert (=> b!1530909 (= res!1048395 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51190 0))(
  ( (Unit!51191) )
))
(declare-fun lt!662987 () Unit!51190)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101643 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51190)

(assert (=> b!1530909 (= lt!662987 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1530910 () Bool)

(assert (=> b!1530910 (= e!853064 e!853063)))

(declare-fun res!1048390 () Bool)

(assert (=> b!1530910 (=> (not res!1048390) (not e!853063))))

(declare-fun lt!662988 () SeekEntryResult!13225)

(assert (=> b!1530910 (= res!1048390 (= lt!662988 lt!662989))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1530910 (= lt!662989 (Intermediate!13225 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530910 (= lt!662988 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49039 a!2804) j!70) mask!2512) (select (arr!49039 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530911 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101643 (_ BitVec 32)) SeekEntryResult!13225)

(assert (=> b!1530911 (= e!853067 (= (seekEntry!0 (select (arr!49039 a!2804) j!70) a!2804 mask!2512) (Found!13225 j!70)))))

(declare-fun b!1530912 () Bool)

(declare-fun res!1048388 () Bool)

(assert (=> b!1530912 (=> (not res!1048388) (not e!853063))))

(assert (=> b!1530912 (= res!1048388 (= lt!662988 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101644 (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49590 a!2804)) mask!2512)))))

(declare-fun b!1530913 () Bool)

(declare-fun res!1048386 () Bool)

(assert (=> b!1530913 (=> (not res!1048386) (not e!853064))))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1530913 (= res!1048386 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49590 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49590 a!2804))))))

(declare-fun b!1530914 () Bool)

(declare-fun res!1048387 () Bool)

(assert (=> b!1530914 (=> (not res!1048387) (not e!853064))))

(assert (=> b!1530914 (= res!1048387 (validKeyInArray!0 (select (arr!49039 a!2804) j!70)))))

(declare-fun b!1530915 () Bool)

(declare-fun res!1048394 () Bool)

(assert (=> b!1530915 (=> (not res!1048394) (not e!853064))))

(assert (=> b!1530915 (= res!1048394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1530916 () Bool)

(declare-fun res!1048392 () Bool)

(assert (=> b!1530916 (=> (not res!1048392) (not e!853063))))

(assert (=> b!1530916 (= res!1048392 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49039 a!2804) j!70) a!2804 mask!2512) lt!662989))))

(declare-fun b!1530917 () Bool)

(declare-fun res!1048391 () Bool)

(assert (=> b!1530917 (=> (not res!1048391) (not e!853064))))

(assert (=> b!1530917 (= res!1048391 (and (= (size!49590 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49590 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49590 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1530918 () Bool)

(declare-fun res!1048389 () Bool)

(assert (=> b!1530918 (=> (not res!1048389) (not e!853064))))

(declare-datatypes ((List!35702 0))(
  ( (Nil!35699) (Cons!35698 (h!37141 (_ BitVec 64)) (t!50403 List!35702)) )
))
(declare-fun arrayNoDuplicates!0 (array!101643 (_ BitVec 32) List!35702) Bool)

(assert (=> b!1530918 (= res!1048389 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35699))))

(declare-fun b!1530919 () Bool)

(assert (=> b!1530919 (= e!853062 e!853066)))

(declare-fun res!1048397 () Bool)

(assert (=> b!1530919 (=> res!1048397 e!853066)))

(assert (=> b!1530919 (= res!1048397 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!662986 #b00000000000000000000000000000000) (bvsge lt!662986 (size!49590 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530919 (= lt!662986 (nextIndex!0 index!487 x!534 mask!2512))))

(assert (= (and start!130480 res!1048396) b!1530917))

(assert (= (and b!1530917 res!1048391) b!1530907))

(assert (= (and b!1530907 res!1048393) b!1530914))

(assert (= (and b!1530914 res!1048387) b!1530915))

(assert (= (and b!1530915 res!1048394) b!1530918))

(assert (= (and b!1530918 res!1048389) b!1530913))

(assert (= (and b!1530913 res!1048386) b!1530910))

(assert (= (and b!1530910 res!1048390) b!1530916))

(assert (= (and b!1530916 res!1048392) b!1530912))

(assert (= (and b!1530912 res!1048388) b!1530909))

(assert (= (and b!1530909 res!1048395) b!1530911))

(assert (= (and b!1530909 (not res!1048398)) b!1530919))

(assert (= (and b!1530919 (not res!1048397)) b!1530908))

(declare-fun m!1413729 () Bool)

(assert (=> b!1530918 m!1413729))

(declare-fun m!1413731 () Bool)

(assert (=> b!1530911 m!1413731))

(assert (=> b!1530911 m!1413731))

(declare-fun m!1413733 () Bool)

(assert (=> b!1530911 m!1413733))

(declare-fun m!1413735 () Bool)

(assert (=> start!130480 m!1413735))

(declare-fun m!1413737 () Bool)

(assert (=> start!130480 m!1413737))

(assert (=> b!1530908 m!1413731))

(assert (=> b!1530908 m!1413731))

(declare-fun m!1413739 () Bool)

(assert (=> b!1530908 m!1413739))

(declare-fun m!1413741 () Bool)

(assert (=> b!1530919 m!1413741))

(declare-fun m!1413743 () Bool)

(assert (=> b!1530912 m!1413743))

(declare-fun m!1413745 () Bool)

(assert (=> b!1530912 m!1413745))

(assert (=> b!1530912 m!1413745))

(declare-fun m!1413747 () Bool)

(assert (=> b!1530912 m!1413747))

(assert (=> b!1530912 m!1413747))

(assert (=> b!1530912 m!1413745))

(declare-fun m!1413749 () Bool)

(assert (=> b!1530912 m!1413749))

(declare-fun m!1413751 () Bool)

(assert (=> b!1530915 m!1413751))

(assert (=> b!1530914 m!1413731))

(assert (=> b!1530914 m!1413731))

(declare-fun m!1413753 () Bool)

(assert (=> b!1530914 m!1413753))

(assert (=> b!1530910 m!1413731))

(assert (=> b!1530910 m!1413731))

(declare-fun m!1413755 () Bool)

(assert (=> b!1530910 m!1413755))

(assert (=> b!1530910 m!1413755))

(assert (=> b!1530910 m!1413731))

(declare-fun m!1413757 () Bool)

(assert (=> b!1530910 m!1413757))

(assert (=> b!1530916 m!1413731))

(assert (=> b!1530916 m!1413731))

(declare-fun m!1413759 () Bool)

(assert (=> b!1530916 m!1413759))

(declare-fun m!1413761 () Bool)

(assert (=> b!1530907 m!1413761))

(assert (=> b!1530907 m!1413761))

(declare-fun m!1413763 () Bool)

(assert (=> b!1530907 m!1413763))

(assert (=> b!1530909 m!1413731))

(declare-fun m!1413765 () Bool)

(assert (=> b!1530909 m!1413765))

(assert (=> b!1530909 m!1413743))

(assert (=> b!1530909 m!1413745))

(declare-fun m!1413767 () Bool)

(assert (=> b!1530909 m!1413767))

(push 1)

(assert (not b!1530911))

(assert (not b!1530909))

(assert (not b!1530912))

(assert (not start!130480))

(assert (not b!1530908))

(assert (not b!1530916))

(assert (not b!1530918))

(assert (not b!1530919))

(assert (not b!1530910))

(assert (not b!1530907))

(assert (not b!1530914))

(assert (not b!1530915))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1531071 () Bool)

(declare-fun e!853150 () Bool)

(declare-fun lt!663043 () SeekEntryResult!13225)

(assert (=> b!1531071 (= e!853150 (bvsge (x!136997 lt!663043) #b01111111111111111111111111111110))))

(declare-fun b!1531073 () Bool)

(assert (=> b!1531073 (and (bvsge (index!55296 lt!663043) #b00000000000000000000000000000000) (bvslt (index!55296 lt!663043) (size!49590 (array!101644 (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49590 a!2804)))))))

(declare-fun res!1048505 () Bool)

(assert (=> b!1531073 (= res!1048505 (= (select (arr!49039 (array!101644 (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49590 a!2804))) (index!55296 lt!663043)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!853149 () Bool)

(assert (=> b!1531073 (=> res!1048505 e!853149)))

(declare-fun b!1531074 () Bool)

(declare-fun e!853148 () SeekEntryResult!13225)

(assert (=> b!1531074 (= e!853148 (Intermediate!13225 false (toIndex!0 (select (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1531075 () Bool)

(assert (=> b!1531075 (and (bvsge (index!55296 lt!663043) #b00000000000000000000000000000000) (bvslt (index!55296 lt!663043) (size!49590 (array!101644 (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49590 a!2804)))))))

(assert (=> b!1531075 (= e!853149 (= (select (arr!49039 (array!101644 (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49590 a!2804))) (index!55296 lt!663043)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1531076 () Bool)

(declare-fun e!853151 () SeekEntryResult!13225)

(assert (=> b!1531076 (= e!853151 e!853148)))

(declare-fun lt!663044 () (_ BitVec 64))

(declare-fun c!140845 () Bool)

(assert (=> b!1531076 (= c!140845 (or (= lt!663044 (select (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!663044 lt!663044) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1531077 () Bool)

(assert (=> b!1531077 (and (bvsge (index!55296 lt!663043) #b00000000000000000000000000000000) (bvslt (index!55296 lt!663043) (size!49590 (array!101644 (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49590 a!2804)))))))

(declare-fun res!1048506 () Bool)

(assert (=> b!1531077 (= res!1048506 (= (select (arr!49039 (array!101644 (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49590 a!2804))) (index!55296 lt!663043)) (select (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(assert (=> b!1531077 (=> res!1048506 e!853149)))

(declare-fun e!853152 () Bool)

(assert (=> b!1531077 (= e!853152 e!853149)))

(declare-fun b!1531078 () Bool)

(assert (=> b!1531078 (= e!853151 (Intermediate!13225 true (toIndex!0 (select (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1531079 () Bool)

(assert (=> b!1531079 (= e!853150 e!853152)))

(declare-fun res!1048507 () Bool)

(assert (=> b!1531079 (= res!1048507 (and (is-Intermediate!13225 lt!663043) (not (undefined!14037 lt!663043)) (bvslt (x!136997 lt!663043) #b01111111111111111111111111111110) (bvsge (x!136997 lt!663043) #b00000000000000000000000000000000) (bvsge (x!136997 lt!663043) #b00000000000000000000000000000000)))))

(assert (=> b!1531079 (=> (not res!1048507) (not e!853152))))

(declare-fun b!1531072 () Bool)

(assert (=> b!1531072 (= e!853148 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101644 (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49590 a!2804)) mask!2512))))

(declare-fun d!159849 () Bool)

(assert (=> d!159849 e!853150))

(declare-fun c!140846 () Bool)

(assert (=> d!159849 (= c!140846 (and (is-Intermediate!13225 lt!663043) (undefined!14037 lt!663043)))))

(assert (=> d!159849 (= lt!663043 e!853151)))

(declare-fun c!140844 () Bool)

(assert (=> d!159849 (= c!140844 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159849 (= lt!663044 (select (arr!49039 (array!101644 (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49590 a!2804))) (toIndex!0 (select (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!159849 (validMask!0 mask!2512)))

(assert (=> d!159849 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101644 (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49590 a!2804)) mask!2512) lt!663043)))

(assert (= (and d!159849 c!140844) b!1531078))

(assert (= (and d!159849 (not c!140844)) b!1531076))

(assert (= (and b!1531076 c!140845) b!1531074))

(assert (= (and b!1531076 (not c!140845)) b!1531072))

(assert (= (and d!159849 c!140846) b!1531071))

(assert (= (and d!159849 (not c!140846)) b!1531079))

(assert (= (and b!1531079 res!1048507) b!1531077))

(assert (= (and b!1531077 (not res!1048506)) b!1531073))

(assert (= (and b!1531073 (not res!1048505)) b!1531075))

(declare-fun m!1413869 () Bool)

(assert (=> b!1531077 m!1413869))

(assert (=> b!1531073 m!1413869))

(assert (=> d!159849 m!1413747))

(declare-fun m!1413871 () Bool)

(assert (=> d!159849 m!1413871))

(assert (=> d!159849 m!1413735))

(assert (=> b!1531075 m!1413869))

(assert (=> b!1531072 m!1413747))

(declare-fun m!1413873 () Bool)

(assert (=> b!1531072 m!1413873))

(assert (=> b!1531072 m!1413873))

(assert (=> b!1531072 m!1413745))

(declare-fun m!1413875 () Bool)

(assert (=> b!1531072 m!1413875))

(assert (=> b!1530912 d!159849))

(declare-fun d!159859 () Bool)

(declare-fun lt!663052 () (_ BitVec 32))

(declare-fun lt!663051 () (_ BitVec 32))

(assert (=> d!159859 (= lt!663052 (bvmul (bvxor lt!663051 (bvlshr lt!663051 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159859 (= lt!663051 ((_ extract 31 0) (bvand (bvxor (select (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159859 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1048508 (let ((h!37145 ((_ extract 31 0) (bvand (bvxor (select (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!137004 (bvmul (bvxor h!37145 (bvlshr h!37145 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!137004 (bvlshr x!137004 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1048508 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1048508 #b00000000000000000000000000000000))))))

(assert (=> d!159859 (= (toIndex!0 (select (store (arr!49039 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!663052 (bvlshr lt!663052 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1530912 d!159859))

(declare-fun d!159867 () Bool)

(declare-fun lt!663084 () SeekEntryResult!13225)

(assert (=> d!159867 (and (or (is-MissingVacant!13225 lt!663084) (not (is-Found!13225 lt!663084)) (and (bvsge (index!55295 lt!663084) #b00000000000000000000000000000000) (bvslt (index!55295 lt!663084) (size!49590 a!2804)))) (not (is-MissingVacant!13225 lt!663084)) (or (not (is-Found!13225 lt!663084)) (= (select (arr!49039 a!2804) (index!55295 lt!663084)) (select (arr!49039 a!2804) j!70))))))

(declare-fun e!853196 () SeekEntryResult!13225)

(assert (=> d!159867 (= lt!663084 e!853196)))

(declare-fun c!140873 () Bool)

(declare-fun lt!663082 () SeekEntryResult!13225)

(assert (=> d!159867 (= c!140873 (and (is-Intermediate!13225 lt!663082) (undefined!14037 lt!663082)))))

(assert (=> d!159867 (= lt!663082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49039 a!2804) j!70) mask!2512) (select (arr!49039 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159867 (validMask!0 mask!2512)))

(assert (=> d!159867 (= (seekEntry!0 (select (arr!49039 a!2804) j!70) a!2804 mask!2512) lt!663084)))

(declare-fun b!1531152 () Bool)

(declare-fun e!853195 () SeekEntryResult!13225)

(declare-fun lt!663083 () SeekEntryResult!13225)

(assert (=> b!1531152 (= e!853195 (ite (is-MissingVacant!13225 lt!663083) (MissingZero!13225 (index!55297 lt!663083)) lt!663083))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101643 (_ BitVec 32)) SeekEntryResult!13225)

(assert (=> b!1531152 (= lt!663083 (seekKeyOrZeroReturnVacant!0 (x!136997 lt!663082) (index!55296 lt!663082) (index!55296 lt!663082) (select (arr!49039 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531153 () Bool)

(declare-fun e!853197 () SeekEntryResult!13225)

(assert (=> b!1531153 (= e!853197 (Found!13225 (index!55296 lt!663082)))))

(declare-fun b!1531154 () Bool)

(assert (=> b!1531154 (= e!853196 e!853197)))

(declare-fun lt!663085 () (_ BitVec 64))

(assert (=> b!1531154 (= lt!663085 (select (arr!49039 a!2804) (index!55296 lt!663082)))))

(declare-fun c!140874 () Bool)

(assert (=> b!1531154 (= c!140874 (= lt!663085 (select (arr!49039 a!2804) j!70)))))

(declare-fun b!1531155 () Bool)

(assert (=> b!1531155 (= e!853195 (MissingZero!13225 (index!55296 lt!663082)))))

(declare-fun b!1531156 () Bool)

(assert (=> b!1531156 (= e!853196 Undefined!13225)))

(declare-fun b!1531157 () Bool)

(declare-fun c!140872 () Bool)

(assert (=> b!1531157 (= c!140872 (= lt!663085 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1531157 (= e!853197 e!853195)))

(assert (= (and d!159867 c!140873) b!1531156))

(assert (= (and d!159867 (not c!140873)) b!1531154))

(assert (= (and b!1531154 c!140874) b!1531153))

(assert (= (and b!1531154 (not c!140874)) b!1531157))

(assert (= (and b!1531157 c!140872) b!1531155))

(assert (= (and b!1531157 (not c!140872)) b!1531152))

(declare-fun m!1413915 () Bool)

(assert (=> d!159867 m!1413915))

(assert (=> d!159867 m!1413731))

(assert (=> d!159867 m!1413755))

(assert (=> d!159867 m!1413755))

(assert (=> d!159867 m!1413731))

(assert (=> d!159867 m!1413757))

(assert (=> d!159867 m!1413735))

(assert (=> b!1531152 m!1413731))

(declare-fun m!1413917 () Bool)

(assert (=> b!1531152 m!1413917))

(declare-fun m!1413919 () Bool)

(assert (=> b!1531154 m!1413919))

(assert (=> b!1530911 d!159867))

(declare-fun b!1531162 () Bool)

(declare-fun e!853201 () Bool)

(declare-fun lt!663089 () SeekEntryResult!13225)

(assert (=> b!1531162 (= e!853201 (bvsge (x!136997 lt!663089) #b01111111111111111111111111111110))))

(declare-fun b!1531166 () Bool)

(assert (=> b!1531166 (and (bvsge (index!55296 lt!663089) #b00000000000000000000000000000000) (bvslt (index!55296 lt!663089) (size!49590 a!2804)))))

(declare-fun res!1048529 () Bool)

(assert (=> b!1531166 (= res!1048529 (= (select (arr!49039 a!2804) (index!55296 lt!663089)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!853200 () Bool)

(assert (=> b!1531166 (=> res!1048529 e!853200)))

(declare-fun b!1531167 () Bool)

(declare-fun e!853198 () SeekEntryResult!13225)

(assert (=> b!1531167 (= e!853198 (Intermediate!13225 false (toIndex!0 (select (arr!49039 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1531168 () Bool)

(assert (=> b!1531168 (and (bvsge (index!55296 lt!663089) #b00000000000000000000000000000000) (bvslt (index!55296 lt!663089) (size!49590 a!2804)))))

(assert (=> b!1531168 (= e!853200 (= (select (arr!49039 a!2804) (index!55296 lt!663089)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1531169 () Bool)

(declare-fun e!853204 () SeekEntryResult!13225)

(assert (=> b!1531169 (= e!853204 e!853198)))

(declare-fun c!140879 () Bool)

(declare-fun lt!663091 () (_ BitVec 64))

(assert (=> b!1531169 (= c!140879 (or (= lt!663091 (select (arr!49039 a!2804) j!70)) (= (bvadd lt!663091 lt!663091) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1531170 () Bool)

(assert (=> b!1531170 (and (bvsge (index!55296 lt!663089) #b00000000000000000000000000000000) (bvslt (index!55296 lt!663089) (size!49590 a!2804)))))

(declare-fun res!1048530 () Bool)

(assert (=> b!1531170 (= res!1048530 (= (select (arr!49039 a!2804) (index!55296 lt!663089)) (select (arr!49039 a!2804) j!70)))))

(assert (=> b!1531170 (=> res!1048530 e!853200)))

(declare-fun e!853205 () Bool)

(assert (=> b!1531170 (= e!853205 e!853200)))

(declare-fun b!1531171 () Bool)

(assert (=> b!1531171 (= e!853204 (Intermediate!13225 true (toIndex!0 (select (arr!49039 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1531172 () Bool)

(assert (=> b!1531172 (= e!853201 e!853205)))

(declare-fun res!1048531 () Bool)

(assert (=> b!1531172 (= res!1048531 (and (is-Intermediate!13225 lt!663089) (not (undefined!14037 lt!663089)) (bvslt (x!136997 lt!663089) #b01111111111111111111111111111110) (bvsge (x!136997 lt!663089) #b00000000000000000000000000000000) (bvsge (x!136997 lt!663089) #b00000000000000000000000000000000)))))

(assert (=> b!1531172 (=> (not res!1048531) (not e!853205))))

(declare-fun b!1531164 () Bool)

(assert (=> b!1531164 (= e!853198 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!49039 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!49039 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!159883 () Bool)

(assert (=> d!159883 e!853201))

(declare-fun c!140880 () Bool)

(assert (=> d!159883 (= c!140880 (and (is-Intermediate!13225 lt!663089) (undefined!14037 lt!663089)))))

(assert (=> d!159883 (= lt!663089 e!853204)))

(declare-fun c!140877 () Bool)

(assert (=> d!159883 (= c!140877 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159883 (= lt!663091 (select (arr!49039 a!2804) (toIndex!0 (select (arr!49039 a!2804) j!70) mask!2512)))))

(assert (=> d!159883 (validMask!0 mask!2512)))

(assert (=> d!159883 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49039 a!2804) j!70) mask!2512) (select (arr!49039 a!2804) j!70) a!2804 mask!2512) lt!663089)))

(assert (= (and d!159883 c!140877) b!1531171))

(assert (= (and d!159883 (not c!140877)) b!1531169))

(assert (= (and b!1531169 c!140879) b!1531167))

(assert (= (and b!1531169 (not c!140879)) b!1531164))

(assert (= (and d!159883 c!140880) b!1531162))

(assert (= (and d!159883 (not c!140880)) b!1531172))

(assert (= (and b!1531172 res!1048531) b!1531170))

(assert (= (and b!1531170 (not res!1048530)) b!1531166))

(assert (= (and b!1531166 (not res!1048529)) b!1531168))

(declare-fun m!1413927 () Bool)

(assert (=> b!1531170 m!1413927))

(assert (=> b!1531166 m!1413927))

(assert (=> d!159883 m!1413755))

(declare-fun m!1413929 () Bool)

(assert (=> d!159883 m!1413929))

(assert (=> d!159883 m!1413735))

(assert (=> b!1531168 m!1413927))

(assert (=> b!1531164 m!1413755))

(declare-fun m!1413931 () Bool)

(assert (=> b!1531164 m!1413931))

(assert (=> b!1531164 m!1413931))

(assert (=> b!1531164 m!1413731))

(declare-fun m!1413933 () Bool)

(assert (=> b!1531164 m!1413933))

(assert (=> b!1530910 d!159883))

(declare-fun d!159887 () Bool)

(declare-fun lt!663096 () (_ BitVec 32))

(declare-fun lt!663095 () (_ BitVec 32))

(assert (=> d!159887 (= lt!663096 (bvmul (bvxor lt!663095 (bvlshr lt!663095 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159887 (= lt!663095 ((_ extract 31 0) (bvand (bvxor (select (arr!49039 a!2804) j!70) (bvlshr (select (arr!49039 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159887 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1048508 (let ((h!37145 ((_ extract 31 0) (bvand (bvxor (select (arr!49039 a!2804) j!70) (bvlshr (select (arr!49039 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!137004 (bvmul (bvxor h!37145 (bvlshr h!37145 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!137004 (bvlshr x!137004 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1048508 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1048508 #b00000000000000000000000000000000))))))

(assert (=> d!159887 (= (toIndex!0 (select (arr!49039 a!2804) j!70) mask!2512) (bvand (bvxor lt!663096 (bvlshr lt!663096 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1530910 d!159887))

(declare-fun d!159891 () Bool)

(assert (=> d!159891 (= (validKeyInArray!0 (select (arr!49039 a!2804) j!70)) (and (not (= (select (arr!49039 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49039 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1530914 d!159891))

(declare-fun b!1531182 () Bool)

(declare-fun e!853213 () Bool)

(declare-fun lt!663099 () SeekEntryResult!13225)

(assert (=> b!1531182 (= e!853213 (bvsge (x!136997 lt!663099) #b01111111111111111111111111111110))))

(declare-fun b!1531184 () Bool)

(assert (=> b!1531184 (and (bvsge (index!55296 lt!663099) #b00000000000000000000000000000000) (bvslt (index!55296 lt!663099) (size!49590 a!2804)))))

(declare-fun res!1048535 () Bool)

(assert (=> b!1531184 (= res!1048535 (= (select (arr!49039 a!2804) (index!55296 lt!663099)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!853212 () Bool)

(assert (=> b!1531184 (=> res!1048535 e!853212)))

(declare-fun b!1531185 () Bool)

(declare-fun e!853211 () SeekEntryResult!13225)

(assert (=> b!1531185 (= e!853211 (Intermediate!13225 false index!487 x!534))))

(declare-fun b!1531186 () Bool)

(assert (=> b!1531186 (and (bvsge (index!55296 lt!663099) #b00000000000000000000000000000000) (bvslt (index!55296 lt!663099) (size!49590 a!2804)))))

(assert (=> b!1531186 (= e!853212 (= (select (arr!49039 a!2804) (index!55296 lt!663099)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1531187 () Bool)

(declare-fun e!853214 () SeekEntryResult!13225)

(assert (=> b!1531187 (= e!853214 e!853211)))

(declare-fun lt!663100 () (_ BitVec 64))

(declare-fun c!140885 () Bool)

(assert (=> b!1531187 (= c!140885 (or (= lt!663100 (select (arr!49039 a!2804) j!70)) (= (bvadd lt!663100 lt!663100) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1531188 () Bool)

(assert (=> b!1531188 (and (bvsge (index!55296 lt!663099) #b00000000000000000000000000000000) (bvslt (index!55296 lt!663099) (size!49590 a!2804)))))

(declare-fun res!1048536 () Bool)

(assert (=> b!1531188 (= res!1048536 (= (select (arr!49039 a!2804) (index!55296 lt!663099)) (select (arr!49039 a!2804) j!70)))))

(assert (=> b!1531188 (=> res!1048536 e!853212)))

(declare-fun e!853215 () Bool)

(assert (=> b!1531188 (= e!853215 e!853212)))

(declare-fun b!1531189 () Bool)

(assert (=> b!1531189 (= e!853214 (Intermediate!13225 true index!487 x!534))))

(declare-fun b!1531190 () Bool)

(assert (=> b!1531190 (= e!853213 e!853215)))

(declare-fun res!1048537 () Bool)

(assert (=> b!1531190 (= res!1048537 (and (is-Intermediate!13225 lt!663099) (not (undefined!14037 lt!663099)) (bvslt (x!136997 lt!663099) #b01111111111111111111111111111110) (bvsge (x!136997 lt!663099) #b00000000000000000000000000000000) (bvsge (x!136997 lt!663099) x!534)))))

(assert (=> b!1531190 (=> (not res!1048537) (not e!853215))))

(declare-fun b!1531183 () Bool)

(assert (=> b!1531183 (= e!853211 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!49039 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!159893 () Bool)

(assert (=> d!159893 e!853213))

(declare-fun c!140886 () Bool)

(assert (=> d!159893 (= c!140886 (and (is-Intermediate!13225 lt!663099) (undefined!14037 lt!663099)))))

(assert (=> d!159893 (= lt!663099 e!853214)))

(declare-fun c!140884 () Bool)

(assert (=> d!159893 (= c!140884 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!159893 (= lt!663100 (select (arr!49039 a!2804) index!487))))

(assert (=> d!159893 (validMask!0 mask!2512)))

(assert (=> d!159893 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49039 a!2804) j!70) a!2804 mask!2512) lt!663099)))

(assert (= (and d!159893 c!140884) b!1531189))

(assert (= (and d!159893 (not c!140884)) b!1531187))

(assert (= (and b!1531187 c!140885) b!1531185))

(assert (= (and b!1531187 (not c!140885)) b!1531183))

(assert (= (and d!159893 c!140886) b!1531182))

(assert (= (and d!159893 (not c!140886)) b!1531190))

(assert (= (and b!1531190 res!1048537) b!1531188))

(assert (= (and b!1531188 (not res!1048536)) b!1531184))

(assert (= (and b!1531184 (not res!1048535)) b!1531186))

(declare-fun m!1413945 () Bool)

(assert (=> b!1531188 m!1413945))

(assert (=> b!1531184 m!1413945))

(declare-fun m!1413947 () Bool)

(assert (=> d!159893 m!1413947))

(assert (=> d!159893 m!1413735))

(assert (=> b!1531186 m!1413945))

(assert (=> b!1531183 m!1413741))

(assert (=> b!1531183 m!1413741))

(assert (=> b!1531183 m!1413731))

(declare-fun m!1413949 () Bool)

(assert (=> b!1531183 m!1413949))

(assert (=> b!1530916 d!159893))

(declare-fun d!159899 () Bool)

(declare-fun res!1048546 () Bool)

(declare-fun e!853229 () Bool)

(assert (=> d!159899 (=> res!1048546 e!853229)))

(assert (=> d!159899 (= res!1048546 (bvsge #b00000000000000000000000000000000 (size!49590 a!2804)))))

(assert (=> d!159899 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!853229)))

(declare-fun b!1531208 () Bool)

(declare-fun e!853228 () Bool)

(declare-fun e!853227 () Bool)

(assert (=> b!1531208 (= e!853228 e!853227)))

(declare-fun lt!663112 () (_ BitVec 64))

(assert (=> b!1531208 (= lt!663112 (select (arr!49039 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!663111 () Unit!51190)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101643 (_ BitVec 64) (_ BitVec 32)) Unit!51190)

(assert (=> b!1531208 (= lt!663111 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!663112 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101643 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1531208 (arrayContainsKey!0 a!2804 lt!663112 #b00000000000000000000000000000000)))

(declare-fun lt!663113 () Unit!51190)

(assert (=> b!1531208 (= lt!663113 lt!663111)))

(declare-fun res!1048545 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101643 (_ BitVec 32)) SeekEntryResult!13225)

(assert (=> b!1531208 (= res!1048545 (= (seekEntryOrOpen!0 (select (arr!49039 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13225 #b00000000000000000000000000000000)))))

(assert (=> b!1531208 (=> (not res!1048545) (not e!853227))))

(declare-fun b!1531209 () Bool)

(assert (=> b!1531209 (= e!853229 e!853228)))

(declare-fun c!140892 () Bool)

(assert (=> b!1531209 (= c!140892 (validKeyInArray!0 (select (arr!49039 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1531210 () Bool)

(declare-fun call!68539 () Bool)

(assert (=> b!1531210 (= e!853227 call!68539)))

(declare-fun bm!68536 () Bool)

(assert (=> bm!68536 (= call!68539 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1531211 () Bool)

(assert (=> b!1531211 (= e!853228 call!68539)))

(assert (= (and d!159899 (not res!1048546)) b!1531209))

(assert (= (and b!1531209 c!140892) b!1531208))

(assert (= (and b!1531209 (not c!140892)) b!1531211))

(assert (= (and b!1531208 res!1048545) b!1531210))

(assert (= (or b!1531210 b!1531211) bm!68536))

(declare-fun m!1413957 () Bool)

(assert (=> b!1531208 m!1413957))

(declare-fun m!1413959 () Bool)

(assert (=> b!1531208 m!1413959))

(declare-fun m!1413961 () Bool)

(assert (=> b!1531208 m!1413961))

(assert (=> b!1531208 m!1413957))

(declare-fun m!1413963 () Bool)

(assert (=> b!1531208 m!1413963))

(assert (=> b!1531209 m!1413957))

(assert (=> b!1531209 m!1413957))

(declare-fun m!1413965 () Bool)

(assert (=> b!1531209 m!1413965))

(declare-fun m!1413967 () Bool)

(assert (=> bm!68536 m!1413967))

(assert (=> b!1530915 d!159899))

(declare-fun d!159907 () Bool)

(declare-fun res!1048551 () Bool)

(declare-fun e!853237 () Bool)

(assert (=> d!159907 (=> res!1048551 e!853237)))

(assert (=> d!159907 (= res!1048551 (bvsge j!70 (size!49590 a!2804)))))

(assert (=> d!159907 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!853237)))

(declare-fun b!1531221 () Bool)

(declare-fun e!853236 () Bool)

(declare-fun e!853235 () Bool)

(assert (=> b!1531221 (= e!853236 e!853235)))

(declare-fun lt!663121 () (_ BitVec 64))

(assert (=> b!1531221 (= lt!663121 (select (arr!49039 a!2804) j!70))))

(declare-fun lt!663116 () Unit!51190)

(assert (=> b!1531221 (= lt!663116 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!663121 j!70))))

(assert (=> b!1531221 (arrayContainsKey!0 a!2804 lt!663121 #b00000000000000000000000000000000)))

(declare-fun lt!663122 () Unit!51190)

(assert (=> b!1531221 (= lt!663122 lt!663116)))

(declare-fun res!1048550 () Bool)

(assert (=> b!1531221 (= res!1048550 (= (seekEntryOrOpen!0 (select (arr!49039 a!2804) j!70) a!2804 mask!2512) (Found!13225 j!70)))))

(assert (=> b!1531221 (=> (not res!1048550) (not e!853235))))

(declare-fun b!1531222 () Bool)

(assert (=> b!1531222 (= e!853237 e!853236)))

(declare-fun c!140896 () Bool)

(assert (=> b!1531222 (= c!140896 (validKeyInArray!0 (select (arr!49039 a!2804) j!70)))))

(declare-fun b!1531223 () Bool)

(declare-fun call!68540 () Bool)

(assert (=> b!1531223 (= e!853235 call!68540)))

(declare-fun bm!68537 () Bool)

(assert (=> bm!68537 (= call!68540 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1531224 () Bool)

(assert (=> b!1531224 (= e!853236 call!68540)))

(assert (= (and d!159907 (not res!1048551)) b!1531222))

(assert (= (and b!1531222 c!140896) b!1531221))

(assert (= (and b!1531222 (not c!140896)) b!1531224))

(assert (= (and b!1531221 res!1048550) b!1531223))

(assert (= (or b!1531223 b!1531224) bm!68537))

(assert (=> b!1531221 m!1413731))

(declare-fun m!1413977 () Bool)

(assert (=> b!1531221 m!1413977))

(declare-fun m!1413979 () Bool)

(assert (=> b!1531221 m!1413979))

(assert (=> b!1531221 m!1413731))

(declare-fun m!1413981 () Bool)

(assert (=> b!1531221 m!1413981))

(assert (=> b!1531222 m!1413731))

(assert (=> b!1531222 m!1413731))

(assert (=> b!1531222 m!1413753))

(declare-fun m!1413983 () Bool)

(assert (=> bm!68537 m!1413983))

(assert (=> b!1530909 d!159907))

(declare-fun d!159911 () Bool)

(assert (=> d!159911 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!663137 () Unit!51190)

(declare-fun choose!38 (array!101643 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51190)

(assert (=> d!159911 (= lt!663137 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159911 (validMask!0 mask!2512)))

(assert (=> d!159911 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!663137)))

(declare-fun bs!43892 () Bool)

(assert (= bs!43892 d!159911))

(assert (=> bs!43892 m!1413767))

(declare-fun m!1413989 () Bool)

(assert (=> bs!43892 m!1413989))

(assert (=> bs!43892 m!1413735))

(assert (=> b!1530909 d!159911))

(declare-fun d!159913 () Bool)

(declare-fun lt!663142 () (_ BitVec 32))

(assert (=> d!159913 (and (bvsge lt!663142 #b00000000000000000000000000000000) (bvslt lt!663142 (bvadd mask!2512 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!159913 (= lt!663142 (choose!52 index!487 x!534 mask!2512))))

(assert (=> d!159913 (validMask!0 mask!2512)))

(assert (=> d!159913 (= (nextIndex!0 index!487 x!534 mask!2512) lt!663142)))

(declare-fun bs!43893 () Bool)

(assert (= bs!43893 d!159913))

(declare-fun m!1413993 () Bool)

(assert (=> bs!43893 m!1413993))

(assert (=> bs!43893 m!1413735))

(assert (=> b!1530919 d!159913))

(declare-fun b!1531243 () Bool)

(declare-fun e!853249 () Bool)

(declare-fun lt!663143 () SeekEntryResult!13225)

(assert (=> b!1531243 (= e!853249 (bvsge (x!136997 lt!663143) #b01111111111111111111111111111110))))

(declare-fun b!1531245 () Bool)

(assert (=> b!1531245 (and (bvsge (index!55296 lt!663143) #b00000000000000000000000000000000) (bvslt (index!55296 lt!663143) (size!49590 a!2804)))))

(declare-fun res!1048553 () Bool)

(assert (=> b!1531245 (= res!1048553 (= (select (arr!49039 a!2804) (index!55296 lt!663143)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!853248 () Bool)

(assert (=> b!1531245 (=> res!1048553 e!853248)))

(declare-fun b!1531246 () Bool)

(declare-fun e!853247 () SeekEntryResult!13225)

(assert (=> b!1531246 (= e!853247 (Intermediate!13225 false lt!662986 (bvadd #b00000000000000000000000000000001 x!534)))))

(declare-fun b!1531247 () Bool)

(assert (=> b!1531247 (and (bvsge (index!55296 lt!663143) #b00000000000000000000000000000000) (bvslt (index!55296 lt!663143) (size!49590 a!2804)))))

(assert (=> b!1531247 (= e!853248 (= (select (arr!49039 a!2804) (index!55296 lt!663143)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1531248 () Bool)

(declare-fun e!853250 () SeekEntryResult!13225)

(assert (=> b!1531248 (= e!853250 e!853247)))

(declare-fun c!140907 () Bool)

(declare-fun lt!663144 () (_ BitVec 64))

(assert (=> b!1531248 (= c!140907 (or (= lt!663144 (select (arr!49039 a!2804) j!70)) (= (bvadd lt!663144 lt!663144) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1531249 () Bool)

(assert (=> b!1531249 (and (bvsge (index!55296 lt!663143) #b00000000000000000000000000000000) (bvslt (index!55296 lt!663143) (size!49590 a!2804)))))

(declare-fun res!1048554 () Bool)

(assert (=> b!1531249 (= res!1048554 (= (select (arr!49039 a!2804) (index!55296 lt!663143)) (select (arr!49039 a!2804) j!70)))))

(assert (=> b!1531249 (=> res!1048554 e!853248)))

(declare-fun e!853251 () Bool)

(assert (=> b!1531249 (= e!853251 e!853248)))

(declare-fun b!1531250 () Bool)

(assert (=> b!1531250 (= e!853250 (Intermediate!13225 true lt!662986 (bvadd #b00000000000000000000000000000001 x!534)))))

(declare-fun b!1531251 () Bool)

(assert (=> b!1531251 (= e!853249 e!853251)))

(declare-fun res!1048555 () Bool)

(assert (=> b!1531251 (= res!1048555 (and (is-Intermediate!13225 lt!663143) (not (undefined!14037 lt!663143)) (bvslt (x!136997 lt!663143) #b01111111111111111111111111111110) (bvsge (x!136997 lt!663143) #b00000000000000000000000000000000) (bvsge (x!136997 lt!663143) (bvadd #b00000000000000000000000000000001 x!534))))))

(assert (=> b!1531251 (=> (not res!1048555) (not e!853251))))

(declare-fun b!1531244 () Bool)

(assert (=> b!1531244 (= e!853247 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534 #b00000000000000000000000000000001) (nextIndex!0 lt!662986 (bvadd #b00000000000000000000000000000001 x!534) mask!2512) (select (arr!49039 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!159921 () Bool)

(assert (=> d!159921 e!853249))

(declare-fun c!140908 () Bool)

(assert (=> d!159921 (= c!140908 (and (is-Intermediate!13225 lt!663143) (undefined!14037 lt!663143)))))

(assert (=> d!159921 (= lt!663143 e!853250)))

(declare-fun c!140906 () Bool)

(assert (=> d!159921 (= c!140906 (bvsge (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110))))

(assert (=> d!159921 (= lt!663144 (select (arr!49039 a!2804) lt!662986))))

(assert (=> d!159921 (validMask!0 mask!2512)))

(assert (=> d!159921 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!662986 (select (arr!49039 a!2804) j!70) a!2804 mask!2512) lt!663143)))

(assert (= (and d!159921 c!140906) b!1531250))

(assert (= (and d!159921 (not c!140906)) b!1531248))

(assert (= (and b!1531248 c!140907) b!1531246))

(assert (= (and b!1531248 (not c!140907)) b!1531244))

(assert (= (and d!159921 c!140908) b!1531243))

(assert (= (and d!159921 (not c!140908)) b!1531251))

(assert (= (and b!1531251 res!1048555) b!1531249))

(assert (= (and b!1531249 (not res!1048554)) b!1531245))

(assert (= (and b!1531245 (not res!1048553)) b!1531247))

(declare-fun m!1413995 () Bool)

(assert (=> b!1531249 m!1413995))

(assert (=> b!1531245 m!1413995))

(declare-fun m!1413997 () Bool)

(assert (=> d!159921 m!1413997))

(assert (=> d!159921 m!1413735))

(assert (=> b!1531247 m!1413995))

(declare-fun m!1413999 () Bool)

(assert (=> b!1531244 m!1413999))

(assert (=> b!1531244 m!1413999))

(assert (=> b!1531244 m!1413731))

(declare-fun m!1414001 () Bool)

(assert (=> b!1531244 m!1414001))

(assert (=> b!1530908 d!159921))

(declare-fun d!159923 () Bool)

(declare-fun res!1048570 () Bool)

(declare-fun e!853269 () Bool)

(assert (=> d!159923 (=> res!1048570 e!853269)))

(assert (=> d!159923 (= res!1048570 (bvsge #b00000000000000000000000000000000 (size!49590 a!2804)))))

(assert (=> d!159923 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35699) e!853269)))

(declare-fun b!1531274 () Bool)

(declare-fun e!853272 () Bool)

(declare-fun call!68546 () Bool)

(assert (=> b!1531274 (= e!853272 call!68546)))

(declare-fun b!1531275 () Bool)

(declare-fun e!853271 () Bool)

(declare-fun contains!10017 (List!35702 (_ BitVec 64)) Bool)

(assert (=> b!1531275 (= e!853271 (contains!10017 Nil!35699 (select (arr!49039 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1531276 () Bool)

(declare-fun e!853270 () Bool)

(assert (=> b!1531276 (= e!853269 e!853270)))

(declare-fun res!1048569 () Bool)

(assert (=> b!1531276 (=> (not res!1048569) (not e!853270))))

(assert (=> b!1531276 (= res!1048569 (not e!853271))))

(declare-fun res!1048568 () Bool)

(assert (=> b!1531276 (=> (not res!1048568) (not e!853271))))

(assert (=> b!1531276 (= res!1048568 (validKeyInArray!0 (select (arr!49039 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1531277 () Bool)

(assert (=> b!1531277 (= e!853272 call!68546)))

(declare-fun b!1531278 () Bool)

(assert (=> b!1531278 (= e!853270 e!853272)))

(declare-fun c!140914 () Bool)

(assert (=> b!1531278 (= c!140914 (validKeyInArray!0 (select (arr!49039 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68543 () Bool)

(assert (=> bm!68543 (= call!68546 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140914 (Cons!35698 (select (arr!49039 a!2804) #b00000000000000000000000000000000) Nil!35699) Nil!35699)))))

(assert (= (and d!159923 (not res!1048570)) b!1531276))

(assert (= (and b!1531276 res!1048568) b!1531275))

(assert (= (and b!1531276 res!1048569) b!1531278))

(assert (= (and b!1531278 c!140914) b!1531274))

(assert (= (and b!1531278 (not c!140914)) b!1531277))

(assert (= (or b!1531274 b!1531277) bm!68543))

(assert (=> b!1531275 m!1413957))

(assert (=> b!1531275 m!1413957))

(declare-fun m!1414015 () Bool)

(assert (=> b!1531275 m!1414015))

(assert (=> b!1531276 m!1413957))

(assert (=> b!1531276 m!1413957))

(assert (=> b!1531276 m!1413965))

(assert (=> b!1531278 m!1413957))

(assert (=> b!1531278 m!1413957))

(assert (=> b!1531278 m!1413965))

(assert (=> bm!68543 m!1413957))

(declare-fun m!1414017 () Bool)

(assert (=> bm!68543 m!1414017))

(assert (=> b!1530918 d!159923))

(declare-fun d!159927 () Bool)

(assert (=> d!159927 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!130480 d!159927))

(declare-fun d!159937 () Bool)

(assert (=> d!159937 (= (array_inv!37984 a!2804) (bvsge (size!49590 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!130480 d!159937))

(declare-fun d!159939 () Bool)

(assert (=> d!159939 (= (validKeyInArray!0 (select (arr!49039 a!2804) i!961)) (and (not (= (select (arr!49039 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49039 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1530907 d!159939))

(push 1)

