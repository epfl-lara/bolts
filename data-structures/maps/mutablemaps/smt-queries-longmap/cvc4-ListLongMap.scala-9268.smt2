; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110996 () Bool)

(assert start!110996)

(declare-fun b_free!29795 () Bool)

(declare-fun b_next!29795 () Bool)

(assert (=> start!110996 (= b_free!29795 (not b_next!29795))))

(declare-fun tp!104708 () Bool)

(declare-fun b_and!48013 () Bool)

(assert (=> start!110996 (= tp!104708 b_and!48013)))

(declare-fun b!1313577 () Bool)

(declare-fun res!872166 () Bool)

(declare-fun e!749298 () Bool)

(assert (=> b!1313577 (=> (not res!872166) (not e!749298))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52469 0))(
  ( (V!52470 (val!17837 Int)) )
))
(declare-datatypes ((ValueCell!16864 0))(
  ( (ValueCellFull!16864 (v!20462 V!52469)) (EmptyCell!16864) )
))
(declare-datatypes ((array!87991 0))(
  ( (array!87992 (arr!42471 (Array (_ BitVec 32) ValueCell!16864)) (size!43022 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87991)

(declare-datatypes ((array!87993 0))(
  ( (array!87994 (arr!42472 (Array (_ BitVec 32) (_ BitVec 64))) (size!43023 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87993)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1313577 (= res!872166 (and (= (size!43022 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43023 _keys!1628) (size!43022 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1313578 () Bool)

(declare-fun res!872165 () Bool)

(assert (=> b!1313578 (=> (not res!872165) (not e!749298))))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(assert (=> b!1313578 (= res!872165 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43023 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1313579 () Bool)

(assert (=> b!1313579 (= e!749298 false)))

(declare-fun lt!585634 () Bool)

(declare-fun defaultEntry!1357 () Int)

(declare-fun zeroValue!1296 () V!52469)

(declare-fun minValue!1296 () V!52469)

(declare-datatypes ((tuple2!23168 0))(
  ( (tuple2!23169 (_1!11594 (_ BitVec 64)) (_2!11594 V!52469)) )
))
(declare-datatypes ((List!30332 0))(
  ( (Nil!30329) (Cons!30328 (h!31537 tuple2!23168) (t!43945 List!30332)) )
))
(declare-datatypes ((ListLongMap!20837 0))(
  ( (ListLongMap!20838 (toList!10434 List!30332)) )
))
(declare-fun contains!8520 (ListLongMap!20837 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5390 (array!87993 array!87991 (_ BitVec 32) (_ BitVec 32) V!52469 V!52469 (_ BitVec 32) Int) ListLongMap!20837)

(assert (=> b!1313579 (= lt!585634 (contains!8520 (getCurrentListMap!5390 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1313580 () Bool)

(declare-fun e!749300 () Bool)

(declare-fun e!749297 () Bool)

(declare-fun mapRes!54916 () Bool)

(assert (=> b!1313580 (= e!749300 (and e!749297 mapRes!54916))))

(declare-fun condMapEmpty!54916 () Bool)

(declare-fun mapDefault!54916 () ValueCell!16864)

