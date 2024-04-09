; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91888 () Bool)

(assert start!91888)

(declare-fun b!1044868 () Bool)

(declare-fun b_free!21127 () Bool)

(declare-fun b_next!21127 () Bool)

(assert (=> b!1044868 (= b_free!21127 (not b_next!21127))))

(declare-fun tp!74634 () Bool)

(declare-fun b_and!33743 () Bool)

(assert (=> b!1044868 (= tp!74634 b_and!33743)))

(declare-fun b!1044867 () Bool)

(declare-fun res!695913 () Bool)

(declare-fun e!592257 () Bool)

(assert (=> b!1044867 (=> (not res!695913) (not e!592257))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1044867 (= res!695913 (not (= key!909 (bvneg key!909))))))

(declare-fun e!592256 () Bool)

(declare-fun e!592259 () Bool)

(declare-fun tp_is_empty!24847 () Bool)

(declare-datatypes ((V!38003 0))(
  ( (V!38004 (val!12474 Int)) )
))
(declare-datatypes ((ValueCell!11720 0))(
  ( (ValueCellFull!11720 (v!15069 V!38003)) (EmptyCell!11720) )
))
(declare-datatypes ((array!65850 0))(
  ( (array!65851 (arr!31669 (Array (_ BitVec 32) (_ BitVec 64))) (size!32205 (_ BitVec 32))) )
))
(declare-datatypes ((array!65852 0))(
  ( (array!65853 (arr!31670 (Array (_ BitVec 32) ValueCell!11720)) (size!32206 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6034 0))(
  ( (LongMapFixedSize!6035 (defaultEntry!6409 Int) (mask!30523 (_ BitVec 32)) (extraKeys!6137 (_ BitVec 32)) (zeroValue!6243 V!38003) (minValue!6243 V!38003) (_size!3072 (_ BitVec 32)) (_keys!11674 array!65850) (_values!6432 array!65852) (_vacant!3072 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6034)

(declare-fun array_inv!24309 (array!65850) Bool)

(declare-fun array_inv!24310 (array!65852) Bool)

(assert (=> b!1044868 (= e!592256 (and tp!74634 tp_is_empty!24847 (array_inv!24309 (_keys!11674 thiss!1427)) (array_inv!24310 (_values!6432 thiss!1427)) e!592259))))

(declare-fun b!1044869 () Bool)

(declare-fun e!592254 () Bool)

(assert (=> b!1044869 (= e!592257 e!592254)))

(declare-fun res!695912 () Bool)

(assert (=> b!1044869 (=> (not res!695912) (not e!592254))))

(declare-datatypes ((SeekEntryResult!9841 0))(
  ( (MissingZero!9841 (index!41734 (_ BitVec 32))) (Found!9841 (index!41735 (_ BitVec 32))) (Intermediate!9841 (undefined!10653 Bool) (index!41736 (_ BitVec 32)) (x!93314 (_ BitVec 32))) (Undefined!9841) (MissingVacant!9841 (index!41737 (_ BitVec 32))) )
))
(declare-fun lt!461079 () SeekEntryResult!9841)

(assert (=> b!1044869 (= res!695912 (is-Found!9841 lt!461079))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65850 (_ BitVec 32)) SeekEntryResult!9841)

(assert (=> b!1044869 (= lt!461079 (seekEntry!0 key!909 (_keys!11674 thiss!1427) (mask!30523 thiss!1427)))))

(declare-fun mapIsEmpty!38906 () Bool)

(declare-fun mapRes!38906 () Bool)

(assert (=> mapIsEmpty!38906 mapRes!38906))

(declare-fun b!1044870 () Bool)

(declare-fun e!592260 () Bool)

(assert (=> b!1044870 (= e!592259 (and e!592260 mapRes!38906))))

(declare-fun condMapEmpty!38906 () Bool)

(declare-fun mapDefault!38906 () ValueCell!11720)

