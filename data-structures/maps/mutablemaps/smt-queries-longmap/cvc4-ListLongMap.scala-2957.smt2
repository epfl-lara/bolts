; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41990 () Bool)

(assert start!41990)

(declare-fun b_free!11555 () Bool)

(declare-fun b_next!11555 () Bool)

(assert (=> start!41990 (= b_free!11555 (not b_next!11555))))

(declare-fun tp!40681 () Bool)

(declare-fun b_and!19971 () Bool)

(assert (=> start!41990 (= tp!40681 b_and!19971)))

(declare-fun b!468519 () Bool)

(declare-fun e!274253 () Bool)

(declare-fun e!274252 () Bool)

(assert (=> b!468519 (= e!274253 (not e!274252))))

(declare-fun res!280064 () Bool)

(assert (=> b!468519 (=> res!280064 e!274252)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!468519 (= res!280064 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18415 0))(
  ( (V!18416 (val!6536 Int)) )
))
(declare-datatypes ((tuple2!8572 0))(
  ( (tuple2!8573 (_1!4296 (_ BitVec 64)) (_2!4296 V!18415)) )
))
(declare-datatypes ((List!8691 0))(
  ( (Nil!8688) (Cons!8687 (h!9543 tuple2!8572) (t!14657 List!8691)) )
))
(declare-datatypes ((ListLongMap!7499 0))(
  ( (ListLongMap!7500 (toList!3765 List!8691)) )
))
(declare-fun lt!212045 () ListLongMap!7499)

(declare-fun lt!212044 () ListLongMap!7499)

(assert (=> b!468519 (= lt!212045 lt!212044)))

(declare-fun minValueBefore!38 () V!18415)

(declare-fun zeroValue!794 () V!18415)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((Unit!13652 0))(
  ( (Unit!13653) )
))
(declare-fun lt!212047 () Unit!13652)

(declare-datatypes ((array!29699 0))(
  ( (array!29700 (arr!14272 (Array (_ BitVec 32) (_ BitVec 64))) (size!14624 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29699)

(declare-datatypes ((ValueCell!6148 0))(
  ( (ValueCellFull!6148 (v!8821 V!18415)) (EmptyCell!6148) )
))
(declare-datatypes ((array!29701 0))(
  ( (array!29702 (arr!14273 (Array (_ BitVec 32) ValueCell!6148)) (size!14625 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29701)

(declare-fun minValueAfter!38 () V!18415)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!125 (array!29699 array!29701 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18415 V!18415 V!18415 V!18415 (_ BitVec 32) Int) Unit!13652)

(assert (=> b!468519 (= lt!212047 (lemmaNoChangeToArrayThenSameMapNoExtras!125 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1930 (array!29699 array!29701 (_ BitVec 32) (_ BitVec 32) V!18415 V!18415 (_ BitVec 32) Int) ListLongMap!7499)

(assert (=> b!468519 (= lt!212044 (getCurrentListMapNoExtraKeys!1930 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468519 (= lt!212045 (getCurrentListMapNoExtraKeys!1930 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468520 () Bool)

(assert (=> b!468520 (= e!274252 true)))

(declare-fun lt!212048 () tuple2!8572)

(declare-fun +!1655 (ListLongMap!7499 tuple2!8572) ListLongMap!7499)

(assert (=> b!468520 (= (+!1655 lt!212045 lt!212048) (+!1655 (+!1655 lt!212045 (tuple2!8573 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212048))))

(assert (=> b!468520 (= lt!212048 (tuple2!8573 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!212046 () Unit!13652)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!96 (ListLongMap!7499 (_ BitVec 64) V!18415 V!18415) Unit!13652)

(assert (=> b!468520 (= lt!212046 (addSameAsAddTwiceSameKeyDiffValues!96 lt!212045 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!212043 () ListLongMap!7499)

(declare-fun getCurrentListMap!2177 (array!29699 array!29701 (_ BitVec 32) (_ BitVec 32) V!18415 V!18415 (_ BitVec 32) Int) ListLongMap!7499)

(assert (=> b!468520 (= lt!212043 (getCurrentListMap!2177 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212042 () ListLongMap!7499)

(assert (=> b!468520 (= lt!212042 (getCurrentListMap!2177 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468521 () Bool)

(declare-fun res!280061 () Bool)

(assert (=> b!468521 (=> (not res!280061) (not e!274253))))

(declare-datatypes ((List!8692 0))(
  ( (Nil!8689) (Cons!8688 (h!9544 (_ BitVec 64)) (t!14658 List!8692)) )
))
(declare-fun arrayNoDuplicates!0 (array!29699 (_ BitVec 32) List!8692) Bool)

(assert (=> b!468521 (= res!280061 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8689))))

(declare-fun mapIsEmpty!21169 () Bool)

(declare-fun mapRes!21169 () Bool)

(assert (=> mapIsEmpty!21169 mapRes!21169))

(declare-fun mapNonEmpty!21169 () Bool)

(declare-fun tp!40680 () Bool)

(declare-fun e!274251 () Bool)

(assert (=> mapNonEmpty!21169 (= mapRes!21169 (and tp!40680 e!274251))))

(declare-fun mapRest!21169 () (Array (_ BitVec 32) ValueCell!6148))

(declare-fun mapKey!21169 () (_ BitVec 32))

(declare-fun mapValue!21169 () ValueCell!6148)

(assert (=> mapNonEmpty!21169 (= (arr!14273 _values!833) (store mapRest!21169 mapKey!21169 mapValue!21169))))

(declare-fun b!468522 () Bool)

(declare-fun res!280063 () Bool)

(assert (=> b!468522 (=> (not res!280063) (not e!274253))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29699 (_ BitVec 32)) Bool)

(assert (=> b!468522 (= res!280063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!280060 () Bool)

(assert (=> start!41990 (=> (not res!280060) (not e!274253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41990 (= res!280060 (validMask!0 mask!1365))))

(assert (=> start!41990 e!274253))

(declare-fun tp_is_empty!12983 () Bool)

(assert (=> start!41990 tp_is_empty!12983))

(assert (=> start!41990 tp!40681))

(assert (=> start!41990 true))

(declare-fun array_inv!10292 (array!29699) Bool)

(assert (=> start!41990 (array_inv!10292 _keys!1025)))

(declare-fun e!274254 () Bool)

(declare-fun array_inv!10293 (array!29701) Bool)

(assert (=> start!41990 (and (array_inv!10293 _values!833) e!274254)))

(declare-fun b!468523 () Bool)

(assert (=> b!468523 (= e!274251 tp_is_empty!12983)))

(declare-fun b!468524 () Bool)

(declare-fun res!280062 () Bool)

(assert (=> b!468524 (=> (not res!280062) (not e!274253))))

(assert (=> b!468524 (= res!280062 (and (= (size!14625 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14624 _keys!1025) (size!14625 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!468525 () Bool)

(declare-fun e!274250 () Bool)

(assert (=> b!468525 (= e!274250 tp_is_empty!12983)))

(declare-fun b!468526 () Bool)

(assert (=> b!468526 (= e!274254 (and e!274250 mapRes!21169))))

(declare-fun condMapEmpty!21169 () Bool)

(declare-fun mapDefault!21169 () ValueCell!6148)

