; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12362 () Bool)

(assert start!12362)

(declare-fun b!105312 () Bool)

(declare-fun b_free!2521 () Bool)

(declare-fun b_next!2521 () Bool)

(assert (=> b!105312 (= b_free!2521 (not b_next!2521))))

(declare-fun tp!9885 () Bool)

(declare-fun b_and!6505 () Bool)

(assert (=> b!105312 (= tp!9885 b_and!6505)))

(declare-fun b!105309 () Bool)

(declare-fun b_free!2523 () Bool)

(declare-fun b_next!2523 () Bool)

(assert (=> b!105309 (= b_free!2523 (not b_next!2523))))

(declare-fun tp!9887 () Bool)

(declare-fun b_and!6507 () Bool)

(assert (=> b!105309 (= tp!9887 b_and!6507)))

(declare-fun b!105298 () Bool)

(declare-fun e!68560 () Bool)

(declare-fun e!68561 () Bool)

(assert (=> b!105298 (= e!68560 (not e!68561))))

(declare-fun res!52430 () Bool)

(assert (=> b!105298 (=> res!52430 e!68561)))

(declare-datatypes ((V!3217 0))(
  ( (V!3218 (val!1383 Int)) )
))
(declare-datatypes ((array!4344 0))(
  ( (array!4345 (arr!2060 (Array (_ BitVec 32) (_ BitVec 64))) (size!2315 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!995 0))(
  ( (ValueCellFull!995 (v!2889 V!3217)) (EmptyCell!995) )
))
(declare-datatypes ((array!4346 0))(
  ( (array!4347 (arr!2061 (Array (_ BitVec 32) ValueCell!995)) (size!2316 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!898 0))(
  ( (LongMapFixedSize!899 (defaultEntry!2581 Int) (mask!6727 (_ BitVec 32)) (extraKeys!2386 (_ BitVec 32)) (zeroValue!2456 V!3217) (minValue!2456 V!3217) (_size!498 (_ BitVec 32)) (_keys!4287 array!4344) (_values!2564 array!4346) (_vacant!498 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!700 0))(
  ( (Cell!701 (v!2890 LongMapFixedSize!898)) )
))
(declare-datatypes ((LongMap!700 0))(
  ( (LongMap!701 (underlying!361 Cell!700)) )
))
(declare-fun thiss!992 () LongMap!700)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!105298 (= res!52430 (not (validMask!0 (mask!6727 (v!2890 (underlying!361 thiss!992))))))))

(declare-datatypes ((tuple2!2408 0))(
  ( (tuple2!2409 (_1!1214 (_ BitVec 64)) (_2!1214 V!3217)) )
))
(declare-datatypes ((List!1641 0))(
  ( (Nil!1638) (Cons!1637 (h!2234 tuple2!2408) (t!5732 List!1641)) )
))
(declare-datatypes ((ListLongMap!1583 0))(
  ( (ListLongMap!1584 (toList!807 List!1641)) )
))
(declare-fun lt!53784 () ListLongMap!1583)

(declare-fun lt!53787 () tuple2!2408)

(declare-fun lt!53785 () tuple2!2408)

(declare-fun +!145 (ListLongMap!1583 tuple2!2408) ListLongMap!1583)

(assert (=> b!105298 (= (+!145 (+!145 lt!53784 lt!53787) lt!53785) (+!145 (+!145 lt!53784 lt!53785) lt!53787))))

(assert (=> b!105298 (= lt!53785 (tuple2!2409 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2456 (v!2890 (underlying!361 thiss!992)))))))

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lt!53783 () V!3217)

(assert (=> b!105298 (= lt!53787 (tuple2!2409 (select (arr!2060 (_keys!4287 (v!2890 (underlying!361 thiss!992)))) from!355) lt!53783))))

(declare-datatypes ((Unit!3248 0))(
  ( (Unit!3249) )
))
(declare-fun lt!53788 () Unit!3248)

(declare-fun addCommutativeForDiffKeys!57 (ListLongMap!1583 (_ BitVec 64) V!3217 (_ BitVec 64) V!3217) Unit!3248)

(assert (=> b!105298 (= lt!53788 (addCommutativeForDiffKeys!57 lt!53784 (select (arr!2060 (_keys!4287 (v!2890 (underlying!361 thiss!992)))) from!355) lt!53783 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2456 (v!2890 (underlying!361 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!112 (array!4344 array!4346 (_ BitVec 32) (_ BitVec 32) V!3217 V!3217 (_ BitVec 32) Int) ListLongMap!1583)

(assert (=> b!105298 (= lt!53784 (getCurrentListMapNoExtraKeys!112 (_keys!4287 (v!2890 (underlying!361 thiss!992))) (_values!2564 (v!2890 (underlying!361 thiss!992))) (mask!6727 (v!2890 (underlying!361 thiss!992))) (extraKeys!2386 (v!2890 (underlying!361 thiss!992))) (zeroValue!2456 (v!2890 (underlying!361 thiss!992))) (minValue!2456 (v!2890 (underlying!361 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2581 (v!2890 (underlying!361 thiss!992)))))))

(declare-fun b!105299 () Bool)

(declare-fun e!68568 () Bool)

(declare-fun e!68567 () Bool)

(assert (=> b!105299 (= e!68568 e!68567)))

(declare-fun mapIsEmpty!3923 () Bool)

(declare-fun mapRes!3924 () Bool)

(assert (=> mapIsEmpty!3923 mapRes!3924))

(declare-fun b!105300 () Bool)

(declare-fun e!68565 () Bool)

(declare-fun e!68552 () Bool)

(assert (=> b!105300 (= e!68565 (and e!68552 mapRes!3924))))

(declare-fun condMapEmpty!3923 () Bool)

(declare-fun mapDefault!3923 () ValueCell!995)

