; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712358 () Bool)

(assert start!712358)

(declare-fun b_free!133955 () Bool)

(declare-fun b_next!134745 () Bool)

(assert (=> start!712358 (= b_free!133955 (not b_next!134745))))

(declare-fun tp!2075424 () Bool)

(declare-fun b_and!351285 () Bool)

(assert (=> start!712358 (= tp!2075424 b_and!351285)))

(declare-fun b!7312892 () Bool)

(declare-fun res!2954646 () Bool)

(declare-fun e!4377363 () Bool)

(assert (=> b!7312892 (=> (not res!2954646) (not e!4377363))))

(declare-fun f!883 () Int)

(declare-datatypes ((B!3503 0))(
  ( (B!3504 (val!29059 Int)) )
))
(declare-datatypes ((List!71155 0))(
  ( (Nil!71031) (Cons!71031 (h!77479 B!3503) (t!385321 List!71155)) )
))
(declare-fun lRes!18 () List!71155)

(declare-datatypes ((A!801 0))(
  ( (A!802 (val!29060 Int)) )
))
(declare-fun s!1437 () (Set A!801))

(declare-fun subseq!812 (List!71155 List!71155) Bool)

(declare-fun toList!11564 ((Set B!3503)) List!71155)

(declare-fun flatMap!3011 ((Set A!801) Int) (Set B!3503))

(assert (=> b!7312892 (= res!2954646 (subseq!812 lRes!18 (toList!11564 (flatMap!3011 s!1437 f!883))))))

(declare-fun b!7312893 () Bool)

(declare-fun e!4377364 () Bool)

(declare-fun tp_is_empty!47399 () Bool)

(declare-fun tp!2075423 () Bool)

(assert (=> b!7312893 (= e!4377364 (and tp_is_empty!47399 tp!2075423))))

(declare-fun b!7312894 () Bool)

(declare-fun res!2954644 () Bool)

(assert (=> b!7312894 (=> (not res!2954644) (not e!4377363))))

(assert (=> b!7312894 (= res!2954644 (is-Cons!71031 lRes!18))))

(declare-fun setIsEmpty!53998 () Bool)

(declare-fun setRes!53998 () Bool)

(assert (=> setIsEmpty!53998 setRes!53998))

(declare-fun setNonEmpty!53998 () Bool)

(declare-fun tp!2075422 () Bool)

(declare-fun tp_is_empty!47397 () Bool)

(assert (=> setNonEmpty!53998 (= setRes!53998 (and tp!2075422 tp_is_empty!47397))))

(declare-fun setElem!53998 () A!801)

(declare-fun setRest!53998 () (Set A!801))

(assert (=> setNonEmpty!53998 (= s!1437 (set.union (set.insert setElem!53998 (as set.empty (Set A!801))) setRest!53998))))

(declare-fun b!7312895 () Bool)

(declare-fun isEmpty!40846 (List!71155) Bool)

(assert (=> b!7312895 (= e!4377363 (isEmpty!40846 lRes!18))))

(declare-fun res!2954645 () Bool)

(assert (=> start!712358 (=> (not res!2954645) (not e!4377363))))

(declare-fun elmt!118 () A!801)

(assert (=> start!712358 (= res!2954645 (= s!1437 (set.insert elmt!118 (as set.empty (Set A!801)))))))

(assert (=> start!712358 e!4377363))

(declare-fun condSetEmpty!53998 () Bool)

(assert (=> start!712358 (= condSetEmpty!53998 (= s!1437 (as set.empty (Set A!801))))))

(assert (=> start!712358 setRes!53998))

(assert (=> start!712358 tp_is_empty!47397))

(assert (=> start!712358 e!4377364))

(assert (=> start!712358 tp!2075424))

(assert (= (and start!712358 res!2954645) b!7312892))

(assert (= (and b!7312892 res!2954646) b!7312894))

(assert (= (and b!7312894 res!2954644) b!7312895))

(assert (= (and start!712358 condSetEmpty!53998) setIsEmpty!53998))

(assert (= (and start!712358 (not condSetEmpty!53998)) setNonEmpty!53998))

(assert (= (and start!712358 (is-Cons!71031 lRes!18)) b!7312893))

(declare-fun m!7977128 () Bool)

(assert (=> b!7312892 m!7977128))

(assert (=> b!7312892 m!7977128))

(declare-fun m!7977130 () Bool)

(assert (=> b!7312892 m!7977130))

(assert (=> b!7312892 m!7977130))

(declare-fun m!7977132 () Bool)

(assert (=> b!7312892 m!7977132))

(declare-fun m!7977134 () Bool)

(assert (=> b!7312895 m!7977134))

(declare-fun m!7977136 () Bool)

(assert (=> start!712358 m!7977136))

(push 1)

(assert (not b!7312895))

(assert tp_is_empty!47397)

(assert (not setNonEmpty!53998))

(assert tp_is_empty!47399)

(assert b_and!351285)

(assert (not b_next!134745))

(assert (not b!7312893))

(assert (not b!7312892))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351285)

(assert (not b_next!134745))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7312917 () Bool)

(declare-fun e!4377380 () Bool)

(declare-fun e!4377382 () Bool)

(assert (=> b!7312917 (= e!4377380 e!4377382)))

(declare-fun res!2954667 () Bool)

(assert (=> b!7312917 (=> res!2954667 e!4377382)))

(declare-fun e!4377381 () Bool)

(assert (=> b!7312917 (= res!2954667 e!4377381)))

(declare-fun res!2954666 () Bool)

(assert (=> b!7312917 (=> (not res!2954666) (not e!4377381))))

(assert (=> b!7312917 (= res!2954666 (= (h!77479 lRes!18) (h!77479 (toList!11564 (flatMap!3011 s!1437 f!883)))))))

(declare-fun b!7312919 () Bool)

(assert (=> b!7312919 (= e!4377382 (subseq!812 lRes!18 (t!385321 (toList!11564 (flatMap!3011 s!1437 f!883)))))))

(declare-fun b!7312918 () Bool)

(assert (=> b!7312918 (= e!4377381 (subseq!812 (t!385321 lRes!18) (t!385321 (toList!11564 (flatMap!3011 s!1437 f!883)))))))

(declare-fun d!2270629 () Bool)

(declare-fun res!2954664 () Bool)

(declare-fun e!4377379 () Bool)

(assert (=> d!2270629 (=> res!2954664 e!4377379)))

(assert (=> d!2270629 (= res!2954664 (is-Nil!71031 lRes!18))))

(assert (=> d!2270629 (= (subseq!812 lRes!18 (toList!11564 (flatMap!3011 s!1437 f!883))) e!4377379)))

(declare-fun b!7312916 () Bool)

(assert (=> b!7312916 (= e!4377379 e!4377380)))

(declare-fun res!2954665 () Bool)

(assert (=> b!7312916 (=> (not res!2954665) (not e!4377380))))

(assert (=> b!7312916 (= res!2954665 (is-Cons!71031 (toList!11564 (flatMap!3011 s!1437 f!883))))))

(assert (= (and d!2270629 (not res!2954664)) b!7312916))

(assert (= (and b!7312916 res!2954665) b!7312917))

(assert (= (and b!7312917 res!2954666) b!7312918))

(assert (= (and b!7312917 (not res!2954667)) b!7312919))

(declare-fun m!7977148 () Bool)

(assert (=> b!7312919 m!7977148))

(declare-fun m!7977150 () Bool)

(assert (=> b!7312918 m!7977150))

(assert (=> b!7312892 d!2270629))

(declare-fun d!2270633 () Bool)

(declare-fun e!4377393 () Bool)

(assert (=> d!2270633 e!4377393))

(declare-fun res!2954678 () Bool)

(assert (=> d!2270633 (=> (not res!2954678) (not e!4377393))))

(declare-fun lt!2600928 () List!71155)

(declare-fun noDuplicate!3036 (List!71155) Bool)

(assert (=> d!2270633 (= res!2954678 (noDuplicate!3036 lt!2600928))))

(declare-fun choose!56651 ((Set B!3503)) List!71155)

(assert (=> d!2270633 (= lt!2600928 (choose!56651 (flatMap!3011 s!1437 f!883)))))

(assert (=> d!2270633 (= (toList!11564 (flatMap!3011 s!1437 f!883)) lt!2600928)))

(declare-fun b!7312930 () Bool)

(declare-fun content!14855 (List!71155) (Set B!3503))

(assert (=> b!7312930 (= e!4377393 (= (content!14855 lt!2600928) (flatMap!3011 s!1437 f!883)))))

(assert (= (and d!2270633 res!2954678) b!7312930))

(declare-fun m!7977152 () Bool)

(assert (=> d!2270633 m!7977152))

(assert (=> d!2270633 m!7977128))

(declare-fun m!7977154 () Bool)

(assert (=> d!2270633 m!7977154))

(declare-fun m!7977156 () Bool)

(assert (=> b!7312930 m!7977156))

(assert (=> b!7312892 d!2270633))

(declare-fun d!2270635 () Bool)

(declare-fun choose!56652 ((Set A!801) Int) (Set B!3503))

(assert (=> d!2270635 (= (flatMap!3011 s!1437 f!883) (choose!56652 s!1437 f!883))))

(declare-fun bs!1914594 () Bool)

(assert (= bs!1914594 d!2270635))

(declare-fun m!7977158 () Bool)

(assert (=> bs!1914594 m!7977158))

(assert (=> b!7312892 d!2270635))

(declare-fun d!2270637 () Bool)

(assert (=> d!2270637 (= (isEmpty!40846 lRes!18) (is-Nil!71031 lRes!18))))

(assert (=> b!7312895 d!2270637))

(declare-fun b!7312939 () Bool)

(declare-fun e!4377400 () Bool)

(declare-fun tp!2075436 () Bool)

(assert (=> b!7312939 (= e!4377400 (and tp_is_empty!47399 tp!2075436))))

(assert (=> b!7312893 (= tp!2075423 e!4377400)))

(assert (= (and b!7312893 (is-Cons!71031 (t!385321 lRes!18))) b!7312939))

(declare-fun condSetEmpty!54004 () Bool)

(assert (=> setNonEmpty!53998 (= condSetEmpty!54004 (= setRest!53998 (as set.empty (Set A!801))))))

(declare-fun setRes!54004 () Bool)

(assert (=> setNonEmpty!53998 (= tp!2075422 setRes!54004)))

(declare-fun setIsEmpty!54004 () Bool)

(assert (=> setIsEmpty!54004 setRes!54004))

(declare-fun setNonEmpty!54004 () Bool)

(declare-fun tp!2075439 () Bool)

(assert (=> setNonEmpty!54004 (= setRes!54004 (and tp!2075439 tp_is_empty!47397))))

(declare-fun setElem!54004 () A!801)

(declare-fun setRest!54004 () (Set A!801))

(assert (=> setNonEmpty!54004 (= setRest!53998 (set.union (set.insert setElem!54004 (as set.empty (Set A!801))) setRest!54004))))

(assert (= (and setNonEmpty!53998 condSetEmpty!54004) setIsEmpty!54004))

(assert (= (and setNonEmpty!53998 (not condSetEmpty!54004)) setNonEmpty!54004))

(push 1)

(assert (not setNonEmpty!54004))

(assert (not d!2270635))

(assert tp_is_empty!47397)

(assert (not b!7312918))

(assert tp_is_empty!47399)

(assert b_and!351285)

(assert (not b!7312939))

(assert (not d!2270633))

(assert (not b!7312930))

(assert (not b_next!134745))

(assert (not b!7312919))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351285)

(assert (not b_next!134745))

(check-sat)

(pop 1)

