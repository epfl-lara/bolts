; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15268 () Bool)

(assert start!15268)

(declare-fun b!147316 () Bool)

(declare-fun b_free!3145 () Bool)

(declare-fun b_next!3145 () Bool)

(assert (=> b!147316 (= b_free!3145 (not b_next!3145))))

(declare-fun tp!11942 () Bool)

(declare-fun b_and!9253 () Bool)

(assert (=> b!147316 (= tp!11942 b_and!9253)))

(declare-fun b!147308 () Bool)

(declare-fun b_free!3147 () Bool)

(declare-fun b_next!3147 () Bool)

(assert (=> b!147308 (= b_free!3147 (not b_next!3147))))

(declare-fun tp!11943 () Bool)

(declare-fun b_and!9255 () Bool)

(assert (=> b!147308 (= tp!11943 b_and!9255)))

(declare-fun b!147303 () Bool)

(declare-fun e!96166 () Bool)

(declare-fun e!96173 () Bool)

(assert (=> b!147303 (= e!96166 e!96173)))

(declare-fun res!70005 () Bool)

(assert (=> b!147303 (=> (not res!70005) (not e!96173))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!3633 0))(
  ( (V!3634 (val!1539 Int)) )
))
(declare-datatypes ((tuple2!2762 0))(
  ( (tuple2!2763 (_1!1391 (_ BitVec 64)) (_2!1391 V!3633)) )
))
(declare-datatypes ((List!1805 0))(
  ( (Nil!1802) (Cons!1801 (h!2409 tuple2!2762) (t!6542 List!1805)) )
))
(declare-datatypes ((ListLongMap!1789 0))(
  ( (ListLongMap!1790 (toList!910 List!1805)) )
))
(declare-fun lt!77755 () ListLongMap!1789)

(declare-fun lt!77756 () ListLongMap!1789)

(declare-datatypes ((array!5024 0))(
  ( (array!5025 (arr!2372 (Array (_ BitVec 32) (_ BitVec 64))) (size!2648 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1151 0))(
  ( (ValueCellFull!1151 (v!3368 V!3633)) (EmptyCell!1151) )
))
(declare-datatypes ((array!5026 0))(
  ( (array!5027 (arr!2373 (Array (_ BitVec 32) ValueCell!1151)) (size!2649 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1210 0))(
  ( (LongMapFixedSize!1211 (defaultEntry!3024 Int) (mask!7406 (_ BitVec 32)) (extraKeys!2769 (_ BitVec 32)) (zeroValue!2869 V!3633) (minValue!2869 V!3633) (_size!654 (_ BitVec 32)) (_keys!4793 array!5024) (_values!3007 array!5026) (_vacant!654 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!992 0))(
  ( (Cell!993 (v!3369 LongMapFixedSize!1210)) )
))
(declare-datatypes ((LongMap!992 0))(
  ( (LongMap!993 (underlying!507 Cell!992)) )
))
(declare-fun thiss!992 () LongMap!992)

(assert (=> b!147303 (= res!70005 (and (= lt!77755 lt!77756) (not (= (select (arr!2372 (_keys!4793 (v!3369 (underlying!507 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2372 (_keys!4793 (v!3369 (underlying!507 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!1210)

(declare-fun map!1476 (LongMapFixedSize!1210) ListLongMap!1789)

(assert (=> b!147303 (= lt!77756 (map!1476 newMap!16))))

(declare-fun getCurrentListMap!573 (array!5024 array!5026 (_ BitVec 32) (_ BitVec 32) V!3633 V!3633 (_ BitVec 32) Int) ListLongMap!1789)

(assert (=> b!147303 (= lt!77755 (getCurrentListMap!573 (_keys!4793 (v!3369 (underlying!507 thiss!992))) (_values!3007 (v!3369 (underlying!507 thiss!992))) (mask!7406 (v!3369 (underlying!507 thiss!992))) (extraKeys!2769 (v!3369 (underlying!507 thiss!992))) (zeroValue!2869 (v!3369 (underlying!507 thiss!992))) (minValue!2869 (v!3369 (underlying!507 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3024 (v!3369 (underlying!507 thiss!992)))))))

(declare-fun b!147304 () Bool)

(declare-datatypes ((Unit!4664 0))(
  ( (Unit!4665) )
))
(declare-fun e!96165 () Unit!4664)

(declare-fun Unit!4666 () Unit!4664)

(assert (=> b!147304 (= e!96165 Unit!4666)))

(declare-fun mapNonEmpty!5043 () Bool)

(declare-fun mapRes!5044 () Bool)

(declare-fun tp!11944 () Bool)

(declare-fun e!96161 () Bool)

(assert (=> mapNonEmpty!5043 (= mapRes!5044 (and tp!11944 e!96161))))

(declare-fun mapRest!5043 () (Array (_ BitVec 32) ValueCell!1151))

(declare-fun mapValue!5044 () ValueCell!1151)

(declare-fun mapKey!5043 () (_ BitVec 32))

(assert (=> mapNonEmpty!5043 (= (arr!2373 (_values!3007 newMap!16)) (store mapRest!5043 mapKey!5043 mapValue!5044))))

(declare-fun b!147305 () Bool)

(declare-fun tp_is_empty!2989 () Bool)

(assert (=> b!147305 (= e!96161 tp_is_empty!2989)))

(declare-fun b!147306 () Bool)

(declare-fun res!70003 () Bool)

(assert (=> b!147306 (=> (not res!70003) (not e!96166))))

(assert (=> b!147306 (= res!70003 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2648 (_keys!4793 (v!3369 (underlying!507 thiss!992)))))))))

(declare-fun res!70004 () Bool)

(assert (=> start!15268 (=> (not res!70004) (not e!96166))))

(declare-fun valid!591 (LongMap!992) Bool)

(assert (=> start!15268 (= res!70004 (valid!591 thiss!992))))

(assert (=> start!15268 e!96166))

(declare-fun e!96169 () Bool)

(assert (=> start!15268 e!96169))

(assert (=> start!15268 true))

(declare-fun e!96172 () Bool)

(assert (=> start!15268 e!96172))

(declare-fun b!147307 () Bool)

(declare-fun e!96168 () Bool)

(declare-fun e!96160 () Bool)

(declare-fun mapRes!5043 () Bool)

(assert (=> b!147307 (= e!96168 (and e!96160 mapRes!5043))))

(declare-fun condMapEmpty!5044 () Bool)

(declare-fun mapDefault!5043 () ValueCell!1151)

