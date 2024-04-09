; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107182 () Bool)

(assert start!107182)

(declare-fun mapNonEmpty!50833 () Bool)

(declare-fun mapRes!50833 () Bool)

(declare-fun tp!97175 () Bool)

(declare-fun e!724072 () Bool)

(assert (=> mapNonEmpty!50833 (= mapRes!50833 (and tp!97175 e!724072))))

(declare-datatypes ((V!48973 0))(
  ( (V!48974 (val!16492 Int)) )
))
(declare-datatypes ((ValueCell!15564 0))(
  ( (ValueCellFull!15564 (v!19127 V!48973)) (EmptyCell!15564) )
))
(declare-fun mapValue!50833 () ValueCell!15564)

(declare-fun mapKey!50833 () (_ BitVec 32))

(declare-fun mapRest!50833 () (Array (_ BitVec 32) ValueCell!15564))

(declare-datatypes ((array!82901 0))(
  ( (array!82902 (arr!39983 (Array (_ BitVec 32) ValueCell!15564)) (size!40520 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82901)

(assert (=> mapNonEmpty!50833 (= (arr!39983 _values!1134) (store mapRest!50833 mapKey!50833 mapValue!50833))))

(declare-fun b!1270239 () Bool)

(declare-fun e!724070 () Bool)

(declare-fun tp_is_empty!32835 () Bool)

(assert (=> b!1270239 (= e!724070 tp_is_empty!32835)))

(declare-fun b!1270240 () Bool)

(declare-fun e!724073 () Bool)

(assert (=> b!1270240 (= e!724073 (and e!724070 mapRes!50833))))

(declare-fun condMapEmpty!50833 () Bool)

(declare-fun mapDefault!50833 () ValueCell!15564)

(assert (=> b!1270240 (= condMapEmpty!50833 (= (arr!39983 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15564)) mapDefault!50833)))))

(declare-fun res!845383 () Bool)

(declare-fun e!724071 () Bool)

(assert (=> start!107182 (=> (not res!845383) (not e!724071))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107182 (= res!845383 (validMask!0 mask!1730))))

(assert (=> start!107182 e!724071))

(declare-fun array_inv!30369 (array!82901) Bool)

(assert (=> start!107182 (and (array_inv!30369 _values!1134) e!724073)))

(assert (=> start!107182 true))

(declare-datatypes ((array!82903 0))(
  ( (array!82904 (arr!39984 (Array (_ BitVec 32) (_ BitVec 64))) (size!40521 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82903)

(declare-fun array_inv!30370 (array!82903) Bool)

(assert (=> start!107182 (array_inv!30370 _keys!1364)))

(declare-fun b!1270241 () Bool)

(declare-fun res!845382 () Bool)

(assert (=> b!1270241 (=> (not res!845382) (not e!724071))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1270241 (= res!845382 (and (= (size!40520 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40521 _keys!1364) (size!40520 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1270242 () Bool)

(assert (=> b!1270242 (= e!724071 false)))

(declare-fun lt!574625 () Bool)

(declare-datatypes ((List!28648 0))(
  ( (Nil!28645) (Cons!28644 (h!29853 (_ BitVec 64)) (t!42184 List!28648)) )
))
(declare-fun arrayNoDuplicates!0 (array!82903 (_ BitVec 32) List!28648) Bool)

(assert (=> b!1270242 (= lt!574625 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28645))))

(declare-fun b!1270243 () Bool)

(assert (=> b!1270243 (= e!724072 tp_is_empty!32835)))

(declare-fun b!1270244 () Bool)

(declare-fun res!845384 () Bool)

(assert (=> b!1270244 (=> (not res!845384) (not e!724071))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82903 (_ BitVec 32)) Bool)

(assert (=> b!1270244 (= res!845384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapIsEmpty!50833 () Bool)

(assert (=> mapIsEmpty!50833 mapRes!50833))

(assert (= (and start!107182 res!845383) b!1270241))

(assert (= (and b!1270241 res!845382) b!1270244))

(assert (= (and b!1270244 res!845384) b!1270242))

(assert (= (and b!1270240 condMapEmpty!50833) mapIsEmpty!50833))

(assert (= (and b!1270240 (not condMapEmpty!50833)) mapNonEmpty!50833))

(get-info :version)

(assert (= (and mapNonEmpty!50833 ((_ is ValueCellFull!15564) mapValue!50833)) b!1270243))

(assert (= (and b!1270240 ((_ is ValueCellFull!15564) mapDefault!50833)) b!1270239))

(assert (= start!107182 b!1270240))

(declare-fun m!1168601 () Bool)

(assert (=> mapNonEmpty!50833 m!1168601))

(declare-fun m!1168603 () Bool)

(assert (=> start!107182 m!1168603))

(declare-fun m!1168605 () Bool)

(assert (=> start!107182 m!1168605))

(declare-fun m!1168607 () Bool)

(assert (=> start!107182 m!1168607))

(declare-fun m!1168609 () Bool)

(assert (=> b!1270242 m!1168609))

(declare-fun m!1168611 () Bool)

(assert (=> b!1270244 m!1168611))

(check-sat (not b!1270244) (not mapNonEmpty!50833) (not b!1270242) (not start!107182) tp_is_empty!32835)
(check-sat)
