; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109288 () Bool)

(assert start!109288)

(declare-fun b_free!28741 () Bool)

(declare-fun b_next!28741 () Bool)

(assert (=> start!109288 (= b_free!28741 (not b_next!28741))))

(declare-fun tp!101343 () Bool)

(declare-fun b_and!46841 () Bool)

(assert (=> start!109288 (= tp!101343 b_and!46841)))

(declare-fun res!858856 () Bool)

(declare-fun e!737706 () Bool)

(assert (=> start!109288 (=> (not res!858856) (not e!737706))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109288 (= res!858856 (validMask!0 mask!2175))))

(assert (=> start!109288 e!737706))

(declare-fun tp_is_empty!34381 () Bool)

(assert (=> start!109288 tp_is_empty!34381))

(assert (=> start!109288 true))

(declare-datatypes ((V!50945 0))(
  ( (V!50946 (val!17265 Int)) )
))
(declare-datatypes ((ValueCell!16292 0))(
  ( (ValueCellFull!16292 (v!19866 V!50945)) (EmptyCell!16292) )
))
(declare-datatypes ((array!85753 0))(
  ( (array!85754 (arr!41373 (Array (_ BitVec 32) ValueCell!16292)) (size!41924 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85753)

(declare-fun e!737708 () Bool)

(declare-fun array_inv!31319 (array!85753) Bool)

(assert (=> start!109288 (and (array_inv!31319 _values!1445) e!737708)))

(declare-datatypes ((array!85755 0))(
  ( (array!85756 (arr!41374 (Array (_ BitVec 32) (_ BitVec 64))) (size!41925 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85755)

(declare-fun array_inv!31320 (array!85755) Bool)

(assert (=> start!109288 (array_inv!31320 _keys!1741)))

(assert (=> start!109288 tp!101343))

(declare-fun b!1292449 () Bool)

(declare-fun e!737707 () Bool)

(assert (=> b!1292449 (= e!737707 tp_is_empty!34381)))

(declare-fun b!1292450 () Bool)

(declare-fun res!858854 () Bool)

(assert (=> b!1292450 (=> (not res!858854) (not e!737706))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1292450 (= res!858854 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41925 _keys!1741))))))

(declare-fun b!1292451 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1292451 (= e!737706 (not (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsle from!2144 (size!41925 _keys!1741)))))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22348 0))(
  ( (tuple2!22349 (_1!11184 (_ BitVec 64)) (_2!11184 V!50945)) )
))
(declare-datatypes ((List!29535 0))(
  ( (Nil!29532) (Cons!29531 (h!30740 tuple2!22348) (t!43106 List!29535)) )
))
(declare-datatypes ((ListLongMap!20017 0))(
  ( (ListLongMap!20018 (toList!10024 List!29535)) )
))
(declare-fun contains!8080 (ListLongMap!20017 (_ BitVec 64)) Bool)

(assert (=> b!1292451 (not (contains!8080 (ListLongMap!20018 Nil!29532) k!1205))))

(declare-datatypes ((Unit!42729 0))(
  ( (Unit!42730) )
))
(declare-fun lt!579283 () Unit!42729)

(declare-fun emptyContainsNothing!121 ((_ BitVec 64)) Unit!42729)

(assert (=> b!1292451 (= lt!579283 (emptyContainsNothing!121 k!1205))))

(declare-fun b!1292452 () Bool)

(declare-fun res!858853 () Bool)

(assert (=> b!1292452 (=> (not res!858853) (not e!737706))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85755 (_ BitVec 32)) Bool)

(assert (=> b!1292452 (= res!858853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1292453 () Bool)

(declare-fun mapRes!53132 () Bool)

(assert (=> b!1292453 (= e!737708 (and e!737707 mapRes!53132))))

(declare-fun condMapEmpty!53132 () Bool)

(declare-fun mapDefault!53132 () ValueCell!16292)

