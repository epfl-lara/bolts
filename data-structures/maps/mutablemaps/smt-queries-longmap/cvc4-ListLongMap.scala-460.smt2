; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8388 () Bool)

(assert start!8388)

(declare-fun b!56479 () Bool)

(declare-fun b_free!1917 () Bool)

(declare-fun b_next!1917 () Bool)

(assert (=> b!56479 (= b_free!1917 (not b_next!1917))))

(declare-fun tp!7851 () Bool)

(declare-fun b_and!3385 () Bool)

(assert (=> b!56479 (= tp!7851 b_and!3385)))

(declare-fun b!56485 () Bool)

(declare-fun b_free!1919 () Bool)

(declare-fun b_next!1919 () Bool)

(assert (=> b!56485 (= b_free!1919 (not b_next!1919))))

(declare-fun tp!7853 () Bool)

(declare-fun b_and!3387 () Bool)

(assert (=> b!56485 (= tp!7853 b_and!3387)))

(declare-fun b!56468 () Bool)

(declare-fun e!37186 () Bool)

(declare-fun e!37193 () Bool)

(assert (=> b!56468 (= e!37186 e!37193)))

(declare-fun res!31744 () Bool)

(assert (=> b!56468 (=> (not res!31744) (not e!37193))))

(declare-datatypes ((V!2813 0))(
  ( (V!2814 (val!1232 Int)) )
))
(declare-datatypes ((array!3672 0))(
  ( (array!3673 (arr!1758 (Array (_ BitVec 32) (_ BitVec 64))) (size!1987 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!844 0))(
  ( (ValueCellFull!844 (v!2346 V!2813)) (EmptyCell!844) )
))
(declare-datatypes ((array!3674 0))(
  ( (array!3675 (arr!1759 (Array (_ BitVec 32) ValueCell!844)) (size!1988 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!596 0))(
  ( (LongMapFixedSize!597 (defaultEntry!2012 Int) (mask!5879 (_ BitVec 32)) (extraKeys!1903 (_ BitVec 32)) (zeroValue!1930 V!2813) (minValue!1930 V!2813) (_size!347 (_ BitVec 32)) (_keys!3632 array!3672) (_values!1995 array!3674) (_vacant!347 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!406 0))(
  ( (Cell!407 (v!2347 LongMapFixedSize!596)) )
))
(declare-datatypes ((LongMap!406 0))(
  ( (LongMap!407 (underlying!214 Cell!406)) )
))
(declare-fun thiss!992 () LongMap!406)

(declare-datatypes ((tuple2!2016 0))(
  ( (tuple2!2017 (_1!1018 (_ BitVec 64)) (_2!1018 V!2813)) )
))
(declare-datatypes ((List!1438 0))(
  ( (Nil!1435) (Cons!1434 (h!2014 tuple2!2016) (t!4732 List!1438)) )
))
(declare-datatypes ((ListLongMap!1361 0))(
  ( (ListLongMap!1362 (toList!696 List!1438)) )
))
(declare-fun lt!22269 () ListLongMap!1361)

(declare-fun lt!22267 () ListLongMap!1361)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!56468 (= res!31744 (and (= lt!22267 lt!22269) (not (= (select (arr!1758 (_keys!3632 (v!2347 (underlying!214 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1758 (_keys!3632 (v!2347 (underlying!214 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!596)

(declare-fun map!1093 (LongMapFixedSize!596) ListLongMap!1361)

(assert (=> b!56468 (= lt!22269 (map!1093 newMap!16))))

(declare-fun getCurrentListMap!395 (array!3672 array!3674 (_ BitVec 32) (_ BitVec 32) V!2813 V!2813 (_ BitVec 32) Int) ListLongMap!1361)

(assert (=> b!56468 (= lt!22267 (getCurrentListMap!395 (_keys!3632 (v!2347 (underlying!214 thiss!992))) (_values!1995 (v!2347 (underlying!214 thiss!992))) (mask!5879 (v!2347 (underlying!214 thiss!992))) (extraKeys!1903 (v!2347 (underlying!214 thiss!992))) (zeroValue!1930 (v!2347 (underlying!214 thiss!992))) (minValue!1930 (v!2347 (underlying!214 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2012 (v!2347 (underlying!214 thiss!992)))))))

(declare-fun mapNonEmpty!2795 () Bool)

(declare-fun mapRes!2795 () Bool)

(declare-fun tp!7852 () Bool)

(declare-fun e!37182 () Bool)

(assert (=> mapNonEmpty!2795 (= mapRes!2795 (and tp!7852 e!37182))))

(declare-fun mapValue!2796 () ValueCell!844)

(declare-fun mapKey!2796 () (_ BitVec 32))

(declare-fun mapRest!2795 () (Array (_ BitVec 32) ValueCell!844))

(assert (=> mapNonEmpty!2795 (= (arr!1759 (_values!1995 (v!2347 (underlying!214 thiss!992)))) (store mapRest!2795 mapKey!2796 mapValue!2796))))

(declare-fun b!56469 () Bool)

(declare-fun res!31743 () Bool)

(assert (=> b!56469 (=> (not res!31743) (not e!37186))))

(assert (=> b!56469 (= res!31743 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1987 (_keys!3632 (v!2347 (underlying!214 thiss!992)))))))))

(declare-fun b!56470 () Bool)

(declare-fun e!37183 () Bool)

(declare-fun tp_is_empty!2375 () Bool)

(assert (=> b!56470 (= e!37183 tp_is_empty!2375)))

(declare-fun mapIsEmpty!2795 () Bool)

(assert (=> mapIsEmpty!2795 mapRes!2795))

(declare-fun b!56472 () Bool)

(declare-fun res!31749 () Bool)

(declare-fun e!37178 () Bool)

(assert (=> b!56472 (=> res!31749 e!37178)))

(declare-datatypes ((List!1439 0))(
  ( (Nil!1436) (Cons!1435 (h!2015 (_ BitVec 64)) (t!4733 List!1439)) )
))
(declare-fun lt!22266 () List!1439)

(declare-fun noDuplicate!48 (List!1439) Bool)

(assert (=> b!56472 (= res!31749 (not (noDuplicate!48 lt!22266)))))

(declare-fun b!56473 () Bool)

(declare-fun res!31740 () Bool)

(assert (=> b!56473 (=> (not res!31740) (not e!37186))))

(declare-fun valid!239 (LongMapFixedSize!596) Bool)

(assert (=> b!56473 (= res!31740 (valid!239 newMap!16))))

(declare-fun b!56474 () Bool)

(declare-fun e!37181 () Bool)

(declare-fun e!37189 () Bool)

(assert (=> b!56474 (= e!37181 e!37189)))

(declare-fun b!56475 () Bool)

(declare-fun e!37192 () Bool)

(assert (=> b!56475 (= e!37189 e!37192)))

(declare-fun b!56476 () Bool)

(declare-fun e!37191 () Bool)

(assert (=> b!56476 (= e!37191 tp_is_empty!2375)))

(declare-fun b!56477 () Bool)

(declare-fun res!31745 () Bool)

(assert (=> b!56477 (=> res!31745 e!37178)))

(declare-fun contains!678 (List!1439 (_ BitVec 64)) Bool)

(assert (=> b!56477 (= res!31745 (contains!678 lt!22266 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!56478 () Bool)

(declare-fun res!31739 () Bool)

(assert (=> b!56478 (=> res!31739 e!37178)))

(assert (=> b!56478 (= res!31739 (contains!678 lt!22266 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!37188 () Bool)

(declare-fun array_inv!1037 (array!3672) Bool)

(declare-fun array_inv!1038 (array!3674) Bool)

(assert (=> b!56479 (= e!37192 (and tp!7851 tp_is_empty!2375 (array_inv!1037 (_keys!3632 (v!2347 (underlying!214 thiss!992)))) (array_inv!1038 (_values!1995 (v!2347 (underlying!214 thiss!992)))) e!37188))))

(declare-fun b!56480 () Bool)

(declare-fun e!37184 () Bool)

(assert (=> b!56480 (= e!37193 e!37184)))

(declare-fun res!31742 () Bool)

(assert (=> b!56480 (=> (not res!31742) (not e!37184))))

(declare-fun contains!679 (ListLongMap!1361 (_ BitVec 64)) Bool)

(assert (=> b!56480 (= res!31742 (contains!679 lt!22269 (select (arr!1758 (_keys!3632 (v!2347 (underlying!214 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2018 0))(
  ( (tuple2!2019 (_1!1019 Bool) (_2!1019 LongMapFixedSize!596)) )
))
(declare-fun lt!22265 () tuple2!2018)

(declare-fun update!77 (LongMapFixedSize!596 (_ BitVec 64) V!2813) tuple2!2018)

(declare-fun get!1060 (ValueCell!844 V!2813) V!2813)

(declare-fun dynLambda!305 (Int (_ BitVec 64)) V!2813)

(assert (=> b!56480 (= lt!22265 (update!77 newMap!16 (select (arr!1758 (_keys!3632 (v!2347 (underlying!214 thiss!992)))) from!355) (get!1060 (select (arr!1759 (_values!1995 (v!2347 (underlying!214 thiss!992)))) from!355) (dynLambda!305 (defaultEntry!2012 (v!2347 (underlying!214 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!56481 () Bool)

(assert (=> b!56481 (= e!37184 (not e!37178))))

(declare-fun res!31747 () Bool)

(assert (=> b!56481 (=> res!31747 e!37178)))

(assert (=> b!56481 (= res!31747 (or (bvsge (size!1987 (_keys!3632 (v!2347 (underlying!214 thiss!992)))) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!1987 (_keys!3632 (v!2347 (underlying!214 thiss!992)))))))))

(assert (=> b!56481 (= lt!22266 (Cons!1435 (select (arr!1758 (_keys!3632 (v!2347 (underlying!214 thiss!992)))) from!355) Nil!1436))))

(declare-fun arrayNoDuplicates!0 (array!3672 (_ BitVec 32) List!1439) Bool)

(assert (=> b!56481 (arrayNoDuplicates!0 (_keys!3632 (v!2347 (underlying!214 thiss!992))) from!355 Nil!1436)))

(declare-datatypes ((Unit!1466 0))(
  ( (Unit!1467) )
))
(declare-fun lt!22264 () Unit!1466)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3672 (_ BitVec 32) (_ BitVec 32)) Unit!1466)

(assert (=> b!56481 (= lt!22264 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3632 (v!2347 (underlying!214 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!3672 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!56481 (arrayContainsKey!0 (_keys!3632 (v!2347 (underlying!214 thiss!992))) (select (arr!1758 (_keys!3632 (v!2347 (underlying!214 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!22268 () Unit!1466)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!22 (array!3672 array!3674 (_ BitVec 32) (_ BitVec 32) V!2813 V!2813 (_ BitVec 64) (_ BitVec 32) Int) Unit!1466)

(assert (=> b!56481 (= lt!22268 (lemmaListMapContainsThenArrayContainsFrom!22 (_keys!3632 (v!2347 (underlying!214 thiss!992))) (_values!1995 (v!2347 (underlying!214 thiss!992))) (mask!5879 (v!2347 (underlying!214 thiss!992))) (extraKeys!1903 (v!2347 (underlying!214 thiss!992))) (zeroValue!1930 (v!2347 (underlying!214 thiss!992))) (minValue!1930 (v!2347 (underlying!214 thiss!992))) (select (arr!1758 (_keys!3632 (v!2347 (underlying!214 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2012 (v!2347 (underlying!214 thiss!992)))))))

(declare-fun b!56482 () Bool)

(assert (=> b!56482 (= e!37182 tp_is_empty!2375)))

(declare-fun b!56483 () Bool)

(declare-fun res!31748 () Bool)

(assert (=> b!56483 (=> (not res!31748) (not e!37186))))

(assert (=> b!56483 (= res!31748 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5879 newMap!16)) (_size!347 (v!2347 (underlying!214 thiss!992)))))))

(declare-fun res!31746 () Bool)

(assert (=> start!8388 (=> (not res!31746) (not e!37186))))

(declare-fun valid!240 (LongMap!406) Bool)

(assert (=> start!8388 (= res!31746 (valid!240 thiss!992))))

(assert (=> start!8388 e!37186))

(assert (=> start!8388 e!37181))

(assert (=> start!8388 true))

(declare-fun e!37180 () Bool)

(assert (=> start!8388 e!37180))

(declare-fun b!56471 () Bool)

(declare-fun e!37187 () Bool)

(assert (=> b!56471 (= e!37188 (and e!37187 mapRes!2795))))

(declare-fun condMapEmpty!2795 () Bool)

(declare-fun mapDefault!2795 () ValueCell!844)

