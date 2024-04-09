; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70370 () Bool)

(assert start!70370)

(declare-fun b_free!12703 () Bool)

(declare-fun b_next!12703 () Bool)

(assert (=> start!70370 (= b_free!12703 (not b_next!12703))))

(declare-fun tp!44836 () Bool)

(declare-fun b_and!21533 () Bool)

(assert (=> start!70370 (= tp!44836 b_and!21533)))

(declare-fun mapNonEmpty!23212 () Bool)

(declare-fun mapRes!23212 () Bool)

(declare-fun tp!44835 () Bool)

(declare-fun e!453391 () Bool)

(assert (=> mapNonEmpty!23212 (= mapRes!23212 (and tp!44835 e!453391))))

(declare-datatypes ((V!24219 0))(
  ( (V!24220 (val!7254 Int)) )
))
(declare-datatypes ((ValueCell!6791 0))(
  ( (ValueCellFull!6791 (v!9679 V!24219)) (EmptyCell!6791) )
))
(declare-fun mapValue!23212 () ValueCell!6791)

(declare-fun mapKey!23212 () (_ BitVec 32))

(declare-fun mapRest!23212 () (Array (_ BitVec 32) ValueCell!6791))

(declare-datatypes ((array!45002 0))(
  ( (array!45003 (arr!21553 (Array (_ BitVec 32) ValueCell!6791)) (size!21974 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45002)

(assert (=> mapNonEmpty!23212 (= (arr!21553 _values!788) (store mapRest!23212 mapKey!23212 mapValue!23212))))

(declare-fun b!817077 () Bool)

(declare-fun res!557875 () Bool)

(declare-fun e!453392 () Bool)

(assert (=> b!817077 (=> (not res!557875) (not e!453392))))

(declare-datatypes ((array!45004 0))(
  ( (array!45005 (arr!21554 (Array (_ BitVec 32) (_ BitVec 64))) (size!21975 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45004)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45004 (_ BitVec 32)) Bool)

(assert (=> b!817077 (= res!557875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!817078 () Bool)

(assert (=> b!817078 (= e!453392 (not true))))

(declare-datatypes ((tuple2!9536 0))(
  ( (tuple2!9537 (_1!4778 (_ BitVec 64)) (_2!4778 V!24219)) )
))
(declare-datatypes ((List!15405 0))(
  ( (Nil!15402) (Cons!15401 (h!16530 tuple2!9536) (t!21738 List!15405)) )
))
(declare-datatypes ((ListLongMap!8373 0))(
  ( (ListLongMap!8374 (toList!4202 List!15405)) )
))
(declare-fun lt!366109 () ListLongMap!8373)

(declare-fun lt!366110 () ListLongMap!8373)

(assert (=> b!817078 (= lt!366109 lt!366110)))

(declare-fun zeroValueBefore!34 () V!24219)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24219)

(declare-fun minValue!754 () V!24219)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27858 0))(
  ( (Unit!27859) )
))
(declare-fun lt!366108 () Unit!27858)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!364 (array!45004 array!45002 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24219 V!24219 V!24219 V!24219 (_ BitVec 32) Int) Unit!27858)

(assert (=> b!817078 (= lt!366108 (lemmaNoChangeToArrayThenSameMapNoExtras!364 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2248 (array!45004 array!45002 (_ BitVec 32) (_ BitVec 32) V!24219 V!24219 (_ BitVec 32) Int) ListLongMap!8373)

(assert (=> b!817078 (= lt!366110 (getCurrentListMapNoExtraKeys!2248 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817078 (= lt!366109 (getCurrentListMapNoExtraKeys!2248 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817079 () Bool)

(declare-fun res!557876 () Bool)

(assert (=> b!817079 (=> (not res!557876) (not e!453392))))

(declare-datatypes ((List!15406 0))(
  ( (Nil!15403) (Cons!15402 (h!16531 (_ BitVec 64)) (t!21739 List!15406)) )
))
(declare-fun arrayNoDuplicates!0 (array!45004 (_ BitVec 32) List!15406) Bool)

(assert (=> b!817079 (= res!557876 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15403))))

(declare-fun res!557877 () Bool)

(assert (=> start!70370 (=> (not res!557877) (not e!453392))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70370 (= res!557877 (validMask!0 mask!1312))))

(assert (=> start!70370 e!453392))

(declare-fun tp_is_empty!14413 () Bool)

(assert (=> start!70370 tp_is_empty!14413))

(declare-fun array_inv!17217 (array!45004) Bool)

(assert (=> start!70370 (array_inv!17217 _keys!976)))

(assert (=> start!70370 true))

(declare-fun e!453390 () Bool)

(declare-fun array_inv!17218 (array!45002) Bool)

(assert (=> start!70370 (and (array_inv!17218 _values!788) e!453390)))

(assert (=> start!70370 tp!44836))

(declare-fun b!817080 () Bool)

(declare-fun res!557874 () Bool)

(assert (=> b!817080 (=> (not res!557874) (not e!453392))))

(assert (=> b!817080 (= res!557874 (and (= (size!21974 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21975 _keys!976) (size!21974 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!817081 () Bool)

(assert (=> b!817081 (= e!453391 tp_is_empty!14413)))

(declare-fun b!817082 () Bool)

(declare-fun e!453388 () Bool)

(assert (=> b!817082 (= e!453390 (and e!453388 mapRes!23212))))

(declare-fun condMapEmpty!23212 () Bool)

(declare-fun mapDefault!23212 () ValueCell!6791)

