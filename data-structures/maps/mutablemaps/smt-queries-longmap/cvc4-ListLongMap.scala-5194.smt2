; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70192 () Bool)

(assert start!70192)

(declare-fun b_free!12575 () Bool)

(declare-fun b_next!12575 () Bool)

(assert (=> start!70192 (= b_free!12575 (not b_next!12575))))

(declare-fun tp!44442 () Bool)

(declare-fun b_and!21373 () Bool)

(assert (=> start!70192 (= tp!44442 b_and!21373)))

(declare-fun res!556752 () Bool)

(declare-fun e!451991 () Bool)

(assert (=> start!70192 (=> (not res!556752) (not e!451991))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70192 (= res!556752 (validMask!0 mask!1312))))

(assert (=> start!70192 e!451991))

(declare-fun tp_is_empty!14285 () Bool)

(assert (=> start!70192 tp_is_empty!14285))

(declare-datatypes ((array!44758 0))(
  ( (array!44759 (arr!21434 (Array (_ BitVec 32) (_ BitVec 64))) (size!21855 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44758)

(declare-fun array_inv!17129 (array!44758) Bool)

(assert (=> start!70192 (array_inv!17129 _keys!976)))

(assert (=> start!70192 true))

(declare-datatypes ((V!24047 0))(
  ( (V!24048 (val!7190 Int)) )
))
(declare-datatypes ((ValueCell!6727 0))(
  ( (ValueCellFull!6727 (v!9613 V!24047)) (EmptyCell!6727) )
))
(declare-datatypes ((array!44760 0))(
  ( (array!44761 (arr!21435 (Array (_ BitVec 32) ValueCell!6727)) (size!21856 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44760)

(declare-fun e!451995 () Bool)

(declare-fun array_inv!17130 (array!44760) Bool)

(assert (=> start!70192 (and (array_inv!17130 _values!788) e!451995)))

(assert (=> start!70192 tp!44442))

(declare-fun b!815118 () Bool)

(declare-fun res!556751 () Bool)

(assert (=> b!815118 (=> (not res!556751) (not e!451991))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!815118 (= res!556751 (and (= (size!21856 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21855 _keys!976) (size!21856 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23011 () Bool)

(declare-fun mapRes!23011 () Bool)

(assert (=> mapIsEmpty!23011 mapRes!23011))

(declare-fun b!815119 () Bool)

(declare-fun res!556749 () Bool)

(assert (=> b!815119 (=> (not res!556749) (not e!451991))))

(declare-datatypes ((List!15315 0))(
  ( (Nil!15312) (Cons!15311 (h!16440 (_ BitVec 64)) (t!21642 List!15315)) )
))
(declare-fun arrayNoDuplicates!0 (array!44758 (_ BitVec 32) List!15315) Bool)

(assert (=> b!815119 (= res!556749 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15312))))

(declare-fun b!815120 () Bool)

(declare-fun e!451993 () Bool)

(assert (=> b!815120 (= e!451993 tp_is_empty!14285)))

(declare-fun mapNonEmpty!23011 () Bool)

(declare-fun tp!44443 () Bool)

(declare-fun e!451994 () Bool)

(assert (=> mapNonEmpty!23011 (= mapRes!23011 (and tp!44443 e!451994))))

(declare-fun mapKey!23011 () (_ BitVec 32))

(declare-fun mapRest!23011 () (Array (_ BitVec 32) ValueCell!6727))

(declare-fun mapValue!23011 () ValueCell!6727)

(assert (=> mapNonEmpty!23011 (= (arr!21435 _values!788) (store mapRest!23011 mapKey!23011 mapValue!23011))))

(declare-fun b!815121 () Bool)

(assert (=> b!815121 (= e!451991 (not true))))

(declare-datatypes ((tuple2!9442 0))(
  ( (tuple2!9443 (_1!4731 (_ BitVec 64)) (_2!4731 V!24047)) )
))
(declare-datatypes ((List!15316 0))(
  ( (Nil!15313) (Cons!15312 (h!16441 tuple2!9442) (t!21643 List!15316)) )
))
(declare-datatypes ((ListLongMap!8279 0))(
  ( (ListLongMap!8280 (toList!4155 List!15316)) )
))
(declare-fun lt!364924 () ListLongMap!8279)

(declare-fun lt!364926 () ListLongMap!8279)

(assert (=> b!815121 (= lt!364924 lt!364926)))

(declare-fun zeroValueBefore!34 () V!24047)

(declare-fun zeroValueAfter!34 () V!24047)

(declare-fun minValue!754 () V!24047)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27766 0))(
  ( (Unit!27767) )
))
(declare-fun lt!364925 () Unit!27766)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!320 (array!44758 array!44760 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24047 V!24047 V!24047 V!24047 (_ BitVec 32) Int) Unit!27766)

(assert (=> b!815121 (= lt!364925 (lemmaNoChangeToArrayThenSameMapNoExtras!320 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2204 (array!44758 array!44760 (_ BitVec 32) (_ BitVec 32) V!24047 V!24047 (_ BitVec 32) Int) ListLongMap!8279)

(assert (=> b!815121 (= lt!364926 (getCurrentListMapNoExtraKeys!2204 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815121 (= lt!364924 (getCurrentListMapNoExtraKeys!2204 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815122 () Bool)

(assert (=> b!815122 (= e!451994 tp_is_empty!14285)))

(declare-fun b!815123 () Bool)

(assert (=> b!815123 (= e!451995 (and e!451993 mapRes!23011))))

(declare-fun condMapEmpty!23011 () Bool)

(declare-fun mapDefault!23011 () ValueCell!6727)

