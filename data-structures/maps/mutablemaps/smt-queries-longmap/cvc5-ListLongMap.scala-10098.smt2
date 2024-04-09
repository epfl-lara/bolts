; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119086 () Bool)

(assert start!119086)

(declare-fun res!929479 () Bool)

(declare-fun e!786929 () Bool)

(assert (=> start!119086 (=> (not res!929479) (not e!786929))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119086 (= res!929479 (validMask!0 mask!2840))))

(assert (=> start!119086 e!786929))

(assert (=> start!119086 true))

(declare-datatypes ((array!94974 0))(
  ( (array!94975 (arr!45850 (Array (_ BitVec 32) (_ BitVec 64))) (size!46401 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94974)

(declare-fun array_inv!34795 (array!94974) Bool)

(assert (=> start!119086 (array_inv!34795 a!2901)))

(declare-fun b!1389176 () Bool)

(declare-fun res!929484 () Bool)

(assert (=> b!1389176 (=> (not res!929484) (not e!786929))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389176 (= res!929484 (validKeyInArray!0 (select (arr!45850 a!2901) i!1037)))))

(declare-fun b!1389177 () Bool)

(declare-fun res!929483 () Bool)

(assert (=> b!1389177 (=> (not res!929483) (not e!786929))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389177 (= res!929483 (and (= (size!46401 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46401 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46401 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389178 () Bool)

(declare-fun res!929482 () Bool)

(assert (=> b!1389178 (=> (not res!929482) (not e!786929))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94974 (_ BitVec 32)) Bool)

(assert (=> b!1389178 (= res!929482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389179 () Bool)

(declare-fun lt!610444 () (_ BitVec 32))

(assert (=> b!1389179 (= e!786929 (and (bvsge mask!2840 #b00000000000000000000000000000000) (or (bvslt lt!610444 #b00000000000000000000000000000000) (bvsge lt!610444 (bvadd #b00000000000000000000000000000001 mask!2840)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389179 (= lt!610444 (toIndex!0 (select (arr!45850 a!2901) j!112) mask!2840))))

(declare-fun b!1389180 () Bool)

(declare-fun res!929481 () Bool)

(assert (=> b!1389180 (=> (not res!929481) (not e!786929))))

(declare-datatypes ((List!32549 0))(
  ( (Nil!32546) (Cons!32545 (h!33760 (_ BitVec 64)) (t!47250 List!32549)) )
))
(declare-fun arrayNoDuplicates!0 (array!94974 (_ BitVec 32) List!32549) Bool)

(assert (=> b!1389180 (= res!929481 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32546))))

(declare-fun b!1389181 () Bool)

(declare-fun res!929480 () Bool)

(assert (=> b!1389181 (=> (not res!929480) (not e!786929))))

(assert (=> b!1389181 (= res!929480 (validKeyInArray!0 (select (arr!45850 a!2901) j!112)))))

(assert (= (and start!119086 res!929479) b!1389177))

(assert (= (and b!1389177 res!929483) b!1389176))

(assert (= (and b!1389176 res!929484) b!1389181))

(assert (= (and b!1389181 res!929480) b!1389178))

(assert (= (and b!1389178 res!929482) b!1389180))

(assert (= (and b!1389180 res!929481) b!1389179))

(declare-fun m!1274909 () Bool)

(assert (=> b!1389178 m!1274909))

(declare-fun m!1274911 () Bool)

(assert (=> b!1389176 m!1274911))

(assert (=> b!1389176 m!1274911))

(declare-fun m!1274913 () Bool)

(assert (=> b!1389176 m!1274913))

(declare-fun m!1274915 () Bool)

(assert (=> b!1389180 m!1274915))

(declare-fun m!1274917 () Bool)

(assert (=> b!1389181 m!1274917))

(assert (=> b!1389181 m!1274917))

(declare-fun m!1274919 () Bool)

(assert (=> b!1389181 m!1274919))

(declare-fun m!1274921 () Bool)

(assert (=> start!119086 m!1274921))

(declare-fun m!1274923 () Bool)

(assert (=> start!119086 m!1274923))

(assert (=> b!1389179 m!1274917))

(assert (=> b!1389179 m!1274917))

(declare-fun m!1274925 () Bool)

(assert (=> b!1389179 m!1274925))

(push 1)

(assert (not b!1389178))

(assert (not b!1389179))

(assert (not b!1389181))

(assert (not b!1389180))

(assert (not b!1389176))

(assert (not start!119086))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1389226 () Bool)

(declare-fun e!786948 () Bool)

(declare-fun call!66681 () Bool)

(assert (=> b!1389226 (= e!786948 call!66681)))

(declare-fun bm!66678 () Bool)

(assert (=> bm!66678 (= call!66681 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1389227 () Bool)

(declare-fun e!786949 () Bool)

(assert (=> b!1389227 (= e!786949 e!786948)))

(declare-fun c!129296 () Bool)

(assert (=> b!1389227 (= c!129296 (validKeyInArray!0 (select (arr!45850 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150051 () Bool)

(declare-fun res!929526 () Bool)

(assert (=> d!150051 (=> res!929526 e!786949)))

(assert (=> d!150051 (= res!929526 (bvsge #b00000000000000000000000000000000 (size!46401 a!2901)))))

(assert (=> d!150051 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!786949)))

(declare-fun b!1389228 () Bool)

(declare-fun e!786950 () Bool)

(assert (=> b!1389228 (= e!786950 call!66681)))

(declare-fun b!1389229 () Bool)

(assert (=> b!1389229 (= e!786948 e!786950)))

(declare-fun lt!610464 () (_ BitVec 64))

(assert (=> b!1389229 (= lt!610464 (select (arr!45850 a!2901) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!46374 0))(
  ( (Unit!46375) )
))
(declare-fun lt!610463 () Unit!46374)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94974 (_ BitVec 64) (_ BitVec 32)) Unit!46374)

(assert (=> b!1389229 (= lt!610463 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!610464 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!94974 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1389229 (arrayContainsKey!0 a!2901 lt!610464 #b00000000000000000000000000000000)))

(declare-fun lt!610465 () Unit!46374)

(assert (=> b!1389229 (= lt!610465 lt!610463)))

(declare-fun res!929527 () Bool)

(declare-datatypes ((SeekEntryResult!10195 0))(
  ( (MissingZero!10195 (index!43150 (_ BitVec 32))) (Found!10195 (index!43151 (_ BitVec 32))) (Intermediate!10195 (undefined!11007 Bool) (index!43152 (_ BitVec 32)) (x!124836 (_ BitVec 32))) (Undefined!10195) (MissingVacant!10195 (index!43153 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94974 (_ BitVec 32)) SeekEntryResult!10195)

(assert (=> b!1389229 (= res!929527 (= (seekEntryOrOpen!0 (select (arr!45850 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10195 #b00000000000000000000000000000000)))))

(assert (=> b!1389229 (=> (not res!929527) (not e!786950))))

(assert (= (and d!150051 (not res!929526)) b!1389227))

(assert (= (and b!1389227 c!129296) b!1389229))

(assert (= (and b!1389227 (not c!129296)) b!1389226))

(assert (= (and b!1389229 res!929527) b!1389228))

(assert (= (or b!1389228 b!1389226) bm!66678))

(declare-fun m!1274963 () Bool)

(assert (=> bm!66678 m!1274963))

(declare-fun m!1274965 () Bool)

(assert (=> b!1389227 m!1274965))

(assert (=> b!1389227 m!1274965))

(declare-fun m!1274967 () Bool)

(assert (=> b!1389227 m!1274967))

(assert (=> b!1389229 m!1274965))

(declare-fun m!1274969 () Bool)

(assert (=> b!1389229 m!1274969))

(declare-fun m!1274971 () Bool)

(assert (=> b!1389229 m!1274971))

(assert (=> b!1389229 m!1274965))

(declare-fun m!1274973 () Bool)

(assert (=> b!1389229 m!1274973))

(assert (=> b!1389178 d!150051))

(declare-fun d!150063 () Bool)

(declare-fun lt!610471 () (_ BitVec 32))

(declare-fun lt!610470 () (_ BitVec 32))

(assert (=> d!150063 (= lt!610471 (bvmul (bvxor lt!610470 (bvlshr lt!610470 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150063 (= lt!610470 ((_ extract 31 0) (bvand (bvxor (select (arr!45850 a!2901) j!112) (bvlshr (select (arr!45850 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150063 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!929528 (let ((h!33764 ((_ extract 31 0) (bvand (bvxor (select (arr!45850 a!2901) j!112) (bvlshr (select (arr!45850 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!124834 (bvmul (bvxor h!33764 (bvlshr h!33764 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!124834 (bvlshr x!124834 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!929528 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!929528 #b00000000000000000000000000000000))))))

(assert (=> d!150063 (= (toIndex!0 (select (arr!45850 a!2901) j!112) mask!2840) (bvand (bvxor lt!610471 (bvlshr lt!610471 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1389179 d!150063))

(declare-fun d!150071 () Bool)

(assert (=> d!150071 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119086 d!150071))

(declare-fun d!150077 () Bool)

(assert (=> d!150077 (= (array_inv!34795 a!2901) (bvsge (size!46401 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119086 d!150077))

(declare-fun d!150079 () Bool)

(assert (=> d!150079 (= (validKeyInArray!0 (select (arr!45850 a!2901) j!112)) (and (not (= (select (arr!45850 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45850 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1389181 d!150079))

(declare-fun b!1389290 () Bool)

(declare-fun e!787001 () Bool)

(declare-fun call!66693 () Bool)

(assert (=> b!1389290 (= e!787001 call!66693)))

(declare-fun b!1389291 () Bool)

(declare-fun e!786998 () Bool)

(declare-fun contains!9772 (List!32549 (_ BitVec 64)) Bool)

(assert (=> b!1389291 (= e!786998 (contains!9772 Nil!32546 (select (arr!45850 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1389292 () Bool)

(declare-fun e!786999 () Bool)

(declare-fun e!787000 () Bool)

(assert (=> b!1389292 (= e!786999 e!787000)))

(declare-fun res!929565 () Bool)

(assert (=> b!1389292 (=> (not res!929565) (not e!787000))))

(assert (=> b!1389292 (= res!929565 (not e!786998))))

(declare-fun res!929566 () Bool)

(assert (=> b!1389292 (=> (not res!929566) (not e!786998))))

(assert (=> b!1389292 (= res!929566 (validKeyInArray!0 (select (arr!45850 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1389293 () Bool)

(assert (=> b!1389293 (= e!787000 e!787001)))

(declare-fun c!129310 () Bool)

(assert (=> b!1389293 (= c!129310 (validKeyInArray!0 (select (arr!45850 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1389294 () Bool)

(assert (=> b!1389294 (= e!787001 call!66693)))

(declare-fun d!150081 () Bool)

(declare-fun res!929564 () Bool)

(assert (=> d!150081 (=> res!929564 e!786999)))

(assert (=> d!150081 (= res!929564 (bvsge #b00000000000000000000000000000000 (size!46401 a!2901)))))

(assert (=> d!150081 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32546) e!786999)))

(declare-fun bm!66690 () Bool)

(assert (=> bm!66690 (= call!66693 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129310 (Cons!32545 (select (arr!45850 a!2901) #b00000000000000000000000000000000) Nil!32546) Nil!32546)))))

(assert (= (and d!150081 (not res!929564)) b!1389292))

(assert (= (and b!1389292 res!929566) b!1389291))

(assert (= (and b!1389292 res!929565) b!1389293))

(assert (= (and b!1389293 c!129310) b!1389290))

(assert (= (and b!1389293 (not c!129310)) b!1389294))

(assert (= (or b!1389290 b!1389294) bm!66690))

(assert (=> b!1389291 m!1274965))

(assert (=> b!1389291 m!1274965))

(declare-fun m!1274999 () Bool)

(assert (=> b!1389291 m!1274999))

(assert (=> b!1389292 m!1274965))

(assert (=> b!1389292 m!1274965))

(assert (=> b!1389292 m!1274967))

(assert (=> b!1389293 m!1274965))

(assert (=> b!1389293 m!1274965))

(assert (=> b!1389293 m!1274967))

(assert (=> bm!66690 m!1274965))

(declare-fun m!1275001 () Bool)

(assert (=> bm!66690 m!1275001))

(assert (=> b!1389180 d!150081))

(declare-fun d!150085 () Bool)

(assert (=> d!150085 (= (validKeyInArray!0 (select (arr!45850 a!2901) i!1037)) (and (not (= (select (arr!45850 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45850 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1389176 d!150085))

(push 1)

(assert (not bm!66690))

(assert (not b!1389227))

(assert (not b!1389293))

(assert (not bm!66678))

(assert (not b!1389292))

(assert (not b!1389229))

(assert (not b!1389291))

(check-sat)

