; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7902 () Bool)

(assert start!7902)

(declare-fun res!28779 () Bool)

(declare-fun e!32052 () Bool)

(assert (=> start!7902 (=> (not res!28779) (not e!32052))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7902 (= res!28779 (validMask!0 mask!2234))))

(assert (=> start!7902 e!32052))

(assert (=> start!7902 true))

(declare-datatypes ((array!3240 0))(
  ( (array!3241 (arr!1552 (Array (_ BitVec 32) (_ BitVec 64))) (size!1774 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3240)

(declare-fun array_inv!903 (array!3240) Bool)

(assert (=> start!7902 (array_inv!903 _keys!1794)))

(declare-fun b!49757 () Bool)

(declare-fun res!28778 () Bool)

(assert (=> b!49757 (=> (not res!28778) (not e!32052))))

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49757 (= res!28778 (and (= (size!1774 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3241 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1774 _keys!1794)) (bvslt i!836 (size!1774 _keys!1794)) (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))))

(declare-fun b!49758 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3240 (_ BitVec 32)) Bool)

(assert (=> b!49758 (= e!32052 (not (arrayForallSeekEntryOrOpenFound!0 i!836 _keys!1794 mask!2234)))))

(assert (=> b!49758 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(declare-datatypes ((Unit!1410 0))(
  ( (Unit!1411) )
))
(declare-fun lt!20877 () Unit!1410)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!3240 (_ BitVec 32) (_ BitVec 32)) Unit!1410)

(assert (=> b!49758 (= lt!20877 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (= (and start!7902 res!28779) b!49757))

(assert (= (and b!49757 res!28778) b!49758))

(declare-fun m!43157 () Bool)

(assert (=> start!7902 m!43157))

(declare-fun m!43159 () Bool)

(assert (=> start!7902 m!43159))

(declare-fun m!43161 () Bool)

(assert (=> b!49758 m!43161))

(declare-fun m!43163 () Bool)

(assert (=> b!49758 m!43163))

(declare-fun m!43165 () Bool)

(assert (=> b!49758 m!43165))

(push 1)

(assert (not start!7902))

(assert (not b!49758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10009 () Bool)

(assert (=> d!10009 (= (validMask!0 mask!2234) (and (or (= mask!2234 #b00000000000000000000000000000111) (= mask!2234 #b00000000000000000000000000001111) (= mask!2234 #b00000000000000000000000000011111) (= mask!2234 #b00000000000000000000000000111111) (= mask!2234 #b00000000000000000000000001111111) (= mask!2234 #b00000000000000000000000011111111) (= mask!2234 #b00000000000000000000000111111111) (= mask!2234 #b00000000000000000000001111111111) (= mask!2234 #b00000000000000000000011111111111) (= mask!2234 #b00000000000000000000111111111111) (= mask!2234 #b00000000000000000001111111111111) (= mask!2234 #b00000000000000000011111111111111) (= mask!2234 #b00000000000000000111111111111111) (= mask!2234 #b00000000000000001111111111111111) (= mask!2234 #b00000000000000011111111111111111) (= mask!2234 #b00000000000000111111111111111111) (= mask!2234 #b00000000000001111111111111111111) (= mask!2234 #b00000000000011111111111111111111) (= mask!2234 #b00000000000111111111111111111111) (= mask!2234 #b00000000001111111111111111111111) (= mask!2234 #b00000000011111111111111111111111) (= mask!2234 #b00000000111111111111111111111111) (= mask!2234 #b00000001111111111111111111111111) (= mask!2234 #b00000011111111111111111111111111) (= mask!2234 #b00000111111111111111111111111111) (= mask!2234 #b00001111111111111111111111111111) (= mask!2234 #b00011111111111111111111111111111) (= mask!2234 #b00111111111111111111111111111111)) (bvsle mask!2234 #b00111111111111111111111111111111)))))

(assert (=> start!7902 d!10009))

(declare-fun d!10019 () Bool)

(assert (=> d!10019 (= (array_inv!903 _keys!1794) (bvsge (size!1774 _keys!1794) #b00000000000000000000000000000000))))

(assert (=> start!7902 d!10019))

(declare-fun b!49799 () Bool)

(declare-fun e!32086 () Bool)

(declare-fun e!32084 () Bool)

(assert (=> b!49799 (= e!32086 e!32084)))

(declare-fun c!6725 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!49799 (= c!6725 (validKeyInArray!0 (select (arr!1552 _keys!1794) i!836)))))

(declare-fun bm!3854 () Bool)

(declare-fun call!3857 () Bool)

(assert (=> bm!3854 (= call!3857 (arrayForallSeekEntryOrOpenFound!0 (bvadd i!836 #b00000000000000000000000000000001) _keys!1794 mask!2234))))

(declare-fun b!49800 () Bool)

(declare-fun e!32085 () Bool)

(assert (=> b!49800 (= e!32084 e!32085)))

(declare-fun lt!20910 () (_ BitVec 64))

(assert (=> b!49800 (= lt!20910 (select (arr!1552 _keys!1794) i!836))))

(declare-fun lt!20909 () Unit!1410)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3240 (_ BitVec 64) (_ BitVec 32)) Unit!1410)

(assert (=> b!49800 (= lt!20909 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!20910 i!836))))

(declare-fun arrayContainsKey!0 (array!3240 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!49800 (arrayContainsKey!0 _keys!1794 lt!20910 #b00000000000000000000000000000000)))

(declare-fun lt!20908 () Unit!1410)

(assert (=> b!49800 (= lt!20908 lt!20909)))

(declare-fun res!28801 () Bool)

(declare-datatypes ((SeekEntryResult!225 0))(
  ( (MissingZero!225 (index!3022 (_ BitVec 32))) (Found!225 (index!3023 (_ BitVec 32))) (Intermediate!225 (undefined!1037 Bool) (index!3024 (_ BitVec 32)) (x!9115 (_ BitVec 32))) (Undefined!225) (MissingVacant!225 (index!3025 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3240 (_ BitVec 32)) SeekEntryResult!225)

(assert (=> b!49800 (= res!28801 (= (seekEntryOrOpen!0 (select (arr!1552 _keys!1794) i!836) _keys!1794 mask!2234) (Found!225 i!836)))))

(assert (=> b!49800 (=> (not res!28801) (not e!32085))))

(declare-fun d!10021 () Bool)

(declare-fun res!28800 () Bool)

(assert (=> d!10021 (=> res!28800 e!32086)))

(assert (=> d!10021 (= res!28800 (bvsge i!836 (size!1774 _keys!1794)))))

(assert (=> d!10021 (= (arrayForallSeekEntryOrOpenFound!0 i!836 _keys!1794 mask!2234) e!32086)))

(declare-fun b!49801 () Bool)

(assert (=> b!49801 (= e!32085 call!3857)))

(declare-fun b!49802 () Bool)

(assert (=> b!49802 (= e!32084 call!3857)))

(assert (= (and d!10021 (not res!28800)) b!49799))

(assert (= (and b!49799 c!6725) b!49800))

(assert (= (and b!49799 (not c!6725)) b!49802))

(assert (= (and b!49800 res!28801) b!49801))

(assert (= (or b!49801 b!49802) bm!3854))

(declare-fun m!43215 () Bool)

(assert (=> b!49799 m!43215))

(assert (=> b!49799 m!43215))

(declare-fun m!43217 () Bool)

(assert (=> b!49799 m!43217))

(declare-fun m!43219 () Bool)

(assert (=> bm!3854 m!43219))

(assert (=> b!49800 m!43215))

(declare-fun m!43221 () Bool)

(assert (=> b!49800 m!43221))

(declare-fun m!43223 () Bool)

(assert (=> b!49800 m!43223))

(assert (=> b!49800 m!43215))

(declare-fun m!43225 () Bool)

(assert (=> b!49800 m!43225))

(assert (=> b!49758 d!10021))

(declare-fun b!49803 () Bool)

(declare-fun e!32089 () Bool)

(declare-fun e!32087 () Bool)

(assert (=> b!49803 (= e!32089 e!32087)))

(declare-fun c!6726 () Bool)

(assert (=> b!49803 (= c!6726 (validKeyInArray!0 (select (arr!1552 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836))))))

(declare-fun bm!3855 () Bool)

(declare-fun call!3858 () Bool)

(assert (=> bm!3855 (= call!3858 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001) _keys!1794 mask!2234))))

(declare-fun b!49804 () Bool)

(declare-fun e!32088 () Bool)

(assert (=> b!49804 (= e!32087 e!32088)))

(declare-fun lt!20913 () (_ BitVec 64))

(assert (=> b!49804 (= lt!20913 (select (arr!1552 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)))))

(declare-fun lt!20912 () Unit!1410)

(assert (=> b!49804 (= lt!20912 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!20913 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (=> b!49804 (arrayContainsKey!0 _keys!1794 lt!20913 #b00000000000000000000000000000000)))

(declare-fun lt!20911 () Unit!1410)

(assert (=> b!49804 (= lt!20911 lt!20912)))

(declare-fun res!28803 () Bool)

(assert (=> b!49804 (= res!28803 (= (seekEntryOrOpen!0 (select (arr!1552 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) _keys!1794 mask!2234) (Found!225 (bvadd #b00000000000000000000000000000001 i!836))))))

(assert (=> b!49804 (=> (not res!28803) (not e!32088))))

(declare-fun d!10031 () Bool)

(declare-fun res!28802 () Bool)

(assert (=> d!10031 (=> res!28802 e!32089)))

(assert (=> d!10031 (= res!28802 (bvsge (bvadd #b00000000000000000000000000000001 i!836) (size!1774 _keys!1794)))))

(assert (=> d!10031 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234) e!32089)))

(declare-fun b!49805 () Bool)

(assert (=> b!49805 (= e!32088 call!3858)))

(declare-fun b!49806 () Bool)

(assert (=> b!49806 (= e!32087 call!3858)))

(assert (= (and d!10031 (not res!28802)) b!49803))

(assert (= (and b!49803 c!6726) b!49804))

(assert (= (and b!49803 (not c!6726)) b!49806))

(assert (= (and b!49804 res!28803) b!49805))

(assert (= (or b!49805 b!49806) bm!3855))

(declare-fun m!43227 () Bool)

(assert (=> b!49803 m!43227))

(assert (=> b!49803 m!43227))

(declare-fun m!43229 () Bool)

(assert (=> b!49803 m!43229))

(declare-fun m!43231 () Bool)

(assert (=> bm!3855 m!43231))

(assert (=> b!49804 m!43227))

(declare-fun m!43233 () Bool)

(assert (=> b!49804 m!43233))

(declare-fun m!43235 () Bool)

(assert (=> b!49804 m!43235))

(assert (=> b!49804 m!43227))

(declare-fun m!43237 () Bool)

(assert (=> b!49804 m!43237))

(assert (=> b!49758 d!10031))

(declare-fun d!10033 () Bool)

(assert (=> d!10033 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(declare-fun lt!20922 () Unit!1410)

(declare-fun choose!34 (array!3240 (_ BitVec 32) (_ BitVec 32)) Unit!1410)

(assert (=> d!10033 (= lt!20922 (choose!34 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (=> d!10033 (validMask!0 mask!2234)))

(assert (=> d!10033 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)) lt!20922)))

(declare-fun bs!2335 () Bool)

(assert (= bs!2335 d!10033))

(assert (=> bs!2335 m!43163))

(declare-fun m!43243 () Bool)

(assert (=> bs!2335 m!43243))

(assert (=> bs!2335 m!43157))

(assert (=> b!49758 d!10033))

(push 1)

(assert (not d!10033))

(assert (not bm!3854))

(assert (not b!49800))

(assert (not b!49799))

(assert (not b!49804))

(assert (not b!49803))

(assert (not bm!3855))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10035 () Bool)

(assert (=> d!10035 (arrayContainsKey!0 _keys!1794 lt!20910 #b00000000000000000000000000000000)))

(declare-fun lt!20925 () Unit!1410)

(declare-fun choose!13 (array!3240 (_ BitVec 64) (_ BitVec 32)) Unit!1410)

(assert (=> d!10035 (= lt!20925 (choose!13 _keys!1794 lt!20910 i!836))))

(assert (=> d!10035 (bvsge i!836 #b00000000000000000000000000000000)))

(assert (=> d!10035 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!20910 i!836) lt!20925)))

(declare-fun bs!2336 () Bool)

(assert (= bs!2336 d!10035))

(assert (=> bs!2336 m!43223))

(declare-fun m!43245 () Bool)

(assert (=> bs!2336 m!43245))

(assert (=> b!49800 d!10035))

(declare-fun d!10039 () Bool)

(declare-fun res!28808 () Bool)

(declare-fun e!32094 () Bool)

(assert (=> d!10039 (=> res!28808 e!32094)))

(assert (=> d!10039 (= res!28808 (= (select (arr!1552 _keys!1794) #b00000000000000000000000000000000) lt!20910))))

(assert (=> d!10039 (= (arrayContainsKey!0 _keys!1794 lt!20910 #b00000000000000000000000000000000) e!32094)))

(declare-fun b!49811 () Bool)

(declare-fun e!32095 () Bool)

(assert (=> b!49811 (= e!32094 e!32095)))

(declare-fun res!28809 () Bool)

(assert (=> b!49811 (=> (not res!28809) (not e!32095))))

(assert (=> b!49811 (= res!28809 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1774 _keys!1794)))))

(declare-fun b!49812 () Bool)

(assert (=> b!49812 (= e!32095 (arrayContainsKey!0 _keys!1794 lt!20910 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!10039 (not res!28808)) b!49811))

(assert (= (and b!49811 res!28809) b!49812))

(declare-fun m!43249 () Bool)

(assert (=> d!10039 m!43249))

(declare-fun m!43251 () Bool)

(assert (=> b!49812 m!43251))

(assert (=> b!49800 d!10039))

(declare-fun b!49849 () Bool)

(declare-fun e!32121 () SeekEntryResult!225)

(assert (=> b!49849 (= e!32121 Undefined!225)))

(declare-fun e!32120 () SeekEntryResult!225)

(declare-fun b!49850 () Bool)

(declare-fun lt!20945 () SeekEntryResult!225)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3240 (_ BitVec 32)) SeekEntryResult!225)

(assert (=> b!49850 (= e!32120 (seekKeyOrZeroReturnVacant!0 (x!9115 lt!20945) (index!3024 lt!20945) (index!3024 lt!20945) (select (arr!1552 _keys!1794) i!836) _keys!1794 mask!2234))))

(declare-fun b!49851 () Bool)

(declare-fun e!32122 () SeekEntryResult!225)

(assert (=> b!49851 (= e!32122 (Found!225 (index!3024 lt!20945)))))

(declare-fun b!49852 () Bool)

(assert (=> b!49852 (= e!32120 (MissingZero!225 (index!3024 lt!20945)))))

(declare-fun b!49853 () Bool)

(declare-fun c!6741 () Bool)

(declare-fun lt!20946 () (_ BitVec 64))

(assert (=> b!49853 (= c!6741 (= lt!20946 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!49853 (= e!32122 e!32120)))

(declare-fun d!10043 () Bool)

(declare-fun lt!20944 () SeekEntryResult!225)

(assert (=> d!10043 (and (or (is-Undefined!225 lt!20944) (not (is-Found!225 lt!20944)) (and (bvsge (index!3023 lt!20944) #b00000000000000000000000000000000) (bvslt (index!3023 lt!20944) (size!1774 _keys!1794)))) (or (is-Undefined!225 lt!20944) (is-Found!225 lt!20944) (not (is-MissingZero!225 lt!20944)) (and (bvsge (index!3022 lt!20944) #b00000000000000000000000000000000) (bvslt (index!3022 lt!20944) (size!1774 _keys!1794)))) (or (is-Undefined!225 lt!20944) (is-Found!225 lt!20944) (is-MissingZero!225 lt!20944) (not (is-MissingVacant!225 lt!20944)) (and (bvsge (index!3025 lt!20944) #b00000000000000000000000000000000) (bvslt (index!3025 lt!20944) (size!1774 _keys!1794)))) (or (is-Undefined!225 lt!20944) (ite (is-Found!225 lt!20944) (= (select (arr!1552 _keys!1794) (index!3023 lt!20944)) (select (arr!1552 _keys!1794) i!836)) (ite (is-MissingZero!225 lt!20944) (= (select (arr!1552 _keys!1794) (index!3022 lt!20944)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!225 lt!20944) (= (select (arr!1552 _keys!1794) (index!3025 lt!20944)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!10043 (= lt!20944 e!32121)))

(declare-fun c!6739 () Bool)

(assert (=> d!10043 (= c!6739 (and (is-Intermediate!225 lt!20945) (undefined!1037 lt!20945)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3240 (_ BitVec 32)) SeekEntryResult!225)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!10043 (= lt!20945 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1552 _keys!1794) i!836) mask!2234) (select (arr!1552 _keys!1794) i!836) _keys!1794 mask!2234))))

(assert (=> d!10043 (validMask!0 mask!2234)))

(assert (=> d!10043 (= (seekEntryOrOpen!0 (select (arr!1552 _keys!1794) i!836) _keys!1794 mask!2234) lt!20944)))

(declare-fun b!49854 () Bool)

(assert (=> b!49854 (= e!32121 e!32122)))

(assert (=> b!49854 (= lt!20946 (select (arr!1552 _keys!1794) (index!3024 lt!20945)))))

(declare-fun c!6740 () Bool)

(assert (=> b!49854 (= c!6740 (= lt!20946 (select (arr!1552 _keys!1794) i!836)))))

(assert (= (and d!10043 c!6739) b!49849))

(assert (= (and d!10043 (not c!6739)) b!49854))

(assert (= (and b!49854 c!6740) b!49851))

(assert (= (and b!49854 (not c!6740)) b!49853))

(assert (= (and b!49853 c!6741) b!49852))

(assert (= (and b!49853 (not c!6741)) b!49850))

(assert (=> b!49850 m!43215))

(declare-fun m!43263 () Bool)

(assert (=> b!49850 m!43263))

(declare-fun m!43265 () Bool)

(assert (=> d!10043 m!43265))

(declare-fun m!43267 () Bool)

(assert (=> d!10043 m!43267))

(assert (=> d!10043 m!43215))

(declare-fun m!43269 () Bool)

(assert (=> d!10043 m!43269))

(declare-fun m!43271 () Bool)

(assert (=> d!10043 m!43271))

(assert (=> d!10043 m!43157))

(assert (=> d!10043 m!43269))

(assert (=> d!10043 m!43215))

(declare-fun m!43273 () Bool)

(assert (=> d!10043 m!43273))

(declare-fun m!43275 () Bool)

(assert (=> b!49854 m!43275))

(assert (=> b!49800 d!10043))

(declare-fun d!10055 () Bool)

(assert (=> d!10055 (= (validKeyInArray!0 (select (arr!1552 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836))) (and (not (= (select (arr!1552 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1552 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!49803 d!10055))

(declare-fun b!49861 () Bool)

(declare-fun e!32128 () Bool)

(declare-fun e!32126 () Bool)

(assert (=> b!49861 (= e!32128 e!32126)))

(declare-fun c!6745 () Bool)

(assert (=> b!49861 (= c!6745 (validKeyInArray!0 (select (arr!1552 _keys!1794) (bvadd i!836 #b00000000000000000000000000000001))))))

(declare-fun call!3859 () Bool)

(declare-fun bm!3856 () Bool)

(assert (=> bm!3856 (= call!3859 (arrayForallSeekEntryOrOpenFound!0 (bvadd i!836 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1794 mask!2234))))

(declare-fun b!49862 () Bool)

(declare-fun e!32127 () Bool)

(assert (=> b!49862 (= e!32126 e!32127)))

(declare-fun lt!20952 () (_ BitVec 64))

(assert (=> b!49862 (= lt!20952 (select (arr!1552 _keys!1794) (bvadd i!836 #b00000000000000000000000000000001)))))

(declare-fun lt!20951 () Unit!1410)

(assert (=> b!49862 (= lt!20951 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!20952 (bvadd i!836 #b00000000000000000000000000000001)))))

(assert (=> b!49862 (arrayContainsKey!0 _keys!1794 lt!20952 #b00000000000000000000000000000000)))

(declare-fun lt!20950 () Unit!1410)

(assert (=> b!49862 (= lt!20950 lt!20951)))

(declare-fun res!28823 () Bool)

(assert (=> b!49862 (= res!28823 (= (seekEntryOrOpen!0 (select (arr!1552 _keys!1794) (bvadd i!836 #b00000000000000000000000000000001)) _keys!1794 mask!2234) (Found!225 (bvadd i!836 #b00000000000000000000000000000001))))))

(assert (=> b!49862 (=> (not res!28823) (not e!32127))))

(declare-fun d!10059 () Bool)

(declare-fun res!28822 () Bool)

(assert (=> d!10059 (=> res!28822 e!32128)))

(assert (=> d!10059 (= res!28822 (bvsge (bvadd i!836 #b00000000000000000000000000000001) (size!1774 _keys!1794)))))

(assert (=> d!10059 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd i!836 #b00000000000000000000000000000001) _keys!1794 mask!2234) e!32128)))

(declare-fun b!49863 () Bool)

(assert (=> b!49863 (= e!32127 call!3859)))

(declare-fun b!49864 () Bool)

(assert (=> b!49864 (= e!32126 call!3859)))

(assert (= (and d!10059 (not res!28822)) b!49861))

(assert (= (and b!49861 c!6745) b!49862))

(assert (= (and b!49861 (not c!6745)) b!49864))

(assert (= (and b!49862 res!28823) b!49863))

(assert (= (or b!49863 b!49864) bm!3856))

(declare-fun m!43291 () Bool)

(assert (=> b!49861 m!43291))

(assert (=> b!49861 m!43291))

(declare-fun m!43293 () Bool)

(assert (=> b!49861 m!43293))

(declare-fun m!43295 () Bool)

(assert (=> bm!3856 m!43295))

(assert (=> b!49862 m!43291))

(declare-fun m!43297 () Bool)

(assert (=> b!49862 m!43297))

(declare-fun m!43299 () Bool)

(assert (=> b!49862 m!43299))

(assert (=> b!49862 m!43291))

(declare-fun m!43301 () Bool)

(assert (=> b!49862 m!43301))

(assert (=> bm!3854 d!10059))

(declare-fun d!10061 () Bool)

(assert (=> d!10061 (arrayContainsKey!0 _keys!1794 lt!20913 #b00000000000000000000000000000000)))

(declare-fun lt!20953 () Unit!1410)

(assert (=> d!10061 (= lt!20953 (choose!13 _keys!1794 lt!20913 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (=> d!10061 (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))

(assert (=> d!10061 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!20913 (bvadd #b00000000000000000000000000000001 i!836)) lt!20953)))

(declare-fun bs!2339 () Bool)

(assert (= bs!2339 d!10061))

(assert (=> bs!2339 m!43235))

(declare-fun m!43303 () Bool)

(assert (=> bs!2339 m!43303))

(assert (=> b!49804 d!10061))

(declare-fun d!10065 () Bool)

(declare-fun res!28826 () Bool)

(declare-fun e!32132 () Bool)

(assert (=> d!10065 (=> res!28826 e!32132)))

(assert (=> d!10065 (= res!28826 (= (select (arr!1552 _keys!1794) #b00000000000000000000000000000000) lt!20913))))

(assert (=> d!10065 (= (arrayContainsKey!0 _keys!1794 lt!20913 #b00000000000000000000000000000000) e!32132)))

(declare-fun b!49869 () Bool)

(declare-fun e!32133 () Bool)

(assert (=> b!49869 (= e!32132 e!32133)))

(declare-fun res!28827 () Bool)

(assert (=> b!49869 (=> (not res!28827) (not e!32133))))

(assert (=> b!49869 (= res!28827 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1774 _keys!1794)))))

(declare-fun b!49870 () Bool)

(assert (=> b!49870 (= e!32133 (arrayContainsKey!0 _keys!1794 lt!20913 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!10065 (not res!28826)) b!49869))

(assert (= (and b!49869 res!28827) b!49870))

(assert (=> d!10065 m!43249))

(declare-fun m!43307 () Bool)

(assert (=> b!49870 m!43307))

(assert (=> b!49804 d!10065))

(declare-fun b!49871 () Bool)

(declare-fun e!32135 () SeekEntryResult!225)

(assert (=> b!49871 (= e!32135 Undefined!225)))

(declare-fun b!49872 () Bool)

(declare-fun lt!20958 () SeekEntryResult!225)

(declare-fun e!32134 () SeekEntryResult!225)

(assert (=> b!49872 (= e!32134 (seekKeyOrZeroReturnVacant!0 (x!9115 lt!20958) (index!3024 lt!20958) (index!3024 lt!20958) (select (arr!1552 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) _keys!1794 mask!2234))))

(declare-fun b!49873 () Bool)

(declare-fun e!32136 () SeekEntryResult!225)

(assert (=> b!49873 (= e!32136 (Found!225 (index!3024 lt!20958)))))

(declare-fun b!49874 () Bool)

(assert (=> b!49874 (= e!32134 (MissingZero!225 (index!3024 lt!20958)))))

(declare-fun b!49875 () Bool)

(declare-fun c!6749 () Bool)

(declare-fun lt!20959 () (_ BitVec 64))

(assert (=> b!49875 (= c!6749 (= lt!20959 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!49875 (= e!32136 e!32134)))

(declare-fun d!10067 () Bool)

(declare-fun lt!20957 () SeekEntryResult!225)

(assert (=> d!10067 (and (or (is-Undefined!225 lt!20957) (not (is-Found!225 lt!20957)) (and (bvsge (index!3023 lt!20957) #b00000000000000000000000000000000) (bvslt (index!3023 lt!20957) (size!1774 _keys!1794)))) (or (is-Undefined!225 lt!20957) (is-Found!225 lt!20957) (not (is-MissingZero!225 lt!20957)) (and (bvsge (index!3022 lt!20957) #b00000000000000000000000000000000) (bvslt (index!3022 lt!20957) (size!1774 _keys!1794)))) (or (is-Undefined!225 lt!20957) (is-Found!225 lt!20957) (is-MissingZero!225 lt!20957) (not (is-MissingVacant!225 lt!20957)) (and (bvsge (index!3025 lt!20957) #b00000000000000000000000000000000) (bvslt (index!3025 lt!20957) (size!1774 _keys!1794)))) (or (is-Undefined!225 lt!20957) (ite (is-Found!225 lt!20957) (= (select (arr!1552 _keys!1794) (index!3023 lt!20957)) (select (arr!1552 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836))) (ite (is-MissingZero!225 lt!20957) (= (select (arr!1552 _keys!1794) (index!3022 lt!20957)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!225 lt!20957) (= (select (arr!1552 _keys!1794) (index!3025 lt!20957)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!10067 (= lt!20957 e!32135)))

(declare-fun c!6747 () Bool)

(assert (=> d!10067 (= c!6747 (and (is-Intermediate!225 lt!20958) (undefined!1037 lt!20958)))))

(assert (=> d!10067 (= lt!20958 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1552 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) mask!2234) (select (arr!1552 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) _keys!1794 mask!2234))))

(assert (=> d!10067 (validMask!0 mask!2234)))

(assert (=> d!10067 (= (seekEntryOrOpen!0 (select (arr!1552 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) _keys!1794 mask!2234) lt!20957)))

(declare-fun b!49876 () Bool)

(assert (=> b!49876 (= e!32135 e!32136)))

(assert (=> b!49876 (= lt!20959 (select (arr!1552 _keys!1794) (index!3024 lt!20958)))))

(declare-fun c!6748 () Bool)

(assert (=> b!49876 (= c!6748 (= lt!20959 (select (arr!1552 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836))))))

(assert (= (and d!10067 c!6747) b!49871))

(assert (= (and d!10067 (not c!6747)) b!49876))

(assert (= (and b!49876 c!6748) b!49873))

(assert (= (and b!49876 (not c!6748)) b!49875))

(assert (= (and b!49875 c!6749) b!49874))

(assert (= (and b!49875 (not c!6749)) b!49872))

(assert (=> b!49872 m!43227))

(declare-fun m!43321 () Bool)

(assert (=> b!49872 m!43321))

(declare-fun m!43323 () Bool)

(assert (=> d!10067 m!43323))

(declare-fun m!43325 () Bool)

(assert (=> d!10067 m!43325))

(assert (=> d!10067 m!43227))

(declare-fun m!43327 () Bool)

(assert (=> d!10067 m!43327))

(declare-fun m!43331 () Bool)

(assert (=> d!10067 m!43331))

(assert (=> d!10067 m!43157))

(assert (=> d!10067 m!43327))

(assert (=> d!10067 m!43227))

(declare-fun m!43333 () Bool)

(assert (=> d!10067 m!43333))

(declare-fun m!43335 () Bool)

(assert (=> b!49876 m!43335))

(assert (=> b!49804 d!10067))

(declare-fun d!10075 () Bool)

(assert (=> d!10075 (= (validKeyInArray!0 (select (arr!1552 _keys!1794) i!836)) (and (not (= (select (arr!1552 _keys!1794) i!836) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1552 _keys!1794) i!836) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!49799 d!10075))

(declare-fun b!49885 () Bool)

(declare-fun e!32144 () Bool)

(declare-fun e!32142 () Bool)

(assert (=> b!49885 (= e!32144 e!32142)))

(declare-fun c!6753 () Bool)

(assert (=> b!49885 (= c!6753 (validKeyInArray!0 (select (arr!1552 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001))))))

(declare-fun bm!3858 () Bool)

(declare-fun call!3861 () Bool)

(assert (=> bm!3858 (= call!3861 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1794 mask!2234))))

(declare-fun b!49886 () Bool)

(declare-fun e!32143 () Bool)

(assert (=> b!49886 (= e!32142 e!32143)))

(declare-fun lt!20966 () (_ BitVec 64))

(assert (=> b!49886 (= lt!20966 (select (arr!1552 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001)))))

(declare-fun lt!20965 () Unit!1410)

(assert (=> b!49886 (= lt!20965 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!20966 (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001)))))

(assert (=> b!49886 (arrayContainsKey!0 _keys!1794 lt!20966 #b00000000000000000000000000000000)))

(declare-fun lt!20964 () Unit!1410)

(assert (=> b!49886 (= lt!20964 lt!20965)))

(declare-fun res!28831 () Bool)

(assert (=> b!49886 (= res!28831 (= (seekEntryOrOpen!0 (select (arr!1552 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001)) _keys!1794 mask!2234) (Found!225 (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001))))))

(assert (=> b!49886 (=> (not res!28831) (not e!32143))))

(declare-fun d!10077 () Bool)

(declare-fun res!28830 () Bool)

(assert (=> d!10077 (=> res!28830 e!32144)))

(assert (=> d!10077 (= res!28830 (bvsge (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001) (size!1774 _keys!1794)))))

(assert (=> d!10077 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001) _keys!1794 mask!2234) e!32144)))

(declare-fun b!49887 () Bool)

(assert (=> b!49887 (= e!32143 call!3861)))

(declare-fun b!49888 () Bool)

(assert (=> b!49888 (= e!32142 call!3861)))

(assert (= (and d!10077 (not res!28830)) b!49885))

(assert (= (and b!49885 c!6753) b!49886))

(assert (= (and b!49885 (not c!6753)) b!49888))

(assert (= (and b!49886 res!28831) b!49887))

(assert (= (or b!49887 b!49888) bm!3858))

(declare-fun m!43343 () Bool)

(assert (=> b!49885 m!43343))

(assert (=> b!49885 m!43343))

(declare-fun m!43347 () Bool)

(assert (=> b!49885 m!43347))

(declare-fun m!43349 () Bool)

(assert (=> bm!3858 m!43349))

(assert (=> b!49886 m!43343))

(declare-fun m!43355 () Bool)

(assert (=> b!49886 m!43355))

(declare-fun m!43359 () Bool)

(assert (=> b!49886 m!43359))

(assert (=> b!49886 m!43343))

(declare-fun m!43361 () Bool)

(assert (=> b!49886 m!43361))

(assert (=> bm!3855 d!10077))

(assert (=> d!10033 d!10031))

(declare-fun d!10081 () Bool)

(assert (=> d!10081 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(assert (=> d!10081 true))

(declare-fun _$30!80 () Unit!1410)

(assert (=> d!10081 (= (choose!34 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)) _$30!80)))

(declare-fun bs!2341 () Bool)

