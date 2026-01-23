; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!755118 () Bool)

(assert start!755118)

(declare-fun b!8021766 () Bool)

(declare-fun e!4725503 () Bool)

(declare-fun tp_is_empty!54087 () Bool)

(declare-fun tp!2400792 () Bool)

(assert (=> b!8021766 (= e!4725503 (and tp_is_empty!54087 tp!2400792))))

(declare-fun res!3171955 () Bool)

(declare-fun e!4725504 () Bool)

(assert (=> start!755118 (=> (not res!3171955) (not e!4725504))))

(declare-datatypes ((B!4199 0))(
  ( (B!4200 (val!32489 Int)) )
))
(declare-datatypes ((List!75001 0))(
  ( (Nil!74877) (Cons!74877 (h!81325 B!4199) (t!390744 List!75001)) )
))
(declare-fun p1!179 () List!75001)

(declare-fun l!3411 () List!75001)

(declare-fun isPrefix!6808 (List!75001 List!75001) Bool)

(assert (=> start!755118 (= res!3171955 (isPrefix!6808 p1!179 l!3411))))

(assert (=> start!755118 e!4725504))

(declare-fun e!4725502 () Bool)

(assert (=> start!755118 e!4725502))

(declare-fun e!4725507 () Bool)

(assert (=> start!755118 e!4725507))

(declare-fun e!4725505 () Bool)

(assert (=> start!755118 e!4725505))

(declare-fun e!4725506 () Bool)

(assert (=> start!755118 e!4725506))

(assert (=> start!755118 e!4725503))

(declare-fun b!8021767 () Bool)

(declare-fun tp!2400794 () Bool)

(assert (=> b!8021767 (= e!4725507 (and tp_is_empty!54087 tp!2400794))))

(declare-fun b!8021768 () Bool)

(declare-fun res!3171953 () Bool)

(assert (=> b!8021768 (=> (not res!3171953) (not e!4725504))))

(declare-fun s2!455 () List!75001)

(declare-fun p2!179 () List!75001)

(declare-fun ++!18545 (List!75001 List!75001) List!75001)

(assert (=> b!8021768 (= res!3171953 (= (++!18545 p2!179 s2!455) l!3411))))

(declare-fun b!8021769 () Bool)

(declare-fun res!3171954 () Bool)

(assert (=> b!8021769 (=> (not res!3171954) (not e!4725504))))

(assert (=> b!8021769 (= res!3171954 (isPrefix!6808 p2!179 l!3411))))

(declare-fun b!8021770 () Bool)

(assert (=> b!8021770 (= e!4725504 (and (= p1!179 p2!179) (is-Cons!74877 p1!179) (= p2!179 Nil!74877)))))

(declare-fun b!8021771 () Bool)

(declare-fun tp!2400796 () Bool)

(assert (=> b!8021771 (= e!4725506 (and tp_is_empty!54087 tp!2400796))))

(declare-fun b!8021772 () Bool)

(declare-fun tp!2400793 () Bool)

(assert (=> b!8021772 (= e!4725505 (and tp_is_empty!54087 tp!2400793))))

(declare-fun b!8021773 () Bool)

(declare-fun tp!2400795 () Bool)

(assert (=> b!8021773 (= e!4725502 (and tp_is_empty!54087 tp!2400795))))

(declare-fun b!8021774 () Bool)

(declare-fun res!3171956 () Bool)

(assert (=> b!8021774 (=> (not res!3171956) (not e!4725504))))

(declare-fun s1!490 () List!75001)

(assert (=> b!8021774 (= res!3171956 (= (++!18545 p1!179 s1!490) l!3411))))

(assert (= (and start!755118 res!3171955) b!8021769))

(assert (= (and b!8021769 res!3171954) b!8021774))

(assert (= (and b!8021774 res!3171956) b!8021768))

(assert (= (and b!8021768 res!3171953) b!8021770))

(assert (= (and start!755118 (is-Cons!74877 p2!179)) b!8021773))

(assert (= (and start!755118 (is-Cons!74877 s2!455)) b!8021767))

(assert (= (and start!755118 (is-Cons!74877 l!3411)) b!8021772))

(assert (= (and start!755118 (is-Cons!74877 p1!179)) b!8021771))

(assert (= (and start!755118 (is-Cons!74877 s1!490)) b!8021766))

(declare-fun m!8384614 () Bool)

(assert (=> start!755118 m!8384614))

(declare-fun m!8384616 () Bool)

(assert (=> b!8021768 m!8384616))

(declare-fun m!8384618 () Bool)

(assert (=> b!8021769 m!8384618))

(declare-fun m!8384620 () Bool)

(assert (=> b!8021774 m!8384620))

(push 1)

(assert (not b!8021769))

(assert (not b!8021767))

(assert (not b!8021772))

(assert (not b!8021766))

(assert (not b!8021768))

(assert (not b!8021773))

(assert (not start!755118))

(assert tp_is_empty!54087)

(assert (not b!8021774))

(assert (not b!8021771))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

