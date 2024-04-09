; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77636 () Bool)

(assert start!77636)

(declare-fun b_free!16193 () Bool)

(declare-fun b_next!16193 () Bool)

(assert (=> start!77636 (= b_free!16193 (not b_next!16193))))

(declare-fun tp!56841 () Bool)

(declare-fun b_and!26577 () Bool)

(assert (=> start!77636 (= tp!56841 b_and!26577)))

(declare-fun b!904365 () Bool)

(declare-fun e!506790 () Bool)

(declare-fun e!506792 () Bool)

(assert (=> b!904365 (= e!506790 (not e!506792))))

(declare-fun res!610325 () Bool)

(assert (=> b!904365 (=> res!610325 e!506792)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53252 0))(
  ( (array!53253 (arr!25581 (Array (_ BitVec 32) (_ BitVec 64))) (size!26041 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53252)

(assert (=> b!904365 (= res!610325 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26041 _keys!1386))))))

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53252 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!904365 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((V!29779 0))(
  ( (V!29780 (val!9356 Int)) )
))
(declare-datatypes ((ValueCell!8824 0))(
  ( (ValueCellFull!8824 (v!11861 V!29779)) (EmptyCell!8824) )
))
(declare-datatypes ((array!53254 0))(
  ( (array!53255 (arr!25582 (Array (_ BitVec 32) ValueCell!8824)) (size!26042 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53254)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29779)

(declare-datatypes ((Unit!30649 0))(
  ( (Unit!30650) )
))
(declare-fun lt!408199 () Unit!30649)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29779)

(declare-fun defaultEntry!1160 () Int)

(declare-fun lemmaKeyInListMapIsInArray!187 (array!53252 array!53254 (_ BitVec 32) (_ BitVec 32) V!29779 V!29779 (_ BitVec 64) Int) Unit!30649)

(assert (=> b!904365 (= lt!408199 (lemmaKeyInListMapIsInArray!187 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun mapNonEmpty!29629 () Bool)

(declare-fun mapRes!29629 () Bool)

(declare-fun tp!56842 () Bool)

(declare-fun e!506791 () Bool)

(assert (=> mapNonEmpty!29629 (= mapRes!29629 (and tp!56842 e!506791))))

(declare-fun mapRest!29629 () (Array (_ BitVec 32) ValueCell!8824))

(declare-fun mapValue!29629 () ValueCell!8824)

(declare-fun mapKey!29629 () (_ BitVec 32))

(assert (=> mapNonEmpty!29629 (= (arr!25582 _values!1152) (store mapRest!29629 mapKey!29629 mapValue!29629))))

(declare-fun b!904366 () Bool)

(declare-fun res!610324 () Bool)

(assert (=> b!904366 (=> (not res!610324) (not e!506790))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!904366 (= res!610324 (inRange!0 i!717 mask!1756))))

(declare-fun b!904367 () Bool)

(declare-fun res!610329 () Bool)

(assert (=> b!904367 (=> (not res!610329) (not e!506790))))

(assert (=> b!904367 (= res!610329 (and (= (select (arr!25581 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!904368 () Bool)

(declare-fun e!506787 () Bool)

(assert (=> b!904368 (= e!506792 e!506787)))

(declare-fun res!610327 () Bool)

(assert (=> b!904368 (=> res!610327 e!506787)))

(declare-datatypes ((tuple2!12176 0))(
  ( (tuple2!12177 (_1!6098 (_ BitVec 64)) (_2!6098 V!29779)) )
))
(declare-datatypes ((List!18050 0))(
  ( (Nil!18047) (Cons!18046 (h!19192 tuple2!12176) (t!25441 List!18050)) )
))
(declare-datatypes ((ListLongMap!10887 0))(
  ( (ListLongMap!10888 (toList!5459 List!18050)) )
))
(declare-fun lt!408198 () ListLongMap!10887)

(declare-fun contains!4472 (ListLongMap!10887 (_ BitVec 64)) Bool)

(assert (=> b!904368 (= res!610327 (not (contains!4472 lt!408198 k!1033)))))

(declare-fun getCurrentListMap!2696 (array!53252 array!53254 (_ BitVec 32) (_ BitVec 32) V!29779 V!29779 (_ BitVec 32) Int) ListLongMap!10887)

(assert (=> b!904368 (= lt!408198 (getCurrentListMap!2696 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!904369 () Bool)

(declare-fun res!610321 () Bool)

(assert (=> b!904369 (=> (not res!610321) (not e!506790))))

(assert (=> b!904369 (= res!610321 (contains!4472 (getCurrentListMap!2696 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!904370 () Bool)

(declare-fun e!506788 () Bool)

(declare-fun tp_is_empty!18611 () Bool)

(assert (=> b!904370 (= e!506788 tp_is_empty!18611)))

(declare-fun mapIsEmpty!29629 () Bool)

(assert (=> mapIsEmpty!29629 mapRes!29629))

(declare-fun res!610326 () Bool)

(assert (=> start!77636 (=> (not res!610326) (not e!506790))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77636 (= res!610326 (validMask!0 mask!1756))))

(assert (=> start!77636 e!506790))

(declare-fun e!506786 () Bool)

(declare-fun array_inv!20022 (array!53254) Bool)

(assert (=> start!77636 (and (array_inv!20022 _values!1152) e!506786)))

(assert (=> start!77636 tp!56841))

(assert (=> start!77636 true))

(assert (=> start!77636 tp_is_empty!18611))

(declare-fun array_inv!20023 (array!53252) Bool)

(assert (=> start!77636 (array_inv!20023 _keys!1386)))

(declare-fun b!904371 () Bool)

(declare-fun res!610323 () Bool)

(assert (=> b!904371 (=> (not res!610323) (not e!506790))))

(assert (=> b!904371 (= res!610323 (and (= (size!26042 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26041 _keys!1386) (size!26042 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!904372 () Bool)

(assert (=> b!904372 (= e!506787 true)))

(declare-fun lt!408200 () V!29779)

(declare-fun apply!440 (ListLongMap!10887 (_ BitVec 64)) V!29779)

(assert (=> b!904372 (= lt!408200 (apply!440 lt!408198 k!1033))))

(declare-fun b!904373 () Bool)

(declare-fun res!610328 () Bool)

(assert (=> b!904373 (=> (not res!610328) (not e!506790))))

(declare-datatypes ((List!18051 0))(
  ( (Nil!18048) (Cons!18047 (h!19193 (_ BitVec 64)) (t!25442 List!18051)) )
))
(declare-fun arrayNoDuplicates!0 (array!53252 (_ BitVec 32) List!18051) Bool)

(assert (=> b!904373 (= res!610328 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18048))))

(declare-fun b!904374 () Bool)

(assert (=> b!904374 (= e!506786 (and e!506788 mapRes!29629))))

(declare-fun condMapEmpty!29629 () Bool)

(declare-fun mapDefault!29629 () ValueCell!8824)

