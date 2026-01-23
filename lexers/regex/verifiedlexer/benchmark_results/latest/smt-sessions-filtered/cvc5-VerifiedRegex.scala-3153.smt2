; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!185272 () Bool)

(assert start!185272)

(declare-fun res!831932 () Bool)

(declare-fun e!1185622 () Bool)

(assert (=> start!185272 (=> (not res!831932) (not e!1185622))))

(declare-datatypes ((C!10246 0))(
  ( (C!10247 (val!5859 Int)) )
))
(declare-datatypes ((Regex!5048 0))(
  ( (ElementMatch!5048 (c!302384 C!10246)) (Concat!8847 (regOne!10608 Regex!5048) (regTwo!10608 Regex!5048)) (EmptyExpr!5048) (Star!5048 (reg!5377 Regex!5048)) (EmptyLang!5048) (Union!5048 (regOne!10609 Regex!5048) (regTwo!10609 Regex!5048)) )
))
(declare-fun r!19073 () Regex!5048)

(declare-fun validRegex!2070 (Regex!5048) Bool)

(assert (=> start!185272 (= res!831932 (validRegex!2070 r!19073))))

(assert (=> start!185272 e!1185622))

(declare-fun e!1185624 () Bool)

(assert (=> start!185272 e!1185624))

(declare-fun e!1185621 () Bool)

(assert (=> start!185272 e!1185621))

(declare-fun e!1185623 () Bool)

(assert (=> start!185272 e!1185623))

(declare-fun b!1855879 () Bool)

(declare-fun tp_is_empty!8517 () Bool)

(assert (=> b!1855879 (= e!1185624 tp_is_empty!8517)))

(declare-fun b!1855880 () Bool)

(declare-fun tp!527838 () Bool)

(assert (=> b!1855880 (= e!1185623 (and tp_is_empty!8517 tp!527838))))

(declare-fun b!1855881 () Bool)

(declare-fun tp!527840 () Bool)

(assert (=> b!1855881 (= e!1185624 tp!527840)))

(declare-fun b!1855882 () Bool)

(declare-fun tp!527836 () Bool)

(declare-fun tp!527837 () Bool)

(assert (=> b!1855882 (= e!1185624 (and tp!527836 tp!527837))))

(declare-fun b!1855883 () Bool)

(declare-fun res!831933 () Bool)

(assert (=> b!1855883 (=> (not res!831933) (not e!1185622))))

(declare-datatypes ((List!20662 0))(
  ( (Nil!20584) (Cons!20584 (h!25985 C!10246) (t!172529 List!20662)) )
))
(declare-fun prefix!1439 () List!20662)

(declare-fun s!13412 () List!20662)

(declare-fun isPrefix!1898 (List!20662 List!20662) Bool)

(assert (=> b!1855883 (= res!831933 (isPrefix!1898 prefix!1439 s!13412))))

(declare-fun b!1855884 () Bool)

(declare-fun tp!527841 () Bool)

(declare-fun tp!527839 () Bool)

(assert (=> b!1855884 (= e!1185624 (and tp!527841 tp!527839))))

(declare-fun b!1855885 () Bool)

(declare-fun tp!527835 () Bool)

(assert (=> b!1855885 (= e!1185621 (and tp_is_empty!8517 tp!527835))))

(declare-fun b!1855886 () Bool)

(assert (=> b!1855886 (= e!1185622 false)))

(declare-fun lt!716897 () Bool)

(declare-fun matchR!2459 (Regex!5048 List!20662) Bool)

(assert (=> b!1855886 (= lt!716897 (matchR!2459 r!19073 s!13412))))

(assert (= (and start!185272 res!831932) b!1855883))

(assert (= (and b!1855883 res!831933) b!1855886))

(assert (= (and start!185272 (is-ElementMatch!5048 r!19073)) b!1855879))

(assert (= (and start!185272 (is-Concat!8847 r!19073)) b!1855882))

(assert (= (and start!185272 (is-Star!5048 r!19073)) b!1855881))

(assert (= (and start!185272 (is-Union!5048 r!19073)) b!1855884))

(assert (= (and start!185272 (is-Cons!20584 prefix!1439)) b!1855885))

(assert (= (and start!185272 (is-Cons!20584 s!13412)) b!1855880))

(declare-fun m!2281271 () Bool)

(assert (=> start!185272 m!2281271))

(declare-fun m!2281273 () Bool)

(assert (=> b!1855883 m!2281273))

(declare-fun m!2281275 () Bool)

(assert (=> b!1855886 m!2281275))

(push 1)

(assert (not b!1855885))

(assert (not b!1855884))

(assert tp_is_empty!8517)

(assert (not b!1855880))

(assert (not start!185272))

(assert (not b!1855883))

(assert (not b!1855881))

(assert (not b!1855882))

(assert (not b!1855886))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

