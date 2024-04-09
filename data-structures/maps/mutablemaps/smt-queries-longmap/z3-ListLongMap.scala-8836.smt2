; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107278 () Bool)

(assert start!107278)

(declare-fun mapIsEmpty!50977 () Bool)

(declare-fun mapRes!50977 () Bool)

(assert (=> mapIsEmpty!50977 mapRes!50977))

(declare-fun b!1271103 () Bool)

(declare-fun res!845815 () Bool)

(declare-fun e!724793 () Bool)

(assert (=> b!1271103 (=> (not res!845815) (not e!724793))))

(declare-datatypes ((array!83075 0))(
  ( (array!83076 (arr!40070 (Array (_ BitVec 32) (_ BitVec 64))) (size!40607 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83075)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83075 (_ BitVec 32)) Bool)

(assert (=> b!1271103 (= res!845815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1271104 () Bool)

(declare-fun e!724789 () Bool)

(declare-fun tp_is_empty!32931 () Bool)

(assert (=> b!1271104 (= e!724789 tp_is_empty!32931)))

(declare-fun b!1271105 () Bool)

(declare-fun e!724791 () Bool)

(assert (=> b!1271105 (= e!724791 (and e!724789 mapRes!50977))))

(declare-fun condMapEmpty!50977 () Bool)

(declare-datatypes ((V!49101 0))(
  ( (V!49102 (val!16540 Int)) )
))
(declare-datatypes ((ValueCell!15612 0))(
  ( (ValueCellFull!15612 (v!19175 V!49101)) (EmptyCell!15612) )
))
(declare-datatypes ((array!83077 0))(
  ( (array!83078 (arr!40071 (Array (_ BitVec 32) ValueCell!15612)) (size!40608 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83077)

(declare-fun mapDefault!50977 () ValueCell!15612)

(assert (=> b!1271105 (= condMapEmpty!50977 (= (arr!40071 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15612)) mapDefault!50977)))))

(declare-fun res!845814 () Bool)

(assert (=> start!107278 (=> (not res!845814) (not e!724793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107278 (= res!845814 (validMask!0 mask!1730))))

(assert (=> start!107278 e!724793))

(declare-fun array_inv!30423 (array!83077) Bool)

(assert (=> start!107278 (and (array_inv!30423 _values!1134) e!724791)))

(assert (=> start!107278 true))

(declare-fun array_inv!30424 (array!83075) Bool)

(assert (=> start!107278 (array_inv!30424 _keys!1364)))

(declare-fun mapNonEmpty!50977 () Bool)

(declare-fun tp!97319 () Bool)

(declare-fun e!724792 () Bool)

(assert (=> mapNonEmpty!50977 (= mapRes!50977 (and tp!97319 e!724792))))

(declare-fun mapRest!50977 () (Array (_ BitVec 32) ValueCell!15612))

(declare-fun mapValue!50977 () ValueCell!15612)

(declare-fun mapKey!50977 () (_ BitVec 32))

(assert (=> mapNonEmpty!50977 (= (arr!40071 _values!1134) (store mapRest!50977 mapKey!50977 mapValue!50977))))

(declare-fun b!1271106 () Bool)

(assert (=> b!1271106 (= e!724793 false)))

(declare-fun lt!574769 () Bool)

(declare-datatypes ((List!28679 0))(
  ( (Nil!28676) (Cons!28675 (h!29884 (_ BitVec 64)) (t!42215 List!28679)) )
))
(declare-fun arrayNoDuplicates!0 (array!83075 (_ BitVec 32) List!28679) Bool)

(assert (=> b!1271106 (= lt!574769 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28676))))

(declare-fun b!1271107 () Bool)

(assert (=> b!1271107 (= e!724792 tp_is_empty!32931)))

(declare-fun b!1271108 () Bool)

(declare-fun res!845816 () Bool)

(assert (=> b!1271108 (=> (not res!845816) (not e!724793))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271108 (= res!845816 (and (= (size!40608 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40607 _keys!1364) (size!40608 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(assert (= (and start!107278 res!845814) b!1271108))

(assert (= (and b!1271108 res!845816) b!1271103))

(assert (= (and b!1271103 res!845815) b!1271106))

(assert (= (and b!1271105 condMapEmpty!50977) mapIsEmpty!50977))

(assert (= (and b!1271105 (not condMapEmpty!50977)) mapNonEmpty!50977))

(get-info :version)

(assert (= (and mapNonEmpty!50977 ((_ is ValueCellFull!15612) mapValue!50977)) b!1271107))

(assert (= (and b!1271105 ((_ is ValueCellFull!15612) mapDefault!50977)) b!1271104))

(assert (= start!107278 b!1271105))

(declare-fun m!1169177 () Bool)

(assert (=> b!1271103 m!1169177))

(declare-fun m!1169179 () Bool)

(assert (=> start!107278 m!1169179))

(declare-fun m!1169181 () Bool)

(assert (=> start!107278 m!1169181))

(declare-fun m!1169183 () Bool)

(assert (=> start!107278 m!1169183))

(declare-fun m!1169185 () Bool)

(assert (=> mapNonEmpty!50977 m!1169185))

(declare-fun m!1169187 () Bool)

(assert (=> b!1271106 m!1169187))

(check-sat (not start!107278) (not b!1271106) tp_is_empty!32931 (not mapNonEmpty!50977) (not b!1271103))
(check-sat)
