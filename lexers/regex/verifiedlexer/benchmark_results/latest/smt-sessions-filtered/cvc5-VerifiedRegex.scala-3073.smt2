; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183116 () Bool)

(assert start!183116)

(declare-fun res!826885 () Bool)

(declare-fun e!1175783 () Bool)

(assert (=> start!183116 (=> (not res!826885) (not e!1175783))))

(declare-datatypes ((B!1543 0))(
  ( (B!1544 (val!5719 Int)) )
))
(declare-datatypes ((List!20319 0))(
  ( (Nil!20249) (Cons!20249 (h!25650 B!1543) (t!171748 List!20319)) )
))
(declare-fun p!2031 () List!20319)

(declare-fun l!3477 () List!20319)

(declare-fun isPrefix!1858 (List!20319 List!20319) Bool)

(assert (=> start!183116 (= res!826885 (isPrefix!1858 p!2031 l!3477))))

(assert (=> start!183116 e!1175783))

(declare-fun e!1175784 () Bool)

(assert (=> start!183116 e!1175784))

(declare-fun e!1175785 () Bool)

(assert (=> start!183116 e!1175785))

(declare-fun lt!713974 () Int)

(declare-fun lt!713973 () Int)

(declare-fun b!1839909 () Bool)

(assert (=> b!1839909 (= e!1175783 (and (<= (+ 1 lt!713974) lt!713973) (not (is-Cons!20249 p!2031)) (< lt!713973 lt!713974)))))

(declare-fun size!16049 (List!20319) Int)

(assert (=> b!1839909 (= lt!713973 (size!16049 l!3477))))

(assert (=> b!1839909 (= lt!713974 (size!16049 p!2031))))

(declare-fun b!1839910 () Bool)

(declare-fun tp_is_empty!8291 () Bool)

(declare-fun tp!520275 () Bool)

(assert (=> b!1839910 (= e!1175784 (and tp_is_empty!8291 tp!520275))))

(declare-fun b!1839911 () Bool)

(declare-fun tp!520276 () Bool)

(assert (=> b!1839911 (= e!1175785 (and tp_is_empty!8291 tp!520276))))

(assert (= (and start!183116 res!826885) b!1839909))

(assert (= (and start!183116 (is-Cons!20249 p!2031)) b!1839910))

(assert (= (and start!183116 (is-Cons!20249 l!3477)) b!1839911))

(declare-fun m!2267569 () Bool)

(assert (=> start!183116 m!2267569))

(declare-fun m!2267571 () Bool)

(assert (=> b!1839909 m!2267571))

(declare-fun m!2267573 () Bool)

(assert (=> b!1839909 m!2267573))

(push 1)

(assert (not b!1839910))

(assert (not b!1839911))

(assert (not b!1839909))

(assert tp_is_empty!8291)

(assert (not start!183116))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

