; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!442048 () Bool)

(assert start!442048)

(declare-fun b!4487150 () Bool)

(declare-fun e!2794718 () Bool)

(declare-fun e!2794712 () Bool)

(assert (=> b!4487150 (= e!2794718 (not e!2794712))))

(declare-fun res!1864134 () Bool)

(assert (=> b!4487150 (=> res!1864134 e!2794712)))

(declare-datatypes ((K!11885 0))(
  ( (K!11886 (val!17779 Int)) )
))
(declare-fun key!3287 () K!11885)

(declare-datatypes ((V!12131 0))(
  ( (V!12132 (val!17780 Int)) )
))
(declare-datatypes ((tuple2!50826 0))(
  ( (tuple2!50827 (_1!28707 K!11885) (_2!28707 V!12131)) )
))
(declare-datatypes ((List!50594 0))(
  ( (Nil!50470) (Cons!50470 (h!56271 tuple2!50826) (t!357548 List!50594)) )
))
(declare-fun lt!1672114 () List!50594)

(declare-fun newBucket!178 () List!50594)

(declare-fun removePairForKey!725 (List!50594 K!11885) List!50594)

(assert (=> b!4487150 (= res!1864134 (not (= newBucket!178 (removePairForKey!725 lt!1672114 key!3287))))))

(declare-datatypes ((Unit!90258 0))(
  ( (Unit!90259) )
))
(declare-fun lt!1672113 () Unit!90258)

(declare-fun lambda!166663 () Int)

(declare-datatypes ((tuple2!50828 0))(
  ( (tuple2!50829 (_1!28708 (_ BitVec 64)) (_2!28708 List!50594)) )
))
(declare-fun lt!1672117 () tuple2!50828)

(declare-datatypes ((List!50595 0))(
  ( (Nil!50471) (Cons!50471 (h!56272 tuple2!50828) (t!357549 List!50595)) )
))
(declare-datatypes ((ListLongMap!2835 0))(
  ( (ListLongMap!2836 (toList!4203 List!50595)) )
))
(declare-fun lm!1477 () ListLongMap!2835)

(declare-fun forallContained!2377 (List!50595 Int tuple2!50828) Unit!90258)

(assert (=> b!4487150 (= lt!1672113 (forallContained!2377 (toList!4203 lm!1477) lambda!166663 lt!1672117))))

(declare-fun contains!13101 (List!50595 tuple2!50828) Bool)

(assert (=> b!4487150 (contains!13101 (toList!4203 lm!1477) lt!1672117)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4487150 (= lt!1672117 (tuple2!50829 hash!344 lt!1672114))))

(declare-fun lt!1672110 () Unit!90258)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!610 (List!50595 (_ BitVec 64) List!50594) Unit!90258)

(assert (=> b!4487150 (= lt!1672110 (lemmaGetValueByKeyImpliesContainsTuple!610 (toList!4203 lm!1477) hash!344 lt!1672114))))

(declare-fun apply!11835 (ListLongMap!2835 (_ BitVec 64)) List!50594)

(assert (=> b!4487150 (= lt!1672114 (apply!11835 lm!1477 hash!344))))

(declare-fun lt!1672111 () (_ BitVec 64))

(declare-fun contains!13102 (ListLongMap!2835 (_ BitVec 64)) Bool)

(assert (=> b!4487150 (contains!13102 lm!1477 lt!1672111)))

(declare-datatypes ((Hashable!5493 0))(
  ( (HashableExt!5492 (__x!31196 Int)) )
))
(declare-fun hashF!1107 () Hashable!5493)

(declare-fun lt!1672109 () Unit!90258)

(declare-fun lemmaInGenMapThenLongMapContainsHash!172 (ListLongMap!2835 K!11885 Hashable!5493) Unit!90258)

(assert (=> b!4487150 (= lt!1672109 (lemmaInGenMapThenLongMapContainsHash!172 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4487151 () Bool)

(declare-fun res!1864142 () Bool)

(assert (=> b!4487151 (=> (not res!1864142) (not e!2794718))))

(declare-fun allKeysSameHash!952 (List!50594 (_ BitVec 64) Hashable!5493) Bool)

(assert (=> b!4487151 (= res!1864142 (allKeysSameHash!952 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4487152 () Bool)

(declare-fun res!1864130 () Bool)

(declare-fun e!2794722 () Bool)

(assert (=> b!4487152 (=> res!1864130 e!2794722)))

(assert (=> b!4487152 (= res!1864130 (not (contains!13101 (t!357549 (toList!4203 lm!1477)) lt!1672117)))))

(declare-fun res!1864141 () Bool)

(declare-fun e!2794721 () Bool)

(assert (=> start!442048 (=> (not res!1864141) (not e!2794721))))

(declare-fun forall!10118 (List!50595 Int) Bool)

(assert (=> start!442048 (= res!1864141 (forall!10118 (toList!4203 lm!1477) lambda!166663))))

(assert (=> start!442048 e!2794721))

(assert (=> start!442048 true))

(declare-fun e!2794719 () Bool)

(declare-fun inv!66069 (ListLongMap!2835) Bool)

(assert (=> start!442048 (and (inv!66069 lm!1477) e!2794719)))

(declare-fun tp_is_empty!27669 () Bool)

(assert (=> start!442048 tp_is_empty!27669))

(declare-fun e!2794713 () Bool)

(assert (=> start!442048 e!2794713))

(declare-fun b!4487153 () Bool)

(declare-fun e!2794714 () Bool)

(declare-fun e!2794723 () Bool)

(assert (=> b!4487153 (= e!2794714 e!2794723)))

(declare-fun res!1864136 () Bool)

(assert (=> b!4487153 (=> res!1864136 e!2794723)))

(declare-fun containsKeyBiggerList!78 (List!50595 K!11885) Bool)

(assert (=> b!4487153 (= res!1864136 (not (containsKeyBiggerList!78 (t!357549 (toList!4203 lm!1477)) key!3287)))))

(declare-fun lt!1672112 () ListLongMap!2835)

(assert (=> b!4487153 (containsKeyBiggerList!78 (toList!4203 lt!1672112) key!3287)))

(declare-fun lt!1672120 () Unit!90258)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!14 (ListLongMap!2835 K!11885 Hashable!5493) Unit!90258)

(assert (=> b!4487153 (= lt!1672120 (lemmaInLongMapThenContainsKeyBiggerList!14 lt!1672112 key!3287 hashF!1107))))

(declare-fun b!4487154 () Bool)

(assert (=> b!4487154 (= e!2794721 e!2794718)))

(declare-fun res!1864144 () Bool)

(assert (=> b!4487154 (=> (not res!1864144) (not e!2794718))))

(assert (=> b!4487154 (= res!1864144 (= lt!1672111 hash!344))))

(declare-fun hash!2609 (Hashable!5493 K!11885) (_ BitVec 64))

(assert (=> b!4487154 (= lt!1672111 (hash!2609 hashF!1107 key!3287))))

(declare-fun b!4487155 () Bool)

(declare-fun e!2794715 () Bool)

(assert (=> b!4487155 (= e!2794715 true)))

(declare-fun b!4487156 () Bool)

(declare-fun res!1864137 () Bool)

(assert (=> b!4487156 (=> (not res!1864137) (not e!2794721))))

(declare-fun allKeysSameHashInMap!1205 (ListLongMap!2835 Hashable!5493) Bool)

(assert (=> b!4487156 (= res!1864137 (allKeysSameHashInMap!1205 lm!1477 hashF!1107))))

(declare-fun b!4487157 () Bool)

(declare-fun e!2794717 () Bool)

(assert (=> b!4487157 (= e!2794723 e!2794717)))

(declare-fun res!1864139 () Bool)

(assert (=> b!4487157 (=> res!1864139 e!2794717)))

(declare-datatypes ((ListMap!3465 0))(
  ( (ListMap!3466 (toList!4204 List!50594)) )
))
(declare-fun contains!13103 (ListMap!3465 K!11885) Bool)

(declare-fun extractMap!1154 (List!50595) ListMap!3465)

(assert (=> b!4487157 (= res!1864139 (not (contains!13103 (extractMap!1154 (t!357549 (toList!4203 lm!1477))) key!3287)))))

(assert (=> b!4487157 (contains!13103 (extractMap!1154 (toList!4203 lt!1672112)) key!3287)))

(declare-fun lt!1672108 () Unit!90258)

(declare-fun lemmaListContainsThenExtractedMapContains!68 (ListLongMap!2835 K!11885 Hashable!5493) Unit!90258)

(assert (=> b!4487157 (= lt!1672108 (lemmaListContainsThenExtractedMapContains!68 lt!1672112 key!3287 hashF!1107))))

(declare-fun b!4487158 () Bool)

(declare-fun tp!1337093 () Bool)

(assert (=> b!4487158 (= e!2794719 tp!1337093)))

(declare-fun b!4487159 () Bool)

(assert (=> b!4487159 (= e!2794717 e!2794715)))

(declare-fun res!1864138 () Bool)

(assert (=> b!4487159 (=> res!1864138 e!2794715)))

(declare-fun lt!1672118 () List!50594)

(assert (=> b!4487159 (= res!1864138 (not (= newBucket!178 (removePairForKey!725 lt!1672118 key!3287))))))

(declare-fun lt!1672104 () tuple2!50828)

(declare-fun lt!1672106 () Unit!90258)

(assert (=> b!4487159 (= lt!1672106 (forallContained!2377 (toList!4203 lt!1672112) lambda!166663 lt!1672104))))

(assert (=> b!4487159 (contains!13101 (toList!4203 lt!1672112) lt!1672104)))

(assert (=> b!4487159 (= lt!1672104 (tuple2!50829 hash!344 lt!1672118))))

(declare-fun lt!1672119 () Unit!90258)

(assert (=> b!4487159 (= lt!1672119 (lemmaGetValueByKeyImpliesContainsTuple!610 (toList!4203 lt!1672112) hash!344 lt!1672118))))

(assert (=> b!4487159 (contains!13102 lt!1672112 lt!1672111)))

(declare-fun lt!1672105 () Unit!90258)

(assert (=> b!4487159 (= lt!1672105 (lemmaInGenMapThenLongMapContainsHash!172 lt!1672112 key!3287 hashF!1107))))

(declare-fun b!4487160 () Bool)

(assert (=> b!4487160 (= e!2794722 e!2794714)))

(declare-fun res!1864146 () Bool)

(assert (=> b!4487160 (=> res!1864146 e!2794714)))

(declare-fun lt!1672115 () Bool)

(assert (=> b!4487160 (= res!1864146 lt!1672115)))

(declare-fun lt!1672116 () Unit!90258)

(declare-fun e!2794720 () Unit!90258)

(assert (=> b!4487160 (= lt!1672116 e!2794720)))

(declare-fun c!764227 () Bool)

(assert (=> b!4487160 (= c!764227 lt!1672115)))

(declare-fun containsKey!1614 (List!50594 K!11885) Bool)

(assert (=> b!4487160 (= lt!1672115 (not (containsKey!1614 lt!1672114 key!3287)))))

(declare-fun b!4487161 () Bool)

(declare-fun Unit!90260 () Unit!90258)

(assert (=> b!4487161 (= e!2794720 Unit!90260)))

(declare-fun b!4487162 () Bool)

(declare-fun e!2794716 () Bool)

(assert (=> b!4487162 (= e!2794712 e!2794716)))

(declare-fun res!1864140 () Bool)

(assert (=> b!4487162 (=> res!1864140 e!2794716)))

(assert (=> b!4487162 (= res!1864140 (not (contains!13102 lt!1672112 hash!344)))))

(declare-fun tail!7621 (ListLongMap!2835) ListLongMap!2835)

(assert (=> b!4487162 (= lt!1672112 (tail!7621 lm!1477))))

(declare-fun b!4487163 () Bool)

(declare-fun res!1864143 () Bool)

(assert (=> b!4487163 (=> res!1864143 e!2794712)))

(declare-fun noDuplicateKeys!1098 (List!50594) Bool)

(assert (=> b!4487163 (= res!1864143 (not (noDuplicateKeys!1098 newBucket!178)))))

(declare-fun b!4487164 () Bool)

(declare-fun res!1864133 () Bool)

(assert (=> b!4487164 (=> (not res!1864133) (not e!2794721))))

(assert (=> b!4487164 (= res!1864133 (contains!13103 (extractMap!1154 (toList!4203 lm!1477)) key!3287))))

(declare-fun b!4487165 () Bool)

(declare-fun res!1864132 () Bool)

(assert (=> b!4487165 (=> res!1864132 e!2794717)))

(assert (=> b!4487165 (= res!1864132 (not (allKeysSameHashInMap!1205 lt!1672112 hashF!1107)))))

(declare-fun b!4487166 () Bool)

(declare-fun res!1864135 () Bool)

(assert (=> b!4487166 (=> res!1864135 e!2794712)))

(get-info :version)

(assert (=> b!4487166 (= res!1864135 (or ((_ is Nil!50471) (toList!4203 lm!1477)) (= (_1!28708 (h!56272 (toList!4203 lm!1477))) hash!344)))))

(declare-fun b!4487167 () Bool)

(assert (=> b!4487167 (= e!2794716 e!2794722)))

(declare-fun res!1864145 () Bool)

(assert (=> b!4487167 (=> res!1864145 e!2794722)))

(assert (=> b!4487167 (= res!1864145 (not (= lt!1672118 lt!1672114)))))

(assert (=> b!4487167 (= lt!1672118 (apply!11835 lt!1672112 hash!344))))

(declare-fun tp_is_empty!27671 () Bool)

(declare-fun tp!1337092 () Bool)

(declare-fun b!4487168 () Bool)

(assert (=> b!4487168 (= e!2794713 (and tp_is_empty!27669 tp_is_empty!27671 tp!1337092))))

(declare-fun b!4487169 () Bool)

(declare-fun res!1864131 () Bool)

(assert (=> b!4487169 (=> res!1864131 e!2794717)))

(assert (=> b!4487169 (= res!1864131 (not (forall!10118 (toList!4203 lt!1672112) lambda!166663)))))

(declare-fun b!4487170 () Bool)

(declare-fun Unit!90261 () Unit!90258)

(assert (=> b!4487170 (= e!2794720 Unit!90261)))

(declare-fun lt!1672107 () Unit!90258)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!86 (ListLongMap!2835 K!11885 Hashable!5493) Unit!90258)

(assert (=> b!4487170 (= lt!1672107 (lemmaNotInItsHashBucketThenNotInMap!86 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4487170 false))

(assert (= (and start!442048 res!1864141) b!4487156))

(assert (= (and b!4487156 res!1864137) b!4487164))

(assert (= (and b!4487164 res!1864133) b!4487154))

(assert (= (and b!4487154 res!1864144) b!4487151))

(assert (= (and b!4487151 res!1864142) b!4487150))

(assert (= (and b!4487150 (not res!1864134)) b!4487163))

(assert (= (and b!4487163 (not res!1864143)) b!4487166))

(assert (= (and b!4487166 (not res!1864135)) b!4487162))

(assert (= (and b!4487162 (not res!1864140)) b!4487167))

(assert (= (and b!4487167 (not res!1864145)) b!4487152))

(assert (= (and b!4487152 (not res!1864130)) b!4487160))

(assert (= (and b!4487160 c!764227) b!4487170))

(assert (= (and b!4487160 (not c!764227)) b!4487161))

(assert (= (and b!4487160 (not res!1864146)) b!4487153))

(assert (= (and b!4487153 (not res!1864136)) b!4487157))

(assert (= (and b!4487157 (not res!1864139)) b!4487169))

(assert (= (and b!4487169 (not res!1864131)) b!4487165))

(assert (= (and b!4487165 (not res!1864132)) b!4487159))

(assert (= (and b!4487159 (not res!1864138)) b!4487155))

(assert (= start!442048 b!4487158))

(assert (= (and start!442048 ((_ is Cons!50470) newBucket!178)) b!4487168))

(declare-fun m!5208401 () Bool)

(assert (=> b!4487162 m!5208401))

(declare-fun m!5208403 () Bool)

(assert (=> b!4487162 m!5208403))

(declare-fun m!5208405 () Bool)

(assert (=> b!4487151 m!5208405))

(declare-fun m!5208407 () Bool)

(assert (=> b!4487159 m!5208407))

(declare-fun m!5208409 () Bool)

(assert (=> b!4487159 m!5208409))

(declare-fun m!5208411 () Bool)

(assert (=> b!4487159 m!5208411))

(declare-fun m!5208413 () Bool)

(assert (=> b!4487159 m!5208413))

(declare-fun m!5208415 () Bool)

(assert (=> b!4487159 m!5208415))

(declare-fun m!5208417 () Bool)

(assert (=> b!4487159 m!5208417))

(declare-fun m!5208419 () Bool)

(assert (=> b!4487157 m!5208419))

(declare-fun m!5208421 () Bool)

(assert (=> b!4487157 m!5208421))

(assert (=> b!4487157 m!5208419))

(declare-fun m!5208423 () Bool)

(assert (=> b!4487157 m!5208423))

(declare-fun m!5208425 () Bool)

(assert (=> b!4487157 m!5208425))

(assert (=> b!4487157 m!5208423))

(declare-fun m!5208427 () Bool)

(assert (=> b!4487157 m!5208427))

(declare-fun m!5208429 () Bool)

(assert (=> b!4487153 m!5208429))

(declare-fun m!5208431 () Bool)

(assert (=> b!4487153 m!5208431))

(declare-fun m!5208433 () Bool)

(assert (=> b!4487153 m!5208433))

(declare-fun m!5208435 () Bool)

(assert (=> b!4487150 m!5208435))

(declare-fun m!5208437 () Bool)

(assert (=> b!4487150 m!5208437))

(declare-fun m!5208439 () Bool)

(assert (=> b!4487150 m!5208439))

(declare-fun m!5208441 () Bool)

(assert (=> b!4487150 m!5208441))

(declare-fun m!5208443 () Bool)

(assert (=> b!4487150 m!5208443))

(declare-fun m!5208445 () Bool)

(assert (=> b!4487150 m!5208445))

(declare-fun m!5208447 () Bool)

(assert (=> b!4487150 m!5208447))

(declare-fun m!5208449 () Bool)

(assert (=> start!442048 m!5208449))

(declare-fun m!5208451 () Bool)

(assert (=> start!442048 m!5208451))

(declare-fun m!5208453 () Bool)

(assert (=> b!4487169 m!5208453))

(declare-fun m!5208455 () Bool)

(assert (=> b!4487156 m!5208455))

(declare-fun m!5208457 () Bool)

(assert (=> b!4487163 m!5208457))

(declare-fun m!5208459 () Bool)

(assert (=> b!4487165 m!5208459))

(declare-fun m!5208461 () Bool)

(assert (=> b!4487160 m!5208461))

(declare-fun m!5208463 () Bool)

(assert (=> b!4487152 m!5208463))

(declare-fun m!5208465 () Bool)

(assert (=> b!4487164 m!5208465))

(assert (=> b!4487164 m!5208465))

(declare-fun m!5208467 () Bool)

(assert (=> b!4487164 m!5208467))

(declare-fun m!5208469 () Bool)

(assert (=> b!4487167 m!5208469))

(declare-fun m!5208471 () Bool)

(assert (=> b!4487170 m!5208471))

(declare-fun m!5208473 () Bool)

(assert (=> b!4487154 m!5208473))

(check-sat (not b!4487160) (not b!4487170) (not b!4487164) (not b!4487159) (not b!4487152) (not b!4487169) (not b!4487151) (not b!4487168) tp_is_empty!27669 (not b!4487157) tp_is_empty!27671 (not b!4487163) (not b!4487162) (not b!4487150) (not b!4487165) (not b!4487167) (not b!4487158) (not start!442048) (not b!4487153) (not b!4487156) (not b!4487154))
(check-sat)
