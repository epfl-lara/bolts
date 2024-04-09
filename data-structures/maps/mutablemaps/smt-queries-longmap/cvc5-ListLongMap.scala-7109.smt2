; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90136 () Bool)

(assert start!90136)

(declare-fun b!1032139 () Bool)

(declare-fun b_free!20707 () Bool)

(declare-fun b_next!20707 () Bool)

(assert (=> b!1032139 (= b_free!20707 (not b_next!20707))))

(declare-fun tp!73193 () Bool)

(declare-fun b_and!33193 () Bool)

(assert (=> b!1032139 (= tp!73193 b_and!33193)))

(declare-fun b!1032138 () Bool)

(declare-fun e!583158 () Bool)

(assert (=> b!1032138 (= e!583158 false)))

(declare-datatypes ((SeekEntryResult!9720 0))(
  ( (MissingZero!9720 (index!41250 (_ BitVec 32))) (Found!9720 (index!41251 (_ BitVec 32))) (Intermediate!9720 (undefined!10532 Bool) (index!41252 (_ BitVec 32)) (x!91955 (_ BitVec 32))) (Undefined!9720) (MissingVacant!9720 (index!41253 (_ BitVec 32))) )
))
(declare-fun lt!455982 () SeekEntryResult!9720)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37443 0))(
  ( (V!37444 (val!12264 Int)) )
))
(declare-datatypes ((ValueCell!11510 0))(
  ( (ValueCellFull!11510 (v!14842 V!37443)) (EmptyCell!11510) )
))
(declare-datatypes ((array!64902 0))(
  ( (array!64903 (arr!31249 (Array (_ BitVec 32) (_ BitVec 64))) (size!31767 (_ BitVec 32))) )
))
(declare-datatypes ((array!64904 0))(
  ( (array!64905 (arr!31250 (Array (_ BitVec 32) ValueCell!11510)) (size!31768 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5614 0))(
  ( (LongMapFixedSize!5615 (defaultEntry!6181 Int) (mask!29988 (_ BitVec 32)) (extraKeys!5913 (_ BitVec 32)) (zeroValue!6017 V!37443) (minValue!6017 V!37443) (_size!2862 (_ BitVec 32)) (_keys!11351 array!64902) (_values!6204 array!64904) (_vacant!2862 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5614)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64902 (_ BitVec 32)) SeekEntryResult!9720)

(assert (=> b!1032138 (= lt!455982 (seekEntry!0 key!909 (_keys!11351 thiss!1427) (mask!29988 thiss!1427)))))

(declare-fun e!583157 () Bool)

(declare-fun e!583154 () Bool)

(declare-fun tp_is_empty!24427 () Bool)

(declare-fun array_inv!24027 (array!64902) Bool)

(declare-fun array_inv!24028 (array!64904) Bool)

(assert (=> b!1032139 (= e!583154 (and tp!73193 tp_is_empty!24427 (array_inv!24027 (_keys!11351 thiss!1427)) (array_inv!24028 (_values!6204 thiss!1427)) e!583157))))

(declare-fun b!1032140 () Bool)

(declare-fun e!583156 () Bool)

(assert (=> b!1032140 (= e!583156 tp_is_empty!24427)))

(declare-fun res!690006 () Bool)

(assert (=> start!90136 (=> (not res!690006) (not e!583158))))

(declare-fun valid!2076 (LongMapFixedSize!5614) Bool)

(assert (=> start!90136 (= res!690006 (valid!2076 thiss!1427))))

(assert (=> start!90136 e!583158))

(assert (=> start!90136 e!583154))

(assert (=> start!90136 true))

(declare-fun mapIsEmpty!38094 () Bool)

(declare-fun mapRes!38094 () Bool)

(assert (=> mapIsEmpty!38094 mapRes!38094))

(declare-fun b!1032141 () Bool)

(declare-fun e!583159 () Bool)

(assert (=> b!1032141 (= e!583157 (and e!583159 mapRes!38094))))

(declare-fun condMapEmpty!38094 () Bool)

(declare-fun mapDefault!38094 () ValueCell!11510)

