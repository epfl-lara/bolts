; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108914 () Bool)

(assert start!108914)

(declare-fun b_free!28391 () Bool)

(declare-fun b_next!28391 () Bool)

(assert (=> start!108914 (= b_free!28391 (not b_next!28391))))

(declare-fun tp!100289 () Bool)

(declare-fun b_and!46467 () Bool)

(assert (=> start!108914 (= tp!100289 b_and!46467)))

(declare-fun mapNonEmpty!52604 () Bool)

(declare-fun mapRes!52604 () Bool)

(declare-fun tp!100290 () Bool)

(declare-fun e!734469 () Bool)

(assert (=> mapNonEmpty!52604 (= mapRes!52604 (and tp!100290 e!734469))))

(declare-datatypes ((V!50477 0))(
  ( (V!50478 (val!17090 Int)) )
))
(declare-datatypes ((ValueCell!16117 0))(
  ( (ValueCellFull!16117 (v!19690 V!50477)) (EmptyCell!16117) )
))
(declare-fun mapValue!52604 () ValueCell!16117)

(declare-fun mapKey!52604 () (_ BitVec 32))

(declare-datatypes ((array!85071 0))(
  ( (array!85072 (arr!41033 (Array (_ BitVec 32) ValueCell!16117)) (size!41584 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85071)

(declare-fun mapRest!52604 () (Array (_ BitVec 32) ValueCell!16117))

(assert (=> mapNonEmpty!52604 (= (arr!41033 _values!1445) (store mapRest!52604 mapKey!52604 mapValue!52604))))

(declare-fun b!1285784 () Bool)

(declare-fun res!854257 () Bool)

(declare-fun e!734466 () Bool)

(assert (=> b!1285784 (=> (not res!854257) (not e!734466))))

(declare-fun minValue!1387 () V!50477)

(declare-fun zeroValue!1387 () V!50477)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!85073 0))(
  ( (array!85074 (arr!41034 (Array (_ BitVec 32) (_ BitVec 64))) (size!41585 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85073)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((tuple2!22042 0))(
  ( (tuple2!22043 (_1!11031 (_ BitVec 64)) (_2!11031 V!50477)) )
))
(declare-datatypes ((List!29253 0))(
  ( (Nil!29250) (Cons!29249 (h!30458 tuple2!22042) (t!42804 List!29253)) )
))
(declare-datatypes ((ListLongMap!19711 0))(
  ( (ListLongMap!19712 (toList!9871 List!29253)) )
))
(declare-fun contains!7926 (ListLongMap!19711 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4887 (array!85073 array!85071 (_ BitVec 32) (_ BitVec 32) V!50477 V!50477 (_ BitVec 32) Int) ListLongMap!19711)

(assert (=> b!1285784 (= res!854257 (contains!7926 (getCurrentListMap!4887 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1285785 () Bool)

(declare-fun res!854251 () Bool)

(assert (=> b!1285785 (=> (not res!854251) (not e!734466))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1285785 (= res!854251 (validKeyInArray!0 (select (arr!41034 _keys!1741) from!2144)))))

(declare-fun res!854252 () Bool)

(assert (=> start!108914 (=> (not res!854252) (not e!734466))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108914 (= res!854252 (validMask!0 mask!2175))))

(assert (=> start!108914 e!734466))

(declare-fun tp_is_empty!34031 () Bool)

(assert (=> start!108914 tp_is_empty!34031))

(assert (=> start!108914 true))

(declare-fun e!734470 () Bool)

(declare-fun array_inv!31095 (array!85071) Bool)

(assert (=> start!108914 (and (array_inv!31095 _values!1445) e!734470)))

(declare-fun array_inv!31096 (array!85073) Bool)

(assert (=> start!108914 (array_inv!31096 _keys!1741)))

(assert (=> start!108914 tp!100289))

(declare-fun mapIsEmpty!52604 () Bool)

(assert (=> mapIsEmpty!52604 mapRes!52604))

(declare-fun b!1285786 () Bool)

(declare-fun e!734468 () Bool)

(assert (=> b!1285786 (= e!734468 tp_is_empty!34031)))

(declare-fun b!1285787 () Bool)

(declare-fun res!854256 () Bool)

(assert (=> b!1285787 (=> (not res!854256) (not e!734466))))

(assert (=> b!1285787 (= res!854256 (and (= (size!41584 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41585 _keys!1741) (size!41584 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1285788 () Bool)

(assert (=> b!1285788 (= e!734470 (and e!734468 mapRes!52604))))

(declare-fun condMapEmpty!52604 () Bool)

(declare-fun mapDefault!52604 () ValueCell!16117)

