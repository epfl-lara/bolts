; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13410 () Bool)

(assert start!13410)

(declare-fun b!129458 () Bool)

(declare-fun e!74554 () Bool)

(declare-fun e!74553 () Bool)

(assert (=> b!129458 (= e!74554 e!74553)))

(declare-fun res!59545 () Bool)

(assert (=> b!129458 (=> res!59545 e!74553)))

(declare-datatypes ((B!685 0))(
  ( (B!686 (val!828 Int)) )
))
(declare-datatypes ((List!2146 0))(
  ( (Nil!2140) (Cons!2140 (h!7537 B!685) (t!22732 List!2146)) )
))
(declare-fun lt!38767 () List!2146)

(declare-fun lt!38765 () List!2146)

(assert (=> b!129458 (= res!59545 (not (= lt!38767 lt!38765)))))

(assert (=> b!129458 (= lt!38765 lt!38767)))

(declare-fun baseList!9 () List!2146)

(declare-fun newList!20 () List!2146)

(declare-fun lt!38764 () List!2146)

(declare-fun ++!422 (List!2146 List!2146) List!2146)

(assert (=> b!129458 (= lt!38767 (++!422 baseList!9 (++!422 lt!38764 (t!22732 newList!20))))))

(declare-datatypes ((Unit!1664 0))(
  ( (Unit!1665) )
))
(declare-fun lt!38769 () Unit!1664)

(declare-fun lemmaConcatAssociativity!120 (List!2146 List!2146 List!2146) Unit!1664)

(assert (=> b!129458 (= lt!38769 (lemmaConcatAssociativity!120 baseList!9 lt!38764 (t!22732 newList!20)))))

(declare-fun lt!38762 () List!2146)

(declare-fun subseq!15 (List!2146 List!2146) Bool)

(assert (=> b!129458 (subseq!15 lt!38762 lt!38765)))

(assert (=> b!129458 (= lt!38765 (++!422 (++!422 baseList!9 lt!38764) (t!22732 newList!20)))))

(declare-fun lt!38768 () Unit!1664)

(declare-fun lemmaBiggerSndListPreservesSubSeq!2 (List!2146 List!2146 List!2146 List!2146) Unit!1664)

(assert (=> b!129458 (= lt!38768 (lemmaBiggerSndListPreservesSubSeq!2 lt!38762 baseList!9 (t!22732 newList!20) lt!38764))))

(assert (=> b!129458 (= lt!38764 (Cons!2140 (h!7537 newList!20) Nil!2140))))

(declare-fun b!129459 () Bool)

(declare-fun res!59544 () Bool)

(assert (=> b!129459 (=> res!59544 e!74554)))

(declare-fun lt!38761 () List!2146)

(assert (=> b!129459 (= res!59544 (not (subseq!15 lt!38762 lt!38761)))))

(declare-fun b!129460 () Bool)

(declare-fun e!74552 () Bool)

(assert (=> b!129460 (= e!74552 e!74554)))

(declare-fun res!59541 () Bool)

(assert (=> b!129460 (=> res!59541 e!74554)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!261 (List!2146) (InoxSet B!685))

(assert (=> b!129460 (= res!59541 (not (= (content!261 lt!38761) (content!261 lt!38762))))))

(assert (=> b!129460 (= lt!38761 (++!422 baseList!9 (t!22732 newList!20)))))

(declare-fun b!129461 () Bool)

(declare-fun res!59540 () Bool)

(declare-fun e!74556 () Bool)

(assert (=> b!129461 (=> (not res!59540) (not e!74556))))

(get-info :version)

(assert (=> b!129461 (= res!59540 ((_ is Cons!2140) newList!20))))

(declare-fun b!129462 () Bool)

(declare-fun res!59542 () Bool)

(assert (=> b!129462 (=> res!59542 e!74553)))

(assert (=> b!129462 (= res!59542 (not (subseq!15 lt!38762 lt!38767)))))

(declare-fun res!59537 () Bool)

(assert (=> start!13410 (=> (not res!59537) (not e!74556))))

(declare-fun noDuplicate!36 (List!2146) Bool)

(assert (=> start!13410 (= res!59537 (noDuplicate!36 baseList!9))))

(assert (=> start!13410 e!74556))

(declare-fun e!74555 () Bool)

(assert (=> start!13410 e!74555))

(declare-fun e!74557 () Bool)

(assert (=> start!13410 e!74557))

(declare-fun b!129463 () Bool)

(declare-fun e!74551 () Bool)

(declare-fun e!74550 () Bool)

(assert (=> b!129463 (= e!74551 e!74550)))

(declare-fun res!59543 () Bool)

(assert (=> b!129463 (=> (not res!59543) (not e!74550))))

(declare-fun lt!38763 () List!2146)

(assert (=> b!129463 (= res!59543 (= (content!261 lt!38763) (content!261 lt!38762)))))

(assert (=> b!129463 (= lt!38763 (++!422 baseList!9 (t!22732 newList!20)))))

(declare-fun b!129464 () Bool)

(assert (=> b!129464 (= e!74556 (not e!74552))))

(declare-fun res!59546 () Bool)

(assert (=> b!129464 (=> res!59546 e!74552)))

(declare-fun lt!38766 () Bool)

(assert (=> b!129464 (= res!59546 lt!38766)))

(assert (=> b!129464 e!74551))

(declare-fun res!59538 () Bool)

(assert (=> b!129464 (=> (not res!59538) (not e!74551))))

(assert (=> b!129464 (= res!59538 (not lt!38766))))

(assert (=> b!129464 (= lt!38766 (not (noDuplicate!36 lt!38762)))))

(declare-fun concatWithoutDuplicates!4 (List!2146 List!2146) List!2146)

(assert (=> b!129464 (= lt!38762 (concatWithoutDuplicates!4 baseList!9 (t!22732 newList!20)))))

(assert (=> b!129464 (subseq!15 baseList!9 baseList!9)))

(declare-fun lt!38770 () Unit!1664)

(declare-fun lemmaSubseqRefl!16 (List!2146) Unit!1664)

(assert (=> b!129464 (= lt!38770 (lemmaSubseqRefl!16 baseList!9))))

(declare-fun b!129465 () Bool)

(declare-fun res!59536 () Bool)

(assert (=> b!129465 (=> (not res!59536) (not e!74550))))

(assert (=> b!129465 (= res!59536 (subseq!15 lt!38762 lt!38763))))

(declare-fun b!129466 () Bool)

(declare-fun res!59539 () Bool)

(assert (=> b!129466 (=> (not res!59539) (not e!74556))))

(declare-fun contains!320 (List!2146 B!685) Bool)

(assert (=> b!129466 (= res!59539 (contains!320 baseList!9 (h!7537 newList!20)))))

(declare-fun b!129467 () Bool)

(declare-fun isPrefix!141 (List!2146 List!2146) Bool)

(assert (=> b!129467 (= e!74550 (isPrefix!141 baseList!9 lt!38762))))

(declare-fun b!129468 () Bool)

(assert (=> b!129468 (= e!74553 true)))

(declare-fun lt!38760 () Bool)

(assert (=> b!129468 (= lt!38760 (isPrefix!141 baseList!9 lt!38762))))

(declare-fun b!129469 () Bool)

(declare-fun tp_is_empty!1329 () Bool)

(declare-fun tp!70132 () Bool)

(assert (=> b!129469 (= e!74555 (and tp_is_empty!1329 tp!70132))))

(declare-fun b!129470 () Bool)

(declare-fun tp!70131 () Bool)

(assert (=> b!129470 (= e!74557 (and tp_is_empty!1329 tp!70131))))

(assert (= (and start!13410 res!59537) b!129461))

(assert (= (and b!129461 res!59540) b!129466))

(assert (= (and b!129466 res!59539) b!129464))

(assert (= (and b!129464 res!59538) b!129463))

(assert (= (and b!129463 res!59543) b!129465))

(assert (= (and b!129465 res!59536) b!129467))

(assert (= (and b!129464 (not res!59546)) b!129460))

(assert (= (and b!129460 (not res!59541)) b!129459))

(assert (= (and b!129459 (not res!59544)) b!129458))

(assert (= (and b!129458 (not res!59545)) b!129462))

(assert (= (and b!129462 (not res!59542)) b!129468))

(assert (= (and start!13410 ((_ is Cons!2140) baseList!9)) b!129469))

(assert (= (and start!13410 ((_ is Cons!2140) newList!20)) b!129470))

(declare-fun m!114039 () Bool)

(assert (=> b!129468 m!114039))

(declare-fun m!114041 () Bool)

(assert (=> b!129462 m!114041))

(declare-fun m!114043 () Bool)

(assert (=> b!129464 m!114043))

(declare-fun m!114045 () Bool)

(assert (=> b!129464 m!114045))

(declare-fun m!114047 () Bool)

(assert (=> b!129464 m!114047))

(declare-fun m!114049 () Bool)

(assert (=> b!129464 m!114049))

(declare-fun m!114051 () Bool)

(assert (=> b!129463 m!114051))

(declare-fun m!114053 () Bool)

(assert (=> b!129463 m!114053))

(declare-fun m!114055 () Bool)

(assert (=> b!129463 m!114055))

(declare-fun m!114057 () Bool)

(assert (=> b!129458 m!114057))

(declare-fun m!114059 () Bool)

(assert (=> b!129458 m!114059))

(declare-fun m!114061 () Bool)

(assert (=> b!129458 m!114061))

(declare-fun m!114063 () Bool)

(assert (=> b!129458 m!114063))

(assert (=> b!129458 m!114063))

(declare-fun m!114065 () Bool)

(assert (=> b!129458 m!114065))

(assert (=> b!129458 m!114057))

(declare-fun m!114067 () Bool)

(assert (=> b!129458 m!114067))

(declare-fun m!114069 () Bool)

(assert (=> b!129458 m!114069))

(declare-fun m!114071 () Bool)

(assert (=> b!129460 m!114071))

(assert (=> b!129460 m!114053))

(assert (=> b!129460 m!114055))

(assert (=> b!129467 m!114039))

(declare-fun m!114073 () Bool)

(assert (=> b!129459 m!114073))

(declare-fun m!114075 () Bool)

(assert (=> b!129466 m!114075))

(declare-fun m!114077 () Bool)

(assert (=> start!13410 m!114077))

(declare-fun m!114079 () Bool)

(assert (=> b!129465 m!114079))

(check-sat (not b!129458) (not b!129470) (not b!129464) tp_is_empty!1329 (not b!129462) (not b!129467) (not b!129460) (not b!129459) (not b!129463) (not b!129468) (not start!13410) (not b!129466) (not b!129469) (not b!129465))
(check-sat)
