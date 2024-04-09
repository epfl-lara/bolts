; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118986 () Bool)

(assert start!118986)

(declare-fun b!1388704 () Bool)

(declare-fun res!929062 () Bool)

(declare-fun e!786690 () Bool)

(assert (=> b!1388704 (=> (not res!929062) (not e!786690))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!94934 0))(
  ( (array!94935 (arr!45833 (Array (_ BitVec 32) (_ BitVec 64))) (size!46384 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94934)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1388704 (= res!929062 (and (= (size!46384 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46384 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46384 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1388705 () Bool)

(declare-fun res!929060 () Bool)

(assert (=> b!1388705 (=> (not res!929060) (not e!786690))))

(declare-datatypes ((List!32532 0))(
  ( (Nil!32529) (Cons!32528 (h!33743 (_ BitVec 64)) (t!47233 List!32532)) )
))
(declare-fun noDuplicate!2637 (List!32532) Bool)

(assert (=> b!1388705 (= res!929060 (noDuplicate!2637 Nil!32529))))

(declare-fun b!1388706 () Bool)

(declare-fun res!929067 () Bool)

(assert (=> b!1388706 (=> (not res!929067) (not e!786690))))

(assert (=> b!1388706 (= res!929067 (and (bvsle #b00000000000000000000000000000000 (size!46384 a!2901)) (bvslt (size!46384 a!2901) #b01111111111111111111111111111111)))))

(declare-fun b!1388707 () Bool)

(declare-fun e!786691 () Bool)

(assert (=> b!1388707 (= e!786690 e!786691)))

(declare-fun res!929066 () Bool)

(assert (=> b!1388707 (=> res!929066 e!786691)))

(declare-fun contains!9766 (List!32532 (_ BitVec 64)) Bool)

(assert (=> b!1388707 (= res!929066 (contains!9766 Nil!32529 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1388708 () Bool)

(declare-fun res!929064 () Bool)

(assert (=> b!1388708 (=> (not res!929064) (not e!786690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388708 (= res!929064 (validKeyInArray!0 (select (arr!45833 a!2901) i!1037)))))

(declare-fun b!1388709 () Bool)

(declare-fun res!929065 () Bool)

(assert (=> b!1388709 (=> (not res!929065) (not e!786690))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94934 (_ BitVec 32)) Bool)

(assert (=> b!1388709 (= res!929065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1388710 () Bool)

(declare-fun res!929063 () Bool)

(assert (=> b!1388710 (=> (not res!929063) (not e!786690))))

(assert (=> b!1388710 (= res!929063 (validKeyInArray!0 (select (arr!45833 a!2901) j!112)))))

(declare-fun res!929061 () Bool)

(assert (=> start!118986 (=> (not res!929061) (not e!786690))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118986 (= res!929061 (validMask!0 mask!2840))))

(assert (=> start!118986 e!786690))

(assert (=> start!118986 true))

(declare-fun array_inv!34778 (array!94934) Bool)

(assert (=> start!118986 (array_inv!34778 a!2901)))

(declare-fun b!1388703 () Bool)

(assert (=> b!1388703 (= e!786691 (contains!9766 Nil!32529 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!118986 res!929061) b!1388704))

(assert (= (and b!1388704 res!929062) b!1388708))

(assert (= (and b!1388708 res!929064) b!1388710))

(assert (= (and b!1388710 res!929063) b!1388709))

(assert (= (and b!1388709 res!929065) b!1388706))

(assert (= (and b!1388706 res!929067) b!1388705))

(assert (= (and b!1388705 res!929060) b!1388707))

(assert (= (and b!1388707 (not res!929066)) b!1388703))

(declare-fun m!1274485 () Bool)

(assert (=> b!1388709 m!1274485))

(declare-fun m!1274487 () Bool)

(assert (=> b!1388708 m!1274487))

(assert (=> b!1388708 m!1274487))

(declare-fun m!1274489 () Bool)

(assert (=> b!1388708 m!1274489))

(declare-fun m!1274491 () Bool)

(assert (=> b!1388710 m!1274491))

(assert (=> b!1388710 m!1274491))

(declare-fun m!1274493 () Bool)

(assert (=> b!1388710 m!1274493))

(declare-fun m!1274495 () Bool)

(assert (=> start!118986 m!1274495))

(declare-fun m!1274497 () Bool)

(assert (=> start!118986 m!1274497))

(declare-fun m!1274499 () Bool)

(assert (=> b!1388705 m!1274499))

(declare-fun m!1274501 () Bool)

(assert (=> b!1388707 m!1274501))

(declare-fun m!1274503 () Bool)

(assert (=> b!1388703 m!1274503))

(check-sat (not b!1388710) (not b!1388709) (not b!1388708) (not b!1388705) (not b!1388703) (not start!118986) (not b!1388707))
(check-sat)
(get-model)

(declare-fun d!149953 () Bool)

(assert (=> d!149953 (= (validKeyInArray!0 (select (arr!45833 a!2901) i!1037)) (and (not (= (select (arr!45833 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45833 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388708 d!149953))

(declare-fun d!149955 () Bool)

(declare-fun lt!610351 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!770 (List!32532) (InoxSet (_ BitVec 64)))

(assert (=> d!149955 (= lt!610351 (select (content!770 Nil!32529) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!786707 () Bool)

(assert (=> d!149955 (= lt!610351 e!786707)))

(declare-fun res!929096 () Bool)

(assert (=> d!149955 (=> (not res!929096) (not e!786707))))

(get-info :version)

(assert (=> d!149955 (= res!929096 ((_ is Cons!32528) Nil!32529))))

(assert (=> d!149955 (= (contains!9766 Nil!32529 #b1000000000000000000000000000000000000000000000000000000000000000) lt!610351)))

(declare-fun b!1388739 () Bool)

(declare-fun e!786706 () Bool)

(assert (=> b!1388739 (= e!786707 e!786706)))

(declare-fun res!929097 () Bool)

(assert (=> b!1388739 (=> res!929097 e!786706)))

(assert (=> b!1388739 (= res!929097 (= (h!33743 Nil!32529) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1388740 () Bool)

(assert (=> b!1388740 (= e!786706 (contains!9766 (t!47233 Nil!32529) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!149955 res!929096) b!1388739))

(assert (= (and b!1388739 (not res!929097)) b!1388740))

(declare-fun m!1274525 () Bool)

(assert (=> d!149955 m!1274525))

(declare-fun m!1274527 () Bool)

(assert (=> d!149955 m!1274527))

(declare-fun m!1274529 () Bool)

(assert (=> b!1388740 m!1274529))

(assert (=> b!1388703 d!149955))

(declare-fun d!149959 () Bool)

(declare-fun lt!610352 () Bool)

(assert (=> d!149959 (= lt!610352 (select (content!770 Nil!32529) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!786713 () Bool)

(assert (=> d!149959 (= lt!610352 e!786713)))

(declare-fun res!929102 () Bool)

(assert (=> d!149959 (=> (not res!929102) (not e!786713))))

(assert (=> d!149959 (= res!929102 ((_ is Cons!32528) Nil!32529))))

(assert (=> d!149959 (= (contains!9766 Nil!32529 #b0000000000000000000000000000000000000000000000000000000000000000) lt!610352)))

(declare-fun b!1388745 () Bool)

(declare-fun e!786712 () Bool)

(assert (=> b!1388745 (= e!786713 e!786712)))

(declare-fun res!929103 () Bool)

(assert (=> b!1388745 (=> res!929103 e!786712)))

(assert (=> b!1388745 (= res!929103 (= (h!33743 Nil!32529) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1388746 () Bool)

(assert (=> b!1388746 (= e!786712 (contains!9766 (t!47233 Nil!32529) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!149959 res!929102) b!1388745))

(assert (= (and b!1388745 (not res!929103)) b!1388746))

(assert (=> d!149959 m!1274525))

(declare-fun m!1274531 () Bool)

(assert (=> d!149959 m!1274531))

(declare-fun m!1274533 () Bool)

(assert (=> b!1388746 m!1274533))

(assert (=> b!1388707 d!149959))

(declare-fun d!149961 () Bool)

(assert (=> d!149961 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!118986 d!149961))

(declare-fun d!149971 () Bool)

(assert (=> d!149971 (= (array_inv!34778 a!2901) (bvsge (size!46384 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!118986 d!149971))

(declare-fun d!149973 () Bool)

(assert (=> d!149973 (= (validKeyInArray!0 (select (arr!45833 a!2901) j!112)) (and (not (= (select (arr!45833 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45833 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388710 d!149973))

(declare-fun d!149975 () Bool)

(declare-fun res!929120 () Bool)

(declare-fun e!786732 () Bool)

(assert (=> d!149975 (=> res!929120 e!786732)))

(assert (=> d!149975 (= res!929120 ((_ is Nil!32529) Nil!32529))))

(assert (=> d!149975 (= (noDuplicate!2637 Nil!32529) e!786732)))

(declare-fun b!1388767 () Bool)

(declare-fun e!786733 () Bool)

(assert (=> b!1388767 (= e!786732 e!786733)))

(declare-fun res!929121 () Bool)

(assert (=> b!1388767 (=> (not res!929121) (not e!786733))))

(assert (=> b!1388767 (= res!929121 (not (contains!9766 (t!47233 Nil!32529) (h!33743 Nil!32529))))))

(declare-fun b!1388768 () Bool)

(assert (=> b!1388768 (= e!786733 (noDuplicate!2637 (t!47233 Nil!32529)))))

(assert (= (and d!149975 (not res!929120)) b!1388767))

(assert (= (and b!1388767 res!929121) b!1388768))

(declare-fun m!1274545 () Bool)

(assert (=> b!1388767 m!1274545))

(declare-fun m!1274547 () Bool)

(assert (=> b!1388768 m!1274547))

(assert (=> b!1388705 d!149975))

(declare-fun bm!66657 () Bool)

(declare-fun call!66660 () Bool)

(assert (=> bm!66657 (= call!66660 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun d!149985 () Bool)

(declare-fun res!929142 () Bool)

(declare-fun e!786761 () Bool)

(assert (=> d!149985 (=> res!929142 e!786761)))

(assert (=> d!149985 (= res!929142 (bvsge #b00000000000000000000000000000000 (size!46384 a!2901)))))

(assert (=> d!149985 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!786761)))

(declare-fun b!1388801 () Bool)

(declare-fun e!786762 () Bool)

(assert (=> b!1388801 (= e!786761 e!786762)))

(declare-fun c!129275 () Bool)

(assert (=> b!1388801 (= c!129275 (validKeyInArray!0 (select (arr!45833 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1388802 () Bool)

(declare-fun e!786760 () Bool)

(assert (=> b!1388802 (= e!786760 call!66660)))

(declare-fun b!1388803 () Bool)

(assert (=> b!1388803 (= e!786762 e!786760)))

(declare-fun lt!610382 () (_ BitVec 64))

(assert (=> b!1388803 (= lt!610382 (select (arr!45833 a!2901) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!46368 0))(
  ( (Unit!46369) )
))
(declare-fun lt!610383 () Unit!46368)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94934 (_ BitVec 64) (_ BitVec 32)) Unit!46368)

(assert (=> b!1388803 (= lt!610383 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!610382 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!94934 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1388803 (arrayContainsKey!0 a!2901 lt!610382 #b00000000000000000000000000000000)))

(declare-fun lt!610381 () Unit!46368)

(assert (=> b!1388803 (= lt!610381 lt!610383)))

(declare-fun res!929143 () Bool)

(declare-datatypes ((SeekEntryResult!10192 0))(
  ( (MissingZero!10192 (index!43138 (_ BitVec 32))) (Found!10192 (index!43139 (_ BitVec 32))) (Intermediate!10192 (undefined!11004 Bool) (index!43140 (_ BitVec 32)) (x!124782 (_ BitVec 32))) (Undefined!10192) (MissingVacant!10192 (index!43141 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94934 (_ BitVec 32)) SeekEntryResult!10192)

(assert (=> b!1388803 (= res!929143 (= (seekEntryOrOpen!0 (select (arr!45833 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10192 #b00000000000000000000000000000000)))))

(assert (=> b!1388803 (=> (not res!929143) (not e!786760))))

(declare-fun b!1388804 () Bool)

(assert (=> b!1388804 (= e!786762 call!66660)))

(assert (= (and d!149985 (not res!929142)) b!1388801))

(assert (= (and b!1388801 c!129275) b!1388803))

(assert (= (and b!1388801 (not c!129275)) b!1388804))

(assert (= (and b!1388803 res!929143) b!1388802))

(assert (= (or b!1388802 b!1388804) bm!66657))

(declare-fun m!1274581 () Bool)

(assert (=> bm!66657 m!1274581))

(declare-fun m!1274583 () Bool)

(assert (=> b!1388801 m!1274583))

(assert (=> b!1388801 m!1274583))

(declare-fun m!1274585 () Bool)

(assert (=> b!1388801 m!1274585))

(assert (=> b!1388803 m!1274583))

(declare-fun m!1274587 () Bool)

(assert (=> b!1388803 m!1274587))

(declare-fun m!1274589 () Bool)

(assert (=> b!1388803 m!1274589))

(assert (=> b!1388803 m!1274583))

(declare-fun m!1274591 () Bool)

(assert (=> b!1388803 m!1274591))

(assert (=> b!1388709 d!149985))

(check-sat (not b!1388767) (not b!1388740) (not b!1388746) (not b!1388768) (not b!1388801) (not d!149959) (not bm!66657) (not d!149955) (not b!1388803))
(check-sat)
