; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82264 () Bool)

(assert start!82264)

(declare-fun b_free!18509 () Bool)

(declare-fun b_next!18509 () Bool)

(assert (=> start!82264 (= b_free!18509 (not b_next!18509))))

(declare-fun tp!64488 () Bool)

(declare-fun b_and!30015 () Bool)

(assert (=> start!82264 (= tp!64488 b_and!30015)))

(declare-fun b!958400 () Bool)

(declare-fun e!540334 () Bool)

(declare-fun tp_is_empty!21215 () Bool)

(assert (=> b!958400 (= e!540334 tp_is_empty!21215)))

(declare-fun mapNonEmpty!33802 () Bool)

(declare-fun mapRes!33802 () Bool)

(declare-fun tp!64489 () Bool)

(declare-fun e!540337 () Bool)

(assert (=> mapNonEmpty!33802 (= mapRes!33802 (and tp!64489 e!540337))))

(declare-datatypes ((V!33269 0))(
  ( (V!33270 (val!10658 Int)) )
))
(declare-datatypes ((ValueCell!10126 0))(
  ( (ValueCellFull!10126 (v!13215 V!33269)) (EmptyCell!10126) )
))
(declare-fun mapRest!33802 () (Array (_ BitVec 32) ValueCell!10126))

(declare-fun mapValue!33802 () ValueCell!10126)

(declare-fun mapKey!33802 () (_ BitVec 32))

(declare-datatypes ((array!58545 0))(
  ( (array!58546 (arr!28142 (Array (_ BitVec 32) ValueCell!10126)) (size!28622 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58545)

(assert (=> mapNonEmpty!33802 (= (arr!28142 _values!1386) (store mapRest!33802 mapKey!33802 mapValue!33802))))

(declare-fun b!958401 () Bool)

(declare-fun res!641633 () Bool)

(declare-fun e!540335 () Bool)

(assert (=> b!958401 (=> (not res!641633) (not e!540335))))

(declare-datatypes ((array!58547 0))(
  ( (array!58548 (arr!28143 (Array (_ BitVec 32) (_ BitVec 64))) (size!28623 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58547)

(declare-datatypes ((List!19696 0))(
  ( (Nil!19693) (Cons!19692 (h!20854 (_ BitVec 64)) (t!28067 List!19696)) )
))
(declare-fun arrayNoDuplicates!0 (array!58547 (_ BitVec 32) List!19696) Bool)

(assert (=> b!958401 (= res!641633 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19693))))

(declare-fun b!958402 () Bool)

(declare-fun res!641637 () Bool)

(assert (=> b!958402 (=> (not res!641637) (not e!540335))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun mask!2088 () (_ BitVec 32))

(assert (=> b!958402 (= res!641637 (and (= (size!28622 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28623 _keys!1668) (size!28622 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!958403 () Bool)

(assert (=> b!958403 (= e!540337 tp_is_empty!21215)))

(declare-fun b!958404 () Bool)

(assert (=> b!958404 (= e!540335 false)))

(declare-fun minValue!1328 () V!33269)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33269)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun lt!430400 () Bool)

(declare-datatypes ((tuple2!13830 0))(
  ( (tuple2!13831 (_1!6925 (_ BitVec 64)) (_2!6925 V!33269)) )
))
(declare-datatypes ((List!19697 0))(
  ( (Nil!19694) (Cons!19693 (h!20855 tuple2!13830) (t!28068 List!19697)) )
))
(declare-datatypes ((ListLongMap!12541 0))(
  ( (ListLongMap!12542 (toList!6286 List!19697)) )
))
(declare-fun contains!5339 (ListLongMap!12541 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3471 (array!58547 array!58545 (_ BitVec 32) (_ BitVec 32) V!33269 V!33269 (_ BitVec 32) Int) ListLongMap!12541)

(assert (=> b!958404 (= lt!430400 (contains!5339 (getCurrentListMap!3471 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28143 _keys!1668) i!793)))))

(declare-fun res!641635 () Bool)

(assert (=> start!82264 (=> (not res!641635) (not e!540335))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82264 (= res!641635 (validMask!0 mask!2088))))

(assert (=> start!82264 e!540335))

(assert (=> start!82264 true))

(assert (=> start!82264 tp_is_empty!21215))

(declare-fun array_inv!21769 (array!58547) Bool)

(assert (=> start!82264 (array_inv!21769 _keys!1668)))

(declare-fun e!540336 () Bool)

(declare-fun array_inv!21770 (array!58545) Bool)

(assert (=> start!82264 (and (array_inv!21770 _values!1386) e!540336)))

(assert (=> start!82264 tp!64488))

(declare-fun mapIsEmpty!33802 () Bool)

(assert (=> mapIsEmpty!33802 mapRes!33802))

(declare-fun b!958405 () Bool)

(assert (=> b!958405 (= e!540336 (and e!540334 mapRes!33802))))

(declare-fun condMapEmpty!33802 () Bool)

(declare-fun mapDefault!33802 () ValueCell!10126)

