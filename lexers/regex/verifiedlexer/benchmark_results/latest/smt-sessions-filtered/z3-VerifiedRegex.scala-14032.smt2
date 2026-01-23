; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740866 () Bool)

(assert start!740866)

(declare-fun b!7790870 () Bool)

(declare-fun res!3104028 () Bool)

(declare-fun e!4613375 () Bool)

(assert (=> b!7790870 (=> (not res!3104028) (not e!4613375))))

(declare-datatypes ((C!42044 0))(
  ( (C!42045 (val!31462 Int)) )
))
(declare-datatypes ((List!73698 0))(
  ( (Nil!73574) (Cons!73574 (h!80022 C!42044) (t!388433 List!73698)) )
))
(declare-fun s!14292 () List!73698)

(get-info :version)

(assert (=> b!7790870 (= res!3104028 ((_ is Cons!73574) s!14292))))

(declare-fun b!7790871 () Bool)

(declare-fun e!4613371 () Bool)

(declare-fun tp!2293478 () Bool)

(declare-fun tp!2293485 () Bool)

(assert (=> b!7790871 (= e!4613371 (and tp!2293478 tp!2293485))))

(declare-fun b!7790872 () Bool)

(declare-fun e!4613374 () Bool)

(declare-datatypes ((Regex!20859 0))(
  ( (ElementMatch!20859 (c!1434816 C!42044)) (Concat!29704 (regOne!42230 Regex!20859) (regTwo!42230 Regex!20859)) (EmptyExpr!20859) (Star!20859 (reg!21188 Regex!20859)) (EmptyLang!20859) (Union!20859 (regOne!42231 Regex!20859) (regTwo!42231 Regex!20859)) )
))
(declare-fun lt!2673596 () Regex!20859)

(declare-fun validRegex!11273 (Regex!20859) Bool)

(assert (=> b!7790872 (= e!4613374 (validRegex!11273 lt!2673596))))

(declare-fun b!7790873 () Bool)

(declare-fun e!4613367 () Bool)

(declare-fun tp!2293477 () Bool)

(declare-fun tp!2293481 () Bool)

(assert (=> b!7790873 (= e!4613367 (and tp!2293477 tp!2293481))))

(declare-fun b!7790874 () Bool)

(declare-fun tp!2293486 () Bool)

(assert (=> b!7790874 (= e!4613367 tp!2293486)))

(declare-fun b!7790875 () Bool)

(declare-fun res!3104031 () Bool)

(declare-fun e!4613368 () Bool)

(assert (=> b!7790875 (=> (not res!3104031) (not e!4613368))))

(declare-fun r1!6279 () Regex!20859)

(declare-fun nullable!9243 (Regex!20859) Bool)

(assert (=> b!7790875 (= res!3104031 (nullable!9243 r1!6279))))

(declare-fun b!7790876 () Bool)

(declare-fun tp!2293479 () Bool)

(declare-fun tp!2293484 () Bool)

(assert (=> b!7790876 (= e!4613367 (and tp!2293479 tp!2293484))))

(declare-fun b!7790877 () Bool)

(declare-fun tp_is_empty!52073 () Bool)

(assert (=> b!7790877 (= e!4613367 tp_is_empty!52073)))

(declare-fun b!7790878 () Bool)

(declare-fun e!4613372 () Bool)

(assert (=> b!7790878 (= e!4613372 (not e!4613374))))

(declare-fun res!3104032 () Bool)

(assert (=> b!7790878 (=> res!3104032 e!4613374)))

(declare-fun lt!2673597 () Bool)

(assert (=> b!7790878 (= res!3104032 (not lt!2673597))))

(declare-fun e!4613373 () Bool)

(assert (=> b!7790878 e!4613373))

(declare-fun res!3104026 () Bool)

(assert (=> b!7790878 (=> res!3104026 e!4613373)))

(assert (=> b!7790878 (= res!3104026 lt!2673597)))

(declare-fun lt!2673600 () Regex!20859)

(declare-fun matchR!10319 (Regex!20859 List!73698) Bool)

(assert (=> b!7790878 (= lt!2673597 (matchR!10319 lt!2673600 (t!388433 s!14292)))))

(declare-datatypes ((Unit!168564 0))(
  ( (Unit!168565) )
))
(declare-fun lt!2673599 () Unit!168564)

(declare-fun lt!2673601 () Regex!20859)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!402 (Regex!20859 Regex!20859 List!73698) Unit!168564)

(assert (=> b!7790878 (= lt!2673599 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!402 lt!2673600 lt!2673601 (t!388433 s!14292)))))

(declare-fun b!7790879 () Bool)

(declare-fun tp!2293483 () Bool)

(declare-fun tp!2293482 () Bool)

(assert (=> b!7790879 (= e!4613371 (and tp!2293483 tp!2293482))))

(declare-fun b!7790880 () Bool)

(assert (=> b!7790880 (= e!4613373 (matchR!10319 lt!2673601 (t!388433 s!14292)))))

(declare-fun b!7790881 () Bool)

(assert (=> b!7790881 (= e!4613375 e!4613368)))

(declare-fun res!3104034 () Bool)

(assert (=> b!7790881 (=> (not res!3104034) (not e!4613368))))

(declare-fun lt!2673598 () Regex!20859)

(assert (=> b!7790881 (= res!3104034 (matchR!10319 lt!2673598 (t!388433 s!14292)))))

(declare-fun lt!2673602 () Regex!20859)

(declare-fun derivativeStep!6196 (Regex!20859 C!42044) Regex!20859)

(assert (=> b!7790881 (= lt!2673598 (derivativeStep!6196 lt!2673602 (h!80022 s!14292)))))

(declare-fun b!7790882 () Bool)

(declare-fun e!4613369 () Bool)

(declare-fun tp!2293480 () Bool)

(assert (=> b!7790882 (= e!4613369 (and tp_is_empty!52073 tp!2293480))))

(declare-fun b!7790883 () Bool)

(assert (=> b!7790883 (= e!4613371 tp_is_empty!52073)))

(declare-fun b!7790884 () Bool)

(assert (=> b!7790884 (= e!4613368 e!4613372)))

(declare-fun res!3104033 () Bool)

(assert (=> b!7790884 (=> (not res!3104033) (not e!4613372))))

(assert (=> b!7790884 (= res!3104033 (= lt!2673598 (Union!20859 lt!2673600 lt!2673601)))))

(declare-fun r2!6217 () Regex!20859)

(assert (=> b!7790884 (= lt!2673601 (derivativeStep!6196 r2!6217 (h!80022 s!14292)))))

(assert (=> b!7790884 (= lt!2673600 (Concat!29704 lt!2673596 r2!6217))))

(assert (=> b!7790884 (= lt!2673596 (derivativeStep!6196 r1!6279 (h!80022 s!14292)))))

(declare-fun res!3104029 () Bool)

(declare-fun e!4613370 () Bool)

(assert (=> start!740866 (=> (not res!3104029) (not e!4613370))))

(assert (=> start!740866 (= res!3104029 (validRegex!11273 r1!6279))))

(assert (=> start!740866 e!4613370))

(assert (=> start!740866 e!4613371))

(assert (=> start!740866 e!4613367))

(assert (=> start!740866 e!4613369))

(declare-fun b!7790885 () Bool)

(assert (=> b!7790885 (= e!4613370 e!4613375)))

(declare-fun res!3104027 () Bool)

(assert (=> b!7790885 (=> (not res!3104027) (not e!4613375))))

(assert (=> b!7790885 (= res!3104027 (matchR!10319 lt!2673602 s!14292))))

(assert (=> b!7790885 (= lt!2673602 (Concat!29704 r1!6279 r2!6217))))

(declare-fun b!7790886 () Bool)

(declare-fun tp!2293487 () Bool)

(assert (=> b!7790886 (= e!4613371 tp!2293487)))

(declare-fun b!7790887 () Bool)

(declare-fun res!3104030 () Bool)

(assert (=> b!7790887 (=> (not res!3104030) (not e!4613370))))

(assert (=> b!7790887 (= res!3104030 (validRegex!11273 r2!6217))))

(assert (= (and start!740866 res!3104029) b!7790887))

(assert (= (and b!7790887 res!3104030) b!7790885))

(assert (= (and b!7790885 res!3104027) b!7790870))

(assert (= (and b!7790870 res!3104028) b!7790881))

(assert (= (and b!7790881 res!3104034) b!7790875))

(assert (= (and b!7790875 res!3104031) b!7790884))

(assert (= (and b!7790884 res!3104033) b!7790878))

(assert (= (and b!7790878 (not res!3104026)) b!7790880))

(assert (= (and b!7790878 (not res!3104032)) b!7790872))

(assert (= (and start!740866 ((_ is ElementMatch!20859) r1!6279)) b!7790883))

(assert (= (and start!740866 ((_ is Concat!29704) r1!6279)) b!7790879))

(assert (= (and start!740866 ((_ is Star!20859) r1!6279)) b!7790886))

(assert (= (and start!740866 ((_ is Union!20859) r1!6279)) b!7790871))

(assert (= (and start!740866 ((_ is ElementMatch!20859) r2!6217)) b!7790877))

(assert (= (and start!740866 ((_ is Concat!29704) r2!6217)) b!7790873))

(assert (= (and start!740866 ((_ is Star!20859) r2!6217)) b!7790874))

(assert (= (and start!740866 ((_ is Union!20859) r2!6217)) b!7790876))

(assert (= (and start!740866 ((_ is Cons!73574) s!14292)) b!7790882))

(declare-fun m!8231926 () Bool)

(assert (=> b!7790884 m!8231926))

(declare-fun m!8231928 () Bool)

(assert (=> b!7790884 m!8231928))

(declare-fun m!8231930 () Bool)

(assert (=> b!7790872 m!8231930))

(declare-fun m!8231932 () Bool)

(assert (=> b!7790885 m!8231932))

(declare-fun m!8231934 () Bool)

(assert (=> b!7790887 m!8231934))

(declare-fun m!8231936 () Bool)

(assert (=> b!7790880 m!8231936))

(declare-fun m!8231938 () Bool)

(assert (=> b!7790881 m!8231938))

(declare-fun m!8231940 () Bool)

(assert (=> b!7790881 m!8231940))

(declare-fun m!8231942 () Bool)

(assert (=> start!740866 m!8231942))

(declare-fun m!8231944 () Bool)

(assert (=> b!7790875 m!8231944))

(declare-fun m!8231946 () Bool)

(assert (=> b!7790878 m!8231946))

(declare-fun m!8231948 () Bool)

(assert (=> b!7790878 m!8231948))

(check-sat (not b!7790885) (not b!7790880) (not b!7790873) (not b!7790886) (not b!7790871) (not b!7790879) (not b!7790882) (not b!7790881) tp_is_empty!52073 (not b!7790875) (not b!7790884) (not b!7790878) (not b!7790874) (not start!740866) (not b!7790887) (not b!7790872) (not b!7790876))
(check-sat)
(get-model)

(declare-fun d!2345921 () Bool)

(declare-fun nullableFct!3624 (Regex!20859) Bool)

(assert (=> d!2345921 (= (nullable!9243 r1!6279) (nullableFct!3624 r1!6279))))

(declare-fun bs!1966340 () Bool)

(assert (= bs!1966340 d!2345921))

(declare-fun m!8231950 () Bool)

(assert (=> bs!1966340 m!8231950))

(assert (=> b!7790875 d!2345921))

(declare-fun b!7790943 () Bool)

(declare-fun res!3104073 () Bool)

(declare-fun e!4613413 () Bool)

(assert (=> b!7790943 (=> res!3104073 e!4613413)))

(declare-fun isEmpty!42211 (List!73698) Bool)

(declare-fun tail!15477 (List!73698) List!73698)

(assert (=> b!7790943 (= res!3104073 (not (isEmpty!42211 (tail!15477 s!14292))))))

(declare-fun b!7790944 () Bool)

(declare-fun e!4613416 () Bool)

(declare-fun head!15936 (List!73698) C!42044)

(assert (=> b!7790944 (= e!4613416 (matchR!10319 (derivativeStep!6196 lt!2673602 (head!15936 s!14292)) (tail!15477 s!14292)))))

(declare-fun b!7790945 () Bool)

(declare-fun e!4613414 () Bool)

(declare-fun lt!2673605 () Bool)

(declare-fun call!722104 () Bool)

(assert (=> b!7790945 (= e!4613414 (= lt!2673605 call!722104))))

(declare-fun d!2345923 () Bool)

(assert (=> d!2345923 e!4613414))

(declare-fun c!1434830 () Bool)

(assert (=> d!2345923 (= c!1434830 ((_ is EmptyExpr!20859) lt!2673602))))

(assert (=> d!2345923 (= lt!2673605 e!4613416)))

(declare-fun c!1434831 () Bool)

(assert (=> d!2345923 (= c!1434831 (isEmpty!42211 s!14292))))

(assert (=> d!2345923 (validRegex!11273 lt!2673602)))

(assert (=> d!2345923 (= (matchR!10319 lt!2673602 s!14292) lt!2673605)))

(declare-fun b!7790946 () Bool)

(assert (=> b!7790946 (= e!4613413 (not (= (head!15936 s!14292) (c!1434816 lt!2673602))))))

(declare-fun b!7790947 () Bool)

(assert (=> b!7790947 (= e!4613416 (nullable!9243 lt!2673602))))

(declare-fun b!7790948 () Bool)

(declare-fun res!3104069 () Bool)

(declare-fun e!4613415 () Bool)

(assert (=> b!7790948 (=> res!3104069 e!4613415)))

(assert (=> b!7790948 (= res!3104069 (not ((_ is ElementMatch!20859) lt!2673602)))))

(declare-fun e!4613412 () Bool)

(assert (=> b!7790948 (= e!4613412 e!4613415)))

(declare-fun b!7790949 () Bool)

(declare-fun res!3104068 () Bool)

(declare-fun e!4613411 () Bool)

(assert (=> b!7790949 (=> (not res!3104068) (not e!4613411))))

(assert (=> b!7790949 (= res!3104068 (isEmpty!42211 (tail!15477 s!14292)))))

(declare-fun b!7790950 () Bool)

(declare-fun res!3104072 () Bool)

(assert (=> b!7790950 (=> res!3104072 e!4613415)))

(assert (=> b!7790950 (= res!3104072 e!4613411)))

(declare-fun res!3104067 () Bool)

(assert (=> b!7790950 (=> (not res!3104067) (not e!4613411))))

(assert (=> b!7790950 (= res!3104067 lt!2673605)))

(declare-fun b!7790951 () Bool)

(declare-fun e!4613417 () Bool)

(assert (=> b!7790951 (= e!4613415 e!4613417)))

(declare-fun res!3104066 () Bool)

(assert (=> b!7790951 (=> (not res!3104066) (not e!4613417))))

(assert (=> b!7790951 (= res!3104066 (not lt!2673605))))

(declare-fun b!7790952 () Bool)

(assert (=> b!7790952 (= e!4613414 e!4613412)))

(declare-fun c!1434829 () Bool)

(assert (=> b!7790952 (= c!1434829 ((_ is EmptyLang!20859) lt!2673602))))

(declare-fun b!7790953 () Bool)

(assert (=> b!7790953 (= e!4613417 e!4613413)))

(declare-fun res!3104070 () Bool)

(assert (=> b!7790953 (=> res!3104070 e!4613413)))

(assert (=> b!7790953 (= res!3104070 call!722104)))

(declare-fun b!7790954 () Bool)

(declare-fun res!3104071 () Bool)

(assert (=> b!7790954 (=> (not res!3104071) (not e!4613411))))

(assert (=> b!7790954 (= res!3104071 (not call!722104))))

(declare-fun bm!722099 () Bool)

(assert (=> bm!722099 (= call!722104 (isEmpty!42211 s!14292))))

(declare-fun b!7790955 () Bool)

(assert (=> b!7790955 (= e!4613412 (not lt!2673605))))

(declare-fun b!7790956 () Bool)

(assert (=> b!7790956 (= e!4613411 (= (head!15936 s!14292) (c!1434816 lt!2673602)))))

(assert (= (and d!2345923 c!1434831) b!7790947))

(assert (= (and d!2345923 (not c!1434831)) b!7790944))

(assert (= (and d!2345923 c!1434830) b!7790945))

(assert (= (and d!2345923 (not c!1434830)) b!7790952))

(assert (= (and b!7790952 c!1434829) b!7790955))

(assert (= (and b!7790952 (not c!1434829)) b!7790948))

(assert (= (and b!7790948 (not res!3104069)) b!7790950))

(assert (= (and b!7790950 res!3104067) b!7790954))

(assert (= (and b!7790954 res!3104071) b!7790949))

(assert (= (and b!7790949 res!3104068) b!7790956))

(assert (= (and b!7790950 (not res!3104072)) b!7790951))

(assert (= (and b!7790951 res!3104066) b!7790953))

(assert (= (and b!7790953 (not res!3104070)) b!7790943))

(assert (= (and b!7790943 (not res!3104073)) b!7790946))

(assert (= (or b!7790945 b!7790953 b!7790954) bm!722099))

(declare-fun m!8231960 () Bool)

(assert (=> b!7790946 m!8231960))

(declare-fun m!8231962 () Bool)

(assert (=> bm!722099 m!8231962))

(declare-fun m!8231964 () Bool)

(assert (=> b!7790947 m!8231964))

(declare-fun m!8231966 () Bool)

(assert (=> b!7790949 m!8231966))

(assert (=> b!7790949 m!8231966))

(declare-fun m!8231968 () Bool)

(assert (=> b!7790949 m!8231968))

(assert (=> d!2345923 m!8231962))

(declare-fun m!8231970 () Bool)

(assert (=> d!2345923 m!8231970))

(assert (=> b!7790943 m!8231966))

(assert (=> b!7790943 m!8231966))

(assert (=> b!7790943 m!8231968))

(assert (=> b!7790956 m!8231960))

(assert (=> b!7790944 m!8231960))

(assert (=> b!7790944 m!8231960))

(declare-fun m!8231972 () Bool)

(assert (=> b!7790944 m!8231972))

(assert (=> b!7790944 m!8231966))

(assert (=> b!7790944 m!8231972))

(assert (=> b!7790944 m!8231966))

(declare-fun m!8231974 () Bool)

(assert (=> b!7790944 m!8231974))

(assert (=> b!7790885 d!2345923))

(declare-fun b!7790957 () Bool)

(declare-fun res!3104081 () Bool)

(declare-fun e!4613420 () Bool)

(assert (=> b!7790957 (=> res!3104081 e!4613420)))

(assert (=> b!7790957 (= res!3104081 (not (isEmpty!42211 (tail!15477 (t!388433 s!14292)))))))

(declare-fun b!7790958 () Bool)

(declare-fun e!4613423 () Bool)

(assert (=> b!7790958 (= e!4613423 (matchR!10319 (derivativeStep!6196 lt!2673601 (head!15936 (t!388433 s!14292))) (tail!15477 (t!388433 s!14292))))))

(declare-fun b!7790959 () Bool)

(declare-fun e!4613421 () Bool)

(declare-fun lt!2673606 () Bool)

(declare-fun call!722105 () Bool)

(assert (=> b!7790959 (= e!4613421 (= lt!2673606 call!722105))))

(declare-fun d!2345931 () Bool)

(assert (=> d!2345931 e!4613421))

(declare-fun c!1434833 () Bool)

(assert (=> d!2345931 (= c!1434833 ((_ is EmptyExpr!20859) lt!2673601))))

(assert (=> d!2345931 (= lt!2673606 e!4613423)))

(declare-fun c!1434834 () Bool)

(assert (=> d!2345931 (= c!1434834 (isEmpty!42211 (t!388433 s!14292)))))

(assert (=> d!2345931 (validRegex!11273 lt!2673601)))

(assert (=> d!2345931 (= (matchR!10319 lt!2673601 (t!388433 s!14292)) lt!2673606)))

(declare-fun b!7790960 () Bool)

(assert (=> b!7790960 (= e!4613420 (not (= (head!15936 (t!388433 s!14292)) (c!1434816 lt!2673601))))))

(declare-fun b!7790961 () Bool)

(assert (=> b!7790961 (= e!4613423 (nullable!9243 lt!2673601))))

(declare-fun b!7790962 () Bool)

(declare-fun res!3104077 () Bool)

(declare-fun e!4613422 () Bool)

(assert (=> b!7790962 (=> res!3104077 e!4613422)))

(assert (=> b!7790962 (= res!3104077 (not ((_ is ElementMatch!20859) lt!2673601)))))

(declare-fun e!4613419 () Bool)

(assert (=> b!7790962 (= e!4613419 e!4613422)))

(declare-fun b!7790963 () Bool)

(declare-fun res!3104076 () Bool)

(declare-fun e!4613418 () Bool)

(assert (=> b!7790963 (=> (not res!3104076) (not e!4613418))))

(assert (=> b!7790963 (= res!3104076 (isEmpty!42211 (tail!15477 (t!388433 s!14292))))))

(declare-fun b!7790964 () Bool)

(declare-fun res!3104080 () Bool)

(assert (=> b!7790964 (=> res!3104080 e!4613422)))

(assert (=> b!7790964 (= res!3104080 e!4613418)))

(declare-fun res!3104075 () Bool)

(assert (=> b!7790964 (=> (not res!3104075) (not e!4613418))))

(assert (=> b!7790964 (= res!3104075 lt!2673606)))

(declare-fun b!7790965 () Bool)

(declare-fun e!4613424 () Bool)

(assert (=> b!7790965 (= e!4613422 e!4613424)))

(declare-fun res!3104074 () Bool)

(assert (=> b!7790965 (=> (not res!3104074) (not e!4613424))))

(assert (=> b!7790965 (= res!3104074 (not lt!2673606))))

(declare-fun b!7790966 () Bool)

(assert (=> b!7790966 (= e!4613421 e!4613419)))

(declare-fun c!1434832 () Bool)

(assert (=> b!7790966 (= c!1434832 ((_ is EmptyLang!20859) lt!2673601))))

(declare-fun b!7790967 () Bool)

(assert (=> b!7790967 (= e!4613424 e!4613420)))

(declare-fun res!3104078 () Bool)

(assert (=> b!7790967 (=> res!3104078 e!4613420)))

(assert (=> b!7790967 (= res!3104078 call!722105)))

(declare-fun b!7790968 () Bool)

(declare-fun res!3104079 () Bool)

(assert (=> b!7790968 (=> (not res!3104079) (not e!4613418))))

(assert (=> b!7790968 (= res!3104079 (not call!722105))))

(declare-fun bm!722100 () Bool)

(assert (=> bm!722100 (= call!722105 (isEmpty!42211 (t!388433 s!14292)))))

(declare-fun b!7790969 () Bool)

(assert (=> b!7790969 (= e!4613419 (not lt!2673606))))

(declare-fun b!7790970 () Bool)

(assert (=> b!7790970 (= e!4613418 (= (head!15936 (t!388433 s!14292)) (c!1434816 lt!2673601)))))

(assert (= (and d!2345931 c!1434834) b!7790961))

(assert (= (and d!2345931 (not c!1434834)) b!7790958))

(assert (= (and d!2345931 c!1434833) b!7790959))

(assert (= (and d!2345931 (not c!1434833)) b!7790966))

(assert (= (and b!7790966 c!1434832) b!7790969))

(assert (= (and b!7790966 (not c!1434832)) b!7790962))

(assert (= (and b!7790962 (not res!3104077)) b!7790964))

(assert (= (and b!7790964 res!3104075) b!7790968))

(assert (= (and b!7790968 res!3104079) b!7790963))

(assert (= (and b!7790963 res!3104076) b!7790970))

(assert (= (and b!7790964 (not res!3104080)) b!7790965))

(assert (= (and b!7790965 res!3104074) b!7790967))

(assert (= (and b!7790967 (not res!3104078)) b!7790957))

(assert (= (and b!7790957 (not res!3104081)) b!7790960))

(assert (= (or b!7790959 b!7790967 b!7790968) bm!722100))

(declare-fun m!8231976 () Bool)

(assert (=> b!7790960 m!8231976))

(declare-fun m!8231978 () Bool)

(assert (=> bm!722100 m!8231978))

(declare-fun m!8231980 () Bool)

(assert (=> b!7790961 m!8231980))

(declare-fun m!8231982 () Bool)

(assert (=> b!7790963 m!8231982))

(assert (=> b!7790963 m!8231982))

(declare-fun m!8231984 () Bool)

(assert (=> b!7790963 m!8231984))

(assert (=> d!2345931 m!8231978))

(declare-fun m!8231986 () Bool)

(assert (=> d!2345931 m!8231986))

(assert (=> b!7790957 m!8231982))

(assert (=> b!7790957 m!8231982))

(assert (=> b!7790957 m!8231984))

(assert (=> b!7790970 m!8231976))

(assert (=> b!7790958 m!8231976))

(assert (=> b!7790958 m!8231976))

(declare-fun m!8231988 () Bool)

(assert (=> b!7790958 m!8231988))

(assert (=> b!7790958 m!8231982))

(assert (=> b!7790958 m!8231988))

(assert (=> b!7790958 m!8231982))

(declare-fun m!8231990 () Bool)

(assert (=> b!7790958 m!8231990))

(assert (=> b!7790880 d!2345931))

(declare-fun b!7791040 () Bool)

(declare-fun e!4613473 () Bool)

(declare-fun call!722118 () Bool)

(assert (=> b!7791040 (= e!4613473 call!722118)))

(declare-fun b!7791041 () Bool)

(declare-fun e!4613469 () Bool)

(declare-fun e!4613472 () Bool)

(assert (=> b!7791041 (= e!4613469 e!4613472)))

(declare-fun c!1434851 () Bool)

(assert (=> b!7791041 (= c!1434851 ((_ is Union!20859) r2!6217))))

(declare-fun b!7791042 () Bool)

(declare-fun e!4613468 () Bool)

(assert (=> b!7791042 (= e!4613468 e!4613469)))

(declare-fun c!1434850 () Bool)

(assert (=> b!7791042 (= c!1434850 ((_ is Star!20859) r2!6217))))

(declare-fun b!7791043 () Bool)

(declare-fun res!3104123 () Bool)

(declare-fun e!4613467 () Bool)

(assert (=> b!7791043 (=> res!3104123 e!4613467)))

(assert (=> b!7791043 (= res!3104123 (not ((_ is Concat!29704) r2!6217)))))

(assert (=> b!7791043 (= e!4613472 e!4613467)))

(declare-fun b!7791044 () Bool)

(assert (=> b!7791044 (= e!4613467 e!4613473)))

(declare-fun res!3104125 () Bool)

(assert (=> b!7791044 (=> (not res!3104125) (not e!4613473))))

(declare-fun call!722119 () Bool)

(assert (=> b!7791044 (= res!3104125 call!722119)))

(declare-fun bm!722113 () Bool)

(assert (=> bm!722113 (= call!722118 (validRegex!11273 (ite c!1434851 (regTwo!42231 r2!6217) (regTwo!42230 r2!6217))))))

(declare-fun b!7791045 () Bool)

(declare-fun res!3104121 () Bool)

(declare-fun e!4613470 () Bool)

(assert (=> b!7791045 (=> (not res!3104121) (not e!4613470))))

(assert (=> b!7791045 (= res!3104121 call!722119)))

(assert (=> b!7791045 (= e!4613472 e!4613470)))

(declare-fun d!2345933 () Bool)

(declare-fun res!3104122 () Bool)

(assert (=> d!2345933 (=> res!3104122 e!4613468)))

(assert (=> d!2345933 (= res!3104122 ((_ is ElementMatch!20859) r2!6217))))

(assert (=> d!2345933 (= (validRegex!11273 r2!6217) e!4613468)))

(declare-fun b!7791046 () Bool)

(declare-fun e!4613471 () Bool)

(declare-fun call!722120 () Bool)

(assert (=> b!7791046 (= e!4613471 call!722120)))

(declare-fun b!7791047 () Bool)

(assert (=> b!7791047 (= e!4613469 e!4613471)))

(declare-fun res!3104124 () Bool)

(assert (=> b!7791047 (= res!3104124 (not (nullable!9243 (reg!21188 r2!6217))))))

(assert (=> b!7791047 (=> (not res!3104124) (not e!4613471))))

(declare-fun b!7791048 () Bool)

(assert (=> b!7791048 (= e!4613470 call!722118)))

(declare-fun bm!722114 () Bool)

(assert (=> bm!722114 (= call!722119 call!722120)))

(declare-fun bm!722115 () Bool)

(assert (=> bm!722115 (= call!722120 (validRegex!11273 (ite c!1434850 (reg!21188 r2!6217) (ite c!1434851 (regOne!42231 r2!6217) (regOne!42230 r2!6217)))))))

(assert (= (and d!2345933 (not res!3104122)) b!7791042))

(assert (= (and b!7791042 c!1434850) b!7791047))

(assert (= (and b!7791042 (not c!1434850)) b!7791041))

(assert (= (and b!7791047 res!3104124) b!7791046))

(assert (= (and b!7791041 c!1434851) b!7791045))

(assert (= (and b!7791041 (not c!1434851)) b!7791043))

(assert (= (and b!7791045 res!3104121) b!7791048))

(assert (= (and b!7791043 (not res!3104123)) b!7791044))

(assert (= (and b!7791044 res!3104125) b!7791040))

(assert (= (or b!7791045 b!7791044) bm!722114))

(assert (= (or b!7791048 b!7791040) bm!722113))

(assert (= (or b!7791046 bm!722114) bm!722115))

(declare-fun m!8232014 () Bool)

(assert (=> bm!722113 m!8232014))

(declare-fun m!8232016 () Bool)

(assert (=> b!7791047 m!8232016))

(declare-fun m!8232018 () Bool)

(assert (=> bm!722115 m!8232018))

(assert (=> b!7790887 d!2345933))

(declare-fun b!7791063 () Bool)

(declare-fun res!3104141 () Bool)

(declare-fun e!4613483 () Bool)

(assert (=> b!7791063 (=> res!3104141 e!4613483)))

(assert (=> b!7791063 (= res!3104141 (not (isEmpty!42211 (tail!15477 (t!388433 s!14292)))))))

(declare-fun b!7791064 () Bool)

(declare-fun e!4613486 () Bool)

(assert (=> b!7791064 (= e!4613486 (matchR!10319 (derivativeStep!6196 lt!2673598 (head!15936 (t!388433 s!14292))) (tail!15477 (t!388433 s!14292))))))

(declare-fun b!7791065 () Bool)

(declare-fun e!4613484 () Bool)

(declare-fun lt!2673611 () Bool)

(declare-fun call!722122 () Bool)

(assert (=> b!7791065 (= e!4613484 (= lt!2673611 call!722122))))

(declare-fun d!2345939 () Bool)

(assert (=> d!2345939 e!4613484))

(declare-fun c!1434856 () Bool)

(assert (=> d!2345939 (= c!1434856 ((_ is EmptyExpr!20859) lt!2673598))))

(assert (=> d!2345939 (= lt!2673611 e!4613486)))

(declare-fun c!1434857 () Bool)

(assert (=> d!2345939 (= c!1434857 (isEmpty!42211 (t!388433 s!14292)))))

(assert (=> d!2345939 (validRegex!11273 lt!2673598)))

(assert (=> d!2345939 (= (matchR!10319 lt!2673598 (t!388433 s!14292)) lt!2673611)))

(declare-fun b!7791066 () Bool)

(assert (=> b!7791066 (= e!4613483 (not (= (head!15936 (t!388433 s!14292)) (c!1434816 lt!2673598))))))

(declare-fun b!7791067 () Bool)

(assert (=> b!7791067 (= e!4613486 (nullable!9243 lt!2673598))))

(declare-fun b!7791068 () Bool)

(declare-fun res!3104137 () Bool)

(declare-fun e!4613485 () Bool)

(assert (=> b!7791068 (=> res!3104137 e!4613485)))

(assert (=> b!7791068 (= res!3104137 (not ((_ is ElementMatch!20859) lt!2673598)))))

(declare-fun e!4613482 () Bool)

(assert (=> b!7791068 (= e!4613482 e!4613485)))

(declare-fun b!7791069 () Bool)

(declare-fun res!3104136 () Bool)

(declare-fun e!4613481 () Bool)

(assert (=> b!7791069 (=> (not res!3104136) (not e!4613481))))

(assert (=> b!7791069 (= res!3104136 (isEmpty!42211 (tail!15477 (t!388433 s!14292))))))

(declare-fun b!7791070 () Bool)

(declare-fun res!3104140 () Bool)

(assert (=> b!7791070 (=> res!3104140 e!4613485)))

(assert (=> b!7791070 (= res!3104140 e!4613481)))

(declare-fun res!3104135 () Bool)

(assert (=> b!7791070 (=> (not res!3104135) (not e!4613481))))

(assert (=> b!7791070 (= res!3104135 lt!2673611)))

(declare-fun b!7791071 () Bool)

(declare-fun e!4613487 () Bool)

(assert (=> b!7791071 (= e!4613485 e!4613487)))

(declare-fun res!3104134 () Bool)

(assert (=> b!7791071 (=> (not res!3104134) (not e!4613487))))

(assert (=> b!7791071 (= res!3104134 (not lt!2673611))))

(declare-fun b!7791072 () Bool)

(assert (=> b!7791072 (= e!4613484 e!4613482)))

(declare-fun c!1434855 () Bool)

(assert (=> b!7791072 (= c!1434855 ((_ is EmptyLang!20859) lt!2673598))))

(declare-fun b!7791073 () Bool)

(assert (=> b!7791073 (= e!4613487 e!4613483)))

(declare-fun res!3104138 () Bool)

(assert (=> b!7791073 (=> res!3104138 e!4613483)))

(assert (=> b!7791073 (= res!3104138 call!722122)))

(declare-fun b!7791074 () Bool)

(declare-fun res!3104139 () Bool)

(assert (=> b!7791074 (=> (not res!3104139) (not e!4613481))))

(assert (=> b!7791074 (= res!3104139 (not call!722122))))

(declare-fun bm!722117 () Bool)

(assert (=> bm!722117 (= call!722122 (isEmpty!42211 (t!388433 s!14292)))))

(declare-fun b!7791075 () Bool)

(assert (=> b!7791075 (= e!4613482 (not lt!2673611))))

(declare-fun b!7791076 () Bool)

(assert (=> b!7791076 (= e!4613481 (= (head!15936 (t!388433 s!14292)) (c!1434816 lt!2673598)))))

(assert (= (and d!2345939 c!1434857) b!7791067))

(assert (= (and d!2345939 (not c!1434857)) b!7791064))

(assert (= (and d!2345939 c!1434856) b!7791065))

(assert (= (and d!2345939 (not c!1434856)) b!7791072))

(assert (= (and b!7791072 c!1434855) b!7791075))

(assert (= (and b!7791072 (not c!1434855)) b!7791068))

(assert (= (and b!7791068 (not res!3104137)) b!7791070))

(assert (= (and b!7791070 res!3104135) b!7791074))

(assert (= (and b!7791074 res!3104139) b!7791069))

(assert (= (and b!7791069 res!3104136) b!7791076))

(assert (= (and b!7791070 (not res!3104140)) b!7791071))

(assert (= (and b!7791071 res!3104134) b!7791073))

(assert (= (and b!7791073 (not res!3104138)) b!7791063))

(assert (= (and b!7791063 (not res!3104141)) b!7791066))

(assert (= (or b!7791065 b!7791073 b!7791074) bm!722117))

(assert (=> b!7791066 m!8231976))

(assert (=> bm!722117 m!8231978))

(declare-fun m!8232036 () Bool)

(assert (=> b!7791067 m!8232036))

(assert (=> b!7791069 m!8231982))

(assert (=> b!7791069 m!8231982))

(assert (=> b!7791069 m!8231984))

(assert (=> d!2345939 m!8231978))

(declare-fun m!8232038 () Bool)

(assert (=> d!2345939 m!8232038))

(assert (=> b!7791063 m!8231982))

(assert (=> b!7791063 m!8231982))

(assert (=> b!7791063 m!8231984))

(assert (=> b!7791076 m!8231976))

(assert (=> b!7791064 m!8231976))

(assert (=> b!7791064 m!8231976))

(declare-fun m!8232040 () Bool)

(assert (=> b!7791064 m!8232040))

(assert (=> b!7791064 m!8231982))

(assert (=> b!7791064 m!8232040))

(assert (=> b!7791064 m!8231982))

(declare-fun m!8232042 () Bool)

(assert (=> b!7791064 m!8232042))

(assert (=> b!7790881 d!2345939))

(declare-fun b!7791141 () Bool)

(declare-fun e!4613524 () Regex!20859)

(declare-fun e!4613522 () Regex!20859)

(assert (=> b!7791141 (= e!4613524 e!4613522)))

(declare-fun c!1434889 () Bool)

(assert (=> b!7791141 (= c!1434889 ((_ is ElementMatch!20859) lt!2673602))))

(declare-fun d!2345943 () Bool)

(declare-fun lt!2673618 () Regex!20859)

(assert (=> d!2345943 (validRegex!11273 lt!2673618)))

(assert (=> d!2345943 (= lt!2673618 e!4613524)))

(declare-fun c!1434888 () Bool)

(assert (=> d!2345943 (= c!1434888 (or ((_ is EmptyExpr!20859) lt!2673602) ((_ is EmptyLang!20859) lt!2673602)))))

(assert (=> d!2345943 (validRegex!11273 lt!2673602)))

(assert (=> d!2345943 (= (derivativeStep!6196 lt!2673602 (h!80022 s!14292)) lt!2673618)))

(declare-fun b!7791142 () Bool)

(declare-fun c!1434886 () Bool)

(assert (=> b!7791142 (= c!1434886 (nullable!9243 (regOne!42230 lt!2673602)))))

(declare-fun e!4613521 () Regex!20859)

(declare-fun e!4613523 () Regex!20859)

(assert (=> b!7791142 (= e!4613521 e!4613523)))

(declare-fun b!7791143 () Bool)

(declare-fun c!1434887 () Bool)

(assert (=> b!7791143 (= c!1434887 ((_ is Union!20859) lt!2673602))))

(declare-fun e!4613520 () Regex!20859)

(assert (=> b!7791143 (= e!4613522 e!4613520)))

(declare-fun bm!722139 () Bool)

(declare-fun call!722146 () Regex!20859)

(assert (=> bm!722139 (= call!722146 (derivativeStep!6196 (ite c!1434887 (regOne!42231 lt!2673602) (regOne!42230 lt!2673602)) (h!80022 s!14292)))))

(declare-fun b!7791144 () Bool)

(declare-fun call!722145 () Regex!20859)

(assert (=> b!7791144 (= e!4613520 (Union!20859 call!722146 call!722145))))

(declare-fun b!7791145 () Bool)

(declare-fun call!722147 () Regex!20859)

(assert (=> b!7791145 (= e!4613523 (Union!20859 (Concat!29704 call!722147 (regTwo!42230 lt!2673602)) EmptyLang!20859))))

(declare-fun bm!722140 () Bool)

(declare-fun call!722144 () Regex!20859)

(assert (=> bm!722140 (= call!722147 call!722144)))

(declare-fun b!7791146 () Bool)

(assert (=> b!7791146 (= e!4613523 (Union!20859 (Concat!29704 call!722146 (regTwo!42230 lt!2673602)) call!722147))))

(declare-fun bm!722141 () Bool)

(assert (=> bm!722141 (= call!722144 call!722145)))

(declare-fun b!7791147 () Bool)

(assert (=> b!7791147 (= e!4613520 e!4613521)))

(declare-fun c!1434890 () Bool)

(assert (=> b!7791147 (= c!1434890 ((_ is Star!20859) lt!2673602))))

(declare-fun b!7791148 () Bool)

(assert (=> b!7791148 (= e!4613521 (Concat!29704 call!722144 lt!2673602))))

(declare-fun b!7791149 () Bool)

(assert (=> b!7791149 (= e!4613524 EmptyLang!20859)))

(declare-fun bm!722142 () Bool)

(assert (=> bm!722142 (= call!722145 (derivativeStep!6196 (ite c!1434887 (regTwo!42231 lt!2673602) (ite c!1434890 (reg!21188 lt!2673602) (ite c!1434886 (regTwo!42230 lt!2673602) (regOne!42230 lt!2673602)))) (h!80022 s!14292)))))

(declare-fun b!7791150 () Bool)

(assert (=> b!7791150 (= e!4613522 (ite (= (h!80022 s!14292) (c!1434816 lt!2673602)) EmptyExpr!20859 EmptyLang!20859))))

(assert (= (and d!2345943 c!1434888) b!7791149))

(assert (= (and d!2345943 (not c!1434888)) b!7791141))

(assert (= (and b!7791141 c!1434889) b!7791150))

(assert (= (and b!7791141 (not c!1434889)) b!7791143))

(assert (= (and b!7791143 c!1434887) b!7791144))

(assert (= (and b!7791143 (not c!1434887)) b!7791147))

(assert (= (and b!7791147 c!1434890) b!7791148))

(assert (= (and b!7791147 (not c!1434890)) b!7791142))

(assert (= (and b!7791142 c!1434886) b!7791146))

(assert (= (and b!7791142 (not c!1434886)) b!7791145))

(assert (= (or b!7791146 b!7791145) bm!722140))

(assert (= (or b!7791148 bm!722140) bm!722141))

(assert (= (or b!7791144 bm!722141) bm!722142))

(assert (= (or b!7791144 b!7791146) bm!722139))

(declare-fun m!8232060 () Bool)

(assert (=> d!2345943 m!8232060))

(assert (=> d!2345943 m!8231970))

(declare-fun m!8232062 () Bool)

(assert (=> b!7791142 m!8232062))

(declare-fun m!8232064 () Bool)

(assert (=> bm!722139 m!8232064))

(declare-fun m!8232066 () Bool)

(assert (=> bm!722142 m!8232066))

(assert (=> b!7790881 d!2345943))

(declare-fun b!7791155 () Bool)

(declare-fun e!4613535 () Bool)

(declare-fun call!722148 () Bool)

(assert (=> b!7791155 (= e!4613535 call!722148)))

(declare-fun b!7791156 () Bool)

(declare-fun e!4613531 () Bool)

(declare-fun e!4613534 () Bool)

(assert (=> b!7791156 (= e!4613531 e!4613534)))

(declare-fun c!1434892 () Bool)

(assert (=> b!7791156 (= c!1434892 ((_ is Union!20859) r1!6279))))

(declare-fun b!7791157 () Bool)

(declare-fun e!4613530 () Bool)

(assert (=> b!7791157 (= e!4613530 e!4613531)))

(declare-fun c!1434891 () Bool)

(assert (=> b!7791157 (= c!1434891 ((_ is Star!20859) r1!6279))))

(declare-fun b!7791158 () Bool)

(declare-fun res!3104156 () Bool)

(declare-fun e!4613529 () Bool)

(assert (=> b!7791158 (=> res!3104156 e!4613529)))

(assert (=> b!7791158 (= res!3104156 (not ((_ is Concat!29704) r1!6279)))))

(assert (=> b!7791158 (= e!4613534 e!4613529)))

(declare-fun b!7791159 () Bool)

(assert (=> b!7791159 (= e!4613529 e!4613535)))

(declare-fun res!3104158 () Bool)

(assert (=> b!7791159 (=> (not res!3104158) (not e!4613535))))

(declare-fun call!722149 () Bool)

(assert (=> b!7791159 (= res!3104158 call!722149)))

(declare-fun bm!722143 () Bool)

(assert (=> bm!722143 (= call!722148 (validRegex!11273 (ite c!1434892 (regTwo!42231 r1!6279) (regTwo!42230 r1!6279))))))

(declare-fun b!7791160 () Bool)

(declare-fun res!3104154 () Bool)

(declare-fun e!4613532 () Bool)

(assert (=> b!7791160 (=> (not res!3104154) (not e!4613532))))

(assert (=> b!7791160 (= res!3104154 call!722149)))

(assert (=> b!7791160 (= e!4613534 e!4613532)))

(declare-fun d!2345949 () Bool)

(declare-fun res!3104155 () Bool)

(assert (=> d!2345949 (=> res!3104155 e!4613530)))

(assert (=> d!2345949 (= res!3104155 ((_ is ElementMatch!20859) r1!6279))))

(assert (=> d!2345949 (= (validRegex!11273 r1!6279) e!4613530)))

(declare-fun b!7791161 () Bool)

(declare-fun e!4613533 () Bool)

(declare-fun call!722150 () Bool)

(assert (=> b!7791161 (= e!4613533 call!722150)))

(declare-fun b!7791162 () Bool)

(assert (=> b!7791162 (= e!4613531 e!4613533)))

(declare-fun res!3104157 () Bool)

(assert (=> b!7791162 (= res!3104157 (not (nullable!9243 (reg!21188 r1!6279))))))

(assert (=> b!7791162 (=> (not res!3104157) (not e!4613533))))

(declare-fun b!7791163 () Bool)

(assert (=> b!7791163 (= e!4613532 call!722148)))

(declare-fun bm!722144 () Bool)

(assert (=> bm!722144 (= call!722149 call!722150)))

(declare-fun bm!722145 () Bool)

(assert (=> bm!722145 (= call!722150 (validRegex!11273 (ite c!1434891 (reg!21188 r1!6279) (ite c!1434892 (regOne!42231 r1!6279) (regOne!42230 r1!6279)))))))

(assert (= (and d!2345949 (not res!3104155)) b!7791157))

(assert (= (and b!7791157 c!1434891) b!7791162))

(assert (= (and b!7791157 (not c!1434891)) b!7791156))

(assert (= (and b!7791162 res!3104157) b!7791161))

(assert (= (and b!7791156 c!1434892) b!7791160))

(assert (= (and b!7791156 (not c!1434892)) b!7791158))

(assert (= (and b!7791160 res!3104154) b!7791163))

(assert (= (and b!7791158 (not res!3104156)) b!7791159))

(assert (= (and b!7791159 res!3104158) b!7791155))

(assert (= (or b!7791160 b!7791159) bm!722144))

(assert (= (or b!7791163 b!7791155) bm!722143))

(assert (= (or b!7791161 bm!722144) bm!722145))

(declare-fun m!8232068 () Bool)

(assert (=> bm!722143 m!8232068))

(declare-fun m!8232070 () Bool)

(assert (=> b!7791162 m!8232070))

(declare-fun m!8232076 () Bool)

(assert (=> bm!722145 m!8232076))

(assert (=> start!740866 d!2345949))

(declare-fun b!7791170 () Bool)

(declare-fun res!3104176 () Bool)

(declare-fun e!4613545 () Bool)

(assert (=> b!7791170 (=> res!3104176 e!4613545)))

(assert (=> b!7791170 (= res!3104176 (not (isEmpty!42211 (tail!15477 (t!388433 s!14292)))))))

(declare-fun b!7791172 () Bool)

(declare-fun e!4613550 () Bool)

(assert (=> b!7791172 (= e!4613550 (matchR!10319 (derivativeStep!6196 lt!2673600 (head!15936 (t!388433 s!14292))) (tail!15477 (t!388433 s!14292))))))

(declare-fun b!7791174 () Bool)

(declare-fun e!4613546 () Bool)

(declare-fun lt!2673622 () Bool)

(declare-fun call!722152 () Bool)

(assert (=> b!7791174 (= e!4613546 (= lt!2673622 call!722152))))

(declare-fun d!2345951 () Bool)

(assert (=> d!2345951 e!4613546))

(declare-fun c!1434894 () Bool)

(assert (=> d!2345951 (= c!1434894 ((_ is EmptyExpr!20859) lt!2673600))))

(assert (=> d!2345951 (= lt!2673622 e!4613550)))

(declare-fun c!1434898 () Bool)

(assert (=> d!2345951 (= c!1434898 (isEmpty!42211 (t!388433 s!14292)))))

(assert (=> d!2345951 (validRegex!11273 lt!2673600)))

(assert (=> d!2345951 (= (matchR!10319 lt!2673600 (t!388433 s!14292)) lt!2673622)))

(declare-fun b!7791176 () Bool)

(assert (=> b!7791176 (= e!4613545 (not (= (head!15936 (t!388433 s!14292)) (c!1434816 lt!2673600))))))

(declare-fun b!7791178 () Bool)

(assert (=> b!7791178 (= e!4613550 (nullable!9243 lt!2673600))))

(declare-fun b!7791180 () Bool)

(declare-fun res!3104170 () Bool)

(declare-fun e!4613547 () Bool)

(assert (=> b!7791180 (=> res!3104170 e!4613547)))

(assert (=> b!7791180 (= res!3104170 (not ((_ is ElementMatch!20859) lt!2673600)))))

(declare-fun e!4613540 () Bool)

(assert (=> b!7791180 (= e!4613540 e!4613547)))

(declare-fun b!7791182 () Bool)

(declare-fun res!3104169 () Bool)

(declare-fun e!4613538 () Bool)

(assert (=> b!7791182 (=> (not res!3104169) (not e!4613538))))

(assert (=> b!7791182 (= res!3104169 (isEmpty!42211 (tail!15477 (t!388433 s!14292))))))

(declare-fun b!7791184 () Bool)

(declare-fun res!3104175 () Bool)

(assert (=> b!7791184 (=> res!3104175 e!4613547)))

(assert (=> b!7791184 (= res!3104175 e!4613538)))

(declare-fun res!3104168 () Bool)

(assert (=> b!7791184 (=> (not res!3104168) (not e!4613538))))

(assert (=> b!7791184 (= res!3104168 lt!2673622)))

(declare-fun b!7791186 () Bool)

(declare-fun e!4613551 () Bool)

(assert (=> b!7791186 (= e!4613547 e!4613551)))

(declare-fun res!3104166 () Bool)

(assert (=> b!7791186 (=> (not res!3104166) (not e!4613551))))

(assert (=> b!7791186 (= res!3104166 (not lt!2673622))))

(declare-fun b!7791188 () Bool)

(assert (=> b!7791188 (= e!4613546 e!4613540)))

(declare-fun c!1434893 () Bool)

(assert (=> b!7791188 (= c!1434893 ((_ is EmptyLang!20859) lt!2673600))))

(declare-fun b!7791190 () Bool)

(assert (=> b!7791190 (= e!4613551 e!4613545)))

(declare-fun res!3104173 () Bool)

(assert (=> b!7791190 (=> res!3104173 e!4613545)))

(assert (=> b!7791190 (= res!3104173 call!722152)))

(declare-fun b!7791191 () Bool)

(declare-fun res!3104174 () Bool)

(assert (=> b!7791191 (=> (not res!3104174) (not e!4613538))))

(assert (=> b!7791191 (= res!3104174 (not call!722152))))

(declare-fun bm!722147 () Bool)

(assert (=> bm!722147 (= call!722152 (isEmpty!42211 (t!388433 s!14292)))))

(declare-fun b!7791192 () Bool)

(assert (=> b!7791192 (= e!4613540 (not lt!2673622))))

(declare-fun b!7791193 () Bool)

(assert (=> b!7791193 (= e!4613538 (= (head!15936 (t!388433 s!14292)) (c!1434816 lt!2673600)))))

(assert (= (and d!2345951 c!1434898) b!7791178))

(assert (= (and d!2345951 (not c!1434898)) b!7791172))

(assert (= (and d!2345951 c!1434894) b!7791174))

(assert (= (and d!2345951 (not c!1434894)) b!7791188))

(assert (= (and b!7791188 c!1434893) b!7791192))

(assert (= (and b!7791188 (not c!1434893)) b!7791180))

(assert (= (and b!7791180 (not res!3104170)) b!7791184))

(assert (= (and b!7791184 res!3104168) b!7791191))

(assert (= (and b!7791191 res!3104174) b!7791182))

(assert (= (and b!7791182 res!3104169) b!7791193))

(assert (= (and b!7791184 (not res!3104175)) b!7791186))

(assert (= (and b!7791186 res!3104166) b!7791190))

(assert (= (and b!7791190 (not res!3104173)) b!7791170))

(assert (= (and b!7791170 (not res!3104176)) b!7791176))

(assert (= (or b!7791174 b!7791190 b!7791191) bm!722147))

(assert (=> b!7791176 m!8231976))

(assert (=> bm!722147 m!8231978))

(declare-fun m!8232084 () Bool)

(assert (=> b!7791178 m!8232084))

(assert (=> b!7791182 m!8231982))

(assert (=> b!7791182 m!8231982))

(assert (=> b!7791182 m!8231984))

(assert (=> d!2345951 m!8231978))

(declare-fun m!8232086 () Bool)

(assert (=> d!2345951 m!8232086))

(assert (=> b!7791170 m!8231982))

(assert (=> b!7791170 m!8231982))

(assert (=> b!7791170 m!8231984))

(assert (=> b!7791193 m!8231976))

(assert (=> b!7791172 m!8231976))

(assert (=> b!7791172 m!8231976))

(declare-fun m!8232088 () Bool)

(assert (=> b!7791172 m!8232088))

(assert (=> b!7791172 m!8231982))

(assert (=> b!7791172 m!8232088))

(assert (=> b!7791172 m!8231982))

(declare-fun m!8232090 () Bool)

(assert (=> b!7791172 m!8232090))

(assert (=> b!7790878 d!2345951))

(declare-fun d!2345957 () Bool)

(declare-fun e!4613586 () Bool)

(assert (=> d!2345957 e!4613586))

(declare-fun res!3104186 () Bool)

(assert (=> d!2345957 (=> res!3104186 e!4613586)))

(assert (=> d!2345957 (= res!3104186 (matchR!10319 lt!2673600 (t!388433 s!14292)))))

(declare-fun lt!2673628 () Unit!168564)

(declare-fun choose!59513 (Regex!20859 Regex!20859 List!73698) Unit!168564)

(assert (=> d!2345957 (= lt!2673628 (choose!59513 lt!2673600 lt!2673601 (t!388433 s!14292)))))

(declare-fun e!4613587 () Bool)

(assert (=> d!2345957 e!4613587))

(declare-fun res!3104187 () Bool)

(assert (=> d!2345957 (=> (not res!3104187) (not e!4613587))))

(assert (=> d!2345957 (= res!3104187 (validRegex!11273 lt!2673600))))

(assert (=> d!2345957 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!402 lt!2673600 lt!2673601 (t!388433 s!14292)) lt!2673628)))

(declare-fun b!7791277 () Bool)

(assert (=> b!7791277 (= e!4613587 (validRegex!11273 lt!2673601))))

(declare-fun b!7791278 () Bool)

(assert (=> b!7791278 (= e!4613586 (matchR!10319 lt!2673601 (t!388433 s!14292)))))

(assert (= (and d!2345957 res!3104187) b!7791277))

(assert (= (and d!2345957 (not res!3104186)) b!7791278))

(assert (=> d!2345957 m!8231946))

(declare-fun m!8232114 () Bool)

(assert (=> d!2345957 m!8232114))

(assert (=> d!2345957 m!8232086))

(assert (=> b!7791277 m!8231986))

(assert (=> b!7791278 m!8231936))

(assert (=> b!7790878 d!2345957))

(declare-fun b!7791284 () Bool)

(declare-fun e!4613596 () Bool)

(declare-fun call!722164 () Bool)

(assert (=> b!7791284 (= e!4613596 call!722164)))

(declare-fun b!7791285 () Bool)

(declare-fun e!4613592 () Bool)

(declare-fun e!4613595 () Bool)

(assert (=> b!7791285 (= e!4613592 e!4613595)))

(declare-fun c!1434912 () Bool)

(assert (=> b!7791285 (= c!1434912 ((_ is Union!20859) lt!2673596))))

(declare-fun b!7791286 () Bool)

(declare-fun e!4613591 () Bool)

(assert (=> b!7791286 (= e!4613591 e!4613592)))

(declare-fun c!1434911 () Bool)

(assert (=> b!7791286 (= c!1434911 ((_ is Star!20859) lt!2673596))))

(declare-fun b!7791287 () Bool)

(declare-fun res!3104190 () Bool)

(declare-fun e!4613590 () Bool)

(assert (=> b!7791287 (=> res!3104190 e!4613590)))

(assert (=> b!7791287 (= res!3104190 (not ((_ is Concat!29704) lt!2673596)))))

(assert (=> b!7791287 (= e!4613595 e!4613590)))

(declare-fun b!7791288 () Bool)

(assert (=> b!7791288 (= e!4613590 e!4613596)))

(declare-fun res!3104192 () Bool)

(assert (=> b!7791288 (=> (not res!3104192) (not e!4613596))))

(declare-fun call!722165 () Bool)

(assert (=> b!7791288 (= res!3104192 call!722165)))

(declare-fun bm!722159 () Bool)

(assert (=> bm!722159 (= call!722164 (validRegex!11273 (ite c!1434912 (regTwo!42231 lt!2673596) (regTwo!42230 lt!2673596))))))

(declare-fun b!7791289 () Bool)

(declare-fun res!3104188 () Bool)

(declare-fun e!4613593 () Bool)

(assert (=> b!7791289 (=> (not res!3104188) (not e!4613593))))

(assert (=> b!7791289 (= res!3104188 call!722165)))

(assert (=> b!7791289 (= e!4613595 e!4613593)))

(declare-fun d!2345963 () Bool)

(declare-fun res!3104189 () Bool)

(assert (=> d!2345963 (=> res!3104189 e!4613591)))

(assert (=> d!2345963 (= res!3104189 ((_ is ElementMatch!20859) lt!2673596))))

(assert (=> d!2345963 (= (validRegex!11273 lt!2673596) e!4613591)))

(declare-fun b!7791290 () Bool)

(declare-fun e!4613594 () Bool)

(declare-fun call!722166 () Bool)

(assert (=> b!7791290 (= e!4613594 call!722166)))

(declare-fun b!7791291 () Bool)

(assert (=> b!7791291 (= e!4613592 e!4613594)))

(declare-fun res!3104191 () Bool)

(assert (=> b!7791291 (= res!3104191 (not (nullable!9243 (reg!21188 lt!2673596))))))

(assert (=> b!7791291 (=> (not res!3104191) (not e!4613594))))

(declare-fun b!7791292 () Bool)

(assert (=> b!7791292 (= e!4613593 call!722164)))

(declare-fun bm!722160 () Bool)

(assert (=> bm!722160 (= call!722165 call!722166)))

(declare-fun bm!722161 () Bool)

(assert (=> bm!722161 (= call!722166 (validRegex!11273 (ite c!1434911 (reg!21188 lt!2673596) (ite c!1434912 (regOne!42231 lt!2673596) (regOne!42230 lt!2673596)))))))

(assert (= (and d!2345963 (not res!3104189)) b!7791286))

(assert (= (and b!7791286 c!1434911) b!7791291))

(assert (= (and b!7791286 (not c!1434911)) b!7791285))

(assert (= (and b!7791291 res!3104191) b!7791290))

(assert (= (and b!7791285 c!1434912) b!7791289))

(assert (= (and b!7791285 (not c!1434912)) b!7791287))

(assert (= (and b!7791289 res!3104188) b!7791292))

(assert (= (and b!7791287 (not res!3104190)) b!7791288))

(assert (= (and b!7791288 res!3104192) b!7791284))

(assert (= (or b!7791289 b!7791288) bm!722160))

(assert (= (or b!7791292 b!7791284) bm!722159))

(assert (= (or b!7791290 bm!722160) bm!722161))

(declare-fun m!8232116 () Bool)

(assert (=> bm!722159 m!8232116))

(declare-fun m!8232118 () Bool)

(assert (=> b!7791291 m!8232118))

(declare-fun m!8232120 () Bool)

(assert (=> bm!722161 m!8232120))

(assert (=> b!7790872 d!2345963))

(declare-fun b!7791293 () Bool)

(declare-fun e!4613601 () Regex!20859)

(declare-fun e!4613599 () Regex!20859)

(assert (=> b!7791293 (= e!4613601 e!4613599)))

(declare-fun c!1434916 () Bool)

(assert (=> b!7791293 (= c!1434916 ((_ is ElementMatch!20859) r2!6217))))

(declare-fun d!2345965 () Bool)

(declare-fun lt!2673629 () Regex!20859)

(assert (=> d!2345965 (validRegex!11273 lt!2673629)))

(assert (=> d!2345965 (= lt!2673629 e!4613601)))

(declare-fun c!1434915 () Bool)

(assert (=> d!2345965 (= c!1434915 (or ((_ is EmptyExpr!20859) r2!6217) ((_ is EmptyLang!20859) r2!6217)))))

(assert (=> d!2345965 (validRegex!11273 r2!6217)))

(assert (=> d!2345965 (= (derivativeStep!6196 r2!6217 (h!80022 s!14292)) lt!2673629)))

(declare-fun b!7791294 () Bool)

(declare-fun c!1434913 () Bool)

(assert (=> b!7791294 (= c!1434913 (nullable!9243 (regOne!42230 r2!6217)))))

(declare-fun e!4613598 () Regex!20859)

(declare-fun e!4613600 () Regex!20859)

(assert (=> b!7791294 (= e!4613598 e!4613600)))

(declare-fun b!7791295 () Bool)

(declare-fun c!1434914 () Bool)

(assert (=> b!7791295 (= c!1434914 ((_ is Union!20859) r2!6217))))

(declare-fun e!4613597 () Regex!20859)

(assert (=> b!7791295 (= e!4613599 e!4613597)))

(declare-fun bm!722162 () Bool)

(declare-fun call!722169 () Regex!20859)

(assert (=> bm!722162 (= call!722169 (derivativeStep!6196 (ite c!1434914 (regOne!42231 r2!6217) (regOne!42230 r2!6217)) (h!80022 s!14292)))))

(declare-fun b!7791296 () Bool)

(declare-fun call!722168 () Regex!20859)

(assert (=> b!7791296 (= e!4613597 (Union!20859 call!722169 call!722168))))

(declare-fun b!7791297 () Bool)

(declare-fun call!722170 () Regex!20859)

(assert (=> b!7791297 (= e!4613600 (Union!20859 (Concat!29704 call!722170 (regTwo!42230 r2!6217)) EmptyLang!20859))))

(declare-fun bm!722163 () Bool)

(declare-fun call!722167 () Regex!20859)

(assert (=> bm!722163 (= call!722170 call!722167)))

(declare-fun b!7791298 () Bool)

(assert (=> b!7791298 (= e!4613600 (Union!20859 (Concat!29704 call!722169 (regTwo!42230 r2!6217)) call!722170))))

(declare-fun bm!722164 () Bool)

(assert (=> bm!722164 (= call!722167 call!722168)))

(declare-fun b!7791299 () Bool)

(assert (=> b!7791299 (= e!4613597 e!4613598)))

(declare-fun c!1434917 () Bool)

(assert (=> b!7791299 (= c!1434917 ((_ is Star!20859) r2!6217))))

(declare-fun b!7791300 () Bool)

(assert (=> b!7791300 (= e!4613598 (Concat!29704 call!722167 r2!6217))))

(declare-fun b!7791301 () Bool)

(assert (=> b!7791301 (= e!4613601 EmptyLang!20859)))

(declare-fun bm!722165 () Bool)

(assert (=> bm!722165 (= call!722168 (derivativeStep!6196 (ite c!1434914 (regTwo!42231 r2!6217) (ite c!1434917 (reg!21188 r2!6217) (ite c!1434913 (regTwo!42230 r2!6217) (regOne!42230 r2!6217)))) (h!80022 s!14292)))))

(declare-fun b!7791302 () Bool)

(assert (=> b!7791302 (= e!4613599 (ite (= (h!80022 s!14292) (c!1434816 r2!6217)) EmptyExpr!20859 EmptyLang!20859))))

(assert (= (and d!2345965 c!1434915) b!7791301))

(assert (= (and d!2345965 (not c!1434915)) b!7791293))

(assert (= (and b!7791293 c!1434916) b!7791302))

(assert (= (and b!7791293 (not c!1434916)) b!7791295))

(assert (= (and b!7791295 c!1434914) b!7791296))

(assert (= (and b!7791295 (not c!1434914)) b!7791299))

(assert (= (and b!7791299 c!1434917) b!7791300))

(assert (= (and b!7791299 (not c!1434917)) b!7791294))

(assert (= (and b!7791294 c!1434913) b!7791298))

(assert (= (and b!7791294 (not c!1434913)) b!7791297))

(assert (= (or b!7791298 b!7791297) bm!722163))

(assert (= (or b!7791300 bm!722163) bm!722164))

(assert (= (or b!7791296 bm!722164) bm!722165))

(assert (= (or b!7791296 b!7791298) bm!722162))

(declare-fun m!8232122 () Bool)

(assert (=> d!2345965 m!8232122))

(assert (=> d!2345965 m!8231934))

(declare-fun m!8232124 () Bool)

(assert (=> b!7791294 m!8232124))

(declare-fun m!8232126 () Bool)

(assert (=> bm!722162 m!8232126))

(declare-fun m!8232128 () Bool)

(assert (=> bm!722165 m!8232128))

(assert (=> b!7790884 d!2345965))

(declare-fun b!7791303 () Bool)

(declare-fun e!4613606 () Regex!20859)

(declare-fun e!4613604 () Regex!20859)

(assert (=> b!7791303 (= e!4613606 e!4613604)))

(declare-fun c!1434921 () Bool)

(assert (=> b!7791303 (= c!1434921 ((_ is ElementMatch!20859) r1!6279))))

(declare-fun d!2345967 () Bool)

(declare-fun lt!2673630 () Regex!20859)

(assert (=> d!2345967 (validRegex!11273 lt!2673630)))

(assert (=> d!2345967 (= lt!2673630 e!4613606)))

(declare-fun c!1434920 () Bool)

(assert (=> d!2345967 (= c!1434920 (or ((_ is EmptyExpr!20859) r1!6279) ((_ is EmptyLang!20859) r1!6279)))))

(assert (=> d!2345967 (validRegex!11273 r1!6279)))

(assert (=> d!2345967 (= (derivativeStep!6196 r1!6279 (h!80022 s!14292)) lt!2673630)))

(declare-fun b!7791304 () Bool)

(declare-fun c!1434918 () Bool)

(assert (=> b!7791304 (= c!1434918 (nullable!9243 (regOne!42230 r1!6279)))))

(declare-fun e!4613603 () Regex!20859)

(declare-fun e!4613605 () Regex!20859)

(assert (=> b!7791304 (= e!4613603 e!4613605)))

(declare-fun b!7791305 () Bool)

(declare-fun c!1434919 () Bool)

(assert (=> b!7791305 (= c!1434919 ((_ is Union!20859) r1!6279))))

(declare-fun e!4613602 () Regex!20859)

(assert (=> b!7791305 (= e!4613604 e!4613602)))

(declare-fun bm!722166 () Bool)

(declare-fun call!722173 () Regex!20859)

(assert (=> bm!722166 (= call!722173 (derivativeStep!6196 (ite c!1434919 (regOne!42231 r1!6279) (regOne!42230 r1!6279)) (h!80022 s!14292)))))

(declare-fun b!7791306 () Bool)

(declare-fun call!722172 () Regex!20859)

(assert (=> b!7791306 (= e!4613602 (Union!20859 call!722173 call!722172))))

(declare-fun b!7791307 () Bool)

(declare-fun call!722174 () Regex!20859)

(assert (=> b!7791307 (= e!4613605 (Union!20859 (Concat!29704 call!722174 (regTwo!42230 r1!6279)) EmptyLang!20859))))

(declare-fun bm!722167 () Bool)

(declare-fun call!722171 () Regex!20859)

(assert (=> bm!722167 (= call!722174 call!722171)))

(declare-fun b!7791308 () Bool)

(assert (=> b!7791308 (= e!4613605 (Union!20859 (Concat!29704 call!722173 (regTwo!42230 r1!6279)) call!722174))))

(declare-fun bm!722168 () Bool)

(assert (=> bm!722168 (= call!722171 call!722172)))

(declare-fun b!7791309 () Bool)

(assert (=> b!7791309 (= e!4613602 e!4613603)))

(declare-fun c!1434922 () Bool)

(assert (=> b!7791309 (= c!1434922 ((_ is Star!20859) r1!6279))))

(declare-fun b!7791310 () Bool)

(assert (=> b!7791310 (= e!4613603 (Concat!29704 call!722171 r1!6279))))

(declare-fun b!7791311 () Bool)

(assert (=> b!7791311 (= e!4613606 EmptyLang!20859)))

(declare-fun bm!722169 () Bool)

(assert (=> bm!722169 (= call!722172 (derivativeStep!6196 (ite c!1434919 (regTwo!42231 r1!6279) (ite c!1434922 (reg!21188 r1!6279) (ite c!1434918 (regTwo!42230 r1!6279) (regOne!42230 r1!6279)))) (h!80022 s!14292)))))

(declare-fun b!7791312 () Bool)

(assert (=> b!7791312 (= e!4613604 (ite (= (h!80022 s!14292) (c!1434816 r1!6279)) EmptyExpr!20859 EmptyLang!20859))))

(assert (= (and d!2345967 c!1434920) b!7791311))

(assert (= (and d!2345967 (not c!1434920)) b!7791303))

(assert (= (and b!7791303 c!1434921) b!7791312))

(assert (= (and b!7791303 (not c!1434921)) b!7791305))

(assert (= (and b!7791305 c!1434919) b!7791306))

(assert (= (and b!7791305 (not c!1434919)) b!7791309))

(assert (= (and b!7791309 c!1434922) b!7791310))

(assert (= (and b!7791309 (not c!1434922)) b!7791304))

(assert (= (and b!7791304 c!1434918) b!7791308))

(assert (= (and b!7791304 (not c!1434918)) b!7791307))

(assert (= (or b!7791308 b!7791307) bm!722167))

(assert (= (or b!7791310 bm!722167) bm!722168))

(assert (= (or b!7791306 bm!722168) bm!722169))

(assert (= (or b!7791306 b!7791308) bm!722166))

(declare-fun m!8232130 () Bool)

(assert (=> d!2345967 m!8232130))

(assert (=> d!2345967 m!8231942))

(declare-fun m!8232132 () Bool)

(assert (=> b!7791304 m!8232132))

(declare-fun m!8232134 () Bool)

(assert (=> bm!722166 m!8232134))

(declare-fun m!8232136 () Bool)

(assert (=> bm!722169 m!8232136))

(assert (=> b!7790884 d!2345967))

(declare-fun b!7791323 () Bool)

(declare-fun e!4613609 () Bool)

(assert (=> b!7791323 (= e!4613609 tp_is_empty!52073)))

(declare-fun b!7791324 () Bool)

(declare-fun tp!2293562 () Bool)

(declare-fun tp!2293563 () Bool)

(assert (=> b!7791324 (= e!4613609 (and tp!2293562 tp!2293563))))

(declare-fun b!7791326 () Bool)

(declare-fun tp!2293561 () Bool)

(declare-fun tp!2293565 () Bool)

(assert (=> b!7791326 (= e!4613609 (and tp!2293561 tp!2293565))))

(declare-fun b!7791325 () Bool)

(declare-fun tp!2293564 () Bool)

(assert (=> b!7791325 (= e!4613609 tp!2293564)))

(assert (=> b!7790886 (= tp!2293487 e!4613609)))

(assert (= (and b!7790886 ((_ is ElementMatch!20859) (reg!21188 r1!6279))) b!7791323))

(assert (= (and b!7790886 ((_ is Concat!29704) (reg!21188 r1!6279))) b!7791324))

(assert (= (and b!7790886 ((_ is Star!20859) (reg!21188 r1!6279))) b!7791325))

(assert (= (and b!7790886 ((_ is Union!20859) (reg!21188 r1!6279))) b!7791326))

(declare-fun b!7791327 () Bool)

(declare-fun e!4613610 () Bool)

(assert (=> b!7791327 (= e!4613610 tp_is_empty!52073)))

(declare-fun b!7791328 () Bool)

(declare-fun tp!2293567 () Bool)

(declare-fun tp!2293568 () Bool)

(assert (=> b!7791328 (= e!4613610 (and tp!2293567 tp!2293568))))

(declare-fun b!7791330 () Bool)

(declare-fun tp!2293566 () Bool)

(declare-fun tp!2293570 () Bool)

(assert (=> b!7791330 (= e!4613610 (and tp!2293566 tp!2293570))))

(declare-fun b!7791329 () Bool)

(declare-fun tp!2293569 () Bool)

(assert (=> b!7791329 (= e!4613610 tp!2293569)))

(assert (=> b!7790871 (= tp!2293478 e!4613610)))

(assert (= (and b!7790871 ((_ is ElementMatch!20859) (regOne!42231 r1!6279))) b!7791327))

(assert (= (and b!7790871 ((_ is Concat!29704) (regOne!42231 r1!6279))) b!7791328))

(assert (= (and b!7790871 ((_ is Star!20859) (regOne!42231 r1!6279))) b!7791329))

(assert (= (and b!7790871 ((_ is Union!20859) (regOne!42231 r1!6279))) b!7791330))

(declare-fun b!7791331 () Bool)

(declare-fun e!4613611 () Bool)

(assert (=> b!7791331 (= e!4613611 tp_is_empty!52073)))

(declare-fun b!7791332 () Bool)

(declare-fun tp!2293572 () Bool)

(declare-fun tp!2293573 () Bool)

(assert (=> b!7791332 (= e!4613611 (and tp!2293572 tp!2293573))))

(declare-fun b!7791334 () Bool)

(declare-fun tp!2293571 () Bool)

(declare-fun tp!2293575 () Bool)

(assert (=> b!7791334 (= e!4613611 (and tp!2293571 tp!2293575))))

(declare-fun b!7791333 () Bool)

(declare-fun tp!2293574 () Bool)

(assert (=> b!7791333 (= e!4613611 tp!2293574)))

(assert (=> b!7790871 (= tp!2293485 e!4613611)))

(assert (= (and b!7790871 ((_ is ElementMatch!20859) (regTwo!42231 r1!6279))) b!7791331))

(assert (= (and b!7790871 ((_ is Concat!29704) (regTwo!42231 r1!6279))) b!7791332))

(assert (= (and b!7790871 ((_ is Star!20859) (regTwo!42231 r1!6279))) b!7791333))

(assert (= (and b!7790871 ((_ is Union!20859) (regTwo!42231 r1!6279))) b!7791334))

(declare-fun b!7791339 () Bool)

(declare-fun e!4613614 () Bool)

(declare-fun tp!2293578 () Bool)

(assert (=> b!7791339 (= e!4613614 (and tp_is_empty!52073 tp!2293578))))

(assert (=> b!7790882 (= tp!2293480 e!4613614)))

(assert (= (and b!7790882 ((_ is Cons!73574) (t!388433 s!14292))) b!7791339))

(declare-fun b!7791340 () Bool)

(declare-fun e!4613615 () Bool)

(assert (=> b!7791340 (= e!4613615 tp_is_empty!52073)))

(declare-fun b!7791341 () Bool)

(declare-fun tp!2293580 () Bool)

(declare-fun tp!2293581 () Bool)

(assert (=> b!7791341 (= e!4613615 (and tp!2293580 tp!2293581))))

(declare-fun b!7791343 () Bool)

(declare-fun tp!2293579 () Bool)

(declare-fun tp!2293583 () Bool)

(assert (=> b!7791343 (= e!4613615 (and tp!2293579 tp!2293583))))

(declare-fun b!7791342 () Bool)

(declare-fun tp!2293582 () Bool)

(assert (=> b!7791342 (= e!4613615 tp!2293582)))

(assert (=> b!7790876 (= tp!2293479 e!4613615)))

(assert (= (and b!7790876 ((_ is ElementMatch!20859) (regOne!42231 r2!6217))) b!7791340))

(assert (= (and b!7790876 ((_ is Concat!29704) (regOne!42231 r2!6217))) b!7791341))

(assert (= (and b!7790876 ((_ is Star!20859) (regOne!42231 r2!6217))) b!7791342))

(assert (= (and b!7790876 ((_ is Union!20859) (regOne!42231 r2!6217))) b!7791343))

(declare-fun b!7791344 () Bool)

(declare-fun e!4613616 () Bool)

(assert (=> b!7791344 (= e!4613616 tp_is_empty!52073)))

(declare-fun b!7791345 () Bool)

(declare-fun tp!2293585 () Bool)

(declare-fun tp!2293586 () Bool)

(assert (=> b!7791345 (= e!4613616 (and tp!2293585 tp!2293586))))

(declare-fun b!7791347 () Bool)

(declare-fun tp!2293584 () Bool)

(declare-fun tp!2293588 () Bool)

(assert (=> b!7791347 (= e!4613616 (and tp!2293584 tp!2293588))))

(declare-fun b!7791346 () Bool)

(declare-fun tp!2293587 () Bool)

(assert (=> b!7791346 (= e!4613616 tp!2293587)))

(assert (=> b!7790876 (= tp!2293484 e!4613616)))

(assert (= (and b!7790876 ((_ is ElementMatch!20859) (regTwo!42231 r2!6217))) b!7791344))

(assert (= (and b!7790876 ((_ is Concat!29704) (regTwo!42231 r2!6217))) b!7791345))

(assert (= (and b!7790876 ((_ is Star!20859) (regTwo!42231 r2!6217))) b!7791346))

(assert (= (and b!7790876 ((_ is Union!20859) (regTwo!42231 r2!6217))) b!7791347))

(declare-fun b!7791348 () Bool)

(declare-fun e!4613617 () Bool)

(assert (=> b!7791348 (= e!4613617 tp_is_empty!52073)))

(declare-fun b!7791349 () Bool)

(declare-fun tp!2293590 () Bool)

(declare-fun tp!2293591 () Bool)

(assert (=> b!7791349 (= e!4613617 (and tp!2293590 tp!2293591))))

(declare-fun b!7791351 () Bool)

(declare-fun tp!2293589 () Bool)

(declare-fun tp!2293593 () Bool)

(assert (=> b!7791351 (= e!4613617 (and tp!2293589 tp!2293593))))

(declare-fun b!7791350 () Bool)

(declare-fun tp!2293592 () Bool)

(assert (=> b!7791350 (= e!4613617 tp!2293592)))

(assert (=> b!7790879 (= tp!2293483 e!4613617)))

(assert (= (and b!7790879 ((_ is ElementMatch!20859) (regOne!42230 r1!6279))) b!7791348))

(assert (= (and b!7790879 ((_ is Concat!29704) (regOne!42230 r1!6279))) b!7791349))

(assert (= (and b!7790879 ((_ is Star!20859) (regOne!42230 r1!6279))) b!7791350))

(assert (= (and b!7790879 ((_ is Union!20859) (regOne!42230 r1!6279))) b!7791351))

(declare-fun b!7791352 () Bool)

(declare-fun e!4613618 () Bool)

(assert (=> b!7791352 (= e!4613618 tp_is_empty!52073)))

(declare-fun b!7791353 () Bool)

(declare-fun tp!2293595 () Bool)

(declare-fun tp!2293596 () Bool)

(assert (=> b!7791353 (= e!4613618 (and tp!2293595 tp!2293596))))

(declare-fun b!7791355 () Bool)

(declare-fun tp!2293594 () Bool)

(declare-fun tp!2293598 () Bool)

(assert (=> b!7791355 (= e!4613618 (and tp!2293594 tp!2293598))))

(declare-fun b!7791354 () Bool)

(declare-fun tp!2293597 () Bool)

(assert (=> b!7791354 (= e!4613618 tp!2293597)))

(assert (=> b!7790879 (= tp!2293482 e!4613618)))

(assert (= (and b!7790879 ((_ is ElementMatch!20859) (regTwo!42230 r1!6279))) b!7791352))

(assert (= (and b!7790879 ((_ is Concat!29704) (regTwo!42230 r1!6279))) b!7791353))

(assert (= (and b!7790879 ((_ is Star!20859) (regTwo!42230 r1!6279))) b!7791354))

(assert (= (and b!7790879 ((_ is Union!20859) (regTwo!42230 r1!6279))) b!7791355))

(declare-fun b!7791356 () Bool)

(declare-fun e!4613619 () Bool)

(assert (=> b!7791356 (= e!4613619 tp_is_empty!52073)))

(declare-fun b!7791357 () Bool)

(declare-fun tp!2293600 () Bool)

(declare-fun tp!2293601 () Bool)

(assert (=> b!7791357 (= e!4613619 (and tp!2293600 tp!2293601))))

(declare-fun b!7791359 () Bool)

(declare-fun tp!2293599 () Bool)

(declare-fun tp!2293603 () Bool)

(assert (=> b!7791359 (= e!4613619 (and tp!2293599 tp!2293603))))

(declare-fun b!7791358 () Bool)

(declare-fun tp!2293602 () Bool)

(assert (=> b!7791358 (= e!4613619 tp!2293602)))

(assert (=> b!7790874 (= tp!2293486 e!4613619)))

(assert (= (and b!7790874 ((_ is ElementMatch!20859) (reg!21188 r2!6217))) b!7791356))

(assert (= (and b!7790874 ((_ is Concat!29704) (reg!21188 r2!6217))) b!7791357))

(assert (= (and b!7790874 ((_ is Star!20859) (reg!21188 r2!6217))) b!7791358))

(assert (= (and b!7790874 ((_ is Union!20859) (reg!21188 r2!6217))) b!7791359))

(declare-fun b!7791360 () Bool)

(declare-fun e!4613620 () Bool)

(assert (=> b!7791360 (= e!4613620 tp_is_empty!52073)))

(declare-fun b!7791361 () Bool)

(declare-fun tp!2293605 () Bool)

(declare-fun tp!2293606 () Bool)

(assert (=> b!7791361 (= e!4613620 (and tp!2293605 tp!2293606))))

(declare-fun b!7791363 () Bool)

(declare-fun tp!2293604 () Bool)

(declare-fun tp!2293608 () Bool)

(assert (=> b!7791363 (= e!4613620 (and tp!2293604 tp!2293608))))

(declare-fun b!7791362 () Bool)

(declare-fun tp!2293607 () Bool)

(assert (=> b!7791362 (= e!4613620 tp!2293607)))

(assert (=> b!7790873 (= tp!2293477 e!4613620)))

(assert (= (and b!7790873 ((_ is ElementMatch!20859) (regOne!42230 r2!6217))) b!7791360))

(assert (= (and b!7790873 ((_ is Concat!29704) (regOne!42230 r2!6217))) b!7791361))

(assert (= (and b!7790873 ((_ is Star!20859) (regOne!42230 r2!6217))) b!7791362))

(assert (= (and b!7790873 ((_ is Union!20859) (regOne!42230 r2!6217))) b!7791363))

(declare-fun b!7791364 () Bool)

(declare-fun e!4613621 () Bool)

(assert (=> b!7791364 (= e!4613621 tp_is_empty!52073)))

(declare-fun b!7791365 () Bool)

(declare-fun tp!2293610 () Bool)

(declare-fun tp!2293611 () Bool)

(assert (=> b!7791365 (= e!4613621 (and tp!2293610 tp!2293611))))

(declare-fun b!7791367 () Bool)

(declare-fun tp!2293609 () Bool)

(declare-fun tp!2293613 () Bool)

(assert (=> b!7791367 (= e!4613621 (and tp!2293609 tp!2293613))))

(declare-fun b!7791366 () Bool)

(declare-fun tp!2293612 () Bool)

(assert (=> b!7791366 (= e!4613621 tp!2293612)))

(assert (=> b!7790873 (= tp!2293481 e!4613621)))

(assert (= (and b!7790873 ((_ is ElementMatch!20859) (regTwo!42230 r2!6217))) b!7791364))

(assert (= (and b!7790873 ((_ is Concat!29704) (regTwo!42230 r2!6217))) b!7791365))

(assert (= (and b!7790873 ((_ is Star!20859) (regTwo!42230 r2!6217))) b!7791366))

(assert (= (and b!7790873 ((_ is Union!20859) (regTwo!42230 r2!6217))) b!7791367))

(check-sat (not b!7791339) (not bm!722099) (not b!7791346) (not b!7791341) (not b!7791066) (not bm!722166) (not b!7790949) (not d!2345965) (not b!7791076) (not b!7791357) (not b!7791067) (not d!2345923) (not b!7790960) (not b!7791363) (not b!7791182) (not b!7791349) (not b!7791353) (not b!7791359) (not b!7791342) (not bm!722159) (not d!2345951) (not d!2345921) (not b!7791047) (not b!7791324) (not bm!722100) (not b!7791367) (not d!2345931) (not b!7791064) (not bm!722161) (not b!7791343) (not b!7791347) (not b!7791193) (not b!7791162) (not b!7791334) (not b!7791178) (not bm!722165) (not b!7791069) (not d!2345943) (not d!2345939) (not bm!722115) (not b!7790970) (not b!7790946) (not b!7791142) (not b!7791332) (not b!7790958) (not bm!722145) (not b!7791329) (not b!7791063) (not bm!722113) (not b!7791172) (not b!7790947) (not b!7791326) (not b!7791325) (not b!7790943) (not b!7791277) (not b!7791294) (not b!7791333) (not b!7791365) (not b!7791361) (not bm!722169) (not b!7791176) (not bm!722143) (not b!7791355) (not bm!722162) (not b!7791345) (not d!2345967) (not bm!722142) (not d!2345957) (not b!7791328) (not b!7791362) (not b!7790944) (not b!7791354) (not b!7791330) (not b!7790957) (not b!7791351) (not bm!722117) (not bm!722147) (not b!7791170) (not b!7791278) (not b!7791350) (not b!7791291) (not b!7790961) (not b!7791358) tp_is_empty!52073 (not b!7790963) (not b!7790956) (not b!7791366) (not b!7791304) (not bm!722139))
(check-sat)
