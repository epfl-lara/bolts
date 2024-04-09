; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87356 () Bool)

(assert start!87356)

(declare-fun b!1012047 () Bool)

(assert (=> b!1012047 true))

(assert (=> b!1012047 true))

(declare-fun b!1012043 () Bool)

(declare-fun e!569360 () Bool)

(declare-fun tp_is_empty!23393 () Bool)

(declare-fun tp!70254 () Bool)

(assert (=> b!1012043 (= e!569360 (and tp_is_empty!23393 tp!70254))))

(declare-fun b!1012044 () Bool)

(declare-fun e!569358 () Bool)

(declare-fun e!569359 () Bool)

(assert (=> b!1012044 (= e!569358 e!569359)))

(declare-fun res!679939 () Bool)

(assert (=> b!1012044 (=> (not res!679939) (not e!569359))))

(declare-datatypes ((List!21458 0))(
  ( (Nil!21455) (Cons!21454 (h!22652 (_ BitVec 64)) (t!30467 List!21458)) )
))
(declare-fun lt!447279 () List!21458)

(declare-fun isEmpty!786 (List!21458) Bool)

(assert (=> b!1012044 (= res!679939 (not (isEmpty!786 lt!447279)))))

(declare-datatypes ((B!1326 0))(
  ( (B!1327 (val!11747 Int)) )
))
(declare-datatypes ((tuple2!15130 0))(
  ( (tuple2!15131 (_1!7575 (_ BitVec 64)) (_2!7575 B!1326)) )
))
(declare-datatypes ((List!21459 0))(
  ( (Nil!21456) (Cons!21455 (h!22653 tuple2!15130) (t!30468 List!21459)) )
))
(declare-fun l!412 () List!21459)

(declare-fun value!115 () B!1326)

(declare-fun getKeysOf!12 (List!21459 B!1326) List!21458)

(assert (=> b!1012044 (= lt!447279 (getKeysOf!12 (t!30468 l!412) value!115))))

(declare-fun b!1012045 () Bool)

(declare-fun res!679940 () Bool)

(assert (=> b!1012045 (=> (not res!679940) (not e!569358))))

(assert (=> b!1012045 (= res!679940 (and (is-Cons!21455 l!412) (= (_2!7575 (h!22653 l!412)) value!115)))))

(declare-fun b!1012046 () Bool)

(declare-fun res!679945 () Bool)

(assert (=> b!1012046 (=> (not res!679945) (not e!569359))))

(declare-fun head!922 (List!21459) tuple2!15130)

(assert (=> b!1012046 (= res!679945 (bvslt (_1!7575 (h!22653 l!412)) (_1!7575 (head!922 (t!30468 l!412)))))))

(declare-fun res!679944 () Bool)

(assert (=> b!1012047 (=> (not res!679944) (not e!569359))))

(declare-fun lambda!284 () Int)

(declare-fun forall!208 (List!21458 Int) Bool)

(assert (=> b!1012047 (= res!679944 (forall!208 lt!447279 lambda!284))))

(declare-fun b!1012048 () Bool)

(declare-fun res!679942 () Bool)

(assert (=> b!1012048 (=> (not res!679942) (not e!569359))))

(declare-fun isEmpty!787 (List!21459) Bool)

(assert (=> b!1012048 (= res!679942 (not (isEmpty!787 (t!30468 l!412))))))

(declare-fun b!1012049 () Bool)

(declare-fun res!679943 () Bool)

(assert (=> b!1012049 (=> (not res!679943) (not e!569359))))

(declare-fun isStrictlySorted!523 (List!21459) Bool)

(assert (=> b!1012049 (= res!679943 (isStrictlySorted!523 (t!30468 l!412)))))

(declare-fun res!679941 () Bool)

(assert (=> start!87356 (=> (not res!679941) (not e!569358))))

(assert (=> start!87356 (= res!679941 (isStrictlySorted!523 l!412))))

(assert (=> start!87356 e!569358))

(assert (=> start!87356 e!569360))

(assert (=> start!87356 tp_is_empty!23393))

(declare-fun b!1012050 () Bool)

(assert (=> b!1012050 (= e!569359 (not (forall!208 lt!447279 lambda!284)))))

(assert (= (and start!87356 res!679941) b!1012045))

(assert (= (and b!1012045 res!679940) b!1012044))

(assert (= (and b!1012044 res!679939) b!1012049))

(assert (= (and b!1012049 res!679943) b!1012048))

(assert (= (and b!1012048 res!679942) b!1012047))

(assert (= (and b!1012047 res!679944) b!1012046))

(assert (= (and b!1012046 res!679945) b!1012050))

(assert (= (and start!87356 (is-Cons!21455 l!412)) b!1012043))

(declare-fun m!935929 () Bool)

(assert (=> b!1012049 m!935929))

(declare-fun m!935931 () Bool)

(assert (=> b!1012046 m!935931))

(declare-fun m!935933 () Bool)

(assert (=> start!87356 m!935933))

(declare-fun m!935935 () Bool)

(assert (=> b!1012048 m!935935))

(declare-fun m!935937 () Bool)

(assert (=> b!1012047 m!935937))

(assert (=> b!1012050 m!935937))

(declare-fun m!935939 () Bool)

(assert (=> b!1012044 m!935939))

(declare-fun m!935941 () Bool)

(assert (=> b!1012044 m!935941))

(push 1)

(assert (not b!1012044))

