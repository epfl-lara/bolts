; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!431928 () Bool)

(assert start!431928)

(declare-fun b!4426423 () Bool)

(declare-fun res!1830163 () Bool)

(declare-fun e!2756124 () Bool)

(assert (=> b!4426423 (=> res!1830163 e!2756124)))

(declare-datatypes ((V!11206 0))(
  ( (V!11207 (val!17039 Int)) )
))
(declare-datatypes ((K!10960 0))(
  ( (K!10961 (val!17040 Int)) )
))
(declare-datatypes ((tuple2!49398 0))(
  ( (tuple2!49399 (_1!27993 K!10960) (_2!27993 V!11206)) )
))
(declare-datatypes ((List!49721 0))(
  ( (Nil!49597) (Cons!49597 (h!55286 tuple2!49398) (t!356659 List!49721)) )
))
(declare-datatypes ((tuple2!49400 0))(
  ( (tuple2!49401 (_1!27994 (_ BitVec 64)) (_2!27994 List!49721)) )
))
(declare-datatypes ((List!49722 0))(
  ( (Nil!49598) (Cons!49598 (h!55287 tuple2!49400) (t!356660 List!49722)) )
))
(declare-datatypes ((ListLongMap!2147 0))(
  ( (ListLongMap!2148 (toList!3497 List!49722)) )
))
(declare-fun lm!1616 () ListLongMap!2147)

(declare-fun hash!366 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4426423 (= res!1830163 (or (and ((_ is Cons!49598) (toList!3497 lm!1616)) (= (_1!27994 (h!55287 (toList!3497 lm!1616))) hash!366)) (not ((_ is Cons!49598) (toList!3497 lm!1616))) (= (_1!27994 (h!55287 (toList!3497 lm!1616))) hash!366)))))

(declare-fun b!4426424 () Bool)

(declare-fun e!2756128 () Bool)

(declare-fun e!2756122 () Bool)

(assert (=> b!4426424 (= e!2756128 e!2756122)))

(declare-fun res!1830164 () Bool)

(assert (=> b!4426424 (=> res!1830164 e!2756122)))

(declare-fun key!3717 () K!10960)

(declare-fun containsKey!1126 (List!49721 K!10960) Bool)

(assert (=> b!4426424 (= res!1830164 (containsKey!1126 (_2!27994 (h!55287 (toList!3497 lm!1616))) key!3717))))

(declare-fun apply!11607 (ListLongMap!2147 (_ BitVec 64)) List!49721)

(assert (=> b!4426424 (not (containsKey!1126 (apply!11607 lm!1616 (_1!27994 (h!55287 (toList!3497 lm!1616)))) key!3717))))

(declare-datatypes ((Unit!82107 0))(
  ( (Unit!82108) )
))
(declare-fun lt!1625745 () Unit!82107)

(declare-datatypes ((Hashable!5149 0))(
  ( (HashableExt!5148 (__x!30852 Int)) )
))
(declare-fun hashF!1220 () Hashable!5149)

(declare-fun lemmaNotSameHashThenCannotContainKey!134 (ListLongMap!2147 K!10960 (_ BitVec 64) Hashable!5149) Unit!82107)

(assert (=> b!4426424 (= lt!1625745 (lemmaNotSameHashThenCannotContainKey!134 lm!1616 key!3717 (_1!27994 (h!55287 (toList!3497 lm!1616))) hashF!1220))))

(declare-fun b!4426425 () Bool)

(declare-fun res!1830169 () Bool)

(declare-fun e!2756118 () Bool)

(assert (=> b!4426425 (=> (not res!1830169) (not e!2756118))))

(declare-fun hash!2140 (Hashable!5149 K!10960) (_ BitVec 64))

(assert (=> b!4426425 (= res!1830169 (= (hash!2140 hashF!1220 key!3717) hash!366))))

(declare-fun b!4426426 () Bool)

(declare-fun e!2756125 () Bool)

(declare-fun e!2756120 () Bool)

(assert (=> b!4426426 (= e!2756125 e!2756120)))

(declare-fun res!1830158 () Bool)

(assert (=> b!4426426 (=> (not res!1830158) (not e!2756120))))

(declare-fun e!2756121 () Bool)

(assert (=> b!4426426 (= res!1830158 e!2756121)))

(declare-fun res!1830157 () Bool)

(assert (=> b!4426426 (=> res!1830157 e!2756121)))

(declare-fun e!2756123 () Bool)

(assert (=> b!4426426 (= res!1830157 e!2756123)))

(declare-fun res!1830166 () Bool)

(assert (=> b!4426426 (=> (not res!1830166) (not e!2756123))))

(declare-fun lt!1625755 () Bool)

(assert (=> b!4426426 (= res!1830166 lt!1625755)))

(declare-fun contains!12106 (ListLongMap!2147 (_ BitVec 64)) Bool)

(assert (=> b!4426426 (= lt!1625755 (contains!12106 lm!1616 hash!366))))

(declare-fun b!4426427 () Bool)

(declare-fun e!2756126 () Bool)

(assert (=> b!4426427 (= e!2756124 e!2756126)))

(declare-fun res!1830167 () Bool)

(assert (=> b!4426427 (=> res!1830167 e!2756126)))

(declare-fun lt!1625744 () tuple2!49400)

(declare-fun head!9226 (ListLongMap!2147) tuple2!49400)

(assert (=> b!4426427 (= res!1830167 (= (head!9226 lm!1616) lt!1625744))))

(declare-datatypes ((ListMap!2741 0))(
  ( (ListMap!2742 (toList!3498 List!49721)) )
))
(declare-fun lt!1625757 () ListMap!2741)

(declare-fun lt!1625749 () ListMap!2741)

(declare-fun eq!413 (ListMap!2741 ListMap!2741) Bool)

(assert (=> b!4426427 (eq!413 lt!1625757 lt!1625749)))

(declare-fun lt!1625747 () ListMap!2741)

(declare-fun lt!1625751 () tuple2!49398)

(declare-fun +!1094 (ListMap!2741 tuple2!49398) ListMap!2741)

(assert (=> b!4426427 (= lt!1625749 (+!1094 lt!1625747 lt!1625751))))

(declare-fun newValue!93 () V!11206)

(assert (=> b!4426427 (= lt!1625751 (tuple2!49399 key!3717 newValue!93))))

(declare-fun lt!1625754 () ListLongMap!2147)

(declare-fun extractMap!816 (List!49722) ListMap!2741)

(assert (=> b!4426427 (= lt!1625747 (extractMap!816 (toList!3497 lt!1625754)))))

(declare-fun +!1095 (ListLongMap!2147 tuple2!49400) ListLongMap!2147)

(assert (=> b!4426427 (= lt!1625757 (extractMap!816 (toList!3497 (+!1095 lt!1625754 lt!1625744))))))

(declare-fun newBucket!194 () List!49721)

(declare-fun lt!1625750 () Unit!82107)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!129 (ListLongMap!2147 (_ BitVec 64) List!49721 K!10960 V!11206 Hashable!5149) Unit!82107)

(assert (=> b!4426427 (= lt!1625750 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!129 lt!1625754 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7282 (ListLongMap!2147) ListLongMap!2147)

(assert (=> b!4426427 (= lt!1625754 (tail!7282 lm!1616))))

(declare-fun lt!1625748 () Unit!82107)

(declare-fun e!2756127 () Unit!82107)

(assert (=> b!4426427 (= lt!1625748 e!2756127)))

(declare-fun c!753481 () Bool)

(declare-fun contains!12107 (ListMap!2741 K!10960) Bool)

(declare-fun tail!7283 (List!49722) List!49722)

(assert (=> b!4426427 (= c!753481 (contains!12107 (extractMap!816 (tail!7283 (toList!3497 lm!1616))) key!3717))))

(declare-fun b!4426428 () Bool)

(declare-fun res!1830159 () Bool)

(assert (=> b!4426428 (=> (not res!1830159) (not e!2756118))))

(declare-fun allKeysSameHashInMap!861 (ListLongMap!2147 Hashable!5149) Bool)

(assert (=> b!4426428 (= res!1830159 (allKeysSameHashInMap!861 lm!1616 hashF!1220))))

(declare-fun b!4426429 () Bool)

(declare-fun e!2756117 () Bool)

(declare-fun tp!1333266 () Bool)

(assert (=> b!4426429 (= e!2756117 tp!1333266)))

(declare-fun b!4426430 () Bool)

(declare-fun res!1830161 () Bool)

(assert (=> b!4426430 (=> (not res!1830161) (not e!2756118))))

(declare-fun allKeysSameHash!715 (List!49721 (_ BitVec 64) Hashable!5149) Bool)

(assert (=> b!4426430 (= res!1830161 (allKeysSameHash!715 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4426431 () Bool)

(assert (=> b!4426431 (= e!2756126 e!2756128)))

(declare-fun res!1830165 () Bool)

(assert (=> b!4426431 (=> res!1830165 e!2756128)))

(declare-fun lt!1625759 () ListMap!2741)

(declare-fun lt!1625753 () ListMap!2741)

(assert (=> b!4426431 (= res!1830165 (not (eq!413 lt!1625759 lt!1625753)))))

(declare-fun addToMapMapFromBucket!392 (List!49721 ListMap!2741) ListMap!2741)

(assert (=> b!4426431 (= lt!1625753 (addToMapMapFromBucket!392 (_2!27994 (h!55287 (toList!3497 lm!1616))) lt!1625747))))

(declare-fun b!4426433 () Bool)

(assert (=> b!4426433 (= e!2756122 true)))

(assert (=> b!4426433 (eq!413 (addToMapMapFromBucket!392 (_2!27994 (h!55287 (toList!3497 lm!1616))) lt!1625749) (+!1094 lt!1625753 lt!1625751))))

(declare-fun lt!1625752 () Unit!82107)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!184 (ListMap!2741 K!10960 V!11206 List!49721) Unit!82107)

(assert (=> b!4426433 (= lt!1625752 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!184 lt!1625747 key!3717 newValue!93 (_2!27994 (h!55287 (toList!3497 lm!1616)))))))

(declare-fun b!4426434 () Bool)

(declare-fun Unit!82109 () Unit!82107)

(assert (=> b!4426434 (= e!2756127 Unit!82109)))

(declare-fun lt!1625758 () Unit!82107)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!42 (ListLongMap!2147 K!10960 Hashable!5149) Unit!82107)

(assert (=> b!4426434 (= lt!1625758 (lemmaExtractTailMapContainsThenExtractMapDoes!42 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4426434 false))

(declare-fun b!4426435 () Bool)

(declare-fun res!1830160 () Bool)

(assert (=> b!4426435 (=> (not res!1830160) (not e!2756120))))

(declare-fun noDuplicateKeys!755 (List!49721) Bool)

(assert (=> b!4426435 (= res!1830160 (noDuplicateKeys!755 newBucket!194))))

(declare-fun b!4426436 () Bool)

(declare-fun res!1830168 () Bool)

(assert (=> b!4426436 (=> (not res!1830168) (not e!2756120))))

(declare-fun lambda!154204 () Int)

(declare-fun forall!9572 (List!49722 Int) Bool)

(assert (=> b!4426436 (= res!1830168 (forall!9572 (toList!3497 lm!1616) lambda!154204))))

(declare-fun b!4426437 () Bool)

(declare-fun Unit!82110 () Unit!82107)

(assert (=> b!4426437 (= e!2756127 Unit!82110)))

(declare-fun b!4426438 () Bool)

(assert (=> b!4426438 (= e!2756123 (= newBucket!194 (Cons!49597 (tuple2!49399 key!3717 newValue!93) (apply!11607 lm!1616 hash!366))))))

(declare-fun res!1830162 () Bool)

(assert (=> start!431928 (=> (not res!1830162) (not e!2756118))))

(assert (=> start!431928 (= res!1830162 (forall!9572 (toList!3497 lm!1616) lambda!154204))))

(assert (=> start!431928 e!2756118))

(declare-fun tp_is_empty!26265 () Bool)

(assert (=> start!431928 tp_is_empty!26265))

(declare-fun tp_is_empty!26267 () Bool)

(assert (=> start!431928 tp_is_empty!26267))

(declare-fun e!2756119 () Bool)

(assert (=> start!431928 e!2756119))

(declare-fun inv!65146 (ListLongMap!2147) Bool)

(assert (=> start!431928 (and (inv!65146 lm!1616) e!2756117)))

(assert (=> start!431928 true))

(declare-fun b!4426432 () Bool)

(assert (=> b!4426432 (= e!2756118 e!2756125)))

(declare-fun res!1830170 () Bool)

(assert (=> b!4426432 (=> (not res!1830170) (not e!2756125))))

(assert (=> b!4426432 (= res!1830170 (not (contains!12107 lt!1625759 key!3717)))))

(assert (=> b!4426432 (= lt!1625759 (extractMap!816 (toList!3497 lm!1616)))))

(declare-fun b!4426439 () Bool)

(assert (=> b!4426439 (= e!2756121 (and (not lt!1625755) (= newBucket!194 (Cons!49597 (tuple2!49399 key!3717 newValue!93) Nil!49597))))))

(declare-fun b!4426440 () Bool)

(declare-fun tp!1333265 () Bool)

(assert (=> b!4426440 (= e!2756119 (and tp_is_empty!26267 tp_is_empty!26265 tp!1333265))))

(declare-fun b!4426441 () Bool)

(assert (=> b!4426441 (= e!2756120 (not e!2756124))))

(declare-fun res!1830171 () Bool)

(assert (=> b!4426441 (=> res!1830171 e!2756124)))

(declare-fun lt!1625746 () ListLongMap!2147)

(assert (=> b!4426441 (= res!1830171 (not (forall!9572 (toList!3497 lt!1625746) lambda!154204)))))

(assert (=> b!4426441 (forall!9572 (toList!3497 lt!1625746) lambda!154204)))

(assert (=> b!4426441 (= lt!1625746 (+!1095 lm!1616 lt!1625744))))

(assert (=> b!4426441 (= lt!1625744 (tuple2!49401 hash!366 newBucket!194))))

(declare-fun lt!1625756 () Unit!82107)

(declare-fun addValidProp!399 (ListLongMap!2147 Int (_ BitVec 64) List!49721) Unit!82107)

(assert (=> b!4426441 (= lt!1625756 (addValidProp!399 lm!1616 lambda!154204 hash!366 newBucket!194))))

(assert (= (and start!431928 res!1830162) b!4426428))

(assert (= (and b!4426428 res!1830159) b!4426425))

(assert (= (and b!4426425 res!1830169) b!4426430))

(assert (= (and b!4426430 res!1830161) b!4426432))

(assert (= (and b!4426432 res!1830170) b!4426426))

(assert (= (and b!4426426 res!1830166) b!4426438))

(assert (= (and b!4426426 (not res!1830157)) b!4426439))

(assert (= (and b!4426426 res!1830158) b!4426435))

(assert (= (and b!4426435 res!1830160) b!4426436))

(assert (= (and b!4426436 res!1830168) b!4426441))

(assert (= (and b!4426441 (not res!1830171)) b!4426423))

(assert (= (and b!4426423 (not res!1830163)) b!4426427))

(assert (= (and b!4426427 c!753481) b!4426434))

(assert (= (and b!4426427 (not c!753481)) b!4426437))

(assert (= (and b!4426427 (not res!1830167)) b!4426431))

(assert (= (and b!4426431 (not res!1830165)) b!4426424))

(assert (= (and b!4426424 (not res!1830164)) b!4426433))

(assert (= (and start!431928 ((_ is Cons!49597) newBucket!194)) b!4426440))

(assert (= start!431928 b!4426429))

(declare-fun m!5107727 () Bool)

(assert (=> b!4426435 m!5107727))

(declare-fun m!5107729 () Bool)

(assert (=> b!4426430 m!5107729))

(declare-fun m!5107731 () Bool)

(assert (=> b!4426438 m!5107731))

(declare-fun m!5107733 () Bool)

(assert (=> b!4426441 m!5107733))

(assert (=> b!4426441 m!5107733))

(declare-fun m!5107735 () Bool)

(assert (=> b!4426441 m!5107735))

(declare-fun m!5107737 () Bool)

(assert (=> b!4426441 m!5107737))

(declare-fun m!5107739 () Bool)

(assert (=> b!4426434 m!5107739))

(declare-fun m!5107741 () Bool)

(assert (=> b!4426432 m!5107741))

(declare-fun m!5107743 () Bool)

(assert (=> b!4426432 m!5107743))

(declare-fun m!5107745 () Bool)

(assert (=> b!4426436 m!5107745))

(declare-fun m!5107747 () Bool)

(assert (=> b!4426426 m!5107747))

(declare-fun m!5107749 () Bool)

(assert (=> b!4426424 m!5107749))

(declare-fun m!5107751 () Bool)

(assert (=> b!4426424 m!5107751))

(assert (=> b!4426424 m!5107751))

(declare-fun m!5107753 () Bool)

(assert (=> b!4426424 m!5107753))

(declare-fun m!5107755 () Bool)

(assert (=> b!4426424 m!5107755))

(declare-fun m!5107757 () Bool)

(assert (=> b!4426431 m!5107757))

(declare-fun m!5107759 () Bool)

(assert (=> b!4426431 m!5107759))

(declare-fun m!5107761 () Bool)

(assert (=> b!4426433 m!5107761))

(declare-fun m!5107763 () Bool)

(assert (=> b!4426433 m!5107763))

(assert (=> b!4426433 m!5107761))

(assert (=> b!4426433 m!5107763))

(declare-fun m!5107765 () Bool)

(assert (=> b!4426433 m!5107765))

(declare-fun m!5107767 () Bool)

(assert (=> b!4426433 m!5107767))

(declare-fun m!5107769 () Bool)

(assert (=> b!4426428 m!5107769))

(assert (=> start!431928 m!5107745))

(declare-fun m!5107771 () Bool)

(assert (=> start!431928 m!5107771))

(declare-fun m!5107773 () Bool)

(assert (=> b!4426425 m!5107773))

(declare-fun m!5107775 () Bool)

(assert (=> b!4426427 m!5107775))

(declare-fun m!5107777 () Bool)

(assert (=> b!4426427 m!5107777))

(declare-fun m!5107779 () Bool)

(assert (=> b!4426427 m!5107779))

(declare-fun m!5107781 () Bool)

(assert (=> b!4426427 m!5107781))

(declare-fun m!5107783 () Bool)

(assert (=> b!4426427 m!5107783))

(declare-fun m!5107785 () Bool)

(assert (=> b!4426427 m!5107785))

(declare-fun m!5107787 () Bool)

(assert (=> b!4426427 m!5107787))

(declare-fun m!5107789 () Bool)

(assert (=> b!4426427 m!5107789))

(declare-fun m!5107791 () Bool)

(assert (=> b!4426427 m!5107791))

(assert (=> b!4426427 m!5107777))

(declare-fun m!5107793 () Bool)

(assert (=> b!4426427 m!5107793))

(declare-fun m!5107795 () Bool)

(assert (=> b!4426427 m!5107795))

(assert (=> b!4426427 m!5107775))

(check-sat (not b!4426430) (not b!4426436) (not b!4426438) (not b!4426427) tp_is_empty!26265 (not b!4426440) (not b!4426432) (not b!4426441) tp_is_empty!26267 (not b!4426425) (not start!431928) (not b!4426424) (not b!4426433) (not b!4426426) (not b!4426428) (not b!4426431) (not b!4426434) (not b!4426429) (not b!4426435))
(check-sat)
