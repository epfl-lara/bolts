; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119940 () Bool)

(assert start!119940)

(declare-datatypes ((SeekEntryResult!10409 0))(
  ( (MissingZero!10409 (index!44006 (_ BitVec 32))) (Found!10409 (index!44007 (_ BitVec 32))) (Intermediate!10409 (undefined!11221 Bool) (index!44008 (_ BitVec 32)) (x!125676 (_ BitVec 32))) (Undefined!10409) (MissingVacant!10409 (index!44009 (_ BitVec 32))) )
))
(declare-fun lt!613182 () SeekEntryResult!10409)

(declare-fun b!1396002 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!613181 () SeekEntryResult!10409)

(declare-fun e!790347 () Bool)

(get-info :version)

(assert (=> b!1396002 (= e!790347 (or (= lt!613182 lt!613181) (not ((_ is Intermediate!10409) lt!613181)) (bvslt mask!2840 #b00000000000000000000000000000000) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(declare-datatypes ((array!95438 0))(
  ( (array!95439 (arr!46070 (Array (_ BitVec 32) (_ BitVec 64))) (size!46621 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95438)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95438 (_ BitVec 32)) SeekEntryResult!10409)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396002 (= lt!613181 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95439 (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46621 a!2901)) mask!2840))))

(declare-fun b!1396003 () Bool)

(declare-fun res!935195 () Bool)

(declare-fun e!790349 () Bool)

(assert (=> b!1396003 (=> (not res!935195) (not e!790349))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396003 (= res!935195 (validKeyInArray!0 (select (arr!46070 a!2901) i!1037)))))

(declare-fun b!1396004 () Bool)

(declare-fun res!935192 () Bool)

(assert (=> b!1396004 (=> (not res!935192) (not e!790349))))

(declare-datatypes ((List!32769 0))(
  ( (Nil!32766) (Cons!32765 (h!34004 (_ BitVec 64)) (t!47470 List!32769)) )
))
(declare-fun arrayNoDuplicates!0 (array!95438 (_ BitVec 32) List!32769) Bool)

(assert (=> b!1396004 (= res!935192 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32766))))

(declare-fun b!1396005 () Bool)

(declare-fun res!935189 () Bool)

(assert (=> b!1396005 (=> (not res!935189) (not e!790349))))

(assert (=> b!1396005 (= res!935189 (validKeyInArray!0 (select (arr!46070 a!2901) j!112)))))

(declare-fun b!1396006 () Bool)

(assert (=> b!1396006 (= e!790349 (not e!790347))))

(declare-fun res!935196 () Bool)

(assert (=> b!1396006 (=> res!935196 e!790347)))

(assert (=> b!1396006 (= res!935196 (or (not ((_ is Intermediate!10409) lt!613182)) (undefined!11221 lt!613182)))))

(declare-fun e!790348 () Bool)

(assert (=> b!1396006 e!790348))

(declare-fun res!935190 () Bool)

(assert (=> b!1396006 (=> (not res!935190) (not e!790348))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95438 (_ BitVec 32)) Bool)

(assert (=> b!1396006 (= res!935190 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46772 0))(
  ( (Unit!46773) )
))
(declare-fun lt!613183 () Unit!46772)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95438 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46772)

(assert (=> b!1396006 (= lt!613183 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1396006 (= lt!613182 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46070 a!2901) j!112) mask!2840) (select (arr!46070 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1396007 () Bool)

(declare-fun res!935191 () Bool)

(assert (=> b!1396007 (=> (not res!935191) (not e!790349))))

(assert (=> b!1396007 (= res!935191 (and (= (size!46621 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46621 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46621 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!935194 () Bool)

(assert (=> start!119940 (=> (not res!935194) (not e!790349))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119940 (= res!935194 (validMask!0 mask!2840))))

(assert (=> start!119940 e!790349))

(assert (=> start!119940 true))

(declare-fun array_inv!35015 (array!95438) Bool)

(assert (=> start!119940 (array_inv!35015 a!2901)))

(declare-fun b!1396008 () Bool)

(declare-fun res!935193 () Bool)

(assert (=> b!1396008 (=> (not res!935193) (not e!790349))))

(assert (=> b!1396008 (= res!935193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396009 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95438 (_ BitVec 32)) SeekEntryResult!10409)

(assert (=> b!1396009 (= e!790348 (= (seekEntryOrOpen!0 (select (arr!46070 a!2901) j!112) a!2901 mask!2840) (Found!10409 j!112)))))

(assert (= (and start!119940 res!935194) b!1396007))

(assert (= (and b!1396007 res!935191) b!1396003))

(assert (= (and b!1396003 res!935195) b!1396005))

(assert (= (and b!1396005 res!935189) b!1396008))

(assert (= (and b!1396008 res!935193) b!1396004))

(assert (= (and b!1396004 res!935192) b!1396006))

(assert (= (and b!1396006 res!935190) b!1396009))

(assert (= (and b!1396006 (not res!935196)) b!1396002))

(declare-fun m!1282569 () Bool)

(assert (=> b!1396006 m!1282569))

(declare-fun m!1282571 () Bool)

(assert (=> b!1396006 m!1282571))

(assert (=> b!1396006 m!1282569))

(declare-fun m!1282573 () Bool)

(assert (=> b!1396006 m!1282573))

(assert (=> b!1396006 m!1282571))

(assert (=> b!1396006 m!1282569))

(declare-fun m!1282575 () Bool)

(assert (=> b!1396006 m!1282575))

(declare-fun m!1282577 () Bool)

(assert (=> b!1396006 m!1282577))

(declare-fun m!1282579 () Bool)

(assert (=> start!119940 m!1282579))

(declare-fun m!1282581 () Bool)

(assert (=> start!119940 m!1282581))

(assert (=> b!1396009 m!1282569))

(assert (=> b!1396009 m!1282569))

(declare-fun m!1282583 () Bool)

(assert (=> b!1396009 m!1282583))

(assert (=> b!1396005 m!1282569))

(assert (=> b!1396005 m!1282569))

(declare-fun m!1282585 () Bool)

(assert (=> b!1396005 m!1282585))

(declare-fun m!1282587 () Bool)

(assert (=> b!1396008 m!1282587))

(declare-fun m!1282589 () Bool)

(assert (=> b!1396004 m!1282589))

(declare-fun m!1282591 () Bool)

(assert (=> b!1396003 m!1282591))

(assert (=> b!1396003 m!1282591))

(declare-fun m!1282593 () Bool)

(assert (=> b!1396003 m!1282593))

(declare-fun m!1282595 () Bool)

(assert (=> b!1396002 m!1282595))

(declare-fun m!1282597 () Bool)

(assert (=> b!1396002 m!1282597))

(assert (=> b!1396002 m!1282597))

(declare-fun m!1282599 () Bool)

(assert (=> b!1396002 m!1282599))

(assert (=> b!1396002 m!1282599))

(assert (=> b!1396002 m!1282597))

(declare-fun m!1282601 () Bool)

(assert (=> b!1396002 m!1282601))

(check-sat (not start!119940) (not b!1396002) (not b!1396008) (not b!1396009) (not b!1396003) (not b!1396006) (not b!1396004) (not b!1396005))
(check-sat)
(get-model)

(declare-fun b!1396044 () Bool)

(declare-fun e!790373 () Bool)

(declare-fun call!66846 () Bool)

(assert (=> b!1396044 (= e!790373 call!66846)))

(declare-fun b!1396045 () Bool)

(declare-fun e!790371 () Bool)

(declare-fun e!790372 () Bool)

(assert (=> b!1396045 (= e!790371 e!790372)))

(declare-fun res!935227 () Bool)

(assert (=> b!1396045 (=> (not res!935227) (not e!790372))))

(declare-fun e!790370 () Bool)

(assert (=> b!1396045 (= res!935227 (not e!790370))))

(declare-fun res!935229 () Bool)

(assert (=> b!1396045 (=> (not res!935229) (not e!790370))))

(assert (=> b!1396045 (= res!935229 (validKeyInArray!0 (select (arr!46070 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150737 () Bool)

(declare-fun res!935228 () Bool)

(assert (=> d!150737 (=> res!935228 e!790371)))

(assert (=> d!150737 (= res!935228 (bvsge #b00000000000000000000000000000000 (size!46621 a!2901)))))

(assert (=> d!150737 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32766) e!790371)))

(declare-fun bm!66843 () Bool)

(declare-fun c!129866 () Bool)

(assert (=> bm!66843 (= call!66846 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129866 (Cons!32765 (select (arr!46070 a!2901) #b00000000000000000000000000000000) Nil!32766) Nil!32766)))))

(declare-fun b!1396046 () Bool)

(assert (=> b!1396046 (= e!790372 e!790373)))

(assert (=> b!1396046 (= c!129866 (validKeyInArray!0 (select (arr!46070 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1396047 () Bool)

(assert (=> b!1396047 (= e!790373 call!66846)))

(declare-fun b!1396048 () Bool)

(declare-fun contains!9793 (List!32769 (_ BitVec 64)) Bool)

(assert (=> b!1396048 (= e!790370 (contains!9793 Nil!32766 (select (arr!46070 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!150737 (not res!935228)) b!1396045))

(assert (= (and b!1396045 res!935229) b!1396048))

(assert (= (and b!1396045 res!935227) b!1396046))

(assert (= (and b!1396046 c!129866) b!1396044))

(assert (= (and b!1396046 (not c!129866)) b!1396047))

(assert (= (or b!1396044 b!1396047) bm!66843))

(declare-fun m!1282637 () Bool)

(assert (=> b!1396045 m!1282637))

(assert (=> b!1396045 m!1282637))

(declare-fun m!1282639 () Bool)

(assert (=> b!1396045 m!1282639))

(assert (=> bm!66843 m!1282637))

(declare-fun m!1282641 () Bool)

(assert (=> bm!66843 m!1282641))

(assert (=> b!1396046 m!1282637))

(assert (=> b!1396046 m!1282637))

(assert (=> b!1396046 m!1282639))

(assert (=> b!1396048 m!1282637))

(assert (=> b!1396048 m!1282637))

(declare-fun m!1282643 () Bool)

(assert (=> b!1396048 m!1282643))

(assert (=> b!1396004 d!150737))

(declare-fun d!150741 () Bool)

(assert (=> d!150741 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119940 d!150741))

(declare-fun d!150747 () Bool)

(assert (=> d!150747 (= (array_inv!35015 a!2901) (bvsge (size!46621 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119940 d!150747))

(declare-fun d!150749 () Bool)

(assert (=> d!150749 (= (validKeyInArray!0 (select (arr!46070 a!2901) j!112)) (and (not (= (select (arr!46070 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46070 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1396005 d!150749))

(declare-fun b!1396072 () Bool)

(declare-fun e!790392 () Bool)

(declare-fun e!790393 () Bool)

(assert (=> b!1396072 (= e!790392 e!790393)))

(declare-fun c!129872 () Bool)

(assert (=> b!1396072 (= c!129872 (validKeyInArray!0 (select (arr!46070 a!2901) j!112)))))

(declare-fun b!1396073 () Bool)

(declare-fun e!790394 () Bool)

(assert (=> b!1396073 (= e!790393 e!790394)))

(declare-fun lt!613200 () (_ BitVec 64))

(assert (=> b!1396073 (= lt!613200 (select (arr!46070 a!2901) j!112))))

(declare-fun lt!613199 () Unit!46772)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95438 (_ BitVec 64) (_ BitVec 32)) Unit!46772)

(assert (=> b!1396073 (= lt!613199 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!613200 j!112))))

(declare-fun arrayContainsKey!0 (array!95438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1396073 (arrayContainsKey!0 a!2901 lt!613200 #b00000000000000000000000000000000)))

(declare-fun lt!613201 () Unit!46772)

(assert (=> b!1396073 (= lt!613201 lt!613199)))

(declare-fun res!935243 () Bool)

(assert (=> b!1396073 (= res!935243 (= (seekEntryOrOpen!0 (select (arr!46070 a!2901) j!112) a!2901 mask!2840) (Found!10409 j!112)))))

(assert (=> b!1396073 (=> (not res!935243) (not e!790394))))

(declare-fun d!150751 () Bool)

(declare-fun res!935244 () Bool)

(assert (=> d!150751 (=> res!935244 e!790392)))

(assert (=> d!150751 (= res!935244 (bvsge j!112 (size!46621 a!2901)))))

(assert (=> d!150751 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!790392)))

(declare-fun b!1396074 () Bool)

(declare-fun call!66852 () Bool)

(assert (=> b!1396074 (= e!790394 call!66852)))

(declare-fun bm!66849 () Bool)

(assert (=> bm!66849 (= call!66852 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1396075 () Bool)

(assert (=> b!1396075 (= e!790393 call!66852)))

(assert (= (and d!150751 (not res!935244)) b!1396072))

(assert (= (and b!1396072 c!129872) b!1396073))

(assert (= (and b!1396072 (not c!129872)) b!1396075))

(assert (= (and b!1396073 res!935243) b!1396074))

(assert (= (or b!1396074 b!1396075) bm!66849))

(assert (=> b!1396072 m!1282569))

(assert (=> b!1396072 m!1282569))

(assert (=> b!1396072 m!1282585))

(assert (=> b!1396073 m!1282569))

(declare-fun m!1282653 () Bool)

(assert (=> b!1396073 m!1282653))

(declare-fun m!1282655 () Bool)

(assert (=> b!1396073 m!1282655))

(assert (=> b!1396073 m!1282569))

(assert (=> b!1396073 m!1282583))

(declare-fun m!1282657 () Bool)

(assert (=> bm!66849 m!1282657))

(assert (=> b!1396006 d!150751))

(declare-fun d!150757 () Bool)

(assert (=> d!150757 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!613210 () Unit!46772)

(declare-fun choose!38 (array!95438 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46772)

(assert (=> d!150757 (= lt!613210 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150757 (validMask!0 mask!2840)))

(assert (=> d!150757 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!613210)))

(declare-fun bs!40625 () Bool)

(assert (= bs!40625 d!150757))

(assert (=> bs!40625 m!1282577))

(declare-fun m!1282659 () Bool)

(assert (=> bs!40625 m!1282659))

(assert (=> bs!40625 m!1282579))

(assert (=> b!1396006 d!150757))

(declare-fun e!790437 () SeekEntryResult!10409)

(declare-fun b!1396144 () Bool)

(assert (=> b!1396144 (= e!790437 (Intermediate!10409 false (toIndex!0 (select (arr!46070 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1396145 () Bool)

(declare-fun e!790440 () SeekEntryResult!10409)

(assert (=> b!1396145 (= e!790440 e!790437)))

(declare-fun c!129898 () Bool)

(declare-fun lt!613244 () (_ BitVec 64))

(assert (=> b!1396145 (= c!129898 (or (= lt!613244 (select (arr!46070 a!2901) j!112)) (= (bvadd lt!613244 lt!613244) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1396146 () Bool)

(declare-fun e!790438 () Bool)

(declare-fun lt!613243 () SeekEntryResult!10409)

(assert (=> b!1396146 (= e!790438 (bvsge (x!125676 lt!613243) #b01111111111111111111111111111110))))

(declare-fun d!150759 () Bool)

(assert (=> d!150759 e!790438))

(declare-fun c!129899 () Bool)

(assert (=> d!150759 (= c!129899 (and ((_ is Intermediate!10409) lt!613243) (undefined!11221 lt!613243)))))

(assert (=> d!150759 (= lt!613243 e!790440)))

(declare-fun c!129900 () Bool)

(assert (=> d!150759 (= c!129900 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!150759 (= lt!613244 (select (arr!46070 a!2901) (toIndex!0 (select (arr!46070 a!2901) j!112) mask!2840)))))

(assert (=> d!150759 (validMask!0 mask!2840)))

(assert (=> d!150759 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46070 a!2901) j!112) mask!2840) (select (arr!46070 a!2901) j!112) a!2901 mask!2840) lt!613243)))

(declare-fun b!1396147 () Bool)

(assert (=> b!1396147 (and (bvsge (index!44008 lt!613243) #b00000000000000000000000000000000) (bvslt (index!44008 lt!613243) (size!46621 a!2901)))))

(declare-fun res!935264 () Bool)

(assert (=> b!1396147 (= res!935264 (= (select (arr!46070 a!2901) (index!44008 lt!613243)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!790436 () Bool)

(assert (=> b!1396147 (=> res!935264 e!790436)))

(declare-fun b!1396148 () Bool)

(declare-fun e!790439 () Bool)

(assert (=> b!1396148 (= e!790438 e!790439)))

(declare-fun res!935263 () Bool)

(assert (=> b!1396148 (= res!935263 (and ((_ is Intermediate!10409) lt!613243) (not (undefined!11221 lt!613243)) (bvslt (x!125676 lt!613243) #b01111111111111111111111111111110) (bvsge (x!125676 lt!613243) #b00000000000000000000000000000000) (bvsge (x!125676 lt!613243) #b00000000000000000000000000000000)))))

(assert (=> b!1396148 (=> (not res!935263) (not e!790439))))

(declare-fun b!1396149 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396149 (= e!790437 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46070 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46070 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1396150 () Bool)

(assert (=> b!1396150 (= e!790440 (Intermediate!10409 true (toIndex!0 (select (arr!46070 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1396151 () Bool)

(assert (=> b!1396151 (and (bvsge (index!44008 lt!613243) #b00000000000000000000000000000000) (bvslt (index!44008 lt!613243) (size!46621 a!2901)))))

(declare-fun res!935265 () Bool)

(assert (=> b!1396151 (= res!935265 (= (select (arr!46070 a!2901) (index!44008 lt!613243)) (select (arr!46070 a!2901) j!112)))))

(assert (=> b!1396151 (=> res!935265 e!790436)))

(assert (=> b!1396151 (= e!790439 e!790436)))

(declare-fun b!1396152 () Bool)

(assert (=> b!1396152 (and (bvsge (index!44008 lt!613243) #b00000000000000000000000000000000) (bvslt (index!44008 lt!613243) (size!46621 a!2901)))))

(assert (=> b!1396152 (= e!790436 (= (select (arr!46070 a!2901) (index!44008 lt!613243)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!150759 c!129900) b!1396150))

(assert (= (and d!150759 (not c!129900)) b!1396145))

(assert (= (and b!1396145 c!129898) b!1396144))

(assert (= (and b!1396145 (not c!129898)) b!1396149))

(assert (= (and d!150759 c!129899) b!1396146))

(assert (= (and d!150759 (not c!129899)) b!1396148))

(assert (= (and b!1396148 res!935263) b!1396151))

(assert (= (and b!1396151 (not res!935265)) b!1396147))

(assert (= (and b!1396147 (not res!935264)) b!1396152))

(declare-fun m!1282685 () Bool)

(assert (=> b!1396151 m!1282685))

(assert (=> d!150759 m!1282571))

(declare-fun m!1282687 () Bool)

(assert (=> d!150759 m!1282687))

(assert (=> d!150759 m!1282579))

(assert (=> b!1396152 m!1282685))

(assert (=> b!1396147 m!1282685))

(assert (=> b!1396149 m!1282571))

(declare-fun m!1282689 () Bool)

(assert (=> b!1396149 m!1282689))

(assert (=> b!1396149 m!1282689))

(assert (=> b!1396149 m!1282569))

(declare-fun m!1282691 () Bool)

(assert (=> b!1396149 m!1282691))

(assert (=> b!1396006 d!150759))

(declare-fun d!150771 () Bool)

(declare-fun lt!613255 () (_ BitVec 32))

(declare-fun lt!613254 () (_ BitVec 32))

(assert (=> d!150771 (= lt!613255 (bvmul (bvxor lt!613254 (bvlshr lt!613254 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150771 (= lt!613254 ((_ extract 31 0) (bvand (bvxor (select (arr!46070 a!2901) j!112) (bvlshr (select (arr!46070 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150771 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!935272 (let ((h!34006 ((_ extract 31 0) (bvand (bvxor (select (arr!46070 a!2901) j!112) (bvlshr (select (arr!46070 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125680 (bvmul (bvxor h!34006 (bvlshr h!34006 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125680 (bvlshr x!125680 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!935272 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!935272 #b00000000000000000000000000000000))))))

(assert (=> d!150771 (= (toIndex!0 (select (arr!46070 a!2901) j!112) mask!2840) (bvand (bvxor lt!613255 (bvlshr lt!613255 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1396006 d!150771))

(declare-fun e!790453 () SeekEntryResult!10409)

(declare-fun b!1396172 () Bool)

(assert (=> b!1396172 (= e!790453 (Intermediate!10409 false (toIndex!0 (select (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1396173 () Bool)

(declare-fun e!790456 () SeekEntryResult!10409)

(assert (=> b!1396173 (= e!790456 e!790453)))

(declare-fun c!129906 () Bool)

(declare-fun lt!613257 () (_ BitVec 64))

(assert (=> b!1396173 (= c!129906 (or (= lt!613257 (select (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!613257 lt!613257) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1396174 () Bool)

(declare-fun e!790454 () Bool)

(declare-fun lt!613256 () SeekEntryResult!10409)

(assert (=> b!1396174 (= e!790454 (bvsge (x!125676 lt!613256) #b01111111111111111111111111111110))))

(declare-fun d!150777 () Bool)

(assert (=> d!150777 e!790454))

(declare-fun c!129907 () Bool)

(assert (=> d!150777 (= c!129907 (and ((_ is Intermediate!10409) lt!613256) (undefined!11221 lt!613256)))))

(assert (=> d!150777 (= lt!613256 e!790456)))

(declare-fun c!129908 () Bool)

(assert (=> d!150777 (= c!129908 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!150777 (= lt!613257 (select (arr!46070 (array!95439 (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46621 a!2901))) (toIndex!0 (select (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!150777 (validMask!0 mask!2840)))

(assert (=> d!150777 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95439 (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46621 a!2901)) mask!2840) lt!613256)))

(declare-fun b!1396175 () Bool)

(assert (=> b!1396175 (and (bvsge (index!44008 lt!613256) #b00000000000000000000000000000000) (bvslt (index!44008 lt!613256) (size!46621 (array!95439 (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46621 a!2901)))))))

(declare-fun res!935278 () Bool)

(assert (=> b!1396175 (= res!935278 (= (select (arr!46070 (array!95439 (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46621 a!2901))) (index!44008 lt!613256)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!790452 () Bool)

(assert (=> b!1396175 (=> res!935278 e!790452)))

(declare-fun b!1396176 () Bool)

(declare-fun e!790455 () Bool)

(assert (=> b!1396176 (= e!790454 e!790455)))

(declare-fun res!935277 () Bool)

(assert (=> b!1396176 (= res!935277 (and ((_ is Intermediate!10409) lt!613256) (not (undefined!11221 lt!613256)) (bvslt (x!125676 lt!613256) #b01111111111111111111111111111110) (bvsge (x!125676 lt!613256) #b00000000000000000000000000000000) (bvsge (x!125676 lt!613256) #b00000000000000000000000000000000)))))

(assert (=> b!1396176 (=> (not res!935277) (not e!790455))))

(declare-fun b!1396177 () Bool)

(assert (=> b!1396177 (= e!790453 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95439 (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46621 a!2901)) mask!2840))))

(declare-fun b!1396178 () Bool)

(assert (=> b!1396178 (= e!790456 (Intermediate!10409 true (toIndex!0 (select (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1396179 () Bool)

(assert (=> b!1396179 (and (bvsge (index!44008 lt!613256) #b00000000000000000000000000000000) (bvslt (index!44008 lt!613256) (size!46621 (array!95439 (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46621 a!2901)))))))

(declare-fun res!935279 () Bool)

(assert (=> b!1396179 (= res!935279 (= (select (arr!46070 (array!95439 (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46621 a!2901))) (index!44008 lt!613256)) (select (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1396179 (=> res!935279 e!790452)))

(assert (=> b!1396179 (= e!790455 e!790452)))

(declare-fun b!1396180 () Bool)

(assert (=> b!1396180 (and (bvsge (index!44008 lt!613256) #b00000000000000000000000000000000) (bvslt (index!44008 lt!613256) (size!46621 (array!95439 (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46621 a!2901)))))))

(assert (=> b!1396180 (= e!790452 (= (select (arr!46070 (array!95439 (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46621 a!2901))) (index!44008 lt!613256)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!150777 c!129908) b!1396178))

(assert (= (and d!150777 (not c!129908)) b!1396173))

(assert (= (and b!1396173 c!129906) b!1396172))

(assert (= (and b!1396173 (not c!129906)) b!1396177))

(assert (= (and d!150777 c!129907) b!1396174))

(assert (= (and d!150777 (not c!129907)) b!1396176))

(assert (= (and b!1396176 res!935277) b!1396179))

(assert (= (and b!1396179 (not res!935279)) b!1396175))

(assert (= (and b!1396175 (not res!935278)) b!1396180))

(declare-fun m!1282703 () Bool)

(assert (=> b!1396179 m!1282703))

(assert (=> d!150777 m!1282599))

(declare-fun m!1282705 () Bool)

(assert (=> d!150777 m!1282705))

(assert (=> d!150777 m!1282579))

(assert (=> b!1396180 m!1282703))

(assert (=> b!1396175 m!1282703))

(assert (=> b!1396177 m!1282599))

(declare-fun m!1282707 () Bool)

(assert (=> b!1396177 m!1282707))

(assert (=> b!1396177 m!1282707))

(assert (=> b!1396177 m!1282597))

(declare-fun m!1282709 () Bool)

(assert (=> b!1396177 m!1282709))

(assert (=> b!1396002 d!150777))

(declare-fun d!150779 () Bool)

(declare-fun lt!613259 () (_ BitVec 32))

(declare-fun lt!613258 () (_ BitVec 32))

(assert (=> d!150779 (= lt!613259 (bvmul (bvxor lt!613258 (bvlshr lt!613258 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150779 (= lt!613258 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150779 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!935272 (let ((h!34006 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125680 (bvmul (bvxor h!34006 (bvlshr h!34006 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125680 (bvlshr x!125680 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!935272 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!935272 #b00000000000000000000000000000000))))))

(assert (=> d!150779 (= (toIndex!0 (select (store (arr!46070 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!613259 (bvlshr lt!613259 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1396002 d!150779))

(declare-fun d!150781 () Bool)

(assert (=> d!150781 (= (validKeyInArray!0 (select (arr!46070 a!2901) i!1037)) (and (not (= (select (arr!46070 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46070 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1396003 d!150781))

(declare-fun b!1396181 () Bool)

(declare-fun e!790457 () Bool)

(declare-fun e!790458 () Bool)

(assert (=> b!1396181 (= e!790457 e!790458)))

(declare-fun c!129909 () Bool)

(assert (=> b!1396181 (= c!129909 (validKeyInArray!0 (select (arr!46070 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1396182 () Bool)

(declare-fun e!790459 () Bool)

(assert (=> b!1396182 (= e!790458 e!790459)))

(declare-fun lt!613261 () (_ BitVec 64))

(assert (=> b!1396182 (= lt!613261 (select (arr!46070 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!613260 () Unit!46772)

(assert (=> b!1396182 (= lt!613260 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!613261 #b00000000000000000000000000000000))))

(assert (=> b!1396182 (arrayContainsKey!0 a!2901 lt!613261 #b00000000000000000000000000000000)))

(declare-fun lt!613262 () Unit!46772)

(assert (=> b!1396182 (= lt!613262 lt!613260)))

(declare-fun res!935280 () Bool)

(assert (=> b!1396182 (= res!935280 (= (seekEntryOrOpen!0 (select (arr!46070 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10409 #b00000000000000000000000000000000)))))

(assert (=> b!1396182 (=> (not res!935280) (not e!790459))))

(declare-fun d!150783 () Bool)

(declare-fun res!935281 () Bool)

(assert (=> d!150783 (=> res!935281 e!790457)))

(assert (=> d!150783 (= res!935281 (bvsge #b00000000000000000000000000000000 (size!46621 a!2901)))))

(assert (=> d!150783 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!790457)))

(declare-fun b!1396183 () Bool)

(declare-fun call!66859 () Bool)

(assert (=> b!1396183 (= e!790459 call!66859)))

(declare-fun bm!66856 () Bool)

(assert (=> bm!66856 (= call!66859 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1396184 () Bool)

(assert (=> b!1396184 (= e!790458 call!66859)))

(assert (= (and d!150783 (not res!935281)) b!1396181))

(assert (= (and b!1396181 c!129909) b!1396182))

(assert (= (and b!1396181 (not c!129909)) b!1396184))

(assert (= (and b!1396182 res!935280) b!1396183))

(assert (= (or b!1396183 b!1396184) bm!66856))

(assert (=> b!1396181 m!1282637))

(assert (=> b!1396181 m!1282637))

(assert (=> b!1396181 m!1282639))

(assert (=> b!1396182 m!1282637))

(declare-fun m!1282711 () Bool)

(assert (=> b!1396182 m!1282711))

(declare-fun m!1282713 () Bool)

(assert (=> b!1396182 m!1282713))

(assert (=> b!1396182 m!1282637))

(declare-fun m!1282715 () Bool)

(assert (=> b!1396182 m!1282715))

(declare-fun m!1282717 () Bool)

(assert (=> bm!66856 m!1282717))

(assert (=> b!1396008 d!150783))

(declare-fun b!1396240 () Bool)

(declare-fun e!790492 () SeekEntryResult!10409)

(declare-fun lt!613298 () SeekEntryResult!10409)

(assert (=> b!1396240 (= e!790492 (Found!10409 (index!44008 lt!613298)))))

(declare-fun b!1396241 () Bool)

(declare-fun e!790491 () SeekEntryResult!10409)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95438 (_ BitVec 32)) SeekEntryResult!10409)

(assert (=> b!1396241 (= e!790491 (seekKeyOrZeroReturnVacant!0 (x!125676 lt!613298) (index!44008 lt!613298) (index!44008 lt!613298) (select (arr!46070 a!2901) j!112) a!2901 mask!2840))))

(declare-fun d!150785 () Bool)

(declare-fun lt!613297 () SeekEntryResult!10409)

(assert (=> d!150785 (and (or ((_ is Undefined!10409) lt!613297) (not ((_ is Found!10409) lt!613297)) (and (bvsge (index!44007 lt!613297) #b00000000000000000000000000000000) (bvslt (index!44007 lt!613297) (size!46621 a!2901)))) (or ((_ is Undefined!10409) lt!613297) ((_ is Found!10409) lt!613297) (not ((_ is MissingZero!10409) lt!613297)) (and (bvsge (index!44006 lt!613297) #b00000000000000000000000000000000) (bvslt (index!44006 lt!613297) (size!46621 a!2901)))) (or ((_ is Undefined!10409) lt!613297) ((_ is Found!10409) lt!613297) ((_ is MissingZero!10409) lt!613297) (not ((_ is MissingVacant!10409) lt!613297)) (and (bvsge (index!44009 lt!613297) #b00000000000000000000000000000000) (bvslt (index!44009 lt!613297) (size!46621 a!2901)))) (or ((_ is Undefined!10409) lt!613297) (ite ((_ is Found!10409) lt!613297) (= (select (arr!46070 a!2901) (index!44007 lt!613297)) (select (arr!46070 a!2901) j!112)) (ite ((_ is MissingZero!10409) lt!613297) (= (select (arr!46070 a!2901) (index!44006 lt!613297)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10409) lt!613297) (= (select (arr!46070 a!2901) (index!44009 lt!613297)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!790490 () SeekEntryResult!10409)

(assert (=> d!150785 (= lt!613297 e!790490)))

(declare-fun c!129933 () Bool)

(assert (=> d!150785 (= c!129933 (and ((_ is Intermediate!10409) lt!613298) (undefined!11221 lt!613298)))))

(assert (=> d!150785 (= lt!613298 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46070 a!2901) j!112) mask!2840) (select (arr!46070 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150785 (validMask!0 mask!2840)))

(assert (=> d!150785 (= (seekEntryOrOpen!0 (select (arr!46070 a!2901) j!112) a!2901 mask!2840) lt!613297)))

(declare-fun b!1396242 () Bool)

(declare-fun c!129934 () Bool)

(declare-fun lt!613296 () (_ BitVec 64))

(assert (=> b!1396242 (= c!129934 (= lt!613296 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1396242 (= e!790492 e!790491)))

(declare-fun b!1396243 () Bool)

(assert (=> b!1396243 (= e!790490 e!790492)))

(assert (=> b!1396243 (= lt!613296 (select (arr!46070 a!2901) (index!44008 lt!613298)))))

(declare-fun c!129932 () Bool)

(assert (=> b!1396243 (= c!129932 (= lt!613296 (select (arr!46070 a!2901) j!112)))))

(declare-fun b!1396244 () Bool)

(assert (=> b!1396244 (= e!790491 (MissingZero!10409 (index!44008 lt!613298)))))

(declare-fun b!1396245 () Bool)

(assert (=> b!1396245 (= e!790490 Undefined!10409)))

(assert (= (and d!150785 c!129933) b!1396245))

(assert (= (and d!150785 (not c!129933)) b!1396243))

(assert (= (and b!1396243 c!129932) b!1396240))

(assert (= (and b!1396243 (not c!129932)) b!1396242))

(assert (= (and b!1396242 c!129934) b!1396244))

(assert (= (and b!1396242 (not c!129934)) b!1396241))

(assert (=> b!1396241 m!1282569))

(declare-fun m!1282735 () Bool)

(assert (=> b!1396241 m!1282735))

(declare-fun m!1282737 () Bool)

(assert (=> d!150785 m!1282737))

(declare-fun m!1282739 () Bool)

(assert (=> d!150785 m!1282739))

(assert (=> d!150785 m!1282579))

(assert (=> d!150785 m!1282569))

(assert (=> d!150785 m!1282571))

(declare-fun m!1282741 () Bool)

(assert (=> d!150785 m!1282741))

(assert (=> d!150785 m!1282571))

(assert (=> d!150785 m!1282569))

(assert (=> d!150785 m!1282575))

(declare-fun m!1282743 () Bool)

(assert (=> b!1396243 m!1282743))

(assert (=> b!1396009 d!150785))

(check-sat (not b!1396149) (not d!150785) (not bm!66849) (not b!1396182) (not b!1396072) (not d!150777) (not b!1396241) (not b!1396045) (not b!1396181) (not b!1396048) (not b!1396177) (not b!1396046) (not d!150757) (not bm!66843) (not b!1396073) (not bm!66856) (not d!150759))
(check-sat)
