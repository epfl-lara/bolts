; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7898 () Bool)

(assert start!7898)

(declare-fun res!28767 () Bool)

(declare-fun e!32041 () Bool)

(assert (=> start!7898 (=> (not res!28767) (not e!32041))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7898 (= res!28767 (validMask!0 mask!2234))))

(assert (=> start!7898 e!32041))

(assert (=> start!7898 true))

(declare-datatypes ((array!3236 0))(
  ( (array!3237 (arr!1550 (Array (_ BitVec 32) (_ BitVec 64))) (size!1772 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3236)

(declare-fun array_inv!901 (array!3236) Bool)

(assert (=> start!7898 (array_inv!901 _keys!1794)))

(declare-fun b!49745 () Bool)

(declare-fun res!28766 () Bool)

(assert (=> b!49745 (=> (not res!28766) (not e!32041))))

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49745 (= res!28766 (and (= (size!1772 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3237 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1772 _keys!1794)) (bvslt i!836 (size!1772 _keys!1794)) (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))))

(declare-fun b!49746 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3236 (_ BitVec 32)) Bool)

(assert (=> b!49746 (= e!32041 (not (arrayForallSeekEntryOrOpenFound!0 i!836 _keys!1794 mask!2234)))))

(assert (=> b!49746 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(declare-datatypes ((Unit!1406 0))(
  ( (Unit!1407) )
))
(declare-fun lt!20871 () Unit!1406)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!3236 (_ BitVec 32) (_ BitVec 32)) Unit!1406)

(assert (=> b!49746 (= lt!20871 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (= (and start!7898 res!28767) b!49745))

(assert (= (and b!49745 res!28766) b!49746))

(declare-fun m!43137 () Bool)

(assert (=> start!7898 m!43137))

(declare-fun m!43139 () Bool)

(assert (=> start!7898 m!43139))

(declare-fun m!43141 () Bool)

(assert (=> b!49746 m!43141))

(declare-fun m!43143 () Bool)

(assert (=> b!49746 m!43143))

(declare-fun m!43145 () Bool)

(assert (=> b!49746 m!43145))

(push 1)

(assert (not start!7898))

(assert (not b!49746))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10007 () Bool)

(assert (=> d!10007 (= (validMask!0 mask!2234) (and (or (= mask!2234 #b00000000000000000000000000000111) (= mask!2234 #b00000000000000000000000000001111) (= mask!2234 #b00000000000000000000000000011111) (= mask!2234 #b00000000000000000000000000111111) (= mask!2234 #b00000000000000000000000001111111) (= mask!2234 #b00000000000000000000000011111111) (= mask!2234 #b00000000000000000000000111111111) (= mask!2234 #b00000000000000000000001111111111) (= mask!2234 #b00000000000000000000011111111111) (= mask!2234 #b00000000000000000000111111111111) (= mask!2234 #b00000000000000000001111111111111) (= mask!2234 #b00000000000000000011111111111111) (= mask!2234 #b00000000000000000111111111111111) (= mask!2234 #b00000000000000001111111111111111) (= mask!2234 #b00000000000000011111111111111111) (= mask!2234 #b00000000000000111111111111111111) (= mask!2234 #b00000000000001111111111111111111) (= mask!2234 #b00000000000011111111111111111111) (= mask!2234 #b00000000000111111111111111111111) (= mask!2234 #b00000000001111111111111111111111) (= mask!2234 #b00000000011111111111111111111111) (= mask!2234 #b00000000111111111111111111111111) (= mask!2234 #b00000001111111111111111111111111) (= mask!2234 #b00000011111111111111111111111111) (= mask!2234 #b00000111111111111111111111111111) (= mask!2234 #b00001111111111111111111111111111) (= mask!2234 #b00011111111111111111111111111111) (= mask!2234 #b00111111111111111111111111111111)) (bvsle mask!2234 #b00111111111111111111111111111111)))))

(assert (=> start!7898 d!10007))

(declare-fun d!10015 () Bool)

(assert (=> d!10015 (= (array_inv!901 _keys!1794) (bvsge (size!1772 _keys!1794) #b00000000000000000000000000000000))))

(assert (=> start!7898 d!10015))

(declare-fun call!3855 () Bool)

(declare-fun bm!3852 () Bool)

(assert (=> bm!3852 (= call!3855 (arrayForallSeekEntryOrOpenFound!0 (bvadd i!836 #b00000000000000000000000000000001) _keys!1794 mask!2234))))

(declare-fun b!49792 () Bool)

(declare-fun e!32080 () Bool)

(declare-fun e!32078 () Bool)

(assert (=> b!49792 (= e!32080 e!32078)))

(declare-fun c!6723 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!49792 (= c!6723 (validKeyInArray!0 (select (arr!1550 _keys!1794) i!836)))))

(declare-fun b!49793 () Bool)

(assert (=> b!49793 (= e!32078 call!3855)))

(declare-fun b!49794 () Bool)

(declare-fun e!32079 () Bool)

(assert (=> b!49794 (= e!32078 e!32079)))

(declare-fun lt!20903 () (_ BitVec 64))

(assert (=> b!49794 (= lt!20903 (select (arr!1550 _keys!1794) i!836))))

(declare-fun lt!20902 () Unit!1406)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3236 (_ BitVec 64) (_ BitVec 32)) Unit!1406)

(assert (=> b!49794 (= lt!20902 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!20903 i!836))))

(declare-fun arrayContainsKey!0 (array!3236 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!49794 (arrayContainsKey!0 _keys!1794 lt!20903 #b00000000000000000000000000000000)))

(declare-fun lt!20904 () Unit!1406)

(assert (=> b!49794 (= lt!20904 lt!20902)))

(declare-fun res!28797 () Bool)

(declare-datatypes ((SeekEntryResult!224 0))(
  ( (MissingZero!224 (index!3018 (_ BitVec 32))) (Found!224 (index!3019 (_ BitVec 32))) (Intermediate!224 (undefined!1036 Bool) (index!3020 (_ BitVec 32)) (x!9114 (_ BitVec 32))) (Undefined!224) (MissingVacant!224 (index!3021 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3236 (_ BitVec 32)) SeekEntryResult!224)

(assert (=> b!49794 (= res!28797 (= (seekEntryOrOpen!0 (select (arr!1550 _keys!1794) i!836) _keys!1794 mask!2234) (Found!224 i!836)))))

(assert (=> b!49794 (=> (not res!28797) (not e!32079))))

(declare-fun d!10017 () Bool)

(declare-fun res!28796 () Bool)

(assert (=> d!10017 (=> res!28796 e!32080)))

(assert (=> d!10017 (= res!28796 (bvsge i!836 (size!1772 _keys!1794)))))

(assert (=> d!10017 (= (arrayForallSeekEntryOrOpenFound!0 i!836 _keys!1794 mask!2234) e!32080)))

(declare-fun b!49791 () Bool)

(assert (=> b!49791 (= e!32079 call!3855)))

(assert (= (and d!10017 (not res!28796)) b!49792))

(assert (= (and b!49792 c!6723) b!49794))

(assert (= (and b!49792 (not c!6723)) b!49793))

(assert (= (and b!49794 res!28797) b!49791))

(assert (= (or b!49791 b!49793) bm!3852))

(declare-fun m!43191 () Bool)

(assert (=> bm!3852 m!43191))

(declare-fun m!43193 () Bool)

(assert (=> b!49792 m!43193))

(assert (=> b!49792 m!43193))

(declare-fun m!43195 () Bool)

(assert (=> b!49792 m!43195))

(assert (=> b!49794 m!43193))

(declare-fun m!43197 () Bool)

(assert (=> b!49794 m!43197))

(declare-fun m!43199 () Bool)

(assert (=> b!49794 m!43199))

(assert (=> b!49794 m!43193))

(declare-fun m!43201 () Bool)

(assert (=> b!49794 m!43201))

(assert (=> b!49746 d!10017))

(declare-fun call!3856 () Bool)

(declare-fun bm!3853 () Bool)

(assert (=> bm!3853 (= call!3856 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001) _keys!1794 mask!2234))))

(declare-fun b!49796 () Bool)

(declare-fun e!32083 () Bool)

(declare-fun e!32081 () Bool)

(assert (=> b!49796 (= e!32083 e!32081)))

(declare-fun c!6724 () Bool)

(assert (=> b!49796 (= c!6724 (validKeyInArray!0 (select (arr!1550 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836))))))

(declare-fun b!49797 () Bool)

(assert (=> b!49797 (= e!32081 call!3856)))

(declare-fun b!49798 () Bool)

(declare-fun e!32082 () Bool)

(assert (=> b!49798 (= e!32081 e!32082)))

(declare-fun lt!20906 () (_ BitVec 64))

(assert (=> b!49798 (= lt!20906 (select (arr!1550 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)))))

(declare-fun lt!20905 () Unit!1406)

(assert (=> b!49798 (= lt!20905 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!20906 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (=> b!49798 (arrayContainsKey!0 _keys!1794 lt!20906 #b00000000000000000000000000000000)))

(declare-fun lt!20907 () Unit!1406)

(assert (=> b!49798 (= lt!20907 lt!20905)))

(declare-fun res!28799 () Bool)

(assert (=> b!49798 (= res!28799 (= (seekEntryOrOpen!0 (select (arr!1550 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) _keys!1794 mask!2234) (Found!224 (bvadd #b00000000000000000000000000000001 i!836))))))

(assert (=> b!49798 (=> (not res!28799) (not e!32082))))

(declare-fun d!10027 () Bool)

(declare-fun res!28798 () Bool)

(assert (=> d!10027 (=> res!28798 e!32083)))

(assert (=> d!10027 (= res!28798 (bvsge (bvadd #b00000000000000000000000000000001 i!836) (size!1772 _keys!1794)))))

(assert (=> d!10027 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234) e!32083)))

(declare-fun b!49795 () Bool)

(assert (=> b!49795 (= e!32082 call!3856)))

(assert (= (and d!10027 (not res!28798)) b!49796))

(assert (= (and b!49796 c!6724) b!49798))

(assert (= (and b!49796 (not c!6724)) b!49797))

(assert (= (and b!49798 res!28799) b!49795))

(assert (= (or b!49795 b!49797) bm!3853))

(declare-fun m!43203 () Bool)

(assert (=> bm!3853 m!43203))

(declare-fun m!43205 () Bool)

(assert (=> b!49796 m!43205))

(assert (=> b!49796 m!43205))

(declare-fun m!43207 () Bool)

(assert (=> b!49796 m!43207))

(assert (=> b!49798 m!43205))

(declare-fun m!43209 () Bool)

(assert (=> b!49798 m!43209))

(declare-fun m!43211 () Bool)

(assert (=> b!49798 m!43211))

(assert (=> b!49798 m!43205))

(declare-fun m!43213 () Bool)

(assert (=> b!49798 m!43213))

(assert (=> b!49746 d!10027))

(declare-fun d!10029 () Bool)

(assert (=> d!10029 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(declare-fun lt!20919 () Unit!1406)

(declare-fun choose!34 (array!3236 (_ BitVec 32) (_ BitVec 32)) Unit!1406)

(assert (=> d!10029 (= lt!20919 (choose!34 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (=> d!10029 (validMask!0 mask!2234)))

(assert (=> d!10029 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)) lt!20919)))

(declare-fun bs!2334 () Bool)

(assert (= bs!2334 d!10029))

(assert (=> bs!2334 m!43143))

(declare-fun m!43241 () Bool)

(assert (=> bs!2334 m!43241))

(assert (=> bs!2334 m!43137))

(assert (=> b!49746 d!10029))

(push 1)

(assert (not bm!3853))

(assert (not bm!3852))

(assert (not d!10029))

(assert (not b!49798))

(assert (not b!49794))

(assert (not b!49792))

(assert (not b!49796))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10037 () Bool)

(assert (=> d!10037 (arrayContainsKey!0 _keys!1794 lt!20906 #b00000000000000000000000000000000)))

(declare-fun lt!20928 () Unit!1406)

(declare-fun choose!13 (array!3236 (_ BitVec 64) (_ BitVec 32)) Unit!1406)

(assert (=> d!10037 (= lt!20928 (choose!13 _keys!1794 lt!20906 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (=> d!10037 (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))

(assert (=> d!10037 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!20906 (bvadd #b00000000000000000000000000000001 i!836)) lt!20928)))

(declare-fun bs!2337 () Bool)

(assert (= bs!2337 d!10037))

(assert (=> bs!2337 m!43211))

(declare-fun m!43247 () Bool)

(assert (=> bs!2337 m!43247))

(assert (=> b!49798 d!10037))

(declare-fun d!10041 () Bool)

(declare-fun res!28814 () Bool)

(declare-fun e!32100 () Bool)

(assert (=> d!10041 (=> res!28814 e!32100)))

(assert (=> d!10041 (= res!28814 (= (select (arr!1550 _keys!1794) #b00000000000000000000000000000000) lt!20906))))

(assert (=> d!10041 (= (arrayContainsKey!0 _keys!1794 lt!20906 #b00000000000000000000000000000000) e!32100)))

(declare-fun b!49817 () Bool)

(declare-fun e!32101 () Bool)

(assert (=> b!49817 (= e!32100 e!32101)))

(declare-fun res!28815 () Bool)

(assert (=> b!49817 (=> (not res!28815) (not e!32101))))

(assert (=> b!49817 (= res!28815 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1772 _keys!1794)))))

(declare-fun b!49818 () Bool)

(assert (=> b!49818 (= e!32101 (arrayContainsKey!0 _keys!1794 lt!20906 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!10041 (not res!28814)) b!49817))

(assert (= (and b!49817 res!28815) b!49818))

(declare-fun m!43253 () Bool)

(assert (=> d!10041 m!43253))

(declare-fun m!43255 () Bool)

(assert (=> b!49818 m!43255))

(assert (=> b!49798 d!10041))

(declare-fun b!49855 () Bool)

(declare-fun c!6742 () Bool)

(declare-fun lt!20947 () (_ BitVec 64))

(assert (=> b!49855 (= c!6742 (= lt!20947 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!32124 () SeekEntryResult!224)

(declare-fun e!32125 () SeekEntryResult!224)

(assert (=> b!49855 (= e!32124 e!32125)))

(declare-fun b!49856 () Bool)

(declare-fun lt!20948 () SeekEntryResult!224)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3236 (_ BitVec 32)) SeekEntryResult!224)

(assert (=> b!49856 (= e!32125 (seekKeyOrZeroReturnVacant!0 (x!9114 lt!20948) (index!3020 lt!20948) (index!3020 lt!20948) (select (arr!1550 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) _keys!1794 mask!2234))))

(declare-fun b!49857 () Bool)

(declare-fun e!32123 () SeekEntryResult!224)

(assert (=> b!49857 (= e!32123 Undefined!224)))

(declare-fun d!10045 () Bool)

(declare-fun lt!20949 () SeekEntryResult!224)

(assert (=> d!10045 (and (or (is-Undefined!224 lt!20949) (not (is-Found!224 lt!20949)) (and (bvsge (index!3019 lt!20949) #b00000000000000000000000000000000) (bvslt (index!3019 lt!20949) (size!1772 _keys!1794)))) (or (is-Undefined!224 lt!20949) (is-Found!224 lt!20949) (not (is-MissingZero!224 lt!20949)) (and (bvsge (index!3018 lt!20949) #b00000000000000000000000000000000) (bvslt (index!3018 lt!20949) (size!1772 _keys!1794)))) (or (is-Undefined!224 lt!20949) (is-Found!224 lt!20949) (is-MissingZero!224 lt!20949) (not (is-MissingVacant!224 lt!20949)) (and (bvsge (index!3021 lt!20949) #b00000000000000000000000000000000) (bvslt (index!3021 lt!20949) (size!1772 _keys!1794)))) (or (is-Undefined!224 lt!20949) (ite (is-Found!224 lt!20949) (= (select (arr!1550 _keys!1794) (index!3019 lt!20949)) (select (arr!1550 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836))) (ite (is-MissingZero!224 lt!20949) (= (select (arr!1550 _keys!1794) (index!3018 lt!20949)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!224 lt!20949) (= (select (arr!1550 _keys!1794) (index!3021 lt!20949)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!10045 (= lt!20949 e!32123)))

(declare-fun c!6743 () Bool)

(assert (=> d!10045 (= c!6743 (and (is-Intermediate!224 lt!20948) (undefined!1036 lt!20948)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3236 (_ BitVec 32)) SeekEntryResult!224)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!10045 (= lt!20948 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1550 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) mask!2234) (select (arr!1550 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) _keys!1794 mask!2234))))

(assert (=> d!10045 (validMask!0 mask!2234)))

(assert (=> d!10045 (= (seekEntryOrOpen!0 (select (arr!1550 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) _keys!1794 mask!2234) lt!20949)))

(declare-fun b!49858 () Bool)

(assert (=> b!49858 (= e!32125 (MissingZero!224 (index!3020 lt!20948)))))

(declare-fun b!49859 () Bool)

(assert (=> b!49859 (= e!32124 (Found!224 (index!3020 lt!20948)))))

(declare-fun b!49860 () Bool)

(assert (=> b!49860 (= e!32123 e!32124)))

(assert (=> b!49860 (= lt!20947 (select (arr!1550 _keys!1794) (index!3020 lt!20948)))))

(declare-fun c!6744 () Bool)

(assert (=> b!49860 (= c!6744 (= lt!20947 (select (arr!1550 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836))))))

(assert (= (and d!10045 c!6743) b!49857))

(assert (= (and d!10045 (not c!6743)) b!49860))

(assert (= (and b!49860 c!6744) b!49859))

(assert (= (and b!49860 (not c!6744)) b!49855))

(assert (= (and b!49855 c!6742) b!49858))

(assert (= (and b!49855 (not c!6742)) b!49856))

(assert (=> b!49856 m!43205))

(declare-fun m!43277 () Bool)

(assert (=> b!49856 m!43277))

(declare-fun m!43279 () Bool)

(assert (=> d!10045 m!43279))

(assert (=> d!10045 m!43205))

(declare-fun m!43281 () Bool)

(assert (=> d!10045 m!43281))

(assert (=> d!10045 m!43205))

(assert (=> d!10045 m!43279))

(declare-fun m!43283 () Bool)

(assert (=> d!10045 m!43283))

(assert (=> d!10045 m!43137))

(declare-fun m!43285 () Bool)

(assert (=> d!10045 m!43285))

(declare-fun m!43287 () Bool)

(assert (=> d!10045 m!43287))

(declare-fun m!43289 () Bool)

(assert (=> b!49860 m!43289))

(assert (=> b!49798 d!10045))

(declare-fun d!10057 () Bool)

(assert (=> d!10057 (= (validKeyInArray!0 (select (arr!1550 _keys!1794) i!836)) (and (not (= (select (arr!1550 _keys!1794) i!836) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1550 _keys!1794) i!836) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!49792 d!10057))

(declare-fun call!3860 () Bool)

(declare-fun bm!3857 () Bool)

(assert (=> bm!3857 (= call!3860 (arrayForallSeekEntryOrOpenFound!0 (bvadd i!836 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1794 mask!2234))))

(declare-fun b!49866 () Bool)

(declare-fun e!32131 () Bool)

(declare-fun e!32129 () Bool)

(assert (=> b!49866 (= e!32131 e!32129)))

(declare-fun c!6746 () Bool)

(assert (=> b!49866 (= c!6746 (validKeyInArray!0 (select (arr!1550 _keys!1794) (bvadd i!836 #b00000000000000000000000000000001))))))

(declare-fun b!49867 () Bool)

(assert (=> b!49867 (= e!32129 call!3860)))

(declare-fun b!49868 () Bool)

(declare-fun e!32130 () Bool)

(assert (=> b!49868 (= e!32129 e!32130)))

(declare-fun lt!20955 () (_ BitVec 64))

(assert (=> b!49868 (= lt!20955 (select (arr!1550 _keys!1794) (bvadd i!836 #b00000000000000000000000000000001)))))

(declare-fun lt!20954 () Unit!1406)

(assert (=> b!49868 (= lt!20954 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!20955 (bvadd i!836 #b00000000000000000000000000000001)))))

(assert (=> b!49868 (arrayContainsKey!0 _keys!1794 lt!20955 #b00000000000000000000000000000000)))

(declare-fun lt!20956 () Unit!1406)

(assert (=> b!49868 (= lt!20956 lt!20954)))

(declare-fun res!28825 () Bool)

(assert (=> b!49868 (= res!28825 (= (seekEntryOrOpen!0 (select (arr!1550 _keys!1794) (bvadd i!836 #b00000000000000000000000000000001)) _keys!1794 mask!2234) (Found!224 (bvadd i!836 #b00000000000000000000000000000001))))))

(assert (=> b!49868 (=> (not res!28825) (not e!32130))))

(declare-fun d!10063 () Bool)

(declare-fun res!28824 () Bool)

(assert (=> d!10063 (=> res!28824 e!32131)))

(assert (=> d!10063 (= res!28824 (bvsge (bvadd i!836 #b00000000000000000000000000000001) (size!1772 _keys!1794)))))

(assert (=> d!10063 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd i!836 #b00000000000000000000000000000001) _keys!1794 mask!2234) e!32131)))

(declare-fun b!49865 () Bool)

(assert (=> b!49865 (= e!32130 call!3860)))

(assert (= (and d!10063 (not res!28824)) b!49866))

(assert (= (and b!49866 c!6746) b!49868))

(assert (= (and b!49866 (not c!6746)) b!49867))

(assert (= (and b!49868 res!28825) b!49865))

(assert (= (or b!49865 b!49867) bm!3857))

(declare-fun m!43305 () Bool)

(assert (=> bm!3857 m!43305))

(declare-fun m!43309 () Bool)

(assert (=> b!49866 m!43309))

(assert (=> b!49866 m!43309))

(declare-fun m!43311 () Bool)

(assert (=> b!49866 m!43311))

(assert (=> b!49868 m!43309))

(declare-fun m!43313 () Bool)

(assert (=> b!49868 m!43313))

(declare-fun m!43315 () Bool)

(assert (=> b!49868 m!43315))

(assert (=> b!49868 m!43309))

(declare-fun m!43317 () Bool)

(assert (=> b!49868 m!43317))

(assert (=> bm!3852 d!10063))

(declare-fun d!10069 () Bool)

(assert (=> d!10069 (arrayContainsKey!0 _keys!1794 lt!20903 #b00000000000000000000000000000000)))

(declare-fun lt!20960 () Unit!1406)

(assert (=> d!10069 (= lt!20960 (choose!13 _keys!1794 lt!20903 i!836))))

(assert (=> d!10069 (bvsge i!836 #b00000000000000000000000000000000)))

(assert (=> d!10069 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!20903 i!836) lt!20960)))

(declare-fun bs!2340 () Bool)

(assert (= bs!2340 d!10069))

(assert (=> bs!2340 m!43199))

(declare-fun m!43319 () Bool)

(assert (=> bs!2340 m!43319))

(assert (=> b!49794 d!10069))

(declare-fun d!10071 () Bool)

(declare-fun res!28828 () Bool)

(declare-fun e!32137 () Bool)

(assert (=> d!10071 (=> res!28828 e!32137)))

(assert (=> d!10071 (= res!28828 (= (select (arr!1550 _keys!1794) #b00000000000000000000000000000000) lt!20903))))

(assert (=> d!10071 (= (arrayContainsKey!0 _keys!1794 lt!20903 #b00000000000000000000000000000000) e!32137)))

(declare-fun b!49877 () Bool)

(declare-fun e!32138 () Bool)

(assert (=> b!49877 (= e!32137 e!32138)))

(declare-fun res!28829 () Bool)

(assert (=> b!49877 (=> (not res!28829) (not e!32138))))

(assert (=> b!49877 (= res!28829 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1772 _keys!1794)))))

(declare-fun b!49878 () Bool)

(assert (=> b!49878 (= e!32138 (arrayContainsKey!0 _keys!1794 lt!20903 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!10071 (not res!28828)) b!49877))

(assert (= (and b!49877 res!28829) b!49878))

(assert (=> d!10071 m!43253))

(declare-fun m!43329 () Bool)

(assert (=> b!49878 m!43329))

(assert (=> b!49794 d!10071))

(declare-fun b!49879 () Bool)

(declare-fun c!6750 () Bool)

(declare-fun lt!20961 () (_ BitVec 64))

(assert (=> b!49879 (= c!6750 (= lt!20961 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!32140 () SeekEntryResult!224)

(declare-fun e!32141 () SeekEntryResult!224)

(assert (=> b!49879 (= e!32140 e!32141)))

(declare-fun lt!20962 () SeekEntryResult!224)

(declare-fun b!49880 () Bool)

(assert (=> b!49880 (= e!32141 (seekKeyOrZeroReturnVacant!0 (x!9114 lt!20962) (index!3020 lt!20962) (index!3020 lt!20962) (select (arr!1550 _keys!1794) i!836) _keys!1794 mask!2234))))

(declare-fun b!49881 () Bool)

(declare-fun e!32139 () SeekEntryResult!224)

(assert (=> b!49881 (= e!32139 Undefined!224)))

(declare-fun d!10073 () Bool)

(declare-fun lt!20963 () SeekEntryResult!224)

(assert (=> d!10073 (and (or (is-Undefined!224 lt!20963) (not (is-Found!224 lt!20963)) (and (bvsge (index!3019 lt!20963) #b00000000000000000000000000000000) (bvslt (index!3019 lt!20963) (size!1772 _keys!1794)))) (or (is-Undefined!224 lt!20963) (is-Found!224 lt!20963) (not (is-MissingZero!224 lt!20963)) (and (bvsge (index!3018 lt!20963) #b00000000000000000000000000000000) (bvslt (index!3018 lt!20963) (size!1772 _keys!1794)))) (or (is-Undefined!224 lt!20963) (is-Found!224 lt!20963) (is-MissingZero!224 lt!20963) (not (is-MissingVacant!224 lt!20963)) (and (bvsge (index!3021 lt!20963) #b00000000000000000000000000000000) (bvslt (index!3021 lt!20963) (size!1772 _keys!1794)))) (or (is-Undefined!224 lt!20963) (ite (is-Found!224 lt!20963) (= (select (arr!1550 _keys!1794) (index!3019 lt!20963)) (select (arr!1550 _keys!1794) i!836)) (ite (is-MissingZero!224 lt!20963) (= (select (arr!1550 _keys!1794) (index!3018 lt!20963)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!224 lt!20963) (= (select (arr!1550 _keys!1794) (index!3021 lt!20963)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!10073 (= lt!20963 e!32139)))

(declare-fun c!6751 () Bool)

(assert (=> d!10073 (= c!6751 (and (is-Intermediate!224 lt!20962) (undefined!1036 lt!20962)))))

(assert (=> d!10073 (= lt!20962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1550 _keys!1794) i!836) mask!2234) (select (arr!1550 _keys!1794) i!836) _keys!1794 mask!2234))))

(assert (=> d!10073 (validMask!0 mask!2234)))

(assert (=> d!10073 (= (seekEntryOrOpen!0 (select (arr!1550 _keys!1794) i!836) _keys!1794 mask!2234) lt!20963)))

(declare-fun b!49882 () Bool)

(assert (=> b!49882 (= e!32141 (MissingZero!224 (index!3020 lt!20962)))))

(declare-fun b!49883 () Bool)

(assert (=> b!49883 (= e!32140 (Found!224 (index!3020 lt!20962)))))

(declare-fun b!49884 () Bool)

(assert (=> b!49884 (= e!32139 e!32140)))

(assert (=> b!49884 (= lt!20961 (select (arr!1550 _keys!1794) (index!3020 lt!20962)))))

(declare-fun c!6752 () Bool)

(assert (=> b!49884 (= c!6752 (= lt!20961 (select (arr!1550 _keys!1794) i!836)))))

(assert (= (and d!10073 c!6751) b!49881))

(assert (= (and d!10073 (not c!6751)) b!49884))

(assert (= (and b!49884 c!6752) b!49883))

(assert (= (and b!49884 (not c!6752)) b!49879))

(assert (= (and b!49879 c!6750) b!49882))

(assert (= (and b!49879 (not c!6750)) b!49880))

(assert (=> b!49880 m!43193))

(declare-fun m!43337 () Bool)

(assert (=> b!49880 m!43337))

(declare-fun m!43339 () Bool)

(assert (=> d!10073 m!43339))

(assert (=> d!10073 m!43193))

(declare-fun m!43342 () Bool)

(assert (=> d!10073 m!43342))

(assert (=> d!10073 m!43193))

(assert (=> d!10073 m!43339))

(declare-fun m!43346 () Bool)

(assert (=> d!10073 m!43346))

(assert (=> d!10073 m!43137))

(declare-fun m!43351 () Bool)

(assert (=> d!10073 m!43351))

(declare-fun m!43353 () Bool)

(assert (=> d!10073 m!43353))

(declare-fun m!43357 () Bool)

(assert (=> b!49884 m!43357))

(assert (=> b!49794 d!10073))

(declare-fun d!10079 () Bool)

(assert (=> d!10079 (= (validKeyInArray!0 (select (arr!1550 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836))) (and (not (= (select (arr!1550 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1550 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!49796 d!10079))

(assert (=> d!10029 d!10027))

(declare-fun d!10083 () Bool)

(assert (=> d!10083 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(assert (=> d!10083 true))

(declare-fun _$30!81 () Unit!1406)

(assert (=> d!10083 (= (choose!34 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)) _$30!81)))

(declare-fun bs!2342 () Bool)

(assert (= bs!2342 d!10083))

(assert (=> bs!2342 m!43143))

(assert (=> d!10029 d!10083))

(assert (=> d!10029 d!10007))

(declare-fun bm!3859 () Bool)

(declare-fun call!3862 () Bool)

(assert (=> bm!3859 (= call!3862 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1794 mask!2234))))

(declare-fun b!49902 () Bool)

(declare-fun e!32153 () Bool)

(declare-fun e!32151 () Bool)

(assert (=> b!49902 (= e!32153 e!32151)))

(declare-fun c!6760 () Bool)

(assert (=> b!49902 (= c!6760 (validKeyInArray!0 (select (arr!1550 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001))))))

(declare-fun b!49903 () Bool)

(assert (=> b!49903 (= e!32151 call!3862)))

(declare-fun b!49904 () Bool)

(declare-fun e!32152 () Bool)

(assert (=> b!49904 (= e!32151 e!32152)))

(declare-fun lt!20974 () (_ BitVec 64))

(assert (=> b!49904 (= lt!20974 (select (arr!1550 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001)))))

(declare-fun lt!20973 () Unit!1406)

(assert (=> b!49904 (= lt!20973 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!20974 (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001)))))

(assert (=> b!49904 (arrayContainsKey!0 _keys!1794 lt!20974 #b00000000000000000000000000000000)))

(declare-fun lt!20975 () Unit!1406)

(assert (=> b!49904 (= lt!20975 lt!20973)))

(declare-fun res!28833 () Bool)

(assert (=> b!49904 (= res!28833 (= (seekEntryOrOpen!0 (select (arr!1550 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001)) _keys!1794 mask!2234) (Found!224 (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001))))))

(assert (=> b!49904 (=> (not res!28833) (not e!32152))))

(declare-fun d!10085 () Bool)

(declare-fun res!28832 () Bool)

(assert (=> d!10085 (=> res!28832 e!32153)))

(assert (=> d!10085 (= res!28832 (bvsge (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001) (size!1772 _keys!1794)))))

(assert (=> d!10085 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001) _keys!1794 mask!2234) e!32153)))

(declare-fun b!49901 () Bool)

(assert (=> b!49901 (= e!32152 call!3862)))

(assert (= (and d!10085 (not res!28832)) b!49902))

(assert (= (and b!49902 c!6760) b!49904))

(assert (= (and b!49902 (not c!6760)) b!49903))

(assert (= (and b!49904 res!28833) b!49901))

(assert (= (or b!49901 b!49903) bm!3859))

(declare-fun m!43363 () Bool)

(assert (=> bm!3859 m!43363))

(declare-fun m!43365 () Bool)

(assert (=> b!49902 m!43365))

(assert (=> b!49902 m!43365))

(declare-fun m!43367 () Bool)

(assert (=> b!49902 m!43367))

(assert (=> b!49904 m!43365))

(declare-fun m!43369 () Bool)

(assert (=> b!49904 m!43369))

(declare-fun m!43371 () Bool)

(assert (=> b!49904 m!43371))

(assert (=> b!49904 m!43365))

(declare-fun m!43373 () Bool)

(assert (=> b!49904 m!43373))

(assert (=> bm!3853 d!10085))

(push 1)

