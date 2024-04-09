; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75970 () Bool)

(assert start!75970)

(declare-fun b!893231 () Bool)

(declare-fun b_free!15857 () Bool)

(declare-fun b_next!15857 () Bool)

(assert (=> b!893231 (= b_free!15857 (not b_next!15857))))

(declare-fun tp!55546 () Bool)

(declare-fun b_and!26141 () Bool)

(assert (=> b!893231 (= tp!55546 b_and!26141)))

(declare-fun b!893230 () Bool)

(declare-fun e!498873 () Bool)

(declare-fun e!498869 () Bool)

(assert (=> b!893230 (= e!498873 e!498869)))

(declare-fun c!94016 () Bool)

(declare-datatypes ((array!52340 0))(
  ( (array!52341 (arr!25170 (Array (_ BitVec 32) (_ BitVec 64))) (size!25615 (_ BitVec 32))) )
))
(declare-datatypes ((V!29211 0))(
  ( (V!29212 (val!9143 Int)) )
))
(declare-datatypes ((ValueCell!8611 0))(
  ( (ValueCellFull!8611 (v!11622 V!29211)) (EmptyCell!8611) )
))
(declare-datatypes ((array!52342 0))(
  ( (array!52343 (arr!25171 (Array (_ BitVec 32) ValueCell!8611)) (size!25616 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4238 0))(
  ( (LongMapFixedSize!4239 (defaultEntry!5319 Int) (mask!25843 (_ BitVec 32)) (extraKeys!5015 (_ BitVec 32)) (zeroValue!5119 V!29211) (minValue!5119 V!29211) (_size!2174 (_ BitVec 32)) (_keys!10002 array!52340) (_values!5306 array!52342) (_vacant!2174 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4238)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun contains!4370 (LongMapFixedSize!4238 (_ BitVec 64)) Bool)

(assert (=> b!893230 (= c!94016 (contains!4370 thiss!1181 key!785))))

(declare-fun e!498872 () Bool)

(declare-fun tp_is_empty!18185 () Bool)

(declare-fun e!498875 () Bool)

(declare-fun array_inv!19744 (array!52340) Bool)

(declare-fun array_inv!19745 (array!52342) Bool)

(assert (=> b!893231 (= e!498872 (and tp!55546 tp_is_empty!18185 (array_inv!19744 (_keys!10002 thiss!1181)) (array_inv!19745 (_values!5306 thiss!1181)) e!498875))))

(declare-fun b!893232 () Bool)

(declare-fun res!605001 () Bool)

(assert (=> b!893232 (=> (not res!605001) (not e!498873))))

(assert (=> b!893232 (= res!605001 (and (= key!785 (bvneg key!785)) (= key!785 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5015 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!893233 () Bool)

(declare-datatypes ((Option!455 0))(
  ( (Some!454 (v!11623 V!29211)) (None!453) )
))
(declare-fun get!13260 (Option!455) V!29211)

(declare-datatypes ((tuple2!12040 0))(
  ( (tuple2!12041 (_1!6030 (_ BitVec 64)) (_2!6030 V!29211)) )
))
(declare-datatypes ((List!17878 0))(
  ( (Nil!17875) (Cons!17874 (h!19005 tuple2!12040) (t!25209 List!17878)) )
))
(declare-fun getValueByKey!449 (List!17878 (_ BitVec 64)) Option!455)

(declare-datatypes ((ListLongMap!10751 0))(
  ( (ListLongMap!10752 (toList!5391 List!17878)) )
))
(declare-fun map!12216 (LongMapFixedSize!4238) ListLongMap!10751)

(assert (=> b!893233 (= e!498869 (not (= (zeroValue!5119 thiss!1181) (get!13260 (getValueByKey!449 (toList!5391 (map!12216 thiss!1181)) key!785)))))))

(declare-fun mapNonEmpty!28838 () Bool)

(declare-fun mapRes!28838 () Bool)

(declare-fun tp!55547 () Bool)

(declare-fun e!498871 () Bool)

(assert (=> mapNonEmpty!28838 (= mapRes!28838 (and tp!55547 e!498871))))

(declare-fun mapKey!28838 () (_ BitVec 32))

(declare-fun mapValue!28838 () ValueCell!8611)

(declare-fun mapRest!28838 () (Array (_ BitVec 32) ValueCell!8611))

(assert (=> mapNonEmpty!28838 (= (arr!25171 (_values!5306 thiss!1181)) (store mapRest!28838 mapKey!28838 mapValue!28838))))

(declare-fun b!893234 () Bool)

(declare-fun dynLambda!1298 (Int (_ BitVec 64)) V!29211)

(assert (=> b!893234 (= e!498869 (not (= (zeroValue!5119 thiss!1181) (dynLambda!1298 (defaultEntry!5319 thiss!1181) key!785))))))

(declare-fun res!605000 () Bool)

(assert (=> start!75970 (=> (not res!605000) (not e!498873))))

(declare-fun valid!1628 (LongMapFixedSize!4238) Bool)

(assert (=> start!75970 (= res!605000 (valid!1628 thiss!1181))))

(assert (=> start!75970 e!498873))

(assert (=> start!75970 e!498872))

(assert (=> start!75970 true))

(declare-fun b!893235 () Bool)

(declare-fun e!498874 () Bool)

(assert (=> b!893235 (= e!498874 tp_is_empty!18185)))

(declare-fun b!893236 () Bool)

(assert (=> b!893236 (= e!498871 tp_is_empty!18185)))

(declare-fun b!893237 () Bool)

(assert (=> b!893237 (= e!498875 (and e!498874 mapRes!28838))))

(declare-fun condMapEmpty!28838 () Bool)

(declare-fun mapDefault!28838 () ValueCell!8611)

