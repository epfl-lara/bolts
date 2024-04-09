; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108604 () Bool)

(assert start!108604)

(declare-fun b_free!28115 () Bool)

(declare-fun b_next!28115 () Bool)

(assert (=> start!108604 (= b_free!28115 (not b_next!28115))))

(declare-fun tp!99456 () Bool)

(declare-fun b_and!46185 () Bool)

(assert (=> start!108604 (= tp!99456 b_and!46185)))

(declare-fun b!1281553 () Bool)

(declare-fun e!732227 () Bool)

(declare-fun e!732231 () Bool)

(assert (=> b!1281553 (= e!732227 (not e!732231))))

(declare-fun res!851416 () Bool)

(assert (=> b!1281553 (=> res!851416 e!732231)))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1281553 (= res!851416 (bvslt (bvadd #b00000000000000000000000000000001 from!2144) #b00000000000000000000000000000000))))

(declare-datatypes ((V!50109 0))(
  ( (V!50110 (val!16952 Int)) )
))
(declare-fun minValue!1387 () V!50109)

(declare-fun zeroValue!1387 () V!50109)

(declare-datatypes ((ValueCell!15979 0))(
  ( (ValueCellFull!15979 (v!19550 V!50109)) (EmptyCell!15979) )
))
(declare-datatypes ((array!84533 0))(
  ( (array!84534 (arr!40766 (Array (_ BitVec 32) ValueCell!15979)) (size!41317 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84533)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84535 0))(
  ( (array!84536 (arr!40767 (Array (_ BitVec 32) (_ BitVec 64))) (size!41318 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84535)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21854 0))(
  ( (tuple2!21855 (_1!10937 (_ BitVec 64)) (_2!10937 V!50109)) )
))
(declare-datatypes ((List!29061 0))(
  ( (Nil!29058) (Cons!29057 (h!30266 tuple2!21854) (t!42608 List!29061)) )
))
(declare-datatypes ((ListLongMap!19523 0))(
  ( (ListLongMap!19524 (toList!9777 List!29061)) )
))
(declare-fun contains!7830 (ListLongMap!19523 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4797 (array!84535 array!84533 (_ BitVec 32) (_ BitVec 32) V!50109 V!50109 (_ BitVec 32) Int) ListLongMap!19523)

(assert (=> b!1281553 (contains!7830 (getCurrentListMap!4797 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42389 0))(
  ( (Unit!42390) )
))
(declare-fun lt!576208 () Unit!42389)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!25 (array!84535 array!84533 (_ BitVec 32) (_ BitVec 32) V!50109 V!50109 (_ BitVec 64) (_ BitVec 32) Int) Unit!42389)

(assert (=> b!1281553 (= lt!576208 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!25 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun mapNonEmpty!52184 () Bool)

(declare-fun mapRes!52184 () Bool)

(declare-fun tp!99455 () Bool)

(declare-fun e!732228 () Bool)

(assert (=> mapNonEmpty!52184 (= mapRes!52184 (and tp!99455 e!732228))))

(declare-fun mapRest!52184 () (Array (_ BitVec 32) ValueCell!15979))

(declare-fun mapValue!52184 () ValueCell!15979)

(declare-fun mapKey!52184 () (_ BitVec 32))

(assert (=> mapNonEmpty!52184 (= (arr!40766 _values!1445) (store mapRest!52184 mapKey!52184 mapValue!52184))))

(declare-fun b!1281554 () Bool)

(declare-fun res!851411 () Bool)

(assert (=> b!1281554 (=> (not res!851411) (not e!732227))))

(declare-datatypes ((List!29062 0))(
  ( (Nil!29059) (Cons!29058 (h!30267 (_ BitVec 64)) (t!42609 List!29062)) )
))
(declare-fun arrayNoDuplicates!0 (array!84535 (_ BitVec 32) List!29062) Bool)

(assert (=> b!1281554 (= res!851411 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29059))))

(declare-fun b!1281555 () Bool)

(declare-fun e!732230 () Bool)

(declare-fun e!732232 () Bool)

(assert (=> b!1281555 (= e!732230 (and e!732232 mapRes!52184))))

(declare-fun condMapEmpty!52184 () Bool)

(declare-fun mapDefault!52184 () ValueCell!15979)

