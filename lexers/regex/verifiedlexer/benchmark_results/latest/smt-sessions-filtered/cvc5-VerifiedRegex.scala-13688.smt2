; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732930 () Bool)

(assert start!732930)

(declare-fun b!7602425 () Bool)

(assert (=> b!7602425 true))

(assert (=> b!7602425 true))

(assert (=> b!7602425 true))

(declare-fun bs!1942449 () Bool)

(declare-fun b!7602424 () Bool)

(assert (= bs!1942449 (and b!7602424 b!7602425)))

(declare-fun lambda!467819 () Int)

(declare-fun lambda!467818 () Int)

(assert (=> bs!1942449 (not (= lambda!467819 lambda!467818))))

(assert (=> b!7602424 true))

(assert (=> b!7602424 true))

(assert (=> b!7602424 true))

(declare-fun res!3044124 () Bool)

(declare-fun e!4522639 () Bool)

(assert (=> b!7602424 (=> (not res!3044124) (not e!4522639))))

(declare-fun Exists!4398 (Int) Bool)

(assert (=> b!7602424 (= res!3044124 (not (Exists!4398 lambda!467819)))))

(declare-fun res!3044123 () Bool)

(assert (=> b!7602425 (=> (not res!3044123) (not e!4522639))))

(assert (=> b!7602425 (= res!3044123 (not (Exists!4398 lambda!467818)))))

(declare-fun b!7602426 () Bool)

(assert (=> b!7602426 (= e!4522639 false)))

(declare-fun b!7602427 () Bool)

(declare-fun e!4522635 () Bool)

(declare-fun tp!2216902 () Bool)

(assert (=> b!7602427 (= e!4522635 tp!2216902)))

(declare-fun b!7602428 () Bool)

(declare-fun e!4522638 () Bool)

(declare-fun tp_is_empty!50695 () Bool)

(declare-fun tp!2216903 () Bool)

(assert (=> b!7602428 (= e!4522638 (and tp_is_empty!50695 tp!2216903))))

(declare-fun b!7602429 () Bool)

(declare-fun e!4522637 () Bool)

(declare-fun tp!2216904 () Bool)

(assert (=> b!7602429 (= e!4522637 (and tp_is_empty!50695 tp!2216904))))

(declare-fun b!7602430 () Bool)

(declare-fun res!3044125 () Bool)

(assert (=> b!7602430 (=> (not res!3044125) (not e!4522639))))

(declare-datatypes ((C!40666 0))(
  ( (C!40667 (val!30773 Int)) )
))
(declare-datatypes ((List!73053 0))(
  ( (Nil!72929) (Cons!72929 (h!79377 C!40666) (t!387788 List!73053)) )
))
(declare-datatypes ((tuple2!69054 0))(
  ( (tuple2!69055 (_1!37830 List!73053) (_2!37830 List!73053)) )
))
(declare-fun cut!29 () tuple2!69054)

(declare-fun s!10235 () List!73053)

(declare-fun ++!17570 (List!73053 List!73053) List!73053)

(assert (=> b!7602430 (= res!3044125 (= (++!17570 (_1!37830 cut!29) (_2!37830 cut!29)) s!10235))))

(declare-fun b!7602431 () Bool)

(declare-fun e!4522634 () Bool)

(declare-fun tp!2216909 () Bool)

(assert (=> b!7602431 (= e!4522634 tp!2216909)))

(declare-fun b!7602432 () Bool)

(declare-fun e!4522636 () Bool)

(declare-fun tp!2216908 () Bool)

(assert (=> b!7602432 (= e!4522636 (and tp_is_empty!50695 tp!2216908))))

(declare-fun b!7602434 () Bool)

(declare-fun tp!2216910 () Bool)

(declare-fun tp!2216906 () Bool)

(assert (=> b!7602434 (= e!4522635 (and tp!2216910 tp!2216906))))

(declare-fun b!7602435 () Bool)

(declare-fun tp!2216911 () Bool)

(declare-fun tp!2216905 () Bool)

(assert (=> b!7602435 (= e!4522634 (and tp!2216911 tp!2216905))))

(declare-fun b!7602436 () Bool)

(declare-fun res!3044126 () Bool)

(assert (=> b!7602436 (=> (not res!3044126) (not e!4522639))))

(assert (=> b!7602436 (= res!3044126 (not (Exists!4398 lambda!467818)))))

(declare-fun b!7602437 () Bool)

(declare-fun tp!2216900 () Bool)

(declare-fun tp!2216912 () Bool)

(assert (=> b!7602437 (= e!4522635 (and tp!2216900 tp!2216912))))

(declare-fun b!7602438 () Bool)

(declare-fun tp!2216907 () Bool)

(declare-fun tp!2216901 () Bool)

(assert (=> b!7602438 (= e!4522634 (and tp!2216907 tp!2216901))))

(declare-fun b!7602433 () Bool)

(assert (=> b!7602433 (= e!4522635 tp_is_empty!50695)))

(declare-fun res!3044127 () Bool)

(assert (=> start!732930 (=> (not res!3044127) (not e!4522639))))

(declare-datatypes ((Regex!20170 0))(
  ( (ElementMatch!20170 (c!1402259 C!40666)) (Concat!29015 (regOne!40852 Regex!20170) (regTwo!40852 Regex!20170)) (EmptyExpr!20170) (Star!20170 (reg!20499 Regex!20170)) (EmptyLang!20170) (Union!20170 (regOne!40853 Regex!20170) (regTwo!40853 Regex!20170)) )
))
(declare-fun r1!3349 () Regex!20170)

(declare-fun validRegex!10598 (Regex!20170) Bool)

(assert (=> start!732930 (= res!3044127 (validRegex!10598 r1!3349))))

(assert (=> start!732930 e!4522639))

(assert (=> start!732930 e!4522634))

(assert (=> start!732930 e!4522635))

(assert (=> start!732930 e!4522636))

(assert (=> start!732930 (and e!4522638 e!4522637)))

(declare-fun b!7602439 () Bool)

(assert (=> b!7602439 (= e!4522634 tp_is_empty!50695)))

(declare-fun b!7602440 () Bool)

(declare-fun res!3044128 () Bool)

(assert (=> b!7602440 (=> (not res!3044128) (not e!4522639))))

(declare-fun r2!3249 () Regex!20170)

(assert (=> b!7602440 (= res!3044128 (validRegex!10598 r2!3249))))

(assert (= (and start!732930 res!3044127) b!7602440))

(assert (= (and b!7602440 res!3044128) b!7602425))

(assert (= (and b!7602425 res!3044123) b!7602436))

(assert (= (and b!7602436 res!3044126) b!7602424))

(assert (= (and b!7602424 res!3044124) b!7602430))

(assert (= (and b!7602430 res!3044125) b!7602426))

(assert (= (and start!732930 (is-ElementMatch!20170 r1!3349)) b!7602439))

(assert (= (and start!732930 (is-Concat!29015 r1!3349)) b!7602435))

(assert (= (and start!732930 (is-Star!20170 r1!3349)) b!7602431))

(assert (= (and start!732930 (is-Union!20170 r1!3349)) b!7602438))

(assert (= (and start!732930 (is-ElementMatch!20170 r2!3249)) b!7602433))

(assert (= (and start!732930 (is-Concat!29015 r2!3249)) b!7602437))

(assert (= (and start!732930 (is-Star!20170 r2!3249)) b!7602427))

(assert (= (and start!732930 (is-Union!20170 r2!3249)) b!7602434))

(assert (= (and start!732930 (is-Cons!72929 s!10235)) b!7602432))

(assert (= (and start!732930 (is-Cons!72929 (_1!37830 cut!29))) b!7602428))

(assert (= (and start!732930 (is-Cons!72929 (_2!37830 cut!29))) b!7602429))

(declare-fun m!8145434 () Bool)

(assert (=> b!7602430 m!8145434))

(declare-fun m!8145436 () Bool)

(assert (=> b!7602436 m!8145436))

(declare-fun m!8145438 () Bool)

(assert (=> start!732930 m!8145438))

(assert (=> b!7602425 m!8145436))

(declare-fun m!8145440 () Bool)

(assert (=> b!7602424 m!8145440))

(declare-fun m!8145442 () Bool)

(assert (=> b!7602440 m!8145442))

(push 1)

(assert (not b!7602425))

(assert (not start!732930))

(assert (not b!7602437))

(assert (not b!7602438))

(assert (not b!7602429))

(assert (not b!7602428))

(assert (not b!7602424))

(assert (not b!7602431))

(assert (not b!7602435))

(assert (not b!7602436))

(assert (not b!7602434))

(assert (not b!7602440))

(assert (not b!7602427))

(assert (not b!7602432))

(assert tp_is_empty!50695)

(assert (not b!7602430))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

