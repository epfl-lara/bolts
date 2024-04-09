; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49540 () Bool)

(assert start!49540)

(declare-fun b!544877 () Bool)

(declare-fun e!314964 () Bool)

(declare-fun e!314965 () Bool)

(assert (=> b!544877 (= e!314964 e!314965)))

(declare-fun res!339136 () Bool)

(assert (=> b!544877 (=> (not res!339136) (not e!314965))))

(declare-fun lt!248652 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((array!34366 0))(
  ( (array!34367 (arr!16509 (Array (_ BitVec 32) (_ BitVec 64))) (size!16873 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34366)

(assert (=> b!544877 (= res!339136 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!248652 #b00000000000000000000000000000000) (bvslt lt!248652 (size!16873 a!3154))))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544877 (= lt!248652 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!544878 () Bool)

(declare-fun res!339142 () Bool)

(declare-fun e!314961 () Bool)

(assert (=> b!544878 (=> (not res!339142) (not e!314961))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!544878 (= res!339142 (validKeyInArray!0 k!1998))))

(declare-fun b!544879 () Bool)

(declare-fun res!339140 () Bool)

(declare-fun e!314962 () Bool)

(assert (=> b!544879 (=> (not res!339140) (not e!314962))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34366 (_ BitVec 32)) Bool)

(assert (=> b!544879 (= res!339140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun b!544881 () Bool)

(declare-datatypes ((SeekEntryResult!4974 0))(
  ( (MissingZero!4974 (index!22120 (_ BitVec 32))) (Found!4974 (index!22121 (_ BitVec 32))) (Intermediate!4974 (undefined!5786 Bool) (index!22122 (_ BitVec 32)) (x!51072 (_ BitVec 32))) (Undefined!4974) (MissingVacant!4974 (index!22123 (_ BitVec 32))) )
))
(declare-fun lt!248651 () SeekEntryResult!4974)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34366 (_ BitVec 32)) SeekEntryResult!4974)

(assert (=> b!544881 (= e!314965 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248652 (select (arr!16509 a!3154) j!147) a!3154 mask!3216) lt!248651)))))

(declare-fun b!544882 () Bool)

(declare-fun res!339131 () Bool)

(assert (=> b!544882 (=> (not res!339131) (not e!314961))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!544882 (= res!339131 (and (= (size!16873 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16873 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16873 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!544883 () Bool)

(assert (=> b!544883 (= e!314962 e!314964)))

(declare-fun res!339139 () Bool)

(assert (=> b!544883 (=> (not res!339139) (not e!314964))))

(declare-fun lt!248654 () SeekEntryResult!4974)

(assert (=> b!544883 (= res!339139 (= lt!248654 lt!248651))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!544883 (= lt!248651 (Intermediate!4974 false resIndex!32 resX!32))))

(assert (=> b!544883 (= lt!248654 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16509 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544884 () Bool)

(declare-fun res!339141 () Bool)

(assert (=> b!544884 (=> (not res!339141) (not e!314961))))

(declare-fun arrayContainsKey!0 (array!34366 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!544884 (= res!339141 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!544885 () Bool)

(assert (=> b!544885 (= e!314961 e!314962)))

(declare-fun res!339132 () Bool)

(assert (=> b!544885 (=> (not res!339132) (not e!314962))))

(declare-fun lt!248653 () SeekEntryResult!4974)

(assert (=> b!544885 (= res!339132 (or (= lt!248653 (MissingZero!4974 i!1153)) (= lt!248653 (MissingVacant!4974 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34366 (_ BitVec 32)) SeekEntryResult!4974)

(assert (=> b!544885 (= lt!248653 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!544886 () Bool)

(declare-fun res!339143 () Bool)

(assert (=> b!544886 (=> (not res!339143) (not e!314961))))

(assert (=> b!544886 (= res!339143 (validKeyInArray!0 (select (arr!16509 a!3154) j!147)))))

(declare-fun b!544887 () Bool)

(declare-fun res!339135 () Bool)

(assert (=> b!544887 (=> (not res!339135) (not e!314964))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544887 (= res!339135 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16509 a!3154) j!147) mask!3216) (select (arr!16509 a!3154) j!147) a!3154 mask!3216) lt!248654))))

(declare-fun res!339138 () Bool)

(assert (=> start!49540 (=> (not res!339138) (not e!314961))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49540 (= res!339138 (validMask!0 mask!3216))))

(assert (=> start!49540 e!314961))

(assert (=> start!49540 true))

(declare-fun array_inv!12283 (array!34366) Bool)

(assert (=> start!49540 (array_inv!12283 a!3154)))

(declare-fun b!544880 () Bool)

(declare-fun res!339133 () Bool)

(assert (=> b!544880 (=> (not res!339133) (not e!314964))))

(assert (=> b!544880 (= res!339133 (and (not (= (select (arr!16509 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16509 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16509 a!3154) index!1177) (select (arr!16509 a!3154) j!147)))))))

(declare-fun b!544888 () Bool)

(declare-fun res!339134 () Bool)

(assert (=> b!544888 (=> (not res!339134) (not e!314962))))

(declare-datatypes ((List!10681 0))(
  ( (Nil!10678) (Cons!10677 (h!11638 (_ BitVec 64)) (t!16917 List!10681)) )
))
(declare-fun arrayNoDuplicates!0 (array!34366 (_ BitVec 32) List!10681) Bool)

(assert (=> b!544888 (= res!339134 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10678))))

(declare-fun b!544889 () Bool)

(declare-fun res!339137 () Bool)

(assert (=> b!544889 (=> (not res!339137) (not e!314962))))

(assert (=> b!544889 (= res!339137 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16873 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16873 a!3154)) (= (select (arr!16509 a!3154) resIndex!32) (select (arr!16509 a!3154) j!147))))))

(assert (= (and start!49540 res!339138) b!544882))

(assert (= (and b!544882 res!339131) b!544886))

(assert (= (and b!544886 res!339143) b!544878))

(assert (= (and b!544878 res!339142) b!544884))

(assert (= (and b!544884 res!339141) b!544885))

(assert (= (and b!544885 res!339132) b!544879))

(assert (= (and b!544879 res!339140) b!544888))

(assert (= (and b!544888 res!339134) b!544889))

(assert (= (and b!544889 res!339137) b!544883))

(assert (= (and b!544883 res!339139) b!544887))

(assert (= (and b!544887 res!339135) b!544880))

(assert (= (and b!544880 res!339133) b!544877))

(assert (= (and b!544877 res!339136) b!544881))

(declare-fun m!522625 () Bool)

(assert (=> start!49540 m!522625))

(declare-fun m!522627 () Bool)

(assert (=> start!49540 m!522627))

(declare-fun m!522629 () Bool)

(assert (=> b!544887 m!522629))

(assert (=> b!544887 m!522629))

(declare-fun m!522631 () Bool)

(assert (=> b!544887 m!522631))

(assert (=> b!544887 m!522631))

(assert (=> b!544887 m!522629))

(declare-fun m!522633 () Bool)

(assert (=> b!544887 m!522633))

(declare-fun m!522635 () Bool)

(assert (=> b!544889 m!522635))

(assert (=> b!544889 m!522629))

(declare-fun m!522637 () Bool)

(assert (=> b!544884 m!522637))

(assert (=> b!544881 m!522629))

(assert (=> b!544881 m!522629))

(declare-fun m!522639 () Bool)

(assert (=> b!544881 m!522639))

(declare-fun m!522641 () Bool)

(assert (=> b!544885 m!522641))

(declare-fun m!522643 () Bool)

(assert (=> b!544879 m!522643))

(assert (=> b!544886 m!522629))

(assert (=> b!544886 m!522629))

(declare-fun m!522645 () Bool)

(assert (=> b!544886 m!522645))

(assert (=> b!544883 m!522629))

(assert (=> b!544883 m!522629))

(declare-fun m!522647 () Bool)

(assert (=> b!544883 m!522647))

(declare-fun m!522649 () Bool)

(assert (=> b!544878 m!522649))

(declare-fun m!522651 () Bool)

(assert (=> b!544877 m!522651))

(declare-fun m!522653 () Bool)

(assert (=> b!544880 m!522653))

(assert (=> b!544880 m!522629))

(declare-fun m!522655 () Bool)

(assert (=> b!544888 m!522655))

(push 1)

(assert (not b!544884))

(assert (not b!544888))

(assert (not b!544878))

(assert (not b!544886))

(assert (not start!49540))

(assert (not b!544887))

(assert (not b!544879))

(assert (not b!544881))

(assert (not b!544885))

(assert (not b!544877))

(assert (not b!544883))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!545011 () Bool)

(declare-fun e!315028 () Bool)

(declare-fun e!315027 () Bool)

(assert (=> b!545011 (= e!315028 e!315027)))

(declare-fun res!339245 () Bool)

(assert (=> b!545011 (=> (not res!339245) (not e!315027))))

(declare-fun e!315025 () Bool)

(assert (=> b!545011 (= res!339245 (not e!315025))))

(declare-fun res!339244 () Bool)

(assert (=> b!545011 (=> (not res!339244) (not e!315025))))

(assert (=> b!545011 (= res!339244 (validKeyInArray!0 (select (arr!16509 a!3154) #b00000000000000000000000000000000)))))

(declare-fun d!82063 () Bool)

(declare-fun res!339243 () Bool)

(assert (=> d!82063 (=> res!339243 e!315028)))

(assert (=> d!82063 (= res!339243 (bvsge #b00000000000000000000000000000000 (size!16873 a!3154)))))

(assert (=> d!82063 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10678) e!315028)))

(declare-fun b!545012 () Bool)

(declare-fun e!315026 () Bool)

(declare-fun call!32111 () Bool)

(assert (=> b!545012 (= e!315026 call!32111)))

(declare-fun bm!32108 () Bool)

(declare-fun c!63209 () Bool)

(assert (=> bm!32108 (= call!32111 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63209 (Cons!10677 (select (arr!16509 a!3154) #b00000000000000000000000000000000) Nil!10678) Nil!10678)))))

(declare-fun b!545013 () Bool)

(assert (=> b!545013 (= e!315027 e!315026)))

(assert (=> b!545013 (= c!63209 (validKeyInArray!0 (select (arr!16509 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!545014 () Bool)

(declare-fun contains!2816 (List!10681 (_ BitVec 64)) Bool)

(assert (=> b!545014 (= e!315025 (contains!2816 Nil!10678 (select (arr!16509 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!545015 () Bool)

(assert (=> b!545015 (= e!315026 call!32111)))

(assert (= (and d!82063 (not res!339243)) b!545011))

(assert (= (and b!545011 res!339244) b!545014))

(assert (= (and b!545011 res!339245) b!545013))

(assert (= (and b!545013 c!63209) b!545015))

(assert (= (and b!545013 (not c!63209)) b!545012))

(assert (= (or b!545015 b!545012) bm!32108))

(declare-fun m!522733 () Bool)

(assert (=> b!545011 m!522733))

(assert (=> b!545011 m!522733))

(declare-fun m!522735 () Bool)

(assert (=> b!545011 m!522735))

(assert (=> bm!32108 m!522733))

(declare-fun m!522737 () Bool)

(assert (=> bm!32108 m!522737))

(assert (=> b!545013 m!522733))

(assert (=> b!545013 m!522733))

(assert (=> b!545013 m!522735))

(assert (=> b!545014 m!522733))

(assert (=> b!545014 m!522733))

(declare-fun m!522739 () Bool)

(assert (=> b!545014 m!522739))

(assert (=> b!544888 d!82063))

(declare-fun d!82067 () Bool)

(declare-fun lt!248699 () (_ BitVec 32))

(assert (=> d!82067 (and (bvsge lt!248699 #b00000000000000000000000000000000) (bvslt lt!248699 (bvadd mask!3216 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!82067 (= lt!248699 (choose!52 index!1177 x!1030 mask!3216))))

(assert (=> d!82067 (validMask!0 mask!3216)))

(assert (=> d!82067 (= (nextIndex!0 index!1177 x!1030 mask!3216) lt!248699)))

(declare-fun bs!17000 () Bool)

(assert (= bs!17000 d!82067))

(declare-fun m!522741 () Bool)

(assert (=> bs!17000 m!522741))

(assert (=> bs!17000 m!522625))

(assert (=> b!544877 d!82067))

(declare-fun b!545091 () Bool)

(declare-fun lt!248727 () SeekEntryResult!4974)

(assert (=> b!545091 (and (bvsge (index!22122 lt!248727) #b00000000000000000000000000000000) (bvslt (index!22122 lt!248727) (size!16873 a!3154)))))

(declare-fun res!339280 () Bool)

(assert (=> b!545091 (= res!339280 (= (select (arr!16509 a!3154) (index!22122 lt!248727)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!315080 () Bool)

(assert (=> b!545091 (=> res!339280 e!315080)))

(declare-fun b!545092 () Bool)

(declare-fun e!315083 () SeekEntryResult!4974)

(assert (=> b!545092 (= e!315083 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16509 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16509 a!3154) j!147) a!3154 mask!3216))))

(declare-fun d!82073 () Bool)

(declare-fun e!315082 () Bool)

(assert (=> d!82073 e!315082))

(declare-fun c!63231 () Bool)

(assert (=> d!82073 (= c!63231 (and (is-Intermediate!4974 lt!248727) (undefined!5786 lt!248727)))))

(declare-fun e!315081 () SeekEntryResult!4974)

(assert (=> d!82073 (= lt!248727 e!315081)))

(declare-fun c!63233 () Bool)

(assert (=> d!82073 (= c!63233 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!248726 () (_ BitVec 64))

(assert (=> d!82073 (= lt!248726 (select (arr!16509 a!3154) (toIndex!0 (select (arr!16509 a!3154) j!147) mask!3216)))))

(assert (=> d!82073 (validMask!0 mask!3216)))

(assert (=> d!82073 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16509 a!3154) j!147) mask!3216) (select (arr!16509 a!3154) j!147) a!3154 mask!3216) lt!248727)))

(declare-fun b!545093 () Bool)

(assert (=> b!545093 (= e!315081 (Intermediate!4974 true (toIndex!0 (select (arr!16509 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!545094 () Bool)

(assert (=> b!545094 (= e!315082 (bvsge (x!51072 lt!248727) #b01111111111111111111111111111110))))

(declare-fun b!545095 () Bool)

(assert (=> b!545095 (= e!315081 e!315083)))

(declare-fun c!63232 () Bool)

(assert (=> b!545095 (= c!63232 (or (= lt!248726 (select (arr!16509 a!3154) j!147)) (= (bvadd lt!248726 lt!248726) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!545096 () Bool)

(declare-fun e!315079 () Bool)

(assert (=> b!545096 (= e!315082 e!315079)))

(declare-fun res!339281 () Bool)

(assert (=> b!545096 (= res!339281 (and (is-Intermediate!4974 lt!248727) (not (undefined!5786 lt!248727)) (bvslt (x!51072 lt!248727) #b01111111111111111111111111111110) (bvsge (x!51072 lt!248727) #b00000000000000000000000000000000) (bvsge (x!51072 lt!248727) #b00000000000000000000000000000000)))))

(assert (=> b!545096 (=> (not res!339281) (not e!315079))))

(declare-fun b!545097 () Bool)

(assert (=> b!545097 (and (bvsge (index!22122 lt!248727) #b00000000000000000000000000000000) (bvslt (index!22122 lt!248727) (size!16873 a!3154)))))

(assert (=> b!545097 (= e!315080 (= (select (arr!16509 a!3154) (index!22122 lt!248727)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!545098 () Bool)

(assert (=> b!545098 (and (bvsge (index!22122 lt!248727) #b00000000000000000000000000000000) (bvslt (index!22122 lt!248727) (size!16873 a!3154)))))

(declare-fun res!339282 () Bool)

(assert (=> b!545098 (= res!339282 (= (select (arr!16509 a!3154) (index!22122 lt!248727)) (select (arr!16509 a!3154) j!147)))))

(assert (=> b!545098 (=> res!339282 e!315080)))

(assert (=> b!545098 (= e!315079 e!315080)))

(declare-fun b!545099 () Bool)

(assert (=> b!545099 (= e!315083 (Intermediate!4974 false (toIndex!0 (select (arr!16509 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(assert (= (and d!82073 c!63233) b!545093))

(assert (= (and d!82073 (not c!63233)) b!545095))

(assert (= (and b!545095 c!63232) b!545099))

(assert (= (and b!545095 (not c!63232)) b!545092))

(assert (= (and d!82073 c!63231) b!545094))

(assert (= (and d!82073 (not c!63231)) b!545096))

(assert (= (and b!545096 res!339281) b!545098))

(assert (= (and b!545098 (not res!339282)) b!545091))

(assert (= (and b!545091 (not res!339280)) b!545097))

(assert (=> d!82073 m!522631))

(declare-fun m!522785 () Bool)

(assert (=> d!82073 m!522785))

(assert (=> d!82073 m!522625))

(declare-fun m!522787 () Bool)

(assert (=> b!545091 m!522787))

(assert (=> b!545098 m!522787))

(assert (=> b!545097 m!522787))

(assert (=> b!545092 m!522631))

(declare-fun m!522789 () Bool)

(assert (=> b!545092 m!522789))

(assert (=> b!545092 m!522789))

(assert (=> b!545092 m!522629))

(declare-fun m!522791 () Bool)

(assert (=> b!545092 m!522791))

(assert (=> b!544887 d!82073))

(declare-fun d!82089 () Bool)

(declare-fun lt!248739 () (_ BitVec 32))

(declare-fun lt!248738 () (_ BitVec 32))

(assert (=> d!82089 (= lt!248739 (bvmul (bvxor lt!248738 (bvlshr lt!248738 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82089 (= lt!248738 ((_ extract 31 0) (bvand (bvxor (select (arr!16509 a!3154) j!147) (bvlshr (select (arr!16509 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82089 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!339283 (let ((h!11642 ((_ extract 31 0) (bvand (bvxor (select (arr!16509 a!3154) j!147) (bvlshr (select (arr!16509 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51081 (bvmul (bvxor h!11642 (bvlshr h!11642 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51081 (bvlshr x!51081 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!339283 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!339283 #b00000000000000000000000000000000))))))

(assert (=> d!82089 (= (toIndex!0 (select (arr!16509 a!3154) j!147) mask!3216) (bvand (bvxor lt!248739 (bvlshr lt!248739 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!544887 d!82089))

(declare-fun d!82091 () Bool)

(declare-fun res!339288 () Bool)

(declare-fun e!315094 () Bool)

(assert (=> d!82091 (=> res!339288 e!315094)))

(assert (=> d!82091 (= res!339288 (= (select (arr!16509 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!82091 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!315094)))

(declare-fun b!545116 () Bool)

(declare-fun e!315095 () Bool)

(assert (=> b!545116 (= e!315094 e!315095)))

(declare-fun res!339289 () Bool)

(assert (=> b!545116 (=> (not res!339289) (not e!315095))))

(assert (=> b!545116 (= res!339289 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16873 a!3154)))))

(declare-fun b!545117 () Bool)

(assert (=> b!545117 (= e!315095 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82091 (not res!339288)) b!545116))

(assert (= (and b!545116 res!339289) b!545117))

(assert (=> d!82091 m!522733))

(declare-fun m!522793 () Bool)

(assert (=> b!545117 m!522793))

(assert (=> b!544884 d!82091))

(declare-fun d!82093 () Bool)

(assert (=> d!82093 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!544878 d!82093))

(declare-fun b!545124 () Bool)

(declare-fun lt!248744 () SeekEntryResult!4974)

(assert (=> b!545124 (and (bvsge (index!22122 lt!248744) #b00000000000000000000000000000000) (bvslt (index!22122 lt!248744) (size!16873 a!3154)))))

(declare-fun res!339290 () Bool)

(assert (=> b!545124 (= res!339290 (= (select (arr!16509 a!3154) (index!22122 lt!248744)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!315100 () Bool)

(assert (=> b!545124 (=> res!339290 e!315100)))

(declare-fun e!315103 () SeekEntryResult!4974)

(declare-fun b!545125 () Bool)

(assert (=> b!545125 (= e!315103 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16509 a!3154) j!147) a!3154 mask!3216))))

(declare-fun d!82095 () Bool)

(declare-fun e!315102 () Bool)

(assert (=> d!82095 e!315102))

(declare-fun c!63243 () Bool)

(assert (=> d!82095 (= c!63243 (and (is-Intermediate!4974 lt!248744) (undefined!5786 lt!248744)))))

(declare-fun e!315101 () SeekEntryResult!4974)

(assert (=> d!82095 (= lt!248744 e!315101)))

(declare-fun c!63245 () Bool)

(assert (=> d!82095 (= c!63245 (bvsge x!1030 #b01111111111111111111111111111110))))

(declare-fun lt!248743 () (_ BitVec 64))

(assert (=> d!82095 (= lt!248743 (select (arr!16509 a!3154) index!1177))))

(assert (=> d!82095 (validMask!0 mask!3216)))

(assert (=> d!82095 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16509 a!3154) j!147) a!3154 mask!3216) lt!248744)))

(declare-fun b!545126 () Bool)

(assert (=> b!545126 (= e!315101 (Intermediate!4974 true index!1177 x!1030))))

(declare-fun b!545127 () Bool)

(assert (=> b!545127 (= e!315102 (bvsge (x!51072 lt!248744) #b01111111111111111111111111111110))))

(declare-fun b!545128 () Bool)

(assert (=> b!545128 (= e!315101 e!315103)))

(declare-fun c!63244 () Bool)

(assert (=> b!545128 (= c!63244 (or (= lt!248743 (select (arr!16509 a!3154) j!147)) (= (bvadd lt!248743 lt!248743) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!545129 () Bool)

(declare-fun e!315099 () Bool)

(assert (=> b!545129 (= e!315102 e!315099)))

(declare-fun res!339291 () Bool)

(assert (=> b!545129 (= res!339291 (and (is-Intermediate!4974 lt!248744) (not (undefined!5786 lt!248744)) (bvslt (x!51072 lt!248744) #b01111111111111111111111111111110) (bvsge (x!51072 lt!248744) #b00000000000000000000000000000000) (bvsge (x!51072 lt!248744) x!1030)))))

(assert (=> b!545129 (=> (not res!339291) (not e!315099))))

(declare-fun b!545130 () Bool)

(assert (=> b!545130 (and (bvsge (index!22122 lt!248744) #b00000000000000000000000000000000) (bvslt (index!22122 lt!248744) (size!16873 a!3154)))))

(assert (=> b!545130 (= e!315100 (= (select (arr!16509 a!3154) (index!22122 lt!248744)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!545131 () Bool)

(assert (=> b!545131 (and (bvsge (index!22122 lt!248744) #b00000000000000000000000000000000) (bvslt (index!22122 lt!248744) (size!16873 a!3154)))))

(declare-fun res!339292 () Bool)

(assert (=> b!545131 (= res!339292 (= (select (arr!16509 a!3154) (index!22122 lt!248744)) (select (arr!16509 a!3154) j!147)))))

(assert (=> b!545131 (=> res!339292 e!315100)))

(assert (=> b!545131 (= e!315099 e!315100)))

(declare-fun b!545132 () Bool)

(assert (=> b!545132 (= e!315103 (Intermediate!4974 false index!1177 x!1030))))

(assert (= (and d!82095 c!63245) b!545126))

(assert (= (and d!82095 (not c!63245)) b!545128))

(assert (= (and b!545128 c!63244) b!545132))

(assert (= (and b!545128 (not c!63244)) b!545125))

(assert (= (and d!82095 c!63243) b!545127))

(assert (= (and d!82095 (not c!63243)) b!545129))

(assert (= (and b!545129 res!339291) b!545131))

(assert (= (and b!545131 (not res!339292)) b!545124))

(assert (= (and b!545124 (not res!339290)) b!545130))

(assert (=> d!82095 m!522653))

(assert (=> d!82095 m!522625))

(declare-fun m!522809 () Bool)

(assert (=> b!545124 m!522809))

(assert (=> b!545131 m!522809))

(assert (=> b!545130 m!522809))

(assert (=> b!545125 m!522651))

(assert (=> b!545125 m!522651))

(assert (=> b!545125 m!522629))

(declare-fun m!522811 () Bool)

(assert (=> b!545125 m!522811))

(assert (=> b!544883 d!82095))

(declare-fun d!82099 () Bool)

(assert (=> d!82099 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49540 d!82099))

(declare-fun d!82105 () Bool)

(assert (=> d!82105 (= (array_inv!12283 a!3154) (bvsge (size!16873 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!49540 d!82105))

(declare-fun lt!248766 () SeekEntryResult!4974)

(declare-fun e!315152 () SeekEntryResult!4974)

(declare-fun b!545211 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34366 (_ BitVec 32)) SeekEntryResult!4974)

(assert (=> b!545211 (= e!315152 (seekKeyOrZeroReturnVacant!0 (x!51072 lt!248766) (index!22122 lt!248766) (index!22122 lt!248766) k!1998 a!3154 mask!3216))))

(declare-fun b!545212 () Bool)

(declare-fun e!315153 () SeekEntryResult!4974)

(assert (=> b!545212 (= e!315153 Undefined!4974)))

(declare-fun b!545213 () Bool)

(declare-fun e!315154 () SeekEntryResult!4974)

(assert (=> b!545213 (= e!315154 (Found!4974 (index!22122 lt!248766)))))

(declare-fun b!545214 () Bool)

(declare-fun c!63273 () Bool)

(declare-fun lt!248768 () (_ BitVec 64))

(assert (=> b!545214 (= c!63273 (= lt!248768 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!545214 (= e!315154 e!315152)))

(declare-fun b!545215 () Bool)

(assert (=> b!545215 (= e!315152 (MissingZero!4974 (index!22122 lt!248766)))))

(declare-fun b!545216 () Bool)

(assert (=> b!545216 (= e!315153 e!315154)))

(assert (=> b!545216 (= lt!248768 (select (arr!16509 a!3154) (index!22122 lt!248766)))))

(declare-fun c!63275 () Bool)

(assert (=> b!545216 (= c!63275 (= lt!248768 k!1998))))

(declare-fun d!82107 () Bool)

(declare-fun lt!248767 () SeekEntryResult!4974)

(assert (=> d!82107 (and (or (is-Undefined!4974 lt!248767) (not (is-Found!4974 lt!248767)) (and (bvsge (index!22121 lt!248767) #b00000000000000000000000000000000) (bvslt (index!22121 lt!248767) (size!16873 a!3154)))) (or (is-Undefined!4974 lt!248767) (is-Found!4974 lt!248767) (not (is-MissingZero!4974 lt!248767)) (and (bvsge (index!22120 lt!248767) #b00000000000000000000000000000000) (bvslt (index!22120 lt!248767) (size!16873 a!3154)))) (or (is-Undefined!4974 lt!248767) (is-Found!4974 lt!248767) (is-MissingZero!4974 lt!248767) (not (is-MissingVacant!4974 lt!248767)) (and (bvsge (index!22123 lt!248767) #b00000000000000000000000000000000) (bvslt (index!22123 lt!248767) (size!16873 a!3154)))) (or (is-Undefined!4974 lt!248767) (ite (is-Found!4974 lt!248767) (= (select (arr!16509 a!3154) (index!22121 lt!248767)) k!1998) (ite (is-MissingZero!4974 lt!248767) (= (select (arr!16509 a!3154) (index!22120 lt!248767)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4974 lt!248767) (= (select (arr!16509 a!3154) (index!22123 lt!248767)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82107 (= lt!248767 e!315153)))

(declare-fun c!63274 () Bool)

(assert (=> d!82107 (= c!63274 (and (is-Intermediate!4974 lt!248766) (undefined!5786 lt!248766)))))

(assert (=> d!82107 (= lt!248766 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!82107 (validMask!0 mask!3216)))

(assert (=> d!82107 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!248767)))

(assert (= (and d!82107 c!63274) b!545212))

(assert (= (and d!82107 (not c!63274)) b!545216))

(assert (= (and b!545216 c!63275) b!545213))

(assert (= (and b!545216 (not c!63275)) b!545214))

(assert (= (and b!545214 c!63273) b!545215))

(assert (= (and b!545214 (not c!63273)) b!545211))

(declare-fun m!522837 () Bool)

(assert (=> b!545211 m!522837))

(declare-fun m!522839 () Bool)

(assert (=> b!545216 m!522839))

(declare-fun m!522841 () Bool)

(assert (=> d!82107 m!522841))

(declare-fun m!522843 () Bool)

(assert (=> d!82107 m!522843))

(assert (=> d!82107 m!522841))

(declare-fun m!522845 () Bool)

(assert (=> d!82107 m!522845))

(assert (=> d!82107 m!522625))

(declare-fun m!522847 () Bool)

(assert (=> d!82107 m!522847))

(declare-fun m!522849 () Bool)

(assert (=> d!82107 m!522849))

(assert (=> b!544885 d!82107))

(declare-fun bm!32123 () Bool)

(declare-fun call!32126 () Bool)

(assert (=> bm!32123 (= call!32126 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun d!82117 () Bool)

(declare-fun res!339328 () Bool)

(declare-fun e!315172 () Bool)

(assert (=> d!82117 (=> res!339328 e!315172)))

(assert (=> d!82117 (= res!339328 (bvsge #b00000000000000000000000000000000 (size!16873 a!3154)))))

(assert (=> d!82117 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!315172)))

(declare-fun b!545243 () Bool)

(declare-fun e!315171 () Bool)

(declare-fun e!315173 () Bool)

(assert (=> b!545243 (= e!315171 e!315173)))

(declare-fun lt!248786 () (_ BitVec 64))

(assert (=> b!545243 (= lt!248786 (select (arr!16509 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16896 0))(
  ( (Unit!16897) )
))
(declare-fun lt!248787 () Unit!16896)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34366 (_ BitVec 64) (_ BitVec 32)) Unit!16896)

(assert (=> b!545243 (= lt!248787 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!248786 #b00000000000000000000000000000000))))

(assert (=> b!545243 (arrayContainsKey!0 a!3154 lt!248786 #b00000000000000000000000000000000)))

(declare-fun lt!248785 () Unit!16896)

(assert (=> b!545243 (= lt!248785 lt!248787)))

(declare-fun res!339329 () Bool)

(assert (=> b!545243 (= res!339329 (= (seekEntryOrOpen!0 (select (arr!16509 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4974 #b00000000000000000000000000000000)))))

(assert (=> b!545243 (=> (not res!339329) (not e!315173))))

(declare-fun b!545244 () Bool)

(assert (=> b!545244 (= e!315173 call!32126)))

(declare-fun b!545245 () Bool)

(assert (=> b!545245 (= e!315171 call!32126)))

(declare-fun b!545246 () Bool)

(assert (=> b!545246 (= e!315172 e!315171)))

(declare-fun c!63284 () Bool)

(assert (=> b!545246 (= c!63284 (validKeyInArray!0 (select (arr!16509 a!3154) #b00000000000000000000000000000000)))))

(assert (= (and d!82117 (not res!339328)) b!545246))

(assert (= (and b!545246 c!63284) b!545243))

(assert (= (and b!545246 (not c!63284)) b!545245))

(assert (= (and b!545243 res!339329) b!545244))

(assert (= (or b!545244 b!545245) bm!32123))

(declare-fun m!522867 () Bool)

(assert (=> bm!32123 m!522867))

(assert (=> b!545243 m!522733))

(declare-fun m!522869 () Bool)

(assert (=> b!545243 m!522869))

(declare-fun m!522871 () Bool)

(assert (=> b!545243 m!522871))

(assert (=> b!545243 m!522733))

(declare-fun m!522873 () Bool)

(assert (=> b!545243 m!522873))

(assert (=> b!545246 m!522733))

(assert (=> b!545246 m!522733))

(assert (=> b!545246 m!522735))

(assert (=> b!544879 d!82117))

(declare-fun b!545247 () Bool)

(declare-fun lt!248789 () SeekEntryResult!4974)

(assert (=> b!545247 (and (bvsge (index!22122 lt!248789) #b00000000000000000000000000000000) (bvslt (index!22122 lt!248789) (size!16873 a!3154)))))

(declare-fun res!339330 () Bool)

(assert (=> b!545247 (= res!339330 (= (select (arr!16509 a!3154) (index!22122 lt!248789)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!315175 () Bool)

(assert (=> b!545247 (=> res!339330 e!315175)))

(declare-fun e!315178 () SeekEntryResult!4974)

(declare-fun b!545248 () Bool)

(assert (=> b!545248 (= e!315178 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030 #b00000000000000000000000000000001) (nextIndex!0 lt!248652 (bvadd #b00000000000000000000000000000001 x!1030) mask!3216) (select (arr!16509 a!3154) j!147) a!3154 mask!3216))))

(declare-fun d!82125 () Bool)

(declare-fun e!315177 () Bool)

(assert (=> d!82125 e!315177))

(declare-fun c!63285 () Bool)

(assert (=> d!82125 (= c!63285 (and (is-Intermediate!4974 lt!248789) (undefined!5786 lt!248789)))))

(declare-fun e!315176 () SeekEntryResult!4974)

(assert (=> d!82125 (= lt!248789 e!315176)))

(declare-fun c!63287 () Bool)

(assert (=> d!82125 (= c!63287 (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b01111111111111111111111111111110))))

(declare-fun lt!248788 () (_ BitVec 64))

(assert (=> d!82125 (= lt!248788 (select (arr!16509 a!3154) lt!248652))))

(assert (=> d!82125 (validMask!0 mask!3216)))

(assert (=> d!82125 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248652 (select (arr!16509 a!3154) j!147) a!3154 mask!3216) lt!248789)))

(declare-fun b!545249 () Bool)

(assert (=> b!545249 (= e!315176 (Intermediate!4974 true lt!248652 (bvadd #b00000000000000000000000000000001 x!1030)))))

(declare-fun b!545250 () Bool)

(assert (=> b!545250 (= e!315177 (bvsge (x!51072 lt!248789) #b01111111111111111111111111111110))))

(declare-fun b!545251 () Bool)

(assert (=> b!545251 (= e!315176 e!315178)))

(declare-fun c!63286 () Bool)

(assert (=> b!545251 (= c!63286 (or (= lt!248788 (select (arr!16509 a!3154) j!147)) (= (bvadd lt!248788 lt!248788) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!545252 () Bool)

(declare-fun e!315174 () Bool)

(assert (=> b!545252 (= e!315177 e!315174)))

(declare-fun res!339331 () Bool)

(assert (=> b!545252 (= res!339331 (and (is-Intermediate!4974 lt!248789) (not (undefined!5786 lt!248789)) (bvslt (x!51072 lt!248789) #b01111111111111111111111111111110) (bvsge (x!51072 lt!248789) #b00000000000000000000000000000000) (bvsge (x!51072 lt!248789) (bvadd #b00000000000000000000000000000001 x!1030))))))

(assert (=> b!545252 (=> (not res!339331) (not e!315174))))

(declare-fun b!545253 () Bool)

(assert (=> b!545253 (and (bvsge (index!22122 lt!248789) #b00000000000000000000000000000000) (bvslt (index!22122 lt!248789) (size!16873 a!3154)))))

(assert (=> b!545253 (= e!315175 (= (select (arr!16509 a!3154) (index!22122 lt!248789)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!545254 () Bool)

(assert (=> b!545254 (and (bvsge (index!22122 lt!248789) #b00000000000000000000000000000000) (bvslt (index!22122 lt!248789) (size!16873 a!3154)))))

(declare-fun res!339332 () Bool)

(assert (=> b!545254 (= res!339332 (= (select (arr!16509 a!3154) (index!22122 lt!248789)) (select (arr!16509 a!3154) j!147)))))

(assert (=> b!545254 (=> res!339332 e!315175)))

(assert (=> b!545254 (= e!315174 e!315175)))

(declare-fun b!545255 () Bool)

(assert (=> b!545255 (= e!315178 (Intermediate!4974 false lt!248652 (bvadd #b00000000000000000000000000000001 x!1030)))))

(assert (= (and d!82125 c!63287) b!545249))

(assert (= (and d!82125 (not c!63287)) b!545251))

(assert (= (and b!545251 c!63286) b!545255))

(assert (= (and b!545251 (not c!63286)) b!545248))

(assert (= (and d!82125 c!63285) b!545250))

(assert (= (and d!82125 (not c!63285)) b!545252))

(assert (= (and b!545252 res!339331) b!545254))

(assert (= (and b!545254 (not res!339332)) b!545247))

(assert (= (and b!545247 (not res!339330)) b!545253))

(declare-fun m!522875 () Bool)

