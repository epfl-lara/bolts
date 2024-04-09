; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107302 () Bool)

(assert start!107302)

(declare-fun b!1271319 () Bool)

(declare-fun res!845924 () Bool)

(declare-fun e!724973 () Bool)

(assert (=> b!1271319 (=> (not res!845924) (not e!724973))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!83119 0))(
  ( (array!83120 (arr!40092 (Array (_ BitVec 32) (_ BitVec 64))) (size!40629 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83119)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-datatypes ((V!49133 0))(
  ( (V!49134 (val!16552 Int)) )
))
(declare-datatypes ((ValueCell!15624 0))(
  ( (ValueCellFull!15624 (v!19187 V!49133)) (EmptyCell!15624) )
))
(declare-datatypes ((array!83121 0))(
  ( (array!83122 (arr!40093 (Array (_ BitVec 32) ValueCell!15624)) (size!40630 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83121)

(assert (=> b!1271319 (= res!845924 (and (= (size!40630 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40629 _keys!1364) (size!40630 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!51013 () Bool)

(declare-fun mapRes!51013 () Bool)

(assert (=> mapIsEmpty!51013 mapRes!51013))

(declare-fun b!1271321 () Bool)

(declare-fun e!724969 () Bool)

(declare-fun tp_is_empty!32955 () Bool)

(assert (=> b!1271321 (= e!724969 tp_is_empty!32955)))

(declare-fun mapNonEmpty!51013 () Bool)

(declare-fun tp!97355 () Bool)

(declare-fun e!724971 () Bool)

(assert (=> mapNonEmpty!51013 (= mapRes!51013 (and tp!97355 e!724971))))

(declare-fun mapKey!51013 () (_ BitVec 32))

(declare-fun mapValue!51013 () ValueCell!15624)

(declare-fun mapRest!51013 () (Array (_ BitVec 32) ValueCell!15624))

(assert (=> mapNonEmpty!51013 (= (arr!40093 _values!1134) (store mapRest!51013 mapKey!51013 mapValue!51013))))

(declare-fun b!1271322 () Bool)

(assert (=> b!1271322 (= e!724971 tp_is_empty!32955)))

(declare-fun res!845923 () Bool)

(assert (=> start!107302 (=> (not res!845923) (not e!724973))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107302 (= res!845923 (validMask!0 mask!1730))))

(assert (=> start!107302 e!724973))

(declare-fun e!724970 () Bool)

(declare-fun array_inv!30435 (array!83121) Bool)

(assert (=> start!107302 (and (array_inv!30435 _values!1134) e!724970)))

(assert (=> start!107302 true))

(declare-fun array_inv!30436 (array!83119) Bool)

(assert (=> start!107302 (array_inv!30436 _keys!1364)))

(declare-fun b!1271320 () Bool)

(assert (=> b!1271320 (= e!724970 (and e!724969 mapRes!51013))))

(declare-fun condMapEmpty!51013 () Bool)

(declare-fun mapDefault!51013 () ValueCell!15624)

(assert (=> b!1271320 (= condMapEmpty!51013 (= (arr!40093 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15624)) mapDefault!51013)))))

(declare-fun b!1271323 () Bool)

(assert (=> b!1271323 (= e!724973 false)))

(declare-fun lt!574805 () Bool)

(declare-datatypes ((List!28686 0))(
  ( (Nil!28683) (Cons!28682 (h!29891 (_ BitVec 64)) (t!42222 List!28686)) )
))
(declare-fun arrayNoDuplicates!0 (array!83119 (_ BitVec 32) List!28686) Bool)

(assert (=> b!1271323 (= lt!574805 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28683))))

(declare-fun b!1271324 () Bool)

(declare-fun res!845922 () Bool)

(assert (=> b!1271324 (=> (not res!845922) (not e!724973))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83119 (_ BitVec 32)) Bool)

(assert (=> b!1271324 (= res!845922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(assert (= (and start!107302 res!845923) b!1271319))

(assert (= (and b!1271319 res!845924) b!1271324))

(assert (= (and b!1271324 res!845922) b!1271323))

(assert (= (and b!1271320 condMapEmpty!51013) mapIsEmpty!51013))

(assert (= (and b!1271320 (not condMapEmpty!51013)) mapNonEmpty!51013))

(get-info :version)

(assert (= (and mapNonEmpty!51013 ((_ is ValueCellFull!15624) mapValue!51013)) b!1271322))

(assert (= (and b!1271320 ((_ is ValueCellFull!15624) mapDefault!51013)) b!1271321))

(assert (= start!107302 b!1271320))

(declare-fun m!1169321 () Bool)

(assert (=> mapNonEmpty!51013 m!1169321))

(declare-fun m!1169323 () Bool)

(assert (=> start!107302 m!1169323))

(declare-fun m!1169325 () Bool)

(assert (=> start!107302 m!1169325))

(declare-fun m!1169327 () Bool)

(assert (=> start!107302 m!1169327))

(declare-fun m!1169329 () Bool)

(assert (=> b!1271323 m!1169329))

(declare-fun m!1169331 () Bool)

(assert (=> b!1271324 m!1169331))

(check-sat (not b!1271324) tp_is_empty!32955 (not mapNonEmpty!51013) (not b!1271323) (not start!107302))
(check-sat)
