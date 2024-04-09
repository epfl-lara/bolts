; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109454 () Bool)

(assert start!109454)

(declare-fun b_free!28907 () Bool)

(declare-fun b_next!28907 () Bool)

(assert (=> start!109454 (= b_free!28907 (not b_next!28907))))

(declare-fun tp!101840 () Bool)

(declare-fun b_and!47007 () Bool)

(assert (=> start!109454 (= tp!101840 b_and!47007)))

(declare-fun b!1295349 () Bool)

(declare-fun res!861008 () Bool)

(declare-fun e!739117 () Bool)

(assert (=> b!1295349 (=> (not res!861008) (not e!739117))))

(declare-datatypes ((array!86077 0))(
  ( (array!86078 (arr!41535 (Array (_ BitVec 32) (_ BitVec 64))) (size!42086 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86077)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295349 (= res!861008 (not (validKeyInArray!0 (select (arr!41535 _keys!1741) from!2144))))))

(declare-fun b!1295350 () Bool)

(declare-fun e!739115 () Bool)

(declare-fun tp_is_empty!34547 () Bool)

(assert (=> b!1295350 (= e!739115 tp_is_empty!34547)))

(declare-fun mapNonEmpty!53381 () Bool)

(declare-fun mapRes!53381 () Bool)

(declare-fun tp!101841 () Bool)

(declare-fun e!739112 () Bool)

(assert (=> mapNonEmpty!53381 (= mapRes!53381 (and tp!101841 e!739112))))

(declare-datatypes ((V!51165 0))(
  ( (V!51166 (val!17348 Int)) )
))
(declare-datatypes ((ValueCell!16375 0))(
  ( (ValueCellFull!16375 (v!19949 V!51165)) (EmptyCell!16375) )
))
(declare-fun mapValue!53381 () ValueCell!16375)

(declare-datatypes ((array!86079 0))(
  ( (array!86080 (arr!41536 (Array (_ BitVec 32) ValueCell!16375)) (size!42087 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86079)

(declare-fun mapKey!53381 () (_ BitVec 32))

(declare-fun mapRest!53381 () (Array (_ BitVec 32) ValueCell!16375))

(assert (=> mapNonEmpty!53381 (= (arr!41536 _values!1445) (store mapRest!53381 mapKey!53381 mapValue!53381))))

(declare-fun mapIsEmpty!53381 () Bool)

(assert (=> mapIsEmpty!53381 mapRes!53381))

(declare-fun b!1295351 () Bool)

(declare-fun res!861004 () Bool)

(assert (=> b!1295351 (=> (not res!861004) (not e!739117))))

(declare-datatypes ((List!29657 0))(
  ( (Nil!29654) (Cons!29653 (h!30862 (_ BitVec 64)) (t!43228 List!29657)) )
))
(declare-fun arrayNoDuplicates!0 (array!86077 (_ BitVec 32) List!29657) Bool)

(assert (=> b!1295351 (= res!861004 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29654))))

(declare-fun res!861007 () Bool)

(assert (=> start!109454 (=> (not res!861007) (not e!739117))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109454 (= res!861007 (validMask!0 mask!2175))))

(assert (=> start!109454 e!739117))

(assert (=> start!109454 tp_is_empty!34547))

(assert (=> start!109454 true))

(declare-fun e!739116 () Bool)

(declare-fun array_inv!31433 (array!86079) Bool)

(assert (=> start!109454 (and (array_inv!31433 _values!1445) e!739116)))

(declare-fun array_inv!31434 (array!86077) Bool)

(assert (=> start!109454 (array_inv!31434 _keys!1741)))

(assert (=> start!109454 tp!101840))

(declare-fun b!1295352 () Bool)

(declare-fun res!861009 () Bool)

(assert (=> b!1295352 (=> (not res!861009) (not e!739117))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1295352 (= res!861009 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42086 _keys!1741))))))

(declare-fun b!1295353 () Bool)

(assert (=> b!1295353 (= e!739116 (and e!739115 mapRes!53381))))

(declare-fun condMapEmpty!53381 () Bool)

(declare-fun mapDefault!53381 () ValueCell!16375)

