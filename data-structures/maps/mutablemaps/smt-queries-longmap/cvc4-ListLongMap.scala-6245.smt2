; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79926 () Bool)

(assert start!79926)

(declare-fun b!939493 () Bool)

(declare-fun b_free!17795 () Bool)

(declare-fun b_next!17795 () Bool)

(assert (=> b!939493 (= b_free!17795 (not b_next!17795))))

(declare-fun tp!61849 () Bool)

(declare-fun b_and!29225 () Bool)

(assert (=> b!939493 (= tp!61849 b_and!29225)))

(declare-fun res!631976 () Bool)

(declare-fun e!527796 () Bool)

(assert (=> start!79926 (=> (not res!631976) (not e!527796))))

(declare-datatypes ((V!32035 0))(
  ( (V!32036 (val!10202 Int)) )
))
(declare-datatypes ((ValueCell!9670 0))(
  ( (ValueCellFull!9670 (v!12733 V!32035)) (EmptyCell!9670) )
))
(declare-datatypes ((array!56570 0))(
  ( (array!56571 (arr!27219 (Array (_ BitVec 32) ValueCell!9670)) (size!27679 (_ BitVec 32))) )
))
(declare-datatypes ((array!56572 0))(
  ( (array!56573 (arr!27220 (Array (_ BitVec 32) (_ BitVec 64))) (size!27680 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4490 0))(
  ( (LongMapFixedSize!4491 (defaultEntry!5536 Int) (mask!27045 (_ BitVec 32)) (extraKeys!5268 (_ BitVec 32)) (zeroValue!5372 V!32035) (minValue!5372 V!32035) (_size!2300 (_ BitVec 32)) (_keys!10380 array!56572) (_values!5559 array!56570) (_vacant!2300 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4490)

(declare-fun valid!1707 (LongMapFixedSize!4490) Bool)

(assert (=> start!79926 (= res!631976 (valid!1707 thiss!1141))))

(assert (=> start!79926 e!527796))

(declare-fun e!527799 () Bool)

(assert (=> start!79926 e!527799))

(assert (=> start!79926 true))

(declare-fun b!939492 () Bool)

(declare-fun e!527801 () Bool)

(declare-fun tp_is_empty!20303 () Bool)

(assert (=> b!939492 (= e!527801 tp_is_empty!20303)))

(declare-fun e!527800 () Bool)

(declare-fun array_inv!21122 (array!56572) Bool)

(declare-fun array_inv!21123 (array!56570) Bool)

(assert (=> b!939493 (= e!527799 (and tp!61849 tp_is_empty!20303 (array_inv!21122 (_keys!10380 thiss!1141)) (array_inv!21123 (_values!5559 thiss!1141)) e!527800))))

(declare-fun b!939494 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!939494 (= e!527796 (not (validMask!0 (mask!27045 thiss!1141))))))

(declare-fun mapIsEmpty!32234 () Bool)

(declare-fun mapRes!32234 () Bool)

(assert (=> mapIsEmpty!32234 mapRes!32234))

(declare-fun b!939495 () Bool)

(declare-fun res!631975 () Bool)

(assert (=> b!939495 (=> (not res!631975) (not e!527796))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!939495 (= res!631975 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!939496 () Bool)

(declare-fun e!527797 () Bool)

(assert (=> b!939496 (= e!527797 tp_is_empty!20303)))

(declare-fun mapNonEmpty!32234 () Bool)

(declare-fun tp!61850 () Bool)

(assert (=> mapNonEmpty!32234 (= mapRes!32234 (and tp!61850 e!527797))))

(declare-fun mapRest!32234 () (Array (_ BitVec 32) ValueCell!9670))

(declare-fun mapKey!32234 () (_ BitVec 32))

(declare-fun mapValue!32234 () ValueCell!9670)

(assert (=> mapNonEmpty!32234 (= (arr!27219 (_values!5559 thiss!1141)) (store mapRest!32234 mapKey!32234 mapValue!32234))))

(declare-fun b!939497 () Bool)

(assert (=> b!939497 (= e!527800 (and e!527801 mapRes!32234))))

(declare-fun condMapEmpty!32234 () Bool)

(declare-fun mapDefault!32234 () ValueCell!9670)

