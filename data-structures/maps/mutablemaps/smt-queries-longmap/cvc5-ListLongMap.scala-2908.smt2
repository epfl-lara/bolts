; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41598 () Bool)

(assert start!41598)

(declare-fun b_free!11257 () Bool)

(declare-fun b_next!11257 () Bool)

(assert (=> start!41598 (= b_free!11257 (not b_next!11257))))

(declare-fun tp!39768 () Bool)

(declare-fun b_and!19615 () Bool)

(assert (=> start!41598 (= tp!39768 b_and!19615)))

(declare-fun mapNonEmpty!20704 () Bool)

(declare-fun mapRes!20704 () Bool)

(declare-fun tp!39769 () Bool)

(declare-fun e!271268 () Bool)

(assert (=> mapNonEmpty!20704 (= mapRes!20704 (and tp!39769 e!271268))))

(declare-fun mapKey!20704 () (_ BitVec 32))

(declare-datatypes ((V!18019 0))(
  ( (V!18020 (val!6387 Int)) )
))
(declare-datatypes ((ValueCell!5999 0))(
  ( (ValueCellFull!5999 (v!8670 V!18019)) (EmptyCell!5999) )
))
(declare-datatypes ((array!29117 0))(
  ( (array!29118 (arr!13987 (Array (_ BitVec 32) ValueCell!5999)) (size!14339 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29117)

(declare-fun mapValue!20704 () ValueCell!5999)

(declare-fun mapRest!20704 () (Array (_ BitVec 32) ValueCell!5999))

(assert (=> mapNonEmpty!20704 (= (arr!13987 _values!833) (store mapRest!20704 mapKey!20704 mapValue!20704))))

(declare-fun b!464350 () Bool)

(declare-fun e!271267 () Bool)

(assert (=> b!464350 (= e!271267 (not true))))

(declare-datatypes ((tuple2!8344 0))(
  ( (tuple2!8345 (_1!4182 (_ BitVec 64)) (_2!4182 V!18019)) )
))
(declare-datatypes ((List!8473 0))(
  ( (Nil!8470) (Cons!8469 (h!9325 tuple2!8344) (t!14427 List!8473)) )
))
(declare-datatypes ((ListLongMap!7271 0))(
  ( (ListLongMap!7272 (toList!3651 List!8473)) )
))
(declare-fun lt!209723 () ListLongMap!7271)

(declare-fun lt!209724 () ListLongMap!7271)

(assert (=> b!464350 (= lt!209723 lt!209724)))

(declare-datatypes ((Unit!13423 0))(
  ( (Unit!13424) )
))
(declare-fun lt!209722 () Unit!13423)

(declare-fun minValueBefore!38 () V!18019)

(declare-fun zeroValue!794 () V!18019)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29119 0))(
  ( (array!29120 (arr!13988 (Array (_ BitVec 32) (_ BitVec 64))) (size!14340 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29119)

(declare-fun minValueAfter!38 () V!18019)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!14 (array!29119 array!29117 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18019 V!18019 V!18019 V!18019 (_ BitVec 32) Int) Unit!13423)

(assert (=> b!464350 (= lt!209722 (lemmaNoChangeToArrayThenSameMapNoExtras!14 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1819 (array!29119 array!29117 (_ BitVec 32) (_ BitVec 32) V!18019 V!18019 (_ BitVec 32) Int) ListLongMap!7271)

(assert (=> b!464350 (= lt!209724 (getCurrentListMapNoExtraKeys!1819 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464350 (= lt!209723 (getCurrentListMapNoExtraKeys!1819 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!464351 () Bool)

(declare-fun e!271266 () Bool)

(declare-fun e!271269 () Bool)

(assert (=> b!464351 (= e!271266 (and e!271269 mapRes!20704))))

(declare-fun condMapEmpty!20704 () Bool)

(declare-fun mapDefault!20704 () ValueCell!5999)

