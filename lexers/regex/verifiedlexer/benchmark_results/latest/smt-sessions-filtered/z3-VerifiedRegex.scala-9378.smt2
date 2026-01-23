; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497480 () Bool)

(assert start!497480)

(declare-fun b!4811637 () Bool)

(declare-fun b_free!130203 () Bool)

(declare-fun b_next!130993 () Bool)

(assert (=> b!4811637 (= b_free!130203 (not b_next!130993))))

(declare-fun tp!1360945 () Bool)

(declare-fun b_and!342005 () Bool)

(assert (=> b!4811637 (= tp!1360945 b_and!342005)))

(declare-fun b!4811640 () Bool)

(declare-fun b_free!130205 () Bool)

(declare-fun b_next!130995 () Bool)

(assert (=> b!4811640 (= b_free!130205 (not b_next!130995))))

(declare-fun tp!1360948 () Bool)

(declare-fun b_and!342007 () Bool)

(assert (=> b!4811640 (= tp!1360948 b_and!342007)))

(declare-fun b!4811635 () Bool)

(declare-fun e!3005959 () Bool)

(declare-fun e!3005963 () Bool)

(declare-datatypes ((K!16179 0))(
  ( (K!16180 (val!21249 Int)) )
))
(declare-datatypes ((array!18640 0))(
  ( (array!18641 (arr!8315 (Array (_ BitVec 32) (_ BitVec 64))) (size!36561 (_ BitVec 32))) )
))
(declare-datatypes ((V!16425 0))(
  ( (V!16426 (val!21250 Int)) )
))
(declare-datatypes ((tuple2!57440 0))(
  ( (tuple2!57441 (_1!32014 K!16179) (_2!32014 V!16425)) )
))
(declare-datatypes ((List!54682 0))(
  ( (Nil!54558) (Cons!54558 (h!60990 tuple2!57440) (t!362168 List!54682)) )
))
(declare-datatypes ((array!18642 0))(
  ( (array!18643 (arr!8316 (Array (_ BitVec 32) List!54682)) (size!36562 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10130 0))(
  ( (LongMapFixedSize!10131 (defaultEntry!5487 Int) (mask!15078 (_ BitVec 32)) (extraKeys!5345 (_ BitVec 32)) (zeroValue!5358 List!54682) (minValue!5358 List!54682) (_size!10155 (_ BitVec 32)) (_keys!5414 array!18640) (_values!5383 array!18642) (_vacant!5130 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20025 0))(
  ( (Cell!20026 (v!48879 LongMapFixedSize!10130)) )
))
(declare-datatypes ((MutLongMap!5065 0))(
  ( (LongMap!5065 (underlying!10337 Cell!20025)) (MutLongMapExt!5064 (__x!33293 Int)) )
))
(declare-fun lt!1963181 () MutLongMap!5065)

(get-info :version)

(assert (=> b!4811635 (= e!3005959 (and e!3005963 ((_ is LongMap!5065) lt!1963181)))))

(declare-datatypes ((Hashable!7076 0))(
  ( (HashableExt!7075 (__x!33294 Int)) )
))
(declare-datatypes ((Cell!20027 0))(
  ( (Cell!20028 (v!48880 MutLongMap!5065)) )
))
(declare-datatypes ((MutableMap!4949 0))(
  ( (MutableMapExt!4948 (__x!33295 Int)) (HashMap!4949 (underlying!10338 Cell!20027) (hashF!13352 Hashable!7076) (_size!10156 (_ BitVec 32)) (defaultValue!5120 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4949)

(assert (=> b!4811635 (= lt!1963181 (v!48880 (underlying!10338 thiss!41921)))))

(declare-fun b!4811636 () Bool)

(declare-fun e!3005961 () Bool)

(assert (=> b!4811636 (= e!3005963 e!3005961)))

(declare-fun e!3005956 () Bool)

(declare-fun tp!1360942 () Bool)

(declare-fun tp!1360943 () Bool)

(declare-fun e!3005957 () Bool)

(declare-fun array_inv!6003 (array!18640) Bool)

(declare-fun array_inv!6004 (array!18642) Bool)

(assert (=> b!4811637 (= e!3005957 (and tp!1360945 tp!1360942 tp!1360943 (array_inv!6003 (_keys!5414 (v!48879 (underlying!10337 (v!48880 (underlying!10338 thiss!41921)))))) (array_inv!6004 (_values!5383 (v!48879 (underlying!10337 (v!48880 (underlying!10338 thiss!41921)))))) e!3005956))))

(declare-fun b!4811638 () Bool)

(declare-fun e!3005958 () Bool)

(declare-fun e!3005955 () Bool)

(assert (=> b!4811638 (= e!3005958 e!3005955)))

(declare-fun res!2046669 () Bool)

(assert (=> b!4811638 (=> (not res!2046669) (not e!3005955))))

(declare-datatypes ((tuple2!57442 0))(
  ( (tuple2!57443 (_1!32015 (_ BitVec 64)) (_2!32015 List!54682)) )
))
(declare-datatypes ((List!54683 0))(
  ( (Nil!54559) (Cons!54559 (h!60991 tuple2!57442) (t!362169 List!54683)) )
))
(declare-datatypes ((ListLongMap!5621 0))(
  ( (ListLongMap!5622 (toList!7152 List!54683)) )
))
(declare-fun lt!1963179 () ListLongMap!5621)

(declare-fun lt!1963177 () (_ BitVec 64))

(declare-fun lt!1963176 () List!54682)

(declare-fun contains!18284 (List!54683 tuple2!57442) Bool)

(assert (=> b!4811638 (= res!2046669 (not (contains!18284 (toList!7152 lt!1963179) (tuple2!57443 lt!1963177 lt!1963176))))))

(declare-fun apply!13168 (MutLongMap!5065 (_ BitVec 64)) List!54682)

(assert (=> b!4811638 (= lt!1963176 (apply!13168 (v!48880 (underlying!10338 thiss!41921)) lt!1963177))))

(declare-fun map!12435 (MutLongMap!5065) ListLongMap!5621)

(assert (=> b!4811638 (= lt!1963179 (map!12435 (v!48880 (underlying!10338 thiss!41921))))))

(declare-fun b!4811639 () Bool)

(declare-fun e!3005962 () Bool)

(assert (=> b!4811639 (= e!3005962 e!3005958)))

(declare-fun res!2046672 () Bool)

(assert (=> b!4811639 (=> (not res!2046672) (not e!3005958))))

(declare-fun contains!18285 (MutLongMap!5065 (_ BitVec 64)) Bool)

(assert (=> b!4811639 (= res!2046672 (contains!18285 (v!48880 (underlying!10338 thiss!41921)) lt!1963177))))

(declare-fun key!1652 () K!16179)

(declare-fun hash!5144 (Hashable!7076 K!16179) (_ BitVec 64))

(assert (=> b!4811639 (= lt!1963177 (hash!5144 (hashF!13352 thiss!41921) key!1652))))

(declare-fun mapIsEmpty!22376 () Bool)

(declare-fun mapRes!22376 () Bool)

(assert (=> mapIsEmpty!22376 mapRes!22376))

(declare-fun res!2046670 () Bool)

(assert (=> start!497480 (=> (not res!2046670) (not e!3005962))))

(assert (=> start!497480 (= res!2046670 ((_ is HashMap!4949) thiss!41921))))

(assert (=> start!497480 e!3005962))

(declare-fun e!3005960 () Bool)

(assert (=> start!497480 e!3005960))

(declare-fun tp_is_empty!34011 () Bool)

(assert (=> start!497480 tp_is_empty!34011))

(assert (=> b!4811640 (= e!3005960 (and e!3005959 tp!1360948))))

(declare-fun b!4811641 () Bool)

(declare-fun tp!1360946 () Bool)

(assert (=> b!4811641 (= e!3005956 (and tp!1360946 mapRes!22376))))

(declare-fun condMapEmpty!22376 () Bool)

(declare-fun mapDefault!22376 () List!54682)

(assert (=> b!4811641 (= condMapEmpty!22376 (= (arr!8316 (_values!5383 (v!48879 (underlying!10337 (v!48880 (underlying!10338 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54682)) mapDefault!22376)))))

(declare-fun b!4811642 () Bool)

(assert (=> b!4811642 (= e!3005961 e!3005957)))

(declare-fun mapNonEmpty!22376 () Bool)

(declare-fun tp!1360947 () Bool)

(declare-fun tp!1360944 () Bool)

(assert (=> mapNonEmpty!22376 (= mapRes!22376 (and tp!1360947 tp!1360944))))

(declare-fun mapRest!22376 () (Array (_ BitVec 32) List!54682))

(declare-fun mapKey!22376 () (_ BitVec 32))

(declare-fun mapValue!22376 () List!54682)

(assert (=> mapNonEmpty!22376 (= (arr!8316 (_values!5383 (v!48879 (underlying!10337 (v!48880 (underlying!10338 thiss!41921)))))) (store mapRest!22376 mapKey!22376 mapValue!22376))))

(declare-fun b!4811643 () Bool)

(assert (=> b!4811643 (= e!3005955 (not true))))

(assert (=> b!4811643 false))

(declare-datatypes ((Unit!141579 0))(
  ( (Unit!141580) )
))
(declare-fun lt!1963182 () Unit!141579)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1001 (List!54683 (_ BitVec 64) List!54682) Unit!141579)

(assert (=> b!4811643 (= lt!1963182 (lemmaGetValueByKeyImpliesContainsTuple!1001 (toList!7152 lt!1963179) lt!1963177 lt!1963176))))

(declare-datatypes ((Option!13315 0))(
  ( (None!13314) (Some!13314 (v!48881 List!54682)) )
))
(declare-fun isDefined!10453 (Option!13315) Bool)

(declare-fun getValueByKey!2494 (List!54683 (_ BitVec 64)) Option!13315)

(assert (=> b!4811643 (isDefined!10453 (getValueByKey!2494 (toList!7152 lt!1963179) lt!1963177))))

(declare-fun lt!1963178 () Unit!141579)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2281 (List!54683 (_ BitVec 64)) Unit!141579)

(assert (=> b!4811643 (= lt!1963178 (lemmaContainsKeyImpliesGetValueByKeyDefined!2281 (toList!7152 lt!1963179) lt!1963177))))

(declare-fun containsKey!4158 (List!54683 (_ BitVec 64)) Bool)

(assert (=> b!4811643 (containsKey!4158 (toList!7152 lt!1963179) lt!1963177)))

(declare-fun lt!1963180 () Unit!141579)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!278 (List!54683 (_ BitVec 64)) Unit!141579)

(assert (=> b!4811643 (= lt!1963180 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!278 (toList!7152 lt!1963179) lt!1963177))))

(declare-fun b!4811644 () Bool)

(declare-fun res!2046671 () Bool)

(assert (=> b!4811644 (=> (not res!2046671) (not e!3005962))))

(declare-fun valid!4095 (MutableMap!4949) Bool)

(assert (=> b!4811644 (= res!2046671 (valid!4095 thiss!41921))))

(assert (= (and start!497480 res!2046670) b!4811644))

(assert (= (and b!4811644 res!2046671) b!4811639))

(assert (= (and b!4811639 res!2046672) b!4811638))

(assert (= (and b!4811638 res!2046669) b!4811643))

(assert (= (and b!4811641 condMapEmpty!22376) mapIsEmpty!22376))

(assert (= (and b!4811641 (not condMapEmpty!22376)) mapNonEmpty!22376))

(assert (= b!4811637 b!4811641))

(assert (= b!4811642 b!4811637))

(assert (= b!4811636 b!4811642))

(assert (= (and b!4811635 ((_ is LongMap!5065) (v!48880 (underlying!10338 thiss!41921)))) b!4811636))

(assert (= b!4811640 b!4811635))

(assert (= (and start!497480 ((_ is HashMap!4949) thiss!41921)) b!4811640))

(declare-fun m!5797296 () Bool)

(assert (=> b!4811643 m!5797296))

(declare-fun m!5797298 () Bool)

(assert (=> b!4811643 m!5797298))

(assert (=> b!4811643 m!5797296))

(declare-fun m!5797300 () Bool)

(assert (=> b!4811643 m!5797300))

(declare-fun m!5797302 () Bool)

(assert (=> b!4811643 m!5797302))

(declare-fun m!5797304 () Bool)

(assert (=> b!4811643 m!5797304))

(declare-fun m!5797306 () Bool)

(assert (=> b!4811643 m!5797306))

(declare-fun m!5797308 () Bool)

(assert (=> b!4811639 m!5797308))

(declare-fun m!5797310 () Bool)

(assert (=> b!4811639 m!5797310))

(declare-fun m!5797312 () Bool)

(assert (=> b!4811644 m!5797312))

(declare-fun m!5797314 () Bool)

(assert (=> b!4811637 m!5797314))

(declare-fun m!5797316 () Bool)

(assert (=> b!4811637 m!5797316))

(declare-fun m!5797318 () Bool)

(assert (=> mapNonEmpty!22376 m!5797318))

(declare-fun m!5797320 () Bool)

(assert (=> b!4811638 m!5797320))

(declare-fun m!5797322 () Bool)

(assert (=> b!4811638 m!5797322))

(declare-fun m!5797324 () Bool)

(assert (=> b!4811638 m!5797324))

(check-sat (not b!4811643) (not b!4811638) (not b!4811641) (not b_next!130993) (not mapNonEmpty!22376) (not b!4811644) (not b_next!130995) b_and!342005 tp_is_empty!34011 b_and!342007 (not b!4811639) (not b!4811637))
(check-sat b_and!342005 b_and!342007 (not b_next!130993) (not b_next!130995))
