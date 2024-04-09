; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105432 () Bool)

(assert start!105432)

(declare-fun b_free!27055 () Bool)

(declare-fun b_next!27055 () Bool)

(assert (=> start!105432 (= b_free!27055 (not b_next!27055))))

(declare-fun tp!94679 () Bool)

(declare-fun b_and!44911 () Bool)

(assert (=> start!105432 (= tp!94679 b_and!44911)))

(declare-fun b!1255561 () Bool)

(declare-fun e!713648 () Bool)

(declare-fun tp_is_empty!31957 () Bool)

(assert (=> b!1255561 (= e!713648 tp_is_empty!31957)))

(declare-fun b!1255562 () Bool)

(declare-fun e!713651 () Bool)

(assert (=> b!1255562 (= e!713651 true)))

(declare-datatypes ((V!47975 0))(
  ( (V!47976 (val!16041 Int)) )
))
(declare-datatypes ((tuple2!20862 0))(
  ( (tuple2!20863 (_1!10441 (_ BitVec 64)) (_2!10441 V!47975)) )
))
(declare-datatypes ((List!28100 0))(
  ( (Nil!28097) (Cons!28096 (h!29305 tuple2!20862) (t!41594 List!28100)) )
))
(declare-datatypes ((ListLongMap!18747 0))(
  ( (ListLongMap!18748 (toList!9389 List!28100)) )
))
(declare-fun lt!567624 () ListLongMap!18747)

(declare-fun -!2074 (ListLongMap!18747 (_ BitVec 64)) ListLongMap!18747)

(assert (=> b!1255562 (= (-!2074 lt!567624 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567624)))

(declare-datatypes ((Unit!41750 0))(
  ( (Unit!41751) )
))
(declare-fun lt!567622 () Unit!41750)

(declare-fun removeNotPresentStillSame!107 (ListLongMap!18747 (_ BitVec 64)) Unit!41750)

(assert (=> b!1255562 (= lt!567622 (removeNotPresentStillSame!107 lt!567624 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1255563 () Bool)

(declare-fun res!837121 () Bool)

(declare-fun e!713653 () Bool)

(assert (=> b!1255563 (=> (not res!837121) (not e!713653))))

(declare-datatypes ((array!81549 0))(
  ( (array!81550 (arr!39329 (Array (_ BitVec 32) (_ BitVec 64))) (size!39866 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81549)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81549 (_ BitVec 32)) Bool)

(assert (=> b!1255563 (= res!837121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255564 () Bool)

(declare-fun e!713649 () Bool)

(assert (=> b!1255564 (= e!713649 tp_is_empty!31957)))

(declare-fun b!1255565 () Bool)

(declare-fun res!837120 () Bool)

(assert (=> b!1255565 (=> (not res!837120) (not e!713653))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15215 0))(
  ( (ValueCellFull!15215 (v!18741 V!47975)) (EmptyCell!15215) )
))
(declare-datatypes ((array!81551 0))(
  ( (array!81552 (arr!39330 (Array (_ BitVec 32) ValueCell!15215)) (size!39867 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81551)

(assert (=> b!1255565 (= res!837120 (and (= (size!39867 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39866 _keys!1118) (size!39867 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255566 () Bool)

(declare-fun res!837118 () Bool)

(assert (=> b!1255566 (=> (not res!837118) (not e!713653))))

(declare-datatypes ((List!28101 0))(
  ( (Nil!28098) (Cons!28097 (h!29306 (_ BitVec 64)) (t!41595 List!28101)) )
))
(declare-fun arrayNoDuplicates!0 (array!81549 (_ BitVec 32) List!28101) Bool)

(assert (=> b!1255566 (= res!837118 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28098))))

(declare-fun b!1255567 () Bool)

(declare-fun e!713652 () Bool)

(declare-fun mapRes!49720 () Bool)

(assert (=> b!1255567 (= e!713652 (and e!713648 mapRes!49720))))

(declare-fun condMapEmpty!49720 () Bool)

(declare-fun mapDefault!49720 () ValueCell!15215)

