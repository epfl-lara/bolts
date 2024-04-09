; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110698 () Bool)

(assert start!110698)

(declare-fun b_free!29497 () Bool)

(declare-fun b_next!29497 () Bool)

(assert (=> start!110698 (= b_free!29497 (not b_next!29497))))

(declare-fun tp!103814 () Bool)

(declare-fun b_and!47715 () Bool)

(assert (=> start!110698 (= tp!103814 b_and!47715)))

(declare-fun b!1309326 () Bool)

(declare-fun res!869255 () Bool)

(declare-fun e!747065 () Bool)

(assert (=> b!1309326 (=> (not res!869255) (not e!747065))))

(declare-datatypes ((array!87415 0))(
  ( (array!87416 (arr!42183 (Array (_ BitVec 32) (_ BitVec 64))) (size!42734 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87415)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87415 (_ BitVec 32)) Bool)

(assert (=> b!1309326 (= res!869255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1309327 () Bool)

(declare-fun e!747064 () Bool)

(declare-fun tp_is_empty!35227 () Bool)

(assert (=> b!1309327 (= e!747064 tp_is_empty!35227)))

(declare-fun b!1309328 () Bool)

(assert (=> b!1309328 (= e!747065 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52073 0))(
  ( (V!52074 (val!17688 Int)) )
))
(declare-datatypes ((ValueCell!16715 0))(
  ( (ValueCellFull!16715 (v!20313 V!52073)) (EmptyCell!16715) )
))
(declare-datatypes ((array!87417 0))(
  ( (array!87418 (arr!42184 (Array (_ BitVec 32) ValueCell!16715)) (size!42735 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87417)

(declare-fun zeroValue!1296 () V!52073)

(declare-fun lt!585196 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun minValue!1296 () V!52073)

(declare-datatypes ((tuple2!22946 0))(
  ( (tuple2!22947 (_1!11483 (_ BitVec 64)) (_2!11483 V!52073)) )
))
(declare-datatypes ((List!30115 0))(
  ( (Nil!30112) (Cons!30111 (h!31320 tuple2!22946) (t!43728 List!30115)) )
))
(declare-datatypes ((ListLongMap!20615 0))(
  ( (ListLongMap!20616 (toList!10323 List!30115)) )
))
(declare-fun contains!8409 (ListLongMap!20615 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5279 (array!87415 array!87417 (_ BitVec 32) (_ BitVec 32) V!52073 V!52073 (_ BitVec 32) Int) ListLongMap!20615)

(assert (=> b!1309328 (= lt!585196 (contains!8409 (getCurrentListMap!5279 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1309329 () Bool)

(declare-fun res!869256 () Bool)

(assert (=> b!1309329 (=> (not res!869256) (not e!747065))))

(declare-datatypes ((List!30116 0))(
  ( (Nil!30113) (Cons!30112 (h!31321 (_ BitVec 64)) (t!43729 List!30116)) )
))
(declare-fun arrayNoDuplicates!0 (array!87415 (_ BitVec 32) List!30116) Bool)

(assert (=> b!1309329 (= res!869256 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30113))))

(declare-fun b!1309330 () Bool)

(declare-fun e!747061 () Bool)

(declare-fun e!747063 () Bool)

(declare-fun mapRes!54469 () Bool)

(assert (=> b!1309330 (= e!747061 (and e!747063 mapRes!54469))))

(declare-fun condMapEmpty!54469 () Bool)

(declare-fun mapDefault!54469 () ValueCell!16715)

