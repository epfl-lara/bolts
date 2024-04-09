; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90146 () Bool)

(assert start!90146)

(declare-fun b!1032228 () Bool)

(declare-fun b_free!20717 () Bool)

(declare-fun b_next!20717 () Bool)

(assert (=> b!1032228 (= b_free!20717 (not b_next!20717))))

(declare-fun tp!73222 () Bool)

(declare-fun b_and!33203 () Bool)

(assert (=> b!1032228 (= tp!73222 b_and!33203)))

(declare-fun tp_is_empty!24437 () Bool)

(declare-datatypes ((V!37455 0))(
  ( (V!37456 (val!12269 Int)) )
))
(declare-datatypes ((ValueCell!11515 0))(
  ( (ValueCellFull!11515 (v!14847 V!37455)) (EmptyCell!11515) )
))
(declare-datatypes ((array!64922 0))(
  ( (array!64923 (arr!31259 (Array (_ BitVec 32) (_ BitVec 64))) (size!31777 (_ BitVec 32))) )
))
(declare-datatypes ((array!64924 0))(
  ( (array!64925 (arr!31260 (Array (_ BitVec 32) ValueCell!11515)) (size!31778 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5624 0))(
  ( (LongMapFixedSize!5625 (defaultEntry!6186 Int) (mask!29995 (_ BitVec 32)) (extraKeys!5918 (_ BitVec 32)) (zeroValue!6022 V!37455) (minValue!6022 V!37455) (_size!2867 (_ BitVec 32)) (_keys!11356 array!64922) (_values!6209 array!64924) (_vacant!2867 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5624)

(declare-fun e!583247 () Bool)

(declare-fun e!583244 () Bool)

(declare-fun array_inv!24033 (array!64922) Bool)

(declare-fun array_inv!24034 (array!64924) Bool)

(assert (=> b!1032228 (= e!583244 (and tp!73222 tp_is_empty!24437 (array_inv!24033 (_keys!11356 thiss!1427)) (array_inv!24034 (_values!6209 thiss!1427)) e!583247))))

(declare-fun b!1032229 () Bool)

(declare-fun e!583249 () Bool)

(assert (=> b!1032229 (= e!583249 tp_is_empty!24437)))

(declare-fun b!1032230 () Bool)

(declare-fun res!690035 () Bool)

(declare-fun e!583248 () Bool)

(assert (=> b!1032230 (=> (not res!690035) (not e!583248))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1032230 (= res!690035 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1032231 () Bool)

(declare-fun e!583245 () Bool)

(assert (=> b!1032231 (= e!583245 tp_is_empty!24437)))

(declare-fun b!1032232 () Bool)

(declare-fun mapRes!38109 () Bool)

(assert (=> b!1032232 (= e!583247 (and e!583245 mapRes!38109))))

(declare-fun condMapEmpty!38109 () Bool)

(declare-fun mapDefault!38109 () ValueCell!11515)

