; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41282 () Bool)

(assert start!41282)

(declare-fun mapIsEmpty!20308 () Bool)

(declare-fun mapRes!20308 () Bool)

(assert (=> mapIsEmpty!20308 mapRes!20308))

(declare-fun b!461620 () Bool)

(declare-fun e!269224 () Bool)

(declare-fun e!269225 () Bool)

(assert (=> b!461620 (= e!269224 (and e!269225 mapRes!20308))))

(declare-fun condMapEmpty!20308 () Bool)

(declare-datatypes ((V!17685 0))(
  ( (V!17686 (val!6262 Int)) )
))
(declare-datatypes ((ValueCell!5874 0))(
  ( (ValueCellFull!5874 (v!8544 V!17685)) (EmptyCell!5874) )
))
(declare-datatypes ((array!28633 0))(
  ( (array!28634 (arr!13752 (Array (_ BitVec 32) ValueCell!5874)) (size!14104 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28633)

(declare-fun mapDefault!20308 () ValueCell!5874)

(assert (=> b!461620 (= condMapEmpty!20308 (= (arr!13752 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5874)) mapDefault!20308)))))

(declare-fun b!461621 () Bool)

(declare-fun e!269223 () Bool)

(declare-fun tp_is_empty!12435 () Bool)

(assert (=> b!461621 (= e!269223 tp_is_empty!12435)))

(declare-fun b!461622 () Bool)

(assert (=> b!461622 (= e!269225 tp_is_empty!12435)))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun b!461623 () Bool)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun e!269222 () Bool)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28635 0))(
  ( (array!28636 (arr!13753 (Array (_ BitVec 32) (_ BitVec 64))) (size!14105 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28635)

(assert (=> b!461623 (= e!269222 (and (= (size!14104 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14105 _keys!1025) (size!14104 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (size!14105 _keys!1025) (bvadd #b00000000000000000000000000000001 mask!1365)))))))

(declare-fun res!276213 () Bool)

(assert (=> start!41282 (=> (not res!276213) (not e!269222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41282 (= res!276213 (validMask!0 mask!1365))))

(assert (=> start!41282 e!269222))

(assert (=> start!41282 true))

(declare-fun array_inv!9932 (array!28635) Bool)

(assert (=> start!41282 (array_inv!9932 _keys!1025)))

(declare-fun array_inv!9933 (array!28633) Bool)

(assert (=> start!41282 (and (array_inv!9933 _values!833) e!269224)))

(declare-fun mapNonEmpty!20308 () Bool)

(declare-fun tp!39127 () Bool)

(assert (=> mapNonEmpty!20308 (= mapRes!20308 (and tp!39127 e!269223))))

(declare-fun mapValue!20308 () ValueCell!5874)

(declare-fun mapKey!20308 () (_ BitVec 32))

(declare-fun mapRest!20308 () (Array (_ BitVec 32) ValueCell!5874))

(assert (=> mapNonEmpty!20308 (= (arr!13752 _values!833) (store mapRest!20308 mapKey!20308 mapValue!20308))))

(assert (= (and start!41282 res!276213) b!461623))

(assert (= (and b!461620 condMapEmpty!20308) mapIsEmpty!20308))

(assert (= (and b!461620 (not condMapEmpty!20308)) mapNonEmpty!20308))

(get-info :version)

(assert (= (and mapNonEmpty!20308 ((_ is ValueCellFull!5874) mapValue!20308)) b!461621))

(assert (= (and b!461620 ((_ is ValueCellFull!5874) mapDefault!20308)) b!461622))

(assert (= start!41282 b!461620))

(declare-fun m!444825 () Bool)

(assert (=> start!41282 m!444825))

(declare-fun m!444827 () Bool)

(assert (=> start!41282 m!444827))

(declare-fun m!444829 () Bool)

(assert (=> start!41282 m!444829))

(declare-fun m!444831 () Bool)

(assert (=> mapNonEmpty!20308 m!444831))

(check-sat (not start!41282) (not mapNonEmpty!20308) tp_is_empty!12435)
(check-sat)
