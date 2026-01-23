; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13530 () Bool)

(assert start!13530)

(declare-fun b!130844 () Bool)

(declare-fun e!75439 () Bool)

(declare-datatypes ((B!745 0))(
  ( (B!746 (val!858 Int)) )
))
(declare-datatypes ((List!2176 0))(
  ( (Nil!2170) (Cons!2170 (h!7567 B!745) (t!22762 List!2176)) )
))
(declare-fun baseList!9 () List!2176)

(declare-fun newList!20 () List!2176)

(declare-fun contains!350 (List!2176 B!745) Bool)

(assert (=> b!130844 (= e!75439 (not (contains!350 baseList!9 (h!7567 newList!20))))))

(declare-fun b!130845 () Bool)

(declare-fun res!60581 () Bool)

(declare-fun e!75444 () Bool)

(assert (=> b!130845 (=> (not res!60581) (not e!75444))))

(get-info :version)

(assert (=> b!130845 (= res!60581 ((_ is Cons!2170) newList!20))))

(declare-fun b!130846 () Bool)

(declare-fun res!60577 () Bool)

(declare-fun e!75442 () Bool)

(assert (=> b!130846 (=> (not res!60577) (not e!75442))))

(declare-fun lt!39475 () List!2176)

(declare-fun lt!39467 () List!2176)

(declare-fun subseq!41 (List!2176 List!2176) Bool)

(assert (=> b!130846 (= res!60577 (subseq!41 lt!39475 lt!39467))))

(declare-fun b!130847 () Bool)

(declare-fun e!75441 () Bool)

(declare-fun tp_is_empty!1389 () Bool)

(declare-fun tp!70330 () Bool)

(assert (=> b!130847 (= e!75441 (and tp_is_empty!1389 tp!70330))))

(declare-fun b!130848 () Bool)

(declare-fun res!60580 () Bool)

(declare-fun e!75443 () Bool)

(assert (=> b!130848 (=> res!60580 e!75443)))

(declare-fun lt!39471 () List!2176)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!285 (List!2176) (InoxSet B!745))

(declare-fun ++!450 (List!2176 List!2176) List!2176)

(assert (=> b!130848 (= res!60580 (not (= (content!285 (++!450 lt!39471 newList!20)) (content!285 lt!39475))))))

(declare-fun b!130849 () Bool)

(declare-fun isPrefix!169 (List!2176 List!2176) Bool)

(assert (=> b!130849 (= e!75442 (isPrefix!169 lt!39471 lt!39475))))

(declare-fun b!130850 () Bool)

(declare-fun e!75440 () Bool)

(declare-fun lt!39468 () List!2176)

(assert (=> b!130850 (= e!75440 (subseq!41 lt!39475 lt!39468))))

(declare-fun lt!39472 () List!2176)

(assert (=> b!130850 (= lt!39472 lt!39468)))

(declare-fun lt!39469 () List!2176)

(assert (=> b!130850 (= lt!39468 (++!450 baseList!9 (++!450 lt!39469 (t!22762 newList!20))))))

(declare-datatypes ((Unit!1724 0))(
  ( (Unit!1725) )
))
(declare-fun lt!39473 () Unit!1724)

(declare-fun lemmaConcatAssociativity!132 (List!2176 List!2176 List!2176) Unit!1724)

(assert (=> b!130850 (= lt!39473 (lemmaConcatAssociativity!132 baseList!9 lt!39469 (t!22762 newList!20)))))

(declare-fun b!130851 () Bool)

(declare-fun res!60574 () Bool)

(assert (=> b!130851 (=> (not res!60574) (not e!75444))))

(assert (=> b!130851 (= res!60574 e!75439)))

(declare-fun res!60582 () Bool)

(assert (=> b!130851 (=> res!60582 e!75439)))

(assert (=> b!130851 (= res!60582 (not ((_ is Cons!2170) newList!20)))))

(declare-fun b!130852 () Bool)

(declare-fun e!75438 () Bool)

(declare-fun tp!70329 () Bool)

(assert (=> b!130852 (= e!75438 (and tp_is_empty!1389 tp!70329))))

(declare-fun res!60575 () Bool)

(assert (=> start!13530 (=> (not res!60575) (not e!75444))))

(declare-fun noDuplicate!66 (List!2176) Bool)

(assert (=> start!13530 (= res!60575 (noDuplicate!66 baseList!9))))

(assert (=> start!13530 e!75444))

(assert (=> start!13530 e!75438))

(assert (=> start!13530 e!75441))

(declare-fun b!130853 () Bool)

(assert (=> b!130853 (= e!75443 e!75440)))

(declare-fun res!60584 () Bool)

(assert (=> b!130853 (=> res!60584 e!75440)))

(assert (=> b!130853 (= res!60584 (not (subseq!41 lt!39475 lt!39472)))))

(assert (=> b!130853 (= lt!39472 (++!450 lt!39471 (t!22762 newList!20)))))

(declare-fun b!130854 () Bool)

(declare-fun res!60579 () Bool)

(assert (=> b!130854 (=> (not res!60579) (not e!75444))))

(assert (=> b!130854 (= res!60579 (not (contains!350 baseList!9 (h!7567 newList!20))))))

(declare-fun b!130855 () Bool)

(declare-fun e!75445 () Bool)

(assert (=> b!130855 (= e!75445 e!75442)))

(declare-fun res!60583 () Bool)

(assert (=> b!130855 (=> (not res!60583) (not e!75442))))

(assert (=> b!130855 (= res!60583 (= (content!285 lt!39467) (content!285 lt!39475)))))

(assert (=> b!130855 (= lt!39467 (++!450 lt!39471 (t!22762 newList!20)))))

(declare-fun b!130856 () Bool)

(assert (=> b!130856 (= e!75444 (not e!75443))))

(declare-fun res!60576 () Bool)

(assert (=> b!130856 (=> res!60576 e!75443)))

(declare-fun lt!39470 () Bool)

(assert (=> b!130856 (= res!60576 lt!39470)))

(assert (=> b!130856 e!75445))

(declare-fun res!60578 () Bool)

(assert (=> b!130856 (=> (not res!60578) (not e!75445))))

(assert (=> b!130856 (= res!60578 (not lt!39470))))

(assert (=> b!130856 (= lt!39470 (not (noDuplicate!66 lt!39475)))))

(declare-fun concatWithoutDuplicates!28 (List!2176 List!2176) List!2176)

(assert (=> b!130856 (= lt!39475 (concatWithoutDuplicates!28 lt!39471 (t!22762 newList!20)))))

(assert (=> b!130856 (noDuplicate!66 lt!39471)))

(declare-fun lt!39474 () Unit!1724)

(declare-fun lemmaAppendNewElementElementPreserves!14 (List!2176 B!745) Unit!1724)

(assert (=> b!130856 (= lt!39474 (lemmaAppendNewElementElementPreserves!14 baseList!9 (h!7567 newList!20)))))

(assert (=> b!130856 (isPrefix!169 baseList!9 lt!39471)))

(assert (=> b!130856 (= lt!39471 (++!450 baseList!9 lt!39469))))

(declare-fun lt!39476 () Unit!1724)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!96 (List!2176 List!2176) Unit!1724)

(assert (=> b!130856 (= lt!39476 (lemmaConcatTwoListThenFirstIsPrefix!96 baseList!9 lt!39469))))

(assert (=> b!130856 (= lt!39469 (Cons!2170 (h!7567 newList!20) Nil!2170))))

(assert (= (and start!13530 res!60575) b!130851))

(assert (= (and b!130851 (not res!60582)) b!130844))

(assert (= (and b!130851 res!60574) b!130845))

(assert (= (and b!130845 res!60581) b!130854))

(assert (= (and b!130854 res!60579) b!130856))

(assert (= (and b!130856 res!60578) b!130855))

(assert (= (and b!130855 res!60583) b!130846))

(assert (= (and b!130846 res!60577) b!130849))

(assert (= (and b!130856 (not res!60576)) b!130848))

(assert (= (and b!130848 (not res!60580)) b!130853))

(assert (= (and b!130853 (not res!60584)) b!130850))

(assert (= (and start!13530 ((_ is Cons!2170) baseList!9)) b!130852))

(assert (= (and start!13530 ((_ is Cons!2170) newList!20)) b!130847))

(declare-fun m!115535 () Bool)

(assert (=> b!130849 m!115535))

(declare-fun m!115537 () Bool)

(assert (=> start!13530 m!115537))

(declare-fun m!115539 () Bool)

(assert (=> b!130850 m!115539))

(declare-fun m!115541 () Bool)

(assert (=> b!130850 m!115541))

(assert (=> b!130850 m!115541))

(declare-fun m!115543 () Bool)

(assert (=> b!130850 m!115543))

(declare-fun m!115545 () Bool)

(assert (=> b!130850 m!115545))

(declare-fun m!115547 () Bool)

(assert (=> b!130853 m!115547))

(declare-fun m!115549 () Bool)

(assert (=> b!130853 m!115549))

(declare-fun m!115551 () Bool)

(assert (=> b!130844 m!115551))

(declare-fun m!115553 () Bool)

(assert (=> b!130846 m!115553))

(declare-fun m!115555 () Bool)

(assert (=> b!130856 m!115555))

(declare-fun m!115557 () Bool)

(assert (=> b!130856 m!115557))

(declare-fun m!115559 () Bool)

(assert (=> b!130856 m!115559))

(declare-fun m!115561 () Bool)

(assert (=> b!130856 m!115561))

(declare-fun m!115563 () Bool)

(assert (=> b!130856 m!115563))

(declare-fun m!115565 () Bool)

(assert (=> b!130856 m!115565))

(declare-fun m!115567 () Bool)

(assert (=> b!130856 m!115567))

(assert (=> b!130854 m!115551))

(declare-fun m!115569 () Bool)

(assert (=> b!130848 m!115569))

(assert (=> b!130848 m!115569))

(declare-fun m!115571 () Bool)

(assert (=> b!130848 m!115571))

(declare-fun m!115573 () Bool)

(assert (=> b!130848 m!115573))

(declare-fun m!115575 () Bool)

(assert (=> b!130855 m!115575))

(assert (=> b!130855 m!115573))

(assert (=> b!130855 m!115549))

(check-sat (not b!130848) (not b!130853) (not b!130854) tp_is_empty!1389 (not b!130846) (not start!13530) (not b!130855) (not b!130844) (not b!130849) (not b!130850) (not b!130847) (not b!130852) (not b!130856))
(check-sat)
