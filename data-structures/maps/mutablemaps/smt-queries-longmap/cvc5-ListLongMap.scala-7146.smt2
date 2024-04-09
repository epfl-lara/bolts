; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90848 () Bool)

(assert start!90848)

(declare-fun b!1038058 () Bool)

(declare-fun b_free!20929 () Bool)

(declare-fun b_next!20929 () Bool)

(assert (=> b!1038058 (= b_free!20929 (not b_next!20929))))

(declare-fun tp!73946 () Bool)

(declare-fun b_and!33479 () Bool)

(assert (=> b!1038058 (= tp!73946 b_and!33479)))

(declare-fun b!1038055 () Bool)

(declare-fun res!692596 () Bool)

(declare-fun e!587352 () Bool)

(assert (=> b!1038055 (=> res!692596 e!587352)))

(declare-datatypes ((V!37739 0))(
  ( (V!37740 (val!12375 Int)) )
))
(declare-datatypes ((ValueCell!11621 0))(
  ( (ValueCellFull!11621 (v!14961 V!37739)) (EmptyCell!11621) )
))
(declare-datatypes ((array!65394 0))(
  ( (array!65395 (arr!31471 (Array (_ BitVec 32) (_ BitVec 64))) (size!32002 (_ BitVec 32))) )
))
(declare-datatypes ((array!65396 0))(
  ( (array!65397 (arr!31472 (Array (_ BitVec 32) ValueCell!11621)) (size!32003 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5836 0))(
  ( (LongMapFixedSize!5837 (defaultEntry!6300 Int) (mask!30228 (_ BitVec 32)) (extraKeys!6028 (_ BitVec 32)) (zeroValue!6134 V!37739) (minValue!6134 V!37739) (_size!2973 (_ BitVec 32)) (_keys!11497 array!65394) (_values!6323 array!65396) (_vacant!2973 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5836)

(declare-datatypes ((List!22051 0))(
  ( (Nil!22048) (Cons!22047 (h!23250 (_ BitVec 64)) (t!31272 List!22051)) )
))
(declare-fun arrayNoDuplicates!0 (array!65394 (_ BitVec 32) List!22051) Bool)

(assert (=> b!1038055 (= res!692596 (not (arrayNoDuplicates!0 (_keys!11497 thiss!1427) #b00000000000000000000000000000000 Nil!22048)))))

(declare-fun mapIsEmpty!38514 () Bool)

(declare-fun mapRes!38514 () Bool)

(assert (=> mapIsEmpty!38514 mapRes!38514))

(declare-fun b!1038056 () Bool)

(declare-fun e!587357 () Bool)

(declare-fun e!587355 () Bool)

(assert (=> b!1038056 (= e!587357 e!587355)))

(declare-fun res!692595 () Bool)

(assert (=> b!1038056 (=> (not res!692595) (not e!587355))))

(declare-datatypes ((SeekEntryResult!9761 0))(
  ( (MissingZero!9761 (index!41414 (_ BitVec 32))) (Found!9761 (index!41415 (_ BitVec 32))) (Intermediate!9761 (undefined!10573 Bool) (index!41416 (_ BitVec 32)) (x!92619 (_ BitVec 32))) (Undefined!9761) (MissingVacant!9761 (index!41417 (_ BitVec 32))) )
))
(declare-fun lt!457634 () SeekEntryResult!9761)

(assert (=> b!1038056 (= res!692595 (is-Found!9761 lt!457634))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65394 (_ BitVec 32)) SeekEntryResult!9761)

(assert (=> b!1038056 (= lt!457634 (seekEntry!0 key!909 (_keys!11497 thiss!1427) (mask!30228 thiss!1427)))))

(declare-fun b!1038057 () Bool)

(declare-fun res!692599 () Bool)

(assert (=> b!1038057 (=> (not res!692599) (not e!587357))))

(assert (=> b!1038057 (= res!692599 (not (= key!909 (bvneg key!909))))))

(declare-fun e!587351 () Bool)

(declare-fun tp_is_empty!24649 () Bool)

(declare-fun e!587353 () Bool)

(declare-fun array_inv!24171 (array!65394) Bool)

(declare-fun array_inv!24172 (array!65396) Bool)

(assert (=> b!1038058 (= e!587353 (and tp!73946 tp_is_empty!24649 (array_inv!24171 (_keys!11497 thiss!1427)) (array_inv!24172 (_values!6323 thiss!1427)) e!587351))))

(declare-fun b!1038059 () Bool)

(declare-fun e!587354 () Bool)

(assert (=> b!1038059 (= e!587351 (and e!587354 mapRes!38514))))

(declare-fun condMapEmpty!38514 () Bool)

(declare-fun mapDefault!38514 () ValueCell!11621)

