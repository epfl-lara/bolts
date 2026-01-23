; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!236522 () Bool)

(assert start!236522)

(declare-fun b!2413847 () Bool)

(declare-fun e!1536402 () Bool)

(declare-fun e!1536401 () Bool)

(assert (=> b!2413847 (= e!1536402 e!1536401)))

(declare-fun res!1025147 () Bool)

(assert (=> b!2413847 (=> res!1025147 e!1536401)))

(declare-datatypes ((C!14334 0))(
  ( (C!14335 (val!8409 Int)) )
))
(declare-datatypes ((Regex!7088 0))(
  ( (ElementMatch!7088 (c!384620 C!14334)) (Concat!11724 (regOne!14688 Regex!7088) (regTwo!14688 Regex!7088)) (EmptyExpr!7088) (Star!7088 (reg!7417 Regex!7088)) (EmptyLang!7088) (Union!7088 (regOne!14689 Regex!7088) (regTwo!14689 Regex!7088)) )
))
(declare-fun lt!873937 () Regex!7088)

(declare-datatypes ((List!28414 0))(
  ( (Nil!28316) (Cons!28316 (h!33717 C!14334) (t!208391 List!28414)) )
))
(declare-fun s!9460 () List!28414)

(declare-fun matchR!3205 (Regex!7088 List!28414) Bool)

(assert (=> b!2413847 (= res!1025147 (matchR!3205 lt!873937 s!9460))))

(declare-datatypes ((List!28415 0))(
  ( (Nil!28317) (Cons!28317 (h!33718 Regex!7088) (t!208392 List!28415)) )
))
(declare-fun l!9164 () List!28415)

(declare-fun head!5395 (List!28415) Regex!7088)

(assert (=> b!2413847 (= lt!873937 (head!5395 l!9164))))

(declare-fun b!2413848 () Bool)

(declare-fun e!1536405 () Bool)

(declare-fun e!1536399 () Bool)

(assert (=> b!2413848 (= e!1536405 (not e!1536399))))

(declare-fun res!1025148 () Bool)

(assert (=> b!2413848 (=> res!1025148 e!1536399)))

(declare-fun r!13927 () Regex!7088)

(assert (=> b!2413848 (= res!1025148 (or (is-Concat!11724 r!13927) (is-EmptyExpr!7088 r!13927)))))

(declare-fun matchRSpec!937 (Regex!7088 List!28414) Bool)

(assert (=> b!2413848 (= (matchR!3205 r!13927 s!9460) (matchRSpec!937 r!13927 s!9460))))

(declare-datatypes ((Unit!41447 0))(
  ( (Unit!41448) )
))
(declare-fun lt!873935 () Unit!41447)

(declare-fun mainMatchTheorem!937 (Regex!7088 List!28414) Unit!41447)

(assert (=> b!2413848 (= lt!873935 (mainMatchTheorem!937 r!13927 s!9460))))

(declare-fun b!2413849 () Bool)

(declare-fun res!1025145 () Bool)

(assert (=> b!2413849 (=> res!1025145 e!1536401)))

(declare-fun validRegex!2810 (Regex!7088) Bool)

(assert (=> b!2413849 (= res!1025145 (not (validRegex!2810 lt!873937)))))

(declare-fun b!2413850 () Bool)

(declare-fun e!1536400 () Bool)

(declare-fun tp_is_empty!11589 () Bool)

(declare-fun tp!767710 () Bool)

(assert (=> b!2413850 (= e!1536400 (and tp_is_empty!11589 tp!767710))))

(declare-fun b!2413851 () Bool)

(declare-fun e!1536404 () Bool)

(declare-fun tp!767714 () Bool)

(declare-fun tp!767713 () Bool)

(assert (=> b!2413851 (= e!1536404 (and tp!767714 tp!767713))))

(declare-fun b!2413852 () Bool)

(declare-fun res!1025144 () Bool)

(assert (=> b!2413852 (=> (not res!1025144) (not e!1536405))))

(declare-fun generalisedConcat!189 (List!28415) Regex!7088)

(assert (=> b!2413852 (= res!1025144 (= r!13927 (generalisedConcat!189 l!9164)))))

(declare-fun b!2413854 () Bool)

(assert (=> b!2413854 (= e!1536404 tp_is_empty!11589)))

(declare-fun b!2413855 () Bool)

(assert (=> b!2413855 (= e!1536401 true)))

(declare-fun b!2413856 () Bool)

(declare-fun tp!767712 () Bool)

(declare-fun tp!767711 () Bool)

(assert (=> b!2413856 (= e!1536404 (and tp!767712 tp!767711))))

(declare-fun b!2413857 () Bool)

(assert (=> b!2413857 (= e!1536399 e!1536402)))

(declare-fun res!1025142 () Bool)

(assert (=> b!2413857 (=> res!1025142 e!1536402)))

(declare-fun lt!873936 () List!28415)

(declare-fun isEmpty!16326 (List!28415) Bool)

(assert (=> b!2413857 (= res!1025142 (not (isEmpty!16326 lt!873936)))))

(declare-fun tail!3667 (List!28415) List!28415)

(assert (=> b!2413857 (= lt!873936 (tail!3667 l!9164))))

(declare-fun b!2413858 () Bool)

(declare-fun tp!767709 () Bool)

(assert (=> b!2413858 (= e!1536404 tp!767709)))

(declare-fun res!1025141 () Bool)

(assert (=> start!236522 (=> (not res!1025141) (not e!1536405))))

(declare-fun lambda!90880 () Int)

(declare-fun forall!5722 (List!28415 Int) Bool)

(assert (=> start!236522 (= res!1025141 (forall!5722 l!9164 lambda!90880))))

(assert (=> start!236522 e!1536405))

(declare-fun e!1536403 () Bool)

(assert (=> start!236522 e!1536403))

(assert (=> start!236522 e!1536404))

(assert (=> start!236522 e!1536400))

(declare-fun b!2413853 () Bool)

(declare-fun res!1025143 () Bool)

(assert (=> b!2413853 (=> res!1025143 e!1536399)))

(assert (=> b!2413853 (= res!1025143 (isEmpty!16326 l!9164))))

(declare-fun b!2413859 () Bool)

(declare-fun tp!767708 () Bool)

(declare-fun tp!767715 () Bool)

(assert (=> b!2413859 (= e!1536403 (and tp!767708 tp!767715))))

(declare-fun b!2413860 () Bool)

(declare-fun res!1025146 () Bool)

(assert (=> b!2413860 (=> res!1025146 e!1536402)))

(assert (=> b!2413860 (= res!1025146 (not (= (generalisedConcat!189 lt!873936) EmptyExpr!7088)))))

(assert (= (and start!236522 res!1025141) b!2413852))

(assert (= (and b!2413852 res!1025144) b!2413848))

(assert (= (and b!2413848 (not res!1025148)) b!2413853))

(assert (= (and b!2413853 (not res!1025143)) b!2413857))

(assert (= (and b!2413857 (not res!1025142)) b!2413860))

(assert (= (and b!2413860 (not res!1025146)) b!2413847))

(assert (= (and b!2413847 (not res!1025147)) b!2413849))

(assert (= (and b!2413849 (not res!1025145)) b!2413855))

(assert (= (and start!236522 (is-Cons!28317 l!9164)) b!2413859))

(assert (= (and start!236522 (is-ElementMatch!7088 r!13927)) b!2413854))

(assert (= (and start!236522 (is-Concat!11724 r!13927)) b!2413856))

(assert (= (and start!236522 (is-Star!7088 r!13927)) b!2413858))

(assert (= (and start!236522 (is-Union!7088 r!13927)) b!2413851))

(assert (= (and start!236522 (is-Cons!28316 s!9460)) b!2413850))

(declare-fun m!2803687 () Bool)

(assert (=> b!2413860 m!2803687))

(declare-fun m!2803689 () Bool)

(assert (=> b!2413853 m!2803689))

(declare-fun m!2803691 () Bool)

(assert (=> b!2413852 m!2803691))

(declare-fun m!2803693 () Bool)

(assert (=> start!236522 m!2803693))

(declare-fun m!2803695 () Bool)

(assert (=> b!2413849 m!2803695))

(declare-fun m!2803697 () Bool)

(assert (=> b!2413847 m!2803697))

(declare-fun m!2803699 () Bool)

(assert (=> b!2413847 m!2803699))

(declare-fun m!2803701 () Bool)

(assert (=> b!2413857 m!2803701))

(declare-fun m!2803703 () Bool)

(assert (=> b!2413857 m!2803703))

(declare-fun m!2803705 () Bool)

(assert (=> b!2413848 m!2803705))

(declare-fun m!2803707 () Bool)

(assert (=> b!2413848 m!2803707))

(declare-fun m!2803709 () Bool)

(assert (=> b!2413848 m!2803709))

(push 1)

(assert (not b!2413848))

(assert (not b!2413857))

(assert (not b!2413860))

(assert (not b!2413859))

(assert (not b!2413856))

(assert (not b!2413849))

(assert (not b!2413858))

(assert (not b!2413852))

(assert (not b!2413853))

(assert (not start!236522))

(assert (not b!2413850))

(assert tp_is_empty!11589)

(assert (not b!2413851))

(assert (not b!2413847))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

