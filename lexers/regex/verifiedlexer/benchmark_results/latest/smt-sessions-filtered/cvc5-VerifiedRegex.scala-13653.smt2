; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732302 () Bool)

(assert start!732302)

(declare-fun b!7585807 () Bool)

(assert (=> b!7585807 true))

(assert (=> b!7585807 true))

(declare-fun b!7585798 () Bool)

(declare-fun e!4514650 () Bool)

(declare-fun tp!2210819 () Bool)

(assert (=> b!7585798 (= e!4514650 tp!2210819)))

(declare-fun b!7585799 () Bool)

(declare-fun res!3038799 () Bool)

(declare-fun e!4514648 () Bool)

(assert (=> b!7585799 (=> (not res!3038799) (not e!4514648))))

(declare-datatypes ((C!40526 0))(
  ( (C!40527 (val!30703 Int)) )
))
(declare-datatypes ((Regex!20100 0))(
  ( (ElementMatch!20100 (c!1399159 C!40526)) (Concat!28945 (regOne!40712 Regex!20100) (regTwo!40712 Regex!20100)) (EmptyExpr!20100) (Star!20100 (reg!20429 Regex!20100)) (EmptyLang!20100) (Union!20100 (regOne!40713 Regex!20100) (regTwo!40713 Regex!20100)) )
))
(declare-fun r!22341 () Regex!20100)

(declare-fun lostCause!1876 (Regex!20100) Bool)

(assert (=> b!7585799 (= res!3038799 (lostCause!1876 r!22341))))

(declare-fun b!7585800 () Bool)

(declare-fun tp!2210821 () Bool)

(declare-fun tp!2210820 () Bool)

(assert (=> b!7585800 (= e!4514650 (and tp!2210821 tp!2210820))))

(declare-fun res!3038798 () Bool)

(assert (=> start!732302 (=> (not res!3038798) (not e!4514648))))

(declare-fun validRegex!10528 (Regex!20100) Bool)

(assert (=> start!732302 (= res!3038798 (validRegex!10528 r!22341))))

(assert (=> start!732302 e!4514648))

(assert (=> start!732302 e!4514650))

(declare-fun e!4514651 () Bool)

(assert (=> start!732302 e!4514651))

(declare-fun b!7585801 () Bool)

(declare-fun e!4514652 () Bool)

(assert (=> b!7585801 (= e!4514652 (validRegex!10528 (regTwo!40712 r!22341)))))

(declare-fun b!7585802 () Bool)

(declare-fun tp!2210818 () Bool)

(declare-fun tp!2210823 () Bool)

(assert (=> b!7585802 (= e!4514650 (and tp!2210818 tp!2210823))))

(declare-fun b!7585803 () Bool)

(declare-fun res!3038797 () Bool)

(assert (=> b!7585803 (=> (not res!3038797) (not e!4514648))))

(declare-datatypes ((List!72983 0))(
  ( (Nil!72859) (Cons!72859 (h!79307 C!40526) (t!387718 List!72983)) )
))
(declare-fun s!13436 () List!72983)

(declare-fun isEmpty!41537 (List!72983) Bool)

(assert (=> b!7585803 (= res!3038797 (not (isEmpty!41537 s!13436)))))

(declare-fun b!7585804 () Bool)

(declare-fun tp_is_empty!50555 () Bool)

(assert (=> b!7585804 (= e!4514650 tp_is_empty!50555)))

(declare-fun b!7585805 () Bool)

(declare-fun tp!2210822 () Bool)

(assert (=> b!7585805 (= e!4514651 (and tp_is_empty!50555 tp!2210822))))

(declare-fun b!7585806 () Bool)

(declare-fun e!4514649 () Bool)

(assert (=> b!7585806 (= e!4514648 (not e!4514649))))

(declare-fun res!3038796 () Bool)

(assert (=> b!7585806 (=> res!3038796 e!4514649)))

(declare-fun lt!2652975 () Bool)

(assert (=> b!7585806 (= res!3038796 (or (is-EmptyLang!20100 r!22341) (is-EmptyExpr!20100 r!22341) (is-ElementMatch!20100 r!22341) (is-Union!20100 r!22341) (is-Star!20100 r!22341) (not lt!2652975)))))

(declare-fun matchRSpec!4413 (Regex!20100 List!72983) Bool)

(assert (=> b!7585806 (= lt!2652975 (matchRSpec!4413 r!22341 s!13436))))

(declare-fun matchR!9692 (Regex!20100 List!72983) Bool)

(assert (=> b!7585806 (= lt!2652975 (matchR!9692 r!22341 s!13436))))

(declare-datatypes ((Unit!167156 0))(
  ( (Unit!167157) )
))
(declare-fun lt!2652974 () Unit!167156)

(declare-fun mainMatchTheorem!4407 (Regex!20100 List!72983) Unit!167156)

(assert (=> b!7585806 (= lt!2652974 (mainMatchTheorem!4407 r!22341 s!13436))))

(assert (=> b!7585807 (= e!4514649 e!4514652)))

(declare-fun res!3038795 () Bool)

(assert (=> b!7585807 (=> res!3038795 e!4514652)))

(assert (=> b!7585807 (= res!3038795 (not (validRegex!10528 (regOne!40712 r!22341))))))

(declare-fun lambda!467080 () Int)

(declare-datatypes ((tuple2!68922 0))(
  ( (tuple2!68923 (_1!37764 List!72983) (_2!37764 List!72983)) )
))
(declare-datatypes ((Option!17305 0))(
  ( (None!17304) (Some!17304 (v!54439 tuple2!68922)) )
))
(declare-fun isDefined!13943 (Option!17305) Bool)

(declare-fun findConcatSeparation!3357 (Regex!20100 Regex!20100 List!72983 List!72983 List!72983) Option!17305)

(declare-fun Exists!4332 (Int) Bool)

(assert (=> b!7585807 (= (isDefined!13943 (findConcatSeparation!3357 (regOne!40712 r!22341) (regTwo!40712 r!22341) Nil!72859 s!13436 s!13436)) (Exists!4332 lambda!467080))))

(declare-fun lt!2652973 () Unit!167156)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3115 (Regex!20100 Regex!20100 List!72983) Unit!167156)

(assert (=> b!7585807 (= lt!2652973 (lemmaFindConcatSeparationEquivalentToExists!3115 (regOne!40712 r!22341) (regTwo!40712 r!22341) s!13436))))

(assert (= (and start!732302 res!3038798) b!7585799))

(assert (= (and b!7585799 res!3038799) b!7585803))

(assert (= (and b!7585803 res!3038797) b!7585806))

(assert (= (and b!7585806 (not res!3038796)) b!7585807))

(assert (= (and b!7585807 (not res!3038795)) b!7585801))

(assert (= (and start!732302 (is-ElementMatch!20100 r!22341)) b!7585804))

(assert (= (and start!732302 (is-Concat!28945 r!22341)) b!7585802))

(assert (= (and start!732302 (is-Star!20100 r!22341)) b!7585798))

(assert (= (and start!732302 (is-Union!20100 r!22341)) b!7585800))

(assert (= (and start!732302 (is-Cons!72859 s!13436)) b!7585805))

(declare-fun m!8137378 () Bool)

(assert (=> b!7585803 m!8137378))

(declare-fun m!8137380 () Bool)

(assert (=> b!7585806 m!8137380))

(declare-fun m!8137382 () Bool)

(assert (=> b!7585806 m!8137382))

(declare-fun m!8137384 () Bool)

(assert (=> b!7585806 m!8137384))

(declare-fun m!8137386 () Bool)

(assert (=> b!7585801 m!8137386))

(declare-fun m!8137388 () Bool)

(assert (=> b!7585807 m!8137388))

(declare-fun m!8137390 () Bool)

(assert (=> b!7585807 m!8137390))

(declare-fun m!8137392 () Bool)

(assert (=> b!7585807 m!8137392))

(declare-fun m!8137394 () Bool)

(assert (=> b!7585807 m!8137394))

(assert (=> b!7585807 m!8137392))

(declare-fun m!8137396 () Bool)

(assert (=> b!7585807 m!8137396))

(declare-fun m!8137398 () Bool)

(assert (=> start!732302 m!8137398))

(declare-fun m!8137400 () Bool)

(assert (=> b!7585799 m!8137400))

(push 1)

(assert (not b!7585801))

(assert (not start!732302))

(assert (not b!7585805))

(assert (not b!7585799))

(assert (not b!7585803))

(assert (not b!7585802))

(assert (not b!7585806))

(assert (not b!7585798))

(assert (not b!7585800))

(assert tp_is_empty!50555)

(assert (not b!7585807))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1941229 () Bool)

(declare-fun b!7585905 () Bool)

(assert (= bs!1941229 (and b!7585905 b!7585807)))

(declare-fun lambda!467088 () Int)

(assert (=> bs!1941229 (not (= lambda!467088 lambda!467080))))

(assert (=> b!7585905 true))

(assert (=> b!7585905 true))

(declare-fun bs!1941230 () Bool)

(declare-fun b!7585908 () Bool)

(assert (= bs!1941230 (and b!7585908 b!7585807)))

(declare-fun lambda!467089 () Int)

(assert (=> bs!1941230 (not (= lambda!467089 lambda!467080))))

(declare-fun bs!1941231 () Bool)

(assert (= bs!1941231 (and b!7585908 b!7585905)))

(assert (=> bs!1941231 (not (= lambda!467089 lambda!467088))))

(assert (=> b!7585908 true))

(assert (=> b!7585908 true))

(declare-fun b!7585900 () Bool)

(declare-fun e!4514706 () Bool)

(declare-fun e!4514702 () Bool)

(assert (=> b!7585900 (= e!4514706 e!4514702)))

(declare-fun res!3038847 () Bool)

(assert (=> b!7585900 (= res!3038847 (not (is-EmptyLang!20100 r!22341)))))

(assert (=> b!7585900 (=> (not res!3038847) (not e!4514702))))

(declare-fun b!7585901 () Bool)

(declare-fun c!1399173 () Bool)

(assert (=> b!7585901 (= c!1399173 (is-ElementMatch!20100 r!22341))))

(declare-fun e!4514705 () Bool)

(assert (=> b!7585901 (= e!4514702 e!4514705)))

(declare-fun b!7585902 () Bool)

(assert (=> b!7585902 (= e!4514705 (= s!13436 (Cons!72859 (c!1399159 r!22341) Nil!72859)))))

(declare-fun d!2318930 () Bool)

(declare-fun c!1399175 () Bool)

(assert (=> d!2318930 (= c!1399175 (is-EmptyExpr!20100 r!22341))))

(assert (=> d!2318930 (= (matchRSpec!4413 r!22341 s!13436) e!4514706)))

(declare-fun bm!695660 () Bool)

(declare-fun call!695665 () Bool)

(assert (=> bm!695660 (= call!695665 (isEmpty!41537 s!13436))))

(declare-fun b!7585903 () Bool)

(declare-fun e!4514708 () Bool)

(assert (=> b!7585903 (= e!4514708 (matchRSpec!4413 (regTwo!40713 r!22341) s!13436))))

(declare-fun b!7585904 () Bool)

(declare-fun res!3038845 () Bool)

(declare-fun e!4514704 () Bool)

(assert (=> b!7585904 (=> res!3038845 e!4514704)))

(assert (=> b!7585904 (= res!3038845 call!695665)))

(declare-fun e!4514707 () Bool)

(assert (=> b!7585904 (= e!4514707 e!4514704)))

(declare-fun call!695666 () Bool)

(assert (=> b!7585905 (= e!4514704 call!695666)))

(declare-fun b!7585906 () Bool)

(declare-fun c!1399174 () Bool)

(assert (=> b!7585906 (= c!1399174 (is-Union!20100 r!22341))))

(declare-fun e!4514703 () Bool)

(assert (=> b!7585906 (= e!4514705 e!4514703)))

(declare-fun b!7585907 () Bool)

(assert (=> b!7585907 (= e!4514706 call!695665)))

(declare-fun c!1399176 () Bool)

(declare-fun bm!695661 () Bool)

(assert (=> bm!695661 (= call!695666 (Exists!4332 (ite c!1399176 lambda!467088 lambda!467089)))))

(assert (=> b!7585908 (= e!4514707 call!695666)))

(declare-fun b!7585909 () Bool)

(assert (=> b!7585909 (= e!4514703 e!4514708)))

(declare-fun res!3038846 () Bool)

(assert (=> b!7585909 (= res!3038846 (matchRSpec!4413 (regOne!40713 r!22341) s!13436))))

(assert (=> b!7585909 (=> res!3038846 e!4514708)))

(declare-fun b!7585910 () Bool)

(assert (=> b!7585910 (= e!4514703 e!4514707)))

(assert (=> b!7585910 (= c!1399176 (is-Star!20100 r!22341))))

(assert (= (and d!2318930 c!1399175) b!7585907))

(assert (= (and d!2318930 (not c!1399175)) b!7585900))

(assert (= (and b!7585900 res!3038847) b!7585901))

(assert (= (and b!7585901 c!1399173) b!7585902))

(assert (= (and b!7585901 (not c!1399173)) b!7585906))

(assert (= (and b!7585906 c!1399174) b!7585909))

(assert (= (and b!7585906 (not c!1399174)) b!7585910))

(assert (= (and b!7585909 (not res!3038846)) b!7585903))

(assert (= (and b!7585910 c!1399176) b!7585904))

(assert (= (and b!7585910 (not c!1399176)) b!7585908))

(assert (= (and b!7585904 (not res!3038845)) b!7585905))

(assert (= (or b!7585905 b!7585908) bm!695661))

(assert (= (or b!7585907 b!7585904) bm!695660))

(assert (=> bm!695660 m!8137378))

(declare-fun m!8137432 () Bool)

(assert (=> b!7585903 m!8137432))

(declare-fun m!8137434 () Bool)

(assert (=> bm!695661 m!8137434))

(declare-fun m!8137436 () Bool)

(assert (=> b!7585909 m!8137436))

(assert (=> b!7585806 d!2318930))

(declare-fun b!7585957 () Bool)

(declare-fun e!4514741 () Bool)

(declare-fun lt!2652987 () Bool)

(assert (=> b!7585957 (= e!4514741 (not lt!2652987))))

(declare-fun b!7585958 () Bool)

(declare-fun e!4514742 () Bool)

(declare-fun derivativeStep!5818 (Regex!20100 C!40526) Regex!20100)

(declare-fun head!15618 (List!72983) C!40526)

(declare-fun tail!15158 (List!72983) List!72983)

(assert (=> b!7585958 (= e!4514742 (matchR!9692 (derivativeStep!5818 r!22341 (head!15618 s!13436)) (tail!15158 s!13436)))))

(declare-fun b!7585959 () Bool)

(declare-fun e!4514740 () Bool)

(declare-fun e!4514738 () Bool)

(assert (=> b!7585959 (= e!4514740 e!4514738)))

(declare-fun res!3038874 () Bool)

(assert (=> b!7585959 (=> (not res!3038874) (not e!4514738))))

(assert (=> b!7585959 (= res!3038874 (not lt!2652987))))

(declare-fun d!2318936 () Bool)

(declare-fun e!4514743 () Bool)

(assert (=> d!2318936 e!4514743))

(declare-fun c!1399188 () Bool)

(assert (=> d!2318936 (= c!1399188 (is-EmptyExpr!20100 r!22341))))

(assert (=> d!2318936 (= lt!2652987 e!4514742)))

(declare-fun c!1399189 () Bool)

(assert (=> d!2318936 (= c!1399189 (isEmpty!41537 s!13436))))

(assert (=> d!2318936 (validRegex!10528 r!22341)))

(assert (=> d!2318936 (= (matchR!9692 r!22341 s!13436) lt!2652987)))

(declare-fun b!7585960 () Bool)

(declare-fun res!3038875 () Bool)

(assert (=> b!7585960 (=> res!3038875 e!4514740)))

(declare-fun e!4514739 () Bool)

(assert (=> b!7585960 (= res!3038875 e!4514739)))

(declare-fun res!3038880 () Bool)

(assert (=> b!7585960 (=> (not res!3038880) (not e!4514739))))

(assert (=> b!7585960 (= res!3038880 lt!2652987)))

(declare-fun b!7585961 () Bool)

(declare-fun e!4514737 () Bool)

(assert (=> b!7585961 (= e!4514738 e!4514737)))

(declare-fun res!3038881 () Bool)

(assert (=> b!7585961 (=> res!3038881 e!4514737)))

(declare-fun call!695675 () Bool)

(assert (=> b!7585961 (= res!3038881 call!695675)))

(declare-fun b!7585962 () Bool)

(declare-fun res!3038879 () Bool)

(assert (=> b!7585962 (=> res!3038879 e!4514737)))

(assert (=> b!7585962 (= res!3038879 (not (isEmpty!41537 (tail!15158 s!13436))))))

(declare-fun b!7585963 () Bool)

(declare-fun res!3038876 () Bool)

(assert (=> b!7585963 (=> res!3038876 e!4514740)))

(assert (=> b!7585963 (= res!3038876 (not (is-ElementMatch!20100 r!22341)))))

(assert (=> b!7585963 (= e!4514741 e!4514740)))

(declare-fun b!7585964 () Bool)

(assert (=> b!7585964 (= e!4514737 (not (= (head!15618 s!13436) (c!1399159 r!22341))))))

(declare-fun b!7585965 () Bool)

(assert (=> b!7585965 (= e!4514739 (= (head!15618 s!13436) (c!1399159 r!22341)))))

(declare-fun bm!695670 () Bool)

(assert (=> bm!695670 (= call!695675 (isEmpty!41537 s!13436))))

(declare-fun b!7585966 () Bool)

(assert (=> b!7585966 (= e!4514743 (= lt!2652987 call!695675))))

(declare-fun b!7585967 () Bool)

(declare-fun res!3038878 () Bool)

(assert (=> b!7585967 (=> (not res!3038878) (not e!4514739))))

(assert (=> b!7585967 (= res!3038878 (isEmpty!41537 (tail!15158 s!13436)))))

(declare-fun b!7585968 () Bool)

(declare-fun res!3038877 () Bool)

(assert (=> b!7585968 (=> (not res!3038877) (not e!4514739))))

(assert (=> b!7585968 (= res!3038877 (not call!695675))))

(declare-fun b!7585969 () Bool)

(assert (=> b!7585969 (= e!4514743 e!4514741)))

(declare-fun c!1399187 () Bool)

(assert (=> b!7585969 (= c!1399187 (is-EmptyLang!20100 r!22341))))

(declare-fun b!7585970 () Bool)

(declare-fun nullable!8791 (Regex!20100) Bool)

(assert (=> b!7585970 (= e!4514742 (nullable!8791 r!22341))))

(assert (= (and d!2318936 c!1399189) b!7585970))

(assert (= (and d!2318936 (not c!1399189)) b!7585958))

(assert (= (and d!2318936 c!1399188) b!7585966))

(assert (= (and d!2318936 (not c!1399188)) b!7585969))

(assert (= (and b!7585969 c!1399187) b!7585957))

(assert (= (and b!7585969 (not c!1399187)) b!7585963))

(assert (= (and b!7585963 (not res!3038876)) b!7585960))

(assert (= (and b!7585960 res!3038880) b!7585968))

(assert (= (and b!7585968 res!3038877) b!7585967))

(assert (= (and b!7585967 res!3038878) b!7585965))

(assert (= (and b!7585960 (not res!3038875)) b!7585959))

(assert (= (and b!7585959 res!3038874) b!7585961))

(assert (= (and b!7585961 (not res!3038881)) b!7585962))

(assert (= (and b!7585962 (not res!3038879)) b!7585964))

(assert (= (or b!7585966 b!7585961 b!7585968) bm!695670))

(declare-fun m!8137446 () Bool)

(assert (=> b!7585962 m!8137446))

(assert (=> b!7585962 m!8137446))

(declare-fun m!8137448 () Bool)

(assert (=> b!7585962 m!8137448))

(declare-fun m!8137450 () Bool)

(assert (=> b!7585970 m!8137450))

(assert (=> b!7585967 m!8137446))

(assert (=> b!7585967 m!8137446))

(assert (=> b!7585967 m!8137448))

(declare-fun m!8137452 () Bool)

(assert (=> b!7585964 m!8137452))

(assert (=> d!2318936 m!8137378))

(assert (=> d!2318936 m!8137398))

(assert (=> b!7585958 m!8137452))

(assert (=> b!7585958 m!8137452))

(declare-fun m!8137454 () Bool)

(assert (=> b!7585958 m!8137454))

(assert (=> b!7585958 m!8137446))

(assert (=> b!7585958 m!8137454))

(assert (=> b!7585958 m!8137446))

(declare-fun m!8137456 () Bool)

(assert (=> b!7585958 m!8137456))

(assert (=> b!7585965 m!8137452))

(assert (=> bm!695670 m!8137378))

(assert (=> b!7585806 d!2318936))

(declare-fun d!2318944 () Bool)

(assert (=> d!2318944 (= (matchR!9692 r!22341 s!13436) (matchRSpec!4413 r!22341 s!13436))))

(declare-fun lt!2652992 () Unit!167156)

(declare-fun choose!58642 (Regex!20100 List!72983) Unit!167156)

(assert (=> d!2318944 (= lt!2652992 (choose!58642 r!22341 s!13436))))

(assert (=> d!2318944 (validRegex!10528 r!22341)))

(assert (=> d!2318944 (= (mainMatchTheorem!4407 r!22341 s!13436) lt!2652992)))

(declare-fun bs!1941233 () Bool)

(assert (= bs!1941233 d!2318944))

(assert (=> bs!1941233 m!8137382))

(assert (=> bs!1941233 m!8137380))

(declare-fun m!8137458 () Bool)

(assert (=> bs!1941233 m!8137458))

(assert (=> bs!1941233 m!8137398))

(assert (=> b!7585806 d!2318944))

(declare-fun b!7585993 () Bool)

(declare-fun res!3038897 () Bool)

(declare-fun e!4514765 () Bool)

(assert (=> b!7585993 (=> (not res!3038897) (not e!4514765))))

(declare-fun call!695684 () Bool)

(assert (=> b!7585993 (= res!3038897 call!695684)))

(declare-fun e!4514761 () Bool)

(assert (=> b!7585993 (= e!4514761 e!4514765)))

(declare-fun b!7585994 () Bool)

(declare-fun call!695682 () Bool)

(assert (=> b!7585994 (= e!4514765 call!695682)))

(declare-fun b!7585995 () Bool)

(declare-fun e!4514762 () Bool)

(declare-fun e!4514766 () Bool)

(assert (=> b!7585995 (= e!4514762 e!4514766)))

(declare-fun res!3038898 () Bool)

(assert (=> b!7585995 (=> (not res!3038898) (not e!4514766))))

(assert (=> b!7585995 (= res!3038898 call!695682)))

(declare-fun b!7585996 () Bool)

(declare-fun e!4514763 () Bool)

(declare-fun call!695683 () Bool)

(assert (=> b!7585996 (= e!4514763 call!695683)))

(declare-fun b!7585997 () Bool)

(declare-fun e!4514760 () Bool)

(declare-fun e!4514764 () Bool)

(assert (=> b!7585997 (= e!4514760 e!4514764)))

(declare-fun c!1399195 () Bool)

(assert (=> b!7585997 (= c!1399195 (is-Star!20100 (regTwo!40712 r!22341)))))

(declare-fun b!7585998 () Bool)

(assert (=> b!7585998 (= e!4514764 e!4514761)))

(declare-fun c!1399194 () Bool)

(assert (=> b!7585998 (= c!1399194 (is-Union!20100 (regTwo!40712 r!22341)))))

(declare-fun b!7585999 () Bool)

(assert (=> b!7585999 (= e!4514766 call!695684)))

(declare-fun b!7586000 () Bool)

(assert (=> b!7586000 (= e!4514764 e!4514763)))

(declare-fun res!3038900 () Bool)

(assert (=> b!7586000 (= res!3038900 (not (nullable!8791 (reg!20429 (regTwo!40712 r!22341)))))))

(assert (=> b!7586000 (=> (not res!3038900) (not e!4514763))))

(declare-fun b!7586001 () Bool)

(declare-fun res!3038896 () Bool)

(assert (=> b!7586001 (=> res!3038896 e!4514762)))

(assert (=> b!7586001 (= res!3038896 (not (is-Concat!28945 (regTwo!40712 r!22341))))))

(assert (=> b!7586001 (= e!4514761 e!4514762)))

(declare-fun d!2318946 () Bool)

(declare-fun res!3038899 () Bool)

(assert (=> d!2318946 (=> res!3038899 e!4514760)))

(assert (=> d!2318946 (= res!3038899 (is-ElementMatch!20100 (regTwo!40712 r!22341)))))

(assert (=> d!2318946 (= (validRegex!10528 (regTwo!40712 r!22341)) e!4514760)))

(declare-fun bm!695677 () Bool)

(assert (=> bm!695677 (= call!695683 (validRegex!10528 (ite c!1399195 (reg!20429 (regTwo!40712 r!22341)) (ite c!1399194 (regOne!40713 (regTwo!40712 r!22341)) (regTwo!40712 (regTwo!40712 r!22341))))))))

(declare-fun bm!695678 () Bool)

(assert (=> bm!695678 (= call!695682 (validRegex!10528 (ite c!1399194 (regTwo!40713 (regTwo!40712 r!22341)) (regOne!40712 (regTwo!40712 r!22341)))))))

(declare-fun bm!695679 () Bool)

(assert (=> bm!695679 (= call!695684 call!695683)))

(assert (= (and d!2318946 (not res!3038899)) b!7585997))

(assert (= (and b!7585997 c!1399195) b!7586000))

(assert (= (and b!7585997 (not c!1399195)) b!7585998))

(assert (= (and b!7586000 res!3038900) b!7585996))

(assert (= (and b!7585998 c!1399194) b!7585993))

(assert (= (and b!7585998 (not c!1399194)) b!7586001))

(assert (= (and b!7585993 res!3038897) b!7585994))

(assert (= (and b!7586001 (not res!3038896)) b!7585995))

(assert (= (and b!7585995 res!3038898) b!7585999))

(assert (= (or b!7585994 b!7585995) bm!695678))

(assert (= (or b!7585993 b!7585999) bm!695679))

(assert (= (or b!7585996 bm!695679) bm!695677))

(declare-fun m!8137464 () Bool)

(assert (=> b!7586000 m!8137464))

(declare-fun m!8137466 () Bool)

(assert (=> bm!695677 m!8137466))

(declare-fun m!8137468 () Bool)

(assert (=> bm!695678 m!8137468))

(assert (=> b!7585801 d!2318946))

(declare-fun d!2318950 () Bool)

(declare-fun lostCauseFct!527 (Regex!20100) Bool)

(assert (=> d!2318950 (= (lostCause!1876 r!22341) (lostCauseFct!527 r!22341))))

(declare-fun bs!1941236 () Bool)

(assert (= bs!1941236 d!2318950))

(declare-fun m!8137470 () Bool)

(assert (=> bs!1941236 m!8137470))

(assert (=> b!7585799 d!2318950))

(declare-fun d!2318952 () Bool)

(assert (=> d!2318952 (= (isEmpty!41537 s!13436) (is-Nil!72859 s!13436))))

(assert (=> b!7585803 d!2318952))

(declare-fun b!7586002 () Bool)

(declare-fun res!3038902 () Bool)

(declare-fun e!4514772 () Bool)

(assert (=> b!7586002 (=> (not res!3038902) (not e!4514772))))

(declare-fun call!695687 () Bool)

(assert (=> b!7586002 (= res!3038902 call!695687)))

(declare-fun e!4514768 () Bool)

(assert (=> b!7586002 (= e!4514768 e!4514772)))

(declare-fun b!7586003 () Bool)

(declare-fun call!695685 () Bool)

(assert (=> b!7586003 (= e!4514772 call!695685)))

(declare-fun b!7586004 () Bool)

(declare-fun e!4514769 () Bool)

(declare-fun e!4514773 () Bool)

(assert (=> b!7586004 (= e!4514769 e!4514773)))

(declare-fun res!3038903 () Bool)

(assert (=> b!7586004 (=> (not res!3038903) (not e!4514773))))

(assert (=> b!7586004 (= res!3038903 call!695685)))

(declare-fun b!7586005 () Bool)

(declare-fun e!4514770 () Bool)

(declare-fun call!695686 () Bool)

(assert (=> b!7586005 (= e!4514770 call!695686)))

(declare-fun b!7586006 () Bool)

(declare-fun e!4514767 () Bool)

(declare-fun e!4514771 () Bool)

(assert (=> b!7586006 (= e!4514767 e!4514771)))

(declare-fun c!1399197 () Bool)

(assert (=> b!7586006 (= c!1399197 (is-Star!20100 r!22341))))

(declare-fun b!7586007 () Bool)

(assert (=> b!7586007 (= e!4514771 e!4514768)))

(declare-fun c!1399196 () Bool)

(assert (=> b!7586007 (= c!1399196 (is-Union!20100 r!22341))))

(declare-fun b!7586008 () Bool)

(assert (=> b!7586008 (= e!4514773 call!695687)))

(declare-fun b!7586009 () Bool)

(assert (=> b!7586009 (= e!4514771 e!4514770)))

(declare-fun res!3038905 () Bool)

(assert (=> b!7586009 (= res!3038905 (not (nullable!8791 (reg!20429 r!22341))))))

(assert (=> b!7586009 (=> (not res!3038905) (not e!4514770))))

(declare-fun b!7586010 () Bool)

(declare-fun res!3038901 () Bool)

(assert (=> b!7586010 (=> res!3038901 e!4514769)))

(assert (=> b!7586010 (= res!3038901 (not (is-Concat!28945 r!22341)))))

(assert (=> b!7586010 (= e!4514768 e!4514769)))

(declare-fun d!2318954 () Bool)

(declare-fun res!3038904 () Bool)

(assert (=> d!2318954 (=> res!3038904 e!4514767)))

(assert (=> d!2318954 (= res!3038904 (is-ElementMatch!20100 r!22341))))

(assert (=> d!2318954 (= (validRegex!10528 r!22341) e!4514767)))

(declare-fun bm!695680 () Bool)

(assert (=> bm!695680 (= call!695686 (validRegex!10528 (ite c!1399197 (reg!20429 r!22341) (ite c!1399196 (regOne!40713 r!22341) (regTwo!40712 r!22341)))))))

(declare-fun bm!695681 () Bool)

(assert (=> bm!695681 (= call!695685 (validRegex!10528 (ite c!1399196 (regTwo!40713 r!22341) (regOne!40712 r!22341))))))

(declare-fun bm!695682 () Bool)

(assert (=> bm!695682 (= call!695687 call!695686)))

(assert (= (and d!2318954 (not res!3038904)) b!7586006))

(assert (= (and b!7586006 c!1399197) b!7586009))

(assert (= (and b!7586006 (not c!1399197)) b!7586007))

(assert (= (and b!7586009 res!3038905) b!7586005))

(assert (= (and b!7586007 c!1399196) b!7586002))

(assert (= (and b!7586007 (not c!1399196)) b!7586010))

(assert (= (and b!7586002 res!3038902) b!7586003))

(assert (= (and b!7586010 (not res!3038901)) b!7586004))

(assert (= (and b!7586004 res!3038903) b!7586008))

(assert (= (or b!7586003 b!7586004) bm!695681))

(assert (= (or b!7586002 b!7586008) bm!695682))

(assert (= (or b!7586005 bm!695682) bm!695680))

(declare-fun m!8137472 () Bool)

(assert (=> b!7586009 m!8137472))

(declare-fun m!8137474 () Bool)

(assert (=> bm!695680 m!8137474))

(declare-fun m!8137476 () Bool)

(assert (=> bm!695681 m!8137476))

(assert (=> start!732302 d!2318954))

(declare-fun b!7586011 () Bool)

(declare-fun res!3038907 () Bool)

(declare-fun e!4514779 () Bool)

(assert (=> b!7586011 (=> (not res!3038907) (not e!4514779))))

(declare-fun call!695690 () Bool)

(assert (=> b!7586011 (= res!3038907 call!695690)))

(declare-fun e!4514775 () Bool)

(assert (=> b!7586011 (= e!4514775 e!4514779)))

(declare-fun b!7586012 () Bool)

(declare-fun call!695688 () Bool)

(assert (=> b!7586012 (= e!4514779 call!695688)))

(declare-fun b!7586013 () Bool)

(declare-fun e!4514776 () Bool)

(declare-fun e!4514780 () Bool)

(assert (=> b!7586013 (= e!4514776 e!4514780)))

(declare-fun res!3038908 () Bool)

(assert (=> b!7586013 (=> (not res!3038908) (not e!4514780))))

(assert (=> b!7586013 (= res!3038908 call!695688)))

(declare-fun b!7586014 () Bool)

(declare-fun e!4514777 () Bool)

(declare-fun call!695689 () Bool)

(assert (=> b!7586014 (= e!4514777 call!695689)))

(declare-fun b!7586015 () Bool)

(declare-fun e!4514774 () Bool)

(declare-fun e!4514778 () Bool)

(assert (=> b!7586015 (= e!4514774 e!4514778)))

(declare-fun c!1399199 () Bool)

(assert (=> b!7586015 (= c!1399199 (is-Star!20100 (regOne!40712 r!22341)))))

(declare-fun b!7586016 () Bool)

(assert (=> b!7586016 (= e!4514778 e!4514775)))

(declare-fun c!1399198 () Bool)

(assert (=> b!7586016 (= c!1399198 (is-Union!20100 (regOne!40712 r!22341)))))

(declare-fun b!7586017 () Bool)

(assert (=> b!7586017 (= e!4514780 call!695690)))

(declare-fun b!7586018 () Bool)

(assert (=> b!7586018 (= e!4514778 e!4514777)))

(declare-fun res!3038910 () Bool)

(assert (=> b!7586018 (= res!3038910 (not (nullable!8791 (reg!20429 (regOne!40712 r!22341)))))))

(assert (=> b!7586018 (=> (not res!3038910) (not e!4514777))))

(declare-fun b!7586019 () Bool)

(declare-fun res!3038906 () Bool)

(assert (=> b!7586019 (=> res!3038906 e!4514776)))

(assert (=> b!7586019 (= res!3038906 (not (is-Concat!28945 (regOne!40712 r!22341))))))

(assert (=> b!7586019 (= e!4514775 e!4514776)))

(declare-fun d!2318956 () Bool)

(declare-fun res!3038909 () Bool)

(assert (=> d!2318956 (=> res!3038909 e!4514774)))

(assert (=> d!2318956 (= res!3038909 (is-ElementMatch!20100 (regOne!40712 r!22341)))))

(assert (=> d!2318956 (= (validRegex!10528 (regOne!40712 r!22341)) e!4514774)))

(declare-fun bm!695683 () Bool)

(assert (=> bm!695683 (= call!695689 (validRegex!10528 (ite c!1399199 (reg!20429 (regOne!40712 r!22341)) (ite c!1399198 (regOne!40713 (regOne!40712 r!22341)) (regTwo!40712 (regOne!40712 r!22341))))))))

(declare-fun bm!695684 () Bool)

(assert (=> bm!695684 (= call!695688 (validRegex!10528 (ite c!1399198 (regTwo!40713 (regOne!40712 r!22341)) (regOne!40712 (regOne!40712 r!22341)))))))

(declare-fun bm!695685 () Bool)

(assert (=> bm!695685 (= call!695690 call!695689)))

(assert (= (and d!2318956 (not res!3038909)) b!7586015))

(assert (= (and b!7586015 c!1399199) b!7586018))

(assert (= (and b!7586015 (not c!1399199)) b!7586016))

(assert (= (and b!7586018 res!3038910) b!7586014))

(assert (= (and b!7586016 c!1399198) b!7586011))

(assert (= (and b!7586016 (not c!1399198)) b!7586019))

(assert (= (and b!7586011 res!3038907) b!7586012))

(assert (= (and b!7586019 (not res!3038906)) b!7586013))

(assert (= (and b!7586013 res!3038908) b!7586017))

(assert (= (or b!7586012 b!7586013) bm!695684))

(assert (= (or b!7586011 b!7586017) bm!695685))

(assert (= (or b!7586014 bm!695685) bm!695683))

(declare-fun m!8137478 () Bool)

(assert (=> b!7586018 m!8137478))

(declare-fun m!8137480 () Bool)

(assert (=> bm!695683 m!8137480))

(declare-fun m!8137482 () Bool)

(assert (=> bm!695684 m!8137482))

(assert (=> b!7585807 d!2318956))

(declare-fun bs!1941237 () Bool)

(declare-fun d!2318958 () Bool)

(assert (= bs!1941237 (and d!2318958 b!7585807)))

(declare-fun lambda!467095 () Int)

(assert (=> bs!1941237 (= lambda!467095 lambda!467080)))

(declare-fun bs!1941238 () Bool)

(assert (= bs!1941238 (and d!2318958 b!7585905)))

(assert (=> bs!1941238 (not (= lambda!467095 lambda!467088))))

(declare-fun bs!1941239 () Bool)

(assert (= bs!1941239 (and d!2318958 b!7585908)))

(assert (=> bs!1941239 (not (= lambda!467095 lambda!467089))))

(assert (=> d!2318958 true))

(assert (=> d!2318958 true))

(assert (=> d!2318958 true))

(assert (=> d!2318958 (= (isDefined!13943 (findConcatSeparation!3357 (regOne!40712 r!22341) (regTwo!40712 r!22341) Nil!72859 s!13436 s!13436)) (Exists!4332 lambda!467095))))

(declare-fun lt!2652996 () Unit!167156)

(declare-fun choose!58643 (Regex!20100 Regex!20100 List!72983) Unit!167156)

(assert (=> d!2318958 (= lt!2652996 (choose!58643 (regOne!40712 r!22341) (regTwo!40712 r!22341) s!13436))))

(assert (=> d!2318958 (validRegex!10528 (regOne!40712 r!22341))))

(assert (=> d!2318958 (= (lemmaFindConcatSeparationEquivalentToExists!3115 (regOne!40712 r!22341) (regTwo!40712 r!22341) s!13436) lt!2652996)))

(declare-fun bs!1941240 () Bool)

(assert (= bs!1941240 d!2318958))

(declare-fun m!8137484 () Bool)

(assert (=> bs!1941240 m!8137484))

(assert (=> bs!1941240 m!8137392))

(assert (=> bs!1941240 m!8137396))

(assert (=> bs!1941240 m!8137392))

(declare-fun m!8137486 () Bool)

(assert (=> bs!1941240 m!8137486))

(assert (=> bs!1941240 m!8137394))

(assert (=> b!7585807 d!2318958))

(declare-fun b!7586060 () Bool)

(declare-fun res!3038939 () Bool)

(declare-fun e!4514805 () Bool)

(assert (=> b!7586060 (=> (not res!3038939) (not e!4514805))))

(declare-fun lt!2653010 () Option!17305)

(declare-fun get!25620 (Option!17305) tuple2!68922)

(assert (=> b!7586060 (= res!3038939 (matchR!9692 (regTwo!40712 r!22341) (_2!37764 (get!25620 lt!2653010))))))

(declare-fun b!7586061 () Bool)

(declare-fun e!4514806 () Bool)

(assert (=> b!7586061 (= e!4514806 (not (isDefined!13943 lt!2653010)))))

(declare-fun d!2318960 () Bool)

(assert (=> d!2318960 e!4514806))

(declare-fun res!3038937 () Bool)

(assert (=> d!2318960 (=> res!3038937 e!4514806)))

(assert (=> d!2318960 (= res!3038937 e!4514805)))

(declare-fun res!3038938 () Bool)

(assert (=> d!2318960 (=> (not res!3038938) (not e!4514805))))

(assert (=> d!2318960 (= res!3038938 (isDefined!13943 lt!2653010))))

(declare-fun e!4514804 () Option!17305)

(assert (=> d!2318960 (= lt!2653010 e!4514804)))

(declare-fun c!1399209 () Bool)

(declare-fun e!4514807 () Bool)

(assert (=> d!2318960 (= c!1399209 e!4514807)))

(declare-fun res!3038936 () Bool)

(assert (=> d!2318960 (=> (not res!3038936) (not e!4514807))))

(assert (=> d!2318960 (= res!3038936 (matchR!9692 (regOne!40712 r!22341) Nil!72859))))

(assert (=> d!2318960 (validRegex!10528 (regOne!40712 r!22341))))

(assert (=> d!2318960 (= (findConcatSeparation!3357 (regOne!40712 r!22341) (regTwo!40712 r!22341) Nil!72859 s!13436 s!13436) lt!2653010)))

(declare-fun b!7586062 () Bool)

(declare-fun res!3038935 () Bool)

(assert (=> b!7586062 (=> (not res!3038935) (not e!4514805))))

(assert (=> b!7586062 (= res!3038935 (matchR!9692 (regOne!40712 r!22341) (_1!37764 (get!25620 lt!2653010))))))

(declare-fun b!7586063 () Bool)

(assert (=> b!7586063 (= e!4514807 (matchR!9692 (regTwo!40712 r!22341) s!13436))))

(declare-fun b!7586064 () Bool)

(declare-fun e!4514803 () Option!17305)

(assert (=> b!7586064 (= e!4514803 None!17304)))

(declare-fun b!7586065 () Bool)

(declare-fun lt!2653009 () Unit!167156)

(declare-fun lt!2653011 () Unit!167156)

(assert (=> b!7586065 (= lt!2653009 lt!2653011)))

(declare-fun ++!17509 (List!72983 List!72983) List!72983)

(assert (=> b!7586065 (= (++!17509 (++!17509 Nil!72859 (Cons!72859 (h!79307 s!13436) Nil!72859)) (t!387718 s!13436)) s!13436)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3196 (List!72983 C!40526 List!72983 List!72983) Unit!167156)

(assert (=> b!7586065 (= lt!2653011 (lemmaMoveElementToOtherListKeepsConcatEq!3196 Nil!72859 (h!79307 s!13436) (t!387718 s!13436) s!13436))))

(assert (=> b!7586065 (= e!4514803 (findConcatSeparation!3357 (regOne!40712 r!22341) (regTwo!40712 r!22341) (++!17509 Nil!72859 (Cons!72859 (h!79307 s!13436) Nil!72859)) (t!387718 s!13436) s!13436))))

(declare-fun b!7586066 () Bool)

(assert (=> b!7586066 (= e!4514804 e!4514803)))

(declare-fun c!1399208 () Bool)

(assert (=> b!7586066 (= c!1399208 (is-Nil!72859 s!13436))))

(declare-fun b!7586067 () Bool)

(assert (=> b!7586067 (= e!4514805 (= (++!17509 (_1!37764 (get!25620 lt!2653010)) (_2!37764 (get!25620 lt!2653010))) s!13436))))

(declare-fun b!7586068 () Bool)

(assert (=> b!7586068 (= e!4514804 (Some!17304 (tuple2!68923 Nil!72859 s!13436)))))

(assert (= (and d!2318960 res!3038936) b!7586063))

(assert (= (and d!2318960 c!1399209) b!7586068))

(assert (= (and d!2318960 (not c!1399209)) b!7586066))

(assert (= (and b!7586066 c!1399208) b!7586064))

(assert (= (and b!7586066 (not c!1399208)) b!7586065))

(assert (= (and d!2318960 res!3038938) b!7586062))

(assert (= (and b!7586062 res!3038935) b!7586060))

(assert (= (and b!7586060 res!3038939) b!7586067))

(assert (= (and d!2318960 (not res!3038937)) b!7586061))

(declare-fun m!8137488 () Bool)

(assert (=> b!7586067 m!8137488))

(declare-fun m!8137490 () Bool)

(assert (=> b!7586067 m!8137490))

(declare-fun m!8137492 () Bool)

(assert (=> d!2318960 m!8137492))

(declare-fun m!8137494 () Bool)

(assert (=> d!2318960 m!8137494))

(assert (=> d!2318960 m!8137394))

(declare-fun m!8137496 () Bool)

(assert (=> b!7586065 m!8137496))

(assert (=> b!7586065 m!8137496))

(declare-fun m!8137498 () Bool)

(assert (=> b!7586065 m!8137498))

(declare-fun m!8137500 () Bool)

(assert (=> b!7586065 m!8137500))

(assert (=> b!7586065 m!8137496))

(declare-fun m!8137502 () Bool)

(assert (=> b!7586065 m!8137502))

(assert (=> b!7586061 m!8137492))

(assert (=> b!7586062 m!8137488))

(declare-fun m!8137504 () Bool)

(assert (=> b!7586062 m!8137504))

(declare-fun m!8137506 () Bool)

(assert (=> b!7586063 m!8137506))

(assert (=> b!7586060 m!8137488))

(declare-fun m!8137508 () Bool)

(assert (=> b!7586060 m!8137508))

(assert (=> b!7585807 d!2318960))

(declare-fun d!2318962 () Bool)

(declare-fun choose!58644 (Int) Bool)

(assert (=> d!2318962 (= (Exists!4332 lambda!467080) (choose!58644 lambda!467080))))

(declare-fun bs!1941241 () Bool)

(assert (= bs!1941241 d!2318962))

(declare-fun m!8137510 () Bool)

(assert (=> bs!1941241 m!8137510))

(assert (=> b!7585807 d!2318962))

(declare-fun d!2318964 () Bool)

(declare-fun isEmpty!41539 (Option!17305) Bool)

(assert (=> d!2318964 (= (isDefined!13943 (findConcatSeparation!3357 (regOne!40712 r!22341) (regTwo!40712 r!22341) Nil!72859 s!13436 s!13436)) (not (isEmpty!41539 (findConcatSeparation!3357 (regOne!40712 r!22341) (regTwo!40712 r!22341) Nil!72859 s!13436 s!13436))))))

(declare-fun bs!1941242 () Bool)

(assert (= bs!1941242 d!2318964))

(assert (=> bs!1941242 m!8137392))

(declare-fun m!8137512 () Bool)

(assert (=> bs!1941242 m!8137512))

(assert (=> b!7585807 d!2318964))

(declare-fun b!7586082 () Bool)

(declare-fun e!4514815 () Bool)

(declare-fun tp!2210844 () Bool)

(assert (=> b!7586082 (= e!4514815 (and tp_is_empty!50555 tp!2210844))))

(assert (=> b!7585805 (= tp!2210822 e!4514815)))

(assert (= (and b!7585805 (is-Cons!72859 (t!387718 s!13436))) b!7586082))

(declare-fun b!7586093 () Bool)

(declare-fun e!4514818 () Bool)

(assert (=> b!7586093 (= e!4514818 tp_is_empty!50555)))

(declare-fun b!7586095 () Bool)

(declare-fun tp!2210859 () Bool)

(assert (=> b!7586095 (= e!4514818 tp!2210859)))

(assert (=> b!7585800 (= tp!2210821 e!4514818)))

(declare-fun b!7586096 () Bool)

(declare-fun tp!2210855 () Bool)

(declare-fun tp!2210858 () Bool)

(assert (=> b!7586096 (= e!4514818 (and tp!2210855 tp!2210858))))

(declare-fun b!7586094 () Bool)

(declare-fun tp!2210856 () Bool)

(declare-fun tp!2210857 () Bool)

(assert (=> b!7586094 (= e!4514818 (and tp!2210856 tp!2210857))))

(assert (= (and b!7585800 (is-ElementMatch!20100 (regOne!40713 r!22341))) b!7586093))

(assert (= (and b!7585800 (is-Concat!28945 (regOne!40713 r!22341))) b!7586094))

(assert (= (and b!7585800 (is-Star!20100 (regOne!40713 r!22341))) b!7586095))

(assert (= (and b!7585800 (is-Union!20100 (regOne!40713 r!22341))) b!7586096))

(declare-fun b!7586097 () Bool)

(declare-fun e!4514819 () Bool)

(assert (=> b!7586097 (= e!4514819 tp_is_empty!50555)))

(declare-fun b!7586099 () Bool)

(declare-fun tp!2210864 () Bool)

(assert (=> b!7586099 (= e!4514819 tp!2210864)))

(assert (=> b!7585800 (= tp!2210820 e!4514819)))

(declare-fun b!7586100 () Bool)

(declare-fun tp!2210860 () Bool)

(declare-fun tp!2210863 () Bool)

(assert (=> b!7586100 (= e!4514819 (and tp!2210860 tp!2210863))))

(declare-fun b!7586098 () Bool)

(declare-fun tp!2210861 () Bool)

(declare-fun tp!2210862 () Bool)

(assert (=> b!7586098 (= e!4514819 (and tp!2210861 tp!2210862))))

(assert (= (and b!7585800 (is-ElementMatch!20100 (regTwo!40713 r!22341))) b!7586097))

(assert (= (and b!7585800 (is-Concat!28945 (regTwo!40713 r!22341))) b!7586098))

(assert (= (and b!7585800 (is-Star!20100 (regTwo!40713 r!22341))) b!7586099))

(assert (= (and b!7585800 (is-Union!20100 (regTwo!40713 r!22341))) b!7586100))

(declare-fun b!7586101 () Bool)

(declare-fun e!4514820 () Bool)

(assert (=> b!7586101 (= e!4514820 tp_is_empty!50555)))

(declare-fun b!7586103 () Bool)

(declare-fun tp!2210869 () Bool)

(assert (=> b!7586103 (= e!4514820 tp!2210869)))

(assert (=> b!7585798 (= tp!2210819 e!4514820)))

(declare-fun b!7586104 () Bool)

(declare-fun tp!2210865 () Bool)

(declare-fun tp!2210868 () Bool)

(assert (=> b!7586104 (= e!4514820 (and tp!2210865 tp!2210868))))

(declare-fun b!7586102 () Bool)

(declare-fun tp!2210866 () Bool)

(declare-fun tp!2210867 () Bool)

(assert (=> b!7586102 (= e!4514820 (and tp!2210866 tp!2210867))))

(assert (= (and b!7585798 (is-ElementMatch!20100 (reg!20429 r!22341))) b!7586101))

(assert (= (and b!7585798 (is-Concat!28945 (reg!20429 r!22341))) b!7586102))

(assert (= (and b!7585798 (is-Star!20100 (reg!20429 r!22341))) b!7586103))

(assert (= (and b!7585798 (is-Union!20100 (reg!20429 r!22341))) b!7586104))

(declare-fun b!7586105 () Bool)

(declare-fun e!4514821 () Bool)

(assert (=> b!7586105 (= e!4514821 tp_is_empty!50555)))

(declare-fun b!7586107 () Bool)

(declare-fun tp!2210874 () Bool)

(assert (=> b!7586107 (= e!4514821 tp!2210874)))

(assert (=> b!7585802 (= tp!2210818 e!4514821)))

(declare-fun b!7586108 () Bool)

(declare-fun tp!2210870 () Bool)

(declare-fun tp!2210873 () Bool)

(assert (=> b!7586108 (= e!4514821 (and tp!2210870 tp!2210873))))

(declare-fun b!7586106 () Bool)

(declare-fun tp!2210871 () Bool)

(declare-fun tp!2210872 () Bool)

(assert (=> b!7586106 (= e!4514821 (and tp!2210871 tp!2210872))))

(assert (= (and b!7585802 (is-ElementMatch!20100 (regOne!40712 r!22341))) b!7586105))

(assert (= (and b!7585802 (is-Concat!28945 (regOne!40712 r!22341))) b!7586106))

(assert (= (and b!7585802 (is-Star!20100 (regOne!40712 r!22341))) b!7586107))

(assert (= (and b!7585802 (is-Union!20100 (regOne!40712 r!22341))) b!7586108))

(declare-fun b!7586109 () Bool)

(declare-fun e!4514822 () Bool)

(assert (=> b!7586109 (= e!4514822 tp_is_empty!50555)))

(declare-fun b!7586111 () Bool)

(declare-fun tp!2210879 () Bool)

(assert (=> b!7586111 (= e!4514822 tp!2210879)))

(assert (=> b!7585802 (= tp!2210823 e!4514822)))

(declare-fun b!7586112 () Bool)

(declare-fun tp!2210875 () Bool)

(declare-fun tp!2210878 () Bool)

(assert (=> b!7586112 (= e!4514822 (and tp!2210875 tp!2210878))))

(declare-fun b!7586110 () Bool)

(declare-fun tp!2210876 () Bool)

(declare-fun tp!2210877 () Bool)

(assert (=> b!7586110 (= e!4514822 (and tp!2210876 tp!2210877))))

(assert (= (and b!7585802 (is-ElementMatch!20100 (regTwo!40712 r!22341))) b!7586109))

(assert (= (and b!7585802 (is-Concat!28945 (regTwo!40712 r!22341))) b!7586110))

(assert (= (and b!7585802 (is-Star!20100 (regTwo!40712 r!22341))) b!7586111))

(assert (= (and b!7585802 (is-Union!20100 (regTwo!40712 r!22341))) b!7586112))

(push 1)

(assert (not b!7585903))

(assert (not b!7586108))

(assert (not b!7586099))

(assert (not b!7586106))

(assert (not b!7585970))

(assert (not b!7586102))

(assert (not b!7586096))

(assert (not b!7586067))

(assert (not d!2318962))

(assert (not b!7586082))

(assert (not b!7585967))

(assert (not d!2318950))

(assert (not b!7585962))

(assert (not b!7586111))

(assert (not bm!695683))

(assert (not d!2318944))

(assert (not b!7586095))

(assert (not b!7586110))

(assert (not b!7586103))

(assert (not b!7586063))

(assert (not b!7586009))

(assert (not b!7586060))

(assert (not b!7586000))

(assert (not bm!695684))

(assert (not b!7586112))

(assert (not b!7585958))

(assert (not bm!695678))

(assert (not b!7585965))

(assert (not bm!695680))

(assert (not bm!695660))

(assert (not b!7585964))

(assert (not bm!695661))

(assert (not b!7586100))

(assert (not b!7586098))

(assert (not b!7586062))

(assert (not b!7586018))

(assert (not b!7586061))

(assert (not d!2318936))

(assert (not d!2318964))

(assert (not d!2318958))

(assert (not b!7585909))

(assert (not d!2318960))

(assert (not b!7586104))

(assert (not bm!695670))

(assert (not b!7586094))

(assert (not b!7586065))

(assert (not bm!695677))

(assert tp_is_empty!50555)

(assert (not b!7586107))

(assert (not bm!695681))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

