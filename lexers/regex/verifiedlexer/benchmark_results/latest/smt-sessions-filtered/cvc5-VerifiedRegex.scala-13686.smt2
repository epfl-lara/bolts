; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732922 () Bool)

(assert start!732922)

(declare-fun b!7602162 () Bool)

(assert (=> b!7602162 true))

(assert (=> b!7602162 true))

(assert (=> b!7602162 true))

(declare-fun bs!1942441 () Bool)

(declare-fun b!7602169 () Bool)

(assert (= bs!1942441 (and b!7602169 b!7602162)))

(declare-fun lambda!467787 () Int)

(declare-fun lambda!467786 () Int)

(assert (=> bs!1942441 (not (= lambda!467787 lambda!467786))))

(assert (=> b!7602169 true))

(assert (=> b!7602169 true))

(assert (=> b!7602169 true))

(declare-fun b!7602160 () Bool)

(declare-fun e!4522540 () Bool)

(declare-fun tp_is_empty!50687 () Bool)

(assert (=> b!7602160 (= e!4522540 tp_is_empty!50687)))

(declare-fun b!7602161 () Bool)

(declare-fun e!4522541 () Bool)

(declare-fun tp!2216753 () Bool)

(assert (=> b!7602161 (= e!4522541 tp!2216753)))

(declare-fun res!3044007 () Bool)

(declare-fun e!4522539 () Bool)

(assert (=> b!7602162 (=> (not res!3044007) (not e!4522539))))

(declare-fun Exists!4394 (Int) Bool)

(assert (=> b!7602162 (= res!3044007 (not (Exists!4394 lambda!467786)))))

(declare-fun b!7602163 () Bool)

(declare-fun e!4522542 () Bool)

(declare-fun tp!2216754 () Bool)

(assert (=> b!7602163 (= e!4522542 (and tp_is_empty!50687 tp!2216754))))

(declare-fun res!3044011 () Bool)

(assert (=> start!732922 (=> (not res!3044011) (not e!4522539))))

(declare-datatypes ((C!40658 0))(
  ( (C!40659 (val!30769 Int)) )
))
(declare-datatypes ((Regex!20166 0))(
  ( (ElementMatch!20166 (c!1402255 C!40658)) (Concat!29011 (regOne!40844 Regex!20166) (regTwo!40844 Regex!20166)) (EmptyExpr!20166) (Star!20166 (reg!20495 Regex!20166)) (EmptyLang!20166) (Union!20166 (regOne!40845 Regex!20166) (regTwo!40845 Regex!20166)) )
))
(declare-fun r1!3349 () Regex!20166)

(declare-fun validRegex!10594 (Regex!20166) Bool)

(assert (=> start!732922 (= res!3044011 (validRegex!10594 r1!3349))))

(assert (=> start!732922 e!4522539))

(assert (=> start!732922 e!4522540))

(assert (=> start!732922 e!4522541))

(declare-fun e!4522543 () Bool)

(assert (=> start!732922 e!4522543))

(declare-fun e!4522538 () Bool)

(assert (=> start!732922 (and e!4522538 e!4522542)))

(declare-fun b!7602164 () Bool)

(declare-fun tp!2216745 () Bool)

(declare-fun tp!2216750 () Bool)

(assert (=> b!7602164 (= e!4522541 (and tp!2216745 tp!2216750))))

(declare-fun b!7602165 () Bool)

(declare-fun tp!2216744 () Bool)

(declare-fun tp!2216752 () Bool)

(assert (=> b!7602165 (= e!4522540 (and tp!2216744 tp!2216752))))

(declare-fun b!7602166 () Bool)

(declare-fun tp!2216751 () Bool)

(declare-fun tp!2216748 () Bool)

(assert (=> b!7602166 (= e!4522541 (and tp!2216751 tp!2216748))))

(declare-fun b!7602167 () Bool)

(declare-fun tp!2216747 () Bool)

(declare-fun tp!2216755 () Bool)

(assert (=> b!7602167 (= e!4522540 (and tp!2216747 tp!2216755))))

(declare-fun b!7602168 () Bool)

(assert (=> b!7602168 (= e!4522541 tp_is_empty!50687)))

(declare-fun res!3044009 () Bool)

(assert (=> b!7602169 (=> (not res!3044009) (not e!4522539))))

(assert (=> b!7602169 (= res!3044009 (not (Exists!4394 lambda!467787)))))

(declare-fun b!7602170 () Bool)

(declare-fun tp!2216746 () Bool)

(assert (=> b!7602170 (= e!4522543 (and tp_is_empty!50687 tp!2216746))))

(declare-fun b!7602171 () Bool)

(declare-fun tp!2216749 () Bool)

(assert (=> b!7602171 (= e!4522538 (and tp_is_empty!50687 tp!2216749))))

(declare-fun b!7602172 () Bool)

(declare-fun res!3044010 () Bool)

(assert (=> b!7602172 (=> (not res!3044010) (not e!4522539))))

(assert (=> b!7602172 (= res!3044010 (not (Exists!4394 lambda!467786)))))

(declare-fun b!7602173 () Bool)

(declare-fun res!3044008 () Bool)

(assert (=> b!7602173 (=> (not res!3044008) (not e!4522539))))

(declare-fun r2!3249 () Regex!20166)

(assert (=> b!7602173 (= res!3044008 (validRegex!10594 r2!3249))))

(declare-fun b!7602174 () Bool)

(assert (=> b!7602174 (= e!4522539 false)))

(declare-datatypes ((List!73049 0))(
  ( (Nil!72925) (Cons!72925 (h!79373 C!40658) (t!387784 List!73049)) )
))
(declare-fun lt!2654489 () List!73049)

(declare-datatypes ((tuple2!69046 0))(
  ( (tuple2!69047 (_1!37826 List!73049) (_2!37826 List!73049)) )
))
(declare-fun cut!28 () tuple2!69046)

(declare-fun ++!17566 (List!73049 List!73049) List!73049)

(assert (=> b!7602174 (= lt!2654489 (++!17566 (_1!37826 cut!28) (_2!37826 cut!28)))))

(declare-fun b!7602175 () Bool)

(declare-fun tp!2216756 () Bool)

(assert (=> b!7602175 (= e!4522540 tp!2216756)))

(assert (= (and start!732922 res!3044011) b!7602173))

(assert (= (and b!7602173 res!3044008) b!7602162))

(assert (= (and b!7602162 res!3044007) b!7602172))

(assert (= (and b!7602172 res!3044010) b!7602169))

(assert (= (and b!7602169 res!3044009) b!7602174))

(assert (= (and start!732922 (is-ElementMatch!20166 r1!3349)) b!7602160))

(assert (= (and start!732922 (is-Concat!29011 r1!3349)) b!7602167))

(assert (= (and start!732922 (is-Star!20166 r1!3349)) b!7602175))

(assert (= (and start!732922 (is-Union!20166 r1!3349)) b!7602165))

(assert (= (and start!732922 (is-ElementMatch!20166 r2!3249)) b!7602168))

(assert (= (and start!732922 (is-Concat!29011 r2!3249)) b!7602164))

(assert (= (and start!732922 (is-Star!20166 r2!3249)) b!7602161))

(assert (= (and start!732922 (is-Union!20166 r2!3249)) b!7602166))

(declare-fun s!10235 () List!73049)

(assert (= (and start!732922 (is-Cons!72925 s!10235)) b!7602170))

(assert (= (and start!732922 (is-Cons!72925 (_1!37826 cut!28))) b!7602171))

(assert (= (and start!732922 (is-Cons!72925 (_2!37826 cut!28))) b!7602163))

(declare-fun m!8145390 () Bool)

(assert (=> b!7602174 m!8145390))

(declare-fun m!8145392 () Bool)

(assert (=> start!732922 m!8145392))

(declare-fun m!8145394 () Bool)

(assert (=> b!7602162 m!8145394))

(declare-fun m!8145396 () Bool)

(assert (=> b!7602173 m!8145396))

(declare-fun m!8145398 () Bool)

(assert (=> b!7602169 m!8145398))

(assert (=> b!7602172 m!8145394))

(push 1)

(assert (not b!7602170))

(assert (not b!7602163))

(assert (not b!7602173))

(assert (not b!7602172))

(assert (not start!732922))

(assert (not b!7602164))

(assert (not b!7602175))

(assert (not b!7602167))

(assert tp_is_empty!50687)

(assert (not b!7602162))

(assert (not b!7602171))

(assert (not b!7602166))

(assert (not b!7602161))

(assert (not b!7602165))

(assert (not b!7602174))

(assert (not b!7602169))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

