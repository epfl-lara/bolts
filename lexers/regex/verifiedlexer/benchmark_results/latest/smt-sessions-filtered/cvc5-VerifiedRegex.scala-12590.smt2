; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697682 () Bool)

(assert start!697682)

(declare-fun b!7157132 () Bool)

(declare-fun e!4299602 () Bool)

(declare-datatypes ((C!36850 0))(
  ( (C!36851 (val!28373 Int)) )
))
(declare-datatypes ((Regex!18288 0))(
  ( (ElementMatch!18288 (c!1333766 C!36850)) (Concat!27133 (regOne!37088 Regex!18288) (regTwo!37088 Regex!18288)) (EmptyExpr!18288) (Star!18288 (reg!18617 Regex!18288)) (EmptyLang!18288) (Union!18288 (regOne!37089 Regex!18288) (regTwo!37089 Regex!18288)) )
))
(declare-datatypes ((List!69612 0))(
  ( (Nil!69488) (Cons!69488 (h!75936 Regex!18288) (t!383629 List!69612)) )
))
(declare-datatypes ((Context!14480 0))(
  ( (Context!14481 (exprs!7740 List!69612)) )
))
(declare-fun c!9606 () Context!14480)

(declare-fun lambda!436543 () Int)

(declare-fun forall!17125 (List!69612 Int) Bool)

(assert (=> b!7157132 (= e!4299602 (not (forall!17125 (exprs!7740 c!9606) lambda!436543)))))

(declare-fun lt!2569433 () List!69612)

(declare-datatypes ((List!69613 0))(
  ( (Nil!69489) (Cons!69489 (h!75937 Context!14480) (t!383630 List!69613)) )
))
(declare-fun zl!1504 () List!69613)

(declare-fun unfocusZipperList!2281 (List!69613) List!69612)

(assert (=> b!7157132 (= lt!2569433 (unfocusZipperList!2281 zl!1504))))

(declare-fun b!7157133 () Bool)

(declare-fun e!4299600 () Bool)

(declare-fun tp!1979173 () Bool)

(assert (=> b!7157133 (= e!4299600 tp!1979173)))

(declare-fun b!7157134 () Bool)

(declare-fun res!2918268 () Bool)

(assert (=> b!7157134 (=> (not res!2918268) (not e!4299602))))

(assert (=> b!7157134 (= res!2918268 (is-Cons!69489 zl!1504))))

(declare-fun res!2918270 () Bool)

(assert (=> start!697682 (=> (not res!2918270) (not e!4299602))))

(declare-fun contains!20688 (List!69613 Context!14480) Bool)

(assert (=> start!697682 (= res!2918270 (contains!20688 zl!1504 c!9606))))

(assert (=> start!697682 e!4299602))

(declare-fun e!4299599 () Bool)

(assert (=> start!697682 e!4299599))

(declare-fun inv!88743 (Context!14480) Bool)

(assert (=> start!697682 (and (inv!88743 c!9606) e!4299600)))

(declare-fun b!7157135 () Bool)

(declare-fun e!4299601 () Bool)

(declare-fun tp!1979174 () Bool)

(assert (=> b!7157135 (= e!4299599 (and (inv!88743 (h!75937 zl!1504)) e!4299601 tp!1979174))))

(declare-fun b!7157136 () Bool)

(declare-fun tp!1979172 () Bool)

(assert (=> b!7157136 (= e!4299601 tp!1979172)))

(declare-fun b!7157137 () Bool)

(declare-fun res!2918269 () Bool)

(assert (=> b!7157137 (=> (not res!2918269) (not e!4299602))))

(assert (=> b!7157137 (= res!2918269 (not (contains!20688 (t!383630 zl!1504) c!9606)))))

(assert (= (and start!697682 res!2918270) b!7157134))

(assert (= (and b!7157134 res!2918268) b!7157137))

(assert (= (and b!7157137 res!2918269) b!7157132))

(assert (= b!7157135 b!7157136))

(assert (= (and start!697682 (is-Cons!69489 zl!1504)) b!7157135))

(assert (= start!697682 b!7157133))

(declare-fun m!7863616 () Bool)

(assert (=> b!7157132 m!7863616))

(declare-fun m!7863618 () Bool)

(assert (=> b!7157132 m!7863618))

(declare-fun m!7863620 () Bool)

(assert (=> start!697682 m!7863620))

(declare-fun m!7863622 () Bool)

(assert (=> start!697682 m!7863622))

(declare-fun m!7863624 () Bool)

(assert (=> b!7157135 m!7863624))

(declare-fun m!7863626 () Bool)

(assert (=> b!7157137 m!7863626))

(push 1)

(assert (not b!7157133))

(assert (not b!7157132))

(assert (not start!697682))

(assert (not b!7157137))

(assert (not b!7157136))

(assert (not b!7157135))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1890043 () Bool)

(declare-fun d!2229861 () Bool)

(assert (= bs!1890043 (and d!2229861 b!7157132)))

(declare-fun lambda!436549 () Int)

(assert (=> bs!1890043 (= lambda!436549 lambda!436543)))

(assert (=> d!2229861 (= (inv!88743 (h!75937 zl!1504)) (forall!17125 (exprs!7740 (h!75937 zl!1504)) lambda!436549))))

(declare-fun bs!1890044 () Bool)

(assert (= bs!1890044 d!2229861))

(declare-fun m!7863640 () Bool)

(assert (=> bs!1890044 m!7863640))

(assert (=> b!7157135 d!2229861))

(declare-fun d!2229863 () Bool)

(declare-fun res!2918284 () Bool)

(declare-fun e!4299619 () Bool)

(assert (=> d!2229863 (=> res!2918284 e!4299619)))

(assert (=> d!2229863 (= res!2918284 (is-Nil!69488 (exprs!7740 c!9606)))))

(assert (=> d!2229863 (= (forall!17125 (exprs!7740 c!9606) lambda!436543) e!4299619)))

(declare-fun b!7157160 () Bool)

(declare-fun e!4299620 () Bool)

(assert (=> b!7157160 (= e!4299619 e!4299620)))

(declare-fun res!2918285 () Bool)

(assert (=> b!7157160 (=> (not res!2918285) (not e!4299620))))

(declare-fun dynLambda!28313 (Int Regex!18288) Bool)

(assert (=> b!7157160 (= res!2918285 (dynLambda!28313 lambda!436543 (h!75936 (exprs!7740 c!9606))))))

(declare-fun b!7157161 () Bool)

(assert (=> b!7157161 (= e!4299620 (forall!17125 (t!383629 (exprs!7740 c!9606)) lambda!436543))))

(assert (= (and d!2229863 (not res!2918284)) b!7157160))

(assert (= (and b!7157160 res!2918285) b!7157161))

(declare-fun b_lambda!273363 () Bool)

(assert (=> (not b_lambda!273363) (not b!7157160)))

(declare-fun m!7863642 () Bool)

(assert (=> b!7157160 m!7863642))

(declare-fun m!7863644 () Bool)

(assert (=> b!7157161 m!7863644))

(assert (=> b!7157132 d!2229863))

(declare-fun bs!1890045 () Bool)

(declare-fun d!2229865 () Bool)

(assert (= bs!1890045 (and d!2229865 b!7157132)))

(declare-fun lambda!436552 () Int)

(assert (=> bs!1890045 (= lambda!436552 lambda!436543)))

(declare-fun bs!1890046 () Bool)

(assert (= bs!1890046 (and d!2229865 d!2229861)))

(assert (=> bs!1890046 (= lambda!436552 lambda!436549)))

(declare-fun lt!2569439 () List!69612)

(assert (=> d!2229865 (forall!17125 lt!2569439 lambda!436552)))

(declare-fun e!4299623 () List!69612)

(assert (=> d!2229865 (= lt!2569439 e!4299623)))

(declare-fun c!1333770 () Bool)

(assert (=> d!2229865 (= c!1333770 (is-Cons!69489 zl!1504))))

(assert (=> d!2229865 (= (unfocusZipperList!2281 zl!1504) lt!2569439)))

(declare-fun b!7157166 () Bool)

(declare-fun generalisedConcat!2436 (List!69612) Regex!18288)

(assert (=> b!7157166 (= e!4299623 (Cons!69488 (generalisedConcat!2436 (exprs!7740 (h!75937 zl!1504))) (unfocusZipperList!2281 (t!383630 zl!1504))))))

(declare-fun b!7157167 () Bool)

(assert (=> b!7157167 (= e!4299623 Nil!69488)))

(assert (= (and d!2229865 c!1333770) b!7157166))

(assert (= (and d!2229865 (not c!1333770)) b!7157167))

(declare-fun m!7863646 () Bool)

(assert (=> d!2229865 m!7863646))

(declare-fun m!7863648 () Bool)

(assert (=> b!7157166 m!7863648))

(declare-fun m!7863650 () Bool)

(assert (=> b!7157166 m!7863650))

(assert (=> b!7157132 d!2229865))

(declare-fun d!2229869 () Bool)

(declare-fun lt!2569444 () Bool)

(declare-fun content!14267 (List!69613) (Set Context!14480))

(assert (=> d!2229869 (= lt!2569444 (set.member c!9606 (content!14267 (t!383630 zl!1504))))))

(declare-fun e!4299631 () Bool)

(assert (=> d!2229869 (= lt!2569444 e!4299631)))

(declare-fun res!2918293 () Bool)

(assert (=> d!2229869 (=> (not res!2918293) (not e!4299631))))

(assert (=> d!2229869 (= res!2918293 (is-Cons!69489 (t!383630 zl!1504)))))

(assert (=> d!2229869 (= (contains!20688 (t!383630 zl!1504) c!9606) lt!2569444)))

(declare-fun b!7157174 () Bool)

(declare-fun e!4299630 () Bool)

(assert (=> b!7157174 (= e!4299631 e!4299630)))

(declare-fun res!2918292 () Bool)

(assert (=> b!7157174 (=> res!2918292 e!4299630)))

(assert (=> b!7157174 (= res!2918292 (= (h!75937 (t!383630 zl!1504)) c!9606))))

(declare-fun b!7157175 () Bool)

(assert (=> b!7157175 (= e!4299630 (contains!20688 (t!383630 (t!383630 zl!1504)) c!9606))))

(assert (= (and d!2229869 res!2918293) b!7157174))

(assert (= (and b!7157174 (not res!2918292)) b!7157175))

(declare-fun m!7863652 () Bool)

(assert (=> d!2229869 m!7863652))

(declare-fun m!7863654 () Bool)

(assert (=> d!2229869 m!7863654))

(declare-fun m!7863656 () Bool)

(assert (=> b!7157175 m!7863656))

(assert (=> b!7157137 d!2229869))

(declare-fun d!2229871 () Bool)

(declare-fun lt!2569445 () Bool)

(assert (=> d!2229871 (= lt!2569445 (set.member c!9606 (content!14267 zl!1504)))))

(declare-fun e!4299635 () Bool)

(assert (=> d!2229871 (= lt!2569445 e!4299635)))

(declare-fun res!2918297 () Bool)

(assert (=> d!2229871 (=> (not res!2918297) (not e!4299635))))

(assert (=> d!2229871 (= res!2918297 (is-Cons!69489 zl!1504))))

(assert (=> d!2229871 (= (contains!20688 zl!1504 c!9606) lt!2569445)))

(declare-fun b!7157178 () Bool)

(declare-fun e!4299634 () Bool)

(assert (=> b!7157178 (= e!4299635 e!4299634)))

(declare-fun res!2918296 () Bool)

(assert (=> b!7157178 (=> res!2918296 e!4299634)))

(assert (=> b!7157178 (= res!2918296 (= (h!75937 zl!1504) c!9606))))

(declare-fun b!7157179 () Bool)

(assert (=> b!7157179 (= e!4299634 (contains!20688 (t!383630 zl!1504) c!9606))))

(assert (= (and d!2229871 res!2918297) b!7157178))

(assert (= (and b!7157178 (not res!2918296)) b!7157179))

(declare-fun m!7863658 () Bool)

(assert (=> d!2229871 m!7863658))

(declare-fun m!7863660 () Bool)

(assert (=> d!2229871 m!7863660))

(assert (=> b!7157179 m!7863626))

(assert (=> start!697682 d!2229871))

(declare-fun bs!1890047 () Bool)

(declare-fun d!2229873 () Bool)

(assert (= bs!1890047 (and d!2229873 b!7157132)))

(declare-fun lambda!436553 () Int)

(assert (=> bs!1890047 (= lambda!436553 lambda!436543)))

(declare-fun bs!1890048 () Bool)

(assert (= bs!1890048 (and d!2229873 d!2229861)))

(assert (=> bs!1890048 (= lambda!436553 lambda!436549)))

(declare-fun bs!1890049 () Bool)

(assert (= bs!1890049 (and d!2229873 d!2229865)))

(assert (=> bs!1890049 (= lambda!436553 lambda!436552)))

(assert (=> d!2229873 (= (inv!88743 c!9606) (forall!17125 (exprs!7740 c!9606) lambda!436553))))

(declare-fun bs!1890050 () Bool)

(assert (= bs!1890050 d!2229873))

(declare-fun m!7863662 () Bool)

(assert (=> bs!1890050 m!7863662))

(assert (=> start!697682 d!2229873))

(declare-fun b!7157187 () Bool)

(declare-fun e!4299641 () Bool)

(declare-fun tp!1979188 () Bool)

(assert (=> b!7157187 (= e!4299641 tp!1979188)))

(declare-fun tp!1979189 () Bool)

(declare-fun b!7157186 () Bool)

(declare-fun e!4299640 () Bool)

(assert (=> b!7157186 (= e!4299640 (and (inv!88743 (h!75937 (t!383630 zl!1504))) e!4299641 tp!1979189))))

(assert (=> b!7157135 (= tp!1979174 e!4299640)))

(assert (= b!7157186 b!7157187))

(assert (= (and b!7157135 (is-Cons!69489 (t!383630 zl!1504))) b!7157186))

(declare-fun m!7863664 () Bool)

(assert (=> b!7157186 m!7863664))

(declare-fun b!7157192 () Bool)

(declare-fun e!4299644 () Bool)

(declare-fun tp!1979194 () Bool)

(declare-fun tp!1979195 () Bool)

(assert (=> b!7157192 (= e!4299644 (and tp!1979194 tp!1979195))))

(assert (=> b!7157133 (= tp!1979173 e!4299644)))

(assert (= (and b!7157133 (is-Cons!69488 (exprs!7740 c!9606))) b!7157192))

(declare-fun b!7157193 () Bool)

(declare-fun e!4299645 () Bool)

(declare-fun tp!1979196 () Bool)

(declare-fun tp!1979197 () Bool)

(assert (=> b!7157193 (= e!4299645 (and tp!1979196 tp!1979197))))

(assert (=> b!7157136 (= tp!1979172 e!4299645)))

(assert (= (and b!7157136 (is-Cons!69488 (exprs!7740 (h!75937 zl!1504)))) b!7157193))

(declare-fun b_lambda!273365 () Bool)

(assert (= b_lambda!273363 (or b!7157132 b_lambda!273365)))

(declare-fun bs!1890051 () Bool)

(declare-fun d!2229875 () Bool)

(assert (= bs!1890051 (and d!2229875 b!7157132)))

(declare-fun validRegex!9423 (Regex!18288) Bool)

(assert (=> bs!1890051 (= (dynLambda!28313 lambda!436543 (h!75936 (exprs!7740 c!9606))) (validRegex!9423 (h!75936 (exprs!7740 c!9606))))))

(declare-fun m!7863666 () Bool)

(assert (=> bs!1890051 m!7863666))

(assert (=> b!7157160 d!2229875))

(push 1)

(assert (not b!7157186))

(assert (not b!7157175))

(assert (not d!2229869))

(assert (not d!2229861))

(assert (not b!7157161))

(assert (not bs!1890051))

(assert (not d!2229871))

(assert (not b_lambda!273365))

(assert (not b!7157187))

(assert (not b!7157166))

(assert (not b!7157179))

(assert (not d!2229865))

(assert (not d!2229873))

(assert (not b!7157193))

(assert (not b!7157192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

