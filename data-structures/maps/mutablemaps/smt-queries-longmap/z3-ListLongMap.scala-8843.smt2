; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107320 () Bool)

(assert start!107320)

(declare-fun b!1271481 () Bool)

(declare-fun e!725106 () Bool)

(declare-fun tp_is_empty!32973 () Bool)

(assert (=> b!1271481 (= e!725106 tp_is_empty!32973)))

(declare-fun b!1271482 () Bool)

(declare-fun res!846003 () Bool)

(declare-fun e!725108 () Bool)

(assert (=> b!1271482 (=> (not res!846003) (not e!725108))))

(declare-datatypes ((array!83149 0))(
  ( (array!83150 (arr!40107 (Array (_ BitVec 32) (_ BitVec 64))) (size!40644 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83149)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83149 (_ BitVec 32)) Bool)

(assert (=> b!1271482 (= res!846003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1271483 () Bool)

(declare-fun e!725104 () Bool)

(declare-fun e!725105 () Bool)

(declare-fun mapRes!51040 () Bool)

(assert (=> b!1271483 (= e!725104 (and e!725105 mapRes!51040))))

(declare-fun condMapEmpty!51040 () Bool)

(declare-datatypes ((V!49157 0))(
  ( (V!49158 (val!16561 Int)) )
))
(declare-datatypes ((ValueCell!15633 0))(
  ( (ValueCellFull!15633 (v!19196 V!49157)) (EmptyCell!15633) )
))
(declare-datatypes ((array!83151 0))(
  ( (array!83152 (arr!40108 (Array (_ BitVec 32) ValueCell!15633)) (size!40645 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83151)

(declare-fun mapDefault!51040 () ValueCell!15633)

(assert (=> b!1271483 (= condMapEmpty!51040 (= (arr!40108 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15633)) mapDefault!51040)))))

(declare-fun b!1271484 () Bool)

(declare-fun res!846004 () Bool)

(assert (=> b!1271484 (=> (not res!846004) (not e!725108))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271484 (= res!846004 (and (= (size!40645 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40644 _keys!1364) (size!40645 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!51040 () Bool)

(assert (=> mapIsEmpty!51040 mapRes!51040))

(declare-fun b!1271485 () Bool)

(assert (=> b!1271485 (= e!725108 false)))

(declare-fun lt!574832 () Bool)

(declare-datatypes ((List!28691 0))(
  ( (Nil!28688) (Cons!28687 (h!29896 (_ BitVec 64)) (t!42227 List!28691)) )
))
(declare-fun arrayNoDuplicates!0 (array!83149 (_ BitVec 32) List!28691) Bool)

(assert (=> b!1271485 (= lt!574832 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28688))))

(declare-fun res!846005 () Bool)

(assert (=> start!107320 (=> (not res!846005) (not e!725108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107320 (= res!846005 (validMask!0 mask!1730))))

(assert (=> start!107320 e!725108))

(declare-fun array_inv!30443 (array!83151) Bool)

(assert (=> start!107320 (and (array_inv!30443 _values!1134) e!725104)))

(assert (=> start!107320 true))

(declare-fun array_inv!30444 (array!83149) Bool)

(assert (=> start!107320 (array_inv!30444 _keys!1364)))

(declare-fun mapNonEmpty!51040 () Bool)

(declare-fun tp!97382 () Bool)

(assert (=> mapNonEmpty!51040 (= mapRes!51040 (and tp!97382 e!725106))))

(declare-fun mapValue!51040 () ValueCell!15633)

(declare-fun mapRest!51040 () (Array (_ BitVec 32) ValueCell!15633))

(declare-fun mapKey!51040 () (_ BitVec 32))

(assert (=> mapNonEmpty!51040 (= (arr!40108 _values!1134) (store mapRest!51040 mapKey!51040 mapValue!51040))))

(declare-fun b!1271486 () Bool)

(assert (=> b!1271486 (= e!725105 tp_is_empty!32973)))

(assert (= (and start!107320 res!846005) b!1271484))

(assert (= (and b!1271484 res!846004) b!1271482))

(assert (= (and b!1271482 res!846003) b!1271485))

(assert (= (and b!1271483 condMapEmpty!51040) mapIsEmpty!51040))

(assert (= (and b!1271483 (not condMapEmpty!51040)) mapNonEmpty!51040))

(get-info :version)

(assert (= (and mapNonEmpty!51040 ((_ is ValueCellFull!15633) mapValue!51040)) b!1271481))

(assert (= (and b!1271483 ((_ is ValueCellFull!15633) mapDefault!51040)) b!1271486))

(assert (= start!107320 b!1271483))

(declare-fun m!1169429 () Bool)

(assert (=> b!1271482 m!1169429))

(declare-fun m!1169431 () Bool)

(assert (=> b!1271485 m!1169431))

(declare-fun m!1169433 () Bool)

(assert (=> start!107320 m!1169433))

(declare-fun m!1169435 () Bool)

(assert (=> start!107320 m!1169435))

(declare-fun m!1169437 () Bool)

(assert (=> start!107320 m!1169437))

(declare-fun m!1169439 () Bool)

(assert (=> mapNonEmpty!51040 m!1169439))

(check-sat (not mapNonEmpty!51040) (not b!1271485) (not start!107320) tp_is_empty!32973 (not b!1271482))
(check-sat)
