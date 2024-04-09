; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82172 () Bool)

(assert start!82172)

(declare-fun b!957305 () Bool)

(declare-fun e!539645 () Bool)

(declare-fun tp_is_empty!21123 () Bool)

(assert (=> b!957305 (= e!539645 tp_is_empty!21123)))

(declare-fun res!640952 () Bool)

(declare-fun e!539647 () Bool)

(assert (=> start!82172 (=> (not res!640952) (not e!539647))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82172 (= res!640952 (validMask!0 mask!2088))))

(assert (=> start!82172 e!539647))

(assert (=> start!82172 true))

(declare-datatypes ((V!33147 0))(
  ( (V!33148 (val!10612 Int)) )
))
(declare-datatypes ((ValueCell!10080 0))(
  ( (ValueCellFull!10080 (v!13169 V!33147)) (EmptyCell!10080) )
))
(declare-datatypes ((array!58365 0))(
  ( (array!58366 (arr!28052 (Array (_ BitVec 32) ValueCell!10080)) (size!28532 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58365)

(declare-fun e!539644 () Bool)

(declare-fun array_inv!21707 (array!58365) Bool)

(assert (=> start!82172 (and (array_inv!21707 _values!1386) e!539644)))

(declare-datatypes ((array!58367 0))(
  ( (array!58368 (arr!28053 (Array (_ BitVec 32) (_ BitVec 64))) (size!28533 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58367)

(declare-fun array_inv!21708 (array!58367) Bool)

(assert (=> start!82172 (array_inv!21708 _keys!1668)))

(declare-fun mapNonEmpty!33664 () Bool)

(declare-fun mapRes!33664 () Bool)

(declare-fun tp!64270 () Bool)

(declare-fun e!539648 () Bool)

(assert (=> mapNonEmpty!33664 (= mapRes!33664 (and tp!64270 e!539648))))

(declare-fun mapRest!33664 () (Array (_ BitVec 32) ValueCell!10080))

(declare-fun mapValue!33664 () ValueCell!10080)

(declare-fun mapKey!33664 () (_ BitVec 32))

(assert (=> mapNonEmpty!33664 (= (arr!28052 _values!1386) (store mapRest!33664 mapKey!33664 mapValue!33664))))

(declare-fun b!957306 () Bool)

(assert (=> b!957306 (= e!539647 false)))

(declare-fun lt!430271 () Bool)

(declare-datatypes ((List!19648 0))(
  ( (Nil!19645) (Cons!19644 (h!20806 (_ BitVec 64)) (t!28019 List!19648)) )
))
(declare-fun arrayNoDuplicates!0 (array!58367 (_ BitVec 32) List!19648) Bool)

(assert (=> b!957306 (= lt!430271 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19645))))

(declare-fun mapIsEmpty!33664 () Bool)

(assert (=> mapIsEmpty!33664 mapRes!33664))

(declare-fun b!957307 () Bool)

(declare-fun res!640951 () Bool)

(assert (=> b!957307 (=> (not res!640951) (not e!539647))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58367 (_ BitVec 32)) Bool)

(assert (=> b!957307 (= res!640951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957308 () Bool)

(declare-fun res!640953 () Bool)

(assert (=> b!957308 (=> (not res!640953) (not e!539647))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!957308 (= res!640953 (and (= (size!28532 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28533 _keys!1668) (size!28532 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!957309 () Bool)

(assert (=> b!957309 (= e!539644 (and e!539645 mapRes!33664))))

(declare-fun condMapEmpty!33664 () Bool)

(declare-fun mapDefault!33664 () ValueCell!10080)

(assert (=> b!957309 (= condMapEmpty!33664 (= (arr!28052 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10080)) mapDefault!33664)))))

(declare-fun b!957310 () Bool)

(assert (=> b!957310 (= e!539648 tp_is_empty!21123)))

(assert (= (and start!82172 res!640952) b!957308))

(assert (= (and b!957308 res!640953) b!957307))

(assert (= (and b!957307 res!640951) b!957306))

(assert (= (and b!957309 condMapEmpty!33664) mapIsEmpty!33664))

(assert (= (and b!957309 (not condMapEmpty!33664)) mapNonEmpty!33664))

(get-info :version)

(assert (= (and mapNonEmpty!33664 ((_ is ValueCellFull!10080) mapValue!33664)) b!957310))

(assert (= (and b!957309 ((_ is ValueCellFull!10080) mapDefault!33664)) b!957305))

(assert (= start!82172 b!957309))

(declare-fun m!888381 () Bool)

(assert (=> start!82172 m!888381))

(declare-fun m!888383 () Bool)

(assert (=> start!82172 m!888383))

(declare-fun m!888385 () Bool)

(assert (=> start!82172 m!888385))

(declare-fun m!888387 () Bool)

(assert (=> mapNonEmpty!33664 m!888387))

(declare-fun m!888389 () Bool)

(assert (=> b!957306 m!888389))

(declare-fun m!888391 () Bool)

(assert (=> b!957307 m!888391))

(check-sat tp_is_empty!21123 (not b!957307) (not mapNonEmpty!33664) (not start!82172) (not b!957306))
(check-sat)
