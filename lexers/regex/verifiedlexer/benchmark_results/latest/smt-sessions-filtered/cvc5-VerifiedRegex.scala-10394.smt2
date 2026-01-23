; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!538390 () Bool)

(assert start!538390)

(declare-fun b!5105824 () Bool)

(declare-fun e!3184488 () Bool)

(declare-fun tp_is_empty!37429 () Bool)

(declare-fun tp!1424252 () Bool)

(assert (=> b!5105824 (= e!3184488 (and tp_is_empty!37429 tp!1424252))))

(declare-fun b!5105825 () Bool)

(declare-fun res!2173309 () Bool)

(declare-fun e!3184490 () Bool)

(assert (=> b!5105825 (=> (not res!2173309) (not e!3184490))))

(declare-datatypes ((C!28422 0))(
  ( (C!28423 (val!23863 Int)) )
))
(declare-datatypes ((List!59028 0))(
  ( (Nil!58904) (Cons!58904 (h!65352 C!28422) (t!372029 List!59028)) )
))
(declare-fun bigger!41 () List!59028)

(declare-fun returnP!41 () List!59028)

(declare-fun size!39384 (List!59028) Int)

(assert (=> b!5105825 (= res!2173309 (>= (size!39384 bigger!41) (size!39384 returnP!41)))))

(declare-fun b!5105826 () Bool)

(assert (=> b!5105826 (= e!3184490 false)))

(declare-fun lt!2101627 () List!59028)

(declare-fun input!5723 () List!59028)

(declare-fun ++!12931 (List!59028 List!59028) List!59028)

(assert (=> b!5105826 (= lt!2101627 (++!12931 Nil!58904 input!5723))))

(declare-fun lt!2101626 () Int)

(assert (=> b!5105826 (= lt!2101626 (size!39384 input!5723))))

(declare-fun lt!2101625 () Int)

(assert (=> b!5105826 (= lt!2101625 (size!39384 Nil!58904))))

(declare-fun b!5105827 () Bool)

(declare-fun res!2173311 () Bool)

(assert (=> b!5105827 (=> (not res!2173311) (not e!3184490))))

(declare-fun isPrefix!5483 (List!59028 List!59028) Bool)

(assert (=> b!5105827 (= res!2173311 (isPrefix!5483 bigger!41 input!5723))))

(declare-fun res!2173310 () Bool)

(assert (=> start!538390 (=> (not res!2173310) (not e!3184490))))

(assert (=> start!538390 (= res!2173310 (isPrefix!5483 returnP!41 input!5723))))

(assert (=> start!538390 e!3184490))

(declare-fun e!3184489 () Bool)

(assert (=> start!538390 e!3184489))

(declare-fun e!3184491 () Bool)

(assert (=> start!538390 e!3184491))

(assert (=> start!538390 e!3184488))

(declare-fun b!5105828 () Bool)

(declare-fun tp!1424251 () Bool)

(assert (=> b!5105828 (= e!3184491 (and tp_is_empty!37429 tp!1424251))))

(declare-fun b!5105829 () Bool)

(declare-fun tp!1424250 () Bool)

(assert (=> b!5105829 (= e!3184489 (and tp_is_empty!37429 tp!1424250))))

(assert (= (and start!538390 res!2173310) b!5105827))

(assert (= (and b!5105827 res!2173311) b!5105825))

(assert (= (and b!5105825 res!2173309) b!5105826))

(assert (= (and start!538390 (is-Cons!58904 returnP!41)) b!5105829))

(assert (= (and start!538390 (is-Cons!58904 input!5723)) b!5105828))

(assert (= (and start!538390 (is-Cons!58904 bigger!41)) b!5105824))

(declare-fun m!6163222 () Bool)

(assert (=> b!5105825 m!6163222))

(declare-fun m!6163224 () Bool)

(assert (=> b!5105825 m!6163224))

(declare-fun m!6163226 () Bool)

(assert (=> b!5105826 m!6163226))

(declare-fun m!6163228 () Bool)

(assert (=> b!5105826 m!6163228))

(declare-fun m!6163230 () Bool)

(assert (=> b!5105826 m!6163230))

(declare-fun m!6163232 () Bool)

(assert (=> b!5105827 m!6163232))

(declare-fun m!6163234 () Bool)

(assert (=> start!538390 m!6163234))

(push 1)

(assert (not b!5105827))

(assert (not start!538390))

(assert (not b!5105824))

(assert (not b!5105825))

(assert (not b!5105828))

(assert (not b!5105826))

(assert tp_is_empty!37429)

(assert (not b!5105829))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

