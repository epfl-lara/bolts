; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105020 () Bool)

(assert start!105020)

(declare-fun b_free!26753 () Bool)

(declare-fun b_next!26753 () Bool)

(assert (=> start!105020 (= b_free!26753 (not b_next!26753))))

(declare-fun tp!93756 () Bool)

(declare-fun b_and!44549 () Bool)

(assert (=> start!105020 (= tp!93756 b_and!44549)))

(declare-fun b!1251217 () Bool)

(declare-fun e!710514 () Bool)

(assert (=> b!1251217 (= e!710514 true)))

(declare-datatypes ((V!47571 0))(
  ( (V!47572 (val!15890 Int)) )
))
(declare-datatypes ((tuple2!20634 0))(
  ( (tuple2!20635 (_1!10327 (_ BitVec 64)) (_2!10327 V!47571)) )
))
(declare-datatypes ((List!27887 0))(
  ( (Nil!27884) (Cons!27883 (h!29092 tuple2!20634) (t!41369 List!27887)) )
))
(declare-datatypes ((ListLongMap!18519 0))(
  ( (ListLongMap!18520 (toList!9275 List!27887)) )
))
(declare-fun lt!564691 () ListLongMap!18519)

(declare-fun -!2034 (ListLongMap!18519 (_ BitVec 64)) ListLongMap!18519)

(assert (=> b!1251217 (= (-!2034 lt!564691 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564691)))

(declare-datatypes ((Unit!41525 0))(
  ( (Unit!41526) )
))
(declare-fun lt!564689 () Unit!41525)

(declare-fun removeNotPresentStillSame!101 (ListLongMap!18519 (_ BitVec 64)) Unit!41525)

(assert (=> b!1251217 (= lt!564689 (removeNotPresentStillSame!101 lt!564691 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!834635 () Bool)

(declare-fun e!710512 () Bool)

(assert (=> start!105020 (=> (not res!834635) (not e!710512))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105020 (= res!834635 (validMask!0 mask!1466))))

(assert (=> start!105020 e!710512))

(assert (=> start!105020 true))

(assert (=> start!105020 tp!93756))

(declare-fun tp_is_empty!31655 () Bool)

(assert (=> start!105020 tp_is_empty!31655))

(declare-datatypes ((array!80957 0))(
  ( (array!80958 (arr!39039 (Array (_ BitVec 32) (_ BitVec 64))) (size!39576 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80957)

(declare-fun array_inv!29709 (array!80957) Bool)

(assert (=> start!105020 (array_inv!29709 _keys!1118)))

(declare-datatypes ((ValueCell!15064 0))(
  ( (ValueCellFull!15064 (v!18587 V!47571)) (EmptyCell!15064) )
))
(declare-datatypes ((array!80959 0))(
  ( (array!80960 (arr!39040 (Array (_ BitVec 32) ValueCell!15064)) (size!39577 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80959)

(declare-fun e!710513 () Bool)

(declare-fun array_inv!29710 (array!80959) Bool)

(assert (=> start!105020 (and (array_inv!29710 _values!914) e!710513)))

(declare-fun b!1251218 () Bool)

(declare-fun e!710510 () Bool)

(declare-fun mapRes!49249 () Bool)

(assert (=> b!1251218 (= e!710513 (and e!710510 mapRes!49249))))

(declare-fun condMapEmpty!49249 () Bool)

(declare-fun mapDefault!49249 () ValueCell!15064)

