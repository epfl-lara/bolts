; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108868 () Bool)

(assert start!108868)

(declare-fun b_free!28345 () Bool)

(declare-fun b_next!28345 () Bool)

(assert (=> start!108868 (= b_free!28345 (not b_next!28345))))

(declare-fun tp!100151 () Bool)

(declare-fun b_and!46421 () Bool)

(assert (=> start!108868 (= tp!100151 b_and!46421)))

(declare-fun b!1285173 () Bool)

(declare-fun e!734124 () Bool)

(assert (=> b!1285173 (= e!734124 false)))

(declare-datatypes ((V!50417 0))(
  ( (V!50418 (val!17067 Int)) )
))
(declare-fun minValue!1387 () V!50417)

(declare-fun zeroValue!1387 () V!50417)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!576831 () Bool)

(declare-datatypes ((ValueCell!16094 0))(
  ( (ValueCellFull!16094 (v!19667 V!50417)) (EmptyCell!16094) )
))
(declare-datatypes ((array!84981 0))(
  ( (array!84982 (arr!40988 (Array (_ BitVec 32) ValueCell!16094)) (size!41539 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84981)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84983 0))(
  ( (array!84984 (arr!40989 (Array (_ BitVec 32) (_ BitVec 64))) (size!41540 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84983)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22006 0))(
  ( (tuple2!22007 (_1!11013 (_ BitVec 64)) (_2!11013 V!50417)) )
))
(declare-datatypes ((List!29219 0))(
  ( (Nil!29216) (Cons!29215 (h!30424 tuple2!22006) (t!42770 List!29219)) )
))
(declare-datatypes ((ListLongMap!19675 0))(
  ( (ListLongMap!19676 (toList!9853 List!29219)) )
))
(declare-fun contains!7908 (ListLongMap!19675 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4869 (array!84983 array!84981 (_ BitVec 32) (_ BitVec 32) V!50417 V!50417 (_ BitVec 32) Int) ListLongMap!19675)

(assert (=> b!1285173 (= lt!576831 (contains!7908 (getCurrentListMap!4869 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1285174 () Bool)

(declare-fun res!853848 () Bool)

(assert (=> b!1285174 (=> (not res!853848) (not e!734124))))

(declare-datatypes ((List!29220 0))(
  ( (Nil!29217) (Cons!29216 (h!30425 (_ BitVec 64)) (t!42771 List!29220)) )
))
(declare-fun arrayNoDuplicates!0 (array!84983 (_ BitVec 32) List!29220) Bool)

(assert (=> b!1285174 (= res!853848 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29217))))

(declare-fun b!1285175 () Bool)

(declare-fun e!734123 () Bool)

(declare-fun tp_is_empty!33985 () Bool)

(assert (=> b!1285175 (= e!734123 tp_is_empty!33985)))

(declare-fun b!1285176 () Bool)

(declare-fun res!853851 () Bool)

(assert (=> b!1285176 (=> (not res!853851) (not e!734124))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84983 (_ BitVec 32)) Bool)

(assert (=> b!1285176 (= res!853851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!853849 () Bool)

(assert (=> start!108868 (=> (not res!853849) (not e!734124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108868 (= res!853849 (validMask!0 mask!2175))))

(assert (=> start!108868 e!734124))

(assert (=> start!108868 tp_is_empty!33985))

(assert (=> start!108868 true))

(declare-fun e!734121 () Bool)

(declare-fun array_inv!31065 (array!84981) Bool)

(assert (=> start!108868 (and (array_inv!31065 _values!1445) e!734121)))

(declare-fun array_inv!31066 (array!84983) Bool)

(assert (=> start!108868 (array_inv!31066 _keys!1741)))

(assert (=> start!108868 tp!100151))

(declare-fun b!1285177 () Bool)

(declare-fun res!853850 () Bool)

(assert (=> b!1285177 (=> (not res!853850) (not e!734124))))

(assert (=> b!1285177 (= res!853850 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41540 _keys!1741))))))

(declare-fun b!1285178 () Bool)

(declare-fun e!734125 () Bool)

(declare-fun mapRes!52535 () Bool)

(assert (=> b!1285178 (= e!734121 (and e!734125 mapRes!52535))))

(declare-fun condMapEmpty!52535 () Bool)

(declare-fun mapDefault!52535 () ValueCell!16094)

