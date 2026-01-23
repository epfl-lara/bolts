; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714460 () Bool)

(assert start!714460)

(declare-fun res!2959653 () Bool)

(declare-fun e!4383979 () Bool)

(assert (=> start!714460 (=> (not res!2959653) (not e!4383979))))

(declare-datatypes ((B!3847 0))(
  ( (B!3848 (val!29455 Int)) )
))
(declare-datatypes ((List!71454 0))(
  ( (Nil!71330) (Cons!71330 (h!77778 B!3847) (t!385837 List!71454)) )
))
(declare-fun l!3673 () List!71454)

(assert (=> start!714460 (= res!2959653 (not (is-Nil!71330 l!3673)))))

(assert (=> start!714460 e!4383979))

(declare-fun e!4383978 () Bool)

(assert (=> start!714460 e!4383978))

(declare-fun b!7322008 () Bool)

(declare-fun subseq!902 (List!71454 List!71454) Bool)

(assert (=> b!7322008 (= e!4383979 (not (subseq!902 l!3673 l!3673)))))

(assert (=> b!7322008 (subseq!902 (t!385837 l!3673) (t!385837 l!3673))))

(declare-datatypes ((Unit!164889 0))(
  ( (Unit!164890) )
))
(declare-fun lt!2604829 () Unit!164889)

(declare-fun lemmaSubseqRefl!204 (List!71454) Unit!164889)

(assert (=> b!7322008 (= lt!2604829 (lemmaSubseqRefl!204 (t!385837 l!3673)))))

(declare-fun b!7322009 () Bool)

(declare-fun tp_is_empty!48161 () Bool)

(declare-fun tp!2079768 () Bool)

(assert (=> b!7322009 (= e!4383978 (and tp_is_empty!48161 tp!2079768))))

(assert (= (and start!714460 res!2959653) b!7322008))

(assert (= (and start!714460 (is-Cons!71330 l!3673)) b!7322009))

(declare-fun m!7987618 () Bool)

(assert (=> b!7322008 m!7987618))

(declare-fun m!7987620 () Bool)

(assert (=> b!7322008 m!7987620))

(declare-fun m!7987622 () Bool)

(assert (=> b!7322008 m!7987622))

(push 1)

(assert (not b!7322008))

(assert (not b!7322009))

(assert tp_is_empty!48161)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7322026 () Bool)

(declare-fun e!4383999 () Bool)

(declare-fun e!4383998 () Bool)

(assert (=> b!7322026 (= e!4383999 e!4383998)))

(declare-fun res!2959670 () Bool)

(assert (=> b!7322026 (=> (not res!2959670) (not e!4383998))))

(assert (=> b!7322026 (= res!2959670 (is-Cons!71330 l!3673))))

(declare-fun b!7322028 () Bool)

(declare-fun e!4383996 () Bool)

(assert (=> b!7322028 (= e!4383996 (subseq!902 (t!385837 l!3673) (t!385837 l!3673)))))

(declare-fun b!7322029 () Bool)

(declare-fun e!4383997 () Bool)

(assert (=> b!7322029 (= e!4383997 (subseq!902 l!3673 (t!385837 l!3673)))))

(declare-fun b!7322027 () Bool)

(assert (=> b!7322027 (= e!4383998 e!4383997)))

(declare-fun res!2959669 () Bool)

(assert (=> b!7322027 (=> res!2959669 e!4383997)))

(assert (=> b!7322027 (= res!2959669 e!4383996)))

(declare-fun res!2959667 () Bool)

(assert (=> b!7322027 (=> (not res!2959667) (not e!4383996))))

(assert (=> b!7322027 (= res!2959667 (= (h!77778 l!3673) (h!77778 l!3673)))))

(declare-fun d!2273786 () Bool)

(declare-fun res!2959668 () Bool)

(assert (=> d!2273786 (=> res!2959668 e!4383999)))

(assert (=> d!2273786 (= res!2959668 (is-Nil!71330 l!3673))))

(assert (=> d!2273786 (= (subseq!902 l!3673 l!3673) e!4383999)))

(assert (= (and d!2273786 (not res!2959668)) b!7322026))

(assert (= (and b!7322026 res!2959670) b!7322027))

(assert (= (and b!7322027 res!2959667) b!7322028))

(assert (= (and b!7322027 (not res!2959669)) b!7322029))

(assert (=> b!7322028 m!7987620))

(declare-fun m!7987630 () Bool)

(assert (=> b!7322029 m!7987630))

(assert (=> b!7322008 d!2273786))

(declare-fun b!7322036 () Bool)

(declare-fun e!4384009 () Bool)

(declare-fun e!4384008 () Bool)

(assert (=> b!7322036 (= e!4384009 e!4384008)))

(declare-fun res!2959680 () Bool)

(assert (=> b!7322036 (=> (not res!2959680) (not e!4384008))))

(assert (=> b!7322036 (= res!2959680 (is-Cons!71330 (t!385837 l!3673)))))

(declare-fun b!7322038 () Bool)

(declare-fun e!4384006 () Bool)

(assert (=> b!7322038 (= e!4384006 (subseq!902 (t!385837 (t!385837 l!3673)) (t!385837 (t!385837 l!3673))))))

(declare-fun b!7322039 () Bool)

(declare-fun e!4384007 () Bool)

(assert (=> b!7322039 (= e!4384007 (subseq!902 (t!385837 l!3673) (t!385837 (t!385837 l!3673))))))

(declare-fun b!7322037 () Bool)

(assert (=> b!7322037 (= e!4384008 e!4384007)))

(declare-fun res!2959679 () Bool)

(assert (=> b!7322037 (=> res!2959679 e!4384007)))

(assert (=> b!7322037 (= res!2959679 e!4384006)))

(declare-fun res!2959677 () Bool)

(assert (=> b!7322037 (=> (not res!2959677) (not e!4384006))))

(assert (=> b!7322037 (= res!2959677 (= (h!77778 (t!385837 l!3673)) (h!77778 (t!385837 l!3673))))))

(declare-fun d!2273788 () Bool)

(declare-fun res!2959678 () Bool)

(assert (=> d!2273788 (=> res!2959678 e!4384009)))

(assert (=> d!2273788 (= res!2959678 (is-Nil!71330 (t!385837 l!3673)))))

(assert (=> d!2273788 (= (subseq!902 (t!385837 l!3673) (t!385837 l!3673)) e!4384009)))

(assert (= (and d!2273788 (not res!2959678)) b!7322036))

(assert (= (and b!7322036 res!2959680) b!7322037))

(assert (= (and b!7322037 res!2959677) b!7322038))

(assert (= (and b!7322037 (not res!2959679)) b!7322039))

(declare-fun m!7987632 () Bool)

(assert (=> b!7322038 m!7987632))

(declare-fun m!7987634 () Bool)

(assert (=> b!7322039 m!7987634))

(assert (=> b!7322008 d!2273788))

(declare-fun d!2273790 () Bool)

(assert (=> d!2273790 (subseq!902 (t!385837 l!3673) (t!385837 l!3673))))

(declare-fun lt!2604835 () Unit!164889)

(declare-fun choose!56935 (List!71454) Unit!164889)

(assert (=> d!2273790 (= lt!2604835 (choose!56935 (t!385837 l!3673)))))

(assert (=> d!2273790 (= (lemmaSubseqRefl!204 (t!385837 l!3673)) lt!2604835)))

(declare-fun bs!1916135 () Bool)

(assert (= bs!1916135 d!2273790))

(assert (=> bs!1916135 m!7987620))

(declare-fun m!7987636 () Bool)

(assert (=> bs!1916135 m!7987636))

(assert (=> b!7322008 d!2273790))

(declare-fun b!7322044 () Bool)

(declare-fun e!4384012 () Bool)

(declare-fun tp!2079774 () Bool)

(assert (=> b!7322044 (= e!4384012 (and tp_is_empty!48161 tp!2079774))))

(assert (=> b!7322009 (= tp!2079768 e!4384012)))

(assert (= (and b!7322009 (is-Cons!71330 (t!385837 l!3673))) b!7322044))

(push 1)

(assert (not b!7322029))

(assert (not b!7322028))

(assert (not b!7322038))

(assert (not d!2273790))

(assert (not b!7322039))

(assert (not b!7322044))

(assert tp_is_empty!48161)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

