; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91808 () Bool)

(assert start!91808)

(declare-fun b!1044256 () Bool)

(declare-fun b_free!21115 () Bool)

(declare-fun b_next!21115 () Bool)

(assert (=> b!1044256 (= b_free!21115 (not b_next!21115))))

(declare-fun tp!74593 () Bool)

(declare-fun b_and!33703 () Bool)

(assert (=> b!1044256 (= tp!74593 b_and!33703)))

(declare-fun b!1044249 () Bool)

(declare-fun e!591828 () Bool)

(declare-fun tp_is_empty!24835 () Bool)

(assert (=> b!1044249 (= e!591828 tp_is_empty!24835)))

(declare-fun b!1044250 () Bool)

(declare-fun e!591832 () Bool)

(declare-datatypes ((V!37987 0))(
  ( (V!37988 (val!12468 Int)) )
))
(declare-datatypes ((ValueCell!11714 0))(
  ( (ValueCellFull!11714 (v!15061 V!37987)) (EmptyCell!11714) )
))
(declare-datatypes ((Unit!34094 0))(
  ( (Unit!34095) )
))
(declare-datatypes ((array!65822 0))(
  ( (array!65823 (arr!31657 (Array (_ BitVec 32) (_ BitVec 64))) (size!32193 (_ BitVec 32))) )
))
(declare-datatypes ((array!65824 0))(
  ( (array!65825 (arr!31658 (Array (_ BitVec 32) ValueCell!11714)) (size!32194 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6022 0))(
  ( (LongMapFixedSize!6023 (defaultEntry!6399 Int) (mask!30501 (_ BitVec 32)) (extraKeys!6127 (_ BitVec 32)) (zeroValue!6233 V!37987) (minValue!6233 V!37987) (_size!3066 (_ BitVec 32)) (_keys!11660 array!65822) (_values!6422 array!65824) (_vacant!3066 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15856 0))(
  ( (tuple2!15857 (_1!7938 Unit!34094) (_2!7938 LongMapFixedSize!6022)) )
))
(declare-fun lt!460587 () tuple2!15856)

(assert (=> b!1044250 (= e!591832 (= (size!32194 (_values!6422 (_2!7938 lt!460587))) (bvadd #b00000000000000000000000000000001 (mask!30501 (_2!7938 lt!460587)))))))

(declare-fun mapIsEmpty!38882 () Bool)

(declare-fun mapRes!38882 () Bool)

(assert (=> mapIsEmpty!38882 mapRes!38882))

(declare-fun b!1044252 () Bool)

(declare-fun e!591831 () Bool)

(assert (=> b!1044252 (= e!591831 tp_is_empty!24835)))

(declare-fun mapNonEmpty!38882 () Bool)

(declare-fun tp!74592 () Bool)

(assert (=> mapNonEmpty!38882 (= mapRes!38882 (and tp!74592 e!591828))))

(declare-fun mapKey!38882 () (_ BitVec 32))

(declare-fun thiss!1427 () LongMapFixedSize!6022)

(declare-fun mapRest!38882 () (Array (_ BitVec 32) ValueCell!11714))

(declare-fun mapValue!38882 () ValueCell!11714)

(assert (=> mapNonEmpty!38882 (= (arr!31658 (_values!6422 thiss!1427)) (store mapRest!38882 mapKey!38882 mapValue!38882))))

(declare-fun b!1044253 () Bool)

(declare-fun res!695620 () Bool)

(declare-fun e!591830 () Bool)

(assert (=> b!1044253 (=> (not res!695620) (not e!591830))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1044253 (= res!695620 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1044254 () Bool)

(declare-fun e!591826 () Bool)

(assert (=> b!1044254 (= e!591826 (and e!591831 mapRes!38882))))

(declare-fun condMapEmpty!38882 () Bool)

(declare-fun mapDefault!38882 () ValueCell!11714)

