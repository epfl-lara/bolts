; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70176 () Bool)

(assert start!70176)

(declare-fun b_free!12559 () Bool)

(declare-fun b_next!12559 () Bool)

(assert (=> start!70176 (= b_free!12559 (not b_next!12559))))

(declare-fun tp!44395 () Bool)

(declare-fun b_and!21357 () Bool)

(assert (=> start!70176 (= tp!44395 b_and!21357)))

(declare-fun res!556655 () Bool)

(declare-fun e!451873 () Bool)

(assert (=> start!70176 (=> (not res!556655) (not e!451873))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70176 (= res!556655 (validMask!0 mask!1312))))

(assert (=> start!70176 e!451873))

(declare-fun tp_is_empty!14269 () Bool)

(assert (=> start!70176 tp_is_empty!14269))

(declare-datatypes ((array!44726 0))(
  ( (array!44727 (arr!21418 (Array (_ BitVec 32) (_ BitVec 64))) (size!21839 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44726)

(declare-fun array_inv!17117 (array!44726) Bool)

(assert (=> start!70176 (array_inv!17117 _keys!976)))

(assert (=> start!70176 true))

(declare-datatypes ((V!24027 0))(
  ( (V!24028 (val!7182 Int)) )
))
(declare-datatypes ((ValueCell!6719 0))(
  ( (ValueCellFull!6719 (v!9605 V!24027)) (EmptyCell!6719) )
))
(declare-datatypes ((array!44728 0))(
  ( (array!44729 (arr!21419 (Array (_ BitVec 32) ValueCell!6719)) (size!21840 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44728)

(declare-fun e!451871 () Bool)

(declare-fun array_inv!17118 (array!44728) Bool)

(assert (=> start!70176 (and (array_inv!17118 _values!788) e!451871)))

(assert (=> start!70176 tp!44395))

(declare-fun b!814950 () Bool)

(declare-fun res!556656 () Bool)

(assert (=> b!814950 (=> (not res!556656) (not e!451873))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!814950 (= res!556656 (and (= (size!21840 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21839 _keys!976) (size!21840 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814951 () Bool)

(declare-fun e!451874 () Bool)

(assert (=> b!814951 (= e!451874 tp_is_empty!14269)))

(declare-fun b!814952 () Bool)

(declare-fun res!556654 () Bool)

(assert (=> b!814952 (=> (not res!556654) (not e!451873))))

(declare-datatypes ((List!15301 0))(
  ( (Nil!15298) (Cons!15297 (h!16426 (_ BitVec 64)) (t!21628 List!15301)) )
))
(declare-fun arrayNoDuplicates!0 (array!44726 (_ BitVec 32) List!15301) Bool)

(assert (=> b!814952 (= res!556654 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15298))))

(declare-fun b!814953 () Bool)

(assert (=> b!814953 (= e!451873 (not true))))

(declare-datatypes ((tuple2!9428 0))(
  ( (tuple2!9429 (_1!4724 (_ BitVec 64)) (_2!4724 V!24027)) )
))
(declare-datatypes ((List!15302 0))(
  ( (Nil!15299) (Cons!15298 (h!16427 tuple2!9428) (t!21629 List!15302)) )
))
(declare-datatypes ((ListLongMap!8265 0))(
  ( (ListLongMap!8266 (toList!4148 List!15302)) )
))
(declare-fun lt!364853 () ListLongMap!8265)

(declare-fun lt!364854 () ListLongMap!8265)

(assert (=> b!814953 (= lt!364853 lt!364854)))

(declare-fun zeroValueBefore!34 () V!24027)

(declare-fun zeroValueAfter!34 () V!24027)

(declare-fun minValue!754 () V!24027)

(declare-datatypes ((Unit!27752 0))(
  ( (Unit!27753) )
))
(declare-fun lt!364852 () Unit!27752)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!313 (array!44726 array!44728 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24027 V!24027 V!24027 V!24027 (_ BitVec 32) Int) Unit!27752)

(assert (=> b!814953 (= lt!364852 (lemmaNoChangeToArrayThenSameMapNoExtras!313 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2197 (array!44726 array!44728 (_ BitVec 32) (_ BitVec 32) V!24027 V!24027 (_ BitVec 32) Int) ListLongMap!8265)

(assert (=> b!814953 (= lt!364854 (getCurrentListMapNoExtraKeys!2197 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814953 (= lt!364853 (getCurrentListMapNoExtraKeys!2197 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!22987 () Bool)

(declare-fun mapRes!22987 () Bool)

(assert (=> mapIsEmpty!22987 mapRes!22987))

(declare-fun b!814954 () Bool)

(declare-fun e!451875 () Bool)

(assert (=> b!814954 (= e!451875 tp_is_empty!14269)))

(declare-fun mapNonEmpty!22987 () Bool)

(declare-fun tp!44394 () Bool)

(assert (=> mapNonEmpty!22987 (= mapRes!22987 (and tp!44394 e!451875))))

(declare-fun mapKey!22987 () (_ BitVec 32))

(declare-fun mapRest!22987 () (Array (_ BitVec 32) ValueCell!6719))

(declare-fun mapValue!22987 () ValueCell!6719)

(assert (=> mapNonEmpty!22987 (= (arr!21419 _values!788) (store mapRest!22987 mapKey!22987 mapValue!22987))))

(declare-fun b!814955 () Bool)

(declare-fun res!556653 () Bool)

(assert (=> b!814955 (=> (not res!556653) (not e!451873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44726 (_ BitVec 32)) Bool)

(assert (=> b!814955 (= res!556653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814956 () Bool)

(assert (=> b!814956 (= e!451871 (and e!451874 mapRes!22987))))

(declare-fun condMapEmpty!22987 () Bool)

(declare-fun mapDefault!22987 () ValueCell!6719)

