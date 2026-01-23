; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278176 () Bool)

(assert start!278176)

(declare-fun b!2858031 () Bool)

(assert (=> b!2858031 true))

(assert (=> b!2858031 true))

(declare-datatypes ((C!17378 0))(
  ( (C!17379 (val!10723 Int)) )
))
(declare-datatypes ((List!34195 0))(
  ( (Nil!34071) (Cons!34071 (h!39491 C!17378) (t!233226 List!34195)) )
))
(declare-fun prefix!1470 () List!34195)

(declare-datatypes ((Regex!8598 0))(
  ( (ElementMatch!8598 (c!460575 C!17378)) (Concat!13919 (regOne!17708 Regex!8598) (regTwo!17708 Regex!8598)) (EmptyExpr!8598) (Star!8598 (reg!8927 Regex!8598)) (EmptyLang!8598) (Union!8598 (regOne!17709 Regex!8598) (regTwo!17709 Regex!8598)) )
))
(declare-fun r!23423 () Regex!8598)

(declare-fun lt!1014260 () List!34195)

(declare-fun b!2858025 () Bool)

(declare-fun e!1809847 () Bool)

(declare-fun matchR!3704 (Regex!8598 List!34195) Bool)

(declare-fun $colon$colon!594 (List!34195 C!17378) List!34195)

(assert (=> b!2858025 (= e!1809847 (matchR!3704 r!23423 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))))))

(declare-fun b!2858026 () Bool)

(declare-fun res!1187201 () Bool)

(declare-fun e!1809848 () Bool)

(assert (=> b!2858026 (=> (not res!1187201) (not e!1809848))))

(assert (=> b!2858026 (= res!1187201 (not (is-Nil!34071 prefix!1470)))))

(declare-fun b!2858027 () Bool)

(declare-fun res!1187200 () Bool)

(assert (=> b!2858027 (=> res!1187200 e!1809847)))

(declare-fun isPrefix!2678 (List!34195 List!34195) Bool)

(assert (=> b!2858027 (= res!1187200 (not (isPrefix!2678 (t!233226 prefix!1470) lt!1014260)))))

(declare-fun b!2858028 () Bool)

(declare-fun e!1809846 () Bool)

(declare-fun tp!919817 () Bool)

(declare-fun tp!919818 () Bool)

(assert (=> b!2858028 (= e!1809846 (and tp!919817 tp!919818))))

(declare-fun res!1187203 () Bool)

(assert (=> start!278176 (=> (not res!1187203) (not e!1809848))))

(declare-fun validRegex!3468 (Regex!8598) Bool)

(assert (=> start!278176 (= res!1187203 (validRegex!3468 r!23423))))

(assert (=> start!278176 e!1809848))

(assert (=> start!278176 e!1809846))

(declare-fun e!1809845 () Bool)

(assert (=> start!278176 e!1809845))

(declare-fun b!2858029 () Bool)

(declare-fun tp_is_empty!14933 () Bool)

(assert (=> b!2858029 (= e!1809846 tp_is_empty!14933)))

(declare-fun b!2858030 () Bool)

(declare-fun res!1187202 () Bool)

(assert (=> b!2858030 (=> (not res!1187202) (not e!1809848))))

(declare-fun prefixMatch!906 (Regex!8598 List!34195) Bool)

(assert (=> b!2858030 (= res!1187202 (prefixMatch!906 r!23423 prefix!1470))))

(assert (=> b!2858031 (= e!1809848 (not e!1809847))))

(declare-fun res!1187199 () Bool)

(assert (=> b!2858031 (=> res!1187199 e!1809847)))

(declare-fun lt!1014258 () Regex!8598)

(assert (=> b!2858031 (= res!1187199 (not (matchR!3704 lt!1014258 lt!1014260)))))

(declare-fun lambda!105132 () Int)

(declare-fun pickWitness!315 (Int) List!34195)

(assert (=> b!2858031 (= lt!1014260 (pickWitness!315 lambda!105132))))

(declare-fun Exists!1302 (Int) Bool)

(assert (=> b!2858031 (Exists!1302 lambda!105132)))

(assert (=> b!2858031 (Exists!1302 lambda!105132)))

(declare-datatypes ((Unit!47739 0))(
  ( (Unit!47740) )
))
(declare-fun lt!1014259 () Unit!47739)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!350 (Regex!8598 List!34195) Unit!47739)

(assert (=> b!2858031 (= lt!1014259 (lemmaPrefixMatchThenExistsStringThatMatches!350 lt!1014258 (t!233226 prefix!1470)))))

(declare-fun derivativeStep!2287 (Regex!8598 C!17378) Regex!8598)

(assert (=> b!2858031 (= lt!1014258 (derivativeStep!2287 r!23423 (h!39491 prefix!1470)))))

(declare-fun b!2858032 () Bool)

(declare-fun tp!919820 () Bool)

(declare-fun tp!919819 () Bool)

(assert (=> b!2858032 (= e!1809846 (and tp!919820 tp!919819))))

(declare-fun b!2858033 () Bool)

(declare-fun tp!919822 () Bool)

(assert (=> b!2858033 (= e!1809846 tp!919822)))

(declare-fun b!2858034 () Bool)

(declare-fun tp!919821 () Bool)

(assert (=> b!2858034 (= e!1809845 (and tp_is_empty!14933 tp!919821))))

(assert (= (and start!278176 res!1187203) b!2858030))

(assert (= (and b!2858030 res!1187202) b!2858026))

(assert (= (and b!2858026 res!1187201) b!2858031))

(assert (= (and b!2858031 (not res!1187199)) b!2858027))

(assert (= (and b!2858027 (not res!1187200)) b!2858025))

(assert (= (and start!278176 (is-ElementMatch!8598 r!23423)) b!2858029))

(assert (= (and start!278176 (is-Concat!13919 r!23423)) b!2858028))

(assert (= (and start!278176 (is-Star!8598 r!23423)) b!2858033))

(assert (= (and start!278176 (is-Union!8598 r!23423)) b!2858032))

(assert (= (and start!278176 (is-Cons!34071 prefix!1470)) b!2858034))

(declare-fun m!3279545 () Bool)

(assert (=> b!2858027 m!3279545))

(declare-fun m!3279547 () Bool)

(assert (=> b!2858030 m!3279547))

(declare-fun m!3279549 () Bool)

(assert (=> b!2858031 m!3279549))

(declare-fun m!3279551 () Bool)

(assert (=> b!2858031 m!3279551))

(declare-fun m!3279553 () Bool)

(assert (=> b!2858031 m!3279553))

(assert (=> b!2858031 m!3279549))

(declare-fun m!3279555 () Bool)

(assert (=> b!2858031 m!3279555))

(declare-fun m!3279557 () Bool)

(assert (=> b!2858031 m!3279557))

(declare-fun m!3279559 () Bool)

(assert (=> start!278176 m!3279559))

(declare-fun m!3279561 () Bool)

(assert (=> b!2858025 m!3279561))

(assert (=> b!2858025 m!3279561))

(declare-fun m!3279563 () Bool)

(assert (=> b!2858025 m!3279563))

(push 1)

(assert (not start!278176))

(assert tp_is_empty!14933)

(assert (not b!2858034))

(assert (not b!2858031))

(assert (not b!2858028))

(assert (not b!2858033))

(assert (not b!2858032))

(assert (not b!2858030))

(assert (not b!2858027))

(assert (not b!2858025))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2858105 () Bool)

(declare-fun e!1809883 () Bool)

(declare-fun head!6281 (List!34195) C!17378)

(assert (=> b!2858105 (= e!1809883 (= (head!6281 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))) (c!460575 r!23423)))))

(declare-fun b!2858106 () Bool)

(declare-fun e!1809881 () Bool)

(declare-fun e!1809885 () Bool)

(assert (=> b!2858106 (= e!1809881 e!1809885)))

(declare-fun res!1187240 () Bool)

(assert (=> b!2858106 (=> (not res!1187240) (not e!1809885))))

(declare-fun lt!1014272 () Bool)

(assert (=> b!2858106 (= res!1187240 (not lt!1014272))))

(declare-fun d!826611 () Bool)

(declare-fun e!1809879 () Bool)

(assert (=> d!826611 e!1809879))

(declare-fun c!460583 () Bool)

(assert (=> d!826611 (= c!460583 (is-EmptyExpr!8598 r!23423))))

(declare-fun e!1809880 () Bool)

(assert (=> d!826611 (= lt!1014272 e!1809880)))

(declare-fun c!460585 () Bool)

(declare-fun isEmpty!18606 (List!34195) Bool)

(assert (=> d!826611 (= c!460585 (isEmpty!18606 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))))))

(assert (=> d!826611 (validRegex!3468 r!23423)))

(assert (=> d!826611 (= (matchR!3704 r!23423 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))) lt!1014272)))

(declare-fun b!2858107 () Bool)

(declare-fun res!1187243 () Bool)

(assert (=> b!2858107 (=> res!1187243 e!1809881)))

(assert (=> b!2858107 (= res!1187243 e!1809883)))

(declare-fun res!1187244 () Bool)

(assert (=> b!2858107 (=> (not res!1187244) (not e!1809883))))

(assert (=> b!2858107 (= res!1187244 lt!1014272)))

(declare-fun b!2858108 () Bool)

(declare-fun res!1187239 () Bool)

(declare-fun e!1809882 () Bool)

(assert (=> b!2858108 (=> res!1187239 e!1809882)))

(declare-fun tail!4506 (List!34195) List!34195)

(assert (=> b!2858108 (= res!1187239 (not (isEmpty!18606 (tail!4506 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))))))))

(declare-fun b!2858109 () Bool)

(declare-fun res!1187242 () Bool)

(assert (=> b!2858109 (=> (not res!1187242) (not e!1809883))))

(declare-fun call!184167 () Bool)

(assert (=> b!2858109 (= res!1187242 (not call!184167))))

(declare-fun b!2858110 () Bool)

(declare-fun e!1809884 () Bool)

(assert (=> b!2858110 (= e!1809884 (not lt!1014272))))

(declare-fun b!2858111 () Bool)

(declare-fun res!1187245 () Bool)

(assert (=> b!2858111 (=> (not res!1187245) (not e!1809883))))

(assert (=> b!2858111 (= res!1187245 (isEmpty!18606 (tail!4506 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)))))))

(declare-fun b!2858112 () Bool)

(assert (=> b!2858112 (= e!1809882 (not (= (head!6281 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))) (c!460575 r!23423))))))

(declare-fun b!2858113 () Bool)

(assert (=> b!2858113 (= e!1809879 (= lt!1014272 call!184167))))

(declare-fun bm!184162 () Bool)

(assert (=> bm!184162 (= call!184167 (isEmpty!18606 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))))))

(declare-fun b!2858114 () Bool)

(assert (=> b!2858114 (= e!1809880 (matchR!3704 (derivativeStep!2287 r!23423 (head!6281 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)))) (tail!4506 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)))))))

(declare-fun b!2858115 () Bool)

(assert (=> b!2858115 (= e!1809885 e!1809882)))

(declare-fun res!1187246 () Bool)

(assert (=> b!2858115 (=> res!1187246 e!1809882)))

(assert (=> b!2858115 (= res!1187246 call!184167)))

(declare-fun b!2858116 () Bool)

(declare-fun nullable!2652 (Regex!8598) Bool)

(assert (=> b!2858116 (= e!1809880 (nullable!2652 r!23423))))

(declare-fun b!2858117 () Bool)

(assert (=> b!2858117 (= e!1809879 e!1809884)))

(declare-fun c!460584 () Bool)

(assert (=> b!2858117 (= c!460584 (is-EmptyLang!8598 r!23423))))

(declare-fun b!2858118 () Bool)

(declare-fun res!1187241 () Bool)

(assert (=> b!2858118 (=> res!1187241 e!1809881)))

(assert (=> b!2858118 (= res!1187241 (not (is-ElementMatch!8598 r!23423)))))

(assert (=> b!2858118 (= e!1809884 e!1809881)))

(assert (= (and d!826611 c!460585) b!2858116))

(assert (= (and d!826611 (not c!460585)) b!2858114))

(assert (= (and d!826611 c!460583) b!2858113))

(assert (= (and d!826611 (not c!460583)) b!2858117))

(assert (= (and b!2858117 c!460584) b!2858110))

(assert (= (and b!2858117 (not c!460584)) b!2858118))

(assert (= (and b!2858118 (not res!1187241)) b!2858107))

(assert (= (and b!2858107 res!1187244) b!2858109))

(assert (= (and b!2858109 res!1187242) b!2858111))

(assert (= (and b!2858111 res!1187245) b!2858105))

(assert (= (and b!2858107 (not res!1187243)) b!2858106))

(assert (= (and b!2858106 res!1187240) b!2858115))

(assert (= (and b!2858115 (not res!1187246)) b!2858108))

(assert (= (and b!2858108 (not res!1187239)) b!2858112))

(assert (= (or b!2858113 b!2858109 b!2858115) bm!184162))

(declare-fun m!3279585 () Bool)

(assert (=> b!2858116 m!3279585))

(assert (=> bm!184162 m!3279561))

(declare-fun m!3279587 () Bool)

(assert (=> bm!184162 m!3279587))

(assert (=> b!2858114 m!3279561))

(declare-fun m!3279589 () Bool)

(assert (=> b!2858114 m!3279589))

(assert (=> b!2858114 m!3279589))

(declare-fun m!3279591 () Bool)

(assert (=> b!2858114 m!3279591))

(assert (=> b!2858114 m!3279561))

(declare-fun m!3279593 () Bool)

(assert (=> b!2858114 m!3279593))

(assert (=> b!2858114 m!3279591))

(assert (=> b!2858114 m!3279593))

(declare-fun m!3279595 () Bool)

(assert (=> b!2858114 m!3279595))

(assert (=> b!2858112 m!3279561))

(assert (=> b!2858112 m!3279589))

(assert (=> b!2858111 m!3279561))

(assert (=> b!2858111 m!3279593))

(assert (=> b!2858111 m!3279593))

(declare-fun m!3279597 () Bool)

(assert (=> b!2858111 m!3279597))

(assert (=> b!2858108 m!3279561))

(assert (=> b!2858108 m!3279593))

(assert (=> b!2858108 m!3279593))

(assert (=> b!2858108 m!3279597))

(assert (=> b!2858105 m!3279561))

(assert (=> b!2858105 m!3279589))

(assert (=> d!826611 m!3279561))

(assert (=> d!826611 m!3279587))

(assert (=> d!826611 m!3279559))

(assert (=> b!2858025 d!826611))

(declare-fun d!826615 () Bool)

(assert (=> d!826615 (= ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)) (Cons!34071 (h!39491 prefix!1470) lt!1014260))))

(assert (=> b!2858025 d!826615))

(declare-fun d!826617 () Bool)

(declare-fun c!460588 () Bool)

(assert (=> d!826617 (= c!460588 (isEmpty!18606 prefix!1470))))

(declare-fun e!1809888 () Bool)

(assert (=> d!826617 (= (prefixMatch!906 r!23423 prefix!1470) e!1809888)))

(declare-fun b!2858123 () Bool)

(declare-fun lostCause!751 (Regex!8598) Bool)

(assert (=> b!2858123 (= e!1809888 (not (lostCause!751 r!23423)))))

(declare-fun b!2858124 () Bool)

(assert (=> b!2858124 (= e!1809888 (prefixMatch!906 (derivativeStep!2287 r!23423 (head!6281 prefix!1470)) (tail!4506 prefix!1470)))))

(assert (= (and d!826617 c!460588) b!2858123))

(assert (= (and d!826617 (not c!460588)) b!2858124))

(declare-fun m!3279599 () Bool)

(assert (=> d!826617 m!3279599))

(declare-fun m!3279601 () Bool)

(assert (=> b!2858123 m!3279601))

(declare-fun m!3279603 () Bool)

(assert (=> b!2858124 m!3279603))

(assert (=> b!2858124 m!3279603))

(declare-fun m!3279605 () Bool)

(assert (=> b!2858124 m!3279605))

(declare-fun m!3279607 () Bool)

(assert (=> b!2858124 m!3279607))

(assert (=> b!2858124 m!3279605))

(assert (=> b!2858124 m!3279607))

(declare-fun m!3279609 () Bool)

(assert (=> b!2858124 m!3279609))

(assert (=> b!2858030 d!826617))

(declare-fun b!2858143 () Bool)

(declare-fun e!1809907 () Bool)

(declare-fun e!1809903 () Bool)

(assert (=> b!2858143 (= e!1809907 e!1809903)))

(declare-fun c!460593 () Bool)

(assert (=> b!2858143 (= c!460593 (is-Union!8598 r!23423))))

(declare-fun b!2858144 () Bool)

(declare-fun e!1809905 () Bool)

(declare-fun call!184174 () Bool)

(assert (=> b!2858144 (= e!1809905 call!184174)))

(declare-fun b!2858145 () Bool)

(declare-fun e!1809908 () Bool)

(assert (=> b!2858145 (= e!1809908 e!1809907)))

(declare-fun c!460594 () Bool)

(assert (=> b!2858145 (= c!460594 (is-Star!8598 r!23423))))

(declare-fun b!2858146 () Bool)

(declare-fun e!1809909 () Bool)

(declare-fun call!184176 () Bool)

(assert (=> b!2858146 (= e!1809909 call!184176)))

(declare-fun d!826619 () Bool)

(declare-fun res!1187259 () Bool)

(assert (=> d!826619 (=> res!1187259 e!1809908)))

(assert (=> d!826619 (= res!1187259 (is-ElementMatch!8598 r!23423))))

(assert (=> d!826619 (= (validRegex!3468 r!23423) e!1809908)))

(declare-fun bm!184169 () Bool)

(assert (=> bm!184169 (= call!184176 (validRegex!3468 (ite c!460594 (reg!8927 r!23423) (ite c!460593 (regOne!17709 r!23423) (regOne!17708 r!23423)))))))

(declare-fun b!2858147 () Bool)

(declare-fun e!1809906 () Bool)

(declare-fun e!1809904 () Bool)

(assert (=> b!2858147 (= e!1809906 e!1809904)))

(declare-fun res!1187260 () Bool)

(assert (=> b!2858147 (=> (not res!1187260) (not e!1809904))))

(declare-fun call!184175 () Bool)

(assert (=> b!2858147 (= res!1187260 call!184175)))

(declare-fun bm!184170 () Bool)

(assert (=> bm!184170 (= call!184175 call!184176)))

(declare-fun bm!184171 () Bool)

(assert (=> bm!184171 (= call!184174 (validRegex!3468 (ite c!460593 (regTwo!17709 r!23423) (regTwo!17708 r!23423))))))

(declare-fun b!2858148 () Bool)

(assert (=> b!2858148 (= e!1809904 call!184174)))

(declare-fun b!2858149 () Bool)

(assert (=> b!2858149 (= e!1809907 e!1809909)))

(declare-fun res!1187261 () Bool)

(assert (=> b!2858149 (= res!1187261 (not (nullable!2652 (reg!8927 r!23423))))))

(assert (=> b!2858149 (=> (not res!1187261) (not e!1809909))))

(declare-fun b!2858150 () Bool)

(declare-fun res!1187257 () Bool)

(assert (=> b!2858150 (=> (not res!1187257) (not e!1809905))))

(assert (=> b!2858150 (= res!1187257 call!184175)))

(assert (=> b!2858150 (= e!1809903 e!1809905)))

(declare-fun b!2858151 () Bool)

(declare-fun res!1187258 () Bool)

(assert (=> b!2858151 (=> res!1187258 e!1809906)))

(assert (=> b!2858151 (= res!1187258 (not (is-Concat!13919 r!23423)))))

(assert (=> b!2858151 (= e!1809903 e!1809906)))

(assert (= (and d!826619 (not res!1187259)) b!2858145))

(assert (= (and b!2858145 c!460594) b!2858149))

(assert (= (and b!2858145 (not c!460594)) b!2858143))

(assert (= (and b!2858149 res!1187261) b!2858146))

(assert (= (and b!2858143 c!460593) b!2858150))

(assert (= (and b!2858143 (not c!460593)) b!2858151))

(assert (= (and b!2858150 res!1187257) b!2858144))

(assert (= (and b!2858151 (not res!1187258)) b!2858147))

(assert (= (and b!2858147 res!1187260) b!2858148))

(assert (= (or b!2858144 b!2858148) bm!184171))

(assert (= (or b!2858150 b!2858147) bm!184170))

(assert (= (or b!2858146 bm!184170) bm!184169))

(declare-fun m!3279611 () Bool)

(assert (=> bm!184169 m!3279611))

(declare-fun m!3279613 () Bool)

(assert (=> bm!184171 m!3279613))

(declare-fun m!3279615 () Bool)

(assert (=> b!2858149 m!3279615))

(assert (=> start!278176 d!826619))

(declare-fun d!826621 () Bool)

(declare-fun lt!1014277 () List!34195)

(declare-fun dynLambda!14235 (Int List!34195) Bool)

(assert (=> d!826621 (dynLambda!14235 lambda!105132 lt!1014277)))

(declare-fun choose!16817 (Int) List!34195)

(assert (=> d!826621 (= lt!1014277 (choose!16817 lambda!105132))))

(assert (=> d!826621 (Exists!1302 lambda!105132)))

(assert (=> d!826621 (= (pickWitness!315 lambda!105132) lt!1014277)))

(declare-fun b_lambda!85707 () Bool)

(assert (=> (not b_lambda!85707) (not d!826621)))

(declare-fun bs!520315 () Bool)

(assert (= bs!520315 d!826621))

(declare-fun m!3279617 () Bool)

(assert (=> bs!520315 m!3279617))

(declare-fun m!3279619 () Bool)

(assert (=> bs!520315 m!3279619))

(assert (=> bs!520315 m!3279549))

(assert (=> b!2858031 d!826621))

(declare-fun b!2858192 () Bool)

(declare-fun e!1809930 () Regex!8598)

(declare-fun call!184195 () Regex!8598)

(assert (=> b!2858192 (= e!1809930 (Concat!13919 call!184195 r!23423))))

(declare-fun b!2858193 () Bool)

(declare-fun e!1809933 () Regex!8598)

(declare-fun call!184196 () Regex!8598)

(assert (=> b!2858193 (= e!1809933 (Union!8598 (Concat!13919 call!184196 (regTwo!17708 r!23423)) EmptyLang!8598))))

(declare-fun bm!184188 () Bool)

(declare-fun call!184193 () Regex!8598)

(assert (=> bm!184188 (= call!184195 call!184193)))

(declare-fun bm!184189 () Bool)

(assert (=> bm!184189 (= call!184196 call!184195)))

(declare-fun c!460617 () Bool)

(declare-fun c!460618 () Bool)

(declare-fun c!460616 () Bool)

(declare-fun bm!184190 () Bool)

(assert (=> bm!184190 (= call!184193 (derivativeStep!2287 (ite c!460617 (regTwo!17709 r!23423) (ite c!460616 (reg!8927 r!23423) (ite c!460618 (regTwo!17708 r!23423) (regOne!17708 r!23423)))) (h!39491 prefix!1470)))))

(declare-fun b!2858194 () Bool)

(declare-fun e!1809934 () Regex!8598)

(assert (=> b!2858194 (= e!1809934 (ite (= (h!39491 prefix!1470) (c!460575 r!23423)) EmptyExpr!8598 EmptyLang!8598))))

(declare-fun call!184194 () Regex!8598)

(declare-fun b!2858195 () Bool)

(assert (=> b!2858195 (= e!1809933 (Union!8598 (Concat!13919 call!184194 (regTwo!17708 r!23423)) call!184196))))

(declare-fun b!2858196 () Bool)

(declare-fun e!1809931 () Regex!8598)

(assert (=> b!2858196 (= e!1809931 e!1809930)))

(assert (=> b!2858196 (= c!460616 (is-Star!8598 r!23423))))

(declare-fun b!2858197 () Bool)

(assert (=> b!2858197 (= c!460618 (nullable!2652 (regOne!17708 r!23423)))))

(assert (=> b!2858197 (= e!1809930 e!1809933)))

(declare-fun b!2858198 () Bool)

(declare-fun e!1809932 () Regex!8598)

(assert (=> b!2858198 (= e!1809932 EmptyLang!8598)))

(declare-fun d!826623 () Bool)

(declare-fun lt!1014280 () Regex!8598)

(assert (=> d!826623 (validRegex!3468 lt!1014280)))

(assert (=> d!826623 (= lt!1014280 e!1809932)))

(declare-fun c!460615 () Bool)

(assert (=> d!826623 (= c!460615 (or (is-EmptyExpr!8598 r!23423) (is-EmptyLang!8598 r!23423)))))

(assert (=> d!826623 (validRegex!3468 r!23423)))

(assert (=> d!826623 (= (derivativeStep!2287 r!23423 (h!39491 prefix!1470)) lt!1014280)))

(declare-fun bm!184191 () Bool)

(assert (=> bm!184191 (= call!184194 (derivativeStep!2287 (ite c!460617 (regOne!17709 r!23423) (regOne!17708 r!23423)) (h!39491 prefix!1470)))))

(declare-fun b!2858199 () Bool)

(assert (=> b!2858199 (= c!460617 (is-Union!8598 r!23423))))

(assert (=> b!2858199 (= e!1809934 e!1809931)))

(declare-fun b!2858200 () Bool)

(assert (=> b!2858200 (= e!1809932 e!1809934)))

(declare-fun c!460619 () Bool)

(assert (=> b!2858200 (= c!460619 (is-ElementMatch!8598 r!23423))))

(declare-fun b!2858201 () Bool)

(assert (=> b!2858201 (= e!1809931 (Union!8598 call!184194 call!184193))))

(assert (= (and d!826623 c!460615) b!2858198))

(assert (= (and d!826623 (not c!460615)) b!2858200))

(assert (= (and b!2858200 c!460619) b!2858194))

(assert (= (and b!2858200 (not c!460619)) b!2858199))

(assert (= (and b!2858199 c!460617) b!2858201))

(assert (= (and b!2858199 (not c!460617)) b!2858196))

(assert (= (and b!2858196 c!460616) b!2858192))

(assert (= (and b!2858196 (not c!460616)) b!2858197))

(assert (= (and b!2858197 c!460618) b!2858195))

(assert (= (and b!2858197 (not c!460618)) b!2858193))

(assert (= (or b!2858195 b!2858193) bm!184189))

(assert (= (or b!2858192 bm!184189) bm!184188))

(assert (= (or b!2858201 bm!184188) bm!184190))

(assert (= (or b!2858201 b!2858195) bm!184191))

(declare-fun m!3279621 () Bool)

(assert (=> bm!184190 m!3279621))

(declare-fun m!3279623 () Bool)

(assert (=> b!2858197 m!3279623))

(declare-fun m!3279625 () Bool)

(assert (=> d!826623 m!3279625))

(assert (=> d!826623 m!3279559))

(declare-fun m!3279627 () Bool)

(assert (=> bm!184191 m!3279627))

(assert (=> b!2858031 d!826623))

(declare-fun b!2858202 () Bool)

(declare-fun e!1809939 () Bool)

(assert (=> b!2858202 (= e!1809939 (= (head!6281 lt!1014260) (c!460575 lt!1014258)))))

(declare-fun b!2858203 () Bool)

(declare-fun e!1809937 () Bool)

(declare-fun e!1809941 () Bool)

(assert (=> b!2858203 (= e!1809937 e!1809941)))

(declare-fun res!1187263 () Bool)

(assert (=> b!2858203 (=> (not res!1187263) (not e!1809941))))

(declare-fun lt!1014281 () Bool)

(assert (=> b!2858203 (= res!1187263 (not lt!1014281))))

(declare-fun d!826625 () Bool)

(declare-fun e!1809935 () Bool)

(assert (=> d!826625 e!1809935))

(declare-fun c!460620 () Bool)

(assert (=> d!826625 (= c!460620 (is-EmptyExpr!8598 lt!1014258))))

(declare-fun e!1809936 () Bool)

(assert (=> d!826625 (= lt!1014281 e!1809936)))

(declare-fun c!460622 () Bool)

(assert (=> d!826625 (= c!460622 (isEmpty!18606 lt!1014260))))

(assert (=> d!826625 (validRegex!3468 lt!1014258)))

(assert (=> d!826625 (= (matchR!3704 lt!1014258 lt!1014260) lt!1014281)))

(declare-fun b!2858204 () Bool)

(declare-fun res!1187266 () Bool)

(assert (=> b!2858204 (=> res!1187266 e!1809937)))

(assert (=> b!2858204 (= res!1187266 e!1809939)))

(declare-fun res!1187267 () Bool)

(assert (=> b!2858204 (=> (not res!1187267) (not e!1809939))))

(assert (=> b!2858204 (= res!1187267 lt!1014281)))

(declare-fun b!2858205 () Bool)

(declare-fun res!1187262 () Bool)

(declare-fun e!1809938 () Bool)

(assert (=> b!2858205 (=> res!1187262 e!1809938)))

(assert (=> b!2858205 (= res!1187262 (not (isEmpty!18606 (tail!4506 lt!1014260))))))

(declare-fun b!2858206 () Bool)

(declare-fun res!1187265 () Bool)

(assert (=> b!2858206 (=> (not res!1187265) (not e!1809939))))

(declare-fun call!184197 () Bool)

(assert (=> b!2858206 (= res!1187265 (not call!184197))))

(declare-fun b!2858207 () Bool)

(declare-fun e!1809940 () Bool)

(assert (=> b!2858207 (= e!1809940 (not lt!1014281))))

(declare-fun b!2858208 () Bool)

(declare-fun res!1187268 () Bool)

(assert (=> b!2858208 (=> (not res!1187268) (not e!1809939))))

(assert (=> b!2858208 (= res!1187268 (isEmpty!18606 (tail!4506 lt!1014260)))))

(declare-fun b!2858209 () Bool)

(assert (=> b!2858209 (= e!1809938 (not (= (head!6281 lt!1014260) (c!460575 lt!1014258))))))

(declare-fun b!2858210 () Bool)

(assert (=> b!2858210 (= e!1809935 (= lt!1014281 call!184197))))

(declare-fun bm!184192 () Bool)

(assert (=> bm!184192 (= call!184197 (isEmpty!18606 lt!1014260))))

(declare-fun b!2858211 () Bool)

(assert (=> b!2858211 (= e!1809936 (matchR!3704 (derivativeStep!2287 lt!1014258 (head!6281 lt!1014260)) (tail!4506 lt!1014260)))))

(declare-fun b!2858212 () Bool)

(assert (=> b!2858212 (= e!1809941 e!1809938)))

(declare-fun res!1187269 () Bool)

(assert (=> b!2858212 (=> res!1187269 e!1809938)))

(assert (=> b!2858212 (= res!1187269 call!184197)))

(declare-fun b!2858213 () Bool)

(assert (=> b!2858213 (= e!1809936 (nullable!2652 lt!1014258))))

(declare-fun b!2858214 () Bool)

(assert (=> b!2858214 (= e!1809935 e!1809940)))

(declare-fun c!460621 () Bool)

(assert (=> b!2858214 (= c!460621 (is-EmptyLang!8598 lt!1014258))))

(declare-fun b!2858215 () Bool)

(declare-fun res!1187264 () Bool)

(assert (=> b!2858215 (=> res!1187264 e!1809937)))

(assert (=> b!2858215 (= res!1187264 (not (is-ElementMatch!8598 lt!1014258)))))

(assert (=> b!2858215 (= e!1809940 e!1809937)))

(assert (= (and d!826625 c!460622) b!2858213))

(assert (= (and d!826625 (not c!460622)) b!2858211))

(assert (= (and d!826625 c!460620) b!2858210))

(assert (= (and d!826625 (not c!460620)) b!2858214))

(assert (= (and b!2858214 c!460621) b!2858207))

(assert (= (and b!2858214 (not c!460621)) b!2858215))

(assert (= (and b!2858215 (not res!1187264)) b!2858204))

(assert (= (and b!2858204 res!1187267) b!2858206))

(assert (= (and b!2858206 res!1187265) b!2858208))

(assert (= (and b!2858208 res!1187268) b!2858202))

(assert (= (and b!2858204 (not res!1187266)) b!2858203))

(assert (= (and b!2858203 res!1187263) b!2858212))

(assert (= (and b!2858212 (not res!1187269)) b!2858205))

(assert (= (and b!2858205 (not res!1187262)) b!2858209))

(assert (= (or b!2858210 b!2858206 b!2858212) bm!184192))

(declare-fun m!3279629 () Bool)

(assert (=> b!2858213 m!3279629))

(declare-fun m!3279631 () Bool)

(assert (=> bm!184192 m!3279631))

(declare-fun m!3279633 () Bool)

(assert (=> b!2858211 m!3279633))

(assert (=> b!2858211 m!3279633))

(declare-fun m!3279635 () Bool)

(assert (=> b!2858211 m!3279635))

(declare-fun m!3279637 () Bool)

(assert (=> b!2858211 m!3279637))

(assert (=> b!2858211 m!3279635))

(assert (=> b!2858211 m!3279637))

(declare-fun m!3279639 () Bool)

(assert (=> b!2858211 m!3279639))

(assert (=> b!2858209 m!3279633))

(assert (=> b!2858208 m!3279637))

(assert (=> b!2858208 m!3279637))

(declare-fun m!3279641 () Bool)

(assert (=> b!2858208 m!3279641))

(assert (=> b!2858205 m!3279637))

(assert (=> b!2858205 m!3279637))

(assert (=> b!2858205 m!3279641))

(assert (=> b!2858202 m!3279633))

(assert (=> d!826625 m!3279631))

(declare-fun m!3279643 () Bool)

(assert (=> d!826625 m!3279643))

(assert (=> b!2858031 d!826625))

(declare-fun d!826627 () Bool)

(declare-fun choose!16818 (Int) Bool)

(assert (=> d!826627 (= (Exists!1302 lambda!105132) (choose!16818 lambda!105132))))

(declare-fun bs!520316 () Bool)

(assert (= bs!520316 d!826627))

(declare-fun m!3279645 () Bool)

(assert (=> bs!520316 m!3279645))

(assert (=> b!2858031 d!826627))

(declare-fun bs!520317 () Bool)

(declare-fun d!826629 () Bool)

(assert (= bs!520317 (and d!826629 b!2858031)))

(declare-fun lambda!105140 () Int)

(assert (=> bs!520317 (= lambda!105140 lambda!105132)))

(assert (=> d!826629 true))

(assert (=> d!826629 true))

(assert (=> d!826629 (Exists!1302 lambda!105140)))

(declare-fun lt!1014285 () Unit!47739)

(declare-fun choose!16819 (Regex!8598 List!34195) Unit!47739)

(assert (=> d!826629 (= lt!1014285 (choose!16819 lt!1014258 (t!233226 prefix!1470)))))

(assert (=> d!826629 (validRegex!3468 lt!1014258)))

(assert (=> d!826629 (= (lemmaPrefixMatchThenExistsStringThatMatches!350 lt!1014258 (t!233226 prefix!1470)) lt!1014285)))

(declare-fun bs!520318 () Bool)

(assert (= bs!520318 d!826629))

(declare-fun m!3279655 () Bool)

(assert (=> bs!520318 m!3279655))

(declare-fun m!3279657 () Bool)

(assert (=> bs!520318 m!3279657))

(assert (=> bs!520318 m!3279643))

(assert (=> b!2858031 d!826629))

(declare-fun b!2858238 () Bool)

(declare-fun e!1809957 () Bool)

(assert (=> b!2858238 (= e!1809957 (isPrefix!2678 (tail!4506 (t!233226 prefix!1470)) (tail!4506 lt!1014260)))))

(declare-fun b!2858236 () Bool)

(declare-fun e!1809956 () Bool)

(assert (=> b!2858236 (= e!1809956 e!1809957)))

(declare-fun res!1187282 () Bool)

(assert (=> b!2858236 (=> (not res!1187282) (not e!1809957))))

(assert (=> b!2858236 (= res!1187282 (not (is-Nil!34071 lt!1014260)))))

(declare-fun d!826633 () Bool)

(declare-fun e!1809955 () Bool)

(assert (=> d!826633 e!1809955))

(declare-fun res!1187280 () Bool)

(assert (=> d!826633 (=> res!1187280 e!1809955)))

(declare-fun lt!1014291 () Bool)

(assert (=> d!826633 (= res!1187280 (not lt!1014291))))

(assert (=> d!826633 (= lt!1014291 e!1809956)))

(declare-fun res!1187283 () Bool)

(assert (=> d!826633 (=> res!1187283 e!1809956)))

(assert (=> d!826633 (= res!1187283 (is-Nil!34071 (t!233226 prefix!1470)))))

(assert (=> d!826633 (= (isPrefix!2678 (t!233226 prefix!1470) lt!1014260) lt!1014291)))

(declare-fun b!2858237 () Bool)

(declare-fun res!1187281 () Bool)

(assert (=> b!2858237 (=> (not res!1187281) (not e!1809957))))

(assert (=> b!2858237 (= res!1187281 (= (head!6281 (t!233226 prefix!1470)) (head!6281 lt!1014260)))))

(declare-fun b!2858239 () Bool)

(declare-fun size!26276 (List!34195) Int)

(assert (=> b!2858239 (= e!1809955 (>= (size!26276 lt!1014260) (size!26276 (t!233226 prefix!1470))))))

(assert (= (and d!826633 (not res!1187283)) b!2858236))

(assert (= (and b!2858236 res!1187282) b!2858237))

(assert (= (and b!2858237 res!1187281) b!2858238))

(assert (= (and d!826633 (not res!1187280)) b!2858239))

(declare-fun m!3279663 () Bool)

(assert (=> b!2858238 m!3279663))

(assert (=> b!2858238 m!3279637))

(assert (=> b!2858238 m!3279663))

(assert (=> b!2858238 m!3279637))

(declare-fun m!3279665 () Bool)

(assert (=> b!2858238 m!3279665))

(declare-fun m!3279667 () Bool)

(assert (=> b!2858237 m!3279667))

(assert (=> b!2858237 m!3279633))

(declare-fun m!3279669 () Bool)

(assert (=> b!2858239 m!3279669))

(declare-fun m!3279671 () Bool)

(assert (=> b!2858239 m!3279671))

(assert (=> b!2858027 d!826633))

(declare-fun b!2858244 () Bool)

(declare-fun e!1809960 () Bool)

(declare-fun tp!919843 () Bool)

(assert (=> b!2858244 (= e!1809960 (and tp_is_empty!14933 tp!919843))))

(assert (=> b!2858034 (= tp!919821 e!1809960)))

(assert (= (and b!2858034 (is-Cons!34071 (t!233226 prefix!1470))) b!2858244))

(declare-fun b!2858258 () Bool)

(declare-fun e!1809963 () Bool)

(declare-fun tp!919855 () Bool)

(declare-fun tp!919854 () Bool)

(assert (=> b!2858258 (= e!1809963 (and tp!919855 tp!919854))))

(declare-fun b!2858257 () Bool)

(declare-fun tp!919857 () Bool)

(assert (=> b!2858257 (= e!1809963 tp!919857)))

(declare-fun b!2858255 () Bool)

(assert (=> b!2858255 (= e!1809963 tp_is_empty!14933)))

(declare-fun b!2858256 () Bool)

(declare-fun tp!919858 () Bool)

(declare-fun tp!919856 () Bool)

(assert (=> b!2858256 (= e!1809963 (and tp!919858 tp!919856))))

(assert (=> b!2858028 (= tp!919817 e!1809963)))

(assert (= (and b!2858028 (is-ElementMatch!8598 (regOne!17708 r!23423))) b!2858255))

(assert (= (and b!2858028 (is-Concat!13919 (regOne!17708 r!23423))) b!2858256))

(assert (= (and b!2858028 (is-Star!8598 (regOne!17708 r!23423))) b!2858257))

(assert (= (and b!2858028 (is-Union!8598 (regOne!17708 r!23423))) b!2858258))

(declare-fun b!2858262 () Bool)

(declare-fun e!1809964 () Bool)

(declare-fun tp!919860 () Bool)

(declare-fun tp!919859 () Bool)

(assert (=> b!2858262 (= e!1809964 (and tp!919860 tp!919859))))

(declare-fun b!2858261 () Bool)

(declare-fun tp!919862 () Bool)

(assert (=> b!2858261 (= e!1809964 tp!919862)))

(declare-fun b!2858259 () Bool)

(assert (=> b!2858259 (= e!1809964 tp_is_empty!14933)))

(declare-fun b!2858260 () Bool)

(declare-fun tp!919863 () Bool)

(declare-fun tp!919861 () Bool)

(assert (=> b!2858260 (= e!1809964 (and tp!919863 tp!919861))))

(assert (=> b!2858028 (= tp!919818 e!1809964)))

(assert (= (and b!2858028 (is-ElementMatch!8598 (regTwo!17708 r!23423))) b!2858259))

(assert (= (and b!2858028 (is-Concat!13919 (regTwo!17708 r!23423))) b!2858260))

(assert (= (and b!2858028 (is-Star!8598 (regTwo!17708 r!23423))) b!2858261))

(assert (= (and b!2858028 (is-Union!8598 (regTwo!17708 r!23423))) b!2858262))

(declare-fun b!2858266 () Bool)

(declare-fun e!1809965 () Bool)

(declare-fun tp!919865 () Bool)

(declare-fun tp!919864 () Bool)

(assert (=> b!2858266 (= e!1809965 (and tp!919865 tp!919864))))

(declare-fun b!2858265 () Bool)

(declare-fun tp!919867 () Bool)

(assert (=> b!2858265 (= e!1809965 tp!919867)))

(declare-fun b!2858263 () Bool)

(assert (=> b!2858263 (= e!1809965 tp_is_empty!14933)))

(declare-fun b!2858264 () Bool)

(declare-fun tp!919868 () Bool)

(declare-fun tp!919866 () Bool)

(assert (=> b!2858264 (= e!1809965 (and tp!919868 tp!919866))))

(assert (=> b!2858033 (= tp!919822 e!1809965)))

(assert (= (and b!2858033 (is-ElementMatch!8598 (reg!8927 r!23423))) b!2858263))

(assert (= (and b!2858033 (is-Concat!13919 (reg!8927 r!23423))) b!2858264))

(assert (= (and b!2858033 (is-Star!8598 (reg!8927 r!23423))) b!2858265))

(assert (= (and b!2858033 (is-Union!8598 (reg!8927 r!23423))) b!2858266))

(declare-fun b!2858270 () Bool)

(declare-fun e!1809966 () Bool)

(declare-fun tp!919870 () Bool)

(declare-fun tp!919869 () Bool)

(assert (=> b!2858270 (= e!1809966 (and tp!919870 tp!919869))))

(declare-fun b!2858269 () Bool)

(declare-fun tp!919872 () Bool)

(assert (=> b!2858269 (= e!1809966 tp!919872)))

(declare-fun b!2858267 () Bool)

(assert (=> b!2858267 (= e!1809966 tp_is_empty!14933)))

(declare-fun b!2858268 () Bool)

(declare-fun tp!919873 () Bool)

(declare-fun tp!919871 () Bool)

(assert (=> b!2858268 (= e!1809966 (and tp!919873 tp!919871))))

(assert (=> b!2858032 (= tp!919820 e!1809966)))

(assert (= (and b!2858032 (is-ElementMatch!8598 (regOne!17709 r!23423))) b!2858267))

(assert (= (and b!2858032 (is-Concat!13919 (regOne!17709 r!23423))) b!2858268))

(assert (= (and b!2858032 (is-Star!8598 (regOne!17709 r!23423))) b!2858269))

(assert (= (and b!2858032 (is-Union!8598 (regOne!17709 r!23423))) b!2858270))

(declare-fun b!2858274 () Bool)

(declare-fun e!1809967 () Bool)

(declare-fun tp!919875 () Bool)

(declare-fun tp!919874 () Bool)

(assert (=> b!2858274 (= e!1809967 (and tp!919875 tp!919874))))

(declare-fun b!2858273 () Bool)

(declare-fun tp!919877 () Bool)

(assert (=> b!2858273 (= e!1809967 tp!919877)))

(declare-fun b!2858271 () Bool)

(assert (=> b!2858271 (= e!1809967 tp_is_empty!14933)))

(declare-fun b!2858272 () Bool)

(declare-fun tp!919878 () Bool)

(declare-fun tp!919876 () Bool)

(assert (=> b!2858272 (= e!1809967 (and tp!919878 tp!919876))))

(assert (=> b!2858032 (= tp!919819 e!1809967)))

(assert (= (and b!2858032 (is-ElementMatch!8598 (regTwo!17709 r!23423))) b!2858271))

(assert (= (and b!2858032 (is-Concat!13919 (regTwo!17709 r!23423))) b!2858272))

(assert (= (and b!2858032 (is-Star!8598 (regTwo!17709 r!23423))) b!2858273))

(assert (= (and b!2858032 (is-Union!8598 (regTwo!17709 r!23423))) b!2858274))

(declare-fun b_lambda!85711 () Bool)

(assert (= b_lambda!85707 (or b!2858031 b_lambda!85711)))

(declare-fun bs!520321 () Bool)

(declare-fun d!826639 () Bool)

(assert (= bs!520321 (and d!826639 b!2858031)))

(declare-fun res!1187284 () Bool)

(declare-fun e!1809968 () Bool)

(assert (=> bs!520321 (=> (not res!1187284) (not e!1809968))))

(assert (=> bs!520321 (= res!1187284 (matchR!3704 lt!1014258 lt!1014277))))

(assert (=> bs!520321 (= (dynLambda!14235 lambda!105132 lt!1014277) e!1809968)))

(declare-fun b!2858275 () Bool)

(assert (=> b!2858275 (= e!1809968 (isPrefix!2678 (t!233226 prefix!1470) lt!1014277))))

(assert (= (and bs!520321 res!1187284) b!2858275))

(declare-fun m!3279675 () Bool)

(assert (=> bs!520321 m!3279675))

(declare-fun m!3279677 () Bool)

(assert (=> b!2858275 m!3279677))

(assert (=> d!826621 d!826639))

(push 1)

(assert (not b!2858114))

(assert (not b!2858275))

(assert (not b!2858123))

(assert (not bm!184162))

(assert (not b!2858266))

(assert (not b!2858260))

(assert (not bm!184192))

(assert (not b!2858213))

(assert (not b!2858238))

(assert (not b!2858274))

(assert (not d!826627))

(assert (not b!2858124))

(assert (not b!2858116))

(assert (not bs!520321))

(assert (not bm!184171))

(assert (not d!826625))

(assert tp_is_empty!14933)

(assert (not b!2858211))

(assert (not bm!184191))

(assert (not b!2858273))

(assert (not b!2858270))

(assert (not b!2858197))

(assert (not b!2858264))

(assert (not b!2858268))

(assert (not b!2858149))

(assert (not b!2858269))

(assert (not b!2858112))

(assert (not d!826611))

(assert (not b!2858244))

(assert (not b!2858209))

(assert (not b!2858202))

(assert (not b!2858239))

(assert (not b!2858272))

(assert (not bm!184169))

(assert (not d!826623))

(assert (not b!2858108))

(assert (not b!2858105))

(assert (not b!2858111))

(assert (not b!2858265))

(assert (not d!826621))

(assert (not b!2858237))

(assert (not b!2858258))

(assert (not b!2858208))

(assert (not bm!184190))

(assert (not b!2858256))

(assert (not b!2858262))

(assert (not b!2858205))

(assert (not b!2858257))

(assert (not d!826617))

(assert (not d!826629))

(assert (not b_lambda!85711))

(assert (not b!2858261))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!826655 () Bool)

(assert (=> d!826655 (= (isEmpty!18606 prefix!1470) (is-Nil!34071 prefix!1470))))

(assert (=> d!826617 d!826655))

(declare-fun d!826657 () Bool)

(declare-fun res!1187349 () List!34195)

(assert (=> d!826657 (dynLambda!14235 lambda!105132 res!1187349)))

(declare-fun e!1810045 () Bool)

(assert (=> d!826657 e!1810045))

(assert (=> d!826657 (= (choose!16817 lambda!105132) res!1187349)))

(declare-fun b!2858417 () Bool)

(declare-fun tp!919919 () Bool)

(assert (=> b!2858417 (= e!1810045 (and tp_is_empty!14933 tp!919919))))

(assert (= (and d!826657 (is-Cons!34071 res!1187349)) b!2858417))

(declare-fun b_lambda!85715 () Bool)

(assert (=> (not b_lambda!85715) (not d!826657)))

(declare-fun m!3279745 () Bool)

(assert (=> d!826657 m!3279745))

(assert (=> d!826621 d!826657))

(assert (=> d!826621 d!826627))

(declare-fun d!826659 () Bool)

(declare-fun lostCauseFct!217 (Regex!8598) Bool)

(assert (=> d!826659 (= (lostCause!751 r!23423) (lostCauseFct!217 r!23423))))

(declare-fun bs!520325 () Bool)

(assert (= bs!520325 d!826659))

(declare-fun m!3279747 () Bool)

(assert (=> bs!520325 m!3279747))

(assert (=> b!2858123 d!826659))

(declare-fun e!1810050 () Bool)

(declare-fun b!2858418 () Bool)

(assert (=> b!2858418 (= e!1810050 (= (head!6281 (tail!4506 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)))) (c!460575 (derivativeStep!2287 r!23423 (head!6281 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)))))))))

(declare-fun b!2858419 () Bool)

(declare-fun e!1810048 () Bool)

(declare-fun e!1810052 () Bool)

(assert (=> b!2858419 (= e!1810048 e!1810052)))

(declare-fun res!1187351 () Bool)

(assert (=> b!2858419 (=> (not res!1187351) (not e!1810052))))

(declare-fun lt!1014302 () Bool)

(assert (=> b!2858419 (= res!1187351 (not lt!1014302))))

(declare-fun d!826661 () Bool)

(declare-fun e!1810046 () Bool)

(assert (=> d!826661 e!1810046))

(declare-fun c!460649 () Bool)

(assert (=> d!826661 (= c!460649 (is-EmptyExpr!8598 (derivativeStep!2287 r!23423 (head!6281 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))))))))

(declare-fun e!1810047 () Bool)

(assert (=> d!826661 (= lt!1014302 e!1810047)))

(declare-fun c!460651 () Bool)

(assert (=> d!826661 (= c!460651 (isEmpty!18606 (tail!4506 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)))))))

(assert (=> d!826661 (validRegex!3468 (derivativeStep!2287 r!23423 (head!6281 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)))))))

(assert (=> d!826661 (= (matchR!3704 (derivativeStep!2287 r!23423 (head!6281 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)))) (tail!4506 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)))) lt!1014302)))

(declare-fun b!2858420 () Bool)

(declare-fun res!1187354 () Bool)

(assert (=> b!2858420 (=> res!1187354 e!1810048)))

(assert (=> b!2858420 (= res!1187354 e!1810050)))

(declare-fun res!1187355 () Bool)

(assert (=> b!2858420 (=> (not res!1187355) (not e!1810050))))

(assert (=> b!2858420 (= res!1187355 lt!1014302)))

(declare-fun b!2858421 () Bool)

(declare-fun res!1187350 () Bool)

(declare-fun e!1810049 () Bool)

(assert (=> b!2858421 (=> res!1187350 e!1810049)))

(assert (=> b!2858421 (= res!1187350 (not (isEmpty!18606 (tail!4506 (tail!4506 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)))))))))

(declare-fun b!2858422 () Bool)

(declare-fun res!1187353 () Bool)

(assert (=> b!2858422 (=> (not res!1187353) (not e!1810050))))

(declare-fun call!184215 () Bool)

(assert (=> b!2858422 (= res!1187353 (not call!184215))))

(declare-fun b!2858423 () Bool)

(declare-fun e!1810051 () Bool)

(assert (=> b!2858423 (= e!1810051 (not lt!1014302))))

(declare-fun b!2858424 () Bool)

(declare-fun res!1187356 () Bool)

(assert (=> b!2858424 (=> (not res!1187356) (not e!1810050))))

(assert (=> b!2858424 (= res!1187356 (isEmpty!18606 (tail!4506 (tail!4506 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))))))))

(declare-fun b!2858425 () Bool)

(assert (=> b!2858425 (= e!1810049 (not (= (head!6281 (tail!4506 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)))) (c!460575 (derivativeStep!2287 r!23423 (head!6281 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))))))))))

(declare-fun b!2858426 () Bool)

(assert (=> b!2858426 (= e!1810046 (= lt!1014302 call!184215))))

(declare-fun bm!184210 () Bool)

(assert (=> bm!184210 (= call!184215 (isEmpty!18606 (tail!4506 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)))))))

(declare-fun b!2858427 () Bool)

(assert (=> b!2858427 (= e!1810047 (matchR!3704 (derivativeStep!2287 (derivativeStep!2287 r!23423 (head!6281 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)))) (head!6281 (tail!4506 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))))) (tail!4506 (tail!4506 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))))))))

(declare-fun b!2858428 () Bool)

(assert (=> b!2858428 (= e!1810052 e!1810049)))

(declare-fun res!1187357 () Bool)

(assert (=> b!2858428 (=> res!1187357 e!1810049)))

(assert (=> b!2858428 (= res!1187357 call!184215)))

(declare-fun b!2858429 () Bool)

(assert (=> b!2858429 (= e!1810047 (nullable!2652 (derivativeStep!2287 r!23423 (head!6281 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))))))))

(declare-fun b!2858430 () Bool)

(assert (=> b!2858430 (= e!1810046 e!1810051)))

(declare-fun c!460650 () Bool)

(assert (=> b!2858430 (= c!460650 (is-EmptyLang!8598 (derivativeStep!2287 r!23423 (head!6281 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))))))))

(declare-fun b!2858431 () Bool)

(declare-fun res!1187352 () Bool)

(assert (=> b!2858431 (=> res!1187352 e!1810048)))

(assert (=> b!2858431 (= res!1187352 (not (is-ElementMatch!8598 (derivativeStep!2287 r!23423 (head!6281 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)))))))))

(assert (=> b!2858431 (= e!1810051 e!1810048)))

(assert (= (and d!826661 c!460651) b!2858429))

(assert (= (and d!826661 (not c!460651)) b!2858427))

(assert (= (and d!826661 c!460649) b!2858426))

(assert (= (and d!826661 (not c!460649)) b!2858430))

(assert (= (and b!2858430 c!460650) b!2858423))

(assert (= (and b!2858430 (not c!460650)) b!2858431))

(assert (= (and b!2858431 (not res!1187352)) b!2858420))

(assert (= (and b!2858420 res!1187355) b!2858422))

(assert (= (and b!2858422 res!1187353) b!2858424))

(assert (= (and b!2858424 res!1187356) b!2858418))

(assert (= (and b!2858420 (not res!1187354)) b!2858419))

(assert (= (and b!2858419 res!1187351) b!2858428))

(assert (= (and b!2858428 (not res!1187357)) b!2858421))

(assert (= (and b!2858421 (not res!1187350)) b!2858425))

(assert (= (or b!2858426 b!2858422 b!2858428) bm!184210))

(assert (=> b!2858429 m!3279591))

(declare-fun m!3279749 () Bool)

(assert (=> b!2858429 m!3279749))

(assert (=> bm!184210 m!3279593))

(assert (=> bm!184210 m!3279597))

(assert (=> b!2858427 m!3279593))

(declare-fun m!3279751 () Bool)

(assert (=> b!2858427 m!3279751))

(assert (=> b!2858427 m!3279591))

(assert (=> b!2858427 m!3279751))

(declare-fun m!3279753 () Bool)

(assert (=> b!2858427 m!3279753))

(assert (=> b!2858427 m!3279593))

(declare-fun m!3279755 () Bool)

(assert (=> b!2858427 m!3279755))

(assert (=> b!2858427 m!3279753))

(assert (=> b!2858427 m!3279755))

(declare-fun m!3279757 () Bool)

(assert (=> b!2858427 m!3279757))

(assert (=> b!2858425 m!3279593))

(assert (=> b!2858425 m!3279751))

(assert (=> b!2858424 m!3279593))

(assert (=> b!2858424 m!3279755))

(assert (=> b!2858424 m!3279755))

(declare-fun m!3279759 () Bool)

(assert (=> b!2858424 m!3279759))

(assert (=> b!2858421 m!3279593))

(assert (=> b!2858421 m!3279755))

(assert (=> b!2858421 m!3279755))

(assert (=> b!2858421 m!3279759))

(assert (=> b!2858418 m!3279593))

(assert (=> b!2858418 m!3279751))

(assert (=> d!826661 m!3279593))

(assert (=> d!826661 m!3279597))

(assert (=> d!826661 m!3279591))

(declare-fun m!3279761 () Bool)

(assert (=> d!826661 m!3279761))

(assert (=> b!2858114 d!826661))

(declare-fun b!2858432 () Bool)

(declare-fun e!1810053 () Regex!8598)

(declare-fun call!184218 () Regex!8598)

(assert (=> b!2858432 (= e!1810053 (Concat!13919 call!184218 r!23423))))

(declare-fun b!2858433 () Bool)

(declare-fun e!1810056 () Regex!8598)

(declare-fun call!184219 () Regex!8598)

(assert (=> b!2858433 (= e!1810056 (Union!8598 (Concat!13919 call!184219 (regTwo!17708 r!23423)) EmptyLang!8598))))

(declare-fun bm!184211 () Bool)

(declare-fun call!184216 () Regex!8598)

(assert (=> bm!184211 (= call!184218 call!184216)))

(declare-fun bm!184212 () Bool)

(assert (=> bm!184212 (= call!184219 call!184218)))

(declare-fun c!460654 () Bool)

(declare-fun c!460655 () Bool)

(declare-fun bm!184213 () Bool)

(declare-fun c!460653 () Bool)

(assert (=> bm!184213 (= call!184216 (derivativeStep!2287 (ite c!460654 (regTwo!17709 r!23423) (ite c!460653 (reg!8927 r!23423) (ite c!460655 (regTwo!17708 r!23423) (regOne!17708 r!23423)))) (head!6281 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)))))))

(declare-fun e!1810057 () Regex!8598)

(declare-fun b!2858434 () Bool)

(assert (=> b!2858434 (= e!1810057 (ite (= (head!6281 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))) (c!460575 r!23423)) EmptyExpr!8598 EmptyLang!8598))))

(declare-fun b!2858435 () Bool)

(declare-fun call!184217 () Regex!8598)

(assert (=> b!2858435 (= e!1810056 (Union!8598 (Concat!13919 call!184217 (regTwo!17708 r!23423)) call!184219))))

(declare-fun b!2858436 () Bool)

(declare-fun e!1810054 () Regex!8598)

(assert (=> b!2858436 (= e!1810054 e!1810053)))

(assert (=> b!2858436 (= c!460653 (is-Star!8598 r!23423))))

(declare-fun b!2858437 () Bool)

(assert (=> b!2858437 (= c!460655 (nullable!2652 (regOne!17708 r!23423)))))

(assert (=> b!2858437 (= e!1810053 e!1810056)))

(declare-fun b!2858438 () Bool)

(declare-fun e!1810055 () Regex!8598)

(assert (=> b!2858438 (= e!1810055 EmptyLang!8598)))

(declare-fun d!826663 () Bool)

(declare-fun lt!1014303 () Regex!8598)

(assert (=> d!826663 (validRegex!3468 lt!1014303)))

(assert (=> d!826663 (= lt!1014303 e!1810055)))

(declare-fun c!460652 () Bool)

(assert (=> d!826663 (= c!460652 (or (is-EmptyExpr!8598 r!23423) (is-EmptyLang!8598 r!23423)))))

(assert (=> d!826663 (validRegex!3468 r!23423)))

(assert (=> d!826663 (= (derivativeStep!2287 r!23423 (head!6281 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)))) lt!1014303)))

(declare-fun bm!184214 () Bool)

(assert (=> bm!184214 (= call!184217 (derivativeStep!2287 (ite c!460654 (regOne!17709 r!23423) (regOne!17708 r!23423)) (head!6281 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)))))))

(declare-fun b!2858439 () Bool)

(assert (=> b!2858439 (= c!460654 (is-Union!8598 r!23423))))

(assert (=> b!2858439 (= e!1810057 e!1810054)))

(declare-fun b!2858440 () Bool)

(assert (=> b!2858440 (= e!1810055 e!1810057)))

(declare-fun c!460656 () Bool)

(assert (=> b!2858440 (= c!460656 (is-ElementMatch!8598 r!23423))))

(declare-fun b!2858441 () Bool)

(assert (=> b!2858441 (= e!1810054 (Union!8598 call!184217 call!184216))))

(assert (= (and d!826663 c!460652) b!2858438))

(assert (= (and d!826663 (not c!460652)) b!2858440))

(assert (= (and b!2858440 c!460656) b!2858434))

(assert (= (and b!2858440 (not c!460656)) b!2858439))

(assert (= (and b!2858439 c!460654) b!2858441))

(assert (= (and b!2858439 (not c!460654)) b!2858436))

(assert (= (and b!2858436 c!460653) b!2858432))

(assert (= (and b!2858436 (not c!460653)) b!2858437))

(assert (= (and b!2858437 c!460655) b!2858435))

(assert (= (and b!2858437 (not c!460655)) b!2858433))

(assert (= (or b!2858435 b!2858433) bm!184212))

(assert (= (or b!2858432 bm!184212) bm!184211))

(assert (= (or b!2858441 bm!184211) bm!184213))

(assert (= (or b!2858441 b!2858435) bm!184214))

(assert (=> bm!184213 m!3279589))

(declare-fun m!3279763 () Bool)

(assert (=> bm!184213 m!3279763))

(assert (=> b!2858437 m!3279623))

(declare-fun m!3279765 () Bool)

(assert (=> d!826663 m!3279765))

(assert (=> d!826663 m!3279559))

(assert (=> bm!184214 m!3279589))

(declare-fun m!3279767 () Bool)

(assert (=> bm!184214 m!3279767))

(assert (=> b!2858114 d!826663))

(declare-fun d!826665 () Bool)

(assert (=> d!826665 (= (head!6281 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))) (h!39491 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))))))

(assert (=> b!2858114 d!826665))

(declare-fun d!826667 () Bool)

(assert (=> d!826667 (= (tail!4506 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))) (t!233226 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))))))

(assert (=> b!2858114 d!826667))

(declare-fun d!826669 () Bool)

(declare-fun c!460657 () Bool)

(assert (=> d!826669 (= c!460657 (isEmpty!18606 (tail!4506 prefix!1470)))))

(declare-fun e!1810058 () Bool)

(assert (=> d!826669 (= (prefixMatch!906 (derivativeStep!2287 r!23423 (head!6281 prefix!1470)) (tail!4506 prefix!1470)) e!1810058)))

(declare-fun b!2858442 () Bool)

(assert (=> b!2858442 (= e!1810058 (not (lostCause!751 (derivativeStep!2287 r!23423 (head!6281 prefix!1470)))))))

(declare-fun b!2858443 () Bool)

(assert (=> b!2858443 (= e!1810058 (prefixMatch!906 (derivativeStep!2287 (derivativeStep!2287 r!23423 (head!6281 prefix!1470)) (head!6281 (tail!4506 prefix!1470))) (tail!4506 (tail!4506 prefix!1470))))))

(assert (= (and d!826669 c!460657) b!2858442))

(assert (= (and d!826669 (not c!460657)) b!2858443))

(assert (=> d!826669 m!3279607))

(declare-fun m!3279769 () Bool)

(assert (=> d!826669 m!3279769))

(assert (=> b!2858442 m!3279605))

(declare-fun m!3279771 () Bool)

(assert (=> b!2858442 m!3279771))

(assert (=> b!2858443 m!3279607))

(declare-fun m!3279773 () Bool)

(assert (=> b!2858443 m!3279773))

(assert (=> b!2858443 m!3279605))

(assert (=> b!2858443 m!3279773))

(declare-fun m!3279775 () Bool)

(assert (=> b!2858443 m!3279775))

(assert (=> b!2858443 m!3279607))

(declare-fun m!3279777 () Bool)

(assert (=> b!2858443 m!3279777))

(assert (=> b!2858443 m!3279775))

(assert (=> b!2858443 m!3279777))

(declare-fun m!3279779 () Bool)

(assert (=> b!2858443 m!3279779))

(assert (=> b!2858124 d!826669))

(declare-fun b!2858444 () Bool)

(declare-fun e!1810059 () Regex!8598)

(declare-fun call!184222 () Regex!8598)

(assert (=> b!2858444 (= e!1810059 (Concat!13919 call!184222 r!23423))))

(declare-fun b!2858445 () Bool)

(declare-fun e!1810062 () Regex!8598)

(declare-fun call!184223 () Regex!8598)

(assert (=> b!2858445 (= e!1810062 (Union!8598 (Concat!13919 call!184223 (regTwo!17708 r!23423)) EmptyLang!8598))))

(declare-fun bm!184215 () Bool)

(declare-fun call!184220 () Regex!8598)

(assert (=> bm!184215 (= call!184222 call!184220)))

(declare-fun bm!184216 () Bool)

(assert (=> bm!184216 (= call!184223 call!184222)))

(declare-fun c!460661 () Bool)

(declare-fun c!460659 () Bool)

(declare-fun c!460660 () Bool)

(declare-fun bm!184217 () Bool)

(assert (=> bm!184217 (= call!184220 (derivativeStep!2287 (ite c!460660 (regTwo!17709 r!23423) (ite c!460659 (reg!8927 r!23423) (ite c!460661 (regTwo!17708 r!23423) (regOne!17708 r!23423)))) (head!6281 prefix!1470)))))

(declare-fun b!2858446 () Bool)

(declare-fun e!1810063 () Regex!8598)

(assert (=> b!2858446 (= e!1810063 (ite (= (head!6281 prefix!1470) (c!460575 r!23423)) EmptyExpr!8598 EmptyLang!8598))))

(declare-fun b!2858447 () Bool)

(declare-fun call!184221 () Regex!8598)

(assert (=> b!2858447 (= e!1810062 (Union!8598 (Concat!13919 call!184221 (regTwo!17708 r!23423)) call!184223))))

(declare-fun b!2858448 () Bool)

(declare-fun e!1810060 () Regex!8598)

(assert (=> b!2858448 (= e!1810060 e!1810059)))

(assert (=> b!2858448 (= c!460659 (is-Star!8598 r!23423))))

(declare-fun b!2858449 () Bool)

(assert (=> b!2858449 (= c!460661 (nullable!2652 (regOne!17708 r!23423)))))

(assert (=> b!2858449 (= e!1810059 e!1810062)))

(declare-fun b!2858450 () Bool)

(declare-fun e!1810061 () Regex!8598)

(assert (=> b!2858450 (= e!1810061 EmptyLang!8598)))

(declare-fun d!826671 () Bool)

(declare-fun lt!1014304 () Regex!8598)

(assert (=> d!826671 (validRegex!3468 lt!1014304)))

(assert (=> d!826671 (= lt!1014304 e!1810061)))

(declare-fun c!460658 () Bool)

(assert (=> d!826671 (= c!460658 (or (is-EmptyExpr!8598 r!23423) (is-EmptyLang!8598 r!23423)))))

(assert (=> d!826671 (validRegex!3468 r!23423)))

(assert (=> d!826671 (= (derivativeStep!2287 r!23423 (head!6281 prefix!1470)) lt!1014304)))

(declare-fun bm!184218 () Bool)

(assert (=> bm!184218 (= call!184221 (derivativeStep!2287 (ite c!460660 (regOne!17709 r!23423) (regOne!17708 r!23423)) (head!6281 prefix!1470)))))

(declare-fun b!2858451 () Bool)

(assert (=> b!2858451 (= c!460660 (is-Union!8598 r!23423))))

(assert (=> b!2858451 (= e!1810063 e!1810060)))

(declare-fun b!2858452 () Bool)

(assert (=> b!2858452 (= e!1810061 e!1810063)))

(declare-fun c!460662 () Bool)

(assert (=> b!2858452 (= c!460662 (is-ElementMatch!8598 r!23423))))

(declare-fun b!2858453 () Bool)

(assert (=> b!2858453 (= e!1810060 (Union!8598 call!184221 call!184220))))

(assert (= (and d!826671 c!460658) b!2858450))

(assert (= (and d!826671 (not c!460658)) b!2858452))

(assert (= (and b!2858452 c!460662) b!2858446))

(assert (= (and b!2858452 (not c!460662)) b!2858451))

(assert (= (and b!2858451 c!460660) b!2858453))

(assert (= (and b!2858451 (not c!460660)) b!2858448))

(assert (= (and b!2858448 c!460659) b!2858444))

(assert (= (and b!2858448 (not c!460659)) b!2858449))

(assert (= (and b!2858449 c!460661) b!2858447))

(assert (= (and b!2858449 (not c!460661)) b!2858445))

(assert (= (or b!2858447 b!2858445) bm!184216))

(assert (= (or b!2858444 bm!184216) bm!184215))

(assert (= (or b!2858453 bm!184215) bm!184217))

(assert (= (or b!2858453 b!2858447) bm!184218))

(assert (=> bm!184217 m!3279603))

(declare-fun m!3279781 () Bool)

(assert (=> bm!184217 m!3279781))

(assert (=> b!2858449 m!3279623))

(declare-fun m!3279783 () Bool)

(assert (=> d!826671 m!3279783))

(assert (=> d!826671 m!3279559))

(assert (=> bm!184218 m!3279603))

(declare-fun m!3279785 () Bool)

(assert (=> bm!184218 m!3279785))

(assert (=> b!2858124 d!826671))

(declare-fun d!826673 () Bool)

(assert (=> d!826673 (= (head!6281 prefix!1470) (h!39491 prefix!1470))))

(assert (=> b!2858124 d!826673))

(declare-fun d!826675 () Bool)

(assert (=> d!826675 (= (tail!4506 prefix!1470) (t!233226 prefix!1470))))

(assert (=> b!2858124 d!826675))

(declare-fun d!826677 () Bool)

(assert (=> d!826677 (= (isEmpty!18606 lt!1014260) (is-Nil!34071 lt!1014260))))

(assert (=> bm!184192 d!826677))

(declare-fun d!826679 () Bool)

(assert (=> d!826679 (= (isEmpty!18606 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))) (is-Nil!34071 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470))))))

(assert (=> bm!184162 d!826679))

(declare-fun e!1810064 () Regex!8598)

(declare-fun b!2858454 () Bool)

(declare-fun call!184226 () Regex!8598)

(assert (=> b!2858454 (= e!1810064 (Concat!13919 call!184226 (ite c!460617 (regOne!17709 r!23423) (regOne!17708 r!23423))))))

(declare-fun call!184227 () Regex!8598)

(declare-fun e!1810067 () Regex!8598)

(declare-fun b!2858455 () Bool)

(assert (=> b!2858455 (= e!1810067 (Union!8598 (Concat!13919 call!184227 (regTwo!17708 (ite c!460617 (regOne!17709 r!23423) (regOne!17708 r!23423)))) EmptyLang!8598))))

(declare-fun bm!184219 () Bool)

(declare-fun call!184224 () Regex!8598)

(assert (=> bm!184219 (= call!184226 call!184224)))

(declare-fun bm!184220 () Bool)

(assert (=> bm!184220 (= call!184227 call!184226)))

(declare-fun c!460666 () Bool)

(declare-fun c!460664 () Bool)

(declare-fun bm!184221 () Bool)

(declare-fun c!460665 () Bool)

(assert (=> bm!184221 (= call!184224 (derivativeStep!2287 (ite c!460665 (regTwo!17709 (ite c!460617 (regOne!17709 r!23423) (regOne!17708 r!23423))) (ite c!460664 (reg!8927 (ite c!460617 (regOne!17709 r!23423) (regOne!17708 r!23423))) (ite c!460666 (regTwo!17708 (ite c!460617 (regOne!17709 r!23423) (regOne!17708 r!23423))) (regOne!17708 (ite c!460617 (regOne!17709 r!23423) (regOne!17708 r!23423)))))) (h!39491 prefix!1470)))))

(declare-fun b!2858456 () Bool)

(declare-fun e!1810068 () Regex!8598)

(assert (=> b!2858456 (= e!1810068 (ite (= (h!39491 prefix!1470) (c!460575 (ite c!460617 (regOne!17709 r!23423) (regOne!17708 r!23423)))) EmptyExpr!8598 EmptyLang!8598))))

(declare-fun call!184225 () Regex!8598)

(declare-fun b!2858457 () Bool)

(assert (=> b!2858457 (= e!1810067 (Union!8598 (Concat!13919 call!184225 (regTwo!17708 (ite c!460617 (regOne!17709 r!23423) (regOne!17708 r!23423)))) call!184227))))

(declare-fun b!2858458 () Bool)

(declare-fun e!1810065 () Regex!8598)

(assert (=> b!2858458 (= e!1810065 e!1810064)))

(assert (=> b!2858458 (= c!460664 (is-Star!8598 (ite c!460617 (regOne!17709 r!23423) (regOne!17708 r!23423))))))

(declare-fun b!2858459 () Bool)

(assert (=> b!2858459 (= c!460666 (nullable!2652 (regOne!17708 (ite c!460617 (regOne!17709 r!23423) (regOne!17708 r!23423)))))))

(assert (=> b!2858459 (= e!1810064 e!1810067)))

(declare-fun b!2858460 () Bool)

(declare-fun e!1810066 () Regex!8598)

(assert (=> b!2858460 (= e!1810066 EmptyLang!8598)))

(declare-fun d!826681 () Bool)

(declare-fun lt!1014305 () Regex!8598)

(assert (=> d!826681 (validRegex!3468 lt!1014305)))

(assert (=> d!826681 (= lt!1014305 e!1810066)))

(declare-fun c!460663 () Bool)

(assert (=> d!826681 (= c!460663 (or (is-EmptyExpr!8598 (ite c!460617 (regOne!17709 r!23423) (regOne!17708 r!23423))) (is-EmptyLang!8598 (ite c!460617 (regOne!17709 r!23423) (regOne!17708 r!23423)))))))

(assert (=> d!826681 (validRegex!3468 (ite c!460617 (regOne!17709 r!23423) (regOne!17708 r!23423)))))

(assert (=> d!826681 (= (derivativeStep!2287 (ite c!460617 (regOne!17709 r!23423) (regOne!17708 r!23423)) (h!39491 prefix!1470)) lt!1014305)))

(declare-fun bm!184222 () Bool)

(assert (=> bm!184222 (= call!184225 (derivativeStep!2287 (ite c!460665 (regOne!17709 (ite c!460617 (regOne!17709 r!23423) (regOne!17708 r!23423))) (regOne!17708 (ite c!460617 (regOne!17709 r!23423) (regOne!17708 r!23423)))) (h!39491 prefix!1470)))))

(declare-fun b!2858461 () Bool)

(assert (=> b!2858461 (= c!460665 (is-Union!8598 (ite c!460617 (regOne!17709 r!23423) (regOne!17708 r!23423))))))

(assert (=> b!2858461 (= e!1810068 e!1810065)))

(declare-fun b!2858462 () Bool)

(assert (=> b!2858462 (= e!1810066 e!1810068)))

(declare-fun c!460667 () Bool)

(assert (=> b!2858462 (= c!460667 (is-ElementMatch!8598 (ite c!460617 (regOne!17709 r!23423) (regOne!17708 r!23423))))))

(declare-fun b!2858463 () Bool)

(assert (=> b!2858463 (= e!1810065 (Union!8598 call!184225 call!184224))))

(assert (= (and d!826681 c!460663) b!2858460))

(assert (= (and d!826681 (not c!460663)) b!2858462))

(assert (= (and b!2858462 c!460667) b!2858456))

(assert (= (and b!2858462 (not c!460667)) b!2858461))

(assert (= (and b!2858461 c!460665) b!2858463))

(assert (= (and b!2858461 (not c!460665)) b!2858458))

(assert (= (and b!2858458 c!460664) b!2858454))

(assert (= (and b!2858458 (not c!460664)) b!2858459))

(assert (= (and b!2858459 c!460666) b!2858457))

(assert (= (and b!2858459 (not c!460666)) b!2858455))

(assert (= (or b!2858457 b!2858455) bm!184220))

(assert (= (or b!2858454 bm!184220) bm!184219))

(assert (= (or b!2858463 bm!184219) bm!184221))

(assert (= (or b!2858463 b!2858457) bm!184222))

(declare-fun m!3279787 () Bool)

(assert (=> bm!184221 m!3279787))

(declare-fun m!3279789 () Bool)

(assert (=> b!2858459 m!3279789))

(declare-fun m!3279791 () Bool)

(assert (=> d!826681 m!3279791))

(declare-fun m!3279793 () Bool)

(assert (=> d!826681 m!3279793))

(declare-fun m!3279795 () Bool)

(assert (=> bm!184222 m!3279795))

(assert (=> bm!184191 d!826681))

(declare-fun d!826683 () Bool)

(assert (=> d!826683 true))

(assert (=> d!826683 true))

(declare-fun res!1187360 () Bool)

(assert (=> d!826683 (= (choose!16818 lambda!105132) res!1187360)))

(assert (=> d!826627 d!826683))

(declare-fun b!2858464 () Bool)

(declare-fun e!1810073 () Bool)

(assert (=> b!2858464 (= e!1810073 (= (head!6281 (tail!4506 lt!1014260)) (c!460575 (derivativeStep!2287 lt!1014258 (head!6281 lt!1014260)))))))

(declare-fun b!2858465 () Bool)

(declare-fun e!1810071 () Bool)

(declare-fun e!1810075 () Bool)

(assert (=> b!2858465 (= e!1810071 e!1810075)))

(declare-fun res!1187362 () Bool)

(assert (=> b!2858465 (=> (not res!1187362) (not e!1810075))))

(declare-fun lt!1014306 () Bool)

(assert (=> b!2858465 (= res!1187362 (not lt!1014306))))

(declare-fun d!826685 () Bool)

(declare-fun e!1810069 () Bool)

(assert (=> d!826685 e!1810069))

(declare-fun c!460668 () Bool)

(assert (=> d!826685 (= c!460668 (is-EmptyExpr!8598 (derivativeStep!2287 lt!1014258 (head!6281 lt!1014260))))))

(declare-fun e!1810070 () Bool)

(assert (=> d!826685 (= lt!1014306 e!1810070)))

(declare-fun c!460670 () Bool)

(assert (=> d!826685 (= c!460670 (isEmpty!18606 (tail!4506 lt!1014260)))))

(assert (=> d!826685 (validRegex!3468 (derivativeStep!2287 lt!1014258 (head!6281 lt!1014260)))))

(assert (=> d!826685 (= (matchR!3704 (derivativeStep!2287 lt!1014258 (head!6281 lt!1014260)) (tail!4506 lt!1014260)) lt!1014306)))

(declare-fun b!2858466 () Bool)

(declare-fun res!1187365 () Bool)

(assert (=> b!2858466 (=> res!1187365 e!1810071)))

(assert (=> b!2858466 (= res!1187365 e!1810073)))

(declare-fun res!1187366 () Bool)

(assert (=> b!2858466 (=> (not res!1187366) (not e!1810073))))

(assert (=> b!2858466 (= res!1187366 lt!1014306)))

(declare-fun b!2858467 () Bool)

(declare-fun res!1187361 () Bool)

(declare-fun e!1810072 () Bool)

(assert (=> b!2858467 (=> res!1187361 e!1810072)))

(assert (=> b!2858467 (= res!1187361 (not (isEmpty!18606 (tail!4506 (tail!4506 lt!1014260)))))))

(declare-fun b!2858468 () Bool)

(declare-fun res!1187364 () Bool)

(assert (=> b!2858468 (=> (not res!1187364) (not e!1810073))))

(declare-fun call!184228 () Bool)

(assert (=> b!2858468 (= res!1187364 (not call!184228))))

(declare-fun b!2858469 () Bool)

(declare-fun e!1810074 () Bool)

(assert (=> b!2858469 (= e!1810074 (not lt!1014306))))

(declare-fun b!2858470 () Bool)

(declare-fun res!1187367 () Bool)

(assert (=> b!2858470 (=> (not res!1187367) (not e!1810073))))

(assert (=> b!2858470 (= res!1187367 (isEmpty!18606 (tail!4506 (tail!4506 lt!1014260))))))

(declare-fun b!2858471 () Bool)

(assert (=> b!2858471 (= e!1810072 (not (= (head!6281 (tail!4506 lt!1014260)) (c!460575 (derivativeStep!2287 lt!1014258 (head!6281 lt!1014260))))))))

(declare-fun b!2858472 () Bool)

(assert (=> b!2858472 (= e!1810069 (= lt!1014306 call!184228))))

(declare-fun bm!184223 () Bool)

(assert (=> bm!184223 (= call!184228 (isEmpty!18606 (tail!4506 lt!1014260)))))

(declare-fun b!2858473 () Bool)

(assert (=> b!2858473 (= e!1810070 (matchR!3704 (derivativeStep!2287 (derivativeStep!2287 lt!1014258 (head!6281 lt!1014260)) (head!6281 (tail!4506 lt!1014260))) (tail!4506 (tail!4506 lt!1014260))))))

(declare-fun b!2858474 () Bool)

(assert (=> b!2858474 (= e!1810075 e!1810072)))

(declare-fun res!1187368 () Bool)

(assert (=> b!2858474 (=> res!1187368 e!1810072)))

(assert (=> b!2858474 (= res!1187368 call!184228)))

(declare-fun b!2858475 () Bool)

(assert (=> b!2858475 (= e!1810070 (nullable!2652 (derivativeStep!2287 lt!1014258 (head!6281 lt!1014260))))))

(declare-fun b!2858476 () Bool)

(assert (=> b!2858476 (= e!1810069 e!1810074)))

(declare-fun c!460669 () Bool)

(assert (=> b!2858476 (= c!460669 (is-EmptyLang!8598 (derivativeStep!2287 lt!1014258 (head!6281 lt!1014260))))))

(declare-fun b!2858477 () Bool)

(declare-fun res!1187363 () Bool)

(assert (=> b!2858477 (=> res!1187363 e!1810071)))

(assert (=> b!2858477 (= res!1187363 (not (is-ElementMatch!8598 (derivativeStep!2287 lt!1014258 (head!6281 lt!1014260)))))))

(assert (=> b!2858477 (= e!1810074 e!1810071)))

(assert (= (and d!826685 c!460670) b!2858475))

(assert (= (and d!826685 (not c!460670)) b!2858473))

(assert (= (and d!826685 c!460668) b!2858472))

(assert (= (and d!826685 (not c!460668)) b!2858476))

(assert (= (and b!2858476 c!460669) b!2858469))

(assert (= (and b!2858476 (not c!460669)) b!2858477))

(assert (= (and b!2858477 (not res!1187363)) b!2858466))

(assert (= (and b!2858466 res!1187366) b!2858468))

(assert (= (and b!2858468 res!1187364) b!2858470))

(assert (= (and b!2858470 res!1187367) b!2858464))

(assert (= (and b!2858466 (not res!1187365)) b!2858465))

(assert (= (and b!2858465 res!1187362) b!2858474))

(assert (= (and b!2858474 (not res!1187368)) b!2858467))

(assert (= (and b!2858467 (not res!1187361)) b!2858471))

(assert (= (or b!2858472 b!2858468 b!2858474) bm!184223))

(assert (=> b!2858475 m!3279635))

(declare-fun m!3279797 () Bool)

(assert (=> b!2858475 m!3279797))

(assert (=> bm!184223 m!3279637))

(assert (=> bm!184223 m!3279641))

(assert (=> b!2858473 m!3279637))

(declare-fun m!3279799 () Bool)

(assert (=> b!2858473 m!3279799))

(assert (=> b!2858473 m!3279635))

(assert (=> b!2858473 m!3279799))

(declare-fun m!3279801 () Bool)

(assert (=> b!2858473 m!3279801))

(assert (=> b!2858473 m!3279637))

(declare-fun m!3279803 () Bool)

(assert (=> b!2858473 m!3279803))

(assert (=> b!2858473 m!3279801))

(assert (=> b!2858473 m!3279803))

(declare-fun m!3279805 () Bool)

(assert (=> b!2858473 m!3279805))

(assert (=> b!2858471 m!3279637))

(assert (=> b!2858471 m!3279799))

(assert (=> b!2858470 m!3279637))

(assert (=> b!2858470 m!3279803))

(assert (=> b!2858470 m!3279803))

(declare-fun m!3279807 () Bool)

(assert (=> b!2858470 m!3279807))

(assert (=> b!2858467 m!3279637))

(assert (=> b!2858467 m!3279803))

(assert (=> b!2858467 m!3279803))

(assert (=> b!2858467 m!3279807))

(assert (=> b!2858464 m!3279637))

(assert (=> b!2858464 m!3279799))

(assert (=> d!826685 m!3279637))

(assert (=> d!826685 m!3279641))

(assert (=> d!826685 m!3279635))

(declare-fun m!3279809 () Bool)

(assert (=> d!826685 m!3279809))

(assert (=> b!2858211 d!826685))

(declare-fun b!2858478 () Bool)

(declare-fun e!1810076 () Regex!8598)

(declare-fun call!184231 () Regex!8598)

(assert (=> b!2858478 (= e!1810076 (Concat!13919 call!184231 lt!1014258))))

(declare-fun b!2858479 () Bool)

(declare-fun e!1810079 () Regex!8598)

(declare-fun call!184232 () Regex!8598)

(assert (=> b!2858479 (= e!1810079 (Union!8598 (Concat!13919 call!184232 (regTwo!17708 lt!1014258)) EmptyLang!8598))))

(declare-fun bm!184224 () Bool)

(declare-fun call!184229 () Regex!8598)

(assert (=> bm!184224 (= call!184231 call!184229)))

(declare-fun bm!184225 () Bool)

(assert (=> bm!184225 (= call!184232 call!184231)))

(declare-fun c!460672 () Bool)

(declare-fun c!460673 () Bool)

(declare-fun bm!184226 () Bool)

(declare-fun c!460674 () Bool)

(assert (=> bm!184226 (= call!184229 (derivativeStep!2287 (ite c!460673 (regTwo!17709 lt!1014258) (ite c!460672 (reg!8927 lt!1014258) (ite c!460674 (regTwo!17708 lt!1014258) (regOne!17708 lt!1014258)))) (head!6281 lt!1014260)))))

(declare-fun b!2858480 () Bool)

(declare-fun e!1810080 () Regex!8598)

(assert (=> b!2858480 (= e!1810080 (ite (= (head!6281 lt!1014260) (c!460575 lt!1014258)) EmptyExpr!8598 EmptyLang!8598))))

(declare-fun b!2858481 () Bool)

(declare-fun call!184230 () Regex!8598)

(assert (=> b!2858481 (= e!1810079 (Union!8598 (Concat!13919 call!184230 (regTwo!17708 lt!1014258)) call!184232))))

(declare-fun b!2858482 () Bool)

(declare-fun e!1810077 () Regex!8598)

(assert (=> b!2858482 (= e!1810077 e!1810076)))

(assert (=> b!2858482 (= c!460672 (is-Star!8598 lt!1014258))))

(declare-fun b!2858483 () Bool)

(assert (=> b!2858483 (= c!460674 (nullable!2652 (regOne!17708 lt!1014258)))))

(assert (=> b!2858483 (= e!1810076 e!1810079)))

(declare-fun b!2858484 () Bool)

(declare-fun e!1810078 () Regex!8598)

(assert (=> b!2858484 (= e!1810078 EmptyLang!8598)))

(declare-fun d!826687 () Bool)

(declare-fun lt!1014307 () Regex!8598)

(assert (=> d!826687 (validRegex!3468 lt!1014307)))

(assert (=> d!826687 (= lt!1014307 e!1810078)))

(declare-fun c!460671 () Bool)

(assert (=> d!826687 (= c!460671 (or (is-EmptyExpr!8598 lt!1014258) (is-EmptyLang!8598 lt!1014258)))))

(assert (=> d!826687 (validRegex!3468 lt!1014258)))

(assert (=> d!826687 (= (derivativeStep!2287 lt!1014258 (head!6281 lt!1014260)) lt!1014307)))

(declare-fun bm!184227 () Bool)

(assert (=> bm!184227 (= call!184230 (derivativeStep!2287 (ite c!460673 (regOne!17709 lt!1014258) (regOne!17708 lt!1014258)) (head!6281 lt!1014260)))))

(declare-fun b!2858485 () Bool)

(assert (=> b!2858485 (= c!460673 (is-Union!8598 lt!1014258))))

(assert (=> b!2858485 (= e!1810080 e!1810077)))

(declare-fun b!2858486 () Bool)

(assert (=> b!2858486 (= e!1810078 e!1810080)))

(declare-fun c!460675 () Bool)

(assert (=> b!2858486 (= c!460675 (is-ElementMatch!8598 lt!1014258))))

(declare-fun b!2858487 () Bool)

(assert (=> b!2858487 (= e!1810077 (Union!8598 call!184230 call!184229))))

(assert (= (and d!826687 c!460671) b!2858484))

(assert (= (and d!826687 (not c!460671)) b!2858486))

(assert (= (and b!2858486 c!460675) b!2858480))

(assert (= (and b!2858486 (not c!460675)) b!2858485))

(assert (= (and b!2858485 c!460673) b!2858487))

(assert (= (and b!2858485 (not c!460673)) b!2858482))

(assert (= (and b!2858482 c!460672) b!2858478))

(assert (= (and b!2858482 (not c!460672)) b!2858483))

(assert (= (and b!2858483 c!460674) b!2858481))

(assert (= (and b!2858483 (not c!460674)) b!2858479))

(assert (= (or b!2858481 b!2858479) bm!184225))

(assert (= (or b!2858478 bm!184225) bm!184224))

(assert (= (or b!2858487 bm!184224) bm!184226))

(assert (= (or b!2858487 b!2858481) bm!184227))

(assert (=> bm!184226 m!3279633))

(declare-fun m!3279811 () Bool)

(assert (=> bm!184226 m!3279811))

(declare-fun m!3279813 () Bool)

(assert (=> b!2858483 m!3279813))

(declare-fun m!3279815 () Bool)

(assert (=> d!826687 m!3279815))

(assert (=> d!826687 m!3279643))

(assert (=> bm!184227 m!3279633))

(declare-fun m!3279817 () Bool)

(assert (=> bm!184227 m!3279817))

(assert (=> b!2858211 d!826687))

(declare-fun d!826689 () Bool)

(assert (=> d!826689 (= (head!6281 lt!1014260) (h!39491 lt!1014260))))

(assert (=> b!2858211 d!826689))

(declare-fun d!826691 () Bool)

(assert (=> d!826691 (= (tail!4506 lt!1014260) (t!233226 lt!1014260))))

(assert (=> b!2858211 d!826691))

(declare-fun d!826693 () Bool)

(declare-fun nullableFct!801 (Regex!8598) Bool)

(assert (=> d!826693 (= (nullable!2652 lt!1014258) (nullableFct!801 lt!1014258))))

(declare-fun bs!520326 () Bool)

(assert (= bs!520326 d!826693))

(declare-fun m!3279819 () Bool)

(assert (=> bs!520326 m!3279819))

(assert (=> b!2858213 d!826693))

(declare-fun d!826695 () Bool)

(assert (=> d!826695 (= (nullable!2652 r!23423) (nullableFct!801 r!23423))))

(declare-fun bs!520327 () Bool)

(assert (= bs!520327 d!826695))

(declare-fun m!3279821 () Bool)

(assert (=> bs!520327 m!3279821))

(assert (=> b!2858116 d!826695))

(declare-fun d!826697 () Bool)

(assert (=> d!826697 (= (isEmpty!18606 (tail!4506 lt!1014260)) (is-Nil!34071 (tail!4506 lt!1014260)))))

(assert (=> b!2858205 d!826697))

(assert (=> b!2858205 d!826691))

(declare-fun d!826699 () Bool)

(assert (=> d!826699 (= (isEmpty!18606 (tail!4506 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)))) (is-Nil!34071 (tail!4506 ($colon$colon!594 lt!1014260 (h!39491 prefix!1470)))))))

(assert (=> b!2858108 d!826699))

(assert (=> b!2858108 d!826667))

(declare-fun e!1810081 () Regex!8598)

(declare-fun b!2858488 () Bool)

(declare-fun call!184235 () Regex!8598)

(assert (=> b!2858488 (= e!1810081 (Concat!13919 call!184235 (ite c!460617 (regTwo!17709 r!23423) (ite c!460616 (reg!8927 r!23423) (ite c!460618 (regTwo!17708 r!23423) (regOne!17708 r!23423))))))))

(declare-fun e!1810084 () Regex!8598)

(declare-fun b!2858489 () Bool)

(declare-fun call!184236 () Regex!8598)

(assert (=> b!2858489 (= e!1810084 (Union!8598 (Concat!13919 call!184236 (regTwo!17708 (ite c!460617 (regTwo!17709 r!23423) (ite c!460616 (reg!8927 r!23423) (ite c!460618 (regTwo!17708 r!23423) (regOne!17708 r!23423)))))) EmptyLang!8598))))

(declare-fun bm!184228 () Bool)

(declare-fun call!184233 () Regex!8598)

(assert (=> bm!184228 (= call!184235 call!184233)))

(declare-fun bm!184229 () Bool)

(assert (=> bm!184229 (= call!184236 call!184235)))

(declare-fun c!460677 () Bool)

(declare-fun c!460678 () Bool)

(declare-fun bm!184230 () Bool)

(declare-fun c!460679 () Bool)

(assert (=> bm!184230 (= call!184233 (derivativeStep!2287 (ite c!460678 (regTwo!17709 (ite c!460617 (regTwo!17709 r!23423) (ite c!460616 (reg!8927 r!23423) (ite c!460618 (regTwo!17708 r!23423) (regOne!17708 r!23423))))) (ite c!460677 (reg!8927 (ite c!460617 (regTwo!17709 r!23423) (ite c!460616 (reg!8927 r!23423) (ite c!460618 (regTwo!17708 r!23423) (regOne!17708 r!23423))))) (ite c!460679 (regTwo!17708 (ite c!460617 (regTwo!17709 r!23423) (ite c!460616 (reg!8927 r!23423) (ite c!460618 (regTwo!17708 r!23423) (regOne!17708 r!23423))))) (regOne!17708 (ite c!460617 (regTwo!17709 r!23423) (ite c!460616 (reg!8927 r!23423) (ite c!460618 (regTwo!17708 r!23423) (regOne!17708 r!23423)))))))) (h!39491 prefix!1470)))))

(declare-fun b!2858490 () Bool)

(declare-fun e!1810085 () Regex!8598)

(assert (=> b!2858490 (= e!1810085 (ite (= (h!39491 prefix!1470) (c!460575 (ite c!460617 (regTwo!17709 r!23423) (ite c!460616 (reg!8927 r!23423) (ite c!460618 (regTwo!17708 r!23423) (regOne!17708 r!23423)))))) EmptyExpr!8598 EmptyLang!8598))))

(declare-fun b!2858491 () Bool)

(declare-fun call!184234 () Regex!8598)

(assert (=> b!2858491 (= e!1810084 (Union!8598 (Concat!13919 call!184234 (regTwo!17708 (ite c!460617 (regTwo!17709 r!23423) (ite c!460616 (reg!8927 r!23423) (ite c!460618 (regTwo!17708 r!23423) (regOne!17708 r!23423)))))) call!184236))))

(declare-fun b!2858492 () Bool)

(declare-fun e!1810082 () Regex!8598)

(assert (=> b!2858492 (= e!1810082 e!1810081)))

(assert (=> b!2858492 (= c!460677 (is-Star!8598 (ite c!460617 (regTwo!17709 r!23423) (ite c!460616 (reg!8927 r!23423) (ite c!460618 (regTwo!17708 r!23423) (regOne!17708 r!23423))))))))

(declare-fun b!2858493 () Bool)

(assert (=> b!2858493 (= c!460679 (nullable!2652 (regOne!17708 (ite c!460617 (regTwo!17709 r!23423) (ite c!460616 (reg!8927 r!23423) (ite c!460618 (regTwo!17708 r!23423) (regOne!17708 r!23423)))))))))

(assert (=> b!2858493 (= e!1810081 e!1810084)))

(declare-fun b!2858494 () Bool)

(declare-fun e!1810083 () Regex!8598)

(assert (=> b!2858494 (= e!1810083 EmptyLang!8598)))

(declare-fun d!826701 () Bool)

(declare-fun lt!1014308 () Regex!8598)

(assert (=> d!826701 (validRegex!3468 lt!1014308)))

(assert (=> d!826701 (= lt!1014308 e!1810083)))

(declare-fun c!460676 () Bool)

(assert (=> d!826701 (= c!460676 (or (is-EmptyExpr!8598 (ite c!460617 (regTwo!17709 r!23423) (ite c!460616 (reg!8927 r!23423) (ite c!460618 (regTwo!17708 r!23423) (regOne!17708 r!23423))))) (is-EmptyLang!8598 (ite c!460617 (regTwo!17709 r!23423) (ite c!460616 (reg!8927 r!23423) (ite c!460618 (regTwo!17708 r!23423) (regOne!17708 r!23423)))))))))

(assert (=> d!826701 (validRegex!3468 (ite c!460617 (regTwo!17709 r!23423) (ite c!460616 (reg!8927 r!23423) (ite c!460618 (regTwo!17708 r!23423) (regOne!17708 r!23423)))))))

(assert (=> d!826701 (= (derivativeStep!2287 (ite c!460617 (regTwo!17709 r!23423) (ite c!460616 (reg!8927 r!23423) (ite c!460618 (regTwo!17708 r!23423) (regOne!17708 r!23423)))) (h!39491 prefix!1470)) lt!1014308)))

(declare-fun bm!184231 () Bool)

(assert (=> bm!184231 (= call!184234 (derivativeStep!2287 (ite c!460678 (regOne!17709 (ite c!460617 (regTwo!17709 r!23423) (ite c!460616 (reg!8927 r!23423) (ite c!460618 (regTwo!17708 r!23423) (regOne!17708 r!23423))))) (regOne!17708 (ite c!460617 (regTwo!17709 r!23423) (ite c!460616 (reg!8927 r!23423) (ite c!460618 (regTwo!17708 r!23423) (regOne!17708 r!23423)))))) (h!39491 prefix!1470)))))

(declare-fun b!2858495 () Bool)

(assert (=> b!2858495 (= c!460678 (is-Union!8598 (ite c!460617 (regTwo!17709 r!23423) (ite c!460616 (reg!8927 r!23423) (ite c!460618 (regTwo!17708 r!23423) (regOne!17708 r!23423))))))))

(assert (=> b!2858495 (= e!1810085 e!1810082)))

(declare-fun b!2858496 () Bool)

(assert (=> b!2858496 (= e!1810083 e!1810085)))

(declare-fun c!460680 () Bool)

(assert (=> b!2858496 (= c!460680 (is-ElementMatch!8598 (ite c!460617 (regTwo!17709 r!23423) (ite c!460616 (reg!8927 r!23423) (ite c!460618 (regTwo!17708 r!23423) (regOne!17708 r!23423))))))))

(declare-fun b!2858497 () Bool)

(assert (=> b!2858497 (= e!1810082 (Union!8598 call!184234 call!184233))))

(assert (= (and d!826701 c!460676) b!2858494))

(assert (= (and d!826701 (not c!460676)) b!2858496))

(assert (= (and b!2858496 c!460680) b!2858490))

(assert (= (and b!2858496 (not c!460680)) b!2858495))

(assert (= (and b!2858495 c!460678) b!2858497))

(assert (= (and b!2858495 (not c!460678)) b!2858492))

(assert (= (and b!2858492 c!460677) b!2858488))

(assert (= (and b!2858492 (not c!460677)) b!2858493))

(assert (= (and b!2858493 c!460679) b!2858491))

(assert (= (and b!2858493 (not c!460679)) b!2858489))

(assert (= (or b!2858491 b!2858489) bm!184229))

(assert (= (or b!2858488 bm!184229) bm!184228))

(assert (= (or b!2858497 bm!184228) bm!184230))

(assert (= (or b!2858497 b!2858491) bm!184231))

(declare-fun m!3279823 () Bool)

(assert (=> bm!184230 m!3279823))

(declare-fun m!3279825 () Bool)

(assert (=> b!2858493 m!3279825))

(declare-fun m!3279827 () Bool)

(assert (=> d!826701 m!3279827))

(declare-fun m!3279829 () Bool)

(assert (=> d!826701 m!3279829))

(declare-fun m!3279831 () Bool)

(assert (=> bm!184231 m!3279831))

(assert (=> bm!184190 d!826701))

(declare-fun b!2858500 () Bool)

(declare-fun e!1810088 () Bool)

(assert (=> b!2858500 (= e!1810088 (isPrefix!2678 (tail!4506 (tail!4506 (t!233226 prefix!1470))) (tail!4506 (tail!4506 lt!1014260))))))

(declare-fun b!2858498 () Bool)

(declare-fun e!1810087 () Bool)

(assert (=> b!2858498 (= e!1810087 e!1810088)))

(declare-fun res!1187371 () Bool)

(assert (=> b!2858498 (=> (not res!1187371) (not e!1810088))))

(assert (=> b!2858498 (= res!1187371 (not (is-Nil!34071 (tail!4506 lt!1014260))))))

(declare-fun d!826703 () Bool)

(declare-fun e!1810086 () Bool)

(assert (=> d!826703 e!1810086))

(declare-fun res!1187369 () Bool)

(assert (=> d!826703 (=> res!1187369 e!1810086)))

(declare-fun lt!1014309 () Bool)

(assert (=> d!826703 (= res!1187369 (not lt!1014309))))

(assert (=> d!826703 (= lt!1014309 e!1810087)))

(declare-fun res!1187372 () Bool)

(assert (=> d!826703 (=> res!1187372 e!1810087)))

(assert (=> d!826703 (= res!1187372 (is-Nil!34071 (tail!4506 (t!233226 prefix!1470))))))

(assert (=> d!826703 (= (isPrefix!2678 (tail!4506 (t!233226 prefix!1470)) (tail!4506 lt!1014260)) lt!1014309)))

(declare-fun b!2858499 () Bool)

(declare-fun res!1187370 () Bool)

(assert (=> b!2858499 (=> (not res!1187370) (not e!1810088))))

(assert (=> b!2858499 (= res!1187370 (= (head!6281 (tail!4506 (t!233226 prefix!1470))) (head!6281 (tail!4506 lt!1014260))))))

(declare-fun b!2858501 () Bool)

(assert (=> b!2858501 (= e!1810086 (>= (size!26276 (tail!4506 lt!1014260)) (size!26276 (tail!4506 (t!233226 prefix!1470)))))))

(assert (= (and d!826703 (not res!1187372)) b!2858498))

(assert (= (and b!2858498 res!1187371) b!2858499))

(assert (= (and b!2858499 res!1187370) b!2858500))

(assert (= (and d!826703 (not res!1187369)) b!2858501))

(assert (=> b!2858500 m!3279663))

(declare-fun m!3279833 () Bool)

(assert (=> b!2858500 m!3279833))

(assert (=> b!2858500 m!3279637))

(assert (=> b!2858500 m!3279803))

(assert (=> b!2858500 m!3279833))

(assert (=> b!2858500 m!3279803))

(declare-fun m!3279835 () Bool)

(assert (=> b!2858500 m!3279835))

(assert (=> b!2858499 m!3279663))

(declare-fun m!3279837 () Bool)

(assert (=> b!2858499 m!3279837))

(assert (=> b!2858499 m!3279637))

(assert (=> b!2858499 m!3279799))

(assert (=> b!2858501 m!3279637))

(declare-fun m!3279839 () Bool)

(assert (=> b!2858501 m!3279839))

(assert (=> b!2858501 m!3279663))

(declare-fun m!3279841 () Bool)

(assert (=> b!2858501 m!3279841))

(assert (=> b!2858238 d!826703))

(declare-fun d!826705 () Bool)

(assert (=> d!826705 (= (tail!4506 (t!233226 prefix!1470)) (t!233226 (t!233226 prefix!1470)))))

(assert (=> b!2858238 d!826705))

(assert (=> b!2858238 d!826691))

(declare-fun b!2858502 () Bool)

(declare-fun e!1810093 () Bool)

(declare-fun e!1810089 () Bool)

(assert (=> b!2858502 (= e!1810093 e!1810089)))

(declare-fun c!460681 () Bool)

(assert (=> b!2858502 (= c!460681 (is-Union!8598 (ite c!460593 (regTwo!17709 r!23423) (regTwo!17708 r!23423))))))

(declare-fun b!2858503 () Bool)

(declare-fun e!1810091 () Bool)

(declare-fun call!184237 () Bool)

(assert (=> b!2858503 (= e!1810091 call!184237)))

(declare-fun b!2858504 () Bool)

(declare-fun e!1810094 () Bool)

(assert (=> b!2858504 (= e!1810094 e!1810093)))

(declare-fun c!460682 () Bool)

(assert (=> b!2858504 (= c!460682 (is-Star!8598 (ite c!460593 (regTwo!17709 r!23423) (regTwo!17708 r!23423))))))

(declare-fun b!2858505 () Bool)

(declare-fun e!1810095 () Bool)

(declare-fun call!184239 () Bool)

(assert (=> b!2858505 (= e!1810095 call!184239)))

(declare-fun d!826707 () Bool)

(declare-fun res!1187375 () Bool)

(assert (=> d!826707 (=> res!1187375 e!1810094)))

(assert (=> d!826707 (= res!1187375 (is-ElementMatch!8598 (ite c!460593 (regTwo!17709 r!23423) (regTwo!17708 r!23423))))))

(assert (=> d!826707 (= (validRegex!3468 (ite c!460593 (regTwo!17709 r!23423) (regTwo!17708 r!23423))) e!1810094)))

(declare-fun bm!184232 () Bool)

(assert (=> bm!184232 (= call!184239 (validRegex!3468 (ite c!460682 (reg!8927 (ite c!460593 (regTwo!17709 r!23423) (regTwo!17708 r!23423))) (ite c!460681 (regOne!17709 (ite c!460593 (regTwo!17709 r!23423) (regTwo!17708 r!23423))) (regOne!17708 (ite c!460593 (regTwo!17709 r!23423) (regTwo!17708 r!23423)))))))))

(declare-fun b!2858506 () Bool)

(declare-fun e!1810092 () Bool)

(declare-fun e!1810090 () Bool)

(assert (=> b!2858506 (= e!1810092 e!1810090)))

(declare-fun res!1187376 () Bool)

(assert (=> b!2858506 (=> (not res!1187376) (not e!1810090))))

(declare-fun call!184238 () Bool)

(assert (=> b!2858506 (= res!1187376 call!184238)))

(declare-fun bm!184233 () Bool)

(assert (=> bm!184233 (= call!184238 call!184239)))

(declare-fun bm!184234 () Bool)

(assert (=> bm!184234 (= call!184237 (validRegex!3468 (ite c!460681 (regTwo!17709 (ite c!460593 (regTwo!17709 r!23423) (regTwo!17708 r!23423))) (regTwo!17708 (ite c!460593 (regTwo!17709 r!23423) (regTwo!17708 r!23423))))))))

(declare-fun b!2858507 () Bool)

(assert (=> b!2858507 (= e!1810090 call!184237)))

(declare-fun b!2858508 () Bool)

(assert (=> b!2858508 (= e!1810093 e!1810095)))

(declare-fun res!1187377 () Bool)

(assert (=> b!2858508 (= res!1187377 (not (nullable!2652 (reg!8927 (ite c!460593 (regTwo!17709 r!23423) (regTwo!17708 r!23423))))))))

(assert (=> b!2858508 (=> (not res!1187377) (not e!1810095))))

(declare-fun b!2858509 () Bool)

(declare-fun res!1187373 () Bool)

(assert (=> b!2858509 (=> (not res!1187373) (not e!1810091))))

(assert (=> b!2858509 (= res!1187373 call!184238)))

(assert (=> b!2858509 (= e!1810089 e!1810091)))

(declare-fun b!2858510 () Bool)

(declare-fun res!1187374 () Bool)

(assert (=> b!2858510 (=> res!1187374 e!1810092)))

(assert (=> b!2858510 (= res!1187374 (not (is-Concat!13919 (ite c!460593 (regTwo!17709 r!23423) (regTwo!17708 r!23423)))))))

(assert (=> b!2858510 (= e!1810089 e!1810092)))

(assert (= (and d!826707 (not res!1187375)) b!2858504))

(assert (= (and b!2858504 c!460682) b!2858508))

(assert (= (and b!2858504 (not c!460682)) b!2858502))

(assert (= (and b!2858508 res!1187377) b!2858505))

(assert (= (and b!2858502 c!460681) b!2858509))

(assert (= (and b!2858502 (not c!460681)) b!2858510))

(assert (= (and b!2858509 res!1187373) b!2858503))

(assert (= (and b!2858510 (not res!1187374)) b!2858506))

(assert (= (and b!2858506 res!1187376) b!2858507))

(assert (= (or b!2858503 b!2858507) bm!184234))

(assert (= (or b!2858509 b!2858506) bm!184233))

(assert (= (or b!2858505 bm!184233) bm!184232))

(declare-fun m!3279843 () Bool)

(assert (=> bm!184232 m!3279843))

(declare-fun m!3279845 () Bool)

(assert (=> bm!184234 m!3279845))

(declare-fun m!3279847 () Bool)

(assert (=> b!2858508 m!3279847))

(assert (=> bm!184171 d!826707))

(declare-fun d!826709 () Bool)

(assert (=> d!826709 (= (nullable!2652 (reg!8927 r!23423)) (nullableFct!801 (reg!8927 r!23423)))))

(declare-fun bs!520328 () Bool)

(assert (= bs!520328 d!826709))

(declare-fun m!3279849 () Bool)

(assert (=> bs!520328 m!3279849))

(assert (=> b!2858149 d!826709))

(declare-fun d!826711 () Bool)

(declare-fun lt!1014312 () Int)

(assert (=> d!826711 (>= lt!1014312 0)))

(declare-fun e!1810098 () Int)

(assert (=> d!826711 (= lt!1014312 e!1810098)))

(declare-fun c!460685 () Bool)

(assert (=> d!826711 (= c!460685 (is-Nil!34071 lt!1014260))))

(assert (=> d!826711 (= (size!26276 lt!1014260) lt!1014312)))

(declare-fun b!2858515 () Bool)

(assert (=> b!2858515 (= e!1810098 0)))

(declare-fun b!2858516 () Bool)

(assert (=> b!2858516 (= e!1810098 (+ 1 (size!26276 (t!233226 lt!1014260))))))

(assert (= (and d!826711 c!460685) b!2858515))

(assert (= (and d!826711 (not c!460685)) b!2858516))

(declare-fun m!3279851 () Bool)

(assert (=> b!2858516 m!3279851))

(assert (=> b!2858239 d!826711))

(declare-fun d!826713 () Bool)

(declare-fun lt!1014313 () Int)

(assert (=> d!826713 (>= lt!1014313 0)))

(declare-fun e!1810099 () Int)

(assert (=> d!826713 (= lt!1014313 e!1810099)))

(declare-fun c!460686 () Bool)

(assert (=> d!826713 (= c!460686 (is-Nil!34071 (t!233226 prefix!1470)))))

(assert (=> d!826713 (= (size!26276 (t!233226 prefix!1470)) lt!1014313)))

(declare-fun b!2858517 () Bool)

(assert (=> b!2858517 (= e!1810099 0)))

(declare-fun b!2858518 () Bool)

(assert (=> b!2858518 (= e!1810099 (+ 1 (size!26276 (t!233226 (t!233226 prefix!1470)))))))

(assert (= (and d!826713 c!460686) b!2858517))

(assert (= (and d!826713 (not c!460686)) b!2858518))

(declare-fun m!3279853 () Bool)

(assert (=> b!2858518 m!3279853))

(assert (=> b!2858239 d!826713))

(assert (=> b!2858111 d!826699))

(assert (=> b!2858111 d!826667))

(assert (=> b!2858209 d!826689))

(assert (=> b!2858112 d!826665))

(declare-fun d!826715 () Bool)

(assert (=> d!826715 (= (nullable!2652 (regOne!17708 r!23423)) (nullableFct!801 (regOne!17708 r!23423)))))

(declare-fun bs!520329 () Bool)

(assert (= bs!520329 d!826715))

(declare-fun m!3279855 () Bool)

(assert (=> bs!520329 m!3279855))

(assert (=> b!2858197 d!826715))

(assert (=> b!2858208 d!826697))

(assert (=> b!2858208 d!826691))

(declare-fun d!826717 () Bool)

(assert (=> d!826717 (= (Exists!1302 lambda!105140) (choose!16818 lambda!105140))))

(declare-fun bs!520330 () Bool)

(assert (= bs!520330 d!826717))

(declare-fun m!3279857 () Bool)

(assert (=> bs!520330 m!3279857))

(assert (=> d!826629 d!826717))

(declare-fun bs!520331 () Bool)

(declare-fun d!826719 () Bool)

(assert (= bs!520331 (and d!826719 b!2858031)))

(declare-fun lambda!105146 () Int)

(assert (=> bs!520331 (= lambda!105146 lambda!105132)))

(declare-fun bs!520332 () Bool)

(assert (= bs!520332 (and d!826719 d!826629)))

(assert (=> bs!520332 (= lambda!105146 lambda!105140)))

(assert (=> d!826719 true))

(assert (=> d!826719 true))

(assert (=> d!826719 (Exists!1302 lambda!105146)))

(assert (=> d!826719 true))

(declare-fun _$103!164 () Unit!47739)

(assert (=> d!826719 (= (choose!16819 lt!1014258 (t!233226 prefix!1470)) _$103!164)))

(declare-fun bs!520333 () Bool)

(assert (= bs!520333 d!826719))

(declare-fun m!3279859 () Bool)

(assert (=> bs!520333 m!3279859))

(assert (=> d!826629 d!826719))

(declare-fun b!2858521 () Bool)

(declare-fun e!1810106 () Bool)

(declare-fun e!1810102 () Bool)

(assert (=> b!2858521 (= e!1810106 e!1810102)))

(declare-fun c!460687 () Bool)

(assert (=> b!2858521 (= c!460687 (is-Union!8598 lt!1014258))))

(declare-fun b!2858522 () Bool)

(declare-fun e!1810104 () Bool)

(declare-fun call!184240 () Bool)

(assert (=> b!2858522 (= e!1810104 call!184240)))

(declare-fun b!2858523 () Bool)

(declare-fun e!1810107 () Bool)

(assert (=> b!2858523 (= e!1810107 e!1810106)))

(declare-fun c!460688 () Bool)

(assert (=> b!2858523 (= c!460688 (is-Star!8598 lt!1014258))))

(declare-fun b!2858524 () Bool)

(declare-fun e!1810108 () Bool)

(declare-fun call!184242 () Bool)

(assert (=> b!2858524 (= e!1810108 call!184242)))

(declare-fun d!826721 () Bool)

(declare-fun res!1187382 () Bool)

(assert (=> d!826721 (=> res!1187382 e!1810107)))

(assert (=> d!826721 (= res!1187382 (is-ElementMatch!8598 lt!1014258))))

(assert (=> d!826721 (= (validRegex!3468 lt!1014258) e!1810107)))

(declare-fun bm!184235 () Bool)

(assert (=> bm!184235 (= call!184242 (validRegex!3468 (ite c!460688 (reg!8927 lt!1014258) (ite c!460687 (regOne!17709 lt!1014258) (regOne!17708 lt!1014258)))))))

(declare-fun b!2858525 () Bool)

(declare-fun e!1810105 () Bool)

(declare-fun e!1810103 () Bool)

(assert (=> b!2858525 (= e!1810105 e!1810103)))

(declare-fun res!1187383 () Bool)

(assert (=> b!2858525 (=> (not res!1187383) (not e!1810103))))

(declare-fun call!184241 () Bool)

(assert (=> b!2858525 (= res!1187383 call!184241)))

(declare-fun bm!184236 () Bool)

(assert (=> bm!184236 (= call!184241 call!184242)))

(declare-fun bm!184237 () Bool)

(assert (=> bm!184237 (= call!184240 (validRegex!3468 (ite c!460687 (regTwo!17709 lt!1014258) (regTwo!17708 lt!1014258))))))

(declare-fun b!2858526 () Bool)

(assert (=> b!2858526 (= e!1810103 call!184240)))

(declare-fun b!2858527 () Bool)

(assert (=> b!2858527 (= e!1810106 e!1810108)))

(declare-fun res!1187384 () Bool)

(assert (=> b!2858527 (= res!1187384 (not (nullable!2652 (reg!8927 lt!1014258))))))

(assert (=> b!2858527 (=> (not res!1187384) (not e!1810108))))

(declare-fun b!2858528 () Bool)

(declare-fun res!1187380 () Bool)

(assert (=> b!2858528 (=> (not res!1187380) (not e!1810104))))

(assert (=> b!2858528 (= res!1187380 call!184241)))

(assert (=> b!2858528 (= e!1810102 e!1810104)))

(declare-fun b!2858529 () Bool)

(declare-fun res!1187381 () Bool)

(assert (=> b!2858529 (=> res!1187381 e!1810105)))

(assert (=> b!2858529 (= res!1187381 (not (is-Concat!13919 lt!1014258)))))

(assert (=> b!2858529 (= e!1810102 e!1810105)))

(assert (= (and d!826721 (not res!1187382)) b!2858523))

(assert (= (and b!2858523 c!460688) b!2858527))

(assert (= (and b!2858523 (not c!460688)) b!2858521))

(assert (= (and b!2858527 res!1187384) b!2858524))

(assert (= (and b!2858521 c!460687) b!2858528))

(assert (= (and b!2858521 (not c!460687)) b!2858529))

(assert (= (and b!2858528 res!1187380) b!2858522))

(assert (= (and b!2858529 (not res!1187381)) b!2858525))

(assert (= (and b!2858525 res!1187383) b!2858526))

(assert (= (or b!2858522 b!2858526) bm!184237))

(assert (= (or b!2858528 b!2858525) bm!184236))

(assert (= (or b!2858524 bm!184236) bm!184235))

(declare-fun m!3279861 () Bool)

(assert (=> bm!184235 m!3279861))

(declare-fun m!3279863 () Bool)

(assert (=> bm!184237 m!3279863))

(declare-fun m!3279865 () Bool)

(assert (=> b!2858527 m!3279865))

(assert (=> d!826629 d!826721))

(declare-fun b!2858530 () Bool)

(declare-fun e!1810113 () Bool)

(assert (=> b!2858530 (= e!1810113 (= (head!6281 lt!1014277) (c!460575 lt!1014258)))))

(declare-fun b!2858531 () Bool)

(declare-fun e!1810111 () Bool)

(declare-fun e!1810115 () Bool)

(assert (=> b!2858531 (= e!1810111 e!1810115)))

(declare-fun res!1187386 () Bool)

(assert (=> b!2858531 (=> (not res!1187386) (not e!1810115))))

(declare-fun lt!1014314 () Bool)

(assert (=> b!2858531 (= res!1187386 (not lt!1014314))))

(declare-fun d!826723 () Bool)

(declare-fun e!1810109 () Bool)

(assert (=> d!826723 e!1810109))

(declare-fun c!460689 () Bool)

(assert (=> d!826723 (= c!460689 (is-EmptyExpr!8598 lt!1014258))))

(declare-fun e!1810110 () Bool)

(assert (=> d!826723 (= lt!1014314 e!1810110)))

(declare-fun c!460691 () Bool)

(assert (=> d!826723 (= c!460691 (isEmpty!18606 lt!1014277))))

(assert (=> d!826723 (validRegex!3468 lt!1014258)))

(assert (=> d!826723 (= (matchR!3704 lt!1014258 lt!1014277) lt!1014314)))

(declare-fun b!2858532 () Bool)

(declare-fun res!1187389 () Bool)

(assert (=> b!2858532 (=> res!1187389 e!1810111)))

(assert (=> b!2858532 (= res!1187389 e!1810113)))

(declare-fun res!1187390 () Bool)

(assert (=> b!2858532 (=> (not res!1187390) (not e!1810113))))

(assert (=> b!2858532 (= res!1187390 lt!1014314)))

(declare-fun b!2858533 () Bool)

(declare-fun res!1187385 () Bool)

(declare-fun e!1810112 () Bool)

(assert (=> b!2858533 (=> res!1187385 e!1810112)))

(assert (=> b!2858533 (= res!1187385 (not (isEmpty!18606 (tail!4506 lt!1014277))))))

(declare-fun b!2858534 () Bool)

(declare-fun res!1187388 () Bool)

(assert (=> b!2858534 (=> (not res!1187388) (not e!1810113))))

(declare-fun call!184243 () Bool)

(assert (=> b!2858534 (= res!1187388 (not call!184243))))

(declare-fun b!2858535 () Bool)

(declare-fun e!1810114 () Bool)

(assert (=> b!2858535 (= e!1810114 (not lt!1014314))))

(declare-fun b!2858536 () Bool)

(declare-fun res!1187391 () Bool)

(assert (=> b!2858536 (=> (not res!1187391) (not e!1810113))))

(assert (=> b!2858536 (= res!1187391 (isEmpty!18606 (tail!4506 lt!1014277)))))

(declare-fun b!2858537 () Bool)

(assert (=> b!2858537 (= e!1810112 (not (= (head!6281 lt!1014277) (c!460575 lt!1014258))))))

(declare-fun b!2858538 () Bool)

(assert (=> b!2858538 (= e!1810109 (= lt!1014314 call!184243))))

(declare-fun bm!184238 () Bool)

(assert (=> bm!184238 (= call!184243 (isEmpty!18606 lt!1014277))))

(declare-fun b!2858539 () Bool)

(assert (=> b!2858539 (= e!1810110 (matchR!3704 (derivativeStep!2287 lt!1014258 (head!6281 lt!1014277)) (tail!4506 lt!1014277)))))

(declare-fun b!2858540 () Bool)

(assert (=> b!2858540 (= e!1810115 e!1810112)))

(declare-fun res!1187392 () Bool)

(assert (=> b!2858540 (=> res!1187392 e!1810112)))

(assert (=> b!2858540 (= res!1187392 call!184243)))

(declare-fun b!2858541 () Bool)

(assert (=> b!2858541 (= e!1810110 (nullable!2652 lt!1014258))))

(declare-fun b!2858542 () Bool)

(assert (=> b!2858542 (= e!1810109 e!1810114)))

(declare-fun c!460690 () Bool)

(assert (=> b!2858542 (= c!460690 (is-EmptyLang!8598 lt!1014258))))

(declare-fun b!2858543 () Bool)

(declare-fun res!1187387 () Bool)

(assert (=> b!2858543 (=> res!1187387 e!1810111)))

(assert (=> b!2858543 (= res!1187387 (not (is-ElementMatch!8598 lt!1014258)))))

(assert (=> b!2858543 (= e!1810114 e!1810111)))

(assert (= (and d!826723 c!460691) b!2858541))

(assert (= (and d!826723 (not c!460691)) b!2858539))

(assert (= (and d!826723 c!460689) b!2858538))

(assert (= (and d!826723 (not c!460689)) b!2858542))

(assert (= (and b!2858542 c!460690) b!2858535))

(assert (= (and b!2858542 (not c!460690)) b!2858543))

(assert (= (and b!2858543 (not res!1187387)) b!2858532))

(assert (= (and b!2858532 res!1187390) b!2858534))

(assert (= (and b!2858534 res!1187388) b!2858536))

(assert (= (and b!2858536 res!1187391) b!2858530))

(assert (= (and b!2858532 (not res!1187389)) b!2858531))

(assert (= (and b!2858531 res!1187386) b!2858540))

(assert (= (and b!2858540 (not res!1187392)) b!2858533))

(assert (= (and b!2858533 (not res!1187385)) b!2858537))

(assert (= (or b!2858538 b!2858534 b!2858540) bm!184238))

(assert (=> b!2858541 m!3279629))

(declare-fun m!3279867 () Bool)

(assert (=> bm!184238 m!3279867))

(declare-fun m!3279869 () Bool)

(assert (=> b!2858539 m!3279869))

(assert (=> b!2858539 m!3279869))

(declare-fun m!3279871 () Bool)

(assert (=> b!2858539 m!3279871))

(declare-fun m!3279873 () Bool)

(assert (=> b!2858539 m!3279873))

(assert (=> b!2858539 m!3279871))

(assert (=> b!2858539 m!3279873))

(declare-fun m!3279875 () Bool)

(assert (=> b!2858539 m!3279875))

(assert (=> b!2858537 m!3279869))

(assert (=> b!2858536 m!3279873))

(assert (=> b!2858536 m!3279873))

(declare-fun m!3279877 () Bool)

(assert (=> b!2858536 m!3279877))

(assert (=> b!2858533 m!3279873))

(assert (=> b!2858533 m!3279873))

(assert (=> b!2858533 m!3279877))

(assert (=> b!2858530 m!3279869))

(assert (=> d!826723 m!3279867))

(assert (=> d!826723 m!3279643))

(assert (=> bs!520321 d!826723))

(assert (=> d!826625 d!826677))

(assert (=> d!826625 d!826721))

(assert (=> b!2858202 d!826689))

(assert (=> b!2858105 d!826665))

(declare-fun b!2858544 () Bool)

(declare-fun e!1810120 () Bool)

(declare-fun e!1810116 () Bool)

(assert (=> b!2858544 (= e!1810120 e!1810116)))

(declare-fun c!460692 () Bool)

(assert (=> b!2858544 (= c!460692 (is-Union!8598 (ite c!460594 (reg!8927 r!23423) (ite c!460593 (regOne!17709 r!23423) (regOne!17708 r!23423)))))))

(declare-fun b!2858545 () Bool)

(declare-fun e!1810118 () Bool)

(declare-fun call!184244 () Bool)

(assert (=> b!2858545 (= e!1810118 call!184244)))

(declare-fun b!2858546 () Bool)

(declare-fun e!1810121 () Bool)

(assert (=> b!2858546 (= e!1810121 e!1810120)))

(declare-fun c!460693 () Bool)

(assert (=> b!2858546 (= c!460693 (is-Star!8598 (ite c!460594 (reg!8927 r!23423) (ite c!460593 (regOne!17709 r!23423) (regOne!17708 r!23423)))))))

(declare-fun b!2858547 () Bool)

(declare-fun e!1810122 () Bool)

(declare-fun call!184246 () Bool)

(assert (=> b!2858547 (= e!1810122 call!184246)))

(declare-fun d!826725 () Bool)

(declare-fun res!1187395 () Bool)

(assert (=> d!826725 (=> res!1187395 e!1810121)))

(assert (=> d!826725 (= res!1187395 (is-ElementMatch!8598 (ite c!460594 (reg!8927 r!23423) (ite c!460593 (regOne!17709 r!23423) (regOne!17708 r!23423)))))))

(assert (=> d!826725 (= (validRegex!3468 (ite c!460594 (reg!8927 r!23423) (ite c!460593 (regOne!17709 r!23423) (regOne!17708 r!23423)))) e!1810121)))

(declare-fun bm!184239 () Bool)

(assert (=> bm!184239 (= call!184246 (validRegex!3468 (ite c!460693 (reg!8927 (ite c!460594 (reg!8927 r!23423) (ite c!460593 (regOne!17709 r!23423) (regOne!17708 r!23423)))) (ite c!460692 (regOne!17709 (ite c!460594 (reg!8927 r!23423) (ite c!460593 (regOne!17709 r!23423) (regOne!17708 r!23423)))) (regOne!17708 (ite c!460594 (reg!8927 r!23423) (ite c!460593 (regOne!17709 r!23423) (regOne!17708 r!23423))))))))))

(declare-fun b!2858548 () Bool)

(declare-fun e!1810119 () Bool)

(declare-fun e!1810117 () Bool)

(assert (=> b!2858548 (= e!1810119 e!1810117)))

(declare-fun res!1187396 () Bool)

(assert (=> b!2858548 (=> (not res!1187396) (not e!1810117))))

(declare-fun call!184245 () Bool)

(assert (=> b!2858548 (= res!1187396 call!184245)))

(declare-fun bm!184240 () Bool)

(assert (=> bm!184240 (= call!184245 call!184246)))

(declare-fun bm!184241 () Bool)

(assert (=> bm!184241 (= call!184244 (validRegex!3468 (ite c!460692 (regTwo!17709 (ite c!460594 (reg!8927 r!23423) (ite c!460593 (regOne!17709 r!23423) (regOne!17708 r!23423)))) (regTwo!17708 (ite c!460594 (reg!8927 r!23423) (ite c!460593 (regOne!17709 r!23423) (regOne!17708 r!23423)))))))))

(declare-fun b!2858549 () Bool)

(assert (=> b!2858549 (= e!1810117 call!184244)))

(declare-fun b!2858550 () Bool)

(assert (=> b!2858550 (= e!1810120 e!1810122)))

(declare-fun res!1187397 () Bool)

(assert (=> b!2858550 (= res!1187397 (not (nullable!2652 (reg!8927 (ite c!460594 (reg!8927 r!23423) (ite c!460593 (regOne!17709 r!23423) (regOne!17708 r!23423)))))))))

(assert (=> b!2858550 (=> (not res!1187397) (not e!1810122))))

(declare-fun b!2858551 () Bool)

(declare-fun res!1187393 () Bool)

(assert (=> b!2858551 (=> (not res!1187393) (not e!1810118))))

(assert (=> b!2858551 (= res!1187393 call!184245)))

(assert (=> b!2858551 (= e!1810116 e!1810118)))

(declare-fun b!2858552 () Bool)

(declare-fun res!1187394 () Bool)

(assert (=> b!2858552 (=> res!1187394 e!1810119)))

(assert (=> b!2858552 (= res!1187394 (not (is-Concat!13919 (ite c!460594 (reg!8927 r!23423) (ite c!460593 (regOne!17709 r!23423) (regOne!17708 r!23423))))))))

(assert (=> b!2858552 (= e!1810116 e!1810119)))

(assert (= (and d!826725 (not res!1187395)) b!2858546))

(assert (= (and b!2858546 c!460693) b!2858550))

(assert (= (and b!2858546 (not c!460693)) b!2858544))

(assert (= (and b!2858550 res!1187397) b!2858547))

(assert (= (and b!2858544 c!460692) b!2858551))

(assert (= (and b!2858544 (not c!460692)) b!2858552))

(assert (= (and b!2858551 res!1187393) b!2858545))

(assert (= (and b!2858552 (not res!1187394)) b!2858548))

(assert (= (and b!2858548 res!1187396) b!2858549))

(assert (= (or b!2858545 b!2858549) bm!184241))

(assert (= (or b!2858551 b!2858548) bm!184240))

(assert (= (or b!2858547 bm!184240) bm!184239))

(declare-fun m!3279879 () Bool)

(assert (=> bm!184239 m!3279879))

(declare-fun m!3279881 () Bool)

(assert (=> bm!184241 m!3279881))

(declare-fun m!3279883 () Bool)

(assert (=> b!2858550 m!3279883))

(assert (=> bm!184169 d!826725))

(declare-fun b!2858555 () Bool)

(declare-fun e!1810125 () Bool)

(assert (=> b!2858555 (= e!1810125 (isPrefix!2678 (tail!4506 (t!233226 prefix!1470)) (tail!4506 lt!1014277)))))

(declare-fun b!2858553 () Bool)

(declare-fun e!1810124 () Bool)

(assert (=> b!2858553 (= e!1810124 e!1810125)))

(declare-fun res!1187400 () Bool)

(assert (=> b!2858553 (=> (not res!1187400) (not e!1810125))))

(assert (=> b!2858553 (= res!1187400 (not (is-Nil!34071 lt!1014277)))))

(declare-fun d!826727 () Bool)

(declare-fun e!1810123 () Bool)

(assert (=> d!826727 e!1810123))

(declare-fun res!1187398 () Bool)

(assert (=> d!826727 (=> res!1187398 e!1810123)))

(declare-fun lt!1014315 () Bool)

(assert (=> d!826727 (= res!1187398 (not lt!1014315))))

(assert (=> d!826727 (= lt!1014315 e!1810124)))

(declare-fun res!1187401 () Bool)

(assert (=> d!826727 (=> res!1187401 e!1810124)))

(assert (=> d!826727 (= res!1187401 (is-Nil!34071 (t!233226 prefix!1470)))))

(assert (=> d!826727 (= (isPrefix!2678 (t!233226 prefix!1470) lt!1014277) lt!1014315)))

(declare-fun b!2858554 () Bool)

(declare-fun res!1187399 () Bool)

(assert (=> b!2858554 (=> (not res!1187399) (not e!1810125))))

(assert (=> b!2858554 (= res!1187399 (= (head!6281 (t!233226 prefix!1470)) (head!6281 lt!1014277)))))

(declare-fun b!2858556 () Bool)

(assert (=> b!2858556 (= e!1810123 (>= (size!26276 lt!1014277) (size!26276 (t!233226 prefix!1470))))))

(assert (= (and d!826727 (not res!1187401)) b!2858553))

(assert (= (and b!2858553 res!1187400) b!2858554))

(assert (= (and b!2858554 res!1187399) b!2858555))

(assert (= (and d!826727 (not res!1187398)) b!2858556))

(assert (=> b!2858555 m!3279663))

(assert (=> b!2858555 m!3279873))

(assert (=> b!2858555 m!3279663))

(assert (=> b!2858555 m!3279873))

(declare-fun m!3279885 () Bool)

(assert (=> b!2858555 m!3279885))

(assert (=> b!2858554 m!3279667))

(assert (=> b!2858554 m!3279869))

(declare-fun m!3279887 () Bool)

(assert (=> b!2858556 m!3279887))

(assert (=> b!2858556 m!3279671))

(assert (=> b!2858275 d!826727))

(declare-fun d!826729 () Bool)

(assert (=> d!826729 (= (head!6281 (t!233226 prefix!1470)) (h!39491 (t!233226 prefix!1470)))))

(assert (=> b!2858237 d!826729))

(assert (=> b!2858237 d!826689))

(assert (=> d!826611 d!826679))

(assert (=> d!826611 d!826619))

(declare-fun b!2858557 () Bool)

(declare-fun e!1810130 () Bool)

(declare-fun e!1810126 () Bool)

(assert (=> b!2858557 (= e!1810130 e!1810126)))

(declare-fun c!460694 () Bool)

(assert (=> b!2858557 (= c!460694 (is-Union!8598 lt!1014280))))

(declare-fun b!2858558 () Bool)

(declare-fun e!1810128 () Bool)

(declare-fun call!184247 () Bool)

(assert (=> b!2858558 (= e!1810128 call!184247)))

(declare-fun b!2858559 () Bool)

(declare-fun e!1810131 () Bool)

(assert (=> b!2858559 (= e!1810131 e!1810130)))

(declare-fun c!460695 () Bool)

(assert (=> b!2858559 (= c!460695 (is-Star!8598 lt!1014280))))

(declare-fun b!2858560 () Bool)

(declare-fun e!1810132 () Bool)

(declare-fun call!184249 () Bool)

(assert (=> b!2858560 (= e!1810132 call!184249)))

(declare-fun d!826731 () Bool)

(declare-fun res!1187404 () Bool)

(assert (=> d!826731 (=> res!1187404 e!1810131)))

(assert (=> d!826731 (= res!1187404 (is-ElementMatch!8598 lt!1014280))))

(assert (=> d!826731 (= (validRegex!3468 lt!1014280) e!1810131)))

(declare-fun bm!184242 () Bool)

(assert (=> bm!184242 (= call!184249 (validRegex!3468 (ite c!460695 (reg!8927 lt!1014280) (ite c!460694 (regOne!17709 lt!1014280) (regOne!17708 lt!1014280)))))))

(declare-fun b!2858561 () Bool)

(declare-fun e!1810129 () Bool)

(declare-fun e!1810127 () Bool)

(assert (=> b!2858561 (= e!1810129 e!1810127)))

(declare-fun res!1187405 () Bool)

(assert (=> b!2858561 (=> (not res!1187405) (not e!1810127))))

(declare-fun call!184248 () Bool)

(assert (=> b!2858561 (= res!1187405 call!184248)))

(declare-fun bm!184243 () Bool)

(assert (=> bm!184243 (= call!184248 call!184249)))

(declare-fun bm!184244 () Bool)

(assert (=> bm!184244 (= call!184247 (validRegex!3468 (ite c!460694 (regTwo!17709 lt!1014280) (regTwo!17708 lt!1014280))))))

(declare-fun b!2858562 () Bool)

(assert (=> b!2858562 (= e!1810127 call!184247)))

(declare-fun b!2858563 () Bool)

(assert (=> b!2858563 (= e!1810130 e!1810132)))

(declare-fun res!1187406 () Bool)

(assert (=> b!2858563 (= res!1187406 (not (nullable!2652 (reg!8927 lt!1014280))))))

(assert (=> b!2858563 (=> (not res!1187406) (not e!1810132))))

(declare-fun b!2858564 () Bool)

(declare-fun res!1187402 () Bool)

(assert (=> b!2858564 (=> (not res!1187402) (not e!1810128))))

(assert (=> b!2858564 (= res!1187402 call!184248)))

(assert (=> b!2858564 (= e!1810126 e!1810128)))

(declare-fun b!2858565 () Bool)

(declare-fun res!1187403 () Bool)

(assert (=> b!2858565 (=> res!1187403 e!1810129)))

(assert (=> b!2858565 (= res!1187403 (not (is-Concat!13919 lt!1014280)))))

(assert (=> b!2858565 (= e!1810126 e!1810129)))

(assert (= (and d!826731 (not res!1187404)) b!2858559))

(assert (= (and b!2858559 c!460695) b!2858563))

(assert (= (and b!2858559 (not c!460695)) b!2858557))

(assert (= (and b!2858563 res!1187406) b!2858560))

(assert (= (and b!2858557 c!460694) b!2858564))

(assert (= (and b!2858557 (not c!460694)) b!2858565))

(assert (= (and b!2858564 res!1187402) b!2858558))

(assert (= (and b!2858565 (not res!1187403)) b!2858561))

(assert (= (and b!2858561 res!1187405) b!2858562))

(assert (= (or b!2858558 b!2858562) bm!184244))

(assert (= (or b!2858564 b!2858561) bm!184243))

(assert (= (or b!2858560 bm!184243) bm!184242))

(declare-fun m!3279889 () Bool)

(assert (=> bm!184242 m!3279889))

(declare-fun m!3279891 () Bool)

(assert (=> bm!184244 m!3279891))

(declare-fun m!3279893 () Bool)

(assert (=> b!2858563 m!3279893))

(assert (=> d!826623 d!826731))

(assert (=> d!826623 d!826619))

(declare-fun b!2858569 () Bool)

(declare-fun e!1810133 () Bool)

(declare-fun tp!919921 () Bool)

(declare-fun tp!919920 () Bool)

(assert (=> b!2858569 (= e!1810133 (and tp!919921 tp!919920))))

(declare-fun b!2858568 () Bool)

(declare-fun tp!919923 () Bool)

(assert (=> b!2858568 (= e!1810133 tp!919923)))

(declare-fun b!2858566 () Bool)

(assert (=> b!2858566 (= e!1810133 tp_is_empty!14933)))

(declare-fun b!2858567 () Bool)

(declare-fun tp!919924 () Bool)

(declare-fun tp!919922 () Bool)

(assert (=> b!2858567 (= e!1810133 (and tp!919924 tp!919922))))

(assert (=> b!2858268 (= tp!919873 e!1810133)))

(assert (= (and b!2858268 (is-ElementMatch!8598 (regOne!17708 (regOne!17709 r!23423)))) b!2858566))

(assert (= (and b!2858268 (is-Concat!13919 (regOne!17708 (regOne!17709 r!23423)))) b!2858567))

(assert (= (and b!2858268 (is-Star!8598 (regOne!17708 (regOne!17709 r!23423)))) b!2858568))

(assert (= (and b!2858268 (is-Union!8598 (regOne!17708 (regOne!17709 r!23423)))) b!2858569))

(declare-fun b!2858573 () Bool)

(declare-fun e!1810134 () Bool)

(declare-fun tp!919926 () Bool)

(declare-fun tp!919925 () Bool)

(assert (=> b!2858573 (= e!1810134 (and tp!919926 tp!919925))))

(declare-fun b!2858572 () Bool)

(declare-fun tp!919928 () Bool)

(assert (=> b!2858572 (= e!1810134 tp!919928)))

(declare-fun b!2858570 () Bool)

(assert (=> b!2858570 (= e!1810134 tp_is_empty!14933)))

(declare-fun b!2858571 () Bool)

(declare-fun tp!919929 () Bool)

(declare-fun tp!919927 () Bool)

(assert (=> b!2858571 (= e!1810134 (and tp!919929 tp!919927))))

(assert (=> b!2858268 (= tp!919871 e!1810134)))

(assert (= (and b!2858268 (is-ElementMatch!8598 (regTwo!17708 (regOne!17709 r!23423)))) b!2858570))

(assert (= (and b!2858268 (is-Concat!13919 (regTwo!17708 (regOne!17709 r!23423)))) b!2858571))

(assert (= (and b!2858268 (is-Star!8598 (regTwo!17708 (regOne!17709 r!23423)))) b!2858572))

(assert (= (and b!2858268 (is-Union!8598 (regTwo!17708 (regOne!17709 r!23423)))) b!2858573))

(declare-fun b!2858577 () Bool)

(declare-fun e!1810135 () Bool)

(declare-fun tp!919931 () Bool)

(declare-fun tp!919930 () Bool)

(assert (=> b!2858577 (= e!1810135 (and tp!919931 tp!919930))))

(declare-fun b!2858576 () Bool)

(declare-fun tp!919933 () Bool)

(assert (=> b!2858576 (= e!1810135 tp!919933)))

(declare-fun b!2858574 () Bool)

(assert (=> b!2858574 (= e!1810135 tp_is_empty!14933)))

(declare-fun b!2858575 () Bool)

(declare-fun tp!919934 () Bool)

(declare-fun tp!919932 () Bool)

(assert (=> b!2858575 (= e!1810135 (and tp!919934 tp!919932))))

(assert (=> b!2858272 (= tp!919878 e!1810135)))

(assert (= (and b!2858272 (is-ElementMatch!8598 (regOne!17708 (regTwo!17709 r!23423)))) b!2858574))

(assert (= (and b!2858272 (is-Concat!13919 (regOne!17708 (regTwo!17709 r!23423)))) b!2858575))

(assert (= (and b!2858272 (is-Star!8598 (regOne!17708 (regTwo!17709 r!23423)))) b!2858576))

(assert (= (and b!2858272 (is-Union!8598 (regOne!17708 (regTwo!17709 r!23423)))) b!2858577))

(declare-fun b!2858581 () Bool)

(declare-fun e!1810136 () Bool)

(declare-fun tp!919936 () Bool)

(declare-fun tp!919935 () Bool)

(assert (=> b!2858581 (= e!1810136 (and tp!919936 tp!919935))))

(declare-fun b!2858580 () Bool)

(declare-fun tp!919938 () Bool)

(assert (=> b!2858580 (= e!1810136 tp!919938)))

(declare-fun b!2858578 () Bool)

(assert (=> b!2858578 (= e!1810136 tp_is_empty!14933)))

(declare-fun b!2858579 () Bool)

(declare-fun tp!919939 () Bool)

(declare-fun tp!919937 () Bool)

(assert (=> b!2858579 (= e!1810136 (and tp!919939 tp!919937))))

(assert (=> b!2858272 (= tp!919876 e!1810136)))

(assert (= (and b!2858272 (is-ElementMatch!8598 (regTwo!17708 (regTwo!17709 r!23423)))) b!2858578))

(assert (= (and b!2858272 (is-Concat!13919 (regTwo!17708 (regTwo!17709 r!23423)))) b!2858579))

(assert (= (and b!2858272 (is-Star!8598 (regTwo!17708 (regTwo!17709 r!23423)))) b!2858580))

(assert (= (and b!2858272 (is-Union!8598 (regTwo!17708 (regTwo!17709 r!23423)))) b!2858581))

(declare-fun b!2858585 () Bool)

(declare-fun e!1810137 () Bool)

(declare-fun tp!919941 () Bool)

(declare-fun tp!919940 () Bool)

(assert (=> b!2858585 (= e!1810137 (and tp!919941 tp!919940))))

(declare-fun b!2858584 () Bool)

(declare-fun tp!919943 () Bool)

(assert (=> b!2858584 (= e!1810137 tp!919943)))

(declare-fun b!2858582 () Bool)

(assert (=> b!2858582 (= e!1810137 tp_is_empty!14933)))

(declare-fun b!2858583 () Bool)

(declare-fun tp!919944 () Bool)

(declare-fun tp!919942 () Bool)

(assert (=> b!2858583 (= e!1810137 (and tp!919944 tp!919942))))

(assert (=> b!2858260 (= tp!919863 e!1810137)))

(assert (= (and b!2858260 (is-ElementMatch!8598 (regOne!17708 (regTwo!17708 r!23423)))) b!2858582))

(assert (= (and b!2858260 (is-Concat!13919 (regOne!17708 (regTwo!17708 r!23423)))) b!2858583))

(assert (= (and b!2858260 (is-Star!8598 (regOne!17708 (regTwo!17708 r!23423)))) b!2858584))

(assert (= (and b!2858260 (is-Union!8598 (regOne!17708 (regTwo!17708 r!23423)))) b!2858585))

(declare-fun b!2858589 () Bool)

(declare-fun e!1810138 () Bool)

(declare-fun tp!919946 () Bool)

(declare-fun tp!919945 () Bool)

(assert (=> b!2858589 (= e!1810138 (and tp!919946 tp!919945))))

(declare-fun b!2858588 () Bool)

(declare-fun tp!919948 () Bool)

(assert (=> b!2858588 (= e!1810138 tp!919948)))

(declare-fun b!2858586 () Bool)

(assert (=> b!2858586 (= e!1810138 tp_is_empty!14933)))

(declare-fun b!2858587 () Bool)

(declare-fun tp!919949 () Bool)

(declare-fun tp!919947 () Bool)

(assert (=> b!2858587 (= e!1810138 (and tp!919949 tp!919947))))

(assert (=> b!2858260 (= tp!919861 e!1810138)))

(assert (= (and b!2858260 (is-ElementMatch!8598 (regTwo!17708 (regTwo!17708 r!23423)))) b!2858586))

(assert (= (and b!2858260 (is-Concat!13919 (regTwo!17708 (regTwo!17708 r!23423)))) b!2858587))

(assert (= (and b!2858260 (is-Star!8598 (regTwo!17708 (regTwo!17708 r!23423)))) b!2858588))

(assert (= (and b!2858260 (is-Union!8598 (regTwo!17708 (regTwo!17708 r!23423)))) b!2858589))

(declare-fun b!2858593 () Bool)

(declare-fun e!1810139 () Bool)

(declare-fun tp!919951 () Bool)

(declare-fun tp!919950 () Bool)

(assert (=> b!2858593 (= e!1810139 (and tp!919951 tp!919950))))

(declare-fun b!2858592 () Bool)

(declare-fun tp!919953 () Bool)

(assert (=> b!2858592 (= e!1810139 tp!919953)))

(declare-fun b!2858590 () Bool)

(assert (=> b!2858590 (= e!1810139 tp_is_empty!14933)))

(declare-fun b!2858591 () Bool)

(declare-fun tp!919954 () Bool)

(declare-fun tp!919952 () Bool)

(assert (=> b!2858591 (= e!1810139 (and tp!919954 tp!919952))))

(assert (=> b!2858274 (= tp!919875 e!1810139)))

(assert (= (and b!2858274 (is-ElementMatch!8598 (regOne!17709 (regTwo!17709 r!23423)))) b!2858590))

(assert (= (and b!2858274 (is-Concat!13919 (regOne!17709 (regTwo!17709 r!23423)))) b!2858591))

(assert (= (and b!2858274 (is-Star!8598 (regOne!17709 (regTwo!17709 r!23423)))) b!2858592))

(assert (= (and b!2858274 (is-Union!8598 (regOne!17709 (regTwo!17709 r!23423)))) b!2858593))

(declare-fun b!2858597 () Bool)

(declare-fun e!1810140 () Bool)

(declare-fun tp!919956 () Bool)

(declare-fun tp!919955 () Bool)

(assert (=> b!2858597 (= e!1810140 (and tp!919956 tp!919955))))

(declare-fun b!2858596 () Bool)

(declare-fun tp!919958 () Bool)

(assert (=> b!2858596 (= e!1810140 tp!919958)))

(declare-fun b!2858594 () Bool)

(assert (=> b!2858594 (= e!1810140 tp_is_empty!14933)))

(declare-fun b!2858595 () Bool)

(declare-fun tp!919959 () Bool)

(declare-fun tp!919957 () Bool)

(assert (=> b!2858595 (= e!1810140 (and tp!919959 tp!919957))))

(assert (=> b!2858274 (= tp!919874 e!1810140)))

(assert (= (and b!2858274 (is-ElementMatch!8598 (regTwo!17709 (regTwo!17709 r!23423)))) b!2858594))

(assert (= (and b!2858274 (is-Concat!13919 (regTwo!17709 (regTwo!17709 r!23423)))) b!2858595))

(assert (= (and b!2858274 (is-Star!8598 (regTwo!17709 (regTwo!17709 r!23423)))) b!2858596))

(assert (= (and b!2858274 (is-Union!8598 (regTwo!17709 (regTwo!17709 r!23423)))) b!2858597))

(declare-fun b!2858601 () Bool)

(declare-fun e!1810141 () Bool)

(declare-fun tp!919961 () Bool)

(declare-fun tp!919960 () Bool)

(assert (=> b!2858601 (= e!1810141 (and tp!919961 tp!919960))))

(declare-fun b!2858600 () Bool)

(declare-fun tp!919963 () Bool)

(assert (=> b!2858600 (= e!1810141 tp!919963)))

(declare-fun b!2858598 () Bool)

(assert (=> b!2858598 (= e!1810141 tp_is_empty!14933)))

(declare-fun b!2858599 () Bool)

(declare-fun tp!919964 () Bool)

(declare-fun tp!919962 () Bool)

(assert (=> b!2858599 (= e!1810141 (and tp!919964 tp!919962))))

(assert (=> b!2858269 (= tp!919872 e!1810141)))

(assert (= (and b!2858269 (is-ElementMatch!8598 (reg!8927 (regOne!17709 r!23423)))) b!2858598))

(assert (= (and b!2858269 (is-Concat!13919 (reg!8927 (regOne!17709 r!23423)))) b!2858599))

(assert (= (and b!2858269 (is-Star!8598 (reg!8927 (regOne!17709 r!23423)))) b!2858600))

(assert (= (and b!2858269 (is-Union!8598 (reg!8927 (regOne!17709 r!23423)))) b!2858601))

(declare-fun b!2858605 () Bool)

(declare-fun e!1810142 () Bool)

(declare-fun tp!919966 () Bool)

(declare-fun tp!919965 () Bool)

(assert (=> b!2858605 (= e!1810142 (and tp!919966 tp!919965))))

(declare-fun b!2858604 () Bool)

(declare-fun tp!919968 () Bool)

(assert (=> b!2858604 (= e!1810142 tp!919968)))

(declare-fun b!2858602 () Bool)

(assert (=> b!2858602 (= e!1810142 tp_is_empty!14933)))

(declare-fun b!2858603 () Bool)

(declare-fun tp!919969 () Bool)

(declare-fun tp!919967 () Bool)

(assert (=> b!2858603 (= e!1810142 (and tp!919969 tp!919967))))

(assert (=> b!2858264 (= tp!919868 e!1810142)))

(assert (= (and b!2858264 (is-ElementMatch!8598 (regOne!17708 (reg!8927 r!23423)))) b!2858602))

(assert (= (and b!2858264 (is-Concat!13919 (regOne!17708 (reg!8927 r!23423)))) b!2858603))

(assert (= (and b!2858264 (is-Star!8598 (regOne!17708 (reg!8927 r!23423)))) b!2858604))

(assert (= (and b!2858264 (is-Union!8598 (regOne!17708 (reg!8927 r!23423)))) b!2858605))

(declare-fun b!2858609 () Bool)

(declare-fun e!1810143 () Bool)

(declare-fun tp!919971 () Bool)

(declare-fun tp!919970 () Bool)

(assert (=> b!2858609 (= e!1810143 (and tp!919971 tp!919970))))

(declare-fun b!2858608 () Bool)

(declare-fun tp!919973 () Bool)

(assert (=> b!2858608 (= e!1810143 tp!919973)))

(declare-fun b!2858606 () Bool)

(assert (=> b!2858606 (= e!1810143 tp_is_empty!14933)))

(declare-fun b!2858607 () Bool)

(declare-fun tp!919974 () Bool)

(declare-fun tp!919972 () Bool)

(assert (=> b!2858607 (= e!1810143 (and tp!919974 tp!919972))))

(assert (=> b!2858264 (= tp!919866 e!1810143)))

(assert (= (and b!2858264 (is-ElementMatch!8598 (regTwo!17708 (reg!8927 r!23423)))) b!2858606))

(assert (= (and b!2858264 (is-Concat!13919 (regTwo!17708 (reg!8927 r!23423)))) b!2858607))

(assert (= (and b!2858264 (is-Star!8598 (regTwo!17708 (reg!8927 r!23423)))) b!2858608))

(assert (= (and b!2858264 (is-Union!8598 (regTwo!17708 (reg!8927 r!23423)))) b!2858609))

(declare-fun b!2858613 () Bool)

(declare-fun e!1810144 () Bool)

(declare-fun tp!919976 () Bool)

(declare-fun tp!919975 () Bool)

(assert (=> b!2858613 (= e!1810144 (and tp!919976 tp!919975))))

(declare-fun b!2858612 () Bool)

(declare-fun tp!919978 () Bool)

(assert (=> b!2858612 (= e!1810144 tp!919978)))

(declare-fun b!2858610 () Bool)

(assert (=> b!2858610 (= e!1810144 tp_is_empty!14933)))

(declare-fun b!2858611 () Bool)

(declare-fun tp!919979 () Bool)

(declare-fun tp!919977 () Bool)

(assert (=> b!2858611 (= e!1810144 (and tp!919979 tp!919977))))

(assert (=> b!2858273 (= tp!919877 e!1810144)))

(assert (= (and b!2858273 (is-ElementMatch!8598 (reg!8927 (regTwo!17709 r!23423)))) b!2858610))

(assert (= (and b!2858273 (is-Concat!13919 (reg!8927 (regTwo!17709 r!23423)))) b!2858611))

(assert (= (and b!2858273 (is-Star!8598 (reg!8927 (regTwo!17709 r!23423)))) b!2858612))

(assert (= (and b!2858273 (is-Union!8598 (reg!8927 (regTwo!17709 r!23423)))) b!2858613))

(declare-fun b!2858617 () Bool)

(declare-fun e!1810145 () Bool)

(declare-fun tp!919981 () Bool)

(declare-fun tp!919980 () Bool)

(assert (=> b!2858617 (= e!1810145 (and tp!919981 tp!919980))))

(declare-fun b!2858616 () Bool)

(declare-fun tp!919983 () Bool)

(assert (=> b!2858616 (= e!1810145 tp!919983)))

(declare-fun b!2858614 () Bool)

(assert (=> b!2858614 (= e!1810145 tp_is_empty!14933)))

(declare-fun b!2858615 () Bool)

(declare-fun tp!919984 () Bool)

(declare-fun tp!919982 () Bool)

(assert (=> b!2858615 (= e!1810145 (and tp!919984 tp!919982))))

(assert (=> b!2858266 (= tp!919865 e!1810145)))

(assert (= (and b!2858266 (is-ElementMatch!8598 (regOne!17709 (reg!8927 r!23423)))) b!2858614))

(assert (= (and b!2858266 (is-Concat!13919 (regOne!17709 (reg!8927 r!23423)))) b!2858615))

(assert (= (and b!2858266 (is-Star!8598 (regOne!17709 (reg!8927 r!23423)))) b!2858616))

(assert (= (and b!2858266 (is-Union!8598 (regOne!17709 (reg!8927 r!23423)))) b!2858617))

(declare-fun b!2858621 () Bool)

(declare-fun e!1810146 () Bool)

(declare-fun tp!919986 () Bool)

(declare-fun tp!919985 () Bool)

(assert (=> b!2858621 (= e!1810146 (and tp!919986 tp!919985))))

(declare-fun b!2858620 () Bool)

(declare-fun tp!919988 () Bool)

(assert (=> b!2858620 (= e!1810146 tp!919988)))

(declare-fun b!2858618 () Bool)

(assert (=> b!2858618 (= e!1810146 tp_is_empty!14933)))

(declare-fun b!2858619 () Bool)

(declare-fun tp!919989 () Bool)

(declare-fun tp!919987 () Bool)

(assert (=> b!2858619 (= e!1810146 (and tp!919989 tp!919987))))

(assert (=> b!2858266 (= tp!919864 e!1810146)))

(assert (= (and b!2858266 (is-ElementMatch!8598 (regTwo!17709 (reg!8927 r!23423)))) b!2858618))

(assert (= (and b!2858266 (is-Concat!13919 (regTwo!17709 (reg!8927 r!23423)))) b!2858619))

(assert (= (and b!2858266 (is-Star!8598 (regTwo!17709 (reg!8927 r!23423)))) b!2858620))

(assert (= (and b!2858266 (is-Union!8598 (regTwo!17709 (reg!8927 r!23423)))) b!2858621))

(declare-fun b!2858622 () Bool)

(declare-fun e!1810147 () Bool)

(declare-fun tp!919990 () Bool)

(assert (=> b!2858622 (= e!1810147 (and tp_is_empty!14933 tp!919990))))

(assert (=> b!2858244 (= tp!919843 e!1810147)))

(assert (= (and b!2858244 (is-Cons!34071 (t!233226 (t!233226 prefix!1470)))) b!2858622))

(declare-fun b!2858626 () Bool)

(declare-fun e!1810148 () Bool)

(declare-fun tp!919992 () Bool)

(declare-fun tp!919991 () Bool)

(assert (=> b!2858626 (= e!1810148 (and tp!919992 tp!919991))))

(declare-fun b!2858625 () Bool)

(declare-fun tp!919994 () Bool)

(assert (=> b!2858625 (= e!1810148 tp!919994)))

(declare-fun b!2858623 () Bool)

(assert (=> b!2858623 (= e!1810148 tp_is_empty!14933)))

(declare-fun b!2858624 () Bool)

(declare-fun tp!919995 () Bool)

(declare-fun tp!919993 () Bool)

(assert (=> b!2858624 (= e!1810148 (and tp!919995 tp!919993))))

(assert (=> b!2858261 (= tp!919862 e!1810148)))

(assert (= (and b!2858261 (is-ElementMatch!8598 (reg!8927 (regTwo!17708 r!23423)))) b!2858623))

(assert (= (and b!2858261 (is-Concat!13919 (reg!8927 (regTwo!17708 r!23423)))) b!2858624))

(assert (= (and b!2858261 (is-Star!8598 (reg!8927 (regTwo!17708 r!23423)))) b!2858625))

(assert (= (and b!2858261 (is-Union!8598 (reg!8927 (regTwo!17708 r!23423)))) b!2858626))

(declare-fun b!2858630 () Bool)

(declare-fun e!1810149 () Bool)

(declare-fun tp!919997 () Bool)

(declare-fun tp!919996 () Bool)

(assert (=> b!2858630 (= e!1810149 (and tp!919997 tp!919996))))

(declare-fun b!2858629 () Bool)

(declare-fun tp!919999 () Bool)

(assert (=> b!2858629 (= e!1810149 tp!919999)))

(declare-fun b!2858627 () Bool)

(assert (=> b!2858627 (= e!1810149 tp_is_empty!14933)))

(declare-fun b!2858628 () Bool)

(declare-fun tp!920000 () Bool)

(declare-fun tp!919998 () Bool)

(assert (=> b!2858628 (= e!1810149 (and tp!920000 tp!919998))))

(assert (=> b!2858270 (= tp!919870 e!1810149)))

(assert (= (and b!2858270 (is-ElementMatch!8598 (regOne!17709 (regOne!17709 r!23423)))) b!2858627))

(assert (= (and b!2858270 (is-Concat!13919 (regOne!17709 (regOne!17709 r!23423)))) b!2858628))

(assert (= (and b!2858270 (is-Star!8598 (regOne!17709 (regOne!17709 r!23423)))) b!2858629))

(assert (= (and b!2858270 (is-Union!8598 (regOne!17709 (regOne!17709 r!23423)))) b!2858630))

(declare-fun b!2858634 () Bool)

(declare-fun e!1810150 () Bool)

(declare-fun tp!920002 () Bool)

(declare-fun tp!920001 () Bool)

(assert (=> b!2858634 (= e!1810150 (and tp!920002 tp!920001))))

(declare-fun b!2858633 () Bool)

(declare-fun tp!920004 () Bool)

(assert (=> b!2858633 (= e!1810150 tp!920004)))

(declare-fun b!2858631 () Bool)

(assert (=> b!2858631 (= e!1810150 tp_is_empty!14933)))

(declare-fun b!2858632 () Bool)

(declare-fun tp!920005 () Bool)

(declare-fun tp!920003 () Bool)

(assert (=> b!2858632 (= e!1810150 (and tp!920005 tp!920003))))

(assert (=> b!2858270 (= tp!919869 e!1810150)))

(assert (= (and b!2858270 (is-ElementMatch!8598 (regTwo!17709 (regOne!17709 r!23423)))) b!2858631))

(assert (= (and b!2858270 (is-Concat!13919 (regTwo!17709 (regOne!17709 r!23423)))) b!2858632))

(assert (= (and b!2858270 (is-Star!8598 (regTwo!17709 (regOne!17709 r!23423)))) b!2858633))

(assert (= (and b!2858270 (is-Union!8598 (regTwo!17709 (regOne!17709 r!23423)))) b!2858634))

(declare-fun b!2858638 () Bool)

(declare-fun e!1810151 () Bool)

(declare-fun tp!920007 () Bool)

(declare-fun tp!920006 () Bool)

(assert (=> b!2858638 (= e!1810151 (and tp!920007 tp!920006))))

(declare-fun b!2858637 () Bool)

(declare-fun tp!920009 () Bool)

(assert (=> b!2858637 (= e!1810151 tp!920009)))

(declare-fun b!2858635 () Bool)

(assert (=> b!2858635 (= e!1810151 tp_is_empty!14933)))

(declare-fun b!2858636 () Bool)

(declare-fun tp!920010 () Bool)

(declare-fun tp!920008 () Bool)

(assert (=> b!2858636 (= e!1810151 (and tp!920010 tp!920008))))

(assert (=> b!2858256 (= tp!919858 e!1810151)))

(assert (= (and b!2858256 (is-ElementMatch!8598 (regOne!17708 (regOne!17708 r!23423)))) b!2858635))

(assert (= (and b!2858256 (is-Concat!13919 (regOne!17708 (regOne!17708 r!23423)))) b!2858636))

(assert (= (and b!2858256 (is-Star!8598 (regOne!17708 (regOne!17708 r!23423)))) b!2858637))

(assert (= (and b!2858256 (is-Union!8598 (regOne!17708 (regOne!17708 r!23423)))) b!2858638))

(declare-fun b!2858642 () Bool)

(declare-fun e!1810152 () Bool)

(declare-fun tp!920012 () Bool)

(declare-fun tp!920011 () Bool)

(assert (=> b!2858642 (= e!1810152 (and tp!920012 tp!920011))))

(declare-fun b!2858641 () Bool)

(declare-fun tp!920014 () Bool)

(assert (=> b!2858641 (= e!1810152 tp!920014)))

(declare-fun b!2858639 () Bool)

(assert (=> b!2858639 (= e!1810152 tp_is_empty!14933)))

(declare-fun b!2858640 () Bool)

(declare-fun tp!920015 () Bool)

(declare-fun tp!920013 () Bool)

(assert (=> b!2858640 (= e!1810152 (and tp!920015 tp!920013))))

(assert (=> b!2858256 (= tp!919856 e!1810152)))

(assert (= (and b!2858256 (is-ElementMatch!8598 (regTwo!17708 (regOne!17708 r!23423)))) b!2858639))

(assert (= (and b!2858256 (is-Concat!13919 (regTwo!17708 (regOne!17708 r!23423)))) b!2858640))

(assert (= (and b!2858256 (is-Star!8598 (regTwo!17708 (regOne!17708 r!23423)))) b!2858641))

(assert (= (and b!2858256 (is-Union!8598 (regTwo!17708 (regOne!17708 r!23423)))) b!2858642))

(declare-fun b!2858646 () Bool)

(declare-fun e!1810153 () Bool)

(declare-fun tp!920017 () Bool)

(declare-fun tp!920016 () Bool)

(assert (=> b!2858646 (= e!1810153 (and tp!920017 tp!920016))))

(declare-fun b!2858645 () Bool)

(declare-fun tp!920019 () Bool)

(assert (=> b!2858645 (= e!1810153 tp!920019)))

(declare-fun b!2858643 () Bool)

(assert (=> b!2858643 (= e!1810153 tp_is_empty!14933)))

(declare-fun b!2858644 () Bool)

(declare-fun tp!920020 () Bool)

(declare-fun tp!920018 () Bool)

(assert (=> b!2858644 (= e!1810153 (and tp!920020 tp!920018))))

(assert (=> b!2858265 (= tp!919867 e!1810153)))

(assert (= (and b!2858265 (is-ElementMatch!8598 (reg!8927 (reg!8927 r!23423)))) b!2858643))

(assert (= (and b!2858265 (is-Concat!13919 (reg!8927 (reg!8927 r!23423)))) b!2858644))

(assert (= (and b!2858265 (is-Star!8598 (reg!8927 (reg!8927 r!23423)))) b!2858645))

(assert (= (and b!2858265 (is-Union!8598 (reg!8927 (reg!8927 r!23423)))) b!2858646))

(declare-fun b!2858650 () Bool)

(declare-fun e!1810154 () Bool)

(declare-fun tp!920022 () Bool)

(declare-fun tp!920021 () Bool)

(assert (=> b!2858650 (= e!1810154 (and tp!920022 tp!920021))))

(declare-fun b!2858649 () Bool)

(declare-fun tp!920024 () Bool)

(assert (=> b!2858649 (= e!1810154 tp!920024)))

(declare-fun b!2858647 () Bool)

(assert (=> b!2858647 (= e!1810154 tp_is_empty!14933)))

(declare-fun b!2858648 () Bool)

(declare-fun tp!920025 () Bool)

(declare-fun tp!920023 () Bool)

(assert (=> b!2858648 (= e!1810154 (and tp!920025 tp!920023))))

(assert (=> b!2858258 (= tp!919855 e!1810154)))

(assert (= (and b!2858258 (is-ElementMatch!8598 (regOne!17709 (regOne!17708 r!23423)))) b!2858647))

(assert (= (and b!2858258 (is-Concat!13919 (regOne!17709 (regOne!17708 r!23423)))) b!2858648))

(assert (= (and b!2858258 (is-Star!8598 (regOne!17709 (regOne!17708 r!23423)))) b!2858649))

(assert (= (and b!2858258 (is-Union!8598 (regOne!17709 (regOne!17708 r!23423)))) b!2858650))

(declare-fun b!2858654 () Bool)

(declare-fun e!1810155 () Bool)

(declare-fun tp!920027 () Bool)

(declare-fun tp!920026 () Bool)

(assert (=> b!2858654 (= e!1810155 (and tp!920027 tp!920026))))

(declare-fun b!2858653 () Bool)

(declare-fun tp!920029 () Bool)

(assert (=> b!2858653 (= e!1810155 tp!920029)))

(declare-fun b!2858651 () Bool)

(assert (=> b!2858651 (= e!1810155 tp_is_empty!14933)))

(declare-fun b!2858652 () Bool)

(declare-fun tp!920030 () Bool)

(declare-fun tp!920028 () Bool)

(assert (=> b!2858652 (= e!1810155 (and tp!920030 tp!920028))))

(assert (=> b!2858258 (= tp!919854 e!1810155)))

(assert (= (and b!2858258 (is-ElementMatch!8598 (regTwo!17709 (regOne!17708 r!23423)))) b!2858651))

(assert (= (and b!2858258 (is-Concat!13919 (regTwo!17709 (regOne!17708 r!23423)))) b!2858652))

(assert (= (and b!2858258 (is-Star!8598 (regTwo!17709 (regOne!17708 r!23423)))) b!2858653))

(assert (= (and b!2858258 (is-Union!8598 (regTwo!17709 (regOne!17708 r!23423)))) b!2858654))

(declare-fun b!2858658 () Bool)

(declare-fun e!1810156 () Bool)

(declare-fun tp!920032 () Bool)

(declare-fun tp!920031 () Bool)

(assert (=> b!2858658 (= e!1810156 (and tp!920032 tp!920031))))

(declare-fun b!2858657 () Bool)

(declare-fun tp!920034 () Bool)

(assert (=> b!2858657 (= e!1810156 tp!920034)))

(declare-fun b!2858655 () Bool)

(assert (=> b!2858655 (= e!1810156 tp_is_empty!14933)))

(declare-fun b!2858656 () Bool)

(declare-fun tp!920035 () Bool)

(declare-fun tp!920033 () Bool)

(assert (=> b!2858656 (= e!1810156 (and tp!920035 tp!920033))))

(assert (=> b!2858262 (= tp!919860 e!1810156)))

(assert (= (and b!2858262 (is-ElementMatch!8598 (regOne!17709 (regTwo!17708 r!23423)))) b!2858655))

(assert (= (and b!2858262 (is-Concat!13919 (regOne!17709 (regTwo!17708 r!23423)))) b!2858656))

(assert (= (and b!2858262 (is-Star!8598 (regOne!17709 (regTwo!17708 r!23423)))) b!2858657))

(assert (= (and b!2858262 (is-Union!8598 (regOne!17709 (regTwo!17708 r!23423)))) b!2858658))

(declare-fun b!2858662 () Bool)

(declare-fun e!1810157 () Bool)

(declare-fun tp!920037 () Bool)

(declare-fun tp!920036 () Bool)

(assert (=> b!2858662 (= e!1810157 (and tp!920037 tp!920036))))

(declare-fun b!2858661 () Bool)

(declare-fun tp!920039 () Bool)

(assert (=> b!2858661 (= e!1810157 tp!920039)))

(declare-fun b!2858659 () Bool)

(assert (=> b!2858659 (= e!1810157 tp_is_empty!14933)))

(declare-fun b!2858660 () Bool)

(declare-fun tp!920040 () Bool)

(declare-fun tp!920038 () Bool)

(assert (=> b!2858660 (= e!1810157 (and tp!920040 tp!920038))))

(assert (=> b!2858262 (= tp!919859 e!1810157)))

(assert (= (and b!2858262 (is-ElementMatch!8598 (regTwo!17709 (regTwo!17708 r!23423)))) b!2858659))

(assert (= (and b!2858262 (is-Concat!13919 (regTwo!17709 (regTwo!17708 r!23423)))) b!2858660))

(assert (= (and b!2858262 (is-Star!8598 (regTwo!17709 (regTwo!17708 r!23423)))) b!2858661))

(assert (= (and b!2858262 (is-Union!8598 (regTwo!17709 (regTwo!17708 r!23423)))) b!2858662))

(declare-fun b!2858666 () Bool)

(declare-fun e!1810158 () Bool)

(declare-fun tp!920042 () Bool)

(declare-fun tp!920041 () Bool)

(assert (=> b!2858666 (= e!1810158 (and tp!920042 tp!920041))))

(declare-fun b!2858665 () Bool)

(declare-fun tp!920044 () Bool)

(assert (=> b!2858665 (= e!1810158 tp!920044)))

(declare-fun b!2858663 () Bool)

(assert (=> b!2858663 (= e!1810158 tp_is_empty!14933)))

(declare-fun b!2858664 () Bool)

(declare-fun tp!920045 () Bool)

(declare-fun tp!920043 () Bool)

(assert (=> b!2858664 (= e!1810158 (and tp!920045 tp!920043))))

(assert (=> b!2858257 (= tp!919857 e!1810158)))

(assert (= (and b!2858257 (is-ElementMatch!8598 (reg!8927 (regOne!17708 r!23423)))) b!2858663))

(assert (= (and b!2858257 (is-Concat!13919 (reg!8927 (regOne!17708 r!23423)))) b!2858664))

(assert (= (and b!2858257 (is-Star!8598 (reg!8927 (regOne!17708 r!23423)))) b!2858665))

(assert (= (and b!2858257 (is-Union!8598 (reg!8927 (regOne!17708 r!23423)))) b!2858666))

(declare-fun b_lambda!85717 () Bool)

(assert (= b_lambda!85715 (or b!2858031 b_lambda!85717)))

(declare-fun bs!520334 () Bool)

(declare-fun d!826733 () Bool)

(assert (= bs!520334 (and d!826733 b!2858031)))

(declare-fun res!1187407 () Bool)

(declare-fun e!1810159 () Bool)

(assert (=> bs!520334 (=> (not res!1187407) (not e!1810159))))

(assert (=> bs!520334 (= res!1187407 (matchR!3704 lt!1014258 res!1187349))))

(assert (=> bs!520334 (= (dynLambda!14235 lambda!105132 res!1187349) e!1810159)))

(declare-fun b!2858667 () Bool)

(assert (=> b!2858667 (= e!1810159 (isPrefix!2678 (t!233226 prefix!1470) res!1187349))))

(assert (= (and bs!520334 res!1187407) b!2858667))

(declare-fun m!3279895 () Bool)

(assert (=> bs!520334 m!3279895))

(declare-fun m!3279897 () Bool)

(assert (=> b!2858667 m!3279897))

(assert (=> d!826657 d!826733))

(push 1)

(assert (not b!2858493))

(assert (not b!2858533))

(assert (not bm!184230))

(assert (not b!2858611))

(assert (not b!2858649))

(assert (not d!826661))

(assert (not b!2858638))

(assert (not b!2858537))

(assert (not b!2858429))

(assert (not b!2858470))

(assert (not b!2858585))

(assert (not b!2858427))

(assert (not b!2858541))

(assert (not b!2858613))

(assert (not bm!184238))

(assert (not d!826715))

(assert (not b!2858442))

(assert (not b!2858567))

(assert (not b!2858588))

(assert (not b!2858597))

(assert (not b!2858624))

(assert (not b!2858581))

(assert (not b!2858644))

(assert (not b!2858589))

(assert (not d!826717))

(assert (not bm!184221))

(assert (not b!2858621))

(assert (not b!2858665))

(assert (not b!2858437))

(assert (not b!2858612))

(assert (not b!2858637))

(assert (not d!826671))

(assert (not bm!184223))

(assert (not b!2858536))

(assert tp_is_empty!14933)

(assert (not bm!184217))

(assert (not b!2858425))

(assert (not b!2858600))

(assert (not b!2858603))

(assert (not b!2858417))

(assert (not b!2858483))

(assert (not bm!184239))

(assert (not b!2858632))

(assert (not b!2858605))

(assert (not bm!184222))

(assert (not b!2858554))

(assert (not b!2858471))

(assert (not b!2858556))

(assert (not b!2858518))

(assert (not b!2858609))

(assert (not b!2858580))

(assert (not b!2858617))

(assert (not b!2858591))

(assert (not b!2858443))

(assert (not d!826669))

(assert (not b!2858657))

(assert (not b!2858615))

(assert (not b!2858449))

(assert (not b!2858607))

(assert (not b!2858584))

(assert (not b!2858636))

(assert (not b!2858568))

(assert (not d!826659))

(assert (not b!2858634))

(assert (not b!2858475))

(assert (not b!2858626))

(assert (not b!2858499))

(assert (not b!2858629))

(assert (not b!2858587))

(assert (not b!2858473))

(assert (not bm!184241))

(assert (not b!2858660))

(assert (not b!2858555))

(assert (not b!2858577))

(assert (not d!826663))

(assert (not b!2858579))

(assert (not b!2858501))

(assert (not bm!184231))

(assert (not b!2858628))

(assert (not b!2858664))

(assert (not b!2858421))

(assert (not b!2858642))

(assert (not b!2858572))

(assert (not bm!184244))

(assert (not b!2858569))

(assert (not b!2858667))

(assert (not b!2858608))

(assert (not d!826709))

(assert (not b!2858583))

(assert (not b!2858630))

(assert (not d!826687))

(assert (not bm!184218))

(assert (not bm!184232))

(assert (not bm!184237))

(assert (not b!2858595))

(assert (not b!2858516))

(assert (not bm!184227))

(assert (not b!2858652))

(assert (not b!2858424))

(assert (not d!826681))

(assert (not d!826719))

(assert (not b!2858593))

(assert (not b!2858527))

(assert (not bm!184242))

(assert (not b!2858654))

(assert (not bm!184213))

(assert (not b!2858616))

(assert (not b!2858459))

(assert (not b!2858658))

(assert (not b!2858648))

(assert (not b!2858646))

(assert (not bm!184234))

(assert (not b!2858573))

(assert (not b!2858500))

(assert (not b!2858650))

(assert (not b!2858620))

(assert (not b!2858599))

(assert (not d!826693))

(assert (not b!2858666))

(assert (not b!2858633))

(assert (not b!2858464))

(assert (not bm!184235))

(assert (not b!2858571))

(assert (not b!2858662))

(assert (not b!2858653))

(assert (not d!826723))

(assert (not b!2858592))

(assert (not b!2858563))

(assert (not b!2858508))

(assert (not b!2858622))

(assert (not b!2858641))

(assert (not bm!184226))

(assert (not bm!184214))

(assert (not b!2858619))

(assert (not b!2858604))

(assert (not b!2858467))

(assert (not b!2858550))

(assert (not b!2858576))

(assert (not b!2858661))

(assert (not b_lambda!85717))

(assert (not b!2858418))

(assert (not b!2858625))

(assert (not d!826695))

(assert (not b!2858530))

(assert (not bs!520334))

(assert (not b!2858645))

(assert (not b!2858640))

(assert (not d!826701))

(assert (not d!826685))

(assert (not b!2858601))

(assert (not b!2858539))

(assert (not b_lambda!85711))

(assert (not b!2858575))

(assert (not b!2858596))

(assert (not b!2858656))

(assert (not bm!184210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

