; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105370 () Bool)

(assert start!105370)

(declare-fun b_free!27007 () Bool)

(declare-fun b_next!27007 () Bool)

(assert (=> start!105370 (= b_free!27007 (not b_next!27007))))

(declare-fun tp!94532 () Bool)

(declare-fun b_and!44855 () Bool)

(assert (=> start!105370 (= tp!94532 b_and!44855)))

(declare-fun mapNonEmpty!49645 () Bool)

(declare-fun mapRes!49645 () Bool)

(declare-fun tp!94533 () Bool)

(declare-fun e!713219 () Bool)

(assert (=> mapNonEmpty!49645 (= mapRes!49645 (and tp!94533 e!713219))))

(declare-datatypes ((V!47911 0))(
  ( (V!47912 (val!16017 Int)) )
))
(declare-datatypes ((ValueCell!15191 0))(
  ( (ValueCellFull!15191 (v!18717 V!47911)) (EmptyCell!15191) )
))
(declare-fun mapValue!49645 () ValueCell!15191)

(declare-fun mapKey!49645 () (_ BitVec 32))

(declare-datatypes ((array!81453 0))(
  ( (array!81454 (arr!39282 (Array (_ BitVec 32) ValueCell!15191)) (size!39819 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81453)

(declare-fun mapRest!49645 () (Array (_ BitVec 32) ValueCell!15191))

(assert (=> mapNonEmpty!49645 (= (arr!39282 _values!914) (store mapRest!49645 mapKey!49645 mapValue!49645))))

(declare-fun b!1254959 () Bool)

(declare-fun tp_is_empty!31909 () Bool)

(assert (=> b!1254959 (= e!713219 tp_is_empty!31909)))

(declare-fun b!1254960 () Bool)

(declare-fun e!713220 () Bool)

(assert (=> b!1254960 (= e!713220 tp_is_empty!31909)))

(declare-fun b!1254961 () Bool)

(declare-fun res!836788 () Bool)

(declare-fun e!713222 () Bool)

(assert (=> b!1254961 (=> (not res!836788) (not e!713222))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81455 0))(
  ( (array!81456 (arr!39283 (Array (_ BitVec 32) (_ BitVec 64))) (size!39820 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81455)

(assert (=> b!1254961 (= res!836788 (and (= (size!39819 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39820 _keys!1118) (size!39819 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!836786 () Bool)

(assert (=> start!105370 (=> (not res!836786) (not e!713222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105370 (= res!836786 (validMask!0 mask!1466))))

(assert (=> start!105370 e!713222))

(assert (=> start!105370 true))

(assert (=> start!105370 tp!94532))

(assert (=> start!105370 tp_is_empty!31909))

(declare-fun array_inv!29875 (array!81455) Bool)

(assert (=> start!105370 (array_inv!29875 _keys!1118)))

(declare-fun e!713223 () Bool)

(declare-fun array_inv!29876 (array!81453) Bool)

(assert (=> start!105370 (and (array_inv!29876 _values!914) e!713223)))

(declare-fun b!1254962 () Bool)

(declare-fun res!836787 () Bool)

(assert (=> b!1254962 (=> (not res!836787) (not e!713222))))

(declare-datatypes ((List!28065 0))(
  ( (Nil!28062) (Cons!28061 (h!29270 (_ BitVec 64)) (t!41557 List!28065)) )
))
(declare-fun arrayNoDuplicates!0 (array!81455 (_ BitVec 32) List!28065) Bool)

(assert (=> b!1254962 (= res!836787 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28062))))

(declare-fun b!1254963 () Bool)

(assert (=> b!1254963 (= e!713223 (and e!713220 mapRes!49645))))

(declare-fun condMapEmpty!49645 () Bool)

(declare-fun mapDefault!49645 () ValueCell!15191)

