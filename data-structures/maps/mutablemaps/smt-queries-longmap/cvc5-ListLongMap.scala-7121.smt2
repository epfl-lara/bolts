; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90296 () Bool)

(assert start!90296)

(declare-fun b!1033228 () Bool)

(declare-fun b_free!20779 () Bool)

(declare-fun b_next!20779 () Bool)

(assert (=> b!1033228 (= b_free!20779 (not b_next!20779))))

(declare-fun tp!73431 () Bool)

(declare-fun b_and!33265 () Bool)

(assert (=> b!1033228 (= tp!73431 b_and!33265)))

(declare-fun b!1033227 () Bool)

(declare-fun e!584016 () Bool)

(declare-fun tp_is_empty!24499 () Bool)

(assert (=> b!1033227 (= e!584016 tp_is_empty!24499)))

(declare-fun e!584021 () Bool)

(declare-fun e!584020 () Bool)

(declare-datatypes ((V!37539 0))(
  ( (V!37540 (val!12300 Int)) )
))
(declare-datatypes ((ValueCell!11546 0))(
  ( (ValueCellFull!11546 (v!14878 V!37539)) (EmptyCell!11546) )
))
(declare-datatypes ((array!65058 0))(
  ( (array!65059 (arr!31321 (Array (_ BitVec 32) (_ BitVec 64))) (size!31844 (_ BitVec 32))) )
))
(declare-datatypes ((array!65060 0))(
  ( (array!65061 (arr!31322 (Array (_ BitVec 32) ValueCell!11546)) (size!31845 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5686 0))(
  ( (LongMapFixedSize!5687 (defaultEntry!6217 Int) (mask!30059 (_ BitVec 32)) (extraKeys!5949 (_ BitVec 32)) (zeroValue!6053 V!37539) (minValue!6053 V!37539) (_size!2898 (_ BitVec 32)) (_keys!11392 array!65058) (_values!6240 array!65060) (_vacant!2898 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5686)

(declare-fun array_inv!24067 (array!65058) Bool)

(declare-fun array_inv!24068 (array!65060) Bool)

(assert (=> b!1033228 (= e!584021 (and tp!73431 tp_is_empty!24499 (array_inv!24067 (_keys!11392 thiss!1427)) (array_inv!24068 (_values!6240 thiss!1427)) e!584020))))

(declare-fun b!1033229 () Bool)

(declare-fun res!690484 () Bool)

(declare-fun e!584017 () Bool)

(assert (=> b!1033229 (=> (not res!690484) (not e!584017))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1033229 (= res!690484 (validMask!0 (mask!30059 thiss!1427)))))

(declare-fun b!1033230 () Bool)

(declare-fun e!584019 () Bool)

(assert (=> b!1033230 (= e!584019 tp_is_empty!24499)))

(declare-fun res!690486 () Bool)

(assert (=> start!90296 (=> (not res!690486) (not e!584017))))

(declare-fun valid!2100 (LongMapFixedSize!5686) Bool)

(assert (=> start!90296 (= res!690486 (valid!2100 thiss!1427))))

(assert (=> start!90296 e!584017))

(assert (=> start!90296 e!584021))

(assert (=> start!90296 true))

(declare-fun b!1033231 () Bool)

(declare-fun res!690485 () Bool)

(assert (=> b!1033231 (=> (not res!690485) (not e!584017))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1033231 (= res!690485 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1033232 () Bool)

(assert (=> b!1033232 (= e!584017 (and (= (size!31845 (_values!6240 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30059 thiss!1427))) (= (size!31844 (_keys!11392 thiss!1427)) (size!31845 (_values!6240 thiss!1427))) (bvsge (mask!30059 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5949 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5949 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5949 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5949 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5949 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5949 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (not (= (bvand (bvand (extraKeys!5949 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!1033233 () Bool)

(declare-fun mapRes!38225 () Bool)

(assert (=> b!1033233 (= e!584020 (and e!584019 mapRes!38225))))

(declare-fun condMapEmpty!38225 () Bool)

(declare-fun mapDefault!38225 () ValueCell!11546)

