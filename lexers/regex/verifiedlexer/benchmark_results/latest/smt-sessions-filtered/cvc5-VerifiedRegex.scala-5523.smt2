; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278252 () Bool)

(assert start!278252)

(declare-fun b!2858948 () Bool)

(assert (=> b!2858948 true))

(assert (=> b!2858948 true))

(declare-fun b!2858947 () Bool)

(declare-fun e!1810292 () Bool)

(declare-fun tp_is_empty!14937 () Bool)

(assert (=> b!2858947 (= e!1810292 tp_is_empty!14937)))

(declare-fun e!1810291 () Bool)

(declare-fun e!1810294 () Bool)

(assert (=> b!2858948 (= e!1810291 (not e!1810294))))

(declare-fun res!1187489 () Bool)

(assert (=> b!2858948 (=> res!1187489 e!1810294)))

(declare-datatypes ((C!17382 0))(
  ( (C!17383 (val!10725 Int)) )
))
(declare-datatypes ((Regex!8600 0))(
  ( (ElementMatch!8600 (c!460743 C!17382)) (Concat!13921 (regOne!17712 Regex!8600) (regTwo!17712 Regex!8600)) (EmptyExpr!8600) (Star!8600 (reg!8929 Regex!8600)) (EmptyLang!8600) (Union!8600 (regOne!17713 Regex!8600) (regTwo!17713 Regex!8600)) )
))
(declare-fun lt!1014341 () Regex!8600)

(declare-datatypes ((List!34197 0))(
  ( (Nil!34073) (Cons!34073 (h!39493 C!17382) (t!233230 List!34197)) )
))
(declare-fun lt!1014338 () List!34197)

(declare-fun matchR!3706 (Regex!8600 List!34197) Bool)

(assert (=> b!2858948 (= res!1187489 (not (matchR!3706 lt!1014341 lt!1014338)))))

(declare-fun lambda!105154 () Int)

(declare-fun pickWitness!317 (Int) List!34197)

(assert (=> b!2858948 (= lt!1014338 (pickWitness!317 lambda!105154))))

(declare-fun Exists!1304 (Int) Bool)

(assert (=> b!2858948 (Exists!1304 lambda!105154)))

(assert (=> b!2858948 (Exists!1304 lambda!105154)))

(declare-datatypes ((Unit!47743 0))(
  ( (Unit!47744) )
))
(declare-fun lt!1014339 () Unit!47743)

(declare-fun prefix!1470 () List!34197)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!352 (Regex!8600 List!34197) Unit!47743)

(assert (=> b!2858948 (= lt!1014339 (lemmaPrefixMatchThenExistsStringThatMatches!352 lt!1014341 (t!233230 prefix!1470)))))

(declare-fun r!23423 () Regex!8600)

(declare-fun derivativeStep!2289 (Regex!8600 C!17382) Regex!8600)

(assert (=> b!2858948 (= lt!1014341 (derivativeStep!2289 r!23423 (h!39493 prefix!1470)))))

(declare-fun b!2858949 () Bool)

(declare-fun e!1810293 () Bool)

(assert (=> b!2858949 (= e!1810294 e!1810293)))

(declare-fun res!1187485 () Bool)

(assert (=> b!2858949 (=> res!1187485 e!1810293)))

(declare-fun lt!1014340 () List!34197)

(assert (=> b!2858949 (= res!1187485 (not (matchR!3706 r!23423 lt!1014340)))))

(declare-fun $colon$colon!596 (List!34197 C!17382) List!34197)

(assert (=> b!2858949 (= lt!1014340 ($colon$colon!596 lt!1014338 (h!39493 prefix!1470)))))

(declare-fun res!1187490 () Bool)

(assert (=> start!278252 (=> (not res!1187490) (not e!1810291))))

(declare-fun validRegex!3470 (Regex!8600) Bool)

(assert (=> start!278252 (= res!1187490 (validRegex!3470 r!23423))))

(assert (=> start!278252 e!1810291))

(assert (=> start!278252 e!1810292))

(declare-fun e!1810295 () Bool)

(assert (=> start!278252 e!1810295))

(declare-fun b!2858950 () Bool)

(declare-fun tp!920192 () Bool)

(declare-fun tp!920187 () Bool)

(assert (=> b!2858950 (= e!1810292 (and tp!920192 tp!920187))))

(declare-fun b!2858951 () Bool)

(declare-fun isPrefix!2680 (List!34197 List!34197) Bool)

(assert (=> b!2858951 (= e!1810293 (isPrefix!2680 prefix!1470 lt!1014340))))

(declare-fun b!2858952 () Bool)

(declare-fun res!1187488 () Bool)

(assert (=> b!2858952 (=> (not res!1187488) (not e!1810291))))

(assert (=> b!2858952 (= res!1187488 (not (is-Nil!34073 prefix!1470)))))

(declare-fun b!2858953 () Bool)

(declare-fun tp!920189 () Bool)

(assert (=> b!2858953 (= e!1810292 tp!920189)))

(declare-fun b!2858954 () Bool)

(declare-fun res!1187487 () Bool)

(assert (=> b!2858954 (=> res!1187487 e!1810294)))

(assert (=> b!2858954 (= res!1187487 (not (isPrefix!2680 (t!233230 prefix!1470) lt!1014338)))))

(declare-fun b!2858955 () Bool)

(declare-fun res!1187486 () Bool)

(assert (=> b!2858955 (=> (not res!1187486) (not e!1810291))))

(declare-fun prefixMatch!908 (Regex!8600 List!34197) Bool)

(assert (=> b!2858955 (= res!1187486 (prefixMatch!908 r!23423 prefix!1470))))

(declare-fun b!2858956 () Bool)

(declare-fun tp!920188 () Bool)

(assert (=> b!2858956 (= e!1810295 (and tp_is_empty!14937 tp!920188))))

(declare-fun b!2858957 () Bool)

(declare-fun tp!920190 () Bool)

(declare-fun tp!920191 () Bool)

(assert (=> b!2858957 (= e!1810292 (and tp!920190 tp!920191))))

(assert (= (and start!278252 res!1187490) b!2858955))

(assert (= (and b!2858955 res!1187486) b!2858952))

(assert (= (and b!2858952 res!1187488) b!2858948))

(assert (= (and b!2858948 (not res!1187489)) b!2858954))

(assert (= (and b!2858954 (not res!1187487)) b!2858949))

(assert (= (and b!2858949 (not res!1187485)) b!2858951))

(assert (= (and start!278252 (is-ElementMatch!8600 r!23423)) b!2858947))

(assert (= (and start!278252 (is-Concat!13921 r!23423)) b!2858957))

(assert (= (and start!278252 (is-Star!8600 r!23423)) b!2858953))

(assert (= (and start!278252 (is-Union!8600 r!23423)) b!2858950))

(assert (= (and start!278252 (is-Cons!34073 prefix!1470)) b!2858956))

(declare-fun m!3280053 () Bool)

(assert (=> b!2858955 m!3280053))

(declare-fun m!3280055 () Bool)

(assert (=> b!2858949 m!3280055))

(declare-fun m!3280057 () Bool)

(assert (=> b!2858949 m!3280057))

(declare-fun m!3280059 () Bool)

(assert (=> b!2858951 m!3280059))

(declare-fun m!3280061 () Bool)

(assert (=> b!2858948 m!3280061))

(declare-fun m!3280063 () Bool)

(assert (=> b!2858948 m!3280063))

(declare-fun m!3280065 () Bool)

(assert (=> b!2858948 m!3280065))

(assert (=> b!2858948 m!3280061))

(declare-fun m!3280067 () Bool)

(assert (=> b!2858948 m!3280067))

(declare-fun m!3280069 () Bool)

(assert (=> b!2858948 m!3280069))

(declare-fun m!3280071 () Bool)

(assert (=> b!2858954 m!3280071))

(declare-fun m!3280073 () Bool)

(assert (=> start!278252 m!3280073))

(push 1)

(assert (not b!2858957))

(assert (not start!278252))

(assert (not b!2858951))

(assert (not b!2858953))

(assert (not b!2858954))

(assert (not b!2858955))

(assert (not b!2858950))

(assert tp_is_empty!14937)

(assert (not b!2858956))

(assert (not b!2858949))

(assert (not b!2858948))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!520347 () Bool)

(declare-fun d!826816 () Bool)

(assert (= bs!520347 (and d!826816 b!2858948)))

(declare-fun lambda!105162 () Int)

(assert (=> bs!520347 (= lambda!105162 lambda!105154)))

(assert (=> d!826816 true))

(assert (=> d!826816 true))

(assert (=> d!826816 (Exists!1304 lambda!105162)))

(declare-fun lt!1014356 () Unit!47743)

(declare-fun choose!16823 (Regex!8600 List!34197) Unit!47743)

(assert (=> d!826816 (= lt!1014356 (choose!16823 lt!1014341 (t!233230 prefix!1470)))))

(assert (=> d!826816 (validRegex!3470 lt!1014341)))

(assert (=> d!826816 (= (lemmaPrefixMatchThenExistsStringThatMatches!352 lt!1014341 (t!233230 prefix!1470)) lt!1014356)))

(declare-fun bs!520348 () Bool)

(assert (= bs!520348 d!826816))

(declare-fun m!3280097 () Bool)

(assert (=> bs!520348 m!3280097))

(declare-fun m!3280099 () Bool)

(assert (=> bs!520348 m!3280099))

(declare-fun m!3280101 () Bool)

(assert (=> bs!520348 m!3280101))

(assert (=> b!2858948 d!826816))

(declare-fun d!826818 () Bool)

(declare-fun lt!1014359 () List!34197)

(declare-fun dynLambda!14237 (Int List!34197) Bool)

(assert (=> d!826818 (dynLambda!14237 lambda!105154 lt!1014359)))

(declare-fun choose!16824 (Int) List!34197)

(assert (=> d!826818 (= lt!1014359 (choose!16824 lambda!105154))))

(assert (=> d!826818 (Exists!1304 lambda!105154)))

(assert (=> d!826818 (= (pickWitness!317 lambda!105154) lt!1014359)))

(declare-fun b_lambda!85723 () Bool)

(assert (=> (not b_lambda!85723) (not d!826818)))

(declare-fun bs!520349 () Bool)

(assert (= bs!520349 d!826818))

(declare-fun m!3280103 () Bool)

(assert (=> bs!520349 m!3280103))

(declare-fun m!3280105 () Bool)

(assert (=> bs!520349 m!3280105))

(assert (=> bs!520349 m!3280061))

(assert (=> b!2858948 d!826818))

(declare-fun b!2859033 () Bool)

(declare-fun e!1810335 () Regex!8600)

(declare-fun e!1810336 () Regex!8600)

(assert (=> b!2859033 (= e!1810335 e!1810336)))

(declare-fun c!460756 () Bool)

(assert (=> b!2859033 (= c!460756 (is-Star!8600 r!23423))))

(declare-fun c!460759 () Bool)

(declare-fun call!184294 () Regex!8600)

(declare-fun bm!184288 () Bool)

(assert (=> bm!184288 (= call!184294 (derivativeStep!2289 (ite c!460759 (regOne!17713 r!23423) (regOne!17712 r!23423)) (h!39493 prefix!1470)))))

(declare-fun b!2859034 () Bool)

(declare-fun c!460757 () Bool)

(declare-fun nullable!2654 (Regex!8600) Bool)

(assert (=> b!2859034 (= c!460757 (nullable!2654 (regOne!17712 r!23423)))))

(declare-fun e!1810333 () Regex!8600)

(assert (=> b!2859034 (= e!1810336 e!1810333)))

(declare-fun bm!184289 () Bool)

(declare-fun call!184293 () Regex!8600)

(declare-fun call!184295 () Regex!8600)

(assert (=> bm!184289 (= call!184293 call!184295)))

(declare-fun b!2859035 () Bool)

(assert (=> b!2859035 (= e!1810335 (Union!8600 call!184294 call!184295))))

(declare-fun d!826820 () Bool)

(declare-fun lt!1014364 () Regex!8600)

(assert (=> d!826820 (validRegex!3470 lt!1014364)))

(declare-fun e!1810334 () Regex!8600)

(assert (=> d!826820 (= lt!1014364 e!1810334)))

(declare-fun c!460755 () Bool)

(assert (=> d!826820 (= c!460755 (or (is-EmptyExpr!8600 r!23423) (is-EmptyLang!8600 r!23423)))))

(assert (=> d!826820 (validRegex!3470 r!23423)))

(assert (=> d!826820 (= (derivativeStep!2289 r!23423 (h!39493 prefix!1470)) lt!1014364)))

(declare-fun b!2859036 () Bool)

(declare-fun e!1810337 () Regex!8600)

(assert (=> b!2859036 (= e!1810337 (ite (= (h!39493 prefix!1470) (c!460743 r!23423)) EmptyExpr!8600 EmptyLang!8600))))

(declare-fun b!2859037 () Bool)

(assert (=> b!2859037 (= e!1810334 e!1810337)))

(declare-fun c!460758 () Bool)

(assert (=> b!2859037 (= c!460758 (is-ElementMatch!8600 r!23423))))

(declare-fun call!184296 () Regex!8600)

(declare-fun b!2859038 () Bool)

(assert (=> b!2859038 (= e!1810333 (Union!8600 (Concat!13921 call!184294 (regTwo!17712 r!23423)) call!184296))))

(declare-fun bm!184290 () Bool)

(assert (=> bm!184290 (= call!184296 call!184293)))

(declare-fun bm!184291 () Bool)

(assert (=> bm!184291 (= call!184295 (derivativeStep!2289 (ite c!460759 (regTwo!17713 r!23423) (ite c!460756 (reg!8929 r!23423) (ite c!460757 (regTwo!17712 r!23423) (regOne!17712 r!23423)))) (h!39493 prefix!1470)))))

(declare-fun b!2859039 () Bool)

(assert (=> b!2859039 (= e!1810336 (Concat!13921 call!184293 r!23423))))

(declare-fun b!2859040 () Bool)

(assert (=> b!2859040 (= c!460759 (is-Union!8600 r!23423))))

(assert (=> b!2859040 (= e!1810337 e!1810335)))

(declare-fun b!2859041 () Bool)

(assert (=> b!2859041 (= e!1810333 (Union!8600 (Concat!13921 call!184296 (regTwo!17712 r!23423)) EmptyLang!8600))))

(declare-fun b!2859042 () Bool)

(assert (=> b!2859042 (= e!1810334 EmptyLang!8600)))

(assert (= (and d!826820 c!460755) b!2859042))

(assert (= (and d!826820 (not c!460755)) b!2859037))

(assert (= (and b!2859037 c!460758) b!2859036))

(assert (= (and b!2859037 (not c!460758)) b!2859040))

(assert (= (and b!2859040 c!460759) b!2859035))

(assert (= (and b!2859040 (not c!460759)) b!2859033))

(assert (= (and b!2859033 c!460756) b!2859039))

(assert (= (and b!2859033 (not c!460756)) b!2859034))

(assert (= (and b!2859034 c!460757) b!2859038))

(assert (= (and b!2859034 (not c!460757)) b!2859041))

(assert (= (or b!2859038 b!2859041) bm!184290))

(assert (= (or b!2859039 bm!184290) bm!184289))

(assert (= (or b!2859035 bm!184289) bm!184291))

(assert (= (or b!2859035 b!2859038) bm!184288))

(declare-fun m!3280107 () Bool)

(assert (=> bm!184288 m!3280107))

(declare-fun m!3280109 () Bool)

(assert (=> b!2859034 m!3280109))

(declare-fun m!3280111 () Bool)

(assert (=> d!826820 m!3280111))

(assert (=> d!826820 m!3280073))

(declare-fun m!3280113 () Bool)

(assert (=> bm!184291 m!3280113))

(assert (=> b!2858948 d!826820))

(declare-fun b!2859075 () Bool)

(declare-fun e!1810359 () Bool)

(declare-fun head!6283 (List!34197) C!17382)

(declare-fun tail!4508 (List!34197) List!34197)

(assert (=> b!2859075 (= e!1810359 (matchR!3706 (derivativeStep!2289 lt!1014341 (head!6283 lt!1014338)) (tail!4508 lt!1014338)))))

(declare-fun b!2859076 () Bool)

(declare-fun e!1810356 () Bool)

(declare-fun e!1810360 () Bool)

(assert (=> b!2859076 (= e!1810356 e!1810360)))

(declare-fun res!1187547 () Bool)

(assert (=> b!2859076 (=> (not res!1187547) (not e!1810360))))

(declare-fun lt!1014370 () Bool)

(assert (=> b!2859076 (= res!1187547 (not lt!1014370))))

(declare-fun b!2859077 () Bool)

(declare-fun e!1810357 () Bool)

(assert (=> b!2859077 (= e!1810360 e!1810357)))

(declare-fun res!1187549 () Bool)

(assert (=> b!2859077 (=> res!1187549 e!1810357)))

(declare-fun call!184299 () Bool)

(assert (=> b!2859077 (= res!1187549 call!184299)))

(declare-fun b!2859078 () Bool)

(declare-fun res!1187544 () Bool)

(assert (=> b!2859078 (=> res!1187544 e!1810356)))

(declare-fun e!1810355 () Bool)

(assert (=> b!2859078 (= res!1187544 e!1810355)))

(declare-fun res!1187546 () Bool)

(assert (=> b!2859078 (=> (not res!1187546) (not e!1810355))))

(assert (=> b!2859078 (= res!1187546 lt!1014370)))

(declare-fun b!2859079 () Bool)

(assert (=> b!2859079 (= e!1810359 (nullable!2654 lt!1014341))))

(declare-fun b!2859080 () Bool)

(declare-fun res!1187545 () Bool)

(assert (=> b!2859080 (=> res!1187545 e!1810357)))

(declare-fun isEmpty!18608 (List!34197) Bool)

(assert (=> b!2859080 (= res!1187545 (not (isEmpty!18608 (tail!4508 lt!1014338))))))

(declare-fun bm!184294 () Bool)

(assert (=> bm!184294 (= call!184299 (isEmpty!18608 lt!1014338))))

(declare-fun b!2859081 () Bool)

(declare-fun e!1810358 () Bool)

(declare-fun e!1810361 () Bool)

(assert (=> b!2859081 (= e!1810358 e!1810361)))

(declare-fun c!460767 () Bool)

(assert (=> b!2859081 (= c!460767 (is-EmptyLang!8600 lt!1014341))))

(declare-fun b!2859082 () Bool)

(declare-fun res!1187548 () Bool)

(assert (=> b!2859082 (=> (not res!1187548) (not e!1810355))))

(assert (=> b!2859082 (= res!1187548 (isEmpty!18608 (tail!4508 lt!1014338)))))

(declare-fun d!826824 () Bool)

(assert (=> d!826824 e!1810358))

(declare-fun c!460768 () Bool)

(assert (=> d!826824 (= c!460768 (is-EmptyExpr!8600 lt!1014341))))

(assert (=> d!826824 (= lt!1014370 e!1810359)))

(declare-fun c!460766 () Bool)

(assert (=> d!826824 (= c!460766 (isEmpty!18608 lt!1014338))))

(assert (=> d!826824 (validRegex!3470 lt!1014341)))

(assert (=> d!826824 (= (matchR!3706 lt!1014341 lt!1014338) lt!1014370)))

(declare-fun b!2859083 () Bool)

(declare-fun res!1187550 () Bool)

(assert (=> b!2859083 (=> (not res!1187550) (not e!1810355))))

(assert (=> b!2859083 (= res!1187550 (not call!184299))))

(declare-fun b!2859084 () Bool)

(assert (=> b!2859084 (= e!1810357 (not (= (head!6283 lt!1014338) (c!460743 lt!1014341))))))

(declare-fun b!2859085 () Bool)

(assert (=> b!2859085 (= e!1810361 (not lt!1014370))))

(declare-fun b!2859086 () Bool)

(declare-fun res!1187543 () Bool)

(assert (=> b!2859086 (=> res!1187543 e!1810356)))

(assert (=> b!2859086 (= res!1187543 (not (is-ElementMatch!8600 lt!1014341)))))

(assert (=> b!2859086 (= e!1810361 e!1810356)))

(declare-fun b!2859087 () Bool)

(assert (=> b!2859087 (= e!1810355 (= (head!6283 lt!1014338) (c!460743 lt!1014341)))))

(declare-fun b!2859088 () Bool)

(assert (=> b!2859088 (= e!1810358 (= lt!1014370 call!184299))))

(assert (= (and d!826824 c!460766) b!2859079))

(assert (= (and d!826824 (not c!460766)) b!2859075))

(assert (= (and d!826824 c!460768) b!2859088))

(assert (= (and d!826824 (not c!460768)) b!2859081))

(assert (= (and b!2859081 c!460767) b!2859085))

(assert (= (and b!2859081 (not c!460767)) b!2859086))

(assert (= (and b!2859086 (not res!1187543)) b!2859078))

(assert (= (and b!2859078 res!1187546) b!2859083))

(assert (= (and b!2859083 res!1187550) b!2859082))

(assert (= (and b!2859082 res!1187548) b!2859087))

(assert (= (and b!2859078 (not res!1187544)) b!2859076))

(assert (= (and b!2859076 res!1187547) b!2859077))

(assert (= (and b!2859077 (not res!1187549)) b!2859080))

(assert (= (and b!2859080 (not res!1187545)) b!2859084))

(assert (= (or b!2859088 b!2859077 b!2859083) bm!184294))

(declare-fun m!3280131 () Bool)

(assert (=> b!2859080 m!3280131))

(assert (=> b!2859080 m!3280131))

(declare-fun m!3280133 () Bool)

(assert (=> b!2859080 m!3280133))

(assert (=> b!2859082 m!3280131))

(assert (=> b!2859082 m!3280131))

(assert (=> b!2859082 m!3280133))

(declare-fun m!3280135 () Bool)

(assert (=> b!2859084 m!3280135))

(declare-fun m!3280137 () Bool)

(assert (=> bm!184294 m!3280137))

(assert (=> d!826824 m!3280137))

(assert (=> d!826824 m!3280101))

(assert (=> b!2859075 m!3280135))

(assert (=> b!2859075 m!3280135))

(declare-fun m!3280139 () Bool)

(assert (=> b!2859075 m!3280139))

(assert (=> b!2859075 m!3280131))

(assert (=> b!2859075 m!3280139))

(assert (=> b!2859075 m!3280131))

(declare-fun m!3280141 () Bool)

(assert (=> b!2859075 m!3280141))

(declare-fun m!3280143 () Bool)

(assert (=> b!2859079 m!3280143))

(assert (=> b!2859087 m!3280135))

(assert (=> b!2858948 d!826824))

(declare-fun d!826830 () Bool)

(declare-fun choose!16825 (Int) Bool)

(assert (=> d!826830 (= (Exists!1304 lambda!105154) (choose!16825 lambda!105154))))

(declare-fun bs!520351 () Bool)

(assert (= bs!520351 d!826830))

(declare-fun m!3280145 () Bool)

(assert (=> bs!520351 m!3280145))

(assert (=> b!2858948 d!826830))

(declare-fun bm!184301 () Bool)

(declare-fun call!184307 () Bool)

(declare-fun call!184308 () Bool)

(assert (=> bm!184301 (= call!184307 call!184308)))

(declare-fun b!2859109 () Bool)

(declare-fun res!1187565 () Bool)

(declare-fun e!1810380 () Bool)

(assert (=> b!2859109 (=> (not res!1187565) (not e!1810380))))

(declare-fun call!184306 () Bool)

(assert (=> b!2859109 (= res!1187565 call!184306)))

(declare-fun e!1810379 () Bool)

(assert (=> b!2859109 (= e!1810379 e!1810380)))

(declare-fun b!2859110 () Bool)

(declare-fun e!1810378 () Bool)

(assert (=> b!2859110 (= e!1810378 call!184307)))

(declare-fun b!2859111 () Bool)

(assert (=> b!2859111 (= e!1810380 call!184307)))

(declare-fun bm!184302 () Bool)

(declare-fun c!460774 () Bool)

(declare-fun c!460773 () Bool)

(assert (=> bm!184302 (= call!184308 (validRegex!3470 (ite c!460773 (reg!8929 r!23423) (ite c!460774 (regTwo!17713 r!23423) (regTwo!17712 r!23423)))))))

(declare-fun b!2859112 () Bool)

(declare-fun e!1810383 () Bool)

(declare-fun e!1810384 () Bool)

(assert (=> b!2859112 (= e!1810383 e!1810384)))

(declare-fun res!1187567 () Bool)

(assert (=> b!2859112 (= res!1187567 (not (nullable!2654 (reg!8929 r!23423))))))

(assert (=> b!2859112 (=> (not res!1187567) (not e!1810384))))

(declare-fun bm!184303 () Bool)

(assert (=> bm!184303 (= call!184306 (validRegex!3470 (ite c!460774 (regOne!17713 r!23423) (regOne!17712 r!23423))))))

(declare-fun d!826832 () Bool)

(declare-fun res!1187566 () Bool)

(declare-fun e!1810381 () Bool)

(assert (=> d!826832 (=> res!1187566 e!1810381)))

(assert (=> d!826832 (= res!1187566 (is-ElementMatch!8600 r!23423))))

(assert (=> d!826832 (= (validRegex!3470 r!23423) e!1810381)))

(declare-fun b!2859113 () Bool)

(declare-fun e!1810382 () Bool)

(assert (=> b!2859113 (= e!1810382 e!1810378)))

(declare-fun res!1187564 () Bool)

(assert (=> b!2859113 (=> (not res!1187564) (not e!1810378))))

(assert (=> b!2859113 (= res!1187564 call!184306)))

(declare-fun b!2859114 () Bool)

(assert (=> b!2859114 (= e!1810383 e!1810379)))

(assert (=> b!2859114 (= c!460774 (is-Union!8600 r!23423))))

(declare-fun b!2859115 () Bool)

(assert (=> b!2859115 (= e!1810381 e!1810383)))

(assert (=> b!2859115 (= c!460773 (is-Star!8600 r!23423))))

(declare-fun b!2859116 () Bool)

(declare-fun res!1187563 () Bool)

(assert (=> b!2859116 (=> res!1187563 e!1810382)))

(assert (=> b!2859116 (= res!1187563 (not (is-Concat!13921 r!23423)))))

(assert (=> b!2859116 (= e!1810379 e!1810382)))

(declare-fun b!2859117 () Bool)

(assert (=> b!2859117 (= e!1810384 call!184308)))

(assert (= (and d!826832 (not res!1187566)) b!2859115))

(assert (= (and b!2859115 c!460773) b!2859112))

(assert (= (and b!2859115 (not c!460773)) b!2859114))

(assert (= (and b!2859112 res!1187567) b!2859117))

(assert (= (and b!2859114 c!460774) b!2859109))

(assert (= (and b!2859114 (not c!460774)) b!2859116))

(assert (= (and b!2859109 res!1187565) b!2859111))

(assert (= (and b!2859116 (not res!1187563)) b!2859113))

(assert (= (and b!2859113 res!1187564) b!2859110))

(assert (= (or b!2859111 b!2859110) bm!184301))

(assert (= (or b!2859109 b!2859113) bm!184303))

(assert (= (or b!2859117 bm!184301) bm!184302))

(declare-fun m!3280153 () Bool)

(assert (=> bm!184302 m!3280153))

(declare-fun m!3280155 () Bool)

(assert (=> b!2859112 m!3280155))

(declare-fun m!3280157 () Bool)

(assert (=> bm!184303 m!3280157))

(assert (=> start!278252 d!826832))

(declare-fun b!2859126 () Bool)

(declare-fun e!1810391 () Bool)

(declare-fun e!1810392 () Bool)

(assert (=> b!2859126 (= e!1810391 e!1810392)))

(declare-fun res!1187579 () Bool)

(assert (=> b!2859126 (=> (not res!1187579) (not e!1810392))))

(assert (=> b!2859126 (= res!1187579 (not (is-Nil!34073 lt!1014338)))))

(declare-fun b!2859127 () Bool)

(declare-fun res!1187577 () Bool)

(assert (=> b!2859127 (=> (not res!1187577) (not e!1810392))))

(assert (=> b!2859127 (= res!1187577 (= (head!6283 (t!233230 prefix!1470)) (head!6283 lt!1014338)))))

(declare-fun b!2859128 () Bool)

(assert (=> b!2859128 (= e!1810392 (isPrefix!2680 (tail!4508 (t!233230 prefix!1470)) (tail!4508 lt!1014338)))))

(declare-fun b!2859129 () Bool)

(declare-fun e!1810393 () Bool)

(declare-fun size!26278 (List!34197) Int)

(assert (=> b!2859129 (= e!1810393 (>= (size!26278 lt!1014338) (size!26278 (t!233230 prefix!1470))))))

(declare-fun d!826836 () Bool)

(assert (=> d!826836 e!1810393))

(declare-fun res!1187576 () Bool)

(assert (=> d!826836 (=> res!1187576 e!1810393)))

(declare-fun lt!1014377 () Bool)

(assert (=> d!826836 (= res!1187576 (not lt!1014377))))

(assert (=> d!826836 (= lt!1014377 e!1810391)))

(declare-fun res!1187578 () Bool)

(assert (=> d!826836 (=> res!1187578 e!1810391)))

(assert (=> d!826836 (= res!1187578 (is-Nil!34073 (t!233230 prefix!1470)))))

(assert (=> d!826836 (= (isPrefix!2680 (t!233230 prefix!1470) lt!1014338) lt!1014377)))

(assert (= (and d!826836 (not res!1187578)) b!2859126))

(assert (= (and b!2859126 res!1187579) b!2859127))

(assert (= (and b!2859127 res!1187577) b!2859128))

(assert (= (and d!826836 (not res!1187576)) b!2859129))

(declare-fun m!3280163 () Bool)

(assert (=> b!2859127 m!3280163))

(assert (=> b!2859127 m!3280135))

(declare-fun m!3280165 () Bool)

(assert (=> b!2859128 m!3280165))

(assert (=> b!2859128 m!3280131))

(assert (=> b!2859128 m!3280165))

(assert (=> b!2859128 m!3280131))

(declare-fun m!3280167 () Bool)

(assert (=> b!2859128 m!3280167))

(declare-fun m!3280169 () Bool)

(assert (=> b!2859129 m!3280169))

(declare-fun m!3280171 () Bool)

(assert (=> b!2859129 m!3280171))

(assert (=> b!2858954 d!826836))

(declare-fun b!2859130 () Bool)

(declare-fun e!1810398 () Bool)

(assert (=> b!2859130 (= e!1810398 (matchR!3706 (derivativeStep!2289 r!23423 (head!6283 lt!1014340)) (tail!4508 lt!1014340)))))

(declare-fun b!2859131 () Bool)

(declare-fun e!1810395 () Bool)

(declare-fun e!1810399 () Bool)

(assert (=> b!2859131 (= e!1810395 e!1810399)))

(declare-fun res!1187584 () Bool)

(assert (=> b!2859131 (=> (not res!1187584) (not e!1810399))))

(declare-fun lt!1014378 () Bool)

(assert (=> b!2859131 (= res!1187584 (not lt!1014378))))

(declare-fun b!2859132 () Bool)

(declare-fun e!1810396 () Bool)

(assert (=> b!2859132 (= e!1810399 e!1810396)))

(declare-fun res!1187586 () Bool)

(assert (=> b!2859132 (=> res!1187586 e!1810396)))

(declare-fun call!184309 () Bool)

(assert (=> b!2859132 (= res!1187586 call!184309)))

(declare-fun b!2859133 () Bool)

(declare-fun res!1187581 () Bool)

(assert (=> b!2859133 (=> res!1187581 e!1810395)))

(declare-fun e!1810394 () Bool)

(assert (=> b!2859133 (= res!1187581 e!1810394)))

(declare-fun res!1187583 () Bool)

(assert (=> b!2859133 (=> (not res!1187583) (not e!1810394))))

(assert (=> b!2859133 (= res!1187583 lt!1014378)))

(declare-fun b!2859134 () Bool)

(assert (=> b!2859134 (= e!1810398 (nullable!2654 r!23423))))

(declare-fun b!2859135 () Bool)

(declare-fun res!1187582 () Bool)

(assert (=> b!2859135 (=> res!1187582 e!1810396)))

(assert (=> b!2859135 (= res!1187582 (not (isEmpty!18608 (tail!4508 lt!1014340))))))

(declare-fun bm!184304 () Bool)

(assert (=> bm!184304 (= call!184309 (isEmpty!18608 lt!1014340))))

(declare-fun b!2859136 () Bool)

(declare-fun e!1810397 () Bool)

(declare-fun e!1810400 () Bool)

(assert (=> b!2859136 (= e!1810397 e!1810400)))

(declare-fun c!460776 () Bool)

(assert (=> b!2859136 (= c!460776 (is-EmptyLang!8600 r!23423))))

(declare-fun b!2859137 () Bool)

(declare-fun res!1187585 () Bool)

(assert (=> b!2859137 (=> (not res!1187585) (not e!1810394))))

(assert (=> b!2859137 (= res!1187585 (isEmpty!18608 (tail!4508 lt!1014340)))))

(declare-fun d!826840 () Bool)

(assert (=> d!826840 e!1810397))

(declare-fun c!460777 () Bool)

(assert (=> d!826840 (= c!460777 (is-EmptyExpr!8600 r!23423))))

(assert (=> d!826840 (= lt!1014378 e!1810398)))

(declare-fun c!460775 () Bool)

(assert (=> d!826840 (= c!460775 (isEmpty!18608 lt!1014340))))

(assert (=> d!826840 (validRegex!3470 r!23423)))

(assert (=> d!826840 (= (matchR!3706 r!23423 lt!1014340) lt!1014378)))

(declare-fun b!2859138 () Bool)

(declare-fun res!1187587 () Bool)

(assert (=> b!2859138 (=> (not res!1187587) (not e!1810394))))

(assert (=> b!2859138 (= res!1187587 (not call!184309))))

(declare-fun b!2859139 () Bool)

(assert (=> b!2859139 (= e!1810396 (not (= (head!6283 lt!1014340) (c!460743 r!23423))))))

(declare-fun b!2859140 () Bool)

(assert (=> b!2859140 (= e!1810400 (not lt!1014378))))

(declare-fun b!2859141 () Bool)

(declare-fun res!1187580 () Bool)

(assert (=> b!2859141 (=> res!1187580 e!1810395)))

(assert (=> b!2859141 (= res!1187580 (not (is-ElementMatch!8600 r!23423)))))

(assert (=> b!2859141 (= e!1810400 e!1810395)))

(declare-fun b!2859142 () Bool)

(assert (=> b!2859142 (= e!1810394 (= (head!6283 lt!1014340) (c!460743 r!23423)))))

(declare-fun b!2859143 () Bool)

(assert (=> b!2859143 (= e!1810397 (= lt!1014378 call!184309))))

(assert (= (and d!826840 c!460775) b!2859134))

(assert (= (and d!826840 (not c!460775)) b!2859130))

(assert (= (and d!826840 c!460777) b!2859143))

(assert (= (and d!826840 (not c!460777)) b!2859136))

(assert (= (and b!2859136 c!460776) b!2859140))

(assert (= (and b!2859136 (not c!460776)) b!2859141))

(assert (= (and b!2859141 (not res!1187580)) b!2859133))

(assert (= (and b!2859133 res!1187583) b!2859138))

(assert (= (and b!2859138 res!1187587) b!2859137))

(assert (= (and b!2859137 res!1187585) b!2859142))

(assert (= (and b!2859133 (not res!1187581)) b!2859131))

(assert (= (and b!2859131 res!1187584) b!2859132))

(assert (= (and b!2859132 (not res!1187586)) b!2859135))

(assert (= (and b!2859135 (not res!1187582)) b!2859139))

(assert (= (or b!2859143 b!2859132 b!2859138) bm!184304))

(declare-fun m!3280173 () Bool)

(assert (=> b!2859135 m!3280173))

(assert (=> b!2859135 m!3280173))

(declare-fun m!3280175 () Bool)

(assert (=> b!2859135 m!3280175))

(assert (=> b!2859137 m!3280173))

(assert (=> b!2859137 m!3280173))

(assert (=> b!2859137 m!3280175))

(declare-fun m!3280177 () Bool)

(assert (=> b!2859139 m!3280177))

(declare-fun m!3280179 () Bool)

(assert (=> bm!184304 m!3280179))

(assert (=> d!826840 m!3280179))

(assert (=> d!826840 m!3280073))

(assert (=> b!2859130 m!3280177))

(assert (=> b!2859130 m!3280177))

(declare-fun m!3280181 () Bool)

(assert (=> b!2859130 m!3280181))

(assert (=> b!2859130 m!3280173))

(assert (=> b!2859130 m!3280181))

(assert (=> b!2859130 m!3280173))

(declare-fun m!3280183 () Bool)

(assert (=> b!2859130 m!3280183))

(declare-fun m!3280185 () Bool)

(assert (=> b!2859134 m!3280185))

(assert (=> b!2859142 m!3280177))

(assert (=> b!2858949 d!826840))

(declare-fun d!826842 () Bool)

(assert (=> d!826842 (= ($colon$colon!596 lt!1014338 (h!39493 prefix!1470)) (Cons!34073 (h!39493 prefix!1470) lt!1014338))))

(assert (=> b!2858949 d!826842))

(declare-fun d!826844 () Bool)

(declare-fun c!460780 () Bool)

(assert (=> d!826844 (= c!460780 (isEmpty!18608 prefix!1470))))

(declare-fun e!1810403 () Bool)

(assert (=> d!826844 (= (prefixMatch!908 r!23423 prefix!1470) e!1810403)))

(declare-fun b!2859148 () Bool)

(declare-fun lostCause!753 (Regex!8600) Bool)

(assert (=> b!2859148 (= e!1810403 (not (lostCause!753 r!23423)))))

(declare-fun b!2859149 () Bool)

(assert (=> b!2859149 (= e!1810403 (prefixMatch!908 (derivativeStep!2289 r!23423 (head!6283 prefix!1470)) (tail!4508 prefix!1470)))))

(assert (= (and d!826844 c!460780) b!2859148))

(assert (= (and d!826844 (not c!460780)) b!2859149))

(declare-fun m!3280187 () Bool)

(assert (=> d!826844 m!3280187))

(declare-fun m!3280189 () Bool)

(assert (=> b!2859148 m!3280189))

(declare-fun m!3280191 () Bool)

(assert (=> b!2859149 m!3280191))

(assert (=> b!2859149 m!3280191))

(declare-fun m!3280193 () Bool)

(assert (=> b!2859149 m!3280193))

(declare-fun m!3280195 () Bool)

(assert (=> b!2859149 m!3280195))

(assert (=> b!2859149 m!3280193))

(assert (=> b!2859149 m!3280195))

(declare-fun m!3280197 () Bool)

(assert (=> b!2859149 m!3280197))

(assert (=> b!2858955 d!826844))

(declare-fun b!2859150 () Bool)

(declare-fun e!1810404 () Bool)

(declare-fun e!1810405 () Bool)

(assert (=> b!2859150 (= e!1810404 e!1810405)))

(declare-fun res!1187591 () Bool)

(assert (=> b!2859150 (=> (not res!1187591) (not e!1810405))))

(assert (=> b!2859150 (= res!1187591 (not (is-Nil!34073 lt!1014340)))))

(declare-fun b!2859151 () Bool)

(declare-fun res!1187589 () Bool)

(assert (=> b!2859151 (=> (not res!1187589) (not e!1810405))))

(assert (=> b!2859151 (= res!1187589 (= (head!6283 prefix!1470) (head!6283 lt!1014340)))))

(declare-fun b!2859152 () Bool)

(assert (=> b!2859152 (= e!1810405 (isPrefix!2680 (tail!4508 prefix!1470) (tail!4508 lt!1014340)))))

(declare-fun b!2859153 () Bool)

(declare-fun e!1810406 () Bool)

(assert (=> b!2859153 (= e!1810406 (>= (size!26278 lt!1014340) (size!26278 prefix!1470)))))

(declare-fun d!826846 () Bool)

(assert (=> d!826846 e!1810406))

(declare-fun res!1187588 () Bool)

(assert (=> d!826846 (=> res!1187588 e!1810406)))

(declare-fun lt!1014379 () Bool)

(assert (=> d!826846 (= res!1187588 (not lt!1014379))))

(assert (=> d!826846 (= lt!1014379 e!1810404)))

(declare-fun res!1187590 () Bool)

(assert (=> d!826846 (=> res!1187590 e!1810404)))

(assert (=> d!826846 (= res!1187590 (is-Nil!34073 prefix!1470))))

(assert (=> d!826846 (= (isPrefix!2680 prefix!1470 lt!1014340) lt!1014379)))

(assert (= (and d!826846 (not res!1187590)) b!2859150))

(assert (= (and b!2859150 res!1187591) b!2859151))

(assert (= (and b!2859151 res!1187589) b!2859152))

(assert (= (and d!826846 (not res!1187588)) b!2859153))

(assert (=> b!2859151 m!3280191))

(assert (=> b!2859151 m!3280177))

(assert (=> b!2859152 m!3280195))

(assert (=> b!2859152 m!3280173))

(assert (=> b!2859152 m!3280195))

(assert (=> b!2859152 m!3280173))

(declare-fun m!3280199 () Bool)

(assert (=> b!2859152 m!3280199))

(declare-fun m!3280201 () Bool)

(assert (=> b!2859153 m!3280201))

(declare-fun m!3280203 () Bool)

(assert (=> b!2859153 m!3280203))

(assert (=> b!2858951 d!826846))

(declare-fun e!1810409 () Bool)

(assert (=> b!2858953 (= tp!920189 e!1810409)))

(declare-fun b!2859164 () Bool)

(assert (=> b!2859164 (= e!1810409 tp_is_empty!14937)))

(declare-fun b!2859167 () Bool)

(declare-fun tp!920222 () Bool)

(declare-fun tp!920223 () Bool)

(assert (=> b!2859167 (= e!1810409 (and tp!920222 tp!920223))))

(declare-fun b!2859166 () Bool)

(declare-fun tp!920221 () Bool)

(assert (=> b!2859166 (= e!1810409 tp!920221)))

(declare-fun b!2859165 () Bool)

(declare-fun tp!920224 () Bool)

(declare-fun tp!920225 () Bool)

(assert (=> b!2859165 (= e!1810409 (and tp!920224 tp!920225))))

(assert (= (and b!2858953 (is-ElementMatch!8600 (reg!8929 r!23423))) b!2859164))

(assert (= (and b!2858953 (is-Concat!13921 (reg!8929 r!23423))) b!2859165))

(assert (= (and b!2858953 (is-Star!8600 (reg!8929 r!23423))) b!2859166))

(assert (= (and b!2858953 (is-Union!8600 (reg!8929 r!23423))) b!2859167))

(declare-fun e!1810410 () Bool)

(assert (=> b!2858950 (= tp!920192 e!1810410)))

(declare-fun b!2859168 () Bool)

(assert (=> b!2859168 (= e!1810410 tp_is_empty!14937)))

(declare-fun b!2859171 () Bool)

(declare-fun tp!920227 () Bool)

(declare-fun tp!920228 () Bool)

(assert (=> b!2859171 (= e!1810410 (and tp!920227 tp!920228))))

(declare-fun b!2859170 () Bool)

(declare-fun tp!920226 () Bool)

(assert (=> b!2859170 (= e!1810410 tp!920226)))

(declare-fun b!2859169 () Bool)

(declare-fun tp!920229 () Bool)

(declare-fun tp!920230 () Bool)

(assert (=> b!2859169 (= e!1810410 (and tp!920229 tp!920230))))

(assert (= (and b!2858950 (is-ElementMatch!8600 (regOne!17713 r!23423))) b!2859168))

(assert (= (and b!2858950 (is-Concat!13921 (regOne!17713 r!23423))) b!2859169))

(assert (= (and b!2858950 (is-Star!8600 (regOne!17713 r!23423))) b!2859170))

(assert (= (and b!2858950 (is-Union!8600 (regOne!17713 r!23423))) b!2859171))

(declare-fun e!1810411 () Bool)

(assert (=> b!2858950 (= tp!920187 e!1810411)))

(declare-fun b!2859172 () Bool)

(assert (=> b!2859172 (= e!1810411 tp_is_empty!14937)))

(declare-fun b!2859175 () Bool)

(declare-fun tp!920232 () Bool)

(declare-fun tp!920233 () Bool)

(assert (=> b!2859175 (= e!1810411 (and tp!920232 tp!920233))))

(declare-fun b!2859174 () Bool)

(declare-fun tp!920231 () Bool)

(assert (=> b!2859174 (= e!1810411 tp!920231)))

(declare-fun b!2859173 () Bool)

(declare-fun tp!920234 () Bool)

(declare-fun tp!920235 () Bool)

(assert (=> b!2859173 (= e!1810411 (and tp!920234 tp!920235))))

(assert (= (and b!2858950 (is-ElementMatch!8600 (regTwo!17713 r!23423))) b!2859172))

(assert (= (and b!2858950 (is-Concat!13921 (regTwo!17713 r!23423))) b!2859173))

(assert (= (and b!2858950 (is-Star!8600 (regTwo!17713 r!23423))) b!2859174))

(assert (= (and b!2858950 (is-Union!8600 (regTwo!17713 r!23423))) b!2859175))

(declare-fun b!2859180 () Bool)

(declare-fun e!1810414 () Bool)

(declare-fun tp!920238 () Bool)

(assert (=> b!2859180 (= e!1810414 (and tp_is_empty!14937 tp!920238))))

(assert (=> b!2858956 (= tp!920188 e!1810414)))

(assert (= (and b!2858956 (is-Cons!34073 (t!233230 prefix!1470))) b!2859180))

(declare-fun e!1810415 () Bool)

(assert (=> b!2858957 (= tp!920190 e!1810415)))

(declare-fun b!2859181 () Bool)

(assert (=> b!2859181 (= e!1810415 tp_is_empty!14937)))

(declare-fun b!2859184 () Bool)

(declare-fun tp!920240 () Bool)

(declare-fun tp!920241 () Bool)

(assert (=> b!2859184 (= e!1810415 (and tp!920240 tp!920241))))

(declare-fun b!2859183 () Bool)

(declare-fun tp!920239 () Bool)

(assert (=> b!2859183 (= e!1810415 tp!920239)))

(declare-fun b!2859182 () Bool)

(declare-fun tp!920242 () Bool)

(declare-fun tp!920243 () Bool)

(assert (=> b!2859182 (= e!1810415 (and tp!920242 tp!920243))))

(assert (= (and b!2858957 (is-ElementMatch!8600 (regOne!17712 r!23423))) b!2859181))

(assert (= (and b!2858957 (is-Concat!13921 (regOne!17712 r!23423))) b!2859182))

(assert (= (and b!2858957 (is-Star!8600 (regOne!17712 r!23423))) b!2859183))

(assert (= (and b!2858957 (is-Union!8600 (regOne!17712 r!23423))) b!2859184))

(declare-fun e!1810416 () Bool)

(assert (=> b!2858957 (= tp!920191 e!1810416)))

(declare-fun b!2859185 () Bool)

(assert (=> b!2859185 (= e!1810416 tp_is_empty!14937)))

(declare-fun b!2859188 () Bool)

(declare-fun tp!920245 () Bool)

(declare-fun tp!920246 () Bool)

(assert (=> b!2859188 (= e!1810416 (and tp!920245 tp!920246))))

(declare-fun b!2859187 () Bool)

(declare-fun tp!920244 () Bool)

(assert (=> b!2859187 (= e!1810416 tp!920244)))

(declare-fun b!2859186 () Bool)

(declare-fun tp!920247 () Bool)

(declare-fun tp!920248 () Bool)

(assert (=> b!2859186 (= e!1810416 (and tp!920247 tp!920248))))

(assert (= (and b!2858957 (is-ElementMatch!8600 (regTwo!17712 r!23423))) b!2859185))

(assert (= (and b!2858957 (is-Concat!13921 (regTwo!17712 r!23423))) b!2859186))

(assert (= (and b!2858957 (is-Star!8600 (regTwo!17712 r!23423))) b!2859187))

(assert (= (and b!2858957 (is-Union!8600 (regTwo!17712 r!23423))) b!2859188))

(declare-fun b_lambda!85727 () Bool)

(assert (= b_lambda!85723 (or b!2858948 b_lambda!85727)))

(declare-fun bs!520355 () Bool)

(declare-fun d!826848 () Bool)

(assert (= bs!520355 (and d!826848 b!2858948)))

(declare-fun res!1187592 () Bool)

(declare-fun e!1810417 () Bool)

(assert (=> bs!520355 (=> (not res!1187592) (not e!1810417))))

(assert (=> bs!520355 (= res!1187592 (matchR!3706 lt!1014341 lt!1014359))))

(assert (=> bs!520355 (= (dynLambda!14237 lambda!105154 lt!1014359) e!1810417)))

(declare-fun b!2859189 () Bool)

(assert (=> b!2859189 (= e!1810417 (isPrefix!2680 (t!233230 prefix!1470) lt!1014359))))

(assert (= (and bs!520355 res!1187592) b!2859189))

(declare-fun m!3280205 () Bool)

(assert (=> bs!520355 m!3280205))

(declare-fun m!3280207 () Bool)

(assert (=> b!2859189 m!3280207))

(assert (=> d!826818 d!826848))

(push 1)

(assert (not b!2859139))

(assert (not b!2859134))

(assert (not b!2859189))

(assert (not b!2859173))

(assert (not b_lambda!85727))

(assert (not b!2859149))

(assert (not d!826824))

(assert (not b!2859075))

(assert (not b!2859182))

(assert (not b!2859165))

(assert (not bm!184291))

(assert (not b!2859167))

(assert (not d!826840))

(assert (not b!2859186))

(assert (not b!2859170))

(assert (not b!2859087))

(assert (not b!2859112))

(assert (not b!2859079))

(assert (not b!2859166))

(assert (not d!826844))

(assert (not b!2859188))

(assert (not bm!184303))

(assert (not b!2859148))

(assert (not b!2859184))

(assert (not b!2859175))

(assert (not b!2859084))

(assert (not d!826830))

(assert (not b!2859151))

(assert (not b!2859180))

(assert (not b!2859169))

(assert (not b!2859183))

(assert (not b!2859130))

(assert (not b!2859142))

(assert (not b!2859152))

(assert (not bm!184304))

(assert (not bs!520355))

(assert (not d!826820))

(assert (not d!826816))

(assert (not b!2859127))

(assert (not b!2859082))

(assert (not bm!184288))

(assert (not b!2859174))

(assert (not b!2859153))

(assert tp_is_empty!14937)

(assert (not b!2859171))

(assert (not b!2859187))

(assert (not b!2859135))

(assert (not b!2859080))

(assert (not d!826818))

(assert (not b!2859137))

(assert (not b!2859129))

(assert (not b!2859128))

(assert (not bm!184302))

(assert (not bm!184294))

(assert (not b!2859034))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2859349 () Bool)

(declare-fun e!1810499 () Bool)

(declare-fun e!1810500 () Bool)

(assert (=> b!2859349 (= e!1810499 e!1810500)))

(declare-fun res!1187648 () Bool)

(assert (=> b!2859349 (=> (not res!1187648) (not e!1810500))))

(assert (=> b!2859349 (= res!1187648 (not (is-Nil!34073 (tail!4508 lt!1014338))))))

(declare-fun b!2859350 () Bool)

(declare-fun res!1187646 () Bool)

(assert (=> b!2859350 (=> (not res!1187646) (not e!1810500))))

(assert (=> b!2859350 (= res!1187646 (= (head!6283 (tail!4508 (t!233230 prefix!1470))) (head!6283 (tail!4508 lt!1014338))))))

(declare-fun b!2859351 () Bool)

(assert (=> b!2859351 (= e!1810500 (isPrefix!2680 (tail!4508 (tail!4508 (t!233230 prefix!1470))) (tail!4508 (tail!4508 lt!1014338))))))

(declare-fun b!2859352 () Bool)

(declare-fun e!1810501 () Bool)

(assert (=> b!2859352 (= e!1810501 (>= (size!26278 (tail!4508 lt!1014338)) (size!26278 (tail!4508 (t!233230 prefix!1470)))))))

(declare-fun d!826864 () Bool)

(assert (=> d!826864 e!1810501))

(declare-fun res!1187645 () Bool)

(assert (=> d!826864 (=> res!1187645 e!1810501)))

(declare-fun lt!1014388 () Bool)

(assert (=> d!826864 (= res!1187645 (not lt!1014388))))

(assert (=> d!826864 (= lt!1014388 e!1810499)))

(declare-fun res!1187647 () Bool)

(assert (=> d!826864 (=> res!1187647 e!1810499)))

(assert (=> d!826864 (= res!1187647 (is-Nil!34073 (tail!4508 (t!233230 prefix!1470))))))

(assert (=> d!826864 (= (isPrefix!2680 (tail!4508 (t!233230 prefix!1470)) (tail!4508 lt!1014338)) lt!1014388)))

(assert (= (and d!826864 (not res!1187647)) b!2859349))

(assert (= (and b!2859349 res!1187648) b!2859350))

(assert (= (and b!2859350 res!1187646) b!2859351))

(assert (= (and d!826864 (not res!1187645)) b!2859352))

(assert (=> b!2859350 m!3280165))

(declare-fun m!3280269 () Bool)

(assert (=> b!2859350 m!3280269))

(assert (=> b!2859350 m!3280131))

(declare-fun m!3280271 () Bool)

(assert (=> b!2859350 m!3280271))

(assert (=> b!2859351 m!3280165))

(declare-fun m!3280273 () Bool)

(assert (=> b!2859351 m!3280273))

(assert (=> b!2859351 m!3280131))

(declare-fun m!3280275 () Bool)

(assert (=> b!2859351 m!3280275))

(assert (=> b!2859351 m!3280273))

(assert (=> b!2859351 m!3280275))

(declare-fun m!3280277 () Bool)

(assert (=> b!2859351 m!3280277))

(assert (=> b!2859352 m!3280131))

(declare-fun m!3280279 () Bool)

(assert (=> b!2859352 m!3280279))

(assert (=> b!2859352 m!3280165))

(declare-fun m!3280281 () Bool)

(assert (=> b!2859352 m!3280281))

(assert (=> b!2859128 d!826864))

(declare-fun d!826866 () Bool)

(assert (=> d!826866 (= (tail!4508 (t!233230 prefix!1470)) (t!233230 (t!233230 prefix!1470)))))

(assert (=> b!2859128 d!826866))

(declare-fun d!826868 () Bool)

(assert (=> d!826868 (= (tail!4508 lt!1014338) (t!233230 lt!1014338))))

(assert (=> b!2859128 d!826868))

(declare-fun d!826870 () Bool)

(declare-fun lostCauseFct!219 (Regex!8600) Bool)

(assert (=> d!826870 (= (lostCause!753 r!23423) (lostCauseFct!219 r!23423))))

(declare-fun bs!520357 () Bool)

(assert (= bs!520357 d!826870))

(declare-fun m!3280283 () Bool)

(assert (=> bs!520357 m!3280283))

(assert (=> b!2859148 d!826870))

(declare-fun d!826872 () Bool)

(assert (=> d!826872 (= (isEmpty!18608 (tail!4508 lt!1014340)) (is-Nil!34073 (tail!4508 lt!1014340)))))

(assert (=> b!2859137 d!826872))

(declare-fun d!826874 () Bool)

(assert (=> d!826874 (= (tail!4508 lt!1014340) (t!233230 lt!1014340))))

(assert (=> b!2859137 d!826874))

(declare-fun d!826876 () Bool)

(assert (=> d!826876 (= (head!6283 (t!233230 prefix!1470)) (h!39493 (t!233230 prefix!1470)))))

(assert (=> b!2859127 d!826876))

(declare-fun d!826878 () Bool)

(assert (=> d!826878 (= (head!6283 lt!1014338) (h!39493 lt!1014338))))

(assert (=> b!2859127 d!826878))

(declare-fun d!826880 () Bool)

(assert (=> d!826880 (= (isEmpty!18608 lt!1014340) (is-Nil!34073 lt!1014340))))

(assert (=> bm!184304 d!826880))

(declare-fun bm!184330 () Bool)

(declare-fun call!184336 () Bool)

(declare-fun call!184337 () Bool)

(assert (=> bm!184330 (= call!184336 call!184337)))

(declare-fun b!2859353 () Bool)

(declare-fun res!1187651 () Bool)

(declare-fun e!1810504 () Bool)

(assert (=> b!2859353 (=> (not res!1187651) (not e!1810504))))

(declare-fun call!184335 () Bool)

(assert (=> b!2859353 (= res!1187651 call!184335)))

(declare-fun e!1810503 () Bool)

(assert (=> b!2859353 (= e!1810503 e!1810504)))

(declare-fun b!2859354 () Bool)

(declare-fun e!1810502 () Bool)

(assert (=> b!2859354 (= e!1810502 call!184336)))

(declare-fun b!2859355 () Bool)

(assert (=> b!2859355 (= e!1810504 call!184336)))

(declare-fun bm!184331 () Bool)

(declare-fun c!460817 () Bool)

(declare-fun c!460818 () Bool)

(assert (=> bm!184331 (= call!184337 (validRegex!3470 (ite c!460817 (reg!8929 (ite c!460774 (regOne!17713 r!23423) (regOne!17712 r!23423))) (ite c!460818 (regTwo!17713 (ite c!460774 (regOne!17713 r!23423) (regOne!17712 r!23423))) (regTwo!17712 (ite c!460774 (regOne!17713 r!23423) (regOne!17712 r!23423)))))))))

(declare-fun b!2859356 () Bool)

(declare-fun e!1810507 () Bool)

(declare-fun e!1810508 () Bool)

(assert (=> b!2859356 (= e!1810507 e!1810508)))

(declare-fun res!1187653 () Bool)

(assert (=> b!2859356 (= res!1187653 (not (nullable!2654 (reg!8929 (ite c!460774 (regOne!17713 r!23423) (regOne!17712 r!23423))))))))

(assert (=> b!2859356 (=> (not res!1187653) (not e!1810508))))

(declare-fun bm!184332 () Bool)

(assert (=> bm!184332 (= call!184335 (validRegex!3470 (ite c!460818 (regOne!17713 (ite c!460774 (regOne!17713 r!23423) (regOne!17712 r!23423))) (regOne!17712 (ite c!460774 (regOne!17713 r!23423) (regOne!17712 r!23423))))))))

(declare-fun d!826882 () Bool)

(declare-fun res!1187652 () Bool)

(declare-fun e!1810505 () Bool)

(assert (=> d!826882 (=> res!1187652 e!1810505)))

(assert (=> d!826882 (= res!1187652 (is-ElementMatch!8600 (ite c!460774 (regOne!17713 r!23423) (regOne!17712 r!23423))))))

(assert (=> d!826882 (= (validRegex!3470 (ite c!460774 (regOne!17713 r!23423) (regOne!17712 r!23423))) e!1810505)))

(declare-fun b!2859357 () Bool)

(declare-fun e!1810506 () Bool)

(assert (=> b!2859357 (= e!1810506 e!1810502)))

(declare-fun res!1187650 () Bool)

(assert (=> b!2859357 (=> (not res!1187650) (not e!1810502))))

(assert (=> b!2859357 (= res!1187650 call!184335)))

(declare-fun b!2859358 () Bool)

(assert (=> b!2859358 (= e!1810507 e!1810503)))

(assert (=> b!2859358 (= c!460818 (is-Union!8600 (ite c!460774 (regOne!17713 r!23423) (regOne!17712 r!23423))))))

(declare-fun b!2859359 () Bool)

(assert (=> b!2859359 (= e!1810505 e!1810507)))

(assert (=> b!2859359 (= c!460817 (is-Star!8600 (ite c!460774 (regOne!17713 r!23423) (regOne!17712 r!23423))))))

(declare-fun b!2859360 () Bool)

(declare-fun res!1187649 () Bool)

(assert (=> b!2859360 (=> res!1187649 e!1810506)))

(assert (=> b!2859360 (= res!1187649 (not (is-Concat!13921 (ite c!460774 (regOne!17713 r!23423) (regOne!17712 r!23423)))))))

(assert (=> b!2859360 (= e!1810503 e!1810506)))

(declare-fun b!2859361 () Bool)

(assert (=> b!2859361 (= e!1810508 call!184337)))

(assert (= (and d!826882 (not res!1187652)) b!2859359))

(assert (= (and b!2859359 c!460817) b!2859356))

(assert (= (and b!2859359 (not c!460817)) b!2859358))

(assert (= (and b!2859356 res!1187653) b!2859361))

(assert (= (and b!2859358 c!460818) b!2859353))

(assert (= (and b!2859358 (not c!460818)) b!2859360))

(assert (= (and b!2859353 res!1187651) b!2859355))

(assert (= (and b!2859360 (not res!1187649)) b!2859357))

(assert (= (and b!2859357 res!1187650) b!2859354))

(assert (= (or b!2859355 b!2859354) bm!184330))

(assert (= (or b!2859353 b!2859357) bm!184332))

(assert (= (or b!2859361 bm!184330) bm!184331))

(declare-fun m!3280285 () Bool)

(assert (=> bm!184331 m!3280285))

(declare-fun m!3280287 () Bool)

(assert (=> b!2859356 m!3280287))

(declare-fun m!3280289 () Bool)

(assert (=> bm!184332 m!3280289))

(assert (=> bm!184303 d!826882))

(declare-fun bm!184333 () Bool)

(declare-fun call!184339 () Bool)

(declare-fun call!184340 () Bool)

(assert (=> bm!184333 (= call!184339 call!184340)))

(declare-fun b!2859362 () Bool)

(declare-fun res!1187656 () Bool)

(declare-fun e!1810511 () Bool)

(assert (=> b!2859362 (=> (not res!1187656) (not e!1810511))))

(declare-fun call!184338 () Bool)

(assert (=> b!2859362 (= res!1187656 call!184338)))

(declare-fun e!1810510 () Bool)

(assert (=> b!2859362 (= e!1810510 e!1810511)))

(declare-fun b!2859363 () Bool)

(declare-fun e!1810509 () Bool)

(assert (=> b!2859363 (= e!1810509 call!184339)))

(declare-fun b!2859364 () Bool)

(assert (=> b!2859364 (= e!1810511 call!184339)))

(declare-fun bm!184334 () Bool)

(declare-fun c!460819 () Bool)

(declare-fun c!460820 () Bool)

(assert (=> bm!184334 (= call!184340 (validRegex!3470 (ite c!460819 (reg!8929 lt!1014364) (ite c!460820 (regTwo!17713 lt!1014364) (regTwo!17712 lt!1014364)))))))

(declare-fun b!2859365 () Bool)

(declare-fun e!1810514 () Bool)

(declare-fun e!1810515 () Bool)

(assert (=> b!2859365 (= e!1810514 e!1810515)))

(declare-fun res!1187658 () Bool)

(assert (=> b!2859365 (= res!1187658 (not (nullable!2654 (reg!8929 lt!1014364))))))

(assert (=> b!2859365 (=> (not res!1187658) (not e!1810515))))

(declare-fun bm!184335 () Bool)

(assert (=> bm!184335 (= call!184338 (validRegex!3470 (ite c!460820 (regOne!17713 lt!1014364) (regOne!17712 lt!1014364))))))

(declare-fun d!826884 () Bool)

(declare-fun res!1187657 () Bool)

(declare-fun e!1810512 () Bool)

(assert (=> d!826884 (=> res!1187657 e!1810512)))

(assert (=> d!826884 (= res!1187657 (is-ElementMatch!8600 lt!1014364))))

(assert (=> d!826884 (= (validRegex!3470 lt!1014364) e!1810512)))

(declare-fun b!2859366 () Bool)

(declare-fun e!1810513 () Bool)

(assert (=> b!2859366 (= e!1810513 e!1810509)))

(declare-fun res!1187655 () Bool)

(assert (=> b!2859366 (=> (not res!1187655) (not e!1810509))))

(assert (=> b!2859366 (= res!1187655 call!184338)))

(declare-fun b!2859367 () Bool)

(assert (=> b!2859367 (= e!1810514 e!1810510)))

(assert (=> b!2859367 (= c!460820 (is-Union!8600 lt!1014364))))

(declare-fun b!2859368 () Bool)

(assert (=> b!2859368 (= e!1810512 e!1810514)))

(assert (=> b!2859368 (= c!460819 (is-Star!8600 lt!1014364))))

(declare-fun b!2859369 () Bool)

(declare-fun res!1187654 () Bool)

(assert (=> b!2859369 (=> res!1187654 e!1810513)))

(assert (=> b!2859369 (= res!1187654 (not (is-Concat!13921 lt!1014364)))))

(assert (=> b!2859369 (= e!1810510 e!1810513)))

(declare-fun b!2859370 () Bool)

(assert (=> b!2859370 (= e!1810515 call!184340)))

(assert (= (and d!826884 (not res!1187657)) b!2859368))

(assert (= (and b!2859368 c!460819) b!2859365))

(assert (= (and b!2859368 (not c!460819)) b!2859367))

(assert (= (and b!2859365 res!1187658) b!2859370))

(assert (= (and b!2859367 c!460820) b!2859362))

(assert (= (and b!2859367 (not c!460820)) b!2859369))

(assert (= (and b!2859362 res!1187656) b!2859364))

(assert (= (and b!2859369 (not res!1187654)) b!2859366))

(assert (= (and b!2859366 res!1187655) b!2859363))

(assert (= (or b!2859364 b!2859363) bm!184333))

(assert (= (or b!2859362 b!2859366) bm!184335))

(assert (= (or b!2859370 bm!184333) bm!184334))

(declare-fun m!3280291 () Bool)

(assert (=> bm!184334 m!3280291))

(declare-fun m!3280293 () Bool)

(assert (=> b!2859365 m!3280293))

(declare-fun m!3280295 () Bool)

(assert (=> bm!184335 m!3280295))

(assert (=> d!826820 d!826884))

(assert (=> d!826820 d!826832))

(assert (=> b!2859135 d!826872))

(assert (=> b!2859135 d!826874))

(declare-fun d!826886 () Bool)

(declare-fun nullableFct!803 (Regex!8600) Bool)

(assert (=> d!826886 (= (nullable!2654 (reg!8929 r!23423)) (nullableFct!803 (reg!8929 r!23423)))))

(declare-fun bs!520358 () Bool)

(assert (= bs!520358 d!826886))

(declare-fun m!3280297 () Bool)

(assert (=> bs!520358 m!3280297))

(assert (=> b!2859112 d!826886))

(declare-fun d!826888 () Bool)

(assert (=> d!826888 (= (nullable!2654 r!23423) (nullableFct!803 r!23423))))

(declare-fun bs!520359 () Bool)

(assert (= bs!520359 d!826888))

(declare-fun m!3280299 () Bool)

(assert (=> bs!520359 m!3280299))

(assert (=> b!2859134 d!826888))

(declare-fun d!826890 () Bool)

(assert (=> d!826890 (= (nullable!2654 lt!1014341) (nullableFct!803 lt!1014341))))

(declare-fun bs!520360 () Bool)

(assert (= bs!520360 d!826890))

(declare-fun m!3280301 () Bool)

(assert (=> bs!520360 m!3280301))

(assert (=> b!2859079 d!826890))

(declare-fun d!826892 () Bool)

(declare-fun lt!1014391 () Int)

(assert (=> d!826892 (>= lt!1014391 0)))

(declare-fun e!1810518 () Int)

(assert (=> d!826892 (= lt!1014391 e!1810518)))

(declare-fun c!460823 () Bool)

(assert (=> d!826892 (= c!460823 (is-Nil!34073 lt!1014340))))

(assert (=> d!826892 (= (size!26278 lt!1014340) lt!1014391)))

(declare-fun b!2859375 () Bool)

(assert (=> b!2859375 (= e!1810518 0)))

(declare-fun b!2859376 () Bool)

(assert (=> b!2859376 (= e!1810518 (+ 1 (size!26278 (t!233230 lt!1014340))))))

(assert (= (and d!826892 c!460823) b!2859375))

(assert (= (and d!826892 (not c!460823)) b!2859376))

(declare-fun m!3280303 () Bool)

(assert (=> b!2859376 m!3280303))

(assert (=> b!2859153 d!826892))

(declare-fun d!826894 () Bool)

(declare-fun lt!1014392 () Int)

(assert (=> d!826894 (>= lt!1014392 0)))

(declare-fun e!1810519 () Int)

(assert (=> d!826894 (= lt!1014392 e!1810519)))

(declare-fun c!460824 () Bool)

(assert (=> d!826894 (= c!460824 (is-Nil!34073 prefix!1470))))

(assert (=> d!826894 (= (size!26278 prefix!1470) lt!1014392)))

(declare-fun b!2859377 () Bool)

(assert (=> b!2859377 (= e!1810519 0)))

(declare-fun b!2859378 () Bool)

(assert (=> b!2859378 (= e!1810519 (+ 1 (size!26278 (t!233230 prefix!1470))))))

(assert (= (and d!826894 c!460824) b!2859377))

(assert (= (and d!826894 (not c!460824)) b!2859378))

(assert (=> b!2859378 m!3280171))

(assert (=> b!2859153 d!826894))

(declare-fun d!826896 () Bool)

(assert (=> d!826896 (= (head!6283 lt!1014340) (h!39493 lt!1014340))))

(assert (=> b!2859142 d!826896))

(declare-fun b!2859379 () Bool)

(declare-fun e!1810520 () Bool)

(declare-fun e!1810521 () Bool)

(assert (=> b!2859379 (= e!1810520 e!1810521)))

(declare-fun res!1187662 () Bool)

(assert (=> b!2859379 (=> (not res!1187662) (not e!1810521))))

(assert (=> b!2859379 (= res!1187662 (not (is-Nil!34073 (tail!4508 lt!1014340))))))

(declare-fun b!2859380 () Bool)

(declare-fun res!1187660 () Bool)

(assert (=> b!2859380 (=> (not res!1187660) (not e!1810521))))

(assert (=> b!2859380 (= res!1187660 (= (head!6283 (tail!4508 prefix!1470)) (head!6283 (tail!4508 lt!1014340))))))

(declare-fun b!2859381 () Bool)

(assert (=> b!2859381 (= e!1810521 (isPrefix!2680 (tail!4508 (tail!4508 prefix!1470)) (tail!4508 (tail!4508 lt!1014340))))))

(declare-fun b!2859382 () Bool)

(declare-fun e!1810522 () Bool)

(assert (=> b!2859382 (= e!1810522 (>= (size!26278 (tail!4508 lt!1014340)) (size!26278 (tail!4508 prefix!1470))))))

(declare-fun d!826898 () Bool)

(assert (=> d!826898 e!1810522))

(declare-fun res!1187659 () Bool)

(assert (=> d!826898 (=> res!1187659 e!1810522)))

(declare-fun lt!1014393 () Bool)

(assert (=> d!826898 (= res!1187659 (not lt!1014393))))

(assert (=> d!826898 (= lt!1014393 e!1810520)))

(declare-fun res!1187661 () Bool)

(assert (=> d!826898 (=> res!1187661 e!1810520)))

(assert (=> d!826898 (= res!1187661 (is-Nil!34073 (tail!4508 prefix!1470)))))

(assert (=> d!826898 (= (isPrefix!2680 (tail!4508 prefix!1470) (tail!4508 lt!1014340)) lt!1014393)))

(assert (= (and d!826898 (not res!1187661)) b!2859379))

(assert (= (and b!2859379 res!1187662) b!2859380))

(assert (= (and b!2859380 res!1187660) b!2859381))

(assert (= (and d!826898 (not res!1187659)) b!2859382))

(assert (=> b!2859380 m!3280195))

(declare-fun m!3280305 () Bool)

(assert (=> b!2859380 m!3280305))

(assert (=> b!2859380 m!3280173))

(declare-fun m!3280307 () Bool)

(assert (=> b!2859380 m!3280307))

(assert (=> b!2859381 m!3280195))

(declare-fun m!3280309 () Bool)

(assert (=> b!2859381 m!3280309))

(assert (=> b!2859381 m!3280173))

(declare-fun m!3280311 () Bool)

(assert (=> b!2859381 m!3280311))

(assert (=> b!2859381 m!3280309))

(assert (=> b!2859381 m!3280311))

(declare-fun m!3280313 () Bool)

(assert (=> b!2859381 m!3280313))

(assert (=> b!2859382 m!3280173))

(declare-fun m!3280315 () Bool)

(assert (=> b!2859382 m!3280315))

(assert (=> b!2859382 m!3280195))

(declare-fun m!3280317 () Bool)

(assert (=> b!2859382 m!3280317))

(assert (=> b!2859152 d!826898))

(declare-fun d!826900 () Bool)

(assert (=> d!826900 (= (tail!4508 prefix!1470) (t!233230 prefix!1470))))

(assert (=> b!2859152 d!826900))

(assert (=> b!2859152 d!826874))

(declare-fun b!2859383 () Bool)

(declare-fun e!1810523 () Bool)

(declare-fun e!1810524 () Bool)

(assert (=> b!2859383 (= e!1810523 e!1810524)))

(declare-fun res!1187666 () Bool)

(assert (=> b!2859383 (=> (not res!1187666) (not e!1810524))))

(assert (=> b!2859383 (= res!1187666 (not (is-Nil!34073 lt!1014359)))))

(declare-fun b!2859384 () Bool)

(declare-fun res!1187664 () Bool)

(assert (=> b!2859384 (=> (not res!1187664) (not e!1810524))))

(assert (=> b!2859384 (= res!1187664 (= (head!6283 (t!233230 prefix!1470)) (head!6283 lt!1014359)))))

(declare-fun b!2859385 () Bool)

(assert (=> b!2859385 (= e!1810524 (isPrefix!2680 (tail!4508 (t!233230 prefix!1470)) (tail!4508 lt!1014359)))))

(declare-fun b!2859386 () Bool)

(declare-fun e!1810525 () Bool)

(assert (=> b!2859386 (= e!1810525 (>= (size!26278 lt!1014359) (size!26278 (t!233230 prefix!1470))))))

(declare-fun d!826902 () Bool)

(assert (=> d!826902 e!1810525))

(declare-fun res!1187663 () Bool)

(assert (=> d!826902 (=> res!1187663 e!1810525)))

(declare-fun lt!1014394 () Bool)

(assert (=> d!826902 (= res!1187663 (not lt!1014394))))

(assert (=> d!826902 (= lt!1014394 e!1810523)))

(declare-fun res!1187665 () Bool)

(assert (=> d!826902 (=> res!1187665 e!1810523)))

(assert (=> d!826902 (= res!1187665 (is-Nil!34073 (t!233230 prefix!1470)))))

(assert (=> d!826902 (= (isPrefix!2680 (t!233230 prefix!1470) lt!1014359) lt!1014394)))

(assert (= (and d!826902 (not res!1187665)) b!2859383))

(assert (= (and b!2859383 res!1187666) b!2859384))

(assert (= (and b!2859384 res!1187664) b!2859385))

(assert (= (and d!826902 (not res!1187663)) b!2859386))

(assert (=> b!2859384 m!3280163))

(declare-fun m!3280319 () Bool)

(assert (=> b!2859384 m!3280319))

(assert (=> b!2859385 m!3280165))

(declare-fun m!3280321 () Bool)

(assert (=> b!2859385 m!3280321))

(assert (=> b!2859385 m!3280165))

(assert (=> b!2859385 m!3280321))

(declare-fun m!3280323 () Bool)

(assert (=> b!2859385 m!3280323))

(declare-fun m!3280325 () Bool)

(assert (=> b!2859386 m!3280325))

(assert (=> b!2859386 m!3280171))

(assert (=> b!2859189 d!826902))

(declare-fun b!2859387 () Bool)

(declare-fun e!1810528 () Regex!8600)

(declare-fun e!1810529 () Regex!8600)

(assert (=> b!2859387 (= e!1810528 e!1810529)))

(declare-fun c!460826 () Bool)

(assert (=> b!2859387 (= c!460826 (is-Star!8600 (ite c!460759 (regTwo!17713 r!23423) (ite c!460756 (reg!8929 r!23423) (ite c!460757 (regTwo!17712 r!23423) (regOne!17712 r!23423))))))))

(declare-fun call!184342 () Regex!8600)

(declare-fun c!460829 () Bool)

(declare-fun bm!184336 () Bool)

(assert (=> bm!184336 (= call!184342 (derivativeStep!2289 (ite c!460829 (regOne!17713 (ite c!460759 (regTwo!17713 r!23423) (ite c!460756 (reg!8929 r!23423) (ite c!460757 (regTwo!17712 r!23423) (regOne!17712 r!23423))))) (regOne!17712 (ite c!460759 (regTwo!17713 r!23423) (ite c!460756 (reg!8929 r!23423) (ite c!460757 (regTwo!17712 r!23423) (regOne!17712 r!23423)))))) (h!39493 prefix!1470)))))

(declare-fun c!460827 () Bool)

(declare-fun b!2859388 () Bool)

(assert (=> b!2859388 (= c!460827 (nullable!2654 (regOne!17712 (ite c!460759 (regTwo!17713 r!23423) (ite c!460756 (reg!8929 r!23423) (ite c!460757 (regTwo!17712 r!23423) (regOne!17712 r!23423)))))))))

(declare-fun e!1810526 () Regex!8600)

(assert (=> b!2859388 (= e!1810529 e!1810526)))

(declare-fun bm!184337 () Bool)

(declare-fun call!184341 () Regex!8600)

(declare-fun call!184343 () Regex!8600)

(assert (=> bm!184337 (= call!184341 call!184343)))

(declare-fun b!2859389 () Bool)

(assert (=> b!2859389 (= e!1810528 (Union!8600 call!184342 call!184343))))

(declare-fun d!826904 () Bool)

(declare-fun lt!1014395 () Regex!8600)

(assert (=> d!826904 (validRegex!3470 lt!1014395)))

(declare-fun e!1810527 () Regex!8600)

(assert (=> d!826904 (= lt!1014395 e!1810527)))

(declare-fun c!460825 () Bool)

(assert (=> d!826904 (= c!460825 (or (is-EmptyExpr!8600 (ite c!460759 (regTwo!17713 r!23423) (ite c!460756 (reg!8929 r!23423) (ite c!460757 (regTwo!17712 r!23423) (regOne!17712 r!23423))))) (is-EmptyLang!8600 (ite c!460759 (regTwo!17713 r!23423) (ite c!460756 (reg!8929 r!23423) (ite c!460757 (regTwo!17712 r!23423) (regOne!17712 r!23423)))))))))

(assert (=> d!826904 (validRegex!3470 (ite c!460759 (regTwo!17713 r!23423) (ite c!460756 (reg!8929 r!23423) (ite c!460757 (regTwo!17712 r!23423) (regOne!17712 r!23423)))))))

(assert (=> d!826904 (= (derivativeStep!2289 (ite c!460759 (regTwo!17713 r!23423) (ite c!460756 (reg!8929 r!23423) (ite c!460757 (regTwo!17712 r!23423) (regOne!17712 r!23423)))) (h!39493 prefix!1470)) lt!1014395)))

(declare-fun b!2859390 () Bool)

(declare-fun e!1810530 () Regex!8600)

(assert (=> b!2859390 (= e!1810530 (ite (= (h!39493 prefix!1470) (c!460743 (ite c!460759 (regTwo!17713 r!23423) (ite c!460756 (reg!8929 r!23423) (ite c!460757 (regTwo!17712 r!23423) (regOne!17712 r!23423)))))) EmptyExpr!8600 EmptyLang!8600))))

(declare-fun b!2859391 () Bool)

(assert (=> b!2859391 (= e!1810527 e!1810530)))

(declare-fun c!460828 () Bool)

(assert (=> b!2859391 (= c!460828 (is-ElementMatch!8600 (ite c!460759 (regTwo!17713 r!23423) (ite c!460756 (reg!8929 r!23423) (ite c!460757 (regTwo!17712 r!23423) (regOne!17712 r!23423))))))))

(declare-fun call!184344 () Regex!8600)

(declare-fun b!2859392 () Bool)

(assert (=> b!2859392 (= e!1810526 (Union!8600 (Concat!13921 call!184342 (regTwo!17712 (ite c!460759 (regTwo!17713 r!23423) (ite c!460756 (reg!8929 r!23423) (ite c!460757 (regTwo!17712 r!23423) (regOne!17712 r!23423)))))) call!184344))))

(declare-fun bm!184338 () Bool)

(assert (=> bm!184338 (= call!184344 call!184341)))

(declare-fun bm!184339 () Bool)

(assert (=> bm!184339 (= call!184343 (derivativeStep!2289 (ite c!460829 (regTwo!17713 (ite c!460759 (regTwo!17713 r!23423) (ite c!460756 (reg!8929 r!23423) (ite c!460757 (regTwo!17712 r!23423) (regOne!17712 r!23423))))) (ite c!460826 (reg!8929 (ite c!460759 (regTwo!17713 r!23423) (ite c!460756 (reg!8929 r!23423) (ite c!460757 (regTwo!17712 r!23423) (regOne!17712 r!23423))))) (ite c!460827 (regTwo!17712 (ite c!460759 (regTwo!17713 r!23423) (ite c!460756 (reg!8929 r!23423) (ite c!460757 (regTwo!17712 r!23423) (regOne!17712 r!23423))))) (regOne!17712 (ite c!460759 (regTwo!17713 r!23423) (ite c!460756 (reg!8929 r!23423) (ite c!460757 (regTwo!17712 r!23423) (regOne!17712 r!23423)))))))) (h!39493 prefix!1470)))))

(declare-fun b!2859393 () Bool)

(assert (=> b!2859393 (= e!1810529 (Concat!13921 call!184341 (ite c!460759 (regTwo!17713 r!23423) (ite c!460756 (reg!8929 r!23423) (ite c!460757 (regTwo!17712 r!23423) (regOne!17712 r!23423))))))))

(declare-fun b!2859394 () Bool)

(assert (=> b!2859394 (= c!460829 (is-Union!8600 (ite c!460759 (regTwo!17713 r!23423) (ite c!460756 (reg!8929 r!23423) (ite c!460757 (regTwo!17712 r!23423) (regOne!17712 r!23423))))))))

(assert (=> b!2859394 (= e!1810530 e!1810528)))

(declare-fun b!2859395 () Bool)

(assert (=> b!2859395 (= e!1810526 (Union!8600 (Concat!13921 call!184344 (regTwo!17712 (ite c!460759 (regTwo!17713 r!23423) (ite c!460756 (reg!8929 r!23423) (ite c!460757 (regTwo!17712 r!23423) (regOne!17712 r!23423)))))) EmptyLang!8600))))

(declare-fun b!2859396 () Bool)

(assert (=> b!2859396 (= e!1810527 EmptyLang!8600)))

(assert (= (and d!826904 c!460825) b!2859396))

(assert (= (and d!826904 (not c!460825)) b!2859391))

(assert (= (and b!2859391 c!460828) b!2859390))

(assert (= (and b!2859391 (not c!460828)) b!2859394))

(assert (= (and b!2859394 c!460829) b!2859389))

(assert (= (and b!2859394 (not c!460829)) b!2859387))

(assert (= (and b!2859387 c!460826) b!2859393))

(assert (= (and b!2859387 (not c!460826)) b!2859388))

(assert (= (and b!2859388 c!460827) b!2859392))

(assert (= (and b!2859388 (not c!460827)) b!2859395))

(assert (= (or b!2859392 b!2859395) bm!184338))

(assert (= (or b!2859393 bm!184338) bm!184337))

(assert (= (or b!2859389 bm!184337) bm!184339))

(assert (= (or b!2859389 b!2859392) bm!184336))

(declare-fun m!3280327 () Bool)

(assert (=> bm!184336 m!3280327))

(declare-fun m!3280329 () Bool)

(assert (=> b!2859388 m!3280329))

(declare-fun m!3280331 () Bool)

(assert (=> d!826904 m!3280331))

(declare-fun m!3280333 () Bool)

(assert (=> d!826904 m!3280333))

(declare-fun m!3280335 () Bool)

(assert (=> bm!184339 m!3280335))

(assert (=> bm!184291 d!826904))

(declare-fun d!826906 () Bool)

(assert (=> d!826906 (= (head!6283 prefix!1470) (h!39493 prefix!1470))))

(assert (=> b!2859151 d!826906))

(assert (=> b!2859151 d!826896))

(declare-fun d!826908 () Bool)

(assert (=> d!826908 (= (Exists!1304 lambda!105162) (choose!16825 lambda!105162))))

(declare-fun bs!520361 () Bool)

(assert (= bs!520361 d!826908))

(declare-fun m!3280337 () Bool)

(assert (=> bs!520361 m!3280337))

(assert (=> d!826816 d!826908))

(declare-fun bs!520362 () Bool)

(declare-fun d!826910 () Bool)

(assert (= bs!520362 (and d!826910 b!2858948)))

(declare-fun lambda!105168 () Int)

(assert (=> bs!520362 (= lambda!105168 lambda!105154)))

(declare-fun bs!520363 () Bool)

(assert (= bs!520363 (and d!826910 d!826816)))

(assert (=> bs!520363 (= lambda!105168 lambda!105162)))

(assert (=> d!826910 true))

(assert (=> d!826910 true))

(assert (=> d!826910 (Exists!1304 lambda!105168)))

(assert (=> d!826910 true))

(declare-fun _$103!170 () Unit!47743)

(assert (=> d!826910 (= (choose!16823 lt!1014341 (t!233230 prefix!1470)) _$103!170)))

(declare-fun bs!520364 () Bool)

(assert (= bs!520364 d!826910))

(declare-fun m!3280339 () Bool)

(assert (=> bs!520364 m!3280339))

(assert (=> d!826816 d!826910))

(declare-fun bm!184340 () Bool)

(declare-fun call!184346 () Bool)

(declare-fun call!184347 () Bool)

(assert (=> bm!184340 (= call!184346 call!184347)))

(declare-fun b!2859399 () Bool)

(declare-fun res!1187671 () Bool)

(declare-fun e!1810535 () Bool)

(assert (=> b!2859399 (=> (not res!1187671) (not e!1810535))))

(declare-fun call!184345 () Bool)

(assert (=> b!2859399 (= res!1187671 call!184345)))

(declare-fun e!1810534 () Bool)

(assert (=> b!2859399 (= e!1810534 e!1810535)))

(declare-fun b!2859400 () Bool)

(declare-fun e!1810533 () Bool)

(assert (=> b!2859400 (= e!1810533 call!184346)))

(declare-fun b!2859401 () Bool)

(assert (=> b!2859401 (= e!1810535 call!184346)))

(declare-fun bm!184341 () Bool)

(declare-fun c!460830 () Bool)

(declare-fun c!460831 () Bool)

(assert (=> bm!184341 (= call!184347 (validRegex!3470 (ite c!460830 (reg!8929 lt!1014341) (ite c!460831 (regTwo!17713 lt!1014341) (regTwo!17712 lt!1014341)))))))

(declare-fun b!2859402 () Bool)

(declare-fun e!1810538 () Bool)

(declare-fun e!1810539 () Bool)

(assert (=> b!2859402 (= e!1810538 e!1810539)))

(declare-fun res!1187673 () Bool)

(assert (=> b!2859402 (= res!1187673 (not (nullable!2654 (reg!8929 lt!1014341))))))

(assert (=> b!2859402 (=> (not res!1187673) (not e!1810539))))

(declare-fun bm!184342 () Bool)

(assert (=> bm!184342 (= call!184345 (validRegex!3470 (ite c!460831 (regOne!17713 lt!1014341) (regOne!17712 lt!1014341))))))

(declare-fun d!826912 () Bool)

(declare-fun res!1187672 () Bool)

(declare-fun e!1810536 () Bool)

(assert (=> d!826912 (=> res!1187672 e!1810536)))

(assert (=> d!826912 (= res!1187672 (is-ElementMatch!8600 lt!1014341))))

(assert (=> d!826912 (= (validRegex!3470 lt!1014341) e!1810536)))

(declare-fun b!2859403 () Bool)

(declare-fun e!1810537 () Bool)

(assert (=> b!2859403 (= e!1810537 e!1810533)))

(declare-fun res!1187670 () Bool)

(assert (=> b!2859403 (=> (not res!1187670) (not e!1810533))))

(assert (=> b!2859403 (= res!1187670 call!184345)))

(declare-fun b!2859404 () Bool)

(assert (=> b!2859404 (= e!1810538 e!1810534)))

(assert (=> b!2859404 (= c!460831 (is-Union!8600 lt!1014341))))

(declare-fun b!2859405 () Bool)

(assert (=> b!2859405 (= e!1810536 e!1810538)))

(assert (=> b!2859405 (= c!460830 (is-Star!8600 lt!1014341))))

(declare-fun b!2859406 () Bool)

(declare-fun res!1187669 () Bool)

(assert (=> b!2859406 (=> res!1187669 e!1810537)))

(assert (=> b!2859406 (= res!1187669 (not (is-Concat!13921 lt!1014341)))))

(assert (=> b!2859406 (= e!1810534 e!1810537)))

(declare-fun b!2859407 () Bool)

(assert (=> b!2859407 (= e!1810539 call!184347)))

(assert (= (and d!826912 (not res!1187672)) b!2859405))

(assert (= (and b!2859405 c!460830) b!2859402))

(assert (= (and b!2859405 (not c!460830)) b!2859404))

(assert (= (and b!2859402 res!1187673) b!2859407))

(assert (= (and b!2859404 c!460831) b!2859399))

(assert (= (and b!2859404 (not c!460831)) b!2859406))

(assert (= (and b!2859399 res!1187671) b!2859401))

(assert (= (and b!2859406 (not res!1187669)) b!2859403))

(assert (= (and b!2859403 res!1187670) b!2859400))

(assert (= (or b!2859401 b!2859400) bm!184340))

(assert (= (or b!2859399 b!2859403) bm!184342))

(assert (= (or b!2859407 bm!184340) bm!184341))

(declare-fun m!3280341 () Bool)

(assert (=> bm!184341 m!3280341))

(declare-fun m!3280343 () Bool)

(assert (=> b!2859402 m!3280343))

(declare-fun m!3280345 () Bool)

(assert (=> bm!184342 m!3280345))

(assert (=> d!826816 d!826912))

(declare-fun b!2859408 () Bool)

(declare-fun e!1810544 () Bool)

(assert (=> b!2859408 (= e!1810544 (matchR!3706 (derivativeStep!2289 (derivativeStep!2289 lt!1014341 (head!6283 lt!1014338)) (head!6283 (tail!4508 lt!1014338))) (tail!4508 (tail!4508 lt!1014338))))))

(declare-fun b!2859409 () Bool)

(declare-fun e!1810541 () Bool)

(declare-fun e!1810545 () Bool)

(assert (=> b!2859409 (= e!1810541 e!1810545)))

(declare-fun res!1187678 () Bool)

(assert (=> b!2859409 (=> (not res!1187678) (not e!1810545))))

(declare-fun lt!1014396 () Bool)

(assert (=> b!2859409 (= res!1187678 (not lt!1014396))))

(declare-fun b!2859410 () Bool)

(declare-fun e!1810542 () Bool)

(assert (=> b!2859410 (= e!1810545 e!1810542)))

(declare-fun res!1187680 () Bool)

(assert (=> b!2859410 (=> res!1187680 e!1810542)))

(declare-fun call!184348 () Bool)

(assert (=> b!2859410 (= res!1187680 call!184348)))

(declare-fun b!2859411 () Bool)

(declare-fun res!1187675 () Bool)

(assert (=> b!2859411 (=> res!1187675 e!1810541)))

(declare-fun e!1810540 () Bool)

(assert (=> b!2859411 (= res!1187675 e!1810540)))

(declare-fun res!1187677 () Bool)

(assert (=> b!2859411 (=> (not res!1187677) (not e!1810540))))

(assert (=> b!2859411 (= res!1187677 lt!1014396)))

(declare-fun b!2859412 () Bool)

(assert (=> b!2859412 (= e!1810544 (nullable!2654 (derivativeStep!2289 lt!1014341 (head!6283 lt!1014338))))))

(declare-fun b!2859413 () Bool)

(declare-fun res!1187676 () Bool)

(assert (=> b!2859413 (=> res!1187676 e!1810542)))

(assert (=> b!2859413 (= res!1187676 (not (isEmpty!18608 (tail!4508 (tail!4508 lt!1014338)))))))

(declare-fun bm!184343 () Bool)

(assert (=> bm!184343 (= call!184348 (isEmpty!18608 (tail!4508 lt!1014338)))))

(declare-fun b!2859414 () Bool)

(declare-fun e!1810543 () Bool)

(declare-fun e!1810546 () Bool)

(assert (=> b!2859414 (= e!1810543 e!1810546)))

(declare-fun c!460833 () Bool)

(assert (=> b!2859414 (= c!460833 (is-EmptyLang!8600 (derivativeStep!2289 lt!1014341 (head!6283 lt!1014338))))))

(declare-fun b!2859415 () Bool)

(declare-fun res!1187679 () Bool)

(assert (=> b!2859415 (=> (not res!1187679) (not e!1810540))))

(assert (=> b!2859415 (= res!1187679 (isEmpty!18608 (tail!4508 (tail!4508 lt!1014338))))))

(declare-fun d!826914 () Bool)

(assert (=> d!826914 e!1810543))

(declare-fun c!460834 () Bool)

(assert (=> d!826914 (= c!460834 (is-EmptyExpr!8600 (derivativeStep!2289 lt!1014341 (head!6283 lt!1014338))))))

(assert (=> d!826914 (= lt!1014396 e!1810544)))

(declare-fun c!460832 () Bool)

(assert (=> d!826914 (= c!460832 (isEmpty!18608 (tail!4508 lt!1014338)))))

(assert (=> d!826914 (validRegex!3470 (derivativeStep!2289 lt!1014341 (head!6283 lt!1014338)))))

(assert (=> d!826914 (= (matchR!3706 (derivativeStep!2289 lt!1014341 (head!6283 lt!1014338)) (tail!4508 lt!1014338)) lt!1014396)))

(declare-fun b!2859416 () Bool)

(declare-fun res!1187681 () Bool)

(assert (=> b!2859416 (=> (not res!1187681) (not e!1810540))))

(assert (=> b!2859416 (= res!1187681 (not call!184348))))

(declare-fun b!2859417 () Bool)

(assert (=> b!2859417 (= e!1810542 (not (= (head!6283 (tail!4508 lt!1014338)) (c!460743 (derivativeStep!2289 lt!1014341 (head!6283 lt!1014338))))))))

(declare-fun b!2859418 () Bool)

(assert (=> b!2859418 (= e!1810546 (not lt!1014396))))

(declare-fun b!2859419 () Bool)

(declare-fun res!1187674 () Bool)

(assert (=> b!2859419 (=> res!1187674 e!1810541)))

(assert (=> b!2859419 (= res!1187674 (not (is-ElementMatch!8600 (derivativeStep!2289 lt!1014341 (head!6283 lt!1014338)))))))

(assert (=> b!2859419 (= e!1810546 e!1810541)))

(declare-fun b!2859420 () Bool)

(assert (=> b!2859420 (= e!1810540 (= (head!6283 (tail!4508 lt!1014338)) (c!460743 (derivativeStep!2289 lt!1014341 (head!6283 lt!1014338)))))))

(declare-fun b!2859421 () Bool)

(assert (=> b!2859421 (= e!1810543 (= lt!1014396 call!184348))))

(assert (= (and d!826914 c!460832) b!2859412))

(assert (= (and d!826914 (not c!460832)) b!2859408))

(assert (= (and d!826914 c!460834) b!2859421))

(assert (= (and d!826914 (not c!460834)) b!2859414))

(assert (= (and b!2859414 c!460833) b!2859418))

(assert (= (and b!2859414 (not c!460833)) b!2859419))

(assert (= (and b!2859419 (not res!1187674)) b!2859411))

(assert (= (and b!2859411 res!1187677) b!2859416))

(assert (= (and b!2859416 res!1187681) b!2859415))

(assert (= (and b!2859415 res!1187679) b!2859420))

(assert (= (and b!2859411 (not res!1187675)) b!2859409))

(assert (= (and b!2859409 res!1187678) b!2859410))

(assert (= (and b!2859410 (not res!1187680)) b!2859413))

(assert (= (and b!2859413 (not res!1187676)) b!2859417))

(assert (= (or b!2859421 b!2859410 b!2859416) bm!184343))

(assert (=> b!2859413 m!3280131))

(assert (=> b!2859413 m!3280275))

(assert (=> b!2859413 m!3280275))

(declare-fun m!3280347 () Bool)

(assert (=> b!2859413 m!3280347))

(assert (=> b!2859415 m!3280131))

(assert (=> b!2859415 m!3280275))

(assert (=> b!2859415 m!3280275))

(assert (=> b!2859415 m!3280347))

(assert (=> b!2859417 m!3280131))

(assert (=> b!2859417 m!3280271))

(assert (=> bm!184343 m!3280131))

(assert (=> bm!184343 m!3280133))

(assert (=> d!826914 m!3280131))

(assert (=> d!826914 m!3280133))

(assert (=> d!826914 m!3280139))

(declare-fun m!3280349 () Bool)

(assert (=> d!826914 m!3280349))

(assert (=> b!2859408 m!3280131))

(assert (=> b!2859408 m!3280271))

(assert (=> b!2859408 m!3280139))

(assert (=> b!2859408 m!3280271))

(declare-fun m!3280351 () Bool)

(assert (=> b!2859408 m!3280351))

(assert (=> b!2859408 m!3280131))

(assert (=> b!2859408 m!3280275))

(assert (=> b!2859408 m!3280351))

(assert (=> b!2859408 m!3280275))

(declare-fun m!3280353 () Bool)

(assert (=> b!2859408 m!3280353))

(assert (=> b!2859412 m!3280139))

(declare-fun m!3280355 () Bool)

(assert (=> b!2859412 m!3280355))

(assert (=> b!2859420 m!3280131))

(assert (=> b!2859420 m!3280271))

(assert (=> b!2859075 d!826914))

(declare-fun b!2859422 () Bool)

(declare-fun e!1810549 () Regex!8600)

(declare-fun e!1810550 () Regex!8600)

(assert (=> b!2859422 (= e!1810549 e!1810550)))

(declare-fun c!460836 () Bool)

(assert (=> b!2859422 (= c!460836 (is-Star!8600 lt!1014341))))

(declare-fun bm!184344 () Bool)

(declare-fun call!184350 () Regex!8600)

(declare-fun c!460839 () Bool)

(assert (=> bm!184344 (= call!184350 (derivativeStep!2289 (ite c!460839 (regOne!17713 lt!1014341) (regOne!17712 lt!1014341)) (head!6283 lt!1014338)))))

(declare-fun b!2859423 () Bool)

(declare-fun c!460837 () Bool)

(assert (=> b!2859423 (= c!460837 (nullable!2654 (regOne!17712 lt!1014341)))))

(declare-fun e!1810547 () Regex!8600)

(assert (=> b!2859423 (= e!1810550 e!1810547)))

(declare-fun bm!184345 () Bool)

(declare-fun call!184349 () Regex!8600)

(declare-fun call!184351 () Regex!8600)

(assert (=> bm!184345 (= call!184349 call!184351)))

(declare-fun b!2859424 () Bool)

(assert (=> b!2859424 (= e!1810549 (Union!8600 call!184350 call!184351))))

(declare-fun d!826916 () Bool)

(declare-fun lt!1014397 () Regex!8600)

(assert (=> d!826916 (validRegex!3470 lt!1014397)))

(declare-fun e!1810548 () Regex!8600)

(assert (=> d!826916 (= lt!1014397 e!1810548)))

(declare-fun c!460835 () Bool)

(assert (=> d!826916 (= c!460835 (or (is-EmptyExpr!8600 lt!1014341) (is-EmptyLang!8600 lt!1014341)))))

(assert (=> d!826916 (validRegex!3470 lt!1014341)))

(assert (=> d!826916 (= (derivativeStep!2289 lt!1014341 (head!6283 lt!1014338)) lt!1014397)))

(declare-fun b!2859425 () Bool)

(declare-fun e!1810551 () Regex!8600)

(assert (=> b!2859425 (= e!1810551 (ite (= (head!6283 lt!1014338) (c!460743 lt!1014341)) EmptyExpr!8600 EmptyLang!8600))))

(declare-fun b!2859426 () Bool)

(assert (=> b!2859426 (= e!1810548 e!1810551)))

(declare-fun c!460838 () Bool)

(assert (=> b!2859426 (= c!460838 (is-ElementMatch!8600 lt!1014341))))

(declare-fun call!184352 () Regex!8600)

(declare-fun b!2859427 () Bool)

(assert (=> b!2859427 (= e!1810547 (Union!8600 (Concat!13921 call!184350 (regTwo!17712 lt!1014341)) call!184352))))

(declare-fun bm!184346 () Bool)

(assert (=> bm!184346 (= call!184352 call!184349)))

(declare-fun bm!184347 () Bool)

(assert (=> bm!184347 (= call!184351 (derivativeStep!2289 (ite c!460839 (regTwo!17713 lt!1014341) (ite c!460836 (reg!8929 lt!1014341) (ite c!460837 (regTwo!17712 lt!1014341) (regOne!17712 lt!1014341)))) (head!6283 lt!1014338)))))

(declare-fun b!2859428 () Bool)

(assert (=> b!2859428 (= e!1810550 (Concat!13921 call!184349 lt!1014341))))

(declare-fun b!2859429 () Bool)

(assert (=> b!2859429 (= c!460839 (is-Union!8600 lt!1014341))))

(assert (=> b!2859429 (= e!1810551 e!1810549)))

(declare-fun b!2859430 () Bool)

(assert (=> b!2859430 (= e!1810547 (Union!8600 (Concat!13921 call!184352 (regTwo!17712 lt!1014341)) EmptyLang!8600))))

(declare-fun b!2859431 () Bool)

(assert (=> b!2859431 (= e!1810548 EmptyLang!8600)))

(assert (= (and d!826916 c!460835) b!2859431))

(assert (= (and d!826916 (not c!460835)) b!2859426))

(assert (= (and b!2859426 c!460838) b!2859425))

(assert (= (and b!2859426 (not c!460838)) b!2859429))

(assert (= (and b!2859429 c!460839) b!2859424))

(assert (= (and b!2859429 (not c!460839)) b!2859422))

(assert (= (and b!2859422 c!460836) b!2859428))

(assert (= (and b!2859422 (not c!460836)) b!2859423))

(assert (= (and b!2859423 c!460837) b!2859427))

(assert (= (and b!2859423 (not c!460837)) b!2859430))

(assert (= (or b!2859427 b!2859430) bm!184346))

(assert (= (or b!2859428 bm!184346) bm!184345))

(assert (= (or b!2859424 bm!184345) bm!184347))

(assert (= (or b!2859424 b!2859427) bm!184344))

(assert (=> bm!184344 m!3280135))

(declare-fun m!3280357 () Bool)

(assert (=> bm!184344 m!3280357))

(declare-fun m!3280359 () Bool)

(assert (=> b!2859423 m!3280359))

(declare-fun m!3280361 () Bool)

(assert (=> d!826916 m!3280361))

(assert (=> d!826916 m!3280101))

(assert (=> bm!184347 m!3280135))

(declare-fun m!3280363 () Bool)

(assert (=> bm!184347 m!3280363))

(assert (=> b!2859075 d!826916))

(assert (=> b!2859075 d!826878))

(assert (=> b!2859075 d!826868))

(assert (=> b!2859139 d!826896))

(declare-fun d!826918 () Bool)

(declare-fun lt!1014398 () Int)

(assert (=> d!826918 (>= lt!1014398 0)))

(declare-fun e!1810552 () Int)

(assert (=> d!826918 (= lt!1014398 e!1810552)))

(declare-fun c!460840 () Bool)

(assert (=> d!826918 (= c!460840 (is-Nil!34073 lt!1014338))))

(assert (=> d!826918 (= (size!26278 lt!1014338) lt!1014398)))

(declare-fun b!2859432 () Bool)

(assert (=> b!2859432 (= e!1810552 0)))

(declare-fun b!2859433 () Bool)

(assert (=> b!2859433 (= e!1810552 (+ 1 (size!26278 (t!233230 lt!1014338))))))

(assert (= (and d!826918 c!460840) b!2859432))

(assert (= (and d!826918 (not c!460840)) b!2859433))

(declare-fun m!3280365 () Bool)

(assert (=> b!2859433 m!3280365))

(assert (=> b!2859129 d!826918))

(declare-fun d!826920 () Bool)

(declare-fun lt!1014399 () Int)

(assert (=> d!826920 (>= lt!1014399 0)))

(declare-fun e!1810553 () Int)

(assert (=> d!826920 (= lt!1014399 e!1810553)))

(declare-fun c!460841 () Bool)

(assert (=> d!826920 (= c!460841 (is-Nil!34073 (t!233230 prefix!1470)))))

(assert (=> d!826920 (= (size!26278 (t!233230 prefix!1470)) lt!1014399)))

(declare-fun b!2859434 () Bool)

(assert (=> b!2859434 (= e!1810553 0)))

(declare-fun b!2859435 () Bool)

(assert (=> b!2859435 (= e!1810553 (+ 1 (size!26278 (t!233230 (t!233230 prefix!1470)))))))

(assert (= (and d!826920 c!460841) b!2859434))

(assert (= (and d!826920 (not c!460841)) b!2859435))

(declare-fun m!3280367 () Bool)

(assert (=> b!2859435 m!3280367))

(assert (=> b!2859129 d!826920))

(declare-fun b!2859436 () Bool)

(declare-fun e!1810558 () Bool)

(assert (=> b!2859436 (= e!1810558 (matchR!3706 (derivativeStep!2289 lt!1014341 (head!6283 lt!1014359)) (tail!4508 lt!1014359)))))

(declare-fun b!2859437 () Bool)

(declare-fun e!1810555 () Bool)

(declare-fun e!1810559 () Bool)

(assert (=> b!2859437 (= e!1810555 e!1810559)))

(declare-fun res!1187686 () Bool)

(assert (=> b!2859437 (=> (not res!1187686) (not e!1810559))))

(declare-fun lt!1014400 () Bool)

(assert (=> b!2859437 (= res!1187686 (not lt!1014400))))

(declare-fun b!2859438 () Bool)

(declare-fun e!1810556 () Bool)

(assert (=> b!2859438 (= e!1810559 e!1810556)))

(declare-fun res!1187688 () Bool)

(assert (=> b!2859438 (=> res!1187688 e!1810556)))

(declare-fun call!184353 () Bool)

(assert (=> b!2859438 (= res!1187688 call!184353)))

(declare-fun b!2859439 () Bool)

(declare-fun res!1187683 () Bool)

(assert (=> b!2859439 (=> res!1187683 e!1810555)))

(declare-fun e!1810554 () Bool)

(assert (=> b!2859439 (= res!1187683 e!1810554)))

(declare-fun res!1187685 () Bool)

(assert (=> b!2859439 (=> (not res!1187685) (not e!1810554))))

(assert (=> b!2859439 (= res!1187685 lt!1014400)))

(declare-fun b!2859440 () Bool)

(assert (=> b!2859440 (= e!1810558 (nullable!2654 lt!1014341))))

(declare-fun b!2859441 () Bool)

(declare-fun res!1187684 () Bool)

(assert (=> b!2859441 (=> res!1187684 e!1810556)))

(assert (=> b!2859441 (= res!1187684 (not (isEmpty!18608 (tail!4508 lt!1014359))))))

(declare-fun bm!184348 () Bool)

(assert (=> bm!184348 (= call!184353 (isEmpty!18608 lt!1014359))))

(declare-fun b!2859442 () Bool)

(declare-fun e!1810557 () Bool)

(declare-fun e!1810560 () Bool)

(assert (=> b!2859442 (= e!1810557 e!1810560)))

(declare-fun c!460843 () Bool)

(assert (=> b!2859442 (= c!460843 (is-EmptyLang!8600 lt!1014341))))

(declare-fun b!2859443 () Bool)

(declare-fun res!1187687 () Bool)

(assert (=> b!2859443 (=> (not res!1187687) (not e!1810554))))

(assert (=> b!2859443 (= res!1187687 (isEmpty!18608 (tail!4508 lt!1014359)))))

(declare-fun d!826922 () Bool)

(assert (=> d!826922 e!1810557))

(declare-fun c!460844 () Bool)

(assert (=> d!826922 (= c!460844 (is-EmptyExpr!8600 lt!1014341))))

(assert (=> d!826922 (= lt!1014400 e!1810558)))

(declare-fun c!460842 () Bool)

(assert (=> d!826922 (= c!460842 (isEmpty!18608 lt!1014359))))

(assert (=> d!826922 (validRegex!3470 lt!1014341)))

(assert (=> d!826922 (= (matchR!3706 lt!1014341 lt!1014359) lt!1014400)))

(declare-fun b!2859444 () Bool)

(declare-fun res!1187689 () Bool)

(assert (=> b!2859444 (=> (not res!1187689) (not e!1810554))))

(assert (=> b!2859444 (= res!1187689 (not call!184353))))

(declare-fun b!2859445 () Bool)

(assert (=> b!2859445 (= e!1810556 (not (= (head!6283 lt!1014359) (c!460743 lt!1014341))))))

(declare-fun b!2859446 () Bool)

(assert (=> b!2859446 (= e!1810560 (not lt!1014400))))

(declare-fun b!2859447 () Bool)

(declare-fun res!1187682 () Bool)

(assert (=> b!2859447 (=> res!1187682 e!1810555)))

(assert (=> b!2859447 (= res!1187682 (not (is-ElementMatch!8600 lt!1014341)))))

(assert (=> b!2859447 (= e!1810560 e!1810555)))

(declare-fun b!2859448 () Bool)

(assert (=> b!2859448 (= e!1810554 (= (head!6283 lt!1014359) (c!460743 lt!1014341)))))

(declare-fun b!2859449 () Bool)

(assert (=> b!2859449 (= e!1810557 (= lt!1014400 call!184353))))

(assert (= (and d!826922 c!460842) b!2859440))

(assert (= (and d!826922 (not c!460842)) b!2859436))

(assert (= (and d!826922 c!460844) b!2859449))

(assert (= (and d!826922 (not c!460844)) b!2859442))

(assert (= (and b!2859442 c!460843) b!2859446))

(assert (= (and b!2859442 (not c!460843)) b!2859447))

(assert (= (and b!2859447 (not res!1187682)) b!2859439))

(assert (= (and b!2859439 res!1187685) b!2859444))

(assert (= (and b!2859444 res!1187689) b!2859443))

(assert (= (and b!2859443 res!1187687) b!2859448))

(assert (= (and b!2859439 (not res!1187683)) b!2859437))

(assert (= (and b!2859437 res!1187686) b!2859438))

(assert (= (and b!2859438 (not res!1187688)) b!2859441))

(assert (= (and b!2859441 (not res!1187684)) b!2859445))

(assert (= (or b!2859449 b!2859438 b!2859444) bm!184348))

(assert (=> b!2859441 m!3280321))

(assert (=> b!2859441 m!3280321))

(declare-fun m!3280369 () Bool)

(assert (=> b!2859441 m!3280369))

(assert (=> b!2859443 m!3280321))

(assert (=> b!2859443 m!3280321))

(assert (=> b!2859443 m!3280369))

(assert (=> b!2859445 m!3280319))

(declare-fun m!3280371 () Bool)

(assert (=> bm!184348 m!3280371))

(assert (=> d!826922 m!3280371))

(assert (=> d!826922 m!3280101))

(assert (=> b!2859436 m!3280319))

(assert (=> b!2859436 m!3280319))

(declare-fun m!3280373 () Bool)

(assert (=> b!2859436 m!3280373))

(assert (=> b!2859436 m!3280321))

(assert (=> b!2859436 m!3280373))

(assert (=> b!2859436 m!3280321))

(declare-fun m!3280375 () Bool)

(assert (=> b!2859436 m!3280375))

(assert (=> b!2859440 m!3280143))

(assert (=> b!2859448 m!3280319))

(assert (=> bs!520355 d!826922))

(declare-fun d!826924 () Bool)

(declare-fun c!460845 () Bool)

(assert (=> d!826924 (= c!460845 (isEmpty!18608 (tail!4508 prefix!1470)))))

(declare-fun e!1810561 () Bool)

(assert (=> d!826924 (= (prefixMatch!908 (derivativeStep!2289 r!23423 (head!6283 prefix!1470)) (tail!4508 prefix!1470)) e!1810561)))

(declare-fun b!2859450 () Bool)

(assert (=> b!2859450 (= e!1810561 (not (lostCause!753 (derivativeStep!2289 r!23423 (head!6283 prefix!1470)))))))

(declare-fun b!2859451 () Bool)

(assert (=> b!2859451 (= e!1810561 (prefixMatch!908 (derivativeStep!2289 (derivativeStep!2289 r!23423 (head!6283 prefix!1470)) (head!6283 (tail!4508 prefix!1470))) (tail!4508 (tail!4508 prefix!1470))))))

(assert (= (and d!826924 c!460845) b!2859450))

(assert (= (and d!826924 (not c!460845)) b!2859451))

(assert (=> d!826924 m!3280195))

(declare-fun m!3280377 () Bool)

(assert (=> d!826924 m!3280377))

(assert (=> b!2859450 m!3280193))

(declare-fun m!3280379 () Bool)

(assert (=> b!2859450 m!3280379))

(assert (=> b!2859451 m!3280195))

(assert (=> b!2859451 m!3280305))

(assert (=> b!2859451 m!3280193))

(assert (=> b!2859451 m!3280305))

(declare-fun m!3280381 () Bool)

(assert (=> b!2859451 m!3280381))

(assert (=> b!2859451 m!3280195))

(assert (=> b!2859451 m!3280309))

(assert (=> b!2859451 m!3280381))

(assert (=> b!2859451 m!3280309))

(declare-fun m!3280383 () Bool)

(assert (=> b!2859451 m!3280383))

(assert (=> b!2859149 d!826924))

(declare-fun b!2859452 () Bool)

(declare-fun e!1810564 () Regex!8600)

(declare-fun e!1810565 () Regex!8600)

(assert (=> b!2859452 (= e!1810564 e!1810565)))

(declare-fun c!460847 () Bool)

(assert (=> b!2859452 (= c!460847 (is-Star!8600 r!23423))))

(declare-fun bm!184349 () Bool)

(declare-fun call!184355 () Regex!8600)

(declare-fun c!460850 () Bool)

(assert (=> bm!184349 (= call!184355 (derivativeStep!2289 (ite c!460850 (regOne!17713 r!23423) (regOne!17712 r!23423)) (head!6283 prefix!1470)))))

(declare-fun b!2859453 () Bool)

(declare-fun c!460848 () Bool)

(assert (=> b!2859453 (= c!460848 (nullable!2654 (regOne!17712 r!23423)))))

(declare-fun e!1810562 () Regex!8600)

(assert (=> b!2859453 (= e!1810565 e!1810562)))

(declare-fun bm!184350 () Bool)

(declare-fun call!184354 () Regex!8600)

(declare-fun call!184356 () Regex!8600)

(assert (=> bm!184350 (= call!184354 call!184356)))

(declare-fun b!2859454 () Bool)

(assert (=> b!2859454 (= e!1810564 (Union!8600 call!184355 call!184356))))

(declare-fun d!826926 () Bool)

(declare-fun lt!1014401 () Regex!8600)

(assert (=> d!826926 (validRegex!3470 lt!1014401)))

(declare-fun e!1810563 () Regex!8600)

(assert (=> d!826926 (= lt!1014401 e!1810563)))

(declare-fun c!460846 () Bool)

(assert (=> d!826926 (= c!460846 (or (is-EmptyExpr!8600 r!23423) (is-EmptyLang!8600 r!23423)))))

(assert (=> d!826926 (validRegex!3470 r!23423)))

(assert (=> d!826926 (= (derivativeStep!2289 r!23423 (head!6283 prefix!1470)) lt!1014401)))

(declare-fun b!2859455 () Bool)

(declare-fun e!1810566 () Regex!8600)

(assert (=> b!2859455 (= e!1810566 (ite (= (head!6283 prefix!1470) (c!460743 r!23423)) EmptyExpr!8600 EmptyLang!8600))))

(declare-fun b!2859456 () Bool)

(assert (=> b!2859456 (= e!1810563 e!1810566)))

(declare-fun c!460849 () Bool)

(assert (=> b!2859456 (= c!460849 (is-ElementMatch!8600 r!23423))))

(declare-fun b!2859457 () Bool)

(declare-fun call!184357 () Regex!8600)

(assert (=> b!2859457 (= e!1810562 (Union!8600 (Concat!13921 call!184355 (regTwo!17712 r!23423)) call!184357))))

(declare-fun bm!184351 () Bool)

(assert (=> bm!184351 (= call!184357 call!184354)))

(declare-fun bm!184352 () Bool)

(assert (=> bm!184352 (= call!184356 (derivativeStep!2289 (ite c!460850 (regTwo!17713 r!23423) (ite c!460847 (reg!8929 r!23423) (ite c!460848 (regTwo!17712 r!23423) (regOne!17712 r!23423)))) (head!6283 prefix!1470)))))

(declare-fun b!2859458 () Bool)

(assert (=> b!2859458 (= e!1810565 (Concat!13921 call!184354 r!23423))))

(declare-fun b!2859459 () Bool)

(assert (=> b!2859459 (= c!460850 (is-Union!8600 r!23423))))

(assert (=> b!2859459 (= e!1810566 e!1810564)))

(declare-fun b!2859460 () Bool)

(assert (=> b!2859460 (= e!1810562 (Union!8600 (Concat!13921 call!184357 (regTwo!17712 r!23423)) EmptyLang!8600))))

(declare-fun b!2859461 () Bool)

(assert (=> b!2859461 (= e!1810563 EmptyLang!8600)))

(assert (= (and d!826926 c!460846) b!2859461))

(assert (= (and d!826926 (not c!460846)) b!2859456))

(assert (= (and b!2859456 c!460849) b!2859455))

(assert (= (and b!2859456 (not c!460849)) b!2859459))

(assert (= (and b!2859459 c!460850) b!2859454))

(assert (= (and b!2859459 (not c!460850)) b!2859452))

(assert (= (and b!2859452 c!460847) b!2859458))

(assert (= (and b!2859452 (not c!460847)) b!2859453))

(assert (= (and b!2859453 c!460848) b!2859457))

(assert (= (and b!2859453 (not c!460848)) b!2859460))

(assert (= (or b!2859457 b!2859460) bm!184351))

(assert (= (or b!2859458 bm!184351) bm!184350))

(assert (= (or b!2859454 bm!184350) bm!184352))

(assert (= (or b!2859454 b!2859457) bm!184349))

(assert (=> bm!184349 m!3280191))

(declare-fun m!3280385 () Bool)

(assert (=> bm!184349 m!3280385))

(assert (=> b!2859453 m!3280109))

(declare-fun m!3280387 () Bool)

(assert (=> d!826926 m!3280387))

(assert (=> d!826926 m!3280073))

(assert (=> bm!184352 m!3280191))

(declare-fun m!3280389 () Bool)

(assert (=> bm!184352 m!3280389))

(assert (=> b!2859149 d!826926))

(assert (=> b!2859149 d!826906))

(assert (=> b!2859149 d!826900))

(declare-fun d!826928 () Bool)

(assert (=> d!826928 (= (isEmpty!18608 lt!1014338) (is-Nil!34073 lt!1014338))))

(assert (=> d!826824 d!826928))

(assert (=> d!826824 d!826912))

(declare-fun d!826930 () Bool)

(assert (=> d!826930 (= (nullable!2654 (regOne!17712 r!23423)) (nullableFct!803 (regOne!17712 r!23423)))))

(declare-fun bs!520365 () Bool)

(assert (= bs!520365 d!826930))

(declare-fun m!3280391 () Bool)

(assert (=> bs!520365 m!3280391))

(assert (=> b!2859034 d!826930))

(declare-fun d!826932 () Bool)

(assert (=> d!826932 (= (isEmpty!18608 (tail!4508 lt!1014338)) (is-Nil!34073 (tail!4508 lt!1014338)))))

(assert (=> b!2859082 d!826932))

(assert (=> b!2859082 d!826868))

(assert (=> bm!184294 d!826928))

(assert (=> b!2859080 d!826932))

(assert (=> b!2859080 d!826868))

(declare-fun d!826934 () Bool)

(assert (=> d!826934 (= (isEmpty!18608 prefix!1470) (is-Nil!34073 prefix!1470))))

(assert (=> d!826844 d!826934))

(declare-fun bm!184353 () Bool)

(declare-fun call!184359 () Bool)

(declare-fun call!184360 () Bool)

(assert (=> bm!184353 (= call!184359 call!184360)))

(declare-fun b!2859462 () Bool)

(declare-fun res!1187692 () Bool)

(declare-fun e!1810569 () Bool)

(assert (=> b!2859462 (=> (not res!1187692) (not e!1810569))))

(declare-fun call!184358 () Bool)

(assert (=> b!2859462 (= res!1187692 call!184358)))

(declare-fun e!1810568 () Bool)

(assert (=> b!2859462 (= e!1810568 e!1810569)))

(declare-fun b!2859463 () Bool)

(declare-fun e!1810567 () Bool)

(assert (=> b!2859463 (= e!1810567 call!184359)))

(declare-fun b!2859464 () Bool)

(assert (=> b!2859464 (= e!1810569 call!184359)))

(declare-fun bm!184354 () Bool)

(declare-fun c!460852 () Bool)

(declare-fun c!460851 () Bool)

(assert (=> bm!184354 (= call!184360 (validRegex!3470 (ite c!460851 (reg!8929 (ite c!460773 (reg!8929 r!23423) (ite c!460774 (regTwo!17713 r!23423) (regTwo!17712 r!23423)))) (ite c!460852 (regTwo!17713 (ite c!460773 (reg!8929 r!23423) (ite c!460774 (regTwo!17713 r!23423) (regTwo!17712 r!23423)))) (regTwo!17712 (ite c!460773 (reg!8929 r!23423) (ite c!460774 (regTwo!17713 r!23423) (regTwo!17712 r!23423))))))))))

(declare-fun b!2859465 () Bool)

(declare-fun e!1810572 () Bool)

(declare-fun e!1810573 () Bool)

(assert (=> b!2859465 (= e!1810572 e!1810573)))

(declare-fun res!1187694 () Bool)

(assert (=> b!2859465 (= res!1187694 (not (nullable!2654 (reg!8929 (ite c!460773 (reg!8929 r!23423) (ite c!460774 (regTwo!17713 r!23423) (regTwo!17712 r!23423)))))))))

(assert (=> b!2859465 (=> (not res!1187694) (not e!1810573))))

(declare-fun bm!184355 () Bool)

(assert (=> bm!184355 (= call!184358 (validRegex!3470 (ite c!460852 (regOne!17713 (ite c!460773 (reg!8929 r!23423) (ite c!460774 (regTwo!17713 r!23423) (regTwo!17712 r!23423)))) (regOne!17712 (ite c!460773 (reg!8929 r!23423) (ite c!460774 (regTwo!17713 r!23423) (regTwo!17712 r!23423)))))))))

(declare-fun d!826936 () Bool)

(declare-fun res!1187693 () Bool)

(declare-fun e!1810570 () Bool)

(assert (=> d!826936 (=> res!1187693 e!1810570)))

(assert (=> d!826936 (= res!1187693 (is-ElementMatch!8600 (ite c!460773 (reg!8929 r!23423) (ite c!460774 (regTwo!17713 r!23423) (regTwo!17712 r!23423)))))))

(assert (=> d!826936 (= (validRegex!3470 (ite c!460773 (reg!8929 r!23423) (ite c!460774 (regTwo!17713 r!23423) (regTwo!17712 r!23423)))) e!1810570)))

(declare-fun b!2859466 () Bool)

(declare-fun e!1810571 () Bool)

(assert (=> b!2859466 (= e!1810571 e!1810567)))

(declare-fun res!1187691 () Bool)

(assert (=> b!2859466 (=> (not res!1187691) (not e!1810567))))

(assert (=> b!2859466 (= res!1187691 call!184358)))

(declare-fun b!2859467 () Bool)

(assert (=> b!2859467 (= e!1810572 e!1810568)))

(assert (=> b!2859467 (= c!460852 (is-Union!8600 (ite c!460773 (reg!8929 r!23423) (ite c!460774 (regTwo!17713 r!23423) (regTwo!17712 r!23423)))))))

(declare-fun b!2859468 () Bool)

(assert (=> b!2859468 (= e!1810570 e!1810572)))

(assert (=> b!2859468 (= c!460851 (is-Star!8600 (ite c!460773 (reg!8929 r!23423) (ite c!460774 (regTwo!17713 r!23423) (regTwo!17712 r!23423)))))))

(declare-fun b!2859469 () Bool)

(declare-fun res!1187690 () Bool)

(assert (=> b!2859469 (=> res!1187690 e!1810571)))

(assert (=> b!2859469 (= res!1187690 (not (is-Concat!13921 (ite c!460773 (reg!8929 r!23423) (ite c!460774 (regTwo!17713 r!23423) (regTwo!17712 r!23423))))))))

(assert (=> b!2859469 (= e!1810568 e!1810571)))

(declare-fun b!2859470 () Bool)

(assert (=> b!2859470 (= e!1810573 call!184360)))

(assert (= (and d!826936 (not res!1187693)) b!2859468))

(assert (= (and b!2859468 c!460851) b!2859465))

(assert (= (and b!2859468 (not c!460851)) b!2859467))

(assert (= (and b!2859465 res!1187694) b!2859470))

(assert (= (and b!2859467 c!460852) b!2859462))

(assert (= (and b!2859467 (not c!460852)) b!2859469))

(assert (= (and b!2859462 res!1187692) b!2859464))

(assert (= (and b!2859469 (not res!1187690)) b!2859466))

(assert (= (and b!2859466 res!1187691) b!2859463))

(assert (= (or b!2859464 b!2859463) bm!184353))

(assert (= (or b!2859462 b!2859466) bm!184355))

(assert (= (or b!2859470 bm!184353) bm!184354))

(declare-fun m!3280393 () Bool)

(assert (=> bm!184354 m!3280393))

(declare-fun m!3280395 () Bool)

(assert (=> b!2859465 m!3280395))

(declare-fun m!3280397 () Bool)

(assert (=> bm!184355 m!3280397))

(assert (=> bm!184302 d!826936))

(assert (=> b!2859087 d!826878))

(assert (=> d!826840 d!826880))

(assert (=> d!826840 d!826832))

(declare-fun d!826938 () Bool)

(assert (=> d!826938 true))

(assert (=> d!826938 true))

(declare-fun res!1187697 () Bool)

(assert (=> d!826938 (= (choose!16825 lambda!105154) res!1187697)))

(assert (=> d!826830 d!826938))

(declare-fun b!2859471 () Bool)

(declare-fun e!1810578 () Bool)

(assert (=> b!2859471 (= e!1810578 (matchR!3706 (derivativeStep!2289 (derivativeStep!2289 r!23423 (head!6283 lt!1014340)) (head!6283 (tail!4508 lt!1014340))) (tail!4508 (tail!4508 lt!1014340))))))

(declare-fun b!2859472 () Bool)

(declare-fun e!1810575 () Bool)

(declare-fun e!1810579 () Bool)

(assert (=> b!2859472 (= e!1810575 e!1810579)))

(declare-fun res!1187702 () Bool)

(assert (=> b!2859472 (=> (not res!1187702) (not e!1810579))))

(declare-fun lt!1014402 () Bool)

(assert (=> b!2859472 (= res!1187702 (not lt!1014402))))

(declare-fun b!2859473 () Bool)

(declare-fun e!1810576 () Bool)

(assert (=> b!2859473 (= e!1810579 e!1810576)))

(declare-fun res!1187704 () Bool)

(assert (=> b!2859473 (=> res!1187704 e!1810576)))

(declare-fun call!184361 () Bool)

(assert (=> b!2859473 (= res!1187704 call!184361)))

(declare-fun b!2859474 () Bool)

(declare-fun res!1187699 () Bool)

(assert (=> b!2859474 (=> res!1187699 e!1810575)))

(declare-fun e!1810574 () Bool)

(assert (=> b!2859474 (= res!1187699 e!1810574)))

(declare-fun res!1187701 () Bool)

(assert (=> b!2859474 (=> (not res!1187701) (not e!1810574))))

(assert (=> b!2859474 (= res!1187701 lt!1014402)))

(declare-fun b!2859475 () Bool)

(assert (=> b!2859475 (= e!1810578 (nullable!2654 (derivativeStep!2289 r!23423 (head!6283 lt!1014340))))))

(declare-fun b!2859476 () Bool)

(declare-fun res!1187700 () Bool)

(assert (=> b!2859476 (=> res!1187700 e!1810576)))

(assert (=> b!2859476 (= res!1187700 (not (isEmpty!18608 (tail!4508 (tail!4508 lt!1014340)))))))

(declare-fun bm!184356 () Bool)

(assert (=> bm!184356 (= call!184361 (isEmpty!18608 (tail!4508 lt!1014340)))))

(declare-fun b!2859477 () Bool)

(declare-fun e!1810577 () Bool)

(declare-fun e!1810580 () Bool)

(assert (=> b!2859477 (= e!1810577 e!1810580)))

(declare-fun c!460854 () Bool)

(assert (=> b!2859477 (= c!460854 (is-EmptyLang!8600 (derivativeStep!2289 r!23423 (head!6283 lt!1014340))))))

(declare-fun b!2859478 () Bool)

(declare-fun res!1187703 () Bool)

(assert (=> b!2859478 (=> (not res!1187703) (not e!1810574))))

(assert (=> b!2859478 (= res!1187703 (isEmpty!18608 (tail!4508 (tail!4508 lt!1014340))))))

(declare-fun d!826940 () Bool)

(assert (=> d!826940 e!1810577))

(declare-fun c!460855 () Bool)

(assert (=> d!826940 (= c!460855 (is-EmptyExpr!8600 (derivativeStep!2289 r!23423 (head!6283 lt!1014340))))))

(assert (=> d!826940 (= lt!1014402 e!1810578)))

(declare-fun c!460853 () Bool)

(assert (=> d!826940 (= c!460853 (isEmpty!18608 (tail!4508 lt!1014340)))))

(assert (=> d!826940 (validRegex!3470 (derivativeStep!2289 r!23423 (head!6283 lt!1014340)))))

(assert (=> d!826940 (= (matchR!3706 (derivativeStep!2289 r!23423 (head!6283 lt!1014340)) (tail!4508 lt!1014340)) lt!1014402)))

(declare-fun b!2859479 () Bool)

(declare-fun res!1187705 () Bool)

(assert (=> b!2859479 (=> (not res!1187705) (not e!1810574))))

(assert (=> b!2859479 (= res!1187705 (not call!184361))))

(declare-fun b!2859480 () Bool)

(assert (=> b!2859480 (= e!1810576 (not (= (head!6283 (tail!4508 lt!1014340)) (c!460743 (derivativeStep!2289 r!23423 (head!6283 lt!1014340))))))))

(declare-fun b!2859481 () Bool)

(assert (=> b!2859481 (= e!1810580 (not lt!1014402))))

(declare-fun b!2859482 () Bool)

(declare-fun res!1187698 () Bool)

(assert (=> b!2859482 (=> res!1187698 e!1810575)))

(assert (=> b!2859482 (= res!1187698 (not (is-ElementMatch!8600 (derivativeStep!2289 r!23423 (head!6283 lt!1014340)))))))

(assert (=> b!2859482 (= e!1810580 e!1810575)))

(declare-fun b!2859483 () Bool)

(assert (=> b!2859483 (= e!1810574 (= (head!6283 (tail!4508 lt!1014340)) (c!460743 (derivativeStep!2289 r!23423 (head!6283 lt!1014340)))))))

(declare-fun b!2859484 () Bool)

(assert (=> b!2859484 (= e!1810577 (= lt!1014402 call!184361))))

(assert (= (and d!826940 c!460853) b!2859475))

(assert (= (and d!826940 (not c!460853)) b!2859471))

(assert (= (and d!826940 c!460855) b!2859484))

(assert (= (and d!826940 (not c!460855)) b!2859477))

(assert (= (and b!2859477 c!460854) b!2859481))

(assert (= (and b!2859477 (not c!460854)) b!2859482))

(assert (= (and b!2859482 (not res!1187698)) b!2859474))

(assert (= (and b!2859474 res!1187701) b!2859479))

(assert (= (and b!2859479 res!1187705) b!2859478))

(assert (= (and b!2859478 res!1187703) b!2859483))

(assert (= (and b!2859474 (not res!1187699)) b!2859472))

(assert (= (and b!2859472 res!1187702) b!2859473))

(assert (= (and b!2859473 (not res!1187704)) b!2859476))

(assert (= (and b!2859476 (not res!1187700)) b!2859480))

(assert (= (or b!2859484 b!2859473 b!2859479) bm!184356))

(assert (=> b!2859476 m!3280173))

(assert (=> b!2859476 m!3280311))

(assert (=> b!2859476 m!3280311))

(declare-fun m!3280399 () Bool)

(assert (=> b!2859476 m!3280399))

(assert (=> b!2859478 m!3280173))

(assert (=> b!2859478 m!3280311))

(assert (=> b!2859478 m!3280311))

(assert (=> b!2859478 m!3280399))

(assert (=> b!2859480 m!3280173))

(assert (=> b!2859480 m!3280307))

(assert (=> bm!184356 m!3280173))

(assert (=> bm!184356 m!3280175))

(assert (=> d!826940 m!3280173))

(assert (=> d!826940 m!3280175))

(assert (=> d!826940 m!3280181))

(declare-fun m!3280401 () Bool)

(assert (=> d!826940 m!3280401))

(assert (=> b!2859471 m!3280173))

(assert (=> b!2859471 m!3280307))

(assert (=> b!2859471 m!3280181))

(assert (=> b!2859471 m!3280307))

(declare-fun m!3280403 () Bool)

(assert (=> b!2859471 m!3280403))

(assert (=> b!2859471 m!3280173))

(assert (=> b!2859471 m!3280311))

(assert (=> b!2859471 m!3280403))

(assert (=> b!2859471 m!3280311))

(declare-fun m!3280405 () Bool)

(assert (=> b!2859471 m!3280405))

(assert (=> b!2859475 m!3280181))

(declare-fun m!3280407 () Bool)

(assert (=> b!2859475 m!3280407))

(assert (=> b!2859483 m!3280173))

(assert (=> b!2859483 m!3280307))

(assert (=> b!2859130 d!826940))

(declare-fun b!2859485 () Bool)

(declare-fun e!1810583 () Regex!8600)

(declare-fun e!1810584 () Regex!8600)

(assert (=> b!2859485 (= e!1810583 e!1810584)))

(declare-fun c!460857 () Bool)

(assert (=> b!2859485 (= c!460857 (is-Star!8600 r!23423))))

(declare-fun bm!184357 () Bool)

(declare-fun call!184363 () Regex!8600)

(declare-fun c!460860 () Bool)

(assert (=> bm!184357 (= call!184363 (derivativeStep!2289 (ite c!460860 (regOne!17713 r!23423) (regOne!17712 r!23423)) (head!6283 lt!1014340)))))

(declare-fun b!2859486 () Bool)

(declare-fun c!460858 () Bool)

(assert (=> b!2859486 (= c!460858 (nullable!2654 (regOne!17712 r!23423)))))

(declare-fun e!1810581 () Regex!8600)

(assert (=> b!2859486 (= e!1810584 e!1810581)))

(declare-fun bm!184358 () Bool)

(declare-fun call!184362 () Regex!8600)

(declare-fun call!184364 () Regex!8600)

(assert (=> bm!184358 (= call!184362 call!184364)))

(declare-fun b!2859487 () Bool)

(assert (=> b!2859487 (= e!1810583 (Union!8600 call!184363 call!184364))))

(declare-fun d!826942 () Bool)

(declare-fun lt!1014403 () Regex!8600)

(assert (=> d!826942 (validRegex!3470 lt!1014403)))

(declare-fun e!1810582 () Regex!8600)

(assert (=> d!826942 (= lt!1014403 e!1810582)))

(declare-fun c!460856 () Bool)

(assert (=> d!826942 (= c!460856 (or (is-EmptyExpr!8600 r!23423) (is-EmptyLang!8600 r!23423)))))

(assert (=> d!826942 (validRegex!3470 r!23423)))

(assert (=> d!826942 (= (derivativeStep!2289 r!23423 (head!6283 lt!1014340)) lt!1014403)))

(declare-fun b!2859488 () Bool)

(declare-fun e!1810585 () Regex!8600)

(assert (=> b!2859488 (= e!1810585 (ite (= (head!6283 lt!1014340) (c!460743 r!23423)) EmptyExpr!8600 EmptyLang!8600))))

(declare-fun b!2859489 () Bool)

(assert (=> b!2859489 (= e!1810582 e!1810585)))

(declare-fun c!460859 () Bool)

(assert (=> b!2859489 (= c!460859 (is-ElementMatch!8600 r!23423))))

(declare-fun call!184365 () Regex!8600)

(declare-fun b!2859490 () Bool)

(assert (=> b!2859490 (= e!1810581 (Union!8600 (Concat!13921 call!184363 (regTwo!17712 r!23423)) call!184365))))

(declare-fun bm!184359 () Bool)

(assert (=> bm!184359 (= call!184365 call!184362)))

(declare-fun bm!184360 () Bool)

(assert (=> bm!184360 (= call!184364 (derivativeStep!2289 (ite c!460860 (regTwo!17713 r!23423) (ite c!460857 (reg!8929 r!23423) (ite c!460858 (regTwo!17712 r!23423) (regOne!17712 r!23423)))) (head!6283 lt!1014340)))))

(declare-fun b!2859491 () Bool)

(assert (=> b!2859491 (= e!1810584 (Concat!13921 call!184362 r!23423))))

(declare-fun b!2859492 () Bool)

(assert (=> b!2859492 (= c!460860 (is-Union!8600 r!23423))))

(assert (=> b!2859492 (= e!1810585 e!1810583)))

(declare-fun b!2859493 () Bool)

(assert (=> b!2859493 (= e!1810581 (Union!8600 (Concat!13921 call!184365 (regTwo!17712 r!23423)) EmptyLang!8600))))

(declare-fun b!2859494 () Bool)

(assert (=> b!2859494 (= e!1810582 EmptyLang!8600)))

(assert (= (and d!826942 c!460856) b!2859494))

(assert (= (and d!826942 (not c!460856)) b!2859489))

(assert (= (and b!2859489 c!460859) b!2859488))

(assert (= (and b!2859489 (not c!460859)) b!2859492))

(assert (= (and b!2859492 c!460860) b!2859487))

(assert (= (and b!2859492 (not c!460860)) b!2859485))

(assert (= (and b!2859485 c!460857) b!2859491))

(assert (= (and b!2859485 (not c!460857)) b!2859486))

(assert (= (and b!2859486 c!460858) b!2859490))

(assert (= (and b!2859486 (not c!460858)) b!2859493))

(assert (= (or b!2859490 b!2859493) bm!184359))

(assert (= (or b!2859491 bm!184359) bm!184358))

(assert (= (or b!2859487 bm!184358) bm!184360))

(assert (= (or b!2859487 b!2859490) bm!184357))

(assert (=> bm!184357 m!3280177))

(declare-fun m!3280409 () Bool)

(assert (=> bm!184357 m!3280409))

(assert (=> b!2859486 m!3280109))

(declare-fun m!3280411 () Bool)

(assert (=> d!826942 m!3280411))

(assert (=> d!826942 m!3280073))

(assert (=> bm!184360 m!3280177))

(declare-fun m!3280413 () Bool)

(assert (=> bm!184360 m!3280413))

(assert (=> b!2859130 d!826942))

(assert (=> b!2859130 d!826896))

(assert (=> b!2859130 d!826874))

(declare-fun d!826944 () Bool)

(declare-fun res!1187708 () List!34197)

(assert (=> d!826944 (dynLambda!14237 lambda!105154 res!1187708)))

(declare-fun e!1810588 () Bool)

(assert (=> d!826944 e!1810588))

(assert (=> d!826944 (= (choose!16824 lambda!105154) res!1187708)))

(declare-fun b!2859497 () Bool)

(declare-fun tp!920289 () Bool)

(assert (=> b!2859497 (= e!1810588 (and tp_is_empty!14937 tp!920289))))

(assert (= (and d!826944 (is-Cons!34073 res!1187708)) b!2859497))

(declare-fun b_lambda!85731 () Bool)

(assert (=> (not b_lambda!85731) (not d!826944)))

(declare-fun m!3280415 () Bool)

(assert (=> d!826944 m!3280415))

(assert (=> d!826818 d!826944))

(assert (=> d!826818 d!826830))

(declare-fun b!2859498 () Bool)

(declare-fun e!1810591 () Regex!8600)

(declare-fun e!1810592 () Regex!8600)

(assert (=> b!2859498 (= e!1810591 e!1810592)))

(declare-fun c!460862 () Bool)

(assert (=> b!2859498 (= c!460862 (is-Star!8600 (ite c!460759 (regOne!17713 r!23423) (regOne!17712 r!23423))))))

(declare-fun call!184367 () Regex!8600)

(declare-fun c!460865 () Bool)

(declare-fun bm!184361 () Bool)

(assert (=> bm!184361 (= call!184367 (derivativeStep!2289 (ite c!460865 (regOne!17713 (ite c!460759 (regOne!17713 r!23423) (regOne!17712 r!23423))) (regOne!17712 (ite c!460759 (regOne!17713 r!23423) (regOne!17712 r!23423)))) (h!39493 prefix!1470)))))

(declare-fun b!2859499 () Bool)

(declare-fun c!460863 () Bool)

(assert (=> b!2859499 (= c!460863 (nullable!2654 (regOne!17712 (ite c!460759 (regOne!17713 r!23423) (regOne!17712 r!23423)))))))

(declare-fun e!1810589 () Regex!8600)

(assert (=> b!2859499 (= e!1810592 e!1810589)))

(declare-fun bm!184362 () Bool)

(declare-fun call!184366 () Regex!8600)

(declare-fun call!184368 () Regex!8600)

(assert (=> bm!184362 (= call!184366 call!184368)))

(declare-fun b!2859500 () Bool)

(assert (=> b!2859500 (= e!1810591 (Union!8600 call!184367 call!184368))))

(declare-fun d!826946 () Bool)

(declare-fun lt!1014404 () Regex!8600)

(assert (=> d!826946 (validRegex!3470 lt!1014404)))

(declare-fun e!1810590 () Regex!8600)

(assert (=> d!826946 (= lt!1014404 e!1810590)))

(declare-fun c!460861 () Bool)

(assert (=> d!826946 (= c!460861 (or (is-EmptyExpr!8600 (ite c!460759 (regOne!17713 r!23423) (regOne!17712 r!23423))) (is-EmptyLang!8600 (ite c!460759 (regOne!17713 r!23423) (regOne!17712 r!23423)))))))

(assert (=> d!826946 (validRegex!3470 (ite c!460759 (regOne!17713 r!23423) (regOne!17712 r!23423)))))

(assert (=> d!826946 (= (derivativeStep!2289 (ite c!460759 (regOne!17713 r!23423) (regOne!17712 r!23423)) (h!39493 prefix!1470)) lt!1014404)))

(declare-fun e!1810593 () Regex!8600)

(declare-fun b!2859501 () Bool)

(assert (=> b!2859501 (= e!1810593 (ite (= (h!39493 prefix!1470) (c!460743 (ite c!460759 (regOne!17713 r!23423) (regOne!17712 r!23423)))) EmptyExpr!8600 EmptyLang!8600))))

(declare-fun b!2859502 () Bool)

(assert (=> b!2859502 (= e!1810590 e!1810593)))

(declare-fun c!460864 () Bool)

(assert (=> b!2859502 (= c!460864 (is-ElementMatch!8600 (ite c!460759 (regOne!17713 r!23423) (regOne!17712 r!23423))))))

(declare-fun b!2859503 () Bool)

(declare-fun call!184369 () Regex!8600)

(assert (=> b!2859503 (= e!1810589 (Union!8600 (Concat!13921 call!184367 (regTwo!17712 (ite c!460759 (regOne!17713 r!23423) (regOne!17712 r!23423)))) call!184369))))

(declare-fun bm!184363 () Bool)

(assert (=> bm!184363 (= call!184369 call!184366)))

(declare-fun bm!184364 () Bool)

(assert (=> bm!184364 (= call!184368 (derivativeStep!2289 (ite c!460865 (regTwo!17713 (ite c!460759 (regOne!17713 r!23423) (regOne!17712 r!23423))) (ite c!460862 (reg!8929 (ite c!460759 (regOne!17713 r!23423) (regOne!17712 r!23423))) (ite c!460863 (regTwo!17712 (ite c!460759 (regOne!17713 r!23423) (regOne!17712 r!23423))) (regOne!17712 (ite c!460759 (regOne!17713 r!23423) (regOne!17712 r!23423)))))) (h!39493 prefix!1470)))))

(declare-fun b!2859504 () Bool)

(assert (=> b!2859504 (= e!1810592 (Concat!13921 call!184366 (ite c!460759 (regOne!17713 r!23423) (regOne!17712 r!23423))))))

(declare-fun b!2859505 () Bool)

(assert (=> b!2859505 (= c!460865 (is-Union!8600 (ite c!460759 (regOne!17713 r!23423) (regOne!17712 r!23423))))))

(assert (=> b!2859505 (= e!1810593 e!1810591)))

(declare-fun b!2859506 () Bool)

(assert (=> b!2859506 (= e!1810589 (Union!8600 (Concat!13921 call!184369 (regTwo!17712 (ite c!460759 (regOne!17713 r!23423) (regOne!17712 r!23423)))) EmptyLang!8600))))

(declare-fun b!2859507 () Bool)

(assert (=> b!2859507 (= e!1810590 EmptyLang!8600)))

(assert (= (and d!826946 c!460861) b!2859507))

(assert (= (and d!826946 (not c!460861)) b!2859502))

(assert (= (and b!2859502 c!460864) b!2859501))

(assert (= (and b!2859502 (not c!460864)) b!2859505))

(assert (= (and b!2859505 c!460865) b!2859500))

(assert (= (and b!2859505 (not c!460865)) b!2859498))

(assert (= (and b!2859498 c!460862) b!2859504))

(assert (= (and b!2859498 (not c!460862)) b!2859499))

(assert (= (and b!2859499 c!460863) b!2859503))

(assert (= (and b!2859499 (not c!460863)) b!2859506))

(assert (= (or b!2859503 b!2859506) bm!184363))

(assert (= (or b!2859504 bm!184363) bm!184362))

(assert (= (or b!2859500 bm!184362) bm!184364))

(assert (= (or b!2859500 b!2859503) bm!184361))

(declare-fun m!3280417 () Bool)

(assert (=> bm!184361 m!3280417))

(declare-fun m!3280419 () Bool)

(assert (=> b!2859499 m!3280419))

(declare-fun m!3280421 () Bool)

(assert (=> d!826946 m!3280421))

(declare-fun m!3280423 () Bool)

(assert (=> d!826946 m!3280423))

(declare-fun m!3280425 () Bool)

(assert (=> bm!184364 m!3280425))

(assert (=> bm!184288 d!826946))

(assert (=> b!2859084 d!826878))

(declare-fun b!2859508 () Bool)

(declare-fun e!1810594 () Bool)

(declare-fun tp!920290 () Bool)

(assert (=> b!2859508 (= e!1810594 (and tp_is_empty!14937 tp!920290))))

(assert (=> b!2859180 (= tp!920238 e!1810594)))

(assert (= (and b!2859180 (is-Cons!34073 (t!233230 (t!233230 prefix!1470)))) b!2859508))

(declare-fun e!1810595 () Bool)

(assert (=> b!2859184 (= tp!920240 e!1810595)))

(declare-fun b!2859509 () Bool)

(assert (=> b!2859509 (= e!1810595 tp_is_empty!14937)))

(declare-fun b!2859512 () Bool)

(declare-fun tp!920292 () Bool)

(declare-fun tp!920293 () Bool)

(assert (=> b!2859512 (= e!1810595 (and tp!920292 tp!920293))))

(declare-fun b!2859511 () Bool)

(declare-fun tp!920291 () Bool)

(assert (=> b!2859511 (= e!1810595 tp!920291)))

(declare-fun b!2859510 () Bool)

(declare-fun tp!920294 () Bool)

(declare-fun tp!920295 () Bool)

(assert (=> b!2859510 (= e!1810595 (and tp!920294 tp!920295))))

(assert (= (and b!2859184 (is-ElementMatch!8600 (regOne!17713 (regOne!17712 r!23423)))) b!2859509))

(assert (= (and b!2859184 (is-Concat!13921 (regOne!17713 (regOne!17712 r!23423)))) b!2859510))

(assert (= (and b!2859184 (is-Star!8600 (regOne!17713 (regOne!17712 r!23423)))) b!2859511))

(assert (= (and b!2859184 (is-Union!8600 (regOne!17713 (regOne!17712 r!23423)))) b!2859512))

(declare-fun e!1810596 () Bool)

(assert (=> b!2859184 (= tp!920241 e!1810596)))

(declare-fun b!2859513 () Bool)

(assert (=> b!2859513 (= e!1810596 tp_is_empty!14937)))

(declare-fun b!2859516 () Bool)

(declare-fun tp!920297 () Bool)

(declare-fun tp!920298 () Bool)

(assert (=> b!2859516 (= e!1810596 (and tp!920297 tp!920298))))

(declare-fun b!2859515 () Bool)

(declare-fun tp!920296 () Bool)

(assert (=> b!2859515 (= e!1810596 tp!920296)))

(declare-fun b!2859514 () Bool)

(declare-fun tp!920299 () Bool)

(declare-fun tp!920300 () Bool)

(assert (=> b!2859514 (= e!1810596 (and tp!920299 tp!920300))))

(assert (= (and b!2859184 (is-ElementMatch!8600 (regTwo!17713 (regOne!17712 r!23423)))) b!2859513))

(assert (= (and b!2859184 (is-Concat!13921 (regTwo!17713 (regOne!17712 r!23423)))) b!2859514))

(assert (= (and b!2859184 (is-Star!8600 (regTwo!17713 (regOne!17712 r!23423)))) b!2859515))

(assert (= (and b!2859184 (is-Union!8600 (regTwo!17713 (regOne!17712 r!23423)))) b!2859516))

(declare-fun e!1810597 () Bool)

(assert (=> b!2859188 (= tp!920245 e!1810597)))

(declare-fun b!2859517 () Bool)

(assert (=> b!2859517 (= e!1810597 tp_is_empty!14937)))

(declare-fun b!2859520 () Bool)

(declare-fun tp!920302 () Bool)

(declare-fun tp!920303 () Bool)

(assert (=> b!2859520 (= e!1810597 (and tp!920302 tp!920303))))

(declare-fun b!2859519 () Bool)

(declare-fun tp!920301 () Bool)

(assert (=> b!2859519 (= e!1810597 tp!920301)))

(declare-fun b!2859518 () Bool)

(declare-fun tp!920304 () Bool)

(declare-fun tp!920305 () Bool)

(assert (=> b!2859518 (= e!1810597 (and tp!920304 tp!920305))))

(assert (= (and b!2859188 (is-ElementMatch!8600 (regOne!17713 (regTwo!17712 r!23423)))) b!2859517))

(assert (= (and b!2859188 (is-Concat!13921 (regOne!17713 (regTwo!17712 r!23423)))) b!2859518))

(assert (= (and b!2859188 (is-Star!8600 (regOne!17713 (regTwo!17712 r!23423)))) b!2859519))

(assert (= (and b!2859188 (is-Union!8600 (regOne!17713 (regTwo!17712 r!23423)))) b!2859520))

(declare-fun e!1810598 () Bool)

(assert (=> b!2859188 (= tp!920246 e!1810598)))

(declare-fun b!2859521 () Bool)

(assert (=> b!2859521 (= e!1810598 tp_is_empty!14937)))

(declare-fun b!2859524 () Bool)

(declare-fun tp!920307 () Bool)

(declare-fun tp!920308 () Bool)

(assert (=> b!2859524 (= e!1810598 (and tp!920307 tp!920308))))

(declare-fun b!2859523 () Bool)

(declare-fun tp!920306 () Bool)

(assert (=> b!2859523 (= e!1810598 tp!920306)))

(declare-fun b!2859522 () Bool)

(declare-fun tp!920309 () Bool)

(declare-fun tp!920310 () Bool)

(assert (=> b!2859522 (= e!1810598 (and tp!920309 tp!920310))))

(assert (= (and b!2859188 (is-ElementMatch!8600 (regTwo!17713 (regTwo!17712 r!23423)))) b!2859521))

(assert (= (and b!2859188 (is-Concat!13921 (regTwo!17713 (regTwo!17712 r!23423)))) b!2859522))

(assert (= (and b!2859188 (is-Star!8600 (regTwo!17713 (regTwo!17712 r!23423)))) b!2859523))

(assert (= (and b!2859188 (is-Union!8600 (regTwo!17713 (regTwo!17712 r!23423)))) b!2859524))

(declare-fun e!1810599 () Bool)

(assert (=> b!2859183 (= tp!920239 e!1810599)))

(declare-fun b!2859525 () Bool)

(assert (=> b!2859525 (= e!1810599 tp_is_empty!14937)))

(declare-fun b!2859528 () Bool)

(declare-fun tp!920312 () Bool)

(declare-fun tp!920313 () Bool)

(assert (=> b!2859528 (= e!1810599 (and tp!920312 tp!920313))))

(declare-fun b!2859527 () Bool)

(declare-fun tp!920311 () Bool)

(assert (=> b!2859527 (= e!1810599 tp!920311)))

(declare-fun b!2859526 () Bool)

(declare-fun tp!920314 () Bool)

(declare-fun tp!920315 () Bool)

(assert (=> b!2859526 (= e!1810599 (and tp!920314 tp!920315))))

(assert (= (and b!2859183 (is-ElementMatch!8600 (reg!8929 (regOne!17712 r!23423)))) b!2859525))

(assert (= (and b!2859183 (is-Concat!13921 (reg!8929 (regOne!17712 r!23423)))) b!2859526))

(assert (= (and b!2859183 (is-Star!8600 (reg!8929 (regOne!17712 r!23423)))) b!2859527))

(assert (= (and b!2859183 (is-Union!8600 (reg!8929 (regOne!17712 r!23423)))) b!2859528))

(declare-fun e!1810600 () Bool)

(assert (=> b!2859187 (= tp!920244 e!1810600)))

(declare-fun b!2859529 () Bool)

(assert (=> b!2859529 (= e!1810600 tp_is_empty!14937)))

(declare-fun b!2859532 () Bool)

(declare-fun tp!920317 () Bool)

(declare-fun tp!920318 () Bool)

(assert (=> b!2859532 (= e!1810600 (and tp!920317 tp!920318))))

(declare-fun b!2859531 () Bool)

(declare-fun tp!920316 () Bool)

(assert (=> b!2859531 (= e!1810600 tp!920316)))

(declare-fun b!2859530 () Bool)

(declare-fun tp!920319 () Bool)

(declare-fun tp!920320 () Bool)

(assert (=> b!2859530 (= e!1810600 (and tp!920319 tp!920320))))

(assert (= (and b!2859187 (is-ElementMatch!8600 (reg!8929 (regTwo!17712 r!23423)))) b!2859529))

(assert (= (and b!2859187 (is-Concat!13921 (reg!8929 (regTwo!17712 r!23423)))) b!2859530))

(assert (= (and b!2859187 (is-Star!8600 (reg!8929 (regTwo!17712 r!23423)))) b!2859531))

(assert (= (and b!2859187 (is-Union!8600 (reg!8929 (regTwo!17712 r!23423)))) b!2859532))

(declare-fun e!1810601 () Bool)

(assert (=> b!2859182 (= tp!920242 e!1810601)))

(declare-fun b!2859533 () Bool)

(assert (=> b!2859533 (= e!1810601 tp_is_empty!14937)))

(declare-fun b!2859536 () Bool)

(declare-fun tp!920322 () Bool)

(declare-fun tp!920323 () Bool)

(assert (=> b!2859536 (= e!1810601 (and tp!920322 tp!920323))))

(declare-fun b!2859535 () Bool)

(declare-fun tp!920321 () Bool)

(assert (=> b!2859535 (= e!1810601 tp!920321)))

(declare-fun b!2859534 () Bool)

(declare-fun tp!920324 () Bool)

(declare-fun tp!920325 () Bool)

(assert (=> b!2859534 (= e!1810601 (and tp!920324 tp!920325))))

(assert (= (and b!2859182 (is-ElementMatch!8600 (regOne!17712 (regOne!17712 r!23423)))) b!2859533))

(assert (= (and b!2859182 (is-Concat!13921 (regOne!17712 (regOne!17712 r!23423)))) b!2859534))

(assert (= (and b!2859182 (is-Star!8600 (regOne!17712 (regOne!17712 r!23423)))) b!2859535))

(assert (= (and b!2859182 (is-Union!8600 (regOne!17712 (regOne!17712 r!23423)))) b!2859536))

(declare-fun e!1810602 () Bool)

(assert (=> b!2859182 (= tp!920243 e!1810602)))

(declare-fun b!2859537 () Bool)

(assert (=> b!2859537 (= e!1810602 tp_is_empty!14937)))

(declare-fun b!2859540 () Bool)

(declare-fun tp!920327 () Bool)

(declare-fun tp!920328 () Bool)

(assert (=> b!2859540 (= e!1810602 (and tp!920327 tp!920328))))

(declare-fun b!2859539 () Bool)

(declare-fun tp!920326 () Bool)

(assert (=> b!2859539 (= e!1810602 tp!920326)))

(declare-fun b!2859538 () Bool)

(declare-fun tp!920329 () Bool)

(declare-fun tp!920330 () Bool)

(assert (=> b!2859538 (= e!1810602 (and tp!920329 tp!920330))))

(assert (= (and b!2859182 (is-ElementMatch!8600 (regTwo!17712 (regOne!17712 r!23423)))) b!2859537))

(assert (= (and b!2859182 (is-Concat!13921 (regTwo!17712 (regOne!17712 r!23423)))) b!2859538))

(assert (= (and b!2859182 (is-Star!8600 (regTwo!17712 (regOne!17712 r!23423)))) b!2859539))

(assert (= (and b!2859182 (is-Union!8600 (regTwo!17712 (regOne!17712 r!23423)))) b!2859540))

(declare-fun e!1810603 () Bool)

(assert (=> b!2859167 (= tp!920222 e!1810603)))

(declare-fun b!2859541 () Bool)

(assert (=> b!2859541 (= e!1810603 tp_is_empty!14937)))

(declare-fun b!2859544 () Bool)

(declare-fun tp!920332 () Bool)

(declare-fun tp!920333 () Bool)

(assert (=> b!2859544 (= e!1810603 (and tp!920332 tp!920333))))

(declare-fun b!2859543 () Bool)

(declare-fun tp!920331 () Bool)

(assert (=> b!2859543 (= e!1810603 tp!920331)))

(declare-fun b!2859542 () Bool)

(declare-fun tp!920334 () Bool)

(declare-fun tp!920335 () Bool)

(assert (=> b!2859542 (= e!1810603 (and tp!920334 tp!920335))))

(assert (= (and b!2859167 (is-ElementMatch!8600 (regOne!17713 (reg!8929 r!23423)))) b!2859541))

(assert (= (and b!2859167 (is-Concat!13921 (regOne!17713 (reg!8929 r!23423)))) b!2859542))

(assert (= (and b!2859167 (is-Star!8600 (regOne!17713 (reg!8929 r!23423)))) b!2859543))

(assert (= (and b!2859167 (is-Union!8600 (regOne!17713 (reg!8929 r!23423)))) b!2859544))

(declare-fun e!1810604 () Bool)

(assert (=> b!2859167 (= tp!920223 e!1810604)))

(declare-fun b!2859545 () Bool)

(assert (=> b!2859545 (= e!1810604 tp_is_empty!14937)))

(declare-fun b!2859548 () Bool)

(declare-fun tp!920337 () Bool)

(declare-fun tp!920338 () Bool)

(assert (=> b!2859548 (= e!1810604 (and tp!920337 tp!920338))))

(declare-fun b!2859547 () Bool)

(declare-fun tp!920336 () Bool)

(assert (=> b!2859547 (= e!1810604 tp!920336)))

(declare-fun b!2859546 () Bool)

(declare-fun tp!920339 () Bool)

(declare-fun tp!920340 () Bool)

(assert (=> b!2859546 (= e!1810604 (and tp!920339 tp!920340))))

(assert (= (and b!2859167 (is-ElementMatch!8600 (regTwo!17713 (reg!8929 r!23423)))) b!2859545))

(assert (= (and b!2859167 (is-Concat!13921 (regTwo!17713 (reg!8929 r!23423)))) b!2859546))

(assert (= (and b!2859167 (is-Star!8600 (regTwo!17713 (reg!8929 r!23423)))) b!2859547))

(assert (= (and b!2859167 (is-Union!8600 (regTwo!17713 (reg!8929 r!23423)))) b!2859548))

(declare-fun e!1810605 () Bool)

(assert (=> b!2859186 (= tp!920247 e!1810605)))

(declare-fun b!2859549 () Bool)

(assert (=> b!2859549 (= e!1810605 tp_is_empty!14937)))

(declare-fun b!2859552 () Bool)

(declare-fun tp!920342 () Bool)

(declare-fun tp!920343 () Bool)

(assert (=> b!2859552 (= e!1810605 (and tp!920342 tp!920343))))

(declare-fun b!2859551 () Bool)

(declare-fun tp!920341 () Bool)

(assert (=> b!2859551 (= e!1810605 tp!920341)))

(declare-fun b!2859550 () Bool)

(declare-fun tp!920344 () Bool)

(declare-fun tp!920345 () Bool)

(assert (=> b!2859550 (= e!1810605 (and tp!920344 tp!920345))))

(assert (= (and b!2859186 (is-ElementMatch!8600 (regOne!17712 (regTwo!17712 r!23423)))) b!2859549))

(assert (= (and b!2859186 (is-Concat!13921 (regOne!17712 (regTwo!17712 r!23423)))) b!2859550))

(assert (= (and b!2859186 (is-Star!8600 (regOne!17712 (regTwo!17712 r!23423)))) b!2859551))

(assert (= (and b!2859186 (is-Union!8600 (regOne!17712 (regTwo!17712 r!23423)))) b!2859552))

(declare-fun e!1810606 () Bool)

(assert (=> b!2859186 (= tp!920248 e!1810606)))

(declare-fun b!2859553 () Bool)

(assert (=> b!2859553 (= e!1810606 tp_is_empty!14937)))

(declare-fun b!2859556 () Bool)

(declare-fun tp!920347 () Bool)

(declare-fun tp!920348 () Bool)

(assert (=> b!2859556 (= e!1810606 (and tp!920347 tp!920348))))

(declare-fun b!2859555 () Bool)

(declare-fun tp!920346 () Bool)

(assert (=> b!2859555 (= e!1810606 tp!920346)))

(declare-fun b!2859554 () Bool)

(declare-fun tp!920349 () Bool)

(declare-fun tp!920350 () Bool)

(assert (=> b!2859554 (= e!1810606 (and tp!920349 tp!920350))))

(assert (= (and b!2859186 (is-ElementMatch!8600 (regTwo!17712 (regTwo!17712 r!23423)))) b!2859553))

(assert (= (and b!2859186 (is-Concat!13921 (regTwo!17712 (regTwo!17712 r!23423)))) b!2859554))

(assert (= (and b!2859186 (is-Star!8600 (regTwo!17712 (regTwo!17712 r!23423)))) b!2859555))

(assert (= (and b!2859186 (is-Union!8600 (regTwo!17712 (regTwo!17712 r!23423)))) b!2859556))

(declare-fun e!1810607 () Bool)

(assert (=> b!2859171 (= tp!920227 e!1810607)))

(declare-fun b!2859557 () Bool)

(assert (=> b!2859557 (= e!1810607 tp_is_empty!14937)))

(declare-fun b!2859560 () Bool)

(declare-fun tp!920352 () Bool)

(declare-fun tp!920353 () Bool)

(assert (=> b!2859560 (= e!1810607 (and tp!920352 tp!920353))))

(declare-fun b!2859559 () Bool)

(declare-fun tp!920351 () Bool)

(assert (=> b!2859559 (= e!1810607 tp!920351)))

(declare-fun b!2859558 () Bool)

(declare-fun tp!920354 () Bool)

(declare-fun tp!920355 () Bool)

(assert (=> b!2859558 (= e!1810607 (and tp!920354 tp!920355))))

(assert (= (and b!2859171 (is-ElementMatch!8600 (regOne!17713 (regOne!17713 r!23423)))) b!2859557))

(assert (= (and b!2859171 (is-Concat!13921 (regOne!17713 (regOne!17713 r!23423)))) b!2859558))

(assert (= (and b!2859171 (is-Star!8600 (regOne!17713 (regOne!17713 r!23423)))) b!2859559))

(assert (= (and b!2859171 (is-Union!8600 (regOne!17713 (regOne!17713 r!23423)))) b!2859560))

(declare-fun e!1810608 () Bool)

(assert (=> b!2859171 (= tp!920228 e!1810608)))

(declare-fun b!2859561 () Bool)

(assert (=> b!2859561 (= e!1810608 tp_is_empty!14937)))

(declare-fun b!2859564 () Bool)

(declare-fun tp!920357 () Bool)

(declare-fun tp!920358 () Bool)

(assert (=> b!2859564 (= e!1810608 (and tp!920357 tp!920358))))

(declare-fun b!2859563 () Bool)

(declare-fun tp!920356 () Bool)

(assert (=> b!2859563 (= e!1810608 tp!920356)))

(declare-fun b!2859562 () Bool)

(declare-fun tp!920359 () Bool)

(declare-fun tp!920360 () Bool)

(assert (=> b!2859562 (= e!1810608 (and tp!920359 tp!920360))))

(assert (= (and b!2859171 (is-ElementMatch!8600 (regTwo!17713 (regOne!17713 r!23423)))) b!2859561))

(assert (= (and b!2859171 (is-Concat!13921 (regTwo!17713 (regOne!17713 r!23423)))) b!2859562))

(assert (= (and b!2859171 (is-Star!8600 (regTwo!17713 (regOne!17713 r!23423)))) b!2859563))

(assert (= (and b!2859171 (is-Union!8600 (regTwo!17713 (regOne!17713 r!23423)))) b!2859564))

(declare-fun e!1810609 () Bool)

(assert (=> b!2859166 (= tp!920221 e!1810609)))

(declare-fun b!2859565 () Bool)

(assert (=> b!2859565 (= e!1810609 tp_is_empty!14937)))

(declare-fun b!2859568 () Bool)

(declare-fun tp!920362 () Bool)

(declare-fun tp!920363 () Bool)

(assert (=> b!2859568 (= e!1810609 (and tp!920362 tp!920363))))

(declare-fun b!2859567 () Bool)

(declare-fun tp!920361 () Bool)

(assert (=> b!2859567 (= e!1810609 tp!920361)))

(declare-fun b!2859566 () Bool)

(declare-fun tp!920364 () Bool)

(declare-fun tp!920365 () Bool)

(assert (=> b!2859566 (= e!1810609 (and tp!920364 tp!920365))))

(assert (= (and b!2859166 (is-ElementMatch!8600 (reg!8929 (reg!8929 r!23423)))) b!2859565))

(assert (= (and b!2859166 (is-Concat!13921 (reg!8929 (reg!8929 r!23423)))) b!2859566))

(assert (= (and b!2859166 (is-Star!8600 (reg!8929 (reg!8929 r!23423)))) b!2859567))

(assert (= (and b!2859166 (is-Union!8600 (reg!8929 (reg!8929 r!23423)))) b!2859568))

(declare-fun e!1810610 () Bool)

(assert (=> b!2859175 (= tp!920232 e!1810610)))

(declare-fun b!2859569 () Bool)

(assert (=> b!2859569 (= e!1810610 tp_is_empty!14937)))

(declare-fun b!2859572 () Bool)

(declare-fun tp!920367 () Bool)

(declare-fun tp!920368 () Bool)

(assert (=> b!2859572 (= e!1810610 (and tp!920367 tp!920368))))

(declare-fun b!2859571 () Bool)

(declare-fun tp!920366 () Bool)

(assert (=> b!2859571 (= e!1810610 tp!920366)))

(declare-fun b!2859570 () Bool)

(declare-fun tp!920369 () Bool)

(declare-fun tp!920370 () Bool)

(assert (=> b!2859570 (= e!1810610 (and tp!920369 tp!920370))))

(assert (= (and b!2859175 (is-ElementMatch!8600 (regOne!17713 (regTwo!17713 r!23423)))) b!2859569))

(assert (= (and b!2859175 (is-Concat!13921 (regOne!17713 (regTwo!17713 r!23423)))) b!2859570))

(assert (= (and b!2859175 (is-Star!8600 (regOne!17713 (regTwo!17713 r!23423)))) b!2859571))

(assert (= (and b!2859175 (is-Union!8600 (regOne!17713 (regTwo!17713 r!23423)))) b!2859572))

(declare-fun e!1810611 () Bool)

(assert (=> b!2859175 (= tp!920233 e!1810611)))

(declare-fun b!2859573 () Bool)

(assert (=> b!2859573 (= e!1810611 tp_is_empty!14937)))

(declare-fun b!2859576 () Bool)

(declare-fun tp!920372 () Bool)

(declare-fun tp!920373 () Bool)

(assert (=> b!2859576 (= e!1810611 (and tp!920372 tp!920373))))

(declare-fun b!2859575 () Bool)

(declare-fun tp!920371 () Bool)

(assert (=> b!2859575 (= e!1810611 tp!920371)))

(declare-fun b!2859574 () Bool)

(declare-fun tp!920374 () Bool)

(declare-fun tp!920375 () Bool)

(assert (=> b!2859574 (= e!1810611 (and tp!920374 tp!920375))))

(assert (= (and b!2859175 (is-ElementMatch!8600 (regTwo!17713 (regTwo!17713 r!23423)))) b!2859573))

(assert (= (and b!2859175 (is-Concat!13921 (regTwo!17713 (regTwo!17713 r!23423)))) b!2859574))

(assert (= (and b!2859175 (is-Star!8600 (regTwo!17713 (regTwo!17713 r!23423)))) b!2859575))

(assert (= (and b!2859175 (is-Union!8600 (regTwo!17713 (regTwo!17713 r!23423)))) b!2859576))

(declare-fun e!1810612 () Bool)

(assert (=> b!2859170 (= tp!920226 e!1810612)))

(declare-fun b!2859577 () Bool)

(assert (=> b!2859577 (= e!1810612 tp_is_empty!14937)))

(declare-fun b!2859580 () Bool)

(declare-fun tp!920377 () Bool)

(declare-fun tp!920378 () Bool)

(assert (=> b!2859580 (= e!1810612 (and tp!920377 tp!920378))))

(declare-fun b!2859579 () Bool)

(declare-fun tp!920376 () Bool)

(assert (=> b!2859579 (= e!1810612 tp!920376)))

(declare-fun b!2859578 () Bool)

(declare-fun tp!920379 () Bool)

(declare-fun tp!920380 () Bool)

(assert (=> b!2859578 (= e!1810612 (and tp!920379 tp!920380))))

(assert (= (and b!2859170 (is-ElementMatch!8600 (reg!8929 (regOne!17713 r!23423)))) b!2859577))

(assert (= (and b!2859170 (is-Concat!13921 (reg!8929 (regOne!17713 r!23423)))) b!2859578))

(assert (= (and b!2859170 (is-Star!8600 (reg!8929 (regOne!17713 r!23423)))) b!2859579))

(assert (= (and b!2859170 (is-Union!8600 (reg!8929 (regOne!17713 r!23423)))) b!2859580))

(declare-fun e!1810613 () Bool)

(assert (=> b!2859165 (= tp!920224 e!1810613)))

(declare-fun b!2859581 () Bool)

(assert (=> b!2859581 (= e!1810613 tp_is_empty!14937)))

(declare-fun b!2859584 () Bool)

(declare-fun tp!920382 () Bool)

(declare-fun tp!920383 () Bool)

(assert (=> b!2859584 (= e!1810613 (and tp!920382 tp!920383))))

(declare-fun b!2859583 () Bool)

(declare-fun tp!920381 () Bool)

(assert (=> b!2859583 (= e!1810613 tp!920381)))

(declare-fun b!2859582 () Bool)

(declare-fun tp!920384 () Bool)

(declare-fun tp!920385 () Bool)

(assert (=> b!2859582 (= e!1810613 (and tp!920384 tp!920385))))

(assert (= (and b!2859165 (is-ElementMatch!8600 (regOne!17712 (reg!8929 r!23423)))) b!2859581))

(assert (= (and b!2859165 (is-Concat!13921 (regOne!17712 (reg!8929 r!23423)))) b!2859582))

(assert (= (and b!2859165 (is-Star!8600 (regOne!17712 (reg!8929 r!23423)))) b!2859583))

(assert (= (and b!2859165 (is-Union!8600 (regOne!17712 (reg!8929 r!23423)))) b!2859584))

(declare-fun e!1810614 () Bool)

(assert (=> b!2859165 (= tp!920225 e!1810614)))

(declare-fun b!2859585 () Bool)

(assert (=> b!2859585 (= e!1810614 tp_is_empty!14937)))

(declare-fun b!2859588 () Bool)

(declare-fun tp!920387 () Bool)

(declare-fun tp!920388 () Bool)

(assert (=> b!2859588 (= e!1810614 (and tp!920387 tp!920388))))

(declare-fun b!2859587 () Bool)

(declare-fun tp!920386 () Bool)

(assert (=> b!2859587 (= e!1810614 tp!920386)))

(declare-fun b!2859586 () Bool)

(declare-fun tp!920389 () Bool)

(declare-fun tp!920390 () Bool)

(assert (=> b!2859586 (= e!1810614 (and tp!920389 tp!920390))))

(assert (= (and b!2859165 (is-ElementMatch!8600 (regTwo!17712 (reg!8929 r!23423)))) b!2859585))

(assert (= (and b!2859165 (is-Concat!13921 (regTwo!17712 (reg!8929 r!23423)))) b!2859586))

(assert (= (and b!2859165 (is-Star!8600 (regTwo!17712 (reg!8929 r!23423)))) b!2859587))

(assert (= (and b!2859165 (is-Union!8600 (regTwo!17712 (reg!8929 r!23423)))) b!2859588))

(declare-fun e!1810615 () Bool)

(assert (=> b!2859174 (= tp!920231 e!1810615)))

(declare-fun b!2859589 () Bool)

(assert (=> b!2859589 (= e!1810615 tp_is_empty!14937)))

(declare-fun b!2859592 () Bool)

(declare-fun tp!920392 () Bool)

(declare-fun tp!920393 () Bool)

(assert (=> b!2859592 (= e!1810615 (and tp!920392 tp!920393))))

(declare-fun b!2859591 () Bool)

(declare-fun tp!920391 () Bool)

(assert (=> b!2859591 (= e!1810615 tp!920391)))

(declare-fun b!2859590 () Bool)

(declare-fun tp!920394 () Bool)

(declare-fun tp!920395 () Bool)

(assert (=> b!2859590 (= e!1810615 (and tp!920394 tp!920395))))

(assert (= (and b!2859174 (is-ElementMatch!8600 (reg!8929 (regTwo!17713 r!23423)))) b!2859589))

(assert (= (and b!2859174 (is-Concat!13921 (reg!8929 (regTwo!17713 r!23423)))) b!2859590))

(assert (= (and b!2859174 (is-Star!8600 (reg!8929 (regTwo!17713 r!23423)))) b!2859591))

(assert (= (and b!2859174 (is-Union!8600 (reg!8929 (regTwo!17713 r!23423)))) b!2859592))

(declare-fun e!1810616 () Bool)

(assert (=> b!2859169 (= tp!920229 e!1810616)))

(declare-fun b!2859593 () Bool)

(assert (=> b!2859593 (= e!1810616 tp_is_empty!14937)))

(declare-fun b!2859596 () Bool)

(declare-fun tp!920397 () Bool)

(declare-fun tp!920398 () Bool)

(assert (=> b!2859596 (= e!1810616 (and tp!920397 tp!920398))))

(declare-fun b!2859595 () Bool)

(declare-fun tp!920396 () Bool)

(assert (=> b!2859595 (= e!1810616 tp!920396)))

(declare-fun b!2859594 () Bool)

(declare-fun tp!920399 () Bool)

(declare-fun tp!920400 () Bool)

(assert (=> b!2859594 (= e!1810616 (and tp!920399 tp!920400))))

(assert (= (and b!2859169 (is-ElementMatch!8600 (regOne!17712 (regOne!17713 r!23423)))) b!2859593))

(assert (= (and b!2859169 (is-Concat!13921 (regOne!17712 (regOne!17713 r!23423)))) b!2859594))

(assert (= (and b!2859169 (is-Star!8600 (regOne!17712 (regOne!17713 r!23423)))) b!2859595))

(assert (= (and b!2859169 (is-Union!8600 (regOne!17712 (regOne!17713 r!23423)))) b!2859596))

(declare-fun e!1810617 () Bool)

(assert (=> b!2859169 (= tp!920230 e!1810617)))

(declare-fun b!2859597 () Bool)

(assert (=> b!2859597 (= e!1810617 tp_is_empty!14937)))

(declare-fun b!2859600 () Bool)

(declare-fun tp!920402 () Bool)

(declare-fun tp!920403 () Bool)

(assert (=> b!2859600 (= e!1810617 (and tp!920402 tp!920403))))

(declare-fun b!2859599 () Bool)

(declare-fun tp!920401 () Bool)

(assert (=> b!2859599 (= e!1810617 tp!920401)))

(declare-fun b!2859598 () Bool)

(declare-fun tp!920404 () Bool)

(declare-fun tp!920405 () Bool)

(assert (=> b!2859598 (= e!1810617 (and tp!920404 tp!920405))))

(assert (= (and b!2859169 (is-ElementMatch!8600 (regTwo!17712 (regOne!17713 r!23423)))) b!2859597))

(assert (= (and b!2859169 (is-Concat!13921 (regTwo!17712 (regOne!17713 r!23423)))) b!2859598))

(assert (= (and b!2859169 (is-Star!8600 (regTwo!17712 (regOne!17713 r!23423)))) b!2859599))

(assert (= (and b!2859169 (is-Union!8600 (regTwo!17712 (regOne!17713 r!23423)))) b!2859600))

(declare-fun e!1810618 () Bool)

(assert (=> b!2859173 (= tp!920234 e!1810618)))

(declare-fun b!2859601 () Bool)

(assert (=> b!2859601 (= e!1810618 tp_is_empty!14937)))

(declare-fun b!2859604 () Bool)

(declare-fun tp!920407 () Bool)

(declare-fun tp!920408 () Bool)

(assert (=> b!2859604 (= e!1810618 (and tp!920407 tp!920408))))

(declare-fun b!2859603 () Bool)

(declare-fun tp!920406 () Bool)

(assert (=> b!2859603 (= e!1810618 tp!920406)))

(declare-fun b!2859602 () Bool)

(declare-fun tp!920409 () Bool)

(declare-fun tp!920410 () Bool)

(assert (=> b!2859602 (= e!1810618 (and tp!920409 tp!920410))))

(assert (= (and b!2859173 (is-ElementMatch!8600 (regOne!17712 (regTwo!17713 r!23423)))) b!2859601))

(assert (= (and b!2859173 (is-Concat!13921 (regOne!17712 (regTwo!17713 r!23423)))) b!2859602))

(assert (= (and b!2859173 (is-Star!8600 (regOne!17712 (regTwo!17713 r!23423)))) b!2859603))

(assert (= (and b!2859173 (is-Union!8600 (regOne!17712 (regTwo!17713 r!23423)))) b!2859604))

(declare-fun e!1810619 () Bool)

(assert (=> b!2859173 (= tp!920235 e!1810619)))

(declare-fun b!2859605 () Bool)

(assert (=> b!2859605 (= e!1810619 tp_is_empty!14937)))

(declare-fun b!2859608 () Bool)

(declare-fun tp!920412 () Bool)

(declare-fun tp!920413 () Bool)

(assert (=> b!2859608 (= e!1810619 (and tp!920412 tp!920413))))

(declare-fun b!2859607 () Bool)

(declare-fun tp!920411 () Bool)

(assert (=> b!2859607 (= e!1810619 tp!920411)))

(declare-fun b!2859606 () Bool)

(declare-fun tp!920414 () Bool)

(declare-fun tp!920415 () Bool)

(assert (=> b!2859606 (= e!1810619 (and tp!920414 tp!920415))))

(assert (= (and b!2859173 (is-ElementMatch!8600 (regTwo!17712 (regTwo!17713 r!23423)))) b!2859605))

(assert (= (and b!2859173 (is-Concat!13921 (regTwo!17712 (regTwo!17713 r!23423)))) b!2859606))

(assert (= (and b!2859173 (is-Star!8600 (regTwo!17712 (regTwo!17713 r!23423)))) b!2859607))

(assert (= (and b!2859173 (is-Union!8600 (regTwo!17712 (regTwo!17713 r!23423)))) b!2859608))

(declare-fun b_lambda!85733 () Bool)

(assert (= b_lambda!85731 (or b!2858948 b_lambda!85733)))

(declare-fun bs!520366 () Bool)

(declare-fun d!826948 () Bool)

(assert (= bs!520366 (and d!826948 b!2858948)))

(declare-fun res!1187709 () Bool)

(declare-fun e!1810620 () Bool)

(assert (=> bs!520366 (=> (not res!1187709) (not e!1810620))))

(assert (=> bs!520366 (= res!1187709 (matchR!3706 lt!1014341 res!1187708))))

(assert (=> bs!520366 (= (dynLambda!14237 lambda!105154 res!1187708) e!1810620)))

(declare-fun b!2859609 () Bool)

(assert (=> b!2859609 (= e!1810620 (isPrefix!2680 (t!233230 prefix!1470) res!1187708))))

(assert (= (and bs!520366 res!1187709) b!2859609))

(declare-fun m!3280427 () Bool)

(assert (=> bs!520366 m!3280427))

(declare-fun m!3280429 () Bool)

(assert (=> b!2859609 m!3280429))

(assert (=> d!826944 d!826948))

(push 1)

(assert (not d!826910))

(assert (not bm!184339))

(assert (not b!2859511))

(assert (not b!2859559))

(assert (not bm!184331))

(assert (not d!826942))

(assert (not b!2859451))

(assert (not b!2859436))

(assert (not b!2859530))

(assert (not b!2859590))

(assert (not b!2859609))

(assert (not b!2859562))

(assert (not b!2859486))

(assert (not b!2859471))

(assert (not b!2859580))

(assert (not bm!184344))

(assert (not b!2859596))

(assert (not b!2859555))

(assert (not b!2859544))

(assert (not b!2859522))

(assert (not b!2859356))

(assert (not b!2859594))

(assert (not b!2859512))

(assert (not bm!184342))

(assert (not b!2859514))

(assert (not d!826888))

(assert (not b!2859542))

(assert (not bm!184336))

(assert (not bm!184361))

(assert (not b!2859388))

(assert (not b!2859443))

(assert (not b!2859588))

(assert (not bm!184355))

(assert (not d!826930))

(assert (not b!2859413))

(assert (not b!2859607))

(assert (not b!2859499))

(assert (not b!2859558))

(assert (not b!2859568))

(assert (not b!2859351))

(assert (not d!826914))

(assert (not bs!520366))

(assert (not b!2859497))

(assert (not b!2859604))

(assert (not b_lambda!85727))

(assert (not b!2859576))

(assert (not b!2859534))

(assert (not bm!184348))

(assert (not b!2859579))

(assert (not d!826890))

(assert (not b_lambda!85733))

(assert (not b!2859352))

(assert (not b!2859510))

(assert (not d!826926))

(assert (not b!2859445))

(assert (not b!2859551))

(assert (not bm!184347))

(assert (not bm!184343))

(assert (not b!2859600))

(assert (not b!2859535))

(assert (not b!2859450))

(assert (not d!826946))

(assert (not b!2859519))

(assert (not b!2859606))

(assert (not b!2859595))

(assert (not b!2859423))

(assert (not b!2859548))

(assert (not b!2859381))

(assert (not b!2859376))

(assert (not b!2859554))

(assert (not b!2859475))

(assert (not bm!184364))

(assert (not b!2859415))

(assert (not b!2859602))

(assert (not b!2859563))

(assert (not b!2859582))

(assert (not b!2859608))

(assert (not b!2859566))

(assert (not b!2859523))

(assert (not b!2859408))

(assert (not b!2859564))

(assert (not b!2859433))

(assert (not b!2859546))

(assert (not b!2859583))

(assert (not b!2859539))

(assert (not b!2859572))

(assert (not b!2859515))

(assert (not b!2859552))

(assert (not b!2859538))

(assert (not b!2859386))

(assert (not b!2859547))

(assert (not b!2859556))

(assert (not bm!184352))

(assert (not b!2859578))

(assert (not b!2859587))

(assert (not bm!184332))

(assert (not b!2859571))

(assert (not b!2859384))

(assert (not b!2859574))

(assert (not b!2859420))

(assert (not b!2859378))

(assert (not b!2859350))

(assert (not bm!184357))

(assert (not b!2859567))

(assert (not b!2859440))

(assert (not b!2859453))

(assert (not b!2859536))

(assert (not b!2859448))

(assert (not b!2859599))

(assert (not b!2859480))

(assert (not b!2859380))

(assert (not d!826922))

(assert (not b!2859586))

(assert (not d!826904))

(assert (not d!826924))

(assert (not bm!184335))

(assert (not b!2859520))

(assert (not b!2859516))

(assert tp_is_empty!14937)

(assert (not b!2859526))

(assert (not b!2859543))

(assert (not b!2859532))

(assert (not bm!184349))

(assert (not d!826916))

(assert (not b!2859465))

(assert (not b!2859570))

(assert (not b!2859603))

(assert (not b!2859365))

(assert (not b!2859412))

(assert (not b!2859591))

(assert (not b!2859598))

(assert (not b!2859584))

(assert (not b!2859528))

(assert (not b!2859402))

(assert (not b!2859550))

(assert (not d!826940))

(assert (not bm!184341))

(assert (not b!2859478))

(assert (not d!826870))

(assert (not b!2859518))

(assert (not b!2859483))

(assert (not b!2859560))

(assert (not b!2859524))

(assert (not b!2859382))

(assert (not b!2859592))

(assert (not b!2859476))

(assert (not b!2859441))

(assert (not b!2859527))

(assert (not b!2859575))

(assert (not d!826908))

(assert (not d!826886))

(assert (not bm!184356))

(assert (not b!2859540))

(assert (not b!2859531))

(assert (not b!2859385))

(assert (not bm!184334))

(assert (not bm!184360))

(assert (not b!2859417))

(assert (not bm!184354))

(assert (not b!2859508))

(assert (not b!2859435))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

