; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13168 () Bool)

(assert start!13168)

(declare-fun b!115838 () Bool)

(declare-fun b_free!2721 () Bool)

(declare-fun b_next!2721 () Bool)

(assert (=> b!115838 (= b_free!2721 (not b_next!2721))))

(declare-fun tp!10525 () Bool)

(declare-fun b_and!7213 () Bool)

(assert (=> b!115838 (= tp!10525 b_and!7213)))

(declare-fun b!115846 () Bool)

(declare-fun b_free!2723 () Bool)

(declare-fun b_next!2723 () Bool)

(assert (=> b!115846 (= b_free!2723 (not b_next!2723))))

(declare-fun tp!10527 () Bool)

(declare-fun b_and!7215 () Bool)

(assert (=> b!115846 (= tp!10527 b_and!7215)))

(declare-fun b!115837 () Bool)

(declare-fun e!75609 () Bool)

(declare-fun tp_is_empty!2777 () Bool)

(assert (=> b!115837 (= e!75609 tp_is_empty!2777)))

(declare-datatypes ((V!3349 0))(
  ( (V!3350 (val!1433 Int)) )
))
(declare-datatypes ((array!4556 0))(
  ( (array!4557 (arr!2160 (Array (_ BitVec 32) (_ BitVec 64))) (size!2420 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1045 0))(
  ( (ValueCellFull!1045 (v!3031 V!3349)) (EmptyCell!1045) )
))
(declare-datatypes ((array!4558 0))(
  ( (array!4559 (arr!2161 (Array (_ BitVec 32) ValueCell!1045)) (size!2421 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!998 0))(
  ( (LongMapFixedSize!999 (defaultEntry!2708 Int) (mask!6918 (_ BitVec 32)) (extraKeys!2497 (_ BitVec 32)) (zeroValue!2575 V!3349) (minValue!2575 V!3349) (_size!548 (_ BitVec 32)) (_keys!4430 array!4556) (_values!2691 array!4558) (_vacant!548 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!792 0))(
  ( (Cell!793 (v!3032 LongMapFixedSize!998)) )
))
(declare-datatypes ((LongMap!792 0))(
  ( (LongMap!793 (underlying!407 Cell!792)) )
))
(declare-fun thiss!992 () LongMap!792)

(declare-fun e!75613 () Bool)

(declare-fun e!75622 () Bool)

(declare-fun array_inv!1307 (array!4556) Bool)

(declare-fun array_inv!1308 (array!4558) Bool)

(assert (=> b!115838 (= e!75613 (and tp!10525 tp_is_empty!2777 (array_inv!1307 (_keys!4430 (v!3032 (underlying!407 thiss!992)))) (array_inv!1308 (_values!2691 (v!3032 (underlying!407 thiss!992)))) e!75622))))

(declare-fun b!115839 () Bool)

(declare-fun e!75614 () Bool)

(declare-fun e!75620 () Bool)

(assert (=> b!115839 (= e!75614 e!75620)))

(declare-fun b!115840 () Bool)

(declare-fun e!75616 () Bool)

(declare-fun e!75615 () Bool)

(assert (=> b!115840 (= e!75616 e!75615)))

(declare-fun res!56781 () Bool)

(assert (=> b!115840 (=> (not res!56781) (not e!75615))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((tuple2!2506 0))(
  ( (tuple2!2507 (_1!1263 (_ BitVec 64)) (_2!1263 V!3349)) )
))
(declare-datatypes ((List!1692 0))(
  ( (Nil!1689) (Cons!1688 (h!2288 tuple2!2506) (t!5958 List!1692)) )
))
(declare-datatypes ((ListLongMap!1645 0))(
  ( (ListLongMap!1646 (toList!838 List!1692)) )
))
(declare-fun lt!60116 () ListLongMap!1645)

(declare-fun lt!60117 () ListLongMap!1645)

(assert (=> b!115840 (= res!56781 (and (= lt!60116 lt!60117) (or (= (select (arr!2160 (_keys!4430 (v!3032 (underlying!407 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!2160 (_keys!4430 (v!3032 (underlying!407 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsgt from!355 #b00000000000000000000000000000000) (bvslt (bvsub from!355 #b00000000000000000000000000000001) (size!2420 (_keys!4430 (v!3032 (underlying!407 thiss!992)))))))))

(declare-fun newMap!16 () LongMapFixedSize!998)

(declare-fun map!1342 (LongMapFixedSize!998) ListLongMap!1645)

(assert (=> b!115840 (= lt!60117 (map!1342 newMap!16))))

(declare-fun getCurrentListMap!511 (array!4556 array!4558 (_ BitVec 32) (_ BitVec 32) V!3349 V!3349 (_ BitVec 32) Int) ListLongMap!1645)

(assert (=> b!115840 (= lt!60116 (getCurrentListMap!511 (_keys!4430 (v!3032 (underlying!407 thiss!992))) (_values!2691 (v!3032 (underlying!407 thiss!992))) (mask!6918 (v!3032 (underlying!407 thiss!992))) (extraKeys!2497 (v!3032 (underlying!407 thiss!992))) (zeroValue!2575 (v!3032 (underlying!407 thiss!992))) (minValue!2575 (v!3032 (underlying!407 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2708 (v!3032 (underlying!407 thiss!992)))))))

(declare-fun b!115841 () Bool)

(declare-fun res!56785 () Bool)

(assert (=> b!115841 (=> (not res!56785) (not e!75616))))

(assert (=> b!115841 (= res!56785 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2420 (_keys!4430 (v!3032 (underlying!407 thiss!992)))))))))

(declare-fun b!115842 () Bool)

(declare-fun res!56784 () Bool)

(assert (=> b!115842 (=> (not res!56784) (not e!75616))))

(assert (=> b!115842 (= res!56784 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6918 newMap!16)) (_size!548 (v!3032 (underlying!407 thiss!992)))))))

(declare-fun mapIsEmpty!4263 () Bool)

(declare-fun mapRes!4263 () Bool)

(assert (=> mapIsEmpty!4263 mapRes!4263))

(declare-fun b!115843 () Bool)

(declare-fun e!75619 () Bool)

(assert (=> b!115843 (= e!75619 tp_is_empty!2777)))

(declare-fun b!115845 () Bool)

(declare-fun e!75610 () Bool)

(assert (=> b!115845 (= e!75610 tp_is_empty!2777)))

(declare-fun mapNonEmpty!4263 () Bool)

(declare-fun tp!10528 () Bool)

(assert (=> mapNonEmpty!4263 (= mapRes!4263 (and tp!10528 e!75610))))

(declare-fun mapValue!4263 () ValueCell!1045)

(declare-fun mapRest!4264 () (Array (_ BitVec 32) ValueCell!1045))

(declare-fun mapKey!4264 () (_ BitVec 32))

(assert (=> mapNonEmpty!4263 (= (arr!2161 (_values!2691 newMap!16)) (store mapRest!4264 mapKey!4264 mapValue!4263))))

(declare-fun mapNonEmpty!4264 () Bool)

(declare-fun mapRes!4264 () Bool)

(declare-fun tp!10526 () Bool)

(assert (=> mapNonEmpty!4264 (= mapRes!4264 (and tp!10526 e!75619))))

(declare-fun mapRest!4263 () (Array (_ BitVec 32) ValueCell!1045))

(declare-fun mapValue!4264 () ValueCell!1045)

(declare-fun mapKey!4263 () (_ BitVec 32))

(assert (=> mapNonEmpty!4264 (= (arr!2161 (_values!2691 (v!3032 (underlying!407 thiss!992)))) (store mapRest!4263 mapKey!4263 mapValue!4264))))

(declare-fun e!75612 () Bool)

(declare-fun e!75611 () Bool)

(assert (=> b!115846 (= e!75612 (and tp!10527 tp_is_empty!2777 (array_inv!1307 (_keys!4430 newMap!16)) (array_inv!1308 (_values!2691 newMap!16)) e!75611))))

(declare-fun b!115847 () Bool)

(declare-fun e!75618 () Bool)

(assert (=> b!115847 (= e!75618 tp_is_empty!2777)))

(declare-fun b!115848 () Bool)

(assert (=> b!115848 (= e!75615 (not (= (getCurrentListMap!511 (_keys!4430 (v!3032 (underlying!407 thiss!992))) (_values!2691 (v!3032 (underlying!407 thiss!992))) (mask!6918 (v!3032 (underlying!407 thiss!992))) (extraKeys!2497 (v!3032 (underlying!407 thiss!992))) (zeroValue!2575 (v!3032 (underlying!407 thiss!992))) (minValue!2575 (v!3032 (underlying!407 thiss!992))) (bvadd #b00000000000000000000000000000001 (bvsub from!355 #b00000000000000000000000000000001)) (defaultEntry!2708 (v!3032 (underlying!407 thiss!992)))) lt!60117)))))

(declare-fun b!115844 () Bool)

(assert (=> b!115844 (= e!75622 (and e!75609 mapRes!4264))))

(declare-fun condMapEmpty!4264 () Bool)

(declare-fun mapDefault!4264 () ValueCell!1045)

