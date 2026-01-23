; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351242 () Bool)

(assert start!351242)

(declare-fun b!3737875 () Bool)

(declare-fun e!2311701 () Bool)

(declare-fun tp!1138331 () Bool)

(declare-fun tp!1138334 () Bool)

(assert (=> b!3737875 (= e!2311701 (and tp!1138331 tp!1138334))))

(declare-fun b!3737876 () Bool)

(declare-fun res!1516103 () Bool)

(declare-fun e!2311702 () Bool)

(assert (=> b!3737876 (=> (not res!1516103) (not e!2311702))))

(declare-datatypes ((C!22064 0))(
  ( (C!22065 (val!13080 Int)) )
))
(declare-datatypes ((Regex!10939 0))(
  ( (ElementMatch!10939 (c!647465 C!22064)) (Concat!17210 (regOne!22390 Regex!10939) (regTwo!22390 Regex!10939)) (EmptyExpr!10939) (Star!10939 (reg!11268 Regex!10939)) (EmptyLang!10939) (Union!10939 (regOne!22391 Regex!10939) (regTwo!22391 Regex!10939)) )
))
(declare-fun r!26968 () Regex!10939)

(declare-fun cNot!42 () C!22064)

(declare-datatypes ((List!39820 0))(
  ( (Nil!39696) (Cons!39696 (h!45116 C!22064) (t!302503 List!39820)) )
))
(declare-fun contains!8032 (List!39820 C!22064) Bool)

(declare-fun usedCharacters!1202 (Regex!10939) List!39820)

(assert (=> b!3737876 (= res!1516103 (not (contains!8032 (usedCharacters!1202 r!26968) cNot!42)))))

(declare-fun res!1516101 () Bool)

(assert (=> start!351242 (=> (not res!1516101) (not e!2311702))))

(declare-fun validRegex!5046 (Regex!10939) Bool)

(assert (=> start!351242 (= res!1516101 (validRegex!5046 r!26968))))

(assert (=> start!351242 e!2311702))

(assert (=> start!351242 e!2311701))

(declare-fun tp_is_empty!18893 () Bool)

(assert (=> start!351242 tp_is_empty!18893))

(declare-fun b!3737877 () Bool)

(assert (=> b!3737877 (= e!2311702 (not (validRegex!5046 (regOne!22390 r!26968))))))

(declare-fun b!3737878 () Bool)

(declare-fun tp!1138332 () Bool)

(assert (=> b!3737878 (= e!2311701 tp!1138332)))

(declare-fun b!3737879 () Bool)

(declare-fun res!1516102 () Bool)

(assert (=> b!3737879 (=> (not res!1516102) (not e!2311702))))

(get-info :version)

(assert (=> b!3737879 (= res!1516102 (and (not ((_ is EmptyExpr!10939) r!26968)) (not ((_ is EmptyLang!10939) r!26968)) (not ((_ is ElementMatch!10939) r!26968)) (not ((_ is Union!10939) r!26968)) (not ((_ is Star!10939) r!26968))))))

(declare-fun b!3737880 () Bool)

(declare-fun tp!1138330 () Bool)

(declare-fun tp!1138333 () Bool)

(assert (=> b!3737880 (= e!2311701 (and tp!1138330 tp!1138333))))

(declare-fun b!3737881 () Bool)

(assert (=> b!3737881 (= e!2311701 tp_is_empty!18893)))

(declare-fun b!3737882 () Bool)

(declare-fun res!1516104 () Bool)

(assert (=> b!3737882 (=> (not res!1516104) (not e!2311702))))

(declare-fun nullable!3847 (Regex!10939) Bool)

(assert (=> b!3737882 (= res!1516104 (not (nullable!3847 (regOne!22390 r!26968))))))

(assert (= (and start!351242 res!1516101) b!3737876))

(assert (= (and b!3737876 res!1516103) b!3737879))

(assert (= (and b!3737879 res!1516102) b!3737882))

(assert (= (and b!3737882 res!1516104) b!3737877))

(assert (= (and start!351242 ((_ is ElementMatch!10939) r!26968)) b!3737881))

(assert (= (and start!351242 ((_ is Concat!17210) r!26968)) b!3737880))

(assert (= (and start!351242 ((_ is Star!10939) r!26968)) b!3737878))

(assert (= (and start!351242 ((_ is Union!10939) r!26968)) b!3737875))

(declare-fun m!4234255 () Bool)

(assert (=> b!3737876 m!4234255))

(assert (=> b!3737876 m!4234255))

(declare-fun m!4234257 () Bool)

(assert (=> b!3737876 m!4234257))

(declare-fun m!4234259 () Bool)

(assert (=> start!351242 m!4234259))

(declare-fun m!4234261 () Bool)

(assert (=> b!3737877 m!4234261))

(declare-fun m!4234263 () Bool)

(assert (=> b!3737882 m!4234263))

(check-sat (not b!3737878) (not b!3737882) (not b!3737877) (not b!3737875) (not start!351242) (not b!3737876) tp_is_empty!18893 (not b!3737880))
(check-sat)
(get-model)

(declare-fun b!3737923 () Bool)

(declare-fun e!2311735 () Bool)

(declare-fun e!2311733 () Bool)

(assert (=> b!3737923 (= e!2311735 e!2311733)))

(declare-fun c!647479 () Bool)

(assert (=> b!3737923 (= c!647479 ((_ is Star!10939) r!26968))))

(declare-fun bm!273934 () Bool)

(declare-fun call!273941 () Bool)

(declare-fun c!647478 () Bool)

(assert (=> bm!273934 (= call!273941 (validRegex!5046 (ite c!647479 (reg!11268 r!26968) (ite c!647478 (regTwo!22391 r!26968) (regTwo!22390 r!26968)))))))

(declare-fun b!3737924 () Bool)

(declare-fun res!1516124 () Bool)

(declare-fun e!2311732 () Bool)

(assert (=> b!3737924 (=> (not res!1516124) (not e!2311732))))

(declare-fun call!273939 () Bool)

(assert (=> b!3737924 (= res!1516124 call!273939)))

(declare-fun e!2311736 () Bool)

(assert (=> b!3737924 (= e!2311736 e!2311732)))

(declare-fun d!1091957 () Bool)

(declare-fun res!1516121 () Bool)

(assert (=> d!1091957 (=> res!1516121 e!2311735)))

(assert (=> d!1091957 (= res!1516121 ((_ is ElementMatch!10939) r!26968))))

(assert (=> d!1091957 (= (validRegex!5046 r!26968) e!2311735)))

(declare-fun b!3737925 () Bool)

(declare-fun e!2311731 () Bool)

(assert (=> b!3737925 (= e!2311733 e!2311731)))

(declare-fun res!1516122 () Bool)

(assert (=> b!3737925 (= res!1516122 (not (nullable!3847 (reg!11268 r!26968))))))

(assert (=> b!3737925 (=> (not res!1516122) (not e!2311731))))

(declare-fun b!3737926 () Bool)

(assert (=> b!3737926 (= e!2311733 e!2311736)))

(assert (=> b!3737926 (= c!647478 ((_ is Union!10939) r!26968))))

(declare-fun bm!273935 () Bool)

(assert (=> bm!273935 (= call!273939 (validRegex!5046 (ite c!647478 (regOne!22391 r!26968) (regOne!22390 r!26968))))))

(declare-fun b!3737927 () Bool)

(declare-fun e!2311734 () Bool)

(declare-fun call!273940 () Bool)

(assert (=> b!3737927 (= e!2311734 call!273940)))

(declare-fun b!3737928 () Bool)

(declare-fun res!1516123 () Bool)

(declare-fun e!2311737 () Bool)

(assert (=> b!3737928 (=> res!1516123 e!2311737)))

(assert (=> b!3737928 (= res!1516123 (not ((_ is Concat!17210) r!26968)))))

(assert (=> b!3737928 (= e!2311736 e!2311737)))

(declare-fun b!3737929 () Bool)

(assert (=> b!3737929 (= e!2311732 call!273940)))

(declare-fun bm!273936 () Bool)

(assert (=> bm!273936 (= call!273940 call!273941)))

(declare-fun b!3737930 () Bool)

(assert (=> b!3737930 (= e!2311731 call!273941)))

(declare-fun b!3737931 () Bool)

(assert (=> b!3737931 (= e!2311737 e!2311734)))

(declare-fun res!1516125 () Bool)

(assert (=> b!3737931 (=> (not res!1516125) (not e!2311734))))

(assert (=> b!3737931 (= res!1516125 call!273939)))

(assert (= (and d!1091957 (not res!1516121)) b!3737923))

(assert (= (and b!3737923 c!647479) b!3737925))

(assert (= (and b!3737923 (not c!647479)) b!3737926))

(assert (= (and b!3737925 res!1516122) b!3737930))

(assert (= (and b!3737926 c!647478) b!3737924))

(assert (= (and b!3737926 (not c!647478)) b!3737928))

(assert (= (and b!3737924 res!1516124) b!3737929))

(assert (= (and b!3737928 (not res!1516123)) b!3737931))

(assert (= (and b!3737931 res!1516125) b!3737927))

(assert (= (or b!3737929 b!3737927) bm!273936))

(assert (= (or b!3737924 b!3737931) bm!273935))

(assert (= (or b!3737930 bm!273936) bm!273934))

(declare-fun m!4234271 () Bool)

(assert (=> bm!273934 m!4234271))

(declare-fun m!4234273 () Bool)

(assert (=> b!3737925 m!4234273))

(declare-fun m!4234275 () Bool)

(assert (=> bm!273935 m!4234275))

(assert (=> start!351242 d!1091957))

(declare-fun d!1091961 () Bool)

(declare-fun lt!1299078 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5796 (List!39820) (InoxSet C!22064))

(assert (=> d!1091961 (= lt!1299078 (select (content!5796 (usedCharacters!1202 r!26968)) cNot!42))))

(declare-fun e!2311746 () Bool)

(assert (=> d!1091961 (= lt!1299078 e!2311746)))

(declare-fun res!1516131 () Bool)

(assert (=> d!1091961 (=> (not res!1516131) (not e!2311746))))

(assert (=> d!1091961 (= res!1516131 ((_ is Cons!39696) (usedCharacters!1202 r!26968)))))

(assert (=> d!1091961 (= (contains!8032 (usedCharacters!1202 r!26968) cNot!42) lt!1299078)))

(declare-fun b!3737944 () Bool)

(declare-fun e!2311747 () Bool)

(assert (=> b!3737944 (= e!2311746 e!2311747)))

(declare-fun res!1516130 () Bool)

(assert (=> b!3737944 (=> res!1516130 e!2311747)))

(assert (=> b!3737944 (= res!1516130 (= (h!45116 (usedCharacters!1202 r!26968)) cNot!42))))

(declare-fun b!3737945 () Bool)

(assert (=> b!3737945 (= e!2311747 (contains!8032 (t!302503 (usedCharacters!1202 r!26968)) cNot!42))))

(assert (= (and d!1091961 res!1516131) b!3737944))

(assert (= (and b!3737944 (not res!1516130)) b!3737945))

(assert (=> d!1091961 m!4234255))

(declare-fun m!4234277 () Bool)

(assert (=> d!1091961 m!4234277))

(declare-fun m!4234279 () Bool)

(assert (=> d!1091961 m!4234279))

(declare-fun m!4234281 () Bool)

(assert (=> b!3737945 m!4234281))

(assert (=> b!3737876 d!1091961))

(declare-fun b!3737980 () Bool)

(declare-fun e!2311771 () List!39820)

(declare-fun call!273963 () List!39820)

(assert (=> b!3737980 (= e!2311771 call!273963)))

(declare-fun b!3737981 () Bool)

(declare-fun e!2311773 () List!39820)

(declare-fun e!2311770 () List!39820)

(assert (=> b!3737981 (= e!2311773 e!2311770)))

(declare-fun c!647497 () Bool)

(assert (=> b!3737981 (= c!647497 ((_ is ElementMatch!10939) r!26968))))

(declare-fun b!3737982 () Bool)

(assert (=> b!3737982 (= e!2311773 Nil!39696)))

(declare-fun b!3737983 () Bool)

(declare-fun e!2311772 () List!39820)

(declare-fun call!273961 () List!39820)

(assert (=> b!3737983 (= e!2311772 call!273961)))

(declare-fun b!3737984 () Bool)

(assert (=> b!3737984 (= e!2311770 (Cons!39696 (c!647465 r!26968) Nil!39696))))

(declare-fun b!3737985 () Bool)

(assert (=> b!3737985 (= e!2311771 e!2311772)))

(declare-fun c!647498 () Bool)

(assert (=> b!3737985 (= c!647498 ((_ is Union!10939) r!26968))))

(declare-fun c!647496 () Bool)

(declare-fun bm!273955 () Bool)

(assert (=> bm!273955 (= call!273963 (usedCharacters!1202 (ite c!647496 (reg!11268 r!26968) (ite c!647498 (regTwo!22391 r!26968) (regOne!22390 r!26968)))))))

(declare-fun b!3737986 () Bool)

(assert (=> b!3737986 (= c!647496 ((_ is Star!10939) r!26968))))

(assert (=> b!3737986 (= e!2311770 e!2311771)))

(declare-fun d!1091963 () Bool)

(declare-fun c!647499 () Bool)

(assert (=> d!1091963 (= c!647499 (or ((_ is EmptyExpr!10939) r!26968) ((_ is EmptyLang!10939) r!26968)))))

(assert (=> d!1091963 (= (usedCharacters!1202 r!26968) e!2311773)))

(declare-fun bm!273956 () Bool)

(declare-fun call!273962 () List!39820)

(assert (=> bm!273956 (= call!273962 (usedCharacters!1202 (ite c!647498 (regOne!22391 r!26968) (regTwo!22390 r!26968))))))

(declare-fun bm!273957 () Bool)

(declare-fun call!273960 () List!39820)

(declare-fun ++!9863 (List!39820 List!39820) List!39820)

(assert (=> bm!273957 (= call!273961 (++!9863 (ite c!647498 call!273962 call!273960) (ite c!647498 call!273960 call!273962)))))

(declare-fun b!3737987 () Bool)

(assert (=> b!3737987 (= e!2311772 call!273961)))

(declare-fun bm!273958 () Bool)

(assert (=> bm!273958 (= call!273960 call!273963)))

(assert (= (and d!1091963 c!647499) b!3737982))

(assert (= (and d!1091963 (not c!647499)) b!3737981))

(assert (= (and b!3737981 c!647497) b!3737984))

(assert (= (and b!3737981 (not c!647497)) b!3737986))

(assert (= (and b!3737986 c!647496) b!3737980))

(assert (= (and b!3737986 (not c!647496)) b!3737985))

(assert (= (and b!3737985 c!647498) b!3737987))

(assert (= (and b!3737985 (not c!647498)) b!3737983))

(assert (= (or b!3737987 b!3737983) bm!273956))

(assert (= (or b!3737987 b!3737983) bm!273958))

(assert (= (or b!3737987 b!3737983) bm!273957))

(assert (= (or b!3737980 bm!273958) bm!273955))

(declare-fun m!4234291 () Bool)

(assert (=> bm!273955 m!4234291))

(declare-fun m!4234293 () Bool)

(assert (=> bm!273956 m!4234293))

(declare-fun m!4234295 () Bool)

(assert (=> bm!273957 m!4234295))

(assert (=> b!3737876 d!1091963))

(declare-fun b!3737997 () Bool)

(declare-fun e!2311785 () Bool)

(declare-fun e!2311783 () Bool)

(assert (=> b!3737997 (= e!2311785 e!2311783)))

(declare-fun c!647503 () Bool)

(assert (=> b!3737997 (= c!647503 ((_ is Star!10939) (regOne!22390 r!26968)))))

(declare-fun bm!273962 () Bool)

(declare-fun c!647502 () Bool)

(declare-fun call!273969 () Bool)

(assert (=> bm!273962 (= call!273969 (validRegex!5046 (ite c!647503 (reg!11268 (regOne!22390 r!26968)) (ite c!647502 (regTwo!22391 (regOne!22390 r!26968)) (regTwo!22390 (regOne!22390 r!26968))))))))

(declare-fun b!3737998 () Bool)

(declare-fun res!1516150 () Bool)

(declare-fun e!2311782 () Bool)

(assert (=> b!3737998 (=> (not res!1516150) (not e!2311782))))

(declare-fun call!273967 () Bool)

(assert (=> b!3737998 (= res!1516150 call!273967)))

(declare-fun e!2311786 () Bool)

(assert (=> b!3737998 (= e!2311786 e!2311782)))

(declare-fun d!1091969 () Bool)

(declare-fun res!1516147 () Bool)

(assert (=> d!1091969 (=> res!1516147 e!2311785)))

(assert (=> d!1091969 (= res!1516147 ((_ is ElementMatch!10939) (regOne!22390 r!26968)))))

(assert (=> d!1091969 (= (validRegex!5046 (regOne!22390 r!26968)) e!2311785)))

(declare-fun b!3737999 () Bool)

(declare-fun e!2311781 () Bool)

(assert (=> b!3737999 (= e!2311783 e!2311781)))

(declare-fun res!1516148 () Bool)

(assert (=> b!3737999 (= res!1516148 (not (nullable!3847 (reg!11268 (regOne!22390 r!26968)))))))

(assert (=> b!3737999 (=> (not res!1516148) (not e!2311781))))

(declare-fun b!3738000 () Bool)

(assert (=> b!3738000 (= e!2311783 e!2311786)))

(assert (=> b!3738000 (= c!647502 ((_ is Union!10939) (regOne!22390 r!26968)))))

(declare-fun bm!273963 () Bool)

(assert (=> bm!273963 (= call!273967 (validRegex!5046 (ite c!647502 (regOne!22391 (regOne!22390 r!26968)) (regOne!22390 (regOne!22390 r!26968)))))))

(declare-fun b!3738001 () Bool)

(declare-fun e!2311784 () Bool)

(declare-fun call!273968 () Bool)

(assert (=> b!3738001 (= e!2311784 call!273968)))

(declare-fun b!3738002 () Bool)

(declare-fun res!1516149 () Bool)

(declare-fun e!2311787 () Bool)

(assert (=> b!3738002 (=> res!1516149 e!2311787)))

(assert (=> b!3738002 (= res!1516149 (not ((_ is Concat!17210) (regOne!22390 r!26968))))))

(assert (=> b!3738002 (= e!2311786 e!2311787)))

(declare-fun b!3738003 () Bool)

(assert (=> b!3738003 (= e!2311782 call!273968)))

(declare-fun bm!273964 () Bool)

(assert (=> bm!273964 (= call!273968 call!273969)))

(declare-fun b!3738004 () Bool)

(assert (=> b!3738004 (= e!2311781 call!273969)))

(declare-fun b!3738005 () Bool)

(assert (=> b!3738005 (= e!2311787 e!2311784)))

(declare-fun res!1516151 () Bool)

(assert (=> b!3738005 (=> (not res!1516151) (not e!2311784))))

(assert (=> b!3738005 (= res!1516151 call!273967)))

(assert (= (and d!1091969 (not res!1516147)) b!3737997))

(assert (= (and b!3737997 c!647503) b!3737999))

(assert (= (and b!3737997 (not c!647503)) b!3738000))

(assert (= (and b!3737999 res!1516148) b!3738004))

(assert (= (and b!3738000 c!647502) b!3737998))

(assert (= (and b!3738000 (not c!647502)) b!3738002))

(assert (= (and b!3737998 res!1516150) b!3738003))

(assert (= (and b!3738002 (not res!1516149)) b!3738005))

(assert (= (and b!3738005 res!1516151) b!3738001))

(assert (= (or b!3738003 b!3738001) bm!273964))

(assert (= (or b!3737998 b!3738005) bm!273963))

(assert (= (or b!3738004 bm!273964) bm!273962))

(declare-fun m!4234303 () Bool)

(assert (=> bm!273962 m!4234303))

(declare-fun m!4234305 () Bool)

(assert (=> b!3737999 m!4234305))

(declare-fun m!4234307 () Bool)

(assert (=> bm!273963 m!4234307))

(assert (=> b!3737877 d!1091969))

(declare-fun d!1091973 () Bool)

(declare-fun nullableFct!1100 (Regex!10939) Bool)

(assert (=> d!1091973 (= (nullable!3847 (regOne!22390 r!26968)) (nullableFct!1100 (regOne!22390 r!26968)))))

(declare-fun bs!575193 () Bool)

(assert (= bs!575193 d!1091973))

(declare-fun m!4234315 () Bool)

(assert (=> bs!575193 m!4234315))

(assert (=> b!3737882 d!1091973))

(declare-fun e!2311801 () Bool)

(assert (=> b!3737875 (= tp!1138331 e!2311801)))

(declare-fun b!3738043 () Bool)

(assert (=> b!3738043 (= e!2311801 tp_is_empty!18893)))

(declare-fun b!3738044 () Bool)

(declare-fun tp!1138365 () Bool)

(declare-fun tp!1138366 () Bool)

(assert (=> b!3738044 (= e!2311801 (and tp!1138365 tp!1138366))))

(declare-fun b!3738046 () Bool)

(declare-fun tp!1138369 () Bool)

(declare-fun tp!1138367 () Bool)

(assert (=> b!3738046 (= e!2311801 (and tp!1138369 tp!1138367))))

(declare-fun b!3738045 () Bool)

(declare-fun tp!1138368 () Bool)

(assert (=> b!3738045 (= e!2311801 tp!1138368)))

(assert (= (and b!3737875 ((_ is ElementMatch!10939) (regOne!22391 r!26968))) b!3738043))

(assert (= (and b!3737875 ((_ is Concat!17210) (regOne!22391 r!26968))) b!3738044))

(assert (= (and b!3737875 ((_ is Star!10939) (regOne!22391 r!26968))) b!3738045))

(assert (= (and b!3737875 ((_ is Union!10939) (regOne!22391 r!26968))) b!3738046))

(declare-fun e!2311803 () Bool)

(assert (=> b!3737875 (= tp!1138334 e!2311803)))

(declare-fun b!3738051 () Bool)

(assert (=> b!3738051 (= e!2311803 tp_is_empty!18893)))

(declare-fun b!3738052 () Bool)

(declare-fun tp!1138375 () Bool)

(declare-fun tp!1138376 () Bool)

(assert (=> b!3738052 (= e!2311803 (and tp!1138375 tp!1138376))))

(declare-fun b!3738054 () Bool)

(declare-fun tp!1138379 () Bool)

(declare-fun tp!1138377 () Bool)

(assert (=> b!3738054 (= e!2311803 (and tp!1138379 tp!1138377))))

(declare-fun b!3738053 () Bool)

(declare-fun tp!1138378 () Bool)

(assert (=> b!3738053 (= e!2311803 tp!1138378)))

(assert (= (and b!3737875 ((_ is ElementMatch!10939) (regTwo!22391 r!26968))) b!3738051))

(assert (= (and b!3737875 ((_ is Concat!17210) (regTwo!22391 r!26968))) b!3738052))

(assert (= (and b!3737875 ((_ is Star!10939) (regTwo!22391 r!26968))) b!3738053))

(assert (= (and b!3737875 ((_ is Union!10939) (regTwo!22391 r!26968))) b!3738054))

(declare-fun e!2311805 () Bool)

(assert (=> b!3737880 (= tp!1138330 e!2311805)))

(declare-fun b!3738059 () Bool)

(assert (=> b!3738059 (= e!2311805 tp_is_empty!18893)))

(declare-fun b!3738060 () Bool)

(declare-fun tp!1138385 () Bool)

(declare-fun tp!1138386 () Bool)

(assert (=> b!3738060 (= e!2311805 (and tp!1138385 tp!1138386))))

(declare-fun b!3738062 () Bool)

(declare-fun tp!1138389 () Bool)

(declare-fun tp!1138387 () Bool)

(assert (=> b!3738062 (= e!2311805 (and tp!1138389 tp!1138387))))

(declare-fun b!3738061 () Bool)

(declare-fun tp!1138388 () Bool)

(assert (=> b!3738061 (= e!2311805 tp!1138388)))

(assert (= (and b!3737880 ((_ is ElementMatch!10939) (regOne!22390 r!26968))) b!3738059))

(assert (= (and b!3737880 ((_ is Concat!17210) (regOne!22390 r!26968))) b!3738060))

(assert (= (and b!3737880 ((_ is Star!10939) (regOne!22390 r!26968))) b!3738061))

(assert (= (and b!3737880 ((_ is Union!10939) (regOne!22390 r!26968))) b!3738062))

(declare-fun e!2311807 () Bool)

(assert (=> b!3737880 (= tp!1138333 e!2311807)))

(declare-fun b!3738067 () Bool)

(assert (=> b!3738067 (= e!2311807 tp_is_empty!18893)))

(declare-fun b!3738068 () Bool)

(declare-fun tp!1138395 () Bool)

(declare-fun tp!1138396 () Bool)

(assert (=> b!3738068 (= e!2311807 (and tp!1138395 tp!1138396))))

(declare-fun b!3738070 () Bool)

(declare-fun tp!1138399 () Bool)

(declare-fun tp!1138397 () Bool)

(assert (=> b!3738070 (= e!2311807 (and tp!1138399 tp!1138397))))

(declare-fun b!3738069 () Bool)

(declare-fun tp!1138398 () Bool)

(assert (=> b!3738069 (= e!2311807 tp!1138398)))

(assert (= (and b!3737880 ((_ is ElementMatch!10939) (regTwo!22390 r!26968))) b!3738067))

(assert (= (and b!3737880 ((_ is Concat!17210) (regTwo!22390 r!26968))) b!3738068))

(assert (= (and b!3737880 ((_ is Star!10939) (regTwo!22390 r!26968))) b!3738069))

(assert (= (and b!3737880 ((_ is Union!10939) (regTwo!22390 r!26968))) b!3738070))

(declare-fun e!2311808 () Bool)

(assert (=> b!3737878 (= tp!1138332 e!2311808)))

(declare-fun b!3738071 () Bool)

(assert (=> b!3738071 (= e!2311808 tp_is_empty!18893)))

(declare-fun b!3738072 () Bool)

(declare-fun tp!1138400 () Bool)

(declare-fun tp!1138401 () Bool)

(assert (=> b!3738072 (= e!2311808 (and tp!1138400 tp!1138401))))

(declare-fun b!3738074 () Bool)

(declare-fun tp!1138404 () Bool)

(declare-fun tp!1138402 () Bool)

(assert (=> b!3738074 (= e!2311808 (and tp!1138404 tp!1138402))))

(declare-fun b!3738073 () Bool)

(declare-fun tp!1138403 () Bool)

(assert (=> b!3738073 (= e!2311808 tp!1138403)))

(assert (= (and b!3737878 ((_ is ElementMatch!10939) (reg!11268 r!26968))) b!3738071))

(assert (= (and b!3737878 ((_ is Concat!17210) (reg!11268 r!26968))) b!3738072))

(assert (= (and b!3737878 ((_ is Star!10939) (reg!11268 r!26968))) b!3738073))

(assert (= (and b!3737878 ((_ is Union!10939) (reg!11268 r!26968))) b!3738074))

(check-sat (not bm!273955) (not bm!273962) (not bm!273956) (not b!3738045) (not b!3738053) (not bm!273957) (not b!3738068) tp_is_empty!18893 (not d!1091961) (not b!3738046) (not b!3738052) (not b!3738072) (not bm!273963) (not b!3738070) (not b!3738074) (not bm!273934) (not d!1091973) (not b!3738060) (not bm!273935) (not b!3737999) (not b!3737945) (not b!3738061) (not b!3738073) (not b!3738044) (not b!3738054) (not b!3738062) (not b!3737925) (not b!3738069))
(check-sat)
