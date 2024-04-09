; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!684 () Bool)

(assert start!684)

(declare-fun b_free!137 () Bool)

(declare-fun b_next!137 () Bool)

(assert (=> start!684 (= b_free!137 (not b_next!137))))

(declare-fun tp!631 () Bool)

(declare-fun b_and!277 () Bool)

(assert (=> start!684 (= tp!631 b_and!277)))

(declare-fun b!4597 () Bool)

(declare-fun res!5804 () Bool)

(declare-fun e!2433 () Bool)

(assert (=> b!4597 (=> (not res!5804) (not e!2433))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!463 0))(
  ( (V!464 (val!113 Int)) )
))
(declare-datatypes ((ValueCell!91 0))(
  ( (ValueCellFull!91 (v!1201 V!463)) (EmptyCell!91) )
))
(declare-datatypes ((array!361 0))(
  ( (array!362 (arr!172 (Array (_ BitVec 32) ValueCell!91)) (size!234 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!361)

(declare-datatypes ((array!363 0))(
  ( (array!364 (arr!173 (Array (_ BitVec 32) (_ BitVec 64))) (size!235 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!363)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!4597 (= res!5804 (and (= (size!234 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!235 _keys!1806) (size!234 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!4598 () Bool)

(declare-fun res!5806 () Bool)

(assert (=> b!4598 (=> (not res!5806) (not e!2433))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!4598 (= res!5806 (validKeyInArray!0 k!1278))))

(declare-fun b!4599 () Bool)

(declare-fun res!5807 () Bool)

(assert (=> b!4599 (=> (not res!5807) (not e!2433))))

(declare-datatypes ((List!110 0))(
  ( (Nil!107) (Cons!106 (h!672 (_ BitVec 64)) (t!2239 List!110)) )
))
(declare-fun arrayNoDuplicates!0 (array!363 (_ BitVec 32) List!110) Bool)

(assert (=> b!4599 (= res!5807 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!107))))

(declare-fun b!4600 () Bool)

(declare-fun res!5805 () Bool)

(assert (=> b!4600 (=> (not res!5805) (not e!2433))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!463)

(declare-fun zeroValue!1434 () V!463)

(declare-datatypes ((tuple2!104 0))(
  ( (tuple2!105 (_1!52 (_ BitVec 64)) (_2!52 V!463)) )
))
(declare-datatypes ((List!111 0))(
  ( (Nil!108) (Cons!107 (h!673 tuple2!104) (t!2240 List!111)) )
))
(declare-datatypes ((ListLongMap!109 0))(
  ( (ListLongMap!110 (toList!70 List!111)) )
))
(declare-fun contains!41 (ListLongMap!109 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!29 (array!363 array!361 (_ BitVec 32) (_ BitVec 32) V!463 V!463 (_ BitVec 32) Int) ListLongMap!109)

(assert (=> b!4600 (= res!5805 (contains!41 (getCurrentListMap!29 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!4601 () Bool)

(declare-fun e!2437 () Bool)

(declare-fun arrayContainsKey!0 (array!363 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!4601 (= e!2437 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!284 () Bool)

(declare-fun mapRes!284 () Bool)

(declare-fun tp!632 () Bool)

(declare-fun e!2435 () Bool)

(assert (=> mapNonEmpty!284 (= mapRes!284 (and tp!632 e!2435))))

(declare-fun mapRest!284 () (Array (_ BitVec 32) ValueCell!91))

(declare-fun mapKey!284 () (_ BitVec 32))

(declare-fun mapValue!284 () ValueCell!91)

(assert (=> mapNonEmpty!284 (= (arr!172 _values!1492) (store mapRest!284 mapKey!284 mapValue!284))))

(declare-fun b!4602 () Bool)

(assert (=> b!4602 (= e!2437 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4603 () Bool)

(declare-fun tp_is_empty!215 () Bool)

(assert (=> b!4603 (= e!2435 tp_is_empty!215)))

(declare-fun b!4604 () Bool)

(declare-fun e!2434 () Bool)

(assert (=> b!4604 (= e!2434 tp_is_empty!215)))

(declare-fun b!4605 () Bool)

(declare-fun res!5809 () Bool)

(assert (=> b!4605 (=> (not res!5809) (not e!2433))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!363 (_ BitVec 32)) Bool)

(assert (=> b!4605 (= res!5809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun res!5808 () Bool)

(assert (=> start!684 (=> (not res!5808) (not e!2433))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!684 (= res!5808 (validMask!0 mask!2250))))

(assert (=> start!684 e!2433))

(assert (=> start!684 tp!631))

(assert (=> start!684 true))

(declare-fun e!2436 () Bool)

(declare-fun array_inv!119 (array!361) Bool)

(assert (=> start!684 (and (array_inv!119 _values!1492) e!2436)))

(assert (=> start!684 tp_is_empty!215))

(declare-fun array_inv!120 (array!363) Bool)

(assert (=> start!684 (array_inv!120 _keys!1806)))

(declare-fun mapIsEmpty!284 () Bool)

(assert (=> mapIsEmpty!284 mapRes!284))

(declare-fun b!4606 () Bool)

(assert (=> b!4606 (= e!2436 (and e!2434 mapRes!284))))

(declare-fun condMapEmpty!284 () Bool)

(declare-fun mapDefault!284 () ValueCell!91)

