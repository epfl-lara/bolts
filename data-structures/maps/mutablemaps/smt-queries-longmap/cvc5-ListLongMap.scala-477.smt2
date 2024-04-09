; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9764 () Bool)

(assert start!9764)

(declare-fun b!72829 () Bool)

(declare-fun b_free!2113 () Bool)

(declare-fun b_next!2113 () Bool)

(assert (=> b!72829 (= b_free!2113 (not b_next!2113))))

(declare-fun tp!8518 () Bool)

(declare-fun b_and!4465 () Bool)

(assert (=> b!72829 (= tp!8518 b_and!4465)))

(declare-fun b!72824 () Bool)

(declare-fun b_free!2115 () Bool)

(declare-fun b_next!2115 () Bool)

(assert (=> b!72824 (= b_free!2115 (not b_next!2115))))

(declare-fun tp!8516 () Bool)

(declare-fun b_and!4467 () Bool)

(assert (=> b!72824 (= tp!8516 b_and!4467)))

(declare-fun b!72813 () Bool)

(declare-fun e!47647 () Bool)

(declare-fun e!47645 () Bool)

(assert (=> b!72813 (= e!47647 e!47645)))

(declare-fun res!38671 () Bool)

(assert (=> b!72813 (=> (not res!38671) (not e!47645))))

(declare-datatypes ((V!2945 0))(
  ( (V!2946 (val!1281 Int)) )
))
(declare-datatypes ((array!3890 0))(
  ( (array!3891 (arr!1856 (Array (_ BitVec 32) (_ BitVec 64))) (size!2094 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!893 0))(
  ( (ValueCellFull!893 (v!2530 V!2945)) (EmptyCell!893) )
))
(declare-datatypes ((array!3892 0))(
  ( (array!3893 (arr!1857 (Array (_ BitVec 32) ValueCell!893)) (size!2095 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!694 0))(
  ( (LongMapFixedSize!695 (defaultEntry!2212 Int) (mask!6179 (_ BitVec 32)) (extraKeys!2071 (_ BitVec 32)) (zeroValue!2114 V!2945) (minValue!2114 V!2945) (_size!396 (_ BitVec 32)) (_keys!3864 array!3890) (_values!2195 array!3892) (_vacant!396 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!504 0))(
  ( (Cell!505 (v!2531 LongMapFixedSize!694)) )
))
(declare-datatypes ((LongMap!504 0))(
  ( (LongMap!505 (underlying!263 Cell!504)) )
))
(declare-fun thiss!992 () LongMap!504)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!72813 (= res!38671 (and (not (= (select (arr!1856 (_keys!3864 (v!2531 (underlying!263 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1856 (_keys!3864 (v!2531 (underlying!263 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!32441 () V!2945)

(declare-fun get!1153 (ValueCell!893 V!2945) V!2945)

(declare-fun dynLambda!333 (Int (_ BitVec 64)) V!2945)

(assert (=> b!72813 (= lt!32441 (get!1153 (select (arr!1857 (_values!2195 (v!2531 (underlying!263 thiss!992)))) from!355) (dynLambda!333 (defaultEntry!2212 (v!2531 (underlying!263 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!72814 () Bool)

(declare-fun res!38665 () Bool)

(declare-fun e!47650 () Bool)

(assert (=> b!72814 (=> (not res!38665) (not e!47650))))

(declare-fun newMap!16 () LongMapFixedSize!694)

(assert (=> b!72814 (= res!38665 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6179 newMap!16)) (_size!396 (v!2531 (underlying!263 thiss!992)))))))

(declare-fun b!72815 () Bool)

(declare-fun e!47637 () Bool)

(declare-fun e!47646 () Bool)

(assert (=> b!72815 (= e!47637 (not e!47646))))

(declare-fun res!38672 () Bool)

(assert (=> b!72815 (=> res!38672 e!47646)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!72815 (= res!38672 (not (validMask!0 (mask!6179 (v!2531 (underlying!263 thiss!992))))))))

(declare-datatypes ((tuple2!2144 0))(
  ( (tuple2!2145 (_1!1082 (_ BitVec 64)) (_2!1082 V!2945)) )
))
(declare-datatypes ((List!1506 0))(
  ( (Nil!1503) (Cons!1502 (h!2089 tuple2!2144) (t!5063 List!1506)) )
))
(declare-datatypes ((ListLongMap!1437 0))(
  ( (ListLongMap!1438 (toList!734 List!1506)) )
))
(declare-fun lt!32440 () ListLongMap!1437)

(declare-fun lt!32445 () tuple2!2144)

(declare-fun lt!32443 () tuple2!2144)

(declare-fun +!97 (ListLongMap!1437 tuple2!2144) ListLongMap!1437)

(assert (=> b!72815 (= (+!97 (+!97 lt!32440 lt!32445) lt!32443) (+!97 (+!97 lt!32440 lt!32443) lt!32445))))

(assert (=> b!72815 (= lt!32443 (tuple2!2145 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2114 (v!2531 (underlying!263 thiss!992)))))))

(assert (=> b!72815 (= lt!32445 (tuple2!2145 (select (arr!1856 (_keys!3864 (v!2531 (underlying!263 thiss!992)))) from!355) lt!32441))))

(declare-datatypes ((Unit!2084 0))(
  ( (Unit!2085) )
))
(declare-fun lt!32439 () Unit!2084)

(declare-fun addCommutativeForDiffKeys!16 (ListLongMap!1437 (_ BitVec 64) V!2945 (_ BitVec 64) V!2945) Unit!2084)

(assert (=> b!72815 (= lt!32439 (addCommutativeForDiffKeys!16 lt!32440 (select (arr!1856 (_keys!3864 (v!2531 (underlying!263 thiss!992)))) from!355) lt!32441 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2114 (v!2531 (underlying!263 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!61 (array!3890 array!3892 (_ BitVec 32) (_ BitVec 32) V!2945 V!2945 (_ BitVec 32) Int) ListLongMap!1437)

(assert (=> b!72815 (= lt!32440 (getCurrentListMapNoExtraKeys!61 (_keys!3864 (v!2531 (underlying!263 thiss!992))) (_values!2195 (v!2531 (underlying!263 thiss!992))) (mask!6179 (v!2531 (underlying!263 thiss!992))) (extraKeys!2071 (v!2531 (underlying!263 thiss!992))) (zeroValue!2114 (v!2531 (underlying!263 thiss!992))) (minValue!2114 (v!2531 (underlying!263 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2212 (v!2531 (underlying!263 thiss!992)))))))

(declare-fun b!72816 () Bool)

(declare-fun e!47642 () Bool)

(declare-fun e!47633 () Bool)

(declare-fun mapRes!3166 () Bool)

(assert (=> b!72816 (= e!47642 (and e!47633 mapRes!3166))))

(declare-fun condMapEmpty!3166 () Bool)

(declare-fun mapDefault!3165 () ValueCell!893)

