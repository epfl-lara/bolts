; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107260 () Bool)

(assert start!107260)

(declare-fun b!1270941 () Bool)

(declare-fun res!845734 () Bool)

(declare-fun e!724658 () Bool)

(assert (=> b!1270941 (=> (not res!845734) (not e!724658))))

(declare-datatypes ((array!83043 0))(
  ( (array!83044 (arr!40054 (Array (_ BitVec 32) (_ BitVec 64))) (size!40591 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83043)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83043 (_ BitVec 32)) Bool)

(assert (=> b!1270941 (= res!845734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapNonEmpty!50950 () Bool)

(declare-fun mapRes!50950 () Bool)

(declare-fun tp!97292 () Bool)

(declare-fun e!724654 () Bool)

(assert (=> mapNonEmpty!50950 (= mapRes!50950 (and tp!97292 e!724654))))

(declare-datatypes ((V!49077 0))(
  ( (V!49078 (val!16531 Int)) )
))
(declare-datatypes ((ValueCell!15603 0))(
  ( (ValueCellFull!15603 (v!19166 V!49077)) (EmptyCell!15603) )
))
(declare-fun mapRest!50950 () (Array (_ BitVec 32) ValueCell!15603))

(declare-fun mapValue!50950 () ValueCell!15603)

(declare-fun mapKey!50950 () (_ BitVec 32))

(declare-datatypes ((array!83045 0))(
  ( (array!83046 (arr!40055 (Array (_ BitVec 32) ValueCell!15603)) (size!40592 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83045)

(assert (=> mapNonEmpty!50950 (= (arr!40055 _values!1134) (store mapRest!50950 mapKey!50950 mapValue!50950))))

(declare-fun b!1270942 () Bool)

(declare-fun e!724656 () Bool)

(declare-fun e!724657 () Bool)

(assert (=> b!1270942 (= e!724656 (and e!724657 mapRes!50950))))

(declare-fun condMapEmpty!50950 () Bool)

(declare-fun mapDefault!50950 () ValueCell!15603)

(assert (=> b!1270942 (= condMapEmpty!50950 (= (arr!40055 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15603)) mapDefault!50950)))))

(declare-fun b!1270943 () Bool)

(assert (=> b!1270943 (= e!724658 false)))

(declare-fun lt!574742 () Bool)

(declare-datatypes ((List!28673 0))(
  ( (Nil!28670) (Cons!28669 (h!29878 (_ BitVec 64)) (t!42209 List!28673)) )
))
(declare-fun arrayNoDuplicates!0 (array!83043 (_ BitVec 32) List!28673) Bool)

(assert (=> b!1270943 (= lt!574742 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28670))))

(declare-fun b!1270945 () Bool)

(declare-fun tp_is_empty!32913 () Bool)

(assert (=> b!1270945 (= e!724654 tp_is_empty!32913)))

(declare-fun b!1270946 () Bool)

(assert (=> b!1270946 (= e!724657 tp_is_empty!32913)))

(declare-fun mapIsEmpty!50950 () Bool)

(assert (=> mapIsEmpty!50950 mapRes!50950))

(declare-fun b!1270944 () Bool)

(declare-fun res!845735 () Bool)

(assert (=> b!1270944 (=> (not res!845735) (not e!724658))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270944 (= res!845735 (and (= (size!40592 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40591 _keys!1364) (size!40592 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun res!845733 () Bool)

(assert (=> start!107260 (=> (not res!845733) (not e!724658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107260 (= res!845733 (validMask!0 mask!1730))))

(assert (=> start!107260 e!724658))

(declare-fun array_inv!30409 (array!83045) Bool)

(assert (=> start!107260 (and (array_inv!30409 _values!1134) e!724656)))

(assert (=> start!107260 true))

(declare-fun array_inv!30410 (array!83043) Bool)

(assert (=> start!107260 (array_inv!30410 _keys!1364)))

(assert (= (and start!107260 res!845733) b!1270944))

(assert (= (and b!1270944 res!845735) b!1270941))

(assert (= (and b!1270941 res!845734) b!1270943))

(assert (= (and b!1270942 condMapEmpty!50950) mapIsEmpty!50950))

(assert (= (and b!1270942 (not condMapEmpty!50950)) mapNonEmpty!50950))

(get-info :version)

(assert (= (and mapNonEmpty!50950 ((_ is ValueCellFull!15603) mapValue!50950)) b!1270945))

(assert (= (and b!1270942 ((_ is ValueCellFull!15603) mapDefault!50950)) b!1270946))

(assert (= start!107260 b!1270942))

(declare-fun m!1169069 () Bool)

(assert (=> b!1270941 m!1169069))

(declare-fun m!1169071 () Bool)

(assert (=> mapNonEmpty!50950 m!1169071))

(declare-fun m!1169073 () Bool)

(assert (=> b!1270943 m!1169073))

(declare-fun m!1169075 () Bool)

(assert (=> start!107260 m!1169075))

(declare-fun m!1169077 () Bool)

(assert (=> start!107260 m!1169077))

(declare-fun m!1169079 () Bool)

(assert (=> start!107260 m!1169079))

(check-sat (not b!1270941) tp_is_empty!32913 (not start!107260) (not b!1270943) (not mapNonEmpty!50950))
(check-sat)
