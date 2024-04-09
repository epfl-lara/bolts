; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129398 () Bool)

(assert start!129398)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101167 0))(
  ( (array!101168 (arr!48816 (Array (_ BitVec 32) (_ BitVec 64))) (size!49367 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101167)

(declare-fun e!847679 () Bool)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun b!1519635 () Bool)

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1519635 (= e!847679 (not (or (not (= (select (arr!48816 a!2804) j!70) (select (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (= index!487 resIndex!21))))))

(declare-fun e!847681 () Bool)

(assert (=> b!1519635 e!847681))

(declare-fun res!1039618 () Bool)

(assert (=> b!1519635 (=> (not res!1039618) (not e!847681))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101167 (_ BitVec 32)) Bool)

(assert (=> b!1519635 (= res!1039618 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50840 0))(
  ( (Unit!50841) )
))
(declare-fun lt!658699 () Unit!50840)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101167 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50840)

(assert (=> b!1519635 (= lt!658699 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1519636 () Bool)

(declare-fun res!1039614 () Bool)

(declare-fun e!847680 () Bool)

(assert (=> b!1519636 (=> (not res!1039614) (not e!847680))))

(declare-datatypes ((List!35479 0))(
  ( (Nil!35476) (Cons!35475 (h!36888 (_ BitVec 64)) (t!50180 List!35479)) )
))
(declare-fun arrayNoDuplicates!0 (array!101167 (_ BitVec 32) List!35479) Bool)

(assert (=> b!1519636 (= res!1039614 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35476))))

(declare-fun b!1519637 () Bool)

(declare-fun res!1039612 () Bool)

(assert (=> b!1519637 (=> (not res!1039612) (not e!847680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1519637 (= res!1039612 (validKeyInArray!0 (select (arr!48816 a!2804) j!70)))))

(declare-fun b!1519638 () Bool)

(assert (=> b!1519638 (= e!847680 e!847679)))

(declare-fun res!1039615 () Bool)

(assert (=> b!1519638 (=> (not res!1039615) (not e!847679))))

(declare-datatypes ((SeekEntryResult!13008 0))(
  ( (MissingZero!13008 (index!54426 (_ BitVec 32))) (Found!13008 (index!54427 (_ BitVec 32))) (Intermediate!13008 (undefined!13820 Bool) (index!54428 (_ BitVec 32)) (x!136099 (_ BitVec 32))) (Undefined!13008) (MissingVacant!13008 (index!54429 (_ BitVec 32))) )
))
(declare-fun lt!658697 () SeekEntryResult!13008)

(declare-fun lt!658698 () SeekEntryResult!13008)

(assert (=> b!1519638 (= res!1039615 (= lt!658697 lt!658698))))

(assert (=> b!1519638 (= lt!658698 (Intermediate!13008 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101167 (_ BitVec 32)) SeekEntryResult!13008)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519638 (= lt!658697 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48816 a!2804) j!70) mask!2512) (select (arr!48816 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519639 () Bool)

(declare-fun res!1039620 () Bool)

(assert (=> b!1519639 (=> (not res!1039620) (not e!847680))))

(assert (=> b!1519639 (= res!1039620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1519640 () Bool)

(declare-fun res!1039613 () Bool)

(assert (=> b!1519640 (=> (not res!1039613) (not e!847680))))

(assert (=> b!1519640 (= res!1039613 (and (= (size!49367 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49367 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49367 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1039617 () Bool)

(assert (=> start!129398 (=> (not res!1039617) (not e!847680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129398 (= res!1039617 (validMask!0 mask!2512))))

(assert (=> start!129398 e!847680))

(assert (=> start!129398 true))

(declare-fun array_inv!37761 (array!101167) Bool)

(assert (=> start!129398 (array_inv!37761 a!2804)))

(declare-fun b!1519641 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101167 (_ BitVec 32)) SeekEntryResult!13008)

(assert (=> b!1519641 (= e!847681 (= (seekEntry!0 (select (arr!48816 a!2804) j!70) a!2804 mask!2512) (Found!13008 j!70)))))

(declare-fun b!1519642 () Bool)

(declare-fun res!1039611 () Bool)

(assert (=> b!1519642 (=> (not res!1039611) (not e!847679))))

(assert (=> b!1519642 (= res!1039611 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48816 a!2804) j!70) a!2804 mask!2512) lt!658698))))

(declare-fun b!1519643 () Bool)

(declare-fun res!1039616 () Bool)

(assert (=> b!1519643 (=> (not res!1039616) (not e!847680))))

(assert (=> b!1519643 (= res!1039616 (validKeyInArray!0 (select (arr!48816 a!2804) i!961)))))

(declare-fun b!1519644 () Bool)

(declare-fun res!1039619 () Bool)

(assert (=> b!1519644 (=> (not res!1039619) (not e!847679))))

(assert (=> b!1519644 (= res!1039619 (= lt!658697 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101168 (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49367 a!2804)) mask!2512)))))

(declare-fun b!1519645 () Bool)

(declare-fun res!1039610 () Bool)

(assert (=> b!1519645 (=> (not res!1039610) (not e!847680))))

(assert (=> b!1519645 (= res!1039610 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49367 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49367 a!2804))))))

(assert (= (and start!129398 res!1039617) b!1519640))

(assert (= (and b!1519640 res!1039613) b!1519643))

(assert (= (and b!1519643 res!1039616) b!1519637))

(assert (= (and b!1519637 res!1039612) b!1519639))

(assert (= (and b!1519639 res!1039620) b!1519636))

(assert (= (and b!1519636 res!1039614) b!1519645))

(assert (= (and b!1519645 res!1039610) b!1519638))

(assert (= (and b!1519638 res!1039615) b!1519642))

(assert (= (and b!1519642 res!1039611) b!1519644))

(assert (= (and b!1519644 res!1039619) b!1519635))

(assert (= (and b!1519635 res!1039618) b!1519641))

(declare-fun m!1403121 () Bool)

(assert (=> b!1519638 m!1403121))

(assert (=> b!1519638 m!1403121))

(declare-fun m!1403123 () Bool)

(assert (=> b!1519638 m!1403123))

(assert (=> b!1519638 m!1403123))

(assert (=> b!1519638 m!1403121))

(declare-fun m!1403125 () Bool)

(assert (=> b!1519638 m!1403125))

(declare-fun m!1403127 () Bool)

(assert (=> b!1519644 m!1403127))

(declare-fun m!1403129 () Bool)

(assert (=> b!1519644 m!1403129))

(assert (=> b!1519644 m!1403129))

(declare-fun m!1403131 () Bool)

(assert (=> b!1519644 m!1403131))

(assert (=> b!1519644 m!1403131))

(assert (=> b!1519644 m!1403129))

(declare-fun m!1403133 () Bool)

(assert (=> b!1519644 m!1403133))

(declare-fun m!1403135 () Bool)

(assert (=> start!129398 m!1403135))

(declare-fun m!1403137 () Bool)

(assert (=> start!129398 m!1403137))

(declare-fun m!1403139 () Bool)

(assert (=> b!1519643 m!1403139))

(assert (=> b!1519643 m!1403139))

(declare-fun m!1403141 () Bool)

(assert (=> b!1519643 m!1403141))

(assert (=> b!1519642 m!1403121))

(assert (=> b!1519642 m!1403121))

(declare-fun m!1403143 () Bool)

(assert (=> b!1519642 m!1403143))

(declare-fun m!1403145 () Bool)

(assert (=> b!1519636 m!1403145))

(assert (=> b!1519635 m!1403121))

(declare-fun m!1403147 () Bool)

(assert (=> b!1519635 m!1403147))

(assert (=> b!1519635 m!1403127))

(assert (=> b!1519635 m!1403129))

(declare-fun m!1403149 () Bool)

(assert (=> b!1519635 m!1403149))

(assert (=> b!1519641 m!1403121))

(assert (=> b!1519641 m!1403121))

(declare-fun m!1403151 () Bool)

(assert (=> b!1519641 m!1403151))

(assert (=> b!1519637 m!1403121))

(assert (=> b!1519637 m!1403121))

(declare-fun m!1403153 () Bool)

(assert (=> b!1519637 m!1403153))

(declare-fun m!1403155 () Bool)

(assert (=> b!1519639 m!1403155))

(push 1)

(assert (not b!1519644))

(assert (not b!1519636))

(assert (not b!1519637))

(assert (not b!1519641))

(assert (not start!129398))

(assert (not b!1519643))

(assert (not b!1519635))

(assert (not b!1519639))

(assert (not b!1519638))

(assert (not b!1519642))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!158663 () Bool)

(declare-fun e!847716 () Bool)

(assert (=> d!158663 e!847716))

(declare-fun c!139577 () Bool)

(declare-fun lt!658721 () SeekEntryResult!13008)

(assert (=> d!158663 (= c!139577 (and (is-Intermediate!13008 lt!658721) (undefined!13820 lt!658721)))))

(declare-fun e!847718 () SeekEntryResult!13008)

(assert (=> d!158663 (= lt!658721 e!847718)))

(declare-fun c!139576 () Bool)

(assert (=> d!158663 (= c!139576 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!658720 () (_ BitVec 64))

(assert (=> d!158663 (= lt!658720 (select (arr!48816 (array!101168 (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49367 a!2804))) (toIndex!0 (select (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!158663 (validMask!0 mask!2512)))

(assert (=> d!158663 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101168 (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49367 a!2804)) mask!2512) lt!658721)))

(declare-fun b!1519697 () Bool)

(declare-fun e!847714 () Bool)

(assert (=> b!1519697 (= e!847716 e!847714)))

(declare-fun res!1039636 () Bool)

(assert (=> b!1519697 (= res!1039636 (and (is-Intermediate!13008 lt!658721) (not (undefined!13820 lt!658721)) (bvslt (x!136099 lt!658721) #b01111111111111111111111111111110) (bvsge (x!136099 lt!658721) #b00000000000000000000000000000000) (bvsge (x!136099 lt!658721) #b00000000000000000000000000000000)))))

(assert (=> b!1519697 (=> (not res!1039636) (not e!847714))))

(declare-fun b!1519698 () Bool)

(declare-fun e!847717 () SeekEntryResult!13008)

(assert (=> b!1519698 (= e!847718 e!847717)))

(declare-fun c!139575 () Bool)

(assert (=> b!1519698 (= c!139575 (or (= lt!658720 (select (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!658720 lt!658720) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1519699 () Bool)

(assert (=> b!1519699 (= e!847717 (Intermediate!13008 false (toIndex!0 (select (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1519700 () Bool)

(assert (=> b!1519700 (= e!847718 (Intermediate!13008 true (toIndex!0 (select (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1519701 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519701 (= e!847717 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101168 (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49367 a!2804)) mask!2512))))

(declare-fun b!1519702 () Bool)

(assert (=> b!1519702 (= e!847716 (bvsge (x!136099 lt!658721) #b01111111111111111111111111111110))))

(declare-fun b!1519703 () Bool)

(assert (=> b!1519703 (and (bvsge (index!54428 lt!658721) #b00000000000000000000000000000000) (bvslt (index!54428 lt!658721) (size!49367 (array!101168 (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49367 a!2804)))))))

(declare-fun res!1039637 () Bool)

(assert (=> b!1519703 (= res!1039637 (= (select (arr!48816 (array!101168 (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49367 a!2804))) (index!54428 lt!658721)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!847715 () Bool)

(assert (=> b!1519703 (=> res!1039637 e!847715)))

(declare-fun b!1519704 () Bool)

(assert (=> b!1519704 (and (bvsge (index!54428 lt!658721) #b00000000000000000000000000000000) (bvslt (index!54428 lt!658721) (size!49367 (array!101168 (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49367 a!2804)))))))

(declare-fun res!1039638 () Bool)

(assert (=> b!1519704 (= res!1039638 (= (select (arr!48816 (array!101168 (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49367 a!2804))) (index!54428 lt!658721)) (select (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(assert (=> b!1519704 (=> res!1039638 e!847715)))

(assert (=> b!1519704 (= e!847714 e!847715)))

(declare-fun b!1519705 () Bool)

(assert (=> b!1519705 (and (bvsge (index!54428 lt!658721) #b00000000000000000000000000000000) (bvslt (index!54428 lt!658721) (size!49367 (array!101168 (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49367 a!2804)))))))

(assert (=> b!1519705 (= e!847715 (= (select (arr!48816 (array!101168 (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49367 a!2804))) (index!54428 lt!658721)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!158663 c!139576) b!1519700))

(assert (= (and d!158663 (not c!139576)) b!1519698))

(assert (= (and b!1519698 c!139575) b!1519699))

(assert (= (and b!1519698 (not c!139575)) b!1519701))

(assert (= (and d!158663 c!139577) b!1519702))

(assert (= (and d!158663 (not c!139577)) b!1519697))

(assert (= (and b!1519697 res!1039636) b!1519704))

(assert (= (and b!1519704 (not res!1039638)) b!1519703))

(assert (= (and b!1519703 (not res!1039637)) b!1519705))

(assert (=> d!158663 m!1403131))

(declare-fun m!1403171 () Bool)

(assert (=> d!158663 m!1403171))

(assert (=> d!158663 m!1403135))

(declare-fun m!1403173 () Bool)

(assert (=> b!1519703 m!1403173))

(assert (=> b!1519704 m!1403173))

(assert (=> b!1519705 m!1403173))

(assert (=> b!1519701 m!1403131))

(declare-fun m!1403175 () Bool)

(assert (=> b!1519701 m!1403175))

(assert (=> b!1519701 m!1403175))

(assert (=> b!1519701 m!1403129))

(declare-fun m!1403177 () Bool)

(assert (=> b!1519701 m!1403177))

(assert (=> b!1519644 d!158663))

(declare-fun d!158675 () Bool)

(declare-fun lt!658733 () (_ BitVec 32))

(declare-fun lt!658732 () (_ BitVec 32))

(assert (=> d!158675 (= lt!658733 (bvmul (bvxor lt!658732 (bvlshr lt!658732 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158675 (= lt!658732 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158675 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1039643 (let ((h!36889 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136102 (bvmul (bvxor h!36889 (bvlshr h!36889 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136102 (bvlshr x!136102 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1039643 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1039643 #b00000000000000000000000000000000))))))

(assert (=> d!158675 (= (toIndex!0 (select (store (arr!48816 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!658733 (bvlshr lt!658733 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1519644 d!158675))

(declare-fun d!158677 () Bool)

(declare-fun res!1039671 () Bool)

(declare-fun e!847765 () Bool)

(assert (=> d!158677 (=> res!1039671 e!847765)))

(assert (=> d!158677 (= res!1039671 (bvsge #b00000000000000000000000000000000 (size!49367 a!2804)))))

(assert (=> d!158677 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!847765)))

(declare-fun bm!68313 () Bool)

(declare-fun call!68316 () Bool)

(assert (=> bm!68313 (= call!68316 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1519786 () Bool)

(declare-fun e!847767 () Bool)

(declare-fun e!847766 () Bool)

(assert (=> b!1519786 (= e!847767 e!847766)))

(declare-fun lt!658756 () (_ BitVec 64))

(assert (=> b!1519786 (= lt!658756 (select (arr!48816 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!658755 () Unit!50840)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101167 (_ BitVec 64) (_ BitVec 32)) Unit!50840)

(assert (=> b!1519786 (= lt!658755 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!658756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1519786 (arrayContainsKey!0 a!2804 lt!658756 #b00000000000000000000000000000000)))

(declare-fun lt!658754 () Unit!50840)

(assert (=> b!1519786 (= lt!658754 lt!658755)))

(declare-fun res!1039670 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101167 (_ BitVec 32)) SeekEntryResult!13008)

(assert (=> b!1519786 (= res!1039670 (= (seekEntryOrOpen!0 (select (arr!48816 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13008 #b00000000000000000000000000000000)))))

(assert (=> b!1519786 (=> (not res!1039670) (not e!847766))))

(declare-fun b!1519787 () Bool)

(assert (=> b!1519787 (= e!847766 call!68316)))

(declare-fun b!1519788 () Bool)

(assert (=> b!1519788 (= e!847765 e!847767)))

(declare-fun c!139604 () Bool)

(assert (=> b!1519788 (= c!139604 (validKeyInArray!0 (select (arr!48816 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1519789 () Bool)

(assert (=> b!1519789 (= e!847767 call!68316)))

(assert (= (and d!158677 (not res!1039671)) b!1519788))

(assert (= (and b!1519788 c!139604) b!1519786))

(assert (= (and b!1519788 (not c!139604)) b!1519789))

(assert (= (and b!1519786 res!1039670) b!1519787))

(assert (= (or b!1519787 b!1519789) bm!68313))

(declare-fun m!1403211 () Bool)

(assert (=> bm!68313 m!1403211))

(declare-fun m!1403213 () Bool)

(assert (=> b!1519786 m!1403213))

(declare-fun m!1403215 () Bool)

(assert (=> b!1519786 m!1403215))

(declare-fun m!1403217 () Bool)

(assert (=> b!1519786 m!1403217))

(assert (=> b!1519786 m!1403213))

(declare-fun m!1403219 () Bool)

(assert (=> b!1519786 m!1403219))

(assert (=> b!1519788 m!1403213))

(assert (=> b!1519788 m!1403213))

(declare-fun m!1403221 () Bool)

(assert (=> b!1519788 m!1403221))

(assert (=> b!1519639 d!158677))

(declare-fun d!158691 () Bool)

(declare-fun res!1039673 () Bool)

(declare-fun e!847768 () Bool)

(assert (=> d!158691 (=> res!1039673 e!847768)))

(assert (=> d!158691 (= res!1039673 (bvsge j!70 (size!49367 a!2804)))))

(assert (=> d!158691 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!847768)))

(declare-fun bm!68314 () Bool)

(declare-fun call!68317 () Bool)

(assert (=> bm!68314 (= call!68317 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1519790 () Bool)

(declare-fun e!847770 () Bool)

(declare-fun e!847769 () Bool)

(assert (=> b!1519790 (= e!847770 e!847769)))

(declare-fun lt!658763 () (_ BitVec 64))

(assert (=> b!1519790 (= lt!658763 (select (arr!48816 a!2804) j!70))))

(declare-fun lt!658762 () Unit!50840)

(assert (=> b!1519790 (= lt!658762 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!658763 j!70))))

(assert (=> b!1519790 (arrayContainsKey!0 a!2804 lt!658763 #b00000000000000000000000000000000)))

(declare-fun lt!658761 () Unit!50840)

(assert (=> b!1519790 (= lt!658761 lt!658762)))

(declare-fun res!1039672 () Bool)

(assert (=> b!1519790 (= res!1039672 (= (seekEntryOrOpen!0 (select (arr!48816 a!2804) j!70) a!2804 mask!2512) (Found!13008 j!70)))))

(assert (=> b!1519790 (=> (not res!1039672) (not e!847769))))

(declare-fun b!1519791 () Bool)

(assert (=> b!1519791 (= e!847769 call!68317)))

(declare-fun b!1519792 () Bool)

(assert (=> b!1519792 (= e!847768 e!847770)))

(declare-fun c!139605 () Bool)

(assert (=> b!1519792 (= c!139605 (validKeyInArray!0 (select (arr!48816 a!2804) j!70)))))

(declare-fun b!1519793 () Bool)

(assert (=> b!1519793 (= e!847770 call!68317)))

(assert (= (and d!158691 (not res!1039673)) b!1519792))

(assert (= (and b!1519792 c!139605) b!1519790))

(assert (= (and b!1519792 (not c!139605)) b!1519793))

(assert (= (and b!1519790 res!1039672) b!1519791))

(assert (= (or b!1519791 b!1519793) bm!68314))

(declare-fun m!1403223 () Bool)

(assert (=> bm!68314 m!1403223))

(assert (=> b!1519790 m!1403121))

(declare-fun m!1403225 () Bool)

(assert (=> b!1519790 m!1403225))

(declare-fun m!1403227 () Bool)

(assert (=> b!1519790 m!1403227))

(assert (=> b!1519790 m!1403121))

(declare-fun m!1403229 () Bool)

(assert (=> b!1519790 m!1403229))

(assert (=> b!1519792 m!1403121))

(assert (=> b!1519792 m!1403121))

(assert (=> b!1519792 m!1403153))

(assert (=> b!1519635 d!158691))

(declare-fun d!158693 () Bool)

(assert (=> d!158693 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!658774 () Unit!50840)

(declare-fun choose!38 (array!101167 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50840)

(assert (=> d!158693 (= lt!658774 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!158693 (validMask!0 mask!2512)))

(assert (=> d!158693 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!658774)))

(declare-fun bs!43610 () Bool)

(assert (= bs!43610 d!158693))

(assert (=> bs!43610 m!1403149))

(declare-fun m!1403231 () Bool)

(assert (=> bs!43610 m!1403231))

(assert (=> bs!43610 m!1403135))

(assert (=> b!1519635 d!158693))

(declare-fun b!1519854 () Bool)

(declare-fun c!139632 () Bool)

(declare-fun lt!658804 () (_ BitVec 64))

(assert (=> b!1519854 (= c!139632 (= lt!658804 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!847805 () SeekEntryResult!13008)

(declare-fun e!847806 () SeekEntryResult!13008)

(assert (=> b!1519854 (= e!847805 e!847806)))

(declare-fun d!158697 () Bool)

(declare-fun lt!658806 () SeekEntryResult!13008)

(assert (=> d!158697 (and (or (is-MissingVacant!13008 lt!658806) (not (is-Found!13008 lt!658806)) (and (bvsge (index!54427 lt!658806) #b00000000000000000000000000000000) (bvslt (index!54427 lt!658806) (size!49367 a!2804)))) (not (is-MissingVacant!13008 lt!658806)) (or (not (is-Found!13008 lt!658806)) (= (select (arr!48816 a!2804) (index!54427 lt!658806)) (select (arr!48816 a!2804) j!70))))))

(declare-fun e!847807 () SeekEntryResult!13008)

(assert (=> d!158697 (= lt!658806 e!847807)))

(declare-fun c!139630 () Bool)

(declare-fun lt!658807 () SeekEntryResult!13008)

(assert (=> d!158697 (= c!139630 (and (is-Intermediate!13008 lt!658807) (undefined!13820 lt!658807)))))

(assert (=> d!158697 (= lt!658807 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48816 a!2804) j!70) mask!2512) (select (arr!48816 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!158697 (validMask!0 mask!2512)))

(assert (=> d!158697 (= (seekEntry!0 (select (arr!48816 a!2804) j!70) a!2804 mask!2512) lt!658806)))

(declare-fun b!1519855 () Bool)

(assert (=> b!1519855 (= e!847805 (Found!13008 (index!54428 lt!658807)))))

(declare-fun b!1519856 () Bool)

(assert (=> b!1519856 (= e!847807 e!847805)))

(assert (=> b!1519856 (= lt!658804 (select (arr!48816 a!2804) (index!54428 lt!658807)))))

(declare-fun c!139631 () Bool)

(assert (=> b!1519856 (= c!139631 (= lt!658804 (select (arr!48816 a!2804) j!70)))))

(declare-fun b!1519857 () Bool)

(declare-fun lt!658805 () SeekEntryResult!13008)

(assert (=> b!1519857 (= e!847806 (ite (is-MissingVacant!13008 lt!658805) (MissingZero!13008 (index!54429 lt!658805)) lt!658805))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101167 (_ BitVec 32)) SeekEntryResult!13008)

(assert (=> b!1519857 (= lt!658805 (seekKeyOrZeroReturnVacant!0 (x!136099 lt!658807) (index!54428 lt!658807) (index!54428 lt!658807) (select (arr!48816 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519858 () Bool)

(assert (=> b!1519858 (= e!847806 (MissingZero!13008 (index!54428 lt!658807)))))

(declare-fun b!1519859 () Bool)

(assert (=> b!1519859 (= e!847807 Undefined!13008)))

(assert (= (and d!158697 c!139630) b!1519859))

(assert (= (and d!158697 (not c!139630)) b!1519856))

(assert (= (and b!1519856 c!139631) b!1519855))

(assert (= (and b!1519856 (not c!139631)) b!1519854))

(assert (= (and b!1519854 c!139632) b!1519858))

(assert (= (and b!1519854 (not c!139632)) b!1519857))

(declare-fun m!1403263 () Bool)

(assert (=> d!158697 m!1403263))

(assert (=> d!158697 m!1403121))

(assert (=> d!158697 m!1403123))

(assert (=> d!158697 m!1403123))

(assert (=> d!158697 m!1403121))

(assert (=> d!158697 m!1403125))

(assert (=> d!158697 m!1403135))

(declare-fun m!1403265 () Bool)

(assert (=> b!1519856 m!1403265))

(assert (=> b!1519857 m!1403121))

(declare-fun m!1403267 () Bool)

(assert (=> b!1519857 m!1403267))

(assert (=> b!1519641 d!158697))

(declare-fun b!1519889 () Bool)

(declare-fun e!847831 () Bool)

(declare-fun call!68327 () Bool)

(assert (=> b!1519889 (= e!847831 call!68327)))

(declare-fun b!1519890 () Bool)

(declare-fun e!847834 () Bool)

(assert (=> b!1519890 (= e!847834 e!847831)))

(declare-fun c!139639 () Bool)

(assert (=> b!1519890 (= c!139639 (validKeyInArray!0 (select (arr!48816 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1519891 () Bool)

(declare-fun e!847832 () Bool)

(assert (=> b!1519891 (= e!847832 e!847834)))

(declare-fun res!1039705 () Bool)

(assert (=> b!1519891 (=> (not res!1039705) (not e!847834))))

(declare-fun e!847833 () Bool)

(assert (=> b!1519891 (= res!1039705 (not e!847833))))

(declare-fun res!1039703 () Bool)

(assert (=> b!1519891 (=> (not res!1039703) (not e!847833))))

(assert (=> b!1519891 (= res!1039703 (validKeyInArray!0 (select (arr!48816 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1519892 () Bool)

(assert (=> b!1519892 (= e!847831 call!68327)))

(declare-fun d!158717 () Bool)

(declare-fun res!1039704 () Bool)

(assert (=> d!158717 (=> res!1039704 e!847832)))

(assert (=> d!158717 (= res!1039704 (bvsge #b00000000000000000000000000000000 (size!49367 a!2804)))))

(assert (=> d!158717 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35476) e!847832)))

(declare-fun b!1519893 () Bool)

(declare-fun contains!9987 (List!35479 (_ BitVec 64)) Bool)

(assert (=> b!1519893 (= e!847833 (contains!9987 Nil!35476 (select (arr!48816 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68324 () Bool)

(assert (=> bm!68324 (= call!68327 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139639 (Cons!35475 (select (arr!48816 a!2804) #b00000000000000000000000000000000) Nil!35476) Nil!35476)))))

(assert (= (and d!158717 (not res!1039704)) b!1519891))

(assert (= (and b!1519891 res!1039703) b!1519893))

(assert (= (and b!1519891 res!1039705) b!1519890))

(assert (= (and b!1519890 c!139639) b!1519892))

(assert (= (and b!1519890 (not c!139639)) b!1519889))

(assert (= (or b!1519892 b!1519889) bm!68324))

(assert (=> b!1519890 m!1403213))

(assert (=> b!1519890 m!1403213))

(assert (=> b!1519890 m!1403221))

(assert (=> b!1519891 m!1403213))

(assert (=> b!1519891 m!1403213))

(assert (=> b!1519891 m!1403221))

(assert (=> b!1519893 m!1403213))

(assert (=> b!1519893 m!1403213))

(declare-fun m!1403287 () Bool)

(assert (=> b!1519893 m!1403287))

(assert (=> bm!68324 m!1403213))

(declare-fun m!1403289 () Bool)

(assert (=> bm!68324 m!1403289))

(assert (=> b!1519636 d!158717))

(declare-fun d!158723 () Bool)

(declare-fun e!847837 () Bool)

(assert (=> d!158723 e!847837))

(declare-fun c!139642 () Bool)

(declare-fun lt!658815 () SeekEntryResult!13008)

(assert (=> d!158723 (= c!139642 (and (is-Intermediate!13008 lt!658815) (undefined!13820 lt!658815)))))

(declare-fun e!847839 () SeekEntryResult!13008)

(assert (=> d!158723 (= lt!658815 e!847839)))

(declare-fun c!139641 () Bool)

(assert (=> d!158723 (= c!139641 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!658814 () (_ BitVec 64))

(assert (=> d!158723 (= lt!658814 (select (arr!48816 a!2804) index!487))))

(assert (=> d!158723 (validMask!0 mask!2512)))

(assert (=> d!158723 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48816 a!2804) j!70) a!2804 mask!2512) lt!658815)))

(declare-fun b!1519894 () Bool)

(declare-fun e!847835 () Bool)

(assert (=> b!1519894 (= e!847837 e!847835)))

(declare-fun res!1039706 () Bool)

(assert (=> b!1519894 (= res!1039706 (and (is-Intermediate!13008 lt!658815) (not (undefined!13820 lt!658815)) (bvslt (x!136099 lt!658815) #b01111111111111111111111111111110) (bvsge (x!136099 lt!658815) #b00000000000000000000000000000000) (bvsge (x!136099 lt!658815) x!534)))))

(assert (=> b!1519894 (=> (not res!1039706) (not e!847835))))

(declare-fun b!1519895 () Bool)

(declare-fun e!847838 () SeekEntryResult!13008)

(assert (=> b!1519895 (= e!847839 e!847838)))

(declare-fun c!139640 () Bool)

(assert (=> b!1519895 (= c!139640 (or (= lt!658814 (select (arr!48816 a!2804) j!70)) (= (bvadd lt!658814 lt!658814) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1519896 () Bool)

(assert (=> b!1519896 (= e!847838 (Intermediate!13008 false index!487 x!534))))

(declare-fun b!1519897 () Bool)

(assert (=> b!1519897 (= e!847839 (Intermediate!13008 true index!487 x!534))))

(declare-fun b!1519898 () Bool)

(assert (=> b!1519898 (= e!847838 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48816 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519899 () Bool)

(assert (=> b!1519899 (= e!847837 (bvsge (x!136099 lt!658815) #b01111111111111111111111111111110))))

(declare-fun b!1519900 () Bool)

(assert (=> b!1519900 (and (bvsge (index!54428 lt!658815) #b00000000000000000000000000000000) (bvslt (index!54428 lt!658815) (size!49367 a!2804)))))

(declare-fun res!1039707 () Bool)

(assert (=> b!1519900 (= res!1039707 (= (select (arr!48816 a!2804) (index!54428 lt!658815)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!847836 () Bool)

(assert (=> b!1519900 (=> res!1039707 e!847836)))

(declare-fun b!1519901 () Bool)

(assert (=> b!1519901 (and (bvsge (index!54428 lt!658815) #b00000000000000000000000000000000) (bvslt (index!54428 lt!658815) (size!49367 a!2804)))))

(declare-fun res!1039708 () Bool)

(assert (=> b!1519901 (= res!1039708 (= (select (arr!48816 a!2804) (index!54428 lt!658815)) (select (arr!48816 a!2804) j!70)))))

(assert (=> b!1519901 (=> res!1039708 e!847836)))

(assert (=> b!1519901 (= e!847835 e!847836)))

(declare-fun b!1519902 () Bool)

(assert (=> b!1519902 (and (bvsge (index!54428 lt!658815) #b00000000000000000000000000000000) (bvslt (index!54428 lt!658815) (size!49367 a!2804)))))

(assert (=> b!1519902 (= e!847836 (= (select (arr!48816 a!2804) (index!54428 lt!658815)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!158723 c!139641) b!1519897))

(assert (= (and d!158723 (not c!139641)) b!1519895))

(assert (= (and b!1519895 c!139640) b!1519896))

(assert (= (and b!1519895 (not c!139640)) b!1519898))

(assert (= (and d!158723 c!139642) b!1519899))

(assert (= (and d!158723 (not c!139642)) b!1519894))

(assert (= (and b!1519894 res!1039706) b!1519901))

(assert (= (and b!1519901 (not res!1039708)) b!1519900))

(assert (= (and b!1519900 (not res!1039707)) b!1519902))

(declare-fun m!1403291 () Bool)

(assert (=> d!158723 m!1403291))

(assert (=> d!158723 m!1403135))

(declare-fun m!1403293 () Bool)

(assert (=> b!1519900 m!1403293))

(assert (=> b!1519901 m!1403293))

(assert (=> b!1519902 m!1403293))

(declare-fun m!1403295 () Bool)

(assert (=> b!1519898 m!1403295))

(assert (=> b!1519898 m!1403295))

(assert (=> b!1519898 m!1403121))

(declare-fun m!1403297 () Bool)

(assert (=> b!1519898 m!1403297))

(assert (=> b!1519642 d!158723))

(declare-fun d!158725 () Bool)

(assert (=> d!158725 (= (validKeyInArray!0 (select (arr!48816 a!2804) j!70)) (and (not (= (select (arr!48816 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48816 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1519637 d!158725))

(declare-fun d!158727 () Bool)

(assert (=> d!158727 (= (validKeyInArray!0 (select (arr!48816 a!2804) i!961)) (and (not (= (select (arr!48816 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48816 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1519643 d!158727))

(declare-fun d!158729 () Bool)

(assert (=> d!158729 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!129398 d!158729))

(declare-fun d!158735 () Bool)

(assert (=> d!158735 (= (array_inv!37761 a!2804) (bvsge (size!49367 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!129398 d!158735))

(declare-fun d!158737 () Bool)

(declare-fun e!847854 () Bool)

(assert (=> d!158737 e!847854))

(declare-fun c!139649 () Bool)

(declare-fun lt!658829 () SeekEntryResult!13008)

(assert (=> d!158737 (= c!139649 (and (is-Intermediate!13008 lt!658829) (undefined!13820 lt!658829)))))

(declare-fun e!847856 () SeekEntryResult!13008)

(assert (=> d!158737 (= lt!658829 e!847856)))

(declare-fun c!139648 () Bool)

(assert (=> d!158737 (= c!139648 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!658828 () (_ BitVec 64))

(assert (=> d!158737 (= lt!658828 (select (arr!48816 a!2804) (toIndex!0 (select (arr!48816 a!2804) j!70) mask!2512)))))

(assert (=> d!158737 (validMask!0 mask!2512)))

(assert (=> d!158737 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48816 a!2804) j!70) mask!2512) (select (arr!48816 a!2804) j!70) a!2804 mask!2512) lt!658829)))

(declare-fun b!1519919 () Bool)

(declare-fun e!847852 () Bool)

(assert (=> b!1519919 (= e!847854 e!847852)))

(declare-fun res!1039717 () Bool)

(assert (=> b!1519919 (= res!1039717 (and (is-Intermediate!13008 lt!658829) (not (undefined!13820 lt!658829)) (bvslt (x!136099 lt!658829) #b01111111111111111111111111111110) (bvsge (x!136099 lt!658829) #b00000000000000000000000000000000) (bvsge (x!136099 lt!658829) #b00000000000000000000000000000000)))))

(assert (=> b!1519919 (=> (not res!1039717) (not e!847852))))

(declare-fun b!1519920 () Bool)

(declare-fun e!847855 () SeekEntryResult!13008)

(assert (=> b!1519920 (= e!847856 e!847855)))

(declare-fun c!139647 () Bool)

(assert (=> b!1519920 (= c!139647 (or (= lt!658828 (select (arr!48816 a!2804) j!70)) (= (bvadd lt!658828 lt!658828) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1519921 () Bool)

(assert (=> b!1519921 (= e!847855 (Intermediate!13008 false (toIndex!0 (select (arr!48816 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1519922 () Bool)

(assert (=> b!1519922 (= e!847856 (Intermediate!13008 true (toIndex!0 (select (arr!48816 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1519923 () Bool)

(assert (=> b!1519923 (= e!847855 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48816 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48816 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519924 () Bool)

(assert (=> b!1519924 (= e!847854 (bvsge (x!136099 lt!658829) #b01111111111111111111111111111110))))

(declare-fun b!1519925 () Bool)

(assert (=> b!1519925 (and (bvsge (index!54428 lt!658829) #b00000000000000000000000000000000) (bvslt (index!54428 lt!658829) (size!49367 a!2804)))))

(declare-fun res!1039718 () Bool)

(assert (=> b!1519925 (= res!1039718 (= (select (arr!48816 a!2804) (index!54428 lt!658829)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!847853 () Bool)

(assert (=> b!1519925 (=> res!1039718 e!847853)))

(declare-fun b!1519926 () Bool)

(assert (=> b!1519926 (and (bvsge (index!54428 lt!658829) #b00000000000000000000000000000000) (bvslt (index!54428 lt!658829) (size!49367 a!2804)))))

(declare-fun res!1039719 () Bool)

(assert (=> b!1519926 (= res!1039719 (= (select (arr!48816 a!2804) (index!54428 lt!658829)) (select (arr!48816 a!2804) j!70)))))

(assert (=> b!1519926 (=> res!1039719 e!847853)))

(assert (=> b!1519926 (= e!847852 e!847853)))

(declare-fun b!1519927 () Bool)

(assert (=> b!1519927 (and (bvsge (index!54428 lt!658829) #b00000000000000000000000000000000) (bvslt (index!54428 lt!658829) (size!49367 a!2804)))))

(assert (=> b!1519927 (= e!847853 (= (select (arr!48816 a!2804) (index!54428 lt!658829)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!158737 c!139648) b!1519922))

(assert (= (and d!158737 (not c!139648)) b!1519920))

(assert (= (and b!1519920 c!139647) b!1519921))

(assert (= (and b!1519920 (not c!139647)) b!1519923))

(assert (= (and d!158737 c!139649) b!1519924))

(assert (= (and d!158737 (not c!139649)) b!1519919))

(assert (= (and b!1519919 res!1039717) b!1519926))

(assert (= (and b!1519926 (not res!1039719)) b!1519925))

(assert (= (and b!1519925 (not res!1039718)) b!1519927))

(assert (=> d!158737 m!1403123))

(declare-fun m!1403315 () Bool)

(assert (=> d!158737 m!1403315))

(assert (=> d!158737 m!1403135))

(declare-fun m!1403317 () Bool)

(assert (=> b!1519925 m!1403317))

(assert (=> b!1519926 m!1403317))

(assert (=> b!1519927 m!1403317))

(assert (=> b!1519923 m!1403123))

(declare-fun m!1403319 () Bool)

(assert (=> b!1519923 m!1403319))

(assert (=> b!1519923 m!1403319))

(assert (=> b!1519923 m!1403121))

(declare-fun m!1403321 () Bool)

(assert (=> b!1519923 m!1403321))

(assert (=> b!1519638 d!158737))

(declare-fun d!158739 () Bool)

(declare-fun lt!658834 () (_ BitVec 32))

(declare-fun lt!658833 () (_ BitVec 32))

(assert (=> d!158739 (= lt!658834 (bvmul (bvxor lt!658833 (bvlshr lt!658833 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158739 (= lt!658833 ((_ extract 31 0) (bvand (bvxor (select (arr!48816 a!2804) j!70) (bvlshr (select (arr!48816 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158739 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1039643 (let ((h!36889 ((_ extract 31 0) (bvand (bvxor (select (arr!48816 a!2804) j!70) (bvlshr (select (arr!48816 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136102 (bvmul (bvxor h!36889 (bvlshr h!36889 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136102 (bvlshr x!136102 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1039643 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1039643 #b00000000000000000000000000000000))))))

(assert (=> d!158739 (= (toIndex!0 (select (arr!48816 a!2804) j!70) mask!2512) (bvand (bvxor lt!658834 (bvlshr lt!658834 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1519638 d!158739))

(push 1)

(assert (not d!158737))

(assert (not d!158693))

(assert (not b!1519857))

(assert (not b!1519893))

(assert (not d!158697))

(assert (not b!1519923))

(assert (not bm!68314))

(assert (not bm!68324))

(assert (not b!1519788))

(assert (not b!1519890))

(assert (not b!1519898))

(assert (not b!1519701))

(assert (not d!158723))

(assert (not b!1519891))

(assert (not b!1519792))

(assert (not bm!68313))

(assert (not b!1519790))

(assert (not b!1519786))

(assert (not d!158663))

(check-sat)

(pop 1)

(push 1)

(check-sat)

