; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70168 () Bool)

(assert start!70168)

(declare-fun b_free!12551 () Bool)

(declare-fun b_next!12551 () Bool)

(assert (=> start!70168 (= b_free!12551 (not b_next!12551))))

(declare-fun tp!44371 () Bool)

(declare-fun b_and!21349 () Bool)

(assert (=> start!70168 (= tp!44371 b_and!21349)))

(declare-fun b!814866 () Bool)

(declare-fun e!451815 () Bool)

(declare-fun tp_is_empty!14261 () Bool)

(assert (=> b!814866 (= e!451815 tp_is_empty!14261)))

(declare-fun res!556608 () Bool)

(declare-fun e!451813 () Bool)

(assert (=> start!70168 (=> (not res!556608) (not e!451813))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70168 (= res!556608 (validMask!0 mask!1312))))

(assert (=> start!70168 e!451813))

(assert (=> start!70168 tp_is_empty!14261))

(declare-datatypes ((array!44710 0))(
  ( (array!44711 (arr!21410 (Array (_ BitVec 32) (_ BitVec 64))) (size!21831 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44710)

(declare-fun array_inv!17111 (array!44710) Bool)

(assert (=> start!70168 (array_inv!17111 _keys!976)))

(assert (=> start!70168 true))

(declare-datatypes ((V!24015 0))(
  ( (V!24016 (val!7178 Int)) )
))
(declare-datatypes ((ValueCell!6715 0))(
  ( (ValueCellFull!6715 (v!9601 V!24015)) (EmptyCell!6715) )
))
(declare-datatypes ((array!44712 0))(
  ( (array!44713 (arr!21411 (Array (_ BitVec 32) ValueCell!6715)) (size!21832 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44712)

(declare-fun e!451811 () Bool)

(declare-fun array_inv!17112 (array!44712) Bool)

(assert (=> start!70168 (and (array_inv!17112 _values!788) e!451811)))

(assert (=> start!70168 tp!44371))

(declare-fun b!814867 () Bool)

(declare-fun e!451812 () Bool)

(assert (=> b!814867 (= e!451812 tp_is_empty!14261)))

(declare-fun b!814868 () Bool)

(declare-fun res!556605 () Bool)

(assert (=> b!814868 (=> (not res!556605) (not e!451813))))

(declare-datatypes ((List!15293 0))(
  ( (Nil!15290) (Cons!15289 (h!16418 (_ BitVec 64)) (t!21620 List!15293)) )
))
(declare-fun arrayNoDuplicates!0 (array!44710 (_ BitVec 32) List!15293) Bool)

(assert (=> b!814868 (= res!556605 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15290))))

(declare-fun mapIsEmpty!22975 () Bool)

(declare-fun mapRes!22975 () Bool)

(assert (=> mapIsEmpty!22975 mapRes!22975))

(declare-fun b!814869 () Bool)

(declare-fun res!556606 () Bool)

(assert (=> b!814869 (=> (not res!556606) (not e!451813))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!814869 (= res!556606 (and (= (size!21832 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21831 _keys!976) (size!21832 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814870 () Bool)

(declare-fun res!556607 () Bool)

(assert (=> b!814870 (=> (not res!556607) (not e!451813))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44710 (_ BitVec 32)) Bool)

(assert (=> b!814870 (= res!556607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!22975 () Bool)

(declare-fun tp!44370 () Bool)

(assert (=> mapNonEmpty!22975 (= mapRes!22975 (and tp!44370 e!451812))))

(declare-fun mapValue!22975 () ValueCell!6715)

(declare-fun mapRest!22975 () (Array (_ BitVec 32) ValueCell!6715))

(declare-fun mapKey!22975 () (_ BitVec 32))

(assert (=> mapNonEmpty!22975 (= (arr!21411 _values!788) (store mapRest!22975 mapKey!22975 mapValue!22975))))

(declare-fun b!814871 () Bool)

(assert (=> b!814871 (= e!451813 (not true))))

(declare-datatypes ((tuple2!9420 0))(
  ( (tuple2!9421 (_1!4720 (_ BitVec 64)) (_2!4720 V!24015)) )
))
(declare-datatypes ((List!15294 0))(
  ( (Nil!15291) (Cons!15290 (h!16419 tuple2!9420) (t!21621 List!15294)) )
))
(declare-datatypes ((ListLongMap!8257 0))(
  ( (ListLongMap!8258 (toList!4144 List!15294)) )
))
(declare-fun lt!364818 () ListLongMap!8257)

(declare-fun lt!364817 () ListLongMap!8257)

(assert (=> b!814871 (= lt!364818 lt!364817)))

(declare-fun zeroValueBefore!34 () V!24015)

(declare-fun zeroValueAfter!34 () V!24015)

(declare-fun minValue!754 () V!24015)

(declare-datatypes ((Unit!27744 0))(
  ( (Unit!27745) )
))
(declare-fun lt!364816 () Unit!27744)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!309 (array!44710 array!44712 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24015 V!24015 V!24015 V!24015 (_ BitVec 32) Int) Unit!27744)

(assert (=> b!814871 (= lt!364816 (lemmaNoChangeToArrayThenSameMapNoExtras!309 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2193 (array!44710 array!44712 (_ BitVec 32) (_ BitVec 32) V!24015 V!24015 (_ BitVec 32) Int) ListLongMap!8257)

(assert (=> b!814871 (= lt!364817 (getCurrentListMapNoExtraKeys!2193 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814871 (= lt!364818 (getCurrentListMapNoExtraKeys!2193 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814872 () Bool)

(assert (=> b!814872 (= e!451811 (and e!451815 mapRes!22975))))

(declare-fun condMapEmpty!22975 () Bool)

(declare-fun mapDefault!22975 () ValueCell!6715)

