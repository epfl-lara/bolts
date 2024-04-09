; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1018 () Bool)

(assert start!1018)

(declare-fun b_free!347 () Bool)

(declare-fun b_next!347 () Bool)

(assert (=> start!1018 (= b_free!347 (not b_next!347))))

(declare-fun tp!1280 () Bool)

(declare-fun b_and!499 () Bool)

(assert (=> start!1018 (= tp!1280 b_and!499)))

(declare-fun mapNonEmpty!617 () Bool)

(declare-fun mapRes!617 () Bool)

(declare-fun tp!1279 () Bool)

(declare-fun e!4994 () Bool)

(assert (=> mapNonEmpty!617 (= mapRes!617 (and tp!1279 e!4994))))

(declare-datatypes ((V!743 0))(
  ( (V!744 (val!218 Int)) )
))
(declare-datatypes ((ValueCell!196 0))(
  ( (ValueCellFull!196 (v!1312 V!743)) (EmptyCell!196) )
))
(declare-datatypes ((array!775 0))(
  ( (array!776 (arr!373 (Array (_ BitVec 32) ValueCell!196)) (size!435 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!775)

(declare-fun mapValue!617 () ValueCell!196)

(declare-fun mapKey!617 () (_ BitVec 32))

(declare-fun mapRest!617 () (Array (_ BitVec 32) ValueCell!196))

(assert (=> mapNonEmpty!617 (= (arr!373 _values!1492) (store mapRest!617 mapKey!617 mapValue!617))))

(declare-fun b!8763 () Bool)

(declare-fun e!4996 () Bool)

(declare-fun e!4995 () Bool)

(assert (=> b!8763 (= e!4996 (not e!4995))))

(declare-fun res!8131 () Bool)

(assert (=> b!8763 (=> res!8131 e!4995)))

(declare-datatypes ((array!777 0))(
  ( (array!778 (arr!374 (Array (_ BitVec 32) (_ BitVec 64))) (size!436 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!777)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!777 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!8763 (= res!8131 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(declare-fun e!4997 () Bool)

(assert (=> b!8763 e!4997))

(declare-fun c!668 () Bool)

(assert (=> b!8763 (= c!668 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun minValue!1434 () V!743)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!743)

(declare-datatypes ((Unit!167 0))(
  ( (Unit!168) )
))
(declare-fun lt!1890 () Unit!167)

(declare-fun lemmaKeyInListMapIsInArray!62 (array!777 array!775 (_ BitVec 32) (_ BitVec 32) V!743 V!743 (_ BitVec 64) Int) Unit!167)

(assert (=> b!8763 (= lt!1890 (lemmaKeyInListMapIsInArray!62 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!8764 () Bool)

(declare-fun tp_is_empty!425 () Bool)

(assert (=> b!8764 (= e!4994 tp_is_empty!425)))

(declare-fun b!8765 () Bool)

(declare-fun res!8128 () Bool)

(assert (=> b!8765 (=> (not res!8128) (not e!4996))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!777 (_ BitVec 32)) Bool)

(assert (=> b!8765 (= res!8128 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!8766 () Bool)

(declare-fun res!8126 () Bool)

(assert (=> b!8766 (=> (not res!8126) (not e!4996))))

(assert (=> b!8766 (= res!8126 (and (= (size!435 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!436 _keys!1806) (size!435 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!8767 () Bool)

(assert (=> b!8767 (= e!4997 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!8768 () Bool)

(declare-fun res!8129 () Bool)

(assert (=> b!8768 (=> (not res!8129) (not e!4996))))

(declare-datatypes ((tuple2!230 0))(
  ( (tuple2!231 (_1!115 (_ BitVec 64)) (_2!115 V!743)) )
))
(declare-datatypes ((List!254 0))(
  ( (Nil!251) (Cons!250 (h!816 tuple2!230) (t!2395 List!254)) )
))
(declare-datatypes ((ListLongMap!235 0))(
  ( (ListLongMap!236 (toList!133 List!254)) )
))
(declare-fun contains!110 (ListLongMap!235 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!92 (array!777 array!775 (_ BitVec 32) (_ BitVec 32) V!743 V!743 (_ BitVec 32) Int) ListLongMap!235)

(assert (=> b!8768 (= res!8129 (contains!110 (getCurrentListMap!92 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!8770 () Bool)

(declare-fun e!5000 () Bool)

(assert (=> b!8770 (= e!5000 tp_is_empty!425)))

(declare-fun mapIsEmpty!617 () Bool)

(assert (=> mapIsEmpty!617 mapRes!617))

(declare-fun b!8771 () Bool)

(declare-fun res!8130 () Bool)

(assert (=> b!8771 (=> (not res!8130) (not e!4996))))

(declare-datatypes ((List!255 0))(
  ( (Nil!252) (Cons!251 (h!817 (_ BitVec 64)) (t!2396 List!255)) )
))
(declare-fun arrayNoDuplicates!0 (array!777 (_ BitVec 32) List!255) Bool)

(assert (=> b!8771 (= res!8130 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!252))))

(declare-fun b!8772 () Bool)

(assert (=> b!8772 (= e!4995 true)))

(declare-fun lt!1889 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!777 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!8772 (= lt!1889 (arrayScanForKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!8773 () Bool)

(declare-fun e!4999 () Bool)

(assert (=> b!8773 (= e!4999 (and e!5000 mapRes!617))))

(declare-fun condMapEmpty!617 () Bool)

(declare-fun mapDefault!617 () ValueCell!196)

