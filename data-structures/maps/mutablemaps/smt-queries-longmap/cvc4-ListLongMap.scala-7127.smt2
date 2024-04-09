; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90476 () Bool)

(assert start!90476)

(declare-fun b!1034913 () Bool)

(declare-fun b_free!20819 () Bool)

(declare-fun b_next!20819 () Bool)

(assert (=> b!1034913 (= b_free!20819 (not b_next!20819))))

(declare-fun tp!73571 () Bool)

(declare-fun b_and!33337 () Bool)

(assert (=> b!1034913 (= tp!73571 b_and!33337)))

(declare-fun b!1034909 () Bool)

(declare-fun res!691189 () Bool)

(declare-fun e!585143 () Bool)

(assert (=> b!1034909 (=> (not res!691189) (not e!585143))))

(declare-datatypes ((V!37591 0))(
  ( (V!37592 (val!12320 Int)) )
))
(declare-datatypes ((ValueCell!11566 0))(
  ( (ValueCellFull!11566 (v!14901 V!37591)) (EmptyCell!11566) )
))
(declare-datatypes ((array!65148 0))(
  ( (array!65149 (arr!31361 (Array (_ BitVec 32) (_ BitVec 64))) (size!31887 (_ BitVec 32))) )
))
(declare-datatypes ((array!65150 0))(
  ( (array!65151 (arr!31362 (Array (_ BitVec 32) ValueCell!11566)) (size!31888 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5726 0))(
  ( (LongMapFixedSize!5727 (defaultEntry!6241 Int) (mask!30106 (_ BitVec 32)) (extraKeys!5971 (_ BitVec 32)) (zeroValue!6075 V!37591) (minValue!6077 V!37591) (_size!2918 (_ BitVec 32)) (_keys!11422 array!65148) (_values!6264 array!65150) (_vacant!2918 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5726)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1034909 (= res!691189 (validMask!0 (mask!30106 thiss!1427)))))

(declare-fun b!1034910 () Bool)

(assert (=> b!1034910 (= e!585143 (and (= (size!31888 (_values!6264 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!30106 thiss!1427))) (not (= (size!31887 (_keys!11422 thiss!1427)) (size!31888 (_values!6264 thiss!1427))))))))

(declare-fun b!1034911 () Bool)

(declare-fun e!585141 () Bool)

(declare-fun e!585140 () Bool)

(declare-fun mapRes!38304 () Bool)

(assert (=> b!1034911 (= e!585141 (and e!585140 mapRes!38304))))

(declare-fun condMapEmpty!38304 () Bool)

(declare-fun mapDefault!38304 () ValueCell!11566)

