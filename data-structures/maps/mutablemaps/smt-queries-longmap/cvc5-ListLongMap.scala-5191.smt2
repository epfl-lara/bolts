; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70170 () Bool)

(assert start!70170)

(declare-fun b_free!12553 () Bool)

(declare-fun b_next!12553 () Bool)

(assert (=> start!70170 (= b_free!12553 (not b_next!12553))))

(declare-fun tp!44376 () Bool)

(declare-fun b_and!21351 () Bool)

(assert (=> start!70170 (= tp!44376 b_and!21351)))

(declare-fun mapNonEmpty!22978 () Bool)

(declare-fun mapRes!22978 () Bool)

(declare-fun tp!44377 () Bool)

(declare-fun e!451828 () Bool)

(assert (=> mapNonEmpty!22978 (= mapRes!22978 (and tp!44377 e!451828))))

(declare-fun mapKey!22978 () (_ BitVec 32))

(declare-datatypes ((V!24019 0))(
  ( (V!24020 (val!7179 Int)) )
))
(declare-datatypes ((ValueCell!6716 0))(
  ( (ValueCellFull!6716 (v!9602 V!24019)) (EmptyCell!6716) )
))
(declare-fun mapRest!22978 () (Array (_ BitVec 32) ValueCell!6716))

(declare-datatypes ((array!44714 0))(
  ( (array!44715 (arr!21412 (Array (_ BitVec 32) ValueCell!6716)) (size!21833 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44714)

(declare-fun mapValue!22978 () ValueCell!6716)

(assert (=> mapNonEmpty!22978 (= (arr!21412 _values!788) (store mapRest!22978 mapKey!22978 mapValue!22978))))

(declare-fun b!814887 () Bool)

(declare-fun e!451830 () Bool)

(assert (=> b!814887 (= e!451830 (not true))))

(declare-datatypes ((tuple2!9422 0))(
  ( (tuple2!9423 (_1!4721 (_ BitVec 64)) (_2!4721 V!24019)) )
))
(declare-datatypes ((List!15295 0))(
  ( (Nil!15292) (Cons!15291 (h!16420 tuple2!9422) (t!21622 List!15295)) )
))
(declare-datatypes ((ListLongMap!8259 0))(
  ( (ListLongMap!8260 (toList!4145 List!15295)) )
))
(declare-fun lt!364825 () ListLongMap!8259)

(declare-fun lt!364826 () ListLongMap!8259)

(assert (=> b!814887 (= lt!364825 lt!364826)))

(declare-fun zeroValueBefore!34 () V!24019)

(declare-datatypes ((Unit!27746 0))(
  ( (Unit!27747) )
))
(declare-fun lt!364827 () Unit!27746)

(declare-datatypes ((array!44716 0))(
  ( (array!44717 (arr!21413 (Array (_ BitVec 32) (_ BitVec 64))) (size!21834 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44716)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24019)

(declare-fun minValue!754 () V!24019)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!310 (array!44716 array!44714 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24019 V!24019 V!24019 V!24019 (_ BitVec 32) Int) Unit!27746)

(assert (=> b!814887 (= lt!364827 (lemmaNoChangeToArrayThenSameMapNoExtras!310 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2194 (array!44716 array!44714 (_ BitVec 32) (_ BitVec 32) V!24019 V!24019 (_ BitVec 32) Int) ListLongMap!8259)

(assert (=> b!814887 (= lt!364826 (getCurrentListMapNoExtraKeys!2194 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814887 (= lt!364825 (getCurrentListMapNoExtraKeys!2194 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!556617 () Bool)

(assert (=> start!70170 (=> (not res!556617) (not e!451830))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70170 (= res!556617 (validMask!0 mask!1312))))

(assert (=> start!70170 e!451830))

(declare-fun tp_is_empty!14263 () Bool)

(assert (=> start!70170 tp_is_empty!14263))

(declare-fun array_inv!17113 (array!44716) Bool)

(assert (=> start!70170 (array_inv!17113 _keys!976)))

(assert (=> start!70170 true))

(declare-fun e!451826 () Bool)

(declare-fun array_inv!17114 (array!44714) Bool)

(assert (=> start!70170 (and (array_inv!17114 _values!788) e!451826)))

(assert (=> start!70170 tp!44376))

(declare-fun b!814888 () Bool)

(declare-fun res!556619 () Bool)

(assert (=> b!814888 (=> (not res!556619) (not e!451830))))

(declare-datatypes ((List!15296 0))(
  ( (Nil!15293) (Cons!15292 (h!16421 (_ BitVec 64)) (t!21623 List!15296)) )
))
(declare-fun arrayNoDuplicates!0 (array!44716 (_ BitVec 32) List!15296) Bool)

(assert (=> b!814888 (= res!556619 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15293))))

(declare-fun b!814889 () Bool)

(assert (=> b!814889 (= e!451828 tp_is_empty!14263)))

(declare-fun b!814890 () Bool)

(declare-fun e!451827 () Bool)

(assert (=> b!814890 (= e!451827 tp_is_empty!14263)))

(declare-fun b!814891 () Bool)

(declare-fun res!556618 () Bool)

(assert (=> b!814891 (=> (not res!556618) (not e!451830))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44716 (_ BitVec 32)) Bool)

(assert (=> b!814891 (= res!556618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814892 () Bool)

(declare-fun res!556620 () Bool)

(assert (=> b!814892 (=> (not res!556620) (not e!451830))))

(assert (=> b!814892 (= res!556620 (and (= (size!21833 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21834 _keys!976) (size!21833 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814893 () Bool)

(assert (=> b!814893 (= e!451826 (and e!451827 mapRes!22978))))

(declare-fun condMapEmpty!22978 () Bool)

(declare-fun mapDefault!22978 () ValueCell!6716)

