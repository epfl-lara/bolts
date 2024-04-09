; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110684 () Bool)

(assert start!110684)

(declare-fun b_free!29483 () Bool)

(declare-fun b_next!29483 () Bool)

(assert (=> start!110684 (= b_free!29483 (not b_next!29483))))

(declare-fun tp!103771 () Bool)

(declare-fun b_and!47701 () Bool)

(assert (=> start!110684 (= tp!103771 b_and!47701)))

(declare-fun b!1309158 () Bool)

(declare-fun e!746957 () Bool)

(assert (=> b!1309158 (= e!746957 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87389 0))(
  ( (array!87390 (arr!42170 (Array (_ BitVec 32) (_ BitVec 64))) (size!42721 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87389)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52053 0))(
  ( (V!52054 (val!17681 Int)) )
))
(declare-datatypes ((ValueCell!16708 0))(
  ( (ValueCellFull!16708 (v!20306 V!52053)) (EmptyCell!16708) )
))
(declare-datatypes ((array!87391 0))(
  ( (array!87392 (arr!42171 (Array (_ BitVec 32) ValueCell!16708)) (size!42722 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87391)

(declare-fun zeroValue!1296 () V!52053)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun lt!585175 () Bool)

(declare-fun minValue!1296 () V!52053)

(declare-datatypes ((tuple2!22934 0))(
  ( (tuple2!22935 (_1!11477 (_ BitVec 64)) (_2!11477 V!52053)) )
))
(declare-datatypes ((List!30104 0))(
  ( (Nil!30101) (Cons!30100 (h!31309 tuple2!22934) (t!43717 List!30104)) )
))
(declare-datatypes ((ListLongMap!20603 0))(
  ( (ListLongMap!20604 (toList!10317 List!30104)) )
))
(declare-fun contains!8403 (ListLongMap!20603 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5273 (array!87389 array!87391 (_ BitVec 32) (_ BitVec 32) V!52053 V!52053 (_ BitVec 32) Int) ListLongMap!20603)

(assert (=> b!1309158 (= lt!585175 (contains!8403 (getCurrentListMap!5273 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1309159 () Bool)

(declare-fun res!869152 () Bool)

(assert (=> b!1309159 (=> (not res!869152) (not e!746957))))

(declare-datatypes ((List!30105 0))(
  ( (Nil!30102) (Cons!30101 (h!31310 (_ BitVec 64)) (t!43718 List!30105)) )
))
(declare-fun arrayNoDuplicates!0 (array!87389 (_ BitVec 32) List!30105) Bool)

(assert (=> b!1309159 (= res!869152 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30102))))

(declare-fun res!869151 () Bool)

(assert (=> start!110684 (=> (not res!869151) (not e!746957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110684 (= res!869151 (validMask!0 mask!2040))))

(assert (=> start!110684 e!746957))

(assert (=> start!110684 tp!103771))

(declare-fun array_inv!31871 (array!87389) Bool)

(assert (=> start!110684 (array_inv!31871 _keys!1628)))

(assert (=> start!110684 true))

(declare-fun tp_is_empty!35213 () Bool)

(assert (=> start!110684 tp_is_empty!35213))

(declare-fun e!746960 () Bool)

(declare-fun array_inv!31872 (array!87391) Bool)

(assert (=> start!110684 (and (array_inv!31872 _values!1354) e!746960)))

(declare-fun b!1309160 () Bool)

(declare-fun e!746958 () Bool)

(declare-fun mapRes!54448 () Bool)

(assert (=> b!1309160 (= e!746960 (and e!746958 mapRes!54448))))

(declare-fun condMapEmpty!54448 () Bool)

(declare-fun mapDefault!54448 () ValueCell!16708)

