; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!940 () Bool)

(assert start!940)

(declare-fun b_free!313 () Bool)

(declare-fun b_next!313 () Bool)

(assert (=> start!940 (= b_free!313 (not b_next!313))))

(declare-fun tp!1171 () Bool)

(declare-fun b_and!461 () Bool)

(assert (=> start!940 (= tp!1171 b_and!461)))

(declare-fun b!7932 () Bool)

(declare-fun e!4487 () Bool)

(assert (=> b!7932 (= e!4487 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun lt!1608 () Bool)

(declare-datatypes ((V!699 0))(
  ( (V!700 (val!201 Int)) )
))
(declare-datatypes ((ValueCell!179 0))(
  ( (ValueCellFull!179 (v!1293 V!699)) (EmptyCell!179) )
))
(declare-datatypes ((array!707 0))(
  ( (array!708 (arr!341 (Array (_ BitVec 32) ValueCell!179)) (size!403 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!707)

(declare-fun minValue!1434 () V!699)

(declare-datatypes ((array!709 0))(
  ( (array!710 (arr!342 (Array (_ BitVec 32) (_ BitVec 64))) (size!404 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!709)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!699)

(declare-datatypes ((tuple2!210 0))(
  ( (tuple2!211 (_1!105 (_ BitVec 64)) (_2!105 V!699)) )
))
(declare-datatypes ((List!232 0))(
  ( (Nil!229) (Cons!228 (h!794 tuple2!210) (t!2369 List!232)) )
))
(declare-datatypes ((ListLongMap!215 0))(
  ( (ListLongMap!216 (toList!123 List!232)) )
))
(declare-fun contains!98 (ListLongMap!215 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!82 (array!709 array!707 (_ BitVec 32) (_ BitVec 32) V!699 V!699 (_ BitVec 32) Int) ListLongMap!215)

(assert (=> b!7932 (= lt!1608 (contains!98 (getCurrentListMap!82 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k!1278))))

(declare-fun b!7933 () Bool)

(declare-fun res!7688 () Bool)

(assert (=> b!7933 (=> (not res!7688) (not e!4487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!709 (_ BitVec 32)) Bool)

(assert (=> b!7933 (= res!7688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapIsEmpty!560 () Bool)

(declare-fun mapRes!560 () Bool)

(assert (=> mapIsEmpty!560 mapRes!560))

(declare-fun mapNonEmpty!560 () Bool)

(declare-fun tp!1172 () Bool)

(declare-fun e!4484 () Bool)

(assert (=> mapNonEmpty!560 (= mapRes!560 (and tp!1172 e!4484))))

(declare-fun mapRest!560 () (Array (_ BitVec 32) ValueCell!179))

(declare-fun mapKey!560 () (_ BitVec 32))

(declare-fun mapValue!560 () ValueCell!179)

(assert (=> mapNonEmpty!560 (= (arr!341 _values!1492) (store mapRest!560 mapKey!560 mapValue!560))))

(declare-fun res!7689 () Bool)

(assert (=> start!940 (=> (not res!7689) (not e!4487))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!940 (= res!7689 (validMask!0 mask!2250))))

(assert (=> start!940 e!4487))

(assert (=> start!940 tp!1171))

(assert (=> start!940 true))

(declare-fun e!4483 () Bool)

(declare-fun array_inv!253 (array!707) Bool)

(assert (=> start!940 (and (array_inv!253 _values!1492) e!4483)))

(declare-fun tp_is_empty!391 () Bool)

(assert (=> start!940 tp_is_empty!391))

(declare-fun array_inv!254 (array!709) Bool)

(assert (=> start!940 (array_inv!254 _keys!1806)))

(declare-fun b!7934 () Bool)

(declare-fun e!4486 () Bool)

(assert (=> b!7934 (= e!4486 tp_is_empty!391)))

(declare-fun b!7935 () Bool)

(declare-fun res!7690 () Bool)

(assert (=> b!7935 (=> (not res!7690) (not e!4487))))

(assert (=> b!7935 (= res!7690 (and (= (size!403 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!404 _keys!1806) (size!403 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!7936 () Bool)

(declare-fun res!7687 () Bool)

(assert (=> b!7936 (=> (not res!7687) (not e!4487))))

(declare-datatypes ((List!233 0))(
  ( (Nil!230) (Cons!229 (h!795 (_ BitVec 64)) (t!2370 List!233)) )
))
(declare-fun arrayNoDuplicates!0 (array!709 (_ BitVec 32) List!233) Bool)

(assert (=> b!7936 (= res!7687 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!230))))

(declare-fun b!7937 () Bool)

(assert (=> b!7937 (= e!4483 (and e!4486 mapRes!560))))

(declare-fun condMapEmpty!560 () Bool)

(declare-fun mapDefault!560 () ValueCell!179)

