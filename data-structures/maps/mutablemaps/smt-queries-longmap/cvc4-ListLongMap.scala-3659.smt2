; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50532 () Bool)

(assert start!50532)

(declare-fun b!552029 () Bool)

(declare-fun e!318547 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!251039 () (_ BitVec 32))

(assert (=> b!552029 (= e!318547 (not (or (bvslt mask!3119 #b00000000000000000000000000000000) (and (bvsge lt!251039 #b00000000000000000000000000000000) (bvslt lt!251039 (bvadd #b00000000000000000000000000000001 mask!3119))))))))

(declare-fun e!318545 () Bool)

(assert (=> b!552029 e!318545))

(declare-fun res!344781 () Bool)

(assert (=> b!552029 (=> (not res!344781) (not e!318545))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((array!34768 0))(
  ( (array!34769 (arr!16691 (Array (_ BitVec 32) (_ BitVec 64))) (size!17055 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34768)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34768 (_ BitVec 32)) Bool)

(assert (=> b!552029 (= res!344781 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17068 0))(
  ( (Unit!17069) )
))
(declare-fun lt!251038 () Unit!17068)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34768 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17068)

(assert (=> b!552029 (= lt!251038 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!344782 () Bool)

(declare-fun e!318546 () Bool)

(assert (=> start!50532 (=> (not res!344782) (not e!318546))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50532 (= res!344782 (validMask!0 mask!3119))))

(assert (=> start!50532 e!318546))

(assert (=> start!50532 true))

(declare-fun array_inv!12465 (array!34768) Bool)

(assert (=> start!50532 (array_inv!12465 a!3118)))

(declare-fun b!552030 () Bool)

(declare-fun res!344775 () Bool)

(assert (=> b!552030 (=> (not res!344775) (not e!318546))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34768 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552030 (= res!344775 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552031 () Bool)

(declare-fun e!318543 () Bool)

(assert (=> b!552031 (= e!318543 e!318547)))

(declare-fun res!344776 () Bool)

(assert (=> b!552031 (=> (not res!344776) (not e!318547))))

(declare-fun lt!251036 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5147 0))(
  ( (MissingZero!5147 (index!22815 (_ BitVec 32))) (Found!5147 (index!22816 (_ BitVec 32))) (Intermediate!5147 (undefined!5959 Bool) (index!22817 (_ BitVec 32)) (x!51770 (_ BitVec 32))) (Undefined!5147) (MissingVacant!5147 (index!22818 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34768 (_ BitVec 32)) SeekEntryResult!5147)

(assert (=> b!552031 (= res!344776 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251036 (select (arr!16691 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251039 (select (store (arr!16691 a!3118) i!1132 k!1914) j!142) (array!34769 (store (arr!16691 a!3118) i!1132 k!1914) (size!17055 a!3118)) mask!3119)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552031 (= lt!251039 (toIndex!0 (select (store (arr!16691 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!552031 (= lt!251036 (toIndex!0 (select (arr!16691 a!3118) j!142) mask!3119))))

(declare-fun b!552032 () Bool)

(declare-fun res!344780 () Bool)

(assert (=> b!552032 (=> (not res!344780) (not e!318546))))

(assert (=> b!552032 (= res!344780 (and (= (size!17055 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17055 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17055 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!552033 () Bool)

(declare-fun res!344778 () Bool)

(assert (=> b!552033 (=> (not res!344778) (not e!318543))))

(declare-datatypes ((List!10824 0))(
  ( (Nil!10821) (Cons!10820 (h!11802 (_ BitVec 64)) (t!17060 List!10824)) )
))
(declare-fun arrayNoDuplicates!0 (array!34768 (_ BitVec 32) List!10824) Bool)

(assert (=> b!552033 (= res!344778 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10821))))

(declare-fun b!552034 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34768 (_ BitVec 32)) SeekEntryResult!5147)

(assert (=> b!552034 (= e!318545 (= (seekEntryOrOpen!0 (select (arr!16691 a!3118) j!142) a!3118 mask!3119) (Found!5147 j!142)))))

(declare-fun b!552035 () Bool)

(declare-fun res!344779 () Bool)

(assert (=> b!552035 (=> (not res!344779) (not e!318546))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552035 (= res!344779 (validKeyInArray!0 (select (arr!16691 a!3118) j!142)))))

(declare-fun b!552036 () Bool)

(declare-fun res!344783 () Bool)

(assert (=> b!552036 (=> (not res!344783) (not e!318546))))

(assert (=> b!552036 (= res!344783 (validKeyInArray!0 k!1914))))

(declare-fun b!552037 () Bool)

(assert (=> b!552037 (= e!318546 e!318543)))

(declare-fun res!344774 () Bool)

(assert (=> b!552037 (=> (not res!344774) (not e!318543))))

(declare-fun lt!251037 () SeekEntryResult!5147)

(assert (=> b!552037 (= res!344774 (or (= lt!251037 (MissingZero!5147 i!1132)) (= lt!251037 (MissingVacant!5147 i!1132))))))

(assert (=> b!552037 (= lt!251037 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!552038 () Bool)

(declare-fun res!344777 () Bool)

(assert (=> b!552038 (=> (not res!344777) (not e!318543))))

(assert (=> b!552038 (= res!344777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50532 res!344782) b!552032))

(assert (= (and b!552032 res!344780) b!552035))

(assert (= (and b!552035 res!344779) b!552036))

(assert (= (and b!552036 res!344783) b!552030))

(assert (= (and b!552030 res!344775) b!552037))

(assert (= (and b!552037 res!344774) b!552038))

(assert (= (and b!552038 res!344777) b!552033))

(assert (= (and b!552033 res!344778) b!552031))

(assert (= (and b!552031 res!344776) b!552029))

(assert (= (and b!552029 res!344781) b!552034))

(declare-fun m!529057 () Bool)

(assert (=> b!552031 m!529057))

(declare-fun m!529059 () Bool)

(assert (=> b!552031 m!529059))

(declare-fun m!529061 () Bool)

(assert (=> b!552031 m!529061))

(declare-fun m!529063 () Bool)

(assert (=> b!552031 m!529063))

(assert (=> b!552031 m!529057))

(assert (=> b!552031 m!529061))

(declare-fun m!529065 () Bool)

(assert (=> b!552031 m!529065))

(assert (=> b!552031 m!529057))

(declare-fun m!529067 () Bool)

(assert (=> b!552031 m!529067))

(assert (=> b!552031 m!529061))

(declare-fun m!529069 () Bool)

(assert (=> b!552031 m!529069))

(declare-fun m!529071 () Bool)

(assert (=> b!552037 m!529071))

(declare-fun m!529073 () Bool)

(assert (=> b!552029 m!529073))

(declare-fun m!529075 () Bool)

(assert (=> b!552029 m!529075))

(declare-fun m!529077 () Bool)

(assert (=> b!552033 m!529077))

(assert (=> b!552034 m!529057))

(assert (=> b!552034 m!529057))

(declare-fun m!529079 () Bool)

(assert (=> b!552034 m!529079))

(declare-fun m!529081 () Bool)

(assert (=> b!552036 m!529081))

(declare-fun m!529083 () Bool)

(assert (=> start!50532 m!529083))

(declare-fun m!529085 () Bool)

(assert (=> start!50532 m!529085))

(assert (=> b!552035 m!529057))

(assert (=> b!552035 m!529057))

(declare-fun m!529087 () Bool)

(assert (=> b!552035 m!529087))

(declare-fun m!529089 () Bool)

(assert (=> b!552030 m!529089))

(declare-fun m!529091 () Bool)

(assert (=> b!552038 m!529091))

(push 1)

(assert (not b!552036))

(assert (not b!552038))

(assert (not start!50532))

(assert (not b!552031))

(assert (not b!552030))

(assert (not b!552035))

(assert (not b!552033))

(assert (not b!552037))

(assert (not b!552029))

(assert (not b!552034))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!552073 () Bool)

(declare-fun e!318571 () Bool)

(declare-fun e!318573 () Bool)

(assert (=> b!552073 (= e!318571 e!318573)))

(declare-fun res!344796 () Bool)

(assert (=> b!552073 (=> (not res!344796) (not e!318573))))

(declare-fun e!318574 () Bool)

(assert (=> b!552073 (= res!344796 (not e!318574))))

(declare-fun res!344798 () Bool)

(assert (=> b!552073 (=> (not res!344798) (not e!318574))))

(assert (=> b!552073 (= res!344798 (validKeyInArray!0 (select (arr!16691 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!552074 () Bool)

(declare-fun e!318572 () Bool)

(declare-fun call!32309 () Bool)

(assert (=> b!552074 (= e!318572 call!32309)))

(declare-fun bm!32306 () Bool)

(declare-fun c!63974 () Bool)

(assert (=> bm!32306 (= call!32309 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63974 (Cons!10820 (select (arr!16691 a!3118) #b00000000000000000000000000000000) Nil!10821) Nil!10821)))))

(declare-fun d!83001 () Bool)

(declare-fun res!344797 () Bool)

(assert (=> d!83001 (=> res!344797 e!318571)))

(assert (=> d!83001 (= res!344797 (bvsge #b00000000000000000000000000000000 (size!17055 a!3118)))))

(assert (=> d!83001 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10821) e!318571)))

(declare-fun b!552075 () Bool)

(declare-fun contains!2846 (List!10824 (_ BitVec 64)) Bool)

(assert (=> b!552075 (= e!318574 (contains!2846 Nil!10821 (select (arr!16691 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!552076 () Bool)

(assert (=> b!552076 (= e!318572 call!32309)))

(declare-fun b!552077 () Bool)

(assert (=> b!552077 (= e!318573 e!318572)))

(assert (=> b!552077 (= c!63974 (validKeyInArray!0 (select (arr!16691 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!83001 (not res!344797)) b!552073))

(assert (= (and b!552073 res!344798) b!552075))

(assert (= (and b!552073 res!344796) b!552077))

(assert (= (and b!552077 c!63974) b!552074))

(assert (= (and b!552077 (not c!63974)) b!552076))

(assert (= (or b!552074 b!552076) bm!32306))

(declare-fun m!529109 () Bool)

(assert (=> b!552073 m!529109))

(assert (=> b!552073 m!529109))

(declare-fun m!529111 () Bool)

(assert (=> b!552073 m!529111))

(assert (=> bm!32306 m!529109))

(declare-fun m!529113 () Bool)

(assert (=> bm!32306 m!529113))

(assert (=> b!552075 m!529109))

(assert (=> b!552075 m!529109))

(declare-fun m!529115 () Bool)

(assert (=> b!552075 m!529115))

(assert (=> b!552077 m!529109))

(assert (=> b!552077 m!529109))

(assert (=> b!552077 m!529111))

(assert (=> b!552033 d!83001))

(declare-fun b!552141 () Bool)

(declare-fun e!318615 () SeekEntryResult!5147)

(assert (=> b!552141 (= e!318615 Undefined!5147)))

(declare-fun b!552142 () Bool)

(declare-fun e!318617 () SeekEntryResult!5147)

(assert (=> b!552142 (= e!318615 e!318617)))

(declare-fun lt!251071 () (_ BitVec 64))

(declare-fun lt!251073 () SeekEntryResult!5147)

(assert (=> b!552142 (= lt!251071 (select (arr!16691 a!3118) (index!22817 lt!251073)))))

(declare-fun c!63996 () Bool)

(assert (=> b!552142 (= c!63996 (= lt!251071 (select (arr!16691 a!3118) j!142)))))

(declare-fun e!318616 () SeekEntryResult!5147)

(declare-fun b!552143 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34768 (_ BitVec 32)) SeekEntryResult!5147)

(assert (=> b!552143 (= e!318616 (seekKeyOrZeroReturnVacant!0 (x!51770 lt!251073) (index!22817 lt!251073) (index!22817 lt!251073) (select (arr!16691 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!552144 () Bool)

(assert (=> b!552144 (= e!318616 (MissingZero!5147 (index!22817 lt!251073)))))

(declare-fun b!552145 () Bool)

(assert (=> b!552145 (= e!318617 (Found!5147 (index!22817 lt!251073)))))

(declare-fun d!83005 () Bool)

(declare-fun lt!251072 () SeekEntryResult!5147)

(assert (=> d!83005 (and (or (is-Undefined!5147 lt!251072) (not (is-Found!5147 lt!251072)) (and (bvsge (index!22816 lt!251072) #b00000000000000000000000000000000) (bvslt (index!22816 lt!251072) (size!17055 a!3118)))) (or (is-Undefined!5147 lt!251072) (is-Found!5147 lt!251072) (not (is-MissingZero!5147 lt!251072)) (and (bvsge (index!22815 lt!251072) #b00000000000000000000000000000000) (bvslt (index!22815 lt!251072) (size!17055 a!3118)))) (or (is-Undefined!5147 lt!251072) (is-Found!5147 lt!251072) (is-MissingZero!5147 lt!251072) (not (is-MissingVacant!5147 lt!251072)) (and (bvsge (index!22818 lt!251072) #b00000000000000000000000000000000) (bvslt (index!22818 lt!251072) (size!17055 a!3118)))) (or (is-Undefined!5147 lt!251072) (ite (is-Found!5147 lt!251072) (= (select (arr!16691 a!3118) (index!22816 lt!251072)) (select (arr!16691 a!3118) j!142)) (ite (is-MissingZero!5147 lt!251072) (= (select (arr!16691 a!3118) (index!22815 lt!251072)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5147 lt!251072) (= (select (arr!16691 a!3118) (index!22818 lt!251072)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83005 (= lt!251072 e!318615)))

(declare-fun c!63998 () Bool)

(assert (=> d!83005 (= c!63998 (and (is-Intermediate!5147 lt!251073) (undefined!5959 lt!251073)))))

(assert (=> d!83005 (= lt!251073 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16691 a!3118) j!142) mask!3119) (select (arr!16691 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83005 (validMask!0 mask!3119)))

(assert (=> d!83005 (= (seekEntryOrOpen!0 (select (arr!16691 a!3118) j!142) a!3118 mask!3119) lt!251072)))

(declare-fun b!552146 () Bool)

(declare-fun c!63997 () Bool)

(assert (=> b!552146 (= c!63997 (= lt!251071 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!552146 (= e!318617 e!318616)))

(assert (= (and d!83005 c!63998) b!552141))

(assert (= (and d!83005 (not c!63998)) b!552142))

(assert (= (and b!552142 c!63996) b!552145))

(assert (= (and b!552142 (not c!63996)) b!552146))

(assert (= (and b!552146 c!63997) b!552144))

(assert (= (and b!552146 (not c!63997)) b!552143))

(declare-fun m!529147 () Bool)

(assert (=> b!552142 m!529147))

(assert (=> b!552143 m!529057))

(declare-fun m!529149 () Bool)

(assert (=> b!552143 m!529149))

(assert (=> d!83005 m!529083))

(declare-fun m!529151 () Bool)

(assert (=> d!83005 m!529151))

(assert (=> d!83005 m!529057))

(assert (=> d!83005 m!529059))

(assert (=> d!83005 m!529059))

(assert (=> d!83005 m!529057))

(declare-fun m!529153 () Bool)

(assert (=> d!83005 m!529153))

(declare-fun m!529155 () Bool)

(assert (=> d!83005 m!529155))

(declare-fun m!529157 () Bool)

(assert (=> d!83005 m!529157))

(assert (=> b!552034 d!83005))

(declare-fun b!552147 () Bool)

(declare-fun e!318618 () SeekEntryResult!5147)

(assert (=> b!552147 (= e!318618 Undefined!5147)))

(declare-fun b!552148 () Bool)

(declare-fun e!318620 () SeekEntryResult!5147)

(assert (=> b!552148 (= e!318618 e!318620)))

(declare-fun lt!251074 () (_ BitVec 64))

(declare-fun lt!251076 () SeekEntryResult!5147)

(assert (=> b!552148 (= lt!251074 (select (arr!16691 a!3118) (index!22817 lt!251076)))))

(declare-fun c!63999 () Bool)

(assert (=> b!552148 (= c!63999 (= lt!251074 k!1914))))

(declare-fun b!552149 () Bool)

(declare-fun e!318619 () SeekEntryResult!5147)

(assert (=> b!552149 (= e!318619 (seekKeyOrZeroReturnVacant!0 (x!51770 lt!251076) (index!22817 lt!251076) (index!22817 lt!251076) k!1914 a!3118 mask!3119))))

(declare-fun b!552150 () Bool)

(assert (=> b!552150 (= e!318619 (MissingZero!5147 (index!22817 lt!251076)))))

(declare-fun b!552151 () Bool)

(assert (=> b!552151 (= e!318620 (Found!5147 (index!22817 lt!251076)))))

(declare-fun d!83019 () Bool)

(declare-fun lt!251075 () SeekEntryResult!5147)

(assert (=> d!83019 (and (or (is-Undefined!5147 lt!251075) (not (is-Found!5147 lt!251075)) (and (bvsge (index!22816 lt!251075) #b00000000000000000000000000000000) (bvslt (index!22816 lt!251075) (size!17055 a!3118)))) (or (is-Undefined!5147 lt!251075) (is-Found!5147 lt!251075) (not (is-MissingZero!5147 lt!251075)) (and (bvsge (index!22815 lt!251075) #b00000000000000000000000000000000) (bvslt (index!22815 lt!251075) (size!17055 a!3118)))) (or (is-Undefined!5147 lt!251075) (is-Found!5147 lt!251075) (is-MissingZero!5147 lt!251075) (not (is-MissingVacant!5147 lt!251075)) (and (bvsge (index!22818 lt!251075) #b00000000000000000000000000000000) (bvslt (index!22818 lt!251075) (size!17055 a!3118)))) (or (is-Undefined!5147 lt!251075) (ite (is-Found!5147 lt!251075) (= (select (arr!16691 a!3118) (index!22816 lt!251075)) k!1914) (ite (is-MissingZero!5147 lt!251075) (= (select (arr!16691 a!3118) (index!22815 lt!251075)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5147 lt!251075) (= (select (arr!16691 a!3118) (index!22818 lt!251075)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83019 (= lt!251075 e!318618)))

(declare-fun c!64001 () Bool)

(assert (=> d!83019 (= c!64001 (and (is-Intermediate!5147 lt!251076) (undefined!5959 lt!251076)))))

(assert (=> d!83019 (= lt!251076 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!83019 (validMask!0 mask!3119)))

(assert (=> d!83019 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!251075)))

(declare-fun b!552152 () Bool)

(declare-fun c!64000 () Bool)

(assert (=> b!552152 (= c!64000 (= lt!251074 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!552152 (= e!318620 e!318619)))

(assert (= (and d!83019 c!64001) b!552147))

(assert (= (and d!83019 (not c!64001)) b!552148))

(assert (= (and b!552148 c!63999) b!552151))

(assert (= (and b!552148 (not c!63999)) b!552152))

(assert (= (and b!552152 c!64000) b!552150))

(assert (= (and b!552152 (not c!64000)) b!552149))

(declare-fun m!529159 () Bool)

(assert (=> b!552148 m!529159))

(declare-fun m!529161 () Bool)

(assert (=> b!552149 m!529161))

(assert (=> d!83019 m!529083))

(declare-fun m!529163 () Bool)

(assert (=> d!83019 m!529163))

(declare-fun m!529165 () Bool)

(assert (=> d!83019 m!529165))

(assert (=> d!83019 m!529165))

(declare-fun m!529167 () Bool)

(assert (=> d!83019 m!529167))

(declare-fun m!529169 () Bool)

(assert (=> d!83019 m!529169))

(declare-fun m!529171 () Bool)

(assert (=> d!83019 m!529171))

(assert (=> b!552037 d!83019))

(declare-fun d!83021 () Bool)

(declare-fun res!344837 () Bool)

(declare-fun e!318644 () Bool)

(assert (=> d!83021 (=> res!344837 e!318644)))

(assert (=> d!83021 (= res!344837 (bvsge #b00000000000000000000000000000000 (size!17055 a!3118)))))

(assert (=> d!83021 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!318644)))

(declare-fun b!552185 () Bool)

(declare-fun e!318643 () Bool)

(declare-fun call!32318 () Bool)

(assert (=> b!552185 (= e!318643 call!32318)))

(declare-fun b!552186 () Bool)

(assert (=> b!552186 (= e!318644 e!318643)))

(declare-fun c!64010 () Bool)

(assert (=> b!552186 (= c!64010 (validKeyInArray!0 (select (arr!16691 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!552187 () Bool)

(declare-fun e!318645 () Bool)

(assert (=> b!552187 (= e!318643 e!318645)))

(declare-fun lt!251096 () (_ BitVec 64))

(assert (=> b!552187 (= lt!251096 (select (arr!16691 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!251095 () Unit!17068)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34768 (_ BitVec 64) (_ BitVec 32)) Unit!17068)

(assert (=> b!552187 (= lt!251095 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!251096 #b00000000000000000000000000000000))))

(assert (=> b!552187 (arrayContainsKey!0 a!3118 lt!251096 #b00000000000000000000000000000000)))

(declare-fun lt!251097 () Unit!17068)

(assert (=> b!552187 (= lt!251097 lt!251095)))

(declare-fun res!344838 () Bool)

(assert (=> b!552187 (= res!344838 (= (seekEntryOrOpen!0 (select (arr!16691 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5147 #b00000000000000000000000000000000)))))

(assert (=> b!552187 (=> (not res!344838) (not e!318645))))

(declare-fun bm!32315 () Bool)

(assert (=> bm!32315 (= call!32318 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!552188 () Bool)

(assert (=> b!552188 (= e!318645 call!32318)))

(assert (= (and d!83021 (not res!344837)) b!552186))

(assert (= (and b!552186 c!64010) b!552187))

(assert (= (and b!552186 (not c!64010)) b!552185))

(assert (= (and b!552187 res!344838) b!552188))

(assert (= (or b!552188 b!552185) bm!32315))

(assert (=> b!552186 m!529109))

(assert (=> b!552186 m!529109))

(assert (=> b!552186 m!529111))

(assert (=> b!552187 m!529109))

(declare-fun m!529191 () Bool)

(assert (=> b!552187 m!529191))

(declare-fun m!529193 () Bool)

(assert (=> b!552187 m!529193))

(assert (=> b!552187 m!529109))

(declare-fun m!529195 () Bool)

(assert (=> b!552187 m!529195))

(declare-fun m!529197 () Bool)

(assert (=> bm!32315 m!529197))

(assert (=> b!552038 d!83021))

(declare-fun d!83037 () Bool)

(assert (=> d!83037 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!552036 d!83037))

(declare-fun b!552261 () Bool)

(declare-fun lt!251119 () SeekEntryResult!5147)

(assert (=> b!552261 (and (bvsge (index!22817 lt!251119) #b00000000000000000000000000000000) (bvslt (index!22817 lt!251119) (size!17055 a!3118)))))

(declare-fun res!344859 () Bool)

(assert (=> b!552261 (= res!344859 (= (select (arr!16691 a!3118) (index!22817 lt!251119)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318689 () Bool)

(assert (=> b!552261 (=> res!344859 e!318689)))

(declare-fun d!83039 () Bool)

(declare-fun e!318688 () Bool)

(assert (=> d!83039 e!318688))

(declare-fun c!64038 () Bool)

(assert (=> d!83039 (= c!64038 (and (is-Intermediate!5147 lt!251119) (undefined!5959 lt!251119)))))

(declare-fun e!318687 () SeekEntryResult!5147)

(assert (=> d!83039 (= lt!251119 e!318687)))

(declare-fun c!64039 () Bool)

(assert (=> d!83039 (= c!64039 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!251120 () (_ BitVec 64))

(assert (=> d!83039 (= lt!251120 (select (arr!16691 a!3118) lt!251036))))

(assert (=> d!83039 (validMask!0 mask!3119)))

(assert (=> d!83039 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251036 (select (arr!16691 a!3118) j!142) a!3118 mask!3119) lt!251119)))

(declare-fun b!552262 () Bool)

(declare-fun e!318686 () SeekEntryResult!5147)

(assert (=> b!552262 (= e!318686 (Intermediate!5147 false lt!251036 #b00000000000000000000000000000000))))

(declare-fun b!552263 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552263 (= e!318686 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!251036 #b00000000000000000000000000000000 mask!3119) (select (arr!16691 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!552264 () Bool)

(assert (=> b!552264 (= e!318688 (bvsge (x!51770 lt!251119) #b01111111111111111111111111111110))))

(declare-fun b!552265 () Bool)

(declare-fun e!318685 () Bool)

(assert (=> b!552265 (= e!318688 e!318685)))

(declare-fun res!344857 () Bool)

(assert (=> b!552265 (= res!344857 (and (is-Intermediate!5147 lt!251119) (not (undefined!5959 lt!251119)) (bvslt (x!51770 lt!251119) #b01111111111111111111111111111110) (bvsge (x!51770 lt!251119) #b00000000000000000000000000000000) (bvsge (x!51770 lt!251119) #b00000000000000000000000000000000)))))

(assert (=> b!552265 (=> (not res!344857) (not e!318685))))

(declare-fun b!552266 () Bool)

(assert (=> b!552266 (and (bvsge (index!22817 lt!251119) #b00000000000000000000000000000000) (bvslt (index!22817 lt!251119) (size!17055 a!3118)))))

(declare-fun res!344858 () Bool)

(assert (=> b!552266 (= res!344858 (= (select (arr!16691 a!3118) (index!22817 lt!251119)) (select (arr!16691 a!3118) j!142)))))

(assert (=> b!552266 (=> res!344858 e!318689)))

(assert (=> b!552266 (= e!318685 e!318689)))

(declare-fun b!552267 () Bool)

(assert (=> b!552267 (and (bvsge (index!22817 lt!251119) #b00000000000000000000000000000000) (bvslt (index!22817 lt!251119) (size!17055 a!3118)))))

(assert (=> b!552267 (= e!318689 (= (select (arr!16691 a!3118) (index!22817 lt!251119)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!552268 () Bool)

(assert (=> b!552268 (= e!318687 (Intermediate!5147 true lt!251036 #b00000000000000000000000000000000))))

(declare-fun b!552269 () Bool)

(assert (=> b!552269 (= e!318687 e!318686)))

(declare-fun c!64040 () Bool)

(assert (=> b!552269 (= c!64040 (or (= lt!251120 (select (arr!16691 a!3118) j!142)) (= (bvadd lt!251120 lt!251120) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!83039 c!64039) b!552268))

(assert (= (and d!83039 (not c!64039)) b!552269))

(assert (= (and b!552269 c!64040) b!552262))

(assert (= (and b!552269 (not c!64040)) b!552263))

(assert (= (and d!83039 c!64038) b!552264))

(assert (= (and d!83039 (not c!64038)) b!552265))

(assert (= (and b!552265 res!344857) b!552266))

(assert (= (and b!552266 (not res!344858)) b!552261))

(assert (= (and b!552261 (not res!344859)) b!552267))

(declare-fun m!529227 () Bool)

(assert (=> b!552263 m!529227))

(assert (=> b!552263 m!529227))

(assert (=> b!552263 m!529057))

(declare-fun m!529229 () Bool)

(assert (=> b!552263 m!529229))

(declare-fun m!529231 () Bool)

(assert (=> b!552267 m!529231))

(assert (=> b!552261 m!529231))

(assert (=> b!552266 m!529231))

(declare-fun m!529233 () Bool)

(assert (=> d!83039 m!529233))

(assert (=> d!83039 m!529083))

(assert (=> b!552031 d!83039))

(declare-fun b!552270 () Bool)

(declare-fun lt!251121 () SeekEntryResult!5147)

(assert (=> b!552270 (and (bvsge (index!22817 lt!251121) #b00000000000000000000000000000000) (bvslt (index!22817 lt!251121) (size!17055 (array!34769 (store (arr!16691 a!3118) i!1132 k!1914) (size!17055 a!3118)))))))

(declare-fun res!344863 () Bool)

(assert (=> b!552270 (= res!344863 (= (select (arr!16691 (array!34769 (store (arr!16691 a!3118) i!1132 k!1914) (size!17055 a!3118))) (index!22817 lt!251121)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318694 () Bool)

(assert (=> b!552270 (=> res!344863 e!318694)))

(declare-fun d!83047 () Bool)

(declare-fun e!318693 () Bool)

(assert (=> d!83047 e!318693))

(declare-fun c!64041 () Bool)

(assert (=> d!83047 (= c!64041 (and (is-Intermediate!5147 lt!251121) (undefined!5959 lt!251121)))))

(declare-fun e!318692 () SeekEntryResult!5147)

(assert (=> d!83047 (= lt!251121 e!318692)))

(declare-fun c!64042 () Bool)

(assert (=> d!83047 (= c!64042 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!251122 () (_ BitVec 64))

(assert (=> d!83047 (= lt!251122 (select (arr!16691 (array!34769 (store (arr!16691 a!3118) i!1132 k!1914) (size!17055 a!3118))) lt!251039))))

(assert (=> d!83047 (validMask!0 mask!3119)))

(assert (=> d!83047 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251039 (select (store (arr!16691 a!3118) i!1132 k!1914) j!142) (array!34769 (store (arr!16691 a!3118) i!1132 k!1914) (size!17055 a!3118)) mask!3119) lt!251121)))

(declare-fun b!552271 () Bool)

(declare-fun e!318691 () SeekEntryResult!5147)

(assert (=> b!552271 (= e!318691 (Intermediate!5147 false lt!251039 #b00000000000000000000000000000000))))

(declare-fun b!552272 () Bool)

(assert (=> b!552272 (= e!318691 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!251039 #b00000000000000000000000000000000 mask!3119) (select (store (arr!16691 a!3118) i!1132 k!1914) j!142) (array!34769 (store (arr!16691 a!3118) i!1132 k!1914) (size!17055 a!3118)) mask!3119))))

(declare-fun b!552273 () Bool)

(assert (=> b!552273 (= e!318693 (bvsge (x!51770 lt!251121) #b01111111111111111111111111111110))))

(declare-fun b!552274 () Bool)

(declare-fun e!318690 () Bool)

(assert (=> b!552274 (= e!318693 e!318690)))

(declare-fun res!344861 () Bool)

(assert (=> b!552274 (= res!344861 (and (is-Intermediate!5147 lt!251121) (not (undefined!5959 lt!251121)) (bvslt (x!51770 lt!251121) #b01111111111111111111111111111110) (bvsge (x!51770 lt!251121) #b00000000000000000000000000000000) (bvsge (x!51770 lt!251121) #b00000000000000000000000000000000)))))

(assert (=> b!552274 (=> (not res!344861) (not e!318690))))

(declare-fun b!552275 () Bool)

(assert (=> b!552275 (and (bvsge (index!22817 lt!251121) #b00000000000000000000000000000000) (bvslt (index!22817 lt!251121) (size!17055 (array!34769 (store (arr!16691 a!3118) i!1132 k!1914) (size!17055 a!3118)))))))

(declare-fun res!344862 () Bool)

(assert (=> b!552275 (= res!344862 (= (select (arr!16691 (array!34769 (store (arr!16691 a!3118) i!1132 k!1914) (size!17055 a!3118))) (index!22817 lt!251121)) (select (store (arr!16691 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!552275 (=> res!344862 e!318694)))

(assert (=> b!552275 (= e!318690 e!318694)))

(declare-fun b!552276 () Bool)

(assert (=> b!552276 (and (bvsge (index!22817 lt!251121) #b00000000000000000000000000000000) (bvslt (index!22817 lt!251121) (size!17055 (array!34769 (store (arr!16691 a!3118) i!1132 k!1914) (size!17055 a!3118)))))))

(assert (=> b!552276 (= e!318694 (= (select (arr!16691 (array!34769 (store (arr!16691 a!3118) i!1132 k!1914) (size!17055 a!3118))) (index!22817 lt!251121)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!552277 () Bool)

(assert (=> b!552277 (= e!318692 (Intermediate!5147 true lt!251039 #b00000000000000000000000000000000))))

(declare-fun b!552278 () Bool)

(assert (=> b!552278 (= e!318692 e!318691)))

(declare-fun c!64043 () Bool)

(assert (=> b!552278 (= c!64043 (or (= lt!251122 (select (store (arr!16691 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!251122 lt!251122) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!83047 c!64042) b!552277))

(assert (= (and d!83047 (not c!64042)) b!552278))

(assert (= (and b!552278 c!64043) b!552271))

(assert (= (and b!552278 (not c!64043)) b!552272))

(assert (= (and d!83047 c!64041) b!552273))

(assert (= (and d!83047 (not c!64041)) b!552274))

(assert (= (and b!552274 res!344861) b!552275))

(assert (= (and b!552275 (not res!344862)) b!552270))

(assert (= (and b!552270 (not res!344863)) b!552276))

(declare-fun m!529235 () Bool)

(assert (=> b!552272 m!529235))

(assert (=> b!552272 m!529235))

(assert (=> b!552272 m!529061))

(declare-fun m!529237 () Bool)

(assert (=> b!552272 m!529237))

(declare-fun m!529239 () Bool)

(assert (=> b!552276 m!529239))

(assert (=> b!552270 m!529239))

(assert (=> b!552275 m!529239))

(declare-fun m!529241 () Bool)

(assert (=> d!83047 m!529241))

(assert (=> d!83047 m!529083))

(assert (=> b!552031 d!83047))

(declare-fun d!83049 () Bool)

(declare-fun lt!251139 () (_ BitVec 32))

(declare-fun lt!251138 () (_ BitVec 32))

(assert (=> d!83049 (= lt!251139 (bvmul (bvxor lt!251138 (bvlshr lt!251138 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83049 (= lt!251138 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16691 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16691 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83049 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!344870 (let ((h!11805 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16691 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16691 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51776 (bvmul (bvxor h!11805 (bvlshr h!11805 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51776 (bvlshr x!51776 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!344870 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!344870 #b00000000000000000000000000000000))))))

(assert (=> d!83049 (= (toIndex!0 (select (store (arr!16691 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!251139 (bvlshr lt!251139 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!552031 d!83049))

(declare-fun d!83059 () Bool)

(declare-fun lt!251141 () (_ BitVec 32))

(declare-fun lt!251140 () (_ BitVec 32))

(assert (=> d!83059 (= lt!251141 (bvmul (bvxor lt!251140 (bvlshr lt!251140 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83059 (= lt!251140 ((_ extract 31 0) (bvand (bvxor (select (arr!16691 a!3118) j!142) (bvlshr (select (arr!16691 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83059 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!344870 (let ((h!11805 ((_ extract 31 0) (bvand (bvxor (select (arr!16691 a!3118) j!142) (bvlshr (select (arr!16691 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51776 (bvmul (bvxor h!11805 (bvlshr h!11805 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51776 (bvlshr x!51776 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!344870 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!344870 #b00000000000000000000000000000000))))))

(assert (=> d!83059 (= (toIndex!0 (select (arr!16691 a!3118) j!142) mask!3119) (bvand (bvxor lt!251141 (bvlshr lt!251141 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!552031 d!83059))

(declare-fun d!83061 () Bool)

(assert (=> d!83061 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50532 d!83061))

(declare-fun d!83065 () Bool)

(assert (=> d!83065 (= (array_inv!12465 a!3118) (bvsge (size!17055 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50532 d!83065))

(declare-fun d!83067 () Bool)

(declare-fun res!344882 () Bool)

(declare-fun e!318720 () Bool)

(assert (=> d!83067 (=> res!344882 e!318720)))

(assert (=> d!83067 (= res!344882 (bvsge j!142 (size!17055 a!3118)))))

(assert (=> d!83067 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!318720)))

(declare-fun b!552310 () Bool)

(declare-fun e!318719 () Bool)

(declare-fun call!32326 () Bool)

(assert (=> b!552310 (= e!318719 call!32326)))

(declare-fun b!552311 () Bool)

(assert (=> b!552311 (= e!318720 e!318719)))

(declare-fun c!64051 () Bool)

(assert (=> b!552311 (= c!64051 (validKeyInArray!0 (select (arr!16691 a!3118) j!142)))))

(declare-fun b!552312 () Bool)

(declare-fun e!318721 () Bool)

(assert (=> b!552312 (= e!318719 e!318721)))

(declare-fun lt!251155 () (_ BitVec 64))

(assert (=> b!552312 (= lt!251155 (select (arr!16691 a!3118) j!142))))

(declare-fun lt!251154 () Unit!17068)

(assert (=> b!552312 (= lt!251154 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!251155 j!142))))

(assert (=> b!552312 (arrayContainsKey!0 a!3118 lt!251155 #b00000000000000000000000000000000)))

(declare-fun lt!251156 () Unit!17068)

(assert (=> b!552312 (= lt!251156 lt!251154)))

(declare-fun res!344883 () Bool)

(assert (=> b!552312 (= res!344883 (= (seekEntryOrOpen!0 (select (arr!16691 a!3118) j!142) a!3118 mask!3119) (Found!5147 j!142)))))

(assert (=> b!552312 (=> (not res!344883) (not e!318721))))

(declare-fun bm!32323 () Bool)

(assert (=> bm!32323 (= call!32326 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!552313 () Bool)

(assert (=> b!552313 (= e!318721 call!32326)))

(assert (= (and d!83067 (not res!344882)) b!552311))

(assert (= (and b!552311 c!64051) b!552312))

(assert (= (and b!552311 (not c!64051)) b!552310))

(assert (= (and b!552312 res!344883) b!552313))

(assert (= (or b!552313 b!552310) bm!32323))

(assert (=> b!552311 m!529057))

(assert (=> b!552311 m!529057))

(assert (=> b!552311 m!529087))

(assert (=> b!552312 m!529057))

(declare-fun m!529263 () Bool)

(assert (=> b!552312 m!529263))

(declare-fun m!529265 () Bool)

(assert (=> b!552312 m!529265))

(assert (=> b!552312 m!529057))

(assert (=> b!552312 m!529079))

(declare-fun m!529267 () Bool)

(assert (=> bm!32323 m!529267))

(assert (=> b!552029 d!83067))

(declare-fun d!83069 () Bool)

(assert (=> d!83069 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!251168 () Unit!17068)

(declare-fun choose!38 (array!34768 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17068)

(assert (=> d!83069 (= lt!251168 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83069 (validMask!0 mask!3119)))

(assert (=> d!83069 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!251168)))

(declare-fun bs!17195 () Bool)

(assert (= bs!17195 d!83069))

(assert (=> bs!17195 m!529073))

(declare-fun m!529293 () Bool)

(assert (=> bs!17195 m!529293))

(assert (=> bs!17195 m!529083))

(assert (=> b!552029 d!83069))

(declare-fun d!83077 () Bool)

(assert (=> d!83077 (= (validKeyInArray!0 (select (arr!16691 a!3118) j!142)) (and (not (= (select (arr!16691 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16691 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!552035 d!83077))

(declare-fun d!83079 () Bool)

(declare-fun res!344890 () Bool)

(declare-fun e!318732 () Bool)

(assert (=> d!83079 (=> res!344890 e!318732)))

(assert (=> d!83079 (= res!344890 (= (select (arr!16691 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!83079 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!318732)))

(declare-fun b!552328 () Bool)

(declare-fun e!318733 () Bool)

(assert (=> b!552328 (= e!318732 e!318733)))

(declare-fun res!344891 () Bool)

(assert (=> b!552328 (=> (not res!344891) (not e!318733))))

(assert (=> b!552328 (= res!344891 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17055 a!3118)))))

(declare-fun b!552329 () Bool)

(assert (=> b!552329 (= e!318733 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83079 (not res!344890)) b!552328))

(assert (= (and b!552328 res!344891) b!552329))

(assert (=> d!83079 m!529109))

(declare-fun m!529295 () Bool)

(assert (=> b!552329 m!529295))

(assert (=> b!552030 d!83079))

(push 1)

(assert (not b!552311))

(assert (not d!83019))

(assert (not bm!32323))

(assert (not d!83005))

(assert (not b!552143))

(assert (not b!552073))

(assert (not d!83047))

(assert (not b!552263))

(assert (not b!552187))

(assert (not b!552149))

(assert (not bm!32315))

(assert (not d!83069))

(assert (not b!552272))

(assert (not d!83039))

(assert (not b!552077))

(assert (not b!552329))

(assert (not b!552312))

(assert (not b!552186))

(assert (not b!552075))

(assert (not bm!32306))

(check-sat)

(pop 1)

(push 1)

(check-sat)

