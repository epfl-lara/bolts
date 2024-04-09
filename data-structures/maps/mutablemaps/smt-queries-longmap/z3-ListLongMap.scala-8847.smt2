; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107344 () Bool)

(assert start!107344)

(declare-fun b!1271697 () Bool)

(declare-fun e!725287 () Bool)

(declare-fun tp_is_empty!32997 () Bool)

(assert (=> b!1271697 (= e!725287 tp_is_empty!32997)))

(declare-fun b!1271698 () Bool)

(declare-fun e!725286 () Bool)

(assert (=> b!1271698 (= e!725286 tp_is_empty!32997)))

(declare-fun b!1271699 () Bool)

(declare-fun e!725285 () Bool)

(declare-fun mapRes!51076 () Bool)

(assert (=> b!1271699 (= e!725285 (and e!725287 mapRes!51076))))

(declare-fun condMapEmpty!51076 () Bool)

(declare-datatypes ((V!49189 0))(
  ( (V!49190 (val!16573 Int)) )
))
(declare-datatypes ((ValueCell!15645 0))(
  ( (ValueCellFull!15645 (v!19208 V!49189)) (EmptyCell!15645) )
))
(declare-datatypes ((array!83189 0))(
  ( (array!83190 (arr!40127 (Array (_ BitVec 32) ValueCell!15645)) (size!40664 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83189)

(declare-fun mapDefault!51076 () ValueCell!15645)

(assert (=> b!1271699 (= condMapEmpty!51076 (= (arr!40127 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15645)) mapDefault!51076)))))

(declare-fun b!1271700 () Bool)

(declare-fun res!846113 () Bool)

(declare-fun e!725288 () Bool)

(assert (=> b!1271700 (=> (not res!846113) (not e!725288))))

(declare-datatypes ((array!83191 0))(
  ( (array!83192 (arr!40128 (Array (_ BitVec 32) (_ BitVec 64))) (size!40665 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83191)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83191 (_ BitVec 32)) Bool)

(assert (=> b!1271700 (= res!846113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1271701 () Bool)

(assert (=> b!1271701 (= e!725288 false)))

(declare-fun lt!574868 () Bool)

(declare-datatypes ((List!28698 0))(
  ( (Nil!28695) (Cons!28694 (h!29903 (_ BitVec 64)) (t!42234 List!28698)) )
))
(declare-fun arrayNoDuplicates!0 (array!83191 (_ BitVec 32) List!28698) Bool)

(assert (=> b!1271701 (= lt!574868 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28695))))

(declare-fun b!1271702 () Bool)

(declare-fun res!846111 () Bool)

(assert (=> b!1271702 (=> (not res!846111) (not e!725288))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271702 (= res!846111 (and (= (size!40664 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40665 _keys!1364) (size!40664 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!51076 () Bool)

(declare-fun tp!97418 () Bool)

(assert (=> mapNonEmpty!51076 (= mapRes!51076 (and tp!97418 e!725286))))

(declare-fun mapRest!51076 () (Array (_ BitVec 32) ValueCell!15645))

(declare-fun mapValue!51076 () ValueCell!15645)

(declare-fun mapKey!51076 () (_ BitVec 32))

(assert (=> mapNonEmpty!51076 (= (arr!40127 _values!1134) (store mapRest!51076 mapKey!51076 mapValue!51076))))

(declare-fun res!846112 () Bool)

(assert (=> start!107344 (=> (not res!846112) (not e!725288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107344 (= res!846112 (validMask!0 mask!1730))))

(assert (=> start!107344 e!725288))

(declare-fun array_inv!30459 (array!83189) Bool)

(assert (=> start!107344 (and (array_inv!30459 _values!1134) e!725285)))

(assert (=> start!107344 true))

(declare-fun array_inv!30460 (array!83191) Bool)

(assert (=> start!107344 (array_inv!30460 _keys!1364)))

(declare-fun mapIsEmpty!51076 () Bool)

(assert (=> mapIsEmpty!51076 mapRes!51076))

(assert (= (and start!107344 res!846112) b!1271702))

(assert (= (and b!1271702 res!846111) b!1271700))

(assert (= (and b!1271700 res!846113) b!1271701))

(assert (= (and b!1271699 condMapEmpty!51076) mapIsEmpty!51076))

(assert (= (and b!1271699 (not condMapEmpty!51076)) mapNonEmpty!51076))

(get-info :version)

(assert (= (and mapNonEmpty!51076 ((_ is ValueCellFull!15645) mapValue!51076)) b!1271698))

(assert (= (and b!1271699 ((_ is ValueCellFull!15645) mapDefault!51076)) b!1271697))

(assert (= start!107344 b!1271699))

(declare-fun m!1169573 () Bool)

(assert (=> b!1271700 m!1169573))

(declare-fun m!1169575 () Bool)

(assert (=> b!1271701 m!1169575))

(declare-fun m!1169577 () Bool)

(assert (=> mapNonEmpty!51076 m!1169577))

(declare-fun m!1169579 () Bool)

(assert (=> start!107344 m!1169579))

(declare-fun m!1169581 () Bool)

(assert (=> start!107344 m!1169581))

(declare-fun m!1169583 () Bool)

(assert (=> start!107344 m!1169583))

(check-sat (not b!1271700) tp_is_empty!32997 (not start!107344) (not b!1271701) (not mapNonEmpty!51076))
(check-sat)
