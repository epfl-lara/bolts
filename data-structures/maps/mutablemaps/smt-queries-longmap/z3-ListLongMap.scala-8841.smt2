; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107308 () Bool)

(assert start!107308)

(declare-fun b!1271373 () Bool)

(declare-fun res!845951 () Bool)

(declare-fun e!725016 () Bool)

(assert (=> b!1271373 (=> (not res!845951) (not e!725016))))

(declare-datatypes ((V!49141 0))(
  ( (V!49142 (val!16555 Int)) )
))
(declare-datatypes ((ValueCell!15627 0))(
  ( (ValueCellFull!15627 (v!19190 V!49141)) (EmptyCell!15627) )
))
(declare-datatypes ((array!83129 0))(
  ( (array!83130 (arr!40097 (Array (_ BitVec 32) ValueCell!15627)) (size!40634 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83129)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!83131 0))(
  ( (array!83132 (arr!40098 (Array (_ BitVec 32) (_ BitVec 64))) (size!40635 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83131)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271373 (= res!845951 (and (= (size!40634 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40635 _keys!1364) (size!40634 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271374 () Bool)

(declare-fun e!725017 () Bool)

(declare-fun tp_is_empty!32961 () Bool)

(assert (=> b!1271374 (= e!725017 tp_is_empty!32961)))

(declare-fun b!1271375 () Bool)

(declare-fun e!725018 () Bool)

(assert (=> b!1271375 (= e!725018 tp_is_empty!32961)))

(declare-fun res!845950 () Bool)

(assert (=> start!107308 (=> (not res!845950) (not e!725016))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107308 (= res!845950 (validMask!0 mask!1730))))

(assert (=> start!107308 e!725016))

(declare-fun e!725014 () Bool)

(declare-fun array_inv!30439 (array!83129) Bool)

(assert (=> start!107308 (and (array_inv!30439 _values!1134) e!725014)))

(assert (=> start!107308 true))

(declare-fun array_inv!30440 (array!83131) Bool)

(assert (=> start!107308 (array_inv!30440 _keys!1364)))

(declare-fun b!1271376 () Bool)

(declare-fun res!845949 () Bool)

(assert (=> b!1271376 (=> (not res!845949) (not e!725016))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83131 (_ BitVec 32)) Bool)

(assert (=> b!1271376 (= res!845949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapIsEmpty!51022 () Bool)

(declare-fun mapRes!51022 () Bool)

(assert (=> mapIsEmpty!51022 mapRes!51022))

(declare-fun b!1271377 () Bool)

(assert (=> b!1271377 (= e!725014 (and e!725017 mapRes!51022))))

(declare-fun condMapEmpty!51022 () Bool)

(declare-fun mapDefault!51022 () ValueCell!15627)

(assert (=> b!1271377 (= condMapEmpty!51022 (= (arr!40097 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15627)) mapDefault!51022)))))

(declare-fun mapNonEmpty!51022 () Bool)

(declare-fun tp!97364 () Bool)

(assert (=> mapNonEmpty!51022 (= mapRes!51022 (and tp!97364 e!725018))))

(declare-fun mapKey!51022 () (_ BitVec 32))

(declare-fun mapRest!51022 () (Array (_ BitVec 32) ValueCell!15627))

(declare-fun mapValue!51022 () ValueCell!15627)

(assert (=> mapNonEmpty!51022 (= (arr!40097 _values!1134) (store mapRest!51022 mapKey!51022 mapValue!51022))))

(declare-fun b!1271378 () Bool)

(assert (=> b!1271378 (= e!725016 false)))

(declare-fun lt!574814 () Bool)

(declare-datatypes ((List!28687 0))(
  ( (Nil!28684) (Cons!28683 (h!29892 (_ BitVec 64)) (t!42223 List!28687)) )
))
(declare-fun arrayNoDuplicates!0 (array!83131 (_ BitVec 32) List!28687) Bool)

(assert (=> b!1271378 (= lt!574814 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28684))))

(assert (= (and start!107308 res!845950) b!1271373))

(assert (= (and b!1271373 res!845951) b!1271376))

(assert (= (and b!1271376 res!845949) b!1271378))

(assert (= (and b!1271377 condMapEmpty!51022) mapIsEmpty!51022))

(assert (= (and b!1271377 (not condMapEmpty!51022)) mapNonEmpty!51022))

(get-info :version)

(assert (= (and mapNonEmpty!51022 ((_ is ValueCellFull!15627) mapValue!51022)) b!1271375))

(assert (= (and b!1271377 ((_ is ValueCellFull!15627) mapDefault!51022)) b!1271374))

(assert (= start!107308 b!1271377))

(declare-fun m!1169357 () Bool)

(assert (=> start!107308 m!1169357))

(declare-fun m!1169359 () Bool)

(assert (=> start!107308 m!1169359))

(declare-fun m!1169361 () Bool)

(assert (=> start!107308 m!1169361))

(declare-fun m!1169363 () Bool)

(assert (=> b!1271376 m!1169363))

(declare-fun m!1169365 () Bool)

(assert (=> mapNonEmpty!51022 m!1169365))

(declare-fun m!1169367 () Bool)

(assert (=> b!1271378 m!1169367))

(check-sat (not b!1271378) tp_is_empty!32961 (not start!107308) (not mapNonEmpty!51022) (not b!1271376))
(check-sat)
