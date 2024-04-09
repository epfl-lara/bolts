; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41648 () Bool)

(assert start!41648)

(declare-fun b_free!11293 () Bool)

(declare-fun b_next!11293 () Bool)

(assert (=> start!41648 (= b_free!11293 (not b_next!11293))))

(declare-fun tp!39879 () Bool)

(declare-fun b_and!19659 () Bool)

(assert (=> start!41648 (= tp!39879 b_and!19659)))

(declare-fun mapNonEmpty!20761 () Bool)

(declare-fun mapRes!20761 () Bool)

(declare-fun tp!39880 () Bool)

(declare-fun e!271595 () Bool)

(assert (=> mapNonEmpty!20761 (= mapRes!20761 (and tp!39880 e!271595))))

(declare-datatypes ((V!18067 0))(
  ( (V!18068 (val!6405 Int)) )
))
(declare-datatypes ((ValueCell!6017 0))(
  ( (ValueCellFull!6017 (v!8688 V!18067)) (EmptyCell!6017) )
))
(declare-datatypes ((array!29187 0))(
  ( (array!29188 (arr!14021 (Array (_ BitVec 32) ValueCell!6017)) (size!14373 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29187)

(declare-fun mapKey!20761 () (_ BitVec 32))

(declare-fun mapValue!20761 () ValueCell!6017)

(declare-fun mapRest!20761 () (Array (_ BitVec 32) ValueCell!6017))

(assert (=> mapNonEmpty!20761 (= (arr!14021 _values!833) (store mapRest!20761 mapKey!20761 mapValue!20761))))

(declare-fun b!464813 () Bool)

(declare-fun res!277938 () Bool)

(declare-fun e!271592 () Bool)

(assert (=> b!464813 (=> (not res!277938) (not e!271592))))

(declare-datatypes ((array!29189 0))(
  ( (array!29190 (arr!14022 (Array (_ BitVec 32) (_ BitVec 64))) (size!14374 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29189)

(declare-datatypes ((List!8497 0))(
  ( (Nil!8494) (Cons!8493 (h!9349 (_ BitVec 64)) (t!14453 List!8497)) )
))
(declare-fun arrayNoDuplicates!0 (array!29189 (_ BitVec 32) List!8497) Bool)

(assert (=> b!464813 (= res!277938 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8494))))

(declare-fun b!464814 () Bool)

(assert (=> b!464814 (= e!271592 (not true))))

(declare-datatypes ((tuple2!8372 0))(
  ( (tuple2!8373 (_1!4196 (_ BitVec 64)) (_2!4196 V!18067)) )
))
(declare-datatypes ((List!8498 0))(
  ( (Nil!8495) (Cons!8494 (h!9350 tuple2!8372) (t!14454 List!8498)) )
))
(declare-datatypes ((ListLongMap!7299 0))(
  ( (ListLongMap!7300 (toList!3665 List!8498)) )
))
(declare-fun lt!209925 () ListLongMap!7299)

(declare-fun lt!209926 () ListLongMap!7299)

(assert (=> b!464814 (= lt!209925 lt!209926)))

(declare-fun minValueBefore!38 () V!18067)

(declare-fun zeroValue!794 () V!18067)

(declare-datatypes ((Unit!13451 0))(
  ( (Unit!13452) )
))
(declare-fun lt!209924 () Unit!13451)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18067)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!28 (array!29189 array!29187 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18067 V!18067 V!18067 V!18067 (_ BitVec 32) Int) Unit!13451)

(assert (=> b!464814 (= lt!209924 (lemmaNoChangeToArrayThenSameMapNoExtras!28 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1833 (array!29189 array!29187 (_ BitVec 32) (_ BitVec 32) V!18067 V!18067 (_ BitVec 32) Int) ListLongMap!7299)

(assert (=> b!464814 (= lt!209926 (getCurrentListMapNoExtraKeys!1833 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464814 (= lt!209925 (getCurrentListMapNoExtraKeys!1833 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!277935 () Bool)

(assert (=> start!41648 (=> (not res!277935) (not e!271592))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41648 (= res!277935 (validMask!0 mask!1365))))

(assert (=> start!41648 e!271592))

(declare-fun tp_is_empty!12721 () Bool)

(assert (=> start!41648 tp_is_empty!12721))

(assert (=> start!41648 tp!39879))

(assert (=> start!41648 true))

(declare-fun array_inv!10108 (array!29189) Bool)

(assert (=> start!41648 (array_inv!10108 _keys!1025)))

(declare-fun e!271594 () Bool)

(declare-fun array_inv!10109 (array!29187) Bool)

(assert (=> start!41648 (and (array_inv!10109 _values!833) e!271594)))

(declare-fun b!464815 () Bool)

(declare-fun e!271591 () Bool)

(assert (=> b!464815 (= e!271591 tp_is_empty!12721)))

(declare-fun b!464816 () Bool)

(declare-fun res!277936 () Bool)

(assert (=> b!464816 (=> (not res!277936) (not e!271592))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29189 (_ BitVec 32)) Bool)

(assert (=> b!464816 (= res!277936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!464817 () Bool)

(assert (=> b!464817 (= e!271595 tp_is_empty!12721)))

(declare-fun b!464818 () Bool)

(assert (=> b!464818 (= e!271594 (and e!271591 mapRes!20761))))

(declare-fun condMapEmpty!20761 () Bool)

(declare-fun mapDefault!20761 () ValueCell!6017)

