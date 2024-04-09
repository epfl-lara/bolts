; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109942 () Bool)

(assert start!109942)

(declare-fun b_free!29231 () Bool)

(declare-fun b_next!29231 () Bool)

(assert (=> start!109942 (= b_free!29231 (not b_next!29231))))

(declare-fun tp!102832 () Bool)

(declare-fun b_and!47377 () Bool)

(assert (=> start!109942 (= tp!102832 b_and!47377)))

(declare-fun b!1301972 () Bool)

(declare-fun res!864977 () Bool)

(declare-fun e!742640 () Bool)

(assert (=> b!1301972 (=> (not res!864977) (not e!742640))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!86713 0))(
  ( (array!86714 (arr!41847 (Array (_ BitVec 32) (_ BitVec 64))) (size!42398 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86713)

(assert (=> b!1301972 (= res!864977 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42398 _keys!1741))))))

(declare-fun b!1301973 () Bool)

(declare-datatypes ((Unit!43049 0))(
  ( (Unit!43050) )
))
(declare-fun e!742637 () Unit!43049)

(declare-fun lt!582349 () Unit!43049)

(assert (=> b!1301973 (= e!742637 lt!582349)))

(declare-datatypes ((V!51597 0))(
  ( (V!51598 (val!17510 Int)) )
))
(declare-datatypes ((tuple2!22744 0))(
  ( (tuple2!22745 (_1!11382 (_ BitVec 64)) (_2!11382 V!51597)) )
))
(declare-datatypes ((List!29897 0))(
  ( (Nil!29894) (Cons!29893 (h!31102 tuple2!22744) (t!43490 List!29897)) )
))
(declare-datatypes ((ListLongMap!20413 0))(
  ( (ListLongMap!20414 (toList!10222 List!29897)) )
))
(declare-fun lt!582347 () ListLongMap!20413)

(declare-fun call!64077 () ListLongMap!20413)

(assert (=> b!1301973 (= lt!582347 call!64077)))

(declare-fun lt!582348 () ListLongMap!20413)

(declare-fun zeroValue!1387 () V!51597)

(declare-fun +!4444 (ListLongMap!20413 tuple2!22744) ListLongMap!20413)

(assert (=> b!1301973 (= lt!582348 (+!4444 lt!582347 (tuple2!22745 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!582344 () Unit!43049)

(declare-fun call!64076 () Unit!43049)

(assert (=> b!1301973 (= lt!582344 call!64076)))

(declare-fun contains!8285 (ListLongMap!20413 (_ BitVec 64)) Bool)

(assert (=> b!1301973 (contains!8285 lt!582348 k!1205)))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!84 ((_ BitVec 64) (_ BitVec 64) V!51597 ListLongMap!20413) Unit!43049)

(assert (=> b!1301973 (= lt!582349 (lemmaInListMapAfterAddingDiffThenInBefore!84 k!1205 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 lt!582347))))

(declare-fun call!64074 () Bool)

(assert (=> b!1301973 call!64074))

(declare-fun b!1301974 () Bool)

(declare-fun res!864971 () Bool)

(assert (=> b!1301974 (=> (not res!864971) (not e!742640))))

(declare-fun minValue!1387 () V!51597)

(declare-datatypes ((ValueCell!16537 0))(
  ( (ValueCellFull!16537 (v!20119 V!51597)) (EmptyCell!16537) )
))
(declare-datatypes ((array!86715 0))(
  ( (array!86716 (arr!41848 (Array (_ BitVec 32) ValueCell!16537)) (size!42399 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86715)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMap!5188 (array!86713 array!86715 (_ BitVec 32) (_ BitVec 32) V!51597 V!51597 (_ BitVec 32) Int) ListLongMap!20413)

(assert (=> b!1301974 (= res!864971 (contains!8285 (getCurrentListMap!5188 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1301975 () Bool)

(declare-fun e!742633 () Bool)

(declare-fun tp_is_empty!34871 () Bool)

(assert (=> b!1301975 (= e!742633 tp_is_empty!34871)))

(declare-fun b!1301976 () Bool)

(declare-fun res!864973 () Bool)

(assert (=> b!1301976 (=> (not res!864973) (not e!742640))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86713 (_ BitVec 32)) Bool)

(assert (=> b!1301976 (= res!864973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1301977 () Bool)

(declare-fun res!864972 () Bool)

(assert (=> b!1301977 (=> (not res!864972) (not e!742640))))

(declare-datatypes ((List!29898 0))(
  ( (Nil!29895) (Cons!29894 (h!31103 (_ BitVec 64)) (t!43491 List!29898)) )
))
(declare-fun arrayNoDuplicates!0 (array!86713 (_ BitVec 32) List!29898) Bool)

(assert (=> b!1301977 (= res!864972 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29895))))

(declare-fun bm!64071 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6157 (array!86713 array!86715 (_ BitVec 32) (_ BitVec 32) V!51597 V!51597 (_ BitVec 32) Int) ListLongMap!20413)

(assert (=> bm!64071 (= call!64077 (getCurrentListMapNoExtraKeys!6157 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1301978 () Bool)

(declare-fun e!742639 () Unit!43049)

(declare-fun Unit!43051 () Unit!43049)

(assert (=> b!1301978 (= e!742639 Unit!43051)))

(declare-fun b!1301979 () Bool)

(declare-fun e!742632 () Bool)

(assert (=> b!1301979 (= e!742632 tp_is_empty!34871)))

(declare-fun b!1301980 () Bool)

(declare-fun e!742636 () Bool)

(declare-fun mapRes!53886 () Bool)

(assert (=> b!1301980 (= e!742636 (and e!742633 mapRes!53886))))

(declare-fun condMapEmpty!53886 () Bool)

(declare-fun mapDefault!53886 () ValueCell!16537)

