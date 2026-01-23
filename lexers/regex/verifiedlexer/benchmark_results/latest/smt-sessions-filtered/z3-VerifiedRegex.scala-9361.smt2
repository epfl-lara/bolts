; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497110 () Bool)

(assert start!497110)

(declare-fun b!4809201 () Bool)

(declare-fun b_free!130067 () Bool)

(declare-fun b_next!130857 () Bool)

(assert (=> b!4809201 (= b_free!130067 (not b_next!130857))))

(declare-fun tp!1360110 () Bool)

(declare-fun b_and!341845 () Bool)

(assert (=> b!4809201 (= tp!1360110 b_and!341845)))

(declare-fun b!4809197 () Bool)

(declare-fun b_free!130069 () Bool)

(declare-fun b_next!130859 () Bool)

(assert (=> b!4809197 (= b_free!130069 (not b_next!130859))))

(declare-fun tp!1360111 () Bool)

(declare-fun b_and!341847 () Bool)

(assert (=> b!4809197 (= tp!1360111 b_and!341847)))

(declare-fun bs!1160012 () Bool)

(declare-fun b!4809189 () Bool)

(declare-fun b!4809199 () Bool)

(assert (= bs!1160012 (and b!4809189 b!4809199)))

(declare-fun lambda!233648 () Int)

(declare-fun lambda!233647 () Int)

(assert (=> bs!1160012 (= lambda!233648 lambda!233647)))

(declare-fun b!4809185 () Bool)

(declare-fun e!3004042 () Bool)

(declare-fun e!3004052 () Bool)

(assert (=> b!4809185 (= e!3004042 e!3004052)))

(declare-fun res!2045807 () Bool)

(assert (=> b!4809185 (=> (not res!2045807) (not e!3004052))))

(declare-datatypes ((K!16094 0))(
  ( (K!16095 (val!21181 Int)) )
))
(declare-datatypes ((V!16340 0))(
  ( (V!16341 (val!21182 Int)) )
))
(declare-datatypes ((tuple2!57316 0))(
  ( (tuple2!57317 (_1!31952 K!16094) (_2!31952 V!16340)) )
))
(declare-datatypes ((List!54616 0))(
  ( (Nil!54492) (Cons!54492 (h!60924 tuple2!57316) (t!362090 List!54616)) )
))
(declare-fun lt!1961680 () List!54616)

(declare-fun key!1652 () K!16094)

(declare-datatypes ((Option!13278 0))(
  ( (None!13277) (Some!13277 (v!48765 tuple2!57316)) )
))
(declare-fun isDefined!10417 (Option!13278) Bool)

(declare-fun getPair!954 (List!54616 K!16094) Option!13278)

(assert (=> b!4809185 (= res!2045807 (isDefined!10417 (getPair!954 lt!1961680 key!1652)))))

(declare-datatypes ((tuple2!57318 0))(
  ( (tuple2!57319 (_1!31953 (_ BitVec 64)) (_2!31953 List!54616)) )
))
(declare-datatypes ((List!54617 0))(
  ( (Nil!54493) (Cons!54493 (h!60925 tuple2!57318) (t!362091 List!54617)) )
))
(declare-datatypes ((ListLongMap!5565 0))(
  ( (ListLongMap!5566 (toList!7111 List!54617)) )
))
(declare-fun lt!1961668 () ListLongMap!5565)

(declare-fun lt!1961672 () (_ BitVec 64))

(declare-fun apply!13119 (ListLongMap!5565 (_ BitVec 64)) List!54616)

(assert (=> b!4809185 (= lt!1961680 (apply!13119 lt!1961668 lt!1961672))))

(declare-fun b!4809186 () Bool)

(declare-fun e!3004050 () Bool)

(declare-fun tp!1360109 () Bool)

(declare-fun mapRes!22253 () Bool)

(assert (=> b!4809186 (= e!3004050 (and tp!1360109 mapRes!22253))))

(declare-fun condMapEmpty!22253 () Bool)

(declare-datatypes ((array!18492 0))(
  ( (array!18493 (arr!8247 (Array (_ BitVec 32) (_ BitVec 64))) (size!36493 (_ BitVec 32))) )
))
(declare-datatypes ((array!18494 0))(
  ( (array!18495 (arr!8248 (Array (_ BitVec 32) List!54616)) (size!36494 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10062 0))(
  ( (LongMapFixedSize!10063 (defaultEntry!5449 Int) (mask!15017 (_ BitVec 32)) (extraKeys!5306 (_ BitVec 32)) (zeroValue!5319 List!54616) (minValue!5319 List!54616) (_size!10087 (_ BitVec 32)) (_keys!5373 array!18492) (_values!5344 array!18494) (_vacant!5096 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19889 0))(
  ( (Cell!19890 (v!48766 LongMapFixedSize!10062)) )
))
(declare-datatypes ((MutLongMap!5031 0))(
  ( (LongMap!5031 (underlying!10269 Cell!19889)) (MutLongMapExt!5030 (__x!33191 Int)) )
))
(declare-datatypes ((Hashable!7042 0))(
  ( (HashableExt!7041 (__x!33192 Int)) )
))
(declare-datatypes ((Cell!19891 0))(
  ( (Cell!19892 (v!48767 MutLongMap!5031)) )
))
(declare-datatypes ((MutableMap!4915 0))(
  ( (MutableMapExt!4914 (__x!33193 Int)) (HashMap!4915 (underlying!10270 Cell!19891) (hashF!13310 Hashable!7042) (_size!10088 (_ BitVec 32)) (defaultValue!5086 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4915)

(declare-fun mapDefault!22253 () List!54616)

(assert (=> b!4809186 (= condMapEmpty!22253 (= (arr!8248 (_values!5344 (v!48766 (underlying!10269 (v!48767 (underlying!10270 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54616)) mapDefault!22253)))))

(declare-fun b!4809188 () Bool)

(declare-fun e!3004044 () Bool)

(declare-fun e!3004053 () Bool)

(assert (=> b!4809188 (= e!3004044 e!3004053)))

(declare-fun res!2045811 () Bool)

(assert (=> b!4809189 (=> (not res!2045811) (not e!3004052))))

(declare-fun forall!12386 (List!54617 Int) Bool)

(assert (=> b!4809189 (= res!2045811 (forall!12386 (toList!7111 lt!1961668) lambda!233648))))

(declare-fun b!4809190 () Bool)

(declare-fun res!2045812 () Bool)

(assert (=> b!4809190 (=> (not res!2045812) (not e!3004052))))

(declare-fun allKeysSameHashInMap!2401 (ListLongMap!5565 Hashable!7042) Bool)

(assert (=> b!4809190 (= res!2045812 (allKeysSameHashInMap!2401 lt!1961668 (hashF!13310 thiss!41921)))))

(declare-fun b!4809191 () Bool)

(declare-datatypes ((Unit!141452 0))(
  ( (Unit!141453) )
))
(declare-fun e!3004047 () Unit!141452)

(declare-fun Unit!141454 () Unit!141452)

(assert (=> b!4809191 (= e!3004047 Unit!141454)))

(declare-fun mapNonEmpty!22253 () Bool)

(declare-fun tp!1360108 () Bool)

(declare-fun tp!1360106 () Bool)

(assert (=> mapNonEmpty!22253 (= mapRes!22253 (and tp!1360108 tp!1360106))))

(declare-fun mapKey!22253 () (_ BitVec 32))

(declare-fun mapRest!22253 () (Array (_ BitVec 32) List!54616))

(declare-fun mapValue!22253 () List!54616)

(assert (=> mapNonEmpty!22253 (= (arr!8248 (_values!5344 (v!48766 (underlying!10269 (v!48767 (underlying!10270 thiss!41921)))))) (store mapRest!22253 mapKey!22253 mapValue!22253))))

(declare-fun b!4809192 () Bool)

(assert (=> b!4809192 (= e!3004052 (not (forall!12386 (toList!7111 lt!1961668) lambda!233648)))))

(declare-fun lt!1961666 () Unit!141452)

(declare-fun lt!1961674 () tuple2!57318)

(declare-fun forallContained!4255 (List!54617 Int tuple2!57318) Unit!141452)

(assert (=> b!4809192 (= lt!1961666 (forallContained!4255 (toList!7111 lt!1961668) lambda!233648 lt!1961674))))

(declare-fun contains!18193 (List!54617 tuple2!57318) Bool)

(assert (=> b!4809192 (contains!18193 (toList!7111 lt!1961668) lt!1961674)))

(assert (=> b!4809192 (= lt!1961674 (tuple2!57319 lt!1961672 lt!1961680))))

(declare-fun lt!1961671 () Unit!141452)

(declare-fun lemmaGetValueImpliesTupleContained!642 (ListLongMap!5565 (_ BitVec 64) List!54616) Unit!141452)

(assert (=> b!4809192 (= lt!1961671 (lemmaGetValueImpliesTupleContained!642 lt!1961668 lt!1961672 lt!1961680))))

(declare-fun b!4809193 () Bool)

(assert (=> b!4809193 false))

(declare-fun lt!1961679 () ListLongMap!5565)

(declare-fun lt!1961676 () List!54616)

(declare-fun lt!1961678 () Unit!141452)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!986 (List!54617 (_ BitVec 64) List!54616) Unit!141452)

(assert (=> b!4809193 (= lt!1961678 (lemmaGetValueByKeyImpliesContainsTuple!986 (toList!7111 lt!1961679) lt!1961672 lt!1961676))))

(declare-datatypes ((Option!13279 0))(
  ( (None!13278) (Some!13278 (v!48768 List!54616)) )
))
(declare-fun isDefined!10418 (Option!13279) Bool)

(declare-fun getValueByKey!2472 (List!54617 (_ BitVec 64)) Option!13279)

(assert (=> b!4809193 (isDefined!10418 (getValueByKey!2472 (toList!7111 lt!1961679) lt!1961672))))

(declare-fun lt!1961677 () Unit!141452)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2260 (List!54617 (_ BitVec 64)) Unit!141452)

(assert (=> b!4809193 (= lt!1961677 (lemmaContainsKeyImpliesGetValueByKeyDefined!2260 (toList!7111 lt!1961679) lt!1961672))))

(declare-fun containsKey!4129 (List!54617 (_ BitVec 64)) Bool)

(assert (=> b!4809193 (containsKey!4129 (toList!7111 lt!1961679) lt!1961672)))

(declare-fun lt!1961673 () Unit!141452)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!257 (List!54617 (_ BitVec 64)) Unit!141452)

(assert (=> b!4809193 (= lt!1961673 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!257 (toList!7111 lt!1961679) lt!1961672))))

(declare-fun Unit!141455 () Unit!141452)

(assert (=> b!4809193 (= e!3004047 Unit!141455)))

(declare-fun b!4809194 () Bool)

(declare-fun res!2045810 () Bool)

(assert (=> b!4809194 (=> (not res!2045810) (not e!3004042))))

(declare-fun contains!18194 (ListLongMap!5565 (_ BitVec 64)) Bool)

(assert (=> b!4809194 (= res!2045810 (contains!18194 lt!1961668 lt!1961672))))

(declare-fun b!4809195 () Bool)

(declare-fun e!3004049 () Bool)

(assert (=> b!4809195 (= e!3004049 e!3004044)))

(declare-fun b!4809196 () Bool)

(declare-fun e!3004048 () Bool)

(assert (=> b!4809196 (= e!3004048 e!3004042)))

(declare-fun res!2045813 () Bool)

(assert (=> b!4809196 (=> (not res!2045813) (not e!3004042))))

(declare-datatypes ((ListMap!6551 0))(
  ( (ListMap!6552 (toList!7112 List!54616)) )
))
(declare-fun contains!18195 (ListMap!6551 K!16094) Bool)

(declare-fun extractMap!2527 (List!54617) ListMap!6551)

(assert (=> b!4809196 (= res!2045813 (not (contains!18195 (extractMap!2527 (toList!7111 lt!1961668)) key!1652)))))

(declare-fun map!12385 (MutLongMap!5031) ListLongMap!5565)

(assert (=> b!4809196 (= lt!1961668 (map!12385 (v!48767 (underlying!10270 thiss!41921))))))

(declare-fun lt!1961670 () Unit!141452)

(declare-fun e!3004043 () Unit!141452)

(assert (=> b!4809196 (= lt!1961670 e!3004043)))

(declare-fun c!819660 () Bool)

(declare-fun contains!18196 (MutLongMap!5031 (_ BitVec 64)) Bool)

(assert (=> b!4809196 (= c!819660 (contains!18196 (v!48767 (underlying!10270 thiss!41921)) lt!1961672))))

(declare-fun hash!5113 (Hashable!7042 K!16094) (_ BitVec 64))

(assert (=> b!4809196 (= lt!1961672 (hash!5113 (hashF!13310 thiss!41921) key!1652))))

(declare-fun e!3004051 () Bool)

(declare-fun e!3004046 () Bool)

(assert (=> b!4809197 (= e!3004051 (and e!3004046 tp!1360111))))

(declare-fun b!4809198 () Bool)

(declare-fun res!2045809 () Bool)

(assert (=> b!4809198 (=> (not res!2045809) (not e!3004048))))

(declare-fun valid!4053 (MutableMap!4915) Bool)

(assert (=> b!4809198 (= res!2045809 (valid!4053 thiss!41921))))

(declare-fun mapIsEmpty!22253 () Bool)

(assert (=> mapIsEmpty!22253 mapRes!22253))

(declare-fun res!2045808 () Bool)

(assert (=> start!497110 (=> (not res!2045808) (not e!3004048))))

(get-info :version)

(assert (=> start!497110 (= res!2045808 ((_ is HashMap!4915) thiss!41921))))

(assert (=> start!497110 e!3004048))

(assert (=> start!497110 e!3004051))

(declare-fun tp_is_empty!33931 () Bool)

(assert (=> start!497110 tp_is_empty!33931))

(declare-fun b!4809187 () Bool)

(declare-fun Unit!141456 () Unit!141452)

(assert (=> b!4809187 (= e!3004043 Unit!141456)))

(declare-fun lt!1961669 () tuple2!57318)

(assert (=> b!4809199 (= e!3004043 (forallContained!4255 (toList!7111 lt!1961679) lambda!233647 lt!1961669))))

(assert (=> b!4809199 (= lt!1961679 (map!12385 (v!48767 (underlying!10270 thiss!41921))))))

(declare-fun apply!13120 (MutLongMap!5031 (_ BitVec 64)) List!54616)

(assert (=> b!4809199 (= lt!1961676 (apply!13120 (v!48767 (underlying!10270 thiss!41921)) lt!1961672))))

(assert (=> b!4809199 (= lt!1961669 (tuple2!57319 lt!1961672 lt!1961676))))

(declare-fun c!819659 () Bool)

(assert (=> b!4809199 (= c!819659 (not (contains!18193 (toList!7111 lt!1961679) lt!1961669)))))

(declare-fun lt!1961667 () Unit!141452)

(assert (=> b!4809199 (= lt!1961667 e!3004047)))

(declare-fun b!4809200 () Bool)

(declare-fun lt!1961675 () MutLongMap!5031)

(assert (=> b!4809200 (= e!3004046 (and e!3004049 ((_ is LongMap!5031) lt!1961675)))))

(assert (=> b!4809200 (= lt!1961675 (v!48767 (underlying!10270 thiss!41921)))))

(declare-fun tp!1360112 () Bool)

(declare-fun tp!1360107 () Bool)

(declare-fun array_inv!5953 (array!18492) Bool)

(declare-fun array_inv!5954 (array!18494) Bool)

(assert (=> b!4809201 (= e!3004053 (and tp!1360110 tp!1360112 tp!1360107 (array_inv!5953 (_keys!5373 (v!48766 (underlying!10269 (v!48767 (underlying!10270 thiss!41921)))))) (array_inv!5954 (_values!5344 (v!48766 (underlying!10269 (v!48767 (underlying!10270 thiss!41921)))))) e!3004050))))

(assert (= (and start!497110 res!2045808) b!4809198))

(assert (= (and b!4809198 res!2045809) b!4809196))

(assert (= (and b!4809196 c!819660) b!4809199))

(assert (= (and b!4809196 (not c!819660)) b!4809187))

(assert (= (and b!4809199 c!819659) b!4809193))

(assert (= (and b!4809199 (not c!819659)) b!4809191))

(assert (= (and b!4809196 res!2045813) b!4809194))

(assert (= (and b!4809194 res!2045810) b!4809185))

(assert (= (and b!4809185 res!2045807) b!4809189))

(assert (= (and b!4809189 res!2045811) b!4809190))

(assert (= (and b!4809190 res!2045812) b!4809192))

(assert (= (and b!4809186 condMapEmpty!22253) mapIsEmpty!22253))

(assert (= (and b!4809186 (not condMapEmpty!22253)) mapNonEmpty!22253))

(assert (= b!4809201 b!4809186))

(assert (= b!4809188 b!4809201))

(assert (= b!4809195 b!4809188))

(assert (= (and b!4809200 ((_ is LongMap!5031) (v!48767 (underlying!10270 thiss!41921)))) b!4809195))

(assert (= b!4809197 b!4809200))

(assert (= (and start!497110 ((_ is HashMap!4915) thiss!41921)) b!4809197))

(declare-fun m!5795208 () Bool)

(assert (=> b!4809189 m!5795208))

(declare-fun m!5795210 () Bool)

(assert (=> b!4809201 m!5795210))

(declare-fun m!5795212 () Bool)

(assert (=> b!4809201 m!5795212))

(declare-fun m!5795214 () Bool)

(assert (=> b!4809185 m!5795214))

(assert (=> b!4809185 m!5795214))

(declare-fun m!5795216 () Bool)

(assert (=> b!4809185 m!5795216))

(declare-fun m!5795218 () Bool)

(assert (=> b!4809185 m!5795218))

(declare-fun m!5795220 () Bool)

(assert (=> b!4809190 m!5795220))

(assert (=> b!4809192 m!5795208))

(declare-fun m!5795222 () Bool)

(assert (=> b!4809192 m!5795222))

(declare-fun m!5795224 () Bool)

(assert (=> b!4809192 m!5795224))

(declare-fun m!5795226 () Bool)

(assert (=> b!4809192 m!5795226))

(declare-fun m!5795228 () Bool)

(assert (=> b!4809194 m!5795228))

(declare-fun m!5795230 () Bool)

(assert (=> mapNonEmpty!22253 m!5795230))

(declare-fun m!5795232 () Bool)

(assert (=> b!4809193 m!5795232))

(declare-fun m!5795234 () Bool)

(assert (=> b!4809193 m!5795234))

(declare-fun m!5795236 () Bool)

(assert (=> b!4809193 m!5795236))

(declare-fun m!5795238 () Bool)

(assert (=> b!4809193 m!5795238))

(assert (=> b!4809193 m!5795234))

(declare-fun m!5795240 () Bool)

(assert (=> b!4809193 m!5795240))

(declare-fun m!5795242 () Bool)

(assert (=> b!4809193 m!5795242))

(declare-fun m!5795244 () Bool)

(assert (=> b!4809198 m!5795244))

(declare-fun m!5795246 () Bool)

(assert (=> b!4809196 m!5795246))

(assert (=> b!4809196 m!5795246))

(declare-fun m!5795248 () Bool)

(assert (=> b!4809196 m!5795248))

(declare-fun m!5795250 () Bool)

(assert (=> b!4809196 m!5795250))

(declare-fun m!5795252 () Bool)

(assert (=> b!4809196 m!5795252))

(declare-fun m!5795254 () Bool)

(assert (=> b!4809196 m!5795254))

(declare-fun m!5795256 () Bool)

(assert (=> b!4809199 m!5795256))

(assert (=> b!4809199 m!5795254))

(declare-fun m!5795258 () Bool)

(assert (=> b!4809199 m!5795258))

(declare-fun m!5795260 () Bool)

(assert (=> b!4809199 m!5795260))

(check-sat (not b!4809186) (not b_next!130857) (not b!4809192) (not b!4809189) b_and!341845 (not b!4809193) (not b!4809194) (not b_next!130859) (not b!4809190) (not b!4809201) b_and!341847 (not b!4809185) (not mapNonEmpty!22253) (not b!4809199) (not b!4809196) (not b!4809198) tp_is_empty!33931)
(check-sat b_and!341845 b_and!341847 (not b_next!130857) (not b_next!130859))
