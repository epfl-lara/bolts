; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107230 () Bool)

(assert start!107230)

(declare-fun b!1270671 () Bool)

(declare-fun res!845598 () Bool)

(declare-fun e!724433 () Bool)

(assert (=> b!1270671 (=> (not res!845598) (not e!724433))))

(declare-datatypes ((V!49037 0))(
  ( (V!49038 (val!16516 Int)) )
))
(declare-datatypes ((ValueCell!15588 0))(
  ( (ValueCellFull!15588 (v!19151 V!49037)) (EmptyCell!15588) )
))
(declare-datatypes ((array!82987 0))(
  ( (array!82988 (arr!40026 (Array (_ BitVec 32) ValueCell!15588)) (size!40563 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82987)

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82989 0))(
  ( (array!82990 (arr!40027 (Array (_ BitVec 32) (_ BitVec 64))) (size!40564 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82989)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270671 (= res!845598 (and (= (size!40563 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40564 _keys!1364) (size!40563 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270672 () Bool)

(declare-fun res!845600 () Bool)

(assert (=> b!1270672 (=> (not res!845600) (not e!724433))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82989 (_ BitVec 32)) Bool)

(assert (=> b!1270672 (= res!845600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapIsEmpty!50905 () Bool)

(declare-fun mapRes!50905 () Bool)

(assert (=> mapIsEmpty!50905 mapRes!50905))

(declare-fun b!1270673 () Bool)

(declare-fun e!724431 () Bool)

(declare-fun e!724432 () Bool)

(assert (=> b!1270673 (= e!724431 (and e!724432 mapRes!50905))))

(declare-fun condMapEmpty!50905 () Bool)

(declare-fun mapDefault!50905 () ValueCell!15588)

(assert (=> b!1270673 (= condMapEmpty!50905 (= (arr!40026 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15588)) mapDefault!50905)))))

(declare-fun res!845599 () Bool)

(assert (=> start!107230 (=> (not res!845599) (not e!724433))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107230 (= res!845599 (validMask!0 mask!1730))))

(assert (=> start!107230 e!724433))

(declare-fun array_inv!30393 (array!82987) Bool)

(assert (=> start!107230 (and (array_inv!30393 _values!1134) e!724431)))

(assert (=> start!107230 true))

(declare-fun array_inv!30394 (array!82989) Bool)

(assert (=> start!107230 (array_inv!30394 _keys!1364)))

(declare-fun b!1270674 () Bool)

(assert (=> b!1270674 (= e!724433 false)))

(declare-fun lt!574697 () Bool)

(declare-datatypes ((List!28662 0))(
  ( (Nil!28659) (Cons!28658 (h!29867 (_ BitVec 64)) (t!42198 List!28662)) )
))
(declare-fun arrayNoDuplicates!0 (array!82989 (_ BitVec 32) List!28662) Bool)

(assert (=> b!1270674 (= lt!574697 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28659))))

(declare-fun b!1270675 () Bool)

(declare-fun tp_is_empty!32883 () Bool)

(assert (=> b!1270675 (= e!724432 tp_is_empty!32883)))

(declare-fun mapNonEmpty!50905 () Bool)

(declare-fun tp!97247 () Bool)

(declare-fun e!724430 () Bool)

(assert (=> mapNonEmpty!50905 (= mapRes!50905 (and tp!97247 e!724430))))

(declare-fun mapRest!50905 () (Array (_ BitVec 32) ValueCell!15588))

(declare-fun mapValue!50905 () ValueCell!15588)

(declare-fun mapKey!50905 () (_ BitVec 32))

(assert (=> mapNonEmpty!50905 (= (arr!40026 _values!1134) (store mapRest!50905 mapKey!50905 mapValue!50905))))

(declare-fun b!1270676 () Bool)

(assert (=> b!1270676 (= e!724430 tp_is_empty!32883)))

(assert (= (and start!107230 res!845599) b!1270671))

(assert (= (and b!1270671 res!845598) b!1270672))

(assert (= (and b!1270672 res!845600) b!1270674))

(assert (= (and b!1270673 condMapEmpty!50905) mapIsEmpty!50905))

(assert (= (and b!1270673 (not condMapEmpty!50905)) mapNonEmpty!50905))

(get-info :version)

(assert (= (and mapNonEmpty!50905 ((_ is ValueCellFull!15588) mapValue!50905)) b!1270676))

(assert (= (and b!1270673 ((_ is ValueCellFull!15588) mapDefault!50905)) b!1270675))

(assert (= start!107230 b!1270673))

(declare-fun m!1168889 () Bool)

(assert (=> b!1270672 m!1168889))

(declare-fun m!1168891 () Bool)

(assert (=> start!107230 m!1168891))

(declare-fun m!1168893 () Bool)

(assert (=> start!107230 m!1168893))

(declare-fun m!1168895 () Bool)

(assert (=> start!107230 m!1168895))

(declare-fun m!1168897 () Bool)

(assert (=> b!1270674 m!1168897))

(declare-fun m!1168899 () Bool)

(assert (=> mapNonEmpty!50905 m!1168899))

(check-sat tp_is_empty!32883 (not b!1270672) (not b!1270674) (not mapNonEmpty!50905) (not start!107230))
(check-sat)
