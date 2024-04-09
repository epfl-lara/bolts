; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111188 () Bool)

(assert start!111188)

(declare-fun b_free!29987 () Bool)

(declare-fun b_next!29987 () Bool)

(assert (=> start!111188 (= b_free!29987 (not b_next!29987))))

(declare-fun tp!105284 () Bool)

(declare-fun b_and!48205 () Bool)

(assert (=> start!111188 (= tp!105284 b_and!48205)))

(declare-fun b!1315953 () Bool)

(declare-fun res!873679 () Bool)

(declare-fun e!750736 () Bool)

(assert (=> b!1315953 (=> (not res!873679) (not e!750736))))

(declare-datatypes ((array!88351 0))(
  ( (array!88352 (arr!42651 (Array (_ BitVec 32) (_ BitVec 64))) (size!43202 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88351)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52725 0))(
  ( (V!52726 (val!17933 Int)) )
))
(declare-datatypes ((ValueCell!16960 0))(
  ( (ValueCellFull!16960 (v!20558 V!52725)) (EmptyCell!16960) )
))
(declare-datatypes ((array!88353 0))(
  ( (array!88354 (arr!42652 (Array (_ BitVec 32) ValueCell!16960)) (size!43203 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88353)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1315953 (= res!873679 (and (= (size!43203 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43202 _keys!1628) (size!43203 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1315954 () Bool)

(assert (=> b!1315954 (= e!750736 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun lt!585922 () Bool)

(declare-fun minValue!1296 () V!52725)

(declare-fun zeroValue!1296 () V!52725)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23280 0))(
  ( (tuple2!23281 (_1!11650 (_ BitVec 64)) (_2!11650 V!52725)) )
))
(declare-datatypes ((List!30450 0))(
  ( (Nil!30447) (Cons!30446 (h!31655 tuple2!23280) (t!44063 List!30450)) )
))
(declare-datatypes ((ListLongMap!20949 0))(
  ( (ListLongMap!20950 (toList!10490 List!30450)) )
))
(declare-fun contains!8576 (ListLongMap!20949 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5446 (array!88351 array!88353 (_ BitVec 32) (_ BitVec 32) V!52725 V!52725 (_ BitVec 32) Int) ListLongMap!20949)

(assert (=> b!1315954 (= lt!585922 (contains!8576 (getCurrentListMap!5446 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1315955 () Bool)

(declare-fun e!750738 () Bool)

(declare-fun e!750740 () Bool)

(declare-fun mapRes!55204 () Bool)

(assert (=> b!1315955 (= e!750738 (and e!750740 mapRes!55204))))

(declare-fun condMapEmpty!55204 () Bool)

(declare-fun mapDefault!55204 () ValueCell!16960)

