; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742914 () Bool)

(assert start!742914)

(declare-fun b!7844537 () Bool)

(declare-fun e!4637855 () Bool)

(declare-fun tp!2322378 () Bool)

(declare-fun tp!2322388 () Bool)

(assert (=> b!7844537 (= e!4637855 (and tp!2322378 tp!2322388))))

(declare-fun b!7844538 () Bool)

(declare-fun tp!2322384 () Bool)

(declare-fun tp!2322385 () Bool)

(assert (=> b!7844538 (= e!4637855 (and tp!2322384 tp!2322385))))

(declare-fun b!7844539 () Bool)

(declare-fun e!4637857 () Bool)

(declare-fun tp!2322379 () Bool)

(declare-fun tp!2322382 () Bool)

(assert (=> b!7844539 (= e!4637857 (and tp!2322379 tp!2322382))))

(declare-fun b!7844540 () Bool)

(declare-fun tp!2322387 () Bool)

(assert (=> b!7844540 (= e!4637855 tp!2322387)))

(declare-fun res!3119773 () Bool)

(declare-fun e!4637856 () Bool)

(assert (=> start!742914 (=> (not res!3119773) (not e!4637856))))

(declare-datatypes ((C!42428 0))(
  ( (C!42429 (val!31676 Int)) )
))
(declare-datatypes ((Regex!21051 0))(
  ( (ElementMatch!21051 (c!1441973 C!42428)) (Concat!29896 (regOne!42614 Regex!21051) (regTwo!42614 Regex!21051)) (EmptyExpr!21051) (Star!21051 (reg!21380 Regex!21051)) (EmptyLang!21051) (Union!21051 (regOne!42615 Regex!21051) (regTwo!42615 Regex!21051)) )
))
(declare-fun r1!6227 () Regex!21051)

(declare-fun validRegex!11461 (Regex!21051) Bool)

(assert (=> start!742914 (= res!3119773 (validRegex!11461 r1!6227))))

(assert (=> start!742914 e!4637856))

(assert (=> start!742914 e!4637857))

(assert (=> start!742914 e!4637855))

(declare-fun e!4637858 () Bool)

(assert (=> start!742914 e!4637858))

(declare-fun e!4637859 () Bool)

(assert (=> start!742914 e!4637859))

(declare-fun b!7844541 () Bool)

(declare-fun res!3119772 () Bool)

(assert (=> b!7844541 (=> (not res!3119772) (not e!4637856))))

(declare-datatypes ((List!73910 0))(
  ( (Nil!73786) (Cons!73786 (h!80234 C!42428) (t!388645 List!73910)) )
))
(declare-fun s1!4084 () List!73910)

(declare-fun matchR!10487 (Regex!21051 List!73910) Bool)

(assert (=> b!7844541 (= res!3119772 (matchR!10487 r1!6227 s1!4084))))

(declare-fun b!7844542 () Bool)

(declare-fun tp_is_empty!52501 () Bool)

(assert (=> b!7844542 (= e!4637855 tp_is_empty!52501)))

(declare-fun b!7844543 () Bool)

(declare-fun tp!2322377 () Bool)

(assert (=> b!7844543 (= e!4637859 (and tp_is_empty!52501 tp!2322377))))

(declare-fun b!7844544 () Bool)

(declare-fun tp!2322381 () Bool)

(assert (=> b!7844544 (= e!4637857 tp!2322381)))

(declare-fun b!7844545 () Bool)

(declare-fun res!3119771 () Bool)

(assert (=> b!7844545 (=> (not res!3119771) (not e!4637856))))

(declare-fun r2!6165 () Regex!21051)

(assert (=> b!7844545 (= res!3119771 (validRegex!11461 r2!6165))))

(declare-fun b!7844546 () Bool)

(assert (=> b!7844546 (= e!4637857 tp_is_empty!52501)))

(declare-fun b!7844547 () Bool)

(declare-fun e!4637854 () Bool)

(assert (=> b!7844547 (= e!4637856 e!4637854)))

(declare-fun res!3119769 () Bool)

(assert (=> b!7844547 (=> (not res!3119769) (not e!4637854))))

(declare-fun lt!2678990 () Regex!21051)

(assert (=> b!7844547 (= res!3119769 (validRegex!11461 lt!2678990))))

(declare-fun derivativeStep!6288 (Regex!21051 C!42428) Regex!21051)

(assert (=> b!7844547 (= lt!2678990 (derivativeStep!6288 r1!6227 (h!80234 s1!4084)))))

(declare-fun b!7844548 () Bool)

(assert (=> b!7844548 (= e!4637854 false)))

(declare-fun lt!2678991 () Bool)

(assert (=> b!7844548 (= lt!2678991 (matchR!10487 lt!2678990 (t!388645 s1!4084)))))

(declare-fun b!7844549 () Bool)

(declare-fun res!3119774 () Bool)

(assert (=> b!7844549 (=> (not res!3119774) (not e!4637856))))

(get-info :version)

(assert (=> b!7844549 (= res!3119774 ((_ is Cons!73786) s1!4084))))

(declare-fun b!7844550 () Bool)

(declare-fun tp!2322386 () Bool)

(declare-fun tp!2322380 () Bool)

(assert (=> b!7844550 (= e!4637857 (and tp!2322386 tp!2322380))))

(declare-fun b!7844551 () Bool)

(declare-fun tp!2322383 () Bool)

(assert (=> b!7844551 (= e!4637858 (and tp_is_empty!52501 tp!2322383))))

(declare-fun b!7844552 () Bool)

(declare-fun res!3119770 () Bool)

(assert (=> b!7844552 (=> (not res!3119770) (not e!4637856))))

(declare-fun s2!3706 () List!73910)

(assert (=> b!7844552 (= res!3119770 (matchR!10487 r2!6165 s2!3706))))

(assert (= (and start!742914 res!3119773) b!7844545))

(assert (= (and b!7844545 res!3119771) b!7844541))

(assert (= (and b!7844541 res!3119772) b!7844552))

(assert (= (and b!7844552 res!3119770) b!7844549))

(assert (= (and b!7844549 res!3119774) b!7844547))

(assert (= (and b!7844547 res!3119769) b!7844548))

(assert (= (and start!742914 ((_ is ElementMatch!21051) r1!6227)) b!7844546))

(assert (= (and start!742914 ((_ is Concat!29896) r1!6227)) b!7844539))

(assert (= (and start!742914 ((_ is Star!21051) r1!6227)) b!7844544))

(assert (= (and start!742914 ((_ is Union!21051) r1!6227)) b!7844550))

(assert (= (and start!742914 ((_ is ElementMatch!21051) r2!6165)) b!7844542))

(assert (= (and start!742914 ((_ is Concat!29896) r2!6165)) b!7844537))

(assert (= (and start!742914 ((_ is Star!21051) r2!6165)) b!7844540))

(assert (= (and start!742914 ((_ is Union!21051) r2!6165)) b!7844538))

(assert (= (and start!742914 ((_ is Cons!73786) s1!4084)) b!7844551))

(assert (= (and start!742914 ((_ is Cons!73786) s2!3706)) b!7844543))

(declare-fun m!8255334 () Bool)

(assert (=> b!7844545 m!8255334))

(declare-fun m!8255336 () Bool)

(assert (=> start!742914 m!8255336))

(declare-fun m!8255338 () Bool)

(assert (=> b!7844541 m!8255338))

(declare-fun m!8255340 () Bool)

(assert (=> b!7844548 m!8255340))

(declare-fun m!8255342 () Bool)

(assert (=> b!7844552 m!8255342))

(declare-fun m!8255344 () Bool)

(assert (=> b!7844547 m!8255344))

(declare-fun m!8255346 () Bool)

(assert (=> b!7844547 m!8255346))

(check-sat (not b!7844551) (not b!7844545) (not b!7844543) (not b!7844540) (not b!7844544) (not b!7844547) (not b!7844550) (not b!7844539) (not b!7844541) (not start!742914) (not b!7844538) (not b!7844552) tp_is_empty!52501 (not b!7844537) (not b!7844548))
(check-sat)
