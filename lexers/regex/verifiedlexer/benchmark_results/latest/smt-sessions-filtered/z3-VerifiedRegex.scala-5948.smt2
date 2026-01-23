; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!291184 () Bool)

(assert start!291184)

(declare-fun b!3038542 () Bool)

(assert (=> b!3038542 true))

(assert (=> b!3038542 true))

(assert (=> b!3038542 true))

(declare-fun res!1249744 () Bool)

(declare-fun e!1905076 () Bool)

(assert (=> start!291184 (=> (not res!1249744) (not e!1905076))))

(declare-datatypes ((C!19080 0))(
  ( (C!19081 (val!11576 Int)) )
))
(declare-datatypes ((Regex!9447 0))(
  ( (ElementMatch!9447 (c!502575 C!19080)) (Concat!14768 (regOne!19406 Regex!9447) (regTwo!19406 Regex!9447)) (EmptyExpr!9447) (Star!9447 (reg!9776 Regex!9447)) (EmptyLang!9447) (Union!9447 (regOne!19407 Regex!9447) (regTwo!19407 Regex!9447)) )
))
(declare-fun r!17423 () Regex!9447)

(declare-fun validRegex!4180 (Regex!9447) Bool)

(assert (=> start!291184 (= res!1249744 (validRegex!4180 r!17423))))

(assert (=> start!291184 e!1905076))

(declare-fun e!1905077 () Bool)

(assert (=> start!291184 e!1905077))

(declare-fun e!1905075 () Bool)

(assert (=> start!291184 e!1905075))

(declare-fun b!3038539 () Bool)

(declare-fun tp!962155 () Bool)

(assert (=> b!3038539 (= e!1905077 tp!962155)))

(declare-fun b!3038540 () Bool)

(declare-fun tp_is_empty!16457 () Bool)

(assert (=> b!3038540 (= e!1905077 tp_is_empty!16457)))

(declare-fun b!3038541 () Bool)

(declare-fun e!1905078 () Bool)

(assert (=> b!3038541 (= e!1905076 (not e!1905078))))

(declare-fun res!1249741 () Bool)

(assert (=> b!3038541 (=> res!1249741 e!1905078)))

(declare-fun lt!1047018 () Bool)

(get-info :version)

(assert (=> b!3038541 (= res!1249741 (or (not lt!1047018) ((_ is Concat!14768) r!17423) ((_ is Union!9447) r!17423) (not ((_ is Star!9447) r!17423))))))

(declare-datatypes ((List!35312 0))(
  ( (Nil!35188) (Cons!35188 (h!40608 C!19080) (t!234377 List!35312)) )
))
(declare-fun s!11993 () List!35312)

(declare-fun matchRSpec!1584 (Regex!9447 List!35312) Bool)

(assert (=> b!3038541 (= lt!1047018 (matchRSpec!1584 r!17423 s!11993))))

(declare-fun matchR!4329 (Regex!9447 List!35312) Bool)

(assert (=> b!3038541 (= lt!1047018 (matchR!4329 r!17423 s!11993))))

(declare-datatypes ((Unit!49317 0))(
  ( (Unit!49318) )
))
(declare-fun lt!1047016 () Unit!49317)

(declare-fun mainMatchTheorem!1584 (Regex!9447 List!35312) Unit!49317)

(assert (=> b!3038541 (= lt!1047016 (mainMatchTheorem!1584 r!17423 s!11993))))

(declare-fun e!1905079 () Bool)

(assert (=> b!3038542 (= e!1905078 e!1905079)))

(declare-fun res!1249743 () Bool)

(assert (=> b!3038542 (=> res!1249743 e!1905079)))

(assert (=> b!3038542 (= res!1249743 (not (validRegex!4180 (reg!9776 r!17423))))))

(declare-fun lt!1047015 () Regex!9447)

(declare-fun lambda!113320 () Int)

(declare-datatypes ((tuple2!34120 0))(
  ( (tuple2!34121 (_1!20192 List!35312) (_2!20192 List!35312)) )
))
(declare-datatypes ((Option!6792 0))(
  ( (None!6791) (Some!6791 (v!34925 tuple2!34120)) )
))
(declare-fun isDefined!5343 (Option!6792) Bool)

(declare-fun findConcatSeparation!1186 (Regex!9447 Regex!9447 List!35312 List!35312 List!35312) Option!6792)

(declare-fun Exists!1711 (Int) Bool)

(assert (=> b!3038542 (= (isDefined!5343 (findConcatSeparation!1186 (reg!9776 r!17423) lt!1047015 Nil!35188 s!11993 s!11993)) (Exists!1711 lambda!113320))))

(declare-fun lt!1047017 () Unit!49317)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!964 (Regex!9447 Regex!9447 List!35312) Unit!49317)

(assert (=> b!3038542 (= lt!1047017 (lemmaFindConcatSeparationEquivalentToExists!964 (reg!9776 r!17423) lt!1047015 s!11993))))

(assert (=> b!3038542 (= lt!1047015 (Star!9447 (reg!9776 r!17423)))))

(declare-fun b!3038543 () Bool)

(declare-fun tp!962153 () Bool)

(declare-fun tp!962152 () Bool)

(assert (=> b!3038543 (= e!1905077 (and tp!962153 tp!962152))))

(declare-fun b!3038544 () Bool)

(declare-fun nullable!3095 (Regex!9447) Bool)

(assert (=> b!3038544 (= e!1905079 (not (nullable!3095 (reg!9776 r!17423))))))

(declare-fun b!3038545 () Bool)

(declare-fun tp!962154 () Bool)

(assert (=> b!3038545 (= e!1905075 (and tp_is_empty!16457 tp!962154))))

(declare-fun b!3038546 () Bool)

(declare-fun tp!962156 () Bool)

(declare-fun tp!962157 () Bool)

(assert (=> b!3038546 (= e!1905077 (and tp!962156 tp!962157))))

(declare-fun b!3038547 () Bool)

(declare-fun res!1249742 () Bool)

(assert (=> b!3038547 (=> res!1249742 e!1905078)))

(declare-fun isEmpty!19489 (List!35312) Bool)

(assert (=> b!3038547 (= res!1249742 (isEmpty!19489 s!11993))))

(assert (= (and start!291184 res!1249744) b!3038541))

(assert (= (and b!3038541 (not res!1249741)) b!3038547))

(assert (= (and b!3038547 (not res!1249742)) b!3038542))

(assert (= (and b!3038542 (not res!1249743)) b!3038544))

(assert (= (and start!291184 ((_ is ElementMatch!9447) r!17423)) b!3038540))

(assert (= (and start!291184 ((_ is Concat!14768) r!17423)) b!3038543))

(assert (= (and start!291184 ((_ is Star!9447) r!17423)) b!3038539))

(assert (= (and start!291184 ((_ is Union!9447) r!17423)) b!3038546))

(assert (= (and start!291184 ((_ is Cons!35188) s!11993)) b!3038545))

(declare-fun m!3371043 () Bool)

(assert (=> b!3038547 m!3371043))

(declare-fun m!3371045 () Bool)

(assert (=> b!3038542 m!3371045))

(declare-fun m!3371047 () Bool)

(assert (=> b!3038542 m!3371047))

(declare-fun m!3371049 () Bool)

(assert (=> b!3038542 m!3371049))

(assert (=> b!3038542 m!3371045))

(declare-fun m!3371051 () Bool)

(assert (=> b!3038542 m!3371051))

(declare-fun m!3371053 () Bool)

(assert (=> b!3038542 m!3371053))

(declare-fun m!3371055 () Bool)

(assert (=> b!3038544 m!3371055))

(declare-fun m!3371057 () Bool)

(assert (=> start!291184 m!3371057))

(declare-fun m!3371059 () Bool)

(assert (=> b!3038541 m!3371059))

(declare-fun m!3371061 () Bool)

(assert (=> b!3038541 m!3371061))

(declare-fun m!3371063 () Bool)

(assert (=> b!3038541 m!3371063))

(check-sat (not b!3038547) (not b!3038541) (not b!3038546) (not start!291184) tp_is_empty!16457 (not b!3038539) (not b!3038545) (not b!3038544) (not b!3038543) (not b!3038542))
(check-sat)
(get-model)

(declare-fun d!852043 () Bool)

(declare-fun nullableFct!880 (Regex!9447) Bool)

(assert (=> d!852043 (= (nullable!3095 (reg!9776 r!17423)) (nullableFct!880 (reg!9776 r!17423)))))

(declare-fun bs!531034 () Bool)

(assert (= bs!531034 d!852043))

(declare-fun m!3371065 () Bool)

(assert (=> bs!531034 m!3371065))

(assert (=> b!3038544 d!852043))

(declare-fun d!852047 () Bool)

(declare-fun isEmpty!19491 (Option!6792) Bool)

(assert (=> d!852047 (= (isDefined!5343 (findConcatSeparation!1186 (reg!9776 r!17423) lt!1047015 Nil!35188 s!11993 s!11993)) (not (isEmpty!19491 (findConcatSeparation!1186 (reg!9776 r!17423) lt!1047015 Nil!35188 s!11993 s!11993))))))

(declare-fun bs!531036 () Bool)

(assert (= bs!531036 d!852047))

(assert (=> bs!531036 m!3371045))

(declare-fun m!3371069 () Bool)

(assert (=> bs!531036 m!3371069))

(assert (=> b!3038542 d!852047))

(declare-fun bs!531038 () Bool)

(declare-fun d!852051 () Bool)

(assert (= bs!531038 (and d!852051 b!3038542)))

(declare-fun lambda!113325 () Int)

(assert (=> bs!531038 (= lambda!113325 lambda!113320)))

(assert (=> d!852051 true))

(assert (=> d!852051 true))

(assert (=> d!852051 true))

(assert (=> d!852051 (= (isDefined!5343 (findConcatSeparation!1186 (reg!9776 r!17423) lt!1047015 Nil!35188 s!11993 s!11993)) (Exists!1711 lambda!113325))))

(declare-fun lt!1047023 () Unit!49317)

(declare-fun choose!18027 (Regex!9447 Regex!9447 List!35312) Unit!49317)

(assert (=> d!852051 (= lt!1047023 (choose!18027 (reg!9776 r!17423) lt!1047015 s!11993))))

(assert (=> d!852051 (validRegex!4180 (reg!9776 r!17423))))

(assert (=> d!852051 (= (lemmaFindConcatSeparationEquivalentToExists!964 (reg!9776 r!17423) lt!1047015 s!11993) lt!1047023)))

(declare-fun bs!531041 () Bool)

(assert (= bs!531041 d!852051))

(assert (=> bs!531041 m!3371045))

(declare-fun m!3371075 () Bool)

(assert (=> bs!531041 m!3371075))

(assert (=> bs!531041 m!3371045))

(assert (=> bs!531041 m!3371051))

(declare-fun m!3371079 () Bool)

(assert (=> bs!531041 m!3371079))

(assert (=> bs!531041 m!3371047))

(assert (=> b!3038542 d!852051))

(declare-fun d!852057 () Bool)

(declare-fun e!1905119 () Bool)

(assert (=> d!852057 e!1905119))

(declare-fun res!1249781 () Bool)

(assert (=> d!852057 (=> res!1249781 e!1905119)))

(declare-fun e!1905116 () Bool)

(assert (=> d!852057 (= res!1249781 e!1905116)))

(declare-fun res!1249780 () Bool)

(assert (=> d!852057 (=> (not res!1249780) (not e!1905116))))

(declare-fun lt!1047031 () Option!6792)

(assert (=> d!852057 (= res!1249780 (isDefined!5343 lt!1047031))))

(declare-fun e!1905115 () Option!6792)

(assert (=> d!852057 (= lt!1047031 e!1905115)))

(declare-fun c!502587 () Bool)

(declare-fun e!1905117 () Bool)

(assert (=> d!852057 (= c!502587 e!1905117)))

(declare-fun res!1249782 () Bool)

(assert (=> d!852057 (=> (not res!1249782) (not e!1905117))))

(assert (=> d!852057 (= res!1249782 (matchR!4329 (reg!9776 r!17423) Nil!35188))))

(assert (=> d!852057 (validRegex!4180 (reg!9776 r!17423))))

(assert (=> d!852057 (= (findConcatSeparation!1186 (reg!9776 r!17423) lt!1047015 Nil!35188 s!11993 s!11993) lt!1047031)))

(declare-fun b!3038605 () Bool)

(declare-fun e!1905118 () Option!6792)

(assert (=> b!3038605 (= e!1905118 None!6791)))

(declare-fun b!3038606 () Bool)

(assert (=> b!3038606 (= e!1905115 (Some!6791 (tuple2!34121 Nil!35188 s!11993)))))

(declare-fun b!3038607 () Bool)

(assert (=> b!3038607 (= e!1905119 (not (isDefined!5343 lt!1047031)))))

(declare-fun b!3038608 () Bool)

(declare-fun res!1249778 () Bool)

(assert (=> b!3038608 (=> (not res!1249778) (not e!1905116))))

(declare-fun get!10981 (Option!6792) tuple2!34120)

(assert (=> b!3038608 (= res!1249778 (matchR!4329 lt!1047015 (_2!20192 (get!10981 lt!1047031))))))

(declare-fun b!3038609 () Bool)

(declare-fun lt!1047032 () Unit!49317)

(declare-fun lt!1047033 () Unit!49317)

(assert (=> b!3038609 (= lt!1047032 lt!1047033)))

(declare-fun ++!8437 (List!35312 List!35312) List!35312)

(assert (=> b!3038609 (= (++!8437 (++!8437 Nil!35188 (Cons!35188 (h!40608 s!11993) Nil!35188)) (t!234377 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1044 (List!35312 C!19080 List!35312 List!35312) Unit!49317)

(assert (=> b!3038609 (= lt!1047033 (lemmaMoveElementToOtherListKeepsConcatEq!1044 Nil!35188 (h!40608 s!11993) (t!234377 s!11993) s!11993))))

(assert (=> b!3038609 (= e!1905118 (findConcatSeparation!1186 (reg!9776 r!17423) lt!1047015 (++!8437 Nil!35188 (Cons!35188 (h!40608 s!11993) Nil!35188)) (t!234377 s!11993) s!11993))))

(declare-fun b!3038610 () Bool)

(declare-fun res!1249779 () Bool)

(assert (=> b!3038610 (=> (not res!1249779) (not e!1905116))))

(assert (=> b!3038610 (= res!1249779 (matchR!4329 (reg!9776 r!17423) (_1!20192 (get!10981 lt!1047031))))))

(declare-fun b!3038611 () Bool)

(assert (=> b!3038611 (= e!1905116 (= (++!8437 (_1!20192 (get!10981 lt!1047031)) (_2!20192 (get!10981 lt!1047031))) s!11993))))

(declare-fun b!3038612 () Bool)

(assert (=> b!3038612 (= e!1905117 (matchR!4329 lt!1047015 s!11993))))

(declare-fun b!3038613 () Bool)

(assert (=> b!3038613 (= e!1905115 e!1905118)))

(declare-fun c!502586 () Bool)

(assert (=> b!3038613 (= c!502586 ((_ is Nil!35188) s!11993))))

(assert (= (and d!852057 res!1249782) b!3038612))

(assert (= (and d!852057 c!502587) b!3038606))

(assert (= (and d!852057 (not c!502587)) b!3038613))

(assert (= (and b!3038613 c!502586) b!3038605))

(assert (= (and b!3038613 (not c!502586)) b!3038609))

(assert (= (and d!852057 res!1249780) b!3038610))

(assert (= (and b!3038610 res!1249779) b!3038608))

(assert (= (and b!3038608 res!1249778) b!3038611))

(assert (= (and d!852057 (not res!1249781)) b!3038607))

(declare-fun m!3371087 () Bool)

(assert (=> b!3038611 m!3371087))

(declare-fun m!3371089 () Bool)

(assert (=> b!3038611 m!3371089))

(assert (=> b!3038610 m!3371087))

(declare-fun m!3371091 () Bool)

(assert (=> b!3038610 m!3371091))

(declare-fun m!3371093 () Bool)

(assert (=> b!3038607 m!3371093))

(assert (=> b!3038608 m!3371087))

(declare-fun m!3371095 () Bool)

(assert (=> b!3038608 m!3371095))

(declare-fun m!3371097 () Bool)

(assert (=> b!3038612 m!3371097))

(declare-fun m!3371099 () Bool)

(assert (=> b!3038609 m!3371099))

(assert (=> b!3038609 m!3371099))

(declare-fun m!3371101 () Bool)

(assert (=> b!3038609 m!3371101))

(declare-fun m!3371103 () Bool)

(assert (=> b!3038609 m!3371103))

(assert (=> b!3038609 m!3371099))

(declare-fun m!3371105 () Bool)

(assert (=> b!3038609 m!3371105))

(assert (=> d!852057 m!3371093))

(declare-fun m!3371107 () Bool)

(assert (=> d!852057 m!3371107))

(assert (=> d!852057 m!3371047))

(assert (=> b!3038542 d!852057))

(declare-fun d!852061 () Bool)

(declare-fun choose!18028 (Int) Bool)

(assert (=> d!852061 (= (Exists!1711 lambda!113320) (choose!18028 lambda!113320))))

(declare-fun bs!531042 () Bool)

(assert (= bs!531042 d!852061))

(declare-fun m!3371109 () Bool)

(assert (=> bs!531042 m!3371109))

(assert (=> b!3038542 d!852061))

(declare-fun bm!207688 () Bool)

(declare-fun call!207693 () Bool)

(declare-fun call!207694 () Bool)

(assert (=> bm!207688 (= call!207693 call!207694)))

(declare-fun b!3038668 () Bool)

(declare-fun e!1905161 () Bool)

(declare-fun e!1905159 () Bool)

(assert (=> b!3038668 (= e!1905161 e!1905159)))

(declare-fun c!502601 () Bool)

(assert (=> b!3038668 (= c!502601 ((_ is Star!9447) (reg!9776 r!17423)))))

(declare-fun b!3038669 () Bool)

(declare-fun e!1905156 () Bool)

(assert (=> b!3038669 (= e!1905156 call!207694)))

(declare-fun b!3038670 () Bool)

(declare-fun e!1905158 () Bool)

(assert (=> b!3038670 (= e!1905159 e!1905158)))

(declare-fun c!502600 () Bool)

(assert (=> b!3038670 (= c!502600 ((_ is Union!9447) (reg!9776 r!17423)))))

(declare-fun b!3038671 () Bool)

(assert (=> b!3038671 (= e!1905159 e!1905156)))

(declare-fun res!1249817 () Bool)

(assert (=> b!3038671 (= res!1249817 (not (nullable!3095 (reg!9776 (reg!9776 r!17423)))))))

(assert (=> b!3038671 (=> (not res!1249817) (not e!1905156))))

(declare-fun b!3038672 () Bool)

(declare-fun res!1249815 () Bool)

(declare-fun e!1905157 () Bool)

(assert (=> b!3038672 (=> res!1249815 e!1905157)))

(assert (=> b!3038672 (= res!1249815 (not ((_ is Concat!14768) (reg!9776 r!17423))))))

(assert (=> b!3038672 (= e!1905158 e!1905157)))

(declare-fun d!852063 () Bool)

(declare-fun res!1249816 () Bool)

(assert (=> d!852063 (=> res!1249816 e!1905161)))

(assert (=> d!852063 (= res!1249816 ((_ is ElementMatch!9447) (reg!9776 r!17423)))))

(assert (=> d!852063 (= (validRegex!4180 (reg!9776 r!17423)) e!1905161)))

(declare-fun b!3038673 () Bool)

(declare-fun e!1905160 () Bool)

(assert (=> b!3038673 (= e!1905157 e!1905160)))

(declare-fun res!1249814 () Bool)

(assert (=> b!3038673 (=> (not res!1249814) (not e!1905160))))

(declare-fun call!207695 () Bool)

(assert (=> b!3038673 (= res!1249814 call!207695)))

(declare-fun bm!207689 () Bool)

(assert (=> bm!207689 (= call!207694 (validRegex!4180 (ite c!502601 (reg!9776 (reg!9776 r!17423)) (ite c!502600 (regOne!19407 (reg!9776 r!17423)) (regTwo!19406 (reg!9776 r!17423))))))))

(declare-fun b!3038674 () Bool)

(declare-fun res!1249813 () Bool)

(declare-fun e!1905162 () Bool)

(assert (=> b!3038674 (=> (not res!1249813) (not e!1905162))))

(assert (=> b!3038674 (= res!1249813 call!207693)))

(assert (=> b!3038674 (= e!1905158 e!1905162)))

(declare-fun bm!207690 () Bool)

(assert (=> bm!207690 (= call!207695 (validRegex!4180 (ite c!502600 (regTwo!19407 (reg!9776 r!17423)) (regOne!19406 (reg!9776 r!17423)))))))

(declare-fun b!3038675 () Bool)

(assert (=> b!3038675 (= e!1905162 call!207695)))

(declare-fun b!3038676 () Bool)

(assert (=> b!3038676 (= e!1905160 call!207693)))

(assert (= (and d!852063 (not res!1249816)) b!3038668))

(assert (= (and b!3038668 c!502601) b!3038671))

(assert (= (and b!3038668 (not c!502601)) b!3038670))

(assert (= (and b!3038671 res!1249817) b!3038669))

(assert (= (and b!3038670 c!502600) b!3038674))

(assert (= (and b!3038670 (not c!502600)) b!3038672))

(assert (= (and b!3038674 res!1249813) b!3038675))

(assert (= (and b!3038672 (not res!1249815)) b!3038673))

(assert (= (and b!3038673 res!1249814) b!3038676))

(assert (= (or b!3038674 b!3038676) bm!207688))

(assert (= (or b!3038675 b!3038673) bm!207690))

(assert (= (or b!3038669 bm!207688) bm!207689))

(declare-fun m!3371137 () Bool)

(assert (=> b!3038671 m!3371137))

(declare-fun m!3371139 () Bool)

(assert (=> bm!207689 m!3371139))

(declare-fun m!3371141 () Bool)

(assert (=> bm!207690 m!3371141))

(assert (=> b!3038542 d!852063))

(declare-fun d!852069 () Bool)

(assert (=> d!852069 (= (isEmpty!19489 s!11993) ((_ is Nil!35188) s!11993))))

(assert (=> b!3038547 d!852069))

(declare-fun bm!207691 () Bool)

(declare-fun call!207696 () Bool)

(declare-fun call!207697 () Bool)

(assert (=> bm!207691 (= call!207696 call!207697)))

(declare-fun b!3038677 () Bool)

(declare-fun e!1905168 () Bool)

(declare-fun e!1905166 () Bool)

(assert (=> b!3038677 (= e!1905168 e!1905166)))

(declare-fun c!502603 () Bool)

(assert (=> b!3038677 (= c!502603 ((_ is Star!9447) r!17423))))

(declare-fun b!3038678 () Bool)

(declare-fun e!1905163 () Bool)

(assert (=> b!3038678 (= e!1905163 call!207697)))

(declare-fun b!3038679 () Bool)

(declare-fun e!1905165 () Bool)

(assert (=> b!3038679 (= e!1905166 e!1905165)))

(declare-fun c!502602 () Bool)

(assert (=> b!3038679 (= c!502602 ((_ is Union!9447) r!17423))))

(declare-fun b!3038680 () Bool)

(assert (=> b!3038680 (= e!1905166 e!1905163)))

(declare-fun res!1249822 () Bool)

(assert (=> b!3038680 (= res!1249822 (not (nullable!3095 (reg!9776 r!17423))))))

(assert (=> b!3038680 (=> (not res!1249822) (not e!1905163))))

(declare-fun b!3038681 () Bool)

(declare-fun res!1249820 () Bool)

(declare-fun e!1905164 () Bool)

(assert (=> b!3038681 (=> res!1249820 e!1905164)))

(assert (=> b!3038681 (= res!1249820 (not ((_ is Concat!14768) r!17423)))))

(assert (=> b!3038681 (= e!1905165 e!1905164)))

(declare-fun d!852071 () Bool)

(declare-fun res!1249821 () Bool)

(assert (=> d!852071 (=> res!1249821 e!1905168)))

(assert (=> d!852071 (= res!1249821 ((_ is ElementMatch!9447) r!17423))))

(assert (=> d!852071 (= (validRegex!4180 r!17423) e!1905168)))

(declare-fun b!3038682 () Bool)

(declare-fun e!1905167 () Bool)

(assert (=> b!3038682 (= e!1905164 e!1905167)))

(declare-fun res!1249819 () Bool)

(assert (=> b!3038682 (=> (not res!1249819) (not e!1905167))))

(declare-fun call!207698 () Bool)

(assert (=> b!3038682 (= res!1249819 call!207698)))

(declare-fun bm!207692 () Bool)

(assert (=> bm!207692 (= call!207697 (validRegex!4180 (ite c!502603 (reg!9776 r!17423) (ite c!502602 (regOne!19407 r!17423) (regTwo!19406 r!17423)))))))

(declare-fun b!3038683 () Bool)

(declare-fun res!1249818 () Bool)

(declare-fun e!1905169 () Bool)

(assert (=> b!3038683 (=> (not res!1249818) (not e!1905169))))

(assert (=> b!3038683 (= res!1249818 call!207696)))

(assert (=> b!3038683 (= e!1905165 e!1905169)))

(declare-fun bm!207693 () Bool)

(assert (=> bm!207693 (= call!207698 (validRegex!4180 (ite c!502602 (regTwo!19407 r!17423) (regOne!19406 r!17423))))))

(declare-fun b!3038684 () Bool)

(assert (=> b!3038684 (= e!1905169 call!207698)))

(declare-fun b!3038685 () Bool)

(assert (=> b!3038685 (= e!1905167 call!207696)))

(assert (= (and d!852071 (not res!1249821)) b!3038677))

(assert (= (and b!3038677 c!502603) b!3038680))

(assert (= (and b!3038677 (not c!502603)) b!3038679))

(assert (= (and b!3038680 res!1249822) b!3038678))

(assert (= (and b!3038679 c!502602) b!3038683))

(assert (= (and b!3038679 (not c!502602)) b!3038681))

(assert (= (and b!3038683 res!1249818) b!3038684))

(assert (= (and b!3038681 (not res!1249820)) b!3038682))

(assert (= (and b!3038682 res!1249819) b!3038685))

(assert (= (or b!3038683 b!3038685) bm!207691))

(assert (= (or b!3038684 b!3038682) bm!207693))

(assert (= (or b!3038678 bm!207691) bm!207692))

(assert (=> b!3038680 m!3371055))

(declare-fun m!3371143 () Bool)

(assert (=> bm!207692 m!3371143))

(declare-fun m!3371145 () Bool)

(assert (=> bm!207693 m!3371145))

(assert (=> start!291184 d!852071))

(declare-fun bs!531048 () Bool)

(declare-fun b!3038762 () Bool)

(assert (= bs!531048 (and b!3038762 b!3038542)))

(declare-fun lambda!113337 () Int)

(assert (=> bs!531048 (not (= lambda!113337 lambda!113320))))

(declare-fun bs!531049 () Bool)

(assert (= bs!531049 (and b!3038762 d!852051)))

(assert (=> bs!531049 (not (= lambda!113337 lambda!113325))))

(assert (=> b!3038762 true))

(assert (=> b!3038762 true))

(declare-fun bs!531050 () Bool)

(declare-fun b!3038769 () Bool)

(assert (= bs!531050 (and b!3038769 b!3038542)))

(declare-fun lambda!113338 () Int)

(assert (=> bs!531050 (not (= lambda!113338 lambda!113320))))

(declare-fun bs!531051 () Bool)

(assert (= bs!531051 (and b!3038769 d!852051)))

(assert (=> bs!531051 (not (= lambda!113338 lambda!113325))))

(declare-fun bs!531052 () Bool)

(assert (= bs!531052 (and b!3038769 b!3038762)))

(assert (=> bs!531052 (not (= lambda!113338 lambda!113337))))

(assert (=> b!3038769 true))

(assert (=> b!3038769 true))

(declare-fun b!3038761 () Bool)

(declare-fun c!502624 () Bool)

(assert (=> b!3038761 (= c!502624 ((_ is ElementMatch!9447) r!17423))))

(declare-fun e!1905217 () Bool)

(declare-fun e!1905214 () Bool)

(assert (=> b!3038761 (= e!1905217 e!1905214)))

(declare-fun e!1905219 () Bool)

(declare-fun call!207709 () Bool)

(assert (=> b!3038762 (= e!1905219 call!207709)))

(declare-fun bm!207704 () Bool)

(declare-fun call!207710 () Bool)

(assert (=> bm!207704 (= call!207710 (isEmpty!19489 s!11993))))

(declare-fun b!3038763 () Bool)

(assert (=> b!3038763 (= e!1905214 (= s!11993 (Cons!35188 (c!502575 r!17423) Nil!35188)))))

(declare-fun b!3038764 () Bool)

(declare-fun e!1905218 () Bool)

(declare-fun e!1905213 () Bool)

(assert (=> b!3038764 (= e!1905218 e!1905213)))

(declare-fun c!502625 () Bool)

(assert (=> b!3038764 (= c!502625 ((_ is Star!9447) r!17423))))

(declare-fun d!852073 () Bool)

(declare-fun c!502627 () Bool)

(assert (=> d!852073 (= c!502627 ((_ is EmptyExpr!9447) r!17423))))

(declare-fun e!1905215 () Bool)

(assert (=> d!852073 (= (matchRSpec!1584 r!17423 s!11993) e!1905215)))

(declare-fun b!3038765 () Bool)

(declare-fun e!1905216 () Bool)

(assert (=> b!3038765 (= e!1905216 (matchRSpec!1584 (regTwo!19407 r!17423) s!11993))))

(declare-fun b!3038766 () Bool)

(assert (=> b!3038766 (= e!1905215 e!1905217)))

(declare-fun res!1249858 () Bool)

(assert (=> b!3038766 (= res!1249858 (not ((_ is EmptyLang!9447) r!17423)))))

(assert (=> b!3038766 (=> (not res!1249858) (not e!1905217))))

(declare-fun b!3038767 () Bool)

(assert (=> b!3038767 (= e!1905218 e!1905216)))

(declare-fun res!1249860 () Bool)

(assert (=> b!3038767 (= res!1249860 (matchRSpec!1584 (regOne!19407 r!17423) s!11993))))

(assert (=> b!3038767 (=> res!1249860 e!1905216)))

(declare-fun b!3038768 () Bool)

(assert (=> b!3038768 (= e!1905215 call!207710)))

(assert (=> b!3038769 (= e!1905213 call!207709)))

(declare-fun bm!207705 () Bool)

(assert (=> bm!207705 (= call!207709 (Exists!1711 (ite c!502625 lambda!113337 lambda!113338)))))

(declare-fun b!3038770 () Bool)

(declare-fun c!502626 () Bool)

(assert (=> b!3038770 (= c!502626 ((_ is Union!9447) r!17423))))

(assert (=> b!3038770 (= e!1905214 e!1905218)))

(declare-fun b!3038771 () Bool)

(declare-fun res!1249859 () Bool)

(assert (=> b!3038771 (=> res!1249859 e!1905219)))

(assert (=> b!3038771 (= res!1249859 call!207710)))

(assert (=> b!3038771 (= e!1905213 e!1905219)))

(assert (= (and d!852073 c!502627) b!3038768))

(assert (= (and d!852073 (not c!502627)) b!3038766))

(assert (= (and b!3038766 res!1249858) b!3038761))

(assert (= (and b!3038761 c!502624) b!3038763))

(assert (= (and b!3038761 (not c!502624)) b!3038770))

(assert (= (and b!3038770 c!502626) b!3038767))

(assert (= (and b!3038770 (not c!502626)) b!3038764))

(assert (= (and b!3038767 (not res!1249860)) b!3038765))

(assert (= (and b!3038764 c!502625) b!3038771))

(assert (= (and b!3038764 (not c!502625)) b!3038769))

(assert (= (and b!3038771 (not res!1249859)) b!3038762))

(assert (= (or b!3038762 b!3038769) bm!207705))

(assert (= (or b!3038768 b!3038771) bm!207704))

(assert (=> bm!207704 m!3371043))

(declare-fun m!3371153 () Bool)

(assert (=> b!3038765 m!3371153))

(declare-fun m!3371155 () Bool)

(assert (=> b!3038767 m!3371155))

(declare-fun m!3371157 () Bool)

(assert (=> bm!207705 m!3371157))

(assert (=> b!3038541 d!852073))

(declare-fun b!3038842 () Bool)

(declare-fun res!1249901 () Bool)

(declare-fun e!1905258 () Bool)

(assert (=> b!3038842 (=> (not res!1249901) (not e!1905258))))

(declare-fun call!207716 () Bool)

(assert (=> b!3038842 (= res!1249901 (not call!207716))))

(declare-fun b!3038843 () Bool)

(declare-fun res!1249908 () Bool)

(declare-fun e!1905257 () Bool)

(assert (=> b!3038843 (=> res!1249908 e!1905257)))

(declare-fun tail!4977 (List!35312) List!35312)

(assert (=> b!3038843 (= res!1249908 (not (isEmpty!19489 (tail!4977 s!11993))))))

(declare-fun b!3038844 () Bool)

(declare-fun head!6750 (List!35312) C!19080)

(assert (=> b!3038844 (= e!1905258 (= (head!6750 s!11993) (c!502575 r!17423)))))

(declare-fun b!3038845 () Bool)

(declare-fun res!1249904 () Bool)

(assert (=> b!3038845 (=> (not res!1249904) (not e!1905258))))

(assert (=> b!3038845 (= res!1249904 (isEmpty!19489 (tail!4977 s!11993)))))

(declare-fun b!3038846 () Bool)

(declare-fun res!1249907 () Bool)

(declare-fun e!1905256 () Bool)

(assert (=> b!3038846 (=> res!1249907 e!1905256)))

(assert (=> b!3038846 (= res!1249907 (not ((_ is ElementMatch!9447) r!17423)))))

(declare-fun e!1905261 () Bool)

(assert (=> b!3038846 (= e!1905261 e!1905256)))

(declare-fun b!3038847 () Bool)

(declare-fun e!1905255 () Bool)

(declare-fun lt!1047048 () Bool)

(assert (=> b!3038847 (= e!1905255 (= lt!1047048 call!207716))))

(declare-fun b!3038848 () Bool)

(declare-fun e!1905259 () Bool)

(assert (=> b!3038848 (= e!1905259 (nullable!3095 r!17423))))

(declare-fun b!3038849 () Bool)

(declare-fun res!1249902 () Bool)

(assert (=> b!3038849 (=> res!1249902 e!1905256)))

(assert (=> b!3038849 (= res!1249902 e!1905258)))

(declare-fun res!1249903 () Bool)

(assert (=> b!3038849 (=> (not res!1249903) (not e!1905258))))

(assert (=> b!3038849 (= res!1249903 lt!1047048)))

(declare-fun b!3038850 () Bool)

(assert (=> b!3038850 (= e!1905255 e!1905261)))

(declare-fun c!502645 () Bool)

(assert (=> b!3038850 (= c!502645 ((_ is EmptyLang!9447) r!17423))))

(declare-fun b!3038852 () Bool)

(assert (=> b!3038852 (= e!1905261 (not lt!1047048))))

(declare-fun b!3038853 () Bool)

(declare-fun e!1905260 () Bool)

(assert (=> b!3038853 (= e!1905260 e!1905257)))

(declare-fun res!1249905 () Bool)

(assert (=> b!3038853 (=> res!1249905 e!1905257)))

(assert (=> b!3038853 (= res!1249905 call!207716)))

(declare-fun b!3038854 () Bool)

(assert (=> b!3038854 (= e!1905256 e!1905260)))

(declare-fun res!1249906 () Bool)

(assert (=> b!3038854 (=> (not res!1249906) (not e!1905260))))

(assert (=> b!3038854 (= res!1249906 (not lt!1047048))))

(declare-fun b!3038855 () Bool)

(declare-fun derivativeStep!2691 (Regex!9447 C!19080) Regex!9447)

(assert (=> b!3038855 (= e!1905259 (matchR!4329 (derivativeStep!2691 r!17423 (head!6750 s!11993)) (tail!4977 s!11993)))))

(declare-fun bm!207711 () Bool)

(assert (=> bm!207711 (= call!207716 (isEmpty!19489 s!11993))))

(declare-fun b!3038851 () Bool)

(assert (=> b!3038851 (= e!1905257 (not (= (head!6750 s!11993) (c!502575 r!17423))))))

(declare-fun d!852077 () Bool)

(assert (=> d!852077 e!1905255))

(declare-fun c!502644 () Bool)

(assert (=> d!852077 (= c!502644 ((_ is EmptyExpr!9447) r!17423))))

(assert (=> d!852077 (= lt!1047048 e!1905259)))

(declare-fun c!502643 () Bool)

(assert (=> d!852077 (= c!502643 (isEmpty!19489 s!11993))))

(assert (=> d!852077 (validRegex!4180 r!17423)))

(assert (=> d!852077 (= (matchR!4329 r!17423 s!11993) lt!1047048)))

(assert (= (and d!852077 c!502643) b!3038848))

(assert (= (and d!852077 (not c!502643)) b!3038855))

(assert (= (and d!852077 c!502644) b!3038847))

(assert (= (and d!852077 (not c!502644)) b!3038850))

(assert (= (and b!3038850 c!502645) b!3038852))

(assert (= (and b!3038850 (not c!502645)) b!3038846))

(assert (= (and b!3038846 (not res!1249907)) b!3038849))

(assert (= (and b!3038849 res!1249903) b!3038842))

(assert (= (and b!3038842 res!1249901) b!3038845))

(assert (= (and b!3038845 res!1249904) b!3038844))

(assert (= (and b!3038849 (not res!1249902)) b!3038854))

(assert (= (and b!3038854 res!1249906) b!3038853))

(assert (= (and b!3038853 (not res!1249905)) b!3038843))

(assert (= (and b!3038843 (not res!1249908)) b!3038851))

(assert (= (or b!3038847 b!3038842 b!3038853) bm!207711))

(declare-fun m!3371171 () Bool)

(assert (=> b!3038843 m!3371171))

(assert (=> b!3038843 m!3371171))

(declare-fun m!3371173 () Bool)

(assert (=> b!3038843 m!3371173))

(assert (=> bm!207711 m!3371043))

(declare-fun m!3371175 () Bool)

(assert (=> b!3038844 m!3371175))

(declare-fun m!3371177 () Bool)

(assert (=> b!3038848 m!3371177))

(assert (=> b!3038855 m!3371175))

(assert (=> b!3038855 m!3371175))

(declare-fun m!3371179 () Bool)

(assert (=> b!3038855 m!3371179))

(assert (=> b!3038855 m!3371171))

(assert (=> b!3038855 m!3371179))

(assert (=> b!3038855 m!3371171))

(declare-fun m!3371181 () Bool)

(assert (=> b!3038855 m!3371181))

(assert (=> d!852077 m!3371043))

(assert (=> d!852077 m!3371057))

(assert (=> b!3038845 m!3371171))

(assert (=> b!3038845 m!3371171))

(assert (=> b!3038845 m!3371173))

(assert (=> b!3038851 m!3371175))

(assert (=> b!3038541 d!852077))

(declare-fun d!852081 () Bool)

(assert (=> d!852081 (= (matchR!4329 r!17423 s!11993) (matchRSpec!1584 r!17423 s!11993))))

(declare-fun lt!1047054 () Unit!49317)

(declare-fun choose!18029 (Regex!9447 List!35312) Unit!49317)

(assert (=> d!852081 (= lt!1047054 (choose!18029 r!17423 s!11993))))

(assert (=> d!852081 (validRegex!4180 r!17423)))

(assert (=> d!852081 (= (mainMatchTheorem!1584 r!17423 s!11993) lt!1047054)))

(declare-fun bs!531055 () Bool)

(assert (= bs!531055 d!852081))

(assert (=> bs!531055 m!3371061))

(assert (=> bs!531055 m!3371059))

(declare-fun m!3371187 () Bool)

(assert (=> bs!531055 m!3371187))

(assert (=> bs!531055 m!3371057))

(assert (=> b!3038541 d!852081))

(declare-fun e!1905274 () Bool)

(assert (=> b!3038539 (= tp!962155 e!1905274)))

(declare-fun b!3038902 () Bool)

(declare-fun tp!962206 () Bool)

(declare-fun tp!962207 () Bool)

(assert (=> b!3038902 (= e!1905274 (and tp!962206 tp!962207))))

(declare-fun b!3038903 () Bool)

(declare-fun tp!962208 () Bool)

(assert (=> b!3038903 (= e!1905274 tp!962208)))

(declare-fun b!3038901 () Bool)

(assert (=> b!3038901 (= e!1905274 tp_is_empty!16457)))

(declare-fun b!3038904 () Bool)

(declare-fun tp!962210 () Bool)

(declare-fun tp!962209 () Bool)

(assert (=> b!3038904 (= e!1905274 (and tp!962210 tp!962209))))

(assert (= (and b!3038539 ((_ is ElementMatch!9447) (reg!9776 r!17423))) b!3038901))

(assert (= (and b!3038539 ((_ is Concat!14768) (reg!9776 r!17423))) b!3038902))

(assert (= (and b!3038539 ((_ is Star!9447) (reg!9776 r!17423))) b!3038903))

(assert (= (and b!3038539 ((_ is Union!9447) (reg!9776 r!17423))) b!3038904))

(declare-fun b!3038909 () Bool)

(declare-fun e!1905277 () Bool)

(declare-fun tp!962213 () Bool)

(assert (=> b!3038909 (= e!1905277 (and tp_is_empty!16457 tp!962213))))

(assert (=> b!3038545 (= tp!962154 e!1905277)))

(assert (= (and b!3038545 ((_ is Cons!35188) (t!234377 s!11993))) b!3038909))

(declare-fun e!1905278 () Bool)

(assert (=> b!3038543 (= tp!962153 e!1905278)))

(declare-fun b!3038911 () Bool)

(declare-fun tp!962214 () Bool)

(declare-fun tp!962215 () Bool)

(assert (=> b!3038911 (= e!1905278 (and tp!962214 tp!962215))))

(declare-fun b!3038912 () Bool)

(declare-fun tp!962216 () Bool)

(assert (=> b!3038912 (= e!1905278 tp!962216)))

(declare-fun b!3038910 () Bool)

(assert (=> b!3038910 (= e!1905278 tp_is_empty!16457)))

(declare-fun b!3038913 () Bool)

(declare-fun tp!962218 () Bool)

(declare-fun tp!962217 () Bool)

(assert (=> b!3038913 (= e!1905278 (and tp!962218 tp!962217))))

(assert (= (and b!3038543 ((_ is ElementMatch!9447) (regOne!19406 r!17423))) b!3038910))

(assert (= (and b!3038543 ((_ is Concat!14768) (regOne!19406 r!17423))) b!3038911))

(assert (= (and b!3038543 ((_ is Star!9447) (regOne!19406 r!17423))) b!3038912))

(assert (= (and b!3038543 ((_ is Union!9447) (regOne!19406 r!17423))) b!3038913))

(declare-fun e!1905279 () Bool)

(assert (=> b!3038543 (= tp!962152 e!1905279)))

(declare-fun b!3038915 () Bool)

(declare-fun tp!962219 () Bool)

(declare-fun tp!962220 () Bool)

(assert (=> b!3038915 (= e!1905279 (and tp!962219 tp!962220))))

(declare-fun b!3038916 () Bool)

(declare-fun tp!962221 () Bool)

(assert (=> b!3038916 (= e!1905279 tp!962221)))

(declare-fun b!3038914 () Bool)

(assert (=> b!3038914 (= e!1905279 tp_is_empty!16457)))

(declare-fun b!3038917 () Bool)

(declare-fun tp!962223 () Bool)

(declare-fun tp!962222 () Bool)

(assert (=> b!3038917 (= e!1905279 (and tp!962223 tp!962222))))

(assert (= (and b!3038543 ((_ is ElementMatch!9447) (regTwo!19406 r!17423))) b!3038914))

(assert (= (and b!3038543 ((_ is Concat!14768) (regTwo!19406 r!17423))) b!3038915))

(assert (= (and b!3038543 ((_ is Star!9447) (regTwo!19406 r!17423))) b!3038916))

(assert (= (and b!3038543 ((_ is Union!9447) (regTwo!19406 r!17423))) b!3038917))

(declare-fun e!1905280 () Bool)

(assert (=> b!3038546 (= tp!962156 e!1905280)))

(declare-fun b!3038919 () Bool)

(declare-fun tp!962224 () Bool)

(declare-fun tp!962225 () Bool)

(assert (=> b!3038919 (= e!1905280 (and tp!962224 tp!962225))))

(declare-fun b!3038920 () Bool)

(declare-fun tp!962226 () Bool)

(assert (=> b!3038920 (= e!1905280 tp!962226)))

(declare-fun b!3038918 () Bool)

(assert (=> b!3038918 (= e!1905280 tp_is_empty!16457)))

(declare-fun b!3038921 () Bool)

(declare-fun tp!962228 () Bool)

(declare-fun tp!962227 () Bool)

(assert (=> b!3038921 (= e!1905280 (and tp!962228 tp!962227))))

(assert (= (and b!3038546 ((_ is ElementMatch!9447) (regOne!19407 r!17423))) b!3038918))

(assert (= (and b!3038546 ((_ is Concat!14768) (regOne!19407 r!17423))) b!3038919))

(assert (= (and b!3038546 ((_ is Star!9447) (regOne!19407 r!17423))) b!3038920))

(assert (= (and b!3038546 ((_ is Union!9447) (regOne!19407 r!17423))) b!3038921))

(declare-fun e!1905281 () Bool)

(assert (=> b!3038546 (= tp!962157 e!1905281)))

(declare-fun b!3038923 () Bool)

(declare-fun tp!962229 () Bool)

(declare-fun tp!962230 () Bool)

(assert (=> b!3038923 (= e!1905281 (and tp!962229 tp!962230))))

(declare-fun b!3038924 () Bool)

(declare-fun tp!962231 () Bool)

(assert (=> b!3038924 (= e!1905281 tp!962231)))

(declare-fun b!3038922 () Bool)

(assert (=> b!3038922 (= e!1905281 tp_is_empty!16457)))

(declare-fun b!3038925 () Bool)

(declare-fun tp!962233 () Bool)

(declare-fun tp!962232 () Bool)

(assert (=> b!3038925 (= e!1905281 (and tp!962233 tp!962232))))

(assert (= (and b!3038546 ((_ is ElementMatch!9447) (regTwo!19407 r!17423))) b!3038922))

(assert (= (and b!3038546 ((_ is Concat!14768) (regTwo!19407 r!17423))) b!3038923))

(assert (= (and b!3038546 ((_ is Star!9447) (regTwo!19407 r!17423))) b!3038924))

(assert (= (and b!3038546 ((_ is Union!9447) (regTwo!19407 r!17423))) b!3038925))

(check-sat (not b!3038843) (not b!3038909) (not d!852057) (not bm!207704) (not b!3038911) (not d!852081) (not b!3038612) (not b!3038767) (not bm!207690) (not bm!207692) (not b!3038915) (not b!3038912) (not b!3038608) (not bm!207705) (not d!852043) (not b!3038924) (not b!3038855) (not b!3038607) (not b!3038671) (not b!3038920) (not d!852061) (not b!3038925) tp_is_empty!16457 (not b!3038923) (not d!852051) (not b!3038610) (not b!3038902) (not b!3038851) (not b!3038845) (not b!3038903) (not d!852047) (not b!3038680) (not b!3038609) (not d!852077) (not b!3038921) (not b!3038848) (not b!3038917) (not bm!207689) (not b!3038913) (not b!3038919) (not b!3038765) (not bm!207693) (not b!3038904) (not b!3038916) (not b!3038611) (not b!3038844) (not bm!207711))
(check-sat)
