; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252706 () Bool)

(assert start!252706)

(declare-fun b!2600415 () Bool)

(assert (=> b!2600415 true))

(declare-fun b!2600414 () Bool)

(declare-fun res!1095343 () Bool)

(declare-fun e!1641456 () Bool)

(assert (=> b!2600414 (=> (not res!1095343) (not e!1641456))))

(declare-datatypes ((B!2391 0))(
  ( (B!2392 (val!9663 Int)) )
))
(declare-fun refHd!9 () B!2391)

(declare-datatypes ((List!30096 0))(
  ( (Nil!29996) (Cons!29996 (h!35416 B!2391) (t!213145 List!30096)) )
))
(declare-fun refL!9 () List!30096)

(declare-fun head!5917 (List!30096) B!2391)

(assert (=> b!2600414 (= res!1095343 (= refHd!9 (head!5917 refL!9)))))

(declare-fun res!1095342 () Bool)

(assert (=> b!2600415 (=> (not res!1095342) (not e!1641456))))

(declare-fun l!3766 () List!30096)

(declare-fun lambda!97253 () Int)

(declare-fun forall!6175 (List!30096 Int) Bool)

(assert (=> b!2600415 (= res!1095342 (forall!6175 l!3766 lambda!97253))))

(declare-fun b!2600416 () Bool)

(declare-fun e!1641455 () Bool)

(declare-fun tp_is_empty!13671 () Bool)

(declare-fun tp!823873 () Bool)

(assert (=> b!2600416 (= e!1641455 (and tp_is_empty!13671 tp!823873))))

(declare-fun b!2600417 () Bool)

(assert (=> b!2600417 (= e!1641456 false)))

(declare-fun lt!915278 () Bool)

(declare-fun contains!5540 (List!30096 B!2391) Bool)

(assert (=> b!2600417 (= lt!915278 (contains!5540 l!3766 refHd!9))))

(declare-fun b!2600418 () Bool)

(declare-fun e!1641454 () Bool)

(declare-fun tp!823874 () Bool)

(assert (=> b!2600418 (= e!1641454 (and tp_is_empty!13671 tp!823874))))

(declare-fun res!1095344 () Bool)

(assert (=> start!252706 (=> (not res!1095344) (not e!1641456))))

(declare-fun isEmpty!17149 (List!30096) Bool)

(assert (=> start!252706 (= res!1095344 (not (isEmpty!17149 refL!9)))))

(assert (=> start!252706 e!1641456))

(assert (=> start!252706 e!1641455))

(assert (=> start!252706 e!1641454))

(assert (=> start!252706 tp_is_empty!13671))

(assert (= (and start!252706 res!1095344) b!2600415))

(assert (= (and b!2600415 res!1095342) b!2600414))

(assert (= (and b!2600414 res!1095343) b!2600417))

(assert (= (and start!252706 (is-Cons!29996 refL!9)) b!2600416))

(assert (= (and start!252706 (is-Cons!29996 l!3766)) b!2600418))

(declare-fun m!2935789 () Bool)

(assert (=> b!2600414 m!2935789))

(declare-fun m!2935791 () Bool)

(assert (=> b!2600415 m!2935791))

(declare-fun m!2935793 () Bool)

(assert (=> b!2600417 m!2935793))

(declare-fun m!2935795 () Bool)

(assert (=> start!252706 m!2935795))

(push 1)

(assert (not b!2600417))

(assert (not b!2600414))

(assert (not b!2600418))

(assert tp_is_empty!13671)

(assert (not b!2600415))

(assert (not b!2600416))

(assert (not start!252706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

