; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478792 () Bool)

(assert start!478792)

(declare-fun b!4711560 () Bool)

(declare-fun e!2938642 () Bool)

(declare-fun e!2938648 () Bool)

(assert (=> b!4711560 (= e!2938642 e!2938648)))

(declare-fun res!1991419 () Bool)

(assert (=> b!4711560 (=> res!1991419 e!2938648)))

(declare-datatypes ((K!14050 0))(
  ( (K!14051 (val!19511 Int)) )
))
(declare-datatypes ((V!14296 0))(
  ( (V!14297 (val!19512 Int)) )
))
(declare-datatypes ((tuple2!54234 0))(
  ( (tuple2!54235 (_1!30411 K!14050) (_2!30411 V!14296)) )
))
(declare-datatypes ((List!52813 0))(
  ( (Nil!52689) (Cons!52689 (h!59002 tuple2!54234) (t!360055 List!52813)) )
))
(declare-datatypes ((ListMap!5173 0))(
  ( (ListMap!5174 (toList!5809 List!52813)) )
))
(declare-fun lt!1876176 () ListMap!5173)

(declare-fun newBucket!218 () List!52813)

(declare-fun lt!1876161 () ListMap!5173)

(declare-fun addToMapMapFromBucket!1390 (List!52813 ListMap!5173) ListMap!5173)

(assert (=> b!4711560 (= res!1991419 (not (= lt!1876161 (addToMapMapFromBucket!1390 newBucket!218 lt!1876176))))))

(declare-fun lt!1876163 () List!52813)

(assert (=> b!4711560 (= lt!1876161 (addToMapMapFromBucket!1390 lt!1876163 lt!1876176))))

(declare-fun b!4711561 () Bool)

(declare-fun res!1991425 () Bool)

(declare-fun e!2938636 () Bool)

(assert (=> b!4711561 (=> res!1991425 e!2938636)))

(declare-fun lt!1876170 () ListMap!5173)

(assert (=> b!4711561 (= res!1991425 (not (= lt!1876161 lt!1876170)))))

(declare-fun b!4711562 () Bool)

(declare-fun e!2938639 () Bool)

(declare-fun e!2938644 () Bool)

(assert (=> b!4711562 (= e!2938639 (not e!2938644))))

(declare-fun res!1991431 () Bool)

(assert (=> b!4711562 (=> res!1991431 e!2938644)))

(declare-fun oldBucket!34 () List!52813)

(declare-fun key!4653 () K!14050)

(get-info :version)

(assert (=> b!4711562 (= res!1991431 (or (not ((_ is Cons!52689) oldBucket!34)) (not (= (_1!30411 (h!59002 oldBucket!34)) key!4653))))))

(declare-fun lt!1876160 () ListMap!5173)

(declare-datatypes ((tuple2!54236 0))(
  ( (tuple2!54237 (_1!30412 (_ BitVec 64)) (_2!30412 List!52813)) )
))
(declare-datatypes ((List!52814 0))(
  ( (Nil!52690) (Cons!52690 (h!59003 tuple2!54236) (t!360056 List!52814)) )
))
(declare-datatypes ((ListLongMap!4339 0))(
  ( (ListLongMap!4340 (toList!5810 List!52814)) )
))
(declare-fun lm!2023 () ListLongMap!4339)

(assert (=> b!4711562 (= lt!1876160 (addToMapMapFromBucket!1390 (_2!30412 (h!59003 (toList!5810 lm!2023))) lt!1876176))))

(declare-fun extractMap!1986 (List!52814) ListMap!5173)

(assert (=> b!4711562 (= lt!1876176 (extractMap!1986 (t!360056 (toList!5810 lm!2023))))))

(declare-fun tail!8867 (ListLongMap!4339) ListLongMap!4339)

(assert (=> b!4711562 (= (t!360056 (toList!5810 lm!2023)) (toList!5810 (tail!8867 lm!2023)))))

(declare-fun b!4711563 () Bool)

(declare-fun res!1991435 () Bool)

(assert (=> b!4711563 (=> res!1991435 e!2938636)))

(declare-fun containsKey!3267 (List!52813 K!14050) Bool)

(assert (=> b!4711563 (= res!1991435 (containsKey!3267 lt!1876163 key!4653))))

(declare-fun b!4711564 () Bool)

(declare-fun res!1991429 () Bool)

(declare-fun e!2938634 () Bool)

(assert (=> b!4711564 (=> (not res!1991429) (not e!2938634))))

(declare-datatypes ((Hashable!6329 0))(
  ( (HashableExt!6328 (__x!32032 Int)) )
))
(declare-fun hashF!1323 () Hashable!6329)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!4288 (Hashable!6329 K!14050) (_ BitVec 64))

(assert (=> b!4711564 (= res!1991429 (= (hash!4288 hashF!1323 key!4653) hash!405))))

(declare-fun b!4711565 () Bool)

(declare-fun e!2938641 () Bool)

(declare-fun lt!1876166 () ListMap!5173)

(declare-fun lt!1876169 () ListMap!5173)

(declare-fun eq!1097 (ListMap!5173 ListMap!5173) Bool)

(assert (=> b!4711565 (= e!2938641 (eq!1097 lt!1876166 lt!1876169))))

(declare-fun b!4711566 () Bool)

(declare-fun e!2938637 () Bool)

(declare-fun e!2938645 () Bool)

(assert (=> b!4711566 (= e!2938637 e!2938645)))

(declare-fun res!1991428 () Bool)

(assert (=> b!4711566 (=> res!1991428 e!2938645)))

(declare-fun lt!1876174 () ListMap!5173)

(assert (=> b!4711566 (= res!1991428 (not (= lt!1876174 lt!1876161)))))

(declare-fun lt!1876164 () ListMap!5173)

(declare-fun -!734 (ListMap!5173 K!14050) ListMap!5173)

(assert (=> b!4711566 (= lt!1876174 (-!734 lt!1876164 key!4653))))

(declare-fun +!2224 (ListMap!5173 tuple2!54234) ListMap!5173)

(assert (=> b!4711566 (= (-!734 (+!2224 lt!1876161 (tuple2!54235 key!4653 (_2!30411 (h!59002 oldBucket!34)))) key!4653) lt!1876161)))

(declare-datatypes ((Unit!128130 0))(
  ( (Unit!128131) )
))
(declare-fun lt!1876168 () Unit!128130)

(declare-fun addThenRemoveForNewKeyIsSame!65 (ListMap!5173 K!14050 V!14296) Unit!128130)

(assert (=> b!4711566 (= lt!1876168 (addThenRemoveForNewKeyIsSame!65 lt!1876161 key!4653 (_2!30411 (h!59002 oldBucket!34))))))

(declare-fun b!4711567 () Bool)

(declare-fun e!2938643 () Bool)

(assert (=> b!4711567 (= e!2938643 e!2938634)))

(declare-fun res!1991422 () Bool)

(assert (=> b!4711567 (=> (not res!1991422) (not e!2938634))))

(declare-fun contains!15990 (ListMap!5173 K!14050) Bool)

(assert (=> b!4711567 (= res!1991422 (contains!15990 lt!1876160 key!4653))))

(assert (=> b!4711567 (= lt!1876160 (extractMap!1986 (toList!5810 lm!2023)))))

(declare-fun res!1991427 () Bool)

(assert (=> start!478792 (=> (not res!1991427) (not e!2938643))))

(declare-fun lambda!212895 () Int)

(declare-fun forall!11495 (List!52814 Int) Bool)

(assert (=> start!478792 (= res!1991427 (forall!11495 (toList!5810 lm!2023) lambda!212895))))

(assert (=> start!478792 e!2938643))

(declare-fun e!2938647 () Bool)

(declare-fun inv!67924 (ListLongMap!4339) Bool)

(assert (=> start!478792 (and (inv!67924 lm!2023) e!2938647)))

(declare-fun tp_is_empty!31133 () Bool)

(assert (=> start!478792 tp_is_empty!31133))

(declare-fun e!2938646 () Bool)

(assert (=> start!478792 e!2938646))

(assert (=> start!478792 true))

(declare-fun e!2938635 () Bool)

(assert (=> start!478792 e!2938635))

(declare-fun b!4711559 () Bool)

(assert (=> b!4711559 (= e!2938636 e!2938637)))

(declare-fun res!1991439 () Bool)

(assert (=> b!4711559 (=> res!1991439 e!2938637)))

(assert (=> b!4711559 (= res!1991439 (contains!15990 lt!1876161 key!4653))))

(assert (=> b!4711559 (not (contains!15990 lt!1876170 key!4653))))

(declare-fun lt!1876173 () Unit!128130)

(declare-fun lt!1876172 () List!52814)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!414 (ListLongMap!4339 K!14050 Hashable!6329) Unit!128130)

(assert (=> b!4711559 (= lt!1876173 (lemmaNotInItsHashBucketThenNotInMap!414 (ListLongMap!4340 lt!1876172) key!4653 hashF!1323))))

(declare-fun b!4711568 () Bool)

(declare-fun res!1991438 () Bool)

(assert (=> b!4711568 (=> (not res!1991438) (not e!2938643))))

(declare-fun removePairForKey!1555 (List!52813 K!14050) List!52813)

(assert (=> b!4711568 (= res!1991438 (= (removePairForKey!1555 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4711569 () Bool)

(declare-fun tp!1347550 () Bool)

(assert (=> b!4711569 (= e!2938647 tp!1347550)))

(declare-fun tp_is_empty!31135 () Bool)

(declare-fun b!4711570 () Bool)

(declare-fun tp!1347551 () Bool)

(assert (=> b!4711570 (= e!2938646 (and tp_is_empty!31133 tp_is_empty!31135 tp!1347551))))

(declare-fun b!4711571 () Bool)

(declare-fun res!1991420 () Bool)

(assert (=> b!4711571 (=> (not res!1991420) (not e!2938634))))

(declare-fun allKeysSameHash!1786 (List!52813 (_ BitVec 64) Hashable!6329) Bool)

(assert (=> b!4711571 (= res!1991420 (allKeysSameHash!1786 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4711572 () Bool)

(declare-fun e!2938638 () Bool)

(assert (=> b!4711572 (= e!2938644 e!2938638)))

(declare-fun res!1991418 () Bool)

(assert (=> b!4711572 (=> res!1991418 e!2938638)))

(assert (=> b!4711572 (= res!1991418 (not (= lt!1876163 newBucket!218)))))

(declare-fun tail!8868 (List!52813) List!52813)

(assert (=> b!4711572 (= lt!1876163 (tail!8868 oldBucket!34))))

(declare-fun b!4711573 () Bool)

(declare-fun e!2938640 () Bool)

(assert (=> b!4711573 (= e!2938645 e!2938640)))

(declare-fun res!1991426 () Bool)

(assert (=> b!4711573 (=> res!1991426 e!2938640)))

(declare-fun lt!1876162 () ListMap!5173)

(assert (=> b!4711573 (= res!1991426 (not (eq!1097 lt!1876164 lt!1876162)))))

(declare-fun lt!1876171 () tuple2!54236)

(assert (=> b!4711573 (= lt!1876162 (extractMap!1986 (Cons!52690 lt!1876171 (t!360056 (toList!5810 lm!2023)))))))

(declare-fun b!4711574 () Bool)

(declare-fun res!1991423 () Bool)

(assert (=> b!4711574 (=> (not res!1991423) (not e!2938643))))

(assert (=> b!4711574 (= res!1991423 (allKeysSameHash!1786 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4711575 () Bool)

(declare-fun tp!1347549 () Bool)

(assert (=> b!4711575 (= e!2938635 (and tp_is_empty!31133 tp_is_empty!31135 tp!1347549))))

(declare-fun b!4711576 () Bool)

(declare-fun res!1991433 () Bool)

(assert (=> b!4711576 (=> (not res!1991433) (not e!2938643))))

(declare-fun noDuplicateKeys!1960 (List!52813) Bool)

(assert (=> b!4711576 (= res!1991433 (noDuplicateKeys!1960 oldBucket!34))))

(declare-fun b!4711577 () Bool)

(declare-fun res!1991421 () Bool)

(assert (=> b!4711577 (=> (not res!1991421) (not e!2938639))))

(assert (=> b!4711577 (= res!1991421 ((_ is Cons!52690) (toList!5810 lm!2023)))))

(declare-fun b!4711578 () Bool)

(assert (=> b!4711578 (= e!2938648 e!2938636)))

(declare-fun res!1991432 () Bool)

(assert (=> b!4711578 (=> res!1991432 e!2938636)))

(assert (=> b!4711578 (= res!1991432 (not (eq!1097 lt!1876164 (addToMapMapFromBucket!1390 oldBucket!34 lt!1876176))))))

(assert (=> b!4711578 (= lt!1876164 (+!2224 lt!1876161 (h!59002 oldBucket!34)))))

(declare-fun lt!1876175 () tuple2!54234)

(assert (=> b!4711578 (eq!1097 (addToMapMapFromBucket!1390 (Cons!52689 lt!1876175 lt!1876163) lt!1876176) (+!2224 lt!1876161 lt!1876175))))

(declare-fun lt!1876167 () Unit!128130)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!346 (tuple2!54234 List!52813 ListMap!5173) Unit!128130)

(assert (=> b!4711578 (= lt!1876167 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!346 lt!1876175 lt!1876163 lt!1876176))))

(declare-fun head!10159 (List!52813) tuple2!54234)

(assert (=> b!4711578 (= lt!1876175 (head!10159 oldBucket!34))))

(declare-fun b!4711579 () Bool)

(declare-fun res!1991434 () Bool)

(assert (=> b!4711579 (=> (not res!1991434) (not e!2938634))))

(declare-fun allKeysSameHashInMap!1874 (ListLongMap!4339 Hashable!6329) Bool)

(assert (=> b!4711579 (= res!1991434 (allKeysSameHashInMap!1874 lm!2023 hashF!1323))))

(declare-fun b!4711580 () Bool)

(assert (=> b!4711580 (= e!2938640 e!2938641)))

(declare-fun res!1991436 () Bool)

(assert (=> b!4711580 (=> res!1991436 e!2938641)))

(assert (=> b!4711580 (= res!1991436 (not (eq!1097 lt!1876169 lt!1876170)))))

(assert (=> b!4711580 (eq!1097 lt!1876174 lt!1876169)))

(assert (=> b!4711580 (= lt!1876169 (-!734 lt!1876162 key!4653))))

(declare-fun lt!1876165 () Unit!128130)

(declare-fun lemmaRemovePreservesEq!112 (ListMap!5173 ListMap!5173 K!14050) Unit!128130)

(assert (=> b!4711580 (= lt!1876165 (lemmaRemovePreservesEq!112 lt!1876164 lt!1876162 key!4653))))

(declare-fun b!4711581 () Bool)

(declare-fun res!1991424 () Bool)

(assert (=> b!4711581 (=> (not res!1991424) (not e!2938643))))

(assert (=> b!4711581 (= res!1991424 (noDuplicateKeys!1960 newBucket!218))))

(declare-fun b!4711582 () Bool)

(assert (=> b!4711582 (= e!2938634 e!2938639)))

(declare-fun res!1991437 () Bool)

(assert (=> b!4711582 (=> (not res!1991437) (not e!2938639))))

(declare-fun head!10160 (List!52814) tuple2!54236)

(assert (=> b!4711582 (= res!1991437 (= (head!10160 (toList!5810 lm!2023)) lt!1876171))))

(assert (=> b!4711582 (= lt!1876171 (tuple2!54237 hash!405 oldBucket!34))))

(declare-fun b!4711583 () Bool)

(assert (=> b!4711583 (= e!2938638 e!2938642)))

(declare-fun res!1991430 () Bool)

(assert (=> b!4711583 (=> res!1991430 e!2938642)))

(assert (=> b!4711583 (= res!1991430 (not (= lt!1876170 lt!1876166)))))

(assert (=> b!4711583 (= lt!1876166 (extractMap!1986 (Cons!52690 (tuple2!54237 hash!405 newBucket!218) (t!360056 (toList!5810 lm!2023)))))))

(assert (=> b!4711583 (= lt!1876170 (extractMap!1986 lt!1876172))))

(assert (=> b!4711583 (= lt!1876172 (Cons!52690 (tuple2!54237 hash!405 lt!1876163) (t!360056 (toList!5810 lm!2023))))))

(assert (= (and start!478792 res!1991427) b!4711576))

(assert (= (and b!4711576 res!1991433) b!4711581))

(assert (= (and b!4711581 res!1991424) b!4711568))

(assert (= (and b!4711568 res!1991438) b!4711574))

(assert (= (and b!4711574 res!1991423) b!4711567))

(assert (= (and b!4711567 res!1991422) b!4711564))

(assert (= (and b!4711564 res!1991429) b!4711571))

(assert (= (and b!4711571 res!1991420) b!4711579))

(assert (= (and b!4711579 res!1991434) b!4711582))

(assert (= (and b!4711582 res!1991437) b!4711577))

(assert (= (and b!4711577 res!1991421) b!4711562))

(assert (= (and b!4711562 (not res!1991431)) b!4711572))

(assert (= (and b!4711572 (not res!1991418)) b!4711583))

(assert (= (and b!4711583 (not res!1991430)) b!4711560))

(assert (= (and b!4711560 (not res!1991419)) b!4711578))

(assert (= (and b!4711578 (not res!1991432)) b!4711563))

(assert (= (and b!4711563 (not res!1991435)) b!4711561))

(assert (= (and b!4711561 (not res!1991425)) b!4711559))

(assert (= (and b!4711559 (not res!1991439)) b!4711566))

(assert (= (and b!4711566 (not res!1991428)) b!4711573))

(assert (= (and b!4711573 (not res!1991426)) b!4711580))

(assert (= (and b!4711580 (not res!1991436)) b!4711565))

(assert (= start!478792 b!4711569))

(assert (= (and start!478792 ((_ is Cons!52689) oldBucket!34)) b!4711570))

(assert (= (and start!478792 ((_ is Cons!52689) newBucket!218)) b!4711575))

(declare-fun m!5637691 () Bool)

(assert (=> b!4711581 m!5637691))

(declare-fun m!5637693 () Bool)

(assert (=> b!4711564 m!5637693))

(declare-fun m!5637695 () Bool)

(assert (=> b!4711580 m!5637695))

(declare-fun m!5637697 () Bool)

(assert (=> b!4711580 m!5637697))

(declare-fun m!5637699 () Bool)

(assert (=> b!4711580 m!5637699))

(declare-fun m!5637701 () Bool)

(assert (=> b!4711580 m!5637701))

(declare-fun m!5637703 () Bool)

(assert (=> b!4711583 m!5637703))

(declare-fun m!5637705 () Bool)

(assert (=> b!4711583 m!5637705))

(declare-fun m!5637707 () Bool)

(assert (=> b!4711572 m!5637707))

(declare-fun m!5637709 () Bool)

(assert (=> b!4711567 m!5637709))

(declare-fun m!5637711 () Bool)

(assert (=> b!4711567 m!5637711))

(declare-fun m!5637713 () Bool)

(assert (=> start!478792 m!5637713))

(declare-fun m!5637715 () Bool)

(assert (=> start!478792 m!5637715))

(declare-fun m!5637717 () Bool)

(assert (=> b!4711579 m!5637717))

(declare-fun m!5637719 () Bool)

(assert (=> b!4711571 m!5637719))

(declare-fun m!5637721 () Bool)

(assert (=> b!4711566 m!5637721))

(declare-fun m!5637723 () Bool)

(assert (=> b!4711566 m!5637723))

(assert (=> b!4711566 m!5637723))

(declare-fun m!5637725 () Bool)

(assert (=> b!4711566 m!5637725))

(declare-fun m!5637727 () Bool)

(assert (=> b!4711566 m!5637727))

(declare-fun m!5637729 () Bool)

(assert (=> b!4711582 m!5637729))

(declare-fun m!5637731 () Bool)

(assert (=> b!4711560 m!5637731))

(declare-fun m!5637733 () Bool)

(assert (=> b!4711560 m!5637733))

(declare-fun m!5637735 () Bool)

(assert (=> b!4711576 m!5637735))

(declare-fun m!5637737 () Bool)

(assert (=> b!4711559 m!5637737))

(declare-fun m!5637739 () Bool)

(assert (=> b!4711559 m!5637739))

(declare-fun m!5637741 () Bool)

(assert (=> b!4711559 m!5637741))

(declare-fun m!5637743 () Bool)

(assert (=> b!4711562 m!5637743))

(declare-fun m!5637745 () Bool)

(assert (=> b!4711562 m!5637745))

(declare-fun m!5637747 () Bool)

(assert (=> b!4711562 m!5637747))

(declare-fun m!5637749 () Bool)

(assert (=> b!4711573 m!5637749))

(declare-fun m!5637751 () Bool)

(assert (=> b!4711573 m!5637751))

(declare-fun m!5637753 () Bool)

(assert (=> b!4711568 m!5637753))

(declare-fun m!5637755 () Bool)

(assert (=> b!4711574 m!5637755))

(declare-fun m!5637757 () Bool)

(assert (=> b!4711565 m!5637757))

(declare-fun m!5637759 () Bool)

(assert (=> b!4711578 m!5637759))

(declare-fun m!5637761 () Bool)

(assert (=> b!4711578 m!5637761))

(assert (=> b!4711578 m!5637761))

(declare-fun m!5637763 () Bool)

(assert (=> b!4711578 m!5637763))

(declare-fun m!5637765 () Bool)

(assert (=> b!4711578 m!5637765))

(declare-fun m!5637767 () Bool)

(assert (=> b!4711578 m!5637767))

(declare-fun m!5637769 () Bool)

(assert (=> b!4711578 m!5637769))

(declare-fun m!5637771 () Bool)

(assert (=> b!4711578 m!5637771))

(declare-fun m!5637773 () Bool)

(assert (=> b!4711578 m!5637773))

(assert (=> b!4711578 m!5637767))

(assert (=> b!4711578 m!5637763))

(declare-fun m!5637775 () Bool)

(assert (=> b!4711563 m!5637775))

(check-sat (not b!4711563) tp_is_empty!31135 (not b!4711576) tp_is_empty!31133 (not b!4711569) (not b!4711564) (not b!4711575) (not b!4711583) (not b!4711579) (not b!4711566) (not b!4711578) (not b!4711581) (not b!4711559) (not b!4711573) (not b!4711568) (not b!4711570) (not b!4711565) (not b!4711572) (not start!478792) (not b!4711582) (not b!4711562) (not b!4711571) (not b!4711567) (not b!4711560) (not b!4711580) (not b!4711574))
(check-sat)
