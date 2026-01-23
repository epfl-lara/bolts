; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!699934 () Bool)

(assert start!699934)

(declare-fun b!7193937 () Bool)

(declare-fun res!2928732 () Bool)

(declare-fun e!4319994 () Bool)

(assert (=> b!7193937 (=> (not res!2928732) (not e!4319994))))

(declare-datatypes ((C!37018 0))(
  ( (C!37019 (val!28457 Int)) )
))
(declare-datatypes ((List!69840 0))(
  ( (Nil!69716) (Cons!69716 (h!76164 C!37018) (t!383865 List!69840)) )
))
(declare-fun s!7961 () List!69840)

(declare-fun isEmpty!40239 (List!69840) Bool)

(assert (=> b!7193937 (= res!2928732 (not (isEmpty!40239 s!7961)))))

(declare-fun b!7193938 () Bool)

(declare-fun res!2928729 () Bool)

(assert (=> b!7193938 (=> (not res!2928729) (not e!4319994))))

(declare-datatypes ((Regex!18372 0))(
  ( (ElementMatch!18372 (c!1338976 C!37018)) (Concat!27217 (regOne!37256 Regex!18372) (regTwo!37256 Regex!18372)) (EmptyExpr!18372) (Star!18372 (reg!18701 Regex!18372)) (EmptyLang!18372) (Union!18372 (regOne!37257 Regex!18372) (regTwo!37257 Regex!18372)) )
))
(declare-datatypes ((List!69841 0))(
  ( (Nil!69717) (Cons!69717 (h!76165 Regex!18372) (t!383866 List!69841)) )
))
(declare-datatypes ((Context!14648 0))(
  ( (Context!14649 (exprs!7824 List!69841)) )
))
(declare-fun c!10544 () Context!14648)

(declare-fun head!14702 (List!69841) Regex!18372)

(assert (=> b!7193938 (= res!2928729 (= (head!14702 (exprs!7824 c!10544)) EmptyLang!18372))))

(declare-fun b!7193939 () Bool)

(declare-fun e!4319993 () Bool)

(declare-fun tp!1999729 () Bool)

(assert (=> b!7193939 (= e!4319993 tp!1999729)))

(declare-fun b!7193940 () Bool)

(declare-fun e!4319995 () Bool)

(declare-fun tp_is_empty!46301 () Bool)

(declare-fun tp!1999728 () Bool)

(assert (=> b!7193940 (= e!4319995 (and tp_is_empty!46301 tp!1999728))))

(declare-fun tp!1999726 () Bool)

(declare-fun setNonEmpty!53310 () Bool)

(declare-fun setElem!53310 () Context!14648)

(declare-fun setRes!53310 () Bool)

(declare-fun inv!88953 (Context!14648) Bool)

(assert (=> setNonEmpty!53310 (= setRes!53310 (and tp!1999726 (inv!88953 setElem!53310) e!4319993))))

(declare-fun z!3517 () (Set Context!14648))

(declare-fun setRest!53310 () (Set Context!14648))

(assert (=> setNonEmpty!53310 (= z!3517 (set.union (set.insert setElem!53310 (as set.empty (Set Context!14648))) setRest!53310))))

(declare-fun b!7193941 () Bool)

(declare-fun e!4319992 () Bool)

(declare-fun tp!1999727 () Bool)

(assert (=> b!7193941 (= e!4319992 tp!1999727)))

(declare-fun setIsEmpty!53310 () Bool)

(assert (=> setIsEmpty!53310 setRes!53310))

(declare-fun b!7193942 () Bool)

(assert (=> b!7193942 (= e!4319994 (= s!7961 Nil!69716))))

(declare-fun res!2928731 () Bool)

(assert (=> start!699934 (=> (not res!2928731) (not e!4319994))))

(assert (=> start!699934 (= res!2928731 (= z!3517 (set.insert c!10544 (as set.empty (Set Context!14648)))))))

(assert (=> start!699934 e!4319994))

(declare-fun condSetEmpty!53310 () Bool)

(assert (=> start!699934 (= condSetEmpty!53310 (= z!3517 (as set.empty (Set Context!14648))))))

(assert (=> start!699934 setRes!53310))

(assert (=> start!699934 (and (inv!88953 c!10544) e!4319992)))

(assert (=> start!699934 e!4319995))

(declare-fun b!7193936 () Bool)

(declare-fun res!2928730 () Bool)

(assert (=> b!7193936 (=> (not res!2928730) (not e!4319994))))

(declare-fun isEmpty!40240 (List!69841) Bool)

(assert (=> b!7193936 (= res!2928730 (not (isEmpty!40240 (exprs!7824 c!10544))))))

(assert (= (and start!699934 res!2928731) b!7193936))

(assert (= (and b!7193936 res!2928730) b!7193938))

(assert (= (and b!7193938 res!2928729) b!7193937))

(assert (= (and b!7193937 res!2928732) b!7193942))

(assert (= (and start!699934 condSetEmpty!53310) setIsEmpty!53310))

(assert (= (and start!699934 (not condSetEmpty!53310)) setNonEmpty!53310))

(assert (= setNonEmpty!53310 b!7193939))

(assert (= start!699934 b!7193941))

(assert (= (and start!699934 (is-Cons!69716 s!7961)) b!7193940))

(declare-fun m!7888564 () Bool)

(assert (=> setNonEmpty!53310 m!7888564))

(declare-fun m!7888566 () Bool)

(assert (=> start!699934 m!7888566))

(declare-fun m!7888568 () Bool)

(assert (=> start!699934 m!7888568))

(declare-fun m!7888570 () Bool)

(assert (=> b!7193938 m!7888570))

(declare-fun m!7888572 () Bool)

(assert (=> b!7193937 m!7888572))

(declare-fun m!7888574 () Bool)

(assert (=> b!7193936 m!7888574))

(push 1)

(assert (not b!7193936))

(assert (not setNonEmpty!53310))

(assert (not start!699934))

(assert (not b!7193937))

(assert (not b!7193941))

(assert tp_is_empty!46301)

(assert (not b!7193938))

(assert (not b!7193940))

(assert (not b!7193939))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2241065 () Bool)

(assert (=> d!2241065 (= (head!14702 (exprs!7824 c!10544)) (h!76165 (exprs!7824 c!10544)))))

(assert (=> b!7193938 d!2241065))

(declare-fun d!2241067 () Bool)

(declare-fun lambda!437994 () Int)

(declare-fun forall!17198 (List!69841 Int) Bool)

(assert (=> d!2241067 (= (inv!88953 setElem!53310) (forall!17198 (exprs!7824 setElem!53310) lambda!437994))))

(declare-fun bs!1900404 () Bool)

(assert (= bs!1900404 d!2241067))

(declare-fun m!7888588 () Bool)

(assert (=> bs!1900404 m!7888588))

(assert (=> setNonEmpty!53310 d!2241067))

(declare-fun d!2241071 () Bool)

(assert (=> d!2241071 (= (isEmpty!40240 (exprs!7824 c!10544)) (is-Nil!69717 (exprs!7824 c!10544)))))

(assert (=> b!7193936 d!2241071))

(declare-fun bs!1900405 () Bool)

(declare-fun d!2241073 () Bool)

(assert (= bs!1900405 (and d!2241073 d!2241067)))

(declare-fun lambda!437995 () Int)

(assert (=> bs!1900405 (= lambda!437995 lambda!437994)))

(assert (=> d!2241073 (= (inv!88953 c!10544) (forall!17198 (exprs!7824 c!10544) lambda!437995))))

(declare-fun bs!1900406 () Bool)

(assert (= bs!1900406 d!2241073))

(declare-fun m!7888590 () Bool)

(assert (=> bs!1900406 m!7888590))

(assert (=> start!699934 d!2241073))

(declare-fun d!2241075 () Bool)

(assert (=> d!2241075 (= (isEmpty!40239 s!7961) (is-Nil!69716 s!7961))))

(assert (=> b!7193937 d!2241075))

(declare-fun b!7193968 () Bool)

(declare-fun e!4320010 () Bool)

(declare-fun tp!1999746 () Bool)

(declare-fun tp!1999747 () Bool)

(assert (=> b!7193968 (= e!4320010 (and tp!1999746 tp!1999747))))

(assert (=> b!7193939 (= tp!1999729 e!4320010)))

(assert (= (and b!7193939 (is-Cons!69717 (exprs!7824 setElem!53310))) b!7193968))

(declare-fun b!7193973 () Bool)

(declare-fun e!4320013 () Bool)

(declare-fun tp!1999750 () Bool)

(assert (=> b!7193973 (= e!4320013 (and tp_is_empty!46301 tp!1999750))))

(assert (=> b!7193940 (= tp!1999728 e!4320013)))

(assert (= (and b!7193940 (is-Cons!69716 (t!383865 s!7961))) b!7193973))

(declare-fun condSetEmpty!53316 () Bool)

(assert (=> setNonEmpty!53310 (= condSetEmpty!53316 (= setRest!53310 (as set.empty (Set Context!14648))))))

(declare-fun setRes!53316 () Bool)

(assert (=> setNonEmpty!53310 (= tp!1999726 setRes!53316)))

(declare-fun setIsEmpty!53316 () Bool)

(assert (=> setIsEmpty!53316 setRes!53316))

(declare-fun e!4320016 () Bool)

(declare-fun tp!1999756 () Bool)

(declare-fun setNonEmpty!53316 () Bool)

(declare-fun setElem!53316 () Context!14648)

(assert (=> setNonEmpty!53316 (= setRes!53316 (and tp!1999756 (inv!88953 setElem!53316) e!4320016))))

(declare-fun setRest!53316 () (Set Context!14648))

(assert (=> setNonEmpty!53316 (= setRest!53310 (set.union (set.insert setElem!53316 (as set.empty (Set Context!14648))) setRest!53316))))

(declare-fun b!7193978 () Bool)

(declare-fun tp!1999755 () Bool)

(assert (=> b!7193978 (= e!4320016 tp!1999755)))

(assert (= (and setNonEmpty!53310 condSetEmpty!53316) setIsEmpty!53316))

(assert (= (and setNonEmpty!53310 (not condSetEmpty!53316)) setNonEmpty!53316))

(assert (= setNonEmpty!53316 b!7193978))

(declare-fun m!7888592 () Bool)

(assert (=> setNonEmpty!53316 m!7888592))

(declare-fun b!7193979 () Bool)

(declare-fun e!4320017 () Bool)

(declare-fun tp!1999757 () Bool)

(declare-fun tp!1999758 () Bool)

(assert (=> b!7193979 (= e!4320017 (and tp!1999757 tp!1999758))))

(assert (=> b!7193941 (= tp!1999727 e!4320017)))

(assert (= (and b!7193941 (is-Cons!69717 (exprs!7824 c!10544))) b!7193979))

(push 1)

(assert (not setNonEmpty!53316))

(assert (not b!7193973))

(assert (not d!2241067))

(assert (not b!7193979))

(assert (not d!2241073))

(assert (not b!7193968))

(assert (not b!7193978))

(assert tp_is_empty!46301)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

