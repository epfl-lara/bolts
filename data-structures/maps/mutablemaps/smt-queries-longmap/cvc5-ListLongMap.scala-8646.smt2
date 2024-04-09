; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105230 () Bool)

(assert start!105230)

(declare-fun b_free!26911 () Bool)

(declare-fun b_next!26911 () Bool)

(assert (=> start!105230 (= b_free!26911 (not b_next!26911))))

(declare-fun tp!94238 () Bool)

(declare-fun b_and!44735 () Bool)

(assert (=> start!105230 (= tp!94238 b_and!44735)))

(declare-fun b!1253459 () Bool)

(declare-fun e!712138 () Bool)

(declare-fun tp_is_empty!31813 () Bool)

(assert (=> b!1253459 (= e!712138 tp_is_empty!31813)))

(declare-fun b!1253460 () Bool)

(declare-fun res!835922 () Bool)

(declare-fun e!712139 () Bool)

(assert (=> b!1253460 (=> (not res!835922) (not e!712139))))

(declare-datatypes ((array!81267 0))(
  ( (array!81268 (arr!39191 (Array (_ BitVec 32) (_ BitVec 64))) (size!39728 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81267)

(declare-datatypes ((List!28005 0))(
  ( (Nil!28002) (Cons!28001 (h!29210 (_ BitVec 64)) (t!41493 List!28005)) )
))
(declare-fun arrayNoDuplicates!0 (array!81267 (_ BitVec 32) List!28005) Bool)

(assert (=> b!1253460 (= res!835922 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28002))))

(declare-fun b!1253461 () Bool)

(declare-fun res!835924 () Bool)

(assert (=> b!1253461 (=> (not res!835924) (not e!712139))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((V!47783 0))(
  ( (V!47784 (val!15969 Int)) )
))
(declare-datatypes ((ValueCell!15143 0))(
  ( (ValueCellFull!15143 (v!18667 V!47783)) (EmptyCell!15143) )
))
(declare-datatypes ((array!81269 0))(
  ( (array!81270 (arr!39192 (Array (_ BitVec 32) ValueCell!15143)) (size!39729 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81269)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1253461 (= res!835924 (and (= (size!39729 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39728 _keys!1118) (size!39729 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1253462 () Bool)

(declare-fun e!712142 () Bool)

(assert (=> b!1253462 (= e!712139 (not e!712142))))

(declare-fun res!835925 () Bool)

(assert (=> b!1253462 (=> res!835925 e!712142)))

(assert (=> b!1253462 (= res!835925 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20758 0))(
  ( (tuple2!20759 (_1!10389 (_ BitVec 64)) (_2!10389 V!47783)) )
))
(declare-datatypes ((List!28006 0))(
  ( (Nil!28003) (Cons!28002 (h!29211 tuple2!20758) (t!41494 List!28006)) )
))
(declare-datatypes ((ListLongMap!18643 0))(
  ( (ListLongMap!18644 (toList!9337 List!28006)) )
))
(declare-fun lt!566028 () ListLongMap!18643)

(declare-fun lt!566029 () ListLongMap!18643)

(assert (=> b!1253462 (= lt!566028 lt!566029)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47783)

(declare-fun zeroValue!871 () V!47783)

(declare-fun minValueBefore!43 () V!47783)

(declare-datatypes ((Unit!41644 0))(
  ( (Unit!41645) )
))
(declare-fun lt!566023 () Unit!41644)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1021 (array!81267 array!81269 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47783 V!47783 V!47783 V!47783 (_ BitVec 32) Int) Unit!41644)

(assert (=> b!1253462 (= lt!566023 (lemmaNoChangeToArrayThenSameMapNoExtras!1021 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5703 (array!81267 array!81269 (_ BitVec 32) (_ BitVec 32) V!47783 V!47783 (_ BitVec 32) Int) ListLongMap!18643)

(assert (=> b!1253462 (= lt!566029 (getCurrentListMapNoExtraKeys!5703 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253462 (= lt!566028 (getCurrentListMapNoExtraKeys!5703 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253463 () Bool)

(declare-fun e!712137 () Bool)

(assert (=> b!1253463 (= e!712137 tp_is_empty!31813)))

(declare-fun b!1253464 () Bool)

(declare-fun e!712141 () Bool)

(declare-fun mapRes!49495 () Bool)

(assert (=> b!1253464 (= e!712141 (and e!712138 mapRes!49495))))

(declare-fun condMapEmpty!49495 () Bool)

(declare-fun mapDefault!49495 () ValueCell!15143)

