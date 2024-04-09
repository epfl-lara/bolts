; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7984 () Bool)

(assert start!7984)

(declare-fun b!50004 () Bool)

(declare-fun b_free!1521 () Bool)

(declare-fun b_next!1521 () Bool)

(assert (=> b!50004 (= b_free!1521 (not b_next!1521))))

(declare-fun tp!6608 () Bool)

(declare-fun b_and!2741 () Bool)

(assert (=> b!50004 (= tp!6608 b_and!2741)))

(declare-fun b!50001 () Bool)

(declare-fun e!32239 () Bool)

(declare-fun tp_is_empty!2175 () Bool)

(assert (=> b!50001 (= e!32239 tp_is_empty!2175)))

(declare-fun b!50002 () Bool)

(declare-fun e!32242 () Bool)

(assert (=> b!50002 (= e!32242 tp_is_empty!2175)))

(declare-fun mapNonEmpty!2147 () Bool)

(declare-fun mapRes!2147 () Bool)

(declare-fun tp!6607 () Bool)

(assert (=> mapNonEmpty!2147 (= mapRes!2147 (and tp!6607 e!32239))))

(declare-datatypes ((V!2547 0))(
  ( (V!2548 (val!1132 Int)) )
))
(declare-datatypes ((ValueCell!744 0))(
  ( (ValueCellFull!744 (v!2150 V!2547)) (EmptyCell!744) )
))
(declare-fun mapValue!2147 () ValueCell!744)

(declare-fun mapRest!2147 () (Array (_ BitVec 32) ValueCell!744))

(declare-fun mapKey!2147 () (_ BitVec 32))

(declare-datatypes ((array!3258 0))(
  ( (array!3259 (arr!1558 (Array (_ BitVec 32) (_ BitVec 64))) (size!1780 (_ BitVec 32))) )
))
(declare-datatypes ((array!3260 0))(
  ( (array!3261 (arr!1559 (Array (_ BitVec 32) ValueCell!744)) (size!1781 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!396 0))(
  ( (LongMapFixedSize!397 (defaultEntry!1912 Int) (mask!5692 (_ BitVec 32)) (extraKeys!1803 (_ BitVec 32)) (zeroValue!1830 V!2547) (minValue!1830 V!2547) (_size!247 (_ BitVec 32)) (_keys!3518 array!3258) (_values!1895 array!3260) (_vacant!247 (_ BitVec 32))) )
))
(declare-fun thiss!1134 () LongMapFixedSize!396)

(assert (=> mapNonEmpty!2147 (= (arr!1559 (_values!1895 thiss!1134)) (store mapRest!2147 mapKey!2147 mapValue!2147))))

(declare-fun b!50003 () Bool)

(declare-fun e!32238 () Bool)

(assert (=> b!50003 (= e!32238 (and e!32242 mapRes!2147))))

(declare-fun condMapEmpty!2147 () Bool)

(declare-fun mapDefault!2147 () ValueCell!744)

(assert (=> b!50003 (= condMapEmpty!2147 (= (arr!1559 (_values!1895 thiss!1134)) ((as const (Array (_ BitVec 32) ValueCell!744)) mapDefault!2147)))))

(declare-fun lt!21021 () Bool)

(declare-fun valid!131 (LongMapFixedSize!396) Bool)

(assert (=> start!7984 (= lt!21021 (valid!131 thiss!1134))))

(assert (=> start!7984 false))

(declare-fun e!32240 () Bool)

(assert (=> start!7984 e!32240))

(declare-fun array_inv!907 (array!3258) Bool)

(declare-fun array_inv!908 (array!3260) Bool)

(assert (=> b!50004 (= e!32240 (and tp!6608 tp_is_empty!2175 (array_inv!907 (_keys!3518 thiss!1134)) (array_inv!908 (_values!1895 thiss!1134)) e!32238))))

(declare-fun mapIsEmpty!2147 () Bool)

(assert (=> mapIsEmpty!2147 mapRes!2147))

(assert (= (and b!50003 condMapEmpty!2147) mapIsEmpty!2147))

(assert (= (and b!50003 (not condMapEmpty!2147)) mapNonEmpty!2147))

(get-info :version)

(assert (= (and mapNonEmpty!2147 ((_ is ValueCellFull!744) mapValue!2147)) b!50001))

(assert (= (and b!50003 ((_ is ValueCellFull!744) mapDefault!2147)) b!50002))

(assert (= b!50004 b!50003))

(assert (= start!7984 b!50004))

(declare-fun m!43493 () Bool)

(assert (=> mapNonEmpty!2147 m!43493))

(declare-fun m!43495 () Bool)

(assert (=> start!7984 m!43495))

(declare-fun m!43497 () Bool)

(assert (=> b!50004 m!43497))

(declare-fun m!43499 () Bool)

(assert (=> b!50004 m!43499))

(check-sat tp_is_empty!2175 (not mapNonEmpty!2147) b_and!2741 (not b_next!1521) (not b!50004) (not start!7984))
(check-sat b_and!2741 (not b_next!1521))
