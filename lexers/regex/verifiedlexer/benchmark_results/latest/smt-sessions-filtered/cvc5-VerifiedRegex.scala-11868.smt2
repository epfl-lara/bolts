; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!666836 () Bool)

(assert start!666836)

(declare-fun b!6946176 () Bool)

(assert (=> b!6946176 true))

(assert (=> b!6946176 true))

(declare-fun res!2833680 () Bool)

(declare-fun e!4178119 () Bool)

(assert (=> start!666836 (=> (not res!2833680) (not e!4178119))))

(declare-datatypes ((C!34234 0))(
  ( (C!34235 (val!26819 Int)) )
))
(declare-datatypes ((Regex!16982 0))(
  ( (ElementMatch!16982 (c!1288720 C!34234)) (Concat!25827 (regOne!34476 Regex!16982) (regTwo!34476 Regex!16982)) (EmptyExpr!16982) (Star!16982 (reg!17311 Regex!16982)) (EmptyLang!16982) (Union!16982 (regOne!34477 Regex!16982) (regTwo!34477 Regex!16982)) )
))
(declare-fun rInner!765 () Regex!16982)

(declare-fun validRegex!8688 (Regex!16982) Bool)

(assert (=> start!666836 (= res!2833680 (validRegex!8688 rInner!765))))

(assert (=> start!666836 e!4178119))

(declare-fun e!4178120 () Bool)

(assert (=> start!666836 e!4178120))

(declare-fun e!4178117 () Bool)

(assert (=> start!666836 e!4178117))

(declare-fun e!4178118 () Bool)

(declare-fun e!4178121 () Bool)

(assert (=> start!666836 (and e!4178118 e!4178121)))

(declare-fun b!6946172 () Bool)

(declare-fun tp!1914658 () Bool)

(declare-fun tp!1914656 () Bool)

(assert (=> b!6946172 (= e!4178120 (and tp!1914658 tp!1914656))))

(declare-fun b!6946173 () Bool)

(declare-fun tp!1914654 () Bool)

(assert (=> b!6946173 (= e!4178120 tp!1914654)))

(declare-fun b!6946174 () Bool)

(declare-fun tp!1914659 () Bool)

(declare-fun tp!1914660 () Bool)

(assert (=> b!6946174 (= e!4178120 (and tp!1914659 tp!1914660))))

(declare-fun b!6946175 () Bool)

(declare-fun tp_is_empty!43189 () Bool)

(declare-fun tp!1914661 () Bool)

(assert (=> b!6946175 (= e!4178121 (and tp_is_empty!43189 tp!1914661))))

(declare-fun res!2833679 () Bool)

(assert (=> b!6946176 (=> (not res!2833679) (not e!4178119))))

(declare-fun lambda!396069 () Int)

(declare-fun Exists!3978 (Int) Bool)

(assert (=> b!6946176 (= res!2833679 (Exists!3978 lambda!396069))))

(declare-fun b!6946177 () Bool)

(declare-fun tp!1914657 () Bool)

(assert (=> b!6946177 (= e!4178118 (and tp_is_empty!43189 tp!1914657))))

(declare-fun b!6946178 () Bool)

(assert (=> b!6946178 (= e!4178120 tp_is_empty!43189)))

(declare-fun b!6946179 () Bool)

(declare-fun res!2833681 () Bool)

(assert (=> b!6946179 (=> (not res!2833681) (not e!4178119))))

(declare-fun nullable!6795 (Regex!16982) Bool)

(assert (=> b!6946179 (= res!2833681 (not (nullable!6795 rInner!765)))))

(declare-fun b!6946180 () Bool)

(assert (=> b!6946180 (= e!4178119 false)))

(declare-datatypes ((List!66735 0))(
  ( (Nil!66611) (Cons!66611 (h!73059 C!34234) (t!380478 List!66735)) )
))
(declare-fun lt!2477356 () List!66735)

(declare-datatypes ((tuple2!67678 0))(
  ( (tuple2!67679 (_1!37142 List!66735) (_2!37142 List!66735)) )
))
(declare-fun cut!45 () tuple2!67678)

(declare-fun ++!15021 (List!66735 List!66735) List!66735)

(assert (=> b!6946180 (= lt!2477356 (++!15021 (_1!37142 cut!45) (_2!37142 cut!45)))))

(declare-fun b!6946181 () Bool)

(declare-fun tp!1914655 () Bool)

(assert (=> b!6946181 (= e!4178117 (and tp_is_empty!43189 tp!1914655))))

(assert (= (and start!666836 res!2833680) b!6946179))

(assert (= (and b!6946179 res!2833681) b!6946176))

(assert (= (and b!6946176 res!2833679) b!6946180))

(assert (= (and start!666836 (is-ElementMatch!16982 rInner!765)) b!6946178))

(assert (= (and start!666836 (is-Concat!25827 rInner!765)) b!6946172))

(assert (= (and start!666836 (is-Star!16982 rInner!765)) b!6946173))

(assert (= (and start!666836 (is-Union!16982 rInner!765)) b!6946174))

(declare-fun s!10388 () List!66735)

(assert (= (and start!666836 (is-Cons!66611 s!10388)) b!6946181))

(assert (= (and start!666836 (is-Cons!66611 (_1!37142 cut!45))) b!6946177))

(assert (= (and start!666836 (is-Cons!66611 (_2!37142 cut!45))) b!6946175))

(declare-fun m!7650400 () Bool)

(assert (=> start!666836 m!7650400))

(declare-fun m!7650402 () Bool)

(assert (=> b!6946176 m!7650402))

(declare-fun m!7650404 () Bool)

(assert (=> b!6946179 m!7650404))

(declare-fun m!7650406 () Bool)

(assert (=> b!6946180 m!7650406))

(push 1)

(assert (not b!6946174))

(assert (not b!6946180))

(assert (not b!6946179))

(assert (not b!6946176))

(assert (not b!6946177))

(assert (not b!6946172))

(assert (not b!6946173))

(assert (not b!6946181))

(assert (not b!6946175))

(assert (not start!666836))

(assert tp_is_empty!43189)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

