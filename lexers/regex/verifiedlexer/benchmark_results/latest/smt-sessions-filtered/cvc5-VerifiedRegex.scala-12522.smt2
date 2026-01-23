; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!695782 () Bool)

(assert start!695782)

(declare-fun b!7139178 () Bool)

(declare-fun e!4290494 () Bool)

(declare-fun tp!1968716 () Bool)

(assert (=> b!7139178 (= e!4290494 tp!1968716)))

(declare-fun b!7139179 () Bool)

(declare-fun e!4290489 () Bool)

(declare-fun tp!1968714 () Bool)

(declare-fun tp!1968719 () Bool)

(assert (=> b!7139179 (= e!4290489 (and tp!1968714 tp!1968719))))

(declare-fun b!7139180 () Bool)

(declare-fun tp_is_empty!45941 () Bool)

(assert (=> b!7139180 (= e!4290489 tp_is_empty!45941)))

(declare-fun res!2913010 () Bool)

(declare-fun e!4290493 () Bool)

(assert (=> start!695782 (=> (not res!2913010) (not e!4290493))))

(declare-datatypes ((C!36578 0))(
  ( (C!36579 (val!28237 Int)) )
))
(declare-datatypes ((Regex!18152 0))(
  ( (ElementMatch!18152 (c!1331341 C!36578)) (Concat!26997 (regOne!36816 Regex!18152) (regTwo!36816 Regex!18152)) (EmptyExpr!18152) (Star!18152 (reg!18481 Regex!18152)) (EmptyLang!18152) (Union!18152 (regOne!36817 Regex!18152) (regTwo!36817 Regex!18152)) )
))
(declare-fun r!11483 () Regex!18152)

(declare-fun validRegex!9319 (Regex!18152) Bool)

(assert (=> start!695782 (= res!2913010 (validRegex!9319 r!11483))))

(assert (=> start!695782 e!4290493))

(assert (=> start!695782 e!4290489))

(declare-fun condSetEmpty!52480 () Bool)

(declare-datatypes ((List!69382 0))(
  ( (Nil!69258) (Cons!69258 (h!75706 Regex!18152) (t!383399 List!69382)) )
))
(declare-datatypes ((Context!14292 0))(
  ( (Context!14293 (exprs!7646 List!69382)) )
))
(declare-fun z!3189 () (Set Context!14292))

(assert (=> start!695782 (= condSetEmpty!52480 (= z!3189 (as set.empty (Set Context!14292))))))

(declare-fun setRes!52480 () Bool)

(assert (=> start!695782 setRes!52480))

(declare-fun b!7139181 () Bool)

(declare-fun e!4290490 () Bool)

(declare-fun e!4290491 () Bool)

(assert (=> b!7139181 (= e!4290490 (not e!4290491))))

(declare-fun res!2913012 () Bool)

(assert (=> b!7139181 (=> res!2913012 e!4290491)))

(declare-fun lt!2566773 () List!69382)

(declare-fun lambda!434289 () Int)

(declare-fun lt!2566771 () Bool)

(declare-fun exists!3924 (List!69382 Int) Bool)

(assert (=> b!7139181 (= res!2913012 (not (= lt!2566771 (exists!3924 lt!2566773 lambda!434289))))))

(assert (=> b!7139181 (= lt!2566771 (exists!3924 lt!2566773 lambda!434289))))

(declare-fun lt!2566775 () Regex!18152)

(declare-fun nullable!7671 (Regex!18152) Bool)

(assert (=> b!7139181 (= lt!2566771 (nullable!7671 lt!2566775))))

(declare-datatypes ((Unit!163159 0))(
  ( (Unit!163160) )
))
(declare-fun lt!2566772 () Unit!163159)

(declare-fun nullableGenUnionSpec!39 (Regex!18152 List!69382) Unit!163159)

(assert (=> b!7139181 (= lt!2566772 (nullableGenUnionSpec!39 lt!2566775 lt!2566773))))

(declare-fun b!7139182 () Bool)

(declare-fun e!4290492 () Bool)

(assert (=> b!7139182 (= e!4290492 e!4290490)))

(declare-fun res!2913008 () Bool)

(assert (=> b!7139182 (=> (not res!2913008) (not e!4290490))))

(assert (=> b!7139182 (= res!2913008 (= r!11483 lt!2566775))))

(declare-fun generalisedUnion!2657 (List!69382) Regex!18152)

(assert (=> b!7139182 (= lt!2566775 (generalisedUnion!2657 lt!2566773))))

(declare-datatypes ((List!69383 0))(
  ( (Nil!69259) (Cons!69259 (h!75707 Context!14292) (t!383400 List!69383)) )
))
(declare-fun lt!2566774 () List!69383)

(declare-fun unfocusZipperList!2193 (List!69383) List!69382)

(assert (=> b!7139182 (= lt!2566773 (unfocusZipperList!2193 lt!2566774))))

(declare-fun b!7139183 () Bool)

(assert (=> b!7139183 (= e!4290491 (exists!3924 lt!2566773 lambda!434289))))

(declare-fun b!7139184 () Bool)

(declare-fun tp!1968717 () Bool)

(declare-fun tp!1968715 () Bool)

(assert (=> b!7139184 (= e!4290489 (and tp!1968717 tp!1968715))))

(declare-fun b!7139185 () Bool)

(declare-fun tp!1968720 () Bool)

(assert (=> b!7139185 (= e!4290489 tp!1968720)))

(declare-fun setIsEmpty!52480 () Bool)

(assert (=> setIsEmpty!52480 setRes!52480))

(declare-fun b!7139186 () Bool)

(declare-fun res!2913011 () Bool)

(assert (=> b!7139186 (=> res!2913011 e!4290491)))

(assert (=> b!7139186 (= res!2913011 (not lt!2566771))))

(declare-fun b!7139187 () Bool)

(assert (=> b!7139187 (= e!4290493 e!4290492)))

(declare-fun res!2913009 () Bool)

(assert (=> b!7139187 (=> (not res!2913009) (not e!4290492))))

(declare-fun unfocusZipper!2500 (List!69383) Regex!18152)

(assert (=> b!7139187 (= res!2913009 (= r!11483 (unfocusZipper!2500 lt!2566774)))))

(declare-fun toList!11183 ((Set Context!14292)) List!69383)

(assert (=> b!7139187 (= lt!2566774 (toList!11183 z!3189))))

(declare-fun tp!1968718 () Bool)

(declare-fun setElem!52480 () Context!14292)

(declare-fun setNonEmpty!52480 () Bool)

(declare-fun inv!88445 (Context!14292) Bool)

(assert (=> setNonEmpty!52480 (= setRes!52480 (and tp!1968718 (inv!88445 setElem!52480) e!4290494))))

(declare-fun setRest!52480 () (Set Context!14292))

(assert (=> setNonEmpty!52480 (= z!3189 (set.union (set.insert setElem!52480 (as set.empty (Set Context!14292))) setRest!52480))))

(assert (= (and start!695782 res!2913010) b!7139187))

(assert (= (and b!7139187 res!2913009) b!7139182))

(assert (= (and b!7139182 res!2913008) b!7139181))

(assert (= (and b!7139181 (not res!2913012)) b!7139186))

(assert (= (and b!7139186 (not res!2913011)) b!7139183))

(assert (= (and start!695782 (is-ElementMatch!18152 r!11483)) b!7139180))

(assert (= (and start!695782 (is-Concat!26997 r!11483)) b!7139184))

(assert (= (and start!695782 (is-Star!18152 r!11483)) b!7139185))

(assert (= (and start!695782 (is-Union!18152 r!11483)) b!7139179))

(assert (= (and start!695782 condSetEmpty!52480) setIsEmpty!52480))

(assert (= (and start!695782 (not condSetEmpty!52480)) setNonEmpty!52480))

(assert (= setNonEmpty!52480 b!7139178))

(declare-fun m!7854510 () Bool)

(assert (=> b!7139183 m!7854510))

(declare-fun m!7854512 () Bool)

(assert (=> b!7139182 m!7854512))

(declare-fun m!7854514 () Bool)

(assert (=> b!7139182 m!7854514))

(declare-fun m!7854516 () Bool)

(assert (=> b!7139187 m!7854516))

(declare-fun m!7854518 () Bool)

(assert (=> b!7139187 m!7854518))

(assert (=> b!7139181 m!7854510))

(assert (=> b!7139181 m!7854510))

(declare-fun m!7854520 () Bool)

(assert (=> b!7139181 m!7854520))

(declare-fun m!7854522 () Bool)

(assert (=> b!7139181 m!7854522))

(declare-fun m!7854524 () Bool)

(assert (=> setNonEmpty!52480 m!7854524))

(declare-fun m!7854526 () Bool)

(assert (=> start!695782 m!7854526))

(push 1)

(assert (not b!7139187))

(assert (not b!7139185))

(assert tp_is_empty!45941)

(assert (not b!7139179))

(assert (not b!7139181))

(assert (not b!7139184))

(assert (not b!7139182))

(assert (not b!7139183))

(assert (not start!695782))

(assert (not b!7139178))

(assert (not setNonEmpty!52480))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

