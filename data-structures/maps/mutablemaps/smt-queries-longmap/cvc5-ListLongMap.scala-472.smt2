; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9230 () Bool)

(assert start!9230)

(declare-fun b!65786 () Bool)

(declare-fun b_free!2053 () Bool)

(declare-fun b_next!2053 () Bool)

(assert (=> b!65786 (= b_free!2053 (not b_next!2053))))

(declare-fun tp!8307 () Bool)

(declare-fun b_and!4049 () Bool)

(assert (=> b!65786 (= tp!8307 b_and!4049)))

(declare-fun b!65785 () Bool)

(declare-fun b_free!2055 () Bool)

(declare-fun b_next!2055 () Bool)

(assert (=> b!65785 (= b_free!2055 (not b_next!2055))))

(declare-fun tp!8309 () Bool)

(declare-fun b_and!4051 () Bool)

(assert (=> b!65785 (= tp!8309 b_and!4051)))

(declare-fun b!65784 () Bool)

(declare-fun e!43151 () Bool)

(declare-fun tp_is_empty!2443 () Bool)

(assert (=> b!65784 (= e!43151 tp_is_empty!2443)))

(declare-fun e!43155 () Bool)

(declare-datatypes ((V!2905 0))(
  ( (V!2906 (val!1266 Int)) )
))
(declare-datatypes ((array!3822 0))(
  ( (array!3823 (arr!1826 (Array (_ BitVec 32) (_ BitVec 64))) (size!2061 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!878 0))(
  ( (ValueCellFull!878 (v!2468 V!2905)) (EmptyCell!878) )
))
(declare-datatypes ((array!3824 0))(
  ( (array!3825 (arr!1827 (Array (_ BitVec 32) ValueCell!878)) (size!2062 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!664 0))(
  ( (LongMapFixedSize!665 (defaultEntry!2140 Int) (mask!6072 (_ BitVec 32)) (extraKeys!2011 (_ BitVec 32)) (zeroValue!2048 V!2905) (minValue!2048 V!2905) (_size!381 (_ BitVec 32)) (_keys!3780 array!3822) (_values!2123 array!3824) (_vacant!381 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!664)

(declare-fun e!43141 () Bool)

(declare-fun array_inv!1083 (array!3822) Bool)

(declare-fun array_inv!1084 (array!3824) Bool)

(assert (=> b!65785 (= e!43155 (and tp!8309 tp_is_empty!2443 (array_inv!1083 (_keys!3780 newMap!16)) (array_inv!1084 (_values!2123 newMap!16)) e!43141))))

(declare-fun e!43152 () Bool)

(declare-datatypes ((Cell!474 0))(
  ( (Cell!475 (v!2469 LongMapFixedSize!664)) )
))
(declare-datatypes ((LongMap!474 0))(
  ( (LongMap!475 (underlying!248 Cell!474)) )
))
(declare-fun thiss!992 () LongMap!474)

(declare-fun e!43143 () Bool)

(assert (=> b!65786 (= e!43143 (and tp!8307 tp_is_empty!2443 (array_inv!1083 (_keys!3780 (v!2469 (underlying!248 thiss!992)))) (array_inv!1084 (_values!2123 (v!2469 (underlying!248 thiss!992)))) e!43152))))

(declare-fun b!65787 () Bool)

(declare-fun e!43150 () Bool)

(declare-fun e!43142 () Bool)

(assert (=> b!65787 (= e!43150 e!43142)))

(declare-fun res!35703 () Bool)

(assert (=> b!65787 (=> (not res!35703) (not e!43142))))

(declare-datatypes ((tuple2!2102 0))(
  ( (tuple2!2103 (_1!1061 (_ BitVec 64)) (_2!1061 V!2905)) )
))
(declare-datatypes ((List!1485 0))(
  ( (Nil!1482) (Cons!1481 (h!2065 tuple2!2102) (t!4955 List!1485)) )
))
(declare-datatypes ((ListLongMap!1411 0))(
  ( (ListLongMap!1412 (toList!721 List!1485)) )
))
(declare-fun lt!28143 () ListLongMap!1411)

(declare-fun lt!28150 () ListLongMap!1411)

(assert (=> b!65787 (= res!35703 (= lt!28143 lt!28150))))

(declare-fun map!1139 (LongMapFixedSize!664) ListLongMap!1411)

(assert (=> b!65787 (= lt!28150 (map!1139 newMap!16))))

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!417 (array!3822 array!3824 (_ BitVec 32) (_ BitVec 32) V!2905 V!2905 (_ BitVec 32) Int) ListLongMap!1411)

(assert (=> b!65787 (= lt!28143 (getCurrentListMap!417 (_keys!3780 (v!2469 (underlying!248 thiss!992))) (_values!2123 (v!2469 (underlying!248 thiss!992))) (mask!6072 (v!2469 (underlying!248 thiss!992))) (extraKeys!2011 (v!2469 (underlying!248 thiss!992))) (zeroValue!2048 (v!2469 (underlying!248 thiss!992))) (minValue!2048 (v!2469 (underlying!248 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2140 (v!2469 (underlying!248 thiss!992)))))))

(declare-fun b!65788 () Bool)

(declare-fun e!43153 () Bool)

(assert (=> b!65788 (= e!43153 tp_is_empty!2443)))

(declare-fun b!65789 () Bool)

(declare-fun e!43148 () Bool)

(assert (=> b!65789 (= e!43148 e!43143)))

(declare-fun mapIsEmpty!3047 () Bool)

(declare-fun mapRes!3048 () Bool)

(assert (=> mapIsEmpty!3047 mapRes!3048))

(declare-fun b!65790 () Bool)

(declare-fun e!43140 () Bool)

(assert (=> b!65790 (= e!43141 (and e!43140 mapRes!3048))))

(declare-fun condMapEmpty!3048 () Bool)

(declare-fun mapDefault!3047 () ValueCell!878)

