; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92164 () Bool)

(assert start!92164)

(declare-fun b!1047955 () Bool)

(declare-fun b_free!21179 () Bool)

(declare-fun b_next!21179 () Bool)

(assert (=> b!1047955 (= b_free!21179 (not b_next!21179))))

(declare-fun tp!74804 () Bool)

(declare-fun b_and!33907 () Bool)

(assert (=> b!1047955 (= tp!74804 b_and!33907)))

(declare-fun mapNonEmpty!38998 () Bool)

(declare-fun mapRes!38998 () Bool)

(declare-fun tp!74805 () Bool)

(declare-fun e!594300 () Bool)

(assert (=> mapNonEmpty!38998 (= mapRes!38998 (and tp!74805 e!594300))))

(declare-fun mapKey!38998 () (_ BitVec 32))

(declare-datatypes ((V!38071 0))(
  ( (V!38072 (val!12500 Int)) )
))
(declare-datatypes ((ValueCell!11746 0))(
  ( (ValueCellFull!11746 (v!15101 V!38071)) (EmptyCell!11746) )
))
(declare-fun mapValue!38998 () ValueCell!11746)

(declare-datatypes ((array!65962 0))(
  ( (array!65963 (arr!31721 (Array (_ BitVec 32) (_ BitVec 64))) (size!32258 (_ BitVec 32))) )
))
(declare-datatypes ((array!65964 0))(
  ( (array!65965 (arr!31722 (Array (_ BitVec 32) ValueCell!11746)) (size!32259 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6086 0))(
  ( (LongMapFixedSize!6087 (defaultEntry!6447 Int) (mask!30599 (_ BitVec 32)) (extraKeys!6175 (_ BitVec 32)) (zeroValue!6281 V!38071) (minValue!6281 V!38071) (_size!3098 (_ BitVec 32)) (_keys!11723 array!65962) (_values!6470 array!65964) (_vacant!3098 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6086)

(declare-fun mapRest!38998 () (Array (_ BitVec 32) ValueCell!11746))

(assert (=> mapNonEmpty!38998 (= (arr!31722 (_values!6470 thiss!1427)) (store mapRest!38998 mapKey!38998 mapValue!38998))))

(declare-fun res!697229 () Bool)

(declare-fun e!594305 () Bool)

(assert (=> start!92164 (=> (not res!697229) (not e!594305))))

(declare-fun valid!2238 (LongMapFixedSize!6086) Bool)

(assert (=> start!92164 (= res!697229 (valid!2238 thiss!1427))))

(assert (=> start!92164 e!594305))

(declare-fun e!594303 () Bool)

(assert (=> start!92164 e!594303))

(assert (=> start!92164 true))

(declare-fun b!1047953 () Bool)

(declare-fun res!697230 () Bool)

(assert (=> b!1047953 (=> (not res!697230) (not e!594305))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9861 0))(
  ( (MissingZero!9861 (index!41814 (_ BitVec 32))) (Found!9861 (index!41815 (_ BitVec 32))) (Intermediate!9861 (undefined!10673 Bool) (index!41816 (_ BitVec 32)) (x!93537 (_ BitVec 32))) (Undefined!9861) (MissingVacant!9861 (index!41817 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!65962 (_ BitVec 32)) SeekEntryResult!9861)

(assert (=> b!1047953 (= res!697230 (not (is-Found!9861 (seekEntry!0 key!909 (_keys!11723 thiss!1427) (mask!30599 thiss!1427)))))))

(declare-fun b!1047954 () Bool)

(assert (=> b!1047954 (= e!594305 false)))

(declare-datatypes ((tuple2!15948 0))(
  ( (tuple2!15949 (_1!7984 (_ BitVec 64)) (_2!7984 V!38071)) )
))
(declare-datatypes ((List!22168 0))(
  ( (Nil!22165) (Cons!22164 (h!23373 tuple2!15948) (t!31482 List!22168)) )
))
(declare-datatypes ((ListLongMap!13929 0))(
  ( (ListLongMap!13930 (toList!6980 List!22168)) )
))
(declare-fun lt!463075 () ListLongMap!13929)

(declare-fun map!14839 (LongMapFixedSize!6086) ListLongMap!13929)

(assert (=> b!1047954 (= lt!463075 (map!14839 thiss!1427))))

(declare-fun e!594301 () Bool)

(declare-fun tp_is_empty!24899 () Bool)

(declare-fun array_inv!24343 (array!65962) Bool)

(declare-fun array_inv!24344 (array!65964) Bool)

(assert (=> b!1047955 (= e!594303 (and tp!74804 tp_is_empty!24899 (array_inv!24343 (_keys!11723 thiss!1427)) (array_inv!24344 (_values!6470 thiss!1427)) e!594301))))

(declare-fun b!1047956 () Bool)

(assert (=> b!1047956 (= e!594300 tp_is_empty!24899)))

(declare-fun b!1047957 () Bool)

(declare-fun e!594302 () Bool)

(assert (=> b!1047957 (= e!594301 (and e!594302 mapRes!38998))))

(declare-fun condMapEmpty!38998 () Bool)

(declare-fun mapDefault!38998 () ValueCell!11746)

