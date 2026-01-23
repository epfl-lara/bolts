; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707972 () Bool)

(assert start!707972)

(declare-fun b!7262814 () Bool)

(declare-fun res!2944625 () Bool)

(declare-fun e!4355303 () Bool)

(assert (=> b!7262814 (=> (not res!2944625) (not e!4355303))))

(declare-datatypes ((C!37742 0))(
  ( (C!37743 (val!28819 Int)) )
))
(declare-datatypes ((Regex!18734 0))(
  ( (ElementMatch!18734 (c!1351182 C!37742)) (Concat!27579 (regOne!37980 Regex!18734) (regTwo!37980 Regex!18734)) (EmptyExpr!18734) (Star!18734 (reg!19063 Regex!18734)) (EmptyLang!18734) (Union!18734 (regOne!37981 Regex!18734) (regTwo!37981 Regex!18734)) )
))
(declare-datatypes ((List!70781 0))(
  ( (Nil!70657) (Cons!70657 (h!77105 Regex!18734) (t!384847 List!70781)) )
))
(declare-datatypes ((Context!15348 0))(
  ( (Context!15349 (exprs!8174 List!70781)) )
))
(declare-datatypes ((List!70782 0))(
  ( (Nil!70658) (Cons!70658 (h!77106 Context!15348) (t!384848 List!70782)) )
))
(declare-fun zl!1658 () List!70782)

(assert (=> b!7262814 (= res!2944625 (not (is-Cons!70658 zl!1658)))))

(declare-fun res!2944624 () Bool)

(assert (=> start!707972 (=> (not res!2944624) (not e!4355303))))

(declare-fun lt!2591415 () (Set Context!15348))

(declare-datatypes ((List!70783 0))(
  ( (Nil!70659) (Cons!70659 (h!77107 C!37742) (t!384849 List!70783)) )
))
(declare-fun s!7887 () List!70783)

(declare-fun matchZipper!3638 ((Set Context!15348) List!70783) Bool)

(assert (=> start!707972 (= res!2944624 (matchZipper!3638 lt!2591415 s!7887))))

(declare-fun content!14728 (List!70782) (Set Context!15348))

(assert (=> start!707972 (= lt!2591415 (content!14728 zl!1658))))

(assert (=> start!707972 e!4355303))

(declare-fun e!4355305 () Bool)

(assert (=> start!707972 e!4355305))

(declare-fun e!4355304 () Bool)

(assert (=> start!707972 e!4355304))

(declare-fun b!7262815 () Bool)

(declare-fun tp_is_empty!46933 () Bool)

(declare-fun tp!2039739 () Bool)

(assert (=> b!7262815 (= e!4355304 (and tp_is_empty!46933 tp!2039739))))

(declare-fun b!7262816 () Bool)

(assert (=> b!7262816 (= e!4355303 (not true))))

(assert (=> b!7262816 false))

(declare-datatypes ((Unit!164094 0))(
  ( (Unit!164095) )
))
(declare-fun lt!2591414 () Unit!164094)

(declare-fun lemmaEmptyZipperMatchesNothing!129 ((Set Context!15348) List!70783) Unit!164094)

(assert (=> b!7262816 (= lt!2591414 (lemmaEmptyZipperMatchesNothing!129 lt!2591415 s!7887))))

(declare-fun tp!2039737 () Bool)

(declare-fun e!4355302 () Bool)

(declare-fun b!7262817 () Bool)

(declare-fun inv!89846 (Context!15348) Bool)

(assert (=> b!7262817 (= e!4355305 (and (inv!89846 (h!77106 zl!1658)) e!4355302 tp!2039737))))

(declare-fun b!7262818 () Bool)

(declare-fun tp!2039738 () Bool)

(assert (=> b!7262818 (= e!4355302 tp!2039738)))

(assert (= (and start!707972 res!2944624) b!7262814))

(assert (= (and b!7262814 res!2944625) b!7262816))

(assert (= b!7262817 b!7262818))

(assert (= (and start!707972 (is-Cons!70658 zl!1658)) b!7262817))

(assert (= (and start!707972 (is-Cons!70659 s!7887)) b!7262815))

(declare-fun m!7947394 () Bool)

(assert (=> start!707972 m!7947394))

(declare-fun m!7947396 () Bool)

(assert (=> start!707972 m!7947396))

(declare-fun m!7947398 () Bool)

(assert (=> b!7262816 m!7947398))

(declare-fun m!7947400 () Bool)

(assert (=> b!7262817 m!7947400))

(push 1)

(assert (not b!7262817))

(assert (not b!7262816))

(assert tp_is_empty!46933)

(assert (not b!7262815))

(assert (not start!707972))

(assert (not b!7262818))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

