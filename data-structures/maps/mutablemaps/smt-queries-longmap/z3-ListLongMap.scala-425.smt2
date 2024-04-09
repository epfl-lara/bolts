; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7900 () Bool)

(assert start!7900)

(declare-fun res!28772 () Bool)

(declare-fun e!32046 () Bool)

(assert (=> start!7900 (=> (not res!28772) (not e!32046))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7900 (= res!28772 (validMask!0 mask!2234))))

(assert (=> start!7900 e!32046))

(assert (=> start!7900 true))

(declare-datatypes ((array!3238 0))(
  ( (array!3239 (arr!1551 (Array (_ BitVec 32) (_ BitVec 64))) (size!1773 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3238)

(declare-fun array_inv!902 (array!3238) Bool)

(assert (=> start!7900 (array_inv!902 _keys!1794)))

(declare-fun b!49751 () Bool)

(declare-fun res!28773 () Bool)

(assert (=> b!49751 (=> (not res!28773) (not e!32046))))

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49751 (= res!28773 (and (= (size!1773 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3239 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1773 _keys!1794)) (bvslt i!836 (size!1773 _keys!1794)) (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))))

(declare-fun b!49752 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3238 (_ BitVec 32)) Bool)

(assert (=> b!49752 (= e!32046 (not (arrayForallSeekEntryOrOpenFound!0 i!836 _keys!1794 mask!2234)))))

(assert (=> b!49752 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(declare-datatypes ((Unit!1408 0))(
  ( (Unit!1409) )
))
(declare-fun lt!20874 () Unit!1408)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!3238 (_ BitVec 32) (_ BitVec 32)) Unit!1408)

(assert (=> b!49752 (= lt!20874 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (= (and start!7900 res!28772) b!49751))

(assert (= (and b!49751 res!28773) b!49752))

(declare-fun m!43147 () Bool)

(assert (=> start!7900 m!43147))

(declare-fun m!43149 () Bool)

(assert (=> start!7900 m!43149))

(declare-fun m!43151 () Bool)

(assert (=> b!49752 m!43151))

(declare-fun m!43153 () Bool)

(assert (=> b!49752 m!43153))

(declare-fun m!43155 () Bool)

(assert (=> b!49752 m!43155))

(check-sat (not start!7900) (not b!49752))
(check-sat)
(get-model)

(declare-fun d!10005 () Bool)

(assert (=> d!10005 (= (validMask!0 mask!2234) (and (or (= mask!2234 #b00000000000000000000000000000111) (= mask!2234 #b00000000000000000000000000001111) (= mask!2234 #b00000000000000000000000000011111) (= mask!2234 #b00000000000000000000000000111111) (= mask!2234 #b00000000000000000000000001111111) (= mask!2234 #b00000000000000000000000011111111) (= mask!2234 #b00000000000000000000000111111111) (= mask!2234 #b00000000000000000000001111111111) (= mask!2234 #b00000000000000000000011111111111) (= mask!2234 #b00000000000000000000111111111111) (= mask!2234 #b00000000000000000001111111111111) (= mask!2234 #b00000000000000000011111111111111) (= mask!2234 #b00000000000000000111111111111111) (= mask!2234 #b00000000000000001111111111111111) (= mask!2234 #b00000000000000011111111111111111) (= mask!2234 #b00000000000000111111111111111111) (= mask!2234 #b00000000000001111111111111111111) (= mask!2234 #b00000000000011111111111111111111) (= mask!2234 #b00000000000111111111111111111111) (= mask!2234 #b00000000001111111111111111111111) (= mask!2234 #b00000000011111111111111111111111) (= mask!2234 #b00000000111111111111111111111111) (= mask!2234 #b00000001111111111111111111111111) (= mask!2234 #b00000011111111111111111111111111) (= mask!2234 #b00000111111111111111111111111111) (= mask!2234 #b00001111111111111111111111111111) (= mask!2234 #b00011111111111111111111111111111) (= mask!2234 #b00111111111111111111111111111111)) (bvsle mask!2234 #b00111111111111111111111111111111)))))

(assert (=> start!7900 d!10005))

(declare-fun d!10011 () Bool)

(assert (=> d!10011 (= (array_inv!902 _keys!1794) (bvsge (size!1773 _keys!1794) #b00000000000000000000000000000000))))

(assert (=> start!7900 d!10011))

(declare-fun b!49775 () Bool)

(declare-fun e!32068 () Bool)

(declare-fun call!3851 () Bool)

(assert (=> b!49775 (= e!32068 call!3851)))

(declare-fun d!10013 () Bool)

(declare-fun res!28788 () Bool)

(declare-fun e!32067 () Bool)

(assert (=> d!10013 (=> res!28788 e!32067)))

(assert (=> d!10013 (= res!28788 (bvsge i!836 (size!1773 _keys!1794)))))

(assert (=> d!10013 (= (arrayForallSeekEntryOrOpenFound!0 i!836 _keys!1794 mask!2234) e!32067)))

(declare-fun bm!3848 () Bool)

(assert (=> bm!3848 (= call!3851 (arrayForallSeekEntryOrOpenFound!0 (bvadd i!836 #b00000000000000000000000000000001) _keys!1794 mask!2234))))

(declare-fun b!49776 () Bool)

(assert (=> b!49776 (= e!32067 e!32068)))

(declare-fun c!6719 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!49776 (= c!6719 (validKeyInArray!0 (select (arr!1551 _keys!1794) i!836)))))

(declare-fun b!49777 () Bool)

(declare-fun e!32066 () Bool)

(assert (=> b!49777 (= e!32068 e!32066)))

(declare-fun lt!20890 () (_ BitVec 64))

(assert (=> b!49777 (= lt!20890 (select (arr!1551 _keys!1794) i!836))))

(declare-fun lt!20891 () Unit!1408)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3238 (_ BitVec 64) (_ BitVec 32)) Unit!1408)

(assert (=> b!49777 (= lt!20891 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!20890 i!836))))

(declare-fun arrayContainsKey!0 (array!3238 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!49777 (arrayContainsKey!0 _keys!1794 lt!20890 #b00000000000000000000000000000000)))

(declare-fun lt!20892 () Unit!1408)

(assert (=> b!49777 (= lt!20892 lt!20891)))

(declare-fun res!28789 () Bool)

(declare-datatypes ((SeekEntryResult!223 0))(
  ( (MissingZero!223 (index!3014 (_ BitVec 32))) (Found!223 (index!3015 (_ BitVec 32))) (Intermediate!223 (undefined!1035 Bool) (index!3016 (_ BitVec 32)) (x!9113 (_ BitVec 32))) (Undefined!223) (MissingVacant!223 (index!3017 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3238 (_ BitVec 32)) SeekEntryResult!223)

(assert (=> b!49777 (= res!28789 (= (seekEntryOrOpen!0 (select (arr!1551 _keys!1794) i!836) _keys!1794 mask!2234) (Found!223 i!836)))))

(assert (=> b!49777 (=> (not res!28789) (not e!32066))))

(declare-fun b!49778 () Bool)

(assert (=> b!49778 (= e!32066 call!3851)))

(assert (= (and d!10013 (not res!28788)) b!49776))

(assert (= (and b!49776 c!6719) b!49777))

(assert (= (and b!49776 (not c!6719)) b!49775))

(assert (= (and b!49777 res!28789) b!49778))

(assert (= (or b!49778 b!49775) bm!3848))

(declare-fun m!43167 () Bool)

(assert (=> bm!3848 m!43167))

(declare-fun m!43169 () Bool)

(assert (=> b!49776 m!43169))

(assert (=> b!49776 m!43169))

(declare-fun m!43171 () Bool)

(assert (=> b!49776 m!43171))

(assert (=> b!49777 m!43169))

(declare-fun m!43173 () Bool)

(assert (=> b!49777 m!43173))

(declare-fun m!43175 () Bool)

(assert (=> b!49777 m!43175))

(assert (=> b!49777 m!43169))

(declare-fun m!43177 () Bool)

(assert (=> b!49777 m!43177))

(assert (=> b!49752 d!10013))

(declare-fun b!49787 () Bool)

(declare-fun e!32077 () Bool)

(declare-fun call!3852 () Bool)

(assert (=> b!49787 (= e!32077 call!3852)))

(declare-fun d!10023 () Bool)

(declare-fun res!28794 () Bool)

(declare-fun e!32076 () Bool)

(assert (=> d!10023 (=> res!28794 e!32076)))

(assert (=> d!10023 (= res!28794 (bvsge (bvadd #b00000000000000000000000000000001 i!836) (size!1773 _keys!1794)))))

(assert (=> d!10023 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234) e!32076)))

(declare-fun bm!3849 () Bool)

(assert (=> bm!3849 (= call!3852 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001) _keys!1794 mask!2234))))

(declare-fun b!49788 () Bool)

(assert (=> b!49788 (= e!32076 e!32077)))

(declare-fun c!6722 () Bool)

(assert (=> b!49788 (= c!6722 (validKeyInArray!0 (select (arr!1551 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836))))))

(declare-fun b!49789 () Bool)

(declare-fun e!32075 () Bool)

(assert (=> b!49789 (= e!32077 e!32075)))

(declare-fun lt!20899 () (_ BitVec 64))

(assert (=> b!49789 (= lt!20899 (select (arr!1551 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)))))

(declare-fun lt!20900 () Unit!1408)

(assert (=> b!49789 (= lt!20900 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!20899 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (=> b!49789 (arrayContainsKey!0 _keys!1794 lt!20899 #b00000000000000000000000000000000)))

(declare-fun lt!20901 () Unit!1408)

(assert (=> b!49789 (= lt!20901 lt!20900)))

(declare-fun res!28795 () Bool)

(assert (=> b!49789 (= res!28795 (= (seekEntryOrOpen!0 (select (arr!1551 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) _keys!1794 mask!2234) (Found!223 (bvadd #b00000000000000000000000000000001 i!836))))))

(assert (=> b!49789 (=> (not res!28795) (not e!32075))))

(declare-fun b!49790 () Bool)

(assert (=> b!49790 (= e!32075 call!3852)))

(assert (= (and d!10023 (not res!28794)) b!49788))

(assert (= (and b!49788 c!6722) b!49789))

(assert (= (and b!49788 (not c!6722)) b!49787))

(assert (= (and b!49789 res!28795) b!49790))

(assert (= (or b!49790 b!49787) bm!3849))

(declare-fun m!43179 () Bool)

(assert (=> bm!3849 m!43179))

(declare-fun m!43181 () Bool)

(assert (=> b!49788 m!43181))

(assert (=> b!49788 m!43181))

(declare-fun m!43183 () Bool)

(assert (=> b!49788 m!43183))

(assert (=> b!49789 m!43181))

(declare-fun m!43185 () Bool)

(assert (=> b!49789 m!43185))

(declare-fun m!43187 () Bool)

(assert (=> b!49789 m!43187))

(assert (=> b!49789 m!43181))

(declare-fun m!43189 () Bool)

(assert (=> b!49789 m!43189))

(assert (=> b!49752 d!10023))

(declare-fun d!10025 () Bool)

(assert (=> d!10025 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(declare-fun lt!20916 () Unit!1408)

(declare-fun choose!34 (array!3238 (_ BitVec 32) (_ BitVec 32)) Unit!1408)

(assert (=> d!10025 (= lt!20916 (choose!34 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (=> d!10025 (validMask!0 mask!2234)))

(assert (=> d!10025 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)) lt!20916)))

(declare-fun bs!2333 () Bool)

(assert (= bs!2333 d!10025))

(assert (=> bs!2333 m!43153))

(declare-fun m!43239 () Bool)

(assert (=> bs!2333 m!43239))

(assert (=> bs!2333 m!43147))

(assert (=> b!49752 d!10025))

(check-sat (not b!49776) (not d!10025) (not b!49777) (not bm!3848) (not b!49789) (not bm!3849) (not b!49788))
(check-sat)
(get-model)

(declare-fun d!10047 () Bool)

(assert (=> d!10047 (= (validKeyInArray!0 (select (arr!1551 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836))) (and (not (= (select (arr!1551 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1551 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!49788 d!10047))

(declare-fun d!10049 () Bool)

(assert (=> d!10049 (arrayContainsKey!0 _keys!1794 lt!20899 #b00000000000000000000000000000000)))

(declare-fun lt!20931 () Unit!1408)

(declare-fun choose!13 (array!3238 (_ BitVec 64) (_ BitVec 32)) Unit!1408)

(assert (=> d!10049 (= lt!20931 (choose!13 _keys!1794 lt!20899 (bvadd #b00000000000000000000000000000001 i!836)))))

(assert (=> d!10049 (bvsge (bvadd #b00000000000000000000000000000001 i!836) #b00000000000000000000000000000000)))

(assert (=> d!10049 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!20899 (bvadd #b00000000000000000000000000000001 i!836)) lt!20931)))

(declare-fun bs!2338 () Bool)

(assert (= bs!2338 d!10049))

(assert (=> bs!2338 m!43187))

(declare-fun m!43257 () Bool)

(assert (=> bs!2338 m!43257))

(assert (=> b!49789 d!10049))

(declare-fun d!10051 () Bool)

(declare-fun res!28820 () Bool)

(declare-fun e!32106 () Bool)

(assert (=> d!10051 (=> res!28820 e!32106)))

(assert (=> d!10051 (= res!28820 (= (select (arr!1551 _keys!1794) #b00000000000000000000000000000000) lt!20899))))

(assert (=> d!10051 (= (arrayContainsKey!0 _keys!1794 lt!20899 #b00000000000000000000000000000000) e!32106)))

(declare-fun b!49823 () Bool)

(declare-fun e!32107 () Bool)

(assert (=> b!49823 (= e!32106 e!32107)))

(declare-fun res!28821 () Bool)

(assert (=> b!49823 (=> (not res!28821) (not e!32107))))

(assert (=> b!49823 (= res!28821 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1773 _keys!1794)))))

(declare-fun b!49824 () Bool)

(assert (=> b!49824 (= e!32107 (arrayContainsKey!0 _keys!1794 lt!20899 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!10051 (not res!28820)) b!49823))

(assert (= (and b!49823 res!28821) b!49824))

(declare-fun m!43259 () Bool)

(assert (=> d!10051 m!43259))

(declare-fun m!43261 () Bool)

(assert (=> b!49824 m!43261))

(assert (=> b!49789 d!10051))

(declare-fun e!32154 () SeekEntryResult!223)

(declare-fun lt!20976 () SeekEntryResult!223)

(declare-fun b!49905 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3238 (_ BitVec 32)) SeekEntryResult!223)

(assert (=> b!49905 (= e!32154 (seekKeyOrZeroReturnVacant!0 (x!9113 lt!20976) (index!3016 lt!20976) (index!3016 lt!20976) (select (arr!1551 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) _keys!1794 mask!2234))))

(declare-fun b!49906 () Bool)

(declare-fun c!6761 () Bool)

(declare-fun lt!20978 () (_ BitVec 64))

(assert (=> b!49906 (= c!6761 (= lt!20978 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!32155 () SeekEntryResult!223)

(assert (=> b!49906 (= e!32155 e!32154)))

(declare-fun b!49907 () Bool)

(assert (=> b!49907 (= e!32155 (Found!223 (index!3016 lt!20976)))))

(declare-fun b!49908 () Bool)

(assert (=> b!49908 (= e!32154 (MissingZero!223 (index!3016 lt!20976)))))

(declare-fun b!49909 () Bool)

(declare-fun e!32156 () SeekEntryResult!223)

(assert (=> b!49909 (= e!32156 Undefined!223)))

(declare-fun d!10053 () Bool)

(declare-fun lt!20977 () SeekEntryResult!223)

(get-info :version)

(assert (=> d!10053 (and (or ((_ is Undefined!223) lt!20977) (not ((_ is Found!223) lt!20977)) (and (bvsge (index!3015 lt!20977) #b00000000000000000000000000000000) (bvslt (index!3015 lt!20977) (size!1773 _keys!1794)))) (or ((_ is Undefined!223) lt!20977) ((_ is Found!223) lt!20977) (not ((_ is MissingZero!223) lt!20977)) (and (bvsge (index!3014 lt!20977) #b00000000000000000000000000000000) (bvslt (index!3014 lt!20977) (size!1773 _keys!1794)))) (or ((_ is Undefined!223) lt!20977) ((_ is Found!223) lt!20977) ((_ is MissingZero!223) lt!20977) (not ((_ is MissingVacant!223) lt!20977)) (and (bvsge (index!3017 lt!20977) #b00000000000000000000000000000000) (bvslt (index!3017 lt!20977) (size!1773 _keys!1794)))) (or ((_ is Undefined!223) lt!20977) (ite ((_ is Found!223) lt!20977) (= (select (arr!1551 _keys!1794) (index!3015 lt!20977)) (select (arr!1551 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836))) (ite ((_ is MissingZero!223) lt!20977) (= (select (arr!1551 _keys!1794) (index!3014 lt!20977)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!223) lt!20977) (= (select (arr!1551 _keys!1794) (index!3017 lt!20977)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!10053 (= lt!20977 e!32156)))

(declare-fun c!6763 () Bool)

(assert (=> d!10053 (= c!6763 (and ((_ is Intermediate!223) lt!20976) (undefined!1035 lt!20976)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3238 (_ BitVec 32)) SeekEntryResult!223)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!10053 (= lt!20976 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1551 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) mask!2234) (select (arr!1551 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) _keys!1794 mask!2234))))

(assert (=> d!10053 (validMask!0 mask!2234)))

(assert (=> d!10053 (= (seekEntryOrOpen!0 (select (arr!1551 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836)) _keys!1794 mask!2234) lt!20977)))

(declare-fun b!49910 () Bool)

(assert (=> b!49910 (= e!32156 e!32155)))

(assert (=> b!49910 (= lt!20978 (select (arr!1551 _keys!1794) (index!3016 lt!20976)))))

(declare-fun c!6762 () Bool)

(assert (=> b!49910 (= c!6762 (= lt!20978 (select (arr!1551 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836))))))

(assert (= (and d!10053 c!6763) b!49909))

(assert (= (and d!10053 (not c!6763)) b!49910))

(assert (= (and b!49910 c!6762) b!49907))

(assert (= (and b!49910 (not c!6762)) b!49906))

(assert (= (and b!49906 c!6761) b!49908))

(assert (= (and b!49906 (not c!6761)) b!49905))

(assert (=> b!49905 m!43181))

(declare-fun m!43375 () Bool)

(assert (=> b!49905 m!43375))

(assert (=> d!10053 m!43181))

(declare-fun m!43377 () Bool)

(assert (=> d!10053 m!43377))

(assert (=> d!10053 m!43377))

(assert (=> d!10053 m!43181))

(declare-fun m!43379 () Bool)

(assert (=> d!10053 m!43379))

(declare-fun m!43381 () Bool)

(assert (=> d!10053 m!43381))

(assert (=> d!10053 m!43147))

(declare-fun m!43383 () Bool)

(assert (=> d!10053 m!43383))

(declare-fun m!43385 () Bool)

(assert (=> d!10053 m!43385))

(declare-fun m!43387 () Bool)

(assert (=> b!49910 m!43387))

(assert (=> b!49789 d!10053))

(declare-fun b!49911 () Bool)

(declare-fun e!32159 () Bool)

(declare-fun call!3863 () Bool)

(assert (=> b!49911 (= e!32159 call!3863)))

(declare-fun d!10087 () Bool)

(declare-fun res!28834 () Bool)

(declare-fun e!32158 () Bool)

(assert (=> d!10087 (=> res!28834 e!32158)))

(assert (=> d!10087 (= res!28834 (bvsge (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001) (size!1773 _keys!1794)))))

(assert (=> d!10087 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001) _keys!1794 mask!2234) e!32158)))

(declare-fun bm!3860 () Bool)

(assert (=> bm!3860 (= call!3863 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1794 mask!2234))))

(declare-fun b!49912 () Bool)

(assert (=> b!49912 (= e!32158 e!32159)))

(declare-fun c!6764 () Bool)

(assert (=> b!49912 (= c!6764 (validKeyInArray!0 (select (arr!1551 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001))))))

(declare-fun b!49913 () Bool)

(declare-fun e!32157 () Bool)

(assert (=> b!49913 (= e!32159 e!32157)))

(declare-fun lt!20979 () (_ BitVec 64))

(assert (=> b!49913 (= lt!20979 (select (arr!1551 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001)))))

(declare-fun lt!20980 () Unit!1408)

(assert (=> b!49913 (= lt!20980 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!20979 (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001)))))

(assert (=> b!49913 (arrayContainsKey!0 _keys!1794 lt!20979 #b00000000000000000000000000000000)))

(declare-fun lt!20981 () Unit!1408)

(assert (=> b!49913 (= lt!20981 lt!20980)))

(declare-fun res!28835 () Bool)

(assert (=> b!49913 (= res!28835 (= (seekEntryOrOpen!0 (select (arr!1551 _keys!1794) (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001)) _keys!1794 mask!2234) (Found!223 (bvadd #b00000000000000000000000000000001 i!836 #b00000000000000000000000000000001))))))

(assert (=> b!49913 (=> (not res!28835) (not e!32157))))

(declare-fun b!49914 () Bool)

(assert (=> b!49914 (= e!32157 call!3863)))

(assert (= (and d!10087 (not res!28834)) b!49912))

(assert (= (and b!49912 c!6764) b!49913))

(assert (= (and b!49912 (not c!6764)) b!49911))

(assert (= (and b!49913 res!28835) b!49914))

(assert (= (or b!49914 b!49911) bm!3860))

(declare-fun m!43389 () Bool)

(assert (=> bm!3860 m!43389))

(declare-fun m!43391 () Bool)

(assert (=> b!49912 m!43391))

(assert (=> b!49912 m!43391))

(declare-fun m!43393 () Bool)

(assert (=> b!49912 m!43393))

(assert (=> b!49913 m!43391))

(declare-fun m!43395 () Bool)

(assert (=> b!49913 m!43395))

(declare-fun m!43397 () Bool)

(assert (=> b!49913 m!43397))

(assert (=> b!49913 m!43391))

(declare-fun m!43399 () Bool)

(assert (=> b!49913 m!43399))

(assert (=> bm!3849 d!10087))

(declare-fun d!10089 () Bool)

(assert (=> d!10089 (= (validKeyInArray!0 (select (arr!1551 _keys!1794) i!836)) (and (not (= (select (arr!1551 _keys!1794) i!836) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1551 _keys!1794) i!836) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!49776 d!10089))

(assert (=> d!10025 d!10023))

(declare-fun d!10091 () Bool)

(assert (=> d!10091 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 i!836) _keys!1794 mask!2234)))

(assert (=> d!10091 true))

(declare-fun _$30!84 () Unit!1408)

(assert (=> d!10091 (= (choose!34 _keys!1794 mask!2234 (bvadd #b00000000000000000000000000000001 i!836)) _$30!84)))

(declare-fun bs!2343 () Bool)

(assert (= bs!2343 d!10091))

(assert (=> bs!2343 m!43153))

(assert (=> d!10025 d!10091))

(assert (=> d!10025 d!10005))

(declare-fun d!10093 () Bool)

(assert (=> d!10093 (arrayContainsKey!0 _keys!1794 lt!20890 #b00000000000000000000000000000000)))

(declare-fun lt!20982 () Unit!1408)

(assert (=> d!10093 (= lt!20982 (choose!13 _keys!1794 lt!20890 i!836))))

(assert (=> d!10093 (bvsge i!836 #b00000000000000000000000000000000)))

(assert (=> d!10093 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!20890 i!836) lt!20982)))

(declare-fun bs!2344 () Bool)

(assert (= bs!2344 d!10093))

(assert (=> bs!2344 m!43175))

(declare-fun m!43401 () Bool)

(assert (=> bs!2344 m!43401))

(assert (=> b!49777 d!10093))

(declare-fun d!10095 () Bool)

(declare-fun res!28836 () Bool)

(declare-fun e!32160 () Bool)

(assert (=> d!10095 (=> res!28836 e!32160)))

(assert (=> d!10095 (= res!28836 (= (select (arr!1551 _keys!1794) #b00000000000000000000000000000000) lt!20890))))

(assert (=> d!10095 (= (arrayContainsKey!0 _keys!1794 lt!20890 #b00000000000000000000000000000000) e!32160)))

(declare-fun b!49915 () Bool)

(declare-fun e!32161 () Bool)

(assert (=> b!49915 (= e!32160 e!32161)))

(declare-fun res!28837 () Bool)

(assert (=> b!49915 (=> (not res!28837) (not e!32161))))

(assert (=> b!49915 (= res!28837 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1773 _keys!1794)))))

(declare-fun b!49916 () Bool)

(assert (=> b!49916 (= e!32161 (arrayContainsKey!0 _keys!1794 lt!20890 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!10095 (not res!28836)) b!49915))

(assert (= (and b!49915 res!28837) b!49916))

(assert (=> d!10095 m!43259))

(declare-fun m!43403 () Bool)

(assert (=> b!49916 m!43403))

(assert (=> b!49777 d!10095))

(declare-fun b!49917 () Bool)

(declare-fun e!32162 () SeekEntryResult!223)

(declare-fun lt!20983 () SeekEntryResult!223)

(assert (=> b!49917 (= e!32162 (seekKeyOrZeroReturnVacant!0 (x!9113 lt!20983) (index!3016 lt!20983) (index!3016 lt!20983) (select (arr!1551 _keys!1794) i!836) _keys!1794 mask!2234))))

(declare-fun b!49918 () Bool)

(declare-fun c!6765 () Bool)

(declare-fun lt!20985 () (_ BitVec 64))

(assert (=> b!49918 (= c!6765 (= lt!20985 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!32163 () SeekEntryResult!223)

(assert (=> b!49918 (= e!32163 e!32162)))

(declare-fun b!49919 () Bool)

(assert (=> b!49919 (= e!32163 (Found!223 (index!3016 lt!20983)))))

(declare-fun b!49920 () Bool)

(assert (=> b!49920 (= e!32162 (MissingZero!223 (index!3016 lt!20983)))))

(declare-fun b!49921 () Bool)

(declare-fun e!32164 () SeekEntryResult!223)

(assert (=> b!49921 (= e!32164 Undefined!223)))

(declare-fun d!10097 () Bool)

(declare-fun lt!20984 () SeekEntryResult!223)

(assert (=> d!10097 (and (or ((_ is Undefined!223) lt!20984) (not ((_ is Found!223) lt!20984)) (and (bvsge (index!3015 lt!20984) #b00000000000000000000000000000000) (bvslt (index!3015 lt!20984) (size!1773 _keys!1794)))) (or ((_ is Undefined!223) lt!20984) ((_ is Found!223) lt!20984) (not ((_ is MissingZero!223) lt!20984)) (and (bvsge (index!3014 lt!20984) #b00000000000000000000000000000000) (bvslt (index!3014 lt!20984) (size!1773 _keys!1794)))) (or ((_ is Undefined!223) lt!20984) ((_ is Found!223) lt!20984) ((_ is MissingZero!223) lt!20984) (not ((_ is MissingVacant!223) lt!20984)) (and (bvsge (index!3017 lt!20984) #b00000000000000000000000000000000) (bvslt (index!3017 lt!20984) (size!1773 _keys!1794)))) (or ((_ is Undefined!223) lt!20984) (ite ((_ is Found!223) lt!20984) (= (select (arr!1551 _keys!1794) (index!3015 lt!20984)) (select (arr!1551 _keys!1794) i!836)) (ite ((_ is MissingZero!223) lt!20984) (= (select (arr!1551 _keys!1794) (index!3014 lt!20984)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!223) lt!20984) (= (select (arr!1551 _keys!1794) (index!3017 lt!20984)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!10097 (= lt!20984 e!32164)))

(declare-fun c!6767 () Bool)

(assert (=> d!10097 (= c!6767 (and ((_ is Intermediate!223) lt!20983) (undefined!1035 lt!20983)))))

(assert (=> d!10097 (= lt!20983 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1551 _keys!1794) i!836) mask!2234) (select (arr!1551 _keys!1794) i!836) _keys!1794 mask!2234))))

(assert (=> d!10097 (validMask!0 mask!2234)))

(assert (=> d!10097 (= (seekEntryOrOpen!0 (select (arr!1551 _keys!1794) i!836) _keys!1794 mask!2234) lt!20984)))

(declare-fun b!49922 () Bool)

(assert (=> b!49922 (= e!32164 e!32163)))

(assert (=> b!49922 (= lt!20985 (select (arr!1551 _keys!1794) (index!3016 lt!20983)))))

(declare-fun c!6766 () Bool)

(assert (=> b!49922 (= c!6766 (= lt!20985 (select (arr!1551 _keys!1794) i!836)))))

(assert (= (and d!10097 c!6767) b!49921))

(assert (= (and d!10097 (not c!6767)) b!49922))

(assert (= (and b!49922 c!6766) b!49919))

(assert (= (and b!49922 (not c!6766)) b!49918))

(assert (= (and b!49918 c!6765) b!49920))

(assert (= (and b!49918 (not c!6765)) b!49917))

(assert (=> b!49917 m!43169))

(declare-fun m!43405 () Bool)

(assert (=> b!49917 m!43405))

(assert (=> d!10097 m!43169))

(declare-fun m!43407 () Bool)

(assert (=> d!10097 m!43407))

(assert (=> d!10097 m!43407))

(assert (=> d!10097 m!43169))

(declare-fun m!43409 () Bool)

(assert (=> d!10097 m!43409))

(declare-fun m!43411 () Bool)

(assert (=> d!10097 m!43411))

(assert (=> d!10097 m!43147))

(declare-fun m!43413 () Bool)

(assert (=> d!10097 m!43413))

(declare-fun m!43415 () Bool)

(assert (=> d!10097 m!43415))

(declare-fun m!43417 () Bool)

(assert (=> b!49922 m!43417))

(assert (=> b!49777 d!10097))

(declare-fun b!49923 () Bool)

(declare-fun e!32167 () Bool)

(declare-fun call!3864 () Bool)

(assert (=> b!49923 (= e!32167 call!3864)))

(declare-fun d!10099 () Bool)

(declare-fun res!28838 () Bool)

(declare-fun e!32166 () Bool)

(assert (=> d!10099 (=> res!28838 e!32166)))

(assert (=> d!10099 (= res!28838 (bvsge (bvadd i!836 #b00000000000000000000000000000001) (size!1773 _keys!1794)))))

(assert (=> d!10099 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd i!836 #b00000000000000000000000000000001) _keys!1794 mask!2234) e!32166)))

(declare-fun bm!3861 () Bool)

(assert (=> bm!3861 (= call!3864 (arrayForallSeekEntryOrOpenFound!0 (bvadd i!836 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1794 mask!2234))))

(declare-fun b!49924 () Bool)

(assert (=> b!49924 (= e!32166 e!32167)))

(declare-fun c!6768 () Bool)

(assert (=> b!49924 (= c!6768 (validKeyInArray!0 (select (arr!1551 _keys!1794) (bvadd i!836 #b00000000000000000000000000000001))))))

(declare-fun b!49925 () Bool)

(declare-fun e!32165 () Bool)

(assert (=> b!49925 (= e!32167 e!32165)))

(declare-fun lt!20986 () (_ BitVec 64))

(assert (=> b!49925 (= lt!20986 (select (arr!1551 _keys!1794) (bvadd i!836 #b00000000000000000000000000000001)))))

(declare-fun lt!20987 () Unit!1408)

(assert (=> b!49925 (= lt!20987 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!20986 (bvadd i!836 #b00000000000000000000000000000001)))))

(assert (=> b!49925 (arrayContainsKey!0 _keys!1794 lt!20986 #b00000000000000000000000000000000)))

(declare-fun lt!20988 () Unit!1408)

(assert (=> b!49925 (= lt!20988 lt!20987)))

(declare-fun res!28839 () Bool)

(assert (=> b!49925 (= res!28839 (= (seekEntryOrOpen!0 (select (arr!1551 _keys!1794) (bvadd i!836 #b00000000000000000000000000000001)) _keys!1794 mask!2234) (Found!223 (bvadd i!836 #b00000000000000000000000000000001))))))

(assert (=> b!49925 (=> (not res!28839) (not e!32165))))

(declare-fun b!49926 () Bool)

(assert (=> b!49926 (= e!32165 call!3864)))

(assert (= (and d!10099 (not res!28838)) b!49924))

(assert (= (and b!49924 c!6768) b!49925))

(assert (= (and b!49924 (not c!6768)) b!49923))

(assert (= (and b!49925 res!28839) b!49926))

(assert (= (or b!49926 b!49923) bm!3861))

(declare-fun m!43419 () Bool)

(assert (=> bm!3861 m!43419))

(declare-fun m!43421 () Bool)

(assert (=> b!49924 m!43421))

(assert (=> b!49924 m!43421))

(declare-fun m!43423 () Bool)

(assert (=> b!49924 m!43423))

(assert (=> b!49925 m!43421))

(declare-fun m!43425 () Bool)

(assert (=> b!49925 m!43425))

(declare-fun m!43427 () Bool)

(assert (=> b!49925 m!43427))

(assert (=> b!49925 m!43421))

(declare-fun m!43429 () Bool)

(assert (=> b!49925 m!43429))

(assert (=> bm!3848 d!10099))

(check-sat (not d!10097) (not b!49917) (not b!49925) (not d!10091) (not d!10093) (not b!49913) (not d!10049) (not b!49916) (not b!49905) (not bm!3860) (not d!10053) (not b!49824) (not bm!3861) (not b!49912) (not b!49924))
(check-sat)
