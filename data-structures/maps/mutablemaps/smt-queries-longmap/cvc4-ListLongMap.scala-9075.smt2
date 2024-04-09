; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109274 () Bool)

(assert start!109274)

(declare-fun b_free!28727 () Bool)

(declare-fun b_next!28727 () Bool)

(assert (=> start!109274 (= b_free!28727 (not b_next!28727))))

(declare-fun tp!101300 () Bool)

(declare-fun b_and!46827 () Bool)

(assert (=> start!109274 (= tp!101300 b_and!46827)))

(declare-fun b!1292218 () Bool)

(declare-fun res!858687 () Bool)

(declare-fun e!737604 () Bool)

(assert (=> b!1292218 (=> (not res!858687) (not e!737604))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!85727 0))(
  ( (array!85728 (arr!41360 (Array (_ BitVec 32) (_ BitVec 64))) (size!41911 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85727)

(assert (=> b!1292218 (= res!858687 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41911 _keys!1741))))))

(declare-fun b!1292219 () Bool)

(declare-fun e!737602 () Bool)

(declare-fun tp_is_empty!34367 () Bool)

(assert (=> b!1292219 (= e!737602 tp_is_empty!34367)))

(declare-fun mapNonEmpty!53111 () Bool)

(declare-fun mapRes!53111 () Bool)

(declare-fun tp!101301 () Bool)

(declare-fun e!737603 () Bool)

(assert (=> mapNonEmpty!53111 (= mapRes!53111 (and tp!101301 e!737603))))

(declare-datatypes ((V!50925 0))(
  ( (V!50926 (val!17258 Int)) )
))
(declare-datatypes ((ValueCell!16285 0))(
  ( (ValueCellFull!16285 (v!19859 V!50925)) (EmptyCell!16285) )
))
(declare-fun mapRest!53111 () (Array (_ BitVec 32) ValueCell!16285))

(declare-fun mapValue!53111 () ValueCell!16285)

(declare-datatypes ((array!85729 0))(
  ( (array!85730 (arr!41361 (Array (_ BitVec 32) ValueCell!16285)) (size!41912 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85729)

(declare-fun mapKey!53111 () (_ BitVec 32))

(assert (=> mapNonEmpty!53111 (= (arr!41361 _values!1445) (store mapRest!53111 mapKey!53111 mapValue!53111))))

(declare-fun res!858684 () Bool)

(assert (=> start!109274 (=> (not res!858684) (not e!737604))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109274 (= res!858684 (validMask!0 mask!2175))))

(assert (=> start!109274 e!737604))

(assert (=> start!109274 tp_is_empty!34367))

(assert (=> start!109274 true))

(declare-fun e!737601 () Bool)

(declare-fun array_inv!31307 (array!85729) Bool)

(assert (=> start!109274 (and (array_inv!31307 _values!1445) e!737601)))

(declare-fun array_inv!31308 (array!85727) Bool)

(assert (=> start!109274 (array_inv!31308 _keys!1741)))

(assert (=> start!109274 tp!101300))

(declare-fun b!1292220 () Bool)

(assert (=> b!1292220 (= e!737603 tp_is_empty!34367)))

(declare-fun b!1292221 () Bool)

(declare-fun res!858683 () Bool)

(assert (=> b!1292221 (=> (not res!858683) (not e!737604))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1292221 (= res!858683 (not (validKeyInArray!0 (select (arr!41360 _keys!1741) from!2144))))))

(declare-fun b!1292222 () Bool)

(declare-fun res!858689 () Bool)

(assert (=> b!1292222 (=> (not res!858689) (not e!737604))))

(declare-datatypes ((List!29523 0))(
  ( (Nil!29520) (Cons!29519 (h!30728 (_ BitVec 64)) (t!43094 List!29523)) )
))
(declare-fun arrayNoDuplicates!0 (array!85727 (_ BitVec 32) List!29523) Bool)

(assert (=> b!1292222 (= res!858689 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29520))))

(declare-fun b!1292223 () Bool)

(declare-fun res!858688 () Bool)

(assert (=> b!1292223 (=> (not res!858688) (not e!737604))))

(assert (=> b!1292223 (= res!858688 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41911 _keys!1741))))))

(declare-fun b!1292224 () Bool)

(declare-fun res!858686 () Bool)

(assert (=> b!1292224 (=> (not res!858686) (not e!737604))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1292224 (= res!858686 (and (= (size!41912 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41911 _keys!1741) (size!41912 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1292225 () Bool)

(assert (=> b!1292225 (= e!737604 (not true))))

(declare-datatypes ((tuple2!22336 0))(
  ( (tuple2!22337 (_1!11178 (_ BitVec 64)) (_2!11178 V!50925)) )
))
(declare-datatypes ((List!29524 0))(
  ( (Nil!29521) (Cons!29520 (h!30729 tuple2!22336) (t!43095 List!29524)) )
))
(declare-datatypes ((ListLongMap!20005 0))(
  ( (ListLongMap!20006 (toList!10018 List!29524)) )
))
(declare-fun contains!8074 (ListLongMap!20005 (_ BitVec 64)) Bool)

(assert (=> b!1292225 (not (contains!8074 (ListLongMap!20006 Nil!29521) k!1205))))

(declare-datatypes ((Unit!42717 0))(
  ( (Unit!42718) )
))
(declare-fun lt!579262 () Unit!42717)

(declare-fun emptyContainsNothing!115 ((_ BitVec 64)) Unit!42717)

(assert (=> b!1292225 (= lt!579262 (emptyContainsNothing!115 k!1205))))

(declare-fun b!1292226 () Bool)

(declare-fun res!858685 () Bool)

(assert (=> b!1292226 (=> (not res!858685) (not e!737604))))

(declare-fun minValue!1387 () V!50925)

(declare-fun zeroValue!1387 () V!50925)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5010 (array!85727 array!85729 (_ BitVec 32) (_ BitVec 32) V!50925 V!50925 (_ BitVec 32) Int) ListLongMap!20005)

(assert (=> b!1292226 (= res!858685 (contains!8074 (getCurrentListMap!5010 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1292227 () Bool)

(declare-fun res!858690 () Bool)

(assert (=> b!1292227 (=> (not res!858690) (not e!737604))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85727 (_ BitVec 32)) Bool)

(assert (=> b!1292227 (= res!858690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!53111 () Bool)

(assert (=> mapIsEmpty!53111 mapRes!53111))

(declare-fun b!1292228 () Bool)

(assert (=> b!1292228 (= e!737601 (and e!737602 mapRes!53111))))

(declare-fun condMapEmpty!53111 () Bool)

(declare-fun mapDefault!53111 () ValueCell!16285)

