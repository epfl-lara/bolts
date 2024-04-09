; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119090 () Bool)

(assert start!119090)

(declare-fun b!1389212 () Bool)

(declare-fun e!786940 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!610450 () (_ BitVec 32))

(assert (=> b!1389212 (= e!786940 (and (bvsge mask!2840 #b00000000000000000000000000000000) (or (bvslt lt!610450 #b00000000000000000000000000000000) (bvsge lt!610450 (bvadd #b00000000000000000000000000000001 mask!2840)))))))

(declare-datatypes ((array!94978 0))(
  ( (array!94979 (arr!45852 (Array (_ BitVec 32) (_ BitVec 64))) (size!46403 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94978)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389212 (= lt!610450 (toIndex!0 (select (arr!45852 a!2901) j!112) mask!2840))))

(declare-fun b!1389213 () Bool)

(declare-fun res!929515 () Bool)

(assert (=> b!1389213 (=> (not res!929515) (not e!786940))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389213 (= res!929515 (validKeyInArray!0 (select (arr!45852 a!2901) j!112)))))

(declare-fun res!929519 () Bool)

(assert (=> start!119090 (=> (not res!929519) (not e!786940))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119090 (= res!929519 (validMask!0 mask!2840))))

(assert (=> start!119090 e!786940))

(assert (=> start!119090 true))

(declare-fun array_inv!34797 (array!94978) Bool)

(assert (=> start!119090 (array_inv!34797 a!2901)))

(declare-fun b!1389214 () Bool)

(declare-fun res!929517 () Bool)

(assert (=> b!1389214 (=> (not res!929517) (not e!786940))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389214 (= res!929517 (validKeyInArray!0 (select (arr!45852 a!2901) i!1037)))))

(declare-fun b!1389215 () Bool)

(declare-fun res!929520 () Bool)

(assert (=> b!1389215 (=> (not res!929520) (not e!786940))))

(assert (=> b!1389215 (= res!929520 (and (= (size!46403 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46403 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46403 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389216 () Bool)

(declare-fun res!929518 () Bool)

(assert (=> b!1389216 (=> (not res!929518) (not e!786940))))

(declare-datatypes ((List!32551 0))(
  ( (Nil!32548) (Cons!32547 (h!33762 (_ BitVec 64)) (t!47252 List!32551)) )
))
(declare-fun arrayNoDuplicates!0 (array!94978 (_ BitVec 32) List!32551) Bool)

(assert (=> b!1389216 (= res!929518 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32548))))

(declare-fun b!1389217 () Bool)

(declare-fun res!929516 () Bool)

(assert (=> b!1389217 (=> (not res!929516) (not e!786940))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94978 (_ BitVec 32)) Bool)

(assert (=> b!1389217 (= res!929516 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119090 res!929519) b!1389215))

(assert (= (and b!1389215 res!929520) b!1389214))

(assert (= (and b!1389214 res!929517) b!1389213))

(assert (= (and b!1389213 res!929515) b!1389217))

(assert (= (and b!1389217 res!929516) b!1389216))

(assert (= (and b!1389216 res!929518) b!1389212))

(declare-fun m!1274945 () Bool)

(assert (=> b!1389214 m!1274945))

(assert (=> b!1389214 m!1274945))

(declare-fun m!1274947 () Bool)

(assert (=> b!1389214 m!1274947))

(declare-fun m!1274949 () Bool)

(assert (=> b!1389217 m!1274949))

(declare-fun m!1274951 () Bool)

(assert (=> b!1389216 m!1274951))

(declare-fun m!1274953 () Bool)

(assert (=> start!119090 m!1274953))

(declare-fun m!1274955 () Bool)

(assert (=> start!119090 m!1274955))

(declare-fun m!1274957 () Bool)

(assert (=> b!1389212 m!1274957))

(assert (=> b!1389212 m!1274957))

(declare-fun m!1274959 () Bool)

(assert (=> b!1389212 m!1274959))

(assert (=> b!1389213 m!1274957))

(assert (=> b!1389213 m!1274957))

(declare-fun m!1274961 () Bool)

(assert (=> b!1389213 m!1274961))

(push 1)

(assert (not b!1389212))

(assert (not start!119090))

(assert (not b!1389213))

(assert (not b!1389217))

(assert (not b!1389214))

(assert (not b!1389216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!150053 () Bool)

(assert (=> d!150053 (= (validKeyInArray!0 (select (arr!45852 a!2901) j!112)) (and (not (= (select (arr!45852 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45852 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1389213 d!150053))

(declare-fun d!150055 () Bool)

(assert (=> d!150055 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119090 d!150055))

(declare-fun d!150065 () Bool)

(assert (=> d!150065 (= (array_inv!34797 a!2901) (bvsge (size!46403 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119090 d!150065))

(declare-fun d!150067 () Bool)

(assert (=> d!150067 (= (validKeyInArray!0 (select (arr!45852 a!2901) i!1037)) (and (not (= (select (arr!45852 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45852 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1389214 d!150067))

(declare-fun bm!66684 () Bool)

(declare-fun call!66687 () Bool)

(declare-fun c!129302 () Bool)

(assert (=> bm!66684 (= call!66687 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129302 (Cons!32547 (select (arr!45852 a!2901) #b00000000000000000000000000000000) Nil!32548) Nil!32548)))))

(declare-fun b!1389255 () Bool)

(declare-fun e!786974 () Bool)

(declare-fun e!786971 () Bool)

(assert (=> b!1389255 (= e!786974 e!786971)))

(declare-fun res!929546 () Bool)

(assert (=> b!1389255 (=> (not res!929546) (not e!786971))))

(declare-fun e!786973 () Bool)

(assert (=> b!1389255 (= res!929546 (not e!786973))))

(declare-fun res!929544 () Bool)

(assert (=> b!1389255 (=> (not res!929544) (not e!786973))))

(assert (=> b!1389255 (= res!929544 (validKeyInArray!0 (select (arr!45852 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150069 () Bool)

(declare-fun res!929545 () Bool)

(assert (=> d!150069 (=> res!929545 e!786974)))

(assert (=> d!150069 (= res!929545 (bvsge #b00000000000000000000000000000000 (size!46403 a!2901)))))

(assert (=> d!150069 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32548) e!786974)))

(declare-fun b!1389256 () Bool)

(declare-fun contains!9771 (List!32551 (_ BitVec 64)) Bool)

(assert (=> b!1389256 (= e!786973 (contains!9771 Nil!32548 (select (arr!45852 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1389257 () Bool)

(declare-fun e!786972 () Bool)

(assert (=> b!1389257 (= e!786972 call!66687)))

(declare-fun b!1389258 () Bool)

(assert (=> b!1389258 (= e!786971 e!786972)))

(assert (=> b!1389258 (= c!129302 (validKeyInArray!0 (select (arr!45852 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1389259 () Bool)

(assert (=> b!1389259 (= e!786972 call!66687)))

(assert (= (and d!150069 (not res!929545)) b!1389255))

(assert (= (and b!1389255 res!929544) b!1389256))

(assert (= (and b!1389255 res!929546) b!1389258))

(assert (= (and b!1389258 c!129302) b!1389259))

(assert (= (and b!1389258 (not c!129302)) b!1389257))

(assert (= (or b!1389259 b!1389257) bm!66684))

(declare-fun m!1274983 () Bool)

(assert (=> bm!66684 m!1274983))

(declare-fun m!1274985 () Bool)

(assert (=> bm!66684 m!1274985))

(assert (=> b!1389255 m!1274983))

(assert (=> b!1389255 m!1274983))

(declare-fun m!1274987 () Bool)

(assert (=> b!1389255 m!1274987))

(assert (=> b!1389256 m!1274983))

(assert (=> b!1389256 m!1274983))

(declare-fun m!1274989 () Bool)

(assert (=> b!1389256 m!1274989))

(assert (=> b!1389258 m!1274983))

(assert (=> b!1389258 m!1274983))

(assert (=> b!1389258 m!1274987))

(assert (=> b!1389216 d!150069))

(declare-fun d!150075 () Bool)

(declare-fun lt!610486 () (_ BitVec 32))

(declare-fun lt!610485 () (_ BitVec 32))

(assert (=> d!150075 (= lt!610486 (bvmul (bvxor lt!610485 (bvlshr lt!610485 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150075 (= lt!610485 ((_ extract 31 0) (bvand (bvxor (select (arr!45852 a!2901) j!112) (bvlshr (select (arr!45852 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150075 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!929551 (let ((h!33765 ((_ extract 31 0) (bvand (bvxor (select (arr!45852 a!2901) j!112) (bvlshr (select (arr!45852 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!124835 (bvmul (bvxor h!33765 (bvlshr h!33765 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!124835 (bvlshr x!124835 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!929551 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!929551 #b00000000000000000000000000000000))))))

(assert (=> d!150075 (= (toIndex!0 (select (arr!45852 a!2901) j!112) mask!2840) (bvand (bvxor lt!610486 (bvlshr lt!610486 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1389212 d!150075))

(declare-fun d!150083 () Bool)

(declare-fun res!929567 () Bool)

(declare-fun e!787002 () Bool)

(assert (=> d!150083 (=> res!929567 e!787002)))

(assert (=> d!150083 (= res!929567 (bvsge #b00000000000000000000000000000000 (size!46403 a!2901)))))

(assert (=> d!150083 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!787002)))

(declare-fun b!1389295 () Bool)

(declare-fun e!787003 () Bool)

(declare-fun call!66696 () Bool)

(assert (=> b!1389295 (= e!787003 call!66696)))

(declare-fun b!1389296 () Bool)

(declare-fun e!787004 () Bool)

(assert (=> b!1389296 (= e!787004 call!66696)))

(declare-fun b!1389297 () Bool)

(assert (=> b!1389297 (= e!787004 e!787003)))

(declare-fun lt!610494 () (_ BitVec 64))

(assert (=> b!1389297 (= lt!610494 (select (arr!45852 a!2901) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!46378 0))(
  ( (Unit!46379) )
))
(declare-fun lt!610493 () Unit!46378)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94978 (_ BitVec 64) (_ BitVec 32)) Unit!46378)

(assert (=> b!1389297 (= lt!610493 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!610494 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!94978 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1389297 (arrayContainsKey!0 a!2901 lt!610494 #b00000000000000000000000000000000)))

(declare-fun lt!610495 () Unit!46378)

(assert (=> b!1389297 (= lt!610495 lt!610493)))

(declare-fun res!929568 () Bool)

(declare-datatypes ((SeekEntryResult!10197 0))(
  ( (MissingZero!10197 (index!43158 (_ BitVec 32))) (Found!10197 (index!43159 (_ BitVec 32))) (Intermediate!10197 (undefined!11009 Bool) (index!43160 (_ BitVec 32)) (x!124838 (_ BitVec 32))) (Undefined!10197) (MissingVacant!10197 (index!43161 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94978 (_ BitVec 32)) SeekEntryResult!10197)

(assert (=> b!1389297 (= res!929568 (= (seekEntryOrOpen!0 (select (arr!45852 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10197 #b00000000000000000000000000000000)))))

(assert (=> b!1389297 (=> (not res!929568) (not e!787003))))

(declare-fun b!1389298 () Bool)

(assert (=> b!1389298 (= e!787002 e!787004)))

(declare-fun c!129311 () Bool)

(assert (=> b!1389298 (= c!129311 (validKeyInArray!0 (select (arr!45852 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66693 () Bool)

(assert (=> bm!66693 (= call!66696 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!150083 (not res!929567)) b!1389298))

(assert (= (and b!1389298 c!129311) b!1389297))

(assert (= (and b!1389298 (not c!129311)) b!1389296))

(assert (= (and b!1389297 res!929568) b!1389295))

(assert (= (or b!1389295 b!1389296) bm!66693))

(assert (=> b!1389297 m!1274983))

(declare-fun m!1275003 () Bool)

(assert (=> b!1389297 m!1275003))

(declare-fun m!1275005 () Bool)

(assert (=> b!1389297 m!1275005))

(assert (=> b!1389297 m!1274983))

(declare-fun m!1275007 () Bool)

(assert (=> b!1389297 m!1275007))

(assert (=> b!1389298 m!1274983))

(assert (=> b!1389298 m!1274983))

(assert (=> b!1389298 m!1274987))

(declare-fun m!1275009 () Bool)

(assert (=> bm!66693 m!1275009))

(assert (=> b!1389217 d!150083))

(push 1)

(assert (not bm!66693))

(assert (not bm!66684))

(assert (not b!1389256))

(assert (not b!1389298))

(assert (not b!1389297))

(assert (not b!1389258))

(assert (not b!1389255))

(check-sat)

