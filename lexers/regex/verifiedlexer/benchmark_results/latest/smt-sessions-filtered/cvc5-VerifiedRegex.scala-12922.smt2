; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712604 () Bool)

(assert start!712604)

(declare-fun b_free!133987 () Bool)

(declare-fun b_next!134777 () Bool)

(assert (=> start!712604 (= b_free!133987 (not b_next!134777))))

(declare-fun tp!2075688 () Bool)

(declare-fun b_and!351367 () Bool)

(assert (=> start!712604 (= tp!2075688 b_and!351367)))

(declare-fun res!2955285 () Bool)

(declare-fun e!4378136 () Bool)

(assert (=> start!712604 (=> (not res!2955285) (not e!4378136))))

(declare-datatypes ((A!833 0))(
  ( (A!834 (val!29091 Int)) )
))
(declare-fun s!1437 () (Set A!833))

(declare-fun elmt!118 () A!833)

(assert (=> start!712604 (= res!2955285 (= s!1437 (set.insert elmt!118 (as set.empty (Set A!833)))))))

(assert (=> start!712604 e!4378136))

(declare-fun condSetEmpty!54122 () Bool)

(assert (=> start!712604 (= condSetEmpty!54122 (= s!1437 (as set.empty (Set A!833))))))

(declare-fun setRes!54122 () Bool)

(assert (=> start!712604 setRes!54122))

(declare-fun tp_is_empty!47461 () Bool)

(assert (=> start!712604 tp_is_empty!47461))

(declare-fun e!4378135 () Bool)

(assert (=> start!712604 e!4378135))

(assert (=> start!712604 tp!2075688))

(declare-fun setIsEmpty!54122 () Bool)

(assert (=> setIsEmpty!54122 setRes!54122))

(declare-fun b!7313956 () Bool)

(declare-fun res!2955284 () Bool)

(assert (=> b!7313956 (=> (not res!2955284) (not e!4378136))))

(declare-fun f!883 () Int)

(declare-datatypes ((B!3535 0))(
  ( (B!3536 (val!29092 Int)) )
))
(declare-datatypes ((List!71176 0))(
  ( (Nil!71052) (Cons!71052 (h!77500 B!3535) (t!385381 List!71176)) )
))
(declare-fun lRes!18 () List!71176)

(declare-fun subseq!828 (List!71176 List!71176) Bool)

(declare-fun toList!11585 ((Set B!3535)) List!71176)

(declare-fun flatMap!3027 ((Set A!833) Int) (Set B!3535))

(assert (=> b!7313956 (= res!2955284 (subseq!828 lRes!18 (toList!11585 (flatMap!3027 s!1437 f!883))))))

(declare-fun b!7313957 () Bool)

(declare-fun tp_is_empty!47463 () Bool)

(declare-fun tp!2075690 () Bool)

(assert (=> b!7313957 (= e!4378135 (and tp_is_empty!47463 tp!2075690))))

(declare-fun b!7313958 () Bool)

(declare-fun ListPrimitiveSize!427 (List!71176) Int)

(assert (=> b!7313958 (= e!4378136 (< (ListPrimitiveSize!427 lRes!18) 0))))

(declare-fun setNonEmpty!54122 () Bool)

(declare-fun tp!2075689 () Bool)

(assert (=> setNonEmpty!54122 (= setRes!54122 (and tp!2075689 tp_is_empty!47461))))

(declare-fun setElem!54122 () A!833)

(declare-fun setRest!54122 () (Set A!833))

(assert (=> setNonEmpty!54122 (= s!1437 (set.union (set.insert setElem!54122 (as set.empty (Set A!833))) setRest!54122))))

(assert (= (and start!712604 res!2955285) b!7313956))

(assert (= (and b!7313956 res!2955284) b!7313958))

(assert (= (and start!712604 condSetEmpty!54122) setIsEmpty!54122))

(assert (= (and start!712604 (not condSetEmpty!54122)) setNonEmpty!54122))

(assert (= (and start!712604 (is-Cons!71052 lRes!18)) b!7313957))

(declare-fun m!7978156 () Bool)

(assert (=> start!712604 m!7978156))

(declare-fun m!7978158 () Bool)

(assert (=> b!7313956 m!7978158))

(assert (=> b!7313956 m!7978158))

(declare-fun m!7978160 () Bool)

(assert (=> b!7313956 m!7978160))

(assert (=> b!7313956 m!7978160))

(declare-fun m!7978162 () Bool)

(assert (=> b!7313956 m!7978162))

(declare-fun m!7978164 () Bool)

(assert (=> b!7313958 m!7978164))

(push 1)

(assert (not b!7313956))

(assert (not b!7313957))

(assert tp_is_empty!47463)

(assert (not b!7313958))

(assert (not b_next!134777))

(assert b_and!351367)

(assert tp_is_empty!47461)

(assert (not setNonEmpty!54122))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351367)

(assert (not b_next!134777))

(check-sat)

(get-model)

(pop 1)

(declare-fun e!4378151 () Bool)

(declare-fun b!7313979 () Bool)

(assert (=> b!7313979 (= e!4378151 (subseq!828 lRes!18 (t!385381 (toList!11585 (flatMap!3027 s!1437 f!883)))))))

(declare-fun d!2270941 () Bool)

(declare-fun res!2955303 () Bool)

(declare-fun e!4378154 () Bool)

(assert (=> d!2270941 (=> res!2955303 e!4378154)))

(assert (=> d!2270941 (= res!2955303 (is-Nil!71052 lRes!18))))

(assert (=> d!2270941 (= (subseq!828 lRes!18 (toList!11585 (flatMap!3027 s!1437 f!883))) e!4378154)))

(declare-fun b!7313978 () Bool)

(declare-fun e!4378153 () Bool)

(assert (=> b!7313978 (= e!4378153 (subseq!828 (t!385381 lRes!18) (t!385381 (toList!11585 (flatMap!3027 s!1437 f!883)))))))

(declare-fun b!7313976 () Bool)

(declare-fun e!4378152 () Bool)

(assert (=> b!7313976 (= e!4378154 e!4378152)))

(declare-fun res!2955302 () Bool)

(assert (=> b!7313976 (=> (not res!2955302) (not e!4378152))))

(assert (=> b!7313976 (= res!2955302 (is-Cons!71052 (toList!11585 (flatMap!3027 s!1437 f!883))))))

(declare-fun b!7313977 () Bool)

(assert (=> b!7313977 (= e!4378152 e!4378151)))

(declare-fun res!2955300 () Bool)

(assert (=> b!7313977 (=> res!2955300 e!4378151)))

(assert (=> b!7313977 (= res!2955300 e!4378153)))

(declare-fun res!2955301 () Bool)

(assert (=> b!7313977 (=> (not res!2955301) (not e!4378153))))

(assert (=> b!7313977 (= res!2955301 (= (h!77500 lRes!18) (h!77500 (toList!11585 (flatMap!3027 s!1437 f!883)))))))

(assert (= (and d!2270941 (not res!2955303)) b!7313976))

(assert (= (and b!7313976 res!2955302) b!7313977))

(assert (= (and b!7313977 res!2955301) b!7313978))

(assert (= (and b!7313977 (not res!2955300)) b!7313979))

(declare-fun m!7978176 () Bool)

(assert (=> b!7313979 m!7978176))

(declare-fun m!7978178 () Bool)

(assert (=> b!7313978 m!7978178))

(assert (=> b!7313956 d!2270941))

(declare-fun d!2270945 () Bool)

(declare-fun e!4378165 () Bool)

(assert (=> d!2270945 e!4378165))

(declare-fun res!2955314 () Bool)

(assert (=> d!2270945 (=> (not res!2955314) (not e!4378165))))

(declare-fun lt!2601376 () List!71176)

(declare-fun noDuplicate!3046 (List!71176) Bool)

(assert (=> d!2270945 (= res!2955314 (noDuplicate!3046 lt!2601376))))

(declare-fun choose!56688 ((Set B!3535)) List!71176)

(assert (=> d!2270945 (= lt!2601376 (choose!56688 (flatMap!3027 s!1437 f!883)))))

(assert (=> d!2270945 (= (toList!11585 (flatMap!3027 s!1437 f!883)) lt!2601376)))

(declare-fun b!7313988 () Bool)

(declare-fun content!14865 (List!71176) (Set B!3535))

(assert (=> b!7313988 (= e!4378165 (= (content!14865 lt!2601376) (flatMap!3027 s!1437 f!883)))))

(assert (= (and d!2270945 res!2955314) b!7313988))

(declare-fun m!7978180 () Bool)

(assert (=> d!2270945 m!7978180))

(assert (=> d!2270945 m!7978158))

(declare-fun m!7978182 () Bool)

(assert (=> d!2270945 m!7978182))

(declare-fun m!7978184 () Bool)

(assert (=> b!7313988 m!7978184))

(assert (=> b!7313956 d!2270945))

(declare-fun d!2270947 () Bool)

(declare-fun choose!56689 ((Set A!833) Int) (Set B!3535))

(assert (=> d!2270947 (= (flatMap!3027 s!1437 f!883) (choose!56689 s!1437 f!883))))

(declare-fun bs!1914661 () Bool)

(assert (= bs!1914661 d!2270947))

(declare-fun m!7978186 () Bool)

(assert (=> bs!1914661 m!7978186))

(assert (=> b!7313956 d!2270947))

(declare-fun d!2270949 () Bool)

(declare-fun lt!2601379 () Int)

(assert (=> d!2270949 (>= lt!2601379 0)))

(declare-fun e!4378172 () Int)

(assert (=> d!2270949 (= lt!2601379 e!4378172)))

(declare-fun c!1357775 () Bool)

(assert (=> d!2270949 (= c!1357775 (is-Nil!71052 lRes!18))))

(assert (=> d!2270949 (= (ListPrimitiveSize!427 lRes!18) lt!2601379)))

(declare-fun b!7313999 () Bool)

(assert (=> b!7313999 (= e!4378172 0)))

(declare-fun b!7314000 () Bool)

(assert (=> b!7314000 (= e!4378172 (+ 1 (ListPrimitiveSize!427 (t!385381 lRes!18))))))

(assert (= (and d!2270949 c!1357775) b!7313999))

(assert (= (and d!2270949 (not c!1357775)) b!7314000))

(declare-fun m!7978192 () Bool)

(assert (=> b!7314000 m!7978192))

(assert (=> b!7313958 d!2270949))

(declare-fun b!7314005 () Bool)

(declare-fun e!4378175 () Bool)

(declare-fun tp!2075702 () Bool)

(assert (=> b!7314005 (= e!4378175 (and tp_is_empty!47463 tp!2075702))))

(assert (=> b!7313957 (= tp!2075690 e!4378175)))

(assert (= (and b!7313957 (is-Cons!71052 (t!385381 lRes!18))) b!7314005))

(declare-fun condSetEmpty!54128 () Bool)

(assert (=> setNonEmpty!54122 (= condSetEmpty!54128 (= setRest!54122 (as set.empty (Set A!833))))))

(declare-fun setRes!54128 () Bool)

(assert (=> setNonEmpty!54122 (= tp!2075689 setRes!54128)))

(declare-fun setIsEmpty!54128 () Bool)

(assert (=> setIsEmpty!54128 setRes!54128))

(declare-fun setNonEmpty!54128 () Bool)

(declare-fun tp!2075705 () Bool)

(assert (=> setNonEmpty!54128 (= setRes!54128 (and tp!2075705 tp_is_empty!47461))))

(declare-fun setElem!54128 () A!833)

(declare-fun setRest!54128 () (Set A!833))

(assert (=> setNonEmpty!54128 (= setRest!54122 (set.union (set.insert setElem!54128 (as set.empty (Set A!833))) setRest!54128))))

(assert (= (and setNonEmpty!54122 condSetEmpty!54128) setIsEmpty!54128))

(assert (= (and setNonEmpty!54122 (not condSetEmpty!54128)) setNonEmpty!54128))

(push 1)

(assert (not b!7313988))

(assert (not b!7313978))

(assert (not setNonEmpty!54128))

(assert (not b_next!134777))

(assert (not b!7314000))

(assert (not d!2270945))

(assert b_and!351367)

(assert (not b!7314005))

(assert (not d!2270947))

(assert tp_is_empty!47461)

(assert (not b!7313979))

(assert tp_is_empty!47463)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351367)

(assert (not b_next!134777))

(check-sat)

(pop 1)

