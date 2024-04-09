; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50278 () Bool)

(assert start!50278)

(declare-fun b!550046 () Bool)

(declare-fun res!343346 () Bool)

(declare-fun e!317526 () Bool)

(assert (=> b!550046 (=> (not res!343346) (not e!317526))))

(declare-datatypes ((array!34685 0))(
  ( (array!34686 (arr!16654 (Array (_ BitVec 32) (_ BitVec 64))) (size!17018 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34685)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34685 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!550046 (= res!343346 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!550047 () Bool)

(declare-fun res!343343 () Bool)

(declare-fun e!317524 () Bool)

(assert (=> b!550047 (=> (not res!343343) (not e!317524))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5110 0))(
  ( (MissingZero!5110 (index!22667 (_ BitVec 32))) (Found!5110 (index!22668 (_ BitVec 32))) (Intermediate!5110 (undefined!5922 Bool) (index!22669 (_ BitVec 32)) (x!51619 (_ BitVec 32))) (Undefined!5110) (MissingVacant!5110 (index!22670 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34685 (_ BitVec 32)) SeekEntryResult!5110)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!550047 (= res!343343 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16654 a!3118) j!142) mask!3119) (select (arr!16654 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16654 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16654 a!3118) i!1132 k0!1914) j!142) (array!34686 (store (arr!16654 a!3118) i!1132 k0!1914) (size!17018 a!3118)) mask!3119)))))

(declare-fun b!550048 () Bool)

(assert (=> b!550048 (= e!317526 e!317524)))

(declare-fun res!343345 () Bool)

(assert (=> b!550048 (=> (not res!343345) (not e!317524))))

(declare-fun lt!250403 () SeekEntryResult!5110)

(assert (=> b!550048 (= res!343345 (or (= lt!250403 (MissingZero!5110 i!1132)) (= lt!250403 (MissingVacant!5110 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34685 (_ BitVec 32)) SeekEntryResult!5110)

(assert (=> b!550048 (= lt!250403 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun res!343341 () Bool)

(assert (=> start!50278 (=> (not res!343341) (not e!317526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50278 (= res!343341 (validMask!0 mask!3119))))

(assert (=> start!50278 e!317526))

(assert (=> start!50278 true))

(declare-fun array_inv!12428 (array!34685) Bool)

(assert (=> start!50278 (array_inv!12428 a!3118)))

(declare-fun e!317527 () Bool)

(declare-fun b!550049 () Bool)

(assert (=> b!550049 (= e!317527 (= (seekEntryOrOpen!0 (select (arr!16654 a!3118) j!142) a!3118 mask!3119) (Found!5110 j!142)))))

(declare-fun b!550050 () Bool)

(declare-fun res!343348 () Bool)

(assert (=> b!550050 (=> (not res!343348) (not e!317526))))

(assert (=> b!550050 (= res!343348 (and (= (size!17018 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17018 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17018 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!550051 () Bool)

(assert (=> b!550051 (= e!317524 (not (or (bvslt mask!3119 #b00000000000000000000000000000000) (bvsle mask!3119 #b00111111111111111111111111111111))))))

(assert (=> b!550051 e!317527))

(declare-fun res!343342 () Bool)

(assert (=> b!550051 (=> (not res!343342) (not e!317527))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34685 (_ BitVec 32)) Bool)

(assert (=> b!550051 (= res!343342 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!16994 0))(
  ( (Unit!16995) )
))
(declare-fun lt!250402 () Unit!16994)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34685 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16994)

(assert (=> b!550051 (= lt!250402 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!550052 () Bool)

(declare-fun res!343349 () Bool)

(assert (=> b!550052 (=> (not res!343349) (not e!317524))))

(assert (=> b!550052 (= res!343349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!550053 () Bool)

(declare-fun res!343344 () Bool)

(assert (=> b!550053 (=> (not res!343344) (not e!317526))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!550053 (= res!343344 (validKeyInArray!0 (select (arr!16654 a!3118) j!142)))))

(declare-fun b!550054 () Bool)

(declare-fun res!343340 () Bool)

(assert (=> b!550054 (=> (not res!343340) (not e!317526))))

(assert (=> b!550054 (= res!343340 (validKeyInArray!0 k0!1914))))

(declare-fun b!550055 () Bool)

(declare-fun res!343347 () Bool)

(assert (=> b!550055 (=> (not res!343347) (not e!317524))))

(declare-datatypes ((List!10787 0))(
  ( (Nil!10784) (Cons!10783 (h!11756 (_ BitVec 64)) (t!17023 List!10787)) )
))
(declare-fun arrayNoDuplicates!0 (array!34685 (_ BitVec 32) List!10787) Bool)

(assert (=> b!550055 (= res!343347 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10784))))

(assert (= (and start!50278 res!343341) b!550050))

(assert (= (and b!550050 res!343348) b!550053))

(assert (= (and b!550053 res!343344) b!550054))

(assert (= (and b!550054 res!343340) b!550046))

(assert (= (and b!550046 res!343346) b!550048))

(assert (= (and b!550048 res!343345) b!550052))

(assert (= (and b!550052 res!343349) b!550055))

(assert (= (and b!550055 res!343347) b!550047))

(assert (= (and b!550047 res!343343) b!550051))

(assert (= (and b!550051 res!343342) b!550049))

(declare-fun m!527125 () Bool)

(assert (=> b!550053 m!527125))

(assert (=> b!550053 m!527125))

(declare-fun m!527127 () Bool)

(assert (=> b!550053 m!527127))

(declare-fun m!527129 () Bool)

(assert (=> start!50278 m!527129))

(declare-fun m!527131 () Bool)

(assert (=> start!50278 m!527131))

(declare-fun m!527133 () Bool)

(assert (=> b!550046 m!527133))

(assert (=> b!550047 m!527125))

(declare-fun m!527135 () Bool)

(assert (=> b!550047 m!527135))

(assert (=> b!550047 m!527125))

(declare-fun m!527137 () Bool)

(assert (=> b!550047 m!527137))

(declare-fun m!527139 () Bool)

(assert (=> b!550047 m!527139))

(assert (=> b!550047 m!527137))

(declare-fun m!527141 () Bool)

(assert (=> b!550047 m!527141))

(assert (=> b!550047 m!527135))

(assert (=> b!550047 m!527125))

(declare-fun m!527143 () Bool)

(assert (=> b!550047 m!527143))

(declare-fun m!527145 () Bool)

(assert (=> b!550047 m!527145))

(assert (=> b!550047 m!527137))

(assert (=> b!550047 m!527139))

(declare-fun m!527147 () Bool)

(assert (=> b!550051 m!527147))

(declare-fun m!527149 () Bool)

(assert (=> b!550051 m!527149))

(assert (=> b!550049 m!527125))

(assert (=> b!550049 m!527125))

(declare-fun m!527151 () Bool)

(assert (=> b!550049 m!527151))

(declare-fun m!527153 () Bool)

(assert (=> b!550054 m!527153))

(declare-fun m!527155 () Bool)

(assert (=> b!550048 m!527155))

(declare-fun m!527157 () Bool)

(assert (=> b!550052 m!527157))

(declare-fun m!527159 () Bool)

(assert (=> b!550055 m!527159))

(check-sat (not start!50278) (not b!550047) (not b!550052) (not b!550046) (not b!550049) (not b!550055) (not b!550053) (not b!550054) (not b!550048) (not b!550051))
(check-sat)
(get-model)

(declare-fun d!82697 () Bool)

(assert (=> d!82697 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!50278 d!82697))

(declare-fun d!82699 () Bool)

(assert (=> d!82699 (= (array_inv!12428 a!3118) (bvsge (size!17018 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!50278 d!82699))

(declare-fun d!82703 () Bool)

(declare-fun res!343384 () Bool)

(declare-fun e!317544 () Bool)

(assert (=> d!82703 (=> res!343384 e!317544)))

(assert (=> d!82703 (= res!343384 (= (select (arr!16654 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!82703 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!317544)))

(declare-fun b!550090 () Bool)

(declare-fun e!317545 () Bool)

(assert (=> b!550090 (= e!317544 e!317545)))

(declare-fun res!343385 () Bool)

(assert (=> b!550090 (=> (not res!343385) (not e!317545))))

(assert (=> b!550090 (= res!343385 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17018 a!3118)))))

(declare-fun b!550091 () Bool)

(assert (=> b!550091 (= e!317545 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!82703 (not res!343384)) b!550090))

(assert (= (and b!550090 res!343385) b!550091))

(declare-fun m!527197 () Bool)

(assert (=> d!82703 m!527197))

(declare-fun m!527199 () Bool)

(assert (=> b!550091 m!527199))

(assert (=> b!550046 d!82703))

(declare-fun b!550112 () Bool)

(declare-fun e!317561 () Bool)

(declare-fun e!317563 () Bool)

(assert (=> b!550112 (= e!317561 e!317563)))

(declare-fun lt!250425 () (_ BitVec 64))

(assert (=> b!550112 (= lt!250425 (select (arr!16654 a!3118) j!142))))

(declare-fun lt!250427 () Unit!16994)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34685 (_ BitVec 64) (_ BitVec 32)) Unit!16994)

(assert (=> b!550112 (= lt!250427 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!250425 j!142))))

(assert (=> b!550112 (arrayContainsKey!0 a!3118 lt!250425 #b00000000000000000000000000000000)))

(declare-fun lt!250426 () Unit!16994)

(assert (=> b!550112 (= lt!250426 lt!250427)))

(declare-fun res!343397 () Bool)

(assert (=> b!550112 (= res!343397 (= (seekEntryOrOpen!0 (select (arr!16654 a!3118) j!142) a!3118 mask!3119) (Found!5110 j!142)))))

(assert (=> b!550112 (=> (not res!343397) (not e!317563))))

(declare-fun bm!32246 () Bool)

(declare-fun call!32249 () Bool)

(assert (=> bm!32246 (= call!32249 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!550113 () Bool)

(declare-fun e!317562 () Bool)

(assert (=> b!550113 (= e!317562 e!317561)))

(declare-fun c!63689 () Bool)

(assert (=> b!550113 (= c!63689 (validKeyInArray!0 (select (arr!16654 a!3118) j!142)))))

(declare-fun d!82707 () Bool)

(declare-fun res!343396 () Bool)

(assert (=> d!82707 (=> res!343396 e!317562)))

(assert (=> d!82707 (= res!343396 (bvsge j!142 (size!17018 a!3118)))))

(assert (=> d!82707 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!317562)))

(declare-fun b!550114 () Bool)

(assert (=> b!550114 (= e!317563 call!32249)))

(declare-fun b!550115 () Bool)

(assert (=> b!550115 (= e!317561 call!32249)))

(assert (= (and d!82707 (not res!343396)) b!550113))

(assert (= (and b!550113 c!63689) b!550112))

(assert (= (and b!550113 (not c!63689)) b!550115))

(assert (= (and b!550112 res!343397) b!550114))

(assert (= (or b!550114 b!550115) bm!32246))

(assert (=> b!550112 m!527125))

(declare-fun m!527213 () Bool)

(assert (=> b!550112 m!527213))

(declare-fun m!527215 () Bool)

(assert (=> b!550112 m!527215))

(assert (=> b!550112 m!527125))

(assert (=> b!550112 m!527151))

(declare-fun m!527217 () Bool)

(assert (=> bm!32246 m!527217))

(assert (=> b!550113 m!527125))

(assert (=> b!550113 m!527125))

(assert (=> b!550113 m!527127))

(assert (=> b!550051 d!82707))

(declare-fun d!82717 () Bool)

(assert (=> d!82717 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!250430 () Unit!16994)

(declare-fun choose!38 (array!34685 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16994)

(assert (=> d!82717 (= lt!250430 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!82717 (validMask!0 mask!3119)))

(assert (=> d!82717 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!250430)))

(declare-fun bs!17148 () Bool)

(assert (= bs!17148 d!82717))

(assert (=> bs!17148 m!527147))

(declare-fun m!527219 () Bool)

(assert (=> bs!17148 m!527219))

(assert (=> bs!17148 m!527129))

(assert (=> b!550051 d!82717))

(declare-fun b!550153 () Bool)

(declare-fun e!317592 () Bool)

(declare-fun contains!2837 (List!10787 (_ BitVec 64)) Bool)

(assert (=> b!550153 (= e!317592 (contains!2837 Nil!10784 (select (arr!16654 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!550154 () Bool)

(declare-fun e!317593 () Bool)

(declare-fun e!317591 () Bool)

(assert (=> b!550154 (= e!317593 e!317591)))

(declare-fun res!343415 () Bool)

(assert (=> b!550154 (=> (not res!343415) (not e!317591))))

(assert (=> b!550154 (= res!343415 (not e!317592))))

(declare-fun res!343414 () Bool)

(assert (=> b!550154 (=> (not res!343414) (not e!317592))))

(assert (=> b!550154 (= res!343414 (validKeyInArray!0 (select (arr!16654 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32252 () Bool)

(declare-fun call!32255 () Bool)

(declare-fun c!63701 () Bool)

(assert (=> bm!32252 (= call!32255 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!63701 (Cons!10783 (select (arr!16654 a!3118) #b00000000000000000000000000000000) Nil!10784) Nil!10784)))))

(declare-fun b!550155 () Bool)

(declare-fun e!317590 () Bool)

(assert (=> b!550155 (= e!317591 e!317590)))

(assert (=> b!550155 (= c!63701 (validKeyInArray!0 (select (arr!16654 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!550156 () Bool)

(assert (=> b!550156 (= e!317590 call!32255)))

(declare-fun b!550157 () Bool)

(assert (=> b!550157 (= e!317590 call!32255)))

(declare-fun d!82719 () Bool)

(declare-fun res!343413 () Bool)

(assert (=> d!82719 (=> res!343413 e!317593)))

(assert (=> d!82719 (= res!343413 (bvsge #b00000000000000000000000000000000 (size!17018 a!3118)))))

(assert (=> d!82719 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10784) e!317593)))

(assert (= (and d!82719 (not res!343413)) b!550154))

(assert (= (and b!550154 res!343414) b!550153))

(assert (= (and b!550154 res!343415) b!550155))

(assert (= (and b!550155 c!63701) b!550156))

(assert (= (and b!550155 (not c!63701)) b!550157))

(assert (= (or b!550156 b!550157) bm!32252))

(assert (=> b!550153 m!527197))

(assert (=> b!550153 m!527197))

(declare-fun m!527225 () Bool)

(assert (=> b!550153 m!527225))

(assert (=> b!550154 m!527197))

(assert (=> b!550154 m!527197))

(declare-fun m!527227 () Bool)

(assert (=> b!550154 m!527227))

(assert (=> bm!32252 m!527197))

(declare-fun m!527229 () Bool)

(assert (=> bm!32252 m!527229))

(assert (=> b!550155 m!527197))

(assert (=> b!550155 m!527197))

(assert (=> b!550155 m!527227))

(assert (=> b!550055 d!82719))

(declare-fun d!82723 () Bool)

(assert (=> d!82723 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!550054 d!82723))

(declare-fun b!550215 () Bool)

(declare-fun e!317632 () SeekEntryResult!5110)

(assert (=> b!550215 (= e!317632 Undefined!5110)))

(declare-fun b!550216 () Bool)

(declare-fun e!317630 () SeekEntryResult!5110)

(assert (=> b!550216 (= e!317632 e!317630)))

(declare-fun lt!250457 () (_ BitVec 64))

(declare-fun lt!250456 () SeekEntryResult!5110)

(assert (=> b!550216 (= lt!250457 (select (arr!16654 a!3118) (index!22669 lt!250456)))))

(declare-fun c!63725 () Bool)

(assert (=> b!550216 (= c!63725 (= lt!250457 (select (arr!16654 a!3118) j!142)))))

(declare-fun b!550217 () Bool)

(declare-fun c!63723 () Bool)

(assert (=> b!550217 (= c!63723 (= lt!250457 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!317631 () SeekEntryResult!5110)

(assert (=> b!550217 (= e!317630 e!317631)))

(declare-fun d!82725 () Bool)

(declare-fun lt!250455 () SeekEntryResult!5110)

(get-info :version)

(assert (=> d!82725 (and (or ((_ is Undefined!5110) lt!250455) (not ((_ is Found!5110) lt!250455)) (and (bvsge (index!22668 lt!250455) #b00000000000000000000000000000000) (bvslt (index!22668 lt!250455) (size!17018 a!3118)))) (or ((_ is Undefined!5110) lt!250455) ((_ is Found!5110) lt!250455) (not ((_ is MissingZero!5110) lt!250455)) (and (bvsge (index!22667 lt!250455) #b00000000000000000000000000000000) (bvslt (index!22667 lt!250455) (size!17018 a!3118)))) (or ((_ is Undefined!5110) lt!250455) ((_ is Found!5110) lt!250455) ((_ is MissingZero!5110) lt!250455) (not ((_ is MissingVacant!5110) lt!250455)) (and (bvsge (index!22670 lt!250455) #b00000000000000000000000000000000) (bvslt (index!22670 lt!250455) (size!17018 a!3118)))) (or ((_ is Undefined!5110) lt!250455) (ite ((_ is Found!5110) lt!250455) (= (select (arr!16654 a!3118) (index!22668 lt!250455)) (select (arr!16654 a!3118) j!142)) (ite ((_ is MissingZero!5110) lt!250455) (= (select (arr!16654 a!3118) (index!22667 lt!250455)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5110) lt!250455) (= (select (arr!16654 a!3118) (index!22670 lt!250455)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82725 (= lt!250455 e!317632)))

(declare-fun c!63724 () Bool)

(assert (=> d!82725 (= c!63724 (and ((_ is Intermediate!5110) lt!250456) (undefined!5922 lt!250456)))))

(assert (=> d!82725 (= lt!250456 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16654 a!3118) j!142) mask!3119) (select (arr!16654 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!82725 (validMask!0 mask!3119)))

(assert (=> d!82725 (= (seekEntryOrOpen!0 (select (arr!16654 a!3118) j!142) a!3118 mask!3119) lt!250455)))

(declare-fun b!550218 () Bool)

(assert (=> b!550218 (= e!317630 (Found!5110 (index!22669 lt!250456)))))

(declare-fun b!550219 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34685 (_ BitVec 32)) SeekEntryResult!5110)

(assert (=> b!550219 (= e!317631 (seekKeyOrZeroReturnVacant!0 (x!51619 lt!250456) (index!22669 lt!250456) (index!22669 lt!250456) (select (arr!16654 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!550220 () Bool)

(assert (=> b!550220 (= e!317631 (MissingZero!5110 (index!22669 lt!250456)))))

(assert (= (and d!82725 c!63724) b!550215))

(assert (= (and d!82725 (not c!63724)) b!550216))

(assert (= (and b!550216 c!63725) b!550218))

(assert (= (and b!550216 (not c!63725)) b!550217))

(assert (= (and b!550217 c!63723) b!550220))

(assert (= (and b!550217 (not c!63723)) b!550219))

(declare-fun m!527265 () Bool)

(assert (=> b!550216 m!527265))

(assert (=> d!82725 m!527125))

(assert (=> d!82725 m!527135))

(declare-fun m!527267 () Bool)

(assert (=> d!82725 m!527267))

(declare-fun m!527269 () Bool)

(assert (=> d!82725 m!527269))

(declare-fun m!527271 () Bool)

(assert (=> d!82725 m!527271))

(assert (=> d!82725 m!527129))

(assert (=> d!82725 m!527135))

(assert (=> d!82725 m!527125))

(assert (=> d!82725 m!527143))

(assert (=> b!550219 m!527125))

(declare-fun m!527273 () Bool)

(assert (=> b!550219 m!527273))

(assert (=> b!550049 d!82725))

(declare-fun b!550221 () Bool)

(declare-fun e!317635 () SeekEntryResult!5110)

(assert (=> b!550221 (= e!317635 Undefined!5110)))

(declare-fun b!550222 () Bool)

(declare-fun e!317633 () SeekEntryResult!5110)

(assert (=> b!550222 (= e!317635 e!317633)))

(declare-fun lt!250460 () (_ BitVec 64))

(declare-fun lt!250459 () SeekEntryResult!5110)

(assert (=> b!550222 (= lt!250460 (select (arr!16654 a!3118) (index!22669 lt!250459)))))

(declare-fun c!63728 () Bool)

(assert (=> b!550222 (= c!63728 (= lt!250460 k0!1914))))

(declare-fun b!550223 () Bool)

(declare-fun c!63726 () Bool)

(assert (=> b!550223 (= c!63726 (= lt!250460 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!317634 () SeekEntryResult!5110)

(assert (=> b!550223 (= e!317633 e!317634)))

(declare-fun d!82739 () Bool)

(declare-fun lt!250458 () SeekEntryResult!5110)

(assert (=> d!82739 (and (or ((_ is Undefined!5110) lt!250458) (not ((_ is Found!5110) lt!250458)) (and (bvsge (index!22668 lt!250458) #b00000000000000000000000000000000) (bvslt (index!22668 lt!250458) (size!17018 a!3118)))) (or ((_ is Undefined!5110) lt!250458) ((_ is Found!5110) lt!250458) (not ((_ is MissingZero!5110) lt!250458)) (and (bvsge (index!22667 lt!250458) #b00000000000000000000000000000000) (bvslt (index!22667 lt!250458) (size!17018 a!3118)))) (or ((_ is Undefined!5110) lt!250458) ((_ is Found!5110) lt!250458) ((_ is MissingZero!5110) lt!250458) (not ((_ is MissingVacant!5110) lt!250458)) (and (bvsge (index!22670 lt!250458) #b00000000000000000000000000000000) (bvslt (index!22670 lt!250458) (size!17018 a!3118)))) (or ((_ is Undefined!5110) lt!250458) (ite ((_ is Found!5110) lt!250458) (= (select (arr!16654 a!3118) (index!22668 lt!250458)) k0!1914) (ite ((_ is MissingZero!5110) lt!250458) (= (select (arr!16654 a!3118) (index!22667 lt!250458)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5110) lt!250458) (= (select (arr!16654 a!3118) (index!22670 lt!250458)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!82739 (= lt!250458 e!317635)))

(declare-fun c!63727 () Bool)

(assert (=> d!82739 (= c!63727 (and ((_ is Intermediate!5110) lt!250459) (undefined!5922 lt!250459)))))

(assert (=> d!82739 (= lt!250459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!82739 (validMask!0 mask!3119)))

(assert (=> d!82739 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!250458)))

(declare-fun b!550224 () Bool)

(assert (=> b!550224 (= e!317633 (Found!5110 (index!22669 lt!250459)))))

(declare-fun b!550225 () Bool)

(assert (=> b!550225 (= e!317634 (seekKeyOrZeroReturnVacant!0 (x!51619 lt!250459) (index!22669 lt!250459) (index!22669 lt!250459) k0!1914 a!3118 mask!3119))))

(declare-fun b!550226 () Bool)

(assert (=> b!550226 (= e!317634 (MissingZero!5110 (index!22669 lt!250459)))))

(assert (= (and d!82739 c!63727) b!550221))

(assert (= (and d!82739 (not c!63727)) b!550222))

(assert (= (and b!550222 c!63728) b!550224))

(assert (= (and b!550222 (not c!63728)) b!550223))

(assert (= (and b!550223 c!63726) b!550226))

(assert (= (and b!550223 (not c!63726)) b!550225))

(declare-fun m!527275 () Bool)

(assert (=> b!550222 m!527275))

(declare-fun m!527277 () Bool)

(assert (=> d!82739 m!527277))

(declare-fun m!527279 () Bool)

(assert (=> d!82739 m!527279))

(declare-fun m!527281 () Bool)

(assert (=> d!82739 m!527281))

(declare-fun m!527283 () Bool)

(assert (=> d!82739 m!527283))

(assert (=> d!82739 m!527129))

(assert (=> d!82739 m!527277))

(declare-fun m!527285 () Bool)

(assert (=> d!82739 m!527285))

(declare-fun m!527287 () Bool)

(assert (=> b!550225 m!527287))

(assert (=> b!550048 d!82739))

(declare-fun d!82741 () Bool)

(assert (=> d!82741 (= (validKeyInArray!0 (select (arr!16654 a!3118) j!142)) (and (not (= (select (arr!16654 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16654 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!550053 d!82741))

(declare-fun b!550227 () Bool)

(declare-fun e!317636 () Bool)

(declare-fun e!317638 () Bool)

(assert (=> b!550227 (= e!317636 e!317638)))

(declare-fun lt!250461 () (_ BitVec 64))

(assert (=> b!550227 (= lt!250461 (select (arr!16654 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!250463 () Unit!16994)

(assert (=> b!550227 (= lt!250463 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!250461 #b00000000000000000000000000000000))))

(assert (=> b!550227 (arrayContainsKey!0 a!3118 lt!250461 #b00000000000000000000000000000000)))

(declare-fun lt!250462 () Unit!16994)

(assert (=> b!550227 (= lt!250462 lt!250463)))

(declare-fun res!343432 () Bool)

(assert (=> b!550227 (= res!343432 (= (seekEntryOrOpen!0 (select (arr!16654 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5110 #b00000000000000000000000000000000)))))

(assert (=> b!550227 (=> (not res!343432) (not e!317638))))

(declare-fun bm!32256 () Bool)

(declare-fun call!32259 () Bool)

(assert (=> bm!32256 (= call!32259 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!550228 () Bool)

(declare-fun e!317637 () Bool)

(assert (=> b!550228 (= e!317637 e!317636)))

(declare-fun c!63729 () Bool)

(assert (=> b!550228 (= c!63729 (validKeyInArray!0 (select (arr!16654 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!82743 () Bool)

(declare-fun res!343431 () Bool)

(assert (=> d!82743 (=> res!343431 e!317637)))

(assert (=> d!82743 (= res!343431 (bvsge #b00000000000000000000000000000000 (size!17018 a!3118)))))

(assert (=> d!82743 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!317637)))

(declare-fun b!550229 () Bool)

(assert (=> b!550229 (= e!317638 call!32259)))

(declare-fun b!550230 () Bool)

(assert (=> b!550230 (= e!317636 call!32259)))

(assert (= (and d!82743 (not res!343431)) b!550228))

(assert (= (and b!550228 c!63729) b!550227))

(assert (= (and b!550228 (not c!63729)) b!550230))

(assert (= (and b!550227 res!343432) b!550229))

(assert (= (or b!550229 b!550230) bm!32256))

(assert (=> b!550227 m!527197))

(declare-fun m!527289 () Bool)

(assert (=> b!550227 m!527289))

(declare-fun m!527291 () Bool)

(assert (=> b!550227 m!527291))

(assert (=> b!550227 m!527197))

(declare-fun m!527293 () Bool)

(assert (=> b!550227 m!527293))

(declare-fun m!527295 () Bool)

(assert (=> bm!32256 m!527295))

(assert (=> b!550228 m!527197))

(assert (=> b!550228 m!527197))

(assert (=> b!550228 m!527227))

(assert (=> b!550052 d!82743))

(declare-fun e!317677 () SeekEntryResult!5110)

(declare-fun b!550294 () Bool)

(assert (=> b!550294 (= e!317677 (Intermediate!5110 true (toIndex!0 (select (arr!16654 a!3118) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!550295 () Bool)

(declare-fun e!317679 () Bool)

(declare-fun e!317676 () Bool)

(assert (=> b!550295 (= e!317679 e!317676)))

(declare-fun res!343455 () Bool)

(declare-fun lt!250487 () SeekEntryResult!5110)

(assert (=> b!550295 (= res!343455 (and ((_ is Intermediate!5110) lt!250487) (not (undefined!5922 lt!250487)) (bvslt (x!51619 lt!250487) #b01111111111111111111111111111110) (bvsge (x!51619 lt!250487) #b00000000000000000000000000000000) (bvsge (x!51619 lt!250487) #b00000000000000000000000000000000)))))

(assert (=> b!550295 (=> (not res!343455) (not e!317676))))

(declare-fun b!550296 () Bool)

(assert (=> b!550296 (= e!317679 (bvsge (x!51619 lt!250487) #b01111111111111111111111111111110))))

(declare-fun b!550297 () Bool)

(assert (=> b!550297 (and (bvsge (index!22669 lt!250487) #b00000000000000000000000000000000) (bvslt (index!22669 lt!250487) (size!17018 a!3118)))))

(declare-fun res!343456 () Bool)

(assert (=> b!550297 (= res!343456 (= (select (arr!16654 a!3118) (index!22669 lt!250487)) (select (arr!16654 a!3118) j!142)))))

(declare-fun e!317678 () Bool)

(assert (=> b!550297 (=> res!343456 e!317678)))

(assert (=> b!550297 (= e!317676 e!317678)))

(declare-fun d!82745 () Bool)

(assert (=> d!82745 e!317679))

(declare-fun c!63751 () Bool)

(assert (=> d!82745 (= c!63751 (and ((_ is Intermediate!5110) lt!250487) (undefined!5922 lt!250487)))))

(assert (=> d!82745 (= lt!250487 e!317677)))

(declare-fun c!63752 () Bool)

(assert (=> d!82745 (= c!63752 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!250486 () (_ BitVec 64))

(assert (=> d!82745 (= lt!250486 (select (arr!16654 a!3118) (toIndex!0 (select (arr!16654 a!3118) j!142) mask!3119)))))

(assert (=> d!82745 (validMask!0 mask!3119)))

(assert (=> d!82745 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16654 a!3118) j!142) mask!3119) (select (arr!16654 a!3118) j!142) a!3118 mask!3119) lt!250487)))

(declare-fun b!550298 () Bool)

(declare-fun e!317680 () SeekEntryResult!5110)

(assert (=> b!550298 (= e!317680 (Intermediate!5110 false (toIndex!0 (select (arr!16654 a!3118) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!550299 () Bool)

(assert (=> b!550299 (= e!317677 e!317680)))

(declare-fun c!63753 () Bool)

(assert (=> b!550299 (= c!63753 (or (= lt!250486 (select (arr!16654 a!3118) j!142)) (= (bvadd lt!250486 lt!250486) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!550300 () Bool)

(assert (=> b!550300 (and (bvsge (index!22669 lt!250487) #b00000000000000000000000000000000) (bvslt (index!22669 lt!250487) (size!17018 a!3118)))))

(assert (=> b!550300 (= e!317678 (= (select (arr!16654 a!3118) (index!22669 lt!250487)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!550301 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!550301 (= e!317680 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16654 a!3118) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (arr!16654 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!550302 () Bool)

(assert (=> b!550302 (and (bvsge (index!22669 lt!250487) #b00000000000000000000000000000000) (bvslt (index!22669 lt!250487) (size!17018 a!3118)))))

(declare-fun res!343457 () Bool)

(assert (=> b!550302 (= res!343457 (= (select (arr!16654 a!3118) (index!22669 lt!250487)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!550302 (=> res!343457 e!317678)))

(assert (= (and d!82745 c!63752) b!550294))

(assert (= (and d!82745 (not c!63752)) b!550299))

(assert (= (and b!550299 c!63753) b!550298))

(assert (= (and b!550299 (not c!63753)) b!550301))

(assert (= (and d!82745 c!63751) b!550296))

(assert (= (and d!82745 (not c!63751)) b!550295))

(assert (= (and b!550295 res!343455) b!550297))

(assert (= (and b!550297 (not res!343456)) b!550302))

(assert (= (and b!550302 (not res!343457)) b!550300))

(declare-fun m!527331 () Bool)

(assert (=> b!550300 m!527331))

(assert (=> b!550301 m!527135))

(declare-fun m!527333 () Bool)

(assert (=> b!550301 m!527333))

(assert (=> b!550301 m!527333))

(assert (=> b!550301 m!527125))

(declare-fun m!527335 () Bool)

(assert (=> b!550301 m!527335))

(assert (=> d!82745 m!527135))

(declare-fun m!527337 () Bool)

(assert (=> d!82745 m!527337))

(assert (=> d!82745 m!527129))

(assert (=> b!550297 m!527331))

(assert (=> b!550302 m!527331))

(assert (=> b!550047 d!82745))

(declare-fun d!82757 () Bool)

(declare-fun lt!250503 () (_ BitVec 32))

(declare-fun lt!250502 () (_ BitVec 32))

(assert (=> d!82757 (= lt!250503 (bvmul (bvxor lt!250502 (bvlshr lt!250502 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82757 (= lt!250502 ((_ extract 31 0) (bvand (bvxor (select (arr!16654 a!3118) j!142) (bvlshr (select (arr!16654 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82757 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!343461 (let ((h!11759 ((_ extract 31 0) (bvand (bvxor (select (arr!16654 a!3118) j!142) (bvlshr (select (arr!16654 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51625 (bvmul (bvxor h!11759 (bvlshr h!11759 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51625 (bvlshr x!51625 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!343461 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!343461 #b00000000000000000000000000000000))))))

(assert (=> d!82757 (= (toIndex!0 (select (arr!16654 a!3118) j!142) mask!3119) (bvand (bvxor lt!250503 (bvlshr lt!250503 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!550047 d!82757))

(declare-fun b!550339 () Bool)

(declare-fun e!317702 () SeekEntryResult!5110)

(assert (=> b!550339 (= e!317702 (Intermediate!5110 true (toIndex!0 (select (store (arr!16654 a!3118) i!1132 k0!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!550340 () Bool)

(declare-fun e!317704 () Bool)

(declare-fun e!317701 () Bool)

(assert (=> b!550340 (= e!317704 e!317701)))

(declare-fun res!343471 () Bool)

(declare-fun lt!250505 () SeekEntryResult!5110)

(assert (=> b!550340 (= res!343471 (and ((_ is Intermediate!5110) lt!250505) (not (undefined!5922 lt!250505)) (bvslt (x!51619 lt!250505) #b01111111111111111111111111111110) (bvsge (x!51619 lt!250505) #b00000000000000000000000000000000) (bvsge (x!51619 lt!250505) #b00000000000000000000000000000000)))))

(assert (=> b!550340 (=> (not res!343471) (not e!317701))))

(declare-fun b!550341 () Bool)

(assert (=> b!550341 (= e!317704 (bvsge (x!51619 lt!250505) #b01111111111111111111111111111110))))

(declare-fun b!550342 () Bool)

(assert (=> b!550342 (and (bvsge (index!22669 lt!250505) #b00000000000000000000000000000000) (bvslt (index!22669 lt!250505) (size!17018 (array!34686 (store (arr!16654 a!3118) i!1132 k0!1914) (size!17018 a!3118)))))))

(declare-fun res!343472 () Bool)

(assert (=> b!550342 (= res!343472 (= (select (arr!16654 (array!34686 (store (arr!16654 a!3118) i!1132 k0!1914) (size!17018 a!3118))) (index!22669 lt!250505)) (select (store (arr!16654 a!3118) i!1132 k0!1914) j!142)))))

(declare-fun e!317703 () Bool)

(assert (=> b!550342 (=> res!343472 e!317703)))

(assert (=> b!550342 (= e!317701 e!317703)))

(declare-fun d!82763 () Bool)

(assert (=> d!82763 e!317704))

(declare-fun c!63766 () Bool)

(assert (=> d!82763 (= c!63766 (and ((_ is Intermediate!5110) lt!250505) (undefined!5922 lt!250505)))))

(assert (=> d!82763 (= lt!250505 e!317702)))

(declare-fun c!63767 () Bool)

(assert (=> d!82763 (= c!63767 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!250504 () (_ BitVec 64))

(assert (=> d!82763 (= lt!250504 (select (arr!16654 (array!34686 (store (arr!16654 a!3118) i!1132 k0!1914) (size!17018 a!3118))) (toIndex!0 (select (store (arr!16654 a!3118) i!1132 k0!1914) j!142) mask!3119)))))

(assert (=> d!82763 (validMask!0 mask!3119)))

(assert (=> d!82763 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16654 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16654 a!3118) i!1132 k0!1914) j!142) (array!34686 (store (arr!16654 a!3118) i!1132 k0!1914) (size!17018 a!3118)) mask!3119) lt!250505)))

(declare-fun e!317705 () SeekEntryResult!5110)

(declare-fun b!550343 () Bool)

(assert (=> b!550343 (= e!317705 (Intermediate!5110 false (toIndex!0 (select (store (arr!16654 a!3118) i!1132 k0!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!550344 () Bool)

(assert (=> b!550344 (= e!317702 e!317705)))

(declare-fun c!63768 () Bool)

(assert (=> b!550344 (= c!63768 (or (= lt!250504 (select (store (arr!16654 a!3118) i!1132 k0!1914) j!142)) (= (bvadd lt!250504 lt!250504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!550345 () Bool)

(assert (=> b!550345 (and (bvsge (index!22669 lt!250505) #b00000000000000000000000000000000) (bvslt (index!22669 lt!250505) (size!17018 (array!34686 (store (arr!16654 a!3118) i!1132 k0!1914) (size!17018 a!3118)))))))

(assert (=> b!550345 (= e!317703 (= (select (arr!16654 (array!34686 (store (arr!16654 a!3118) i!1132 k0!1914) (size!17018 a!3118))) (index!22669 lt!250505)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!550346 () Bool)

(assert (=> b!550346 (= e!317705 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!16654 a!3118) i!1132 k0!1914) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (store (arr!16654 a!3118) i!1132 k0!1914) j!142) (array!34686 (store (arr!16654 a!3118) i!1132 k0!1914) (size!17018 a!3118)) mask!3119))))

(declare-fun b!550347 () Bool)

(assert (=> b!550347 (and (bvsge (index!22669 lt!250505) #b00000000000000000000000000000000) (bvslt (index!22669 lt!250505) (size!17018 (array!34686 (store (arr!16654 a!3118) i!1132 k0!1914) (size!17018 a!3118)))))))

(declare-fun res!343473 () Bool)

(assert (=> b!550347 (= res!343473 (= (select (arr!16654 (array!34686 (store (arr!16654 a!3118) i!1132 k0!1914) (size!17018 a!3118))) (index!22669 lt!250505)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!550347 (=> res!343473 e!317703)))

(assert (= (and d!82763 c!63767) b!550339))

(assert (= (and d!82763 (not c!63767)) b!550344))

(assert (= (and b!550344 c!63768) b!550343))

(assert (= (and b!550344 (not c!63768)) b!550346))

(assert (= (and d!82763 c!63766) b!550341))

(assert (= (and d!82763 (not c!63766)) b!550340))

(assert (= (and b!550340 res!343471) b!550342))

(assert (= (and b!550342 (not res!343472)) b!550347))

(assert (= (and b!550347 (not res!343473)) b!550345))

(declare-fun m!527355 () Bool)

(assert (=> b!550345 m!527355))

(assert (=> b!550346 m!527139))

(declare-fun m!527357 () Bool)

(assert (=> b!550346 m!527357))

(assert (=> b!550346 m!527357))

(assert (=> b!550346 m!527137))

(declare-fun m!527359 () Bool)

(assert (=> b!550346 m!527359))

(assert (=> d!82763 m!527139))

(declare-fun m!527361 () Bool)

(assert (=> d!82763 m!527361))

(assert (=> d!82763 m!527129))

(assert (=> b!550342 m!527355))

(assert (=> b!550347 m!527355))

(assert (=> b!550047 d!82763))

(declare-fun d!82767 () Bool)

(declare-fun lt!250507 () (_ BitVec 32))

(declare-fun lt!250506 () (_ BitVec 32))

(assert (=> d!82767 (= lt!250507 (bvmul (bvxor lt!250506 (bvlshr lt!250506 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!82767 (= lt!250506 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16654 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16654 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!82767 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!343461 (let ((h!11759 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16654 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16654 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!51625 (bvmul (bvxor h!11759 (bvlshr h!11759 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!51625 (bvlshr x!51625 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!343461 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!343461 #b00000000000000000000000000000000))))))

(assert (=> d!82767 (= (toIndex!0 (select (store (arr!16654 a!3118) i!1132 k0!1914) j!142) mask!3119) (bvand (bvxor lt!250507 (bvlshr lt!250507 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!550047 d!82767))

(check-sat (not d!82717) (not d!82739) (not b!550346) (not b!550301) (not bm!32246) (not b!550155) (not b!550153) (not b!550228) (not d!82725) (not bm!32256) (not b!550227) (not b!550091) (not bm!32252) (not b!550219) (not d!82745) (not b!550225) (not b!550113) (not b!550154) (not d!82763) (not b!550112))
(check-sat)
