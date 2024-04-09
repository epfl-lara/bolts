; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41672 () Bool)

(assert start!41672)

(declare-fun b_free!11317 () Bool)

(declare-fun b_next!11317 () Bool)

(assert (=> start!41672 (= b_free!11317 (not b_next!11317))))

(declare-fun tp!39952 () Bool)

(declare-fun b_and!19683 () Bool)

(assert (=> start!41672 (= tp!39952 b_and!19683)))

(declare-fun b!465065 () Bool)

(declare-fun e!271771 () Bool)

(declare-fun tp_is_empty!12745 () Bool)

(assert (=> b!465065 (= e!271771 tp_is_empty!12745)))

(declare-fun b!465066 () Bool)

(declare-fun res!278080 () Bool)

(declare-fun e!271774 () Bool)

(assert (=> b!465066 (=> (not res!278080) (not e!271774))))

(declare-datatypes ((array!29229 0))(
  ( (array!29230 (arr!14042 (Array (_ BitVec 32) (_ BitVec 64))) (size!14394 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29229)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29229 (_ BitVec 32)) Bool)

(assert (=> b!465066 (= res!278080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!278079 () Bool)

(assert (=> start!41672 (=> (not res!278079) (not e!271774))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41672 (= res!278079 (validMask!0 mask!1365))))

(assert (=> start!41672 e!271774))

(assert (=> start!41672 tp_is_empty!12745))

(assert (=> start!41672 tp!39952))

(assert (=> start!41672 true))

(declare-fun array_inv!10126 (array!29229) Bool)

(assert (=> start!41672 (array_inv!10126 _keys!1025)))

(declare-datatypes ((V!18099 0))(
  ( (V!18100 (val!6417 Int)) )
))
(declare-datatypes ((ValueCell!6029 0))(
  ( (ValueCellFull!6029 (v!8700 V!18099)) (EmptyCell!6029) )
))
(declare-datatypes ((array!29231 0))(
  ( (array!29232 (arr!14043 (Array (_ BitVec 32) ValueCell!6029)) (size!14395 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29231)

(declare-fun e!271772 () Bool)

(declare-fun array_inv!10127 (array!29231) Bool)

(assert (=> start!41672 (and (array_inv!10127 _values!833) e!271772)))

(declare-fun b!465067 () Bool)

(declare-fun res!278081 () Bool)

(assert (=> b!465067 (=> (not res!278081) (not e!271774))))

(declare-datatypes ((List!8513 0))(
  ( (Nil!8510) (Cons!8509 (h!9365 (_ BitVec 64)) (t!14469 List!8513)) )
))
(declare-fun arrayNoDuplicates!0 (array!29229 (_ BitVec 32) List!8513) Bool)

(assert (=> b!465067 (= res!278081 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8510))))

(declare-fun b!465068 () Bool)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!465068 (= e!271774 (not (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!14394 _keys!1025)))))))

(declare-datatypes ((tuple2!8390 0))(
  ( (tuple2!8391 (_1!4205 (_ BitVec 64)) (_2!4205 V!18099)) )
))
(declare-datatypes ((List!8514 0))(
  ( (Nil!8511) (Cons!8510 (h!9366 tuple2!8390) (t!14470 List!8514)) )
))
(declare-datatypes ((ListLongMap!7317 0))(
  ( (ListLongMap!7318 (toList!3674 List!8514)) )
))
(declare-fun lt!210033 () ListLongMap!7317)

(declare-fun lt!210032 () ListLongMap!7317)

(assert (=> b!465068 (= lt!210033 lt!210032)))

(declare-fun minValueBefore!38 () V!18099)

(declare-fun zeroValue!794 () V!18099)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13469 0))(
  ( (Unit!13470) )
))
(declare-fun lt!210034 () Unit!13469)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18099)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!37 (array!29229 array!29231 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18099 V!18099 V!18099 V!18099 (_ BitVec 32) Int) Unit!13469)

(assert (=> b!465068 (= lt!210034 (lemmaNoChangeToArrayThenSameMapNoExtras!37 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1842 (array!29229 array!29231 (_ BitVec 32) (_ BitVec 32) V!18099 V!18099 (_ BitVec 32) Int) ListLongMap!7317)

(assert (=> b!465068 (= lt!210032 (getCurrentListMapNoExtraKeys!1842 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465068 (= lt!210033 (getCurrentListMapNoExtraKeys!1842 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!465069 () Bool)

(declare-fun e!271773 () Bool)

(declare-fun mapRes!20797 () Bool)

(assert (=> b!465069 (= e!271772 (and e!271773 mapRes!20797))))

(declare-fun condMapEmpty!20797 () Bool)

(declare-fun mapDefault!20797 () ValueCell!6029)

