; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107272 () Bool)

(assert start!107272)

(declare-fun b!1271049 () Bool)

(declare-fun res!845789 () Bool)

(declare-fun e!724747 () Bool)

(assert (=> b!1271049 (=> (not res!845789) (not e!724747))))

(declare-datatypes ((V!49093 0))(
  ( (V!49094 (val!16537 Int)) )
))
(declare-datatypes ((ValueCell!15609 0))(
  ( (ValueCellFull!15609 (v!19172 V!49093)) (EmptyCell!15609) )
))
(declare-datatypes ((array!83063 0))(
  ( (array!83064 (arr!40064 (Array (_ BitVec 32) ValueCell!15609)) (size!40601 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83063)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!83065 0))(
  ( (array!83066 (arr!40065 (Array (_ BitVec 32) (_ BitVec 64))) (size!40602 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83065)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271049 (= res!845789 (and (= (size!40601 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40602 _keys!1364) (size!40601 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271050 () Bool)

(declare-fun e!724744 () Bool)

(declare-fun tp_is_empty!32925 () Bool)

(assert (=> b!1271050 (= e!724744 tp_is_empty!32925)))

(declare-fun b!1271051 () Bool)

(declare-fun res!845788 () Bool)

(assert (=> b!1271051 (=> (not res!845788) (not e!724747))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83065 (_ BitVec 32)) Bool)

(assert (=> b!1271051 (= res!845788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1271052 () Bool)

(declare-fun e!724748 () Bool)

(declare-fun mapRes!50968 () Bool)

(assert (=> b!1271052 (= e!724748 (and e!724744 mapRes!50968))))

(declare-fun condMapEmpty!50968 () Bool)

(declare-fun mapDefault!50968 () ValueCell!15609)

(assert (=> b!1271052 (= condMapEmpty!50968 (= (arr!40064 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15609)) mapDefault!50968)))))

(declare-fun b!1271053 () Bool)

(declare-fun e!724745 () Bool)

(assert (=> b!1271053 (= e!724745 tp_is_empty!32925)))

(declare-fun mapIsEmpty!50968 () Bool)

(assert (=> mapIsEmpty!50968 mapRes!50968))

(declare-fun res!845787 () Bool)

(assert (=> start!107272 (=> (not res!845787) (not e!724747))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107272 (= res!845787 (validMask!0 mask!1730))))

(assert (=> start!107272 e!724747))

(declare-fun array_inv!30417 (array!83063) Bool)

(assert (=> start!107272 (and (array_inv!30417 _values!1134) e!724748)))

(assert (=> start!107272 true))

(declare-fun array_inv!30418 (array!83065) Bool)

(assert (=> start!107272 (array_inv!30418 _keys!1364)))

(declare-fun mapNonEmpty!50968 () Bool)

(declare-fun tp!97310 () Bool)

(assert (=> mapNonEmpty!50968 (= mapRes!50968 (and tp!97310 e!724745))))

(declare-fun mapValue!50968 () ValueCell!15609)

(declare-fun mapKey!50968 () (_ BitVec 32))

(declare-fun mapRest!50968 () (Array (_ BitVec 32) ValueCell!15609))

(assert (=> mapNonEmpty!50968 (= (arr!40064 _values!1134) (store mapRest!50968 mapKey!50968 mapValue!50968))))

(declare-fun b!1271054 () Bool)

(assert (=> b!1271054 (= e!724747 false)))

(declare-fun lt!574760 () Bool)

(declare-datatypes ((List!28677 0))(
  ( (Nil!28674) (Cons!28673 (h!29882 (_ BitVec 64)) (t!42213 List!28677)) )
))
(declare-fun arrayNoDuplicates!0 (array!83065 (_ BitVec 32) List!28677) Bool)

(assert (=> b!1271054 (= lt!574760 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28674))))

(assert (= (and start!107272 res!845787) b!1271049))

(assert (= (and b!1271049 res!845789) b!1271051))

(assert (= (and b!1271051 res!845788) b!1271054))

(assert (= (and b!1271052 condMapEmpty!50968) mapIsEmpty!50968))

(assert (= (and b!1271052 (not condMapEmpty!50968)) mapNonEmpty!50968))

(get-info :version)

(assert (= (and mapNonEmpty!50968 ((_ is ValueCellFull!15609) mapValue!50968)) b!1271053))

(assert (= (and b!1271052 ((_ is ValueCellFull!15609) mapDefault!50968)) b!1271050))

(assert (= start!107272 b!1271052))

(declare-fun m!1169141 () Bool)

(assert (=> b!1271051 m!1169141))

(declare-fun m!1169143 () Bool)

(assert (=> start!107272 m!1169143))

(declare-fun m!1169145 () Bool)

(assert (=> start!107272 m!1169145))

(declare-fun m!1169147 () Bool)

(assert (=> start!107272 m!1169147))

(declare-fun m!1169149 () Bool)

(assert (=> mapNonEmpty!50968 m!1169149))

(declare-fun m!1169151 () Bool)

(assert (=> b!1271054 m!1169151))

(check-sat (not mapNonEmpty!50968) tp_is_empty!32925 (not b!1271051) (not b!1271054) (not start!107272))
(check-sat)
