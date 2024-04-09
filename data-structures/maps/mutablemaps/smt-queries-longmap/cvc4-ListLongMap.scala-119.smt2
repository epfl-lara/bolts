; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2042 () Bool)

(assert start!2042)

(declare-fun b!13829 () Bool)

(assert (=> b!13829 true))

(declare-fun b!13823 () Bool)

(declare-fun res!10838 () Bool)

(declare-fun e!8244 () Bool)

(assert (=> b!13823 (=> (not res!10838) (not e!8244))))

(declare-datatypes ((B!516 0))(
  ( (B!517 (val!356 Int)) )
))
(declare-datatypes ((tuple2!494 0))(
  ( (tuple2!495 (_1!247 (_ BitVec 64)) (_2!247 B!516)) )
))
(declare-datatypes ((List!406 0))(
  ( (Nil!403) (Cons!402 (h!968 tuple2!494) (t!2802 List!406)) )
))
(declare-fun lt!3543 () List!406)

(declare-fun isEmpty!95 (List!406) Bool)

(assert (=> b!13823 (= res!10838 (not (isEmpty!95 lt!3543)))))

(declare-fun b!13824 () Bool)

(declare-fun res!10839 () Bool)

(declare-fun e!8242 () Bool)

(assert (=> b!13824 (=> (not res!10839) (not e!8242))))

(declare-fun l!522 () List!406)

(declare-fun value!159 () B!516)

(assert (=> b!13824 (= res!10839 (and (or (not (is-Cons!402 l!522)) (not (= (_2!247 (h!968 l!522)) value!159))) (or (not (is-Cons!402 l!522)) (= (_2!247 (h!968 l!522)) value!159)) (not (is-Nil!403 l!522))))))

(declare-fun b!13825 () Bool)

(declare-fun e!8243 () Bool)

(declare-fun tp_is_empty!695 () Bool)

(declare-fun tp!2245 () Bool)

(assert (=> b!13825 (= e!8243 (and tp_is_empty!695 tp!2245))))

(declare-fun b!13826 () Bool)

(declare-fun e!8245 () Bool)

(declare-fun tp!2246 () Bool)

(assert (=> b!13826 (= e!8245 (and tp_is_empty!695 tp!2246))))

(declare-fun b!13827 () Bool)

(assert (=> b!13827 (= e!8244 (= lt!3543 Nil!403))))

(declare-fun res!10840 () Bool)

(assert (=> start!2042 (=> (not res!10840) (not e!8242))))

(declare-fun isStrictlySorted!97 (List!406) Bool)

(assert (=> start!2042 (= res!10840 (isStrictlySorted!97 l!522))))

(assert (=> start!2042 e!8242))

(assert (=> start!2042 e!8243))

(assert (=> start!2042 tp_is_empty!695))

(declare-fun b!13828 () Bool)

(assert (=> b!13828 (= e!8242 e!8244)))

(declare-fun res!10843 () Bool)

(assert (=> b!13828 (=> (not res!10843) (not e!8244))))

(assert (=> b!13828 (= res!10843 (isStrictlySorted!97 lt!3543))))

(declare-fun err!11 () List!406)

(assert (=> b!13828 (= lt!3543 err!11)))

(assert (=> b!13828 true))

(assert (=> b!13828 e!8245))

(declare-fun res!10841 () Bool)

(assert (=> b!13829 (=> (not res!10841) (not e!8244))))

(declare-fun lambda!122 () Int)

(declare-fun forall!88 (List!406 Int) Bool)

(assert (=> b!13829 (= res!10841 (forall!88 lt!3543 lambda!122))))

(declare-fun b!13830 () Bool)

(declare-fun res!10842 () Bool)

(assert (=> b!13830 (=> (not res!10842) (not e!8244))))

(assert (=> b!13830 (= res!10842 (not (isEmpty!95 l!522)))))

(assert (= (and start!2042 res!10840) b!13824))

(assert (= (and b!13824 res!10839) b!13828))

(assert (= (and b!13828 (is-Cons!402 err!11)) b!13826))

(assert (= (and b!13828 res!10843) b!13829))

(assert (= (and b!13829 res!10841) b!13830))

(assert (= (and b!13830 res!10842) b!13823))

(assert (= (and b!13823 res!10838) b!13827))

(assert (= (and start!2042 (is-Cons!402 l!522)) b!13825))

(declare-fun m!9291 () Bool)

(assert (=> b!13830 m!9291))

(declare-fun m!9293 () Bool)

(assert (=> b!13823 m!9293))

(declare-fun m!9295 () Bool)

(assert (=> start!2042 m!9295))

(declare-fun m!9297 () Bool)

(assert (=> b!13829 m!9297))

(declare-fun m!9299 () Bool)

(assert (=> b!13828 m!9299))

(push 1)

