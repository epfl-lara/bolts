; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11814 () Bool)

(assert start!11814)

(declare-fun b!99186 () Bool)

(declare-fun b_free!2445 () Bool)

(declare-fun b_next!2445 () Bool)

(assert (=> b!99186 (= b_free!2445 (not b_next!2445))))

(declare-fun tp!9625 () Bool)

(declare-fun b_and!6109 () Bool)

(assert (=> b!99186 (= tp!9625 b_and!6109)))

(declare-fun b!99184 () Bool)

(declare-fun b_free!2447 () Bool)

(declare-fun b_next!2447 () Bool)

(assert (=> b!99184 (= b_free!2447 (not b_next!2447))))

(declare-fun tp!9627 () Bool)

(declare-fun b_and!6111 () Bool)

(assert (=> b!99184 (= tp!9627 b_and!6111)))

(declare-fun res!49832 () Bool)

(declare-fun e!64654 () Bool)

(assert (=> start!11814 (=> (not res!49832) (not e!64654))))

(declare-datatypes ((V!3165 0))(
  ( (V!3166 (val!1364 Int)) )
))
(declare-datatypes ((array!4258 0))(
  ( (array!4259 (arr!2022 (Array (_ BitVec 32) (_ BitVec 64))) (size!2273 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!976 0))(
  ( (ValueCellFull!976 (v!2818 V!3165)) (EmptyCell!976) )
))
(declare-datatypes ((array!4260 0))(
  ( (array!4261 (arr!2023 (Array (_ BitVec 32) ValueCell!976)) (size!2274 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!860 0))(
  ( (LongMapFixedSize!861 (defaultEntry!2503 Int) (mask!6610 (_ BitVec 32)) (extraKeys!2320 (_ BitVec 32)) (zeroValue!2384 V!3165) (minValue!2384 V!3165) (_size!479 (_ BitVec 32)) (_keys!4197 array!4258) (_values!2486 array!4260) (_vacant!479 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!664 0))(
  ( (Cell!665 (v!2819 LongMapFixedSize!860)) )
))
(declare-datatypes ((LongMap!664 0))(
  ( (LongMap!665 (underlying!343 Cell!664)) )
))
(declare-fun thiss!992 () LongMap!664)

(declare-fun valid!389 (LongMap!664) Bool)

(assert (=> start!11814 (= res!49832 (valid!389 thiss!992))))

(assert (=> start!11814 e!64654))

(declare-fun e!64666 () Bool)

(assert (=> start!11814 e!64666))

(assert (=> start!11814 true))

(declare-fun e!64660 () Bool)

(assert (=> start!11814 e!64660))

(declare-fun b!99179 () Bool)

(declare-fun e!64655 () Bool)

(assert (=> b!99179 (= e!64654 e!64655)))

(declare-fun res!49837 () Bool)

(assert (=> b!99179 (=> (not res!49837) (not e!64655))))

(declare-datatypes ((tuple2!2368 0))(
  ( (tuple2!2369 (_1!1194 (_ BitVec 64)) (_2!1194 V!3165)) )
))
(declare-datatypes ((List!1617 0))(
  ( (Nil!1614) (Cons!1613 (h!2208 tuple2!2368) (t!5603 List!1617)) )
))
(declare-datatypes ((ListLongMap!1559 0))(
  ( (ListLongMap!1560 (toList!795 List!1617)) )
))
(declare-fun lt!49887 () ListLongMap!1559)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lt!49882 () ListLongMap!1559)

(assert (=> b!99179 (= res!49837 (and (= lt!49882 lt!49887) (not (= (select (arr!2022 (_keys!4197 (v!2819 (underlying!343 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2022 (_keys!4197 (v!2819 (underlying!343 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!860)

(declare-fun map!1260 (LongMapFixedSize!860) ListLongMap!1559)

(assert (=> b!99179 (= lt!49887 (map!1260 newMap!16))))

(declare-fun getCurrentListMap!475 (array!4258 array!4260 (_ BitVec 32) (_ BitVec 32) V!3165 V!3165 (_ BitVec 32) Int) ListLongMap!1559)

(assert (=> b!99179 (= lt!49882 (getCurrentListMap!475 (_keys!4197 (v!2819 (underlying!343 thiss!992))) (_values!2486 (v!2819 (underlying!343 thiss!992))) (mask!6610 (v!2819 (underlying!343 thiss!992))) (extraKeys!2320 (v!2819 (underlying!343 thiss!992))) (zeroValue!2384 (v!2819 (underlying!343 thiss!992))) (minValue!2384 (v!2819 (underlying!343 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2503 (v!2819 (underlying!343 thiss!992)))))))

(declare-fun b!99180 () Bool)

(declare-fun e!64662 () Bool)

(declare-fun e!64659 () Bool)

(declare-fun mapRes!3778 () Bool)

(assert (=> b!99180 (= e!64662 (and e!64659 mapRes!3778))))

(declare-fun condMapEmpty!3778 () Bool)

(declare-fun mapDefault!3778 () ValueCell!976)

