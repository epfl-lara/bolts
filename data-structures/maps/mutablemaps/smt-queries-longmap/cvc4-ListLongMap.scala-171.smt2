; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3276 () Bool)

(assert start!3276)

(declare-fun b!20105 () Bool)

(declare-fun b_free!707 () Bool)

(declare-fun b_next!707 () Bool)

(assert (=> b!20105 (= b_free!707 (not b_next!707))))

(declare-fun tp!3346 () Bool)

(declare-fun b_and!1381 () Bool)

(assert (=> b!20105 (= tp!3346 b_and!1381)))

(declare-fun b!20100 () Bool)

(declare-fun e!13113 () Bool)

(declare-fun e!13114 () Bool)

(assert (=> b!20100 (= e!13113 e!13114)))

(declare-fun res!13385 () Bool)

(assert (=> b!20100 (=> (not res!13385) (not e!13114))))

(declare-datatypes ((V!1119 0))(
  ( (V!1120 (val!512 Int)) )
))
(declare-datatypes ((ValueCell!286 0))(
  ( (ValueCellFull!286 (v!1541 V!1119)) (EmptyCell!286) )
))
(declare-datatypes ((array!1157 0))(
  ( (array!1158 (arr!551 (Array (_ BitVec 32) ValueCell!286)) (size!644 (_ BitVec 32))) )
))
(declare-datatypes ((array!1159 0))(
  ( (array!1160 (arr!552 (Array (_ BitVec 32) (_ BitVec 64))) (size!645 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!158 0))(
  ( (LongMapFixedSize!159 (defaultEntry!1701 Int) (mask!4661 (_ BitVec 32)) (extraKeys!1608 (_ BitVec 32)) (zeroValue!1632 V!1119) (minValue!1632 V!1119) (_size!116 (_ BitVec 32)) (_keys!3126 array!1159) (_values!1694 array!1157) (_vacant!116 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!158 0))(
  ( (Cell!159 (v!1542 LongMapFixedSize!158)) )
))
(declare-datatypes ((LongMap!158 0))(
  ( (LongMap!159 (underlying!90 Cell!158)) )
))
(declare-fun thiss!938 () LongMap!158)

(assert (=> b!20100 (= res!13385 (and (= (bvand (extraKeys!1608 (v!1542 (underlying!90 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand (extraKeys!1608 (v!1542 (underlying!90 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!5774 () LongMapFixedSize!158)

(declare-fun getNewLongMapFixedSize!16 ((_ BitVec 32) Int) LongMapFixedSize!158)

(declare-fun computeNewMask!13 (LongMap!158 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!20100 (= lt!5774 (getNewLongMapFixedSize!16 (computeNewMask!13 thiss!938 (mask!4661 (v!1542 (underlying!90 thiss!938))) (_vacant!116 (v!1542 (underlying!90 thiss!938))) (_size!116 (v!1542 (underlying!90 thiss!938)))) (defaultEntry!1701 (v!1542 (underlying!90 thiss!938)))))))

(declare-fun mapIsEmpty!925 () Bool)

(declare-fun mapRes!925 () Bool)

(assert (=> mapIsEmpty!925 mapRes!925))

(declare-fun b!20101 () Bool)

(declare-fun e!13112 () Bool)

(declare-fun e!13110 () Bool)

(assert (=> b!20101 (= e!13112 e!13110)))

(declare-fun b!20102 () Bool)

(declare-fun valid!81 (LongMapFixedSize!158) Bool)

(assert (=> b!20102 (= e!13114 (not (valid!81 lt!5774)))))

(declare-fun b!20103 () Bool)

(declare-fun e!13109 () Bool)

(assert (=> b!20103 (= e!13110 e!13109)))

(declare-fun b!20104 () Bool)

(declare-fun e!13108 () Bool)

(declare-fun tp_is_empty!971 () Bool)

(assert (=> b!20104 (= e!13108 tp_is_empty!971)))

(declare-fun e!13115 () Bool)

(declare-fun array_inv!389 (array!1159) Bool)

(declare-fun array_inv!390 (array!1157) Bool)

(assert (=> b!20105 (= e!13109 (and tp!3346 tp_is_empty!971 (array_inv!389 (_keys!3126 (v!1542 (underlying!90 thiss!938)))) (array_inv!390 (_values!1694 (v!1542 (underlying!90 thiss!938)))) e!13115))))

(declare-fun mapNonEmpty!925 () Bool)

(declare-fun tp!3345 () Bool)

(declare-fun e!13116 () Bool)

(assert (=> mapNonEmpty!925 (= mapRes!925 (and tp!3345 e!13116))))

(declare-fun mapKey!925 () (_ BitVec 32))

(declare-fun mapValue!925 () ValueCell!286)

(declare-fun mapRest!925 () (Array (_ BitVec 32) ValueCell!286))

(assert (=> mapNonEmpty!925 (= (arr!551 (_values!1694 (v!1542 (underlying!90 thiss!938)))) (store mapRest!925 mapKey!925 mapValue!925))))

(declare-fun res!13386 () Bool)

(assert (=> start!3276 (=> (not res!13386) (not e!13113))))

(declare-fun valid!82 (LongMap!158) Bool)

(assert (=> start!3276 (= res!13386 (valid!82 thiss!938))))

(assert (=> start!3276 e!13113))

(assert (=> start!3276 e!13112))

(declare-fun b!20106 () Bool)

(assert (=> b!20106 (= e!13116 tp_is_empty!971)))

(declare-fun b!20107 () Bool)

(assert (=> b!20107 (= e!13115 (and e!13108 mapRes!925))))

(declare-fun condMapEmpty!925 () Bool)

(declare-fun mapDefault!925 () ValueCell!286)

