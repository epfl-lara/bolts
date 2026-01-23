; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!184380 () Bool)

(assert start!184380)

(declare-fun b!1847270 () Bool)

(assert (=> b!1847270 true))

(assert (=> b!1847270 true))

(declare-fun b!1847261 () Bool)

(declare-fun e!1180506 () Bool)

(declare-fun lambda!72975 () Int)

(declare-fun Exists!952 (Int) Bool)

(assert (=> b!1847261 (= e!1180506 (Exists!952 lambda!72975))))

(declare-fun b!1847262 () Bool)

(declare-fun e!1180504 () Bool)

(declare-fun tp!522296 () Bool)

(declare-fun tp!522297 () Bool)

(assert (=> b!1847262 (= e!1180504 (and tp!522296 tp!522297))))

(declare-fun b!1847263 () Bool)

(declare-fun res!829399 () Bool)

(declare-fun e!1180507 () Bool)

(assert (=> b!1847263 (=> (not res!829399) (not e!1180507))))

(declare-datatypes ((C!10146 0))(
  ( (C!10147 (val!5799 Int)) )
))
(declare-datatypes ((Regex!4998 0))(
  ( (ElementMatch!4998 (c!301623 C!10146)) (Concat!8776 (regOne!10508 Regex!4998) (regTwo!10508 Regex!4998)) (EmptyExpr!4998) (Star!4998 (reg!5327 Regex!4998)) (EmptyLang!4998) (Union!4998 (regOne!10509 Regex!4998) (regTwo!10509 Regex!4998)) )
))
(declare-fun r!26091 () Regex!4998)

(declare-datatypes ((List!20479 0))(
  ( (Nil!20407) (Cons!20407 (h!25808 C!10146) (t!172252 List!20479)) )
))
(declare-fun prefix!1614 () List!20479)

(declare-fun prefixMatch!775 (Regex!4998 List!20479) Bool)

(assert (=> b!1847263 (= res!829399 (prefixMatch!775 r!26091 prefix!1614))))

(declare-fun b!1847264 () Bool)

(declare-fun tp_is_empty!8445 () Bool)

(assert (=> b!1847264 (= e!1180504 tp_is_empty!8445)))

(declare-fun b!1847265 () Bool)

(declare-fun tp!522292 () Bool)

(declare-fun tp!522294 () Bool)

(assert (=> b!1847265 (= e!1180504 (and tp!522292 tp!522294))))

(declare-fun b!1847266 () Bool)

(declare-fun res!829401 () Bool)

(assert (=> b!1847266 (=> (not res!829401) (not e!1180507))))

(declare-fun c!13459 () C!10146)

(declare-fun contains!3763 (List!20479 C!10146) Bool)

(assert (=> b!1847266 (= res!829401 (contains!3763 prefix!1614 c!13459))))

(declare-fun res!829400 () Bool)

(assert (=> start!184380 (=> (not res!829400) (not e!1180507))))

(declare-fun validRegex!2042 (Regex!4998) Bool)

(assert (=> start!184380 (= res!829400 (validRegex!2042 r!26091))))

(assert (=> start!184380 e!1180507))

(assert (=> start!184380 e!1180504))

(declare-fun e!1180505 () Bool)

(assert (=> start!184380 e!1180505))

(assert (=> start!184380 tp_is_empty!8445))

(declare-fun b!1847267 () Bool)

(declare-fun tp!522293 () Bool)

(assert (=> b!1847267 (= e!1180504 tp!522293)))

(declare-fun b!1847268 () Bool)

(declare-fun res!829402 () Bool)

(assert (=> b!1847268 (=> (not res!829402) (not e!1180507))))

(declare-fun usedCharacters!303 (Regex!4998) List!20479)

(assert (=> b!1847268 (= res!829402 (not (contains!3763 (usedCharacters!303 r!26091) c!13459)))))

(declare-fun b!1847269 () Bool)

(declare-fun tp!522295 () Bool)

(assert (=> b!1847269 (= e!1180505 (and tp_is_empty!8445 tp!522295))))

(assert (=> b!1847270 (= e!1180507 (not e!1180506))))

(declare-fun res!829403 () Bool)

(assert (=> b!1847270 (=> res!829403 e!1180506)))

(assert (=> b!1847270 (= res!829403 (not (Exists!952 lambda!72975)))))

(assert (=> b!1847270 (Exists!952 lambda!72975)))

(declare-datatypes ((Unit!35071 0))(
  ( (Unit!35072) )
))
(declare-fun lt!715085 () Unit!35071)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!270 (Regex!4998 List!20479) Unit!35071)

(assert (=> b!1847270 (= lt!715085 (lemmaPrefixMatchThenExistsStringThatMatches!270 r!26091 prefix!1614))))

(assert (= (and start!184380 res!829400) b!1847266))

(assert (= (and b!1847266 res!829401) b!1847268))

(assert (= (and b!1847268 res!829402) b!1847263))

(assert (= (and b!1847263 res!829399) b!1847270))

(assert (= (and b!1847270 (not res!829403)) b!1847261))

(assert (= (and start!184380 (is-ElementMatch!4998 r!26091)) b!1847264))

(assert (= (and start!184380 (is-Concat!8776 r!26091)) b!1847265))

(assert (= (and start!184380 (is-Star!4998 r!26091)) b!1847267))

(assert (= (and start!184380 (is-Union!4998 r!26091)) b!1847262))

(assert (= (and start!184380 (is-Cons!20407 prefix!1614)) b!1847269))

(declare-fun m!2275597 () Bool)

(assert (=> b!1847270 m!2275597))

(assert (=> b!1847270 m!2275597))

(declare-fun m!2275599 () Bool)

(assert (=> b!1847270 m!2275599))

(declare-fun m!2275601 () Bool)

(assert (=> b!1847268 m!2275601))

(assert (=> b!1847268 m!2275601))

(declare-fun m!2275603 () Bool)

(assert (=> b!1847268 m!2275603))

(assert (=> b!1847261 m!2275597))

(declare-fun m!2275605 () Bool)

(assert (=> b!1847266 m!2275605))

(declare-fun m!2275607 () Bool)

(assert (=> b!1847263 m!2275607))

(declare-fun m!2275609 () Bool)

(assert (=> start!184380 m!2275609))

(push 1)

(assert (not start!184380))

(assert tp_is_empty!8445)

(assert (not b!1847267))

(assert (not b!1847261))

(assert (not b!1847265))

(assert (not b!1847269))

(assert (not b!1847263))

(assert (not b!1847268))

(assert (not b!1847270))

(assert (not b!1847266))

(assert (not b!1847262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

