; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110106 () Bool)

(assert start!110106)

(declare-fun b_free!29269 () Bool)

(declare-fun b_next!29269 () Bool)

(assert (=> start!110106 (= b_free!29269 (not b_next!29269))))

(declare-fun tp!102959 () Bool)

(declare-fun b_and!47443 () Bool)

(assert (=> start!110106 (= tp!102959 b_and!47443)))

(declare-fun b!1303484 () Bool)

(declare-fun e!743521 () Bool)

(declare-fun tp_is_empty!34909 () Bool)

(assert (=> b!1303484 (= e!743521 tp_is_empty!34909)))

(declare-fun b!1303485 () Bool)

(declare-fun res!865849 () Bool)

(declare-fun e!743516 () Bool)

(assert (=> b!1303485 (=> (not res!865849) (not e!743516))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!86795 0))(
  ( (array!86796 (arr!41884 (Array (_ BitVec 32) (_ BitVec 64))) (size!42435 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86795)

(assert (=> b!1303485 (= res!865849 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42435 _keys!1741))))))

(declare-fun res!865854 () Bool)

(assert (=> start!110106 (=> (not res!865854) (not e!743516))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110106 (= res!865854 (validMask!0 mask!2175))))

(assert (=> start!110106 e!743516))

(assert (=> start!110106 tp_is_empty!34909))

(assert (=> start!110106 true))

(declare-datatypes ((V!51649 0))(
  ( (V!51650 (val!17529 Int)) )
))
(declare-datatypes ((ValueCell!16556 0))(
  ( (ValueCellFull!16556 (v!20143 V!51649)) (EmptyCell!16556) )
))
(declare-datatypes ((array!86797 0))(
  ( (array!86798 (arr!41885 (Array (_ BitVec 32) ValueCell!16556)) (size!42436 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86797)

(declare-fun e!743522 () Bool)

(declare-fun array_inv!31673 (array!86797) Bool)

(assert (=> start!110106 (and (array_inv!31673 _values!1445) e!743522)))

(declare-fun array_inv!31674 (array!86795) Bool)

(assert (=> start!110106 (array_inv!31674 _keys!1741)))

(assert (=> start!110106 tp!102959))

(declare-fun b!1303486 () Bool)

(declare-fun res!865853 () Bool)

(assert (=> b!1303486 (=> (not res!865853) (not e!743516))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1303486 (= res!865853 (not (validKeyInArray!0 (select (arr!41884 _keys!1741) from!2144))))))

(declare-fun b!1303487 () Bool)

(declare-fun res!865850 () Bool)

(assert (=> b!1303487 (=> (not res!865850) (not e!743516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86795 (_ BitVec 32)) Bool)

(assert (=> b!1303487 (= res!865850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1303488 () Bool)

(declare-fun e!743518 () Bool)

(declare-fun e!743517 () Bool)

(assert (=> b!1303488 (= e!743518 e!743517)))

(declare-fun res!865858 () Bool)

(assert (=> b!1303488 (=> (not res!865858) (not e!743517))))

(declare-fun minValue!1387 () V!51649)

(declare-fun zeroValue!1387 () V!51649)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22776 0))(
  ( (tuple2!22777 (_1!11398 (_ BitVec 64)) (_2!11398 V!51649)) )
))
(declare-datatypes ((List!29927 0))(
  ( (Nil!29924) (Cons!29923 (h!31132 tuple2!22776) (t!43528 List!29927)) )
))
(declare-datatypes ((ListLongMap!20445 0))(
  ( (ListLongMap!20446 (toList!10238 List!29927)) )
))
(declare-fun contains!8309 (ListLongMap!20445 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!6172 (array!86795 array!86797 (_ BitVec 32) (_ BitVec 32) V!51649 V!51649 (_ BitVec 32) Int) ListLongMap!20445)

(assert (=> b!1303488 (= res!865858 (not (contains!8309 (getCurrentListMapNoExtraKeys!6172 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205)))))

(declare-fun b!1303489 () Bool)

(assert (=> b!1303489 (= e!743517 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 k!1205)))))

(declare-fun b!1303490 () Bool)

(declare-fun res!865852 () Bool)

(assert (=> b!1303490 (=> (not res!865852) (not e!743516))))

(declare-datatypes ((List!29928 0))(
  ( (Nil!29925) (Cons!29924 (h!31133 (_ BitVec 64)) (t!43529 List!29928)) )
))
(declare-fun arrayNoDuplicates!0 (array!86795 (_ BitVec 32) List!29928) Bool)

(assert (=> b!1303490 (= res!865852 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29925))))

(declare-fun b!1303491 () Bool)

(declare-fun res!865851 () Bool)

(assert (=> b!1303491 (=> (not res!865851) (not e!743516))))

(declare-fun getCurrentListMap!5198 (array!86795 array!86797 (_ BitVec 32) (_ BitVec 32) V!51649 V!51649 (_ BitVec 32) Int) ListLongMap!20445)

(assert (=> b!1303491 (= res!865851 (contains!8309 (getCurrentListMap!5198 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1303492 () Bool)

(declare-fun e!743520 () Bool)

(assert (=> b!1303492 (= e!743520 tp_is_empty!34909)))

(declare-fun b!1303493 () Bool)

(assert (=> b!1303493 (= e!743516 (not e!743518))))

(declare-fun res!865856 () Bool)

(assert (=> b!1303493 (=> res!865856 e!743518)))

(assert (=> b!1303493 (= res!865856 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1303493 (not (contains!8309 (ListLongMap!20446 Nil!29924) k!1205))))

(declare-datatypes ((Unit!43108 0))(
  ( (Unit!43109) )
))
(declare-fun lt!583278 () Unit!43108)

(declare-fun emptyContainsNothing!223 ((_ BitVec 64)) Unit!43108)

(assert (=> b!1303493 (= lt!583278 (emptyContainsNothing!223 k!1205))))

(declare-fun b!1303494 () Bool)

(declare-fun mapRes!53956 () Bool)

(assert (=> b!1303494 (= e!743522 (and e!743520 mapRes!53956))))

(declare-fun condMapEmpty!53956 () Bool)

(declare-fun mapDefault!53956 () ValueCell!16556)

