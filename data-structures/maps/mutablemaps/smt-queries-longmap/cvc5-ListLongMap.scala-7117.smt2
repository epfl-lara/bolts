; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90256 () Bool)

(assert start!90256)

(declare-fun b!1032909 () Bool)

(declare-fun b_free!20755 () Bool)

(declare-fun b_next!20755 () Bool)

(assert (=> b!1032909 (= b_free!20755 (not b_next!20755))))

(declare-fun tp!73355 () Bool)

(declare-fun b_and!33241 () Bool)

(assert (=> b!1032909 (= tp!73355 b_and!33241)))

(declare-fun b!1032905 () Bool)

(declare-fun e!583760 () Bool)

(declare-fun tp_is_empty!24475 () Bool)

(assert (=> b!1032905 (= e!583760 tp_is_empty!24475)))

(declare-fun mapNonEmpty!38185 () Bool)

(declare-fun mapRes!38185 () Bool)

(declare-fun tp!73356 () Bool)

(declare-fun e!583763 () Bool)

(assert (=> mapNonEmpty!38185 (= mapRes!38185 (and tp!73356 e!583763))))

(declare-fun mapKey!38185 () (_ BitVec 32))

(declare-datatypes ((V!37507 0))(
  ( (V!37508 (val!12288 Int)) )
))
(declare-datatypes ((ValueCell!11534 0))(
  ( (ValueCellFull!11534 (v!14866 V!37507)) (EmptyCell!11534) )
))
(declare-fun mapRest!38185 () (Array (_ BitVec 32) ValueCell!11534))

(declare-fun mapValue!38185 () ValueCell!11534)

(declare-datatypes ((array!65008 0))(
  ( (array!65009 (arr!31297 (Array (_ BitVec 32) (_ BitVec 64))) (size!31819 (_ BitVec 32))) )
))
(declare-datatypes ((array!65010 0))(
  ( (array!65011 (arr!31298 (Array (_ BitVec 32) ValueCell!11534)) (size!31820 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5662 0))(
  ( (LongMapFixedSize!5663 (defaultEntry!6205 Int) (mask!30037 (_ BitVec 32)) (extraKeys!5937 (_ BitVec 32)) (zeroValue!6041 V!37507) (minValue!6041 V!37507) (_size!2886 (_ BitVec 32)) (_keys!11379 array!65008) (_values!6228 array!65010) (_vacant!2886 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5662)

(assert (=> mapNonEmpty!38185 (= (arr!31298 (_values!6228 thiss!1427)) (store mapRest!38185 mapKey!38185 mapValue!38185))))

(declare-fun res!690341 () Bool)

(declare-fun e!583759 () Bool)

(assert (=> start!90256 (=> (not res!690341) (not e!583759))))

(declare-fun valid!2092 (LongMapFixedSize!5662) Bool)

(assert (=> start!90256 (= res!690341 (valid!2092 thiss!1427))))

(assert (=> start!90256 e!583759))

(declare-fun e!583762 () Bool)

(assert (=> start!90256 e!583762))

(assert (=> start!90256 true))

(declare-fun mapIsEmpty!38185 () Bool)

(assert (=> mapIsEmpty!38185 mapRes!38185))

(declare-fun b!1032906 () Bool)

(declare-fun e!583761 () Bool)

(assert (=> b!1032906 (= e!583761 (and e!583760 mapRes!38185))))

(declare-fun condMapEmpty!38185 () Bool)

(declare-fun mapDefault!38185 () ValueCell!11534)

