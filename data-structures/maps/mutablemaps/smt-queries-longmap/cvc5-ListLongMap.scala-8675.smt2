; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105462 () Bool)

(assert start!105462)

(declare-fun b_free!27085 () Bool)

(declare-fun b_next!27085 () Bool)

(assert (=> start!105462 (= b_free!27085 (not b_next!27085))))

(declare-fun tp!94769 () Bool)

(declare-fun b_and!44941 () Bool)

(assert (=> start!105462 (= tp!94769 b_and!44941)))

(declare-fun b!1255966 () Bool)

(declare-fun e!713967 () Bool)

(assert (=> b!1255966 (= e!713967 true)))

(declare-datatypes ((V!48015 0))(
  ( (V!48016 (val!16056 Int)) )
))
(declare-datatypes ((tuple2!20888 0))(
  ( (tuple2!20889 (_1!10454 (_ BitVec 64)) (_2!10454 V!48015)) )
))
(declare-datatypes ((List!28123 0))(
  ( (Nil!28120) (Cons!28119 (h!29328 tuple2!20888) (t!41617 List!28123)) )
))
(declare-datatypes ((ListLongMap!18773 0))(
  ( (ListLongMap!18774 (toList!9402 List!28123)) )
))
(declare-fun lt!567845 () ListLongMap!18773)

(declare-fun -!2083 (ListLongMap!18773 (_ BitVec 64)) ListLongMap!18773)

(assert (=> b!1255966 (= (-!2083 lt!567845 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567845)))

(declare-datatypes ((Unit!41776 0))(
  ( (Unit!41777) )
))
(declare-fun lt!567848 () Unit!41776)

(declare-fun removeNotPresentStillSame!116 (ListLongMap!18773 (_ BitVec 64)) Unit!41776)

(assert (=> b!1255966 (= lt!567848 (removeNotPresentStillSame!116 lt!567845 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1255967 () Bool)

(declare-fun e!713964 () Bool)

(assert (=> b!1255967 (= e!713964 e!713967)))

(declare-fun res!837387 () Bool)

(assert (=> b!1255967 (=> res!837387 e!713967)))

(declare-fun contains!7559 (ListLongMap!18773 (_ BitVec 64)) Bool)

(assert (=> b!1255967 (= res!837387 (contains!7559 lt!567845 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48015)

(declare-datatypes ((array!81607 0))(
  ( (array!81608 (arr!39358 (Array (_ BitVec 32) (_ BitVec 64))) (size!39895 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81607)

(declare-datatypes ((ValueCell!15230 0))(
  ( (ValueCellFull!15230 (v!18756 V!48015)) (EmptyCell!15230) )
))
(declare-datatypes ((array!81609 0))(
  ( (array!81610 (arr!39359 (Array (_ BitVec 32) ValueCell!15230)) (size!39896 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81609)

(declare-fun minValueBefore!43 () V!48015)

(declare-fun getCurrentListMap!4564 (array!81607 array!81609 (_ BitVec 32) (_ BitVec 32) V!48015 V!48015 (_ BitVec 32) Int) ListLongMap!18773)

(assert (=> b!1255967 (= lt!567845 (getCurrentListMap!4564 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255968 () Bool)

(declare-fun res!837391 () Bool)

(declare-fun e!713962 () Bool)

(assert (=> b!1255968 (=> (not res!837391) (not e!713962))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1255968 (= res!837391 (and (= (size!39896 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39895 _keys!1118) (size!39896 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255969 () Bool)

(declare-fun e!713966 () Bool)

(declare-fun tp_is_empty!31987 () Bool)

(assert (=> b!1255969 (= e!713966 tp_is_empty!31987)))

(declare-fun b!1255970 () Bool)

(declare-fun res!837388 () Bool)

(assert (=> b!1255970 (=> (not res!837388) (not e!713962))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81607 (_ BitVec 32)) Bool)

(assert (=> b!1255970 (= res!837388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255971 () Bool)

(declare-fun e!713965 () Bool)

(declare-fun e!713968 () Bool)

(declare-fun mapRes!49765 () Bool)

(assert (=> b!1255971 (= e!713965 (and e!713968 mapRes!49765))))

(declare-fun condMapEmpty!49765 () Bool)

(declare-fun mapDefault!49765 () ValueCell!15230)

