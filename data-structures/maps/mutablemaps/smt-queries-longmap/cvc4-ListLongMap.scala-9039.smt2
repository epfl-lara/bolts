; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109058 () Bool)

(assert start!109058)

(declare-fun b_free!28511 () Bool)

(declare-fun b_next!28511 () Bool)

(assert (=> start!109058 (= b_free!28511 (not b_next!28511))))

(declare-fun tp!100653 () Bool)

(declare-fun b_and!46611 () Bool)

(assert (=> start!109058 (= tp!100653 b_and!46611)))

(declare-fun b!1288383 () Bool)

(declare-fun e!735710 () Bool)

(declare-fun e!735712 () Bool)

(assert (=> b!1288383 (= e!735710 (not e!735712))))

(declare-fun res!855820 () Bool)

(assert (=> b!1288383 (=> res!855820 e!735712)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1288383 (= res!855820 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!50637 0))(
  ( (V!50638 (val!17150 Int)) )
))
(declare-datatypes ((tuple2!22152 0))(
  ( (tuple2!22153 (_1!11086 (_ BitVec 64)) (_2!11086 V!50637)) )
))
(declare-datatypes ((List!29349 0))(
  ( (Nil!29346) (Cons!29345 (h!30554 tuple2!22152) (t!42920 List!29349)) )
))
(declare-datatypes ((ListLongMap!19821 0))(
  ( (ListLongMap!19822 (toList!9926 List!29349)) )
))
(declare-fun contains!7982 (ListLongMap!19821 (_ BitVec 64)) Bool)

(assert (=> b!1288383 (not (contains!7982 (ListLongMap!19822 Nil!29346) k!1205))))

(declare-datatypes ((Unit!42547 0))(
  ( (Unit!42548) )
))
(declare-fun lt!577937 () Unit!42547)

(declare-fun emptyContainsNothing!40 ((_ BitVec 64)) Unit!42547)

(assert (=> b!1288383 (= lt!577937 (emptyContainsNothing!40 k!1205))))

(declare-fun b!1288385 () Bool)

(declare-fun res!855824 () Bool)

(assert (=> b!1288385 (=> (not res!855824) (not e!735710))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85303 0))(
  ( (array!85304 (arr!41148 (Array (_ BitVec 32) (_ BitVec 64))) (size!41699 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85303)

(assert (=> b!1288385 (= res!855824 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41699 _keys!1741))))))

(declare-fun mapNonEmpty!52787 () Bool)

(declare-fun mapRes!52787 () Bool)

(declare-fun tp!100652 () Bool)

(declare-fun e!735714 () Bool)

(assert (=> mapNonEmpty!52787 (= mapRes!52787 (and tp!100652 e!735714))))

(declare-datatypes ((ValueCell!16177 0))(
  ( (ValueCellFull!16177 (v!19751 V!50637)) (EmptyCell!16177) )
))
(declare-fun mapRest!52787 () (Array (_ BitVec 32) ValueCell!16177))

(declare-fun mapValue!52787 () ValueCell!16177)

(declare-fun mapKey!52787 () (_ BitVec 32))

(declare-datatypes ((array!85305 0))(
  ( (array!85306 (arr!41149 (Array (_ BitVec 32) ValueCell!16177)) (size!41700 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85305)

(assert (=> mapNonEmpty!52787 (= (arr!41149 _values!1445) (store mapRest!52787 mapKey!52787 mapValue!52787))))

(declare-fun b!1288386 () Bool)

(declare-fun e!735713 () Bool)

(declare-fun tp_is_empty!34151 () Bool)

(assert (=> b!1288386 (= e!735713 tp_is_empty!34151)))

(declare-fun b!1288387 () Bool)

(declare-fun res!855826 () Bool)

(assert (=> b!1288387 (=> (not res!855826) (not e!735710))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1288387 (= res!855826 (not (validKeyInArray!0 (select (arr!41148 _keys!1741) from!2144))))))

(declare-fun b!1288388 () Bool)

(assert (=> b!1288388 (= e!735712 true)))

(declare-fun lt!577939 () ListLongMap!19821)

(declare-fun zeroValue!1387 () V!50637)

(declare-fun +!4301 (ListLongMap!19821 tuple2!22152) ListLongMap!19821)

(assert (=> b!1288388 (not (contains!7982 (+!4301 lt!577939 (tuple2!22153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k!1205))))

(declare-fun lt!577938 () Unit!42547)

(declare-fun addStillNotContains!346 (ListLongMap!19821 (_ BitVec 64) V!50637 (_ BitVec 64)) Unit!42547)

(assert (=> b!1288388 (= lt!577938 (addStillNotContains!346 lt!577939 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun minValue!1387 () V!50637)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6013 (array!85303 array!85305 (_ BitVec 32) (_ BitVec 32) V!50637 V!50637 (_ BitVec 32) Int) ListLongMap!19821)

(assert (=> b!1288388 (= lt!577939 (getCurrentListMapNoExtraKeys!6013 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun mapIsEmpty!52787 () Bool)

(assert (=> mapIsEmpty!52787 mapRes!52787))

(declare-fun b!1288389 () Bool)

(assert (=> b!1288389 (= e!735714 tp_is_empty!34151)))

(declare-fun b!1288390 () Bool)

(declare-fun res!855827 () Bool)

(assert (=> b!1288390 (=> (not res!855827) (not e!735710))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85303 (_ BitVec 32)) Bool)

(assert (=> b!1288390 (= res!855827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1288391 () Bool)

(declare-fun res!855825 () Bool)

(assert (=> b!1288391 (=> (not res!855825) (not e!735710))))

(assert (=> b!1288391 (= res!855825 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41699 _keys!1741))))))

(declare-fun b!1288392 () Bool)

(declare-fun res!855823 () Bool)

(assert (=> b!1288392 (=> (not res!855823) (not e!735710))))

(declare-fun getCurrentListMap!4929 (array!85303 array!85305 (_ BitVec 32) (_ BitVec 32) V!50637 V!50637 (_ BitVec 32) Int) ListLongMap!19821)

(assert (=> b!1288392 (= res!855823 (contains!7982 (getCurrentListMap!4929 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1288384 () Bool)

(declare-fun res!855822 () Bool)

(assert (=> b!1288384 (=> (not res!855822) (not e!735710))))

(declare-datatypes ((List!29350 0))(
  ( (Nil!29347) (Cons!29346 (h!30555 (_ BitVec 64)) (t!42921 List!29350)) )
))
(declare-fun arrayNoDuplicates!0 (array!85303 (_ BitVec 32) List!29350) Bool)

(assert (=> b!1288384 (= res!855822 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29347))))

(declare-fun res!855828 () Bool)

(assert (=> start!109058 (=> (not res!855828) (not e!735710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109058 (= res!855828 (validMask!0 mask!2175))))

(assert (=> start!109058 e!735710))

(assert (=> start!109058 tp_is_empty!34151))

(assert (=> start!109058 true))

(declare-fun e!735715 () Bool)

(declare-fun array_inv!31173 (array!85305) Bool)

(assert (=> start!109058 (and (array_inv!31173 _values!1445) e!735715)))

(declare-fun array_inv!31174 (array!85303) Bool)

(assert (=> start!109058 (array_inv!31174 _keys!1741)))

(assert (=> start!109058 tp!100653))

(declare-fun b!1288393 () Bool)

(declare-fun res!855821 () Bool)

(assert (=> b!1288393 (=> (not res!855821) (not e!735710))))

(assert (=> b!1288393 (= res!855821 (and (= (size!41700 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41699 _keys!1741) (size!41700 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1288394 () Bool)

(assert (=> b!1288394 (= e!735715 (and e!735713 mapRes!52787))))

(declare-fun condMapEmpty!52787 () Bool)

(declare-fun mapDefault!52787 () ValueCell!16177)

