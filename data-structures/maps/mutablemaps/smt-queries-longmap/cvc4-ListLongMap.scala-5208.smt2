; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70308 () Bool)

(assert start!70308)

(declare-fun b_free!12659 () Bool)

(declare-fun b_next!12659 () Bool)

(assert (=> start!70308 (= b_free!12659 (not b_next!12659))))

(declare-fun tp!44701 () Bool)

(declare-fun b_and!21477 () Bool)

(assert (=> start!70308 (= tp!44701 b_and!21477)))

(declare-fun b!816376 () Bool)

(declare-fun e!452897 () Bool)

(declare-fun e!452896 () Bool)

(assert (=> b!816376 (= e!452897 (not e!452896))))

(declare-fun res!557473 () Bool)

(assert (=> b!816376 (=> res!557473 e!452896)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!816376 (= res!557473 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24159 0))(
  ( (V!24160 (val!7232 Int)) )
))
(declare-datatypes ((tuple2!9504 0))(
  ( (tuple2!9505 (_1!4762 (_ BitVec 64)) (_2!4762 V!24159)) )
))
(declare-datatypes ((List!15374 0))(
  ( (Nil!15371) (Cons!15370 (h!16499 tuple2!9504) (t!21705 List!15374)) )
))
(declare-datatypes ((ListLongMap!8341 0))(
  ( (ListLongMap!8342 (toList!4186 List!15374)) )
))
(declare-fun lt!365680 () ListLongMap!8341)

(declare-fun lt!365681 () ListLongMap!8341)

(assert (=> b!816376 (= lt!365680 lt!365681)))

(declare-fun zeroValueBefore!34 () V!24159)

(declare-fun zeroValueAfter!34 () V!24159)

(declare-datatypes ((ValueCell!6769 0))(
  ( (ValueCellFull!6769 (v!9656 V!24159)) (EmptyCell!6769) )
))
(declare-datatypes ((array!44918 0))(
  ( (array!44919 (arr!21512 (Array (_ BitVec 32) ValueCell!6769)) (size!21933 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44918)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27828 0))(
  ( (Unit!27829) )
))
(declare-fun lt!365679 () Unit!27828)

(declare-datatypes ((array!44920 0))(
  ( (array!44921 (arr!21513 (Array (_ BitVec 32) (_ BitVec 64))) (size!21934 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44920)

(declare-fun minValue!754 () V!24159)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!350 (array!44920 array!44918 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24159 V!24159 V!24159 V!24159 (_ BitVec 32) Int) Unit!27828)

(assert (=> b!816376 (= lt!365679 (lemmaNoChangeToArrayThenSameMapNoExtras!350 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2234 (array!44920 array!44918 (_ BitVec 32) (_ BitVec 32) V!24159 V!24159 (_ BitVec 32) Int) ListLongMap!8341)

(assert (=> b!816376 (= lt!365681 (getCurrentListMapNoExtraKeys!2234 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!816376 (= lt!365680 (getCurrentListMapNoExtraKeys!2234 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23143 () Bool)

(declare-fun mapRes!23143 () Bool)

(assert (=> mapIsEmpty!23143 mapRes!23143))

(declare-fun mapNonEmpty!23143 () Bool)

(declare-fun tp!44700 () Bool)

(declare-fun e!452898 () Bool)

(assert (=> mapNonEmpty!23143 (= mapRes!23143 (and tp!44700 e!452898))))

(declare-fun mapRest!23143 () (Array (_ BitVec 32) ValueCell!6769))

(declare-fun mapValue!23143 () ValueCell!6769)

(declare-fun mapKey!23143 () (_ BitVec 32))

(assert (=> mapNonEmpty!23143 (= (arr!21512 _values!788) (store mapRest!23143 mapKey!23143 mapValue!23143))))

(declare-fun b!816377 () Bool)

(declare-fun tp_is_empty!14369 () Bool)

(assert (=> b!816377 (= e!452898 tp_is_empty!14369)))

(declare-fun b!816378 () Bool)

(declare-fun res!557477 () Bool)

(assert (=> b!816378 (=> (not res!557477) (not e!452897))))

(assert (=> b!816378 (= res!557477 (and (= (size!21933 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21934 _keys!976) (size!21933 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!816379 () Bool)

(assert (=> b!816379 (= e!452896 true)))

(declare-fun lt!365682 () ListLongMap!8341)

(declare-fun getCurrentListMap!2373 (array!44920 array!44918 (_ BitVec 32) (_ BitVec 32) V!24159 V!24159 (_ BitVec 32) Int) ListLongMap!8341)

(assert (=> b!816379 (= lt!365682 (getCurrentListMap!2373 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365678 () ListLongMap!8341)

(declare-fun +!1772 (ListLongMap!8341 tuple2!9504) ListLongMap!8341)

(assert (=> b!816379 (= lt!365678 (+!1772 (getCurrentListMap!2373 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9505 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun res!557475 () Bool)

(assert (=> start!70308 (=> (not res!557475) (not e!452897))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70308 (= res!557475 (validMask!0 mask!1312))))

(assert (=> start!70308 e!452897))

(assert (=> start!70308 tp_is_empty!14369))

(declare-fun array_inv!17189 (array!44920) Bool)

(assert (=> start!70308 (array_inv!17189 _keys!976)))

(assert (=> start!70308 true))

(declare-fun e!452894 () Bool)

(declare-fun array_inv!17190 (array!44918) Bool)

(assert (=> start!70308 (and (array_inv!17190 _values!788) e!452894)))

(assert (=> start!70308 tp!44701))

(declare-fun b!816380 () Bool)

(declare-fun res!557476 () Bool)

(assert (=> b!816380 (=> (not res!557476) (not e!452897))))

(declare-datatypes ((List!15375 0))(
  ( (Nil!15372) (Cons!15371 (h!16500 (_ BitVec 64)) (t!21706 List!15375)) )
))
(declare-fun arrayNoDuplicates!0 (array!44920 (_ BitVec 32) List!15375) Bool)

(assert (=> b!816380 (= res!557476 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15372))))

(declare-fun b!816381 () Bool)

(declare-fun e!452895 () Bool)

(assert (=> b!816381 (= e!452895 tp_is_empty!14369)))

(declare-fun b!816382 () Bool)

(declare-fun res!557474 () Bool)

(assert (=> b!816382 (=> (not res!557474) (not e!452897))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44920 (_ BitVec 32)) Bool)

(assert (=> b!816382 (= res!557474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!816383 () Bool)

(assert (=> b!816383 (= e!452894 (and e!452895 mapRes!23143))))

(declare-fun condMapEmpty!23143 () Bool)

(declare-fun mapDefault!23143 () ValueCell!6769)

