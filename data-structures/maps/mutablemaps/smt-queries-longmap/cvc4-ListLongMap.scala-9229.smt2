; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110762 () Bool)

(assert start!110762)

(declare-fun b_free!29561 () Bool)

(declare-fun b_next!29561 () Bool)

(assert (=> start!110762 (= b_free!29561 (not b_next!29561))))

(declare-fun tp!104005 () Bool)

(declare-fun b_and!47779 () Bool)

(assert (=> start!110762 (= tp!104005 b_and!47779)))

(declare-fun b!1310342 () Bool)

(declare-fun e!747542 () Bool)

(assert (=> b!1310342 (= e!747542 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87537 0))(
  ( (array!87538 (arr!42244 (Array (_ BitVec 32) (_ BitVec 64))) (size!42795 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87537)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52157 0))(
  ( (V!52158 (val!17720 Int)) )
))
(declare-fun minValue!1296 () V!52157)

(declare-datatypes ((ValueCell!16747 0))(
  ( (ValueCellFull!16747 (v!20345 V!52157)) (EmptyCell!16747) )
))
(declare-datatypes ((array!87539 0))(
  ( (array!87540 (arr!42245 (Array (_ BitVec 32) ValueCell!16747)) (size!42796 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87539)

(declare-fun zeroValue!1296 () V!52157)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22998 0))(
  ( (tuple2!22999 (_1!11509 (_ BitVec 64)) (_2!11509 V!52157)) )
))
(declare-datatypes ((List!30163 0))(
  ( (Nil!30160) (Cons!30159 (h!31368 tuple2!22998) (t!43776 List!30163)) )
))
(declare-datatypes ((ListLongMap!20667 0))(
  ( (ListLongMap!20668 (toList!10349 List!30163)) )
))
(declare-fun contains!8435 (ListLongMap!20667 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5305 (array!87537 array!87539 (_ BitVec 32) (_ BitVec 32) V!52157 V!52157 (_ BitVec 32) Int) ListLongMap!20667)

(assert (=> b!1310342 (contains!8435 (getCurrentListMap!5305 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43284 0))(
  ( (Unit!43285) )
))
(declare-fun lt!585292 () Unit!43284)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!16 (array!87537 array!87539 (_ BitVec 32) (_ BitVec 32) V!52157 V!52157 (_ BitVec 64) (_ BitVec 32) Int) Unit!43284)

(assert (=> b!1310342 (= lt!585292 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!16 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1310344 () Bool)

(declare-fun e!747541 () Bool)

(declare-fun tp_is_empty!35291 () Bool)

(assert (=> b!1310344 (= e!747541 tp_is_empty!35291)))

(declare-fun b!1310345 () Bool)

(declare-fun res!869984 () Bool)

(assert (=> b!1310345 (=> (not res!869984) (not e!747542))))

(assert (=> b!1310345 (= res!869984 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42795 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!54565 () Bool)

(declare-fun mapRes!54565 () Bool)

(assert (=> mapIsEmpty!54565 mapRes!54565))

(declare-fun b!1310346 () Bool)

(declare-fun res!869985 () Bool)

(assert (=> b!1310346 (=> (not res!869985) (not e!747542))))

(assert (=> b!1310346 (= res!869985 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1310347 () Bool)

(declare-fun e!747544 () Bool)

(declare-fun e!747543 () Bool)

(assert (=> b!1310347 (= e!747544 (and e!747543 mapRes!54565))))

(declare-fun condMapEmpty!54565 () Bool)

(declare-fun mapDefault!54565 () ValueCell!16747)

