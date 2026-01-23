; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742916 () Bool)

(assert start!742916)

(declare-fun b!7844583 () Bool)

(declare-fun e!4637871 () Bool)

(declare-fun tp!2322421 () Bool)

(assert (=> b!7844583 (= e!4637871 tp!2322421)))

(declare-fun b!7844584 () Bool)

(declare-fun tp!2322420 () Bool)

(declare-fun tp!2322418 () Bool)

(assert (=> b!7844584 (= e!4637871 (and tp!2322420 tp!2322418))))

(declare-fun b!7844585 () Bool)

(declare-fun e!4637872 () Bool)

(declare-fun tp!2322417 () Bool)

(assert (=> b!7844585 (= e!4637872 tp!2322417)))

(declare-fun b!7844586 () Bool)

(declare-fun tp!2322422 () Bool)

(declare-fun tp!2322415 () Bool)

(assert (=> b!7844586 (= e!4637872 (and tp!2322422 tp!2322415))))

(declare-fun res!3119785 () Bool)

(declare-fun e!4637873 () Bool)

(assert (=> start!742916 (=> (not res!3119785) (not e!4637873))))

(declare-datatypes ((C!42430 0))(
  ( (C!42431 (val!31677 Int)) )
))
(declare-datatypes ((Regex!21052 0))(
  ( (ElementMatch!21052 (c!1441974 C!42430)) (Concat!29897 (regOne!42616 Regex!21052) (regTwo!42616 Regex!21052)) (EmptyExpr!21052) (Star!21052 (reg!21381 Regex!21052)) (EmptyLang!21052) (Union!21052 (regOne!42617 Regex!21052) (regTwo!42617 Regex!21052)) )
))
(declare-fun r1!6227 () Regex!21052)

(declare-fun validRegex!11462 (Regex!21052) Bool)

(assert (=> start!742916 (= res!3119785 (validRegex!11462 r1!6227))))

(assert (=> start!742916 e!4637873))

(assert (=> start!742916 e!4637872))

(assert (=> start!742916 e!4637871))

(declare-fun e!4637874 () Bool)

(assert (=> start!742916 e!4637874))

(declare-fun e!4637870 () Bool)

(assert (=> start!742916 e!4637870))

(declare-fun b!7844587 () Bool)

(declare-fun tp!2322414 () Bool)

(declare-fun tp!2322424 () Bool)

(assert (=> b!7844587 (= e!4637871 (and tp!2322414 tp!2322424))))

(declare-fun b!7844588 () Bool)

(declare-fun tp_is_empty!52503 () Bool)

(declare-fun tp!2322416 () Bool)

(assert (=> b!7844588 (= e!4637870 (and tp_is_empty!52503 tp!2322416))))

(declare-fun b!7844589 () Bool)

(declare-fun tp!2322413 () Bool)

(declare-fun tp!2322423 () Bool)

(assert (=> b!7844589 (= e!4637872 (and tp!2322413 tp!2322423))))

(declare-fun b!7844590 () Bool)

(assert (=> b!7844590 (= e!4637873 (not true))))

(declare-fun lt!2678996 () Regex!21052)

(declare-fun r2!6165 () Regex!21052)

(declare-datatypes ((List!73911 0))(
  ( (Nil!73787) (Cons!73787 (h!80235 C!42430) (t!388646 List!73911)) )
))
(declare-fun s1!4084 () List!73911)

(declare-fun s2!3706 () List!73911)

(declare-fun matchR!10488 (Regex!21052 List!73911) Bool)

(declare-fun ++!18062 (List!73911 List!73911) List!73911)

(assert (=> b!7844590 (matchR!10488 (Concat!29897 lt!2678996 r2!6165) (++!18062 (t!388646 s1!4084) s2!3706))))

(declare-datatypes ((Unit!168850 0))(
  ( (Unit!168851) )
))
(declare-fun lt!2678997 () Unit!168850)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!423 (Regex!21052 Regex!21052 List!73911 List!73911) Unit!168850)

(assert (=> b!7844590 (= lt!2678997 (lemmaTwoRegexMatchThenConcatMatchesConcatString!423 lt!2678996 r2!6165 (t!388646 s1!4084) s2!3706))))

(declare-fun derivativeStep!6289 (Regex!21052 C!42430) Regex!21052)

(assert (=> b!7844590 (= lt!2678996 (derivativeStep!6289 r1!6227 (h!80235 s1!4084)))))

(declare-fun b!7844591 () Bool)

(assert (=> b!7844591 (= e!4637872 tp_is_empty!52503)))

(declare-fun b!7844592 () Bool)

(declare-fun tp!2322419 () Bool)

(assert (=> b!7844592 (= e!4637874 (and tp_is_empty!52503 tp!2322419))))

(declare-fun b!7844593 () Bool)

(declare-fun res!3119787 () Bool)

(assert (=> b!7844593 (=> (not res!3119787) (not e!4637873))))

(assert (=> b!7844593 (= res!3119787 (matchR!10488 r1!6227 s1!4084))))

(declare-fun b!7844594 () Bool)

(declare-fun res!3119786 () Bool)

(assert (=> b!7844594 (=> (not res!3119786) (not e!4637873))))

(assert (=> b!7844594 (= res!3119786 (is-Cons!73787 s1!4084))))

(declare-fun b!7844595 () Bool)

(declare-fun res!3119788 () Bool)

(assert (=> b!7844595 (=> (not res!3119788) (not e!4637873))))

(assert (=> b!7844595 (= res!3119788 (matchR!10488 r2!6165 s2!3706))))

(declare-fun b!7844596 () Bool)

(assert (=> b!7844596 (= e!4637871 tp_is_empty!52503)))

(declare-fun b!7844597 () Bool)

(declare-fun res!3119789 () Bool)

(assert (=> b!7844597 (=> (not res!3119789) (not e!4637873))))

(assert (=> b!7844597 (= res!3119789 (validRegex!11462 r2!6165))))

(assert (= (and start!742916 res!3119785) b!7844597))

(assert (= (and b!7844597 res!3119789) b!7844593))

(assert (= (and b!7844593 res!3119787) b!7844595))

(assert (= (and b!7844595 res!3119788) b!7844594))

(assert (= (and b!7844594 res!3119786) b!7844590))

(assert (= (and start!742916 (is-ElementMatch!21052 r1!6227)) b!7844591))

(assert (= (and start!742916 (is-Concat!29897 r1!6227)) b!7844586))

(assert (= (and start!742916 (is-Star!21052 r1!6227)) b!7844585))

(assert (= (and start!742916 (is-Union!21052 r1!6227)) b!7844589))

(assert (= (and start!742916 (is-ElementMatch!21052 r2!6165)) b!7844596))

(assert (= (and start!742916 (is-Concat!29897 r2!6165)) b!7844584))

(assert (= (and start!742916 (is-Star!21052 r2!6165)) b!7844583))

(assert (= (and start!742916 (is-Union!21052 r2!6165)) b!7844587))

(assert (= (and start!742916 (is-Cons!73787 s1!4084)) b!7844592))

(assert (= (and start!742916 (is-Cons!73787 s2!3706)) b!7844588))

(declare-fun m!8255348 () Bool)

(assert (=> b!7844590 m!8255348))

(assert (=> b!7844590 m!8255348))

(declare-fun m!8255350 () Bool)

(assert (=> b!7844590 m!8255350))

(declare-fun m!8255352 () Bool)

(assert (=> b!7844590 m!8255352))

(declare-fun m!8255354 () Bool)

(assert (=> b!7844590 m!8255354))

(declare-fun m!8255356 () Bool)

(assert (=> start!742916 m!8255356))

(declare-fun m!8255358 () Bool)

(assert (=> b!7844593 m!8255358))

(declare-fun m!8255360 () Bool)

(assert (=> b!7844595 m!8255360))

(declare-fun m!8255362 () Bool)

(assert (=> b!7844597 m!8255362))

(push 1)

(assert (not b!7844584))

(assert (not b!7844585))

(assert (not b!7844597))

(assert (not b!7844583))

(assert (not b!7844592))

(assert (not start!742916))

(assert (not b!7844593))

(assert (not b!7844590))

(assert (not b!7844587))

(assert (not b!7844586))

(assert (not b!7844595))

(assert (not b!7844588))

(assert (not b!7844589))

(assert tp_is_empty!52503)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

