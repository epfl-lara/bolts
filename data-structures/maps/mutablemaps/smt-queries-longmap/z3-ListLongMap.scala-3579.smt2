; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49224 () Bool)

(assert start!49224)

(declare-fun b!541731 () Bool)

(declare-fun res!336612 () Bool)

(declare-fun e!313600 () Bool)

(assert (=> b!541731 (=> (not res!336612) (not e!313600))))

(declare-datatypes ((array!34239 0))(
  ( (array!34240 (arr!16450 (Array (_ BitVec 32) (_ BitVec 64))) (size!16814 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34239)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!541731 (= res!336612 (validKeyInArray!0 (select (arr!16450 a!3154) j!147)))))

(declare-fun b!541732 () Bool)

(declare-fun res!336609 () Bool)

(declare-fun e!313603 () Bool)

(assert (=> b!541732 (=> (not res!336609) (not e!313603))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!541732 (= res!336609 (and (not (= (select (arr!16450 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16450 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16450 a!3154) index!1177) (select (arr!16450 a!3154) j!147)) (= index!1177 resIndex!32)))))

(declare-fun b!541733 () Bool)

(declare-fun res!336616 () Bool)

(assert (=> b!541733 (=> (not res!336616) (not e!313600))))

(declare-fun k0!1998 () (_ BitVec 64))

(assert (=> b!541733 (= res!336616 (validKeyInArray!0 k0!1998))))

(declare-fun b!541735 () Bool)

(declare-fun res!336619 () Bool)

(declare-fun e!313602 () Bool)

(assert (=> b!541735 (=> (not res!336619) (not e!313602))))

(declare-datatypes ((List!10622 0))(
  ( (Nil!10619) (Cons!10618 (h!11570 (_ BitVec 64)) (t!16858 List!10622)) )
))
(declare-fun arrayNoDuplicates!0 (array!34239 (_ BitVec 32) List!10622) Bool)

(assert (=> b!541735 (= res!336619 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10619))))

(declare-fun b!541736 () Bool)

(declare-fun res!336614 () Bool)

(assert (=> b!541736 (=> (not res!336614) (not e!313600))))

(declare-fun arrayContainsKey!0 (array!34239 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!541736 (= res!336614 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!541737 () Bool)

(assert (=> b!541737 (= e!313602 e!313603)))

(declare-fun res!336611 () Bool)

(assert (=> b!541737 (=> (not res!336611) (not e!313603))))

(declare-datatypes ((SeekEntryResult!4915 0))(
  ( (MissingZero!4915 (index!21884 (_ BitVec 32))) (Found!4915 (index!21885 (_ BitVec 32))) (Intermediate!4915 (undefined!5727 Bool) (index!21886 (_ BitVec 32)) (x!50823 (_ BitVec 32))) (Undefined!4915) (MissingVacant!4915 (index!21887 (_ BitVec 32))) )
))
(declare-fun lt!247727 () SeekEntryResult!4915)

(declare-fun lt!247725 () SeekEntryResult!4915)

(assert (=> b!541737 (= res!336611 (= lt!247727 lt!247725))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!541737 (= lt!247725 (Intermediate!4915 false resIndex!32 resX!32))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34239 (_ BitVec 32)) SeekEntryResult!4915)

(assert (=> b!541737 (= lt!247727 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16450 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541738 () Bool)

(declare-fun res!336610 () Bool)

(assert (=> b!541738 (=> (not res!336610) (not e!313600))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!541738 (= res!336610 (and (= (size!16814 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16814 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16814 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!541739 () Bool)

(declare-fun res!336613 () Bool)

(assert (=> b!541739 (=> (not res!336613) (not e!313602))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34239 (_ BitVec 32)) Bool)

(assert (=> b!541739 (= res!336613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!541740 () Bool)

(assert (=> b!541740 (= e!313603 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (store (arr!16450 a!3154) i!1153 k0!1998) j!147) (array!34240 (store (arr!16450 a!3154) i!1153 k0!1998) (size!16814 a!3154)) mask!3216) lt!247725)))))

(declare-fun b!541741 () Bool)

(assert (=> b!541741 (= e!313600 e!313602)))

(declare-fun res!336617 () Bool)

(assert (=> b!541741 (=> (not res!336617) (not e!313602))))

(declare-fun lt!247726 () SeekEntryResult!4915)

(assert (=> b!541741 (= res!336617 (or (= lt!247726 (MissingZero!4915 i!1153)) (= lt!247726 (MissingVacant!4915 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34239 (_ BitVec 32)) SeekEntryResult!4915)

(assert (=> b!541741 (= lt!247726 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!541742 () Bool)

(declare-fun res!336615 () Bool)

(assert (=> b!541742 (=> (not res!336615) (not e!313603))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541742 (= res!336615 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16450 a!3154) j!147) mask!3216) (select (arr!16450 a!3154) j!147) a!3154 mask!3216) lt!247727))))

(declare-fun b!541734 () Bool)

(declare-fun res!336620 () Bool)

(assert (=> b!541734 (=> (not res!336620) (not e!313602))))

(assert (=> b!541734 (= res!336620 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16814 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16814 a!3154)) (= (select (arr!16450 a!3154) resIndex!32) (select (arr!16450 a!3154) j!147))))))

(declare-fun res!336618 () Bool)

(assert (=> start!49224 (=> (not res!336618) (not e!313600))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49224 (= res!336618 (validMask!0 mask!3216))))

(assert (=> start!49224 e!313600))

(assert (=> start!49224 true))

(declare-fun array_inv!12224 (array!34239) Bool)

(assert (=> start!49224 (array_inv!12224 a!3154)))

(assert (= (and start!49224 res!336618) b!541738))

(assert (= (and b!541738 res!336610) b!541731))

(assert (= (and b!541731 res!336612) b!541733))

(assert (= (and b!541733 res!336616) b!541736))

(assert (= (and b!541736 res!336614) b!541741))

(assert (= (and b!541741 res!336617) b!541739))

(assert (= (and b!541739 res!336613) b!541735))

(assert (= (and b!541735 res!336619) b!541734))

(assert (= (and b!541734 res!336620) b!541737))

(assert (= (and b!541737 res!336611) b!541742))

(assert (= (and b!541742 res!336615) b!541732))

(assert (= (and b!541732 res!336609) b!541740))

(declare-fun m!520187 () Bool)

(assert (=> b!541737 m!520187))

(assert (=> b!541737 m!520187))

(declare-fun m!520189 () Bool)

(assert (=> b!541737 m!520189))

(declare-fun m!520191 () Bool)

(assert (=> start!49224 m!520191))

(declare-fun m!520193 () Bool)

(assert (=> start!49224 m!520193))

(assert (=> b!541742 m!520187))

(assert (=> b!541742 m!520187))

(declare-fun m!520195 () Bool)

(assert (=> b!541742 m!520195))

(assert (=> b!541742 m!520195))

(assert (=> b!541742 m!520187))

(declare-fun m!520197 () Bool)

(assert (=> b!541742 m!520197))

(declare-fun m!520199 () Bool)

(assert (=> b!541741 m!520199))

(declare-fun m!520201 () Bool)

(assert (=> b!541735 m!520201))

(declare-fun m!520203 () Bool)

(assert (=> b!541740 m!520203))

(declare-fun m!520205 () Bool)

(assert (=> b!541740 m!520205))

(assert (=> b!541740 m!520205))

(declare-fun m!520207 () Bool)

(assert (=> b!541740 m!520207))

(declare-fun m!520209 () Bool)

(assert (=> b!541733 m!520209))

(assert (=> b!541731 m!520187))

(assert (=> b!541731 m!520187))

(declare-fun m!520211 () Bool)

(assert (=> b!541731 m!520211))

(declare-fun m!520213 () Bool)

(assert (=> b!541734 m!520213))

(assert (=> b!541734 m!520187))

(declare-fun m!520215 () Bool)

(assert (=> b!541732 m!520215))

(assert (=> b!541732 m!520187))

(declare-fun m!520217 () Bool)

(assert (=> b!541739 m!520217))

(declare-fun m!520219 () Bool)

(assert (=> b!541736 m!520219))

(check-sat (not b!541740) (not b!541733) (not start!49224) (not b!541737) (not b!541736) (not b!541739) (not b!541731) (not b!541735) (not b!541741) (not b!541742))
(check-sat)
(get-model)

(declare-fun d!81705 () Bool)

(declare-fun e!313630 () Bool)

(assert (=> d!81705 e!313630))

(declare-fun c!62885 () Bool)

(declare-fun lt!247742 () SeekEntryResult!4915)

(get-info :version)

(assert (=> d!81705 (= c!62885 (and ((_ is Intermediate!4915) lt!247742) (undefined!5727 lt!247742)))))

(declare-fun e!313628 () SeekEntryResult!4915)

(assert (=> d!81705 (= lt!247742 e!313628)))

(declare-fun c!62884 () Bool)

(assert (=> d!81705 (= c!62884 (bvsge x!1030 #b01111111111111111111111111111110))))

(declare-fun lt!247741 () (_ BitVec 64))

(assert (=> d!81705 (= lt!247741 (select (arr!16450 (array!34240 (store (arr!16450 a!3154) i!1153 k0!1998) (size!16814 a!3154))) index!1177))))

(assert (=> d!81705 (validMask!0 mask!3216)))

(assert (=> d!81705 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (store (arr!16450 a!3154) i!1153 k0!1998) j!147) (array!34240 (store (arr!16450 a!3154) i!1153 k0!1998) (size!16814 a!3154)) mask!3216) lt!247742)))

(declare-fun b!541797 () Bool)

(declare-fun e!313629 () SeekEntryResult!4915)

(assert (=> b!541797 (= e!313628 e!313629)))

(declare-fun c!62883 () Bool)

(assert (=> b!541797 (= c!62883 (or (= lt!247741 (select (store (arr!16450 a!3154) i!1153 k0!1998) j!147)) (= (bvadd lt!247741 lt!247741) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!541798 () Bool)

(assert (=> b!541798 (and (bvsge (index!21886 lt!247742) #b00000000000000000000000000000000) (bvslt (index!21886 lt!247742) (size!16814 (array!34240 (store (arr!16450 a!3154) i!1153 k0!1998) (size!16814 a!3154)))))))

(declare-fun res!336665 () Bool)

(assert (=> b!541798 (= res!336665 (= (select (arr!16450 (array!34240 (store (arr!16450 a!3154) i!1153 k0!1998) (size!16814 a!3154))) (index!21886 lt!247742)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!313627 () Bool)

(assert (=> b!541798 (=> res!336665 e!313627)))

(declare-fun b!541799 () Bool)

(assert (=> b!541799 (and (bvsge (index!21886 lt!247742) #b00000000000000000000000000000000) (bvslt (index!21886 lt!247742) (size!16814 (array!34240 (store (arr!16450 a!3154) i!1153 k0!1998) (size!16814 a!3154)))))))

(assert (=> b!541799 (= e!313627 (= (select (arr!16450 (array!34240 (store (arr!16450 a!3154) i!1153 k0!1998) (size!16814 a!3154))) (index!21886 lt!247742)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!541800 () Bool)

(assert (=> b!541800 (= e!313630 (bvsge (x!50823 lt!247742) #b01111111111111111111111111111110))))

(declare-fun b!541801 () Bool)

(declare-fun e!313626 () Bool)

(assert (=> b!541801 (= e!313630 e!313626)))

(declare-fun res!336663 () Bool)

(assert (=> b!541801 (= res!336663 (and ((_ is Intermediate!4915) lt!247742) (not (undefined!5727 lt!247742)) (bvslt (x!50823 lt!247742) #b01111111111111111111111111111110) (bvsge (x!50823 lt!247742) #b00000000000000000000000000000000) (bvsge (x!50823 lt!247742) x!1030)))))

(assert (=> b!541801 (=> (not res!336663) (not e!313626))))

(declare-fun b!541802 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541802 (= e!313629 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (store (arr!16450 a!3154) i!1153 k0!1998) j!147) (array!34240 (store (arr!16450 a!3154) i!1153 k0!1998) (size!16814 a!3154)) mask!3216))))

(declare-fun b!541803 () Bool)

(assert (=> b!541803 (= e!313629 (Intermediate!4915 false index!1177 x!1030))))

(declare-fun b!541804 () Bool)

(assert (=> b!541804 (= e!313628 (Intermediate!4915 true index!1177 x!1030))))

(declare-fun b!541805 () Bool)

(assert (=> b!541805 (and (bvsge (index!21886 lt!247742) #b00000000000000000000000000000000) (bvslt (index!21886 lt!247742) (size!16814 (array!34240 (store (arr!16450 a!3154) i!1153 k0!1998) (size!16814 a!3154)))))))

(declare-fun res!336664 () Bool)

(assert (=> b!541805 (= res!336664 (= (select (arr!16450 (array!34240 (store (arr!16450 a!3154) i!1153 k0!1998) (size!16814 a!3154))) (index!21886 lt!247742)) (select (store (arr!16450 a!3154) i!1153 k0!1998) j!147)))))

(assert (=> b!541805 (=> res!336664 e!313627)))

(assert (=> b!541805 (= e!313626 e!313627)))

(assert (= (and d!81705 c!62884) b!541804))

(assert (= (and d!81705 (not c!62884)) b!541797))

(assert (= (and b!541797 c!62883) b!541803))

(assert (= (and b!541797 (not c!62883)) b!541802))

(assert (= (and d!81705 c!62885) b!541800))

(assert (= (and d!81705 (not c!62885)) b!541801))

(assert (= (and b!541801 res!336663) b!541805))

(assert (= (and b!541805 (not res!336664)) b!541798))

(assert (= (and b!541798 (not res!336665)) b!541799))

(declare-fun m!520255 () Bool)

(assert (=> b!541798 m!520255))

(declare-fun m!520257 () Bool)

(assert (=> b!541802 m!520257))

(assert (=> b!541802 m!520257))

(assert (=> b!541802 m!520205))

(declare-fun m!520259 () Bool)

(assert (=> b!541802 m!520259))

(assert (=> b!541805 m!520255))

(assert (=> b!541799 m!520255))

(declare-fun m!520261 () Bool)

(assert (=> d!81705 m!520261))

(assert (=> d!81705 m!520191))

(assert (=> b!541740 d!81705))

(declare-fun b!541816 () Bool)

(declare-fun e!313642 () Bool)

(declare-fun e!313640 () Bool)

(assert (=> b!541816 (= e!313642 e!313640)))

(declare-fun res!336673 () Bool)

(assert (=> b!541816 (=> (not res!336673) (not e!313640))))

(declare-fun e!313639 () Bool)

(assert (=> b!541816 (= res!336673 (not e!313639))))

(declare-fun res!336674 () Bool)

(assert (=> b!541816 (=> (not res!336674) (not e!313639))))

(assert (=> b!541816 (= res!336674 (validKeyInArray!0 (select (arr!16450 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!32048 () Bool)

(declare-fun call!32051 () Bool)

(declare-fun c!62888 () Bool)

(assert (=> bm!32048 (= call!32051 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62888 (Cons!10618 (select (arr!16450 a!3154) #b00000000000000000000000000000000) Nil!10619) Nil!10619)))))

(declare-fun b!541817 () Bool)

(declare-fun contains!2807 (List!10622 (_ BitVec 64)) Bool)

(assert (=> b!541817 (= e!313639 (contains!2807 Nil!10619 (select (arr!16450 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!541818 () Bool)

(declare-fun e!313641 () Bool)

(assert (=> b!541818 (= e!313641 call!32051)))

(declare-fun b!541819 () Bool)

(assert (=> b!541819 (= e!313640 e!313641)))

(assert (=> b!541819 (= c!62888 (validKeyInArray!0 (select (arr!16450 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!541820 () Bool)

(assert (=> b!541820 (= e!313641 call!32051)))

(declare-fun d!81707 () Bool)

(declare-fun res!336672 () Bool)

(assert (=> d!81707 (=> res!336672 e!313642)))

(assert (=> d!81707 (= res!336672 (bvsge #b00000000000000000000000000000000 (size!16814 a!3154)))))

(assert (=> d!81707 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10619) e!313642)))

(assert (= (and d!81707 (not res!336672)) b!541816))

(assert (= (and b!541816 res!336674) b!541817))

(assert (= (and b!541816 res!336673) b!541819))

(assert (= (and b!541819 c!62888) b!541818))

(assert (= (and b!541819 (not c!62888)) b!541820))

(assert (= (or b!541818 b!541820) bm!32048))

(declare-fun m!520263 () Bool)

(assert (=> b!541816 m!520263))

(assert (=> b!541816 m!520263))

(declare-fun m!520265 () Bool)

(assert (=> b!541816 m!520265))

(assert (=> bm!32048 m!520263))

(declare-fun m!520267 () Bool)

(assert (=> bm!32048 m!520267))

(assert (=> b!541817 m!520263))

(assert (=> b!541817 m!520263))

(declare-fun m!520269 () Bool)

(assert (=> b!541817 m!520269))

(assert (=> b!541819 m!520263))

(assert (=> b!541819 m!520263))

(assert (=> b!541819 m!520265))

(assert (=> b!541735 d!81707))

(declare-fun d!81709 () Bool)

(assert (=> d!81709 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49224 d!81709))

(declare-fun d!81715 () Bool)

(assert (=> d!81715 (= (array_inv!12224 a!3154) (bvsge (size!16814 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!49224 d!81715))

(declare-fun d!81717 () Bool)

(declare-fun res!336683 () Bool)

(declare-fun e!313653 () Bool)

(assert (=> d!81717 (=> res!336683 e!313653)))

(assert (=> d!81717 (= res!336683 (= (select (arr!16450 a!3154) #b00000000000000000000000000000000) k0!1998))))

(assert (=> d!81717 (= (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000) e!313653)))

(declare-fun b!541833 () Bool)

(declare-fun e!313654 () Bool)

(assert (=> b!541833 (= e!313653 e!313654)))

(declare-fun res!336684 () Bool)

(assert (=> b!541833 (=> (not res!336684) (not e!313654))))

(assert (=> b!541833 (= res!336684 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16814 a!3154)))))

(declare-fun b!541834 () Bool)

(assert (=> b!541834 (= e!313654 (arrayContainsKey!0 a!3154 k0!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81717 (not res!336683)) b!541833))

(assert (= (and b!541833 res!336684) b!541834))

(assert (=> d!81717 m!520263))

(declare-fun m!520271 () Bool)

(assert (=> b!541834 m!520271))

(assert (=> b!541736 d!81717))

(declare-fun d!81719 () Bool)

(assert (=> d!81719 (= (validKeyInArray!0 (select (arr!16450 a!3154) j!147)) (and (not (= (select (arr!16450 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16450 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!541731 d!81719))

(declare-fun b!541894 () Bool)

(declare-fun e!313693 () SeekEntryResult!4915)

(declare-fun e!313692 () SeekEntryResult!4915)

(assert (=> b!541894 (= e!313693 e!313692)))

(declare-fun lt!247764 () (_ BitVec 64))

(declare-fun lt!247765 () SeekEntryResult!4915)

(assert (=> b!541894 (= lt!247764 (select (arr!16450 a!3154) (index!21886 lt!247765)))))

(declare-fun c!62912 () Bool)

(assert (=> b!541894 (= c!62912 (= lt!247764 k0!1998))))

(declare-fun b!541895 () Bool)

(declare-fun c!62910 () Bool)

(assert (=> b!541895 (= c!62910 (= lt!247764 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!313691 () SeekEntryResult!4915)

(assert (=> b!541895 (= e!313692 e!313691)))

(declare-fun b!541896 () Bool)

(assert (=> b!541896 (= e!313692 (Found!4915 (index!21886 lt!247765)))))

(declare-fun b!541897 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34239 (_ BitVec 32)) SeekEntryResult!4915)

(assert (=> b!541897 (= e!313691 (seekKeyOrZeroReturnVacant!0 (x!50823 lt!247765) (index!21886 lt!247765) (index!21886 lt!247765) k0!1998 a!3154 mask!3216))))

(declare-fun b!541898 () Bool)

(assert (=> b!541898 (= e!313693 Undefined!4915)))

(declare-fun d!81721 () Bool)

(declare-fun lt!247766 () SeekEntryResult!4915)

(assert (=> d!81721 (and (or ((_ is Undefined!4915) lt!247766) (not ((_ is Found!4915) lt!247766)) (and (bvsge (index!21885 lt!247766) #b00000000000000000000000000000000) (bvslt (index!21885 lt!247766) (size!16814 a!3154)))) (or ((_ is Undefined!4915) lt!247766) ((_ is Found!4915) lt!247766) (not ((_ is MissingZero!4915) lt!247766)) (and (bvsge (index!21884 lt!247766) #b00000000000000000000000000000000) (bvslt (index!21884 lt!247766) (size!16814 a!3154)))) (or ((_ is Undefined!4915) lt!247766) ((_ is Found!4915) lt!247766) ((_ is MissingZero!4915) lt!247766) (not ((_ is MissingVacant!4915) lt!247766)) (and (bvsge (index!21887 lt!247766) #b00000000000000000000000000000000) (bvslt (index!21887 lt!247766) (size!16814 a!3154)))) (or ((_ is Undefined!4915) lt!247766) (ite ((_ is Found!4915) lt!247766) (= (select (arr!16450 a!3154) (index!21885 lt!247766)) k0!1998) (ite ((_ is MissingZero!4915) lt!247766) (= (select (arr!16450 a!3154) (index!21884 lt!247766)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4915) lt!247766) (= (select (arr!16450 a!3154) (index!21887 lt!247766)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81721 (= lt!247766 e!313693)))

(declare-fun c!62911 () Bool)

(assert (=> d!81721 (= c!62911 (and ((_ is Intermediate!4915) lt!247765) (undefined!5727 lt!247765)))))

(assert (=> d!81721 (= lt!247765 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1998 mask!3216) k0!1998 a!3154 mask!3216))))

(assert (=> d!81721 (validMask!0 mask!3216)))

(assert (=> d!81721 (= (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216) lt!247766)))

(declare-fun b!541893 () Bool)

(assert (=> b!541893 (= e!313691 (MissingZero!4915 (index!21886 lt!247765)))))

(assert (= (and d!81721 c!62911) b!541898))

(assert (= (and d!81721 (not c!62911)) b!541894))

(assert (= (and b!541894 c!62912) b!541896))

(assert (= (and b!541894 (not c!62912)) b!541895))

(assert (= (and b!541895 c!62910) b!541893))

(assert (= (and b!541895 (not c!62910)) b!541897))

(declare-fun m!520297 () Bool)

(assert (=> b!541894 m!520297))

(declare-fun m!520299 () Bool)

(assert (=> b!541897 m!520299))

(declare-fun m!520301 () Bool)

(assert (=> d!81721 m!520301))

(assert (=> d!81721 m!520301))

(declare-fun m!520303 () Bool)

(assert (=> d!81721 m!520303))

(declare-fun m!520305 () Bool)

(assert (=> d!81721 m!520305))

(declare-fun m!520307 () Bool)

(assert (=> d!81721 m!520307))

(assert (=> d!81721 m!520191))

(declare-fun m!520309 () Bool)

(assert (=> d!81721 m!520309))

(assert (=> b!541741 d!81721))

(declare-fun d!81737 () Bool)

(declare-fun e!313698 () Bool)

(assert (=> d!81737 e!313698))

(declare-fun c!62915 () Bool)

(declare-fun lt!247768 () SeekEntryResult!4915)

(assert (=> d!81737 (= c!62915 (and ((_ is Intermediate!4915) lt!247768) (undefined!5727 lt!247768)))))

(declare-fun e!313696 () SeekEntryResult!4915)

(assert (=> d!81737 (= lt!247768 e!313696)))

(declare-fun c!62914 () Bool)

(assert (=> d!81737 (= c!62914 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!247767 () (_ BitVec 64))

(assert (=> d!81737 (= lt!247767 (select (arr!16450 a!3154) (toIndex!0 (select (arr!16450 a!3154) j!147) mask!3216)))))

(assert (=> d!81737 (validMask!0 mask!3216)))

(assert (=> d!81737 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16450 a!3154) j!147) mask!3216) (select (arr!16450 a!3154) j!147) a!3154 mask!3216) lt!247768)))

(declare-fun b!541899 () Bool)

(declare-fun e!313697 () SeekEntryResult!4915)

(assert (=> b!541899 (= e!313696 e!313697)))

(declare-fun c!62913 () Bool)

(assert (=> b!541899 (= c!62913 (or (= lt!247767 (select (arr!16450 a!3154) j!147)) (= (bvadd lt!247767 lt!247767) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!541900 () Bool)

(assert (=> b!541900 (and (bvsge (index!21886 lt!247768) #b00000000000000000000000000000000) (bvslt (index!21886 lt!247768) (size!16814 a!3154)))))

(declare-fun res!336707 () Bool)

(assert (=> b!541900 (= res!336707 (= (select (arr!16450 a!3154) (index!21886 lt!247768)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!313695 () Bool)

(assert (=> b!541900 (=> res!336707 e!313695)))

(declare-fun b!541901 () Bool)

(assert (=> b!541901 (and (bvsge (index!21886 lt!247768) #b00000000000000000000000000000000) (bvslt (index!21886 lt!247768) (size!16814 a!3154)))))

(assert (=> b!541901 (= e!313695 (= (select (arr!16450 a!3154) (index!21886 lt!247768)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!541902 () Bool)

(assert (=> b!541902 (= e!313698 (bvsge (x!50823 lt!247768) #b01111111111111111111111111111110))))

(declare-fun b!541903 () Bool)

(declare-fun e!313694 () Bool)

(assert (=> b!541903 (= e!313698 e!313694)))

(declare-fun res!336705 () Bool)

(assert (=> b!541903 (= res!336705 (and ((_ is Intermediate!4915) lt!247768) (not (undefined!5727 lt!247768)) (bvslt (x!50823 lt!247768) #b01111111111111111111111111111110) (bvsge (x!50823 lt!247768) #b00000000000000000000000000000000) (bvsge (x!50823 lt!247768) #b00000000000000000000000000000000)))))

(assert (=> b!541903 (=> (not res!336705) (not e!313694))))

(declare-fun b!541904 () Bool)

(assert (=> b!541904 (= e!313697 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16450 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16450 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541905 () Bool)

(assert (=> b!541905 (= e!313697 (Intermediate!4915 false (toIndex!0 (select (arr!16450 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!541906 () Bool)

(assert (=> b!541906 (= e!313696 (Intermediate!4915 true (toIndex!0 (select (arr!16450 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!541907 () Bool)

(assert (=> b!541907 (and (bvsge (index!21886 lt!247768) #b00000000000000000000000000000000) (bvslt (index!21886 lt!247768) (size!16814 a!3154)))))

(declare-fun res!336706 () Bool)

(assert (=> b!541907 (= res!336706 (= (select (arr!16450 a!3154) (index!21886 lt!247768)) (select (arr!16450 a!3154) j!147)))))

(assert (=> b!541907 (=> res!336706 e!313695)))

(assert (=> b!541907 (= e!313694 e!313695)))

(assert (= (and d!81737 c!62914) b!541906))

(assert (= (and d!81737 (not c!62914)) b!541899))

(assert (= (and b!541899 c!62913) b!541905))

(assert (= (and b!541899 (not c!62913)) b!541904))

(assert (= (and d!81737 c!62915) b!541902))

(assert (= (and d!81737 (not c!62915)) b!541903))

(assert (= (and b!541903 res!336705) b!541907))

(assert (= (and b!541907 (not res!336706)) b!541900))

(assert (= (and b!541900 (not res!336707)) b!541901))

(declare-fun m!520311 () Bool)

(assert (=> b!541900 m!520311))

(assert (=> b!541904 m!520195))

(declare-fun m!520313 () Bool)

(assert (=> b!541904 m!520313))

(assert (=> b!541904 m!520313))

(assert (=> b!541904 m!520187))

(declare-fun m!520315 () Bool)

(assert (=> b!541904 m!520315))

(assert (=> b!541907 m!520311))

(assert (=> b!541901 m!520311))

(assert (=> d!81737 m!520195))

(declare-fun m!520317 () Bool)

(assert (=> d!81737 m!520317))

(assert (=> d!81737 m!520191))

(assert (=> b!541742 d!81737))

(declare-fun d!81739 () Bool)

(declare-fun lt!247774 () (_ BitVec 32))

(declare-fun lt!247773 () (_ BitVec 32))

(assert (=> d!81739 (= lt!247774 (bvmul (bvxor lt!247773 (bvlshr lt!247773 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!81739 (= lt!247773 ((_ extract 31 0) (bvand (bvxor (select (arr!16450 a!3154) j!147) (bvlshr (select (arr!16450 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!81739 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!336708 (let ((h!11572 ((_ extract 31 0) (bvand (bvxor (select (arr!16450 a!3154) j!147) (bvlshr (select (arr!16450 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!50827 (bvmul (bvxor h!11572 (bvlshr h!11572 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!50827 (bvlshr x!50827 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!336708 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!336708 #b00000000000000000000000000000000))))))

(assert (=> d!81739 (= (toIndex!0 (select (arr!16450 a!3154) j!147) mask!3216) (bvand (bvxor lt!247774 (bvlshr lt!247774 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!541742 d!81739))

(declare-fun d!81741 () Bool)

(declare-fun e!313703 () Bool)

(assert (=> d!81741 e!313703))

(declare-fun c!62918 () Bool)

(declare-fun lt!247776 () SeekEntryResult!4915)

(assert (=> d!81741 (= c!62918 (and ((_ is Intermediate!4915) lt!247776) (undefined!5727 lt!247776)))))

(declare-fun e!313701 () SeekEntryResult!4915)

(assert (=> d!81741 (= lt!247776 e!313701)))

(declare-fun c!62917 () Bool)

(assert (=> d!81741 (= c!62917 (bvsge x!1030 #b01111111111111111111111111111110))))

(declare-fun lt!247775 () (_ BitVec 64))

(assert (=> d!81741 (= lt!247775 (select (arr!16450 a!3154) index!1177))))

(assert (=> d!81741 (validMask!0 mask!3216)))

(assert (=> d!81741 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16450 a!3154) j!147) a!3154 mask!3216) lt!247776)))

(declare-fun b!541908 () Bool)

(declare-fun e!313702 () SeekEntryResult!4915)

(assert (=> b!541908 (= e!313701 e!313702)))

(declare-fun c!62916 () Bool)

(assert (=> b!541908 (= c!62916 (or (= lt!247775 (select (arr!16450 a!3154) j!147)) (= (bvadd lt!247775 lt!247775) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!541909 () Bool)

(assert (=> b!541909 (and (bvsge (index!21886 lt!247776) #b00000000000000000000000000000000) (bvslt (index!21886 lt!247776) (size!16814 a!3154)))))

(declare-fun res!336711 () Bool)

(assert (=> b!541909 (= res!336711 (= (select (arr!16450 a!3154) (index!21886 lt!247776)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!313700 () Bool)

(assert (=> b!541909 (=> res!336711 e!313700)))

(declare-fun b!541910 () Bool)

(assert (=> b!541910 (and (bvsge (index!21886 lt!247776) #b00000000000000000000000000000000) (bvslt (index!21886 lt!247776) (size!16814 a!3154)))))

(assert (=> b!541910 (= e!313700 (= (select (arr!16450 a!3154) (index!21886 lt!247776)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!541911 () Bool)

(assert (=> b!541911 (= e!313703 (bvsge (x!50823 lt!247776) #b01111111111111111111111111111110))))

(declare-fun b!541912 () Bool)

(declare-fun e!313699 () Bool)

(assert (=> b!541912 (= e!313703 e!313699)))

(declare-fun res!336709 () Bool)

(assert (=> b!541912 (= res!336709 (and ((_ is Intermediate!4915) lt!247776) (not (undefined!5727 lt!247776)) (bvslt (x!50823 lt!247776) #b01111111111111111111111111111110) (bvsge (x!50823 lt!247776) #b00000000000000000000000000000000) (bvsge (x!50823 lt!247776) x!1030)))))

(assert (=> b!541912 (=> (not res!336709) (not e!313699))))

(declare-fun b!541913 () Bool)

(assert (=> b!541913 (= e!313702 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16450 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541914 () Bool)

(assert (=> b!541914 (= e!313702 (Intermediate!4915 false index!1177 x!1030))))

(declare-fun b!541915 () Bool)

(assert (=> b!541915 (= e!313701 (Intermediate!4915 true index!1177 x!1030))))

(declare-fun b!541916 () Bool)

(assert (=> b!541916 (and (bvsge (index!21886 lt!247776) #b00000000000000000000000000000000) (bvslt (index!21886 lt!247776) (size!16814 a!3154)))))

(declare-fun res!336710 () Bool)

(assert (=> b!541916 (= res!336710 (= (select (arr!16450 a!3154) (index!21886 lt!247776)) (select (arr!16450 a!3154) j!147)))))

(assert (=> b!541916 (=> res!336710 e!313700)))

(assert (=> b!541916 (= e!313699 e!313700)))

(assert (= (and d!81741 c!62917) b!541915))

(assert (= (and d!81741 (not c!62917)) b!541908))

(assert (= (and b!541908 c!62916) b!541914))

(assert (= (and b!541908 (not c!62916)) b!541913))

(assert (= (and d!81741 c!62918) b!541911))

(assert (= (and d!81741 (not c!62918)) b!541912))

(assert (= (and b!541912 res!336709) b!541916))

(assert (= (and b!541916 (not res!336710)) b!541909))

(assert (= (and b!541909 (not res!336711)) b!541910))

(declare-fun m!520319 () Bool)

(assert (=> b!541909 m!520319))

(assert (=> b!541913 m!520257))

(assert (=> b!541913 m!520257))

(assert (=> b!541913 m!520187))

(declare-fun m!520321 () Bool)

(assert (=> b!541913 m!520321))

(assert (=> b!541916 m!520319))

(assert (=> b!541910 m!520319))

(assert (=> d!81741 m!520215))

(assert (=> d!81741 m!520191))

(assert (=> b!541737 d!81741))

(declare-fun d!81743 () Bool)

(declare-fun res!336726 () Bool)

(declare-fun e!313734 () Bool)

(assert (=> d!81743 (=> res!336726 e!313734)))

(assert (=> d!81743 (= res!336726 (bvsge #b00000000000000000000000000000000 (size!16814 a!3154)))))

(assert (=> d!81743 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!313734)))

(declare-fun b!541970 () Bool)

(declare-fun e!313735 () Bool)

(declare-fun call!32060 () Bool)

(assert (=> b!541970 (= e!313735 call!32060)))

(declare-fun b!541971 () Bool)

(declare-fun e!313736 () Bool)

(assert (=> b!541971 (= e!313736 call!32060)))

(declare-fun b!541972 () Bool)

(assert (=> b!541972 (= e!313736 e!313735)))

(declare-fun lt!247800 () (_ BitVec 64))

(assert (=> b!541972 (= lt!247800 (select (arr!16450 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16876 0))(
  ( (Unit!16877) )
))
(declare-fun lt!247798 () Unit!16876)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34239 (_ BitVec 64) (_ BitVec 32)) Unit!16876)

(assert (=> b!541972 (= lt!247798 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!247800 #b00000000000000000000000000000000))))

(assert (=> b!541972 (arrayContainsKey!0 a!3154 lt!247800 #b00000000000000000000000000000000)))

(declare-fun lt!247799 () Unit!16876)

(assert (=> b!541972 (= lt!247799 lt!247798)))

(declare-fun res!336727 () Bool)

(assert (=> b!541972 (= res!336727 (= (seekEntryOrOpen!0 (select (arr!16450 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4915 #b00000000000000000000000000000000)))))

(assert (=> b!541972 (=> (not res!336727) (not e!313735))))

(declare-fun bm!32057 () Bool)

(assert (=> bm!32057 (= call!32060 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!541973 () Bool)

(assert (=> b!541973 (= e!313734 e!313736)))

(declare-fun c!62939 () Bool)

(assert (=> b!541973 (= c!62939 (validKeyInArray!0 (select (arr!16450 a!3154) #b00000000000000000000000000000000)))))

(assert (= (and d!81743 (not res!336726)) b!541973))

(assert (= (and b!541973 c!62939) b!541972))

(assert (= (and b!541973 (not c!62939)) b!541971))

(assert (= (and b!541972 res!336727) b!541970))

(assert (= (or b!541970 b!541971) bm!32057))

(assert (=> b!541972 m!520263))

(declare-fun m!520345 () Bool)

(assert (=> b!541972 m!520345))

(declare-fun m!520347 () Bool)

(assert (=> b!541972 m!520347))

(assert (=> b!541972 m!520263))

(declare-fun m!520349 () Bool)

(assert (=> b!541972 m!520349))

(declare-fun m!520351 () Bool)

(assert (=> bm!32057 m!520351))

(assert (=> b!541973 m!520263))

(assert (=> b!541973 m!520263))

(assert (=> b!541973 m!520265))

(assert (=> b!541739 d!81743))

(declare-fun d!81749 () Bool)

(assert (=> d!81749 (= (validKeyInArray!0 k0!1998) (and (not (= k0!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!541733 d!81749))

(check-sat (not b!541913) (not b!541802) (not d!81721) (not b!541817) (not b!541816) (not b!541904) (not bm!32057) (not d!81705) (not b!541897) (not d!81741) (not b!541834) (not b!541973) (not d!81737) (not b!541972) (not bm!32048) (not b!541819))
(check-sat)
