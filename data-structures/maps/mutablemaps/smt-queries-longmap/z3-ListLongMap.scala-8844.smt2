; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107326 () Bool)

(assert start!107326)

(declare-fun b!1271535 () Bool)

(declare-fun e!725152 () Bool)

(declare-fun e!725151 () Bool)

(declare-fun mapRes!51049 () Bool)

(assert (=> b!1271535 (= e!725152 (and e!725151 mapRes!51049))))

(declare-fun condMapEmpty!51049 () Bool)

(declare-datatypes ((V!49165 0))(
  ( (V!49166 (val!16564 Int)) )
))
(declare-datatypes ((ValueCell!15636 0))(
  ( (ValueCellFull!15636 (v!19199 V!49165)) (EmptyCell!15636) )
))
(declare-datatypes ((array!83159 0))(
  ( (array!83160 (arr!40112 (Array (_ BitVec 32) ValueCell!15636)) (size!40649 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83159)

(declare-fun mapDefault!51049 () ValueCell!15636)

(assert (=> b!1271535 (= condMapEmpty!51049 (= (arr!40112 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15636)) mapDefault!51049)))))

(declare-fun mapNonEmpty!51049 () Bool)

(declare-fun tp!97391 () Bool)

(declare-fun e!725149 () Bool)

(assert (=> mapNonEmpty!51049 (= mapRes!51049 (and tp!97391 e!725149))))

(declare-fun mapRest!51049 () (Array (_ BitVec 32) ValueCell!15636))

(declare-fun mapKey!51049 () (_ BitVec 32))

(declare-fun mapValue!51049 () ValueCell!15636)

(assert (=> mapNonEmpty!51049 (= (arr!40112 _values!1134) (store mapRest!51049 mapKey!51049 mapValue!51049))))

(declare-fun b!1271536 () Bool)

(declare-fun tp_is_empty!32979 () Bool)

(assert (=> b!1271536 (= e!725151 tp_is_empty!32979)))

(declare-fun b!1271537 () Bool)

(declare-fun e!725153 () Bool)

(assert (=> b!1271537 (= e!725153 false)))

(declare-fun lt!574841 () Bool)

(declare-datatypes ((array!83161 0))(
  ( (array!83162 (arr!40113 (Array (_ BitVec 32) (_ BitVec 64))) (size!40650 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83161)

(declare-datatypes ((List!28692 0))(
  ( (Nil!28689) (Cons!28688 (h!29897 (_ BitVec 64)) (t!42228 List!28692)) )
))
(declare-fun arrayNoDuplicates!0 (array!83161 (_ BitVec 32) List!28692) Bool)

(assert (=> b!1271537 (= lt!574841 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28689))))

(declare-fun b!1271538 () Bool)

(declare-fun res!846032 () Bool)

(assert (=> b!1271538 (=> (not res!846032) (not e!725153))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(assert (=> b!1271538 (= res!846032 (and (= (size!40649 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40650 _keys!1364) (size!40649 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!846031 () Bool)

(assert (=> start!107326 (=> (not res!846031) (not e!725153))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107326 (= res!846031 (validMask!0 mask!1730))))

(assert (=> start!107326 e!725153))

(declare-fun array_inv!30447 (array!83159) Bool)

(assert (=> start!107326 (and (array_inv!30447 _values!1134) e!725152)))

(assert (=> start!107326 true))

(declare-fun array_inv!30448 (array!83161) Bool)

(assert (=> start!107326 (array_inv!30448 _keys!1364)))

(declare-fun mapIsEmpty!51049 () Bool)

(assert (=> mapIsEmpty!51049 mapRes!51049))

(declare-fun b!1271539 () Bool)

(declare-fun res!846030 () Bool)

(assert (=> b!1271539 (=> (not res!846030) (not e!725153))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83161 (_ BitVec 32)) Bool)

(assert (=> b!1271539 (= res!846030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1271540 () Bool)

(assert (=> b!1271540 (= e!725149 tp_is_empty!32979)))

(assert (= (and start!107326 res!846031) b!1271538))

(assert (= (and b!1271538 res!846032) b!1271539))

(assert (= (and b!1271539 res!846030) b!1271537))

(assert (= (and b!1271535 condMapEmpty!51049) mapIsEmpty!51049))

(assert (= (and b!1271535 (not condMapEmpty!51049)) mapNonEmpty!51049))

(get-info :version)

(assert (= (and mapNonEmpty!51049 ((_ is ValueCellFull!15636) mapValue!51049)) b!1271540))

(assert (= (and b!1271535 ((_ is ValueCellFull!15636) mapDefault!51049)) b!1271536))

(assert (= start!107326 b!1271535))

(declare-fun m!1169465 () Bool)

(assert (=> mapNonEmpty!51049 m!1169465))

(declare-fun m!1169467 () Bool)

(assert (=> b!1271537 m!1169467))

(declare-fun m!1169469 () Bool)

(assert (=> start!107326 m!1169469))

(declare-fun m!1169471 () Bool)

(assert (=> start!107326 m!1169471))

(declare-fun m!1169473 () Bool)

(assert (=> start!107326 m!1169473))

(declare-fun m!1169475 () Bool)

(assert (=> b!1271539 m!1169475))

(check-sat (not b!1271539) (not mapNonEmpty!51049) (not b!1271537) tp_is_empty!32979 (not start!107326))
(check-sat)
