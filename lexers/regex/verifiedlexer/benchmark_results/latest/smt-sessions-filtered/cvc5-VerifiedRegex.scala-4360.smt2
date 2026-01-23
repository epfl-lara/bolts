; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!231860 () Bool)

(assert start!231860)

(declare-fun b!2362137 () Bool)

(declare-fun e!1508653 () Bool)

(assert (=> b!2362137 (= e!1508653 (not true))))

(declare-datatypes ((C!13982 0))(
  ( (C!13983 (val!8233 Int)) )
))
(declare-datatypes ((Regex!6912 0))(
  ( (ElementMatch!6912 (c!375434 C!13982)) (Concat!11548 (regOne!14336 Regex!6912) (regTwo!14336 Regex!6912)) (EmptyExpr!6912) (Star!6912 (reg!7241 Regex!6912)) (EmptyLang!6912) (Union!6912 (regOne!14337 Regex!6912) (regTwo!14337 Regex!6912)) )
))
(declare-fun r!13927 () Regex!6912)

(declare-datatypes ((List!28062 0))(
  ( (Nil!27964) (Cons!27964 (h!33365 C!13982) (t!208039 List!28062)) )
))
(declare-fun s!9460 () List!28062)

(declare-fun matchR!3029 (Regex!6912 List!28062) Bool)

(declare-fun matchRSpec!761 (Regex!6912 List!28062) Bool)

(assert (=> b!2362137 (= (matchR!3029 r!13927 s!9460) (matchRSpec!761 r!13927 s!9460))))

(declare-datatypes ((Unit!40859 0))(
  ( (Unit!40860) )
))
(declare-fun lt!864671 () Unit!40859)

(declare-fun mainMatchTheorem!761 (Regex!6912 List!28062) Unit!40859)

(assert (=> b!2362137 (= lt!864671 (mainMatchTheorem!761 r!13927 s!9460))))

(declare-fun b!2362138 () Bool)

(declare-fun res!1002495 () Bool)

(assert (=> b!2362138 (=> (not res!1002495) (not e!1508653))))

(declare-datatypes ((List!28063 0))(
  ( (Nil!27965) (Cons!27965 (h!33366 Regex!6912) (t!208040 List!28063)) )
))
(declare-fun l!9164 () List!28063)

(declare-fun generalisedConcat!13 (List!28063) Regex!6912)

(assert (=> b!2362138 (= res!1002495 (= r!13927 (generalisedConcat!13 l!9164)))))

(declare-fun b!2362139 () Bool)

(declare-fun e!1508652 () Bool)

(declare-fun tp!755426 () Bool)

(assert (=> b!2362139 (= e!1508652 tp!755426)))

(declare-fun b!2362140 () Bool)

(declare-fun tp_is_empty!11237 () Bool)

(assert (=> b!2362140 (= e!1508652 tp_is_empty!11237)))

(declare-fun b!2362141 () Bool)

(declare-fun e!1508654 () Bool)

(declare-fun tp!755431 () Bool)

(assert (=> b!2362141 (= e!1508654 (and tp_is_empty!11237 tp!755431))))

(declare-fun res!1002496 () Bool)

(assert (=> start!231860 (=> (not res!1002496) (not e!1508653))))

(declare-fun lambda!86894 () Int)

(declare-fun forall!5546 (List!28063 Int) Bool)

(assert (=> start!231860 (= res!1002496 (forall!5546 l!9164 lambda!86894))))

(assert (=> start!231860 e!1508653))

(declare-fun e!1508651 () Bool)

(assert (=> start!231860 e!1508651))

(assert (=> start!231860 e!1508652))

(assert (=> start!231860 e!1508654))

(declare-fun b!2362142 () Bool)

(declare-fun tp!755427 () Bool)

(declare-fun tp!755430 () Bool)

(assert (=> b!2362142 (= e!1508652 (and tp!755427 tp!755430))))

(declare-fun b!2362143 () Bool)

(declare-fun tp!755428 () Bool)

(declare-fun tp!755432 () Bool)

(assert (=> b!2362143 (= e!1508652 (and tp!755428 tp!755432))))

(declare-fun b!2362144 () Bool)

(declare-fun tp!755433 () Bool)

(declare-fun tp!755429 () Bool)

(assert (=> b!2362144 (= e!1508651 (and tp!755433 tp!755429))))

(assert (= (and start!231860 res!1002496) b!2362138))

(assert (= (and b!2362138 res!1002495) b!2362137))

(assert (= (and start!231860 (is-Cons!27965 l!9164)) b!2362144))

(assert (= (and start!231860 (is-ElementMatch!6912 r!13927)) b!2362140))

(assert (= (and start!231860 (is-Concat!11548 r!13927)) b!2362142))

(assert (= (and start!231860 (is-Star!6912 r!13927)) b!2362139))

(assert (= (and start!231860 (is-Union!6912 r!13927)) b!2362143))

(assert (= (and start!231860 (is-Cons!27964 s!9460)) b!2362141))

(declare-fun m!2774255 () Bool)

(assert (=> b!2362137 m!2774255))

(declare-fun m!2774257 () Bool)

(assert (=> b!2362137 m!2774257))

(declare-fun m!2774259 () Bool)

(assert (=> b!2362137 m!2774259))

(declare-fun m!2774261 () Bool)

(assert (=> b!2362138 m!2774261))

(declare-fun m!2774263 () Bool)

(assert (=> start!231860 m!2774263))

(push 1)

(assert tp_is_empty!11237)

(assert (not b!2362144))

(assert (not b!2362142))

(assert (not b!2362143))

(assert (not b!2362139))

(assert (not b!2362137))

(assert (not b!2362141))

(assert (not start!231860))

(assert (not b!2362138))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

