; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82196 () Bool)

(assert start!82196)

(declare-fun b!957521 () Bool)

(declare-fun e!539828 () Bool)

(declare-fun e!539827 () Bool)

(declare-fun mapRes!33700 () Bool)

(assert (=> b!957521 (= e!539828 (and e!539827 mapRes!33700))))

(declare-fun condMapEmpty!33700 () Bool)

(declare-datatypes ((V!33179 0))(
  ( (V!33180 (val!10624 Int)) )
))
(declare-datatypes ((ValueCell!10092 0))(
  ( (ValueCellFull!10092 (v!13181 V!33179)) (EmptyCell!10092) )
))
(declare-datatypes ((array!58411 0))(
  ( (array!58412 (arr!28075 (Array (_ BitVec 32) ValueCell!10092)) (size!28555 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58411)

(declare-fun mapDefault!33700 () ValueCell!10092)

(assert (=> b!957521 (= condMapEmpty!33700 (= (arr!28075 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10092)) mapDefault!33700)))))

(declare-fun b!957522 () Bool)

(declare-fun e!539825 () Bool)

(assert (=> b!957522 (= e!539825 false)))

(declare-fun lt!430307 () Bool)

(declare-datatypes ((array!58413 0))(
  ( (array!58414 (arr!28076 (Array (_ BitVec 32) (_ BitVec 64))) (size!28556 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58413)

(declare-datatypes ((List!19656 0))(
  ( (Nil!19653) (Cons!19652 (h!20814 (_ BitVec 64)) (t!28027 List!19656)) )
))
(declare-fun arrayNoDuplicates!0 (array!58413 (_ BitVec 32) List!19656) Bool)

(assert (=> b!957522 (= lt!430307 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19653))))

(declare-fun b!957523 () Bool)

(declare-fun res!641060 () Bool)

(assert (=> b!957523 (=> (not res!641060) (not e!539825))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!957523 (= res!641060 (and (= (size!28555 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28556 _keys!1668) (size!28555 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!957524 () Bool)

(declare-fun e!539826 () Bool)

(declare-fun tp_is_empty!21147 () Bool)

(assert (=> b!957524 (= e!539826 tp_is_empty!21147)))

(declare-fun b!957525 () Bool)

(assert (=> b!957525 (= e!539827 tp_is_empty!21147)))

(declare-fun res!641061 () Bool)

(assert (=> start!82196 (=> (not res!641061) (not e!539825))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82196 (= res!641061 (validMask!0 mask!2088))))

(assert (=> start!82196 e!539825))

(assert (=> start!82196 true))

(declare-fun array_inv!21721 (array!58411) Bool)

(assert (=> start!82196 (and (array_inv!21721 _values!1386) e!539828)))

(declare-fun array_inv!21722 (array!58413) Bool)

(assert (=> start!82196 (array_inv!21722 _keys!1668)))

(declare-fun mapIsEmpty!33700 () Bool)

(assert (=> mapIsEmpty!33700 mapRes!33700))

(declare-fun mapNonEmpty!33700 () Bool)

(declare-fun tp!64306 () Bool)

(assert (=> mapNonEmpty!33700 (= mapRes!33700 (and tp!64306 e!539826))))

(declare-fun mapKey!33700 () (_ BitVec 32))

(declare-fun mapValue!33700 () ValueCell!10092)

(declare-fun mapRest!33700 () (Array (_ BitVec 32) ValueCell!10092))

(assert (=> mapNonEmpty!33700 (= (arr!28075 _values!1386) (store mapRest!33700 mapKey!33700 mapValue!33700))))

(declare-fun b!957526 () Bool)

(declare-fun res!641059 () Bool)

(assert (=> b!957526 (=> (not res!641059) (not e!539825))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58413 (_ BitVec 32)) Bool)

(assert (=> b!957526 (= res!641059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(assert (= (and start!82196 res!641061) b!957523))

(assert (= (and b!957523 res!641060) b!957526))

(assert (= (and b!957526 res!641059) b!957522))

(assert (= (and b!957521 condMapEmpty!33700) mapIsEmpty!33700))

(assert (= (and b!957521 (not condMapEmpty!33700)) mapNonEmpty!33700))

(get-info :version)

(assert (= (and mapNonEmpty!33700 ((_ is ValueCellFull!10092) mapValue!33700)) b!957524))

(assert (= (and b!957521 ((_ is ValueCellFull!10092) mapDefault!33700)) b!957525))

(assert (= start!82196 b!957521))

(declare-fun m!888525 () Bool)

(assert (=> b!957522 m!888525))

(declare-fun m!888527 () Bool)

(assert (=> start!82196 m!888527))

(declare-fun m!888529 () Bool)

(assert (=> start!82196 m!888529))

(declare-fun m!888531 () Bool)

(assert (=> start!82196 m!888531))

(declare-fun m!888533 () Bool)

(assert (=> mapNonEmpty!33700 m!888533))

(declare-fun m!888535 () Bool)

(assert (=> b!957526 m!888535))

(check-sat (not b!957526) (not mapNonEmpty!33700) tp_is_empty!21147 (not start!82196) (not b!957522))
(check-sat)
