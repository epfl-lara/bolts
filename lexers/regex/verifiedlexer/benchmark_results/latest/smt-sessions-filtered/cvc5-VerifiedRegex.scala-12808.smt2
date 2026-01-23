; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707840 () Bool)

(assert start!707840)

(declare-fun b!7262216 () Bool)

(assert (=> b!7262216 true))

(declare-fun res!2944444 () Bool)

(declare-fun e!4354895 () Bool)

(assert (=> start!707840 (=> (not res!2944444) (not e!4354895))))

(declare-datatypes ((C!37722 0))(
  ( (C!37723 (val!28809 Int)) )
))
(declare-datatypes ((Regex!18724 0))(
  ( (ElementMatch!18724 (c!1351028 C!37722)) (Concat!27569 (regOne!37960 Regex!18724) (regTwo!37960 Regex!18724)) (EmptyExpr!18724) (Star!18724 (reg!19053 Regex!18724)) (EmptyLang!18724) (Union!18724 (regOne!37961 Regex!18724) (regTwo!37961 Regex!18724)) )
))
(declare-datatypes ((List!70751 0))(
  ( (Nil!70627) (Cons!70627 (h!77075 Regex!18724) (t!384817 List!70751)) )
))
(declare-datatypes ((Context!15328 0))(
  ( (Context!15329 (exprs!8164 List!70751)) )
))
(declare-fun lt!2591176 () (Set Context!15328))

(declare-datatypes ((List!70752 0))(
  ( (Nil!70628) (Cons!70628 (h!77076 C!37722) (t!384818 List!70752)) )
))
(declare-fun s!7887 () List!70752)

(declare-fun matchZipper!3628 ((Set Context!15328) List!70752) Bool)

(assert (=> start!707840 (= res!2944444 (matchZipper!3628 lt!2591176 s!7887))))

(declare-datatypes ((List!70753 0))(
  ( (Nil!70629) (Cons!70629 (h!77077 Context!15328) (t!384819 List!70753)) )
))
(declare-fun zl!1658 () List!70753)

(declare-fun content!14718 (List!70753) (Set Context!15328))

(assert (=> start!707840 (= lt!2591176 (content!14718 zl!1658))))

(assert (=> start!707840 e!4354895))

(declare-fun e!4354892 () Bool)

(assert (=> start!707840 e!4354892))

(declare-fun e!4354896 () Bool)

(assert (=> start!707840 e!4354896))

(declare-fun e!4354893 () Bool)

(declare-fun lambda!446746 () Int)

(declare-fun exists!4476 ((Set Context!15328) Int) Bool)

(assert (=> b!7262216 (= e!4354893 (exists!4476 lt!2591176 lambda!446746))))

(assert (=> b!7262216 (exists!4476 lt!2591176 lambda!446746)))

(declare-datatypes ((Unit!164070 0))(
  ( (Unit!164071) )
))
(declare-fun lt!2591178 () Unit!164070)

(declare-fun lemmaContainsThenExists!234 ((Set Context!15328) Context!15328 Int) Unit!164070)

(assert (=> b!7262216 (= lt!2591178 (lemmaContainsThenExists!234 lt!2591176 (h!77077 zl!1658) lambda!446746))))

(declare-fun e!4354894 () Bool)

(declare-fun b!7262217 () Bool)

(declare-fun tp!2039513 () Bool)

(declare-fun inv!89821 (Context!15328) Bool)

(assert (=> b!7262217 (= e!4354892 (and (inv!89821 (h!77077 zl!1658)) e!4354894 tp!2039513))))

(declare-fun b!7262218 () Bool)

(declare-fun e!4354897 () Bool)

(declare-fun lt!2591173 () (Set Context!15328))

(assert (=> b!7262218 (= e!4354897 (matchZipper!3628 lt!2591173 s!7887))))

(declare-fun b!7262219 () Bool)

(declare-fun res!2944446 () Bool)

(assert (=> b!7262219 (=> (not res!2944446) (not e!4354895))))

(assert (=> b!7262219 (= res!2944446 (is-Cons!70629 zl!1658))))

(declare-fun b!7262220 () Bool)

(declare-fun tp!2039515 () Bool)

(assert (=> b!7262220 (= e!4354894 tp!2039515)))

(declare-fun b!7262221 () Bool)

(declare-fun tp_is_empty!46913 () Bool)

(declare-fun tp!2039514 () Bool)

(assert (=> b!7262221 (= e!4354896 (and tp_is_empty!46913 tp!2039514))))

(declare-fun b!7262222 () Bool)

(assert (=> b!7262222 (= e!4354895 (not e!4354893))))

(declare-fun res!2944445 () Bool)

(assert (=> b!7262222 (=> res!2944445 e!4354893)))

(declare-fun lt!2591172 () Bool)

(declare-fun lt!2591175 () Bool)

(assert (=> b!7262222 (= res!2944445 (or (not lt!2591172) (not lt!2591175)))))

(declare-fun lt!2591179 () Bool)

(assert (=> b!7262222 (= lt!2591179 lt!2591172)))

(assert (=> b!7262222 (= lt!2591172 e!4354897)))

(declare-fun res!2944447 () Bool)

(assert (=> b!7262222 (=> res!2944447 e!4354897)))

(assert (=> b!7262222 (= res!2944447 lt!2591175)))

(declare-fun lt!2591174 () (Set Context!15328))

(assert (=> b!7262222 (= lt!2591179 (matchZipper!3628 (set.union lt!2591174 lt!2591173) s!7887))))

(assert (=> b!7262222 (= lt!2591175 (matchZipper!3628 lt!2591174 s!7887))))

(declare-fun lt!2591177 () Unit!164070)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1765 ((Set Context!15328) (Set Context!15328) List!70752) Unit!164070)

(assert (=> b!7262222 (= lt!2591177 (lemmaZipperConcatMatchesSameAsBothZippers!1765 lt!2591174 lt!2591173 s!7887))))

(assert (=> b!7262222 (= lt!2591173 (content!14718 (t!384819 zl!1658)))))

(assert (=> b!7262222 (= lt!2591174 (set.insert (h!77077 zl!1658) (as set.empty (Set Context!15328))))))

(assert (= (and start!707840 res!2944444) b!7262219))

(assert (= (and b!7262219 res!2944446) b!7262222))

(assert (= (and b!7262222 (not res!2944447)) b!7262218))

(assert (= (and b!7262222 (not res!2944445)) b!7262216))

(assert (= b!7262217 b!7262220))

(assert (= (and start!707840 (is-Cons!70629 zl!1658)) b!7262217))

(assert (= (and start!707840 (is-Cons!70628 s!7887)) b!7262221))

(declare-fun m!7946754 () Bool)

(assert (=> start!707840 m!7946754))

(declare-fun m!7946756 () Bool)

(assert (=> start!707840 m!7946756))

(declare-fun m!7946758 () Bool)

(assert (=> b!7262218 m!7946758))

(declare-fun m!7946760 () Bool)

(assert (=> b!7262222 m!7946760))

(declare-fun m!7946762 () Bool)

(assert (=> b!7262222 m!7946762))

(declare-fun m!7946764 () Bool)

(assert (=> b!7262222 m!7946764))

(declare-fun m!7946766 () Bool)

(assert (=> b!7262222 m!7946766))

(declare-fun m!7946768 () Bool)

(assert (=> b!7262222 m!7946768))

(declare-fun m!7946770 () Bool)

(assert (=> b!7262216 m!7946770))

(assert (=> b!7262216 m!7946770))

(declare-fun m!7946772 () Bool)

(assert (=> b!7262216 m!7946772))

(declare-fun m!7946774 () Bool)

(assert (=> b!7262217 m!7946774))

(push 1)

(assert tp_is_empty!46913)

(assert (not start!707840))

(assert (not b!7262221))

(assert (not b!7262218))

(assert (not b!7262222))

(assert (not b!7262217))

(assert (not b!7262216))

(assert (not b!7262220))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

