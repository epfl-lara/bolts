; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!788 () Bool)

(assert start!788)

(declare-fun b_free!181 () Bool)

(declare-fun b_next!181 () Bool)

(assert (=> start!788 (= b_free!181 (not b_next!181))))

(declare-fun tp!772 () Bool)

(declare-fun b_and!327 () Bool)

(assert (=> start!788 (= tp!772 b_and!327)))

(declare-fun res!6391 () Bool)

(declare-fun e!3114 () Bool)

(assert (=> start!788 (=> (not res!6391) (not e!3114))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!788 (= res!6391 (validMask!0 mask!2250))))

(assert (=> start!788 e!3114))

(assert (=> start!788 tp!772))

(assert (=> start!788 true))

(declare-datatypes ((V!523 0))(
  ( (V!524 (val!135 Int)) )
))
(declare-datatypes ((ValueCell!113 0))(
  ( (ValueCellFull!113 (v!1226 V!523)) (EmptyCell!113) )
))
(declare-datatypes ((array!453 0))(
  ( (array!454 (arr!215 (Array (_ BitVec 32) ValueCell!113)) (size!277 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!453)

(declare-fun e!3116 () Bool)

(declare-fun array_inv!149 (array!453) Bool)

(assert (=> start!788 (and (array_inv!149 _values!1492) e!3116)))

(declare-fun tp_is_empty!259 () Bool)

(assert (=> start!788 tp_is_empty!259))

(declare-datatypes ((array!455 0))(
  ( (array!456 (arr!216 (Array (_ BitVec 32) (_ BitVec 64))) (size!278 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!455)

(declare-fun array_inv!150 (array!455) Bool)

(assert (=> start!788 (array_inv!150 _keys!1806)))

(declare-fun b!5724 () Bool)

(declare-fun res!6395 () Bool)

(assert (=> b!5724 (=> (not res!6395) (not e!3114))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!5724 (= res!6395 (and (= (size!277 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!278 _keys!1806) (size!277 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!5725 () Bool)

(declare-fun e!3113 () Bool)

(assert (=> b!5725 (= e!3113 tp_is_empty!259)))

(declare-fun b!5726 () Bool)

(declare-fun res!6396 () Bool)

(assert (=> b!5726 (=> (not res!6396) (not e!3114))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!455 (_ BitVec 32)) Bool)

(assert (=> b!5726 (= res!6396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!5727 () Bool)

(declare-fun res!6393 () Bool)

(assert (=> b!5727 (=> (not res!6393) (not e!3114))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!523)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun zeroValue!1434 () V!523)

(declare-datatypes ((tuple2!126 0))(
  ( (tuple2!127 (_1!63 (_ BitVec 64)) (_2!63 V!523)) )
))
(declare-datatypes ((List!138 0))(
  ( (Nil!135) (Cons!134 (h!700 tuple2!126) (t!2273 List!138)) )
))
(declare-datatypes ((ListLongMap!131 0))(
  ( (ListLongMap!132 (toList!81 List!138)) )
))
(declare-fun contains!55 (ListLongMap!131 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!40 (array!455 array!453 (_ BitVec 32) (_ BitVec 32) V!523 V!523 (_ BitVec 32) Int) ListLongMap!131)

(assert (=> b!5727 (= res!6393 (contains!55 (getCurrentListMap!40 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!5728 () Bool)

(declare-fun e!3112 () Bool)

(assert (=> b!5728 (= e!3112 tp_is_empty!259)))

(declare-fun b!5729 () Bool)

(declare-fun e!3115 () Bool)

(declare-fun arrayContainsKey!0 (array!455 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!5729 (= e!3115 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!5730 () Bool)

(declare-fun mapRes!359 () Bool)

(assert (=> b!5730 (= e!3116 (and e!3113 mapRes!359))))

(declare-fun condMapEmpty!359 () Bool)

(declare-fun mapDefault!359 () ValueCell!113)

