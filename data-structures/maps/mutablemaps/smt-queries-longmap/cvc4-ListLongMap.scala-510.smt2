; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12204 () Bool)

(assert start!12204)

(declare-fun b!103310 () Bool)

(declare-fun b_free!2517 () Bool)

(declare-fun b_next!2517 () Bool)

(assert (=> b!103310 (= b_free!2517 (not b_next!2517))))

(declare-fun tp!9865 () Bool)

(declare-fun b_and!6405 () Bool)

(assert (=> b!103310 (= tp!9865 b_and!6405)))

(declare-fun b!103318 () Bool)

(declare-fun b_free!2519 () Bool)

(declare-fun b_next!2519 () Bool)

(assert (=> b!103318 (= b_free!2519 (not b_next!2519))))

(declare-fun tp!9868 () Bool)

(declare-fun b_and!6407 () Bool)

(assert (=> b!103318 (= tp!9868 b_and!6407)))

(declare-fun b!103306 () Bool)

(declare-fun e!67331 () Bool)

(declare-fun tp_is_empty!2675 () Bool)

(assert (=> b!103306 (= e!67331 tp_is_empty!2675)))

(declare-fun mapIsEmpty!3909 () Bool)

(declare-fun mapRes!3909 () Bool)

(assert (=> mapIsEmpty!3909 mapRes!3909))

(declare-fun res!51584 () Bool)

(declare-fun e!67346 () Bool)

(assert (=> start!12204 (=> (not res!51584) (not e!67346))))

(declare-datatypes ((V!3213 0))(
  ( (V!3214 (val!1382 Int)) )
))
(declare-datatypes ((array!4338 0))(
  ( (array!4339 (arr!2058 (Array (_ BitVec 32) (_ BitVec 64))) (size!2312 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!994 0))(
  ( (ValueCellFull!994 (v!2877 V!3213)) (EmptyCell!994) )
))
(declare-datatypes ((array!4340 0))(
  ( (array!4341 (arr!2059 (Array (_ BitVec 32) ValueCell!994)) (size!2313 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!896 0))(
  ( (LongMapFixedSize!897 (defaultEntry!2562 Int) (mask!6698 (_ BitVec 32)) (extraKeys!2371 (_ BitVec 32)) (zeroValue!2439 V!3213) (minValue!2439 V!3213) (_size!497 (_ BitVec 32)) (_keys!4264 array!4338) (_values!2545 array!4340) (_vacant!497 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!698 0))(
  ( (Cell!699 (v!2878 LongMapFixedSize!896)) )
))
(declare-datatypes ((LongMap!698 0))(
  ( (LongMap!699 (underlying!360 Cell!698)) )
))
(declare-fun thiss!992 () LongMap!698)

(declare-fun valid!407 (LongMap!698) Bool)

(assert (=> start!12204 (= res!51584 (valid!407 thiss!992))))

(assert (=> start!12204 e!67346))

(declare-fun e!67341 () Bool)

(assert (=> start!12204 e!67341))

(assert (=> start!12204 true))

(declare-fun e!67334 () Bool)

(assert (=> start!12204 e!67334))

(declare-fun b!103307 () Bool)

(declare-fun e!67330 () Bool)

(declare-fun e!67339 () Bool)

(assert (=> b!103307 (= e!67330 e!67339)))

(declare-fun b!103308 () Bool)

(declare-fun e!67340 () Bool)

(assert (=> b!103308 (= e!67340 tp_is_empty!2675)))

(declare-fun b!103309 () Bool)

(declare-fun e!67343 () Bool)

(assert (=> b!103309 (= e!67343 (= (size!2313 (_values!2545 (v!2878 (underlying!360 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6698 (v!2878 (underlying!360 thiss!992))))))))

(declare-fun e!67337 () Bool)

(declare-fun array_inv!1239 (array!4338) Bool)

(declare-fun array_inv!1240 (array!4340) Bool)

(assert (=> b!103310 (= e!67339 (and tp!9865 tp_is_empty!2675 (array_inv!1239 (_keys!4264 (v!2878 (underlying!360 thiss!992)))) (array_inv!1240 (_values!2545 (v!2878 (underlying!360 thiss!992)))) e!67337))))

(declare-fun b!103311 () Bool)

(declare-datatypes ((Unit!3174 0))(
  ( (Unit!3175) )
))
(declare-fun e!67335 () Unit!3174)

(declare-fun Unit!3176 () Unit!3174)

(assert (=> b!103311 (= e!67335 Unit!3176)))

(declare-fun lt!52582 () Unit!3174)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!111 (array!4338 array!4340 (_ BitVec 32) (_ BitVec 32) V!3213 V!3213 (_ BitVec 64) (_ BitVec 32) Int) Unit!3174)

(assert (=> b!103311 (= lt!52582 (lemmaListMapContainsThenArrayContainsFrom!111 (_keys!4264 (v!2878 (underlying!360 thiss!992))) (_values!2545 (v!2878 (underlying!360 thiss!992))) (mask!6698 (v!2878 (underlying!360 thiss!992))) (extraKeys!2371 (v!2878 (underlying!360 thiss!992))) (zeroValue!2439 (v!2878 (underlying!360 thiss!992))) (minValue!2439 (v!2878 (underlying!360 thiss!992))) (select (arr!2058 (_keys!4264 (v!2878 (underlying!360 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2562 (v!2878 (underlying!360 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!103311 (arrayContainsKey!0 (_keys!4264 (v!2878 (underlying!360 thiss!992))) (select (arr!2058 (_keys!4264 (v!2878 (underlying!360 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!52579 () Unit!3174)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4338 (_ BitVec 32) (_ BitVec 32)) Unit!3174)

(assert (=> b!103311 (= lt!52579 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4264 (v!2878 (underlying!360 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1639 0))(
  ( (Nil!1636) (Cons!1635 (h!2231 (_ BitVec 64)) (t!5717 List!1639)) )
))
(declare-fun arrayNoDuplicates!0 (array!4338 (_ BitVec 32) List!1639) Bool)

(assert (=> b!103311 (arrayNoDuplicates!0 (_keys!4264 (v!2878 (underlying!360 thiss!992))) from!355 Nil!1636)))

(declare-fun lt!52587 () Unit!3174)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4338 (_ BitVec 32) (_ BitVec 64) List!1639) Unit!3174)

(assert (=> b!103311 (= lt!52587 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4264 (v!2878 (underlying!360 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2058 (_keys!4264 (v!2878 (underlying!360 thiss!992)))) from!355) (Cons!1635 (select (arr!2058 (_keys!4264 (v!2878 (underlying!360 thiss!992)))) from!355) Nil!1636)))))

(assert (=> b!103311 false))

(declare-fun mapNonEmpty!3909 () Bool)

(declare-fun mapRes!3910 () Bool)

(declare-fun tp!9866 () Bool)

(assert (=> mapNonEmpty!3909 (= mapRes!3910 (and tp!9866 e!67331))))

(declare-fun mapRest!3909 () (Array (_ BitVec 32) ValueCell!994))

(declare-fun newMap!16 () LongMapFixedSize!896)

(declare-fun mapKey!3910 () (_ BitVec 32))

(declare-fun mapValue!3910 () ValueCell!994)

(assert (=> mapNonEmpty!3909 (= (arr!2059 (_values!2545 newMap!16)) (store mapRest!3909 mapKey!3910 mapValue!3910))))

(declare-fun b!103312 () Bool)

(declare-fun e!67336 () Bool)

(assert (=> b!103312 (= e!67346 e!67336)))

(declare-fun res!51582 () Bool)

(assert (=> b!103312 (=> (not res!51582) (not e!67336))))

(declare-datatypes ((tuple2!2404 0))(
  ( (tuple2!2405 (_1!1212 (_ BitVec 64)) (_2!1212 V!3213)) )
))
(declare-datatypes ((List!1640 0))(
  ( (Nil!1637) (Cons!1636 (h!2232 tuple2!2404) (t!5718 List!1640)) )
))
(declare-datatypes ((ListLongMap!1581 0))(
  ( (ListLongMap!1582 (toList!806 List!1640)) )
))
(declare-fun lt!52578 () ListLongMap!1581)

(declare-fun lt!52586 () ListLongMap!1581)

(assert (=> b!103312 (= res!51582 (= lt!52578 lt!52586))))

(declare-fun map!1280 (LongMapFixedSize!896) ListLongMap!1581)

(assert (=> b!103312 (= lt!52586 (map!1280 newMap!16))))

(declare-fun getCurrentListMap!483 (array!4338 array!4340 (_ BitVec 32) (_ BitVec 32) V!3213 V!3213 (_ BitVec 32) Int) ListLongMap!1581)

(assert (=> b!103312 (= lt!52578 (getCurrentListMap!483 (_keys!4264 (v!2878 (underlying!360 thiss!992))) (_values!2545 (v!2878 (underlying!360 thiss!992))) (mask!6698 (v!2878 (underlying!360 thiss!992))) (extraKeys!2371 (v!2878 (underlying!360 thiss!992))) (zeroValue!2439 (v!2878 (underlying!360 thiss!992))) (minValue!2439 (v!2878 (underlying!360 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2562 (v!2878 (underlying!360 thiss!992)))))))

(declare-fun b!103313 () Bool)

(declare-fun res!51588 () Bool)

(assert (=> b!103313 (=> (not res!51588) (not e!67346))))

(assert (=> b!103313 (= res!51588 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6698 newMap!16)) (_size!497 (v!2878 (underlying!360 thiss!992)))))))

(declare-fun b!103314 () Bool)

(declare-fun e!67344 () Bool)

(declare-fun e!67329 () Bool)

(assert (=> b!103314 (= e!67344 e!67329)))

(declare-fun res!51589 () Bool)

(assert (=> b!103314 (=> (not res!51589) (not e!67329))))

(declare-datatypes ((tuple2!2406 0))(
  ( (tuple2!2407 (_1!1213 Bool) (_2!1213 LongMapFixedSize!896)) )
))
(declare-fun lt!52589 () tuple2!2406)

(assert (=> b!103314 (= res!51589 (and (_1!1213 lt!52589) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!52588 () Unit!3174)

(assert (=> b!103314 (= lt!52588 e!67335)))

(declare-fun c!17774 () Bool)

(declare-fun contains!826 (ListLongMap!1581 (_ BitVec 64)) Bool)

(assert (=> b!103314 (= c!17774 (contains!826 lt!52586 (select (arr!2058 (_keys!4264 (v!2878 (underlying!360 thiss!992)))) from!355)))))

(declare-fun lt!52581 () V!3213)

(declare-fun update!157 (LongMapFixedSize!896 (_ BitVec 64) V!3213) tuple2!2406)

(assert (=> b!103314 (= lt!52589 (update!157 newMap!16 (select (arr!2058 (_keys!4264 (v!2878 (underlying!360 thiss!992)))) from!355) lt!52581))))

(declare-fun b!103315 () Bool)

(declare-fun e!67342 () Bool)

(assert (=> b!103315 (= e!67342 tp_is_empty!2675)))

(declare-fun b!103316 () Bool)

(assert (=> b!103316 (= e!67329 (not e!67343))))

(declare-fun res!51585 () Bool)

(assert (=> b!103316 (=> res!51585 e!67343)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!103316 (= res!51585 (not (validMask!0 (mask!6698 (v!2878 (underlying!360 thiss!992))))))))

(declare-fun lt!52584 () ListLongMap!1581)

(declare-fun lt!52583 () tuple2!2404)

(declare-fun lt!52585 () tuple2!2404)

(declare-fun +!144 (ListLongMap!1581 tuple2!2404) ListLongMap!1581)

(assert (=> b!103316 (= (+!144 (+!144 lt!52584 lt!52583) lt!52585) (+!144 (+!144 lt!52584 lt!52585) lt!52583))))

(assert (=> b!103316 (= lt!52585 (tuple2!2405 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2439 (v!2878 (underlying!360 thiss!992)))))))

(assert (=> b!103316 (= lt!52583 (tuple2!2405 (select (arr!2058 (_keys!4264 (v!2878 (underlying!360 thiss!992)))) from!355) lt!52581))))

(declare-fun lt!52580 () Unit!3174)

(declare-fun addCommutativeForDiffKeys!56 (ListLongMap!1581 (_ BitVec 64) V!3213 (_ BitVec 64) V!3213) Unit!3174)

(assert (=> b!103316 (= lt!52580 (addCommutativeForDiffKeys!56 lt!52584 (select (arr!2058 (_keys!4264 (v!2878 (underlying!360 thiss!992)))) from!355) lt!52581 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2439 (v!2878 (underlying!360 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!111 (array!4338 array!4340 (_ BitVec 32) (_ BitVec 32) V!3213 V!3213 (_ BitVec 32) Int) ListLongMap!1581)

(assert (=> b!103316 (= lt!52584 (getCurrentListMapNoExtraKeys!111 (_keys!4264 (v!2878 (underlying!360 thiss!992))) (_values!2545 (v!2878 (underlying!360 thiss!992))) (mask!6698 (v!2878 (underlying!360 thiss!992))) (extraKeys!2371 (v!2878 (underlying!360 thiss!992))) (zeroValue!2439 (v!2878 (underlying!360 thiss!992))) (minValue!2439 (v!2878 (underlying!360 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2562 (v!2878 (underlying!360 thiss!992)))))))

(declare-fun b!103317 () Bool)

(assert (=> b!103317 (= e!67341 e!67330)))

(declare-fun e!67338 () Bool)

(assert (=> b!103318 (= e!67334 (and tp!9868 tp_is_empty!2675 (array_inv!1239 (_keys!4264 newMap!16)) (array_inv!1240 (_values!2545 newMap!16)) e!67338))))

(declare-fun b!103319 () Bool)

(assert (=> b!103319 (= e!67338 (and e!67340 mapRes!3910))))

(declare-fun condMapEmpty!3910 () Bool)

(declare-fun mapDefault!3909 () ValueCell!994)

