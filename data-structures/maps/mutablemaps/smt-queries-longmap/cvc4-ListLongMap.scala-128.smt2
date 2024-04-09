; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2228 () Bool)

(assert start!2228)

(declare-fun b!14931 () Bool)

(assert (=> b!14931 true))

(declare-fun b!14923 () Bool)

(declare-fun e!8988 () Bool)

(declare-fun e!8987 () Bool)

(assert (=> b!14923 (= e!8988 e!8987)))

(declare-fun res!11436 () Bool)

(assert (=> b!14923 (=> res!11436 e!8987)))

(declare-datatypes ((B!570 0))(
  ( (B!571 (val!383 Int)) )
))
(declare-datatypes ((tuple2!548 0))(
  ( (tuple2!549 (_1!274 (_ BitVec 64)) (_2!274 B!570)) )
))
(declare-datatypes ((List!433 0))(
  ( (Nil!430) (Cons!429 (h!995 tuple2!548) (t!2835 List!433)) )
))
(declare-fun lt!3636 () List!433)

(declare-fun isStrictlySorted!124 (List!433) Bool)

(assert (=> b!14923 (= res!11436 (not (isStrictlySorted!124 lt!3636)))))

(declare-fun err!35 () List!433)

(assert (=> b!14923 (= lt!3636 err!35)))

(assert (=> b!14923 true))

(declare-fun e!8989 () Bool)

(assert (=> b!14923 e!8989))

(declare-fun b!14924 () Bool)

(declare-fun e!8984 () Bool)

(declare-fun l!522 () List!433)

(declare-fun head!799 (List!433) tuple2!548)

(assert (=> b!14924 (= e!8984 (bvslt (_1!274 (head!799 lt!3636)) (_1!274 (head!799 l!522))))))

(declare-fun res!11433 () Bool)

(assert (=> start!2228 (=> (not res!11433) (not e!8988))))

(assert (=> start!2228 (= res!11433 (isStrictlySorted!124 l!522))))

(assert (=> start!2228 e!8988))

(declare-fun e!8986 () Bool)

(assert (=> start!2228 e!8986))

(declare-fun tp_is_empty!749 () Bool)

(assert (=> start!2228 tp_is_empty!749))

(declare-fun b!14925 () Bool)

(declare-fun tp!2404 () Bool)

(assert (=> b!14925 (= e!8989 (and tp_is_empty!749 tp!2404))))

(declare-fun b!14926 () Bool)

(declare-fun e!8985 () Bool)

(assert (=> b!14926 (= e!8987 e!8985)))

(declare-fun c!1409 () Bool)

(declare-fun isEmpty!110 (List!433) Bool)

(assert (=> b!14926 (= c!1409 (isEmpty!110 l!522))))

(declare-fun bm!455 () Bool)

(declare-fun call!458 () Bool)

(assert (=> bm!455 (= call!458 (isEmpty!110 lt!3636))))

(declare-fun b!14927 () Bool)

(declare-fun tp!2405 () Bool)

(assert (=> b!14927 (= e!8986 (and tp_is_empty!749 tp!2405))))

(declare-fun b!14928 () Bool)

(declare-fun res!11435 () Bool)

(assert (=> b!14928 (=> (not res!11435) (not e!8988))))

(declare-fun value!159 () B!570)

(assert (=> b!14928 (= res!11435 (and (or (not (is-Cons!429 l!522)) (not (= (_2!274 (h!995 l!522)) value!159))) (or (not (is-Cons!429 l!522)) (= (_2!274 (h!995 l!522)) value!159)) (not (is-Nil!430 l!522))))))

(declare-fun b!14929 () Bool)

(assert (=> b!14929 (= e!8985 (not call!458))))

(declare-fun b!14930 () Bool)

(assert (=> b!14930 (= e!8985 e!8984)))

(declare-fun res!11437 () Bool)

(assert (=> b!14930 (= res!11437 (not call!458))))

(assert (=> b!14930 (=> (not res!11437) (not e!8984))))

(declare-fun res!11434 () Bool)

(assert (=> b!14931 (=> res!11434 e!8987)))

(declare-fun lambda!191 () Int)

(declare-fun forall!103 (List!433 Int) Bool)

(assert (=> b!14931 (= res!11434 (not (forall!103 lt!3636 lambda!191)))))

(assert (= (and start!2228 res!11433) b!14928))

(assert (= (and b!14928 res!11435) b!14923))

(assert (= (and b!14923 (is-Cons!429 err!35)) b!14925))

(assert (= (and b!14923 (not res!11436)) b!14931))

(assert (= (and b!14931 (not res!11434)) b!14926))

(assert (= (and b!14926 c!1409) b!14929))

(assert (= (and b!14926 (not c!1409)) b!14930))

(assert (= (and b!14930 res!11437) b!14924))

(assert (= (or b!14929 b!14930) bm!455))

(assert (= (and start!2228 (is-Cons!429 l!522)) b!14927))

(declare-fun m!9923 () Bool)

(assert (=> b!14924 m!9923))

(declare-fun m!9925 () Bool)

(assert (=> b!14924 m!9925))

(declare-fun m!9927 () Bool)

(assert (=> bm!455 m!9927))

(declare-fun m!9929 () Bool)

(assert (=> b!14923 m!9929))

(declare-fun m!9931 () Bool)

(assert (=> b!14926 m!9931))

(declare-fun m!9933 () Bool)

(assert (=> b!14931 m!9933))

(declare-fun m!9935 () Bool)

(assert (=> start!2228 m!9935))

(push 1)

(assert (not b!14923))

(assert (not b!14924))

(assert (not bm!455))

(assert (not b!14925))

(assert (not b!14926))

(assert tp_is_empty!749)

(assert (not b!14927))

(assert (not b!14931))

(assert (not start!2228))

(check-sat)

(pop 1)

