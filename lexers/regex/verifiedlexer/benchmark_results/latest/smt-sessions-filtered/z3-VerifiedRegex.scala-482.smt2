; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13534 () Bool)

(assert start!13534)

(declare-fun b!130927 () Bool)

(declare-fun res!60656 () Bool)

(declare-fun e!75494 () Bool)

(assert (=> b!130927 (=> (not res!60656) (not e!75494))))

(declare-datatypes ((B!749 0))(
  ( (B!750 (val!860 Int)) )
))
(declare-datatypes ((List!2178 0))(
  ( (Nil!2172) (Cons!2172 (h!7569 B!749) (t!22764 List!2178)) )
))
(declare-fun lt!39532 () List!2178)

(declare-fun lt!39536 () List!2178)

(declare-fun subseq!43 (List!2178 List!2178) Bool)

(assert (=> b!130927 (= res!60656 (subseq!43 lt!39532 lt!39536))))

(declare-fun b!130928 () Bool)

(declare-fun e!75491 () Bool)

(declare-fun lt!39527 () List!2178)

(declare-fun isPrefix!171 (List!2178 List!2178) Bool)

(assert (=> b!130928 (= e!75491 (isPrefix!171 lt!39527 lt!39532))))

(declare-fun b!130929 () Bool)

(declare-fun e!75492 () Bool)

(assert (=> b!130929 (= e!75492 e!75494)))

(declare-fun res!60648 () Bool)

(assert (=> b!130929 (=> (not res!60648) (not e!75494))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!287 (List!2178) (InoxSet B!749))

(assert (=> b!130929 (= res!60648 (= (content!287 lt!39536) (content!287 lt!39532)))))

(declare-fun newList!20 () List!2178)

(declare-fun ++!452 (List!2178 List!2178) List!2178)

(assert (=> b!130929 (= lt!39536 (++!452 lt!39527 (t!22764 newList!20)))))

(declare-fun b!130931 () Bool)

(declare-fun e!75496 () Bool)

(declare-fun tp_is_empty!1393 () Bool)

(declare-fun tp!70341 () Bool)

(assert (=> b!130931 (= e!75496 (and tp_is_empty!1393 tp!70341))))

(declare-fun b!130932 () Bool)

(declare-fun e!75497 () Bool)

(declare-fun e!75493 () Bool)

(assert (=> b!130932 (= e!75497 e!75493)))

(declare-fun res!60652 () Bool)

(assert (=> b!130932 (=> res!60652 e!75493)))

(declare-fun lt!39534 () List!2178)

(assert (=> b!130932 (= res!60652 (not (subseq!43 lt!39532 lt!39534)))))

(assert (=> b!130932 (= lt!39534 (++!452 lt!39527 (t!22764 newList!20)))))

(declare-fun b!130933 () Bool)

(declare-fun e!75498 () Bool)

(declare-fun baseList!9 () List!2178)

(declare-fun contains!352 (List!2178 B!749) Bool)

(assert (=> b!130933 (= e!75498 (not (contains!352 baseList!9 (h!7569 newList!20))))))

(declare-fun b!130934 () Bool)

(declare-fun e!75495 () Bool)

(assert (=> b!130934 (= e!75495 (not e!75497))))

(declare-fun res!60647 () Bool)

(assert (=> b!130934 (=> res!60647 e!75497)))

(declare-fun lt!39531 () Bool)

(assert (=> b!130934 (= res!60647 lt!39531)))

(assert (=> b!130934 e!75492))

(declare-fun res!60651 () Bool)

(assert (=> b!130934 (=> (not res!60651) (not e!75492))))

(assert (=> b!130934 (= res!60651 (not lt!39531))))

(declare-fun noDuplicate!68 (List!2178) Bool)

(assert (=> b!130934 (= lt!39531 (not (noDuplicate!68 lt!39532)))))

(declare-fun concatWithoutDuplicates!30 (List!2178 List!2178) List!2178)

(assert (=> b!130934 (= lt!39532 (concatWithoutDuplicates!30 lt!39527 (t!22764 newList!20)))))

(assert (=> b!130934 (noDuplicate!68 lt!39527)))

(declare-datatypes ((Unit!1728 0))(
  ( (Unit!1729) )
))
(declare-fun lt!39530 () Unit!1728)

(declare-fun lemmaAppendNewElementElementPreserves!16 (List!2178 B!749) Unit!1728)

(assert (=> b!130934 (= lt!39530 (lemmaAppendNewElementElementPreserves!16 baseList!9 (h!7569 newList!20)))))

(assert (=> b!130934 (isPrefix!171 baseList!9 lt!39527)))

(declare-fun lt!39528 () List!2178)

(assert (=> b!130934 (= lt!39527 (++!452 baseList!9 lt!39528))))

(declare-fun lt!39533 () Unit!1728)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!98 (List!2178 List!2178) Unit!1728)

(assert (=> b!130934 (= lt!39533 (lemmaConcatTwoListThenFirstIsPrefix!98 baseList!9 lt!39528))))

(assert (=> b!130934 (= lt!39528 (Cons!2172 (h!7569 newList!20) Nil!2172))))

(declare-fun b!130935 () Bool)

(declare-fun res!60655 () Bool)

(assert (=> b!130935 (=> (not res!60655) (not e!75495))))

(assert (=> b!130935 (= res!60655 (not (contains!352 baseList!9 (h!7569 newList!20))))))

(declare-fun b!130936 () Bool)

(assert (=> b!130936 (= e!75493 e!75491)))

(declare-fun res!60650 () Bool)

(assert (=> b!130936 (=> res!60650 e!75491)))

(declare-fun lt!39535 () List!2178)

(assert (=> b!130936 (= res!60650 (not (subseq!43 lt!39532 lt!39535)))))

(assert (=> b!130936 (= lt!39534 lt!39535)))

(assert (=> b!130936 (= lt!39535 (++!452 baseList!9 (++!452 lt!39528 (t!22764 newList!20))))))

(declare-fun lt!39529 () Unit!1728)

(declare-fun lemmaConcatAssociativity!134 (List!2178 List!2178 List!2178) Unit!1728)

(assert (=> b!130936 (= lt!39529 (lemmaConcatAssociativity!134 baseList!9 lt!39528 (t!22764 newList!20)))))

(declare-fun b!130937 () Bool)

(declare-fun res!60654 () Bool)

(assert (=> b!130937 (=> res!60654 e!75497)))

(assert (=> b!130937 (= res!60654 (not (= (content!287 (++!452 lt!39527 newList!20)) (content!287 lt!39532))))))

(declare-fun res!60645 () Bool)

(assert (=> start!13534 (=> (not res!60645) (not e!75495))))

(assert (=> start!13534 (= res!60645 (noDuplicate!68 baseList!9))))

(assert (=> start!13534 e!75495))

(declare-fun e!75499 () Bool)

(assert (=> start!13534 e!75499))

(assert (=> start!13534 e!75496))

(declare-fun b!130930 () Bool)

(declare-fun tp!70342 () Bool)

(assert (=> b!130930 (= e!75499 (and tp_is_empty!1393 tp!70342))))

(declare-fun b!130938 () Bool)

(declare-fun res!60653 () Bool)

(assert (=> b!130938 (=> (not res!60653) (not e!75495))))

(assert (=> b!130938 (= res!60653 e!75498)))

(declare-fun res!60646 () Bool)

(assert (=> b!130938 (=> res!60646 e!75498)))

(get-info :version)

(assert (=> b!130938 (= res!60646 (not ((_ is Cons!2172) newList!20)))))

(declare-fun b!130939 () Bool)

(declare-fun res!60649 () Bool)

(assert (=> b!130939 (=> (not res!60649) (not e!75495))))

(assert (=> b!130939 (= res!60649 ((_ is Cons!2172) newList!20))))

(declare-fun b!130940 () Bool)

(assert (=> b!130940 (= e!75494 (isPrefix!171 lt!39527 lt!39532))))

(assert (= (and start!13534 res!60645) b!130938))

(assert (= (and b!130938 (not res!60646)) b!130933))

(assert (= (and b!130938 res!60653) b!130939))

(assert (= (and b!130939 res!60649) b!130935))

(assert (= (and b!130935 res!60655) b!130934))

(assert (= (and b!130934 res!60651) b!130929))

(assert (= (and b!130929 res!60648) b!130927))

(assert (= (and b!130927 res!60656) b!130940))

(assert (= (and b!130934 (not res!60647)) b!130937))

(assert (= (and b!130937 (not res!60654)) b!130932))

(assert (= (and b!130932 (not res!60652)) b!130936))

(assert (= (and b!130936 (not res!60650)) b!130928))

(assert (= (and start!13534 ((_ is Cons!2172) baseList!9)) b!130930))

(assert (= (and start!13534 ((_ is Cons!2172) newList!20)) b!130931))

(declare-fun m!115619 () Bool)

(assert (=> b!130933 m!115619))

(declare-fun m!115621 () Bool)

(assert (=> b!130937 m!115621))

(assert (=> b!130937 m!115621))

(declare-fun m!115623 () Bool)

(assert (=> b!130937 m!115623))

(declare-fun m!115625 () Bool)

(assert (=> b!130937 m!115625))

(declare-fun m!115627 () Bool)

(assert (=> b!130928 m!115627))

(declare-fun m!115629 () Bool)

(assert (=> b!130932 m!115629))

(declare-fun m!115631 () Bool)

(assert (=> b!130932 m!115631))

(assert (=> b!130935 m!115619))

(declare-fun m!115633 () Bool)

(assert (=> start!13534 m!115633))

(declare-fun m!115635 () Bool)

(assert (=> b!130927 m!115635))

(declare-fun m!115637 () Bool)

(assert (=> b!130936 m!115637))

(declare-fun m!115639 () Bool)

(assert (=> b!130936 m!115639))

(assert (=> b!130936 m!115639))

(declare-fun m!115641 () Bool)

(assert (=> b!130936 m!115641))

(declare-fun m!115643 () Bool)

(assert (=> b!130936 m!115643))

(declare-fun m!115645 () Bool)

(assert (=> b!130934 m!115645))

(declare-fun m!115647 () Bool)

(assert (=> b!130934 m!115647))

(declare-fun m!115649 () Bool)

(assert (=> b!130934 m!115649))

(declare-fun m!115651 () Bool)

(assert (=> b!130934 m!115651))

(declare-fun m!115653 () Bool)

(assert (=> b!130934 m!115653))

(declare-fun m!115655 () Bool)

(assert (=> b!130934 m!115655))

(declare-fun m!115657 () Bool)

(assert (=> b!130934 m!115657))

(declare-fun m!115659 () Bool)

(assert (=> b!130929 m!115659))

(assert (=> b!130929 m!115625))

(assert (=> b!130929 m!115631))

(assert (=> b!130940 m!115627))

(check-sat (not b!130929) (not b!130937) (not b!130931) (not b!130936) (not b!130940) (not b!130933) (not b!130928) tp_is_empty!1393 (not b!130930) (not start!13534) (not b!130932) (not b!130927) (not b!130934) (not b!130935))
(check-sat)
