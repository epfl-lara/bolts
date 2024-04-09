; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50016 () Bool)

(assert start!50016)

(declare-fun b!548026 () Bool)

(declare-fun res!341586 () Bool)

(declare-fun e!316621 () Bool)

(assert (=> b!548026 (=> (not res!341586) (not e!316621))))

(declare-datatypes ((array!34552 0))(
  ( (array!34553 (arr!16592 (Array (_ BitVec 32) (_ BitVec 64))) (size!16956 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34552)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34552 (_ BitVec 32)) Bool)

(assert (=> b!548026 (= res!341586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!548027 () Bool)

(declare-fun res!341584 () Bool)

(declare-fun e!316620 () Bool)

(assert (=> b!548027 (=> (not res!341584) (not e!316620))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!548027 (= res!341584 (and (= (size!16956 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16956 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16956 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!548028 () Bool)

(declare-fun res!341591 () Bool)

(assert (=> b!548028 (=> (not res!341591) (not e!316621))))

(declare-datatypes ((List!10725 0))(
  ( (Nil!10722) (Cons!10721 (h!11688 (_ BitVec 64)) (t!16961 List!10725)) )
))
(declare-fun arrayNoDuplicates!0 (array!34552 (_ BitVec 32) List!10725) Bool)

(assert (=> b!548028 (= res!341591 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10722))))

(declare-fun b!548029 () Bool)

(declare-fun res!341589 () Bool)

(assert (=> b!548029 (=> (not res!341589) (not e!316620))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!548029 (= res!341589 (validKeyInArray!0 k!1914))))

(declare-fun b!548030 () Bool)

(declare-fun res!341585 () Bool)

(assert (=> b!548030 (=> (not res!341585) (not e!316620))))

(assert (=> b!548030 (= res!341585 (validKeyInArray!0 (select (arr!16592 a!3118) j!142)))))

(declare-fun b!548031 () Bool)

(assert (=> b!548031 (= e!316620 e!316621)))

(declare-fun res!341590 () Bool)

(assert (=> b!548031 (=> (not res!341590) (not e!316621))))

(declare-datatypes ((SeekEntryResult!5048 0))(
  ( (MissingZero!5048 (index!22419 (_ BitVec 32))) (Found!5048 (index!22420 (_ BitVec 32))) (Intermediate!5048 (undefined!5860 Bool) (index!22421 (_ BitVec 32)) (x!51383 (_ BitVec 32))) (Undefined!5048) (MissingVacant!5048 (index!22422 (_ BitVec 32))) )
))
(declare-fun lt!249715 () SeekEntryResult!5048)

(assert (=> b!548031 (= res!341590 (or (= lt!249715 (MissingZero!5048 i!1132)) (= lt!249715 (MissingVacant!5048 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34552 (_ BitVec 32)) SeekEntryResult!5048)

(assert (=> b!548031 (= lt!249715 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!548032 () Bool)

(declare-fun lt!249716 () (_ BitVec 32))

(assert (=> b!548032 (= e!316621 (and (bvsge mask!3119 #b00000000000000000000000000000000) (or (bvslt lt!249716 #b00000000000000000000000000000000) (bvsge lt!249716 (bvadd #b00000000000000000000000000000001 mask!3119)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!548032 (= lt!249716 (toIndex!0 (select (arr!16592 a!3118) j!142) mask!3119))))

(declare-fun res!341587 () Bool)

(assert (=> start!50016 (=> (not res!341587) (not e!316620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50016 (= res!341587 (validMask!0 mask!3119))))

(assert (=> start!50016 e!316620))

(assert (=> start!50016 true))

(declare-fun array_inv!12366 (array!34552) Bool)

(assert (=> start!50016 (array_inv!12366 a!3118)))

(declare-fun b!548033 () Bool)

(declare-fun res!341588 () Bool)

(assert (=> b!548033 (=> (not res!341588) (not e!316620))))

(declare-fun arrayContainsKey!0 (array!34552 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!548033 (= res!341588 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50016 res!341587) b!548027))

(assert (= (and b!548027 res!341584) b!548030))

(assert (= (and b!548030 res!341585) b!548029))

(assert (= (and b!548029 res!341589) b!548033))

(assert (= (and b!548033 res!341588) b!548031))

(assert (= (and b!548031 res!341590) b!548026))

(assert (= (and b!548026 res!341586) b!548028))

(assert (= (and b!548028 res!341591) b!548032))

(declare-fun m!525149 () Bool)

(assert (=> b!548029 m!525149))

(declare-fun m!525151 () Bool)

(assert (=> b!548028 m!525151))

(declare-fun m!525153 () Bool)

(assert (=> b!548033 m!525153))

(declare-fun m!525155 () Bool)

(assert (=> b!548032 m!525155))

(assert (=> b!548032 m!525155))

(declare-fun m!525157 () Bool)

(assert (=> b!548032 m!525157))

(declare-fun m!525159 () Bool)

(assert (=> b!548026 m!525159))

(declare-fun m!525161 () Bool)

(assert (=> start!50016 m!525161))

(declare-fun m!525163 () Bool)

(assert (=> start!50016 m!525163))

(declare-fun m!525165 () Bool)

(assert (=> b!548031 m!525165))

(assert (=> b!548030 m!525155))

(assert (=> b!548030 m!525155))

(declare-fun m!525167 () Bool)

(assert (=> b!548030 m!525167))

(push 1)

(assert (not b!548030))

(assert (not b!548028))

(assert (not b!548031))

(assert (not start!50016))

(assert (not b!548026))

(assert (not b!548033))

(assert (not b!548032))

(assert (not b!548029))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!548094 () Bool)

(declare-fun c!63575 () Bool)

(declare-fun lt!249741 () (_ BitVec 64))

(assert (=> b!548094 (= c!63575 (= lt!249741 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!316658 () SeekEntryResult!5048)

(declare-fun e!316659 () SeekEntryResult!5048)

(assert (=> b!548094 (= e!316658 e!316659)))

(declare-fun b!548095 () Bool)

(declare-fun e!316660 () SeekEntryResult!5048)

(assert (=> b!548095 (= e!316660 e!316658)))

(declare-fun lt!249742 () SeekEntryResult!5048)

(assert (=> b!548095 (= lt!249741 (select (arr!16592 a!3118) (index!22421 lt!249742)))))

(declare-fun c!63573 () Bool)

(assert (=> b!548095 (= c!63573 (= lt!249741 k!1914))))

(declare-fun d!82505 () Bool)

(declare-fun lt!249743 () SeekEntryResult!5048)

(assert (=> d!82505 (and (or (is-Undefined!5048 lt!249743) (not (is-Found!5048 lt!249743)) (and (bvsge (index!22420 lt!249743) #b00000000000000000000000000000000) (bvslt (index!22420 lt!249743) (size!16956 a!3118)))) (or (is-Undefined!5048 lt!249743) (is-Found!5048 lt!249743) (not (is-MissingZero!5048 lt!249743)) (and (bvsge (index!22419 lt!249743) #b00000000000000000000000000000000) (bvslt (index!22419 lt!249743) (size!16956 a!3118)))) (or (is-Undefined!5048 lt!249743) (is-Found!5048 lt!249743) (is-MissingZero!5048 lt!249743) (not (is-MissingVacant!5048 lt!249743)) (and (bvsge (index!22422 lt!249743) #b00000000000000000000000000000000) (bvslt (index!22422 lt!249743) (size!16956 a!3118)))) (or (is-Undefined!5048 lt!249743) (ite (is-Found!5048 lt!249743) (= (select (arr!16592 a!3118) (index!22420 lt!249743)) k!1914) (ite (is-MissingZero!5048 lt!249743) (= (select (arr!16592 a!3118) (index!22419 lt!249743)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5048 lt!249743) (= (select (arr!16592 a!3118) (index!22422 lt!249743)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82505 (= lt!249743 e!316660)))

(declare-fun c!63574 () Bool)

(assert (=> d!82505 (= c!63574 (and (is-Intermediate!5048 lt!249742) (undefined!5860 lt!249742)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34552 (_ BitVec 32)) SeekEntryResult!5048)

(assert (=> d!82505 (= lt!249742 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!82505 (validMask!0 mask!3119)))

(assert (=> d!82505 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!249743)))

(declare-fun b!548096 () Bool)

(assert (=> b!548096 (= e!316658 (Found!5048 (index!22421 lt!249742)))))

(declare-fun b!548097 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34552 (_ BitVec 32)) SeekEntryResult!5048)

(assert (=> b!548097 (= e!316659 (seekKeyOrZeroReturnVacant!0 (x!51383 lt!249742) (index!22421 lt!249742) (index!22421 lt!249742) k!1914 a!3118 mask!3119))))

(declare-fun b!548098 () Bool)

(assert (=> b!548098 (= e!316659 (MissingZero!5048 (index!22421 lt!249742)))))

(declare-fun b!548099 () Bool)

(assert (=> b!548099 (= e!316660 Undefined!5048)))

(assert (= (and d!82505 c!63574) b!548099))

(assert (= (and d!82505 (not c!63574)) b!548095))

(assert (= (and b!548095 c!63573) b!548096))

(assert (= (and b!548095 (not c!63573)) b!548094))

(assert (= (and b!548094 c!63575) b!548098))

(assert (= (and b!548094 (not c!63575)) b!548097))

(declare-fun m!525205 () Bool)

(assert (=> b!548095 m!525205))

(declare-fun m!525207 () Bool)

(assert (=> d!82505 m!525207))

(assert (=> d!82505 m!525207))

(declare-fun m!525209 () Bool)

(assert (=> d!82505 m!525209))

(declare-fun m!525211 () Bool)

(assert (=> d!82505 m!525211))

(declare-fun m!525213 () Bool)

(assert (=> d!82505 m!525213))

(assert (=> d!82505 m!525161))

(declare-fun m!525215 () Bool)

(assert (=> d!82505 m!525215))

(declare-fun m!525217 () Bool)

(assert (=> b!548097 m!525217))

(assert (=> b!548031 d!82505))

(declare-fun d!82517 () Bool)

(assert (=> d!82517 (= (validKeyInArray!0 (select (arr!16592 a!3118) j!142)) (and (not (= (select (arr!16592 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16592 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!548030 d!82517))

(declare-fun d!82519 () Bool)

(declare-fun lt!249758 () (_ BitVec 32))

(declare-fun lt!249757 () (_ BitVec 32))

(assert (=> d!82519 (= lt!249758 (bvmul (bvxor lt!249757 (bvlshr lt!249757 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82519 (= lt!249757 ((_ extract 31 0) (bvand (bvxor (select (arr!16592 a!3118) j!142) (bvlshr (select (arr!16592 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82519 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!341604 (let ((h!11689 ((_ extract 31 0) (bvand (bvxor (select (arr!16592 a!3118) j!142) (bvlshr (select (arr!16592 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51384 (bvmul (bvxor h!11689 (bvlshr h!11689 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51384 (bvlshr x!51384 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!341604 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!341604 #b00000000000000000000000000000000))))))

(assert (=> d!82519 (= (toIndex!0 (select (arr!16592 a!3118) j!142) mask!3119) (bvand (bvxor lt!249758 (bvlshr lt!249758 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!548032 d!82519))

(declare-fun b!548143 () Bool)

(declare-fun e!316696 () Bool)

(declare-fun e!316695 () Bool)

(assert (=> b!548143 (= e!316696 e!316695)))

(declare-fun c!63586 () Bool)

(assert (=> b!548143 (= c!63586 (validKeyInArray!0 (select (arr!16592 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32197 () Bool)

(declare-fun call!32200 () Bool)

(assert (=> bm!32197 (= call!32200 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!548144 () Bool)

(declare-fun e!316694 () Bool)

(assert (=> b!548144 (= e!316694 call!32200)))

(declare-fun b!548145 () Bool)

(assert (=> b!548145 (= e!316695 e!316694)))

(declare-fun lt!249771 () (_ BitVec 64))

(assert (=> b!548145 (= lt!249771 (select (arr!16592 a!3118) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16948 0))(
  ( (Unit!16949) )
))
(declare-fun lt!249773 () Unit!16948)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34552 (_ BitVec 64) (_ BitVec 32)) Unit!16948)

(assert (=> b!548145 (= lt!249773 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!249771 #b00000000000000000000000000000000))))

(assert (=> b!548145 (arrayContainsKey!0 a!3118 lt!249771 #b00000000000000000000000000000000)))

(declare-fun lt!249772 () Unit!16948)

(assert (=> b!548145 (= lt!249772 lt!249773)))

(declare-fun res!341628 () Bool)

(assert (=> b!548145 (= res!341628 (= (seekEntryOrOpen!0 (select (arr!16592 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5048 #b00000000000000000000000000000000)))))

(assert (=> b!548145 (=> (not res!341628) (not e!316694))))

(declare-fun d!82521 () Bool)

(declare-fun res!341629 () Bool)

(assert (=> d!82521 (=> res!341629 e!316696)))

(assert (=> d!82521 (= res!341629 (bvsge #b00000000000000000000000000000000 (size!16956 a!3118)))))

(assert (=> d!82521 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!316696)))

(declare-fun b!548146 () Bool)

(assert (=> b!548146 (= e!316695 call!32200)))

(assert (= (and d!82521 (not res!341629)) b!548143))

(assert (= (and b!548143 c!63586) b!548145))

(assert (= (and b!548143 (not c!63586)) b!548146))

(assert (= (and b!548145 res!341628) b!548144))

(assert (= (or b!548144 b!548146) bm!32197))

(declare-fun m!525235 () Bool)

(assert (=> b!548143 m!525235))

(assert (=> b!548143 m!525235))

(declare-fun m!525237 () Bool)

(assert (=> b!548143 m!525237))

(declare-fun m!525239 () Bool)

(assert (=> bm!32197 m!525239))

(assert (=> b!548145 m!525235))

(declare-fun m!525241 () Bool)

(assert (=> b!548145 m!525241))

(declare-fun m!525243 () Bool)

(assert (=> b!548145 m!525243))

(assert (=> b!548145 m!525235))

(declare-fun m!525245 () Bool)

(assert (=> b!548145 m!525245))

(assert (=> b!548026 d!82521))

(declare-fun bm!32201 () Bool)

(declare-fun call!32204 () Bool)

(declare-fun c!63590 () Bool)

(assert (=> bm!32201 (= call!32204 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63590 (Cons!10721 (select (arr!16592 a!3118) #b00000000000000000000000000000000) Nil!10722) Nil!10722)))))

(declare-fun b!548161 () Bool)

(declare-fun e!316708 () Bool)

(declare-fun contains!2830 (List!10725 (_ BitVec 64)) Bool)

(assert (=> b!548161 (= e!316708 (contains!2830 Nil!10722 (select (arr!16592 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!548162 () Bool)

(declare-fun e!316710 () Bool)

(assert (=> b!548162 (= e!316710 call!32204)))

(declare-fun d!82527 () Bool)

(declare-fun res!341640 () Bool)

(declare-fun e!316709 () Bool)

(assert (=> d!82527 (=> res!341640 e!316709)))

(assert (=> d!82527 (= res!341640 (bvsge #b00000000000000000000000000000000 (size!16956 a!3118)))))

(assert (=> d!82527 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10722) e!316709)))

(declare-fun b!548163 () Bool)

(assert (=> b!548163 (= e!316710 call!32204)))

(declare-fun b!548164 () Bool)

(declare-fun e!316711 () Bool)

(assert (=> b!548164 (= e!316711 e!316710)))

(assert (=> b!548164 (= c!63590 (validKeyInArray!0 (select (arr!16592 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!548165 () Bool)

(assert (=> b!548165 (= e!316709 e!316711)))

(declare-fun res!341641 () Bool)

(assert (=> b!548165 (=> (not res!341641) (not e!316711))))

(assert (=> b!548165 (= res!341641 (not e!316708))))

(declare-fun res!341639 () Bool)

(assert (=> b!548165 (=> (not res!341639) (not e!316708))))

(assert (=> b!548165 (= res!341639 (validKeyInArray!0 (select (arr!16592 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!82527 (not res!341640)) b!548165))

(assert (= (and b!548165 res!341639) b!548161))

(assert (= (and b!548165 res!341641) b!548164))

(assert (= (and b!548164 c!63590) b!548163))

(assert (= (and b!548164 (not c!63590)) b!548162))

(assert (= (or b!548163 b!548162) bm!32201))

(assert (=> bm!32201 m!525235))

(declare-fun m!525255 () Bool)

(assert (=> bm!32201 m!525255))

(assert (=> b!548161 m!525235))

(assert (=> b!548161 m!525235))

(declare-fun m!525257 () Bool)

(assert (=> b!548161 m!525257))

(assert (=> b!548164 m!525235))

(assert (=> b!548164 m!525235))

(assert (=> b!548164 m!525237))

(assert (=> b!548165 m!525235))

(assert (=> b!548165 m!525235))

(assert (=> b!548165 m!525237))

(assert (=> b!548028 d!82527))

(declare-fun d!82539 () Bool)

(declare-fun res!341646 () Bool)

(declare-fun e!316716 () Bool)

(assert (=> d!82539 (=> res!341646 e!316716)))

(assert (=> d!82539 (= res!341646 (= (select (arr!16592 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!82539 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!316716)))

(declare-fun b!548170 () Bool)

(declare-fun e!316717 () Bool)

(assert (=> b!548170 (= e!316716 e!316717)))

(declare-fun res!341647 () Bool)

(assert (=> b!548170 (=> (not res!341647) (not e!316717))))

(assert (=> b!548170 (= res!341647 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16956 a!3118)))))

(declare-fun b!548171 () Bool)

(assert (=> b!548171 (= e!316717 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82539 (not res!341646)) b!548170))

(assert (= (and b!548170 res!341647) b!548171))

(assert (=> d!82539 m!525235))

(declare-fun m!525259 () Bool)

(assert (=> b!548171 m!525259))

(assert (=> b!548033 d!82539))

(declare-fun d!82541 () Bool)

(assert (=> d!82541 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50016 d!82541))

(declare-fun d!82549 () Bool)

(assert (=> d!82549 (= (array_inv!12366 a!3118) (bvsge (size!16956 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50016 d!82549))

(declare-fun d!82551 () Bool)

(assert (=> d!82551 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!548029 d!82551))

(push 1)

(assert (not bm!32201))

(assert (not b!548164))

(assert (not b!548097))

(assert (not bm!32197))

(assert (not b!548143))

(assert (not b!548145))

(assert (not b!548165))

(assert (not b!548171))

(assert (not b!548161))

(assert (not d!82505))

(check-sat)

(pop 1)

(push 1)

(check-sat)

