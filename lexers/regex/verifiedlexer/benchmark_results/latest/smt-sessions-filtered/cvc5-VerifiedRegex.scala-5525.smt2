; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278344 () Bool)

(assert start!278344)

(declare-fun b!2860085 () Bool)

(assert (=> b!2860085 true))

(assert (=> b!2860085 true))

(declare-fun b!2860083 () Bool)

(declare-fun res!1187832 () Bool)

(declare-fun e!1810847 () Bool)

(assert (=> b!2860083 (=> (not res!1187832) (not e!1810847))))

(declare-datatypes ((C!17390 0))(
  ( (C!17391 (val!10729 Int)) )
))
(declare-datatypes ((Regex!8604 0))(
  ( (ElementMatch!8604 (c!460941 C!17390)) (Concat!13925 (regOne!17720 Regex!8604) (regTwo!17720 Regex!8604)) (EmptyExpr!8604) (Star!8604 (reg!8933 Regex!8604)) (EmptyLang!8604) (Union!8604 (regOne!17721 Regex!8604) (regTwo!17721 Regex!8604)) )
))
(declare-fun r!23423 () Regex!8604)

(declare-datatypes ((List!34201 0))(
  ( (Nil!34077) (Cons!34077 (h!39497 C!17390) (t!233236 List!34201)) )
))
(declare-fun prefix!1470 () List!34201)

(declare-fun prefixMatch!912 (Regex!8604 List!34201) Bool)

(assert (=> b!2860083 (= res!1187832 (prefixMatch!912 r!23423 prefix!1470))))

(declare-fun b!2860084 () Bool)

(declare-fun e!1810848 () Bool)

(declare-fun tp_is_empty!14945 () Bool)

(declare-fun tp!920674 () Bool)

(assert (=> b!2860084 (= e!1810848 (and tp_is_empty!14945 tp!920674))))

(declare-fun e!1810850 () Bool)

(declare-fun lambda!105176 () Int)

(declare-fun Exists!1306 (Int) Bool)

(assert (=> b!2860085 (= e!1810850 (Exists!1306 lambda!105176))))

(declare-datatypes ((Unit!47747 0))(
  ( (Unit!47748) )
))
(declare-fun lt!1014435 () Unit!47747)

(declare-fun lt!1014434 () List!34201)

(declare-fun ExistsThe!9 (List!34201 Int) Unit!47747)

(assert (=> b!2860085 (= lt!1014435 (ExistsThe!9 lt!1014434 lambda!105176))))

(declare-fun res!1187829 () Bool)

(assert (=> start!278344 (=> (not res!1187829) (not e!1810847))))

(declare-fun validRegex!3474 (Regex!8604) Bool)

(assert (=> start!278344 (= res!1187829 (validRegex!3474 r!23423))))

(assert (=> start!278344 e!1810847))

(declare-fun e!1810849 () Bool)

(assert (=> start!278344 e!1810849))

(assert (=> start!278344 e!1810848))

(declare-fun b!2860086 () Bool)

(declare-fun tp!920673 () Bool)

(declare-fun tp!920672 () Bool)

(assert (=> b!2860086 (= e!1810849 (and tp!920673 tp!920672))))

(declare-fun b!2860087 () Bool)

(declare-fun res!1187830 () Bool)

(assert (=> b!2860087 (=> (not res!1187830) (not e!1810847))))

(assert (=> b!2860087 (= res!1187830 (is-Nil!34077 prefix!1470))))

(declare-fun b!2860088 () Bool)

(declare-fun tp!920669 () Bool)

(declare-fun tp!920671 () Bool)

(assert (=> b!2860088 (= e!1810849 (and tp!920669 tp!920671))))

(declare-fun b!2860089 () Bool)

(declare-fun tp!920670 () Bool)

(assert (=> b!2860089 (= e!1810849 tp!920670)))

(declare-fun b!2860090 () Bool)

(assert (=> b!2860090 (= e!1810847 (not e!1810850))))

(declare-fun res!1187831 () Bool)

(assert (=> b!2860090 (=> res!1187831 e!1810850)))

(declare-fun isPrefix!2682 (List!34201 List!34201) Bool)

(assert (=> b!2860090 (= res!1187831 (not (isPrefix!2682 prefix!1470 lt!1014434)))))

(declare-fun matchR!3708 (Regex!8604 List!34201) Bool)

(assert (=> b!2860090 (matchR!3708 r!23423 lt!1014434)))

(declare-fun lt!1014436 () Unit!47747)

(declare-fun lemmaGetWitnessMatches!17 (Regex!8604) Unit!47747)

(assert (=> b!2860090 (= lt!1014436 (lemmaGetWitnessMatches!17 r!23423))))

(declare-datatypes ((Option!6315 0))(
  ( (None!6314) (Some!6314 (v!34436 List!34201)) )
))
(declare-fun get!10213 (Option!6315) List!34201)

(declare-fun getLanguageWitness!246 (Regex!8604) Option!6315)

(assert (=> b!2860090 (= lt!1014434 (get!10213 (getLanguageWitness!246 r!23423)))))

(declare-fun b!2860091 () Bool)

(assert (=> b!2860091 (= e!1810849 tp_is_empty!14945)))

(assert (= (and start!278344 res!1187829) b!2860083))

(assert (= (and b!2860083 res!1187832) b!2860087))

(assert (= (and b!2860087 res!1187830) b!2860090))

(assert (= (and b!2860090 (not res!1187831)) b!2860085))

(assert (= (and start!278344 (is-ElementMatch!8604 r!23423)) b!2860091))

(assert (= (and start!278344 (is-Concat!13925 r!23423)) b!2860086))

(assert (= (and start!278344 (is-Star!8604 r!23423)) b!2860089))

(assert (= (and start!278344 (is-Union!8604 r!23423)) b!2860088))

(assert (= (and start!278344 (is-Cons!34077 prefix!1470)) b!2860084))

(declare-fun m!3280645 () Bool)

(assert (=> b!2860083 m!3280645))

(declare-fun m!3280647 () Bool)

(assert (=> b!2860085 m!3280647))

(declare-fun m!3280649 () Bool)

(assert (=> b!2860085 m!3280649))

(declare-fun m!3280651 () Bool)

(assert (=> start!278344 m!3280651))

(declare-fun m!3280653 () Bool)

(assert (=> b!2860090 m!3280653))

(declare-fun m!3280655 () Bool)

(assert (=> b!2860090 m!3280655))

(declare-fun m!3280657 () Bool)

(assert (=> b!2860090 m!3280657))

(declare-fun m!3280659 () Bool)

(assert (=> b!2860090 m!3280659))

(assert (=> b!2860090 m!3280657))

(declare-fun m!3280661 () Bool)

(assert (=> b!2860090 m!3280661))

(push 1)

(assert (not b!2860084))

(assert (not b!2860090))

(assert tp_is_empty!14945)

(assert (not b!2860086))

(assert (not start!278344))

(assert (not b!2860085))

(assert (not b!2860088))

(assert (not b!2860083))

(assert (not b!2860089))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2860149 () Bool)

(declare-fun e!1810884 () Bool)

(declare-fun call!184431 () Bool)

(assert (=> b!2860149 (= e!1810884 call!184431)))

(declare-fun c!460947 () Bool)

(declare-fun bm!184424 () Bool)

(declare-fun c!460948 () Bool)

(assert (=> bm!184424 (= call!184431 (validRegex!3474 (ite c!460948 (reg!8933 r!23423) (ite c!460947 (regOne!17721 r!23423) (regOne!17720 r!23423)))))))

(declare-fun b!2860150 () Bool)

(declare-fun e!1810886 () Bool)

(declare-fun call!184430 () Bool)

(assert (=> b!2860150 (= e!1810886 call!184430)))

(declare-fun d!827050 () Bool)

(declare-fun res!1187862 () Bool)

(declare-fun e!1810882 () Bool)

(assert (=> d!827050 (=> res!1187862 e!1810882)))

(assert (=> d!827050 (= res!1187862 (is-ElementMatch!8604 r!23423))))

(assert (=> d!827050 (= (validRegex!3474 r!23423) e!1810882)))

(declare-fun b!2860151 () Bool)

(declare-fun e!1810887 () Bool)

(assert (=> b!2860151 (= e!1810887 e!1810886)))

(declare-fun res!1187859 () Bool)

(assert (=> b!2860151 (=> (not res!1187859) (not e!1810886))))

(declare-fun call!184429 () Bool)

(assert (=> b!2860151 (= res!1187859 call!184429)))

(declare-fun b!2860152 () Bool)

(declare-fun res!1187863 () Bool)

(declare-fun e!1810881 () Bool)

(assert (=> b!2860152 (=> (not res!1187863) (not e!1810881))))

(assert (=> b!2860152 (= res!1187863 call!184429)))

(declare-fun e!1810885 () Bool)

(assert (=> b!2860152 (= e!1810885 e!1810881)))

(declare-fun b!2860153 () Bool)

(assert (=> b!2860153 (= e!1810881 call!184430)))

(declare-fun b!2860154 () Bool)

(declare-fun e!1810883 () Bool)

(assert (=> b!2860154 (= e!1810882 e!1810883)))

(assert (=> b!2860154 (= c!460948 (is-Star!8604 r!23423))))

(declare-fun bm!184425 () Bool)

(assert (=> bm!184425 (= call!184429 call!184431)))

(declare-fun b!2860155 () Bool)

(assert (=> b!2860155 (= e!1810883 e!1810885)))

(assert (=> b!2860155 (= c!460947 (is-Union!8604 r!23423))))

(declare-fun b!2860156 () Bool)

(assert (=> b!2860156 (= e!1810883 e!1810884)))

(declare-fun res!1187860 () Bool)

(declare-fun nullable!2658 (Regex!8604) Bool)

(assert (=> b!2860156 (= res!1187860 (not (nullable!2658 (reg!8933 r!23423))))))

(assert (=> b!2860156 (=> (not res!1187860) (not e!1810884))))

(declare-fun bm!184426 () Bool)

(assert (=> bm!184426 (= call!184430 (validRegex!3474 (ite c!460947 (regTwo!17721 r!23423) (regTwo!17720 r!23423))))))

(declare-fun b!2860157 () Bool)

(declare-fun res!1187861 () Bool)

(assert (=> b!2860157 (=> res!1187861 e!1810887)))

(assert (=> b!2860157 (= res!1187861 (not (is-Concat!13925 r!23423)))))

(assert (=> b!2860157 (= e!1810885 e!1810887)))

(assert (= (and d!827050 (not res!1187862)) b!2860154))

(assert (= (and b!2860154 c!460948) b!2860156))

(assert (= (and b!2860154 (not c!460948)) b!2860155))

(assert (= (and b!2860156 res!1187860) b!2860149))

(assert (= (and b!2860155 c!460947) b!2860152))

(assert (= (and b!2860155 (not c!460947)) b!2860157))

(assert (= (and b!2860152 res!1187863) b!2860153))

(assert (= (and b!2860157 (not res!1187861)) b!2860151))

(assert (= (and b!2860151 res!1187859) b!2860150))

(assert (= (or b!2860153 b!2860150) bm!184426))

(assert (= (or b!2860152 b!2860151) bm!184425))

(assert (= (or b!2860149 bm!184425) bm!184424))

(declare-fun m!3280681 () Bool)

(assert (=> bm!184424 m!3280681))

(declare-fun m!3280683 () Bool)

(assert (=> b!2860156 m!3280683))

(declare-fun m!3280685 () Bool)

(assert (=> bm!184426 m!3280685))

(assert (=> start!278344 d!827050))

(declare-fun d!827054 () Bool)

(assert (=> d!827054 (= (get!10213 (getLanguageWitness!246 r!23423)) (v!34436 (getLanguageWitness!246 r!23423)))))

(assert (=> b!2860090 d!827054))

(declare-fun b!2860204 () Bool)

(declare-fun e!1810922 () Bool)

(declare-fun lt!1014448 () Bool)

(assert (=> b!2860204 (= e!1810922 (not lt!1014448))))

(declare-fun b!2860205 () Bool)

(declare-fun e!1810921 () Bool)

(declare-fun e!1810918 () Bool)

(assert (=> b!2860205 (= e!1810921 e!1810918)))

(declare-fun res!1187890 () Bool)

(assert (=> b!2860205 (=> (not res!1187890) (not e!1810918))))

(assert (=> b!2860205 (= res!1187890 (not lt!1014448))))

(declare-fun b!2860206 () Bool)

(declare-fun res!1187895 () Bool)

(assert (=> b!2860206 (=> res!1187895 e!1810921)))

(declare-fun e!1810917 () Bool)

(assert (=> b!2860206 (= res!1187895 e!1810917)))

(declare-fun res!1187896 () Bool)

(assert (=> b!2860206 (=> (not res!1187896) (not e!1810917))))

(assert (=> b!2860206 (= res!1187896 lt!1014448)))

(declare-fun b!2860207 () Bool)

(declare-fun e!1810916 () Bool)

(assert (=> b!2860207 (= e!1810916 e!1810922)))

(declare-fun c!460961 () Bool)

(assert (=> b!2860207 (= c!460961 (is-EmptyLang!8604 r!23423))))

(declare-fun b!2860208 () Bool)

(declare-fun res!1187891 () Bool)

(assert (=> b!2860208 (=> res!1187891 e!1810921)))

(assert (=> b!2860208 (= res!1187891 (not (is-ElementMatch!8604 r!23423)))))

(assert (=> b!2860208 (= e!1810922 e!1810921)))

(declare-fun b!2860209 () Bool)

(declare-fun res!1187893 () Bool)

(assert (=> b!2860209 (=> (not res!1187893) (not e!1810917))))

(declare-fun isEmpty!18612 (List!34201) Bool)

(declare-fun tail!4512 (List!34201) List!34201)

(assert (=> b!2860209 (= res!1187893 (isEmpty!18612 (tail!4512 lt!1014434)))))

(declare-fun b!2860210 () Bool)

(declare-fun e!1810919 () Bool)

(assert (=> b!2860210 (= e!1810919 (nullable!2658 r!23423))))

(declare-fun d!827056 () Bool)

(assert (=> d!827056 e!1810916))

(declare-fun c!460960 () Bool)

(assert (=> d!827056 (= c!460960 (is-EmptyExpr!8604 r!23423))))

(assert (=> d!827056 (= lt!1014448 e!1810919)))

(declare-fun c!460959 () Bool)

(assert (=> d!827056 (= c!460959 (isEmpty!18612 lt!1014434))))

(assert (=> d!827056 (validRegex!3474 r!23423)))

(assert (=> d!827056 (= (matchR!3708 r!23423 lt!1014434) lt!1014448)))

(declare-fun b!2860211 () Bool)

(declare-fun e!1810920 () Bool)

(assert (=> b!2860211 (= e!1810918 e!1810920)))

(declare-fun res!1187894 () Bool)

(assert (=> b!2860211 (=> res!1187894 e!1810920)))

(declare-fun call!184440 () Bool)

(assert (=> b!2860211 (= res!1187894 call!184440)))

(declare-fun b!2860212 () Bool)

(declare-fun res!1187897 () Bool)

(assert (=> b!2860212 (=> res!1187897 e!1810920)))

(assert (=> b!2860212 (= res!1187897 (not (isEmpty!18612 (tail!4512 lt!1014434))))))

(declare-fun b!2860213 () Bool)

(declare-fun derivativeStep!2293 (Regex!8604 C!17390) Regex!8604)

(declare-fun head!6287 (List!34201) C!17390)

(assert (=> b!2860213 (= e!1810919 (matchR!3708 (derivativeStep!2293 r!23423 (head!6287 lt!1014434)) (tail!4512 lt!1014434)))))

(declare-fun b!2860214 () Bool)

(assert (=> b!2860214 (= e!1810916 (= lt!1014448 call!184440))))

(declare-fun b!2860215 () Bool)

(assert (=> b!2860215 (= e!1810917 (= (head!6287 lt!1014434) (c!460941 r!23423)))))

(declare-fun bm!184435 () Bool)

(assert (=> bm!184435 (= call!184440 (isEmpty!18612 lt!1014434))))

(declare-fun b!2860216 () Bool)

(assert (=> b!2860216 (= e!1810920 (not (= (head!6287 lt!1014434) (c!460941 r!23423))))))

(declare-fun b!2860217 () Bool)

(declare-fun res!1187892 () Bool)

(assert (=> b!2860217 (=> (not res!1187892) (not e!1810917))))

(assert (=> b!2860217 (= res!1187892 (not call!184440))))

(assert (= (and d!827056 c!460959) b!2860210))

(assert (= (and d!827056 (not c!460959)) b!2860213))

(assert (= (and d!827056 c!460960) b!2860214))

(assert (= (and d!827056 (not c!460960)) b!2860207))

(assert (= (and b!2860207 c!460961) b!2860204))

(assert (= (and b!2860207 (not c!460961)) b!2860208))

(assert (= (and b!2860208 (not res!1187891)) b!2860206))

(assert (= (and b!2860206 res!1187896) b!2860217))

(assert (= (and b!2860217 res!1187892) b!2860209))

(assert (= (and b!2860209 res!1187893) b!2860215))

(assert (= (and b!2860206 (not res!1187895)) b!2860205))

(assert (= (and b!2860205 res!1187890) b!2860211))

(assert (= (and b!2860211 (not res!1187894)) b!2860212))

(assert (= (and b!2860212 (not res!1187897)) b!2860216))

(assert (= (or b!2860214 b!2860211 b!2860217) bm!184435))

(declare-fun m!3280687 () Bool)

(assert (=> b!2860215 m!3280687))

(declare-fun m!3280689 () Bool)

(assert (=> b!2860209 m!3280689))

(assert (=> b!2860209 m!3280689))

(declare-fun m!3280691 () Bool)

(assert (=> b!2860209 m!3280691))

(declare-fun m!3280693 () Bool)

(assert (=> bm!184435 m!3280693))

(declare-fun m!3280695 () Bool)

(assert (=> b!2860210 m!3280695))

(assert (=> b!2860212 m!3280689))

(assert (=> b!2860212 m!3280689))

(assert (=> b!2860212 m!3280691))

(assert (=> b!2860216 m!3280687))

(assert (=> d!827056 m!3280693))

(assert (=> d!827056 m!3280651))

(assert (=> b!2860213 m!3280687))

(assert (=> b!2860213 m!3280687))

(declare-fun m!3280697 () Bool)

(assert (=> b!2860213 m!3280697))

(assert (=> b!2860213 m!3280689))

(assert (=> b!2860213 m!3280697))

(assert (=> b!2860213 m!3280689))

(declare-fun m!3280699 () Bool)

(assert (=> b!2860213 m!3280699))

(assert (=> b!2860090 d!827056))

(declare-fun d!827058 () Bool)

(assert (=> d!827058 (matchR!3708 r!23423 (get!10213 (getLanguageWitness!246 r!23423)))))

(declare-fun lt!1014451 () Unit!47747)

(declare-fun choose!16829 (Regex!8604) Unit!47747)

(assert (=> d!827058 (= lt!1014451 (choose!16829 r!23423))))

(assert (=> d!827058 (validRegex!3474 r!23423)))

(assert (=> d!827058 (= (lemmaGetWitnessMatches!17 r!23423) lt!1014451)))

(declare-fun bs!520381 () Bool)

(assert (= bs!520381 d!827058))

(assert (=> bs!520381 m!3280651))

(declare-fun m!3280701 () Bool)

(assert (=> bs!520381 m!3280701))

(assert (=> bs!520381 m!3280657))

(assert (=> bs!520381 m!3280661))

(declare-fun m!3280705 () Bool)

(assert (=> bs!520381 m!3280705))

(assert (=> bs!520381 m!3280657))

(assert (=> bs!520381 m!3280661))

(assert (=> b!2860090 d!827058))

(declare-fun b!2860265 () Bool)

(declare-fun e!1810951 () Option!6315)

(declare-fun e!1810952 () Option!6315)

(assert (=> b!2860265 (= e!1810951 e!1810952)))

(declare-fun c!460984 () Bool)

(assert (=> b!2860265 (= c!460984 (is-EmptyLang!8604 r!23423))))

(declare-fun b!2860266 () Bool)

(assert (=> b!2860266 (= e!1810952 None!6314)))

(declare-fun b!2860267 () Bool)

(declare-fun e!1810953 () Option!6315)

(declare-fun e!1810954 () Option!6315)

(assert (=> b!2860267 (= e!1810953 e!1810954)))

(declare-fun lt!1014459 () Option!6315)

(declare-fun call!184449 () Option!6315)

(assert (=> b!2860267 (= lt!1014459 call!184449)))

(declare-fun c!460986 () Bool)

(assert (=> b!2860267 (= c!460986 (is-Some!6314 lt!1014459))))

(declare-fun b!2860268 () Bool)

(declare-fun c!460990 () Bool)

(assert (=> b!2860268 (= c!460990 (is-ElementMatch!8604 r!23423))))

(declare-fun e!1810956 () Option!6315)

(assert (=> b!2860268 (= e!1810952 e!1810956)))

(declare-fun b!2860269 () Bool)

(declare-fun c!460988 () Bool)

(assert (=> b!2860269 (= c!460988 (is-Union!8604 r!23423))))

(declare-fun e!1810950 () Option!6315)

(assert (=> b!2860269 (= e!1810950 e!1810953)))

(declare-fun b!2860270 () Bool)

(declare-fun e!1810949 () Option!6315)

(declare-fun lt!1014460 () Option!6315)

(assert (=> b!2860270 (= e!1810949 lt!1014460)))

(declare-fun b!2860271 () Bool)

(assert (=> b!2860271 (= e!1810951 (Some!6314 Nil!34077))))

(declare-fun b!2860272 () Bool)

(assert (=> b!2860272 (= e!1810956 (Some!6314 (Cons!34077 (c!460941 r!23423) Nil!34077)))))

(declare-fun b!2860273 () Bool)

(declare-fun c!460985 () Bool)

(declare-fun lt!1014458 () Option!6315)

(assert (=> b!2860273 (= c!460985 (is-Some!6314 lt!1014458))))

(declare-fun call!184448 () Option!6315)

(assert (=> b!2860273 (= lt!1014458 call!184448)))

(declare-fun e!1810955 () Option!6315)

(assert (=> b!2860273 (= e!1810954 e!1810955)))

(declare-fun b!2860274 () Bool)

(declare-fun ++!8132 (List!34201 List!34201) List!34201)

(assert (=> b!2860274 (= e!1810955 (Some!6314 (++!8132 (v!34436 lt!1014459) (v!34436 lt!1014458))))))

(declare-fun b!2860275 () Bool)

(assert (=> b!2860275 (= e!1810954 None!6314)))

(declare-fun b!2860276 () Bool)

(assert (=> b!2860276 (= e!1810950 (Some!6314 Nil!34077))))

(declare-fun b!2860278 () Bool)

(assert (=> b!2860278 (= e!1810956 e!1810950)))

(declare-fun c!460987 () Bool)

(assert (=> b!2860278 (= c!460987 (is-Star!8604 r!23423))))

(declare-fun bm!184443 () Bool)

(assert (=> bm!184443 (= call!184448 (getLanguageWitness!246 (ite c!460988 (regOne!17721 r!23423) (regTwo!17720 r!23423))))))

(declare-fun b!2860279 () Bool)

(assert (=> b!2860279 (= e!1810953 e!1810949)))

(assert (=> b!2860279 (= lt!1014460 call!184448)))

(declare-fun c!460983 () Bool)

(assert (=> b!2860279 (= c!460983 (is-Some!6314 lt!1014460))))

(declare-fun d!827060 () Bool)

(declare-fun c!460989 () Bool)

(assert (=> d!827060 (= c!460989 (is-EmptyExpr!8604 r!23423))))

(assert (=> d!827060 (= (getLanguageWitness!246 r!23423) e!1810951)))

(declare-fun b!2860277 () Bool)

(assert (=> b!2860277 (= e!1810949 call!184449)))

(declare-fun b!2860280 () Bool)

(assert (=> b!2860280 (= e!1810955 None!6314)))

(declare-fun bm!184444 () Bool)

(assert (=> bm!184444 (= call!184449 (getLanguageWitness!246 (ite c!460988 (regTwo!17721 r!23423) (regOne!17720 r!23423))))))

(assert (= (and d!827060 c!460989) b!2860271))

(assert (= (and d!827060 (not c!460989)) b!2860265))

(assert (= (and b!2860265 c!460984) b!2860266))

(assert (= (and b!2860265 (not c!460984)) b!2860268))

(assert (= (and b!2860268 c!460990) b!2860272))

(assert (= (and b!2860268 (not c!460990)) b!2860278))

(assert (= (and b!2860278 c!460987) b!2860276))

(assert (= (and b!2860278 (not c!460987)) b!2860269))

(assert (= (and b!2860269 c!460988) b!2860279))

(assert (= (and b!2860269 (not c!460988)) b!2860267))

(assert (= (and b!2860279 c!460983) b!2860270))

(assert (= (and b!2860279 (not c!460983)) b!2860277))

(assert (= (and b!2860267 c!460986) b!2860273))

(assert (= (and b!2860267 (not c!460986)) b!2860275))

(assert (= (and b!2860273 c!460985) b!2860274))

(assert (= (and b!2860273 (not c!460985)) b!2860280))

(assert (= (or b!2860279 b!2860273) bm!184443))

(assert (= (or b!2860277 b!2860267) bm!184444))

(declare-fun m!3280723 () Bool)

(assert (=> b!2860274 m!3280723))

(declare-fun m!3280725 () Bool)

(assert (=> bm!184443 m!3280725))

(declare-fun m!3280727 () Bool)

(assert (=> bm!184444 m!3280727))

(assert (=> b!2860090 d!827060))

(declare-fun b!2860290 () Bool)

(declare-fun res!1187913 () Bool)

(declare-fun e!1810964 () Bool)

(assert (=> b!2860290 (=> (not res!1187913) (not e!1810964))))

(assert (=> b!2860290 (= res!1187913 (= (head!6287 prefix!1470) (head!6287 lt!1014434)))))

(declare-fun b!2860292 () Bool)

(declare-fun e!1810965 () Bool)

(declare-fun size!26282 (List!34201) Int)

(assert (=> b!2860292 (= e!1810965 (>= (size!26282 lt!1014434) (size!26282 prefix!1470)))))

(declare-fun b!2860291 () Bool)

(assert (=> b!2860291 (= e!1810964 (isPrefix!2682 (tail!4512 prefix!1470) (tail!4512 lt!1014434)))))

(declare-fun b!2860289 () Bool)

(declare-fun e!1810963 () Bool)

(assert (=> b!2860289 (= e!1810963 e!1810964)))

(declare-fun res!1187912 () Bool)

(assert (=> b!2860289 (=> (not res!1187912) (not e!1810964))))

(assert (=> b!2860289 (= res!1187912 (not (is-Nil!34077 lt!1014434)))))

(declare-fun d!827066 () Bool)

(assert (=> d!827066 e!1810965))

(declare-fun res!1187911 () Bool)

(assert (=> d!827066 (=> res!1187911 e!1810965)))

(declare-fun lt!1014463 () Bool)

(assert (=> d!827066 (= res!1187911 (not lt!1014463))))

(assert (=> d!827066 (= lt!1014463 e!1810963)))

(declare-fun res!1187914 () Bool)

(assert (=> d!827066 (=> res!1187914 e!1810963)))

(assert (=> d!827066 (= res!1187914 (is-Nil!34077 prefix!1470))))

(assert (=> d!827066 (= (isPrefix!2682 prefix!1470 lt!1014434) lt!1014463)))

(assert (= (and d!827066 (not res!1187914)) b!2860289))

(assert (= (and b!2860289 res!1187912) b!2860290))

(assert (= (and b!2860290 res!1187913) b!2860291))

(assert (= (and d!827066 (not res!1187911)) b!2860292))

(declare-fun m!3280729 () Bool)

(assert (=> b!2860290 m!3280729))

(assert (=> b!2860290 m!3280687))

(declare-fun m!3280731 () Bool)

(assert (=> b!2860292 m!3280731))

(declare-fun m!3280733 () Bool)

(assert (=> b!2860292 m!3280733))

(declare-fun m!3280735 () Bool)

(assert (=> b!2860291 m!3280735))

(assert (=> b!2860291 m!3280689))

(assert (=> b!2860291 m!3280735))

(assert (=> b!2860291 m!3280689))

(declare-fun m!3280737 () Bool)

(assert (=> b!2860291 m!3280737))

(assert (=> b!2860090 d!827066))

(declare-fun d!827068 () Bool)

(declare-fun choose!16830 (Int) Bool)

(assert (=> d!827068 (= (Exists!1306 lambda!105176) (choose!16830 lambda!105176))))

(declare-fun bs!520382 () Bool)

(assert (= bs!520382 d!827068))

(declare-fun m!3280739 () Bool)

(assert (=> bs!520382 m!3280739))

(assert (=> b!2860085 d!827068))

(declare-fun d!827070 () Bool)

(assert (=> d!827070 (Exists!1306 lambda!105176)))

(declare-fun lt!1014468 () Unit!47747)

(declare-fun choose!16831 (List!34201 Int) Unit!47747)

(assert (=> d!827070 (= lt!1014468 (choose!16831 lt!1014434 lambda!105176))))

(declare-fun dynLambda!14239 (Int List!34201) Bool)

(assert (=> d!827070 (dynLambda!14239 lambda!105176 lt!1014434)))

(assert (=> d!827070 (= (ExistsThe!9 lt!1014434 lambda!105176) lt!1014468)))

(declare-fun b_lambda!85739 () Bool)

(assert (=> (not b_lambda!85739) (not d!827070)))

(declare-fun bs!520383 () Bool)

(assert (= bs!520383 d!827070))

(assert (=> bs!520383 m!3280647))

(declare-fun m!3280741 () Bool)

(assert (=> bs!520383 m!3280741))

(declare-fun m!3280743 () Bool)

(assert (=> bs!520383 m!3280743))

(assert (=> b!2860085 d!827070))

(declare-fun d!827072 () Bool)

(declare-fun c!460993 () Bool)

(assert (=> d!827072 (= c!460993 (isEmpty!18612 prefix!1470))))

(declare-fun e!1810977 () Bool)

(assert (=> d!827072 (= (prefixMatch!912 r!23423 prefix!1470) e!1810977)))

(declare-fun b!2860309 () Bool)

(declare-fun lostCause!757 (Regex!8604) Bool)

(assert (=> b!2860309 (= e!1810977 (not (lostCause!757 r!23423)))))

(declare-fun b!2860310 () Bool)

(assert (=> b!2860310 (= e!1810977 (prefixMatch!912 (derivativeStep!2293 r!23423 (head!6287 prefix!1470)) (tail!4512 prefix!1470)))))

(assert (= (and d!827072 c!460993) b!2860309))

(assert (= (and d!827072 (not c!460993)) b!2860310))

(declare-fun m!3280755 () Bool)

(assert (=> d!827072 m!3280755))

(declare-fun m!3280757 () Bool)

(assert (=> b!2860309 m!3280757))

(assert (=> b!2860310 m!3280729))

(assert (=> b!2860310 m!3280729))

(declare-fun m!3280759 () Bool)

(assert (=> b!2860310 m!3280759))

(assert (=> b!2860310 m!3280735))

(assert (=> b!2860310 m!3280759))

(assert (=> b!2860310 m!3280735))

(declare-fun m!3280761 () Bool)

(assert (=> b!2860310 m!3280761))

(assert (=> b!2860083 d!827072))

(declare-fun b!2860315 () Bool)

(declare-fun e!1810980 () Bool)

(declare-fun tp!920695 () Bool)

(assert (=> b!2860315 (= e!1810980 (and tp_is_empty!14945 tp!920695))))

(assert (=> b!2860084 (= tp!920674 e!1810980)))

(assert (= (and b!2860084 (is-Cons!34077 (t!233236 prefix!1470))) b!2860315))

(declare-fun b!2860326 () Bool)

(declare-fun e!1810983 () Bool)

(assert (=> b!2860326 (= e!1810983 tp_is_empty!14945)))

(declare-fun b!2860328 () Bool)

(declare-fun tp!920706 () Bool)

(assert (=> b!2860328 (= e!1810983 tp!920706)))

(assert (=> b!2860088 (= tp!920669 e!1810983)))

(declare-fun b!2860327 () Bool)

(declare-fun tp!920710 () Bool)

(declare-fun tp!920708 () Bool)

(assert (=> b!2860327 (= e!1810983 (and tp!920710 tp!920708))))

(declare-fun b!2860329 () Bool)

(declare-fun tp!920707 () Bool)

(declare-fun tp!920709 () Bool)

(assert (=> b!2860329 (= e!1810983 (and tp!920707 tp!920709))))

(assert (= (and b!2860088 (is-ElementMatch!8604 (regOne!17721 r!23423))) b!2860326))

(assert (= (and b!2860088 (is-Concat!13925 (regOne!17721 r!23423))) b!2860327))

(assert (= (and b!2860088 (is-Star!8604 (regOne!17721 r!23423))) b!2860328))

(assert (= (and b!2860088 (is-Union!8604 (regOne!17721 r!23423))) b!2860329))

(declare-fun b!2860330 () Bool)

(declare-fun e!1810984 () Bool)

(assert (=> b!2860330 (= e!1810984 tp_is_empty!14945)))

(declare-fun b!2860332 () Bool)

(declare-fun tp!920711 () Bool)

(assert (=> b!2860332 (= e!1810984 tp!920711)))

(assert (=> b!2860088 (= tp!920671 e!1810984)))

(declare-fun b!2860331 () Bool)

(declare-fun tp!920715 () Bool)

(declare-fun tp!920713 () Bool)

(assert (=> b!2860331 (= e!1810984 (and tp!920715 tp!920713))))

(declare-fun b!2860333 () Bool)

(declare-fun tp!920712 () Bool)

(declare-fun tp!920714 () Bool)

(assert (=> b!2860333 (= e!1810984 (and tp!920712 tp!920714))))

(assert (= (and b!2860088 (is-ElementMatch!8604 (regTwo!17721 r!23423))) b!2860330))

(assert (= (and b!2860088 (is-Concat!13925 (regTwo!17721 r!23423))) b!2860331))

(assert (= (and b!2860088 (is-Star!8604 (regTwo!17721 r!23423))) b!2860332))

(assert (= (and b!2860088 (is-Union!8604 (regTwo!17721 r!23423))) b!2860333))

(declare-fun b!2860334 () Bool)

(declare-fun e!1810985 () Bool)

(assert (=> b!2860334 (= e!1810985 tp_is_empty!14945)))

(declare-fun b!2860336 () Bool)

(declare-fun tp!920716 () Bool)

(assert (=> b!2860336 (= e!1810985 tp!920716)))

(assert (=> b!2860089 (= tp!920670 e!1810985)))

(declare-fun b!2860335 () Bool)

(declare-fun tp!920720 () Bool)

(declare-fun tp!920718 () Bool)

(assert (=> b!2860335 (= e!1810985 (and tp!920720 tp!920718))))

(declare-fun b!2860337 () Bool)

(declare-fun tp!920717 () Bool)

(declare-fun tp!920719 () Bool)

(assert (=> b!2860337 (= e!1810985 (and tp!920717 tp!920719))))

(assert (= (and b!2860089 (is-ElementMatch!8604 (reg!8933 r!23423))) b!2860334))

(assert (= (and b!2860089 (is-Concat!13925 (reg!8933 r!23423))) b!2860335))

(assert (= (and b!2860089 (is-Star!8604 (reg!8933 r!23423))) b!2860336))

(assert (= (and b!2860089 (is-Union!8604 (reg!8933 r!23423))) b!2860337))

(declare-fun b!2860338 () Bool)

(declare-fun e!1810986 () Bool)

(assert (=> b!2860338 (= e!1810986 tp_is_empty!14945)))

(declare-fun b!2860340 () Bool)

(declare-fun tp!920721 () Bool)

(assert (=> b!2860340 (= e!1810986 tp!920721)))

(assert (=> b!2860086 (= tp!920673 e!1810986)))

(declare-fun b!2860339 () Bool)

(declare-fun tp!920725 () Bool)

(declare-fun tp!920723 () Bool)

(assert (=> b!2860339 (= e!1810986 (and tp!920725 tp!920723))))

(declare-fun b!2860341 () Bool)

(declare-fun tp!920722 () Bool)

(declare-fun tp!920724 () Bool)

(assert (=> b!2860341 (= e!1810986 (and tp!920722 tp!920724))))

(assert (= (and b!2860086 (is-ElementMatch!8604 (regOne!17720 r!23423))) b!2860338))

(assert (= (and b!2860086 (is-Concat!13925 (regOne!17720 r!23423))) b!2860339))

(assert (= (and b!2860086 (is-Star!8604 (regOne!17720 r!23423))) b!2860340))

(assert (= (and b!2860086 (is-Union!8604 (regOne!17720 r!23423))) b!2860341))

(declare-fun b!2860342 () Bool)

(declare-fun e!1810987 () Bool)

(assert (=> b!2860342 (= e!1810987 tp_is_empty!14945)))

(declare-fun b!2860344 () Bool)

(declare-fun tp!920726 () Bool)

(assert (=> b!2860344 (= e!1810987 tp!920726)))

(assert (=> b!2860086 (= tp!920672 e!1810987)))

(declare-fun b!2860343 () Bool)

(declare-fun tp!920730 () Bool)

(declare-fun tp!920728 () Bool)

(assert (=> b!2860343 (= e!1810987 (and tp!920730 tp!920728))))

(declare-fun b!2860345 () Bool)

(declare-fun tp!920727 () Bool)

(declare-fun tp!920729 () Bool)

(assert (=> b!2860345 (= e!1810987 (and tp!920727 tp!920729))))

(assert (= (and b!2860086 (is-ElementMatch!8604 (regTwo!17720 r!23423))) b!2860342))

(assert (= (and b!2860086 (is-Concat!13925 (regTwo!17720 r!23423))) b!2860343))

(assert (= (and b!2860086 (is-Star!8604 (regTwo!17720 r!23423))) b!2860344))

(assert (= (and b!2860086 (is-Union!8604 (regTwo!17720 r!23423))) b!2860345))

(declare-fun b_lambda!85741 () Bool)

(assert (= b_lambda!85739 (or b!2860085 b_lambda!85741)))

(declare-fun bs!520384 () Bool)

(declare-fun d!827078 () Bool)

(assert (= bs!520384 (and d!827078 b!2860085)))

(declare-fun res!1187927 () Bool)

(declare-fun e!1810988 () Bool)

(assert (=> bs!520384 (=> (not res!1187927) (not e!1810988))))

(assert (=> bs!520384 (= res!1187927 (matchR!3708 r!23423 lt!1014434))))

(assert (=> bs!520384 (= (dynLambda!14239 lambda!105176 lt!1014434) e!1810988)))

(declare-fun b!2860346 () Bool)

(assert (=> b!2860346 (= e!1810988 (isPrefix!2682 prefix!1470 lt!1014434))))

(assert (= (and bs!520384 res!1187927) b!2860346))

(assert (=> bs!520384 m!3280653))

(assert (=> b!2860346 m!3280655))

(assert (=> d!827070 d!827078))

(push 1)

(assert (not b!2860310))

(assert (not bm!184444))

(assert (not b!2860274))

(assert (not bm!184435))

(assert (not b!2860315))

(assert (not b!2860340))

(assert (not b!2860212))

(assert (not b!2860216))

(assert (not b!2860336))

(assert (not b!2860339))

(assert (not b!2860292))

(assert (not d!827072))

(assert (not b!2860341))

(assert (not d!827056))

(assert (not bm!184424))

(assert (not b!2860210))

(assert (not b!2860156))

(assert (not b!2860331))

(assert (not b!2860329))

(assert (not b!2860328))

(assert (not bm!184426))

(assert (not b!2860215))

(assert (not b!2860343))

(assert (not d!827058))

(assert (not b!2860327))

(assert (not d!827068))

(assert (not b!2860290))

(assert tp_is_empty!14945)

(assert (not b!2860344))

(assert (not b!2860335))

(assert (not b!2860291))

(assert (not b!2860333))

(assert (not b!2860332))

(assert (not b!2860345))

(assert (not b!2860209))

(assert (not b_lambda!85741))

(assert (not b!2860337))

(assert (not b!2860309))

(assert (not bs!520384))

(assert (not d!827070))

(assert (not b!2860213))

(assert (not b!2860346))

(assert (not bm!184443))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

