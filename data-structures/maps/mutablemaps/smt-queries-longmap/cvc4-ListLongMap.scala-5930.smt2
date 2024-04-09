; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77328 () Bool)

(assert start!77328)

(declare-fun b!901618 () Bool)

(declare-fun b_free!16085 () Bool)

(declare-fun b_next!16085 () Bool)

(assert (=> b!901618 (= b_free!16085 (not b_next!16085))))

(declare-fun tp!56359 () Bool)

(declare-fun b_and!26453 () Bool)

(assert (=> b!901618 (= tp!56359 b_and!26453)))

(declare-fun b!901611 () Bool)

(declare-datatypes ((V!29515 0))(
  ( (V!29516 (val!9257 Int)) )
))
(declare-fun call!40183 () V!29515)

(declare-fun e!504846 () Bool)

(declare-datatypes ((array!52870 0))(
  ( (array!52871 (arr!25398 (Array (_ BitVec 32) (_ BitVec 64))) (size!25858 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!8725 0))(
  ( (ValueCellFull!8725 (v!11757 V!29515)) (EmptyCell!8725) )
))
(declare-datatypes ((array!52872 0))(
  ( (array!52873 (arr!25399 (Array (_ BitVec 32) ValueCell!8725)) (size!25859 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4466 0))(
  ( (LongMapFixedSize!4467 (defaultEntry!5476 Int) (mask!26284 (_ BitVec 32)) (extraKeys!5206 (_ BitVec 32)) (zeroValue!5310 V!29515) (minValue!5310 V!29515) (_size!2288 (_ BitVec 32)) (_keys!10287 array!52870) (_values!5497 array!52872) (_vacant!2288 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4466)

(declare-datatypes ((SeekEntryResult!8941 0))(
  ( (MissingZero!8941 (index!38134 (_ BitVec 32))) (Found!8941 (index!38135 (_ BitVec 32))) (Intermediate!8941 (undefined!9753 Bool) (index!38136 (_ BitVec 32)) (x!76813 (_ BitVec 32))) (Undefined!8941) (MissingVacant!8941 (index!38137 (_ BitVec 32))) )
))
(declare-fun lt!407545 () SeekEntryResult!8941)

(declare-fun get!13379 (ValueCell!8725 V!29515) V!29515)

(declare-fun dynLambda!1318 (Int (_ BitVec 64)) V!29515)

(assert (=> b!901611 (= e!504846 (= call!40183 (get!13379 (select (arr!25399 (_values!5497 thiss!1181)) (index!38135 lt!407545)) (dynLambda!1318 (defaultEntry!5476 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!901612 () Bool)

(declare-fun e!504858 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!901612 (= e!504858 (inRange!0 (index!38135 lt!407545) (mask!26284 thiss!1181)))))

(declare-fun b!901613 () Bool)

(declare-fun e!504857 () Bool)

(assert (=> b!901613 (= e!504857 e!504846)))

(declare-fun c!95458 () Bool)

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!901613 (= c!95458 (= key!785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!901614 () Bool)

(declare-fun e!504854 () Bool)

(declare-fun tp_is_empty!18413 () Bool)

(assert (=> b!901614 (= e!504854 tp_is_empty!18413)))

(declare-fun b!901615 () Bool)

(declare-fun e!504856 () Bool)

(assert (=> b!901615 (= e!504857 e!504856)))

(declare-fun res!608762 () Bool)

(assert (=> b!901615 (= res!608762 (not (= (bvand (extraKeys!5206 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!901615 (=> (not res!608762) (not e!504856))))

(declare-fun res!608764 () Bool)

(declare-fun e!504849 () Bool)

(assert (=> start!77328 (=> (not res!608764) (not e!504849))))

(declare-fun valid!1698 (LongMapFixedSize!4466) Bool)

(assert (=> start!77328 (= res!608764 (valid!1698 thiss!1181))))

(assert (=> start!77328 e!504849))

(declare-fun e!504852 () Bool)

(assert (=> start!77328 e!504852))

(assert (=> start!77328 true))

(declare-fun b!901616 () Bool)

(declare-fun e!504853 () Bool)

(assert (=> b!901616 (= e!504853 tp_is_empty!18413)))

(declare-fun b!901617 () Bool)

(declare-fun e!504848 () Bool)

(declare-fun e!504847 () Bool)

(assert (=> b!901617 (= e!504848 e!504847)))

(declare-fun c!95457 () Bool)

(declare-fun contains!4429 (LongMapFixedSize!4466 (_ BitVec 64)) Bool)

(assert (=> b!901617 (= c!95457 (contains!4429 thiss!1181 key!785))))

(declare-fun lt!407546 () V!29515)

(assert (=> b!901617 (= lt!407546 (get!13379 (select (arr!25399 (_values!5497 thiss!1181)) (index!38135 lt!407545)) (dynLambda!1318 (defaultEntry!5476 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!901617 e!504857))

(declare-fun c!95456 () Bool)

(assert (=> b!901617 (= c!95456 (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!30591 0))(
  ( (Unit!30592) )
))
(declare-fun lt!407550 () Unit!30591)

(declare-fun lemmaKeyInListMapThenSameValueInArray!11 (array!52870 array!52872 (_ BitVec 32) (_ BitVec 32) V!29515 V!29515 (_ BitVec 64) (_ BitVec 32) Int) Unit!30591)

(assert (=> b!901617 (= lt!407550 (lemmaKeyInListMapThenSameValueInArray!11 (_keys!10287 thiss!1181) (_values!5497 thiss!1181) (mask!26284 thiss!1181) (extraKeys!5206 thiss!1181) (zeroValue!5310 thiss!1181) (minValue!5310 thiss!1181) key!785 (index!38135 lt!407545) (defaultEntry!5476 thiss!1181)))))

(declare-datatypes ((tuple2!12098 0))(
  ( (tuple2!12099 (_1!6059 (_ BitVec 64)) (_2!6059 V!29515)) )
))
(declare-datatypes ((List!17955 0))(
  ( (Nil!17952) (Cons!17951 (h!19097 tuple2!12098) (t!25340 List!17955)) )
))
(declare-datatypes ((ListLongMap!10809 0))(
  ( (ListLongMap!10810 (toList!5420 List!17955)) )
))
(declare-fun lt!407551 () ListLongMap!10809)

(declare-fun contains!4430 (ListLongMap!10809 (_ BitVec 64)) Bool)

(assert (=> b!901617 (contains!4430 lt!407551 (select (arr!25398 (_keys!10287 thiss!1181)) (index!38135 lt!407545)))))

(declare-fun getCurrentListMap!2659 (array!52870 array!52872 (_ BitVec 32) (_ BitVec 32) V!29515 V!29515 (_ BitVec 32) Int) ListLongMap!10809)

(assert (=> b!901617 (= lt!407551 (getCurrentListMap!2659 (_keys!10287 thiss!1181) (_values!5497 thiss!1181) (mask!26284 thiss!1181) (extraKeys!5206 thiss!1181) (zeroValue!5310 thiss!1181) (minValue!5310 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5476 thiss!1181)))))

(declare-fun lt!407548 () Unit!30591)

(declare-fun lemmaValidKeyInArrayIsInListMap!252 (array!52870 array!52872 (_ BitVec 32) (_ BitVec 32) V!29515 V!29515 (_ BitVec 32) Int) Unit!30591)

(assert (=> b!901617 (= lt!407548 (lemmaValidKeyInArrayIsInListMap!252 (_keys!10287 thiss!1181) (_values!5497 thiss!1181) (mask!26284 thiss!1181) (extraKeys!5206 thiss!1181) (zeroValue!5310 thiss!1181) (minValue!5310 thiss!1181) (index!38135 lt!407545) (defaultEntry!5476 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52870 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!901617 (arrayContainsKey!0 (_keys!10287 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!407549 () Unit!30591)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52870 (_ BitVec 64) (_ BitVec 32)) Unit!30591)

(assert (=> b!901617 (= lt!407549 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10287 thiss!1181) key!785 (index!38135 lt!407545)))))

(declare-fun e!504855 () Bool)

(declare-fun array_inv!19896 (array!52870) Bool)

(declare-fun array_inv!19897 (array!52872) Bool)

(assert (=> b!901618 (= e!504852 (and tp!56359 tp_is_empty!18413 (array_inv!19896 (_keys!10287 thiss!1181)) (array_inv!19897 (_values!5497 thiss!1181)) e!504855))))

(declare-fun b!901619 () Bool)

(assert (=> b!901619 (= e!504847 (= lt!407546 (dynLambda!1318 (defaultEntry!5476 thiss!1181) key!785)))))

(declare-fun b!901620 () Bool)

(declare-fun res!608763 () Bool)

(declare-fun e!504850 () Bool)

(assert (=> b!901620 (=> (not res!608763) (not e!504850))))

(assert (=> b!901620 (= res!608763 (not (= (bvand (extraKeys!5206 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!901620 (= e!504846 e!504850)))

(declare-fun b!901621 () Bool)

(declare-datatypes ((Option!474 0))(
  ( (Some!473 (v!11758 V!29515)) (None!472) )
))
(declare-fun get!13380 (Option!474) V!29515)

(declare-fun getValueByKey!468 (List!17955 (_ BitVec 64)) Option!474)

(declare-fun map!12300 (LongMapFixedSize!4466) ListLongMap!10809)

(assert (=> b!901621 (= e!504847 (= lt!407546 (get!13380 (getValueByKey!468 (toList!5420 (map!12300 thiss!1181)) key!785))))))

(declare-fun mapNonEmpty!29308 () Bool)

(declare-fun mapRes!29308 () Bool)

(declare-fun tp!56358 () Bool)

(assert (=> mapNonEmpty!29308 (= mapRes!29308 (and tp!56358 e!504853))))

(declare-fun mapRest!29308 () (Array (_ BitVec 32) ValueCell!8725))

(declare-fun mapValue!29308 () ValueCell!8725)

(declare-fun mapKey!29308 () (_ BitVec 32))

(assert (=> mapNonEmpty!29308 (= (arr!25399 (_values!5497 thiss!1181)) (store mapRest!29308 mapKey!29308 mapValue!29308))))

(declare-fun b!901622 () Bool)

(assert (=> b!901622 (= e!504849 (not e!504848))))

(declare-fun res!608765 () Bool)

(assert (=> b!901622 (=> res!608765 e!504848)))

(assert (=> b!901622 (= res!608765 (not (is-Found!8941 lt!407545)))))

(assert (=> b!901622 e!504858))

(declare-fun res!608766 () Bool)

(assert (=> b!901622 (=> res!608766 e!504858)))

(assert (=> b!901622 (= res!608766 (not (is-Found!8941 lt!407545)))))

(declare-fun lt!407547 () Unit!30591)

(declare-fun lemmaSeekEntryGivesInRangeIndex!118 (array!52870 array!52872 (_ BitVec 32) (_ BitVec 32) V!29515 V!29515 (_ BitVec 64)) Unit!30591)

(assert (=> b!901622 (= lt!407547 (lemmaSeekEntryGivesInRangeIndex!118 (_keys!10287 thiss!1181) (_values!5497 thiss!1181) (mask!26284 thiss!1181) (extraKeys!5206 thiss!1181) (zeroValue!5310 thiss!1181) (minValue!5310 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52870 (_ BitVec 32)) SeekEntryResult!8941)

(assert (=> b!901622 (= lt!407545 (seekEntry!0 key!785 (_keys!10287 thiss!1181) (mask!26284 thiss!1181)))))

(declare-fun b!901623 () Bool)

(declare-fun res!608767 () Bool)

(assert (=> b!901623 (=> (not res!608767) (not e!504849))))

(assert (=> b!901623 (= res!608767 (not (= key!785 (bvneg key!785))))))

(declare-fun b!901624 () Bool)

(assert (=> b!901624 (= e!504850 (= call!40183 (minValue!5310 thiss!1181)))))

(declare-fun b!901625 () Bool)

(declare-fun call!40182 () V!29515)

(assert (=> b!901625 (= e!504856 (= call!40182 (zeroValue!5310 thiss!1181)))))

(declare-fun b!901626 () Bool)

(assert (=> b!901626 (= e!504855 (and e!504854 mapRes!29308))))

(declare-fun condMapEmpty!29308 () Bool)

(declare-fun mapDefault!29308 () ValueCell!8725)

