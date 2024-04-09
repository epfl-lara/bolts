; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50528 () Bool)

(assert start!50528)

(declare-fun b!551969 () Bool)

(declare-fun res!344718 () Bool)

(declare-fun e!318517 () Bool)

(assert (=> b!551969 (=> (not res!344718) (not e!318517))))

(declare-datatypes ((array!34764 0))(
  ( (array!34765 (arr!16689 (Array (_ BitVec 32) (_ BitVec 64))) (size!17053 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34764)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34764 (_ BitVec 32)) Bool)

(assert (=> b!551969 (= res!344718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!551970 () Bool)

(declare-fun res!344722 () Bool)

(assert (=> b!551970 (=> (not res!344722) (not e!318517))))

(declare-datatypes ((List!10822 0))(
  ( (Nil!10819) (Cons!10818 (h!11800 (_ BitVec 64)) (t!17058 List!10822)) )
))
(declare-fun arrayNoDuplicates!0 (array!34764 (_ BitVec 32) List!10822) Bool)

(assert (=> b!551970 (= res!344722 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10819))))

(declare-fun b!551971 () Bool)

(declare-fun res!344723 () Bool)

(declare-fun e!318515 () Bool)

(assert (=> b!551971 (=> (not res!344723) (not e!318515))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!551971 (= res!344723 (and (= (size!17053 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17053 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17053 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!551972 () Bool)

(declare-fun e!318514 () Bool)

(assert (=> b!551972 (= e!318517 e!318514)))

(declare-fun res!344716 () Bool)

(assert (=> b!551972 (=> (not res!344716) (not e!318514))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!251012 () (_ BitVec 32))

(declare-fun lt!251015 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5145 0))(
  ( (MissingZero!5145 (index!22807 (_ BitVec 32))) (Found!5145 (index!22808 (_ BitVec 32))) (Intermediate!5145 (undefined!5957 Bool) (index!22809 (_ BitVec 32)) (x!51768 (_ BitVec 32))) (Undefined!5145) (MissingVacant!5145 (index!22810 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34764 (_ BitVec 32)) SeekEntryResult!5145)

(assert (=> b!551972 (= res!344716 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251012 (select (arr!16689 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251015 (select (store (arr!16689 a!3118) i!1132 k!1914) j!142) (array!34765 (store (arr!16689 a!3118) i!1132 k!1914) (size!17053 a!3118)) mask!3119)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551972 (= lt!251015 (toIndex!0 (select (store (arr!16689 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!551972 (= lt!251012 (toIndex!0 (select (arr!16689 a!3118) j!142) mask!3119))))

(declare-fun res!344714 () Bool)

(assert (=> start!50528 (=> (not res!344714) (not e!318515))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50528 (= res!344714 (validMask!0 mask!3119))))

(assert (=> start!50528 e!318515))

(assert (=> start!50528 true))

(declare-fun array_inv!12463 (array!34764) Bool)

(assert (=> start!50528 (array_inv!12463 a!3118)))

(declare-fun b!551973 () Bool)

(declare-fun res!344720 () Bool)

(assert (=> b!551973 (=> (not res!344720) (not e!318515))))

(declare-fun arrayContainsKey!0 (array!34764 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551973 (= res!344720 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551974 () Bool)

(declare-fun res!344717 () Bool)

(assert (=> b!551974 (=> (not res!344717) (not e!318515))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551974 (= res!344717 (validKeyInArray!0 (select (arr!16689 a!3118) j!142)))))

(declare-fun b!551975 () Bool)

(assert (=> b!551975 (= e!318514 (not (or (bvslt mask!3119 #b00000000000000000000000000000000) (and (bvsge lt!251015 #b00000000000000000000000000000000) (bvslt lt!251015 (bvadd #b00000000000000000000000000000001 mask!3119))))))))

(declare-fun e!318513 () Bool)

(assert (=> b!551975 e!318513))

(declare-fun res!344715 () Bool)

(assert (=> b!551975 (=> (not res!344715) (not e!318513))))

(assert (=> b!551975 (= res!344715 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17064 0))(
  ( (Unit!17065) )
))
(declare-fun lt!251014 () Unit!17064)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34764 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17064)

(assert (=> b!551975 (= lt!251014 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!551976 () Bool)

(assert (=> b!551976 (= e!318515 e!318517)))

(declare-fun res!344721 () Bool)

(assert (=> b!551976 (=> (not res!344721) (not e!318517))))

(declare-fun lt!251013 () SeekEntryResult!5145)

(assert (=> b!551976 (= res!344721 (or (= lt!251013 (MissingZero!5145 i!1132)) (= lt!251013 (MissingVacant!5145 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34764 (_ BitVec 32)) SeekEntryResult!5145)

(assert (=> b!551976 (= lt!251013 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!551977 () Bool)

(assert (=> b!551977 (= e!318513 (= (seekEntryOrOpen!0 (select (arr!16689 a!3118) j!142) a!3118 mask!3119) (Found!5145 j!142)))))

(declare-fun b!551978 () Bool)

(declare-fun res!344719 () Bool)

(assert (=> b!551978 (=> (not res!344719) (not e!318515))))

(assert (=> b!551978 (= res!344719 (validKeyInArray!0 k!1914))))

(assert (= (and start!50528 res!344714) b!551971))

(assert (= (and b!551971 res!344723) b!551974))

(assert (= (and b!551974 res!344717) b!551978))

(assert (= (and b!551978 res!344719) b!551973))

(assert (= (and b!551973 res!344720) b!551976))

(assert (= (and b!551976 res!344721) b!551969))

(assert (= (and b!551969 res!344718) b!551970))

(assert (= (and b!551970 res!344722) b!551972))

(assert (= (and b!551972 res!344716) b!551975))

(assert (= (and b!551975 res!344715) b!551977))

(declare-fun m!528985 () Bool)

(assert (=> b!551976 m!528985))

(declare-fun m!528987 () Bool)

(assert (=> b!551974 m!528987))

(assert (=> b!551974 m!528987))

(declare-fun m!528989 () Bool)

(assert (=> b!551974 m!528989))

(assert (=> b!551977 m!528987))

(assert (=> b!551977 m!528987))

(declare-fun m!528991 () Bool)

(assert (=> b!551977 m!528991))

(declare-fun m!528993 () Bool)

(assert (=> b!551973 m!528993))

(declare-fun m!528995 () Bool)

(assert (=> b!551970 m!528995))

(declare-fun m!528997 () Bool)

(assert (=> start!50528 m!528997))

(declare-fun m!528999 () Bool)

(assert (=> start!50528 m!528999))

(assert (=> b!551972 m!528987))

(declare-fun m!529001 () Bool)

(assert (=> b!551972 m!529001))

(declare-fun m!529003 () Bool)

(assert (=> b!551972 m!529003))

(declare-fun m!529005 () Bool)

(assert (=> b!551972 m!529005))

(assert (=> b!551972 m!529003))

(declare-fun m!529007 () Bool)

(assert (=> b!551972 m!529007))

(assert (=> b!551972 m!529003))

(declare-fun m!529009 () Bool)

(assert (=> b!551972 m!529009))

(assert (=> b!551972 m!528987))

(declare-fun m!529011 () Bool)

(assert (=> b!551972 m!529011))

(assert (=> b!551972 m!528987))

(declare-fun m!529013 () Bool)

(assert (=> b!551975 m!529013))

(declare-fun m!529015 () Bool)

(assert (=> b!551975 m!529015))

(declare-fun m!529017 () Bool)

(assert (=> b!551978 m!529017))

(declare-fun m!529019 () Bool)

(assert (=> b!551969 m!529019))

(push 1)

(assert (not b!551974))

(assert (not b!551976))

(assert (not b!551975))

(assert (not b!551970))

(assert (not start!50528))

(assert (not b!551977))

(assert (not b!551969))

(assert (not b!551973))

(assert (not b!551978))

(assert (not b!551972))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!82995 () Bool)

(assert (=> d!82995 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!551978 d!82995))

(declare-fun d!82997 () Bool)

(declare-fun res!344788 () Bool)

(declare-fun e!318552 () Bool)

(assert (=> d!82997 (=> res!344788 e!318552)))

(assert (=> d!82997 (= res!344788 (= (select (arr!16689 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!82997 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!318552)))

(declare-fun b!552043 () Bool)

(declare-fun e!318553 () Bool)

(assert (=> b!552043 (= e!318552 e!318553)))

(declare-fun res!344789 () Bool)

(assert (=> b!552043 (=> (not res!344789) (not e!318553))))

(assert (=> b!552043 (= res!344789 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17053 a!3118)))))

(declare-fun b!552044 () Bool)

(assert (=> b!552044 (= e!318553 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82997 (not res!344788)) b!552043))

(assert (= (and b!552043 res!344789) b!552044))

(declare-fun m!529093 () Bool)

(assert (=> d!82997 m!529093))

(declare-fun m!529095 () Bool)

(assert (=> b!552044 m!529095))

(assert (=> b!551973 d!82997))

(declare-fun d!82999 () Bool)

(assert (=> d!82999 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50528 d!82999))

(declare-fun d!83007 () Bool)

(assert (=> d!83007 (= (array_inv!12463 a!3118) (bvsge (size!17053 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50528 d!83007))

(declare-fun b!552153 () Bool)

(declare-fun lt!251078 () SeekEntryResult!5145)

(assert (=> b!552153 (and (bvsge (index!22809 lt!251078) #b00000000000000000000000000000000) (bvslt (index!22809 lt!251078) (size!17053 a!3118)))))

(declare-fun res!344822 () Bool)

(assert (=> b!552153 (= res!344822 (= (select (arr!16689 a!3118) (index!22809 lt!251078)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318624 () Bool)

(assert (=> b!552153 (=> res!344822 e!318624)))

(declare-fun b!552154 () Bool)

(declare-fun e!318622 () SeekEntryResult!5145)

(assert (=> b!552154 (= e!318622 (Intermediate!5145 true lt!251012 #b00000000000000000000000000000000))))

(declare-fun b!552155 () Bool)

(declare-fun e!318621 () Bool)

(assert (=> b!552155 (= e!318621 (bvsge (x!51768 lt!251078) #b01111111111111111111111111111110))))

(declare-fun b!552156 () Bool)

(assert (=> b!552156 (and (bvsge (index!22809 lt!251078) #b00000000000000000000000000000000) (bvslt (index!22809 lt!251078) (size!17053 a!3118)))))

(declare-fun res!344821 () Bool)

(assert (=> b!552156 (= res!344821 (= (select (arr!16689 a!3118) (index!22809 lt!251078)) (select (arr!16689 a!3118) j!142)))))

(assert (=> b!552156 (=> res!344821 e!318624)))

(declare-fun e!318623 () Bool)

(assert (=> b!552156 (= e!318623 e!318624)))

(declare-fun d!83009 () Bool)

(assert (=> d!83009 e!318621))

(declare-fun c!64004 () Bool)

(assert (=> d!83009 (= c!64004 (and (is-Intermediate!5145 lt!251078) (undefined!5957 lt!251078)))))

(assert (=> d!83009 (= lt!251078 e!318622)))

(declare-fun c!64003 () Bool)

(assert (=> d!83009 (= c!64003 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!251077 () (_ BitVec 64))

(assert (=> d!83009 (= lt!251077 (select (arr!16689 a!3118) lt!251012))))

(assert (=> d!83009 (validMask!0 mask!3119)))

(assert (=> d!83009 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251012 (select (arr!16689 a!3118) j!142) a!3118 mask!3119) lt!251078)))

(declare-fun b!552157 () Bool)

(assert (=> b!552157 (and (bvsge (index!22809 lt!251078) #b00000000000000000000000000000000) (bvslt (index!22809 lt!251078) (size!17053 a!3118)))))

(assert (=> b!552157 (= e!318624 (= (select (arr!16689 a!3118) (index!22809 lt!251078)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!552158 () Bool)

(declare-fun e!318625 () SeekEntryResult!5145)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552158 (= e!318625 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!251012 #b00000000000000000000000000000000 mask!3119) (select (arr!16689 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!552159 () Bool)

(assert (=> b!552159 (= e!318625 (Intermediate!5145 false lt!251012 #b00000000000000000000000000000000))))

(declare-fun b!552160 () Bool)

(assert (=> b!552160 (= e!318622 e!318625)))

(declare-fun c!64002 () Bool)

(assert (=> b!552160 (= c!64002 (or (= lt!251077 (select (arr!16689 a!3118) j!142)) (= (bvadd lt!251077 lt!251077) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!552161 () Bool)

(assert (=> b!552161 (= e!318621 e!318623)))

(declare-fun res!344820 () Bool)

(assert (=> b!552161 (= res!344820 (and (is-Intermediate!5145 lt!251078) (not (undefined!5957 lt!251078)) (bvslt (x!51768 lt!251078) #b01111111111111111111111111111110) (bvsge (x!51768 lt!251078) #b00000000000000000000000000000000) (bvsge (x!51768 lt!251078) #b00000000000000000000000000000000)))))

(assert (=> b!552161 (=> (not res!344820) (not e!318623))))

(assert (= (and d!83009 c!64003) b!552154))

(assert (= (and d!83009 (not c!64003)) b!552160))

(assert (= (and b!552160 c!64002) b!552159))

(assert (= (and b!552160 (not c!64002)) b!552158))

(assert (= (and d!83009 c!64004) b!552155))

(assert (= (and d!83009 (not c!64004)) b!552161))

(assert (= (and b!552161 res!344820) b!552156))

(assert (= (and b!552156 (not res!344821)) b!552153))

(assert (= (and b!552153 (not res!344822)) b!552157))

(declare-fun m!529173 () Bool)

(assert (=> b!552153 m!529173))

(assert (=> b!552156 m!529173))

(declare-fun m!529175 () Bool)

(assert (=> d!83009 m!529175))

(assert (=> d!83009 m!528997))

(assert (=> b!552157 m!529173))

(declare-fun m!529177 () Bool)

(assert (=> b!552158 m!529177))

(assert (=> b!552158 m!529177))

(assert (=> b!552158 m!528987))

(declare-fun m!529179 () Bool)

(assert (=> b!552158 m!529179))

(assert (=> b!551972 d!83009))

(declare-fun b!552162 () Bool)

(declare-fun lt!251080 () SeekEntryResult!5145)

(assert (=> b!552162 (and (bvsge (index!22809 lt!251080) #b00000000000000000000000000000000) (bvslt (index!22809 lt!251080) (size!17053 (array!34765 (store (arr!16689 a!3118) i!1132 k!1914) (size!17053 a!3118)))))))

(declare-fun res!344825 () Bool)

(assert (=> b!552162 (= res!344825 (= (select (arr!16689 (array!34765 (store (arr!16689 a!3118) i!1132 k!1914) (size!17053 a!3118))) (index!22809 lt!251080)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318629 () Bool)

(assert (=> b!552162 (=> res!344825 e!318629)))

(declare-fun b!552163 () Bool)

(declare-fun e!318627 () SeekEntryResult!5145)

(assert (=> b!552163 (= e!318627 (Intermediate!5145 true lt!251015 #b00000000000000000000000000000000))))

(declare-fun b!552164 () Bool)

(declare-fun e!318626 () Bool)

(assert (=> b!552164 (= e!318626 (bvsge (x!51768 lt!251080) #b01111111111111111111111111111110))))

(declare-fun b!552165 () Bool)

(assert (=> b!552165 (and (bvsge (index!22809 lt!251080) #b00000000000000000000000000000000) (bvslt (index!22809 lt!251080) (size!17053 (array!34765 (store (arr!16689 a!3118) i!1132 k!1914) (size!17053 a!3118)))))))

(declare-fun res!344824 () Bool)

(assert (=> b!552165 (= res!344824 (= (select (arr!16689 (array!34765 (store (arr!16689 a!3118) i!1132 k!1914) (size!17053 a!3118))) (index!22809 lt!251080)) (select (store (arr!16689 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!552165 (=> res!344824 e!318629)))

(declare-fun e!318628 () Bool)

(assert (=> b!552165 (= e!318628 e!318629)))

(declare-fun d!83023 () Bool)

(assert (=> d!83023 e!318626))

(declare-fun c!64007 () Bool)

(assert (=> d!83023 (= c!64007 (and (is-Intermediate!5145 lt!251080) (undefined!5957 lt!251080)))))

(assert (=> d!83023 (= lt!251080 e!318627)))

(declare-fun c!64006 () Bool)

(assert (=> d!83023 (= c!64006 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!251079 () (_ BitVec 64))

(assert (=> d!83023 (= lt!251079 (select (arr!16689 (array!34765 (store (arr!16689 a!3118) i!1132 k!1914) (size!17053 a!3118))) lt!251015))))

(assert (=> d!83023 (validMask!0 mask!3119)))

(assert (=> d!83023 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251015 (select (store (arr!16689 a!3118) i!1132 k!1914) j!142) (array!34765 (store (arr!16689 a!3118) i!1132 k!1914) (size!17053 a!3118)) mask!3119) lt!251080)))

(declare-fun b!552166 () Bool)

(assert (=> b!552166 (and (bvsge (index!22809 lt!251080) #b00000000000000000000000000000000) (bvslt (index!22809 lt!251080) (size!17053 (array!34765 (store (arr!16689 a!3118) i!1132 k!1914) (size!17053 a!3118)))))))

(assert (=> b!552166 (= e!318629 (= (select (arr!16689 (array!34765 (store (arr!16689 a!3118) i!1132 k!1914) (size!17053 a!3118))) (index!22809 lt!251080)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!552167 () Bool)

(declare-fun e!318630 () SeekEntryResult!5145)

(assert (=> b!552167 (= e!318630 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!251015 #b00000000000000000000000000000000 mask!3119) (select (store (arr!16689 a!3118) i!1132 k!1914) j!142) (array!34765 (store (arr!16689 a!3118) i!1132 k!1914) (size!17053 a!3118)) mask!3119))))

(declare-fun b!552168 () Bool)

(assert (=> b!552168 (= e!318630 (Intermediate!5145 false lt!251015 #b00000000000000000000000000000000))))

(declare-fun b!552169 () Bool)

(assert (=> b!552169 (= e!318627 e!318630)))

(declare-fun c!64005 () Bool)

(assert (=> b!552169 (= c!64005 (or (= lt!251079 (select (store (arr!16689 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!251079 lt!251079) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!552170 () Bool)

(assert (=> b!552170 (= e!318626 e!318628)))

(declare-fun res!344823 () Bool)

(assert (=> b!552170 (= res!344823 (and (is-Intermediate!5145 lt!251080) (not (undefined!5957 lt!251080)) (bvslt (x!51768 lt!251080) #b01111111111111111111111111111110) (bvsge (x!51768 lt!251080) #b00000000000000000000000000000000) (bvsge (x!51768 lt!251080) #b00000000000000000000000000000000)))))

(assert (=> b!552170 (=> (not res!344823) (not e!318628))))

(assert (= (and d!83023 c!64006) b!552163))

(assert (= (and d!83023 (not c!64006)) b!552169))

(assert (= (and b!552169 c!64005) b!552168))

(assert (= (and b!552169 (not c!64005)) b!552167))

(assert (= (and d!83023 c!64007) b!552164))

(assert (= (and d!83023 (not c!64007)) b!552170))

(assert (= (and b!552170 res!344823) b!552165))

(assert (= (and b!552165 (not res!344824)) b!552162))

(assert (= (and b!552162 (not res!344825)) b!552166))

(declare-fun m!529181 () Bool)

(assert (=> b!552162 m!529181))

(assert (=> b!552165 m!529181))

(declare-fun m!529183 () Bool)

(assert (=> d!83023 m!529183))

(assert (=> d!83023 m!528997))

(assert (=> b!552166 m!529181))

(declare-fun m!529185 () Bool)

(assert (=> b!552167 m!529185))

(assert (=> b!552167 m!529185))

(assert (=> b!552167 m!529003))

(declare-fun m!529187 () Bool)

(assert (=> b!552167 m!529187))

(assert (=> b!551972 d!83023))

(declare-fun d!83025 () Bool)

(declare-fun lt!251092 () (_ BitVec 32))

(declare-fun lt!251091 () (_ BitVec 32))

(assert (=> d!83025 (= lt!251092 (bvmul (bvxor lt!251091 (bvlshr lt!251091 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83025 (= lt!251091 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16689 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16689 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83025 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!344826 (let ((h!11803 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16689 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16689 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51772 (bvmul (bvxor h!11803 (bvlshr h!11803 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51772 (bvlshr x!51772 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!344826 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!344826 #b00000000000000000000000000000000))))))

(assert (=> d!83025 (= (toIndex!0 (select (store (arr!16689 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!251092 (bvlshr lt!251092 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!551972 d!83025))

(declare-fun d!83033 () Bool)

(declare-fun lt!251094 () (_ BitVec 32))

(declare-fun lt!251093 () (_ BitVec 32))

(assert (=> d!83033 (= lt!251094 (bvmul (bvxor lt!251093 (bvlshr lt!251093 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83033 (= lt!251093 ((_ extract 31 0) (bvand (bvxor (select (arr!16689 a!3118) j!142) (bvlshr (select (arr!16689 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83033 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!344826 (let ((h!11803 ((_ extract 31 0) (bvand (bvxor (select (arr!16689 a!3118) j!142) (bvlshr (select (arr!16689 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51772 (bvmul (bvxor h!11803 (bvlshr h!11803 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51772 (bvlshr x!51772 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!344826 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!344826 #b00000000000000000000000000000000))))))

(assert (=> d!83033 (= (toIndex!0 (select (arr!16689 a!3118) j!142) mask!3119) (bvand (bvxor lt!251094 (bvlshr lt!251094 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!551972 d!83033))

(declare-fun d!83035 () Bool)

(declare-fun lt!251115 () SeekEntryResult!5145)

(assert (=> d!83035 (and (or (is-Undefined!5145 lt!251115) (not (is-Found!5145 lt!251115)) (and (bvsge (index!22808 lt!251115) #b00000000000000000000000000000000) (bvslt (index!22808 lt!251115) (size!17053 a!3118)))) (or (is-Undefined!5145 lt!251115) (is-Found!5145 lt!251115) (not (is-MissingZero!5145 lt!251115)) (and (bvsge (index!22807 lt!251115) #b00000000000000000000000000000000) (bvslt (index!22807 lt!251115) (size!17053 a!3118)))) (or (is-Undefined!5145 lt!251115) (is-Found!5145 lt!251115) (is-MissingZero!5145 lt!251115) (not (is-MissingVacant!5145 lt!251115)) (and (bvsge (index!22810 lt!251115) #b00000000000000000000000000000000) (bvslt (index!22810 lt!251115) (size!17053 a!3118)))) (or (is-Undefined!5145 lt!251115) (ite (is-Found!5145 lt!251115) (= (select (arr!16689 a!3118) (index!22808 lt!251115)) (select (arr!16689 a!3118) j!142)) (ite (is-MissingZero!5145 lt!251115) (= (select (arr!16689 a!3118) (index!22807 lt!251115)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5145 lt!251115) (= (select (arr!16689 a!3118) (index!22810 lt!251115)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!318678 () SeekEntryResult!5145)

(assert (=> d!83035 (= lt!251115 e!318678)))

(declare-fun c!64034 () Bool)

(declare-fun lt!251116 () SeekEntryResult!5145)

(assert (=> d!83035 (= c!64034 (and (is-Intermediate!5145 lt!251116) (undefined!5957 lt!251116)))))

(assert (=> d!83035 (= lt!251116 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16689 a!3118) j!142) mask!3119) (select (arr!16689 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83035 (validMask!0 mask!3119)))

(assert (=> d!83035 (= (seekEntryOrOpen!0 (select (arr!16689 a!3118) j!142) a!3118 mask!3119) lt!251115)))

(declare-fun b!552246 () Bool)

(declare-fun c!64033 () Bool)

(declare-fun lt!251114 () (_ BitVec 64))

(assert (=> b!552246 (= c!64033 (= lt!251114 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318679 () SeekEntryResult!5145)

(declare-fun e!318677 () SeekEntryResult!5145)

(assert (=> b!552246 (= e!318679 e!318677)))

(declare-fun b!552247 () Bool)

(assert (=> b!552247 (= e!318677 (MissingZero!5145 (index!22809 lt!251116)))))

(declare-fun b!552248 () Bool)

(assert (=> b!552248 (= e!318679 (Found!5145 (index!22809 lt!251116)))))

(declare-fun b!552249 () Bool)

(assert (=> b!552249 (= e!318678 Undefined!5145)))

(declare-fun b!552250 () Bool)

(assert (=> b!552250 (= e!318678 e!318679)))

(assert (=> b!552250 (= lt!251114 (select (arr!16689 a!3118) (index!22809 lt!251116)))))

(declare-fun c!64032 () Bool)

(assert (=> b!552250 (= c!64032 (= lt!251114 (select (arr!16689 a!3118) j!142)))))

(declare-fun b!552251 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34764 (_ BitVec 32)) SeekEntryResult!5145)

(assert (=> b!552251 (= e!318677 (seekKeyOrZeroReturnVacant!0 (x!51768 lt!251116) (index!22809 lt!251116) (index!22809 lt!251116) (select (arr!16689 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!83035 c!64034) b!552249))

(assert (= (and d!83035 (not c!64034)) b!552250))

(assert (= (and b!552250 c!64032) b!552248))

(assert (= (and b!552250 (not c!64032)) b!552246))

(assert (= (and b!552246 c!64033) b!552247))

(assert (= (and b!552246 (not c!64033)) b!552251))

(declare-fun m!529205 () Bool)

(assert (=> d!83035 m!529205))

(assert (=> d!83035 m!529001))

(assert (=> d!83035 m!528987))

(declare-fun m!529209 () Bool)

(assert (=> d!83035 m!529209))

(declare-fun m!529211 () Bool)

(assert (=> d!83035 m!529211))

(assert (=> d!83035 m!528987))

(assert (=> d!83035 m!529001))

(declare-fun m!529213 () Bool)

(assert (=> d!83035 m!529213))

(assert (=> d!83035 m!528997))

(declare-fun m!529215 () Bool)

(assert (=> b!552250 m!529215))

(assert (=> b!552251 m!528987))

(declare-fun m!529217 () Bool)

(assert (=> b!552251 m!529217))

(assert (=> b!551977 d!83035))

(declare-fun b!552289 () Bool)

(declare-fun e!318704 () Bool)

(declare-fun call!32321 () Bool)

(assert (=> b!552289 (= e!318704 call!32321)))

(declare-fun b!552290 () Bool)

(declare-fun e!318705 () Bool)

(declare-fun e!318706 () Bool)

(assert (=> b!552290 (= e!318705 e!318706)))

(declare-fun res!344871 () Bool)

(assert (=> b!552290 (=> (not res!344871) (not e!318706))))

(declare-fun e!318703 () Bool)

(assert (=> b!552290 (= res!344871 (not e!318703))))

(declare-fun res!344872 () Bool)

(assert (=> b!552290 (=> (not res!344872) (not e!318703))))

(assert (=> b!552290 (= res!344872 (validKeyInArray!0 (select (arr!16689 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!552292 () Bool)

(assert (=> b!552292 (= e!318704 call!32321)))

(declare-fun b!552293 () Bool)

(declare-fun contains!2848 (List!10822 (_ BitVec 64)) Bool)

(assert (=> b!552293 (= e!318703 (contains!2848 Nil!10819 (select (arr!16689 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32318 () Bool)

(declare-fun c!64046 () Bool)

(assert (=> bm!32318 (= call!32321 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64046 (Cons!10818 (select (arr!16689 a!3118) #b00000000000000000000000000000000) Nil!10819) Nil!10819)))))

(declare-fun d!83043 () Bool)

(declare-fun res!344873 () Bool)

(assert (=> d!83043 (=> res!344873 e!318705)))

(assert (=> d!83043 (= res!344873 (bvsge #b00000000000000000000000000000000 (size!17053 a!3118)))))

(assert (=> d!83043 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10819) e!318705)))

(declare-fun b!552291 () Bool)

(assert (=> b!552291 (= e!318706 e!318704)))

(assert (=> b!552291 (= c!64046 (validKeyInArray!0 (select (arr!16689 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!83043 (not res!344873)) b!552290))

(assert (= (and b!552290 res!344872) b!552293))

(assert (= (and b!552290 res!344871) b!552291))

(assert (= (and b!552291 c!64046) b!552289))

(assert (= (and b!552291 (not c!64046)) b!552292))

(assert (= (or b!552289 b!552292) bm!32318))

(assert (=> b!552290 m!529093))

(assert (=> b!552290 m!529093))

(declare-fun m!529243 () Bool)

(assert (=> b!552290 m!529243))

(assert (=> b!552293 m!529093))

(assert (=> b!552293 m!529093))

(declare-fun m!529245 () Bool)

(assert (=> b!552293 m!529245))

(assert (=> bm!32318 m!529093))

(declare-fun m!529251 () Bool)

(assert (=> bm!32318 m!529251))

(assert (=> b!552291 m!529093))

(assert (=> b!552291 m!529093))

(assert (=> b!552291 m!529243))

(assert (=> b!551970 d!83043))

(declare-fun b!552306 () Bool)

(declare-fun e!318716 () Bool)

(declare-fun call!32325 () Bool)

(assert (=> b!552306 (= e!318716 call!32325)))

(declare-fun b!552307 () Bool)

(declare-fun e!318717 () Bool)

(assert (=> b!552307 (= e!318716 e!318717)))

(declare-fun lt!251152 () (_ BitVec 64))

(assert (=> b!552307 (= lt!251152 (select (arr!16689 a!3118) j!142))))

(declare-fun lt!251153 () Unit!17064)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34764 (_ BitVec 64) (_ BitVec 32)) Unit!17064)

(assert (=> b!552307 (= lt!251153 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!251152 j!142))))

(assert (=> b!552307 (arrayContainsKey!0 a!3118 lt!251152 #b00000000000000000000000000000000)))

(declare-fun lt!251151 () Unit!17064)

(assert (=> b!552307 (= lt!251151 lt!251153)))

(declare-fun res!344880 () Bool)

(assert (=> b!552307 (= res!344880 (= (seekEntryOrOpen!0 (select (arr!16689 a!3118) j!142) a!3118 mask!3119) (Found!5145 j!142)))))

(assert (=> b!552307 (=> (not res!344880) (not e!318717))))

(declare-fun b!552308 () Bool)

(assert (=> b!552308 (= e!318717 call!32325)))

(declare-fun b!552309 () Bool)

(declare-fun e!318718 () Bool)

(assert (=> b!552309 (= e!318718 e!318716)))

(declare-fun c!64050 () Bool)

(assert (=> b!552309 (= c!64050 (validKeyInArray!0 (select (arr!16689 a!3118) j!142)))))

(declare-fun d!83055 () Bool)

(declare-fun res!344881 () Bool)

(assert (=> d!83055 (=> res!344881 e!318718)))

(assert (=> d!83055 (= res!344881 (bvsge j!142 (size!17053 a!3118)))))

(assert (=> d!83055 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!318718)))

(declare-fun bm!32322 () Bool)

(assert (=> bm!32322 (= call!32325 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(assert (= (and d!83055 (not res!344881)) b!552309))

(assert (= (and b!552309 c!64050) b!552307))

(assert (= (and b!552309 (not c!64050)) b!552306))

(assert (= (and b!552307 res!344880) b!552308))

(assert (= (or b!552308 b!552306) bm!32322))

(assert (=> b!552307 m!528987))

(declare-fun m!529257 () Bool)

(assert (=> b!552307 m!529257))

(declare-fun m!529259 () Bool)

(assert (=> b!552307 m!529259))

(assert (=> b!552307 m!528987))

(assert (=> b!552307 m!528991))

(assert (=> b!552309 m!528987))

(assert (=> b!552309 m!528987))

(assert (=> b!552309 m!528989))

(declare-fun m!529261 () Bool)

(assert (=> bm!32322 m!529261))

(assert (=> b!551975 d!83055))

(declare-fun d!83063 () Bool)

(assert (=> d!83063 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!251159 () Unit!17064)

(declare-fun choose!38 (array!34764 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17064)

(assert (=> d!83063 (= lt!251159 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83063 (validMask!0 mask!3119)))

(assert (=> d!83063 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!251159)))

(declare-fun bs!17194 () Bool)

(assert (= bs!17194 d!83063))

(assert (=> bs!17194 m!529013))

(declare-fun m!529269 () Bool)

(assert (=> bs!17194 m!529269))

(assert (=> bs!17194 m!528997))

(assert (=> b!551975 d!83063))

(declare-fun d!83071 () Bool)

(declare-fun lt!251161 () SeekEntryResult!5145)

(assert (=> d!83071 (and (or (is-Undefined!5145 lt!251161) (not (is-Found!5145 lt!251161)) (and (bvsge (index!22808 lt!251161) #b00000000000000000000000000000000) (bvslt (index!22808 lt!251161) (size!17053 a!3118)))) (or (is-Undefined!5145 lt!251161) (is-Found!5145 lt!251161) (not (is-MissingZero!5145 lt!251161)) (and (bvsge (index!22807 lt!251161) #b00000000000000000000000000000000) (bvslt (index!22807 lt!251161) (size!17053 a!3118)))) (or (is-Undefined!5145 lt!251161) (is-Found!5145 lt!251161) (is-MissingZero!5145 lt!251161) (not (is-MissingVacant!5145 lt!251161)) (and (bvsge (index!22810 lt!251161) #b00000000000000000000000000000000) (bvslt (index!22810 lt!251161) (size!17053 a!3118)))) (or (is-Undefined!5145 lt!251161) (ite (is-Found!5145 lt!251161) (= (select (arr!16689 a!3118) (index!22808 lt!251161)) k!1914) (ite (is-MissingZero!5145 lt!251161) (= (select (arr!16689 a!3118) (index!22807 lt!251161)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5145 lt!251161) (= (select (arr!16689 a!3118) (index!22810 lt!251161)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!318723 () SeekEntryResult!5145)

(assert (=> d!83071 (= lt!251161 e!318723)))

(declare-fun c!64054 () Bool)

(declare-fun lt!251162 () SeekEntryResult!5145)

(assert (=> d!83071 (= c!64054 (and (is-Intermediate!5145 lt!251162) (undefined!5957 lt!251162)))))

(assert (=> d!83071 (= lt!251162 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!83071 (validMask!0 mask!3119)))

(assert (=> d!83071 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!251161)))

(declare-fun b!552314 () Bool)

(declare-fun c!64053 () Bool)

(declare-fun lt!251160 () (_ BitVec 64))

(assert (=> b!552314 (= c!64053 (= lt!251160 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!318724 () SeekEntryResult!5145)

(declare-fun e!318722 () SeekEntryResult!5145)

(assert (=> b!552314 (= e!318724 e!318722)))

(declare-fun b!552315 () Bool)

(assert (=> b!552315 (= e!318722 (MissingZero!5145 (index!22809 lt!251162)))))

(declare-fun b!552316 () Bool)

(assert (=> b!552316 (= e!318724 (Found!5145 (index!22809 lt!251162)))))

(declare-fun b!552317 () Bool)

(assert (=> b!552317 (= e!318723 Undefined!5145)))

(declare-fun b!552318 () Bool)

(assert (=> b!552318 (= e!318723 e!318724)))

(assert (=> b!552318 (= lt!251160 (select (arr!16689 a!3118) (index!22809 lt!251162)))))

(declare-fun c!64052 () Bool)

(assert (=> b!552318 (= c!64052 (= lt!251160 k!1914))))

(declare-fun b!552319 () Bool)

(assert (=> b!552319 (= e!318722 (seekKeyOrZeroReturnVacant!0 (x!51768 lt!251162) (index!22809 lt!251162) (index!22809 lt!251162) k!1914 a!3118 mask!3119))))

(assert (= (and d!83071 c!64054) b!552317))

(assert (= (and d!83071 (not c!64054)) b!552318))

(assert (= (and b!552318 c!64052) b!552316))

(assert (= (and b!552318 (not c!64052)) b!552314))

(assert (= (and b!552314 c!64053) b!552315))

(assert (= (and b!552314 (not c!64053)) b!552319))

(declare-fun m!529271 () Bool)

(assert (=> d!83071 m!529271))

(declare-fun m!529273 () Bool)

(assert (=> d!83071 m!529273))

(declare-fun m!529275 () Bool)

(assert (=> d!83071 m!529275))

(declare-fun m!529277 () Bool)

(assert (=> d!83071 m!529277))

(assert (=> d!83071 m!529273))

(declare-fun m!529279 () Bool)

(assert (=> d!83071 m!529279))

(assert (=> d!83071 m!528997))

(declare-fun m!529281 () Bool)

(assert (=> b!552318 m!529281))

(declare-fun m!529283 () Bool)

(assert (=> b!552319 m!529283))

(assert (=> b!551976 d!83071))

(declare-fun d!83073 () Bool)

(assert (=> d!83073 (= (validKeyInArray!0 (select (arr!16689 a!3118) j!142)) (and (not (= (select (arr!16689 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16689 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!551974 d!83073))

(declare-fun b!552320 () Bool)

(declare-fun e!318725 () Bool)

(declare-fun call!32327 () Bool)

(assert (=> b!552320 (= e!318725 call!32327)))

(declare-fun b!552321 () Bool)

(declare-fun e!318726 () Bool)

(assert (=> b!552321 (= e!318725 e!318726)))

(declare-fun lt!251164 () (_ BitVec 64))

(assert (=> b!552321 (= lt!251164 (select (arr!16689 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!251165 () Unit!17064)

(assert (=> b!552321 (= lt!251165 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!251164 #b00000000000000000000000000000000))))

(assert (=> b!552321 (arrayContainsKey!0 a!3118 lt!251164 #b00000000000000000000000000000000)))

(declare-fun lt!251163 () Unit!17064)

(assert (=> b!552321 (= lt!251163 lt!251165)))

(declare-fun res!344884 () Bool)

(assert (=> b!552321 (= res!344884 (= (seekEntryOrOpen!0 (select (arr!16689 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5145 #b00000000000000000000000000000000)))))

(assert (=> b!552321 (=> (not res!344884) (not e!318726))))

(declare-fun b!552322 () Bool)

(assert (=> b!552322 (= e!318726 call!32327)))

(declare-fun b!552323 () Bool)

(declare-fun e!318727 () Bool)

(assert (=> b!552323 (= e!318727 e!318725)))

(declare-fun c!64055 () Bool)

(assert (=> b!552323 (= c!64055 (validKeyInArray!0 (select (arr!16689 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!83075 () Bool)

(declare-fun res!344885 () Bool)

(assert (=> d!83075 (=> res!344885 e!318727)))

(assert (=> d!83075 (= res!344885 (bvsge #b00000000000000000000000000000000 (size!17053 a!3118)))))

(assert (=> d!83075 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!318727)))

(declare-fun bm!32324 () Bool)

(assert (=> bm!32324 (= call!32327 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(assert (= (and d!83075 (not res!344885)) b!552323))

(assert (= (and b!552323 c!64055) b!552321))

(assert (= (and b!552323 (not c!64055)) b!552320))

(assert (= (and b!552321 res!344884) b!552322))

(assert (= (or b!552322 b!552320) bm!32324))

(assert (=> b!552321 m!529093))

(declare-fun m!529285 () Bool)

(assert (=> b!552321 m!529285))

(declare-fun m!529287 () Bool)

(assert (=> b!552321 m!529287))

(assert (=> b!552321 m!529093))

(declare-fun m!529289 () Bool)

(assert (=> b!552321 m!529289))

(assert (=> b!552323 m!529093))

(assert (=> b!552323 m!529093))

(assert (=> b!552323 m!529243))

(declare-fun m!529291 () Bool)

(assert (=> bm!32324 m!529291))

(assert (=> b!551969 d!83075))

(push 1)

(assert (not b!552321))

(assert (not d!83009))

(assert (not b!552291))

(assert (not b!552319))

(assert (not bm!32318))

(assert (not bm!32322))

(assert (not b!552158))

(assert (not b!552309))

(assert (not d!83063))

(assert (not bm!32324))

(assert (not b!552044))

(assert (not b!552323))

(assert (not b!552167))

(assert (not d!83071))

(assert (not b!552290))

(assert (not d!83023))

(assert (not b!552251))

(assert (not b!552307))

(assert (not b!552293))

(assert (not d!83035))

(check-sat)

(pop 1)

(push 1)

(check-sat)

