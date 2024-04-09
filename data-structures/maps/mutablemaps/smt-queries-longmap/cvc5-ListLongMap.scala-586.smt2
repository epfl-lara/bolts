; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15670 () Bool)

(assert start!15670)

(declare-fun b!155975 () Bool)

(declare-fun b_free!3325 () Bool)

(declare-fun b_next!3325 () Bool)

(assert (=> b!155975 (= b_free!3325 (not b_next!3325))))

(declare-fun tp!12500 () Bool)

(declare-fun b_and!9757 () Bool)

(assert (=> b!155975 (= tp!12500 b_and!9757)))

(declare-fun b!155971 () Bool)

(declare-fun e!102001 () Bool)

(assert (=> b!155971 (= e!102001 (not true))))

(declare-fun lt!81517 () Bool)

(declare-datatypes ((V!3817 0))(
  ( (V!3818 (val!1608 Int)) )
))
(declare-datatypes ((ValueCell!1220 0))(
  ( (ValueCellFull!1220 (v!3469 V!3817)) (EmptyCell!1220) )
))
(declare-datatypes ((array!5306 0))(
  ( (array!5307 (arr!2510 (Array (_ BitVec 32) (_ BitVec 64))) (size!2788 (_ BitVec 32))) )
))
(declare-datatypes ((array!5308 0))(
  ( (array!5309 (arr!2511 (Array (_ BitVec 32) ValueCell!1220)) (size!2789 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1348 0))(
  ( (LongMapFixedSize!1349 (defaultEntry!3116 Int) (mask!7557 (_ BitVec 32)) (extraKeys!2857 (_ BitVec 32)) (zeroValue!2959 V!3817) (minValue!2959 V!3817) (_size!723 (_ BitVec 32)) (_keys!4891 array!5306) (_values!3099 array!5308) (_vacant!723 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1348)

(declare-fun v!309 () V!3817)

(declare-fun valid!651 (LongMapFixedSize!1348) Bool)

(assert (=> b!155971 (= lt!81517 (valid!651 (LongMapFixedSize!1349 (defaultEntry!3116 thiss!1248) (mask!7557 thiss!1248) (bvor (extraKeys!2857 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2959 thiss!1248) (_size!723 thiss!1248) (_keys!4891 thiss!1248) (_values!3099 thiss!1248) (_vacant!723 thiss!1248))))))

(declare-datatypes ((tuple2!2830 0))(
  ( (tuple2!2831 (_1!1425 (_ BitVec 64)) (_2!1425 V!3817)) )
))
(declare-datatypes ((List!1860 0))(
  ( (Nil!1857) (Cons!1856 (h!2465 tuple2!2830) (t!6670 List!1860)) )
))
(declare-datatypes ((ListLongMap!1839 0))(
  ( (ListLongMap!1840 (toList!935 List!1860)) )
))
(declare-fun +!198 (ListLongMap!1839 tuple2!2830) ListLongMap!1839)

(declare-fun getCurrentListMap!595 (array!5306 array!5308 (_ BitVec 32) (_ BitVec 32) V!3817 V!3817 (_ BitVec 32) Int) ListLongMap!1839)

(assert (=> b!155971 (= (+!198 (getCurrentListMap!595 (_keys!4891 thiss!1248) (_values!3099 thiss!1248) (mask!7557 thiss!1248) (extraKeys!2857 thiss!1248) (zeroValue!2959 thiss!1248) (minValue!2959 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3116 thiss!1248)) (tuple2!2831 #b0000000000000000000000000000000000000000000000000000000000000000 v!309)) (getCurrentListMap!595 (_keys!4891 thiss!1248) (_values!3099 thiss!1248) (mask!7557 thiss!1248) (bvor (extraKeys!2857 thiss!1248) #b00000000000000000000000000000001) v!309 (minValue!2959 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3116 thiss!1248)))))

(declare-datatypes ((Unit!4948 0))(
  ( (Unit!4949) )
))
(declare-fun lt!81518 () Unit!4948)

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!82 (array!5306 array!5308 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3817 V!3817 V!3817 Int) Unit!4948)

(assert (=> b!155971 (= lt!81518 (lemmaChangeZeroKeyThenAddPairToListMap!82 (_keys!4891 thiss!1248) (_values!3099 thiss!1248) (mask!7557 thiss!1248) (extraKeys!2857 thiss!1248) (bvor (extraKeys!2857 thiss!1248) #b00000000000000000000000000000001) (zeroValue!2959 thiss!1248) v!309 (minValue!2959 thiss!1248) (defaultEntry!3116 thiss!1248)))))

(declare-fun b!155972 () Bool)

(declare-fun e!101998 () Bool)

(declare-fun e!102002 () Bool)

(declare-fun mapRes!5333 () Bool)

(assert (=> b!155972 (= e!101998 (and e!102002 mapRes!5333))))

(declare-fun condMapEmpty!5333 () Bool)

(declare-fun mapDefault!5333 () ValueCell!1220)

