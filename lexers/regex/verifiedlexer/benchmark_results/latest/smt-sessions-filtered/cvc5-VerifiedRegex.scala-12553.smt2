; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696794 () Bool)

(assert start!696794)

(declare-fun b!7146328 () Bool)

(declare-fun res!2915670 () Bool)

(declare-fun e!4294509 () Bool)

(assert (=> b!7146328 (=> (not res!2915670) (not e!4294509))))

(declare-datatypes ((C!36702 0))(
  ( (C!36703 (val!28299 Int)) )
))
(declare-datatypes ((Regex!18214 0))(
  ( (ElementMatch!18214 (c!1332629 C!36702)) (Concat!27059 (regOne!36940 Regex!18214) (regTwo!36940 Regex!18214)) (EmptyExpr!18214) (Star!18214 (reg!18543 Regex!18214)) (EmptyLang!18214) (Union!18214 (regOne!36941 Regex!18214) (regTwo!36941 Regex!18214)) )
))
(declare-datatypes ((List!69506 0))(
  ( (Nil!69382) (Cons!69382 (h!75830 Regex!18214) (t!383523 List!69506)) )
))
(declare-datatypes ((Context!14416 0))(
  ( (Context!14417 (exprs!7708 List!69506)) )
))
(declare-datatypes ((List!69507 0))(
  ( (Nil!69383) (Cons!69383 (h!75831 Context!14416) (t!383524 List!69507)) )
))
(declare-fun zl!333 () List!69507)

(assert (=> b!7146328 (= res!2915670 (not (is-Cons!69383 zl!333)))))

(declare-fun b!7146329 () Bool)

(declare-fun e!4294511 () Bool)

(declare-fun tp!1971730 () Bool)

(assert (=> b!7146329 (= e!4294511 tp!1971730)))

(declare-fun b!7146330 () Bool)

(declare-fun e!4294512 () Bool)

(declare-fun tp!1971731 () Bool)

(declare-fun tp!1971735 () Bool)

(assert (=> b!7146330 (= e!4294512 (and tp!1971731 tp!1971735))))

(declare-fun b!7146331 () Bool)

(declare-fun tp!1971736 () Bool)

(assert (=> b!7146331 (= e!4294512 tp!1971736)))

(declare-fun res!2915671 () Bool)

(assert (=> start!696794 (=> (not res!2915671) (not e!4294509))))

(declare-fun r!7278 () Regex!18214)

(declare-fun contains!20646 (List!69506 Regex!18214) Bool)

(declare-fun unfocusZipperList!2255 (List!69507) List!69506)

(assert (=> start!696794 (= res!2915671 (contains!20646 (unfocusZipperList!2255 zl!333) r!7278))))

(assert (=> start!696794 e!4294509))

(declare-fun e!4294513 () Bool)

(assert (=> start!696794 e!4294513))

(assert (=> start!696794 e!4294512))

(declare-fun c!101 () Context!14416)

(declare-fun e!4294510 () Bool)

(declare-fun inv!88600 (Context!14416) Bool)

(assert (=> start!696794 (and (inv!88600 c!101) e!4294510)))

(declare-fun b!7146332 () Bool)

(declare-fun tp_is_empty!46065 () Bool)

(assert (=> b!7146332 (= e!4294512 tp_is_empty!46065)))

(declare-fun tp!1971734 () Bool)

(declare-fun b!7146333 () Bool)

(assert (=> b!7146333 (= e!4294513 (and (inv!88600 (h!75831 zl!333)) e!4294511 tp!1971734))))

(declare-fun b!7146334 () Bool)

(declare-fun tp!1971737 () Bool)

(declare-fun tp!1971732 () Bool)

(assert (=> b!7146334 (= e!4294512 (and tp!1971737 tp!1971732))))

(declare-fun b!7146335 () Bool)

(declare-fun tp!1971733 () Bool)

(assert (=> b!7146335 (= e!4294510 tp!1971733)))

(declare-fun b!7146336 () Bool)

(declare-fun lambda!435783 () Int)

(declare-fun forall!17050 (List!69506 Int) Bool)

(assert (=> b!7146336 (= e!4294509 (not (forall!17050 (exprs!7708 c!101) lambda!435783)))))

(assert (= (and start!696794 res!2915671) b!7146328))

(assert (= (and b!7146328 res!2915670) b!7146336))

(assert (= b!7146333 b!7146329))

(assert (= (and start!696794 (is-Cons!69383 zl!333)) b!7146333))

(assert (= (and start!696794 (is-ElementMatch!18214 r!7278)) b!7146332))

(assert (= (and start!696794 (is-Concat!27059 r!7278)) b!7146330))

(assert (= (and start!696794 (is-Star!18214 r!7278)) b!7146331))

(assert (= (and start!696794 (is-Union!18214 r!7278)) b!7146334))

(assert (= start!696794 b!7146335))

(declare-fun m!7859318 () Bool)

(assert (=> start!696794 m!7859318))

(assert (=> start!696794 m!7859318))

(declare-fun m!7859320 () Bool)

(assert (=> start!696794 m!7859320))

(declare-fun m!7859322 () Bool)

(assert (=> start!696794 m!7859322))

(declare-fun m!7859324 () Bool)

(assert (=> b!7146333 m!7859324))

(declare-fun m!7859326 () Bool)

(assert (=> b!7146336 m!7859326))

(push 1)

(assert (not b!7146330))

(assert (not b!7146335))

(assert (not b!7146334))

(assert (not b!7146336))

(assert (not start!696794))

(assert (not b!7146331))

(assert (not b!7146329))

(assert tp_is_empty!46065)

(assert (not b!7146333))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2228134 () Bool)

(declare-fun res!2915682 () Bool)

(declare-fun e!4294533 () Bool)

(assert (=> d!2228134 (=> res!2915682 e!4294533)))

(assert (=> d!2228134 (= res!2915682 (is-Nil!69382 (exprs!7708 c!101)))))

(assert (=> d!2228134 (= (forall!17050 (exprs!7708 c!101) lambda!435783) e!4294533)))

(declare-fun b!7146368 () Bool)

(declare-fun e!4294534 () Bool)

(assert (=> b!7146368 (= e!4294533 e!4294534)))

(declare-fun res!2915683 () Bool)

(assert (=> b!7146368 (=> (not res!2915683) (not e!4294534))))

(declare-fun dynLambda!28258 (Int Regex!18214) Bool)

(assert (=> b!7146368 (= res!2915683 (dynLambda!28258 lambda!435783 (h!75830 (exprs!7708 c!101))))))

(declare-fun b!7146369 () Bool)

(assert (=> b!7146369 (= e!4294534 (forall!17050 (t!383523 (exprs!7708 c!101)) lambda!435783))))

(assert (= (and d!2228134 (not res!2915682)) b!7146368))

(assert (= (and b!7146368 res!2915683) b!7146369))

(declare-fun b_lambda!272757 () Bool)

(assert (=> (not b_lambda!272757) (not b!7146368)))

(declare-fun m!7859338 () Bool)

(assert (=> b!7146368 m!7859338))

(declare-fun m!7859340 () Bool)

(assert (=> b!7146369 m!7859340))

(assert (=> b!7146336 d!2228134))

(declare-fun d!2228136 () Bool)

(declare-fun lt!2568875 () Bool)

(declare-fun content!14236 (List!69506) (Set Regex!18214))

(assert (=> d!2228136 (= lt!2568875 (set.member r!7278 (content!14236 (unfocusZipperList!2255 zl!333))))))

(declare-fun e!4294540 () Bool)

(assert (=> d!2228136 (= lt!2568875 e!4294540)))

(declare-fun res!2915688 () Bool)

(assert (=> d!2228136 (=> (not res!2915688) (not e!4294540))))

(assert (=> d!2228136 (= res!2915688 (is-Cons!69382 (unfocusZipperList!2255 zl!333)))))

(assert (=> d!2228136 (= (contains!20646 (unfocusZipperList!2255 zl!333) r!7278) lt!2568875)))

(declare-fun b!7146374 () Bool)

(declare-fun e!4294539 () Bool)

(assert (=> b!7146374 (= e!4294540 e!4294539)))

(declare-fun res!2915689 () Bool)

(assert (=> b!7146374 (=> res!2915689 e!4294539)))

(assert (=> b!7146374 (= res!2915689 (= (h!75830 (unfocusZipperList!2255 zl!333)) r!7278))))

(declare-fun b!7146375 () Bool)

(assert (=> b!7146375 (= e!4294539 (contains!20646 (t!383523 (unfocusZipperList!2255 zl!333)) r!7278))))

(assert (= (and d!2228136 res!2915688) b!7146374))

(assert (= (and b!7146374 (not res!2915689)) b!7146375))

(assert (=> d!2228136 m!7859318))

(declare-fun m!7859342 () Bool)

(assert (=> d!2228136 m!7859342))

(declare-fun m!7859344 () Bool)

(assert (=> d!2228136 m!7859344))

(declare-fun m!7859346 () Bool)

(assert (=> b!7146375 m!7859346))

(assert (=> start!696794 d!2228136))

(declare-fun bs!1889171 () Bool)

(declare-fun d!2228138 () Bool)

(assert (= bs!1889171 (and d!2228138 b!7146336)))

(declare-fun lambda!435789 () Int)

(assert (=> bs!1889171 (= lambda!435789 lambda!435783)))

(declare-fun lt!2568878 () List!69506)

(assert (=> d!2228138 (forall!17050 lt!2568878 lambda!435789)))

(declare-fun e!4294543 () List!69506)

(assert (=> d!2228138 (= lt!2568878 e!4294543)))

(declare-fun c!1332633 () Bool)

(assert (=> d!2228138 (= c!1332633 (is-Cons!69383 zl!333))))

(assert (=> d!2228138 (= (unfocusZipperList!2255 zl!333) lt!2568878)))

(declare-fun b!7146380 () Bool)

(declare-fun generalisedConcat!2391 (List!69506) Regex!18214)

(assert (=> b!7146380 (= e!4294543 (Cons!69382 (generalisedConcat!2391 (exprs!7708 (h!75831 zl!333))) (unfocusZipperList!2255 (t!383524 zl!333))))))

(declare-fun b!7146381 () Bool)

(assert (=> b!7146381 (= e!4294543 Nil!69382)))

(assert (= (and d!2228138 c!1332633) b!7146380))

(assert (= (and d!2228138 (not c!1332633)) b!7146381))

(declare-fun m!7859348 () Bool)

(assert (=> d!2228138 m!7859348))

(declare-fun m!7859350 () Bool)

(assert (=> b!7146380 m!7859350))

(declare-fun m!7859352 () Bool)

(assert (=> b!7146380 m!7859352))

(assert (=> start!696794 d!2228138))

(declare-fun bs!1889172 () Bool)

(declare-fun d!2228142 () Bool)

(assert (= bs!1889172 (and d!2228142 b!7146336)))

(declare-fun lambda!435794 () Int)

(assert (=> bs!1889172 (= lambda!435794 lambda!435783)))

(declare-fun bs!1889173 () Bool)

(assert (= bs!1889173 (and d!2228142 d!2228138)))

(assert (=> bs!1889173 (= lambda!435794 lambda!435789)))

(assert (=> d!2228142 (= (inv!88600 c!101) (forall!17050 (exprs!7708 c!101) lambda!435794))))

(declare-fun bs!1889174 () Bool)

(assert (= bs!1889174 d!2228142))

(declare-fun m!7859354 () Bool)

(assert (=> bs!1889174 m!7859354))

(assert (=> start!696794 d!2228142))

(declare-fun bs!1889175 () Bool)

(declare-fun d!2228144 () Bool)

(assert (= bs!1889175 (and d!2228144 b!7146336)))

(declare-fun lambda!435795 () Int)

(assert (=> bs!1889175 (= lambda!435795 lambda!435783)))

(declare-fun bs!1889176 () Bool)

(assert (= bs!1889176 (and d!2228144 d!2228138)))

(assert (=> bs!1889176 (= lambda!435795 lambda!435789)))

(declare-fun bs!1889177 () Bool)

(assert (= bs!1889177 (and d!2228144 d!2228142)))

(assert (=> bs!1889177 (= lambda!435795 lambda!435794)))

(assert (=> d!2228144 (= (inv!88600 (h!75831 zl!333)) (forall!17050 (exprs!7708 (h!75831 zl!333)) lambda!435795))))

(declare-fun bs!1889178 () Bool)

(assert (= bs!1889178 d!2228144))

(declare-fun m!7859356 () Bool)

(assert (=> bs!1889178 m!7859356))

(assert (=> b!7146333 d!2228144))

(declare-fun b!7146386 () Bool)

(declare-fun e!4294546 () Bool)

(declare-fun tp!1971766 () Bool)

(declare-fun tp!1971767 () Bool)

(assert (=> b!7146386 (= e!4294546 (and tp!1971766 tp!1971767))))

(assert (=> b!7146335 (= tp!1971733 e!4294546)))

(assert (= (and b!7146335 (is-Cons!69382 (exprs!7708 c!101))) b!7146386))

(declare-fun e!4294549 () Bool)

(assert (=> b!7146330 (= tp!1971731 e!4294549)))

(declare-fun b!7146399 () Bool)

(declare-fun tp!1971781 () Bool)

(assert (=> b!7146399 (= e!4294549 tp!1971781)))

(declare-fun b!7146400 () Bool)

(declare-fun tp!1971778 () Bool)

(declare-fun tp!1971782 () Bool)

(assert (=> b!7146400 (= e!4294549 (and tp!1971778 tp!1971782))))

(declare-fun b!7146397 () Bool)

(assert (=> b!7146397 (= e!4294549 tp_is_empty!46065)))

(declare-fun b!7146398 () Bool)

(declare-fun tp!1971779 () Bool)

(declare-fun tp!1971780 () Bool)

(assert (=> b!7146398 (= e!4294549 (and tp!1971779 tp!1971780))))

(assert (= (and b!7146330 (is-ElementMatch!18214 (regOne!36940 r!7278))) b!7146397))

(assert (= (and b!7146330 (is-Concat!27059 (regOne!36940 r!7278))) b!7146398))

(assert (= (and b!7146330 (is-Star!18214 (regOne!36940 r!7278))) b!7146399))

(assert (= (and b!7146330 (is-Union!18214 (regOne!36940 r!7278))) b!7146400))

(declare-fun e!4294550 () Bool)

(assert (=> b!7146330 (= tp!1971735 e!4294550)))

(declare-fun b!7146403 () Bool)

(declare-fun tp!1971786 () Bool)

(assert (=> b!7146403 (= e!4294550 tp!1971786)))

(declare-fun b!7146404 () Bool)

(declare-fun tp!1971783 () Bool)

(declare-fun tp!1971787 () Bool)

(assert (=> b!7146404 (= e!4294550 (and tp!1971783 tp!1971787))))

(declare-fun b!7146401 () Bool)

(assert (=> b!7146401 (= e!4294550 tp_is_empty!46065)))

(declare-fun b!7146402 () Bool)

(declare-fun tp!1971784 () Bool)

(declare-fun tp!1971785 () Bool)

(assert (=> b!7146402 (= e!4294550 (and tp!1971784 tp!1971785))))

(assert (= (and b!7146330 (is-ElementMatch!18214 (regTwo!36940 r!7278))) b!7146401))

(assert (= (and b!7146330 (is-Concat!27059 (regTwo!36940 r!7278))) b!7146402))

(assert (= (and b!7146330 (is-Star!18214 (regTwo!36940 r!7278))) b!7146403))

(assert (= (and b!7146330 (is-Union!18214 (regTwo!36940 r!7278))) b!7146404))

(declare-fun b!7146405 () Bool)

(declare-fun e!4294551 () Bool)

(declare-fun tp!1971788 () Bool)

(declare-fun tp!1971789 () Bool)

(assert (=> b!7146405 (= e!4294551 (and tp!1971788 tp!1971789))))

(assert (=> b!7146329 (= tp!1971730 e!4294551)))

(assert (= (and b!7146329 (is-Cons!69382 (exprs!7708 (h!75831 zl!333)))) b!7146405))

(declare-fun e!4294552 () Bool)

(assert (=> b!7146331 (= tp!1971736 e!4294552)))

(declare-fun b!7146408 () Bool)

(declare-fun tp!1971793 () Bool)

(assert (=> b!7146408 (= e!4294552 tp!1971793)))

(declare-fun b!7146409 () Bool)

(declare-fun tp!1971790 () Bool)

(declare-fun tp!1971794 () Bool)

(assert (=> b!7146409 (= e!4294552 (and tp!1971790 tp!1971794))))

(declare-fun b!7146406 () Bool)

(assert (=> b!7146406 (= e!4294552 tp_is_empty!46065)))

(declare-fun b!7146407 () Bool)

(declare-fun tp!1971791 () Bool)

(declare-fun tp!1971792 () Bool)

(assert (=> b!7146407 (= e!4294552 (and tp!1971791 tp!1971792))))

(assert (= (and b!7146331 (is-ElementMatch!18214 (reg!18543 r!7278))) b!7146406))

(assert (= (and b!7146331 (is-Concat!27059 (reg!18543 r!7278))) b!7146407))

(assert (= (and b!7146331 (is-Star!18214 (reg!18543 r!7278))) b!7146408))

(assert (= (and b!7146331 (is-Union!18214 (reg!18543 r!7278))) b!7146409))

(declare-fun e!4294553 () Bool)

(assert (=> b!7146334 (= tp!1971737 e!4294553)))

(declare-fun b!7146412 () Bool)

(declare-fun tp!1971798 () Bool)

(assert (=> b!7146412 (= e!4294553 tp!1971798)))

(declare-fun b!7146413 () Bool)

(declare-fun tp!1971795 () Bool)

(declare-fun tp!1971799 () Bool)

(assert (=> b!7146413 (= e!4294553 (and tp!1971795 tp!1971799))))

(declare-fun b!7146410 () Bool)

(assert (=> b!7146410 (= e!4294553 tp_is_empty!46065)))

(declare-fun b!7146411 () Bool)

(declare-fun tp!1971796 () Bool)

(declare-fun tp!1971797 () Bool)

(assert (=> b!7146411 (= e!4294553 (and tp!1971796 tp!1971797))))

(assert (= (and b!7146334 (is-ElementMatch!18214 (regOne!36941 r!7278))) b!7146410))

(assert (= (and b!7146334 (is-Concat!27059 (regOne!36941 r!7278))) b!7146411))

(assert (= (and b!7146334 (is-Star!18214 (regOne!36941 r!7278))) b!7146412))

(assert (= (and b!7146334 (is-Union!18214 (regOne!36941 r!7278))) b!7146413))

(declare-fun e!4294554 () Bool)

(assert (=> b!7146334 (= tp!1971732 e!4294554)))

(declare-fun b!7146416 () Bool)

(declare-fun tp!1971803 () Bool)

(assert (=> b!7146416 (= e!4294554 tp!1971803)))

(declare-fun b!7146417 () Bool)

(declare-fun tp!1971800 () Bool)

(declare-fun tp!1971804 () Bool)

(assert (=> b!7146417 (= e!4294554 (and tp!1971800 tp!1971804))))

(declare-fun b!7146414 () Bool)

(assert (=> b!7146414 (= e!4294554 tp_is_empty!46065)))

(declare-fun b!7146415 () Bool)

(declare-fun tp!1971801 () Bool)

(declare-fun tp!1971802 () Bool)

(assert (=> b!7146415 (= e!4294554 (and tp!1971801 tp!1971802))))

(assert (= (and b!7146334 (is-ElementMatch!18214 (regTwo!36941 r!7278))) b!7146414))

(assert (= (and b!7146334 (is-Concat!27059 (regTwo!36941 r!7278))) b!7146415))

(assert (= (and b!7146334 (is-Star!18214 (regTwo!36941 r!7278))) b!7146416))

(assert (= (and b!7146334 (is-Union!18214 (regTwo!36941 r!7278))) b!7146417))

(declare-fun b!7146425 () Bool)

(declare-fun e!4294560 () Bool)

(declare-fun tp!1971809 () Bool)

(assert (=> b!7146425 (= e!4294560 tp!1971809)))

(declare-fun b!7146424 () Bool)

(declare-fun e!4294559 () Bool)

(declare-fun tp!1971810 () Bool)

(assert (=> b!7146424 (= e!4294559 (and (inv!88600 (h!75831 (t!383524 zl!333))) e!4294560 tp!1971810))))

(assert (=> b!7146333 (= tp!1971734 e!4294559)))

(assert (= b!7146424 b!7146425))

(assert (= (and b!7146333 (is-Cons!69383 (t!383524 zl!333))) b!7146424))

(declare-fun m!7859360 () Bool)

(assert (=> b!7146424 m!7859360))

(declare-fun b_lambda!272759 () Bool)

(assert (= b_lambda!272757 (or b!7146336 b_lambda!272759)))

(declare-fun bs!1889181 () Bool)

(declare-fun d!2228148 () Bool)

(assert (= bs!1889181 (and d!2228148 b!7146336)))

(declare-fun validRegex!9377 (Regex!18214) Bool)

(assert (=> bs!1889181 (= (dynLambda!28258 lambda!435783 (h!75830 (exprs!7708 c!101))) (validRegex!9377 (h!75830 (exprs!7708 c!101))))))

(declare-fun m!7859362 () Bool)

(assert (=> bs!1889181 m!7859362))

(assert (=> b!7146368 d!2228148))

(push 1)

(assert (not b!7146409))

(assert (not b!7146369))

(assert (not b!7146404))

(assert (not b!7146398))

(assert (not b_lambda!272759))

(assert (not bs!1889181))

(assert (not b!7146424))

(assert (not b!7146386))

(assert (not b!7146405))

(assert tp_is_empty!46065)

(assert (not d!2228136))

(assert (not b!7146413))

(assert (not b!7146402))

(assert (not b!7146400))

(assert (not b!7146415))

(assert (not b!7146412))

(assert (not b!7146407))

(assert (not b!7146380))

(assert (not d!2228144))

(assert (not b!7146425))

(assert (not b!7146375))

(assert (not d!2228142))

(assert (not d!2228138))

(assert (not b!7146403))

(assert (not b!7146411))

(assert (not b!7146399))

(assert (not b!7146417))

(assert (not b!7146408))

(assert (not b!7146416))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

