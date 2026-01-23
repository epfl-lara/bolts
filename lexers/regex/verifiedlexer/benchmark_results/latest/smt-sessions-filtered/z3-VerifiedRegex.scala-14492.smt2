; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753840 () Bool)

(assert start!753840)

(declare-fun b!8011069 () Bool)

(declare-fun e!4719108 () Bool)

(declare-fun tp_is_empty!53873 () Bool)

(assert (=> b!8011069 (= e!4719108 tp_is_empty!53873)))

(declare-fun b!8011070 () Bool)

(declare-fun e!4719103 () Bool)

(declare-fun e!4719107 () Bool)

(assert (=> b!8011070 (= e!4719103 (not e!4719107))))

(declare-fun res!3167667 () Bool)

(assert (=> b!8011070 (=> res!3167667 e!4719107)))

(declare-datatypes ((C!43668 0))(
  ( (C!43669 (val!32382 Int)) )
))
(declare-datatypes ((List!74894 0))(
  ( (Nil!74770) (Cons!74770 (h!81218 C!43668) (t!390637 List!74894)) )
))
(declare-fun testedP!353 () List!74894)

(declare-fun totalInput!1349 () List!74894)

(declare-fun isPrefix!6717 (List!74894 List!74894) Bool)

(assert (=> b!8011070 (= res!3167667 (not (isPrefix!6717 testedP!353 totalInput!1349)))))

(declare-fun lt!2716842 () List!74894)

(assert (=> b!8011070 (isPrefix!6717 testedP!353 lt!2716842)))

(declare-datatypes ((Unit!170796 0))(
  ( (Unit!170797) )
))
(declare-fun lt!2716843 () Unit!170796)

(declare-fun testedSuffix!271 () List!74894)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3948 (List!74894 List!74894) Unit!170796)

(assert (=> b!8011070 (= lt!2716843 (lemmaConcatTwoListThenFirstIsPrefix!3948 testedP!353 testedSuffix!271))))

(declare-fun b!8011071 () Bool)

(declare-fun ++!18491 (List!74894 List!74894) List!74894)

(declare-fun getSuffix!3912 (List!74894 List!74894) List!74894)

(assert (=> b!8011071 (= e!4719107 (= (++!18491 testedP!353 (getSuffix!3912 totalInput!1349 testedP!353)) totalInput!1349))))

(declare-fun b!8011072 () Bool)

(declare-fun tp!2397514 () Bool)

(declare-fun tp!2397511 () Bool)

(assert (=> b!8011072 (= e!4719108 (and tp!2397514 tp!2397511))))

(declare-fun b!8011073 () Bool)

(declare-fun e!4719104 () Bool)

(declare-fun tp!2397509 () Bool)

(assert (=> b!8011073 (= e!4719104 (and tp_is_empty!53873 tp!2397509))))

(declare-fun b!8011074 () Bool)

(declare-fun e!4719109 () Bool)

(assert (=> b!8011074 (= e!4719109 e!4719103)))

(declare-fun res!3167670 () Bool)

(assert (=> b!8011074 (=> (not res!3167670) (not e!4719103))))

(assert (=> b!8011074 (= res!3167670 (= lt!2716842 totalInput!1349))))

(assert (=> b!8011074 (= lt!2716842 (++!18491 testedP!353 testedSuffix!271))))

(declare-fun b!8011075 () Bool)

(declare-fun e!4719105 () Bool)

(declare-fun tp!2397510 () Bool)

(assert (=> b!8011075 (= e!4719105 (and tp_is_empty!53873 tp!2397510))))

(declare-fun b!8011076 () Bool)

(declare-fun tp!2397507 () Bool)

(assert (=> b!8011076 (= e!4719108 tp!2397507)))

(declare-fun res!3167668 () Bool)

(assert (=> start!753840 (=> (not res!3167668) (not e!4719109))))

(declare-datatypes ((Regex!21665 0))(
  ( (ElementMatch!21665 (c!1470470 C!43668)) (Concat!30664 (regOne!43842 Regex!21665) (regTwo!43842 Regex!21665)) (EmptyExpr!21665) (Star!21665 (reg!21994 Regex!21665)) (EmptyLang!21665) (Union!21665 (regOne!43843 Regex!21665) (regTwo!43843 Regex!21665)) )
))
(declare-fun r!15422 () Regex!21665)

(declare-fun validRegex!11969 (Regex!21665) Bool)

(assert (=> start!753840 (= res!3167668 (validRegex!11969 r!15422))))

(assert (=> start!753840 e!4719109))

(assert (=> start!753840 e!4719104))

(assert (=> start!753840 true))

(assert (=> start!753840 e!4719105))

(assert (=> start!753840 e!4719108))

(declare-fun e!4719106 () Bool)

(assert (=> start!753840 e!4719106))

(declare-fun b!8011077 () Bool)

(declare-fun res!3167666 () Bool)

(assert (=> b!8011077 (=> (not res!3167666) (not e!4719103))))

(declare-fun totalInputSize!629 () Int)

(declare-fun size!43567 (List!74894) Int)

(assert (=> b!8011077 (= res!3167666 (= totalInputSize!629 (size!43567 totalInput!1349)))))

(declare-fun b!8011078 () Bool)

(declare-fun tp!2397508 () Bool)

(assert (=> b!8011078 (= e!4719106 (and tp_is_empty!53873 tp!2397508))))

(declare-fun b!8011079 () Bool)

(declare-fun res!3167669 () Bool)

(assert (=> b!8011079 (=> (not res!3167669) (not e!4719103))))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8011079 (= res!3167669 (= testedPSize!271 (size!43567 testedP!353)))))

(declare-fun b!8011080 () Bool)

(declare-fun tp!2397512 () Bool)

(declare-fun tp!2397513 () Bool)

(assert (=> b!8011080 (= e!4719108 (and tp!2397512 tp!2397513))))

(assert (= (and start!753840 res!3167668) b!8011074))

(assert (= (and b!8011074 res!3167670) b!8011079))

(assert (= (and b!8011079 res!3167669) b!8011077))

(assert (= (and b!8011077 res!3167666) b!8011070))

(assert (= (and b!8011070 (not res!3167667)) b!8011071))

(get-info :version)

(assert (= (and start!753840 ((_ is Cons!74770) totalInput!1349)) b!8011073))

(assert (= (and start!753840 ((_ is Cons!74770) testedSuffix!271)) b!8011075))

(assert (= (and start!753840 ((_ is ElementMatch!21665) r!15422)) b!8011069))

(assert (= (and start!753840 ((_ is Concat!30664) r!15422)) b!8011080))

(assert (= (and start!753840 ((_ is Star!21665) r!15422)) b!8011076))

(assert (= (and start!753840 ((_ is Union!21665) r!15422)) b!8011072))

(assert (= (and start!753840 ((_ is Cons!74770) testedP!353)) b!8011078))

(declare-fun m!8375172 () Bool)

(assert (=> b!8011079 m!8375172))

(declare-fun m!8375174 () Bool)

(assert (=> start!753840 m!8375174))

(declare-fun m!8375176 () Bool)

(assert (=> b!8011077 m!8375176))

(declare-fun m!8375178 () Bool)

(assert (=> b!8011074 m!8375178))

(declare-fun m!8375180 () Bool)

(assert (=> b!8011071 m!8375180))

(assert (=> b!8011071 m!8375180))

(declare-fun m!8375182 () Bool)

(assert (=> b!8011071 m!8375182))

(declare-fun m!8375184 () Bool)

(assert (=> b!8011070 m!8375184))

(declare-fun m!8375186 () Bool)

(assert (=> b!8011070 m!8375186))

(declare-fun m!8375188 () Bool)

(assert (=> b!8011070 m!8375188))

(check-sat (not b!8011073) (not b!8011071) (not b!8011070) (not b!8011076) (not b!8011080) (not b!8011074) (not start!753840) (not b!8011072) (not b!8011075) (not b!8011079) (not b!8011077) tp_is_empty!53873 (not b!8011078))
(check-sat)
(get-model)

(declare-fun d!2388593 () Bool)

(declare-fun e!4719118 () Bool)

(assert (=> d!2388593 e!4719118))

(declare-fun res!3167681 () Bool)

(assert (=> d!2388593 (=> res!3167681 e!4719118)))

(declare-fun lt!2716846 () Bool)

(assert (=> d!2388593 (= res!3167681 (not lt!2716846))))

(declare-fun e!4719116 () Bool)

(assert (=> d!2388593 (= lt!2716846 e!4719116)))

(declare-fun res!3167679 () Bool)

(assert (=> d!2388593 (=> res!3167679 e!4719116)))

(assert (=> d!2388593 (= res!3167679 ((_ is Nil!74770) testedP!353))))

(assert (=> d!2388593 (= (isPrefix!6717 testedP!353 totalInput!1349) lt!2716846)))

(declare-fun b!8011091 () Bool)

(declare-fun e!4719117 () Bool)

(declare-fun tail!15869 (List!74894) List!74894)

(assert (=> b!8011091 (= e!4719117 (isPrefix!6717 (tail!15869 testedP!353) (tail!15869 totalInput!1349)))))

(declare-fun b!8011090 () Bool)

(declare-fun res!3167682 () Bool)

(assert (=> b!8011090 (=> (not res!3167682) (not e!4719117))))

(declare-fun head!16346 (List!74894) C!43668)

(assert (=> b!8011090 (= res!3167682 (= (head!16346 testedP!353) (head!16346 totalInput!1349)))))

(declare-fun b!8011089 () Bool)

(assert (=> b!8011089 (= e!4719116 e!4719117)))

(declare-fun res!3167680 () Bool)

(assert (=> b!8011089 (=> (not res!3167680) (not e!4719117))))

(assert (=> b!8011089 (= res!3167680 (not ((_ is Nil!74770) totalInput!1349)))))

(declare-fun b!8011092 () Bool)

(assert (=> b!8011092 (= e!4719118 (>= (size!43567 totalInput!1349) (size!43567 testedP!353)))))

(assert (= (and d!2388593 (not res!3167679)) b!8011089))

(assert (= (and b!8011089 res!3167680) b!8011090))

(assert (= (and b!8011090 res!3167682) b!8011091))

(assert (= (and d!2388593 (not res!3167681)) b!8011092))

(declare-fun m!8375190 () Bool)

(assert (=> b!8011091 m!8375190))

(declare-fun m!8375192 () Bool)

(assert (=> b!8011091 m!8375192))

(assert (=> b!8011091 m!8375190))

(assert (=> b!8011091 m!8375192))

(declare-fun m!8375194 () Bool)

(assert (=> b!8011091 m!8375194))

(declare-fun m!8375196 () Bool)

(assert (=> b!8011090 m!8375196))

(declare-fun m!8375198 () Bool)

(assert (=> b!8011090 m!8375198))

(assert (=> b!8011092 m!8375176))

(assert (=> b!8011092 m!8375172))

(assert (=> b!8011070 d!2388593))

(declare-fun d!2388597 () Bool)

(declare-fun e!4719123 () Bool)

(assert (=> d!2388597 e!4719123))

(declare-fun res!3167685 () Bool)

(assert (=> d!2388597 (=> res!3167685 e!4719123)))

(declare-fun lt!2716849 () Bool)

(assert (=> d!2388597 (= res!3167685 (not lt!2716849))))

(declare-fun e!4719121 () Bool)

(assert (=> d!2388597 (= lt!2716849 e!4719121)))

(declare-fun res!3167683 () Bool)

(assert (=> d!2388597 (=> res!3167683 e!4719121)))

(assert (=> d!2388597 (= res!3167683 ((_ is Nil!74770) testedP!353))))

(assert (=> d!2388597 (= (isPrefix!6717 testedP!353 lt!2716842) lt!2716849)))

(declare-fun b!8011099 () Bool)

(declare-fun e!4719122 () Bool)

(assert (=> b!8011099 (= e!4719122 (isPrefix!6717 (tail!15869 testedP!353) (tail!15869 lt!2716842)))))

(declare-fun b!8011098 () Bool)

(declare-fun res!3167686 () Bool)

(assert (=> b!8011098 (=> (not res!3167686) (not e!4719122))))

(assert (=> b!8011098 (= res!3167686 (= (head!16346 testedP!353) (head!16346 lt!2716842)))))

(declare-fun b!8011097 () Bool)

(assert (=> b!8011097 (= e!4719121 e!4719122)))

(declare-fun res!3167684 () Bool)

(assert (=> b!8011097 (=> (not res!3167684) (not e!4719122))))

(assert (=> b!8011097 (= res!3167684 (not ((_ is Nil!74770) lt!2716842)))))

(declare-fun b!8011100 () Bool)

(assert (=> b!8011100 (= e!4719123 (>= (size!43567 lt!2716842) (size!43567 testedP!353)))))

(assert (= (and d!2388597 (not res!3167683)) b!8011097))

(assert (= (and b!8011097 res!3167684) b!8011098))

(assert (= (and b!8011098 res!3167686) b!8011099))

(assert (= (and d!2388597 (not res!3167685)) b!8011100))

(assert (=> b!8011099 m!8375190))

(declare-fun m!8375200 () Bool)

(assert (=> b!8011099 m!8375200))

(assert (=> b!8011099 m!8375190))

(assert (=> b!8011099 m!8375200))

(declare-fun m!8375202 () Bool)

(assert (=> b!8011099 m!8375202))

(assert (=> b!8011098 m!8375196))

(declare-fun m!8375204 () Bool)

(assert (=> b!8011098 m!8375204))

(declare-fun m!8375206 () Bool)

(assert (=> b!8011100 m!8375206))

(assert (=> b!8011100 m!8375172))

(assert (=> b!8011070 d!2388597))

(declare-fun d!2388599 () Bool)

(assert (=> d!2388599 (isPrefix!6717 testedP!353 (++!18491 testedP!353 testedSuffix!271))))

(declare-fun lt!2716853 () Unit!170796)

(declare-fun choose!60340 (List!74894 List!74894) Unit!170796)

(assert (=> d!2388599 (= lt!2716853 (choose!60340 testedP!353 testedSuffix!271))))

(assert (=> d!2388599 (= (lemmaConcatTwoListThenFirstIsPrefix!3948 testedP!353 testedSuffix!271) lt!2716853)))

(declare-fun bs!1970859 () Bool)

(assert (= bs!1970859 d!2388599))

(assert (=> bs!1970859 m!8375178))

(assert (=> bs!1970859 m!8375178))

(declare-fun m!8375208 () Bool)

(assert (=> bs!1970859 m!8375208))

(declare-fun m!8375210 () Bool)

(assert (=> bs!1970859 m!8375210))

(assert (=> b!8011070 d!2388599))

(declare-fun d!2388601 () Bool)

(declare-fun lt!2716856 () Int)

(assert (=> d!2388601 (>= lt!2716856 0)))

(declare-fun e!4719130 () Int)

(assert (=> d!2388601 (= lt!2716856 e!4719130)))

(declare-fun c!1470476 () Bool)

(assert (=> d!2388601 (= c!1470476 ((_ is Nil!74770) testedP!353))))

(assert (=> d!2388601 (= (size!43567 testedP!353) lt!2716856)))

(declare-fun b!8011113 () Bool)

(assert (=> b!8011113 (= e!4719130 0)))

(declare-fun b!8011114 () Bool)

(assert (=> b!8011114 (= e!4719130 (+ 1 (size!43567 (t!390637 testedP!353))))))

(assert (= (and d!2388601 c!1470476) b!8011113))

(assert (= (and d!2388601 (not c!1470476)) b!8011114))

(declare-fun m!8375224 () Bool)

(assert (=> b!8011114 m!8375224))

(assert (=> b!8011079 d!2388601))

(declare-fun b!8011136 () Bool)

(declare-fun lt!2716863 () List!74894)

(declare-fun e!4719141 () Bool)

(assert (=> b!8011136 (= e!4719141 (or (not (= testedSuffix!271 Nil!74770)) (= lt!2716863 testedP!353)))))

(declare-fun d!2388605 () Bool)

(assert (=> d!2388605 e!4719141))

(declare-fun res!3167700 () Bool)

(assert (=> d!2388605 (=> (not res!3167700) (not e!4719141))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15906 (List!74894) (InoxSet C!43668))

(assert (=> d!2388605 (= res!3167700 (= (content!15906 lt!2716863) ((_ map or) (content!15906 testedP!353) (content!15906 testedSuffix!271))))))

(declare-fun e!4719140 () List!74894)

(assert (=> d!2388605 (= lt!2716863 e!4719140)))

(declare-fun c!1470483 () Bool)

(assert (=> d!2388605 (= c!1470483 ((_ is Nil!74770) testedP!353))))

(assert (=> d!2388605 (= (++!18491 testedP!353 testedSuffix!271) lt!2716863)))

(declare-fun b!8011134 () Bool)

(assert (=> b!8011134 (= e!4719140 (Cons!74770 (h!81218 testedP!353) (++!18491 (t!390637 testedP!353) testedSuffix!271)))))

(declare-fun b!8011133 () Bool)

(assert (=> b!8011133 (= e!4719140 testedSuffix!271)))

(declare-fun b!8011135 () Bool)

(declare-fun res!3167699 () Bool)

(assert (=> b!8011135 (=> (not res!3167699) (not e!4719141))))

(assert (=> b!8011135 (= res!3167699 (= (size!43567 lt!2716863) (+ (size!43567 testedP!353) (size!43567 testedSuffix!271))))))

(assert (= (and d!2388605 c!1470483) b!8011133))

(assert (= (and d!2388605 (not c!1470483)) b!8011134))

(assert (= (and d!2388605 res!3167700) b!8011135))

(assert (= (and b!8011135 res!3167699) b!8011136))

(declare-fun m!8375242 () Bool)

(assert (=> d!2388605 m!8375242))

(declare-fun m!8375244 () Bool)

(assert (=> d!2388605 m!8375244))

(declare-fun m!8375246 () Bool)

(assert (=> d!2388605 m!8375246))

(declare-fun m!8375248 () Bool)

(assert (=> b!8011134 m!8375248))

(declare-fun m!8375250 () Bool)

(assert (=> b!8011135 m!8375250))

(assert (=> b!8011135 m!8375172))

(declare-fun m!8375252 () Bool)

(assert (=> b!8011135 m!8375252))

(assert (=> b!8011074 d!2388605))

(declare-fun b!8011173 () Bool)

(declare-fun e!4719176 () Bool)

(declare-fun call!744183 () Bool)

(assert (=> b!8011173 (= e!4719176 call!744183)))

(declare-fun b!8011174 () Bool)

(declare-fun e!4719171 () Bool)

(assert (=> b!8011174 (= e!4719171 call!744183)))

(declare-fun b!8011175 () Bool)

(declare-fun res!3167733 () Bool)

(declare-fun e!4719174 () Bool)

(assert (=> b!8011175 (=> res!3167733 e!4719174)))

(assert (=> b!8011175 (= res!3167733 (not ((_ is Concat!30664) r!15422)))))

(declare-fun e!4719175 () Bool)

(assert (=> b!8011175 (= e!4719175 e!4719174)))

(declare-fun b!8011176 () Bool)

(declare-fun res!3167727 () Bool)

(assert (=> b!8011176 (=> (not res!3167727) (not e!4719176))))

(declare-fun call!744185 () Bool)

(assert (=> b!8011176 (= res!3167727 call!744185)))

(assert (=> b!8011176 (= e!4719175 e!4719176)))

(declare-fun bm!744178 () Bool)

(declare-fun call!744184 () Bool)

(assert (=> bm!744178 (= call!744183 call!744184)))

(declare-fun b!8011177 () Bool)

(declare-fun e!4719173 () Bool)

(declare-fun e!4719172 () Bool)

(assert (=> b!8011177 (= e!4719173 e!4719172)))

(declare-fun c!1470488 () Bool)

(assert (=> b!8011177 (= c!1470488 ((_ is Star!21665) r!15422))))

(declare-fun d!2388611 () Bool)

(declare-fun res!3167731 () Bool)

(assert (=> d!2388611 (=> res!3167731 e!4719173)))

(assert (=> d!2388611 (= res!3167731 ((_ is ElementMatch!21665) r!15422))))

(assert (=> d!2388611 (= (validRegex!11969 r!15422) e!4719173)))

(declare-fun bm!744179 () Bool)

(declare-fun c!1470489 () Bool)

(assert (=> bm!744179 (= call!744185 (validRegex!11969 (ite c!1470489 (regOne!43843 r!15422) (regOne!43842 r!15422))))))

(declare-fun b!8011178 () Bool)

(declare-fun e!4719168 () Bool)

(assert (=> b!8011178 (= e!4719172 e!4719168)))

(declare-fun res!3167730 () Bool)

(declare-fun nullable!9714 (Regex!21665) Bool)

(assert (=> b!8011178 (= res!3167730 (not (nullable!9714 (reg!21994 r!15422))))))

(assert (=> b!8011178 (=> (not res!3167730) (not e!4719168))))

(declare-fun bm!744180 () Bool)

(assert (=> bm!744180 (= call!744184 (validRegex!11969 (ite c!1470488 (reg!21994 r!15422) (ite c!1470489 (regTwo!43843 r!15422) (regTwo!43842 r!15422)))))))

(declare-fun b!8011179 () Bool)

(assert (=> b!8011179 (= e!4719172 e!4719175)))

(assert (=> b!8011179 (= c!1470489 ((_ is Union!21665) r!15422))))

(declare-fun b!8011180 () Bool)

(assert (=> b!8011180 (= e!4719168 call!744184)))

(declare-fun b!8011181 () Bool)

(assert (=> b!8011181 (= e!4719174 e!4719171)))

(declare-fun res!3167732 () Bool)

(assert (=> b!8011181 (=> (not res!3167732) (not e!4719171))))

(assert (=> b!8011181 (= res!3167732 call!744185)))

(assert (= (and d!2388611 (not res!3167731)) b!8011177))

(assert (= (and b!8011177 c!1470488) b!8011178))

(assert (= (and b!8011177 (not c!1470488)) b!8011179))

(assert (= (and b!8011178 res!3167730) b!8011180))

(assert (= (and b!8011179 c!1470489) b!8011176))

(assert (= (and b!8011179 (not c!1470489)) b!8011175))

(assert (= (and b!8011176 res!3167727) b!8011173))

(assert (= (and b!8011175 (not res!3167733)) b!8011181))

(assert (= (and b!8011181 res!3167732) b!8011174))

(assert (= (or b!8011173 b!8011174) bm!744178))

(assert (= (or b!8011176 b!8011181) bm!744179))

(assert (= (or b!8011180 bm!744178) bm!744180))

(declare-fun m!8375274 () Bool)

(assert (=> bm!744179 m!8375274))

(declare-fun m!8375276 () Bool)

(assert (=> b!8011178 m!8375276))

(declare-fun m!8375278 () Bool)

(assert (=> bm!744180 m!8375278))

(assert (=> start!753840 d!2388611))

(declare-fun d!2388619 () Bool)

(declare-fun lt!2716871 () Int)

(assert (=> d!2388619 (>= lt!2716871 0)))

(declare-fun e!4719189 () Int)

(assert (=> d!2388619 (= lt!2716871 e!4719189)))

(declare-fun c!1470494 () Bool)

(assert (=> d!2388619 (= c!1470494 ((_ is Nil!74770) totalInput!1349))))

(assert (=> d!2388619 (= (size!43567 totalInput!1349) lt!2716871)))

(declare-fun b!8011198 () Bool)

(assert (=> b!8011198 (= e!4719189 0)))

(declare-fun b!8011199 () Bool)

(assert (=> b!8011199 (= e!4719189 (+ 1 (size!43567 (t!390637 totalInput!1349))))))

(assert (= (and d!2388619 c!1470494) b!8011198))

(assert (= (and d!2388619 (not c!1470494)) b!8011199))

(declare-fun m!8375280 () Bool)

(assert (=> b!8011199 m!8375280))

(assert (=> b!8011077 d!2388619))

(declare-fun b!8011203 () Bool)

(declare-fun lt!2716872 () List!74894)

(declare-fun e!4719191 () Bool)

(assert (=> b!8011203 (= e!4719191 (or (not (= (getSuffix!3912 totalInput!1349 testedP!353) Nil!74770)) (= lt!2716872 testedP!353)))))

(declare-fun d!2388621 () Bool)

(assert (=> d!2388621 e!4719191))

(declare-fun res!3167743 () Bool)

(assert (=> d!2388621 (=> (not res!3167743) (not e!4719191))))

(assert (=> d!2388621 (= res!3167743 (= (content!15906 lt!2716872) ((_ map or) (content!15906 testedP!353) (content!15906 (getSuffix!3912 totalInput!1349 testedP!353)))))))

(declare-fun e!4719190 () List!74894)

(assert (=> d!2388621 (= lt!2716872 e!4719190)))

(declare-fun c!1470495 () Bool)

(assert (=> d!2388621 (= c!1470495 ((_ is Nil!74770) testedP!353))))

(assert (=> d!2388621 (= (++!18491 testedP!353 (getSuffix!3912 totalInput!1349 testedP!353)) lt!2716872)))

(declare-fun b!8011201 () Bool)

(assert (=> b!8011201 (= e!4719190 (Cons!74770 (h!81218 testedP!353) (++!18491 (t!390637 testedP!353) (getSuffix!3912 totalInput!1349 testedP!353))))))

(declare-fun b!8011200 () Bool)

(assert (=> b!8011200 (= e!4719190 (getSuffix!3912 totalInput!1349 testedP!353))))

(declare-fun b!8011202 () Bool)

(declare-fun res!3167742 () Bool)

(assert (=> b!8011202 (=> (not res!3167742) (not e!4719191))))

(assert (=> b!8011202 (= res!3167742 (= (size!43567 lt!2716872) (+ (size!43567 testedP!353) (size!43567 (getSuffix!3912 totalInput!1349 testedP!353)))))))

(assert (= (and d!2388621 c!1470495) b!8011200))

(assert (= (and d!2388621 (not c!1470495)) b!8011201))

(assert (= (and d!2388621 res!3167743) b!8011202))

(assert (= (and b!8011202 res!3167742) b!8011203))

(declare-fun m!8375282 () Bool)

(assert (=> d!2388621 m!8375282))

(assert (=> d!2388621 m!8375244))

(assert (=> d!2388621 m!8375180))

(declare-fun m!8375284 () Bool)

(assert (=> d!2388621 m!8375284))

(assert (=> b!8011201 m!8375180))

(declare-fun m!8375286 () Bool)

(assert (=> b!8011201 m!8375286))

(declare-fun m!8375288 () Bool)

(assert (=> b!8011202 m!8375288))

(assert (=> b!8011202 m!8375172))

(assert (=> b!8011202 m!8375180))

(declare-fun m!8375290 () Bool)

(assert (=> b!8011202 m!8375290))

(assert (=> b!8011071 d!2388621))

(declare-fun d!2388623 () Bool)

(declare-fun lt!2716875 () List!74894)

(assert (=> d!2388623 (= (++!18491 testedP!353 lt!2716875) totalInput!1349)))

(declare-fun e!4719201 () List!74894)

(assert (=> d!2388623 (= lt!2716875 e!4719201)))

(declare-fun c!1470500 () Bool)

(assert (=> d!2388623 (= c!1470500 ((_ is Cons!74770) testedP!353))))

(assert (=> d!2388623 (>= (size!43567 totalInput!1349) (size!43567 testedP!353))))

(assert (=> d!2388623 (= (getSuffix!3912 totalInput!1349 testedP!353) lt!2716875)))

(declare-fun b!8011217 () Bool)

(assert (=> b!8011217 (= e!4719201 (getSuffix!3912 (tail!15869 totalInput!1349) (t!390637 testedP!353)))))

(declare-fun b!8011218 () Bool)

(assert (=> b!8011218 (= e!4719201 totalInput!1349)))

(assert (= (and d!2388623 c!1470500) b!8011217))

(assert (= (and d!2388623 (not c!1470500)) b!8011218))

(declare-fun m!8375298 () Bool)

(assert (=> d!2388623 m!8375298))

(assert (=> d!2388623 m!8375176))

(assert (=> d!2388623 m!8375172))

(assert (=> b!8011217 m!8375192))

(assert (=> b!8011217 m!8375192))

(declare-fun m!8375300 () Bool)

(assert (=> b!8011217 m!8375300))

(assert (=> b!8011071 d!2388623))

(declare-fun b!8011234 () Bool)

(declare-fun e!4719206 () Bool)

(declare-fun tp!2397528 () Bool)

(declare-fun tp!2397529 () Bool)

(assert (=> b!8011234 (= e!4719206 (and tp!2397528 tp!2397529))))

(declare-fun b!8011233 () Bool)

(assert (=> b!8011233 (= e!4719206 tp_is_empty!53873)))

(declare-fun b!8011236 () Bool)

(declare-fun tp!2397526 () Bool)

(declare-fun tp!2397527 () Bool)

(assert (=> b!8011236 (= e!4719206 (and tp!2397526 tp!2397527))))

(declare-fun b!8011235 () Bool)

(declare-fun tp!2397525 () Bool)

(assert (=> b!8011235 (= e!4719206 tp!2397525)))

(assert (=> b!8011080 (= tp!2397512 e!4719206)))

(assert (= (and b!8011080 ((_ is ElementMatch!21665) (regOne!43842 r!15422))) b!8011233))

(assert (= (and b!8011080 ((_ is Concat!30664) (regOne!43842 r!15422))) b!8011234))

(assert (= (and b!8011080 ((_ is Star!21665) (regOne!43842 r!15422))) b!8011235))

(assert (= (and b!8011080 ((_ is Union!21665) (regOne!43842 r!15422))) b!8011236))

(declare-fun b!8011238 () Bool)

(declare-fun e!4719207 () Bool)

(declare-fun tp!2397533 () Bool)

(declare-fun tp!2397534 () Bool)

(assert (=> b!8011238 (= e!4719207 (and tp!2397533 tp!2397534))))

(declare-fun b!8011237 () Bool)

(assert (=> b!8011237 (= e!4719207 tp_is_empty!53873)))

(declare-fun b!8011240 () Bool)

(declare-fun tp!2397531 () Bool)

(declare-fun tp!2397532 () Bool)

(assert (=> b!8011240 (= e!4719207 (and tp!2397531 tp!2397532))))

(declare-fun b!8011239 () Bool)

(declare-fun tp!2397530 () Bool)

(assert (=> b!8011239 (= e!4719207 tp!2397530)))

(assert (=> b!8011080 (= tp!2397513 e!4719207)))

(assert (= (and b!8011080 ((_ is ElementMatch!21665) (regTwo!43842 r!15422))) b!8011237))

(assert (= (and b!8011080 ((_ is Concat!30664) (regTwo!43842 r!15422))) b!8011238))

(assert (= (and b!8011080 ((_ is Star!21665) (regTwo!43842 r!15422))) b!8011239))

(assert (= (and b!8011080 ((_ is Union!21665) (regTwo!43842 r!15422))) b!8011240))

(declare-fun b!8011247 () Bool)

(declare-fun e!4719211 () Bool)

(declare-fun tp!2397537 () Bool)

(assert (=> b!8011247 (= e!4719211 (and tp_is_empty!53873 tp!2397537))))

(assert (=> b!8011075 (= tp!2397510 e!4719211)))

(assert (= (and b!8011075 ((_ is Cons!74770) (t!390637 testedSuffix!271))) b!8011247))

(declare-fun b!8011248 () Bool)

(declare-fun e!4719212 () Bool)

(declare-fun tp!2397538 () Bool)

(assert (=> b!8011248 (= e!4719212 (and tp_is_empty!53873 tp!2397538))))

(assert (=> b!8011073 (= tp!2397509 e!4719212)))

(assert (= (and b!8011073 ((_ is Cons!74770) (t!390637 totalInput!1349))) b!8011248))

(declare-fun b!8011252 () Bool)

(declare-fun e!4719214 () Bool)

(declare-fun tp!2397542 () Bool)

(declare-fun tp!2397543 () Bool)

(assert (=> b!8011252 (= e!4719214 (and tp!2397542 tp!2397543))))

(declare-fun b!8011251 () Bool)

(assert (=> b!8011251 (= e!4719214 tp_is_empty!53873)))

(declare-fun b!8011254 () Bool)

(declare-fun tp!2397540 () Bool)

(declare-fun tp!2397541 () Bool)

(assert (=> b!8011254 (= e!4719214 (and tp!2397540 tp!2397541))))

(declare-fun b!8011253 () Bool)

(declare-fun tp!2397539 () Bool)

(assert (=> b!8011253 (= e!4719214 tp!2397539)))

(assert (=> b!8011072 (= tp!2397514 e!4719214)))

(assert (= (and b!8011072 ((_ is ElementMatch!21665) (regOne!43843 r!15422))) b!8011251))

(assert (= (and b!8011072 ((_ is Concat!30664) (regOne!43843 r!15422))) b!8011252))

(assert (= (and b!8011072 ((_ is Star!21665) (regOne!43843 r!15422))) b!8011253))

(assert (= (and b!8011072 ((_ is Union!21665) (regOne!43843 r!15422))) b!8011254))

(declare-fun b!8011258 () Bool)

(declare-fun e!4719215 () Bool)

(declare-fun tp!2397547 () Bool)

(declare-fun tp!2397548 () Bool)

(assert (=> b!8011258 (= e!4719215 (and tp!2397547 tp!2397548))))

(declare-fun b!8011257 () Bool)

(assert (=> b!8011257 (= e!4719215 tp_is_empty!53873)))

(declare-fun b!8011260 () Bool)

(declare-fun tp!2397545 () Bool)

(declare-fun tp!2397546 () Bool)

(assert (=> b!8011260 (= e!4719215 (and tp!2397545 tp!2397546))))

(declare-fun b!8011259 () Bool)

(declare-fun tp!2397544 () Bool)

(assert (=> b!8011259 (= e!4719215 tp!2397544)))

(assert (=> b!8011072 (= tp!2397511 e!4719215)))

(assert (= (and b!8011072 ((_ is ElementMatch!21665) (regTwo!43843 r!15422))) b!8011257))

(assert (= (and b!8011072 ((_ is Concat!30664) (regTwo!43843 r!15422))) b!8011258))

(assert (= (and b!8011072 ((_ is Star!21665) (regTwo!43843 r!15422))) b!8011259))

(assert (= (and b!8011072 ((_ is Union!21665) (regTwo!43843 r!15422))) b!8011260))

(declare-fun b!8011263 () Bool)

(declare-fun e!4719218 () Bool)

(declare-fun tp!2397551 () Bool)

(assert (=> b!8011263 (= e!4719218 (and tp_is_empty!53873 tp!2397551))))

(assert (=> b!8011078 (= tp!2397508 e!4719218)))

(assert (= (and b!8011078 ((_ is Cons!74770) (t!390637 testedP!353))) b!8011263))

(declare-fun b!8011265 () Bool)

(declare-fun e!4719219 () Bool)

(declare-fun tp!2397555 () Bool)

(declare-fun tp!2397556 () Bool)

(assert (=> b!8011265 (= e!4719219 (and tp!2397555 tp!2397556))))

(declare-fun b!8011264 () Bool)

(assert (=> b!8011264 (= e!4719219 tp_is_empty!53873)))

(declare-fun b!8011267 () Bool)

(declare-fun tp!2397553 () Bool)

(declare-fun tp!2397554 () Bool)

(assert (=> b!8011267 (= e!4719219 (and tp!2397553 tp!2397554))))

(declare-fun b!8011266 () Bool)

(declare-fun tp!2397552 () Bool)

(assert (=> b!8011266 (= e!4719219 tp!2397552)))

(assert (=> b!8011076 (= tp!2397507 e!4719219)))

(assert (= (and b!8011076 ((_ is ElementMatch!21665) (reg!21994 r!15422))) b!8011264))

(assert (= (and b!8011076 ((_ is Concat!30664) (reg!21994 r!15422))) b!8011265))

(assert (= (and b!8011076 ((_ is Star!21665) (reg!21994 r!15422))) b!8011266))

(assert (= (and b!8011076 ((_ is Union!21665) (reg!21994 r!15422))) b!8011267))

(check-sat (not b!8011178) (not b!8011099) (not b!8011266) (not b!8011135) (not b!8011253) (not b!8011234) (not b!8011258) (not bm!744179) (not b!8011252) (not b!8011267) (not b!8011254) (not d!2388599) (not b!8011090) (not bm!744180) (not b!8011114) (not b!8011092) (not d!2388621) (not b!8011235) (not b!8011201) (not b!8011202) (not b!8011260) (not b!8011239) (not b!8011217) (not b!8011098) (not b!8011247) (not b!8011240) (not b!8011238) (not b!8011248) (not b!8011091) (not d!2388605) (not b!8011236) (not b!8011265) tp_is_empty!53873 (not b!8011199) (not b!8011259) (not b!8011134) (not d!2388623) (not b!8011100) (not b!8011263))
(check-sat)
