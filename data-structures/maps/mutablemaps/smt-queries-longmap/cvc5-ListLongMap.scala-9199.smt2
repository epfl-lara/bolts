; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110578 () Bool)

(assert start!110578)

(declare-fun b_free!29377 () Bool)

(declare-fun b_next!29377 () Bool)

(assert (=> start!110578 (= b_free!29377 (not b_next!29377))))

(declare-fun tp!103453 () Bool)

(declare-fun b_and!47595 () Bool)

(assert (=> start!110578 (= tp!103453 b_and!47595)))

(declare-fun b!1307562 () Bool)

(declare-fun res!868031 () Bool)

(declare-fun e!746162 () Bool)

(assert (=> b!1307562 (=> (not res!868031) (not e!746162))))

(declare-datatypes ((array!87187 0))(
  ( (array!87188 (arr!42069 (Array (_ BitVec 32) (_ BitVec 64))) (size!42620 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87187)

(declare-datatypes ((List!30031 0))(
  ( (Nil!30028) (Cons!30027 (h!31236 (_ BitVec 64)) (t!43644 List!30031)) )
))
(declare-fun arrayNoDuplicates!0 (array!87187 (_ BitVec 32) List!30031) Bool)

(assert (=> b!1307562 (= res!868031 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30028))))

(declare-fun b!1307563 () Bool)

(declare-fun res!868033 () Bool)

(assert (=> b!1307563 (=> (not res!868033) (not e!746162))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87187 (_ BitVec 32)) Bool)

(assert (=> b!1307563 (= res!868033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1307564 () Bool)

(assert (=> b!1307564 (= e!746162 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!51913 0))(
  ( (V!51914 (val!17628 Int)) )
))
(declare-fun minValue!1296 () V!51913)

(declare-datatypes ((ValueCell!16655 0))(
  ( (ValueCellFull!16655 (v!20253 V!51913)) (EmptyCell!16655) )
))
(declare-datatypes ((array!87189 0))(
  ( (array!87190 (arr!42070 (Array (_ BitVec 32) ValueCell!16655)) (size!42621 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87189)

(declare-fun zeroValue!1296 () V!51913)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun lt!585016 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22858 0))(
  ( (tuple2!22859 (_1!11439 (_ BitVec 64)) (_2!11439 V!51913)) )
))
(declare-datatypes ((List!30032 0))(
  ( (Nil!30029) (Cons!30028 (h!31237 tuple2!22858) (t!43645 List!30032)) )
))
(declare-datatypes ((ListLongMap!20527 0))(
  ( (ListLongMap!20528 (toList!10279 List!30032)) )
))
(declare-fun contains!8365 (ListLongMap!20527 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5235 (array!87187 array!87189 (_ BitVec 32) (_ BitVec 32) V!51913 V!51913 (_ BitVec 32) Int) ListLongMap!20527)

(assert (=> b!1307564 (= lt!585016 (contains!8365 (getCurrentListMap!5235 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1307565 () Bool)

(declare-fun e!746165 () Bool)

(declare-fun tp_is_empty!35107 () Bool)

(assert (=> b!1307565 (= e!746165 tp_is_empty!35107)))

(declare-fun b!1307566 () Bool)

(declare-fun e!746163 () Bool)

(declare-fun e!746161 () Bool)

(declare-fun mapRes!54289 () Bool)

(assert (=> b!1307566 (= e!746163 (and e!746161 mapRes!54289))))

(declare-fun condMapEmpty!54289 () Bool)

(declare-fun mapDefault!54289 () ValueCell!16655)

