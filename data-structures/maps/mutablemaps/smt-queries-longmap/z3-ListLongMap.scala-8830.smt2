; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107242 () Bool)

(assert start!107242)

(declare-fun b!1270779 () Bool)

(declare-fun e!724521 () Bool)

(declare-fun e!724520 () Bool)

(declare-fun mapRes!50923 () Bool)

(assert (=> b!1270779 (= e!724521 (and e!724520 mapRes!50923))))

(declare-fun condMapEmpty!50923 () Bool)

(declare-datatypes ((V!49053 0))(
  ( (V!49054 (val!16522 Int)) )
))
(declare-datatypes ((ValueCell!15594 0))(
  ( (ValueCellFull!15594 (v!19157 V!49053)) (EmptyCell!15594) )
))
(declare-datatypes ((array!83009 0))(
  ( (array!83010 (arr!40037 (Array (_ BitVec 32) ValueCell!15594)) (size!40574 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83009)

(declare-fun mapDefault!50923 () ValueCell!15594)

(assert (=> b!1270779 (= condMapEmpty!50923 (= (arr!40037 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15594)) mapDefault!50923)))))

(declare-fun res!845653 () Bool)

(declare-fun e!724523 () Bool)

(assert (=> start!107242 (=> (not res!845653) (not e!724523))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107242 (= res!845653 (validMask!0 mask!1730))))

(assert (=> start!107242 e!724523))

(declare-fun array_inv!30399 (array!83009) Bool)

(assert (=> start!107242 (and (array_inv!30399 _values!1134) e!724521)))

(assert (=> start!107242 true))

(declare-datatypes ((array!83011 0))(
  ( (array!83012 (arr!40038 (Array (_ BitVec 32) (_ BitVec 64))) (size!40575 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83011)

(declare-fun array_inv!30400 (array!83011) Bool)

(assert (=> start!107242 (array_inv!30400 _keys!1364)))

(declare-fun b!1270780 () Bool)

(declare-fun tp_is_empty!32895 () Bool)

(assert (=> b!1270780 (= e!724520 tp_is_empty!32895)))

(declare-fun b!1270781 () Bool)

(declare-fun res!845652 () Bool)

(assert (=> b!1270781 (=> (not res!845652) (not e!724523))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270781 (= res!845652 (and (= (size!40574 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40575 _keys!1364) (size!40574 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270782 () Bool)

(assert (=> b!1270782 (= e!724523 false)))

(declare-fun lt!574715 () Bool)

(declare-datatypes ((List!28666 0))(
  ( (Nil!28663) (Cons!28662 (h!29871 (_ BitVec 64)) (t!42202 List!28666)) )
))
(declare-fun arrayNoDuplicates!0 (array!83011 (_ BitVec 32) List!28666) Bool)

(assert (=> b!1270782 (= lt!574715 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28663))))

(declare-fun mapIsEmpty!50923 () Bool)

(assert (=> mapIsEmpty!50923 mapRes!50923))

(declare-fun mapNonEmpty!50923 () Bool)

(declare-fun tp!97265 () Bool)

(declare-fun e!724522 () Bool)

(assert (=> mapNonEmpty!50923 (= mapRes!50923 (and tp!97265 e!724522))))

(declare-fun mapRest!50923 () (Array (_ BitVec 32) ValueCell!15594))

(declare-fun mapValue!50923 () ValueCell!15594)

(declare-fun mapKey!50923 () (_ BitVec 32))

(assert (=> mapNonEmpty!50923 (= (arr!40037 _values!1134) (store mapRest!50923 mapKey!50923 mapValue!50923))))

(declare-fun b!1270783 () Bool)

(declare-fun res!845654 () Bool)

(assert (=> b!1270783 (=> (not res!845654) (not e!724523))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83011 (_ BitVec 32)) Bool)

(assert (=> b!1270783 (= res!845654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1270784 () Bool)

(assert (=> b!1270784 (= e!724522 tp_is_empty!32895)))

(assert (= (and start!107242 res!845653) b!1270781))

(assert (= (and b!1270781 res!845652) b!1270783))

(assert (= (and b!1270783 res!845654) b!1270782))

(assert (= (and b!1270779 condMapEmpty!50923) mapIsEmpty!50923))

(assert (= (and b!1270779 (not condMapEmpty!50923)) mapNonEmpty!50923))

(get-info :version)

(assert (= (and mapNonEmpty!50923 ((_ is ValueCellFull!15594) mapValue!50923)) b!1270784))

(assert (= (and b!1270779 ((_ is ValueCellFull!15594) mapDefault!50923)) b!1270780))

(assert (= start!107242 b!1270779))

(declare-fun m!1168961 () Bool)

(assert (=> start!107242 m!1168961))

(declare-fun m!1168963 () Bool)

(assert (=> start!107242 m!1168963))

(declare-fun m!1168965 () Bool)

(assert (=> start!107242 m!1168965))

(declare-fun m!1168967 () Bool)

(assert (=> b!1270782 m!1168967))

(declare-fun m!1168969 () Bool)

(assert (=> mapNonEmpty!50923 m!1168969))

(declare-fun m!1168971 () Bool)

(assert (=> b!1270783 m!1168971))

(check-sat (not mapNonEmpty!50923) (not start!107242) tp_is_empty!32895 (not b!1270782) (not b!1270783))
(check-sat)
