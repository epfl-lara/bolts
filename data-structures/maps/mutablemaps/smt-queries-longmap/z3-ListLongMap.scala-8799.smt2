; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107056 () Bool)

(assert start!107056)

(declare-fun b!1268782 () Bool)

(declare-fun res!844492 () Bool)

(declare-fun e!723125 () Bool)

(assert (=> b!1268782 (=> (not res!844492) (not e!723125))))

(declare-datatypes ((array!82661 0))(
  ( (array!82662 (arr!39863 (Array (_ BitVec 32) (_ BitVec 64))) (size!40400 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82661)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82661 (_ BitVec 32)) Bool)

(assert (=> b!1268782 (= res!844492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapIsEmpty!50644 () Bool)

(declare-fun mapRes!50644 () Bool)

(assert (=> mapIsEmpty!50644 mapRes!50644))

(declare-fun b!1268783 () Bool)

(declare-fun e!723124 () Bool)

(declare-fun e!723126 () Bool)

(assert (=> b!1268783 (= e!723124 (and e!723126 mapRes!50644))))

(declare-fun condMapEmpty!50644 () Bool)

(declare-datatypes ((V!48805 0))(
  ( (V!48806 (val!16429 Int)) )
))
(declare-datatypes ((ValueCell!15501 0))(
  ( (ValueCellFull!15501 (v!19064 V!48805)) (EmptyCell!15501) )
))
(declare-datatypes ((array!82663 0))(
  ( (array!82664 (arr!39864 (Array (_ BitVec 32) ValueCell!15501)) (size!40401 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82663)

(declare-fun mapDefault!50644 () ValueCell!15501)

(assert (=> b!1268783 (= condMapEmpty!50644 (= (arr!39864 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15501)) mapDefault!50644)))))

(declare-fun mapNonEmpty!50644 () Bool)

(declare-fun tp!96824 () Bool)

(declare-fun e!723127 () Bool)

(assert (=> mapNonEmpty!50644 (= mapRes!50644 (and tp!96824 e!723127))))

(declare-fun mapKey!50644 () (_ BitVec 32))

(declare-fun mapRest!50644 () (Array (_ BitVec 32) ValueCell!15501))

(declare-fun mapValue!50644 () ValueCell!15501)

(assert (=> mapNonEmpty!50644 (= (arr!39864 _values!1134) (store mapRest!50644 mapKey!50644 mapValue!50644))))

(declare-fun b!1268784 () Bool)

(assert (=> b!1268784 (= e!723125 false)))

(declare-fun lt!574436 () Bool)

(declare-datatypes ((List!28572 0))(
  ( (Nil!28569) (Cons!28568 (h!29777 (_ BitVec 64)) (t!42108 List!28572)) )
))
(declare-fun arrayNoDuplicates!0 (array!82661 (_ BitVec 32) List!28572) Bool)

(assert (=> b!1268784 (= lt!574436 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28569))))

(declare-fun b!1268785 () Bool)

(declare-fun tp_is_empty!32709 () Bool)

(assert (=> b!1268785 (= e!723126 tp_is_empty!32709)))

(declare-fun b!1268786 () Bool)

(assert (=> b!1268786 (= e!723127 tp_is_empty!32709)))

(declare-fun b!1268781 () Bool)

(declare-fun res!844491 () Bool)

(assert (=> b!1268781 (=> (not res!844491) (not e!723125))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1268781 (= res!844491 (and (= (size!40401 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40400 _keys!1364) (size!40401 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!844493 () Bool)

(assert (=> start!107056 (=> (not res!844493) (not e!723125))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107056 (= res!844493 (validMask!0 mask!1730))))

(assert (=> start!107056 e!723125))

(declare-fun array_inv!30291 (array!82663) Bool)

(assert (=> start!107056 (and (array_inv!30291 _values!1134) e!723124)))

(assert (=> start!107056 true))

(declare-fun array_inv!30292 (array!82661) Bool)

(assert (=> start!107056 (array_inv!30292 _keys!1364)))

(assert (= (and start!107056 res!844493) b!1268781))

(assert (= (and b!1268781 res!844491) b!1268782))

(assert (= (and b!1268782 res!844492) b!1268784))

(assert (= (and b!1268783 condMapEmpty!50644) mapIsEmpty!50644))

(assert (= (and b!1268783 (not condMapEmpty!50644)) mapNonEmpty!50644))

(get-info :version)

(assert (= (and mapNonEmpty!50644 ((_ is ValueCellFull!15501) mapValue!50644)) b!1268786))

(assert (= (and b!1268783 ((_ is ValueCellFull!15501) mapDefault!50644)) b!1268785))

(assert (= start!107056 b!1268783))

(declare-fun m!1167521 () Bool)

(assert (=> b!1268782 m!1167521))

(declare-fun m!1167523 () Bool)

(assert (=> mapNonEmpty!50644 m!1167523))

(declare-fun m!1167525 () Bool)

(assert (=> b!1268784 m!1167525))

(declare-fun m!1167527 () Bool)

(assert (=> start!107056 m!1167527))

(declare-fun m!1167529 () Bool)

(assert (=> start!107056 m!1167529))

(declare-fun m!1167531 () Bool)

(assert (=> start!107056 m!1167531))

(check-sat (not b!1268784) tp_is_empty!32709 (not mapNonEmpty!50644) (not b!1268782) (not start!107056))
(check-sat)
