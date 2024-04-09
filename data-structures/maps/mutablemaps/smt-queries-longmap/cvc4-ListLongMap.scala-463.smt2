; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8436 () Bool)

(assert start!8436)

(declare-fun b!57275 () Bool)

(declare-fun b_free!1953 () Bool)

(declare-fun b_next!1953 () Bool)

(assert (=> b!57275 (= b_free!1953 (not b_next!1953))))

(declare-fun tp!7966 () Bool)

(declare-fun b_and!3461 () Bool)

(assert (=> b!57275 (= tp!7966 b_and!3461)))

(declare-fun b!57278 () Bool)

(declare-fun b_free!1955 () Bool)

(declare-fun b_next!1955 () Bool)

(assert (=> b!57278 (= b_free!1955 (not b_next!1955))))

(declare-fun tp!7964 () Bool)

(declare-fun b_and!3463 () Bool)

(assert (=> b!57278 (= tp!7964 b_and!3463)))

(declare-fun b!57260 () Bool)

(declare-datatypes ((Unit!1492 0))(
  ( (Unit!1493) )
))
(declare-fun e!37770 () Unit!1492)

(declare-fun Unit!1494 () Unit!1492)

(assert (=> b!57260 (= e!37770 Unit!1494)))

(declare-fun b!57261 () Bool)

(declare-fun Unit!1495 () Unit!1492)

(assert (=> b!57261 (= e!37770 Unit!1495)))

(declare-fun lt!22624 () Unit!1492)

(declare-datatypes ((V!2837 0))(
  ( (V!2838 (val!1241 Int)) )
))
(declare-datatypes ((array!3710 0))(
  ( (array!3711 (arr!1776 (Array (_ BitVec 32) (_ BitVec 64))) (size!2005 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!853 0))(
  ( (ValueCellFull!853 (v!2366 V!2837)) (EmptyCell!853) )
))
(declare-datatypes ((array!3712 0))(
  ( (array!3713 (arr!1777 (Array (_ BitVec 32) ValueCell!853)) (size!2006 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!614 0))(
  ( (LongMapFixedSize!615 (defaultEntry!2023 Int) (mask!5897 (_ BitVec 32)) (extraKeys!1914 (_ BitVec 32)) (zeroValue!1941 V!2837) (minValue!1941 V!2837) (_size!356 (_ BitVec 32)) (_keys!3643 array!3710) (_values!2006 array!3712) (_vacant!356 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!424 0))(
  ( (Cell!425 (v!2367 LongMapFixedSize!614)) )
))
(declare-datatypes ((LongMap!424 0))(
  ( (LongMap!425 (underlying!223 Cell!424)) )
))
(declare-fun thiss!992 () LongMap!424)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!27 (array!3710 array!3712 (_ BitVec 32) (_ BitVec 32) V!2837 V!2837 (_ BitVec 64) (_ BitVec 32) Int) Unit!1492)

(assert (=> b!57261 (= lt!22624 (lemmaListMapContainsThenArrayContainsFrom!27 (_keys!3643 (v!2367 (underlying!223 thiss!992))) (_values!2006 (v!2367 (underlying!223 thiss!992))) (mask!5897 (v!2367 (underlying!223 thiss!992))) (extraKeys!1914 (v!2367 (underlying!223 thiss!992))) (zeroValue!1941 (v!2367 (underlying!223 thiss!992))) (minValue!1941 (v!2367 (underlying!223 thiss!992))) (select (arr!1776 (_keys!3643 (v!2367 (underlying!223 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2023 (v!2367 (underlying!223 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3710 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!57261 (arrayContainsKey!0 (_keys!3643 (v!2367 (underlying!223 thiss!992))) (select (arr!1776 (_keys!3643 (v!2367 (underlying!223 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!22621 () Unit!1492)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3710 (_ BitVec 32) (_ BitVec 32)) Unit!1492)

(assert (=> b!57261 (= lt!22621 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3643 (v!2367 (underlying!223 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1451 0))(
  ( (Nil!1448) (Cons!1447 (h!2027 (_ BitVec 64)) (t!4781 List!1451)) )
))
(declare-fun arrayNoDuplicates!0 (array!3710 (_ BitVec 32) List!1451) Bool)

(assert (=> b!57261 (arrayNoDuplicates!0 (_keys!3643 (v!2367 (underlying!223 thiss!992))) from!355 Nil!1448)))

(declare-fun lt!22622 () Unit!1492)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3710 (_ BitVec 32) (_ BitVec 64) List!1451) Unit!1492)

(assert (=> b!57261 (= lt!22622 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3643 (v!2367 (underlying!223 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1776 (_keys!3643 (v!2367 (underlying!223 thiss!992)))) from!355) (Cons!1447 (select (arr!1776 (_keys!3643 (v!2367 (underlying!223 thiss!992)))) from!355) Nil!1448)))))

(assert (=> b!57261 false))

(declare-fun b!57262 () Bool)

(declare-fun e!37768 () Bool)

(declare-fun e!37766 () Bool)

(assert (=> b!57262 (= e!37768 e!37766)))

(declare-fun b!57263 () Bool)

(declare-fun e!37771 () Bool)

(declare-fun tp_is_empty!2393 () Bool)

(assert (=> b!57263 (= e!37771 tp_is_empty!2393)))

(declare-fun mapNonEmpty!2853 () Bool)

(declare-fun mapRes!2854 () Bool)

(declare-fun tp!7965 () Bool)

(assert (=> mapNonEmpty!2853 (= mapRes!2854 (and tp!7965 e!37771))))

(declare-fun mapKey!2853 () (_ BitVec 32))

(declare-fun mapRest!2853 () (Array (_ BitVec 32) ValueCell!853))

(declare-fun mapValue!2853 () ValueCell!853)

(assert (=> mapNonEmpty!2853 (= (arr!1777 (_values!2006 (v!2367 (underlying!223 thiss!992)))) (store mapRest!2853 mapKey!2853 mapValue!2853))))

(declare-fun b!57264 () Bool)

(declare-fun res!32059 () Bool)

(declare-fun e!37767 () Bool)

(assert (=> b!57264 (=> (not res!32059) (not e!37767))))

(declare-fun newMap!16 () LongMapFixedSize!614)

(assert (=> b!57264 (= res!32059 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5897 newMap!16)) (_size!356 (v!2367 (underlying!223 thiss!992)))))))

(declare-fun b!57265 () Bool)

(declare-fun e!37759 () Bool)

(assert (=> b!57265 (= e!37759 tp_is_empty!2393)))

(declare-fun b!57266 () Bool)

(declare-fun e!37760 () Bool)

(declare-fun e!37761 () Bool)

(declare-fun mapRes!2853 () Bool)

(assert (=> b!57266 (= e!37760 (and e!37761 mapRes!2853))))

(declare-fun condMapEmpty!2854 () Bool)

(declare-fun mapDefault!2854 () ValueCell!853)

