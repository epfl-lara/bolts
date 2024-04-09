; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107314 () Bool)

(assert start!107314)

(declare-fun b!1271427 () Bool)

(declare-fun e!725063 () Bool)

(declare-fun tp_is_empty!32967 () Bool)

(assert (=> b!1271427 (= e!725063 tp_is_empty!32967)))

(declare-fun mapNonEmpty!51031 () Bool)

(declare-fun mapRes!51031 () Bool)

(declare-fun tp!97373 () Bool)

(assert (=> mapNonEmpty!51031 (= mapRes!51031 (and tp!97373 e!725063))))

(declare-datatypes ((V!49149 0))(
  ( (V!49150 (val!16558 Int)) )
))
(declare-datatypes ((ValueCell!15630 0))(
  ( (ValueCellFull!15630 (v!19193 V!49149)) (EmptyCell!15630) )
))
(declare-datatypes ((array!83141 0))(
  ( (array!83142 (arr!40103 (Array (_ BitVec 32) ValueCell!15630)) (size!40640 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83141)

(declare-fun mapRest!51031 () (Array (_ BitVec 32) ValueCell!15630))

(declare-fun mapValue!51031 () ValueCell!15630)

(declare-fun mapKey!51031 () (_ BitVec 32))

(assert (=> mapNonEmpty!51031 (= (arr!40103 _values!1134) (store mapRest!51031 mapKey!51031 mapValue!51031))))

(declare-fun b!1271428 () Bool)

(declare-fun e!725060 () Bool)

(declare-fun e!725062 () Bool)

(assert (=> b!1271428 (= e!725060 (and e!725062 mapRes!51031))))

(declare-fun condMapEmpty!51031 () Bool)

(declare-fun mapDefault!51031 () ValueCell!15630)

(assert (=> b!1271428 (= condMapEmpty!51031 (= (arr!40103 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15630)) mapDefault!51031)))))

(declare-fun mapIsEmpty!51031 () Bool)

(assert (=> mapIsEmpty!51031 mapRes!51031))

(declare-fun b!1271430 () Bool)

(declare-fun res!845977 () Bool)

(declare-fun e!725059 () Bool)

(assert (=> b!1271430 (=> (not res!845977) (not e!725059))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!83143 0))(
  ( (array!83144 (arr!40104 (Array (_ BitVec 32) (_ BitVec 64))) (size!40641 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83143)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271430 (= res!845977 (and (= (size!40640 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40641 _keys!1364) (size!40640 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271429 () Bool)

(assert (=> b!1271429 (= e!725059 false)))

(declare-fun lt!574823 () Bool)

(declare-datatypes ((List!28690 0))(
  ( (Nil!28687) (Cons!28686 (h!29895 (_ BitVec 64)) (t!42226 List!28690)) )
))
(declare-fun arrayNoDuplicates!0 (array!83143 (_ BitVec 32) List!28690) Bool)

(assert (=> b!1271429 (= lt!574823 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28687))))

(declare-fun res!845976 () Bool)

(assert (=> start!107314 (=> (not res!845976) (not e!725059))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107314 (= res!845976 (validMask!0 mask!1730))))

(assert (=> start!107314 e!725059))

(declare-fun array_inv!30441 (array!83141) Bool)

(assert (=> start!107314 (and (array_inv!30441 _values!1134) e!725060)))

(assert (=> start!107314 true))

(declare-fun array_inv!30442 (array!83143) Bool)

(assert (=> start!107314 (array_inv!30442 _keys!1364)))

(declare-fun b!1271431 () Bool)

(assert (=> b!1271431 (= e!725062 tp_is_empty!32967)))

(declare-fun b!1271432 () Bool)

(declare-fun res!845978 () Bool)

(assert (=> b!1271432 (=> (not res!845978) (not e!725059))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83143 (_ BitVec 32)) Bool)

(assert (=> b!1271432 (= res!845978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(assert (= (and start!107314 res!845976) b!1271430))

(assert (= (and b!1271430 res!845977) b!1271432))

(assert (= (and b!1271432 res!845978) b!1271429))

(assert (= (and b!1271428 condMapEmpty!51031) mapIsEmpty!51031))

(assert (= (and b!1271428 (not condMapEmpty!51031)) mapNonEmpty!51031))

(get-info :version)

(assert (= (and mapNonEmpty!51031 ((_ is ValueCellFull!15630) mapValue!51031)) b!1271427))

(assert (= (and b!1271428 ((_ is ValueCellFull!15630) mapDefault!51031)) b!1271431))

(assert (= start!107314 b!1271428))

(declare-fun m!1169393 () Bool)

(assert (=> mapNonEmpty!51031 m!1169393))

(declare-fun m!1169395 () Bool)

(assert (=> b!1271429 m!1169395))

(declare-fun m!1169397 () Bool)

(assert (=> start!107314 m!1169397))

(declare-fun m!1169399 () Bool)

(assert (=> start!107314 m!1169399))

(declare-fun m!1169401 () Bool)

(assert (=> start!107314 m!1169401))

(declare-fun m!1169403 () Bool)

(assert (=> b!1271432 m!1169403))

(check-sat (not mapNonEmpty!51031) tp_is_empty!32967 (not b!1271429) (not start!107314) (not b!1271432))
(check-sat)
