; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107218 () Bool)

(assert start!107218)

(declare-fun b!1270563 () Bool)

(declare-fun e!724341 () Bool)

(declare-fun e!724342 () Bool)

(declare-fun mapRes!50887 () Bool)

(assert (=> b!1270563 (= e!724341 (and e!724342 mapRes!50887))))

(declare-fun condMapEmpty!50887 () Bool)

(declare-datatypes ((V!49021 0))(
  ( (V!49022 (val!16510 Int)) )
))
(declare-datatypes ((ValueCell!15582 0))(
  ( (ValueCellFull!15582 (v!19145 V!49021)) (EmptyCell!15582) )
))
(declare-datatypes ((array!82967 0))(
  ( (array!82968 (arr!40016 (Array (_ BitVec 32) ValueCell!15582)) (size!40553 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82967)

(declare-fun mapDefault!50887 () ValueCell!15582)

(assert (=> b!1270563 (= condMapEmpty!50887 (= (arr!40016 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15582)) mapDefault!50887)))))

(declare-fun b!1270564 () Bool)

(declare-fun e!724343 () Bool)

(declare-fun tp_is_empty!32871 () Bool)

(assert (=> b!1270564 (= e!724343 tp_is_empty!32871)))

(declare-fun b!1270565 () Bool)

(declare-fun res!845545 () Bool)

(declare-fun e!724339 () Bool)

(assert (=> b!1270565 (=> (not res!845545) (not e!724339))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82969 0))(
  ( (array!82970 (arr!40017 (Array (_ BitVec 32) (_ BitVec 64))) (size!40554 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82969)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270565 (= res!845545 (and (= (size!40553 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40554 _keys!1364) (size!40553 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270566 () Bool)

(declare-fun res!845544 () Bool)

(assert (=> b!1270566 (=> (not res!845544) (not e!724339))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82969 (_ BitVec 32)) Bool)

(assert (=> b!1270566 (= res!845544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapIsEmpty!50887 () Bool)

(assert (=> mapIsEmpty!50887 mapRes!50887))

(declare-fun res!845546 () Bool)

(assert (=> start!107218 (=> (not res!845546) (not e!724339))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107218 (= res!845546 (validMask!0 mask!1730))))

(assert (=> start!107218 e!724339))

(declare-fun array_inv!30389 (array!82967) Bool)

(assert (=> start!107218 (and (array_inv!30389 _values!1134) e!724341)))

(assert (=> start!107218 true))

(declare-fun array_inv!30390 (array!82969) Bool)

(assert (=> start!107218 (array_inv!30390 _keys!1364)))

(declare-fun b!1270567 () Bool)

(assert (=> b!1270567 (= e!724342 tp_is_empty!32871)))

(declare-fun mapNonEmpty!50887 () Bool)

(declare-fun tp!97229 () Bool)

(assert (=> mapNonEmpty!50887 (= mapRes!50887 (and tp!97229 e!724343))))

(declare-fun mapKey!50887 () (_ BitVec 32))

(declare-fun mapValue!50887 () ValueCell!15582)

(declare-fun mapRest!50887 () (Array (_ BitVec 32) ValueCell!15582))

(assert (=> mapNonEmpty!50887 (= (arr!40016 _values!1134) (store mapRest!50887 mapKey!50887 mapValue!50887))))

(declare-fun b!1270568 () Bool)

(assert (=> b!1270568 (= e!724339 false)))

(declare-fun lt!574679 () Bool)

(declare-datatypes ((List!28659 0))(
  ( (Nil!28656) (Cons!28655 (h!29864 (_ BitVec 64)) (t!42195 List!28659)) )
))
(declare-fun arrayNoDuplicates!0 (array!82969 (_ BitVec 32) List!28659) Bool)

(assert (=> b!1270568 (= lt!574679 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28656))))

(assert (= (and start!107218 res!845546) b!1270565))

(assert (= (and b!1270565 res!845545) b!1270566))

(assert (= (and b!1270566 res!845544) b!1270568))

(assert (= (and b!1270563 condMapEmpty!50887) mapIsEmpty!50887))

(assert (= (and b!1270563 (not condMapEmpty!50887)) mapNonEmpty!50887))

(get-info :version)

(assert (= (and mapNonEmpty!50887 ((_ is ValueCellFull!15582) mapValue!50887)) b!1270564))

(assert (= (and b!1270563 ((_ is ValueCellFull!15582) mapDefault!50887)) b!1270567))

(assert (= start!107218 b!1270563))

(declare-fun m!1168817 () Bool)

(assert (=> b!1270566 m!1168817))

(declare-fun m!1168819 () Bool)

(assert (=> start!107218 m!1168819))

(declare-fun m!1168821 () Bool)

(assert (=> start!107218 m!1168821))

(declare-fun m!1168823 () Bool)

(assert (=> start!107218 m!1168823))

(declare-fun m!1168825 () Bool)

(assert (=> mapNonEmpty!50887 m!1168825))

(declare-fun m!1168827 () Bool)

(assert (=> b!1270568 m!1168827))

(check-sat (not b!1270568) (not mapNonEmpty!50887) (not start!107218) tp_is_empty!32871 (not b!1270566))
(check-sat)
