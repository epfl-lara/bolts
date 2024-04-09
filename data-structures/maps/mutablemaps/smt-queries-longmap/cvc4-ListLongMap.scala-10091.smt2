; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118952 () Bool)

(assert start!118952)

(declare-fun b!1388603 () Bool)

(declare-fun e!786629 () Bool)

(declare-datatypes ((List!32530 0))(
  ( (Nil!32527) (Cons!32526 (h!33741 (_ BitVec 64)) (t!47231 List!32530)) )
))
(declare-fun noDuplicate!2635 (List!32530) Bool)

(assert (=> b!1388603 (= e!786629 (not (noDuplicate!2635 Nil!32527)))))

(declare-fun b!1388604 () Bool)

(declare-fun res!928981 () Bool)

(assert (=> b!1388604 (=> (not res!928981) (not e!786629))))

(declare-datatypes ((array!94927 0))(
  ( (array!94928 (arr!45831 (Array (_ BitVec 32) (_ BitVec 64))) (size!46382 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94927)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94927 (_ BitVec 32)) Bool)

(assert (=> b!1388604 (= res!928981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1388605 () Bool)

(declare-fun res!928978 () Bool)

(assert (=> b!1388605 (=> (not res!928978) (not e!786629))))

(assert (=> b!1388605 (= res!928978 (and (bvsle #b00000000000000000000000000000000 (size!46382 a!2901)) (bvslt (size!46382 a!2901) #b01111111111111111111111111111111)))))

(declare-fun b!1388606 () Bool)

(declare-fun res!928980 () Bool)

(assert (=> b!1388606 (=> (not res!928980) (not e!786629))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1388606 (= res!928980 (and (= (size!46382 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46382 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46382 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!928982 () Bool)

(assert (=> start!118952 (=> (not res!928982) (not e!786629))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118952 (= res!928982 (validMask!0 mask!2840))))

(assert (=> start!118952 e!786629))

(assert (=> start!118952 true))

(declare-fun array_inv!34776 (array!94927) Bool)

(assert (=> start!118952 (array_inv!34776 a!2901)))

(declare-fun b!1388607 () Bool)

(declare-fun res!928983 () Bool)

(assert (=> b!1388607 (=> (not res!928983) (not e!786629))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388607 (= res!928983 (validKeyInArray!0 (select (arr!45831 a!2901) j!112)))))

(declare-fun b!1388608 () Bool)

(declare-fun res!928979 () Bool)

(assert (=> b!1388608 (=> (not res!928979) (not e!786629))))

(assert (=> b!1388608 (= res!928979 (validKeyInArray!0 (select (arr!45831 a!2901) i!1037)))))

(assert (= (and start!118952 res!928982) b!1388606))

(assert (= (and b!1388606 res!928980) b!1388608))

(assert (= (and b!1388608 res!928979) b!1388607))

(assert (= (and b!1388607 res!928983) b!1388604))

(assert (= (and b!1388604 res!928981) b!1388605))

(assert (= (and b!1388605 res!928978) b!1388603))

(declare-fun m!1274401 () Bool)

(assert (=> start!118952 m!1274401))

(declare-fun m!1274403 () Bool)

(assert (=> start!118952 m!1274403))

(declare-fun m!1274405 () Bool)

(assert (=> b!1388603 m!1274405))

(declare-fun m!1274407 () Bool)

(assert (=> b!1388604 m!1274407))

(declare-fun m!1274409 () Bool)

(assert (=> b!1388607 m!1274409))

(assert (=> b!1388607 m!1274409))

(declare-fun m!1274411 () Bool)

(assert (=> b!1388607 m!1274411))

(declare-fun m!1274413 () Bool)

(assert (=> b!1388608 m!1274413))

(assert (=> b!1388608 m!1274413))

(declare-fun m!1274415 () Bool)

(assert (=> b!1388608 m!1274415))

(push 1)

(assert (not start!118952))

(assert (not b!1388608))

(assert (not b!1388603))

(assert (not b!1388607))

(assert (not b!1388604))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!66642 () Bool)

(declare-fun call!66645 () Bool)

(assert (=> bm!66642 (= call!66645 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun d!149919 () Bool)

(declare-fun res!928999 () Bool)

(declare-fun e!786648 () Bool)

(assert (=> d!149919 (=> res!928999 e!786648)))

(assert (=> d!149919 (= res!928999 (bvsge #b00000000000000000000000000000000 (size!46382 a!2901)))))

(assert (=> d!149919 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!786648)))

(declare-fun b!1388627 () Bool)

(declare-fun e!786646 () Bool)

(declare-fun e!786647 () Bool)

(assert (=> b!1388627 (= e!786646 e!786647)))

(declare-fun lt!610330 () (_ BitVec 64))

(assert (=> b!1388627 (= lt!610330 (select (arr!45831 a!2901) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!46360 0))(
  ( (Unit!46361) )
))
(declare-fun lt!610328 () Unit!46360)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94927 (_ BitVec 64) (_ BitVec 32)) Unit!46360)

(assert (=> b!1388627 (= lt!610328 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!610330 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!94927 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1388627 (arrayContainsKey!0 a!2901 lt!610330 #b00000000000000000000000000000000)))

(declare-fun lt!610329 () Unit!46360)

(assert (=> b!1388627 (= lt!610329 lt!610328)))

(declare-fun res!928998 () Bool)

(declare-datatypes ((SeekEntryResult!10188 0))(
  ( (MissingZero!10188 (index!43122 (_ BitVec 32))) (Found!10188 (index!43123 (_ BitVec 32))) (Intermediate!10188 (undefined!11000 Bool) (index!43124 (_ BitVec 32)) (x!124770 (_ BitVec 32))) (Undefined!10188) (MissingVacant!10188 (index!43125 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94927 (_ BitVec 32)) SeekEntryResult!10188)

(assert (=> b!1388627 (= res!928998 (= (seekEntryOrOpen!0 (select (arr!45831 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10188 #b00000000000000000000000000000000)))))

(assert (=> b!1388627 (=> (not res!928998) (not e!786647))))

(declare-fun b!1388628 () Bool)

(assert (=> b!1388628 (= e!786646 call!66645)))

(declare-fun b!1388629 () Bool)

(assert (=> b!1388629 (= e!786648 e!786646)))

(declare-fun c!129260 () Bool)

(assert (=> b!1388629 (= c!129260 (validKeyInArray!0 (select (arr!45831 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1388630 () Bool)

(assert (=> b!1388630 (= e!786647 call!66645)))

(assert (= (and d!149919 (not res!928999)) b!1388629))

(assert (= (and b!1388629 c!129260) b!1388627))

(assert (= (and b!1388629 (not c!129260)) b!1388628))

(assert (= (and b!1388627 res!928998) b!1388630))

(assert (= (or b!1388630 b!1388628) bm!66642))

(declare-fun m!1274421 () Bool)

(assert (=> bm!66642 m!1274421))

(declare-fun m!1274423 () Bool)

(assert (=> b!1388627 m!1274423))

(declare-fun m!1274425 () Bool)

(assert (=> b!1388627 m!1274425))

(declare-fun m!1274427 () Bool)

(assert (=> b!1388627 m!1274427))

(assert (=> b!1388627 m!1274423))

(declare-fun m!1274429 () Bool)

(assert (=> b!1388627 m!1274429))

(assert (=> b!1388629 m!1274423))

(assert (=> b!1388629 m!1274423))

(declare-fun m!1274431 () Bool)

(assert (=> b!1388629 m!1274431))

(assert (=> b!1388604 d!149919))

(declare-fun d!149929 () Bool)

(assert (=> d!149929 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!118952 d!149929))

(declare-fun d!149933 () Bool)

(assert (=> d!149933 (= (array_inv!34776 a!2901) (bvsge (size!46382 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!118952 d!149933))

(declare-fun d!149935 () Bool)

(declare-fun res!929010 () Bool)

(declare-fun e!786661 () Bool)

(assert (=> d!149935 (=> res!929010 e!786661)))

(assert (=> d!149935 (= res!929010 (is-Nil!32527 Nil!32527))))

(assert (=> d!149935 (= (noDuplicate!2635 Nil!32527) e!786661)))

(declare-fun b!1388645 () Bool)

(declare-fun e!786662 () Bool)

(assert (=> b!1388645 (= e!786661 e!786662)))

(declare-fun res!929011 () Bool)

(assert (=> b!1388645 (=> (not res!929011) (not e!786662))))

(declare-fun contains!9764 (List!32530 (_ BitVec 64)) Bool)

(assert (=> b!1388645 (= res!929011 (not (contains!9764 (t!47231 Nil!32527) (h!33741 Nil!32527))))))

(declare-fun b!1388646 () Bool)

(assert (=> b!1388646 (= e!786662 (noDuplicate!2635 (t!47231 Nil!32527)))))

(assert (= (and d!149935 (not res!929010)) b!1388645))

(assert (= (and b!1388645 res!929011) b!1388646))

(declare-fun m!1274437 () Bool)

(assert (=> b!1388645 m!1274437))

(declare-fun m!1274439 () Bool)

(assert (=> b!1388646 m!1274439))

(assert (=> b!1388603 d!149935))

(declare-fun d!149941 () Bool)

(assert (=> d!149941 (= (validKeyInArray!0 (select (arr!45831 a!2901) i!1037)) (and (not (= (select (arr!45831 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45831 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388608 d!149941))

(declare-fun d!149943 () Bool)

(assert (=> d!149943 (= (validKeyInArray!0 (select (arr!45831 a!2901) j!112)) (and (not (= (select (arr!45831 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45831 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388607 d!149943))

(push 1)

