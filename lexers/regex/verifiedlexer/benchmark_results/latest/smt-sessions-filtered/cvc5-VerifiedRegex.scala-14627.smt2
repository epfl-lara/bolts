; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756526 () Bool)

(assert start!756526)

(declare-fun b!8031142 () Bool)

(declare-fun e!4731353 () Bool)

(declare-fun tp!2403656 () Bool)

(declare-fun tp!2403661 () Bool)

(assert (=> b!8031142 (= e!4731353 (and tp!2403656 tp!2403661))))

(declare-fun b!8031143 () Bool)

(declare-fun tp_is_empty!54407 () Bool)

(assert (=> b!8031143 (= e!4731353 tp_is_empty!54407)))

(declare-fun b!8031144 () Bool)

(declare-fun res!3176015 () Bool)

(declare-fun e!4731355 () Bool)

(assert (=> b!8031144 (=> (not res!3176015) (not e!4731355))))

(declare-datatypes ((C!43750 0))(
  ( (C!43751 (val!32651 Int)) )
))
(declare-datatypes ((List!75171 0))(
  ( (Nil!75045) (Cons!75045 (h!81493 C!43750) (t!390941 List!75171)) )
))
(declare-fun input!5983 () List!75171)

(declare-fun isEmpty!43024 (List!75171) Bool)

(assert (=> b!8031144 (= res!3176015 (not (isEmpty!43024 input!5983)))))

(declare-fun b!8031145 () Bool)

(declare-fun res!3176010 () Bool)

(declare-fun e!4731354 () Bool)

(assert (=> b!8031145 (=> res!3176010 e!4731354)))

(declare-fun lt!2721893 () List!75171)

(assert (=> b!8031145 (= res!3176010 (not (isEmpty!43024 lt!2721893)))))

(declare-fun b!8031146 () Bool)

(declare-fun lt!2721892 () C!43750)

(declare-datatypes ((Regex!21706 0))(
  ( (ElementMatch!21706 (c!1473351 C!43750)) (Concat!30709 (regOne!43924 Regex!21706) (regTwo!43924 Regex!21706)) (EmptyExpr!21706) (Star!21706 (reg!22035 Regex!21706)) (EmptyLang!21706) (Union!21706 (regOne!43925 Regex!21706) (regTwo!43925 Regex!21706)) )
))
(declare-fun r!13230 () Regex!21706)

(assert (=> b!8031146 (= e!4731354 (not (= lt!2721892 (c!1473351 r!13230))))))

(declare-fun res!3176014 () Bool)

(assert (=> start!756526 (=> (not res!3176014) (not e!4731355))))

(declare-fun validRegex!12002 (Regex!21706) Bool)

(assert (=> start!756526 (= res!3176014 (validRegex!12002 r!13230))))

(assert (=> start!756526 e!4731355))

(assert (=> start!756526 e!4731353))

(declare-fun e!4731352 () Bool)

(assert (=> start!756526 e!4731352))

(declare-fun b!8031147 () Bool)

(declare-fun tp!2403659 () Bool)

(declare-fun tp!2403658 () Bool)

(assert (=> b!8031147 (= e!4731353 (and tp!2403659 tp!2403658))))

(declare-fun b!8031148 () Bool)

(declare-fun e!4731356 () Bool)

(declare-fun lt!2721891 () Bool)

(assert (=> b!8031148 (= e!4731356 (and (not lt!2721891) (= input!5983 Nil!75045)))))

(declare-fun b!8031149 () Bool)

(declare-fun tp!2403660 () Bool)

(assert (=> b!8031149 (= e!4731352 (and tp_is_empty!54407 tp!2403660))))

(declare-fun b!8031150 () Bool)

(assert (=> b!8031150 (= e!4731355 e!4731356)))

(declare-fun res!3176013 () Bool)

(assert (=> b!8031150 (=> (not res!3176013) (not e!4731356))))

(assert (=> b!8031150 (= res!3176013 (and (not (is-EmptyExpr!21706 r!13230)) (not (is-EmptyLang!21706 r!13230)) (is-ElementMatch!21706 r!13230)))))

(declare-fun matchR!10779 (Regex!21706 List!75171) Bool)

(declare-fun derivativeStep!6649 (Regex!21706 C!43750) Regex!21706)

(assert (=> b!8031150 (= lt!2721891 (matchR!10779 (derivativeStep!6649 r!13230 lt!2721892) lt!2721893))))

(declare-fun tail!16053 (List!75171) List!75171)

(assert (=> b!8031150 (= lt!2721893 (tail!16053 input!5983))))

(declare-fun head!16512 (List!75171) C!43750)

(assert (=> b!8031150 (= lt!2721892 (head!16512 input!5983))))

(declare-fun b!8031151 () Bool)

(declare-fun tp!2403657 () Bool)

(assert (=> b!8031151 (= e!4731353 tp!2403657)))

(declare-fun b!8031152 () Bool)

(declare-fun res!3176012 () Bool)

(assert (=> b!8031152 (=> (not res!3176012) (not e!4731356))))

(assert (=> b!8031152 (= res!3176012 e!4731354)))

(declare-fun res!3176011 () Bool)

(assert (=> b!8031152 (=> res!3176011 e!4731354)))

(assert (=> b!8031152 (= res!3176011 (not lt!2721891))))

(assert (= (and start!756526 res!3176014) b!8031144))

(assert (= (and b!8031144 res!3176015) b!8031150))

(assert (= (and b!8031150 res!3176013) b!8031152))

(assert (= (and b!8031152 (not res!3176011)) b!8031145))

(assert (= (and b!8031145 (not res!3176010)) b!8031146))

(assert (= (and b!8031152 res!3176012) b!8031148))

(assert (= (and start!756526 (is-ElementMatch!21706 r!13230)) b!8031143))

(assert (= (and start!756526 (is-Concat!30709 r!13230)) b!8031147))

(assert (= (and start!756526 (is-Star!21706 r!13230)) b!8031151))

(assert (= (and start!756526 (is-Union!21706 r!13230)) b!8031142))

(assert (= (and start!756526 (is-Cons!75045 input!5983)) b!8031149))

(declare-fun m!8392222 () Bool)

(assert (=> b!8031144 m!8392222))

(declare-fun m!8392224 () Bool)

(assert (=> b!8031145 m!8392224))

(declare-fun m!8392226 () Bool)

(assert (=> start!756526 m!8392226))

(declare-fun m!8392228 () Bool)

(assert (=> b!8031150 m!8392228))

(assert (=> b!8031150 m!8392228))

(declare-fun m!8392230 () Bool)

(assert (=> b!8031150 m!8392230))

(declare-fun m!8392232 () Bool)

(assert (=> b!8031150 m!8392232))

(declare-fun m!8392234 () Bool)

(assert (=> b!8031150 m!8392234))

(push 1)

(assert (not b!8031144))

(assert (not b!8031149))

(assert (not b!8031142))

(assert (not b!8031151))

(assert (not start!756526))

(assert (not b!8031150))

(assert tp_is_empty!54407)

(assert (not b!8031145))

(assert (not b!8031147))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8031204 () Bool)

(declare-fun e!4731387 () Bool)

(declare-fun e!4731390 () Bool)

(assert (=> b!8031204 (= e!4731387 e!4731390)))

(declare-fun res!3176048 () Bool)

(assert (=> b!8031204 (=> (not res!3176048) (not e!4731390))))

(declare-fun call!744976 () Bool)

(assert (=> b!8031204 (= res!3176048 call!744976)))

(declare-fun b!8031205 () Bool)

(declare-fun call!744975 () Bool)

(assert (=> b!8031205 (= e!4731390 call!744975)))

(declare-fun b!8031206 () Bool)

(declare-fun e!4731391 () Bool)

(declare-fun e!4731386 () Bool)

(assert (=> b!8031206 (= e!4731391 e!4731386)))

(declare-fun res!3176044 () Bool)

(declare-fun nullable!9739 (Regex!21706) Bool)

(assert (=> b!8031206 (= res!3176044 (not (nullable!9739 (reg!22035 r!13230))))))

(assert (=> b!8031206 (=> (not res!3176044) (not e!4731386))))

(declare-fun b!8031207 () Bool)

(declare-fun e!4731392 () Bool)

(assert (=> b!8031207 (= e!4731392 call!744975)))

(declare-fun b!8031208 () Bool)

(declare-fun e!4731388 () Bool)

(assert (=> b!8031208 (= e!4731391 e!4731388)))

(declare-fun c!1473358 () Bool)

(assert (=> b!8031208 (= c!1473358 (is-Union!21706 r!13230))))

(declare-fun b!8031209 () Bool)

(declare-fun e!4731389 () Bool)

(assert (=> b!8031209 (= e!4731389 e!4731391)))

(declare-fun c!1473357 () Bool)

(assert (=> b!8031209 (= c!1473357 (is-Star!21706 r!13230))))

(declare-fun bm!744970 () Bool)

(declare-fun call!744977 () Bool)

(assert (=> bm!744970 (= call!744977 (validRegex!12002 (ite c!1473357 (reg!22035 r!13230) (ite c!1473358 (regOne!43925 r!13230) (regOne!43924 r!13230)))))))

(declare-fun b!8031210 () Bool)

(assert (=> b!8031210 (= e!4731386 call!744977)))

(declare-fun d!2394658 () Bool)

(declare-fun res!3176046 () Bool)

(assert (=> d!2394658 (=> res!3176046 e!4731389)))

(assert (=> d!2394658 (= res!3176046 (is-ElementMatch!21706 r!13230))))

(assert (=> d!2394658 (= (validRegex!12002 r!13230) e!4731389)))

(declare-fun b!8031211 () Bool)

(declare-fun res!3176047 () Bool)

(assert (=> b!8031211 (=> res!3176047 e!4731387)))

(assert (=> b!8031211 (= res!3176047 (not (is-Concat!30709 r!13230)))))

(assert (=> b!8031211 (= e!4731388 e!4731387)))

(declare-fun bm!744971 () Bool)

(assert (=> bm!744971 (= call!744975 (validRegex!12002 (ite c!1473358 (regTwo!43925 r!13230) (regTwo!43924 r!13230))))))

(declare-fun bm!744972 () Bool)

(assert (=> bm!744972 (= call!744976 call!744977)))

(declare-fun b!8031212 () Bool)

(declare-fun res!3176045 () Bool)

(assert (=> b!8031212 (=> (not res!3176045) (not e!4731392))))

(assert (=> b!8031212 (= res!3176045 call!744976)))

(assert (=> b!8031212 (= e!4731388 e!4731392)))

(assert (= (and d!2394658 (not res!3176046)) b!8031209))

(assert (= (and b!8031209 c!1473357) b!8031206))

(assert (= (and b!8031209 (not c!1473357)) b!8031208))

(assert (= (and b!8031206 res!3176044) b!8031210))

(assert (= (and b!8031208 c!1473358) b!8031212))

(assert (= (and b!8031208 (not c!1473358)) b!8031211))

(assert (= (and b!8031212 res!3176045) b!8031207))

(assert (= (and b!8031211 (not res!3176047)) b!8031204))

(assert (= (and b!8031204 res!3176048) b!8031205))

(assert (= (or b!8031212 b!8031204) bm!744972))

(assert (= (or b!8031207 b!8031205) bm!744971))

(assert (= (or b!8031210 bm!744972) bm!744970))

(declare-fun m!8392250 () Bool)

(assert (=> b!8031206 m!8392250))

(declare-fun m!8392252 () Bool)

(assert (=> bm!744970 m!8392252))

(declare-fun m!8392254 () Bool)

(assert (=> bm!744971 m!8392254))

(assert (=> start!756526 d!2394658))

(declare-fun d!2394662 () Bool)

(assert (=> d!2394662 (= (isEmpty!43024 lt!2721893) (is-Nil!75045 lt!2721893))))

(assert (=> b!8031145 d!2394662))

(declare-fun bm!744981 () Bool)

(declare-fun call!744986 () Bool)

(assert (=> bm!744981 (= call!744986 (isEmpty!43024 lt!2721893))))

(declare-fun e!4731427 () Bool)

(declare-fun b!8031259 () Bool)

(assert (=> b!8031259 (= e!4731427 (matchR!10779 (derivativeStep!6649 (derivativeStep!6649 r!13230 lt!2721892) (head!16512 lt!2721893)) (tail!16053 lt!2721893)))))

(declare-fun b!8031260 () Bool)

(declare-fun e!4731425 () Bool)

(assert (=> b!8031260 (= e!4731425 (= (head!16512 lt!2721893) (c!1473351 (derivativeStep!6649 r!13230 lt!2721892))))))

(declare-fun b!8031261 () Bool)

(declare-fun e!4731424 () Bool)

(declare-fun e!4731423 () Bool)

(assert (=> b!8031261 (= e!4731424 e!4731423)))

(declare-fun c!1473370 () Bool)

(assert (=> b!8031261 (= c!1473370 (is-EmptyLang!21706 (derivativeStep!6649 r!13230 lt!2721892)))))

(declare-fun b!8031262 () Bool)

(declare-fun lt!2721905 () Bool)

(assert (=> b!8031262 (= e!4731423 (not lt!2721905))))

(declare-fun b!8031263 () Bool)

(declare-fun res!3176079 () Bool)

(declare-fun e!4731422 () Bool)

(assert (=> b!8031263 (=> res!3176079 e!4731422)))

(assert (=> b!8031263 (= res!3176079 (not (is-ElementMatch!21706 (derivativeStep!6649 r!13230 lt!2721892))))))

(assert (=> b!8031263 (= e!4731423 e!4731422)))

(declare-fun b!8031264 () Bool)

(declare-fun e!4731426 () Bool)

(assert (=> b!8031264 (= e!4731422 e!4731426)))

(declare-fun res!3176076 () Bool)

(assert (=> b!8031264 (=> (not res!3176076) (not e!4731426))))

(assert (=> b!8031264 (= res!3176076 (not lt!2721905))))

(declare-fun d!2394664 () Bool)

(assert (=> d!2394664 e!4731424))

(declare-fun c!1473371 () Bool)

(assert (=> d!2394664 (= c!1473371 (is-EmptyExpr!21706 (derivativeStep!6649 r!13230 lt!2721892)))))

(assert (=> d!2394664 (= lt!2721905 e!4731427)))

(declare-fun c!1473369 () Bool)

(assert (=> d!2394664 (= c!1473369 (isEmpty!43024 lt!2721893))))

(assert (=> d!2394664 (validRegex!12002 (derivativeStep!6649 r!13230 lt!2721892))))

(assert (=> d!2394664 (= (matchR!10779 (derivativeStep!6649 r!13230 lt!2721892) lt!2721893) lt!2721905)))

(declare-fun b!8031265 () Bool)

(declare-fun e!4731421 () Bool)

(assert (=> b!8031265 (= e!4731421 (not (= (head!16512 lt!2721893) (c!1473351 (derivativeStep!6649 r!13230 lt!2721892)))))))

(declare-fun b!8031266 () Bool)

(assert (=> b!8031266 (= e!4731426 e!4731421)))

(declare-fun res!3176078 () Bool)

(assert (=> b!8031266 (=> res!3176078 e!4731421)))

(assert (=> b!8031266 (= res!3176078 call!744986)))

(declare-fun b!8031267 () Bool)

(declare-fun res!3176077 () Bool)

(assert (=> b!8031267 (=> res!3176077 e!4731421)))

(assert (=> b!8031267 (= res!3176077 (not (isEmpty!43024 (tail!16053 lt!2721893))))))

(declare-fun b!8031268 () Bool)

(assert (=> b!8031268 (= e!4731427 (nullable!9739 (derivativeStep!6649 r!13230 lt!2721892)))))

(declare-fun b!8031269 () Bool)

(assert (=> b!8031269 (= e!4731424 (= lt!2721905 call!744986))))

(declare-fun b!8031270 () Bool)

(declare-fun res!3176082 () Bool)

(assert (=> b!8031270 (=> res!3176082 e!4731422)))

(assert (=> b!8031270 (= res!3176082 e!4731425)))

(declare-fun res!3176075 () Bool)

(assert (=> b!8031270 (=> (not res!3176075) (not e!4731425))))

(assert (=> b!8031270 (= res!3176075 lt!2721905)))

(declare-fun b!8031271 () Bool)

(declare-fun res!3176081 () Bool)

(assert (=> b!8031271 (=> (not res!3176081) (not e!4731425))))

(assert (=> b!8031271 (= res!3176081 (not call!744986))))

(declare-fun b!8031272 () Bool)

(declare-fun res!3176080 () Bool)

(assert (=> b!8031272 (=> (not res!3176080) (not e!4731425))))

(assert (=> b!8031272 (= res!3176080 (isEmpty!43024 (tail!16053 lt!2721893)))))

(assert (= (and d!2394664 c!1473369) b!8031268))

(assert (= (and d!2394664 (not c!1473369)) b!8031259))

(assert (= (and d!2394664 c!1473371) b!8031269))

(assert (= (and d!2394664 (not c!1473371)) b!8031261))

(assert (= (and b!8031261 c!1473370) b!8031262))

(assert (= (and b!8031261 (not c!1473370)) b!8031263))

(assert (= (and b!8031263 (not res!3176079)) b!8031270))

(assert (= (and b!8031270 res!3176075) b!8031271))

(assert (= (and b!8031271 res!3176081) b!8031272))

(assert (= (and b!8031272 res!3176080) b!8031260))

(assert (= (and b!8031270 (not res!3176082)) b!8031264))

(assert (= (and b!8031264 res!3176076) b!8031266))

(assert (= (and b!8031266 (not res!3176078)) b!8031267))

(assert (= (and b!8031267 (not res!3176077)) b!8031265))

(assert (= (or b!8031269 b!8031266 b!8031271) bm!744981))

(declare-fun m!8392256 () Bool)

(assert (=> b!8031267 m!8392256))

(assert (=> b!8031267 m!8392256))

(declare-fun m!8392258 () Bool)

(assert (=> b!8031267 m!8392258))

(declare-fun m!8392260 () Bool)

(assert (=> b!8031260 m!8392260))

(assert (=> b!8031265 m!8392260))

(assert (=> bm!744981 m!8392224))

(assert (=> b!8031259 m!8392260))

(assert (=> b!8031259 m!8392228))

(assert (=> b!8031259 m!8392260))

(declare-fun m!8392262 () Bool)

(assert (=> b!8031259 m!8392262))

(assert (=> b!8031259 m!8392256))

(assert (=> b!8031259 m!8392262))

(assert (=> b!8031259 m!8392256))

(declare-fun m!8392264 () Bool)

(assert (=> b!8031259 m!8392264))

(assert (=> b!8031268 m!8392228))

(declare-fun m!8392266 () Bool)

(assert (=> b!8031268 m!8392266))

(assert (=> d!2394664 m!8392224))

(assert (=> d!2394664 m!8392228))

(declare-fun m!8392268 () Bool)

(assert (=> d!2394664 m!8392268))

(assert (=> b!8031272 m!8392256))

(assert (=> b!8031272 m!8392256))

(assert (=> b!8031272 m!8392258))

(assert (=> b!8031150 d!2394664))

(declare-fun c!1473387 () Bool)

(declare-fun call!745001 () Regex!21706)

(declare-fun bm!744993 () Bool)

(assert (=> bm!744993 (= call!745001 (derivativeStep!6649 (ite c!1473387 (regTwo!43925 r!13230) (regTwo!43924 r!13230)) lt!2721892))))

(declare-fun d!2394666 () Bool)

(declare-fun lt!2721908 () Regex!21706)

(assert (=> d!2394666 (validRegex!12002 lt!2721908)))

(declare-fun e!4731448 () Regex!21706)

(assert (=> d!2394666 (= lt!2721908 e!4731448)))

(declare-fun c!1473386 () Bool)

(assert (=> d!2394666 (= c!1473386 (or (is-EmptyExpr!21706 r!13230) (is-EmptyLang!21706 r!13230)))))

(assert (=> d!2394666 (validRegex!12002 r!13230)))

(assert (=> d!2394666 (= (derivativeStep!6649 r!13230 lt!2721892) lt!2721908)))

(declare-fun b!8031302 () Bool)

(declare-fun e!4731445 () Regex!21706)

(declare-fun e!4731449 () Regex!21706)

(assert (=> b!8031302 (= e!4731445 e!4731449)))

(declare-fun c!1473384 () Bool)

(assert (=> b!8031302 (= c!1473384 (is-Star!21706 r!13230))))

(declare-fun call!745000 () Regex!21706)

(declare-fun b!8031303 () Bool)

(declare-fun e!4731447 () Regex!21706)

(assert (=> b!8031303 (= e!4731447 (Union!21706 (Concat!30709 call!745000 (regTwo!43924 r!13230)) call!745001))))

(declare-fun bm!744994 () Bool)

(declare-fun call!744999 () Regex!21706)

(declare-fun call!744998 () Regex!21706)

(assert (=> bm!744994 (= call!744999 call!744998)))

(declare-fun b!8031304 () Bool)

(declare-fun e!4731446 () Regex!21706)

(assert (=> b!8031304 (= e!4731448 e!4731446)))

(declare-fun c!1473385 () Bool)

(assert (=> b!8031304 (= c!1473385 (is-ElementMatch!21706 r!13230))))

(declare-fun b!8031305 () Bool)

(assert (=> b!8031305 (= e!4731447 (Union!21706 (Concat!30709 call!745000 (regTwo!43924 r!13230)) EmptyLang!21706))))

(declare-fun b!8031306 () Bool)

(declare-fun c!1473388 () Bool)

(assert (=> b!8031306 (= c!1473388 (nullable!9739 (regOne!43924 r!13230)))))

(assert (=> b!8031306 (= e!4731449 e!4731447)))

(declare-fun bm!744995 () Bool)

(assert (=> bm!744995 (= call!745000 call!744999)))

(declare-fun bm!744996 () Bool)

(assert (=> bm!744996 (= call!744998 (derivativeStep!6649 (ite c!1473387 (regOne!43925 r!13230) (ite c!1473384 (reg!22035 r!13230) (regOne!43924 r!13230))) lt!2721892))))

(declare-fun b!8031307 () Bool)

(assert (=> b!8031307 (= e!4731446 (ite (= lt!2721892 (c!1473351 r!13230)) EmptyExpr!21706 EmptyLang!21706))))

(declare-fun b!8031308 () Bool)

(assert (=> b!8031308 (= e!4731449 (Concat!30709 call!744999 r!13230))))

(declare-fun b!8031309 () Bool)

(assert (=> b!8031309 (= e!4731448 EmptyLang!21706)))

(declare-fun b!8031310 () Bool)

(assert (=> b!8031310 (= c!1473387 (is-Union!21706 r!13230))))

(assert (=> b!8031310 (= e!4731446 e!4731445)))

(declare-fun b!8031311 () Bool)

(assert (=> b!8031311 (= e!4731445 (Union!21706 call!744998 call!745001))))

(assert (= (and d!2394666 c!1473386) b!8031309))

(assert (= (and d!2394666 (not c!1473386)) b!8031304))

(assert (= (and b!8031304 c!1473385) b!8031307))

(assert (= (and b!8031304 (not c!1473385)) b!8031310))

(assert (= (and b!8031310 c!1473387) b!8031311))

(assert (= (and b!8031310 (not c!1473387)) b!8031302))

(assert (= (and b!8031302 c!1473384) b!8031308))

(assert (= (and b!8031302 (not c!1473384)) b!8031306))

(assert (= (and b!8031306 c!1473388) b!8031303))

(assert (= (and b!8031306 (not c!1473388)) b!8031305))

(assert (= (or b!8031303 b!8031305) bm!744995))

(assert (= (or b!8031308 bm!744995) bm!744994))

(assert (= (or b!8031311 b!8031303) bm!744993))

(assert (= (or b!8031311 bm!744994) bm!744996))

(declare-fun m!8392276 () Bool)

(assert (=> bm!744993 m!8392276))

(declare-fun m!8392278 () Bool)

(assert (=> d!2394666 m!8392278))

(assert (=> d!2394666 m!8392226))

(declare-fun m!8392280 () Bool)

(assert (=> b!8031306 m!8392280))

(declare-fun m!8392282 () Bool)

(assert (=> bm!744996 m!8392282))

(assert (=> b!8031150 d!2394666))

(declare-fun d!2394674 () Bool)

(assert (=> d!2394674 (= (tail!16053 input!5983) (t!390941 input!5983))))

(assert (=> b!8031150 d!2394674))

(declare-fun d!2394676 () Bool)

(assert (=> d!2394676 (= (head!16512 input!5983) (h!81493 input!5983))))

(assert (=> b!8031150 d!2394676))

(declare-fun d!2394678 () Bool)

(assert (=> d!2394678 (= (isEmpty!43024 input!5983) (is-Nil!75045 input!5983))))

(assert (=> b!8031144 d!2394678))

(declare-fun e!4731452 () Bool)

(assert (=> b!8031147 (= tp!2403659 e!4731452)))

(declare-fun b!8031322 () Bool)

(assert (=> b!8031322 (= e!4731452 tp_is_empty!54407)))

(declare-fun b!8031325 () Bool)

(declare-fun tp!2403690 () Bool)

(declare-fun tp!2403691 () Bool)

(assert (=> b!8031325 (= e!4731452 (and tp!2403690 tp!2403691))))

(declare-fun b!8031324 () Bool)

(declare-fun tp!2403692 () Bool)

(assert (=> b!8031324 (= e!4731452 tp!2403692)))

(declare-fun b!8031323 () Bool)

(declare-fun tp!2403694 () Bool)

(declare-fun tp!2403693 () Bool)

(assert (=> b!8031323 (= e!4731452 (and tp!2403694 tp!2403693))))

(assert (= (and b!8031147 (is-ElementMatch!21706 (regOne!43924 r!13230))) b!8031322))

(assert (= (and b!8031147 (is-Concat!30709 (regOne!43924 r!13230))) b!8031323))

(assert (= (and b!8031147 (is-Star!21706 (regOne!43924 r!13230))) b!8031324))

(assert (= (and b!8031147 (is-Union!21706 (regOne!43924 r!13230))) b!8031325))

(declare-fun e!4731453 () Bool)

(assert (=> b!8031147 (= tp!2403658 e!4731453)))

(declare-fun b!8031326 () Bool)

(assert (=> b!8031326 (= e!4731453 tp_is_empty!54407)))

(declare-fun b!8031329 () Bool)

(declare-fun tp!2403695 () Bool)

(declare-fun tp!2403696 () Bool)

(assert (=> b!8031329 (= e!4731453 (and tp!2403695 tp!2403696))))

(declare-fun b!8031328 () Bool)

(declare-fun tp!2403697 () Bool)

(assert (=> b!8031328 (= e!4731453 tp!2403697)))

(declare-fun b!8031327 () Bool)

(declare-fun tp!2403699 () Bool)

(declare-fun tp!2403698 () Bool)

(assert (=> b!8031327 (= e!4731453 (and tp!2403699 tp!2403698))))

(assert (= (and b!8031147 (is-ElementMatch!21706 (regTwo!43924 r!13230))) b!8031326))

(assert (= (and b!8031147 (is-Concat!30709 (regTwo!43924 r!13230))) b!8031327))

(assert (= (and b!8031147 (is-Star!21706 (regTwo!43924 r!13230))) b!8031328))

(assert (= (and b!8031147 (is-Union!21706 (regTwo!43924 r!13230))) b!8031329))

(declare-fun e!4731454 () Bool)

(assert (=> b!8031142 (= tp!2403656 e!4731454)))

(declare-fun b!8031330 () Bool)

(assert (=> b!8031330 (= e!4731454 tp_is_empty!54407)))

(declare-fun b!8031333 () Bool)

(declare-fun tp!2403700 () Bool)

(declare-fun tp!2403701 () Bool)

(assert (=> b!8031333 (= e!4731454 (and tp!2403700 tp!2403701))))

(declare-fun b!8031332 () Bool)

(declare-fun tp!2403702 () Bool)

(assert (=> b!8031332 (= e!4731454 tp!2403702)))

(declare-fun b!8031331 () Bool)

(declare-fun tp!2403704 () Bool)

(declare-fun tp!2403703 () Bool)

(assert (=> b!8031331 (= e!4731454 (and tp!2403704 tp!2403703))))

(assert (= (and b!8031142 (is-ElementMatch!21706 (regOne!43925 r!13230))) b!8031330))

(assert (= (and b!8031142 (is-Concat!30709 (regOne!43925 r!13230))) b!8031331))

(assert (= (and b!8031142 (is-Star!21706 (regOne!43925 r!13230))) b!8031332))

(assert (= (and b!8031142 (is-Union!21706 (regOne!43925 r!13230))) b!8031333))

(declare-fun e!4731455 () Bool)

(assert (=> b!8031142 (= tp!2403661 e!4731455)))

(declare-fun b!8031334 () Bool)

(assert (=> b!8031334 (= e!4731455 tp_is_empty!54407)))

(declare-fun b!8031337 () Bool)

(declare-fun tp!2403705 () Bool)

(declare-fun tp!2403706 () Bool)

(assert (=> b!8031337 (= e!4731455 (and tp!2403705 tp!2403706))))

(declare-fun b!8031336 () Bool)

(declare-fun tp!2403707 () Bool)

(assert (=> b!8031336 (= e!4731455 tp!2403707)))

(declare-fun b!8031335 () Bool)

(declare-fun tp!2403709 () Bool)

(declare-fun tp!2403708 () Bool)

(assert (=> b!8031335 (= e!4731455 (and tp!2403709 tp!2403708))))

(assert (= (and b!8031142 (is-ElementMatch!21706 (regTwo!43925 r!13230))) b!8031334))

(assert (= (and b!8031142 (is-Concat!30709 (regTwo!43925 r!13230))) b!8031335))

(assert (= (and b!8031142 (is-Star!21706 (regTwo!43925 r!13230))) b!8031336))

(assert (= (and b!8031142 (is-Union!21706 (regTwo!43925 r!13230))) b!8031337))

(declare-fun e!4731456 () Bool)

(assert (=> b!8031151 (= tp!2403657 e!4731456)))

(declare-fun b!8031338 () Bool)

(assert (=> b!8031338 (= e!4731456 tp_is_empty!54407)))

(declare-fun b!8031341 () Bool)

(declare-fun tp!2403710 () Bool)

(declare-fun tp!2403711 () Bool)

(assert (=> b!8031341 (= e!4731456 (and tp!2403710 tp!2403711))))

(declare-fun b!8031340 () Bool)

(declare-fun tp!2403712 () Bool)

(assert (=> b!8031340 (= e!4731456 tp!2403712)))

(declare-fun b!8031339 () Bool)

(declare-fun tp!2403714 () Bool)

(declare-fun tp!2403713 () Bool)

(assert (=> b!8031339 (= e!4731456 (and tp!2403714 tp!2403713))))

(assert (= (and b!8031151 (is-ElementMatch!21706 (reg!22035 r!13230))) b!8031338))

(assert (= (and b!8031151 (is-Concat!30709 (reg!22035 r!13230))) b!8031339))

(assert (= (and b!8031151 (is-Star!21706 (reg!22035 r!13230))) b!8031340))

(assert (= (and b!8031151 (is-Union!21706 (reg!22035 r!13230))) b!8031341))

(declare-fun b!8031350 () Bool)

(declare-fun e!4731461 () Bool)

(declare-fun tp!2403717 () Bool)

(assert (=> b!8031350 (= e!4731461 (and tp_is_empty!54407 tp!2403717))))

(assert (=> b!8031149 (= tp!2403660 e!4731461)))

(assert (= (and b!8031149 (is-Cons!75045 (t!390941 input!5983))) b!8031350))

(push 1)

(assert (not b!8031206))

(assert (not b!8031335))

(assert tp_is_empty!54407)

(assert (not b!8031339))

(assert (not bm!744970))

(assert (not b!8031336))

(assert (not bm!744981))

(assert (not b!8031324))

(assert (not b!8031327))

(assert (not d!2394666))

(assert (not b!8031332))

(assert (not b!8031333))

(assert (not b!8031268))

(assert (not b!8031265))

(assert (not b!8031259))

(assert (not b!8031329))

(assert (not b!8031267))

(assert (not d!2394664))

(assert (not b!8031325))

(assert (not bm!744971))

(assert (not b!8031260))

(assert (not b!8031337))

(assert (not b!8031272))

(assert (not b!8031306))

(assert (not bm!744996))

(assert (not b!8031340))

(assert (not b!8031350))

(assert (not bm!744993))

(assert (not b!8031323))

(assert (not b!8031331))

(assert (not b!8031328))

(assert (not b!8031341))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

