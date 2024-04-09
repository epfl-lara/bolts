; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108442 () Bool)

(assert start!108442)

(declare-fun b_free!27953 () Bool)

(declare-fun b_next!27953 () Bool)

(assert (=> start!108442 (= b_free!27953 (not b_next!27953))))

(declare-fun tp!98969 () Bool)

(declare-fun b_and!46023 () Bool)

(assert (=> start!108442 (= tp!98969 b_and!46023)))

(declare-fun b!1279342 () Bool)

(declare-fun e!730987 () Bool)

(assert (=> b!1279342 (= e!730987 false)))

(declare-datatypes ((V!49893 0))(
  ( (V!49894 (val!16871 Int)) )
))
(declare-fun minValue!1387 () V!49893)

(declare-fun zeroValue!1387 () V!49893)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15898 0))(
  ( (ValueCellFull!15898 (v!19469 V!49893)) (EmptyCell!15898) )
))
(declare-datatypes ((array!84221 0))(
  ( (array!84222 (arr!40610 (Array (_ BitVec 32) ValueCell!15898)) (size!41161 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84221)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun lt!575947 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84223 0))(
  ( (array!84224 (arr!40611 (Array (_ BitVec 32) (_ BitVec 64))) (size!41162 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84223)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21734 0))(
  ( (tuple2!21735 (_1!10877 (_ BitVec 64)) (_2!10877 V!49893)) )
))
(declare-datatypes ((List!28945 0))(
  ( (Nil!28942) (Cons!28941 (h!30150 tuple2!21734) (t!42492 List!28945)) )
))
(declare-datatypes ((ListLongMap!19403 0))(
  ( (ListLongMap!19404 (toList!9717 List!28945)) )
))
(declare-fun contains!7770 (ListLongMap!19403 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4737 (array!84223 array!84221 (_ BitVec 32) (_ BitVec 32) V!49893 V!49893 (_ BitVec 32) Int) ListLongMap!19403)

(assert (=> b!1279342 (= lt!575947 (contains!7770 (getCurrentListMap!4737 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapNonEmpty!51941 () Bool)

(declare-fun mapRes!51941 () Bool)

(declare-fun tp!98970 () Bool)

(declare-fun e!730988 () Bool)

(assert (=> mapNonEmpty!51941 (= mapRes!51941 (and tp!98970 e!730988))))

(declare-fun mapValue!51941 () ValueCell!15898)

(declare-fun mapRest!51941 () (Array (_ BitVec 32) ValueCell!15898))

(declare-fun mapKey!51941 () (_ BitVec 32))

(assert (=> mapNonEmpty!51941 (= (arr!40610 _values!1445) (store mapRest!51941 mapKey!51941 mapValue!51941))))

(declare-fun b!1279343 () Bool)

(declare-fun e!730986 () Bool)

(declare-fun tp_is_empty!33593 () Bool)

(assert (=> b!1279343 (= e!730986 tp_is_empty!33593)))

(declare-fun b!1279344 () Bool)

(declare-fun res!849929 () Bool)

(assert (=> b!1279344 (=> (not res!849929) (not e!730987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84223 (_ BitVec 32)) Bool)

(assert (=> b!1279344 (= res!849929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1279345 () Bool)

(declare-fun e!730990 () Bool)

(assert (=> b!1279345 (= e!730990 (and e!730986 mapRes!51941))))

(declare-fun condMapEmpty!51941 () Bool)

(declare-fun mapDefault!51941 () ValueCell!15898)

