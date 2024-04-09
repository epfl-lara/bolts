; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49542 () Bool)

(assert start!49542)

(declare-fun b!544916 () Bool)

(declare-fun res!339179 () Bool)

(declare-fun e!314977 () Bool)

(assert (=> b!544916 (=> (not res!339179) (not e!314977))))

(declare-datatypes ((array!34368 0))(
  ( (array!34369 (arr!16510 (Array (_ BitVec 32) (_ BitVec 64))) (size!16874 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34368)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34368 (_ BitVec 32)) Bool)

(assert (=> b!544916 (= res!339179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!544917 () Bool)

(declare-fun res!339172 () Bool)

(assert (=> b!544917 (=> (not res!339172) (not e!314977))))

(declare-datatypes ((List!10682 0))(
  ( (Nil!10679) (Cons!10678 (h!11639 (_ BitVec 64)) (t!16918 List!10682)) )
))
(declare-fun arrayNoDuplicates!0 (array!34368 (_ BitVec 32) List!10682) Bool)

(assert (=> b!544917 (= res!339172 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10679))))

(declare-fun b!544918 () Bool)

(declare-fun res!339182 () Bool)

(assert (=> b!544918 (=> (not res!339182) (not e!314977))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!544918 (= res!339182 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16874 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16874 a!3154)) (= (select (arr!16510 a!3154) resIndex!32) (select (arr!16510 a!3154) j!147))))))

(declare-fun b!544919 () Bool)

(declare-fun e!314978 () Bool)

(assert (=> b!544919 (= e!314978 e!314977)))

(declare-fun res!339170 () Bool)

(assert (=> b!544919 (=> (not res!339170) (not e!314977))))

(declare-datatypes ((SeekEntryResult!4975 0))(
  ( (MissingZero!4975 (index!22124 (_ BitVec 32))) (Found!4975 (index!22125 (_ BitVec 32))) (Intermediate!4975 (undefined!5787 Bool) (index!22126 (_ BitVec 32)) (x!51073 (_ BitVec 32))) (Undefined!4975) (MissingVacant!4975 (index!22127 (_ BitVec 32))) )
))
(declare-fun lt!248665 () SeekEntryResult!4975)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!544919 (= res!339170 (or (= lt!248665 (MissingZero!4975 i!1153)) (= lt!248665 (MissingVacant!4975 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34368 (_ BitVec 32)) SeekEntryResult!4975)

(assert (=> b!544919 (= lt!248665 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!544920 () Bool)

(declare-fun res!339173 () Bool)

(assert (=> b!544920 (=> (not res!339173) (not e!314978))))

(assert (=> b!544920 (= res!339173 (and (= (size!16874 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16874 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16874 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!339174 () Bool)

(assert (=> start!49542 (=> (not res!339174) (not e!314978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49542 (= res!339174 (validMask!0 mask!3216))))

(assert (=> start!49542 e!314978))

(assert (=> start!49542 true))

(declare-fun array_inv!12284 (array!34368) Bool)

(assert (=> start!49542 (array_inv!12284 a!3154)))

(declare-fun lt!248666 () SeekEntryResult!4975)

(declare-fun b!544921 () Bool)

(declare-fun lt!248663 () (_ BitVec 32))

(declare-fun e!314980 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34368 (_ BitVec 32)) SeekEntryResult!4975)

(assert (=> b!544921 (= e!314980 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248663 (select (arr!16510 a!3154) j!147) a!3154 mask!3216) lt!248666)))))

(declare-fun b!544922 () Bool)

(declare-fun res!339175 () Bool)

(assert (=> b!544922 (=> (not res!339175) (not e!314978))))

(declare-fun arrayContainsKey!0 (array!34368 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!544922 (= res!339175 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!544923 () Bool)

(declare-fun res!339176 () Bool)

(declare-fun e!314979 () Bool)

(assert (=> b!544923 (=> (not res!339176) (not e!314979))))

(declare-fun lt!248664 () SeekEntryResult!4975)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544923 (= res!339176 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16510 a!3154) j!147) mask!3216) (select (arr!16510 a!3154) j!147) a!3154 mask!3216) lt!248664))))

(declare-fun b!544924 () Bool)

(declare-fun res!339177 () Bool)

(assert (=> b!544924 (=> (not res!339177) (not e!314978))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!544924 (= res!339177 (validKeyInArray!0 (select (arr!16510 a!3154) j!147)))))

(declare-fun b!544925 () Bool)

(assert (=> b!544925 (= e!314977 e!314979)))

(declare-fun res!339181 () Bool)

(assert (=> b!544925 (=> (not res!339181) (not e!314979))))

(assert (=> b!544925 (= res!339181 (= lt!248664 lt!248666))))

(assert (=> b!544925 (= lt!248666 (Intermediate!4975 false resIndex!32 resX!32))))

(assert (=> b!544925 (= lt!248664 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16510 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544926 () Bool)

(assert (=> b!544926 (= e!314979 e!314980)))

(declare-fun res!339180 () Bool)

(assert (=> b!544926 (=> (not res!339180) (not e!314980))))

(assert (=> b!544926 (= res!339180 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!248663 #b00000000000000000000000000000000) (bvslt lt!248663 (size!16874 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!544926 (= lt!248663 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!544927 () Bool)

(declare-fun res!339171 () Bool)

(assert (=> b!544927 (=> (not res!339171) (not e!314979))))

(assert (=> b!544927 (= res!339171 (and (not (= (select (arr!16510 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16510 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16510 a!3154) index!1177) (select (arr!16510 a!3154) j!147)))))))

(declare-fun b!544928 () Bool)

(declare-fun res!339178 () Bool)

(assert (=> b!544928 (=> (not res!339178) (not e!314978))))

(assert (=> b!544928 (= res!339178 (validKeyInArray!0 k0!1998))))

(assert (= (and start!49542 res!339174) b!544920))

(assert (= (and b!544920 res!339173) b!544924))

(assert (= (and b!544924 res!339177) b!544928))

(assert (= (and b!544928 res!339178) b!544922))

(assert (= (and b!544922 res!339175) b!544919))

(assert (= (and b!544919 res!339170) b!544916))

(assert (= (and b!544916 res!339179) b!544917))

(assert (= (and b!544917 res!339172) b!544918))

(assert (= (and b!544918 res!339182) b!544925))

(assert (= (and b!544925 res!339181) b!544923))

(assert (= (and b!544923 res!339176) b!544927))

(assert (= (and b!544927 res!339171) b!544926))

(assert (= (and b!544926 res!339180) b!544921))

(declare-fun m!522657 () Bool)

(assert (=> b!544919 m!522657))

(declare-fun m!522659 () Bool)

(assert (=> b!544927 m!522659))

(declare-fun m!522661 () Bool)

(assert (=> b!544927 m!522661))

(declare-fun m!522663 () Bool)

(assert (=> b!544928 m!522663))

(assert (=> b!544924 m!522661))

(assert (=> b!544924 m!522661))

(declare-fun m!522665 () Bool)

(assert (=> b!544924 m!522665))

(declare-fun m!522667 () Bool)

(assert (=> b!544926 m!522667))

(assert (=> b!544921 m!522661))

(assert (=> b!544921 m!522661))

(declare-fun m!522669 () Bool)

(assert (=> b!544921 m!522669))

(declare-fun m!522671 () Bool)

(assert (=> start!49542 m!522671))

(declare-fun m!522673 () Bool)

(assert (=> start!49542 m!522673))

(assert (=> b!544925 m!522661))

(assert (=> b!544925 m!522661))

(declare-fun m!522675 () Bool)

(assert (=> b!544925 m!522675))

(assert (=> b!544923 m!522661))

(assert (=> b!544923 m!522661))

(declare-fun m!522677 () Bool)

(assert (=> b!544923 m!522677))

(assert (=> b!544923 m!522677))

(assert (=> b!544923 m!522661))

(declare-fun m!522679 () Bool)

(assert (=> b!544923 m!522679))

(declare-fun m!522681 () Bool)

(assert (=> b!544922 m!522681))

(declare-fun m!522683 () Bool)

(assert (=> b!544916 m!522683))

(declare-fun m!522685 () Bool)

(assert (=> b!544917 m!522685))

(declare-fun m!522687 () Bool)

(assert (=> b!544918 m!522687))

(assert (=> b!544918 m!522661))

(check-sat (not b!544922) (not start!49542) (not b!544925) (not b!544919) (not b!544924) (not b!544921) (not b!544928) (not b!544916) (not b!544923) (not b!544926) (not b!544917))
(check-sat)
(get-model)

(declare-fun d!82051 () Bool)

(declare-fun lt!248681 () (_ BitVec 32))

(assert (=> d!82051 (and (bvsge lt!248681 #b00000000000000000000000000000000) (bvslt lt!248681 (bvadd mask!3216 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!82051 (= lt!248681 (choose!52 index!1177 x!1030 mask!3216))))

(assert (=> d!82051 (validMask!0 mask!3216)))

(assert (=> d!82051 (= (nextIndex!0 index!1177 x!1030 mask!3216) lt!248681)))

(declare-fun bs!16998 () Bool)

(assert (= bs!16998 d!82051))

(declare-fun m!522721 () Bool)

(assert (=> bs!16998 m!522721))

(assert (=> bs!16998 m!522671))

(assert (=> b!544926 d!82051))

(declare-fun b!544986 () Bool)

(declare-fun e!315006 () SeekEntryResult!4975)

(assert (=> b!544986 (= e!315006 (Intermediate!4975 true index!1177 x!1030))))

(declare-fun e!315009 () SeekEntryResult!4975)

(declare-fun b!544987 () Bool)

(assert (=> b!544987 (= e!315009 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16510 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!544988 () Bool)

(declare-fun lt!248690 () SeekEntryResult!4975)

(assert (=> b!544988 (and (bvsge (index!22126 lt!248690) #b00000000000000000000000000000000) (bvslt (index!22126 lt!248690) (size!16874 a!3154)))))

(declare-fun res!339230 () Bool)

(assert (=> b!544988 (= res!339230 (= (select (arr!16510 a!3154) (index!22126 lt!248690)) (select (arr!16510 a!3154) j!147)))))

(declare-fun e!315007 () Bool)

(assert (=> b!544988 (=> res!339230 e!315007)))

(declare-fun e!315010 () Bool)

(assert (=> b!544988 (= e!315010 e!315007)))

(declare-fun b!544989 () Bool)

(declare-fun e!315008 () Bool)

(assert (=> b!544989 (= e!315008 e!315010)))

(declare-fun res!339228 () Bool)

(get-info :version)

(assert (=> b!544989 (= res!339228 (and ((_ is Intermediate!4975) lt!248690) (not (undefined!5787 lt!248690)) (bvslt (x!51073 lt!248690) #b01111111111111111111111111111110) (bvsge (x!51073 lt!248690) #b00000000000000000000000000000000) (bvsge (x!51073 lt!248690) x!1030)))))

(assert (=> b!544989 (=> (not res!339228) (not e!315010))))

(declare-fun b!544990 () Bool)

(assert (=> b!544990 (and (bvsge (index!22126 lt!248690) #b00000000000000000000000000000000) (bvslt (index!22126 lt!248690) (size!16874 a!3154)))))

(assert (=> b!544990 (= e!315007 (= (select (arr!16510 a!3154) (index!22126 lt!248690)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!544991 () Bool)

(assert (=> b!544991 (= e!315008 (bvsge (x!51073 lt!248690) #b01111111111111111111111111111110))))

(declare-fun d!82053 () Bool)

(assert (=> d!82053 e!315008))

(declare-fun c!63205 () Bool)

(assert (=> d!82053 (= c!63205 (and ((_ is Intermediate!4975) lt!248690) (undefined!5787 lt!248690)))))

(assert (=> d!82053 (= lt!248690 e!315006)))

(declare-fun c!63204 () Bool)

(assert (=> d!82053 (= c!63204 (bvsge x!1030 #b01111111111111111111111111111110))))

(declare-fun lt!248689 () (_ BitVec 64))

(assert (=> d!82053 (= lt!248689 (select (arr!16510 a!3154) index!1177))))

(assert (=> d!82053 (validMask!0 mask!3216)))

(assert (=> d!82053 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16510 a!3154) j!147) a!3154 mask!3216) lt!248690)))

(declare-fun b!544992 () Bool)

(assert (=> b!544992 (= e!315009 (Intermediate!4975 false index!1177 x!1030))))

(declare-fun b!544993 () Bool)

(assert (=> b!544993 (and (bvsge (index!22126 lt!248690) #b00000000000000000000000000000000) (bvslt (index!22126 lt!248690) (size!16874 a!3154)))))

(declare-fun res!339229 () Bool)

(assert (=> b!544993 (= res!339229 (= (select (arr!16510 a!3154) (index!22126 lt!248690)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!544993 (=> res!339229 e!315007)))

(declare-fun b!544994 () Bool)

(assert (=> b!544994 (= e!315006 e!315009)))

(declare-fun c!63206 () Bool)

(assert (=> b!544994 (= c!63206 (or (= lt!248689 (select (arr!16510 a!3154) j!147)) (= (bvadd lt!248689 lt!248689) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!82053 c!63204) b!544986))

(assert (= (and d!82053 (not c!63204)) b!544994))

(assert (= (and b!544994 c!63206) b!544992))

(assert (= (and b!544994 (not c!63206)) b!544987))

(assert (= (and d!82053 c!63205) b!544991))

(assert (= (and d!82053 (not c!63205)) b!544989))

(assert (= (and b!544989 res!339228) b!544988))

(assert (= (and b!544988 (not res!339230)) b!544993))

(assert (= (and b!544993 (not res!339229)) b!544990))

(declare-fun m!522725 () Bool)

(assert (=> b!544988 m!522725))

(assert (=> b!544990 m!522725))

(assert (=> b!544993 m!522725))

(assert (=> d!82053 m!522659))

(assert (=> d!82053 m!522671))

(assert (=> b!544987 m!522667))

(assert (=> b!544987 m!522667))

(assert (=> b!544987 m!522661))

(declare-fun m!522727 () Bool)

(assert (=> b!544987 m!522727))

(assert (=> b!544925 d!82053))

(declare-fun d!82061 () Bool)

(declare-fun res!339235 () Bool)

(declare-fun e!315015 () Bool)

(assert (=> d!82061 (=> res!339235 e!315015)))

(assert (=> d!82061 (= res!339235 (= (select (arr!16510 a!3154) #b00000000000000000000000000000000) k0!1998))))

(assert (=> d!82061 (= (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000) e!315015)))

(declare-fun b!544999 () Bool)

(declare-fun e!315016 () Bool)

(assert (=> b!544999 (= e!315015 e!315016)))

(declare-fun res!339236 () Bool)

(assert (=> b!544999 (=> (not res!339236) (not e!315016))))

(assert (=> b!544999 (= res!339236 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16874 a!3154)))))

(declare-fun b!545000 () Bool)

(assert (=> b!545000 (= e!315016 (arrayContainsKey!0 a!3154 k0!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82061 (not res!339235)) b!544999))

(assert (= (and b!544999 res!339236) b!545000))

(declare-fun m!522729 () Bool)

(assert (=> d!82061 m!522729))

(declare-fun m!522731 () Bool)

(assert (=> b!545000 m!522731))

(assert (=> b!544922 d!82061))

(declare-fun b!545024 () Bool)

(declare-fun e!315037 () Bool)

(declare-fun e!315036 () Bool)

(assert (=> b!545024 (= e!315037 e!315036)))

(declare-fun c!63212 () Bool)

(assert (=> b!545024 (= c!63212 (validKeyInArray!0 (select (arr!16510 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!545025 () Bool)

(declare-fun e!315035 () Bool)

(assert (=> b!545025 (= e!315036 e!315035)))

(declare-fun lt!248701 () (_ BitVec 64))

(assert (=> b!545025 (= lt!248701 (select (arr!16510 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16892 0))(
  ( (Unit!16893) )
))
(declare-fun lt!248702 () Unit!16892)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34368 (_ BitVec 64) (_ BitVec 32)) Unit!16892)

(assert (=> b!545025 (= lt!248702 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!248701 #b00000000000000000000000000000000))))

(assert (=> b!545025 (arrayContainsKey!0 a!3154 lt!248701 #b00000000000000000000000000000000)))

(declare-fun lt!248700 () Unit!16892)

(assert (=> b!545025 (= lt!248700 lt!248702)))

(declare-fun res!339250 () Bool)

(assert (=> b!545025 (= res!339250 (= (seekEntryOrOpen!0 (select (arr!16510 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4975 #b00000000000000000000000000000000)))))

(assert (=> b!545025 (=> (not res!339250) (not e!315035))))

(declare-fun b!545026 () Bool)

(declare-fun call!32114 () Bool)

(assert (=> b!545026 (= e!315036 call!32114)))

(declare-fun bm!32111 () Bool)

(assert (=> bm!32111 (= call!32114 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!545027 () Bool)

(assert (=> b!545027 (= e!315035 call!32114)))

(declare-fun d!82065 () Bool)

(declare-fun res!339251 () Bool)

(assert (=> d!82065 (=> res!339251 e!315037)))

(assert (=> d!82065 (= res!339251 (bvsge #b00000000000000000000000000000000 (size!16874 a!3154)))))

(assert (=> d!82065 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!315037)))

(assert (= (and d!82065 (not res!339251)) b!545024))

(assert (= (and b!545024 c!63212) b!545025))

(assert (= (and b!545024 (not c!63212)) b!545026))

(assert (= (and b!545025 res!339250) b!545027))

(assert (= (or b!545027 b!545026) bm!32111))

(assert (=> b!545024 m!522729))

(assert (=> b!545024 m!522729))

(declare-fun m!522743 () Bool)

(assert (=> b!545024 m!522743))

(assert (=> b!545025 m!522729))

(declare-fun m!522745 () Bool)

(assert (=> b!545025 m!522745))

(declare-fun m!522747 () Bool)

(assert (=> b!545025 m!522747))

(assert (=> b!545025 m!522729))

(declare-fun m!522749 () Bool)

(assert (=> b!545025 m!522749))

(declare-fun m!522751 () Bool)

(assert (=> bm!32111 m!522751))

(assert (=> b!544916 d!82065))

(declare-fun b!545028 () Bool)

(declare-fun e!315038 () SeekEntryResult!4975)

(assert (=> b!545028 (= e!315038 (Intermediate!4975 true lt!248663 (bvadd #b00000000000000000000000000000001 x!1030)))))

(declare-fun b!545029 () Bool)

(declare-fun e!315041 () SeekEntryResult!4975)

(assert (=> b!545029 (= e!315041 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030 #b00000000000000000000000000000001) (nextIndex!0 lt!248663 (bvadd #b00000000000000000000000000000001 x!1030) mask!3216) (select (arr!16510 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545030 () Bool)

(declare-fun lt!248704 () SeekEntryResult!4975)

(assert (=> b!545030 (and (bvsge (index!22126 lt!248704) #b00000000000000000000000000000000) (bvslt (index!22126 lt!248704) (size!16874 a!3154)))))

(declare-fun res!339254 () Bool)

(assert (=> b!545030 (= res!339254 (= (select (arr!16510 a!3154) (index!22126 lt!248704)) (select (arr!16510 a!3154) j!147)))))

(declare-fun e!315039 () Bool)

(assert (=> b!545030 (=> res!339254 e!315039)))

(declare-fun e!315042 () Bool)

(assert (=> b!545030 (= e!315042 e!315039)))

(declare-fun b!545031 () Bool)

(declare-fun e!315040 () Bool)

(assert (=> b!545031 (= e!315040 e!315042)))

(declare-fun res!339252 () Bool)

(assert (=> b!545031 (= res!339252 (and ((_ is Intermediate!4975) lt!248704) (not (undefined!5787 lt!248704)) (bvslt (x!51073 lt!248704) #b01111111111111111111111111111110) (bvsge (x!51073 lt!248704) #b00000000000000000000000000000000) (bvsge (x!51073 lt!248704) (bvadd #b00000000000000000000000000000001 x!1030))))))

(assert (=> b!545031 (=> (not res!339252) (not e!315042))))

(declare-fun b!545032 () Bool)

(assert (=> b!545032 (and (bvsge (index!22126 lt!248704) #b00000000000000000000000000000000) (bvslt (index!22126 lt!248704) (size!16874 a!3154)))))

(assert (=> b!545032 (= e!315039 (= (select (arr!16510 a!3154) (index!22126 lt!248704)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!545033 () Bool)

(assert (=> b!545033 (= e!315040 (bvsge (x!51073 lt!248704) #b01111111111111111111111111111110))))

(declare-fun d!82075 () Bool)

(assert (=> d!82075 e!315040))

(declare-fun c!63214 () Bool)

(assert (=> d!82075 (= c!63214 (and ((_ is Intermediate!4975) lt!248704) (undefined!5787 lt!248704)))))

(assert (=> d!82075 (= lt!248704 e!315038)))

(declare-fun c!63213 () Bool)

(assert (=> d!82075 (= c!63213 (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b01111111111111111111111111111110))))

(declare-fun lt!248703 () (_ BitVec 64))

(assert (=> d!82075 (= lt!248703 (select (arr!16510 a!3154) lt!248663))))

(assert (=> d!82075 (validMask!0 mask!3216)))

(assert (=> d!82075 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!248663 (select (arr!16510 a!3154) j!147) a!3154 mask!3216) lt!248704)))

(declare-fun b!545034 () Bool)

(assert (=> b!545034 (= e!315041 (Intermediate!4975 false lt!248663 (bvadd #b00000000000000000000000000000001 x!1030)))))

(declare-fun b!545035 () Bool)

(assert (=> b!545035 (and (bvsge (index!22126 lt!248704) #b00000000000000000000000000000000) (bvslt (index!22126 lt!248704) (size!16874 a!3154)))))

(declare-fun res!339253 () Bool)

(assert (=> b!545035 (= res!339253 (= (select (arr!16510 a!3154) (index!22126 lt!248704)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!545035 (=> res!339253 e!315039)))

(declare-fun b!545036 () Bool)

(assert (=> b!545036 (= e!315038 e!315041)))

(declare-fun c!63215 () Bool)

(assert (=> b!545036 (= c!63215 (or (= lt!248703 (select (arr!16510 a!3154) j!147)) (= (bvadd lt!248703 lt!248703) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!82075 c!63213) b!545028))

(assert (= (and d!82075 (not c!63213)) b!545036))

(assert (= (and b!545036 c!63215) b!545034))

(assert (= (and b!545036 (not c!63215)) b!545029))

(assert (= (and d!82075 c!63214) b!545033))

(assert (= (and d!82075 (not c!63214)) b!545031))

(assert (= (and b!545031 res!339252) b!545030))

(assert (= (and b!545030 (not res!339254)) b!545035))

(assert (= (and b!545035 (not res!339253)) b!545032))

(declare-fun m!522753 () Bool)

(assert (=> b!545030 m!522753))

(assert (=> b!545032 m!522753))

(assert (=> b!545035 m!522753))

(declare-fun m!522755 () Bool)

(assert (=> d!82075 m!522755))

(assert (=> d!82075 m!522671))

(declare-fun m!522757 () Bool)

(assert (=> b!545029 m!522757))

(assert (=> b!545029 m!522757))

(assert (=> b!545029 m!522661))

(declare-fun m!522759 () Bool)

(assert (=> b!545029 m!522759))

(assert (=> b!544921 d!82075))

(declare-fun e!315043 () SeekEntryResult!4975)

(declare-fun b!545037 () Bool)

(assert (=> b!545037 (= e!315043 (Intermediate!4975 true (toIndex!0 (select (arr!16510 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun e!315046 () SeekEntryResult!4975)

(declare-fun b!545038 () Bool)

(assert (=> b!545038 (= e!315046 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16510 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16510 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545039 () Bool)

(declare-fun lt!248706 () SeekEntryResult!4975)

(assert (=> b!545039 (and (bvsge (index!22126 lt!248706) #b00000000000000000000000000000000) (bvslt (index!22126 lt!248706) (size!16874 a!3154)))))

(declare-fun res!339257 () Bool)

(assert (=> b!545039 (= res!339257 (= (select (arr!16510 a!3154) (index!22126 lt!248706)) (select (arr!16510 a!3154) j!147)))))

(declare-fun e!315044 () Bool)

(assert (=> b!545039 (=> res!339257 e!315044)))

(declare-fun e!315047 () Bool)

(assert (=> b!545039 (= e!315047 e!315044)))

(declare-fun b!545040 () Bool)

(declare-fun e!315045 () Bool)

(assert (=> b!545040 (= e!315045 e!315047)))

(declare-fun res!339255 () Bool)

(assert (=> b!545040 (= res!339255 (and ((_ is Intermediate!4975) lt!248706) (not (undefined!5787 lt!248706)) (bvslt (x!51073 lt!248706) #b01111111111111111111111111111110) (bvsge (x!51073 lt!248706) #b00000000000000000000000000000000) (bvsge (x!51073 lt!248706) #b00000000000000000000000000000000)))))

(assert (=> b!545040 (=> (not res!339255) (not e!315047))))

(declare-fun b!545041 () Bool)

(assert (=> b!545041 (and (bvsge (index!22126 lt!248706) #b00000000000000000000000000000000) (bvslt (index!22126 lt!248706) (size!16874 a!3154)))))

(assert (=> b!545041 (= e!315044 (= (select (arr!16510 a!3154) (index!22126 lt!248706)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!545042 () Bool)

(assert (=> b!545042 (= e!315045 (bvsge (x!51073 lt!248706) #b01111111111111111111111111111110))))

(declare-fun d!82077 () Bool)

(assert (=> d!82077 e!315045))

(declare-fun c!63217 () Bool)

(assert (=> d!82077 (= c!63217 (and ((_ is Intermediate!4975) lt!248706) (undefined!5787 lt!248706)))))

(assert (=> d!82077 (= lt!248706 e!315043)))

(declare-fun c!63216 () Bool)

(assert (=> d!82077 (= c!63216 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!248705 () (_ BitVec 64))

(assert (=> d!82077 (= lt!248705 (select (arr!16510 a!3154) (toIndex!0 (select (arr!16510 a!3154) j!147) mask!3216)))))

(assert (=> d!82077 (validMask!0 mask!3216)))

(assert (=> d!82077 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16510 a!3154) j!147) mask!3216) (select (arr!16510 a!3154) j!147) a!3154 mask!3216) lt!248706)))

(declare-fun b!545043 () Bool)

(assert (=> b!545043 (= e!315046 (Intermediate!4975 false (toIndex!0 (select (arr!16510 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!545044 () Bool)

(assert (=> b!545044 (and (bvsge (index!22126 lt!248706) #b00000000000000000000000000000000) (bvslt (index!22126 lt!248706) (size!16874 a!3154)))))

(declare-fun res!339256 () Bool)

(assert (=> b!545044 (= res!339256 (= (select (arr!16510 a!3154) (index!22126 lt!248706)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!545044 (=> res!339256 e!315044)))

(declare-fun b!545045 () Bool)

(assert (=> b!545045 (= e!315043 e!315046)))

(declare-fun c!63218 () Bool)

(assert (=> b!545045 (= c!63218 (or (= lt!248705 (select (arr!16510 a!3154) j!147)) (= (bvadd lt!248705 lt!248705) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!82077 c!63216) b!545037))

(assert (= (and d!82077 (not c!63216)) b!545045))

(assert (= (and b!545045 c!63218) b!545043))

(assert (= (and b!545045 (not c!63218)) b!545038))

(assert (= (and d!82077 c!63217) b!545042))

(assert (= (and d!82077 (not c!63217)) b!545040))

(assert (= (and b!545040 res!339255) b!545039))

(assert (= (and b!545039 (not res!339257)) b!545044))

(assert (= (and b!545044 (not res!339256)) b!545041))

(declare-fun m!522761 () Bool)

(assert (=> b!545039 m!522761))

(assert (=> b!545041 m!522761))

(assert (=> b!545044 m!522761))

(assert (=> d!82077 m!522677))

(declare-fun m!522763 () Bool)

(assert (=> d!82077 m!522763))

(assert (=> d!82077 m!522671))

(assert (=> b!545038 m!522677))

(declare-fun m!522765 () Bool)

(assert (=> b!545038 m!522765))

(assert (=> b!545038 m!522765))

(assert (=> b!545038 m!522661))

(declare-fun m!522767 () Bool)

(assert (=> b!545038 m!522767))

(assert (=> b!544923 d!82077))

(declare-fun d!82079 () Bool)

(declare-fun lt!248721 () (_ BitVec 32))

(declare-fun lt!248720 () (_ BitVec 32))

(assert (=> d!82079 (= lt!248721 (bvmul (bvxor lt!248720 (bvlshr lt!248720 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82079 (= lt!248720 ((_ extract 31 0) (bvand (bvxor (select (arr!16510 a!3154) j!147) (bvlshr (select (arr!16510 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82079 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!339260 (let ((h!11641 ((_ extract 31 0) (bvand (bvxor (select (arr!16510 a!3154) j!147) (bvlshr (select (arr!16510 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51079 (bvmul (bvxor h!11641 (bvlshr h!11641 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51079 (bvlshr x!51079 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!339260 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!339260 #b00000000000000000000000000000000))))))

(assert (=> d!82079 (= (toIndex!0 (select (arr!16510 a!3154) j!147) mask!3216) (bvand (bvxor lt!248721 (bvlshr lt!248721 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!544923 d!82079))

(declare-fun d!82083 () Bool)

(assert (=> d!82083 (= (validKeyInArray!0 k0!1998) (and (not (= k0!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!544928 d!82083))

(declare-fun d!82085 () Bool)

(declare-fun res!339277 () Bool)

(declare-fun e!315076 () Bool)

(assert (=> d!82085 (=> res!339277 e!315076)))

(assert (=> d!82085 (= res!339277 (bvsge #b00000000000000000000000000000000 (size!16874 a!3154)))))

(assert (=> d!82085 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10679) e!315076)))

(declare-fun b!545086 () Bool)

(declare-fun e!315078 () Bool)

(assert (=> b!545086 (= e!315076 e!315078)))

(declare-fun res!339278 () Bool)

(assert (=> b!545086 (=> (not res!339278) (not e!315078))))

(declare-fun e!315077 () Bool)

(assert (=> b!545086 (= res!339278 (not e!315077))))

(declare-fun res!339279 () Bool)

(assert (=> b!545086 (=> (not res!339279) (not e!315077))))

(assert (=> b!545086 (= res!339279 (validKeyInArray!0 (select (arr!16510 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!545087 () Bool)

(declare-fun contains!2817 (List!10682 (_ BitVec 64)) Bool)

(assert (=> b!545087 (= e!315077 (contains!2817 Nil!10679 (select (arr!16510 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!545088 () Bool)

(declare-fun e!315075 () Bool)

(declare-fun call!32120 () Bool)

(assert (=> b!545088 (= e!315075 call!32120)))

(declare-fun b!545089 () Bool)

(assert (=> b!545089 (= e!315078 e!315075)))

(declare-fun c!63230 () Bool)

(assert (=> b!545089 (= c!63230 (validKeyInArray!0 (select (arr!16510 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!32117 () Bool)

(assert (=> bm!32117 (= call!32120 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63230 (Cons!10678 (select (arr!16510 a!3154) #b00000000000000000000000000000000) Nil!10679) Nil!10679)))))

(declare-fun b!545090 () Bool)

(assert (=> b!545090 (= e!315075 call!32120)))

(assert (= (and d!82085 (not res!339277)) b!545086))

(assert (= (and b!545086 res!339279) b!545087))

(assert (= (and b!545086 res!339278) b!545089))

(assert (= (and b!545089 c!63230) b!545090))

(assert (= (and b!545089 (not c!63230)) b!545088))

(assert (= (or b!545090 b!545088) bm!32117))

(assert (=> b!545086 m!522729))

(assert (=> b!545086 m!522729))

(assert (=> b!545086 m!522743))

(assert (=> b!545087 m!522729))

(assert (=> b!545087 m!522729))

(declare-fun m!522781 () Bool)

(assert (=> b!545087 m!522781))

(assert (=> b!545089 m!522729))

(assert (=> b!545089 m!522729))

(assert (=> b!545089 m!522743))

(assert (=> bm!32117 m!522729))

(declare-fun m!522783 () Bool)

(assert (=> bm!32117 m!522783))

(assert (=> b!544917 d!82085))

(declare-fun b!545160 () Bool)

(declare-fun c!63256 () Bool)

(declare-fun lt!248751 () (_ BitVec 64))

(assert (=> b!545160 (= c!63256 (= lt!248751 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!315124 () SeekEntryResult!4975)

(declare-fun e!315122 () SeekEntryResult!4975)

(assert (=> b!545160 (= e!315124 e!315122)))

(declare-fun b!545161 () Bool)

(declare-fun lt!248753 () SeekEntryResult!4975)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34368 (_ BitVec 32)) SeekEntryResult!4975)

(assert (=> b!545161 (= e!315122 (seekKeyOrZeroReturnVacant!0 (x!51073 lt!248753) (index!22126 lt!248753) (index!22126 lt!248753) k0!1998 a!3154 mask!3216))))

(declare-fun b!545162 () Bool)

(declare-fun e!315123 () SeekEntryResult!4975)

(assert (=> b!545162 (= e!315123 e!315124)))

(assert (=> b!545162 (= lt!248751 (select (arr!16510 a!3154) (index!22126 lt!248753)))))

(declare-fun c!63257 () Bool)

(assert (=> b!545162 (= c!63257 (= lt!248751 k0!1998))))

(declare-fun b!545163 () Bool)

(assert (=> b!545163 (= e!315122 (MissingZero!4975 (index!22126 lt!248753)))))

(declare-fun b!545164 () Bool)

(assert (=> b!545164 (= e!315123 Undefined!4975)))

(declare-fun d!82087 () Bool)

(declare-fun lt!248752 () SeekEntryResult!4975)

(assert (=> d!82087 (and (or ((_ is Undefined!4975) lt!248752) (not ((_ is Found!4975) lt!248752)) (and (bvsge (index!22125 lt!248752) #b00000000000000000000000000000000) (bvslt (index!22125 lt!248752) (size!16874 a!3154)))) (or ((_ is Undefined!4975) lt!248752) ((_ is Found!4975) lt!248752) (not ((_ is MissingZero!4975) lt!248752)) (and (bvsge (index!22124 lt!248752) #b00000000000000000000000000000000) (bvslt (index!22124 lt!248752) (size!16874 a!3154)))) (or ((_ is Undefined!4975) lt!248752) ((_ is Found!4975) lt!248752) ((_ is MissingZero!4975) lt!248752) (not ((_ is MissingVacant!4975) lt!248752)) (and (bvsge (index!22127 lt!248752) #b00000000000000000000000000000000) (bvslt (index!22127 lt!248752) (size!16874 a!3154)))) (or ((_ is Undefined!4975) lt!248752) (ite ((_ is Found!4975) lt!248752) (= (select (arr!16510 a!3154) (index!22125 lt!248752)) k0!1998) (ite ((_ is MissingZero!4975) lt!248752) (= (select (arr!16510 a!3154) (index!22124 lt!248752)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4975) lt!248752) (= (select (arr!16510 a!3154) (index!22127 lt!248752)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82087 (= lt!248752 e!315123)))

(declare-fun c!63255 () Bool)

(assert (=> d!82087 (= c!63255 (and ((_ is Intermediate!4975) lt!248753) (undefined!5787 lt!248753)))))

(assert (=> d!82087 (= lt!248753 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1998 mask!3216) k0!1998 a!3154 mask!3216))))

(assert (=> d!82087 (validMask!0 mask!3216)))

(assert (=> d!82087 (= (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216) lt!248752)))

(declare-fun b!545165 () Bool)

(assert (=> b!545165 (= e!315124 (Found!4975 (index!22126 lt!248753)))))

(assert (= (and d!82087 c!63255) b!545164))

(assert (= (and d!82087 (not c!63255)) b!545162))

(assert (= (and b!545162 c!63257) b!545165))

(assert (= (and b!545162 (not c!63257)) b!545160))

(assert (= (and b!545160 c!63256) b!545163))

(assert (= (and b!545160 (not c!63256)) b!545161))

(declare-fun m!522817 () Bool)

(assert (=> b!545161 m!522817))

(declare-fun m!522819 () Bool)

(assert (=> b!545162 m!522819))

(declare-fun m!522821 () Bool)

(assert (=> d!82087 m!522821))

(declare-fun m!522823 () Bool)

(assert (=> d!82087 m!522823))

(declare-fun m!522825 () Bool)

(assert (=> d!82087 m!522825))

(declare-fun m!522827 () Bool)

(assert (=> d!82087 m!522827))

(assert (=> d!82087 m!522671))

(assert (=> d!82087 m!522823))

(declare-fun m!522829 () Bool)

(assert (=> d!82087 m!522829))

(assert (=> b!544919 d!82087))

(declare-fun d!82103 () Bool)

(assert (=> d!82103 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49542 d!82103))

(declare-fun d!82109 () Bool)

(assert (=> d!82109 (= (array_inv!12284 a!3154) (bvsge (size!16874 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!49542 d!82109))

(declare-fun d!82111 () Bool)

(assert (=> d!82111 (= (validKeyInArray!0 (select (arr!16510 a!3154) j!147)) (and (not (= (select (arr!16510 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16510 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!544924 d!82111))

(check-sat (not b!545024) (not d!82051) (not b!545025) (not bm!32111) (not b!545000) (not b!545029) (not d!82087) (not bm!32117) (not b!545038) (not b!545161) (not d!82077) (not d!82075) (not b!545087) (not b!545089) (not b!545086) (not d!82053) (not b!544987))
(check-sat)
