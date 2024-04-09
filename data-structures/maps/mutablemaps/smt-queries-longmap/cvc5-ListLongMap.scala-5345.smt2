; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71456 () Bool)

(assert start!71456)

(declare-fun b_free!13477 () Bool)

(declare-fun b_next!13477 () Bool)

(assert (=> start!71456 (= b_free!13477 (not b_next!13477))))

(declare-fun tp!47212 () Bool)

(declare-fun b_and!22501 () Bool)

(assert (=> start!71456 (= tp!47212 b_and!22501)))

(declare-fun mapIsEmpty!24427 () Bool)

(declare-fun mapRes!24427 () Bool)

(assert (=> mapIsEmpty!24427 mapRes!24427))

(declare-fun b!829419 () Bool)

(declare-fun e!462371 () Bool)

(declare-fun tp_is_empty!15187 () Bool)

(assert (=> b!829419 (= e!462371 tp_is_empty!15187)))

(declare-fun b!829420 () Bool)

(declare-fun res!565129 () Bool)

(declare-fun e!462374 () Bool)

(assert (=> b!829420 (=> (not res!565129) (not e!462374))))

(declare-datatypes ((array!46516 0))(
  ( (array!46517 (arr!22292 (Array (_ BitVec 32) (_ BitVec 64))) (size!22713 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46516)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!25251 0))(
  ( (V!25252 (val!7641 Int)) )
))
(declare-datatypes ((ValueCell!7178 0))(
  ( (ValueCellFull!7178 (v!10077 V!25251)) (EmptyCell!7178) )
))
(declare-datatypes ((array!46518 0))(
  ( (array!46519 (arr!22293 (Array (_ BitVec 32) ValueCell!7178)) (size!22714 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46518)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!829420 (= res!565129 (and (= (size!22714 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22713 _keys!976) (size!22714 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!829421 () Bool)

(declare-fun e!462372 () Bool)

(assert (=> b!829421 (= e!462374 (not e!462372))))

(declare-fun res!565127 () Bool)

(assert (=> b!829421 (=> res!565127 e!462372)))

(assert (=> b!829421 (= res!565127 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!10158 0))(
  ( (tuple2!10159 (_1!5089 (_ BitVec 64)) (_2!5089 V!25251)) )
))
(declare-datatypes ((List!15989 0))(
  ( (Nil!15986) (Cons!15985 (h!17114 tuple2!10158) (t!22358 List!15989)) )
))
(declare-datatypes ((ListLongMap!8995 0))(
  ( (ListLongMap!8996 (toList!4513 List!15989)) )
))
(declare-fun lt!376167 () ListLongMap!8995)

(declare-fun lt!376158 () ListLongMap!8995)

(assert (=> b!829421 (= lt!376167 lt!376158)))

(declare-fun zeroValueBefore!34 () V!25251)

(declare-fun minValue!754 () V!25251)

(declare-datatypes ((Unit!28415 0))(
  ( (Unit!28416) )
))
(declare-fun lt!376163 () Unit!28415)

(declare-fun defaultEntry!796 () Int)

(declare-fun zeroValueAfter!34 () V!25251)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!603 (array!46516 array!46518 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25251 V!25251 V!25251 V!25251 (_ BitVec 32) Int) Unit!28415)

(assert (=> b!829421 (= lt!376163 (lemmaNoChangeToArrayThenSameMapNoExtras!603 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2513 (array!46516 array!46518 (_ BitVec 32) (_ BitVec 32) V!25251 V!25251 (_ BitVec 32) Int) ListLongMap!8995)

(assert (=> b!829421 (= lt!376158 (getCurrentListMapNoExtraKeys!2513 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!829421 (= lt!376167 (getCurrentListMapNoExtraKeys!2513 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!565126 () Bool)

(assert (=> start!71456 (=> (not res!565126) (not e!462374))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71456 (= res!565126 (validMask!0 mask!1312))))

(assert (=> start!71456 e!462374))

(assert (=> start!71456 tp_is_empty!15187))

(declare-fun array_inv!17733 (array!46516) Bool)

(assert (=> start!71456 (array_inv!17733 _keys!976)))

(assert (=> start!71456 true))

(declare-fun e!462375 () Bool)

(declare-fun array_inv!17734 (array!46518) Bool)

(assert (=> start!71456 (and (array_inv!17734 _values!788) e!462375)))

(assert (=> start!71456 tp!47212))

(declare-fun b!829422 () Bool)

(declare-fun lt!376165 () ListLongMap!8995)

(declare-fun lt!376161 () tuple2!10158)

(declare-fun lt!376164 () ListLongMap!8995)

(declare-fun +!1944 (ListLongMap!8995 tuple2!10158) ListLongMap!8995)

(assert (=> b!829422 (= e!462372 (= (+!1944 lt!376165 lt!376161) lt!376164))))

(declare-fun lt!376159 () ListLongMap!8995)

(declare-fun lt!376160 () ListLongMap!8995)

(assert (=> b!829422 (= lt!376159 (+!1944 lt!376160 lt!376161))))

(declare-fun lt!376166 () Unit!28415)

(declare-fun addCommutativeForDiffKeys!467 (ListLongMap!8995 (_ BitVec 64) V!25251 (_ BitVec 64) V!25251) Unit!28415)

(assert (=> b!829422 (= lt!376166 (addCommutativeForDiffKeys!467 lt!376167 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!829422 (= lt!376164 lt!376159)))

(declare-fun lt!376162 () tuple2!10158)

(assert (=> b!829422 (= lt!376159 (+!1944 (+!1944 lt!376167 lt!376161) lt!376162))))

(assert (=> b!829422 (= lt!376161 (tuple2!10159 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!829422 (= lt!376165 lt!376160)))

(assert (=> b!829422 (= lt!376160 (+!1944 lt!376167 lt!376162))))

(assert (=> b!829422 (= lt!376162 (tuple2!10159 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2586 (array!46516 array!46518 (_ BitVec 32) (_ BitVec 32) V!25251 V!25251 (_ BitVec 32) Int) ListLongMap!8995)

(assert (=> b!829422 (= lt!376164 (getCurrentListMap!2586 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!829422 (= lt!376165 (getCurrentListMap!2586 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!829423 () Bool)

(declare-fun e!462370 () Bool)

(assert (=> b!829423 (= e!462370 tp_is_empty!15187)))

(declare-fun b!829424 () Bool)

(declare-fun res!565128 () Bool)

(assert (=> b!829424 (=> (not res!565128) (not e!462374))))

(declare-datatypes ((List!15990 0))(
  ( (Nil!15987) (Cons!15986 (h!17115 (_ BitVec 64)) (t!22359 List!15990)) )
))
(declare-fun arrayNoDuplicates!0 (array!46516 (_ BitVec 32) List!15990) Bool)

(assert (=> b!829424 (= res!565128 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15987))))

(declare-fun mapNonEmpty!24427 () Bool)

(declare-fun tp!47211 () Bool)

(assert (=> mapNonEmpty!24427 (= mapRes!24427 (and tp!47211 e!462370))))

(declare-fun mapValue!24427 () ValueCell!7178)

(declare-fun mapRest!24427 () (Array (_ BitVec 32) ValueCell!7178))

(declare-fun mapKey!24427 () (_ BitVec 32))

(assert (=> mapNonEmpty!24427 (= (arr!22293 _values!788) (store mapRest!24427 mapKey!24427 mapValue!24427))))

(declare-fun b!829425 () Bool)

(declare-fun res!565125 () Bool)

(assert (=> b!829425 (=> (not res!565125) (not e!462374))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46516 (_ BitVec 32)) Bool)

(assert (=> b!829425 (= res!565125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!829426 () Bool)

(assert (=> b!829426 (= e!462375 (and e!462371 mapRes!24427))))

(declare-fun condMapEmpty!24427 () Bool)

(declare-fun mapDefault!24427 () ValueCell!7178)

