; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!780 () Bool)

(assert start!780)

(declare-fun b_free!173 () Bool)

(declare-fun b_next!173 () Bool)

(assert (=> start!780 (= b_free!173 (not b_next!173))))

(declare-fun tp!748 () Bool)

(declare-fun b_and!319 () Bool)

(assert (=> start!780 (= tp!748 b_and!319)))

(declare-fun mapIsEmpty!347 () Bool)

(declare-fun mapRes!347 () Bool)

(assert (=> mapIsEmpty!347 mapRes!347))

(declare-fun b!5581 () Bool)

(declare-fun res!6311 () Bool)

(declare-fun e!3028 () Bool)

(assert (=> b!5581 (=> (not res!6311) (not e!3028))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!5581 (= res!6311 (validKeyInArray!0 k!1278))))

(declare-fun res!6312 () Bool)

(assert (=> start!780 (=> (not res!6312) (not e!3028))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!780 (= res!6312 (validMask!0 mask!2250))))

(assert (=> start!780 e!3028))

(assert (=> start!780 tp!748))

(assert (=> start!780 true))

(declare-datatypes ((V!511 0))(
  ( (V!512 (val!131 Int)) )
))
(declare-datatypes ((ValueCell!109 0))(
  ( (ValueCellFull!109 (v!1222 V!511)) (EmptyCell!109) )
))
(declare-datatypes ((array!437 0))(
  ( (array!438 (arr!207 (Array (_ BitVec 32) ValueCell!109)) (size!269 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!437)

(declare-fun e!3029 () Bool)

(declare-fun array_inv!145 (array!437) Bool)

(assert (=> start!780 (and (array_inv!145 _values!1492) e!3029)))

(declare-fun tp_is_empty!251 () Bool)

(assert (=> start!780 tp_is_empty!251))

(declare-datatypes ((array!439 0))(
  ( (array!440 (arr!208 (Array (_ BitVec 32) (_ BitVec 64))) (size!270 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!439)

(declare-fun array_inv!146 (array!439) Bool)

(assert (=> start!780 (array_inv!146 _keys!1806)))

(declare-fun mapNonEmpty!347 () Bool)

(declare-fun tp!749 () Bool)

(declare-fun e!3031 () Bool)

(assert (=> mapNonEmpty!347 (= mapRes!347 (and tp!749 e!3031))))

(declare-fun mapKey!347 () (_ BitVec 32))

(declare-fun mapRest!347 () (Array (_ BitVec 32) ValueCell!109))

(declare-fun mapValue!347 () ValueCell!109)

(assert (=> mapNonEmpty!347 (= (arr!207 _values!1492) (store mapRest!347 mapKey!347 mapValue!347))))

(declare-fun b!5582 () Bool)

(declare-fun e!3027 () Bool)

(declare-fun arrayContainsKey!0 (array!439 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!5582 (= e!3027 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!5583 () Bool)

(declare-fun res!6313 () Bool)

(assert (=> b!5583 (=> (not res!6313) (not e!3028))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!439 (_ BitVec 32)) Bool)

(assert (=> b!5583 (= res!6313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!5584 () Bool)

(declare-fun res!6309 () Bool)

(assert (=> b!5584 (=> (not res!6309) (not e!3028))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!511)

(declare-fun zeroValue!1434 () V!511)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-datatypes ((tuple2!122 0))(
  ( (tuple2!123 (_1!61 (_ BitVec 64)) (_2!61 V!511)) )
))
(declare-datatypes ((List!132 0))(
  ( (Nil!129) (Cons!128 (h!694 tuple2!122) (t!2267 List!132)) )
))
(declare-datatypes ((ListLongMap!127 0))(
  ( (ListLongMap!128 (toList!79 List!132)) )
))
(declare-fun contains!53 (ListLongMap!127 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!38 (array!439 array!437 (_ BitVec 32) (_ BitVec 32) V!511 V!511 (_ BitVec 32) Int) ListLongMap!127)

(assert (=> b!5584 (= res!6309 (contains!53 (getCurrentListMap!38 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!5585 () Bool)

(declare-fun e!3032 () Bool)

(assert (=> b!5585 (= e!3032 tp_is_empty!251)))

(declare-fun b!5586 () Bool)

(assert (=> b!5586 (= e!3031 tp_is_empty!251)))

(declare-fun b!5587 () Bool)

(declare-fun res!6310 () Bool)

(assert (=> b!5587 (=> (not res!6310) (not e!3028))))

(declare-datatypes ((List!133 0))(
  ( (Nil!130) (Cons!129 (h!695 (_ BitVec 64)) (t!2268 List!133)) )
))
(declare-fun arrayNoDuplicates!0 (array!439 (_ BitVec 32) List!133) Bool)

(assert (=> b!5587 (= res!6310 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!130))))

(declare-fun b!5588 () Bool)

(assert (=> b!5588 (= e!3027 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!5589 () Bool)

(assert (=> b!5589 (= e!3028 (not true))))

(assert (=> b!5589 e!3027))

(declare-fun c!392 () Bool)

(assert (=> b!5589 (= c!392 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!73 0))(
  ( (Unit!74) )
))
(declare-fun lt!1020 () Unit!73)

(declare-fun lemmaKeyInListMapIsInArray!22 (array!439 array!437 (_ BitVec 32) (_ BitVec 32) V!511 V!511 (_ BitVec 64) Int) Unit!73)

(assert (=> b!5589 (= lt!1020 (lemmaKeyInListMapIsInArray!22 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!5590 () Bool)

(declare-fun res!6308 () Bool)

(assert (=> b!5590 (=> (not res!6308) (not e!3028))))

(assert (=> b!5590 (= res!6308 (and (= (size!269 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!270 _keys!1806) (size!269 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!5591 () Bool)

(assert (=> b!5591 (= e!3029 (and e!3032 mapRes!347))))

(declare-fun condMapEmpty!347 () Bool)

(declare-fun mapDefault!347 () ValueCell!109)

