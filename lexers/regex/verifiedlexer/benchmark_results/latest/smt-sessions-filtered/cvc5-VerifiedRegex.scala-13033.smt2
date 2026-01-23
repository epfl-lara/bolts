; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714444 () Bool)

(assert start!714444)

(declare-fun res!2959617 () Bool)

(declare-fun e!4383910 () Bool)

(assert (=> start!714444 (=> (not res!2959617) (not e!4383910))))

(declare-datatypes ((B!3839 0))(
  ( (B!3840 (val!29451 Int)) )
))
(declare-datatypes ((List!71450 0))(
  ( (Nil!71326) (Cons!71326 (h!77774 B!3839) (t!385833 List!71450)) )
))
(declare-fun l!3673 () List!71450)

(assert (=> start!714444 (= res!2959617 (is-Nil!71326 l!3673))))

(assert (=> start!714444 e!4383910))

(declare-fun e!4383911 () Bool)

(assert (=> start!714444 e!4383911))

(declare-fun b!7321924 () Bool)

(declare-fun subseq!900 (List!71450 List!71450) Bool)

(assert (=> b!7321924 (= e!4383910 (not (subseq!900 l!3673 l!3673)))))

(declare-fun b!7321925 () Bool)

(declare-fun tp_is_empty!48153 () Bool)

(declare-fun tp!2079744 () Bool)

(assert (=> b!7321925 (= e!4383911 (and tp_is_empty!48153 tp!2079744))))

(assert (= (and start!714444 res!2959617) b!7321924))

(assert (= (and start!714444 (is-Cons!71326 l!3673)) b!7321925))

(declare-fun m!7987594 () Bool)

(assert (=> b!7321924 m!7987594))

(push 1)

(assert (not b!7321924))

(assert (not b!7321925))

(assert tp_is_empty!48153)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7321941 () Bool)

(declare-fun e!4383926 () Bool)

(declare-fun e!4383927 () Bool)

(assert (=> b!7321941 (= e!4383926 e!4383927)))

(declare-fun res!2959630 () Bool)

(assert (=> b!7321941 (=> res!2959630 e!4383927)))

(declare-fun e!4383928 () Bool)

(assert (=> b!7321941 (= res!2959630 e!4383928)))

(declare-fun res!2959629 () Bool)

(assert (=> b!7321941 (=> (not res!2959629) (not e!4383928))))

(assert (=> b!7321941 (= res!2959629 (= (h!77774 l!3673) (h!77774 l!3673)))))

(declare-fun d!2273770 () Bool)

(declare-fun res!2959632 () Bool)

(declare-fun e!4383929 () Bool)

(assert (=> d!2273770 (=> res!2959632 e!4383929)))

(assert (=> d!2273770 (= res!2959632 (is-Nil!71326 l!3673))))

(assert (=> d!2273770 (= (subseq!900 l!3673 l!3673) e!4383929)))

(declare-fun b!7321942 () Bool)

(assert (=> b!7321942 (= e!4383928 (subseq!900 (t!385833 l!3673) (t!385833 l!3673)))))

(declare-fun b!7321940 () Bool)

(assert (=> b!7321940 (= e!4383929 e!4383926)))

(declare-fun res!2959631 () Bool)

(assert (=> b!7321940 (=> (not res!2959631) (not e!4383926))))

(assert (=> b!7321940 (= res!2959631 (is-Cons!71326 l!3673))))

(declare-fun b!7321943 () Bool)

(assert (=> b!7321943 (= e!4383927 (subseq!900 l!3673 (t!385833 l!3673)))))

(assert (= (and d!2273770 (not res!2959632)) b!7321940))

(assert (= (and b!7321940 res!2959631) b!7321941))

(assert (= (and b!7321941 res!2959629) b!7321942))

(assert (= (and b!7321941 (not res!2959630)) b!7321943))

(declare-fun m!7987598 () Bool)

(assert (=> b!7321942 m!7987598))

(declare-fun m!7987600 () Bool)

(assert (=> b!7321943 m!7987600))

(assert (=> b!7321924 d!2273770))

(declare-fun b!7321948 () Bool)

(declare-fun e!4383932 () Bool)

(declare-fun tp!2079750 () Bool)

(assert (=> b!7321948 (= e!4383932 (and tp_is_empty!48153 tp!2079750))))

(assert (=> b!7321925 (= tp!2079744 e!4383932)))

(assert (= (and b!7321925 (is-Cons!71326 (t!385833 l!3673))) b!7321948))

(push 1)

(assert (not b!7321942))

(assert (not b!7321943))

(assert (not b!7321948))

(assert tp_is_empty!48153)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

