; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121768 () Bool)

(assert start!121768)

(declare-fun b!1413787 () Bool)

(declare-fun e!800142 () Bool)

(declare-datatypes ((SeekEntryResult!10945 0))(
  ( (MissingZero!10945 (index!46162 (_ BitVec 32))) (Found!10945 (index!46163 (_ BitVec 32))) (Intermediate!10945 (undefined!11757 Bool) (index!46164 (_ BitVec 32)) (x!127759 (_ BitVec 32))) (Undefined!10945) (MissingVacant!10945 (index!46165 (_ BitVec 32))) )
))
(declare-fun lt!623208 () SeekEntryResult!10945)

(declare-fun lt!623203 () SeekEntryResult!10945)

(assert (=> b!1413787 (= e!800142 (or (bvslt (x!127759 lt!623208) #b00000000000000000000000000000000) (bvsgt (x!127759 lt!623208) #b01111111111111111111111111111110) (and (bvsge (x!127759 lt!623203) #b00000000000000000000000000000000) (bvsle (x!127759 lt!623203) #b01111111111111111111111111111110))))))

(declare-fun e!800147 () Bool)

(assert (=> b!1413787 e!800147))

(declare-fun res!950651 () Bool)

(assert (=> b!1413787 (=> (not res!950651) (not e!800147))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((array!96561 0))(
  ( (array!96562 (arr!46612 (Array (_ BitVec 32) (_ BitVec 64))) (size!47163 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96561)

(assert (=> b!1413787 (= res!950651 (and (not (undefined!11757 lt!623203)) (= (index!46164 lt!623203) i!1037) (bvslt (x!127759 lt!623203) (x!127759 lt!623208)) (= (select (store (arr!46612 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46164 lt!623203)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((Unit!47814 0))(
  ( (Unit!47815) )
))
(declare-fun lt!623209 () Unit!47814)

(declare-fun lt!623204 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96561 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47814)

(assert (=> b!1413787 (= lt!623209 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623204 (x!127759 lt!623208) (index!46164 lt!623208) (x!127759 lt!623203) (index!46164 lt!623203) (undefined!11757 lt!623203) mask!2840))))

(declare-fun res!950649 () Bool)

(declare-fun e!800143 () Bool)

(assert (=> start!121768 (=> (not res!950649) (not e!800143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121768 (= res!950649 (validMask!0 mask!2840))))

(assert (=> start!121768 e!800143))

(assert (=> start!121768 true))

(declare-fun array_inv!35557 (array!96561) Bool)

(assert (=> start!121768 (array_inv!35557 a!2901)))

(declare-fun b!1413788 () Bool)

(declare-fun e!800144 () Bool)

(assert (=> b!1413788 (= e!800144 e!800142)))

(declare-fun res!950654 () Bool)

(assert (=> b!1413788 (=> res!950654 e!800142)))

(assert (=> b!1413788 (= res!950654 (or (= lt!623208 lt!623203) (not (is-Intermediate!10945 lt!623203))))))

(declare-fun lt!623207 () array!96561)

(declare-fun lt!623206 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96561 (_ BitVec 32)) SeekEntryResult!10945)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413788 (= lt!623203 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623206 mask!2840) lt!623206 lt!623207 mask!2840))))

(assert (=> b!1413788 (= lt!623206 (select (store (arr!46612 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1413788 (= lt!623207 (array!96562 (store (arr!46612 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47163 a!2901)))))

(declare-fun b!1413789 () Bool)

(assert (=> b!1413789 (= e!800143 (not e!800144))))

(declare-fun res!950655 () Bool)

(assert (=> b!1413789 (=> res!950655 e!800144)))

(assert (=> b!1413789 (= res!950655 (or (not (is-Intermediate!10945 lt!623208)) (undefined!11757 lt!623208)))))

(declare-fun e!800146 () Bool)

(assert (=> b!1413789 e!800146))

(declare-fun res!950650 () Bool)

(assert (=> b!1413789 (=> (not res!950650) (not e!800146))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96561 (_ BitVec 32)) Bool)

(assert (=> b!1413789 (= res!950650 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!623205 () Unit!47814)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96561 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47814)

(assert (=> b!1413789 (= lt!623205 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1413789 (= lt!623208 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623204 (select (arr!46612 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1413789 (= lt!623204 (toIndex!0 (select (arr!46612 a!2901) j!112) mask!2840))))

(declare-fun b!1413790 () Bool)

(declare-fun res!950658 () Bool)

(assert (=> b!1413790 (=> (not res!950658) (not e!800143))))

(assert (=> b!1413790 (= res!950658 (and (= (size!47163 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47163 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47163 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1413791 () Bool)

(declare-fun res!950656 () Bool)

(assert (=> b!1413791 (=> (not res!950656) (not e!800143))))

(assert (=> b!1413791 (= res!950656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1413792 () Bool)

(declare-fun res!950653 () Bool)

(assert (=> b!1413792 (=> (not res!950653) (not e!800143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1413792 (= res!950653 (validKeyInArray!0 (select (arr!46612 a!2901) i!1037)))))

(declare-fun b!1413793 () Bool)

(declare-fun res!950652 () Bool)

(assert (=> b!1413793 (=> (not res!950652) (not e!800143))))

(assert (=> b!1413793 (= res!950652 (validKeyInArray!0 (select (arr!46612 a!2901) j!112)))))

(declare-fun b!1413794 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96561 (_ BitVec 32)) SeekEntryResult!10945)

(assert (=> b!1413794 (= e!800146 (= (seekEntryOrOpen!0 (select (arr!46612 a!2901) j!112) a!2901 mask!2840) (Found!10945 j!112)))))

(declare-fun b!1413795 () Bool)

(declare-fun res!950657 () Bool)

(assert (=> b!1413795 (=> (not res!950657) (not e!800143))))

(declare-datatypes ((List!33311 0))(
  ( (Nil!33308) (Cons!33307 (h!34585 (_ BitVec 64)) (t!48012 List!33311)) )
))
(declare-fun arrayNoDuplicates!0 (array!96561 (_ BitVec 32) List!33311) Bool)

(assert (=> b!1413795 (= res!950657 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33308))))

(declare-fun b!1413796 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96561 (_ BitVec 32)) SeekEntryResult!10945)

(assert (=> b!1413796 (= e!800147 (= (seekEntryOrOpen!0 lt!623206 lt!623207 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127759 lt!623203) (index!46164 lt!623203) (index!46164 lt!623203) (select (arr!46612 a!2901) j!112) lt!623207 mask!2840)))))

(assert (= (and start!121768 res!950649) b!1413790))

(assert (= (and b!1413790 res!950658) b!1413792))

(assert (= (and b!1413792 res!950653) b!1413793))

(assert (= (and b!1413793 res!950652) b!1413791))

(assert (= (and b!1413791 res!950656) b!1413795))

(assert (= (and b!1413795 res!950657) b!1413789))

(assert (= (and b!1413789 res!950650) b!1413794))

(assert (= (and b!1413789 (not res!950655)) b!1413788))

(assert (= (and b!1413788 (not res!950654)) b!1413787))

(assert (= (and b!1413787 res!950651) b!1413796))

(declare-fun m!1304207 () Bool)

(assert (=> start!121768 m!1304207))

(declare-fun m!1304209 () Bool)

(assert (=> start!121768 m!1304209))

(declare-fun m!1304211 () Bool)

(assert (=> b!1413787 m!1304211))

(declare-fun m!1304213 () Bool)

(assert (=> b!1413787 m!1304213))

(declare-fun m!1304215 () Bool)

(assert (=> b!1413787 m!1304215))

(declare-fun m!1304217 () Bool)

(assert (=> b!1413792 m!1304217))

(assert (=> b!1413792 m!1304217))

(declare-fun m!1304219 () Bool)

(assert (=> b!1413792 m!1304219))

(declare-fun m!1304221 () Bool)

(assert (=> b!1413796 m!1304221))

(declare-fun m!1304223 () Bool)

(assert (=> b!1413796 m!1304223))

(assert (=> b!1413796 m!1304223))

(declare-fun m!1304225 () Bool)

(assert (=> b!1413796 m!1304225))

(declare-fun m!1304227 () Bool)

(assert (=> b!1413791 m!1304227))

(declare-fun m!1304229 () Bool)

(assert (=> b!1413795 m!1304229))

(assert (=> b!1413789 m!1304223))

(declare-fun m!1304231 () Bool)

(assert (=> b!1413789 m!1304231))

(assert (=> b!1413789 m!1304223))

(declare-fun m!1304233 () Bool)

(assert (=> b!1413789 m!1304233))

(declare-fun m!1304235 () Bool)

(assert (=> b!1413789 m!1304235))

(assert (=> b!1413789 m!1304223))

(declare-fun m!1304237 () Bool)

(assert (=> b!1413789 m!1304237))

(declare-fun m!1304239 () Bool)

(assert (=> b!1413788 m!1304239))

(assert (=> b!1413788 m!1304239))

(declare-fun m!1304241 () Bool)

(assert (=> b!1413788 m!1304241))

(assert (=> b!1413788 m!1304211))

(declare-fun m!1304243 () Bool)

(assert (=> b!1413788 m!1304243))

(assert (=> b!1413794 m!1304223))

(assert (=> b!1413794 m!1304223))

(declare-fun m!1304245 () Bool)

(assert (=> b!1413794 m!1304245))

(assert (=> b!1413793 m!1304223))

(assert (=> b!1413793 m!1304223))

(declare-fun m!1304247 () Bool)

(assert (=> b!1413793 m!1304247))

(push 1)

(assert (not b!1413792))

(assert (not b!1413789))

(assert (not b!1413794))

(assert (not b!1413796))

(assert (not b!1413795))

(assert (not b!1413793))

(assert (not b!1413788))

(assert (not start!121768))

(assert (not b!1413787))

(assert (not b!1413791))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1413920 () Bool)

(declare-fun lt!623281 () SeekEntryResult!10945)

(assert (=> b!1413920 (and (bvsge (index!46164 lt!623281) #b00000000000000000000000000000000) (bvslt (index!46164 lt!623281) (size!47163 lt!623207)))))

(declare-fun e!800225 () Bool)

(assert (=> b!1413920 (= e!800225 (= (select (arr!46612 lt!623207) (index!46164 lt!623281)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1413921 () Bool)

(declare-fun e!800228 () Bool)

(assert (=> b!1413921 (= e!800228 (bvsge (x!127759 lt!623281) #b01111111111111111111111111111110))))

(declare-fun b!1413922 () Bool)

(declare-fun e!800226 () Bool)

(assert (=> b!1413922 (= e!800228 e!800226)))

(declare-fun res!950741 () Bool)

(assert (=> b!1413922 (= res!950741 (and (is-Intermediate!10945 lt!623281) (not (undefined!11757 lt!623281)) (bvslt (x!127759 lt!623281) #b01111111111111111111111111111110) (bvsge (x!127759 lt!623281) #b00000000000000000000000000000000) (bvsge (x!127759 lt!623281) #b00000000000000000000000000000000)))))

(assert (=> b!1413922 (=> (not res!950741) (not e!800226))))

(declare-fun d!152159 () Bool)

(assert (=> d!152159 e!800228))

(declare-fun c!131068 () Bool)

(assert (=> d!152159 (= c!131068 (and (is-Intermediate!10945 lt!623281) (undefined!11757 lt!623281)))))

(declare-fun e!800227 () SeekEntryResult!10945)

(assert (=> d!152159 (= lt!623281 e!800227)))

(declare-fun c!131069 () Bool)

(assert (=> d!152159 (= c!131069 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!623280 () (_ BitVec 64))

(assert (=> d!152159 (= lt!623280 (select (arr!46612 lt!623207) (toIndex!0 lt!623206 mask!2840)))))

(assert (=> d!152159 (validMask!0 mask!2840)))

(assert (=> d!152159 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623206 mask!2840) lt!623206 lt!623207 mask!2840) lt!623281)))

(declare-fun b!1413923 () Bool)

(declare-fun e!800224 () SeekEntryResult!10945)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413923 (= e!800224 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!623206 mask!2840) #b00000000000000000000000000000000 mask!2840) lt!623206 lt!623207 mask!2840))))

(declare-fun b!1413924 () Bool)

(assert (=> b!1413924 (= e!800227 (Intermediate!10945 true (toIndex!0 lt!623206 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1413925 () Bool)

(assert (=> b!1413925 (= e!800224 (Intermediate!10945 false (toIndex!0 lt!623206 mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1413926 () Bool)

(assert (=> b!1413926 (and (bvsge (index!46164 lt!623281) #b00000000000000000000000000000000) (bvslt (index!46164 lt!623281) (size!47163 lt!623207)))))

(declare-fun res!950740 () Bool)

(assert (=> b!1413926 (= res!950740 (= (select (arr!46612 lt!623207) (index!46164 lt!623281)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1413926 (=> res!950740 e!800225)))

(declare-fun b!1413927 () Bool)

(assert (=> b!1413927 (and (bvsge (index!46164 lt!623281) #b00000000000000000000000000000000) (bvslt (index!46164 lt!623281) (size!47163 lt!623207)))))

(declare-fun res!950742 () Bool)

(assert (=> b!1413927 (= res!950742 (= (select (arr!46612 lt!623207) (index!46164 lt!623281)) lt!623206))))

(assert (=> b!1413927 (=> res!950742 e!800225)))

(assert (=> b!1413927 (= e!800226 e!800225)))

(declare-fun b!1413928 () Bool)

(assert (=> b!1413928 (= e!800227 e!800224)))

(declare-fun c!131067 () Bool)

(assert (=> b!1413928 (= c!131067 (or (= lt!623280 lt!623206) (= (bvadd lt!623280 lt!623280) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!152159 c!131069) b!1413924))

(assert (= (and d!152159 (not c!131069)) b!1413928))

(assert (= (and b!1413928 c!131067) b!1413925))

(assert (= (and b!1413928 (not c!131067)) b!1413923))

(assert (= (and d!152159 c!131068) b!1413921))

(assert (= (and d!152159 (not c!131068)) b!1413922))

(assert (= (and b!1413922 res!950741) b!1413927))

(assert (= (and b!1413927 (not res!950742)) b!1413926))

(assert (= (and b!1413926 (not res!950740)) b!1413920))

(declare-fun m!1304363 () Bool)

(assert (=> b!1413927 m!1304363))

(assert (=> d!152159 m!1304239))

(declare-fun m!1304365 () Bool)

(assert (=> d!152159 m!1304365))

(assert (=> d!152159 m!1304207))

(assert (=> b!1413923 m!1304239))

(declare-fun m!1304367 () Bool)

(assert (=> b!1413923 m!1304367))

(assert (=> b!1413923 m!1304367))

(declare-fun m!1304369 () Bool)

(assert (=> b!1413923 m!1304369))

(assert (=> b!1413926 m!1304363))

(assert (=> b!1413920 m!1304363))

(assert (=> b!1413788 d!152159))

(declare-fun d!152173 () Bool)

(declare-fun lt!623290 () (_ BitVec 32))

(declare-fun lt!623289 () (_ BitVec 32))

(assert (=> d!152173 (= lt!623290 (bvmul (bvxor lt!623289 (bvlshr lt!623289 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152173 (= lt!623289 ((_ extract 31 0) (bvand (bvxor lt!623206 (bvlshr lt!623206 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152173 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!950743 (let ((h!34588 ((_ extract 31 0) (bvand (bvxor lt!623206 (bvlshr lt!623206 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127765 (bvmul (bvxor h!34588 (bvlshr h!34588 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127765 (bvlshr x!127765 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!950743 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!950743 #b00000000000000000000000000000000))))))

(assert (=> d!152173 (= (toIndex!0 lt!623206 mask!2840) (bvand (bvxor lt!623290 (bvlshr lt!623290 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1413788 d!152173))

(declare-fun d!152177 () Bool)

(assert (=> d!152177 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121768 d!152177))

(declare-fun d!152179 () Bool)

(assert (=> d!152179 (= (array_inv!35557 a!2901) (bvsge (size!47163 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121768 d!152179))

(declare-fun d!152181 () Bool)

(assert (=> d!152181 (= (validKeyInArray!0 (select (arr!46612 a!2901) j!112)) (and (not (= (select (arr!46612 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46612 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1413793 d!152181))

(declare-fun b!1413975 () Bool)

(declare-fun e!800259 () Bool)

(declare-fun call!67125 () Bool)

(assert (=> b!1413975 (= e!800259 call!67125)))

(declare-fun bm!67122 () Bool)

(declare-fun c!131087 () Bool)

(assert (=> bm!67122 (= call!67125 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131087 (Cons!33307 (select (arr!46612 a!2901) #b00000000000000000000000000000000) Nil!33308) Nil!33308)))))

(declare-fun b!1413976 () Bool)

(declare-fun e!800256 () Bool)

(assert (=> b!1413976 (= e!800256 e!800259)))

(assert (=> b!1413976 (= c!131087 (validKeyInArray!0 (select (arr!46612 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!152183 () Bool)

(declare-fun res!950757 () Bool)

(declare-fun e!800258 () Bool)

(assert (=> d!152183 (=> res!950757 e!800258)))

(assert (=> d!152183 (= res!950757 (bvsge #b00000000000000000000000000000000 (size!47163 a!2901)))))

(assert (=> d!152183 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33308) e!800258)))

(declare-fun b!1413977 () Bool)

(declare-fun e!800257 () Bool)

(declare-fun contains!9831 (List!33311 (_ BitVec 64)) Bool)

(assert (=> b!1413977 (= e!800257 (contains!9831 Nil!33308 (select (arr!46612 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1413978 () Bool)

(assert (=> b!1413978 (= e!800258 e!800256)))

(declare-fun res!950756 () Bool)

(assert (=> b!1413978 (=> (not res!950756) (not e!800256))))

(assert (=> b!1413978 (= res!950756 (not e!800257))))

(declare-fun res!950758 () Bool)

(assert (=> b!1413978 (=> (not res!950758) (not e!800257))))

(assert (=> b!1413978 (= res!950758 (validKeyInArray!0 (select (arr!46612 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1413979 () Bool)

(assert (=> b!1413979 (= e!800259 call!67125)))

(assert (= (and d!152183 (not res!950757)) b!1413978))

(assert (= (and b!1413978 res!950758) b!1413977))

(assert (= (and b!1413978 res!950756) b!1413976))

(assert (= (and b!1413976 c!131087) b!1413979))

(assert (= (and b!1413976 (not c!131087)) b!1413975))

(assert (= (or b!1413979 b!1413975) bm!67122))

(declare-fun m!1304385 () Bool)

(assert (=> bm!67122 m!1304385))

(declare-fun m!1304387 () Bool)

(assert (=> bm!67122 m!1304387))

(assert (=> b!1413976 m!1304385))

(assert (=> b!1413976 m!1304385))

(declare-fun m!1304389 () Bool)

(assert (=> b!1413976 m!1304389))

(assert (=> b!1413977 m!1304385))

(assert (=> b!1413977 m!1304385))

(declare-fun m!1304391 () Bool)

(assert (=> b!1413977 m!1304391))

(assert (=> b!1413978 m!1304385))

(assert (=> b!1413978 m!1304385))

(assert (=> b!1413978 m!1304389))

(assert (=> b!1413795 d!152183))

(declare-fun b!1414032 () Bool)

(declare-fun e!800291 () SeekEntryResult!10945)

(assert (=> b!1414032 (= e!800291 Undefined!10945)))

(declare-fun d!152187 () Bool)

(declare-fun lt!623342 () SeekEntryResult!10945)

(assert (=> d!152187 (and (or (is-Undefined!10945 lt!623342) (not (is-Found!10945 lt!623342)) (and (bvsge (index!46163 lt!623342) #b00000000000000000000000000000000) (bvslt (index!46163 lt!623342) (size!47163 a!2901)))) (or (is-Undefined!10945 lt!623342) (is-Found!10945 lt!623342) (not (is-MissingZero!10945 lt!623342)) (and (bvsge (index!46162 lt!623342) #b00000000000000000000000000000000) (bvslt (index!46162 lt!623342) (size!47163 a!2901)))) (or (is-Undefined!10945 lt!623342) (is-Found!10945 lt!623342) (is-MissingZero!10945 lt!623342) (not (is-MissingVacant!10945 lt!623342)) (and (bvsge (index!46165 lt!623342) #b00000000000000000000000000000000) (bvslt (index!46165 lt!623342) (size!47163 a!2901)))) (or (is-Undefined!10945 lt!623342) (ite (is-Found!10945 lt!623342) (= (select (arr!46612 a!2901) (index!46163 lt!623342)) (select (arr!46612 a!2901) j!112)) (ite (is-MissingZero!10945 lt!623342) (= (select (arr!46612 a!2901) (index!46162 lt!623342)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10945 lt!623342) (= (select (arr!46612 a!2901) (index!46165 lt!623342)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!152187 (= lt!623342 e!800291)))

(declare-fun c!131107 () Bool)

(declare-fun lt!623340 () SeekEntryResult!10945)

(assert (=> d!152187 (= c!131107 (and (is-Intermediate!10945 lt!623340) (undefined!11757 lt!623340)))))

(assert (=> d!152187 (= lt!623340 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46612 a!2901) j!112) mask!2840) (select (arr!46612 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!152187 (validMask!0 mask!2840)))

(assert (=> d!152187 (= (seekEntryOrOpen!0 (select (arr!46612 a!2901) j!112) a!2901 mask!2840) lt!623342)))

(declare-fun b!1414033 () Bool)

(declare-fun e!800293 () SeekEntryResult!10945)

(assert (=> b!1414033 (= e!800293 (Found!10945 (index!46164 lt!623340)))))

(declare-fun b!1414034 () Bool)

(declare-fun c!131108 () Bool)

(declare-fun lt!623341 () (_ BitVec 64))

(assert (=> b!1414034 (= c!131108 (= lt!623341 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800292 () SeekEntryResult!10945)

(assert (=> b!1414034 (= e!800293 e!800292)))

(declare-fun b!1414035 () Bool)

(assert (=> b!1414035 (= e!800292 (seekKeyOrZeroReturnVacant!0 (x!127759 lt!623340) (index!46164 lt!623340) (index!46164 lt!623340) (select (arr!46612 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1414036 () Bool)

(assert (=> b!1414036 (= e!800292 (MissingZero!10945 (index!46164 lt!623340)))))

(declare-fun b!1414037 () Bool)

(assert (=> b!1414037 (= e!800291 e!800293)))

(assert (=> b!1414037 (= lt!623341 (select (arr!46612 a!2901) (index!46164 lt!623340)))))

(declare-fun c!131109 () Bool)

(assert (=> b!1414037 (= c!131109 (= lt!623341 (select (arr!46612 a!2901) j!112)))))

(assert (= (and d!152187 c!131107) b!1414032))

(assert (= (and d!152187 (not c!131107)) b!1414037))

(assert (= (and b!1414037 c!131109) b!1414033))

(assert (= (and b!1414037 (not c!131109)) b!1414034))

(assert (= (and b!1414034 c!131108) b!1414036))

(assert (= (and b!1414034 (not c!131108)) b!1414035))

(declare-fun m!1304439 () Bool)

(assert (=> d!152187 m!1304439))

(assert (=> d!152187 m!1304223))

(assert (=> d!152187 m!1304231))

(assert (=> d!152187 m!1304207))

(assert (=> d!152187 m!1304231))

(assert (=> d!152187 m!1304223))

(declare-fun m!1304441 () Bool)

(assert (=> d!152187 m!1304441))

(declare-fun m!1304443 () Bool)

(assert (=> d!152187 m!1304443))

(declare-fun m!1304445 () Bool)

(assert (=> d!152187 m!1304445))

(assert (=> b!1414035 m!1304223))

(declare-fun m!1304447 () Bool)

(assert (=> b!1414035 m!1304447))

(declare-fun m!1304449 () Bool)

(assert (=> b!1414037 m!1304449))

(assert (=> b!1413794 d!152187))

(declare-fun b!1414074 () Bool)

(declare-fun e!800319 () Bool)

(declare-fun e!800317 () Bool)

(assert (=> b!1414074 (= e!800319 e!800317)))

(declare-fun lt!623356 () (_ BitVec 64))

(assert (=> b!1414074 (= lt!623356 (select (arr!46612 a!2901) j!112))))

(declare-fun lt!623357 () Unit!47814)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96561 (_ BitVec 64) (_ BitVec 32)) Unit!47814)

(assert (=> b!1414074 (= lt!623357 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623356 j!112))))

(declare-fun arrayContainsKey!0 (array!96561 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1414074 (arrayContainsKey!0 a!2901 lt!623356 #b00000000000000000000000000000000)))

(declare-fun lt!623355 () Unit!47814)

(assert (=> b!1414074 (= lt!623355 lt!623357)))

(declare-fun res!950785 () Bool)

(assert (=> b!1414074 (= res!950785 (= (seekEntryOrOpen!0 (select (arr!46612 a!2901) j!112) a!2901 mask!2840) (Found!10945 j!112)))))

(assert (=> b!1414074 (=> (not res!950785) (not e!800317))))

(declare-fun b!1414075 () Bool)

(declare-fun call!67134 () Bool)

(assert (=> b!1414075 (= e!800319 call!67134)))

(declare-fun bm!67131 () Bool)

(assert (=> bm!67131 (= call!67134 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun d!152209 () Bool)

(declare-fun res!950784 () Bool)

(declare-fun e!800318 () Bool)

(assert (=> d!152209 (=> res!950784 e!800318)))

(assert (=> d!152209 (= res!950784 (bvsge j!112 (size!47163 a!2901)))))

(assert (=> d!152209 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!800318)))

(declare-fun b!1414076 () Bool)

(assert (=> b!1414076 (= e!800318 e!800319)))

(declare-fun c!131123 () Bool)

(assert (=> b!1414076 (= c!131123 (validKeyInArray!0 (select (arr!46612 a!2901) j!112)))))

(declare-fun b!1414077 () Bool)

(assert (=> b!1414077 (= e!800317 call!67134)))

(assert (= (and d!152209 (not res!950784)) b!1414076))

(assert (= (and b!1414076 c!131123) b!1414074))

(assert (= (and b!1414076 (not c!131123)) b!1414075))

(assert (= (and b!1414074 res!950785) b!1414077))

(assert (= (or b!1414077 b!1414075) bm!67131))

(assert (=> b!1414074 m!1304223))

(declare-fun m!1304461 () Bool)

(assert (=> b!1414074 m!1304461))

(declare-fun m!1304463 () Bool)

(assert (=> b!1414074 m!1304463))

(assert (=> b!1414074 m!1304223))

(assert (=> b!1414074 m!1304245))

(declare-fun m!1304465 () Bool)

(assert (=> bm!67131 m!1304465))

(assert (=> b!1414076 m!1304223))

(assert (=> b!1414076 m!1304223))

(assert (=> b!1414076 m!1304247))

(assert (=> b!1413789 d!152209))

(declare-fun d!152213 () Bool)

(assert (=> d!152213 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!623364 () Unit!47814)

(declare-fun choose!38 (array!96561 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47814)

(assert (=> d!152213 (= lt!623364 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!152213 (validMask!0 mask!2840)))

(assert (=> d!152213 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!623364)))

(declare-fun bs!41223 () Bool)

(assert (= bs!41223 d!152213))

(assert (=> bs!41223 m!1304235))

(declare-fun m!1304471 () Bool)

(assert (=> bs!41223 m!1304471))

(assert (=> bs!41223 m!1304207))

(assert (=> b!1413789 d!152213))

(declare-fun b!1414101 () Bool)

(declare-fun lt!623366 () SeekEntryResult!10945)

(assert (=> b!1414101 (and (bvsge (index!46164 lt!623366) #b00000000000000000000000000000000) (bvslt (index!46164 lt!623366) (size!47163 a!2901)))))

(declare-fun e!800335 () Bool)

(assert (=> b!1414101 (= e!800335 (= (select (arr!46612 a!2901) (index!46164 lt!623366)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1414102 () Bool)

(declare-fun e!800338 () Bool)

(assert (=> b!1414102 (= e!800338 (bvsge (x!127759 lt!623366) #b01111111111111111111111111111110))))

(declare-fun b!1414103 () Bool)

(declare-fun e!800336 () Bool)

(assert (=> b!1414103 (= e!800338 e!800336)))

(declare-fun res!950796 () Bool)

(assert (=> b!1414103 (= res!950796 (and (is-Intermediate!10945 lt!623366) (not (undefined!11757 lt!623366)) (bvslt (x!127759 lt!623366) #b01111111111111111111111111111110) (bvsge (x!127759 lt!623366) #b00000000000000000000000000000000) (bvsge (x!127759 lt!623366) #b00000000000000000000000000000000)))))

(assert (=> b!1414103 (=> (not res!950796) (not e!800336))))

(declare-fun d!152217 () Bool)

(assert (=> d!152217 e!800338))

(declare-fun c!131132 () Bool)

(assert (=> d!152217 (= c!131132 (and (is-Intermediate!10945 lt!623366) (undefined!11757 lt!623366)))))

(declare-fun e!800337 () SeekEntryResult!10945)

(assert (=> d!152217 (= lt!623366 e!800337)))

(declare-fun c!131133 () Bool)

(assert (=> d!152217 (= c!131133 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!623365 () (_ BitVec 64))

(assert (=> d!152217 (= lt!623365 (select (arr!46612 a!2901) lt!623204))))

(assert (=> d!152217 (validMask!0 mask!2840)))

(assert (=> d!152217 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!623204 (select (arr!46612 a!2901) j!112) a!2901 mask!2840) lt!623366)))

(declare-fun b!1414104 () Bool)

(declare-fun e!800334 () SeekEntryResult!10945)

(assert (=> b!1414104 (= e!800334 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!623204 #b00000000000000000000000000000000 mask!2840) (select (arr!46612 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1414105 () Bool)

(assert (=> b!1414105 (= e!800337 (Intermediate!10945 true lt!623204 #b00000000000000000000000000000000))))

(declare-fun b!1414106 () Bool)

(assert (=> b!1414106 (= e!800334 (Intermediate!10945 false lt!623204 #b00000000000000000000000000000000))))

(declare-fun b!1414107 () Bool)

(assert (=> b!1414107 (and (bvsge (index!46164 lt!623366) #b00000000000000000000000000000000) (bvslt (index!46164 lt!623366) (size!47163 a!2901)))))

(declare-fun res!950795 () Bool)

(assert (=> b!1414107 (= res!950795 (= (select (arr!46612 a!2901) (index!46164 lt!623366)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1414107 (=> res!950795 e!800335)))

(declare-fun b!1414108 () Bool)

(assert (=> b!1414108 (and (bvsge (index!46164 lt!623366) #b00000000000000000000000000000000) (bvslt (index!46164 lt!623366) (size!47163 a!2901)))))

(declare-fun res!950797 () Bool)

(assert (=> b!1414108 (= res!950797 (= (select (arr!46612 a!2901) (index!46164 lt!623366)) (select (arr!46612 a!2901) j!112)))))

(assert (=> b!1414108 (=> res!950797 e!800335)))

(assert (=> b!1414108 (= e!800336 e!800335)))

(declare-fun b!1414109 () Bool)

(assert (=> b!1414109 (= e!800337 e!800334)))

(declare-fun c!131131 () Bool)

(assert (=> b!1414109 (= c!131131 (or (= lt!623365 (select (arr!46612 a!2901) j!112)) (= (bvadd lt!623365 lt!623365) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!152217 c!131133) b!1414105))

(assert (= (and d!152217 (not c!131133)) b!1414109))

(assert (= (and b!1414109 c!131131) b!1414106))

(assert (= (and b!1414109 (not c!131131)) b!1414104))

(assert (= (and d!152217 c!131132) b!1414102))

(assert (= (and d!152217 (not c!131132)) b!1414103))

(assert (= (and b!1414103 res!950796) b!1414108))

(assert (= (and b!1414108 (not res!950797)) b!1414107))

(assert (= (and b!1414107 (not res!950795)) b!1414101))

(declare-fun m!1304473 () Bool)

(assert (=> b!1414108 m!1304473))

(declare-fun m!1304475 () Bool)

(assert (=> d!152217 m!1304475))

(assert (=> d!152217 m!1304207))

(declare-fun m!1304477 () Bool)

(assert (=> b!1414104 m!1304477))

(assert (=> b!1414104 m!1304477))

(assert (=> b!1414104 m!1304223))

(declare-fun m!1304479 () Bool)

(assert (=> b!1414104 m!1304479))

(assert (=> b!1414107 m!1304473))

(assert (=> b!1414101 m!1304473))

(assert (=> b!1413789 d!152217))

(declare-fun d!152219 () Bool)

(declare-fun lt!623368 () (_ BitVec 32))

(declare-fun lt!623367 () (_ BitVec 32))

(assert (=> d!152219 (= lt!623368 (bvmul (bvxor lt!623367 (bvlshr lt!623367 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152219 (= lt!623367 ((_ extract 31 0) (bvand (bvxor (select (arr!46612 a!2901) j!112) (bvlshr (select (arr!46612 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152219 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!950743 (let ((h!34588 ((_ extract 31 0) (bvand (bvxor (select (arr!46612 a!2901) j!112) (bvlshr (select (arr!46612 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127765 (bvmul (bvxor h!34588 (bvlshr h!34588 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127765 (bvlshr x!127765 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!950743 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!950743 #b00000000000000000000000000000000))))))

(assert (=> d!152219 (= (toIndex!0 (select (arr!46612 a!2901) j!112) mask!2840) (bvand (bvxor lt!623368 (bvlshr lt!623368 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1413789 d!152219))

(declare-fun b!1414110 () Bool)

(declare-fun e!800339 () SeekEntryResult!10945)

(assert (=> b!1414110 (= e!800339 Undefined!10945)))

(declare-fun d!152221 () Bool)

(declare-fun lt!623371 () SeekEntryResult!10945)

(assert (=> d!152221 (and (or (is-Undefined!10945 lt!623371) (not (is-Found!10945 lt!623371)) (and (bvsge (index!46163 lt!623371) #b00000000000000000000000000000000) (bvslt (index!46163 lt!623371) (size!47163 lt!623207)))) (or (is-Undefined!10945 lt!623371) (is-Found!10945 lt!623371) (not (is-MissingZero!10945 lt!623371)) (and (bvsge (index!46162 lt!623371) #b00000000000000000000000000000000) (bvslt (index!46162 lt!623371) (size!47163 lt!623207)))) (or (is-Undefined!10945 lt!623371) (is-Found!10945 lt!623371) (is-MissingZero!10945 lt!623371) (not (is-MissingVacant!10945 lt!623371)) (and (bvsge (index!46165 lt!623371) #b00000000000000000000000000000000) (bvslt (index!46165 lt!623371) (size!47163 lt!623207)))) (or (is-Undefined!10945 lt!623371) (ite (is-Found!10945 lt!623371) (= (select (arr!46612 lt!623207) (index!46163 lt!623371)) lt!623206) (ite (is-MissingZero!10945 lt!623371) (= (select (arr!46612 lt!623207) (index!46162 lt!623371)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10945 lt!623371) (= (select (arr!46612 lt!623207) (index!46165 lt!623371)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!152221 (= lt!623371 e!800339)))

(declare-fun c!131134 () Bool)

(declare-fun lt!623369 () SeekEntryResult!10945)

(assert (=> d!152221 (= c!131134 (and (is-Intermediate!10945 lt!623369) (undefined!11757 lt!623369)))))

(assert (=> d!152221 (= lt!623369 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!623206 mask!2840) lt!623206 lt!623207 mask!2840))))

(assert (=> d!152221 (validMask!0 mask!2840)))

(assert (=> d!152221 (= (seekEntryOrOpen!0 lt!623206 lt!623207 mask!2840) lt!623371)))

(declare-fun b!1414111 () Bool)

(declare-fun e!800341 () SeekEntryResult!10945)

(assert (=> b!1414111 (= e!800341 (Found!10945 (index!46164 lt!623369)))))

(declare-fun b!1414112 () Bool)

(declare-fun c!131135 () Bool)

(declare-fun lt!623370 () (_ BitVec 64))

(assert (=> b!1414112 (= c!131135 (= lt!623370 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!800340 () SeekEntryResult!10945)

(assert (=> b!1414112 (= e!800341 e!800340)))

(declare-fun b!1414113 () Bool)

(assert (=> b!1414113 (= e!800340 (seekKeyOrZeroReturnVacant!0 (x!127759 lt!623369) (index!46164 lt!623369) (index!46164 lt!623369) lt!623206 lt!623207 mask!2840))))

(declare-fun b!1414114 () Bool)

(assert (=> b!1414114 (= e!800340 (MissingZero!10945 (index!46164 lt!623369)))))

(declare-fun b!1414115 () Bool)

(assert (=> b!1414115 (= e!800339 e!800341)))

(assert (=> b!1414115 (= lt!623370 (select (arr!46612 lt!623207) (index!46164 lt!623369)))))

(declare-fun c!131136 () Bool)

(assert (=> b!1414115 (= c!131136 (= lt!623370 lt!623206))))

(assert (= (and d!152221 c!131134) b!1414110))

(assert (= (and d!152221 (not c!131134)) b!1414115))

(assert (= (and b!1414115 c!131136) b!1414111))

(assert (= (and b!1414115 (not c!131136)) b!1414112))

(assert (= (and b!1414112 c!131135) b!1414114))

(assert (= (and b!1414112 (not c!131135)) b!1414113))

(declare-fun m!1304481 () Bool)

(assert (=> d!152221 m!1304481))

(assert (=> d!152221 m!1304239))

(assert (=> d!152221 m!1304207))

(assert (=> d!152221 m!1304239))

(assert (=> d!152221 m!1304241))

(declare-fun m!1304483 () Bool)

(assert (=> d!152221 m!1304483))

(declare-fun m!1304485 () Bool)

(assert (=> d!152221 m!1304485))

(declare-fun m!1304487 () Bool)

(assert (=> b!1414113 m!1304487))

(declare-fun m!1304489 () Bool)

(assert (=> b!1414115 m!1304489))

(assert (=> b!1413796 d!152221))

(declare-fun e!800360 () SeekEntryResult!10945)

(declare-fun b!1414147 () Bool)

(assert (=> b!1414147 (= e!800360 (seekKeyOrZeroReturnVacant!0 (bvadd (x!127759 lt!623203) #b00000000000000000000000000000001) (nextIndex!0 (index!46164 lt!623203) (x!127759 lt!623203) mask!2840) (index!46164 lt!623203) (select (arr!46612 a!2901) j!112) lt!623207 mask!2840))))

(declare-fun b!1414149 () Bool)

(assert (=> b!1414149 (= e!800360 (MissingVacant!10945 (index!46164 lt!623203)))))

(declare-fun b!1414150 () Bool)

(declare-fun e!800359 () SeekEntryResult!10945)

(declare-fun e!800361 () SeekEntryResult!10945)

(assert (=> b!1414150 (= e!800359 e!800361)))

(declare-fun lt!623391 () (_ BitVec 64))

(declare-fun c!131152 () Bool)

(assert (=> b!1414150 (= c!131152 (= lt!623391 (select (arr!46612 a!2901) j!112)))))

(declare-fun b!1414151 () Bool)

(assert (=> b!1414151 (= e!800359 Undefined!10945)))

(declare-fun b!1414152 () Bool)

(assert (=> b!1414152 (= e!800361 (Found!10945 (index!46164 lt!623203)))))

(declare-fun b!1414148 () Bool)

(declare-fun c!131151 () Bool)

(assert (=> b!1414148 (= c!131151 (= lt!623391 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1414148 (= e!800361 e!800360)))

(declare-fun lt!623390 () SeekEntryResult!10945)

(declare-fun d!152223 () Bool)

(assert (=> d!152223 (and (or (is-Undefined!10945 lt!623390) (not (is-Found!10945 lt!623390)) (and (bvsge (index!46163 lt!623390) #b00000000000000000000000000000000) (bvslt (index!46163 lt!623390) (size!47163 lt!623207)))) (or (is-Undefined!10945 lt!623390) (is-Found!10945 lt!623390) (not (is-MissingVacant!10945 lt!623390)) (not (= (index!46165 lt!623390) (index!46164 lt!623203))) (and (bvsge (index!46165 lt!623390) #b00000000000000000000000000000000) (bvslt (index!46165 lt!623390) (size!47163 lt!623207)))) (or (is-Undefined!10945 lt!623390) (ite (is-Found!10945 lt!623390) (= (select (arr!46612 lt!623207) (index!46163 lt!623390)) (select (arr!46612 a!2901) j!112)) (and (is-MissingVacant!10945 lt!623390) (= (index!46165 lt!623390) (index!46164 lt!623203)) (= (select (arr!46612 lt!623207) (index!46165 lt!623390)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!152223 (= lt!623390 e!800359)))

(declare-fun c!131150 () Bool)

(assert (=> d!152223 (= c!131150 (bvsge (x!127759 lt!623203) #b01111111111111111111111111111110))))

(assert (=> d!152223 (= lt!623391 (select (arr!46612 lt!623207) (index!46164 lt!623203)))))

(assert (=> d!152223 (validMask!0 mask!2840)))

(assert (=> d!152223 (= (seekKeyOrZeroReturnVacant!0 (x!127759 lt!623203) (index!46164 lt!623203) (index!46164 lt!623203) (select (arr!46612 a!2901) j!112) lt!623207 mask!2840) lt!623390)))

(assert (= (and d!152223 c!131150) b!1414151))

(assert (= (and d!152223 (not c!131150)) b!1414150))

(assert (= (and b!1414150 c!131152) b!1414152))

(assert (= (and b!1414150 (not c!131152)) b!1414148))

(assert (= (and b!1414148 c!131151) b!1414149))

(assert (= (and b!1414148 (not c!131151)) b!1414147))

(declare-fun m!1304517 () Bool)

(assert (=> b!1414147 m!1304517))

(assert (=> b!1414147 m!1304517))

(assert (=> b!1414147 m!1304223))

(declare-fun m!1304519 () Bool)

(assert (=> b!1414147 m!1304519))

(declare-fun m!1304521 () Bool)

(assert (=> d!152223 m!1304521))

(declare-fun m!1304523 () Bool)

(assert (=> d!152223 m!1304523))

(declare-fun m!1304525 () Bool)

(assert (=> d!152223 m!1304525))

(assert (=> d!152223 m!1304207))

(assert (=> b!1413796 d!152223))

(declare-fun b!1414153 () Bool)

(declare-fun e!800364 () Bool)

(declare-fun e!800362 () Bool)

(assert (=> b!1414153 (= e!800364 e!800362)))

(declare-fun lt!623393 () (_ BitVec 64))

(assert (=> b!1414153 (= lt!623393 (select (arr!46612 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!623394 () Unit!47814)

(assert (=> b!1414153 (= lt!623394 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!623393 #b00000000000000000000000000000000))))

(assert (=> b!1414153 (arrayContainsKey!0 a!2901 lt!623393 #b00000000000000000000000000000000)))

(declare-fun lt!623392 () Unit!47814)

(assert (=> b!1414153 (= lt!623392 lt!623394)))

(declare-fun res!950805 () Bool)

(assert (=> b!1414153 (= res!950805 (= (seekEntryOrOpen!0 (select (arr!46612 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10945 #b00000000000000000000000000000000)))))

(assert (=> b!1414153 (=> (not res!950805) (not e!800362))))

(declare-fun b!1414154 () Bool)

(declare-fun call!67137 () Bool)

(assert (=> b!1414154 (= e!800364 call!67137)))

(declare-fun bm!67134 () Bool)

(assert (=> bm!67134 (= call!67137 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun d!152235 () Bool)

(declare-fun res!950804 () Bool)

(declare-fun e!800363 () Bool)

(assert (=> d!152235 (=> res!950804 e!800363)))

(assert (=> d!152235 (= res!950804 (bvsge #b00000000000000000000000000000000 (size!47163 a!2901)))))

(assert (=> d!152235 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!800363)))

(declare-fun b!1414155 () Bool)

(assert (=> b!1414155 (= e!800363 e!800364)))

(declare-fun c!131153 () Bool)

(assert (=> b!1414155 (= c!131153 (validKeyInArray!0 (select (arr!46612 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1414156 () Bool)

(assert (=> b!1414156 (= e!800362 call!67137)))

(assert (= (and d!152235 (not res!950804)) b!1414155))

(assert (= (and b!1414155 c!131153) b!1414153))

(assert (= (and b!1414155 (not c!131153)) b!1414154))

(assert (= (and b!1414153 res!950805) b!1414156))

(assert (= (or b!1414156 b!1414154) bm!67134))

(assert (=> b!1414153 m!1304385))

(declare-fun m!1304527 () Bool)

(assert (=> b!1414153 m!1304527))

(declare-fun m!1304529 () Bool)

(assert (=> b!1414153 m!1304529))

(assert (=> b!1414153 m!1304385))

(declare-fun m!1304531 () Bool)

(assert (=> b!1414153 m!1304531))

(declare-fun m!1304533 () Bool)

(assert (=> bm!67134 m!1304533))

(assert (=> b!1414155 m!1304385))

(assert (=> b!1414155 m!1304385))

(assert (=> b!1414155 m!1304389))

(assert (=> b!1413791 d!152235))

(declare-fun d!152237 () Bool)

(assert (=> d!152237 (= (validKeyInArray!0 (select (arr!46612 a!2901) i!1037)) (and (not (= (select (arr!46612 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46612 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1413792 d!152237))

(declare-fun d!152239 () Bool)

(assert (=> d!152239 (and (not (undefined!11757 lt!623203)) (= (index!46164 lt!623203) i!1037) (bvslt (x!127759 lt!623203) (x!127759 lt!623208)))))

(declare-fun lt!623401 () Unit!47814)

(declare-fun choose!62 (array!96561 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47814)

(assert (=> d!152239 (= lt!623401 (choose!62 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623204 (x!127759 lt!623208) (index!46164 lt!623208) (x!127759 lt!623203) (index!46164 lt!623203) (undefined!11757 lt!623203) mask!2840))))

(assert (=> d!152239 (validMask!0 mask!2840)))

(assert (=> d!152239 (= (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!623204 (x!127759 lt!623208) (index!46164 lt!623208) (x!127759 lt!623203) (index!46164 lt!623203) (undefined!11757 lt!623203) mask!2840) lt!623401)))

(declare-fun bs!41224 () Bool)

(assert (= bs!41224 d!152239))

(declare-fun m!1304535 () Bool)

(assert (=> bs!41224 m!1304535))

(assert (=> bs!41224 m!1304207))

(assert (=> b!1413787 d!152239))

(push 1)

