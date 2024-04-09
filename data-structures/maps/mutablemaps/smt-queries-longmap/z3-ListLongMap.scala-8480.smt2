; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103322 () Bool)

(assert start!103322)

(declare-fun b!1239479 () Bool)

(declare-fun res!827021 () Bool)

(declare-fun e!702433 () Bool)

(assert (=> b!1239479 (=> (not res!827021) (not e!702433))))

(declare-datatypes ((array!79855 0))(
  ( (array!79856 (arr!38524 (Array (_ BitVec 32) (_ BitVec 64))) (size!39061 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79855)

(declare-datatypes ((List!27475 0))(
  ( (Nil!27472) (Cons!27471 (h!28680 (_ BitVec 64)) (t!40945 List!27475)) )
))
(declare-fun acc!846 () List!27475)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79855 (_ BitVec 32) List!27475) Bool)

(assert (=> b!1239479 (= res!827021 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1239480 () Bool)

(declare-fun k0!2925 () (_ BitVec 64))

(declare-fun e!702432 () Bool)

(declare-fun arrayContainsKey!0 (array!79855 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1239480 (= e!702432 (not (not (arrayContainsKey!0 a!3835 k0!2925 from!3213))))))

(assert (=> b!1239480 (not (arrayContainsKey!0 a!3835 k0!2925 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-datatypes ((Unit!41137 0))(
  ( (Unit!41138) )
))
(declare-fun lt!561724 () Unit!41137)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79855 (_ BitVec 32) (_ BitVec 64) List!27475) Unit!41137)

(assert (=> b!1239480 (= lt!561724 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) k0!2925 acc!846))))

(declare-fun b!1239481 () Bool)

(declare-fun res!827023 () Bool)

(assert (=> b!1239481 (=> (not res!827023) (not e!702432))))

(assert (=> b!1239481 (= res!827023 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1239482 () Bool)

(assert (=> b!1239482 (= e!702433 e!702432)))

(declare-fun res!827022 () Bool)

(assert (=> b!1239482 (=> (not res!827022) (not e!702432))))

(assert (=> b!1239482 (= res!827022 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!39061 a!3835))))))

(declare-fun lt!561721 () Unit!41137)

(declare-fun e!702431 () Unit!41137)

(assert (=> b!1239482 (= lt!561721 e!702431)))

(declare-fun c!121093 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1239482 (= c!121093 (validKeyInArray!0 (select (arr!38524 a!3835) from!3213)))))

(declare-fun b!1239483 () Bool)

(declare-fun res!827020 () Bool)

(assert (=> b!1239483 (=> (not res!827020) (not e!702433))))

(declare-fun contains!7390 (List!27475 (_ BitVec 64)) Bool)

(assert (=> b!1239483 (= res!827020 (not (contains!7390 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!827024 () Bool)

(assert (=> start!103322 (=> (not res!827024) (not e!702433))))

(assert (=> start!103322 (= res!827024 (and (bvslt (size!39061 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39061 a!3835))))))

(assert (=> start!103322 e!702433))

(declare-fun array_inv!29300 (array!79855) Bool)

(assert (=> start!103322 (array_inv!29300 a!3835)))

(assert (=> start!103322 true))

(declare-fun b!1239484 () Bool)

(declare-fun res!827018 () Bool)

(assert (=> b!1239484 (=> (not res!827018) (not e!702433))))

(assert (=> b!1239484 (= res!827018 (not (contains!7390 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239485 () Bool)

(declare-fun res!827019 () Bool)

(assert (=> b!1239485 (=> (not res!827019) (not e!702433))))

(assert (=> b!1239485 (= res!827019 (contains!7390 acc!846 k0!2925))))

(declare-fun b!1239486 () Bool)

(declare-fun res!827026 () Bool)

(assert (=> b!1239486 (=> (not res!827026) (not e!702433))))

(assert (=> b!1239486 (= res!827026 (not (= from!3213 (bvsub (size!39061 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1239487 () Bool)

(declare-fun lt!561722 () Unit!41137)

(assert (=> b!1239487 (= e!702431 lt!561722)))

(declare-fun lt!561723 () List!27475)

(assert (=> b!1239487 (= lt!561723 (Cons!27471 (select (arr!38524 a!3835) from!3213) acc!846))))

(declare-fun lt!561719 () Unit!41137)

(declare-fun lemmaListSubSeqRefl!0 (List!27475) Unit!41137)

(assert (=> b!1239487 (= lt!561719 (lemmaListSubSeqRefl!0 lt!561723))))

(declare-fun subseq!627 (List!27475 List!27475) Bool)

(assert (=> b!1239487 (subseq!627 lt!561723 lt!561723)))

(declare-fun lt!561720 () Unit!41137)

(declare-fun subseqTail!114 (List!27475 List!27475) Unit!41137)

(assert (=> b!1239487 (= lt!561720 (subseqTail!114 lt!561723 lt!561723))))

(assert (=> b!1239487 (subseq!627 acc!846 lt!561723)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79855 List!27475 List!27475 (_ BitVec 32)) Unit!41137)

(assert (=> b!1239487 (= lt!561722 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561723 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1239487 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1239488 () Bool)

(declare-fun Unit!41139 () Unit!41137)

(assert (=> b!1239488 (= e!702431 Unit!41139)))

(declare-fun b!1239489 () Bool)

(declare-fun res!827025 () Bool)

(assert (=> b!1239489 (=> (not res!827025) (not e!702433))))

(declare-fun noDuplicate!1997 (List!27475) Bool)

(assert (=> b!1239489 (= res!827025 (noDuplicate!1997 acc!846))))

(assert (= (and start!103322 res!827024) b!1239489))

(assert (= (and b!1239489 res!827025) b!1239484))

(assert (= (and b!1239484 res!827018) b!1239483))

(assert (= (and b!1239483 res!827020) b!1239479))

(assert (= (and b!1239479 res!827021) b!1239485))

(assert (= (and b!1239485 res!827019) b!1239486))

(assert (= (and b!1239486 res!827026) b!1239482))

(assert (= (and b!1239482 c!121093) b!1239487))

(assert (= (and b!1239482 (not c!121093)) b!1239488))

(assert (= (and b!1239482 res!827022) b!1239481))

(assert (= (and b!1239481 res!827023) b!1239480))

(declare-fun m!1142943 () Bool)

(assert (=> b!1239485 m!1142943))

(declare-fun m!1142945 () Bool)

(assert (=> start!103322 m!1142945))

(declare-fun m!1142947 () Bool)

(assert (=> b!1239479 m!1142947))

(declare-fun m!1142949 () Bool)

(assert (=> b!1239484 m!1142949))

(declare-fun m!1142951 () Bool)

(assert (=> b!1239481 m!1142951))

(declare-fun m!1142953 () Bool)

(assert (=> b!1239487 m!1142953))

(declare-fun m!1142955 () Bool)

(assert (=> b!1239487 m!1142955))

(declare-fun m!1142957 () Bool)

(assert (=> b!1239487 m!1142957))

(declare-fun m!1142959 () Bool)

(assert (=> b!1239487 m!1142959))

(assert (=> b!1239487 m!1142951))

(declare-fun m!1142961 () Bool)

(assert (=> b!1239487 m!1142961))

(declare-fun m!1142963 () Bool)

(assert (=> b!1239487 m!1142963))

(declare-fun m!1142965 () Bool)

(assert (=> b!1239480 m!1142965))

(declare-fun m!1142967 () Bool)

(assert (=> b!1239480 m!1142967))

(declare-fun m!1142969 () Bool)

(assert (=> b!1239480 m!1142969))

(declare-fun m!1142971 () Bool)

(assert (=> b!1239483 m!1142971))

(declare-fun m!1142973 () Bool)

(assert (=> b!1239489 m!1142973))

(assert (=> b!1239482 m!1142963))

(assert (=> b!1239482 m!1142963))

(declare-fun m!1142975 () Bool)

(assert (=> b!1239482 m!1142975))

(check-sat (not b!1239479) (not b!1239487) (not b!1239481) (not b!1239480) (not b!1239485) (not b!1239484) (not b!1239482) (not b!1239489) (not b!1239483) (not start!103322))
(check-sat)
(get-model)

(declare-fun d!135949 () Bool)

(declare-fun lt!561745 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!602 (List!27475) (InoxSet (_ BitVec 64)))

(assert (=> d!135949 (= lt!561745 (select (content!602 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!702451 () Bool)

(assert (=> d!135949 (= lt!561745 e!702451)))

(declare-fun res!827059 () Bool)

(assert (=> d!135949 (=> (not res!827059) (not e!702451))))

(get-info :version)

(assert (=> d!135949 (= res!827059 ((_ is Cons!27471) acc!846))))

(assert (=> d!135949 (= (contains!7390 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561745)))

(declare-fun b!1239527 () Bool)

(declare-fun e!702452 () Bool)

(assert (=> b!1239527 (= e!702451 e!702452)))

(declare-fun res!827058 () Bool)

(assert (=> b!1239527 (=> res!827058 e!702452)))

(assert (=> b!1239527 (= res!827058 (= (h!28680 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1239528 () Bool)

(assert (=> b!1239528 (= e!702452 (contains!7390 (t!40945 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135949 res!827059) b!1239527))

(assert (= (and b!1239527 (not res!827058)) b!1239528))

(declare-fun m!1143011 () Bool)

(assert (=> d!135949 m!1143011))

(declare-fun m!1143013 () Bool)

(assert (=> d!135949 m!1143013))

(declare-fun m!1143015 () Bool)

(assert (=> b!1239528 m!1143015))

(assert (=> b!1239483 d!135949))

(declare-fun d!135951 () Bool)

(assert (=> d!135951 (= (validKeyInArray!0 (select (arr!38524 a!3835) from!3213)) (and (not (= (select (arr!38524 a!3835) from!3213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38524 a!3835) from!3213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1239482 d!135951))

(declare-fun d!135953 () Bool)

(assert (=> d!135953 (= (array_inv!29300 a!3835) (bvsge (size!39061 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!103322 d!135953))

(declare-fun b!1239539 () Bool)

(declare-fun e!702464 () Bool)

(declare-fun call!61095 () Bool)

(assert (=> b!1239539 (= e!702464 call!61095)))

(declare-fun b!1239540 () Bool)

(declare-fun e!702463 () Bool)

(assert (=> b!1239540 (= e!702463 (contains!7390 acc!846 (select (arr!38524 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun c!121099 () Bool)

(declare-fun bm!61092 () Bool)

(assert (=> bm!61092 (= call!61095 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213 #b00000000000000000000000000000001) (ite c!121099 (Cons!27471 (select (arr!38524 a!3835) (bvadd #b00000000000000000000000000000001 from!3213)) acc!846) acc!846)))))

(declare-fun b!1239541 () Bool)

(declare-fun e!702461 () Bool)

(assert (=> b!1239541 (= e!702461 e!702464)))

(assert (=> b!1239541 (= c!121099 (validKeyInArray!0 (select (arr!38524 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun b!1239542 () Bool)

(assert (=> b!1239542 (= e!702464 call!61095)))

(declare-fun b!1239543 () Bool)

(declare-fun e!702462 () Bool)

(assert (=> b!1239543 (= e!702462 e!702461)))

(declare-fun res!827066 () Bool)

(assert (=> b!1239543 (=> (not res!827066) (not e!702461))))

(assert (=> b!1239543 (= res!827066 (not e!702463))))

(declare-fun res!827067 () Bool)

(assert (=> b!1239543 (=> (not res!827067) (not e!702463))))

(assert (=> b!1239543 (= res!827067 (validKeyInArray!0 (select (arr!38524 a!3835) (bvadd #b00000000000000000000000000000001 from!3213))))))

(declare-fun d!135955 () Bool)

(declare-fun res!827068 () Bool)

(assert (=> d!135955 (=> res!827068 e!702462)))

(assert (=> d!135955 (= res!827068 (bvsge (bvadd #b00000000000000000000000000000001 from!3213) (size!39061 a!3835)))))

(assert (=> d!135955 (= (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846) e!702462)))

(assert (= (and d!135955 (not res!827068)) b!1239543))

(assert (= (and b!1239543 res!827067) b!1239540))

(assert (= (and b!1239543 res!827066) b!1239541))

(assert (= (and b!1239541 c!121099) b!1239539))

(assert (= (and b!1239541 (not c!121099)) b!1239542))

(assert (= (or b!1239539 b!1239542) bm!61092))

(declare-fun m!1143017 () Bool)

(assert (=> b!1239540 m!1143017))

(assert (=> b!1239540 m!1143017))

(declare-fun m!1143019 () Bool)

(assert (=> b!1239540 m!1143019))

(assert (=> bm!61092 m!1143017))

(declare-fun m!1143021 () Bool)

(assert (=> bm!61092 m!1143021))

(assert (=> b!1239541 m!1143017))

(assert (=> b!1239541 m!1143017))

(declare-fun m!1143023 () Bool)

(assert (=> b!1239541 m!1143023))

(assert (=> b!1239543 m!1143017))

(assert (=> b!1239543 m!1143017))

(assert (=> b!1239543 m!1143023))

(assert (=> b!1239487 d!135955))

(declare-fun b!1239567 () Bool)

(declare-fun e!702487 () Bool)

(declare-fun e!702485 () Bool)

(assert (=> b!1239567 (= e!702487 e!702485)))

(declare-fun res!827087 () Bool)

(assert (=> b!1239567 (=> res!827087 e!702485)))

(declare-fun e!702486 () Bool)

(assert (=> b!1239567 (= res!827087 e!702486)))

(declare-fun res!827088 () Bool)

(assert (=> b!1239567 (=> (not res!827088) (not e!702486))))

(assert (=> b!1239567 (= res!827088 (= (h!28680 lt!561723) (h!28680 lt!561723)))))

(declare-fun d!135957 () Bool)

(declare-fun res!827090 () Bool)

(declare-fun e!702488 () Bool)

(assert (=> d!135957 (=> res!827090 e!702488)))

(assert (=> d!135957 (= res!827090 ((_ is Nil!27472) lt!561723))))

(assert (=> d!135957 (= (subseq!627 lt!561723 lt!561723) e!702488)))

(declare-fun b!1239569 () Bool)

(assert (=> b!1239569 (= e!702485 (subseq!627 lt!561723 (t!40945 lt!561723)))))

(declare-fun b!1239566 () Bool)

(assert (=> b!1239566 (= e!702488 e!702487)))

(declare-fun res!827089 () Bool)

(assert (=> b!1239566 (=> (not res!827089) (not e!702487))))

(assert (=> b!1239566 (= res!827089 ((_ is Cons!27471) lt!561723))))

(declare-fun b!1239568 () Bool)

(assert (=> b!1239568 (= e!702486 (subseq!627 (t!40945 lt!561723) (t!40945 lt!561723)))))

(assert (= (and d!135957 (not res!827090)) b!1239566))

(assert (= (and b!1239566 res!827089) b!1239567))

(assert (= (and b!1239567 res!827088) b!1239568))

(assert (= (and b!1239567 (not res!827087)) b!1239569))

(declare-fun m!1143025 () Bool)

(assert (=> b!1239569 m!1143025))

(declare-fun m!1143027 () Bool)

(assert (=> b!1239568 m!1143027))

(assert (=> b!1239487 d!135957))

(declare-fun b!1239571 () Bool)

(declare-fun e!702491 () Bool)

(declare-fun e!702489 () Bool)

(assert (=> b!1239571 (= e!702491 e!702489)))

(declare-fun res!827091 () Bool)

(assert (=> b!1239571 (=> res!827091 e!702489)))

(declare-fun e!702490 () Bool)

(assert (=> b!1239571 (= res!827091 e!702490)))

(declare-fun res!827092 () Bool)

(assert (=> b!1239571 (=> (not res!827092) (not e!702490))))

(assert (=> b!1239571 (= res!827092 (= (h!28680 acc!846) (h!28680 lt!561723)))))

(declare-fun d!135963 () Bool)

(declare-fun res!827094 () Bool)

(declare-fun e!702492 () Bool)

(assert (=> d!135963 (=> res!827094 e!702492)))

(assert (=> d!135963 (= res!827094 ((_ is Nil!27472) acc!846))))

(assert (=> d!135963 (= (subseq!627 acc!846 lt!561723) e!702492)))

(declare-fun b!1239573 () Bool)

(assert (=> b!1239573 (= e!702489 (subseq!627 acc!846 (t!40945 lt!561723)))))

(declare-fun b!1239570 () Bool)

(assert (=> b!1239570 (= e!702492 e!702491)))

(declare-fun res!827093 () Bool)

(assert (=> b!1239570 (=> (not res!827093) (not e!702491))))

(assert (=> b!1239570 (= res!827093 ((_ is Cons!27471) lt!561723))))

(declare-fun b!1239572 () Bool)

(assert (=> b!1239572 (= e!702490 (subseq!627 (t!40945 acc!846) (t!40945 lt!561723)))))

(assert (= (and d!135963 (not res!827094)) b!1239570))

(assert (= (and b!1239570 res!827093) b!1239571))

(assert (= (and b!1239571 res!827092) b!1239572))

(assert (= (and b!1239571 (not res!827091)) b!1239573))

(declare-fun m!1143029 () Bool)

(assert (=> b!1239573 m!1143029))

(declare-fun m!1143031 () Bool)

(assert (=> b!1239572 m!1143031))

(assert (=> b!1239487 d!135963))

(declare-fun b!1239619 () Bool)

(declare-fun e!702534 () Unit!41137)

(declare-fun Unit!41143 () Unit!41137)

(assert (=> b!1239619 (= e!702534 Unit!41143)))

(declare-fun b!1239620 () Bool)

(declare-fun e!702532 () Unit!41137)

(assert (=> b!1239620 (= e!702534 e!702532)))

(declare-fun c!121110 () Bool)

(assert (=> b!1239620 (= c!121110 (subseq!627 lt!561723 (t!40945 lt!561723)))))

(declare-fun b!1239621 () Bool)

(declare-fun e!702531 () Bool)

(assert (=> b!1239621 (= e!702531 (subseq!627 lt!561723 lt!561723))))

(declare-fun b!1239622 () Bool)

(declare-fun e!702533 () Unit!41137)

(declare-fun Unit!41144 () Unit!41137)

(assert (=> b!1239622 (= e!702533 Unit!41144)))

(declare-fun b!1239623 () Bool)

(declare-fun call!61101 () Unit!41137)

(assert (=> b!1239623 (= e!702532 call!61101)))

(declare-fun b!1239625 () Bool)

(declare-fun c!121111 () Bool)

(declare-fun isEmpty!1021 (List!27475) Bool)

(assert (=> b!1239625 (= c!121111 (not (isEmpty!1021 (t!40945 lt!561723))))))

(assert (=> b!1239625 (= e!702532 e!702533)))

(declare-fun bm!61098 () Bool)

(assert (=> bm!61098 (= call!61101 (subseqTail!114 (ite c!121110 lt!561723 (t!40945 lt!561723)) (t!40945 lt!561723)))))

(declare-fun d!135965 () Bool)

(declare-fun tail!170 (List!27475) List!27475)

(assert (=> d!135965 (subseq!627 (tail!170 lt!561723) lt!561723)))

(declare-fun lt!561755 () Unit!41137)

(assert (=> d!135965 (= lt!561755 e!702534)))

(declare-fun c!121109 () Bool)

(assert (=> d!135965 (= c!121109 (and ((_ is Cons!27471) lt!561723) ((_ is Cons!27471) lt!561723)))))

(assert (=> d!135965 e!702531))

(declare-fun res!827126 () Bool)

(assert (=> d!135965 (=> (not res!827126) (not e!702531))))

(assert (=> d!135965 (= res!827126 (not (isEmpty!1021 lt!561723)))))

(assert (=> d!135965 (= (subseqTail!114 lt!561723 lt!561723) lt!561755)))

(declare-fun b!1239624 () Bool)

(assert (=> b!1239624 (= e!702533 call!61101)))

(assert (= (and d!135965 res!827126) b!1239621))

(assert (= (and d!135965 c!121109) b!1239620))

(assert (= (and d!135965 (not c!121109)) b!1239619))

(assert (= (and b!1239620 c!121110) b!1239623))

(assert (= (and b!1239620 (not c!121110)) b!1239625))

(assert (= (and b!1239625 c!121111) b!1239624))

(assert (= (and b!1239625 (not c!121111)) b!1239622))

(assert (= (or b!1239623 b!1239624) bm!61098))

(assert (=> b!1239620 m!1143025))

(declare-fun m!1143063 () Bool)

(assert (=> bm!61098 m!1143063))

(declare-fun m!1143065 () Bool)

(assert (=> d!135965 m!1143065))

(assert (=> d!135965 m!1143065))

(declare-fun m!1143067 () Bool)

(assert (=> d!135965 m!1143067))

(declare-fun m!1143069 () Bool)

(assert (=> d!135965 m!1143069))

(assert (=> b!1239621 m!1142959))

(declare-fun m!1143071 () Bool)

(assert (=> b!1239625 m!1143071))

(assert (=> b!1239487 d!135965))

(declare-fun d!135983 () Bool)

(assert (=> d!135983 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun lt!561760 () Unit!41137)

(declare-fun choose!80 (array!79855 List!27475 List!27475 (_ BitVec 32)) Unit!41137)

(assert (=> d!135983 (= lt!561760 (choose!80 a!3835 lt!561723 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> d!135983 (bvslt (size!39061 a!3835) #b01111111111111111111111111111111)))

(assert (=> d!135983 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561723 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)) lt!561760)))

(declare-fun bs!34850 () Bool)

(assert (= bs!34850 d!135983))

(assert (=> bs!34850 m!1142951))

(declare-fun m!1143073 () Bool)

(assert (=> bs!34850 m!1143073))

(assert (=> b!1239487 d!135983))

(declare-fun d!135985 () Bool)

(assert (=> d!135985 (subseq!627 lt!561723 lt!561723)))

(declare-fun lt!561764 () Unit!41137)

(declare-fun choose!36 (List!27475) Unit!41137)

(assert (=> d!135985 (= lt!561764 (choose!36 lt!561723))))

(assert (=> d!135985 (= (lemmaListSubSeqRefl!0 lt!561723) lt!561764)))

(declare-fun bs!34851 () Bool)

(assert (= bs!34851 d!135985))

(assert (=> bs!34851 m!1142959))

(declare-fun m!1143081 () Bool)

(assert (=> bs!34851 m!1143081))

(assert (=> b!1239487 d!135985))

(assert (=> b!1239481 d!135955))

(declare-fun d!135989 () Bool)

(declare-fun res!827159 () Bool)

(declare-fun e!702571 () Bool)

(assert (=> d!135989 (=> res!827159 e!702571)))

(assert (=> d!135989 (= res!827159 (= (select (arr!38524 a!3835) from!3213) k0!2925))))

(assert (=> d!135989 (= (arrayContainsKey!0 a!3835 k0!2925 from!3213) e!702571)))

(declare-fun b!1239666 () Bool)

(declare-fun e!702572 () Bool)

(assert (=> b!1239666 (= e!702571 e!702572)))

(declare-fun res!827160 () Bool)

(assert (=> b!1239666 (=> (not res!827160) (not e!702572))))

(assert (=> b!1239666 (= res!827160 (bvslt (bvadd from!3213 #b00000000000000000000000000000001) (size!39061 a!3835)))))

(declare-fun b!1239667 () Bool)

(assert (=> b!1239667 (= e!702572 (arrayContainsKey!0 a!3835 k0!2925 (bvadd from!3213 #b00000000000000000000000000000001)))))

(assert (= (and d!135989 (not res!827159)) b!1239666))

(assert (= (and b!1239666 res!827160) b!1239667))

(assert (=> d!135989 m!1142963))

(declare-fun m!1143101 () Bool)

(assert (=> b!1239667 m!1143101))

(assert (=> b!1239480 d!135989))

(declare-fun d!135997 () Bool)

(declare-fun res!827165 () Bool)

(declare-fun e!702577 () Bool)

(assert (=> d!135997 (=> res!827165 e!702577)))

(assert (=> d!135997 (= res!827165 (= (select (arr!38524 a!3835) (bvadd #b00000000000000000000000000000001 from!3213)) k0!2925))))

(assert (=> d!135997 (= (arrayContainsKey!0 a!3835 k0!2925 (bvadd #b00000000000000000000000000000001 from!3213)) e!702577)))

(declare-fun b!1239672 () Bool)

(declare-fun e!702578 () Bool)

(assert (=> b!1239672 (= e!702577 e!702578)))

(declare-fun res!827166 () Bool)

(assert (=> b!1239672 (=> (not res!827166) (not e!702578))))

(assert (=> b!1239672 (= res!827166 (bvslt (bvadd #b00000000000000000000000000000001 from!3213 #b00000000000000000000000000000001) (size!39061 a!3835)))))

(declare-fun b!1239673 () Bool)

(assert (=> b!1239673 (= e!702578 (arrayContainsKey!0 a!3835 k0!2925 (bvadd #b00000000000000000000000000000001 from!3213 #b00000000000000000000000000000001)))))

(assert (= (and d!135997 (not res!827165)) b!1239672))

(assert (= (and b!1239672 res!827166) b!1239673))

(assert (=> d!135997 m!1143017))

(declare-fun m!1143107 () Bool)

(assert (=> b!1239673 m!1143107))

(assert (=> b!1239480 d!135997))

(declare-fun d!136001 () Bool)

(assert (=> d!136001 (not (arrayContainsKey!0 a!3835 k0!2925 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun lt!561767 () Unit!41137)

(declare-fun choose!68 (array!79855 (_ BitVec 32) (_ BitVec 64) List!27475) Unit!41137)

(assert (=> d!136001 (= lt!561767 (choose!68 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) k0!2925 acc!846))))

(assert (=> d!136001 (bvslt (size!39061 a!3835) #b01111111111111111111111111111111)))

(assert (=> d!136001 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) k0!2925 acc!846) lt!561767)))

(declare-fun bs!34852 () Bool)

(assert (= bs!34852 d!136001))

(assert (=> bs!34852 m!1142967))

(declare-fun m!1143109 () Bool)

(assert (=> bs!34852 m!1143109))

(assert (=> b!1239480 d!136001))

(declare-fun d!136003 () Bool)

(declare-fun lt!561768 () Bool)

(assert (=> d!136003 (= lt!561768 (select (content!602 acc!846) k0!2925))))

(declare-fun e!702579 () Bool)

(assert (=> d!136003 (= lt!561768 e!702579)))

(declare-fun res!827168 () Bool)

(assert (=> d!136003 (=> (not res!827168) (not e!702579))))

(assert (=> d!136003 (= res!827168 ((_ is Cons!27471) acc!846))))

(assert (=> d!136003 (= (contains!7390 acc!846 k0!2925) lt!561768)))

(declare-fun b!1239674 () Bool)

(declare-fun e!702580 () Bool)

(assert (=> b!1239674 (= e!702579 e!702580)))

(declare-fun res!827167 () Bool)

(assert (=> b!1239674 (=> res!827167 e!702580)))

(assert (=> b!1239674 (= res!827167 (= (h!28680 acc!846) k0!2925))))

(declare-fun b!1239675 () Bool)

(assert (=> b!1239675 (= e!702580 (contains!7390 (t!40945 acc!846) k0!2925))))

(assert (= (and d!136003 res!827168) b!1239674))

(assert (= (and b!1239674 (not res!827167)) b!1239675))

(assert (=> d!136003 m!1143011))

(declare-fun m!1143111 () Bool)

(assert (=> d!136003 m!1143111))

(declare-fun m!1143113 () Bool)

(assert (=> b!1239675 m!1143113))

(assert (=> b!1239485 d!136003))

(declare-fun d!136005 () Bool)

(declare-fun lt!561769 () Bool)

(assert (=> d!136005 (= lt!561769 (select (content!602 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!702581 () Bool)

(assert (=> d!136005 (= lt!561769 e!702581)))

(declare-fun res!827170 () Bool)

(assert (=> d!136005 (=> (not res!827170) (not e!702581))))

(assert (=> d!136005 (= res!827170 ((_ is Cons!27471) acc!846))))

(assert (=> d!136005 (= (contains!7390 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000) lt!561769)))

(declare-fun b!1239676 () Bool)

(declare-fun e!702582 () Bool)

(assert (=> b!1239676 (= e!702581 e!702582)))

(declare-fun res!827169 () Bool)

(assert (=> b!1239676 (=> res!827169 e!702582)))

(assert (=> b!1239676 (= res!827169 (= (h!28680 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1239677 () Bool)

(assert (=> b!1239677 (= e!702582 (contains!7390 (t!40945 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!136005 res!827170) b!1239676))

(assert (= (and b!1239676 (not res!827169)) b!1239677))

(assert (=> d!136005 m!1143011))

(declare-fun m!1143115 () Bool)

(assert (=> d!136005 m!1143115))

(declare-fun m!1143117 () Bool)

(assert (=> b!1239677 m!1143117))

(assert (=> b!1239484 d!136005))

(declare-fun b!1239678 () Bool)

(declare-fun e!702586 () Bool)

(declare-fun call!61106 () Bool)

(assert (=> b!1239678 (= e!702586 call!61106)))

(declare-fun b!1239679 () Bool)

(declare-fun e!702585 () Bool)

(assert (=> b!1239679 (= e!702585 (contains!7390 acc!846 (select (arr!38524 a!3835) from!3213)))))

(declare-fun bm!61103 () Bool)

(declare-fun c!121116 () Bool)

(assert (=> bm!61103 (= call!61106 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!121116 (Cons!27471 (select (arr!38524 a!3835) from!3213) acc!846) acc!846)))))

(declare-fun b!1239680 () Bool)

(declare-fun e!702583 () Bool)

(assert (=> b!1239680 (= e!702583 e!702586)))

(assert (=> b!1239680 (= c!121116 (validKeyInArray!0 (select (arr!38524 a!3835) from!3213)))))

(declare-fun b!1239681 () Bool)

(assert (=> b!1239681 (= e!702586 call!61106)))

(declare-fun b!1239682 () Bool)

(declare-fun e!702584 () Bool)

(assert (=> b!1239682 (= e!702584 e!702583)))

(declare-fun res!827171 () Bool)

(assert (=> b!1239682 (=> (not res!827171) (not e!702583))))

(assert (=> b!1239682 (= res!827171 (not e!702585))))

(declare-fun res!827172 () Bool)

(assert (=> b!1239682 (=> (not res!827172) (not e!702585))))

(assert (=> b!1239682 (= res!827172 (validKeyInArray!0 (select (arr!38524 a!3835) from!3213)))))

(declare-fun d!136007 () Bool)

(declare-fun res!827173 () Bool)

(assert (=> d!136007 (=> res!827173 e!702584)))

(assert (=> d!136007 (= res!827173 (bvsge from!3213 (size!39061 a!3835)))))

(assert (=> d!136007 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!702584)))

(assert (= (and d!136007 (not res!827173)) b!1239682))

(assert (= (and b!1239682 res!827172) b!1239679))

(assert (= (and b!1239682 res!827171) b!1239680))

(assert (= (and b!1239680 c!121116) b!1239678))

(assert (= (and b!1239680 (not c!121116)) b!1239681))

(assert (= (or b!1239678 b!1239681) bm!61103))

(assert (=> b!1239679 m!1142963))

(assert (=> b!1239679 m!1142963))

(declare-fun m!1143119 () Bool)

(assert (=> b!1239679 m!1143119))

(assert (=> bm!61103 m!1142963))

(declare-fun m!1143121 () Bool)

(assert (=> bm!61103 m!1143121))

(assert (=> b!1239680 m!1142963))

(assert (=> b!1239680 m!1142963))

(assert (=> b!1239680 m!1142975))

(assert (=> b!1239682 m!1142963))

(assert (=> b!1239682 m!1142963))

(assert (=> b!1239682 m!1142975))

(assert (=> b!1239479 d!136007))

(declare-fun d!136009 () Bool)

(declare-fun res!827182 () Bool)

(declare-fun e!702607 () Bool)

(assert (=> d!136009 (=> res!827182 e!702607)))

(assert (=> d!136009 (= res!827182 ((_ is Nil!27472) acc!846))))

(assert (=> d!136009 (= (noDuplicate!1997 acc!846) e!702607)))

(declare-fun b!1239715 () Bool)

(declare-fun e!702608 () Bool)

(assert (=> b!1239715 (= e!702607 e!702608)))

(declare-fun res!827183 () Bool)

(assert (=> b!1239715 (=> (not res!827183) (not e!702608))))

(assert (=> b!1239715 (= res!827183 (not (contains!7390 (t!40945 acc!846) (h!28680 acc!846))))))

(declare-fun b!1239716 () Bool)

(assert (=> b!1239716 (= e!702608 (noDuplicate!1997 (t!40945 acc!846)))))

(assert (= (and d!136009 (not res!827182)) b!1239715))

(assert (= (and b!1239715 res!827183) b!1239716))

(declare-fun m!1143123 () Bool)

(assert (=> b!1239715 m!1143123))

(declare-fun m!1143125 () Bool)

(assert (=> b!1239716 m!1143125))

(assert (=> b!1239489 d!136009))

(check-sat (not b!1239568) (not b!1239715) (not d!136005) (not bm!61103) (not b!1239682) (not d!136003) (not bm!61098) (not b!1239620) (not b!1239680) (not b!1239543) (not b!1239572) (not b!1239673) (not b!1239675) (not b!1239677) (not d!135965) (not b!1239528) (not bm!61092) (not b!1239625) (not d!135949) (not b!1239621) (not b!1239716) (not b!1239573) (not b!1239569) (not d!135985) (not b!1239541) (not b!1239540) (not d!135983) (not b!1239679) (not d!136001) (not b!1239667))
(check-sat)
