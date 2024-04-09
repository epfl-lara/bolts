; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111074 () Bool)

(assert start!111074)

(declare-fun b_free!29873 () Bool)

(declare-fun b_next!29873 () Bool)

(assert (=> start!111074 (= b_free!29873 (not b_next!29873))))

(declare-fun tp!104942 () Bool)

(declare-fun b_and!48091 () Bool)

(assert (=> start!111074 (= tp!104942 b_and!48091)))

(declare-fun b!1314549 () Bool)

(declare-fun e!749885 () Bool)

(declare-fun tp_is_empty!35603 () Bool)

(assert (=> b!1314549 (= e!749885 tp_is_empty!35603)))

(declare-fun b!1314550 () Bool)

(declare-fun e!749884 () Bool)

(assert (=> b!1314550 (= e!749884 tp_is_empty!35603)))

(declare-fun b!1314551 () Bool)

(declare-fun res!872788 () Bool)

(declare-fun e!749881 () Bool)

(assert (=> b!1314551 (=> (not res!872788) (not e!749881))))

(declare-datatypes ((array!88139 0))(
  ( (array!88140 (arr!42545 (Array (_ BitVec 32) (_ BitVec 64))) (size!43096 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88139)

(declare-datatypes ((List!30384 0))(
  ( (Nil!30381) (Cons!30380 (h!31589 (_ BitVec 64)) (t!43997 List!30384)) )
))
(declare-fun arrayNoDuplicates!0 (array!88139 (_ BitVec 32) List!30384) Bool)

(assert (=> b!1314551 (= res!872788 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30381))))

(declare-fun b!1314552 () Bool)

(assert (=> b!1314552 (= e!749881 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52573 0))(
  ( (V!52574 (val!17876 Int)) )
))
(declare-fun minValue!1296 () V!52573)

(declare-datatypes ((ValueCell!16903 0))(
  ( (ValueCellFull!16903 (v!20501 V!52573)) (EmptyCell!16903) )
))
(declare-datatypes ((array!88141 0))(
  ( (array!88142 (arr!42546 (Array (_ BitVec 32) ValueCell!16903)) (size!43097 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88141)

(declare-fun zeroValue!1296 () V!52573)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun lt!585751 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!23220 0))(
  ( (tuple2!23221 (_1!11620 (_ BitVec 64)) (_2!11620 V!52573)) )
))
(declare-datatypes ((List!30385 0))(
  ( (Nil!30382) (Cons!30381 (h!31590 tuple2!23220) (t!43998 List!30385)) )
))
(declare-datatypes ((ListLongMap!20889 0))(
  ( (ListLongMap!20890 (toList!10460 List!30385)) )
))
(declare-fun contains!8546 (ListLongMap!20889 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5416 (array!88139 array!88141 (_ BitVec 32) (_ BitVec 32) V!52573 V!52573 (_ BitVec 32) Int) ListLongMap!20889)

(assert (=> b!1314552 (= lt!585751 (contains!8546 (getCurrentListMap!5416 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1314553 () Bool)

(declare-fun e!749882 () Bool)

(declare-fun mapRes!55033 () Bool)

(assert (=> b!1314553 (= e!749882 (and e!749884 mapRes!55033))))

(declare-fun condMapEmpty!55033 () Bool)

(declare-fun mapDefault!55033 () ValueCell!16903)

