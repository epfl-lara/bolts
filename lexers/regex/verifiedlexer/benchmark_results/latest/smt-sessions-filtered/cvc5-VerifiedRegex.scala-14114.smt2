; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742584 () Bool)

(assert start!742584)

(declare-fun res!3118346 () Bool)

(declare-fun e!4635737 () Bool)

(assert (=> start!742584 (=> (not res!3118346) (not e!4635737))))

(declare-datatypes ((C!42370 0))(
  ( (C!42371 (val!31625 Int)) )
))
(declare-datatypes ((Regex!21022 0))(
  ( (ElementMatch!21022 (c!1441491 C!42370)) (Concat!29867 (regOne!42556 Regex!21022) (regTwo!42556 Regex!21022)) (EmptyExpr!21022) (Star!21022 (reg!21351 Regex!21022)) (EmptyLang!21022) (Union!21022 (regOne!42557 Regex!21022) (regTwo!42557 Regex!21022)) )
))
(declare-fun r1!3326 () Regex!21022)

(declare-fun validRegex!11436 (Regex!21022) Bool)

(assert (=> start!742584 (= res!3118346 (validRegex!11436 r1!3326))))

(assert (=> start!742584 e!4635737))

(declare-fun e!4635738 () Bool)

(assert (=> start!742584 e!4635738))

(declare-fun e!4635736 () Bool)

(assert (=> start!742584 e!4635736))

(declare-fun e!4635740 () Bool)

(assert (=> start!742584 e!4635740))

(declare-fun e!4635739 () Bool)

(assert (=> start!742584 e!4635739))

(declare-fun e!4635741 () Bool)

(assert (=> start!742584 e!4635741))

(declare-fun b!7840460 () Bool)

(declare-fun tp_is_empty!52399 () Bool)

(assert (=> b!7840460 (= e!4635739 tp_is_empty!52399)))

(declare-fun b!7840461 () Bool)

(declare-fun tp!2320482 () Bool)

(assert (=> b!7840461 (= e!4635741 (and tp_is_empty!52399 tp!2320482))))

(declare-fun b!7840462 () Bool)

(declare-fun res!3118341 () Bool)

(assert (=> b!7840462 (=> (not res!3118341) (not e!4635737))))

(declare-fun r2!3226 () Regex!21022)

(assert (=> b!7840462 (= res!3118341 (validRegex!11436 r2!3226))))

(declare-fun b!7840463 () Bool)

(declare-fun res!3118345 () Bool)

(assert (=> b!7840463 (=> (not res!3118345) (not e!4635737))))

(declare-datatypes ((List!73859 0))(
  ( (Nil!73735) (Cons!73735 (h!80183 C!42370) (t!388594 List!73859)) )
))
(declare-fun s1!2717 () List!73859)

(declare-fun s!10212 () List!73859)

(declare-fun s2!2463 () List!73859)

(declare-fun ++!18056 (List!73859 List!73859) List!73859)

(assert (=> b!7840463 (= res!3118345 (= (++!18056 s1!2717 s2!2463) s!10212))))

(declare-fun b!7840464 () Bool)

(declare-fun res!3118343 () Bool)

(assert (=> b!7840464 (=> (not res!3118343) (not e!4635737))))

(assert (=> b!7840464 (= res!3118343 (not (is-Nil!73735 s2!2463)))))

(declare-fun b!7840465 () Bool)

(declare-fun tp!2320479 () Bool)

(assert (=> b!7840465 (= e!4635740 (and tp_is_empty!52399 tp!2320479))))

(declare-fun b!7840466 () Bool)

(declare-fun tp!2320477 () Bool)

(declare-fun tp!2320470 () Bool)

(assert (=> b!7840466 (= e!4635739 (and tp!2320477 tp!2320470))))

(declare-fun b!7840467 () Bool)

(declare-fun tp!2320481 () Bool)

(assert (=> b!7840467 (= e!4635736 tp!2320481)))

(declare-fun b!7840468 () Bool)

(declare-fun tp!2320473 () Bool)

(declare-fun tp!2320472 () Bool)

(assert (=> b!7840468 (= e!4635739 (and tp!2320473 tp!2320472))))

(declare-fun b!7840469 () Bool)

(declare-fun e!4635742 () Bool)

(declare-fun matchR!10476 (Regex!21022 List!73859) Bool)

(assert (=> b!7840469 (= e!4635742 (not (matchR!10476 r2!3226 s2!2463)))))

(declare-fun b!7840470 () Bool)

(assert (=> b!7840470 (= e!4635737 (not (= (++!18056 s1!2717 s2!2463) s!10212)))))

(declare-fun b!7840471 () Bool)

(declare-fun tp!2320474 () Bool)

(declare-fun tp!2320471 () Bool)

(assert (=> b!7840471 (= e!4635736 (and tp!2320474 tp!2320471))))

(declare-fun b!7840472 () Bool)

(declare-fun res!3118344 () Bool)

(assert (=> b!7840472 (=> (not res!3118344) (not e!4635737))))

(assert (=> b!7840472 (= res!3118344 e!4635742)))

(declare-fun res!3118342 () Bool)

(assert (=> b!7840472 (=> res!3118342 e!4635742)))

(assert (=> b!7840472 (= res!3118342 (not (matchR!10476 r1!3326 s1!2717)))))

(declare-fun b!7840473 () Bool)

(declare-fun tp!2320476 () Bool)

(declare-fun tp!2320480 () Bool)

(assert (=> b!7840473 (= e!4635736 (and tp!2320476 tp!2320480))))

(declare-fun b!7840474 () Bool)

(declare-fun tp!2320478 () Bool)

(assert (=> b!7840474 (= e!4635739 tp!2320478)))

(declare-fun b!7840475 () Bool)

(assert (=> b!7840475 (= e!4635736 tp_is_empty!52399)))

(declare-fun b!7840476 () Bool)

(declare-fun tp!2320475 () Bool)

(assert (=> b!7840476 (= e!4635738 (and tp_is_empty!52399 tp!2320475))))

(assert (= (and start!742584 res!3118346) b!7840462))

(assert (= (and b!7840462 res!3118341) b!7840463))

(assert (= (and b!7840463 res!3118345) b!7840472))

(assert (= (and b!7840472 (not res!3118342)) b!7840469))

(assert (= (and b!7840472 res!3118344) b!7840464))

(assert (= (and b!7840464 res!3118343) b!7840470))

(assert (= (and start!742584 (is-Cons!73735 s1!2717)) b!7840476))

(assert (= (and start!742584 (is-ElementMatch!21022 r1!3326)) b!7840475))

(assert (= (and start!742584 (is-Concat!29867 r1!3326)) b!7840471))

(assert (= (and start!742584 (is-Star!21022 r1!3326)) b!7840467))

(assert (= (and start!742584 (is-Union!21022 r1!3326)) b!7840473))

(assert (= (and start!742584 (is-Cons!73735 s!10212)) b!7840465))

(assert (= (and start!742584 (is-ElementMatch!21022 r2!3226)) b!7840460))

(assert (= (and start!742584 (is-Concat!29867 r2!3226)) b!7840466))

(assert (= (and start!742584 (is-Star!21022 r2!3226)) b!7840474))

(assert (= (and start!742584 (is-Union!21022 r2!3226)) b!7840468))

(assert (= (and start!742584 (is-Cons!73735 s2!2463)) b!7840461))

(declare-fun m!8253306 () Bool)

(assert (=> b!7840462 m!8253306))

(declare-fun m!8253308 () Bool)

(assert (=> start!742584 m!8253308))

(declare-fun m!8253310 () Bool)

(assert (=> b!7840472 m!8253310))

(declare-fun m!8253312 () Bool)

(assert (=> b!7840470 m!8253312))

(assert (=> b!7840463 m!8253312))

(declare-fun m!8253314 () Bool)

(assert (=> b!7840469 m!8253314))

(push 1)

(assert (not b!7840471))

(assert (not b!7840465))

(assert (not b!7840473))

(assert (not b!7840472))

(assert (not b!7840469))

(assert (not b!7840467))

(assert (not b!7840474))

(assert (not b!7840466))

(assert (not start!742584))

(assert (not b!7840476))

(assert (not b!7840468))

(assert (not b!7840461))

(assert (not b!7840470))

(assert (not b!7840462))

(assert (not b!7840463))

(assert tp_is_empty!52399)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

