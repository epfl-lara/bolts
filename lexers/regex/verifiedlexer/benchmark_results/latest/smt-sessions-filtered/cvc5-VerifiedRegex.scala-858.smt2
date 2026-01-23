; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!46260 () Bool)

(assert start!46260)

(declare-fun b!511511 () Bool)

(declare-fun e!305549 () Bool)

(declare-fun tp_is_empty!2421 () Bool)

(declare-fun tp!158996 () Bool)

(assert (=> b!511511 (= e!305549 (and tp_is_empty!2421 tp!158996))))

(declare-fun b!511512 () Bool)

(declare-fun e!305548 () Bool)

(assert (=> b!511512 (= e!305548 false)))

(declare-datatypes ((B!1035 0))(
  ( (B!1036 (val!1659 Int)) )
))
(declare-datatypes ((List!4632 0))(
  ( (Nil!4622) (Cons!4622 (h!10019 B!1035) (t!73150 List!4632)) )
))
(declare-fun lt!212015 () List!4632)

(declare-fun l2!1029 () List!4632)

(declare-fun lt!212014 () List!4632)

(declare-fun l1!1060 () List!4632)

(declare-fun ++!1344 (List!4632 List!4632) List!4632)

(assert (=> b!511512 (= lt!212015 (++!1344 (++!1344 (t!73150 l1!1060) lt!212014) l2!1029))))

(declare-fun b!511514 () Bool)

(declare-fun e!305547 () Bool)

(declare-fun tp!158994 () Bool)

(assert (=> b!511514 (= e!305547 (and tp_is_empty!2421 tp!158994))))

(declare-fun b!511515 () Bool)

(declare-fun e!305550 () Bool)

(declare-fun tp!158995 () Bool)

(assert (=> b!511515 (= e!305550 (and tp_is_empty!2421 tp!158995))))

(declare-fun b!511513 () Bool)

(declare-fun res!217124 () Bool)

(assert (=> b!511513 (=> (not res!217124) (not e!305548))))

(assert (=> b!511513 (= res!217124 (is-Cons!4622 l1!1060))))

(declare-fun res!217125 () Bool)

(assert (=> start!46260 (=> (not res!217125) (not e!305548))))

(declare-fun tot!35 () List!4632)

(assert (=> start!46260 (= res!217125 (= (++!1344 (++!1344 l1!1060 lt!212014) l2!1029) tot!35))))

(declare-fun elmt!142 () B!1035)

(assert (=> start!46260 (= lt!212014 (Cons!4622 elmt!142 Nil!4622))))

(assert (=> start!46260 e!305548))

(assert (=> start!46260 tp_is_empty!2421))

(assert (=> start!46260 e!305547))

(assert (=> start!46260 e!305550))

(assert (=> start!46260 e!305549))

(assert (= (and start!46260 res!217125) b!511513))

(assert (= (and b!511513 res!217124) b!511512))

(assert (= (and start!46260 (is-Cons!4622 l2!1029)) b!511514))

(assert (= (and start!46260 (is-Cons!4622 l1!1060)) b!511515))

(assert (= (and start!46260 (is-Cons!4622 tot!35)) b!511511))

(declare-fun m!758303 () Bool)

(assert (=> b!511512 m!758303))

(assert (=> b!511512 m!758303))

(declare-fun m!758305 () Bool)

(assert (=> b!511512 m!758305))

(declare-fun m!758307 () Bool)

(assert (=> start!46260 m!758307))

(assert (=> start!46260 m!758307))

(declare-fun m!758309 () Bool)

(assert (=> start!46260 m!758309))

(push 1)

(assert (not b!511515))

(assert (not start!46260))

(assert (not b!511511))

(assert tp_is_empty!2421)

(assert (not b!511514))

(assert (not b!511512))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

