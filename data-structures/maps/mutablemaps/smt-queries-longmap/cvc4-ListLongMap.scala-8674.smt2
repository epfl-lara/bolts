; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105460 () Bool)

(assert start!105460)

(declare-fun b_free!27083 () Bool)

(declare-fun b_next!27083 () Bool)

(assert (=> start!105460 (= b_free!27083 (not b_next!27083))))

(declare-fun tp!94764 () Bool)

(declare-fun b_and!44939 () Bool)

(assert (=> start!105460 (= tp!94764 b_and!44939)))

(declare-fun mapNonEmpty!49762 () Bool)

(declare-fun mapRes!49762 () Bool)

(declare-fun tp!94763 () Bool)

(declare-fun e!713941 () Bool)

(assert (=> mapNonEmpty!49762 (= mapRes!49762 (and tp!94763 e!713941))))

(declare-datatypes ((V!48011 0))(
  ( (V!48012 (val!16055 Int)) )
))
(declare-datatypes ((ValueCell!15229 0))(
  ( (ValueCellFull!15229 (v!18755 V!48011)) (EmptyCell!15229) )
))
(declare-fun mapRest!49762 () (Array (_ BitVec 32) ValueCell!15229))

(declare-fun mapValue!49762 () ValueCell!15229)

(declare-fun mapKey!49762 () (_ BitVec 32))

(declare-datatypes ((array!81603 0))(
  ( (array!81604 (arr!39356 (Array (_ BitVec 32) ValueCell!15229)) (size!39893 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81603)

(assert (=> mapNonEmpty!49762 (= (arr!39356 _values!914) (store mapRest!49762 mapKey!49762 mapValue!49762))))

(declare-fun b!1255939 () Bool)

(declare-fun tp_is_empty!31985 () Bool)

(assert (=> b!1255939 (= e!713941 tp_is_empty!31985)))

(declare-fun b!1255940 () Bool)

(declare-fun e!713943 () Bool)

(assert (=> b!1255940 (= e!713943 true)))

(declare-datatypes ((tuple2!20886 0))(
  ( (tuple2!20887 (_1!10453 (_ BitVec 64)) (_2!10453 V!48011)) )
))
(declare-datatypes ((List!28122 0))(
  ( (Nil!28119) (Cons!28118 (h!29327 tuple2!20886) (t!41616 List!28122)) )
))
(declare-datatypes ((ListLongMap!18771 0))(
  ( (ListLongMap!18772 (toList!9401 List!28122)) )
))
(declare-fun lt!567830 () ListLongMap!18771)

(declare-fun -!2082 (ListLongMap!18771 (_ BitVec 64)) ListLongMap!18771)

(assert (=> b!1255940 (= (-!2082 lt!567830 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567830)))

(declare-datatypes ((Unit!41774 0))(
  ( (Unit!41775) )
))
(declare-fun lt!567834 () Unit!41774)

(declare-fun removeNotPresentStillSame!115 (ListLongMap!18771 (_ BitVec 64)) Unit!41774)

(assert (=> b!1255940 (= lt!567834 (removeNotPresentStillSame!115 lt!567830 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1255941 () Bool)

(declare-fun e!713945 () Bool)

(assert (=> b!1255941 (= e!713945 tp_is_empty!31985)))

(declare-fun b!1255942 () Bool)

(declare-fun res!837369 () Bool)

(declare-fun e!713942 () Bool)

(assert (=> b!1255942 (=> (not res!837369) (not e!713942))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((array!81605 0))(
  ( (array!81606 (arr!39357 (Array (_ BitVec 32) (_ BitVec 64))) (size!39894 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81605)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1255942 (= res!837369 (and (= (size!39893 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39894 _keys!1118) (size!39893 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255943 () Bool)

(declare-fun e!713946 () Bool)

(assert (=> b!1255943 (= e!713946 (and e!713945 mapRes!49762))))

(declare-fun condMapEmpty!49762 () Bool)

(declare-fun mapDefault!49762 () ValueCell!15229)

