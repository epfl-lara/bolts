; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107236 () Bool)

(assert start!107236)

(declare-fun b!1270725 () Bool)

(declare-fun res!845627 () Bool)

(declare-fun e!724477 () Bool)

(assert (=> b!1270725 (=> (not res!845627) (not e!724477))))

(declare-datatypes ((array!82999 0))(
  ( (array!83000 (arr!40032 (Array (_ BitVec 32) (_ BitVec 64))) (size!40569 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82999)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82999 (_ BitVec 32)) Bool)

(assert (=> b!1270725 (= res!845627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270726 () Bool)

(declare-fun res!845626 () Bool)

(assert (=> b!1270726 (=> (not res!845626) (not e!724477))))

(declare-datatypes ((V!49045 0))(
  ( (V!49046 (val!16519 Int)) )
))
(declare-datatypes ((ValueCell!15591 0))(
  ( (ValueCellFull!15591 (v!19154 V!49045)) (EmptyCell!15591) )
))
(declare-datatypes ((array!83001 0))(
  ( (array!83002 (arr!40033 (Array (_ BitVec 32) ValueCell!15591)) (size!40570 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83001)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270726 (= res!845626 (and (= (size!40570 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40569 _keys!1364) (size!40570 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!50914 () Bool)

(declare-fun mapRes!50914 () Bool)

(assert (=> mapIsEmpty!50914 mapRes!50914))

(declare-fun mapNonEmpty!50914 () Bool)

(declare-fun tp!97256 () Bool)

(declare-fun e!724478 () Bool)

(assert (=> mapNonEmpty!50914 (= mapRes!50914 (and tp!97256 e!724478))))

(declare-fun mapKey!50914 () (_ BitVec 32))

(declare-fun mapRest!50914 () (Array (_ BitVec 32) ValueCell!15591))

(declare-fun mapValue!50914 () ValueCell!15591)

(assert (=> mapNonEmpty!50914 (= (arr!40033 _values!1134) (store mapRest!50914 mapKey!50914 mapValue!50914))))

(declare-fun b!1270728 () Bool)

(assert (=> b!1270728 (= e!724477 false)))

(declare-fun lt!574706 () Bool)

(declare-datatypes ((List!28664 0))(
  ( (Nil!28661) (Cons!28660 (h!29869 (_ BitVec 64)) (t!42200 List!28664)) )
))
(declare-fun arrayNoDuplicates!0 (array!82999 (_ BitVec 32) List!28664) Bool)

(assert (=> b!1270728 (= lt!574706 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28661))))

(declare-fun b!1270729 () Bool)

(declare-fun e!724474 () Bool)

(declare-fun tp_is_empty!32889 () Bool)

(assert (=> b!1270729 (= e!724474 tp_is_empty!32889)))

(declare-fun b!1270730 () Bool)

(declare-fun e!724476 () Bool)

(assert (=> b!1270730 (= e!724476 (and e!724474 mapRes!50914))))

(declare-fun condMapEmpty!50914 () Bool)

(declare-fun mapDefault!50914 () ValueCell!15591)

(assert (=> b!1270730 (= condMapEmpty!50914 (= (arr!40033 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15591)) mapDefault!50914)))))

(declare-fun res!845625 () Bool)

(assert (=> start!107236 (=> (not res!845625) (not e!724477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107236 (= res!845625 (validMask!0 mask!1730))))

(assert (=> start!107236 e!724477))

(declare-fun array_inv!30397 (array!83001) Bool)

(assert (=> start!107236 (and (array_inv!30397 _values!1134) e!724476)))

(assert (=> start!107236 true))

(declare-fun array_inv!30398 (array!82999) Bool)

(assert (=> start!107236 (array_inv!30398 _keys!1364)))

(declare-fun b!1270727 () Bool)

(assert (=> b!1270727 (= e!724478 tp_is_empty!32889)))

(assert (= (and start!107236 res!845625) b!1270726))

(assert (= (and b!1270726 res!845626) b!1270725))

(assert (= (and b!1270725 res!845627) b!1270728))

(assert (= (and b!1270730 condMapEmpty!50914) mapIsEmpty!50914))

(assert (= (and b!1270730 (not condMapEmpty!50914)) mapNonEmpty!50914))

(get-info :version)

(assert (= (and mapNonEmpty!50914 ((_ is ValueCellFull!15591) mapValue!50914)) b!1270727))

(assert (= (and b!1270730 ((_ is ValueCellFull!15591) mapDefault!50914)) b!1270729))

(assert (= start!107236 b!1270730))

(declare-fun m!1168925 () Bool)

(assert (=> b!1270725 m!1168925))

(declare-fun m!1168927 () Bool)

(assert (=> mapNonEmpty!50914 m!1168927))

(declare-fun m!1168929 () Bool)

(assert (=> b!1270728 m!1168929))

(declare-fun m!1168931 () Bool)

(assert (=> start!107236 m!1168931))

(declare-fun m!1168933 () Bool)

(assert (=> start!107236 m!1168933))

(declare-fun m!1168935 () Bool)

(assert (=> start!107236 m!1168935))

(check-sat (not start!107236) tp_is_empty!32889 (not b!1270725) (not mapNonEmpty!50914) (not b!1270728))
(check-sat)
