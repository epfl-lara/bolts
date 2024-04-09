; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108890 () Bool)

(assert start!108890)

(declare-fun b_free!28367 () Bool)

(declare-fun b_next!28367 () Bool)

(assert (=> start!108890 (= b_free!28367 (not b_next!28367))))

(declare-fun tp!100218 () Bool)

(declare-fun b_and!46443 () Bool)

(assert (=> start!108890 (= tp!100218 b_and!46443)))

(declare-fun mapNonEmpty!52568 () Bool)

(declare-fun mapRes!52568 () Bool)

(declare-fun tp!100217 () Bool)

(declare-fun e!734289 () Bool)

(assert (=> mapNonEmpty!52568 (= mapRes!52568 (and tp!100217 e!734289))))

(declare-datatypes ((V!50445 0))(
  ( (V!50446 (val!17078 Int)) )
))
(declare-datatypes ((ValueCell!16105 0))(
  ( (ValueCellFull!16105 (v!19678 V!50445)) (EmptyCell!16105) )
))
(declare-fun mapRest!52568 () (Array (_ BitVec 32) ValueCell!16105))

(declare-datatypes ((array!85025 0))(
  ( (array!85026 (arr!41010 (Array (_ BitVec 32) ValueCell!16105)) (size!41561 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85025)

(declare-fun mapValue!52568 () ValueCell!16105)

(declare-fun mapKey!52568 () (_ BitVec 32))

(assert (=> mapNonEmpty!52568 (= (arr!41010 _values!1445) (store mapRest!52568 mapKey!52568 mapValue!52568))))

(declare-fun b!1285437 () Bool)

(declare-fun res!854014 () Bool)

(declare-fun e!734290 () Bool)

(assert (=> b!1285437 (=> (not res!854014) (not e!734290))))

(declare-datatypes ((array!85027 0))(
  ( (array!85028 (arr!41011 (Array (_ BitVec 32) (_ BitVec 64))) (size!41562 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85027)

(declare-datatypes ((List!29235 0))(
  ( (Nil!29232) (Cons!29231 (h!30440 (_ BitVec 64)) (t!42786 List!29235)) )
))
(declare-fun arrayNoDuplicates!0 (array!85027 (_ BitVec 32) List!29235) Bool)

(assert (=> b!1285437 (= res!854014 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29232))))

(declare-fun b!1285438 () Bool)

(declare-fun res!854013 () Bool)

(assert (=> b!1285438 (=> (not res!854013) (not e!734290))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1285438 (= res!854013 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41562 _keys!1741))))))

(declare-fun b!1285439 () Bool)

(declare-fun e!734287 () Bool)

(declare-fun e!734286 () Bool)

(assert (=> b!1285439 (= e!734287 (and e!734286 mapRes!52568))))

(declare-fun condMapEmpty!52568 () Bool)

(declare-fun mapDefault!52568 () ValueCell!16105)

