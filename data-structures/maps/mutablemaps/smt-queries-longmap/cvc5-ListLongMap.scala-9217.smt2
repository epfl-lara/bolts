; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110686 () Bool)

(assert start!110686)

(declare-fun b_free!29485 () Bool)

(declare-fun b_next!29485 () Bool)

(assert (=> start!110686 (= b_free!29485 (not b_next!29485))))

(declare-fun tp!103777 () Bool)

(declare-fun b_and!47703 () Bool)

(assert (=> start!110686 (= tp!103777 b_and!47703)))

(declare-fun b!1309182 () Bool)

(declare-fun e!746974 () Bool)

(assert (=> b!1309182 (= e!746974 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87393 0))(
  ( (array!87394 (arr!42172 (Array (_ BitVec 32) (_ BitVec 64))) (size!42723 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87393)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52057 0))(
  ( (V!52058 (val!17682 Int)) )
))
(declare-fun minValue!1296 () V!52057)

(declare-datatypes ((ValueCell!16709 0))(
  ( (ValueCellFull!16709 (v!20307 V!52057)) (EmptyCell!16709) )
))
(declare-datatypes ((array!87395 0))(
  ( (array!87396 (arr!42173 (Array (_ BitVec 32) ValueCell!16709)) (size!42724 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87395)

(declare-fun zeroValue!1296 () V!52057)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun lt!585178 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22936 0))(
  ( (tuple2!22937 (_1!11478 (_ BitVec 64)) (_2!11478 V!52057)) )
))
(declare-datatypes ((List!30106 0))(
  ( (Nil!30103) (Cons!30102 (h!31311 tuple2!22936) (t!43719 List!30106)) )
))
(declare-datatypes ((ListLongMap!20605 0))(
  ( (ListLongMap!20606 (toList!10318 List!30106)) )
))
(declare-fun contains!8404 (ListLongMap!20605 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5274 (array!87393 array!87395 (_ BitVec 32) (_ BitVec 32) V!52057 V!52057 (_ BitVec 32) Int) ListLongMap!20605)

(assert (=> b!1309182 (= lt!585178 (contains!8404 (getCurrentListMap!5274 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1309183 () Bool)

(declare-fun e!746971 () Bool)

(declare-fun tp_is_empty!35215 () Bool)

(assert (=> b!1309183 (= e!746971 tp_is_empty!35215)))

(declare-fun mapIsEmpty!54451 () Bool)

(declare-fun mapRes!54451 () Bool)

(assert (=> mapIsEmpty!54451 mapRes!54451))

(declare-fun mapNonEmpty!54451 () Bool)

(declare-fun tp!103778 () Bool)

(declare-fun e!746973 () Bool)

(assert (=> mapNonEmpty!54451 (= mapRes!54451 (and tp!103778 e!746973))))

(declare-fun mapRest!54451 () (Array (_ BitVec 32) ValueCell!16709))

(declare-fun mapValue!54451 () ValueCell!16709)

(declare-fun mapKey!54451 () (_ BitVec 32))

(assert (=> mapNonEmpty!54451 (= (arr!42173 _values!1354) (store mapRest!54451 mapKey!54451 mapValue!54451))))

(declare-fun b!1309184 () Bool)

(declare-fun res!869164 () Bool)

(assert (=> b!1309184 (=> (not res!869164) (not e!746974))))

(assert (=> b!1309184 (= res!869164 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42723 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309185 () Bool)

(declare-fun res!869168 () Bool)

(assert (=> b!1309185 (=> (not res!869168) (not e!746974))))

(declare-datatypes ((List!30107 0))(
  ( (Nil!30104) (Cons!30103 (h!31312 (_ BitVec 64)) (t!43720 List!30107)) )
))
(declare-fun arrayNoDuplicates!0 (array!87393 (_ BitVec 32) List!30107) Bool)

(assert (=> b!1309185 (= res!869168 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30104))))

(declare-fun b!1309186 () Bool)

(declare-fun e!746975 () Bool)

(assert (=> b!1309186 (= e!746975 (and e!746971 mapRes!54451))))

(declare-fun condMapEmpty!54451 () Bool)

(declare-fun mapDefault!54451 () ValueCell!16709)

