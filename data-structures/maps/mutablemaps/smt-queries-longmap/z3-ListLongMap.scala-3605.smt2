; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49638 () Bool)

(assert start!49638)

(declare-fun b!545888 () Bool)

(declare-fun res!339974 () Bool)

(declare-fun e!315512 () Bool)

(assert (=> b!545888 (=> (not res!339974) (not e!315512))))

(declare-datatypes ((array!34407 0))(
  ( (array!34408 (arr!16528 (Array (_ BitVec 32) (_ BitVec 64))) (size!16892 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34407)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34407 (_ BitVec 32)) Bool)

(assert (=> b!545888 (= res!339974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!545889 () Bool)

(declare-fun e!315517 () Bool)

(declare-fun e!315511 () Bool)

(assert (=> b!545889 (= e!315517 e!315511)))

(declare-fun res!339967 () Bool)

(assert (=> b!545889 (=> (not res!339967) (not e!315511))))

(declare-datatypes ((SeekEntryResult!4993 0))(
  ( (MissingZero!4993 (index!22196 (_ BitVec 32))) (Found!4993 (index!22197 (_ BitVec 32))) (Intermediate!4993 (undefined!5805 Bool) (index!22198 (_ BitVec 32)) (x!51148 (_ BitVec 32))) (Undefined!4993) (MissingVacant!4993 (index!22199 (_ BitVec 32))) )
))
(declare-fun lt!249132 () SeekEntryResult!4993)

(declare-fun lt!249136 () SeekEntryResult!4993)

(declare-fun lt!249133 () SeekEntryResult!4993)

(assert (=> b!545889 (= res!339967 (and (= lt!249133 lt!249132) (= lt!249136 lt!249133)))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun lt!249139 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34407 (_ BitVec 32)) SeekEntryResult!4993)

(assert (=> b!545889 (= lt!249133 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249139 (select (arr!16528 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545890 () Bool)

(declare-fun res!339973 () Bool)

(assert (=> b!545890 (=> (not res!339973) (not e!315512))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!545890 (= res!339973 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16892 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16892 a!3154)) (= (select (arr!16528 a!3154) resIndex!32) (select (arr!16528 a!3154) j!147))))))

(declare-fun res!339966 () Bool)

(declare-fun e!315513 () Bool)

(assert (=> start!49638 (=> (not res!339966) (not e!315513))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49638 (= res!339966 (validMask!0 mask!3216))))

(assert (=> start!49638 e!315513))

(assert (=> start!49638 true))

(declare-fun array_inv!12302 (array!34407) Bool)

(assert (=> start!49638 (array_inv!12302 a!3154)))

(declare-fun b!545891 () Bool)

(declare-fun res!339970 () Bool)

(assert (=> b!545891 (=> (not res!339970) (not e!315513))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!545891 (= res!339970 (validKeyInArray!0 (select (arr!16528 a!3154) j!147)))))

(declare-fun b!545892 () Bool)

(declare-fun e!315516 () Bool)

(assert (=> b!545892 (= e!315512 e!315516)))

(declare-fun res!339976 () Bool)

(assert (=> b!545892 (=> (not res!339976) (not e!315516))))

(declare-fun lt!249135 () SeekEntryResult!4993)

(assert (=> b!545892 (= res!339976 (= lt!249135 lt!249132))))

(assert (=> b!545892 (= lt!249132 (Intermediate!4993 false resIndex!32 resX!32))))

(assert (=> b!545892 (= lt!249135 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16528 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545893 () Bool)

(assert (=> b!545893 (= e!315513 e!315512)))

(declare-fun res!339971 () Bool)

(assert (=> b!545893 (=> (not res!339971) (not e!315512))))

(declare-fun lt!249137 () SeekEntryResult!4993)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!545893 (= res!339971 (or (= lt!249137 (MissingZero!4993 i!1153)) (= lt!249137 (MissingVacant!4993 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34407 (_ BitVec 32)) SeekEntryResult!4993)

(assert (=> b!545893 (= lt!249137 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!545894 () Bool)

(declare-fun e!315515 () Bool)

(assert (=> b!545894 (= e!315516 e!315515)))

(declare-fun res!339977 () Bool)

(assert (=> b!545894 (=> (not res!339977) (not e!315515))))

(assert (=> b!545894 (= res!339977 (and (= lt!249136 lt!249135) (not (= (select (arr!16528 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16528 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16528 a!3154) index!1177) (select (arr!16528 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545894 (= lt!249136 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16528 a!3154) j!147) mask!3216) (select (arr!16528 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545895 () Bool)

(declare-fun res!339965 () Bool)

(assert (=> b!545895 (=> (not res!339965) (not e!315512))))

(declare-datatypes ((List!10700 0))(
  ( (Nil!10697) (Cons!10696 (h!11660 (_ BitVec 64)) (t!16936 List!10700)) )
))
(declare-fun arrayNoDuplicates!0 (array!34407 (_ BitVec 32) List!10700) Bool)

(assert (=> b!545895 (= res!339965 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10697))))

(declare-fun b!545896 () Bool)

(assert (=> b!545896 (= e!315515 e!315517)))

(declare-fun res!339969 () Bool)

(assert (=> b!545896 (=> (not res!339969) (not e!315517))))

(assert (=> b!545896 (= res!339969 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!249139 #b00000000000000000000000000000000) (bvslt lt!249139 (size!16892 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545896 (= lt!249139 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!545897 () Bool)

(declare-fun res!339975 () Bool)

(assert (=> b!545897 (=> (not res!339975) (not e!315513))))

(assert (=> b!545897 (= res!339975 (validKeyInArray!0 k0!1998))))

(declare-fun lt!249134 () (_ BitVec 64))

(declare-fun b!545898 () Bool)

(declare-fun lt!249138 () array!34407)

(assert (=> b!545898 (= e!315511 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 lt!249134 lt!249138 mask!3216) lt!249132)))))

(assert (=> b!545898 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249139 lt!249134 lt!249138 mask!3216) lt!249132)))

(assert (=> b!545898 (= lt!249134 (select (store (arr!16528 a!3154) i!1153 k0!1998) j!147))))

(assert (=> b!545898 (= lt!249138 (array!34408 (store (arr!16528 a!3154) i!1153 k0!1998) (size!16892 a!3154)))))

(declare-datatypes ((Unit!16918 0))(
  ( (Unit!16919) )
))
(declare-fun lt!249140 () Unit!16918)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34407 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16918)

(assert (=> b!545898 (= lt!249140 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k0!1998 j!147 lt!249139 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!545899 () Bool)

(declare-fun res!339968 () Bool)

(assert (=> b!545899 (=> (not res!339968) (not e!315513))))

(declare-fun arrayContainsKey!0 (array!34407 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!545899 (= res!339968 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!545900 () Bool)

(declare-fun res!339972 () Bool)

(assert (=> b!545900 (=> (not res!339972) (not e!315513))))

(assert (=> b!545900 (= res!339972 (and (= (size!16892 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16892 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16892 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!49638 res!339966) b!545900))

(assert (= (and b!545900 res!339972) b!545891))

(assert (= (and b!545891 res!339970) b!545897))

(assert (= (and b!545897 res!339975) b!545899))

(assert (= (and b!545899 res!339968) b!545893))

(assert (= (and b!545893 res!339971) b!545888))

(assert (= (and b!545888 res!339974) b!545895))

(assert (= (and b!545895 res!339965) b!545890))

(assert (= (and b!545890 res!339973) b!545892))

(assert (= (and b!545892 res!339976) b!545894))

(assert (= (and b!545894 res!339977) b!545896))

(assert (= (and b!545896 res!339969) b!545889))

(assert (= (and b!545889 res!339967) b!545898))

(declare-fun m!523477 () Bool)

(assert (=> start!49638 m!523477))

(declare-fun m!523479 () Bool)

(assert (=> start!49638 m!523479))

(declare-fun m!523481 () Bool)

(assert (=> b!545899 m!523481))

(declare-fun m!523483 () Bool)

(assert (=> b!545897 m!523483))

(declare-fun m!523485 () Bool)

(assert (=> b!545890 m!523485))

(declare-fun m!523487 () Bool)

(assert (=> b!545890 m!523487))

(declare-fun m!523489 () Bool)

(assert (=> b!545888 m!523489))

(declare-fun m!523491 () Bool)

(assert (=> b!545893 m!523491))

(assert (=> b!545891 m!523487))

(assert (=> b!545891 m!523487))

(declare-fun m!523493 () Bool)

(assert (=> b!545891 m!523493))

(declare-fun m!523495 () Bool)

(assert (=> b!545898 m!523495))

(declare-fun m!523497 () Bool)

(assert (=> b!545898 m!523497))

(declare-fun m!523499 () Bool)

(assert (=> b!545898 m!523499))

(declare-fun m!523501 () Bool)

(assert (=> b!545898 m!523501))

(declare-fun m!523503 () Bool)

(assert (=> b!545898 m!523503))

(declare-fun m!523505 () Bool)

(assert (=> b!545895 m!523505))

(declare-fun m!523507 () Bool)

(assert (=> b!545894 m!523507))

(assert (=> b!545894 m!523487))

(assert (=> b!545894 m!523487))

(declare-fun m!523509 () Bool)

(assert (=> b!545894 m!523509))

(assert (=> b!545894 m!523509))

(assert (=> b!545894 m!523487))

(declare-fun m!523511 () Bool)

(assert (=> b!545894 m!523511))

(assert (=> b!545892 m!523487))

(assert (=> b!545892 m!523487))

(declare-fun m!523513 () Bool)

(assert (=> b!545892 m!523513))

(assert (=> b!545889 m!523487))

(assert (=> b!545889 m!523487))

(declare-fun m!523515 () Bool)

(assert (=> b!545889 m!523515))

(declare-fun m!523517 () Bool)

(assert (=> b!545896 m!523517))

(check-sat (not b!545891) (not b!545894) (not b!545892) (not b!545897) (not b!545893) (not b!545898) (not b!545895) (not b!545888) (not b!545899) (not b!545896) (not b!545889) (not start!49638))
(check-sat)
(get-model)

(declare-fun b!545952 () Bool)

(declare-fun e!315547 () SeekEntryResult!4993)

(declare-fun lt!249175 () SeekEntryResult!4993)

(assert (=> b!545952 (= e!315547 (MissingZero!4993 (index!22198 lt!249175)))))

(declare-fun b!545953 () Bool)

(declare-fun e!315546 () SeekEntryResult!4993)

(assert (=> b!545953 (= e!315546 Undefined!4993)))

(declare-fun b!545954 () Bool)

(declare-fun e!315545 () SeekEntryResult!4993)

(assert (=> b!545954 (= e!315545 (Found!4993 (index!22198 lt!249175)))))

(declare-fun d!82141 () Bool)

(declare-fun lt!249176 () SeekEntryResult!4993)

(get-info :version)

(assert (=> d!82141 (and (or ((_ is Undefined!4993) lt!249176) (not ((_ is Found!4993) lt!249176)) (and (bvsge (index!22197 lt!249176) #b00000000000000000000000000000000) (bvslt (index!22197 lt!249176) (size!16892 a!3154)))) (or ((_ is Undefined!4993) lt!249176) ((_ is Found!4993) lt!249176) (not ((_ is MissingZero!4993) lt!249176)) (and (bvsge (index!22196 lt!249176) #b00000000000000000000000000000000) (bvslt (index!22196 lt!249176) (size!16892 a!3154)))) (or ((_ is Undefined!4993) lt!249176) ((_ is Found!4993) lt!249176) ((_ is MissingZero!4993) lt!249176) (not ((_ is MissingVacant!4993) lt!249176)) (and (bvsge (index!22199 lt!249176) #b00000000000000000000000000000000) (bvslt (index!22199 lt!249176) (size!16892 a!3154)))) (or ((_ is Undefined!4993) lt!249176) (ite ((_ is Found!4993) lt!249176) (= (select (arr!16528 a!3154) (index!22197 lt!249176)) k0!1998) (ite ((_ is MissingZero!4993) lt!249176) (= (select (arr!16528 a!3154) (index!22196 lt!249176)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4993) lt!249176) (= (select (arr!16528 a!3154) (index!22199 lt!249176)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82141 (= lt!249176 e!315546)))

(declare-fun c!63295 () Bool)

(assert (=> d!82141 (= c!63295 (and ((_ is Intermediate!4993) lt!249175) (undefined!5805 lt!249175)))))

(assert (=> d!82141 (= lt!249175 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1998 mask!3216) k0!1998 a!3154 mask!3216))))

(assert (=> d!82141 (validMask!0 mask!3216)))

(assert (=> d!82141 (= (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216) lt!249176)))

(declare-fun b!545955 () Bool)

(assert (=> b!545955 (= e!315546 e!315545)))

(declare-fun lt!249174 () (_ BitVec 64))

(assert (=> b!545955 (= lt!249174 (select (arr!16528 a!3154) (index!22198 lt!249175)))))

(declare-fun c!63296 () Bool)

(assert (=> b!545955 (= c!63296 (= lt!249174 k0!1998))))

(declare-fun b!545956 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34407 (_ BitVec 32)) SeekEntryResult!4993)

(assert (=> b!545956 (= e!315547 (seekKeyOrZeroReturnVacant!0 (x!51148 lt!249175) (index!22198 lt!249175) (index!22198 lt!249175) k0!1998 a!3154 mask!3216))))

(declare-fun b!545957 () Bool)

(declare-fun c!63294 () Bool)

(assert (=> b!545957 (= c!63294 (= lt!249174 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!545957 (= e!315545 e!315547)))

(assert (= (and d!82141 c!63295) b!545953))

(assert (= (and d!82141 (not c!63295)) b!545955))

(assert (= (and b!545955 c!63296) b!545954))

(assert (= (and b!545955 (not c!63296)) b!545957))

(assert (= (and b!545957 c!63294) b!545952))

(assert (= (and b!545957 (not c!63294)) b!545956))

(declare-fun m!523561 () Bool)

(assert (=> d!82141 m!523561))

(assert (=> d!82141 m!523477))

(declare-fun m!523563 () Bool)

(assert (=> d!82141 m!523563))

(declare-fun m!523565 () Bool)

(assert (=> d!82141 m!523565))

(declare-fun m!523567 () Bool)

(assert (=> d!82141 m!523567))

(declare-fun m!523569 () Bool)

(assert (=> d!82141 m!523569))

(assert (=> d!82141 m!523563))

(declare-fun m!523571 () Bool)

(assert (=> b!545955 m!523571))

(declare-fun m!523573 () Bool)

(assert (=> b!545956 m!523573))

(assert (=> b!545893 d!82141))

(declare-fun b!545976 () Bool)

(declare-fun lt!249181 () SeekEntryResult!4993)

(assert (=> b!545976 (and (bvsge (index!22198 lt!249181) #b00000000000000000000000000000000) (bvslt (index!22198 lt!249181) (size!16892 a!3154)))))

(declare-fun res!340024 () Bool)

(assert (=> b!545976 (= res!340024 (= (select (arr!16528 a!3154) (index!22198 lt!249181)) (select (arr!16528 a!3154) j!147)))))

(declare-fun e!315561 () Bool)

(assert (=> b!545976 (=> res!340024 e!315561)))

(declare-fun e!315559 () Bool)

(assert (=> b!545976 (= e!315559 e!315561)))

(declare-fun b!545977 () Bool)

(declare-fun e!315560 () SeekEntryResult!4993)

(assert (=> b!545977 (= e!315560 (Intermediate!4993 false index!1177 x!1030))))

(declare-fun b!545978 () Bool)

(declare-fun e!315562 () Bool)

(assert (=> b!545978 (= e!315562 e!315559)))

(declare-fun res!340025 () Bool)

(assert (=> b!545978 (= res!340025 (and ((_ is Intermediate!4993) lt!249181) (not (undefined!5805 lt!249181)) (bvslt (x!51148 lt!249181) #b01111111111111111111111111111110) (bvsge (x!51148 lt!249181) #b00000000000000000000000000000000) (bvsge (x!51148 lt!249181) x!1030)))))

(assert (=> b!545978 (=> (not res!340025) (not e!315559))))

(declare-fun d!82143 () Bool)

(assert (=> d!82143 e!315562))

(declare-fun c!63303 () Bool)

(assert (=> d!82143 (= c!63303 (and ((_ is Intermediate!4993) lt!249181) (undefined!5805 lt!249181)))))

(declare-fun e!315558 () SeekEntryResult!4993)

(assert (=> d!82143 (= lt!249181 e!315558)))

(declare-fun c!63304 () Bool)

(assert (=> d!82143 (= c!63304 (bvsge x!1030 #b01111111111111111111111111111110))))

(declare-fun lt!249182 () (_ BitVec 64))

(assert (=> d!82143 (= lt!249182 (select (arr!16528 a!3154) index!1177))))

(assert (=> d!82143 (validMask!0 mask!3216)))

(assert (=> d!82143 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16528 a!3154) j!147) a!3154 mask!3216) lt!249181)))

(declare-fun b!545979 () Bool)

(assert (=> b!545979 (= e!315558 (Intermediate!4993 true index!1177 x!1030))))

(declare-fun b!545980 () Bool)

(assert (=> b!545980 (= e!315562 (bvsge (x!51148 lt!249181) #b01111111111111111111111111111110))))

(declare-fun b!545981 () Bool)

(assert (=> b!545981 (and (bvsge (index!22198 lt!249181) #b00000000000000000000000000000000) (bvslt (index!22198 lt!249181) (size!16892 a!3154)))))

(assert (=> b!545981 (= e!315561 (= (select (arr!16528 a!3154) (index!22198 lt!249181)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!545982 () Bool)

(assert (=> b!545982 (and (bvsge (index!22198 lt!249181) #b00000000000000000000000000000000) (bvslt (index!22198 lt!249181) (size!16892 a!3154)))))

(declare-fun res!340023 () Bool)

(assert (=> b!545982 (= res!340023 (= (select (arr!16528 a!3154) (index!22198 lt!249181)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!545982 (=> res!340023 e!315561)))

(declare-fun b!545983 () Bool)

(assert (=> b!545983 (= e!315558 e!315560)))

(declare-fun c!63305 () Bool)

(assert (=> b!545983 (= c!63305 (or (= lt!249182 (select (arr!16528 a!3154) j!147)) (= (bvadd lt!249182 lt!249182) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!545984 () Bool)

(assert (=> b!545984 (= e!315560 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16528 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and d!82143 c!63304) b!545979))

(assert (= (and d!82143 (not c!63304)) b!545983))

(assert (= (and b!545983 c!63305) b!545977))

(assert (= (and b!545983 (not c!63305)) b!545984))

(assert (= (and d!82143 c!63303) b!545980))

(assert (= (and d!82143 (not c!63303)) b!545978))

(assert (= (and b!545978 res!340025) b!545976))

(assert (= (and b!545976 (not res!340024)) b!545982))

(assert (= (and b!545982 (not res!340023)) b!545981))

(declare-fun m!523575 () Bool)

(assert (=> b!545976 m!523575))

(assert (=> d!82143 m!523507))

(assert (=> d!82143 m!523477))

(assert (=> b!545984 m!523517))

(assert (=> b!545984 m!523517))

(assert (=> b!545984 m!523487))

(declare-fun m!523577 () Bool)

(assert (=> b!545984 m!523577))

(assert (=> b!545981 m!523575))

(assert (=> b!545982 m!523575))

(assert (=> b!545892 d!82143))

(declare-fun d!82145 () Bool)

(assert (=> d!82145 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49638 d!82145))

(declare-fun d!82151 () Bool)

(assert (=> d!82151 (= (array_inv!12302 a!3154) (bvsge (size!16892 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!49638 d!82151))

(declare-fun d!82153 () Bool)

(assert (=> d!82153 (= (validKeyInArray!0 (select (arr!16528 a!3154) j!147)) (and (not (= (select (arr!16528 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16528 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!545891 d!82153))

(declare-fun bm!32126 () Bool)

(declare-fun call!32129 () Bool)

(declare-fun c!63314 () Bool)

(assert (=> bm!32126 (= call!32129 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63314 (Cons!10696 (select (arr!16528 a!3154) #b00000000000000000000000000000000) Nil!10697) Nil!10697)))))

(declare-fun b!546013 () Bool)

(declare-fun e!315582 () Bool)

(declare-fun contains!2819 (List!10700 (_ BitVec 64)) Bool)

(assert (=> b!546013 (= e!315582 (contains!2819 Nil!10697 (select (arr!16528 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!546014 () Bool)

(declare-fun e!315583 () Bool)

(assert (=> b!546014 (= e!315583 call!32129)))

(declare-fun b!546015 () Bool)

(declare-fun e!315581 () Bool)

(assert (=> b!546015 (= e!315581 e!315583)))

(assert (=> b!546015 (= c!63314 (validKeyInArray!0 (select (arr!16528 a!3154) #b00000000000000000000000000000000)))))

(declare-fun d!82155 () Bool)

(declare-fun res!340040 () Bool)

(declare-fun e!315584 () Bool)

(assert (=> d!82155 (=> res!340040 e!315584)))

(assert (=> d!82155 (= res!340040 (bvsge #b00000000000000000000000000000000 (size!16892 a!3154)))))

(assert (=> d!82155 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10697) e!315584)))

(declare-fun b!546016 () Bool)

(assert (=> b!546016 (= e!315584 e!315581)))

(declare-fun res!340039 () Bool)

(assert (=> b!546016 (=> (not res!340039) (not e!315581))))

(assert (=> b!546016 (= res!340039 (not e!315582))))

(declare-fun res!340038 () Bool)

(assert (=> b!546016 (=> (not res!340038) (not e!315582))))

(assert (=> b!546016 (= res!340038 (validKeyInArray!0 (select (arr!16528 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!546017 () Bool)

(assert (=> b!546017 (= e!315583 call!32129)))

(assert (= (and d!82155 (not res!340040)) b!546016))

(assert (= (and b!546016 res!340038) b!546013))

(assert (= (and b!546016 res!340039) b!546015))

(assert (= (and b!546015 c!63314) b!546014))

(assert (= (and b!546015 (not c!63314)) b!546017))

(assert (= (or b!546014 b!546017) bm!32126))

(declare-fun m!523579 () Bool)

(assert (=> bm!32126 m!523579))

(declare-fun m!523581 () Bool)

(assert (=> bm!32126 m!523581))

(assert (=> b!546013 m!523579))

(assert (=> b!546013 m!523579))

(declare-fun m!523583 () Bool)

(assert (=> b!546013 m!523583))

(assert (=> b!546015 m!523579))

(assert (=> b!546015 m!523579))

(declare-fun m!523585 () Bool)

(assert (=> b!546015 m!523585))

(assert (=> b!546016 m!523579))

(assert (=> b!546016 m!523579))

(assert (=> b!546016 m!523585))

(assert (=> b!545895 d!82155))

(declare-fun b!546018 () Bool)

(declare-fun lt!249187 () SeekEntryResult!4993)

(assert (=> b!546018 (and (bvsge (index!22198 lt!249187) #b00000000000000000000000000000000) (bvslt (index!22198 lt!249187) (size!16892 a!3154)))))

(declare-fun res!340042 () Bool)

(assert (=> b!546018 (= res!340042 (= (select (arr!16528 a!3154) (index!22198 lt!249187)) (select (arr!16528 a!3154) j!147)))))

(declare-fun e!315588 () Bool)

(assert (=> b!546018 (=> res!340042 e!315588)))

(declare-fun e!315586 () Bool)

(assert (=> b!546018 (= e!315586 e!315588)))

(declare-fun e!315587 () SeekEntryResult!4993)

(declare-fun b!546019 () Bool)

(assert (=> b!546019 (= e!315587 (Intermediate!4993 false (toIndex!0 (select (arr!16528 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!546020 () Bool)

(declare-fun e!315589 () Bool)

(assert (=> b!546020 (= e!315589 e!315586)))

(declare-fun res!340043 () Bool)

(assert (=> b!546020 (= res!340043 (and ((_ is Intermediate!4993) lt!249187) (not (undefined!5805 lt!249187)) (bvslt (x!51148 lt!249187) #b01111111111111111111111111111110) (bvsge (x!51148 lt!249187) #b00000000000000000000000000000000) (bvsge (x!51148 lt!249187) #b00000000000000000000000000000000)))))

(assert (=> b!546020 (=> (not res!340043) (not e!315586))))

(declare-fun d!82157 () Bool)

(assert (=> d!82157 e!315589))

(declare-fun c!63315 () Bool)

(assert (=> d!82157 (= c!63315 (and ((_ is Intermediate!4993) lt!249187) (undefined!5805 lt!249187)))))

(declare-fun e!315585 () SeekEntryResult!4993)

(assert (=> d!82157 (= lt!249187 e!315585)))

(declare-fun c!63316 () Bool)

(assert (=> d!82157 (= c!63316 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!249188 () (_ BitVec 64))

(assert (=> d!82157 (= lt!249188 (select (arr!16528 a!3154) (toIndex!0 (select (arr!16528 a!3154) j!147) mask!3216)))))

(assert (=> d!82157 (validMask!0 mask!3216)))

(assert (=> d!82157 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16528 a!3154) j!147) mask!3216) (select (arr!16528 a!3154) j!147) a!3154 mask!3216) lt!249187)))

(declare-fun b!546021 () Bool)

(assert (=> b!546021 (= e!315585 (Intermediate!4993 true (toIndex!0 (select (arr!16528 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!546022 () Bool)

(assert (=> b!546022 (= e!315589 (bvsge (x!51148 lt!249187) #b01111111111111111111111111111110))))

(declare-fun b!546023 () Bool)

(assert (=> b!546023 (and (bvsge (index!22198 lt!249187) #b00000000000000000000000000000000) (bvslt (index!22198 lt!249187) (size!16892 a!3154)))))

(assert (=> b!546023 (= e!315588 (= (select (arr!16528 a!3154) (index!22198 lt!249187)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!546024 () Bool)

(assert (=> b!546024 (and (bvsge (index!22198 lt!249187) #b00000000000000000000000000000000) (bvslt (index!22198 lt!249187) (size!16892 a!3154)))))

(declare-fun res!340041 () Bool)

(assert (=> b!546024 (= res!340041 (= (select (arr!16528 a!3154) (index!22198 lt!249187)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!546024 (=> res!340041 e!315588)))

(declare-fun b!546025 () Bool)

(assert (=> b!546025 (= e!315585 e!315587)))

(declare-fun c!63317 () Bool)

(assert (=> b!546025 (= c!63317 (or (= lt!249188 (select (arr!16528 a!3154) j!147)) (= (bvadd lt!249188 lt!249188) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!546026 () Bool)

(assert (=> b!546026 (= e!315587 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16528 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16528 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and d!82157 c!63316) b!546021))

(assert (= (and d!82157 (not c!63316)) b!546025))

(assert (= (and b!546025 c!63317) b!546019))

(assert (= (and b!546025 (not c!63317)) b!546026))

(assert (= (and d!82157 c!63315) b!546022))

(assert (= (and d!82157 (not c!63315)) b!546020))

(assert (= (and b!546020 res!340043) b!546018))

(assert (= (and b!546018 (not res!340042)) b!546024))

(assert (= (and b!546024 (not res!340041)) b!546023))

(declare-fun m!523587 () Bool)

(assert (=> b!546018 m!523587))

(assert (=> d!82157 m!523509))

(declare-fun m!523589 () Bool)

(assert (=> d!82157 m!523589))

(assert (=> d!82157 m!523477))

(assert (=> b!546026 m!523509))

(declare-fun m!523591 () Bool)

(assert (=> b!546026 m!523591))

(assert (=> b!546026 m!523591))

(assert (=> b!546026 m!523487))

(declare-fun m!523593 () Bool)

(assert (=> b!546026 m!523593))

(assert (=> b!546023 m!523587))

(assert (=> b!546024 m!523587))

(assert (=> b!545894 d!82157))

(declare-fun d!82159 () Bool)

(declare-fun lt!249204 () (_ BitVec 32))

(declare-fun lt!249203 () (_ BitVec 32))

(assert (=> d!82159 (= lt!249204 (bvmul (bvxor lt!249203 (bvlshr lt!249203 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82159 (= lt!249203 ((_ extract 31 0) (bvand (bvxor (select (arr!16528 a!3154) j!147) (bvlshr (select (arr!16528 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82159 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!340047 (let ((h!11662 ((_ extract 31 0) (bvand (bvxor (select (arr!16528 a!3154) j!147) (bvlshr (select (arr!16528 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51152 (bvmul (bvxor h!11662 (bvlshr h!11662 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51152 (bvlshr x!51152 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!340047 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!340047 #b00000000000000000000000000000000))))))

(assert (=> d!82159 (= (toIndex!0 (select (arr!16528 a!3154) j!147) mask!3216) (bvand (bvxor lt!249204 (bvlshr lt!249204 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!545894 d!82159))

(declare-fun b!546057 () Bool)

(declare-fun lt!249205 () SeekEntryResult!4993)

(assert (=> b!546057 (and (bvsge (index!22198 lt!249205) #b00000000000000000000000000000000) (bvslt (index!22198 lt!249205) (size!16892 lt!249138)))))

(declare-fun res!340052 () Bool)

(assert (=> b!546057 (= res!340052 (= (select (arr!16528 lt!249138) (index!22198 lt!249205)) lt!249134))))

(declare-fun e!315609 () Bool)

(assert (=> b!546057 (=> res!340052 e!315609)))

(declare-fun e!315607 () Bool)

(assert (=> b!546057 (= e!315607 e!315609)))

(declare-fun b!546058 () Bool)

(declare-fun e!315608 () SeekEntryResult!4993)

(assert (=> b!546058 (= e!315608 (Intermediate!4993 false index!1177 x!1030))))

(declare-fun b!546059 () Bool)

(declare-fun e!315610 () Bool)

(assert (=> b!546059 (= e!315610 e!315607)))

(declare-fun res!340053 () Bool)

(assert (=> b!546059 (= res!340053 (and ((_ is Intermediate!4993) lt!249205) (not (undefined!5805 lt!249205)) (bvslt (x!51148 lt!249205) #b01111111111111111111111111111110) (bvsge (x!51148 lt!249205) #b00000000000000000000000000000000) (bvsge (x!51148 lt!249205) x!1030)))))

(assert (=> b!546059 (=> (not res!340053) (not e!315607))))

(declare-fun d!82165 () Bool)

(assert (=> d!82165 e!315610))

(declare-fun c!63330 () Bool)

(assert (=> d!82165 (= c!63330 (and ((_ is Intermediate!4993) lt!249205) (undefined!5805 lt!249205)))))

(declare-fun e!315606 () SeekEntryResult!4993)

(assert (=> d!82165 (= lt!249205 e!315606)))

(declare-fun c!63331 () Bool)

(assert (=> d!82165 (= c!63331 (bvsge x!1030 #b01111111111111111111111111111110))))

(declare-fun lt!249206 () (_ BitVec 64))

(assert (=> d!82165 (= lt!249206 (select (arr!16528 lt!249138) index!1177))))

(assert (=> d!82165 (validMask!0 mask!3216)))

(assert (=> d!82165 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 lt!249134 lt!249138 mask!3216) lt!249205)))

(declare-fun b!546060 () Bool)

(assert (=> b!546060 (= e!315606 (Intermediate!4993 true index!1177 x!1030))))

(declare-fun b!546061 () Bool)

(assert (=> b!546061 (= e!315610 (bvsge (x!51148 lt!249205) #b01111111111111111111111111111110))))

(declare-fun b!546062 () Bool)

(assert (=> b!546062 (and (bvsge (index!22198 lt!249205) #b00000000000000000000000000000000) (bvslt (index!22198 lt!249205) (size!16892 lt!249138)))))

(assert (=> b!546062 (= e!315609 (= (select (arr!16528 lt!249138) (index!22198 lt!249205)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!546063 () Bool)

(assert (=> b!546063 (and (bvsge (index!22198 lt!249205) #b00000000000000000000000000000000) (bvslt (index!22198 lt!249205) (size!16892 lt!249138)))))

(declare-fun res!340051 () Bool)

(assert (=> b!546063 (= res!340051 (= (select (arr!16528 lt!249138) (index!22198 lt!249205)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!546063 (=> res!340051 e!315609)))

(declare-fun b!546064 () Bool)

(assert (=> b!546064 (= e!315606 e!315608)))

(declare-fun c!63332 () Bool)

(assert (=> b!546064 (= c!63332 (or (= lt!249206 lt!249134) (= (bvadd lt!249206 lt!249206) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!546065 () Bool)

(assert (=> b!546065 (= e!315608 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) lt!249134 lt!249138 mask!3216))))

(assert (= (and d!82165 c!63331) b!546060))

(assert (= (and d!82165 (not c!63331)) b!546064))

(assert (= (and b!546064 c!63332) b!546058))

(assert (= (and b!546064 (not c!63332)) b!546065))

(assert (= (and d!82165 c!63330) b!546061))

(assert (= (and d!82165 (not c!63330)) b!546059))

(assert (= (and b!546059 res!340053) b!546057))

(assert (= (and b!546057 (not res!340052)) b!546063))

(assert (= (and b!546063 (not res!340051)) b!546062))

(declare-fun m!523609 () Bool)

(assert (=> b!546057 m!523609))

(declare-fun m!523611 () Bool)

(assert (=> d!82165 m!523611))

(assert (=> d!82165 m!523477))

(assert (=> b!546065 m!523517))

(assert (=> b!546065 m!523517))

(declare-fun m!523613 () Bool)

(assert (=> b!546065 m!523613))

(assert (=> b!546062 m!523609))

(assert (=> b!546063 m!523609))

(assert (=> b!545898 d!82165))

(declare-fun b!546066 () Bool)

(declare-fun lt!249207 () SeekEntryResult!4993)

(assert (=> b!546066 (and (bvsge (index!22198 lt!249207) #b00000000000000000000000000000000) (bvslt (index!22198 lt!249207) (size!16892 lt!249138)))))

(declare-fun res!340055 () Bool)

(assert (=> b!546066 (= res!340055 (= (select (arr!16528 lt!249138) (index!22198 lt!249207)) lt!249134))))

(declare-fun e!315614 () Bool)

(assert (=> b!546066 (=> res!340055 e!315614)))

(declare-fun e!315612 () Bool)

(assert (=> b!546066 (= e!315612 e!315614)))

(declare-fun b!546067 () Bool)

(declare-fun e!315613 () SeekEntryResult!4993)

(assert (=> b!546067 (= e!315613 (Intermediate!4993 false lt!249139 (bvadd #b00000000000000000000000000000001 x!1030)))))

(declare-fun b!546068 () Bool)

(declare-fun e!315615 () Bool)

(assert (=> b!546068 (= e!315615 e!315612)))

(declare-fun res!340056 () Bool)

(assert (=> b!546068 (= res!340056 (and ((_ is Intermediate!4993) lt!249207) (not (undefined!5805 lt!249207)) (bvslt (x!51148 lt!249207) #b01111111111111111111111111111110) (bvsge (x!51148 lt!249207) #b00000000000000000000000000000000) (bvsge (x!51148 lt!249207) (bvadd #b00000000000000000000000000000001 x!1030))))))

(assert (=> b!546068 (=> (not res!340056) (not e!315612))))

(declare-fun d!82167 () Bool)

(assert (=> d!82167 e!315615))

(declare-fun c!63333 () Bool)

(assert (=> d!82167 (= c!63333 (and ((_ is Intermediate!4993) lt!249207) (undefined!5805 lt!249207)))))

(declare-fun e!315611 () SeekEntryResult!4993)

(assert (=> d!82167 (= lt!249207 e!315611)))

(declare-fun c!63334 () Bool)

(assert (=> d!82167 (= c!63334 (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b01111111111111111111111111111110))))

(declare-fun lt!249208 () (_ BitVec 64))

(assert (=> d!82167 (= lt!249208 (select (arr!16528 lt!249138) lt!249139))))

(assert (=> d!82167 (validMask!0 mask!3216)))

(assert (=> d!82167 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249139 lt!249134 lt!249138 mask!3216) lt!249207)))

(declare-fun b!546069 () Bool)

(assert (=> b!546069 (= e!315611 (Intermediate!4993 true lt!249139 (bvadd #b00000000000000000000000000000001 x!1030)))))

(declare-fun b!546070 () Bool)

(assert (=> b!546070 (= e!315615 (bvsge (x!51148 lt!249207) #b01111111111111111111111111111110))))

(declare-fun b!546071 () Bool)

(assert (=> b!546071 (and (bvsge (index!22198 lt!249207) #b00000000000000000000000000000000) (bvslt (index!22198 lt!249207) (size!16892 lt!249138)))))

(assert (=> b!546071 (= e!315614 (= (select (arr!16528 lt!249138) (index!22198 lt!249207)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!546072 () Bool)

(assert (=> b!546072 (and (bvsge (index!22198 lt!249207) #b00000000000000000000000000000000) (bvslt (index!22198 lt!249207) (size!16892 lt!249138)))))

(declare-fun res!340054 () Bool)

(assert (=> b!546072 (= res!340054 (= (select (arr!16528 lt!249138) (index!22198 lt!249207)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!546072 (=> res!340054 e!315614)))

(declare-fun b!546073 () Bool)

(assert (=> b!546073 (= e!315611 e!315613)))

(declare-fun c!63335 () Bool)

(assert (=> b!546073 (= c!63335 (or (= lt!249208 lt!249134) (= (bvadd lt!249208 lt!249208) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!546074 () Bool)

(assert (=> b!546074 (= e!315613 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030 #b00000000000000000000000000000001) (nextIndex!0 lt!249139 (bvadd #b00000000000000000000000000000001 x!1030) mask!3216) lt!249134 lt!249138 mask!3216))))

(assert (= (and d!82167 c!63334) b!546069))

(assert (= (and d!82167 (not c!63334)) b!546073))

(assert (= (and b!546073 c!63335) b!546067))

(assert (= (and b!546073 (not c!63335)) b!546074))

(assert (= (and d!82167 c!63333) b!546070))

(assert (= (and d!82167 (not c!63333)) b!546068))

(assert (= (and b!546068 res!340056) b!546066))

(assert (= (and b!546066 (not res!340055)) b!546072))

(assert (= (and b!546072 (not res!340054)) b!546071))

(declare-fun m!523615 () Bool)

(assert (=> b!546066 m!523615))

(declare-fun m!523617 () Bool)

(assert (=> d!82167 m!523617))

(assert (=> d!82167 m!523477))

(declare-fun m!523619 () Bool)

(assert (=> b!546074 m!523619))

(assert (=> b!546074 m!523619))

(declare-fun m!523621 () Bool)

(assert (=> b!546074 m!523621))

(assert (=> b!546071 m!523615))

(assert (=> b!546072 m!523615))

(assert (=> b!545898 d!82167))

(declare-fun d!82169 () Bool)

(declare-fun e!315632 () Bool)

(assert (=> d!82169 e!315632))

(declare-fun res!340068 () Bool)

(assert (=> d!82169 (=> (not res!340068) (not e!315632))))

(assert (=> d!82169 (= res!340068 (and (or (bvslt i!1153 #b00000000000000000000000000000000) (bvsge i!1153 (size!16892 a!3154)) (and (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16892 a!3154)))) (or (bvslt i!1153 #b00000000000000000000000000000000) (bvsge i!1153 (size!16892 a!3154)) (and (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16892 a!3154)))) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16892 a!3154))))))

(declare-fun lt!249217 () Unit!16918)

(declare-fun choose!47 (array!34407 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16918)

(assert (=> d!82169 (= lt!249217 (choose!47 a!3154 i!1153 k0!1998 j!147 lt!249139 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(assert (=> d!82169 (validMask!0 mask!3216)))

(assert (=> d!82169 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k0!1998 j!147 lt!249139 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216) lt!249217)))

(declare-fun b!546096 () Bool)

(assert (=> b!546096 (= e!315632 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249139 (select (store (arr!16528 a!3154) i!1153 k0!1998) j!147) (array!34408 (store (arr!16528 a!3154) i!1153 k0!1998) (size!16892 a!3154)) mask!3216) (Intermediate!4993 false resIndex!32 resX!32)))))

(assert (= (and d!82169 res!340068) b!546096))

(declare-fun m!523641 () Bool)

(assert (=> d!82169 m!523641))

(assert (=> d!82169 m!523477))

(assert (=> b!546096 m!523499))

(assert (=> b!546096 m!523495))

(assert (=> b!546096 m!523495))

(declare-fun m!523643 () Bool)

(assert (=> b!546096 m!523643))

(assert (=> b!545898 d!82169))

(declare-fun d!82177 () Bool)

(assert (=> d!82177 (= (validKeyInArray!0 k0!1998) (and (not (= k0!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!545897 d!82177))

(declare-fun d!82179 () Bool)

(declare-fun lt!249220 () (_ BitVec 32))

(assert (=> d!82179 (and (bvsge lt!249220 #b00000000000000000000000000000000) (bvslt lt!249220 (bvadd mask!3216 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!82179 (= lt!249220 (choose!52 index!1177 x!1030 mask!3216))))

(assert (=> d!82179 (validMask!0 mask!3216)))

(assert (=> d!82179 (= (nextIndex!0 index!1177 x!1030 mask!3216) lt!249220)))

(declare-fun bs!17019 () Bool)

(assert (= bs!17019 d!82179))

(declare-fun m!523653 () Bool)

(assert (=> bs!17019 m!523653))

(assert (=> bs!17019 m!523477))

(assert (=> b!545896 d!82179))

(declare-fun b!546102 () Bool)

(declare-fun lt!249221 () SeekEntryResult!4993)

(assert (=> b!546102 (and (bvsge (index!22198 lt!249221) #b00000000000000000000000000000000) (bvslt (index!22198 lt!249221) (size!16892 a!3154)))))

(declare-fun res!340073 () Bool)

(assert (=> b!546102 (= res!340073 (= (select (arr!16528 a!3154) (index!22198 lt!249221)) (select (arr!16528 a!3154) j!147)))))

(declare-fun e!315640 () Bool)

(assert (=> b!546102 (=> res!340073 e!315640)))

(declare-fun e!315638 () Bool)

(assert (=> b!546102 (= e!315638 e!315640)))

(declare-fun b!546103 () Bool)

(declare-fun e!315639 () SeekEntryResult!4993)

(assert (=> b!546103 (= e!315639 (Intermediate!4993 false lt!249139 (bvadd #b00000000000000000000000000000001 x!1030)))))

(declare-fun b!546104 () Bool)

(declare-fun e!315641 () Bool)

(assert (=> b!546104 (= e!315641 e!315638)))

(declare-fun res!340074 () Bool)

(assert (=> b!546104 (= res!340074 (and ((_ is Intermediate!4993) lt!249221) (not (undefined!5805 lt!249221)) (bvslt (x!51148 lt!249221) #b01111111111111111111111111111110) (bvsge (x!51148 lt!249221) #b00000000000000000000000000000000) (bvsge (x!51148 lt!249221) (bvadd #b00000000000000000000000000000001 x!1030))))))

(assert (=> b!546104 (=> (not res!340074) (not e!315638))))

(declare-fun d!82183 () Bool)

(assert (=> d!82183 e!315641))

(declare-fun c!63342 () Bool)

(assert (=> d!82183 (= c!63342 (and ((_ is Intermediate!4993) lt!249221) (undefined!5805 lt!249221)))))

(declare-fun e!315637 () SeekEntryResult!4993)

(assert (=> d!82183 (= lt!249221 e!315637)))

(declare-fun c!63343 () Bool)

(assert (=> d!82183 (= c!63343 (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b01111111111111111111111111111110))))

(declare-fun lt!249222 () (_ BitVec 64))

(assert (=> d!82183 (= lt!249222 (select (arr!16528 a!3154) lt!249139))))

(assert (=> d!82183 (validMask!0 mask!3216)))

(assert (=> d!82183 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249139 (select (arr!16528 a!3154) j!147) a!3154 mask!3216) lt!249221)))

(declare-fun b!546105 () Bool)

(assert (=> b!546105 (= e!315637 (Intermediate!4993 true lt!249139 (bvadd #b00000000000000000000000000000001 x!1030)))))

(declare-fun b!546106 () Bool)

(assert (=> b!546106 (= e!315641 (bvsge (x!51148 lt!249221) #b01111111111111111111111111111110))))

(declare-fun b!546107 () Bool)

(assert (=> b!546107 (and (bvsge (index!22198 lt!249221) #b00000000000000000000000000000000) (bvslt (index!22198 lt!249221) (size!16892 a!3154)))))

(assert (=> b!546107 (= e!315640 (= (select (arr!16528 a!3154) (index!22198 lt!249221)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!546108 () Bool)

(assert (=> b!546108 (and (bvsge (index!22198 lt!249221) #b00000000000000000000000000000000) (bvslt (index!22198 lt!249221) (size!16892 a!3154)))))

(declare-fun res!340072 () Bool)

(assert (=> b!546108 (= res!340072 (= (select (arr!16528 a!3154) (index!22198 lt!249221)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!546108 (=> res!340072 e!315640)))

(declare-fun b!546109 () Bool)

(assert (=> b!546109 (= e!315637 e!315639)))

(declare-fun c!63344 () Bool)

(assert (=> b!546109 (= c!63344 (or (= lt!249222 (select (arr!16528 a!3154) j!147)) (= (bvadd lt!249222 lt!249222) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!546110 () Bool)

(assert (=> b!546110 (= e!315639 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030 #b00000000000000000000000000000001) (nextIndex!0 lt!249139 (bvadd #b00000000000000000000000000000001 x!1030) mask!3216) (select (arr!16528 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and d!82183 c!63343) b!546105))

(assert (= (and d!82183 (not c!63343)) b!546109))

(assert (= (and b!546109 c!63344) b!546103))

(assert (= (and b!546109 (not c!63344)) b!546110))

(assert (= (and d!82183 c!63342) b!546106))

(assert (= (and d!82183 (not c!63342)) b!546104))

(assert (= (and b!546104 res!340074) b!546102))

(assert (= (and b!546102 (not res!340073)) b!546108))

(assert (= (and b!546108 (not res!340072)) b!546107))

(declare-fun m!523655 () Bool)

(assert (=> b!546102 m!523655))

(declare-fun m!523657 () Bool)

(assert (=> d!82183 m!523657))

(assert (=> d!82183 m!523477))

(assert (=> b!546110 m!523619))

(assert (=> b!546110 m!523619))

(assert (=> b!546110 m!523487))

(declare-fun m!523659 () Bool)

(assert (=> b!546110 m!523659))

(assert (=> b!546107 m!523655))

(assert (=> b!546108 m!523655))

(assert (=> b!545889 d!82183))

(declare-fun b!546161 () Bool)

(declare-fun e!315676 () Bool)

(declare-fun call!32135 () Bool)

(assert (=> b!546161 (= e!315676 call!32135)))

(declare-fun b!546162 () Bool)

(declare-fun e!315675 () Bool)

(assert (=> b!546162 (= e!315675 call!32135)))

(declare-fun bm!32132 () Bool)

(assert (=> bm!32132 (= call!32135 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!546164 () Bool)

(assert (=> b!546164 (= e!315675 e!315676)))

(declare-fun lt!249237 () (_ BitVec 64))

(assert (=> b!546164 (= lt!249237 (select (arr!16528 a!3154) #b00000000000000000000000000000000))))

(declare-fun lt!249239 () Unit!16918)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34407 (_ BitVec 64) (_ BitVec 32)) Unit!16918)

(assert (=> b!546164 (= lt!249239 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!249237 #b00000000000000000000000000000000))))

(assert (=> b!546164 (arrayContainsKey!0 a!3154 lt!249237 #b00000000000000000000000000000000)))

(declare-fun lt!249238 () Unit!16918)

(assert (=> b!546164 (= lt!249238 lt!249239)))

(declare-fun res!340097 () Bool)

(assert (=> b!546164 (= res!340097 (= (seekEntryOrOpen!0 (select (arr!16528 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4993 #b00000000000000000000000000000000)))))

(assert (=> b!546164 (=> (not res!340097) (not e!315676))))

(declare-fun b!546163 () Bool)

(declare-fun e!315674 () Bool)

(assert (=> b!546163 (= e!315674 e!315675)))

(declare-fun c!63359 () Bool)

(assert (=> b!546163 (= c!63359 (validKeyInArray!0 (select (arr!16528 a!3154) #b00000000000000000000000000000000)))))

(declare-fun d!82185 () Bool)

(declare-fun res!340098 () Bool)

(assert (=> d!82185 (=> res!340098 e!315674)))

(assert (=> d!82185 (= res!340098 (bvsge #b00000000000000000000000000000000 (size!16892 a!3154)))))

(assert (=> d!82185 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!315674)))

(assert (= (and d!82185 (not res!340098)) b!546163))

(assert (= (and b!546163 c!63359) b!546164))

(assert (= (and b!546163 (not c!63359)) b!546162))

(assert (= (and b!546164 res!340097) b!546161))

(assert (= (or b!546161 b!546162) bm!32132))

(declare-fun m!523679 () Bool)

(assert (=> bm!32132 m!523679))

(assert (=> b!546164 m!523579))

(declare-fun m!523681 () Bool)

(assert (=> b!546164 m!523681))

(declare-fun m!523683 () Bool)

(assert (=> b!546164 m!523683))

(assert (=> b!546164 m!523579))

(declare-fun m!523685 () Bool)

(assert (=> b!546164 m!523685))

(assert (=> b!546163 m!523579))

(assert (=> b!546163 m!523579))

(assert (=> b!546163 m!523585))

(assert (=> b!545888 d!82185))

(declare-fun d!82195 () Bool)

(declare-fun res!340104 () Bool)

(declare-fun e!315681 () Bool)

(assert (=> d!82195 (=> res!340104 e!315681)))

(assert (=> d!82195 (= res!340104 (= (select (arr!16528 a!3154) #b00000000000000000000000000000000) k0!1998))))

(assert (=> d!82195 (= (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000) e!315681)))

(declare-fun b!546169 () Bool)

(declare-fun e!315682 () Bool)

(assert (=> b!546169 (= e!315681 e!315682)))

(declare-fun res!340105 () Bool)

(assert (=> b!546169 (=> (not res!340105) (not e!315682))))

(assert (=> b!546169 (= res!340105 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16892 a!3154)))))

(declare-fun b!546170 () Bool)

(assert (=> b!546170 (= e!315682 (arrayContainsKey!0 a!3154 k0!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82195 (not res!340104)) b!546169))

(assert (= (and b!546169 res!340105) b!546170))

(assert (=> d!82195 m!523579))

(declare-fun m!523687 () Bool)

(assert (=> b!546170 m!523687))

(assert (=> b!545899 d!82195))

(check-sat (not b!546016) (not b!546096) (not b!545984) (not bm!32126) (not b!546015) (not b!545956) (not d!82167) (not d!82143) (not b!546026) (not b!546163) (not d!82141) (not b!546074) (not b!546065) (not b!546110) (not b!546170) (not d!82179) (not d!82165) (not d!82183) (not d!82157) (not d!82169) (not b!546013) (not bm!32132) (not b!546164))
(check-sat)
