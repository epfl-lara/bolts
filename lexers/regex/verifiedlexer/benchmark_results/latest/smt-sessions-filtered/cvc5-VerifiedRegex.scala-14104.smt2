; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742512 () Bool)

(assert start!742512)

(declare-fun b!7838772 () Bool)

(declare-fun e!4634976 () Bool)

(assert (=> b!7838772 (= e!4634976 false)))

(declare-fun lt!2678265 () Bool)

(declare-datatypes ((C!42330 0))(
  ( (C!42331 (val!31605 Int)) )
))
(declare-datatypes ((Regex!21002 0))(
  ( (ElementMatch!21002 (c!1441383 C!42330)) (Concat!29847 (regOne!42516 Regex!21002) (regTwo!42516 Regex!21002)) (EmptyExpr!21002) (Star!21002 (reg!21331 Regex!21002)) (EmptyLang!21002) (Union!21002 (regOne!42517 Regex!21002) (regTwo!42517 Regex!21002)) )
))
(declare-fun r1!3326 () Regex!21002)

(declare-datatypes ((List!73839 0))(
  ( (Nil!73715) (Cons!73715 (h!80163 C!42330) (t!388574 List!73839)) )
))
(declare-fun matchR!10458 (Regex!21002 List!73839) Bool)

(declare-datatypes ((tuple2!70006 0))(
  ( (tuple2!70007 (_1!38306 List!73839) (_2!38306 List!73839)) )
))
(declare-datatypes ((Option!17797 0))(
  ( (None!17796) (Some!17796 (v!54931 tuple2!70006)) )
))
(declare-fun get!26415 (Option!17797) tuple2!70006)

(assert (=> b!7838772 (= lt!2678265 (matchR!10458 r1!3326 (_1!38306 (get!26415 None!17796))))))

(declare-fun res!3117717 () Bool)

(assert (=> start!742512 (=> (not res!3117717) (not e!4634976))))

(declare-fun validRegex!11416 (Regex!21002) Bool)

(assert (=> start!742512 (= res!3117717 (validRegex!11416 r1!3326))))

(assert (=> start!742512 e!4634976))

(declare-fun e!4634971 () Bool)

(assert (=> start!742512 e!4634971))

(declare-fun e!4634972 () Bool)

(assert (=> start!742512 e!4634972))

(declare-fun e!4634970 () Bool)

(assert (=> start!742512 e!4634970))

(declare-fun e!4634973 () Bool)

(assert (=> start!742512 e!4634973))

(declare-fun e!4634974 () Bool)

(assert (=> start!742512 e!4634974))

(declare-fun b!7838773 () Bool)

(declare-fun e!4634975 () Bool)

(declare-fun r2!3226 () Regex!21002)

(declare-fun s2!2463 () List!73839)

(assert (=> b!7838773 (= e!4634975 (not (matchR!10458 r2!3226 s2!2463)))))

(declare-fun b!7838774 () Bool)

(declare-fun res!3117718 () Bool)

(assert (=> b!7838774 (=> (not res!3117718) (not e!4634976))))

(assert (=> b!7838774 (= res!3117718 e!4634975)))

(declare-fun res!3117722 () Bool)

(assert (=> b!7838774 (=> res!3117722 e!4634975)))

(declare-fun s1!2717 () List!73839)

(assert (=> b!7838774 (= res!3117722 (not (matchR!10458 r1!3326 s1!2717)))))

(declare-fun b!7838775 () Bool)

(declare-fun tp_is_empty!52359 () Bool)

(declare-fun tp!2319440 () Bool)

(assert (=> b!7838775 (= e!4634970 (and tp_is_empty!52359 tp!2319440))))

(declare-fun b!7838776 () Bool)

(declare-fun tp!2319431 () Bool)

(assert (=> b!7838776 (= e!4634973 tp!2319431)))

(declare-fun b!7838777 () Bool)

(declare-fun tp!2319433 () Bool)

(declare-fun tp!2319437 () Bool)

(assert (=> b!7838777 (= e!4634973 (and tp!2319433 tp!2319437))))

(declare-fun b!7838778 () Bool)

(declare-fun tp!2319441 () Bool)

(assert (=> b!7838778 (= e!4634974 (and tp_is_empty!52359 tp!2319441))))

(declare-fun b!7838779 () Bool)

(assert (=> b!7838779 (= e!4634972 tp_is_empty!52359)))

(declare-fun b!7838780 () Bool)

(assert (=> b!7838780 (= e!4634973 tp_is_empty!52359)))

(declare-fun b!7838781 () Bool)

(declare-fun res!3117719 () Bool)

(assert (=> b!7838781 (=> (not res!3117719) (not e!4634976))))

(assert (=> b!7838781 (= res!3117719 false)))

(declare-fun b!7838782 () Bool)

(declare-fun res!3117721 () Bool)

(assert (=> b!7838782 (=> (not res!3117721) (not e!4634976))))

(assert (=> b!7838782 (= res!3117721 (validRegex!11416 r2!3226))))

(declare-fun b!7838783 () Bool)

(declare-fun tp!2319436 () Bool)

(assert (=> b!7838783 (= e!4634972 tp!2319436)))

(declare-fun b!7838784 () Bool)

(declare-fun res!3117720 () Bool)

(assert (=> b!7838784 (=> (not res!3117720) (not e!4634976))))

(declare-fun s!10212 () List!73839)

(declare-fun ++!18036 (List!73839 List!73839) List!73839)

(assert (=> b!7838784 (= res!3117720 (= (++!18036 s1!2717 s2!2463) s!10212))))

(declare-fun b!7838785 () Bool)

(declare-fun tp!2319438 () Bool)

(assert (=> b!7838785 (= e!4634971 (and tp_is_empty!52359 tp!2319438))))

(declare-fun b!7838786 () Bool)

(declare-fun tp!2319430 () Bool)

(declare-fun tp!2319432 () Bool)

(assert (=> b!7838786 (= e!4634972 (and tp!2319430 tp!2319432))))

(declare-fun b!7838787 () Bool)

(declare-fun tp!2319439 () Bool)

(declare-fun tp!2319442 () Bool)

(assert (=> b!7838787 (= e!4634973 (and tp!2319439 tp!2319442))))

(declare-fun b!7838788 () Bool)

(declare-fun tp!2319435 () Bool)

(declare-fun tp!2319434 () Bool)

(assert (=> b!7838788 (= e!4634972 (and tp!2319435 tp!2319434))))

(assert (= (and start!742512 res!3117717) b!7838782))

(assert (= (and b!7838782 res!3117721) b!7838784))

(assert (= (and b!7838784 res!3117720) b!7838774))

(assert (= (and b!7838774 (not res!3117722)) b!7838773))

(assert (= (and b!7838774 res!3117718) b!7838781))

(assert (= (and b!7838781 res!3117719) b!7838772))

(assert (= (and start!742512 (is-Cons!73715 s1!2717)) b!7838785))

(assert (= (and start!742512 (is-ElementMatch!21002 r1!3326)) b!7838779))

(assert (= (and start!742512 (is-Concat!29847 r1!3326)) b!7838786))

(assert (= (and start!742512 (is-Star!21002 r1!3326)) b!7838783))

(assert (= (and start!742512 (is-Union!21002 r1!3326)) b!7838788))

(assert (= (and start!742512 (is-Cons!73715 s!10212)) b!7838775))

(assert (= (and start!742512 (is-ElementMatch!21002 r2!3226)) b!7838780))

(assert (= (and start!742512 (is-Concat!29847 r2!3226)) b!7838787))

(assert (= (and start!742512 (is-Star!21002 r2!3226)) b!7838776))

(assert (= (and start!742512 (is-Union!21002 r2!3226)) b!7838777))

(assert (= (and start!742512 (is-Cons!73715 s2!2463)) b!7838778))

(declare-fun m!8252726 () Bool)

(assert (=> b!7838772 m!8252726))

(declare-fun m!8252728 () Bool)

(assert (=> b!7838772 m!8252728))

(declare-fun m!8252730 () Bool)

(assert (=> b!7838773 m!8252730))

(declare-fun m!8252732 () Bool)

(assert (=> start!742512 m!8252732))

(declare-fun m!8252734 () Bool)

(assert (=> b!7838782 m!8252734))

(declare-fun m!8252736 () Bool)

(assert (=> b!7838774 m!8252736))

(declare-fun m!8252738 () Bool)

(assert (=> b!7838784 m!8252738))

(push 1)

(assert (not b!7838782))

(assert (not b!7838783))

(assert (not start!742512))

(assert (not b!7838777))

(assert (not b!7838778))

(assert (not b!7838773))

(assert (not b!7838774))

(assert (not b!7838776))

(assert (not b!7838787))

(assert (not b!7838786))

(assert (not b!7838788))

(assert (not b!7838784))

(assert tp_is_empty!52359)

(assert (not b!7838785))

(assert (not b!7838772))

(assert (not b!7838775))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

