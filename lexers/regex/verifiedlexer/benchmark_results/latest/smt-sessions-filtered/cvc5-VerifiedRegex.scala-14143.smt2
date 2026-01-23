; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742972 () Bool)

(assert start!742972)

(declare-fun b!7845723 () Bool)

(declare-fun e!4638408 () Bool)

(declare-fun tp!2322894 () Bool)

(declare-fun tp!2322893 () Bool)

(assert (=> b!7845723 (= e!4638408 (and tp!2322894 tp!2322893))))

(declare-fun b!7845724 () Bool)

(declare-fun tp!2322896 () Bool)

(assert (=> b!7845724 (= e!4638408 tp!2322896)))

(declare-fun b!7845725 () Bool)

(declare-fun e!4638410 () Bool)

(declare-fun tp!2322888 () Bool)

(declare-fun tp!2322892 () Bool)

(assert (=> b!7845725 (= e!4638410 (and tp!2322888 tp!2322892))))

(declare-fun b!7845726 () Bool)

(declare-fun res!3120181 () Bool)

(declare-fun e!4638407 () Bool)

(assert (=> b!7845726 (=> (not res!3120181) (not e!4638407))))

(declare-datatypes ((C!42442 0))(
  ( (C!42443 (val!31683 Int)) )
))
(declare-datatypes ((Regex!21058 0))(
  ( (ElementMatch!21058 (c!1442152 C!42442)) (Concat!29903 (regOne!42628 Regex!21058) (regTwo!42628 Regex!21058)) (EmptyExpr!21058) (Star!21058 (reg!21387 Regex!21058)) (EmptyLang!21058) (Union!21058 (regOne!42629 Regex!21058) (regTwo!42629 Regex!21058)) )
))
(declare-fun r2!6165 () Regex!21058)

(declare-fun validRegex!11468 (Regex!21058) Bool)

(assert (=> b!7845726 (= res!3120181 (validRegex!11468 r2!6165))))

(declare-fun b!7845727 () Bool)

(declare-fun res!3120177 () Bool)

(assert (=> b!7845727 (=> (not res!3120177) (not e!4638407))))

(declare-datatypes ((List!73917 0))(
  ( (Nil!73793) (Cons!73793 (h!80241 C!42442) (t!388652 List!73917)) )
))
(declare-fun s1!4084 () List!73917)

(assert (=> b!7845727 (= res!3120177 (is-Cons!73793 s1!4084))))

(declare-fun b!7845728 () Bool)

(declare-fun e!4638406 () Bool)

(declare-fun tp_is_empty!52515 () Bool)

(declare-fun tp!2322890 () Bool)

(assert (=> b!7845728 (= e!4638406 (and tp_is_empty!52515 tp!2322890))))

(declare-fun res!3120178 () Bool)

(assert (=> start!742972 (=> (not res!3120178) (not e!4638407))))

(declare-fun r1!6227 () Regex!21058)

(assert (=> start!742972 (= res!3120178 (validRegex!11468 r1!6227))))

(assert (=> start!742972 e!4638407))

(assert (=> start!742972 e!4638410))

(assert (=> start!742972 e!4638408))

(assert (=> start!742972 e!4638406))

(declare-fun e!4638409 () Bool)

(assert (=> start!742972 e!4638409))

(declare-fun b!7845729 () Bool)

(assert (=> b!7845729 (= e!4638407 (not true))))

(declare-fun s2!3706 () List!73917)

(declare-fun lt!2679094 () Regex!21058)

(declare-fun matchR!10494 (Regex!21058 List!73917) Bool)

(declare-fun ++!18068 (List!73917 List!73917) List!73917)

(assert (=> b!7845729 (matchR!10494 (Concat!29903 lt!2679094 r2!6165) (++!18068 (t!388652 s1!4084) s2!3706))))

(declare-datatypes ((Unit!168862 0))(
  ( (Unit!168863) )
))
(declare-fun lt!2679095 () Unit!168862)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!429 (Regex!21058 Regex!21058 List!73917 List!73917) Unit!168862)

(assert (=> b!7845729 (= lt!2679095 (lemmaTwoRegexMatchThenConcatMatchesConcatString!429 lt!2679094 r2!6165 (t!388652 s1!4084) s2!3706))))

(declare-fun derivativeStep!6295 (Regex!21058 C!42442) Regex!21058)

(assert (=> b!7845729 (= lt!2679094 (derivativeStep!6295 r1!6227 (h!80241 s1!4084)))))

(declare-fun b!7845730 () Bool)

(assert (=> b!7845730 (= e!4638410 tp_is_empty!52515)))

(declare-fun b!7845731 () Bool)

(declare-fun tp!2322887 () Bool)

(assert (=> b!7845731 (= e!4638409 (and tp_is_empty!52515 tp!2322887))))

(declare-fun b!7845732 () Bool)

(declare-fun tp!2322889 () Bool)

(declare-fun tp!2322891 () Bool)

(assert (=> b!7845732 (= e!4638408 (and tp!2322889 tp!2322891))))

(declare-fun b!7845733 () Bool)

(assert (=> b!7845733 (= e!4638408 tp_is_empty!52515)))

(declare-fun b!7845734 () Bool)

(declare-fun res!3120179 () Bool)

(assert (=> b!7845734 (=> (not res!3120179) (not e!4638407))))

(assert (=> b!7845734 (= res!3120179 (matchR!10494 r2!6165 s2!3706))))

(declare-fun b!7845735 () Bool)

(declare-fun res!3120180 () Bool)

(assert (=> b!7845735 (=> (not res!3120180) (not e!4638407))))

(assert (=> b!7845735 (= res!3120180 (matchR!10494 r1!6227 s1!4084))))

(declare-fun b!7845736 () Bool)

(declare-fun tp!2322895 () Bool)

(declare-fun tp!2322886 () Bool)

(assert (=> b!7845736 (= e!4638410 (and tp!2322895 tp!2322886))))

(declare-fun b!7845737 () Bool)

(declare-fun tp!2322885 () Bool)

(assert (=> b!7845737 (= e!4638410 tp!2322885)))

(assert (= (and start!742972 res!3120178) b!7845726))

(assert (= (and b!7845726 res!3120181) b!7845735))

(assert (= (and b!7845735 res!3120180) b!7845734))

(assert (= (and b!7845734 res!3120179) b!7845727))

(assert (= (and b!7845727 res!3120177) b!7845729))

(assert (= (and start!742972 (is-ElementMatch!21058 r1!6227)) b!7845730))

(assert (= (and start!742972 (is-Concat!29903 r1!6227)) b!7845736))

(assert (= (and start!742972 (is-Star!21058 r1!6227)) b!7845737))

(assert (= (and start!742972 (is-Union!21058 r1!6227)) b!7845725))

(assert (= (and start!742972 (is-ElementMatch!21058 r2!6165)) b!7845733))

(assert (= (and start!742972 (is-Concat!29903 r2!6165)) b!7845723))

(assert (= (and start!742972 (is-Star!21058 r2!6165)) b!7845724))

(assert (= (and start!742972 (is-Union!21058 r2!6165)) b!7845732))

(assert (= (and start!742972 (is-Cons!73793 s1!4084)) b!7845728))

(assert (= (and start!742972 (is-Cons!73793 s2!3706)) b!7845731))

(declare-fun m!8255808 () Bool)

(assert (=> b!7845735 m!8255808))

(declare-fun m!8255810 () Bool)

(assert (=> b!7845734 m!8255810))

(declare-fun m!8255812 () Bool)

(assert (=> b!7845726 m!8255812))

(declare-fun m!8255814 () Bool)

(assert (=> start!742972 m!8255814))

(declare-fun m!8255816 () Bool)

(assert (=> b!7845729 m!8255816))

(assert (=> b!7845729 m!8255816))

(declare-fun m!8255818 () Bool)

(assert (=> b!7845729 m!8255818))

(declare-fun m!8255820 () Bool)

(assert (=> b!7845729 m!8255820))

(declare-fun m!8255822 () Bool)

(assert (=> b!7845729 m!8255822))

(push 1)

(assert (not b!7845736))

(assert (not b!7845724))

(assert (not b!7845737))

(assert (not b!7845735))

(assert (not b!7845731))

(assert (not start!742972))

(assert (not b!7845723))

(assert (not b!7845726))

(assert tp_is_empty!52515)

(assert (not b!7845734))

(assert (not b!7845728))

(assert (not b!7845725))

(assert (not b!7845732))

(assert (not b!7845729))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

