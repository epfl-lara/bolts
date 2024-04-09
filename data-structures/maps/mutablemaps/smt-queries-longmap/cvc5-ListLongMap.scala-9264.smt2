; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110968 () Bool)

(assert start!110968)

(declare-fun b_free!29767 () Bool)

(declare-fun b_next!29767 () Bool)

(assert (=> start!110968 (= b_free!29767 (not b_next!29767))))

(declare-fun tp!104623 () Bool)

(declare-fun b_and!47985 () Bool)

(assert (=> start!110968 (= tp!104623 b_and!47985)))

(declare-fun b!1313241 () Bool)

(declare-fun e!749089 () Bool)

(declare-fun tp_is_empty!35497 () Bool)

(assert (=> b!1313241 (= e!749089 tp_is_empty!35497)))

(declare-fun b!1313242 () Bool)

(declare-fun res!871956 () Bool)

(declare-fun e!749088 () Bool)

(assert (=> b!1313242 (=> (not res!871956) (not e!749088))))

(declare-datatypes ((array!87939 0))(
  ( (array!87940 (arr!42445 (Array (_ BitVec 32) (_ BitVec 64))) (size!42996 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87939)

(declare-datatypes ((List!30313 0))(
  ( (Nil!30310) (Cons!30309 (h!31518 (_ BitVec 64)) (t!43926 List!30313)) )
))
(declare-fun arrayNoDuplicates!0 (array!87939 (_ BitVec 32) List!30313) Bool)

(assert (=> b!1313242 (= res!871956 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30310))))

(declare-fun b!1313243 () Bool)

(declare-fun res!871957 () Bool)

(assert (=> b!1313243 (=> (not res!871957) (not e!749088))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52433 0))(
  ( (V!52434 (val!17823 Int)) )
))
(declare-datatypes ((ValueCell!16850 0))(
  ( (ValueCellFull!16850 (v!20448 V!52433)) (EmptyCell!16850) )
))
(declare-datatypes ((array!87941 0))(
  ( (array!87942 (arr!42446 (Array (_ BitVec 32) ValueCell!16850)) (size!42997 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87941)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1313243 (= res!871957 (and (= (size!42997 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42996 _keys!1628) (size!42997 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1313244 () Bool)

(declare-fun res!871954 () Bool)

(assert (=> b!1313244 (=> (not res!871954) (not e!749088))))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1313244 (= res!871954 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42996 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313245 () Bool)

(declare-fun e!749087 () Bool)

(declare-fun e!749090 () Bool)

(declare-fun mapRes!54874 () Bool)

(assert (=> b!1313245 (= e!749087 (and e!749090 mapRes!54874))))

(declare-fun condMapEmpty!54874 () Bool)

(declare-fun mapDefault!54874 () ValueCell!16850)

