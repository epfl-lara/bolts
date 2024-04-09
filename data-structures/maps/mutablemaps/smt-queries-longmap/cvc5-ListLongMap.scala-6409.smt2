; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82278 () Bool)

(assert start!82278)

(declare-fun b_free!18523 () Bool)

(declare-fun b_next!18523 () Bool)

(assert (=> start!82278 (= b_free!18523 (not b_next!18523))))

(declare-fun tp!64530 () Bool)

(declare-fun b_and!30029 () Bool)

(assert (=> start!82278 (= tp!64530 b_and!30029)))

(declare-fun b!958589 () Bool)

(declare-fun res!641760 () Bool)

(declare-fun e!540439 () Bool)

(assert (=> b!958589 (=> (not res!641760) (not e!540439))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58573 0))(
  ( (array!58574 (arr!28156 (Array (_ BitVec 32) (_ BitVec 64))) (size!28636 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58573)

(declare-datatypes ((V!33289 0))(
  ( (V!33290 (val!10665 Int)) )
))
(declare-datatypes ((ValueCell!10133 0))(
  ( (ValueCellFull!10133 (v!13222 V!33289)) (EmptyCell!10133) )
))
(declare-datatypes ((array!58575 0))(
  ( (array!58576 (arr!28157 (Array (_ BitVec 32) ValueCell!10133)) (size!28637 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58575)

(assert (=> b!958589 (= res!641760 (and (= (size!28637 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28636 _keys!1668) (size!28637 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!958590 () Bool)

(declare-fun res!641761 () Bool)

(assert (=> b!958590 (=> (not res!641761) (not e!540439))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!958590 (= res!641761 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28636 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28636 _keys!1668))))))

(declare-fun b!958591 () Bool)

(declare-fun res!641758 () Bool)

(assert (=> b!958591 (=> (not res!641758) (not e!540439))))

(declare-datatypes ((List!19707 0))(
  ( (Nil!19704) (Cons!19703 (h!20865 (_ BitVec 64)) (t!28078 List!19707)) )
))
(declare-fun arrayNoDuplicates!0 (array!58573 (_ BitVec 32) List!19707) Bool)

(assert (=> b!958591 (= res!641758 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19704))))

(declare-fun b!958592 () Bool)

(assert (=> b!958592 (= e!540439 false)))

(declare-fun minValue!1328 () V!33289)

(declare-fun lt!430421 () Bool)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33289)

(declare-datatypes ((tuple2!13842 0))(
  ( (tuple2!13843 (_1!6931 (_ BitVec 64)) (_2!6931 V!33289)) )
))
(declare-datatypes ((List!19708 0))(
  ( (Nil!19705) (Cons!19704 (h!20866 tuple2!13842) (t!28079 List!19708)) )
))
(declare-datatypes ((ListLongMap!12553 0))(
  ( (ListLongMap!12554 (toList!6292 List!19708)) )
))
(declare-fun contains!5345 (ListLongMap!12553 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3477 (array!58573 array!58575 (_ BitVec 32) (_ BitVec 32) V!33289 V!33289 (_ BitVec 32) Int) ListLongMap!12553)

(assert (=> b!958592 (= lt!430421 (contains!5345 (getCurrentListMap!3477 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28156 _keys!1668) i!793)))))

(declare-fun mapNonEmpty!33823 () Bool)

(declare-fun mapRes!33823 () Bool)

(declare-fun tp!64531 () Bool)

(declare-fun e!540440 () Bool)

(assert (=> mapNonEmpty!33823 (= mapRes!33823 (and tp!64531 e!540440))))

(declare-fun mapValue!33823 () ValueCell!10133)

(declare-fun mapKey!33823 () (_ BitVec 32))

(declare-fun mapRest!33823 () (Array (_ BitVec 32) ValueCell!10133))

(assert (=> mapNonEmpty!33823 (= (arr!28157 _values!1386) (store mapRest!33823 mapKey!33823 mapValue!33823))))

(declare-fun b!958593 () Bool)

(declare-fun tp_is_empty!21229 () Bool)

(assert (=> b!958593 (= e!540440 tp_is_empty!21229)))

(declare-fun b!958594 () Bool)

(declare-fun res!641759 () Bool)

(assert (=> b!958594 (=> (not res!641759) (not e!540439))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58573 (_ BitVec 32)) Bool)

(assert (=> b!958594 (= res!641759 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun res!641762 () Bool)

(assert (=> start!82278 (=> (not res!641762) (not e!540439))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82278 (= res!641762 (validMask!0 mask!2088))))

(assert (=> start!82278 e!540439))

(assert (=> start!82278 true))

(assert (=> start!82278 tp_is_empty!21229))

(declare-fun array_inv!21777 (array!58573) Bool)

(assert (=> start!82278 (array_inv!21777 _keys!1668)))

(declare-fun e!540441 () Bool)

(declare-fun array_inv!21778 (array!58575) Bool)

(assert (=> start!82278 (and (array_inv!21778 _values!1386) e!540441)))

(assert (=> start!82278 tp!64530))

(declare-fun mapIsEmpty!33823 () Bool)

(assert (=> mapIsEmpty!33823 mapRes!33823))

(declare-fun b!958595 () Bool)

(declare-fun res!641763 () Bool)

(assert (=> b!958595 (=> (not res!641763) (not e!540439))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!958595 (= res!641763 (validKeyInArray!0 (select (arr!28156 _keys!1668) i!793)))))

(declare-fun b!958596 () Bool)

(declare-fun e!540442 () Bool)

(assert (=> b!958596 (= e!540441 (and e!540442 mapRes!33823))))

(declare-fun condMapEmpty!33823 () Bool)

(declare-fun mapDefault!33823 () ValueCell!10133)

