; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115930 () Bool)

(assert start!115930)

(declare-fun b!1369968 () Bool)

(declare-fun res!913551 () Bool)

(declare-fun e!775974 () Bool)

(assert (=> b!1369968 (=> (not res!913551) (not e!775974))))

(declare-datatypes ((List!32148 0))(
  ( (Nil!32145) (Cons!32144 (h!33353 (_ BitVec 64)) (t!46849 List!32148)) )
))
(declare-fun newAcc!98 () List!32148)

(declare-fun contains!9686 (List!32148 (_ BitVec 64)) Bool)

(assert (=> b!1369968 (= res!913551 (not (contains!9686 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369969 () Bool)

(declare-fun res!913553 () Bool)

(declare-fun e!775973 () Bool)

(assert (=> b!1369969 (=> (not res!913553) (not e!775973))))

(declare-datatypes ((array!92967 0))(
  ( (array!92968 (arr!44900 (Array (_ BitVec 32) (_ BitVec 64))) (size!45451 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92967)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun acc!866 () List!32148)

(assert (=> b!1369969 (= res!913553 (not (contains!9686 acc!866 (select (arr!44900 a!3861) from!3239))))))

(declare-fun b!1369970 () Bool)

(declare-fun res!913552 () Bool)

(assert (=> b!1369970 (=> (not res!913552) (not e!775974))))

(declare-fun noDuplicate!2565 (List!32148) Bool)

(assert (=> b!1369970 (= res!913552 (noDuplicate!2565 acc!866))))

(declare-fun b!1369971 () Bool)

(declare-fun res!913550 () Bool)

(assert (=> b!1369971 (=> (not res!913550) (not e!775973))))

(assert (=> b!1369971 (= res!913550 (bvslt from!3239 (size!45451 a!3861)))))

(declare-fun b!1369972 () Bool)

(assert (=> b!1369972 (= e!775973 (not (noDuplicate!2565 (Cons!32144 (select (arr!44900 a!3861) from!3239) acc!866))))))

(declare-fun b!1369974 () Bool)

(declare-fun res!913554 () Bool)

(assert (=> b!1369974 (=> (not res!913554) (not e!775974))))

(assert (=> b!1369974 (= res!913554 (not (contains!9686 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369975 () Bool)

(assert (=> b!1369975 (= e!775974 e!775973)))

(declare-fun res!913558 () Bool)

(assert (=> b!1369975 (=> (not res!913558) (not e!775973))))

(declare-fun arrayNoDuplicates!0 (array!92967 (_ BitVec 32) List!32148) Bool)

(assert (=> b!1369975 (= res!913558 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45235 0))(
  ( (Unit!45236) )
))
(declare-fun lt!602312 () Unit!45235)

(declare-fun noDuplicateSubseq!264 (List!32148 List!32148) Unit!45235)

(assert (=> b!1369975 (= lt!602312 (noDuplicateSubseq!264 newAcc!98 acc!866))))

(declare-fun b!1369976 () Bool)

(declare-fun res!913559 () Bool)

(assert (=> b!1369976 (=> (not res!913559) (not e!775973))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1369976 (= res!913559 (validKeyInArray!0 (select (arr!44900 a!3861) from!3239)))))

(declare-fun b!1369977 () Bool)

(declare-fun res!913555 () Bool)

(assert (=> b!1369977 (=> (not res!913555) (not e!775974))))

(declare-fun subseq!1077 (List!32148 List!32148) Bool)

(assert (=> b!1369977 (= res!913555 (subseq!1077 newAcc!98 acc!866))))

(declare-fun res!913549 () Bool)

(assert (=> start!115930 (=> (not res!913549) (not e!775974))))

(assert (=> start!115930 (= res!913549 (and (bvslt (size!45451 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45451 a!3861))))))

(assert (=> start!115930 e!775974))

(declare-fun array_inv!33845 (array!92967) Bool)

(assert (=> start!115930 (array_inv!33845 a!3861)))

(assert (=> start!115930 true))

(declare-fun b!1369973 () Bool)

(declare-fun res!913556 () Bool)

(assert (=> b!1369973 (=> (not res!913556) (not e!775973))))

(assert (=> b!1369973 (= res!913556 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1369978 () Bool)

(declare-fun res!913557 () Bool)

(assert (=> b!1369978 (=> (not res!913557) (not e!775974))))

(assert (=> b!1369978 (= res!913557 (not (contains!9686 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369979 () Bool)

(declare-fun res!913560 () Bool)

(assert (=> b!1369979 (=> (not res!913560) (not e!775974))))

(assert (=> b!1369979 (= res!913560 (not (contains!9686 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115930 res!913549) b!1369970))

(assert (= (and b!1369970 res!913552) b!1369974))

(assert (= (and b!1369974 res!913554) b!1369979))

(assert (= (and b!1369979 res!913560) b!1369978))

(assert (= (and b!1369978 res!913557) b!1369968))

(assert (= (and b!1369968 res!913551) b!1369977))

(assert (= (and b!1369977 res!913555) b!1369975))

(assert (= (and b!1369975 res!913558) b!1369971))

(assert (= (and b!1369971 res!913550) b!1369976))

(assert (= (and b!1369976 res!913559) b!1369969))

(assert (= (and b!1369969 res!913553) b!1369973))

(assert (= (and b!1369973 res!913556) b!1369972))

(declare-fun m!1253655 () Bool)

(assert (=> b!1369979 m!1253655))

(declare-fun m!1253657 () Bool)

(assert (=> b!1369970 m!1253657))

(declare-fun m!1253659 () Bool)

(assert (=> b!1369977 m!1253659))

(declare-fun m!1253661 () Bool)

(assert (=> start!115930 m!1253661))

(declare-fun m!1253663 () Bool)

(assert (=> b!1369969 m!1253663))

(assert (=> b!1369969 m!1253663))

(declare-fun m!1253665 () Bool)

(assert (=> b!1369969 m!1253665))

(declare-fun m!1253667 () Bool)

(assert (=> b!1369974 m!1253667))

(declare-fun m!1253669 () Bool)

(assert (=> b!1369968 m!1253669))

(assert (=> b!1369976 m!1253663))

(assert (=> b!1369976 m!1253663))

(declare-fun m!1253671 () Bool)

(assert (=> b!1369976 m!1253671))

(declare-fun m!1253673 () Bool)

(assert (=> b!1369978 m!1253673))

(declare-fun m!1253675 () Bool)

(assert (=> b!1369975 m!1253675))

(declare-fun m!1253677 () Bool)

(assert (=> b!1369975 m!1253677))

(assert (=> b!1369972 m!1253663))

(declare-fun m!1253679 () Bool)

(assert (=> b!1369972 m!1253679))

(check-sat (not start!115930) (not b!1369976) (not b!1369977) (not b!1369970) (not b!1369968) (not b!1369975) (not b!1369979) (not b!1369972) (not b!1369969) (not b!1369974) (not b!1369978))
(check-sat)
(get-model)

(declare-fun d!146997 () Bool)

(declare-fun lt!602318 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!732 (List!32148) (InoxSet (_ BitVec 64)))

(assert (=> d!146997 (= lt!602318 (select (content!732 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!775990 () Bool)

(assert (=> d!146997 (= lt!602318 e!775990)))

(declare-fun res!913601 () Bool)

(assert (=> d!146997 (=> (not res!913601) (not e!775990))))

(get-info :version)

(assert (=> d!146997 (= res!913601 ((_ is Cons!32144) acc!866))))

(assert (=> d!146997 (= (contains!9686 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602318)))

(declare-fun b!1370020 () Bool)

(declare-fun e!775989 () Bool)

(assert (=> b!1370020 (= e!775990 e!775989)))

(declare-fun res!913602 () Bool)

(assert (=> b!1370020 (=> res!913602 e!775989)))

(assert (=> b!1370020 (= res!913602 (= (h!33353 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370021 () Bool)

(assert (=> b!1370021 (= e!775989 (contains!9686 (t!46849 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146997 res!913601) b!1370020))

(assert (= (and b!1370020 (not res!913602)) b!1370021))

(declare-fun m!1253707 () Bool)

(assert (=> d!146997 m!1253707))

(declare-fun m!1253709 () Bool)

(assert (=> d!146997 m!1253709))

(declare-fun m!1253711 () Bool)

(assert (=> b!1370021 m!1253711))

(assert (=> b!1369979 d!146997))

(declare-fun d!146999 () Bool)

(declare-fun lt!602319 () Bool)

(assert (=> d!146999 (= lt!602319 (select (content!732 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!775992 () Bool)

(assert (=> d!146999 (= lt!602319 e!775992)))

(declare-fun res!913603 () Bool)

(assert (=> d!146999 (=> (not res!913603) (not e!775992))))

(assert (=> d!146999 (= res!913603 ((_ is Cons!32144) acc!866))))

(assert (=> d!146999 (= (contains!9686 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602319)))

(declare-fun b!1370022 () Bool)

(declare-fun e!775991 () Bool)

(assert (=> b!1370022 (= e!775992 e!775991)))

(declare-fun res!913604 () Bool)

(assert (=> b!1370022 (=> res!913604 e!775991)))

(assert (=> b!1370022 (= res!913604 (= (h!33353 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370023 () Bool)

(assert (=> b!1370023 (= e!775991 (contains!9686 (t!46849 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146999 res!913603) b!1370022))

(assert (= (and b!1370022 (not res!913604)) b!1370023))

(assert (=> d!146999 m!1253707))

(declare-fun m!1253713 () Bool)

(assert (=> d!146999 m!1253713))

(declare-fun m!1253715 () Bool)

(assert (=> b!1370023 m!1253715))

(assert (=> b!1369974 d!146999))

(declare-fun d!147001 () Bool)

(declare-fun lt!602320 () Bool)

(assert (=> d!147001 (= lt!602320 (select (content!732 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!775994 () Bool)

(assert (=> d!147001 (= lt!602320 e!775994)))

(declare-fun res!913605 () Bool)

(assert (=> d!147001 (=> (not res!913605) (not e!775994))))

(assert (=> d!147001 (= res!913605 ((_ is Cons!32144) newAcc!98))))

(assert (=> d!147001 (= (contains!9686 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602320)))

(declare-fun b!1370024 () Bool)

(declare-fun e!775993 () Bool)

(assert (=> b!1370024 (= e!775994 e!775993)))

(declare-fun res!913606 () Bool)

(assert (=> b!1370024 (=> res!913606 e!775993)))

(assert (=> b!1370024 (= res!913606 (= (h!33353 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370025 () Bool)

(assert (=> b!1370025 (= e!775993 (contains!9686 (t!46849 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147001 res!913605) b!1370024))

(assert (= (and b!1370024 (not res!913606)) b!1370025))

(declare-fun m!1253717 () Bool)

(assert (=> d!147001 m!1253717))

(declare-fun m!1253719 () Bool)

(assert (=> d!147001 m!1253719))

(declare-fun m!1253721 () Bool)

(assert (=> b!1370025 m!1253721))

(assert (=> b!1369968 d!147001))

(declare-fun d!147003 () Bool)

(declare-fun lt!602321 () Bool)

(assert (=> d!147003 (= lt!602321 (select (content!732 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!775996 () Bool)

(assert (=> d!147003 (= lt!602321 e!775996)))

(declare-fun res!913607 () Bool)

(assert (=> d!147003 (=> (not res!913607) (not e!775996))))

(assert (=> d!147003 (= res!913607 ((_ is Cons!32144) newAcc!98))))

(assert (=> d!147003 (= (contains!9686 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602321)))

(declare-fun b!1370026 () Bool)

(declare-fun e!775995 () Bool)

(assert (=> b!1370026 (= e!775996 e!775995)))

(declare-fun res!913608 () Bool)

(assert (=> b!1370026 (=> res!913608 e!775995)))

(assert (=> b!1370026 (= res!913608 (= (h!33353 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370027 () Bool)

(assert (=> b!1370027 (= e!775995 (contains!9686 (t!46849 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147003 res!913607) b!1370026))

(assert (= (and b!1370026 (not res!913608)) b!1370027))

(assert (=> d!147003 m!1253717))

(declare-fun m!1253723 () Bool)

(assert (=> d!147003 m!1253723))

(declare-fun m!1253725 () Bool)

(assert (=> b!1370027 m!1253725))

(assert (=> b!1369978 d!147003))

(declare-fun b!1370042 () Bool)

(declare-fun e!776011 () Bool)

(assert (=> b!1370042 (= e!776011 (subseq!1077 (t!46849 newAcc!98) (t!46849 acc!866)))))

(declare-fun d!147005 () Bool)

(declare-fun res!913624 () Bool)

(declare-fun e!776012 () Bool)

(assert (=> d!147005 (=> res!913624 e!776012)))

(assert (=> d!147005 (= res!913624 ((_ is Nil!32145) newAcc!98))))

(assert (=> d!147005 (= (subseq!1077 newAcc!98 acc!866) e!776012)))

(declare-fun b!1370041 () Bool)

(declare-fun e!776009 () Bool)

(declare-fun e!776010 () Bool)

(assert (=> b!1370041 (= e!776009 e!776010)))

(declare-fun res!913621 () Bool)

(assert (=> b!1370041 (=> res!913621 e!776010)))

(assert (=> b!1370041 (= res!913621 e!776011)))

(declare-fun res!913623 () Bool)

(assert (=> b!1370041 (=> (not res!913623) (not e!776011))))

(assert (=> b!1370041 (= res!913623 (= (h!33353 newAcc!98) (h!33353 acc!866)))))

(declare-fun b!1370043 () Bool)

(assert (=> b!1370043 (= e!776010 (subseq!1077 newAcc!98 (t!46849 acc!866)))))

(declare-fun b!1370040 () Bool)

(assert (=> b!1370040 (= e!776012 e!776009)))

(declare-fun res!913622 () Bool)

(assert (=> b!1370040 (=> (not res!913622) (not e!776009))))

(assert (=> b!1370040 (= res!913622 ((_ is Cons!32144) acc!866))))

(assert (= (and d!147005 (not res!913624)) b!1370040))

(assert (= (and b!1370040 res!913622) b!1370041))

(assert (= (and b!1370041 res!913623) b!1370042))

(assert (= (and b!1370041 (not res!913621)) b!1370043))

(declare-fun m!1253727 () Bool)

(assert (=> b!1370042 m!1253727))

(declare-fun m!1253729 () Bool)

(assert (=> b!1370043 m!1253729))

(assert (=> b!1369977 d!147005))

(declare-fun d!147009 () Bool)

(declare-fun res!913637 () Bool)

(declare-fun e!776025 () Bool)

(assert (=> d!147009 (=> res!913637 e!776025)))

(assert (=> d!147009 (= res!913637 ((_ is Nil!32145) (Cons!32144 (select (arr!44900 a!3861) from!3239) acc!866)))))

(assert (=> d!147009 (= (noDuplicate!2565 (Cons!32144 (select (arr!44900 a!3861) from!3239) acc!866)) e!776025)))

(declare-fun b!1370056 () Bool)

(declare-fun e!776026 () Bool)

(assert (=> b!1370056 (= e!776025 e!776026)))

(declare-fun res!913638 () Bool)

(assert (=> b!1370056 (=> (not res!913638) (not e!776026))))

(assert (=> b!1370056 (= res!913638 (not (contains!9686 (t!46849 (Cons!32144 (select (arr!44900 a!3861) from!3239) acc!866)) (h!33353 (Cons!32144 (select (arr!44900 a!3861) from!3239) acc!866)))))))

(declare-fun b!1370057 () Bool)

(assert (=> b!1370057 (= e!776026 (noDuplicate!2565 (t!46849 (Cons!32144 (select (arr!44900 a!3861) from!3239) acc!866))))))

(assert (= (and d!147009 (not res!913637)) b!1370056))

(assert (= (and b!1370056 res!913638) b!1370057))

(declare-fun m!1253743 () Bool)

(assert (=> b!1370056 m!1253743))

(declare-fun m!1253745 () Bool)

(assert (=> b!1370057 m!1253745))

(assert (=> b!1369972 d!147009))

(declare-fun d!147017 () Bool)

(assert (=> d!147017 (= (validKeyInArray!0 (select (arr!44900 a!3861) from!3239)) (and (not (= (select (arr!44900 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44900 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1369976 d!147017))

(declare-fun d!147019 () Bool)

(assert (=> d!147019 (= (array_inv!33845 a!3861) (bvsge (size!45451 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!115930 d!147019))

(declare-fun b!1370106 () Bool)

(declare-fun e!776075 () Bool)

(declare-fun call!65515 () Bool)

(assert (=> b!1370106 (= e!776075 call!65515)))

(declare-fun b!1370107 () Bool)

(declare-fun e!776073 () Bool)

(assert (=> b!1370107 (= e!776073 (contains!9686 acc!866 (select (arr!44900 a!3861) from!3239)))))

(declare-fun b!1370108 () Bool)

(declare-fun e!776074 () Bool)

(declare-fun e!776076 () Bool)

(assert (=> b!1370108 (= e!776074 e!776076)))

(declare-fun res!913683 () Bool)

(assert (=> b!1370108 (=> (not res!913683) (not e!776076))))

(assert (=> b!1370108 (= res!913683 (not e!776073))))

(declare-fun res!913684 () Bool)

(assert (=> b!1370108 (=> (not res!913684) (not e!776073))))

(assert (=> b!1370108 (= res!913684 (validKeyInArray!0 (select (arr!44900 a!3861) from!3239)))))

(declare-fun b!1370109 () Bool)

(assert (=> b!1370109 (= e!776076 e!776075)))

(declare-fun c!127654 () Bool)

(assert (=> b!1370109 (= c!127654 (validKeyInArray!0 (select (arr!44900 a!3861) from!3239)))))

(declare-fun d!147023 () Bool)

(declare-fun res!913685 () Bool)

(assert (=> d!147023 (=> res!913685 e!776074)))

(assert (=> d!147023 (= res!913685 (bvsge from!3239 (size!45451 a!3861)))))

(assert (=> d!147023 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!776074)))

(declare-fun b!1370110 () Bool)

(assert (=> b!1370110 (= e!776075 call!65515)))

(declare-fun bm!65512 () Bool)

(assert (=> bm!65512 (= call!65515 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127654 (Cons!32144 (select (arr!44900 a!3861) from!3239) acc!866) acc!866)))))

(assert (= (and d!147023 (not res!913685)) b!1370108))

(assert (= (and b!1370108 res!913684) b!1370107))

(assert (= (and b!1370108 res!913683) b!1370109))

(assert (= (and b!1370109 c!127654) b!1370106))

(assert (= (and b!1370109 (not c!127654)) b!1370110))

(assert (= (or b!1370106 b!1370110) bm!65512))

(assert (=> b!1370107 m!1253663))

(assert (=> b!1370107 m!1253663))

(assert (=> b!1370107 m!1253665))

(assert (=> b!1370108 m!1253663))

(assert (=> b!1370108 m!1253663))

(assert (=> b!1370108 m!1253671))

(assert (=> b!1370109 m!1253663))

(assert (=> b!1370109 m!1253663))

(assert (=> b!1370109 m!1253671))

(assert (=> bm!65512 m!1253663))

(declare-fun m!1253777 () Bool)

(assert (=> bm!65512 m!1253777))

(assert (=> b!1369975 d!147023))

(declare-fun d!147041 () Bool)

(assert (=> d!147041 (noDuplicate!2565 newAcc!98)))

(declare-fun lt!602335 () Unit!45235)

(declare-fun choose!2012 (List!32148 List!32148) Unit!45235)

(assert (=> d!147041 (= lt!602335 (choose!2012 newAcc!98 acc!866))))

(declare-fun e!776096 () Bool)

(assert (=> d!147041 e!776096))

(declare-fun res!913704 () Bool)

(assert (=> d!147041 (=> (not res!913704) (not e!776096))))

(assert (=> d!147041 (= res!913704 (subseq!1077 newAcc!98 acc!866))))

(assert (=> d!147041 (= (noDuplicateSubseq!264 newAcc!98 acc!866) lt!602335)))

(declare-fun b!1370133 () Bool)

(assert (=> b!1370133 (= e!776096 (noDuplicate!2565 acc!866))))

(assert (= (and d!147041 res!913704) b!1370133))

(declare-fun m!1253793 () Bool)

(assert (=> d!147041 m!1253793))

(declare-fun m!1253795 () Bool)

(assert (=> d!147041 m!1253795))

(assert (=> d!147041 m!1253659))

(assert (=> b!1370133 m!1253657))

(assert (=> b!1369975 d!147041))

(declare-fun d!147049 () Bool)

(declare-fun res!913705 () Bool)

(declare-fun e!776098 () Bool)

(assert (=> d!147049 (=> res!913705 e!776098)))

(assert (=> d!147049 (= res!913705 ((_ is Nil!32145) acc!866))))

(assert (=> d!147049 (= (noDuplicate!2565 acc!866) e!776098)))

(declare-fun b!1370134 () Bool)

(declare-fun e!776099 () Bool)

(assert (=> b!1370134 (= e!776098 e!776099)))

(declare-fun res!913706 () Bool)

(assert (=> b!1370134 (=> (not res!913706) (not e!776099))))

(assert (=> b!1370134 (= res!913706 (not (contains!9686 (t!46849 acc!866) (h!33353 acc!866))))))

(declare-fun b!1370135 () Bool)

(assert (=> b!1370135 (= e!776099 (noDuplicate!2565 (t!46849 acc!866)))))

(assert (= (and d!147049 (not res!913705)) b!1370134))

(assert (= (and b!1370134 res!913706) b!1370135))

(declare-fun m!1253797 () Bool)

(assert (=> b!1370134 m!1253797))

(declare-fun m!1253799 () Bool)

(assert (=> b!1370135 m!1253799))

(assert (=> b!1369970 d!147049))

(declare-fun lt!602336 () Bool)

(declare-fun d!147051 () Bool)

(assert (=> d!147051 (= lt!602336 (select (content!732 acc!866) (select (arr!44900 a!3861) from!3239)))))

(declare-fun e!776101 () Bool)

(assert (=> d!147051 (= lt!602336 e!776101)))

(declare-fun res!913707 () Bool)

(assert (=> d!147051 (=> (not res!913707) (not e!776101))))

(assert (=> d!147051 (= res!913707 ((_ is Cons!32144) acc!866))))

(assert (=> d!147051 (= (contains!9686 acc!866 (select (arr!44900 a!3861) from!3239)) lt!602336)))

(declare-fun b!1370136 () Bool)

(declare-fun e!776100 () Bool)

(assert (=> b!1370136 (= e!776101 e!776100)))

(declare-fun res!913708 () Bool)

(assert (=> b!1370136 (=> res!913708 e!776100)))

(assert (=> b!1370136 (= res!913708 (= (h!33353 acc!866) (select (arr!44900 a!3861) from!3239)))))

(declare-fun b!1370137 () Bool)

(assert (=> b!1370137 (= e!776100 (contains!9686 (t!46849 acc!866) (select (arr!44900 a!3861) from!3239)))))

(assert (= (and d!147051 res!913707) b!1370136))

(assert (= (and b!1370136 (not res!913708)) b!1370137))

(assert (=> d!147051 m!1253707))

(assert (=> d!147051 m!1253663))

(declare-fun m!1253801 () Bool)

(assert (=> d!147051 m!1253801))

(assert (=> b!1370137 m!1253663))

(declare-fun m!1253803 () Bool)

(assert (=> b!1370137 m!1253803))

(assert (=> b!1369969 d!147051))

(check-sat (not b!1370023) (not b!1370108) (not d!146999) (not b!1370109) (not b!1370135) (not b!1370056) (not d!147003) (not d!147001) (not b!1370107) (not b!1370057) (not bm!65512) (not b!1370043) (not b!1370042) (not d!147051) (not b!1370133) (not b!1370025) (not d!147041) (not b!1370027) (not b!1370137) (not b!1370134) (not b!1370021) (not d!146997))
(check-sat)
