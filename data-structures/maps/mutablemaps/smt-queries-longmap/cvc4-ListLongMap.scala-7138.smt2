; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90706 () Bool)

(assert start!90706)

(declare-fun b!1036979 () Bool)

(declare-fun b_free!20885 () Bool)

(declare-fun b_next!20885 () Bool)

(assert (=> b!1036979 (= b_free!20885 (not b_next!20885))))

(declare-fun tp!73794 () Bool)

(declare-fun b_and!33435 () Bool)

(assert (=> b!1036979 (= tp!73794 b_and!33435)))

(declare-fun res!692083 () Bool)

(declare-fun e!586565 () Bool)

(assert (=> start!90706 (=> (not res!692083) (not e!586565))))

(declare-datatypes ((V!37679 0))(
  ( (V!37680 (val!12353 Int)) )
))
(declare-datatypes ((ValueCell!11599 0))(
  ( (ValueCellFull!11599 (v!14937 V!37679)) (EmptyCell!11599) )
))
(declare-datatypes ((array!65294 0))(
  ( (array!65295 (arr!31427 (Array (_ BitVec 32) (_ BitVec 64))) (size!31957 (_ BitVec 32))) )
))
(declare-datatypes ((array!65296 0))(
  ( (array!65297 (arr!31428 (Array (_ BitVec 32) ValueCell!11599)) (size!31958 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5792 0))(
  ( (LongMapFixedSize!5793 (defaultEntry!6278 Int) (mask!30179 (_ BitVec 32)) (extraKeys!6006 (_ BitVec 32)) (zeroValue!6112 V!37679) (minValue!6112 V!37679) (_size!2951 (_ BitVec 32)) (_keys!11466 array!65294) (_values!6301 array!65296) (_vacant!2951 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5792)

(declare-fun valid!2136 (LongMapFixedSize!5792) Bool)

(assert (=> start!90706 (= res!692083 (valid!2136 thiss!1427))))

(assert (=> start!90706 e!586565))

(declare-fun e!586567 () Bool)

(assert (=> start!90706 e!586567))

(assert (=> start!90706 true))

(declare-fun b!1036976 () Bool)

(declare-fun e!586564 () Bool)

(declare-fun e!586563 () Bool)

(assert (=> b!1036976 (= e!586564 e!586563)))

(declare-fun res!692085 () Bool)

(assert (=> b!1036976 (=> res!692085 e!586563)))

(declare-datatypes ((SeekEntryResult!9744 0))(
  ( (MissingZero!9744 (index!41346 (_ BitVec 32))) (Found!9744 (index!41347 (_ BitVec 32))) (Intermediate!9744 (undefined!10556 Bool) (index!41348 (_ BitVec 32)) (x!92481 (_ BitVec 32))) (Undefined!9744) (MissingVacant!9744 (index!41349 (_ BitVec 32))) )
))
(declare-fun lt!457349 () SeekEntryResult!9744)

(assert (=> b!1036976 (= res!692085 (or (bvslt (index!41347 lt!457349) #b00000000000000000000000000000000) (bvsge (index!41347 lt!457349) (size!31957 (_keys!11466 thiss!1427)))))))

(declare-fun b!1036977 () Bool)

(assert (=> b!1036977 (= e!586563 (bvsge (size!31957 (_keys!11466 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1036978 () Bool)

(declare-fun e!586562 () Bool)

(declare-fun tp_is_empty!24605 () Bool)

(assert (=> b!1036978 (= e!586562 tp_is_empty!24605)))

(declare-fun e!586560 () Bool)

(declare-fun array_inv!24139 (array!65294) Bool)

(declare-fun array_inv!24140 (array!65296) Bool)

(assert (=> b!1036979 (= e!586567 (and tp!73794 tp_is_empty!24605 (array_inv!24139 (_keys!11466 thiss!1427)) (array_inv!24140 (_values!6301 thiss!1427)) e!586560))))

(declare-fun b!1036980 () Bool)

(declare-fun e!586561 () Bool)

(assert (=> b!1036980 (= e!586561 tp_is_empty!24605)))

(declare-fun b!1036981 () Bool)

(declare-fun res!692081 () Bool)

(assert (=> b!1036981 (=> (not res!692081) (not e!586565))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1036981 (= res!692081 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1036982 () Bool)

(assert (=> b!1036982 (= e!586565 e!586564)))

(declare-fun res!692082 () Bool)

(assert (=> b!1036982 (=> (not res!692082) (not e!586564))))

(assert (=> b!1036982 (= res!692082 (is-Found!9744 lt!457349))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65294 (_ BitVec 32)) SeekEntryResult!9744)

(assert (=> b!1036982 (= lt!457349 (seekEntry!0 key!909 (_keys!11466 thiss!1427) (mask!30179 thiss!1427)))))

(declare-fun mapIsEmpty!38429 () Bool)

(declare-fun mapRes!38429 () Bool)

(assert (=> mapIsEmpty!38429 mapRes!38429))

(declare-fun b!1036983 () Bool)

(assert (=> b!1036983 (= e!586560 (and e!586562 mapRes!38429))))

(declare-fun condMapEmpty!38429 () Bool)

(declare-fun mapDefault!38429 () ValueCell!11599)

