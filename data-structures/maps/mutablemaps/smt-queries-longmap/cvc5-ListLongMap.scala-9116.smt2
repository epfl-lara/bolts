; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109516 () Bool)

(assert start!109516)

(declare-fun b_free!28969 () Bool)

(declare-fun b_next!28969 () Bool)

(assert (=> start!109516 (= b_free!28969 (not b_next!28969))))

(declare-fun tp!102027 () Bool)

(declare-fun b_and!47069 () Bool)

(assert (=> start!109516 (= tp!102027 b_and!47069)))

(declare-fun b!1296556 () Bool)

(declare-fun res!861772 () Bool)

(declare-fun e!739715 () Bool)

(assert (=> b!1296556 (=> (not res!861772) (not e!739715))))

(declare-datatypes ((array!86197 0))(
  ( (array!86198 (arr!41595 (Array (_ BitVec 32) (_ BitVec 64))) (size!42146 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86197)

(declare-datatypes ((List!29705 0))(
  ( (Nil!29702) (Cons!29701 (h!30910 (_ BitVec 64)) (t!43276 List!29705)) )
))
(declare-fun arrayNoDuplicates!0 (array!86197 (_ BitVec 32) List!29705) Bool)

(assert (=> b!1296556 (= res!861772 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29702))))

(declare-fun mapNonEmpty!53474 () Bool)

(declare-fun mapRes!53474 () Bool)

(declare-fun tp!102026 () Bool)

(declare-fun e!739716 () Bool)

(assert (=> mapNonEmpty!53474 (= mapRes!53474 (and tp!102026 e!739716))))

(declare-fun mapKey!53474 () (_ BitVec 32))

(declare-datatypes ((V!51249 0))(
  ( (V!51250 (val!17379 Int)) )
))
(declare-datatypes ((ValueCell!16406 0))(
  ( (ValueCellFull!16406 (v!19980 V!51249)) (EmptyCell!16406) )
))
(declare-fun mapValue!53474 () ValueCell!16406)

(declare-datatypes ((array!86199 0))(
  ( (array!86200 (arr!41596 (Array (_ BitVec 32) ValueCell!16406)) (size!42147 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86199)

(declare-fun mapRest!53474 () (Array (_ BitVec 32) ValueCell!16406))

(assert (=> mapNonEmpty!53474 (= (arr!41596 _values!1445) (store mapRest!53474 mapKey!53474 mapValue!53474))))

(declare-fun b!1296557 () Bool)

(assert (=> b!1296557 (= e!739715 false)))

(declare-fun minValue!1387 () V!51249)

(declare-fun zeroValue!1387 () V!51249)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!580444 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22540 0))(
  ( (tuple2!22541 (_1!11280 (_ BitVec 64)) (_2!11280 V!51249)) )
))
(declare-datatypes ((List!29706 0))(
  ( (Nil!29703) (Cons!29702 (h!30911 tuple2!22540) (t!43277 List!29706)) )
))
(declare-datatypes ((ListLongMap!20209 0))(
  ( (ListLongMap!20210 (toList!10120 List!29706)) )
))
(declare-fun contains!8174 (ListLongMap!20209 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5094 (array!86197 array!86199 (_ BitVec 32) (_ BitVec 32) V!51249 V!51249 (_ BitVec 32) Int) ListLongMap!20209)

(assert (=> b!1296557 (= lt!580444 (contains!8174 (getCurrentListMap!5094 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1296558 () Bool)

(declare-fun res!861773 () Bool)

(assert (=> b!1296558 (=> (not res!861773) (not e!739715))))

(assert (=> b!1296558 (= res!861773 (and (= (size!42147 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42146 _keys!1741) (size!42147 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!53474 () Bool)

(assert (=> mapIsEmpty!53474 mapRes!53474))

(declare-fun res!861774 () Bool)

(assert (=> start!109516 (=> (not res!861774) (not e!739715))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109516 (= res!861774 (validMask!0 mask!2175))))

(assert (=> start!109516 e!739715))

(declare-fun tp_is_empty!34609 () Bool)

(assert (=> start!109516 tp_is_empty!34609))

(assert (=> start!109516 true))

(declare-fun e!739714 () Bool)

(declare-fun array_inv!31481 (array!86199) Bool)

(assert (=> start!109516 (and (array_inv!31481 _values!1445) e!739714)))

(declare-fun array_inv!31482 (array!86197) Bool)

(assert (=> start!109516 (array_inv!31482 _keys!1741)))

(assert (=> start!109516 tp!102027))

(declare-fun b!1296559 () Bool)

(declare-fun res!861770 () Bool)

(assert (=> b!1296559 (=> (not res!861770) (not e!739715))))

(assert (=> b!1296559 (= res!861770 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42146 _keys!1741))))))

(declare-fun b!1296560 () Bool)

(declare-fun e!739713 () Bool)

(assert (=> b!1296560 (= e!739713 tp_is_empty!34609)))

(declare-fun b!1296561 () Bool)

(assert (=> b!1296561 (= e!739714 (and e!739713 mapRes!53474))))

(declare-fun condMapEmpty!53474 () Bool)

(declare-fun mapDefault!53474 () ValueCell!16406)

