; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546240 () Bool)

(assert start!546240)

(declare-datatypes ((C!29354 0))(
  ( (C!29355 (val!24379 Int)) )
))
(declare-datatypes ((List!60041 0))(
  ( (Nil!59917) (Cons!59917 (h!66365 C!29354) (t!373194 List!60041)) )
))
(declare-fun input!5707 () List!60041)

(declare-fun isPrefix!5675 (List!60041 List!60041) Bool)

(assert (=> start!546240 (not (isPrefix!5675 Nil!59917 input!5707))))

(declare-fun e!3217359 () Bool)

(assert (=> start!546240 e!3217359))

(declare-fun b!5163672 () Bool)

(declare-fun tp_is_empty!38337 () Bool)

(declare-fun tp!1448258 () Bool)

(assert (=> b!5163672 (= e!3217359 (and tp_is_empty!38337 tp!1448258))))

(assert (= (and start!546240 (is-Cons!59917 input!5707)) b!5163672))

(declare-fun m!6214364 () Bool)

(assert (=> start!546240 m!6214364))

(push 1)

(assert (not start!546240))

(assert (not b!5163672))

(assert tp_is_empty!38337)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5163687 () Bool)

(declare-fun e!3217370 () Bool)

(declare-fun size!39580 (List!60041) Int)

(assert (=> b!5163687 (= e!3217370 (>= (size!39580 input!5707) (size!39580 Nil!59917)))))

(declare-fun d!1666217 () Bool)

(assert (=> d!1666217 e!3217370))

(declare-fun res!2195315 () Bool)

(assert (=> d!1666217 (=> res!2195315 e!3217370)))

(declare-fun lt!2123320 () Bool)

(assert (=> d!1666217 (= res!2195315 (not lt!2123320))))

(declare-fun e!3217369 () Bool)

(assert (=> d!1666217 (= lt!2123320 e!3217369)))

(declare-fun res!2195314 () Bool)

(assert (=> d!1666217 (=> res!2195314 e!3217369)))

(assert (=> d!1666217 (= res!2195314 (is-Nil!59917 Nil!59917))))

(assert (=> d!1666217 (= (isPrefix!5675 Nil!59917 input!5707) lt!2123320)))

(declare-fun b!5163684 () Bool)

(declare-fun e!3217371 () Bool)

(assert (=> b!5163684 (= e!3217369 e!3217371)))

(declare-fun res!2195316 () Bool)

(assert (=> b!5163684 (=> (not res!2195316) (not e!3217371))))

(assert (=> b!5163684 (= res!2195316 (not (is-Nil!59917 input!5707)))))

(declare-fun b!5163685 () Bool)

(declare-fun res!2195313 () Bool)

(assert (=> b!5163685 (=> (not res!2195313) (not e!3217371))))

(declare-fun head!10998 (List!60041) C!29354)

(assert (=> b!5163685 (= res!2195313 (= (head!10998 Nil!59917) (head!10998 input!5707)))))

(declare-fun b!5163686 () Bool)

(declare-fun tail!10109 (List!60041) List!60041)

(assert (=> b!5163686 (= e!3217371 (isPrefix!5675 (tail!10109 Nil!59917) (tail!10109 input!5707)))))

(assert (= (and d!1666217 (not res!2195314)) b!5163684))

(assert (= (and b!5163684 res!2195316) b!5163685))

(assert (= (and b!5163685 res!2195313) b!5163686))

(assert (= (and d!1666217 (not res!2195315)) b!5163687))

(declare-fun m!6214368 () Bool)

(assert (=> b!5163687 m!6214368))

(declare-fun m!6214370 () Bool)

(assert (=> b!5163687 m!6214370))

(declare-fun m!6214372 () Bool)

(assert (=> b!5163685 m!6214372))

(declare-fun m!6214374 () Bool)

(assert (=> b!5163685 m!6214374))

(declare-fun m!6214376 () Bool)

(assert (=> b!5163686 m!6214376))

(declare-fun m!6214378 () Bool)

(assert (=> b!5163686 m!6214378))

(assert (=> b!5163686 m!6214376))

(assert (=> b!5163686 m!6214378))

(declare-fun m!6214380 () Bool)

(assert (=> b!5163686 m!6214380))

(assert (=> start!546240 d!1666217))

(declare-fun b!5163692 () Bool)

(declare-fun e!3217374 () Bool)

(declare-fun tp!1448264 () Bool)

(assert (=> b!5163692 (= e!3217374 (and tp_is_empty!38337 tp!1448264))))

(assert (=> b!5163672 (= tp!1448258 e!3217374)))

(assert (= (and b!5163672 (is-Cons!59917 (t!373194 input!5707))) b!5163692))

(push 1)

(assert tp_is_empty!38337)

(assert (not b!5163686))

(assert (not b!5163692))

(assert (not b!5163685))

(assert (not b!5163687))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

