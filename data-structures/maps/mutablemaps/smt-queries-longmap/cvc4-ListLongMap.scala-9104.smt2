; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109448 () Bool)

(assert start!109448)

(declare-fun b_free!28901 () Bool)

(declare-fun b_next!28901 () Bool)

(assert (=> start!109448 (= b_free!28901 (not b_next!28901))))

(declare-fun tp!101822 () Bool)

(declare-fun b_and!47001 () Bool)

(assert (=> start!109448 (= tp!101822 b_and!47001)))

(declare-fun b!1295241 () Bool)

(declare-fun res!860930 () Bool)

(declare-fun e!739059 () Bool)

(assert (=> b!1295241 (=> (not res!860930) (not e!739059))))

(declare-datatypes ((array!86065 0))(
  ( (array!86066 (arr!41529 (Array (_ BitVec 32) (_ BitVec 64))) (size!42080 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86065)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86065 (_ BitVec 32)) Bool)

(assert (=> b!1295241 (= res!860930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1295242 () Bool)

(declare-fun e!739061 () Bool)

(declare-fun tp_is_empty!34541 () Bool)

(assert (=> b!1295242 (= e!739061 tp_is_empty!34541)))

(declare-fun b!1295243 () Bool)

(declare-fun res!860931 () Bool)

(assert (=> b!1295243 (=> (not res!860931) (not e!739059))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295243 (= res!860931 (not (validKeyInArray!0 (select (arr!41529 _keys!1741) from!2144))))))

(declare-fun b!1295244 () Bool)

(declare-fun res!860923 () Bool)

(assert (=> b!1295244 (=> (not res!860923) (not e!739059))))

(assert (=> b!1295244 (= res!860923 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42080 _keys!1741))))))

(declare-fun b!1295245 () Bool)

(declare-fun res!860926 () Bool)

(assert (=> b!1295245 (=> (not res!860926) (not e!739059))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1295245 (= res!860926 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42080 _keys!1741))))))

(declare-fun mapIsEmpty!53372 () Bool)

(declare-fun mapRes!53372 () Bool)

(assert (=> mapIsEmpty!53372 mapRes!53372))

(declare-fun b!1295246 () Bool)

(declare-fun e!739062 () Bool)

(assert (=> b!1295246 (= e!739062 tp_is_empty!34541)))

(declare-fun b!1295247 () Bool)

(declare-fun e!739063 () Bool)

(assert (=> b!1295247 (= e!739059 (not e!739063))))

(declare-fun res!860925 () Bool)

(assert (=> b!1295247 (=> res!860925 e!739063)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1295247 (= res!860925 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!51157 0))(
  ( (V!51158 (val!17345 Int)) )
))
(declare-datatypes ((tuple2!22484 0))(
  ( (tuple2!22485 (_1!11252 (_ BitVec 64)) (_2!11252 V!51157)) )
))
(declare-datatypes ((List!29652 0))(
  ( (Nil!29649) (Cons!29648 (h!30857 tuple2!22484) (t!43223 List!29652)) )
))
(declare-datatypes ((ListLongMap!20153 0))(
  ( (ListLongMap!20154 (toList!10092 List!29652)) )
))
(declare-fun contains!8148 (ListLongMap!20153 (_ BitVec 64)) Bool)

(assert (=> b!1295247 (not (contains!8148 (ListLongMap!20154 Nil!29649) k!1205))))

(declare-datatypes ((Unit!42851 0))(
  ( (Unit!42852) )
))
(declare-fun lt!579809 () Unit!42851)

(declare-fun emptyContainsNothing!181 ((_ BitVec 64)) Unit!42851)

(assert (=> b!1295247 (= lt!579809 (emptyContainsNothing!181 k!1205))))

(declare-fun b!1295248 () Bool)

(declare-fun res!860929 () Bool)

(assert (=> b!1295248 (=> (not res!860929) (not e!739059))))

(declare-datatypes ((ValueCell!16372 0))(
  ( (ValueCellFull!16372 (v!19946 V!51157)) (EmptyCell!16372) )
))
(declare-datatypes ((array!86067 0))(
  ( (array!86068 (arr!41530 (Array (_ BitVec 32) ValueCell!16372)) (size!42081 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86067)

(assert (=> b!1295248 (= res!860929 (and (= (size!42081 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42080 _keys!1741) (size!42081 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53372 () Bool)

(declare-fun tp!101823 () Bool)

(assert (=> mapNonEmpty!53372 (= mapRes!53372 (and tp!101823 e!739061))))

(declare-fun mapRest!53372 () (Array (_ BitVec 32) ValueCell!16372))

(declare-fun mapValue!53372 () ValueCell!16372)

(declare-fun mapKey!53372 () (_ BitVec 32))

(assert (=> mapNonEmpty!53372 (= (arr!41530 _values!1445) (store mapRest!53372 mapKey!53372 mapValue!53372))))

(declare-fun res!860924 () Bool)

(assert (=> start!109448 (=> (not res!860924) (not e!739059))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109448 (= res!860924 (validMask!0 mask!2175))))

(assert (=> start!109448 e!739059))

(assert (=> start!109448 tp_is_empty!34541))

(assert (=> start!109448 true))

(declare-fun e!739058 () Bool)

(declare-fun array_inv!31427 (array!86067) Bool)

(assert (=> start!109448 (and (array_inv!31427 _values!1445) e!739058)))

(declare-fun array_inv!31428 (array!86065) Bool)

(assert (=> start!109448 (array_inv!31428 _keys!1741)))

(assert (=> start!109448 tp!101822))

(declare-fun b!1295249 () Bool)

(declare-fun res!860927 () Bool)

(assert (=> b!1295249 (=> (not res!860927) (not e!739059))))

(declare-datatypes ((List!29653 0))(
  ( (Nil!29650) (Cons!29649 (h!30858 (_ BitVec 64)) (t!43224 List!29653)) )
))
(declare-fun arrayNoDuplicates!0 (array!86065 (_ BitVec 32) List!29653) Bool)

(assert (=> b!1295249 (= res!860927 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29650))))

(declare-fun b!1295250 () Bool)

(assert (=> b!1295250 (= e!739058 (and e!739062 mapRes!53372))))

(declare-fun condMapEmpty!53372 () Bool)

(declare-fun mapDefault!53372 () ValueCell!16372)

