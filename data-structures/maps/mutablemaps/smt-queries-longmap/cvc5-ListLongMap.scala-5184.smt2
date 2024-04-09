; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70114 () Bool)

(assert start!70114)

(declare-fun b_free!12511 () Bool)

(declare-fun b_next!12511 () Bool)

(assert (=> start!70114 (= b_free!12511 (not b_next!12511))))

(declare-fun tp!44248 () Bool)

(declare-fun b_and!21301 () Bool)

(assert (=> start!70114 (= tp!44248 b_and!21301)))

(declare-fun b!814361 () Bool)

(declare-fun res!556336 () Bool)

(declare-fun e!451457 () Bool)

(assert (=> b!814361 (=> (not res!556336) (not e!451457))))

(declare-datatypes ((array!44630 0))(
  ( (array!44631 (arr!21371 (Array (_ BitVec 32) (_ BitVec 64))) (size!21792 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44630)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44630 (_ BitVec 32)) Bool)

(assert (=> b!814361 (= res!556336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814362 () Bool)

(assert (=> b!814362 (= e!451457 (not true))))

(declare-datatypes ((V!23963 0))(
  ( (V!23964 (val!7158 Int)) )
))
(declare-datatypes ((tuple2!9390 0))(
  ( (tuple2!9391 (_1!4705 (_ BitVec 64)) (_2!4705 V!23963)) )
))
(declare-datatypes ((List!15263 0))(
  ( (Nil!15260) (Cons!15259 (h!16388 tuple2!9390) (t!21588 List!15263)) )
))
(declare-datatypes ((ListLongMap!8227 0))(
  ( (ListLongMap!8228 (toList!4129 List!15263)) )
))
(declare-fun lt!364598 () ListLongMap!8227)

(declare-fun lt!364597 () ListLongMap!8227)

(assert (=> b!814362 (= lt!364598 lt!364597)))

(declare-fun zeroValueBefore!34 () V!23963)

(declare-fun minValue!754 () V!23963)

(declare-datatypes ((ValueCell!6695 0))(
  ( (ValueCellFull!6695 (v!9581 V!23963)) (EmptyCell!6695) )
))
(declare-datatypes ((array!44632 0))(
  ( (array!44633 (arr!21372 (Array (_ BitVec 32) ValueCell!6695)) (size!21793 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44632)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27714 0))(
  ( (Unit!27715) )
))
(declare-fun lt!364596 () Unit!27714)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!23963)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!294 (array!44630 array!44632 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23963 V!23963 V!23963 V!23963 (_ BitVec 32) Int) Unit!27714)

(assert (=> b!814362 (= lt!364596 (lemmaNoChangeToArrayThenSameMapNoExtras!294 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2178 (array!44630 array!44632 (_ BitVec 32) (_ BitVec 32) V!23963 V!23963 (_ BitVec 32) Int) ListLongMap!8227)

(assert (=> b!814362 (= lt!364597 (getCurrentListMapNoExtraKeys!2178 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814362 (= lt!364598 (getCurrentListMapNoExtraKeys!2178 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!22912 () Bool)

(declare-fun mapRes!22912 () Bool)

(declare-fun tp!44247 () Bool)

(declare-fun e!451458 () Bool)

(assert (=> mapNonEmpty!22912 (= mapRes!22912 (and tp!44247 e!451458))))

(declare-fun mapValue!22912 () ValueCell!6695)

(declare-fun mapRest!22912 () (Array (_ BitVec 32) ValueCell!6695))

(declare-fun mapKey!22912 () (_ BitVec 32))

(assert (=> mapNonEmpty!22912 (= (arr!21372 _values!788) (store mapRest!22912 mapKey!22912 mapValue!22912))))

(declare-fun b!814363 () Bool)

(declare-fun res!556337 () Bool)

(assert (=> b!814363 (=> (not res!556337) (not e!451457))))

(assert (=> b!814363 (= res!556337 (and (= (size!21793 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21792 _keys!976) (size!21793 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814364 () Bool)

(declare-fun tp_is_empty!14221 () Bool)

(assert (=> b!814364 (= e!451458 tp_is_empty!14221)))

(declare-fun b!814365 () Bool)

(declare-fun e!451460 () Bool)

(assert (=> b!814365 (= e!451460 tp_is_empty!14221)))

(declare-fun res!556335 () Bool)

(assert (=> start!70114 (=> (not res!556335) (not e!451457))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70114 (= res!556335 (validMask!0 mask!1312))))

(assert (=> start!70114 e!451457))

(assert (=> start!70114 tp_is_empty!14221))

(declare-fun array_inv!17077 (array!44630) Bool)

(assert (=> start!70114 (array_inv!17077 _keys!976)))

(assert (=> start!70114 true))

(declare-fun e!451456 () Bool)

(declare-fun array_inv!17078 (array!44632) Bool)

(assert (=> start!70114 (and (array_inv!17078 _values!788) e!451456)))

(assert (=> start!70114 tp!44248))

(declare-fun mapIsEmpty!22912 () Bool)

(assert (=> mapIsEmpty!22912 mapRes!22912))

(declare-fun b!814366 () Bool)

(declare-fun res!556334 () Bool)

(assert (=> b!814366 (=> (not res!556334) (not e!451457))))

(declare-datatypes ((List!15264 0))(
  ( (Nil!15261) (Cons!15260 (h!16389 (_ BitVec 64)) (t!21589 List!15264)) )
))
(declare-fun arrayNoDuplicates!0 (array!44630 (_ BitVec 32) List!15264) Bool)

(assert (=> b!814366 (= res!556334 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15261))))

(declare-fun b!814367 () Bool)

(assert (=> b!814367 (= e!451456 (and e!451460 mapRes!22912))))

(declare-fun condMapEmpty!22912 () Bool)

(declare-fun mapDefault!22912 () ValueCell!6695)

