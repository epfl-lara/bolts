; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119034 () Bool)

(assert start!119034)

(declare-fun b!1388897 () Bool)

(declare-fun res!929241 () Bool)

(declare-fun e!786799 () Bool)

(assert (=> b!1388897 (=> (not res!929241) (not e!786799))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!94949 0))(
  ( (array!94950 (arr!45839 (Array (_ BitVec 32) (_ BitVec 64))) (size!46390 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94949)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1388897 (= res!929241 (and (= (size!46390 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46390 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46390 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1388898 () Bool)

(assert (=> b!1388898 (= e!786799 (and (bvsge mask!2840 #b00000000000000000000000000000000) (bvsgt mask!2840 #b00111111111111111111111111111111)))))

(declare-fun b!1388899 () Bool)

(declare-fun res!929237 () Bool)

(assert (=> b!1388899 (=> (not res!929237) (not e!786799))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388899 (= res!929237 (validKeyInArray!0 (select (arr!45839 a!2901) i!1037)))))

(declare-fun b!1388900 () Bool)

(declare-fun res!929236 () Bool)

(assert (=> b!1388900 (=> (not res!929236) (not e!786799))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94949 (_ BitVec 32)) Bool)

(assert (=> b!1388900 (= res!929236 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1388901 () Bool)

(declare-fun res!929238 () Bool)

(assert (=> b!1388901 (=> (not res!929238) (not e!786799))))

(declare-datatypes ((List!32538 0))(
  ( (Nil!32535) (Cons!32534 (h!33749 (_ BitVec 64)) (t!47239 List!32538)) )
))
(declare-fun arrayNoDuplicates!0 (array!94949 (_ BitVec 32) List!32538) Bool)

(assert (=> b!1388901 (= res!929238 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32535))))

(declare-fun b!1388902 () Bool)

(declare-fun res!929240 () Bool)

(assert (=> b!1388902 (=> (not res!929240) (not e!786799))))

(assert (=> b!1388902 (= res!929240 (validKeyInArray!0 (select (arr!45839 a!2901) j!112)))))

(declare-fun res!929239 () Bool)

(assert (=> start!119034 (=> (not res!929239) (not e!786799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119034 (= res!929239 (validMask!0 mask!2840))))

(assert (=> start!119034 e!786799))

(assert (=> start!119034 true))

(declare-fun array_inv!34784 (array!94949) Bool)

(assert (=> start!119034 (array_inv!34784 a!2901)))

(assert (= (and start!119034 res!929239) b!1388897))

(assert (= (and b!1388897 res!929241) b!1388899))

(assert (= (and b!1388899 res!929237) b!1388902))

(assert (= (and b!1388902 res!929240) b!1388900))

(assert (= (and b!1388900 res!929236) b!1388901))

(assert (= (and b!1388901 res!929238) b!1388898))

(declare-fun m!1274667 () Bool)

(assert (=> b!1388899 m!1274667))

(assert (=> b!1388899 m!1274667))

(declare-fun m!1274669 () Bool)

(assert (=> b!1388899 m!1274669))

(declare-fun m!1274671 () Bool)

(assert (=> b!1388900 m!1274671))

(declare-fun m!1274673 () Bool)

(assert (=> b!1388901 m!1274673))

(declare-fun m!1274675 () Bool)

(assert (=> start!119034 m!1274675))

(declare-fun m!1274677 () Bool)

(assert (=> start!119034 m!1274677))

(declare-fun m!1274679 () Bool)

(assert (=> b!1388902 m!1274679))

(assert (=> b!1388902 m!1274679))

(declare-fun m!1274681 () Bool)

(assert (=> b!1388902 m!1274681))

(check-sat (not start!119034) (not b!1388899) (not b!1388902) (not b!1388901) (not b!1388900))
(check-sat)
(get-model)

(declare-fun d!150001 () Bool)

(assert (=> d!150001 (= (validKeyInArray!0 (select (arr!45839 a!2901) j!112)) (and (not (= (select (arr!45839 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45839 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388902 d!150001))

(declare-fun bm!66660 () Bool)

(declare-fun call!66663 () Bool)

(assert (=> bm!66660 (= call!66663 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun d!150003 () Bool)

(declare-fun res!929265 () Bool)

(declare-fun e!786814 () Bool)

(assert (=> d!150003 (=> res!929265 e!786814)))

(assert (=> d!150003 (= res!929265 (bvsge #b00000000000000000000000000000000 (size!46390 a!2901)))))

(assert (=> d!150003 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!786814)))

(declare-fun b!1388929 () Bool)

(declare-fun e!786815 () Bool)

(assert (=> b!1388929 (= e!786814 e!786815)))

(declare-fun c!129278 () Bool)

(assert (=> b!1388929 (= c!129278 (validKeyInArray!0 (select (arr!45839 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1388930 () Bool)

(declare-fun e!786813 () Bool)

(assert (=> b!1388930 (= e!786815 e!786813)))

(declare-fun lt!610394 () (_ BitVec 64))

(assert (=> b!1388930 (= lt!610394 (select (arr!45839 a!2901) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!46370 0))(
  ( (Unit!46371) )
))
(declare-fun lt!610396 () Unit!46370)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94949 (_ BitVec 64) (_ BitVec 32)) Unit!46370)

(assert (=> b!1388930 (= lt!610396 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!610394 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!94949 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1388930 (arrayContainsKey!0 a!2901 lt!610394 #b00000000000000000000000000000000)))

(declare-fun lt!610395 () Unit!46370)

(assert (=> b!1388930 (= lt!610395 lt!610396)))

(declare-fun res!929264 () Bool)

(declare-datatypes ((SeekEntryResult!10193 0))(
  ( (MissingZero!10193 (index!43142 (_ BitVec 32))) (Found!10193 (index!43143 (_ BitVec 32))) (Intermediate!10193 (undefined!11005 Bool) (index!43144 (_ BitVec 32)) (x!124799 (_ BitVec 32))) (Undefined!10193) (MissingVacant!10193 (index!43145 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94949 (_ BitVec 32)) SeekEntryResult!10193)

(assert (=> b!1388930 (= res!929264 (= (seekEntryOrOpen!0 (select (arr!45839 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10193 #b00000000000000000000000000000000)))))

(assert (=> b!1388930 (=> (not res!929264) (not e!786813))))

(declare-fun b!1388931 () Bool)

(assert (=> b!1388931 (= e!786815 call!66663)))

(declare-fun b!1388932 () Bool)

(assert (=> b!1388932 (= e!786813 call!66663)))

(assert (= (and d!150003 (not res!929265)) b!1388929))

(assert (= (and b!1388929 c!129278) b!1388930))

(assert (= (and b!1388929 (not c!129278)) b!1388931))

(assert (= (and b!1388930 res!929264) b!1388932))

(assert (= (or b!1388932 b!1388931) bm!66660))

(declare-fun m!1274699 () Bool)

(assert (=> bm!66660 m!1274699))

(declare-fun m!1274701 () Bool)

(assert (=> b!1388929 m!1274701))

(assert (=> b!1388929 m!1274701))

(declare-fun m!1274703 () Bool)

(assert (=> b!1388929 m!1274703))

(assert (=> b!1388930 m!1274701))

(declare-fun m!1274705 () Bool)

(assert (=> b!1388930 m!1274705))

(declare-fun m!1274707 () Bool)

(assert (=> b!1388930 m!1274707))

(assert (=> b!1388930 m!1274701))

(declare-fun m!1274709 () Bool)

(assert (=> b!1388930 m!1274709))

(assert (=> b!1388900 d!150003))

(declare-fun b!1388970 () Bool)

(declare-fun e!786848 () Bool)

(declare-fun e!786845 () Bool)

(assert (=> b!1388970 (= e!786848 e!786845)))

(declare-fun res!929287 () Bool)

(assert (=> b!1388970 (=> (not res!929287) (not e!786845))))

(declare-fun e!786847 () Bool)

(assert (=> b!1388970 (= res!929287 (not e!786847))))

(declare-fun res!929288 () Bool)

(assert (=> b!1388970 (=> (not res!929288) (not e!786847))))

(assert (=> b!1388970 (= res!929288 (validKeyInArray!0 (select (arr!45839 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150009 () Bool)

(declare-fun res!929289 () Bool)

(assert (=> d!150009 (=> res!929289 e!786848)))

(assert (=> d!150009 (= res!929289 (bvsge #b00000000000000000000000000000000 (size!46390 a!2901)))))

(assert (=> d!150009 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32535) e!786848)))

(declare-fun b!1388971 () Bool)

(declare-fun contains!9768 (List!32538 (_ BitVec 64)) Bool)

(assert (=> b!1388971 (= e!786847 (contains!9768 Nil!32535 (select (arr!45839 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66669 () Bool)

(declare-fun call!66672 () Bool)

(declare-fun c!129287 () Bool)

(assert (=> bm!66669 (= call!66672 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129287 (Cons!32534 (select (arr!45839 a!2901) #b00000000000000000000000000000000) Nil!32535) Nil!32535)))))

(declare-fun b!1388972 () Bool)

(declare-fun e!786846 () Bool)

(assert (=> b!1388972 (= e!786845 e!786846)))

(assert (=> b!1388972 (= c!129287 (validKeyInArray!0 (select (arr!45839 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1388973 () Bool)

(assert (=> b!1388973 (= e!786846 call!66672)))

(declare-fun b!1388974 () Bool)

(assert (=> b!1388974 (= e!786846 call!66672)))

(assert (= (and d!150009 (not res!929289)) b!1388970))

(assert (= (and b!1388970 res!929288) b!1388971))

(assert (= (and b!1388970 res!929287) b!1388972))

(assert (= (and b!1388972 c!129287) b!1388974))

(assert (= (and b!1388972 (not c!129287)) b!1388973))

(assert (= (or b!1388974 b!1388973) bm!66669))

(assert (=> b!1388970 m!1274701))

(assert (=> b!1388970 m!1274701))

(assert (=> b!1388970 m!1274703))

(assert (=> b!1388971 m!1274701))

(assert (=> b!1388971 m!1274701))

(declare-fun m!1274731 () Bool)

(assert (=> b!1388971 m!1274731))

(assert (=> bm!66669 m!1274701))

(declare-fun m!1274733 () Bool)

(assert (=> bm!66669 m!1274733))

(assert (=> b!1388972 m!1274701))

(assert (=> b!1388972 m!1274701))

(assert (=> b!1388972 m!1274703))

(assert (=> b!1388901 d!150009))

(declare-fun d!150019 () Bool)

(assert (=> d!150019 (= (validKeyInArray!0 (select (arr!45839 a!2901) i!1037)) (and (not (= (select (arr!45839 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45839 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388899 d!150019))

(declare-fun d!150021 () Bool)

(assert (=> d!150021 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119034 d!150021))

(declare-fun d!150029 () Bool)

(assert (=> d!150029 (= (array_inv!34784 a!2901) (bvsge (size!46390 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119034 d!150029))

(check-sat (not b!1388930) (not b!1388970) (not b!1388929) (not b!1388972) (not bm!66660) (not b!1388971) (not bm!66669))
(check-sat)
