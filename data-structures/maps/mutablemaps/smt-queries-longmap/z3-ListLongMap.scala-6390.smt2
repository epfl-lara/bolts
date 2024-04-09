; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82166 () Bool)

(assert start!82166)

(declare-fun mapNonEmpty!33655 () Bool)

(declare-fun mapRes!33655 () Bool)

(declare-fun tp!64261 () Bool)

(declare-fun e!539599 () Bool)

(assert (=> mapNonEmpty!33655 (= mapRes!33655 (and tp!64261 e!539599))))

(declare-datatypes ((V!33139 0))(
  ( (V!33140 (val!10609 Int)) )
))
(declare-datatypes ((ValueCell!10077 0))(
  ( (ValueCellFull!10077 (v!13166 V!33139)) (EmptyCell!10077) )
))
(declare-fun mapValue!33655 () ValueCell!10077)

(declare-fun mapRest!33655 () (Array (_ BitVec 32) ValueCell!10077))

(declare-datatypes ((array!58355 0))(
  ( (array!58356 (arr!28047 (Array (_ BitVec 32) ValueCell!10077)) (size!28527 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58355)

(declare-fun mapKey!33655 () (_ BitVec 32))

(assert (=> mapNonEmpty!33655 (= (arr!28047 _values!1386) (store mapRest!33655 mapKey!33655 mapValue!33655))))

(declare-fun mapIsEmpty!33655 () Bool)

(assert (=> mapIsEmpty!33655 mapRes!33655))

(declare-fun b!957251 () Bool)

(declare-fun e!539602 () Bool)

(assert (=> b!957251 (= e!539602 false)))

(declare-fun lt!430262 () Bool)

(declare-datatypes ((array!58357 0))(
  ( (array!58358 (arr!28048 (Array (_ BitVec 32) (_ BitVec 64))) (size!28528 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58357)

(declare-datatypes ((List!19647 0))(
  ( (Nil!19644) (Cons!19643 (h!20805 (_ BitVec 64)) (t!28018 List!19647)) )
))
(declare-fun arrayNoDuplicates!0 (array!58357 (_ BitVec 32) List!19647) Bool)

(assert (=> b!957251 (= lt!430262 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19644))))

(declare-fun b!957253 () Bool)

(declare-fun res!640925 () Bool)

(assert (=> b!957253 (=> (not res!640925) (not e!539602))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!957253 (= res!640925 (and (= (size!28527 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28528 _keys!1668) (size!28527 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!957254 () Bool)

(declare-fun res!640926 () Bool)

(assert (=> b!957254 (=> (not res!640926) (not e!539602))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58357 (_ BitVec 32)) Bool)

(assert (=> b!957254 (= res!640926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957255 () Bool)

(declare-fun tp_is_empty!21117 () Bool)

(assert (=> b!957255 (= e!539599 tp_is_empty!21117)))

(declare-fun b!957256 () Bool)

(declare-fun e!539603 () Bool)

(assert (=> b!957256 (= e!539603 tp_is_empty!21117)))

(declare-fun res!640924 () Bool)

(assert (=> start!82166 (=> (not res!640924) (not e!539602))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82166 (= res!640924 (validMask!0 mask!2088))))

(assert (=> start!82166 e!539602))

(assert (=> start!82166 true))

(declare-fun e!539600 () Bool)

(declare-fun array_inv!21703 (array!58355) Bool)

(assert (=> start!82166 (and (array_inv!21703 _values!1386) e!539600)))

(declare-fun array_inv!21704 (array!58357) Bool)

(assert (=> start!82166 (array_inv!21704 _keys!1668)))

(declare-fun b!957252 () Bool)

(assert (=> b!957252 (= e!539600 (and e!539603 mapRes!33655))))

(declare-fun condMapEmpty!33655 () Bool)

(declare-fun mapDefault!33655 () ValueCell!10077)

(assert (=> b!957252 (= condMapEmpty!33655 (= (arr!28047 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10077)) mapDefault!33655)))))

(assert (= (and start!82166 res!640924) b!957253))

(assert (= (and b!957253 res!640925) b!957254))

(assert (= (and b!957254 res!640926) b!957251))

(assert (= (and b!957252 condMapEmpty!33655) mapIsEmpty!33655))

(assert (= (and b!957252 (not condMapEmpty!33655)) mapNonEmpty!33655))

(get-info :version)

(assert (= (and mapNonEmpty!33655 ((_ is ValueCellFull!10077) mapValue!33655)) b!957255))

(assert (= (and b!957252 ((_ is ValueCellFull!10077) mapDefault!33655)) b!957256))

(assert (= start!82166 b!957252))

(declare-fun m!888345 () Bool)

(assert (=> mapNonEmpty!33655 m!888345))

(declare-fun m!888347 () Bool)

(assert (=> b!957251 m!888347))

(declare-fun m!888349 () Bool)

(assert (=> b!957254 m!888349))

(declare-fun m!888351 () Bool)

(assert (=> start!82166 m!888351))

(declare-fun m!888353 () Bool)

(assert (=> start!82166 m!888353))

(declare-fun m!888355 () Bool)

(assert (=> start!82166 m!888355))

(check-sat (not start!82166) (not mapNonEmpty!33655) (not b!957251) tp_is_empty!21117 (not b!957254))
(check-sat)
