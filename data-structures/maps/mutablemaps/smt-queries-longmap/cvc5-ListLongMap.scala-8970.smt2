; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108582 () Bool)

(assert start!108582)

(declare-fun b_free!28093 () Bool)

(declare-fun b_next!28093 () Bool)

(assert (=> start!108582 (= b_free!28093 (not b_next!28093))))

(declare-fun tp!99389 () Bool)

(declare-fun b_and!46163 () Bool)

(assert (=> start!108582 (= tp!99389 b_and!46163)))

(declare-fun res!851159 () Bool)

(declare-fun e!732039 () Bool)

(assert (=> start!108582 (=> (not res!851159) (not e!732039))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108582 (= res!851159 (validMask!0 mask!2175))))

(assert (=> start!108582 e!732039))

(declare-fun tp_is_empty!33733 () Bool)

(assert (=> start!108582 tp_is_empty!33733))

(assert (=> start!108582 true))

(declare-datatypes ((V!50081 0))(
  ( (V!50082 (val!16941 Int)) )
))
(declare-datatypes ((ValueCell!15968 0))(
  ( (ValueCellFull!15968 (v!19539 V!50081)) (EmptyCell!15968) )
))
(declare-datatypes ((array!84491 0))(
  ( (array!84492 (arr!40745 (Array (_ BitVec 32) ValueCell!15968)) (size!41296 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84491)

(declare-fun e!732036 () Bool)

(declare-fun array_inv!30903 (array!84491) Bool)

(assert (=> start!108582 (and (array_inv!30903 _values!1445) e!732036)))

(declare-datatypes ((array!84493 0))(
  ( (array!84494 (arr!40746 (Array (_ BitVec 32) (_ BitVec 64))) (size!41297 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84493)

(declare-fun array_inv!30904 (array!84493) Bool)

(assert (=> start!108582 (array_inv!30904 _keys!1741)))

(assert (=> start!108582 tp!99389))

(declare-fun b!1281197 () Bool)

(declare-fun res!851154 () Bool)

(assert (=> b!1281197 (=> (not res!851154) (not e!732039))))

(declare-fun minValue!1387 () V!50081)

(declare-fun zeroValue!1387 () V!50081)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((tuple2!21836 0))(
  ( (tuple2!21837 (_1!10928 (_ BitVec 64)) (_2!10928 V!50081)) )
))
(declare-datatypes ((List!29045 0))(
  ( (Nil!29042) (Cons!29041 (h!30250 tuple2!21836) (t!42592 List!29045)) )
))
(declare-datatypes ((ListLongMap!19505 0))(
  ( (ListLongMap!19506 (toList!9768 List!29045)) )
))
(declare-fun contains!7821 (ListLongMap!19505 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4788 (array!84493 array!84491 (_ BitVec 32) (_ BitVec 32) V!50081 V!50081 (_ BitVec 32) Int) ListLongMap!19505)

(assert (=> b!1281197 (= res!851154 (contains!7821 (getCurrentListMap!4788 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapNonEmpty!52151 () Bool)

(declare-fun mapRes!52151 () Bool)

(declare-fun tp!99390 () Bool)

(declare-fun e!732040 () Bool)

(assert (=> mapNonEmpty!52151 (= mapRes!52151 (and tp!99390 e!732040))))

(declare-fun mapValue!52151 () ValueCell!15968)

(declare-fun mapKey!52151 () (_ BitVec 32))

(declare-fun mapRest!52151 () (Array (_ BitVec 32) ValueCell!15968))

(assert (=> mapNonEmpty!52151 (= (arr!40745 _values!1445) (store mapRest!52151 mapKey!52151 mapValue!52151))))

(declare-fun b!1281198 () Bool)

(declare-fun e!732038 () Bool)

(assert (=> b!1281198 (= e!732038 tp_is_empty!33733)))

(declare-fun b!1281199 () Bool)

(assert (=> b!1281199 (= e!732036 (and e!732038 mapRes!52151))))

(declare-fun condMapEmpty!52151 () Bool)

(declare-fun mapDefault!52151 () ValueCell!15968)

