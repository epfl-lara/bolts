; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80426 () Bool)

(assert start!80426)

(declare-fun b!944150 () Bool)

(declare-fun b_free!18041 () Bool)

(declare-fun b_next!18041 () Bool)

(assert (=> b!944150 (= b_free!18041 (not b_next!18041))))

(declare-fun tp!62633 () Bool)

(declare-fun b_and!29477 () Bool)

(assert (=> b!944150 (= tp!62633 b_and!29477)))

(declare-fun b!944145 () Bool)

(declare-fun res!634373 () Bool)

(declare-fun e!530957 () Bool)

(assert (=> b!944145 (=> res!634373 e!530957)))

(declare-datatypes ((V!32363 0))(
  ( (V!32364 (val!10325 Int)) )
))
(declare-datatypes ((ValueCell!9793 0))(
  ( (ValueCellFull!9793 (v!12857 V!32363)) (EmptyCell!9793) )
))
(declare-datatypes ((array!57088 0))(
  ( (array!57089 (arr!27465 (Array (_ BitVec 32) ValueCell!9793)) (size!27932 (_ BitVec 32))) )
))
(declare-datatypes ((array!57090 0))(
  ( (array!57091 (arr!27466 (Array (_ BitVec 32) (_ BitVec 64))) (size!27933 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4736 0))(
  ( (LongMapFixedSize!4737 (defaultEntry!5663 Int) (mask!27302 (_ BitVec 32)) (extraKeys!5395 (_ BitVec 32)) (zeroValue!5499 V!32363) (minValue!5499 V!32363) (_size!2423 (_ BitVec 32)) (_keys!10537 array!57090) (_values!5686 array!57088) (_vacant!2423 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4736)

(declare-fun lt!425531 () (_ BitVec 32))

(assert (=> b!944145 (= res!634373 (or (not (= (size!27933 (_keys!10537 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27302 thiss!1141)))) (bvsgt #b00000000000000000000000000000000 (size!27933 (_keys!10537 thiss!1141))) (bvslt lt!425531 #b00000000000000000000000000000000) (bvsgt lt!425531 (size!27933 (_keys!10537 thiss!1141)))))))

(declare-fun b!944146 () Bool)

(declare-fun e!530958 () Bool)

(declare-fun tp_is_empty!20549 () Bool)

(assert (=> b!944146 (= e!530958 tp_is_empty!20549)))

(declare-fun b!944147 () Bool)

(declare-fun res!634378 () Bool)

(declare-fun e!530960 () Bool)

(assert (=> b!944147 (=> (not res!634378) (not e!530960))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13572 0))(
  ( (tuple2!13573 (_1!6796 (_ BitVec 64)) (_2!6796 V!32363)) )
))
(declare-datatypes ((List!19400 0))(
  ( (Nil!19397) (Cons!19396 (h!20547 tuple2!13572) (t!27725 List!19400)) )
))
(declare-datatypes ((ListLongMap!12283 0))(
  ( (ListLongMap!12284 (toList!6157 List!19400)) )
))
(declare-fun contains!5180 (ListLongMap!12283 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3345 (array!57090 array!57088 (_ BitVec 32) (_ BitVec 32) V!32363 V!32363 (_ BitVec 32) Int) ListLongMap!12283)

(assert (=> b!944147 (= res!634378 (contains!5180 (getCurrentListMap!3345 (_keys!10537 thiss!1141) (_values!5686 thiss!1141) (mask!27302 thiss!1141) (extraKeys!5395 thiss!1141) (zeroValue!5499 thiss!1141) (minValue!5499 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5663 thiss!1141)) key!756))))

(declare-fun b!944148 () Bool)

(assert (=> b!944148 (= e!530957 true)))

(declare-fun lt!425529 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57090 (_ BitVec 32)) Bool)

(assert (=> b!944148 (= lt!425529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10537 thiss!1141) (mask!27302 thiss!1141)))))

(declare-fun res!634374 () Bool)

(assert (=> start!80426 (=> (not res!634374) (not e!530960))))

(declare-fun valid!1788 (LongMapFixedSize!4736) Bool)

(assert (=> start!80426 (= res!634374 (valid!1788 thiss!1141))))

(assert (=> start!80426 e!530960))

(declare-fun e!530959 () Bool)

(assert (=> start!80426 e!530959))

(assert (=> start!80426 true))

(declare-fun b!944149 () Bool)

(declare-fun e!530956 () Bool)

(declare-fun e!530961 () Bool)

(declare-fun mapRes!32649 () Bool)

(assert (=> b!944149 (= e!530956 (and e!530961 mapRes!32649))))

(declare-fun condMapEmpty!32649 () Bool)

(declare-fun mapDefault!32649 () ValueCell!9793)

