; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41574 () Bool)

(assert start!41574)

(declare-fun b_free!11233 () Bool)

(declare-fun b_next!11233 () Bool)

(assert (=> start!41574 (= b_free!11233 (not b_next!11233))))

(declare-fun tp!39697 () Bool)

(declare-fun b_and!19591 () Bool)

(assert (=> start!41574 (= tp!39697 b_and!19591)))

(declare-fun mapNonEmpty!20668 () Bool)

(declare-fun mapRes!20668 () Bool)

(declare-fun tp!39696 () Bool)

(declare-fun e!271087 () Bool)

(assert (=> mapNonEmpty!20668 (= mapRes!20668 (and tp!39696 e!271087))))

(declare-datatypes ((V!17987 0))(
  ( (V!17988 (val!6375 Int)) )
))
(declare-datatypes ((ValueCell!5987 0))(
  ( (ValueCellFull!5987 (v!8658 V!17987)) (EmptyCell!5987) )
))
(declare-datatypes ((array!29073 0))(
  ( (array!29074 (arr!13965 (Array (_ BitVec 32) ValueCell!5987)) (size!14317 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29073)

(declare-fun mapKey!20668 () (_ BitVec 32))

(declare-fun mapValue!20668 () ValueCell!5987)

(declare-fun mapRest!20668 () (Array (_ BitVec 32) ValueCell!5987))

(assert (=> mapNonEmpty!20668 (= (arr!13965 _values!833) (store mapRest!20668 mapKey!20668 mapValue!20668))))

(declare-fun mapIsEmpty!20668 () Bool)

(assert (=> mapIsEmpty!20668 mapRes!20668))

(declare-fun b!464098 () Bool)

(declare-fun e!271086 () Bool)

(assert (=> b!464098 (= e!271086 (not true))))

(declare-datatypes ((tuple2!8330 0))(
  ( (tuple2!8331 (_1!4175 (_ BitVec 64)) (_2!4175 V!17987)) )
))
(declare-datatypes ((List!8458 0))(
  ( (Nil!8455) (Cons!8454 (h!9310 tuple2!8330) (t!14412 List!8458)) )
))
(declare-datatypes ((ListLongMap!7257 0))(
  ( (ListLongMap!7258 (toList!3644 List!8458)) )
))
(declare-fun lt!209616 () ListLongMap!7257)

(declare-fun lt!209615 () ListLongMap!7257)

(assert (=> b!464098 (= lt!209616 lt!209615)))

(declare-fun minValueBefore!38 () V!17987)

(declare-datatypes ((Unit!13409 0))(
  ( (Unit!13410) )
))
(declare-fun lt!209614 () Unit!13409)

(declare-fun zeroValue!794 () V!17987)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29075 0))(
  ( (array!29076 (arr!13966 (Array (_ BitVec 32) (_ BitVec 64))) (size!14318 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29075)

(declare-fun minValueAfter!38 () V!17987)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!7 (array!29075 array!29073 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!17987 V!17987 V!17987 V!17987 (_ BitVec 32) Int) Unit!13409)

(assert (=> b!464098 (= lt!209614 (lemmaNoChangeToArrayThenSameMapNoExtras!7 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1812 (array!29075 array!29073 (_ BitVec 32) (_ BitVec 32) V!17987 V!17987 (_ BitVec 32) Int) ListLongMap!7257)

(assert (=> b!464098 (= lt!209615 (getCurrentListMapNoExtraKeys!1812 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!464098 (= lt!209616 (getCurrentListMapNoExtraKeys!1812 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!464099 () Bool)

(declare-fun res!277544 () Bool)

(assert (=> b!464099 (=> (not res!277544) (not e!271086))))

(assert (=> b!464099 (= res!277544 (and (= (size!14317 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14318 _keys!1025) (size!14317 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!277547 () Bool)

(assert (=> start!41574 (=> (not res!277547) (not e!271086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41574 (= res!277547 (validMask!0 mask!1365))))

(assert (=> start!41574 e!271086))

(declare-fun tp_is_empty!12661 () Bool)

(assert (=> start!41574 tp_is_empty!12661))

(assert (=> start!41574 tp!39697))

(assert (=> start!41574 true))

(declare-fun array_inv!10070 (array!29075) Bool)

(assert (=> start!41574 (array_inv!10070 _keys!1025)))

(declare-fun e!271088 () Bool)

(declare-fun array_inv!10071 (array!29073) Bool)

(assert (=> start!41574 (and (array_inv!10071 _values!833) e!271088)))

(declare-fun b!464100 () Bool)

(declare-fun res!277545 () Bool)

(assert (=> b!464100 (=> (not res!277545) (not e!271086))))

(declare-datatypes ((List!8459 0))(
  ( (Nil!8456) (Cons!8455 (h!9311 (_ BitVec 64)) (t!14413 List!8459)) )
))
(declare-fun arrayNoDuplicates!0 (array!29075 (_ BitVec 32) List!8459) Bool)

(assert (=> b!464100 (= res!277545 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8456))))

(declare-fun b!464101 () Bool)

(assert (=> b!464101 (= e!271087 tp_is_empty!12661)))

(declare-fun b!464102 () Bool)

(declare-fun e!271090 () Bool)

(assert (=> b!464102 (= e!271088 (and e!271090 mapRes!20668))))

(declare-fun condMapEmpty!20668 () Bool)

(declare-fun mapDefault!20668 () ValueCell!5987)

