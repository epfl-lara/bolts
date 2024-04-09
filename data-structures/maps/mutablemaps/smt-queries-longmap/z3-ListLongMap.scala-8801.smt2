; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107068 () Bool)

(assert start!107068)

(declare-fun b!1268889 () Bool)

(declare-fun res!844546 () Bool)

(declare-fun e!723218 () Bool)

(assert (=> b!1268889 (=> (not res!844546) (not e!723218))))

(declare-datatypes ((V!48821 0))(
  ( (V!48822 (val!16435 Int)) )
))
(declare-datatypes ((ValueCell!15507 0))(
  ( (ValueCellFull!15507 (v!19070 V!48821)) (EmptyCell!15507) )
))
(declare-datatypes ((array!82685 0))(
  ( (array!82686 (arr!39875 (Array (_ BitVec 32) ValueCell!15507)) (size!40412 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82685)

(declare-datatypes ((array!82687 0))(
  ( (array!82688 (arr!39876 (Array (_ BitVec 32) (_ BitVec 64))) (size!40413 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82687)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(assert (=> b!1268889 (= res!844546 (and (= (size!40412 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40413 _keys!1364) (size!40412 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1268890 () Bool)

(declare-fun e!723216 () Bool)

(declare-fun tp_is_empty!32721 () Bool)

(assert (=> b!1268890 (= e!723216 tp_is_empty!32721)))

(declare-fun mapNonEmpty!50662 () Bool)

(declare-fun mapRes!50662 () Bool)

(declare-fun tp!96842 () Bool)

(assert (=> mapNonEmpty!50662 (= mapRes!50662 (and tp!96842 e!723216))))

(declare-fun mapRest!50662 () (Array (_ BitVec 32) ValueCell!15507))

(declare-fun mapValue!50662 () ValueCell!15507)

(declare-fun mapKey!50662 () (_ BitVec 32))

(assert (=> mapNonEmpty!50662 (= (arr!39875 _values!1134) (store mapRest!50662 mapKey!50662 mapValue!50662))))

(declare-fun b!1268891 () Bool)

(assert (=> b!1268891 (= e!723218 false)))

(declare-fun lt!574454 () Bool)

(declare-datatypes ((List!28578 0))(
  ( (Nil!28575) (Cons!28574 (h!29783 (_ BitVec 64)) (t!42114 List!28578)) )
))
(declare-fun arrayNoDuplicates!0 (array!82687 (_ BitVec 32) List!28578) Bool)

(assert (=> b!1268891 (= lt!574454 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28575))))

(declare-fun b!1268892 () Bool)

(declare-fun res!844545 () Bool)

(assert (=> b!1268892 (=> (not res!844545) (not e!723218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82687 (_ BitVec 32)) Bool)

(assert (=> b!1268892 (= res!844545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun res!844547 () Bool)

(assert (=> start!107068 (=> (not res!844547) (not e!723218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107068 (= res!844547 (validMask!0 mask!1730))))

(assert (=> start!107068 e!723218))

(declare-fun e!723215 () Bool)

(declare-fun array_inv!30301 (array!82685) Bool)

(assert (=> start!107068 (and (array_inv!30301 _values!1134) e!723215)))

(assert (=> start!107068 true))

(declare-fun array_inv!30302 (array!82687) Bool)

(assert (=> start!107068 (array_inv!30302 _keys!1364)))

(declare-fun b!1268893 () Bool)

(declare-fun e!723214 () Bool)

(assert (=> b!1268893 (= e!723214 tp_is_empty!32721)))

(declare-fun mapIsEmpty!50662 () Bool)

(assert (=> mapIsEmpty!50662 mapRes!50662))

(declare-fun b!1268894 () Bool)

(assert (=> b!1268894 (= e!723215 (and e!723214 mapRes!50662))))

(declare-fun condMapEmpty!50662 () Bool)

(declare-fun mapDefault!50662 () ValueCell!15507)

(assert (=> b!1268894 (= condMapEmpty!50662 (= (arr!39875 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15507)) mapDefault!50662)))))

(assert (= (and start!107068 res!844547) b!1268889))

(assert (= (and b!1268889 res!844546) b!1268892))

(assert (= (and b!1268892 res!844545) b!1268891))

(assert (= (and b!1268894 condMapEmpty!50662) mapIsEmpty!50662))

(assert (= (and b!1268894 (not condMapEmpty!50662)) mapNonEmpty!50662))

(get-info :version)

(assert (= (and mapNonEmpty!50662 ((_ is ValueCellFull!15507) mapValue!50662)) b!1268890))

(assert (= (and b!1268894 ((_ is ValueCellFull!15507) mapDefault!50662)) b!1268893))

(assert (= start!107068 b!1268894))

(declare-fun m!1167593 () Bool)

(assert (=> mapNonEmpty!50662 m!1167593))

(declare-fun m!1167595 () Bool)

(assert (=> b!1268891 m!1167595))

(declare-fun m!1167597 () Bool)

(assert (=> b!1268892 m!1167597))

(declare-fun m!1167599 () Bool)

(assert (=> start!107068 m!1167599))

(declare-fun m!1167601 () Bool)

(assert (=> start!107068 m!1167601))

(declare-fun m!1167603 () Bool)

(assert (=> start!107068 m!1167603))

(check-sat tp_is_empty!32721 (not mapNonEmpty!50662) (not b!1268891) (not start!107068) (not b!1268892))
(check-sat)
