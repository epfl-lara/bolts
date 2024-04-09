; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82270 () Bool)

(assert start!82270)

(declare-fun b_free!18515 () Bool)

(declare-fun b_next!18515 () Bool)

(assert (=> start!82270 (= b_free!18515 (not b_next!18515))))

(declare-fun tp!64507 () Bool)

(declare-fun b_and!30021 () Bool)

(assert (=> start!82270 (= tp!64507 b_and!30021)))

(declare-fun b!958481 () Bool)

(declare-fun e!540379 () Bool)

(assert (=> b!958481 (= e!540379 false)))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33277 0))(
  ( (V!33278 (val!10661 Int)) )
))
(declare-fun minValue!1328 () V!33277)

(declare-fun lt!430409 () Bool)

(declare-datatypes ((array!58557 0))(
  ( (array!58558 (arr!28148 (Array (_ BitVec 32) (_ BitVec 64))) (size!28628 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58557)

(declare-datatypes ((ValueCell!10129 0))(
  ( (ValueCellFull!10129 (v!13218 V!33277)) (EmptyCell!10129) )
))
(declare-datatypes ((array!58559 0))(
  ( (array!58560 (arr!28149 (Array (_ BitVec 32) ValueCell!10129)) (size!28629 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58559)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33277)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((tuple2!13836 0))(
  ( (tuple2!13837 (_1!6928 (_ BitVec 64)) (_2!6928 V!33277)) )
))
(declare-datatypes ((List!19701 0))(
  ( (Nil!19698) (Cons!19697 (h!20859 tuple2!13836) (t!28072 List!19701)) )
))
(declare-datatypes ((ListLongMap!12547 0))(
  ( (ListLongMap!12548 (toList!6289 List!19701)) )
))
(declare-fun contains!5342 (ListLongMap!12547 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3474 (array!58557 array!58559 (_ BitVec 32) (_ BitVec 32) V!33277 V!33277 (_ BitVec 32) Int) ListLongMap!12547)

(assert (=> b!958481 (= lt!430409 (contains!5342 (getCurrentListMap!3474 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28148 _keys!1668) i!793)))))

(declare-fun b!958482 () Bool)

(declare-fun res!641691 () Bool)

(assert (=> b!958482 (=> (not res!641691) (not e!540379))))

(assert (=> b!958482 (= res!641691 (and (= (size!28629 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28628 _keys!1668) (size!28629 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!958483 () Bool)

(declare-fun res!641687 () Bool)

(assert (=> b!958483 (=> (not res!641687) (not e!540379))))

(declare-datatypes ((List!19702 0))(
  ( (Nil!19699) (Cons!19698 (h!20860 (_ BitVec 64)) (t!28073 List!19702)) )
))
(declare-fun arrayNoDuplicates!0 (array!58557 (_ BitVec 32) List!19702) Bool)

(assert (=> b!958483 (= res!641687 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19699))))

(declare-fun b!958484 () Bool)

(declare-fun res!641686 () Bool)

(assert (=> b!958484 (=> (not res!641686) (not e!540379))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58557 (_ BitVec 32)) Bool)

(assert (=> b!958484 (= res!641686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!958485 () Bool)

(declare-fun e!540381 () Bool)

(declare-fun tp_is_empty!21221 () Bool)

(assert (=> b!958485 (= e!540381 tp_is_empty!21221)))

(declare-fun b!958486 () Bool)

(declare-fun res!641688 () Bool)

(assert (=> b!958486 (=> (not res!641688) (not e!540379))))

(assert (=> b!958486 (= res!641688 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28628 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28628 _keys!1668))))))

(declare-fun mapNonEmpty!33811 () Bool)

(declare-fun mapRes!33811 () Bool)

(declare-fun tp!64506 () Bool)

(assert (=> mapNonEmpty!33811 (= mapRes!33811 (and tp!64506 e!540381))))

(declare-fun mapKey!33811 () (_ BitVec 32))

(declare-fun mapRest!33811 () (Array (_ BitVec 32) ValueCell!10129))

(declare-fun mapValue!33811 () ValueCell!10129)

(assert (=> mapNonEmpty!33811 (= (arr!28149 _values!1386) (store mapRest!33811 mapKey!33811 mapValue!33811))))

(declare-fun res!641689 () Bool)

(assert (=> start!82270 (=> (not res!641689) (not e!540379))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82270 (= res!641689 (validMask!0 mask!2088))))

(assert (=> start!82270 e!540379))

(assert (=> start!82270 true))

(assert (=> start!82270 tp_is_empty!21221))

(declare-fun array_inv!21773 (array!58557) Bool)

(assert (=> start!82270 (array_inv!21773 _keys!1668)))

(declare-fun e!540382 () Bool)

(declare-fun array_inv!21774 (array!58559) Bool)

(assert (=> start!82270 (and (array_inv!21774 _values!1386) e!540382)))

(assert (=> start!82270 tp!64507))

(declare-fun b!958487 () Bool)

(declare-fun e!540380 () Bool)

(assert (=> b!958487 (= e!540380 tp_is_empty!21221)))

(declare-fun mapIsEmpty!33811 () Bool)

(assert (=> mapIsEmpty!33811 mapRes!33811))

(declare-fun b!958488 () Bool)

(assert (=> b!958488 (= e!540382 (and e!540380 mapRes!33811))))

(declare-fun condMapEmpty!33811 () Bool)

(declare-fun mapDefault!33811 () ValueCell!10129)

