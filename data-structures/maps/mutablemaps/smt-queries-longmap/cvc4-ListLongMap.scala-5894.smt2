; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76154 () Bool)

(assert start!76154)

(declare-fun b!894265 () Bool)

(declare-fun b_free!15869 () Bool)

(declare-fun b_next!15869 () Bool)

(assert (=> b!894265 (= b_free!15869 (not b_next!15869))))

(declare-fun tp!55592 () Bool)

(declare-fun b_and!26177 () Bool)

(assert (=> b!894265 (= tp!55592 b_and!26177)))

(declare-fun b!894262 () Bool)

(declare-fun e!499524 () Bool)

(declare-fun tp_is_empty!18197 () Bool)

(assert (=> b!894262 (= e!499524 tp_is_empty!18197)))

(declare-fun b!894263 () Bool)

(declare-fun e!499522 () Bool)

(declare-datatypes ((array!52368 0))(
  ( (array!52369 (arr!25182 (Array (_ BitVec 32) (_ BitVec 64))) (size!25629 (_ BitVec 32))) )
))
(declare-datatypes ((V!29227 0))(
  ( (V!29228 (val!9149 Int)) )
))
(declare-datatypes ((ValueCell!8617 0))(
  ( (ValueCellFull!8617 (v!11635 V!29227)) (EmptyCell!8617) )
))
(declare-datatypes ((array!52370 0))(
  ( (array!52371 (arr!25183 (Array (_ BitVec 32) ValueCell!8617)) (size!25630 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4250 0))(
  ( (LongMapFixedSize!4251 (defaultEntry!5337 Int) (mask!25887 (_ BitVec 32)) (extraKeys!5033 (_ BitVec 32)) (zeroValue!5137 V!29227) (minValue!5137 V!29227) (_size!2180 (_ BitVec 32)) (_keys!10030 array!52368) (_values!5324 array!52370) (_vacant!2180 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4250)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun dynLambda!1303 (Int (_ BitVec 64)) V!29227)

(declare-datatypes ((Option!460 0))(
  ( (Some!459 (v!11636 V!29227)) (None!458) )
))
(declare-fun get!13275 (Option!460) V!29227)

(declare-datatypes ((tuple2!12050 0))(
  ( (tuple2!12051 (_1!6035 (_ BitVec 64)) (_2!6035 V!29227)) )
))
(declare-datatypes ((List!17885 0))(
  ( (Nil!17882) (Cons!17881 (h!19014 tuple2!12050) (t!25232 List!17885)) )
))
(declare-fun getValueByKey!454 (List!17885 (_ BitVec 64)) Option!460)

(declare-datatypes ((ListLongMap!10761 0))(
  ( (ListLongMap!10762 (toList!5396 List!17885)) )
))
(declare-fun map!12225 (LongMapFixedSize!4250) ListLongMap!10761)

(assert (=> b!894263 (= e!499522 (not (= (dynLambda!1303 (defaultEntry!5337 thiss!1181) key!785) (get!13275 (getValueByKey!454 (toList!5396 (map!12225 thiss!1181)) key!785)))))))

(declare-fun res!605358 () Bool)

(assert (=> start!76154 (=> (not res!605358) (not e!499522))))

(declare-fun valid!1633 (LongMapFixedSize!4250) Bool)

(assert (=> start!76154 (= res!605358 (valid!1633 thiss!1181))))

(assert (=> start!76154 e!499522))

(declare-fun e!499525 () Bool)

(assert (=> start!76154 e!499525))

(assert (=> start!76154 true))

(declare-fun mapNonEmpty!28866 () Bool)

(declare-fun mapRes!28866 () Bool)

(declare-fun tp!55593 () Bool)

(declare-fun e!499526 () Bool)

(assert (=> mapNonEmpty!28866 (= mapRes!28866 (and tp!55593 e!499526))))

(declare-fun mapRest!28866 () (Array (_ BitVec 32) ValueCell!8617))

(declare-fun mapValue!28866 () ValueCell!8617)

(declare-fun mapKey!28866 () (_ BitVec 32))

(assert (=> mapNonEmpty!28866 (= (arr!25183 (_values!5324 thiss!1181)) (store mapRest!28866 mapKey!28866 mapValue!28866))))

(declare-fun b!894264 () Bool)

(declare-fun res!605359 () Bool)

(assert (=> b!894264 (=> (not res!605359) (not e!499522))))

(declare-fun contains!4380 (LongMapFixedSize!4250 (_ BitVec 64)) Bool)

(assert (=> b!894264 (= res!605359 (contains!4380 thiss!1181 key!785))))

(declare-fun e!499521 () Bool)

(declare-fun array_inv!19754 (array!52368) Bool)

(declare-fun array_inv!19755 (array!52370) Bool)

(assert (=> b!894265 (= e!499525 (and tp!55592 tp_is_empty!18197 (array_inv!19754 (_keys!10030 thiss!1181)) (array_inv!19755 (_values!5324 thiss!1181)) e!499521))))

(declare-fun b!894266 () Bool)

(assert (=> b!894266 (= e!499521 (and e!499524 mapRes!28866))))

(declare-fun condMapEmpty!28866 () Bool)

(declare-fun mapDefault!28866 () ValueCell!8617)

