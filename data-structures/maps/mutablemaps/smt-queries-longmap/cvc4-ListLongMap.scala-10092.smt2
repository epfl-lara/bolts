; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118988 () Bool)

(assert start!118988)

(declare-fun b!1388727 () Bool)

(declare-fun res!929087 () Bool)

(declare-fun e!786700 () Bool)

(assert (=> b!1388727 (=> (not res!929087) (not e!786700))))

(declare-datatypes ((List!32533 0))(
  ( (Nil!32530) (Cons!32529 (h!33744 (_ BitVec 64)) (t!47234 List!32533)) )
))
(declare-fun noDuplicate!2638 (List!32533) Bool)

(assert (=> b!1388727 (= res!929087 (noDuplicate!2638 Nil!32530))))

(declare-fun b!1388728 () Bool)

(declare-fun res!929085 () Bool)

(assert (=> b!1388728 (=> (not res!929085) (not e!786700))))

(declare-datatypes ((array!94936 0))(
  ( (array!94937 (arr!45834 (Array (_ BitVec 32) (_ BitVec 64))) (size!46385 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94936)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388728 (= res!929085 (validKeyInArray!0 (select (arr!45834 a!2901) i!1037)))))

(declare-fun b!1388729 () Bool)

(declare-fun res!929086 () Bool)

(assert (=> b!1388729 (=> (not res!929086) (not e!786700))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1388729 (= res!929086 (and (= (size!46385 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46385 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46385 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!929088 () Bool)

(assert (=> start!118988 (=> (not res!929088) (not e!786700))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118988 (= res!929088 (validMask!0 mask!2840))))

(assert (=> start!118988 e!786700))

(assert (=> start!118988 true))

(declare-fun array_inv!34779 (array!94936) Bool)

(assert (=> start!118988 (array_inv!34779 a!2901)))

(declare-fun b!1388730 () Bool)

(declare-fun e!786701 () Bool)

(declare-fun contains!9767 (List!32533 (_ BitVec 64)) Bool)

(assert (=> b!1388730 (= e!786701 (contains!9767 Nil!32530 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1388731 () Bool)

(declare-fun res!929091 () Bool)

(assert (=> b!1388731 (=> (not res!929091) (not e!786700))))

(assert (=> b!1388731 (= res!929091 (validKeyInArray!0 (select (arr!45834 a!2901) j!112)))))

(declare-fun b!1388732 () Bool)

(declare-fun res!929090 () Bool)

(assert (=> b!1388732 (=> (not res!929090) (not e!786700))))

(assert (=> b!1388732 (= res!929090 (and (bvsle #b00000000000000000000000000000000 (size!46385 a!2901)) (bvslt (size!46385 a!2901) #b01111111111111111111111111111111)))))

(declare-fun b!1388733 () Bool)

(assert (=> b!1388733 (= e!786700 e!786701)))

(declare-fun res!929084 () Bool)

(assert (=> b!1388733 (=> res!929084 e!786701)))

(assert (=> b!1388733 (= res!929084 (contains!9767 Nil!32530 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1388734 () Bool)

(declare-fun res!929089 () Bool)

(assert (=> b!1388734 (=> (not res!929089) (not e!786700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94936 (_ BitVec 32)) Bool)

(assert (=> b!1388734 (= res!929089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!118988 res!929088) b!1388729))

(assert (= (and b!1388729 res!929086) b!1388728))

(assert (= (and b!1388728 res!929085) b!1388731))

(assert (= (and b!1388731 res!929091) b!1388734))

(assert (= (and b!1388734 res!929089) b!1388732))

(assert (= (and b!1388732 res!929090) b!1388727))

(assert (= (and b!1388727 res!929087) b!1388733))

(assert (= (and b!1388733 (not res!929084)) b!1388730))

(declare-fun m!1274505 () Bool)

(assert (=> b!1388727 m!1274505))

(declare-fun m!1274507 () Bool)

(assert (=> b!1388730 m!1274507))

(declare-fun m!1274509 () Bool)

(assert (=> b!1388731 m!1274509))

(assert (=> b!1388731 m!1274509))

(declare-fun m!1274511 () Bool)

(assert (=> b!1388731 m!1274511))

(declare-fun m!1274513 () Bool)

(assert (=> b!1388733 m!1274513))

(declare-fun m!1274515 () Bool)

(assert (=> b!1388728 m!1274515))

(assert (=> b!1388728 m!1274515))

(declare-fun m!1274517 () Bool)

(assert (=> b!1388728 m!1274517))

(declare-fun m!1274519 () Bool)

(assert (=> b!1388734 m!1274519))

(declare-fun m!1274521 () Bool)

(assert (=> start!118988 m!1274521))

(declare-fun m!1274523 () Bool)

(assert (=> start!118988 m!1274523))

(push 1)

(assert (not b!1388734))

(assert (not b!1388730))

(assert (not start!118988))

(assert (not b!1388733))

(assert (not b!1388728))

(assert (not b!1388727))

(assert (not b!1388731))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!149949 () Bool)

(assert (=> d!149949 (= (validKeyInArray!0 (select (arr!45834 a!2901) j!112)) (and (not (= (select (arr!45834 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45834 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388731 d!149949))

(declare-fun d!149951 () Bool)

(assert (=> d!149951 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!118988 d!149951))

(declare-fun d!149965 () Bool)

(assert (=> d!149965 (= (array_inv!34779 a!2901) (bvsge (size!46385 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!118988 d!149965))

(declare-fun d!149967 () Bool)

(declare-fun lt!610355 () Bool)

(declare-fun content!771 (List!32533) (Set (_ BitVec 64)))

(assert (=> d!149967 (= lt!610355 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!771 Nil!32530)))))

(declare-fun e!786721 () Bool)

(assert (=> d!149967 (= lt!610355 e!786721)))

(declare-fun res!929110 () Bool)

(assert (=> d!149967 (=> (not res!929110) (not e!786721))))

(assert (=> d!149967 (= res!929110 (is-Cons!32529 Nil!32530))))

(assert (=> d!149967 (= (contains!9767 Nil!32530 #b1000000000000000000000000000000000000000000000000000000000000000) lt!610355)))

(declare-fun b!1388753 () Bool)

(declare-fun e!786720 () Bool)

(assert (=> b!1388753 (= e!786721 e!786720)))

(declare-fun res!929111 () Bool)

(assert (=> b!1388753 (=> res!929111 e!786720)))

(assert (=> b!1388753 (= res!929111 (= (h!33744 Nil!32530) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1388754 () Bool)

(assert (=> b!1388754 (= e!786720 (contains!9767 (t!47234 Nil!32530) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!149967 res!929110) b!1388753))

(assert (= (and b!1388753 (not res!929111)) b!1388754))

(declare-fun m!1274539 () Bool)

(assert (=> d!149967 m!1274539))

(declare-fun m!1274541 () Bool)

(assert (=> d!149967 m!1274541))

(declare-fun m!1274543 () Bool)

(assert (=> b!1388754 m!1274543))

(assert (=> b!1388730 d!149967))

(declare-fun b!1388769 () Bool)

(declare-fun e!786736 () Bool)

(declare-fun e!786734 () Bool)

(assert (=> b!1388769 (= e!786736 e!786734)))

(declare-fun lt!610364 () (_ BitVec 64))

(assert (=> b!1388769 (= lt!610364 (select (arr!45834 a!2901) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!46364 0))(
  ( (Unit!46365) )
))
(declare-fun lt!610363 () Unit!46364)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94936 (_ BitVec 64) (_ BitVec 32)) Unit!46364)

(assert (=> b!1388769 (= lt!610363 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!610364 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!94936 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1388769 (arrayContainsKey!0 a!2901 lt!610364 #b00000000000000000000000000000000)))

(declare-fun lt!610362 () Unit!46364)

(assert (=> b!1388769 (= lt!610362 lt!610363)))

(declare-fun res!929122 () Bool)

(declare-datatypes ((SeekEntryResult!10190 0))(
  ( (MissingZero!10190 (index!43130 (_ BitVec 32))) (Found!10190 (index!43131 (_ BitVec 32))) (Intermediate!10190 (undefined!11002 Bool) (index!43132 (_ BitVec 32)) (x!124780 (_ BitVec 32))) (Undefined!10190) (MissingVacant!10190 (index!43133 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94936 (_ BitVec 32)) SeekEntryResult!10190)

(assert (=> b!1388769 (= res!929122 (= (seekEntryOrOpen!0 (select (arr!45834 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10190 #b00000000000000000000000000000000)))))

(assert (=> b!1388769 (=> (not res!929122) (not e!786734))))

(declare-fun b!1388770 () Bool)

(declare-fun e!786735 () Bool)

(assert (=> b!1388770 (= e!786735 e!786736)))

(declare-fun c!129269 () Bool)

(assert (=> b!1388770 (= c!129269 (validKeyInArray!0 (select (arr!45834 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1388771 () Bool)

(declare-fun call!66654 () Bool)

(assert (=> b!1388771 (= e!786734 call!66654)))

(declare-fun d!149969 () Bool)

(declare-fun res!929123 () Bool)

(assert (=> d!149969 (=> res!929123 e!786735)))

(assert (=> d!149969 (= res!929123 (bvsge #b00000000000000000000000000000000 (size!46385 a!2901)))))

(assert (=> d!149969 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!786735)))

(declare-fun b!1388772 () Bool)

(assert (=> b!1388772 (= e!786736 call!66654)))

(declare-fun bm!66651 () Bool)

(assert (=> bm!66651 (= call!66654 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!149969 (not res!929123)) b!1388770))

(assert (= (and b!1388770 c!129269) b!1388769))

(assert (= (and b!1388770 (not c!129269)) b!1388772))

(assert (= (and b!1388769 res!929122) b!1388771))

(assert (= (or b!1388771 b!1388772) bm!66651))

(declare-fun m!1274549 () Bool)

(assert (=> b!1388769 m!1274549))

(declare-fun m!1274551 () Bool)

(assert (=> b!1388769 m!1274551))

(declare-fun m!1274553 () Bool)

(assert (=> b!1388769 m!1274553))

(assert (=> b!1388769 m!1274549))

(declare-fun m!1274555 () Bool)

(assert (=> b!1388769 m!1274555))

(assert (=> b!1388770 m!1274549))

(assert (=> b!1388770 m!1274549))

(declare-fun m!1274557 () Bool)

(assert (=> b!1388770 m!1274557))

(declare-fun m!1274559 () Bool)

(assert (=> bm!66651 m!1274559))

(assert (=> b!1388734 d!149969))

(declare-fun d!149987 () Bool)

(declare-fun lt!610365 () Bool)

(assert (=> d!149987 (= lt!610365 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!771 Nil!32530)))))

(declare-fun e!786738 () Bool)

(assert (=> d!149987 (= lt!610365 e!786738)))

(declare-fun res!929124 () Bool)

(assert (=> d!149987 (=> (not res!929124) (not e!786738))))

(assert (=> d!149987 (= res!929124 (is-Cons!32529 Nil!32530))))

(assert (=> d!149987 (= (contains!9767 Nil!32530 #b0000000000000000000000000000000000000000000000000000000000000000) lt!610365)))

(declare-fun b!1388773 () Bool)

(declare-fun e!786737 () Bool)

(assert (=> b!1388773 (= e!786738 e!786737)))

(declare-fun res!929125 () Bool)

(assert (=> b!1388773 (=> res!929125 e!786737)))

(assert (=> b!1388773 (= res!929125 (= (h!33744 Nil!32530) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1388774 () Bool)

(assert (=> b!1388774 (= e!786737 (contains!9767 (t!47234 Nil!32530) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!149987 res!929124) b!1388773))

(assert (= (and b!1388773 (not res!929125)) b!1388774))

(assert (=> d!149987 m!1274539))

(declare-fun m!1274561 () Bool)

(assert (=> d!149987 m!1274561))

(declare-fun m!1274563 () Bool)

(assert (=> b!1388774 m!1274563))

(assert (=> b!1388733 d!149987))

(declare-fun d!149989 () Bool)

(assert (=> d!149989 (= (validKeyInArray!0 (select (arr!45834 a!2901) i!1037)) (and (not (= (select (arr!45834 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45834 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1388728 d!149989))

(declare-fun d!149991 () Bool)

(declare-fun res!929138 () Bool)

(declare-fun e!786755 () Bool)

(assert (=> d!149991 (=> res!929138 e!786755)))

(assert (=> d!149991 (= res!929138 (is-Nil!32530 Nil!32530))))

(assert (=> d!149991 (= (noDuplicate!2638 Nil!32530) e!786755)))

(declare-fun b!1388795 () Bool)

(declare-fun e!786756 () Bool)

(assert (=> b!1388795 (= e!786755 e!786756)))

(declare-fun res!929139 () Bool)

(assert (=> b!1388795 (=> (not res!929139) (not e!786756))))

(assert (=> b!1388795 (= res!929139 (not (contains!9767 (t!47234 Nil!32530) (h!33744 Nil!32530))))))

(declare-fun b!1388796 () Bool)

(assert (=> b!1388796 (= e!786756 (noDuplicate!2638 (t!47234 Nil!32530)))))

(assert (= (and d!149991 (not res!929138)) b!1388795))

