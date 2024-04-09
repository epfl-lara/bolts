; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109540 () Bool)

(assert start!109540)

(declare-fun b_free!28993 () Bool)

(declare-fun b_next!28993 () Bool)

(assert (=> start!109540 (= b_free!28993 (not b_next!28993))))

(declare-fun tp!102099 () Bool)

(declare-fun b_and!47093 () Bool)

(assert (=> start!109540 (= tp!102099 b_and!47093)))

(declare-fun b!1296853 () Bool)

(declare-fun res!861959 () Bool)

(declare-fun e!739894 () Bool)

(assert (=> b!1296853 (=> (not res!861959) (not e!739894))))

(declare-datatypes ((array!86245 0))(
  ( (array!86246 (arr!41619 (Array (_ BitVec 32) (_ BitVec 64))) (size!42170 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86245)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86245 (_ BitVec 32)) Bool)

(assert (=> b!1296853 (= res!861959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1296854 () Bool)

(declare-fun res!861960 () Bool)

(assert (=> b!1296854 (=> (not res!861960) (not e!739894))))

(declare-datatypes ((List!29724 0))(
  ( (Nil!29721) (Cons!29720 (h!30929 (_ BitVec 64)) (t!43295 List!29724)) )
))
(declare-fun arrayNoDuplicates!0 (array!86245 (_ BitVec 32) List!29724) Bool)

(assert (=> b!1296854 (= res!861960 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29721))))

(declare-fun b!1296855 () Bool)

(declare-fun res!861962 () Bool)

(assert (=> b!1296855 (=> (not res!861962) (not e!739894))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1296855 (= res!861962 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42170 _keys!1741))))))

(declare-fun mapIsEmpty!53510 () Bool)

(declare-fun mapRes!53510 () Bool)

(assert (=> mapIsEmpty!53510 mapRes!53510))

(declare-fun res!861963 () Bool)

(assert (=> start!109540 (=> (not res!861963) (not e!739894))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109540 (= res!861963 (validMask!0 mask!2175))))

(assert (=> start!109540 e!739894))

(declare-fun tp_is_empty!34633 () Bool)

(assert (=> start!109540 tp_is_empty!34633))

(assert (=> start!109540 true))

(declare-datatypes ((V!51281 0))(
  ( (V!51282 (val!17391 Int)) )
))
(declare-datatypes ((ValueCell!16418 0))(
  ( (ValueCellFull!16418 (v!19992 V!51281)) (EmptyCell!16418) )
))
(declare-datatypes ((array!86247 0))(
  ( (array!86248 (arr!41620 (Array (_ BitVec 32) ValueCell!16418)) (size!42171 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86247)

(declare-fun e!739897 () Bool)

(declare-fun array_inv!31501 (array!86247) Bool)

(assert (=> start!109540 (and (array_inv!31501 _values!1445) e!739897)))

(declare-fun array_inv!31502 (array!86245) Bool)

(assert (=> start!109540 (array_inv!31502 _keys!1741)))

(assert (=> start!109540 tp!102099))

(declare-fun b!1296856 () Bool)

(declare-fun e!739896 () Bool)

(assert (=> b!1296856 (= e!739896 tp_is_empty!34633)))

(declare-fun b!1296857 () Bool)

(assert (=> b!1296857 (= e!739894 false)))

(declare-fun minValue!1387 () V!51281)

(declare-fun zeroValue!1387 () V!51281)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun lt!580471 () Bool)

(declare-datatypes ((tuple2!22560 0))(
  ( (tuple2!22561 (_1!11290 (_ BitVec 64)) (_2!11290 V!51281)) )
))
(declare-datatypes ((List!29725 0))(
  ( (Nil!29722) (Cons!29721 (h!30930 tuple2!22560) (t!43296 List!29725)) )
))
(declare-datatypes ((ListLongMap!20229 0))(
  ( (ListLongMap!20230 (toList!10130 List!29725)) )
))
(declare-fun contains!8184 (ListLongMap!20229 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5104 (array!86245 array!86247 (_ BitVec 32) (_ BitVec 32) V!51281 V!51281 (_ BitVec 32) Int) ListLongMap!20229)

(assert (=> b!1296857 (= lt!580471 (contains!8184 (getCurrentListMap!5104 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1296858 () Bool)

(assert (=> b!1296858 (= e!739897 (and e!739896 mapRes!53510))))

(declare-fun condMapEmpty!53510 () Bool)

(declare-fun mapDefault!53510 () ValueCell!16418)

