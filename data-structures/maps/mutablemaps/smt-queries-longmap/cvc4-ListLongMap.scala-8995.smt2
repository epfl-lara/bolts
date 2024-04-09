; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108770 () Bool)

(assert start!108770)

(declare-fun b_free!28247 () Bool)

(declare-fun b_next!28247 () Bool)

(assert (=> start!108770 (= b_free!28247 (not b_next!28247))))

(declare-fun tp!99858 () Bool)

(declare-fun b_and!46323 () Bool)

(assert (=> start!108770 (= tp!99858 b_and!46323)))

(declare-fun b!1283786 () Bool)

(declare-fun res!852905 () Bool)

(declare-fun e!733390 () Bool)

(assert (=> b!1283786 (=> (not res!852905) (not e!733390))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84791 0))(
  ( (array!84792 (arr!40893 (Array (_ BitVec 32) (_ BitVec 64))) (size!41444 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84791)

(assert (=> b!1283786 (= res!852905 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41444 _keys!1741))))))

(declare-fun b!1283787 () Bool)

(declare-fun res!852902 () Bool)

(assert (=> b!1283787 (=> (not res!852902) (not e!733390))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1283787 (= res!852902 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41444 _keys!1741))))))

(declare-fun b!1283788 () Bool)

(declare-fun e!733388 () Bool)

(declare-fun tp_is_empty!33887 () Bool)

(assert (=> b!1283788 (= e!733388 tp_is_empty!33887)))

(declare-fun b!1283789 () Bool)

(declare-fun res!852906 () Bool)

(assert (=> b!1283789 (=> (not res!852906) (not e!733390))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1283789 (= res!852906 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1283790 () Bool)

(declare-fun res!852904 () Bool)

(assert (=> b!1283790 (=> (not res!852904) (not e!733390))))

(declare-datatypes ((V!50285 0))(
  ( (V!50286 (val!17018 Int)) )
))
(declare-fun minValue!1387 () V!50285)

(declare-fun zeroValue!1387 () V!50285)

(declare-datatypes ((ValueCell!16045 0))(
  ( (ValueCellFull!16045 (v!19618 V!50285)) (EmptyCell!16045) )
))
(declare-datatypes ((array!84793 0))(
  ( (array!84794 (arr!40894 (Array (_ BitVec 32) ValueCell!16045)) (size!41445 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84793)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21940 0))(
  ( (tuple2!21941 (_1!10980 (_ BitVec 64)) (_2!10980 V!50285)) )
))
(declare-datatypes ((List!29148 0))(
  ( (Nil!29145) (Cons!29144 (h!30353 tuple2!21940) (t!42699 List!29148)) )
))
(declare-datatypes ((ListLongMap!19609 0))(
  ( (ListLongMap!19610 (toList!9820 List!29148)) )
))
(declare-fun contains!7875 (ListLongMap!19609 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4838 (array!84791 array!84793 (_ BitVec 32) (_ BitVec 32) V!50285 V!50285 (_ BitVec 32) Int) ListLongMap!19609)

(assert (=> b!1283790 (= res!852904 (contains!7875 (getCurrentListMap!4838 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1283791 () Bool)

(assert (=> b!1283791 (= e!733390 (not true))))

(declare-fun lt!576665 () ListLongMap!19609)

(assert (=> b!1283791 (contains!7875 lt!576665 k!1205)))

(declare-datatypes ((Unit!42429 0))(
  ( (Unit!42430) )
))
(declare-fun lt!576666 () Unit!42429)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!16 ((_ BitVec 64) (_ BitVec 64) V!50285 ListLongMap!19609) Unit!42429)

(assert (=> b!1283791 (= lt!576666 (lemmaInListMapAfterAddingDiffThenInBefore!16 k!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576665))))

(declare-fun +!4267 (ListLongMap!19609 tuple2!21940) ListLongMap!19609)

(declare-fun getCurrentListMapNoExtraKeys!5978 (array!84791 array!84793 (_ BitVec 32) (_ BitVec 32) V!50285 V!50285 (_ BitVec 32) Int) ListLongMap!19609)

(assert (=> b!1283791 (= lt!576665 (+!4267 (getCurrentListMapNoExtraKeys!5978 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21941 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun mapNonEmpty!52388 () Bool)

(declare-fun mapRes!52388 () Bool)

(declare-fun tp!99857 () Bool)

(declare-fun e!733389 () Bool)

(assert (=> mapNonEmpty!52388 (= mapRes!52388 (and tp!99857 e!733389))))

(declare-fun mapKey!52388 () (_ BitVec 32))

(declare-fun mapValue!52388 () ValueCell!16045)

(declare-fun mapRest!52388 () (Array (_ BitVec 32) ValueCell!16045))

(assert (=> mapNonEmpty!52388 (= (arr!40894 _values!1445) (store mapRest!52388 mapKey!52388 mapValue!52388))))

(declare-fun b!1283792 () Bool)

(assert (=> b!1283792 (= e!733389 tp_is_empty!33887)))

(declare-fun b!1283793 () Bool)

(declare-fun res!852907 () Bool)

(assert (=> b!1283793 (=> (not res!852907) (not e!733390))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283793 (= res!852907 (validKeyInArray!0 (select (arr!40893 _keys!1741) from!2144)))))

(declare-fun b!1283794 () Bool)

(declare-fun e!733386 () Bool)

(assert (=> b!1283794 (= e!733386 (and e!733388 mapRes!52388))))

(declare-fun condMapEmpty!52388 () Bool)

(declare-fun mapDefault!52388 () ValueCell!16045)

