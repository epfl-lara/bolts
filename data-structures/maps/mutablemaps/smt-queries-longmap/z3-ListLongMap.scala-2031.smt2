; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35352 () Bool)

(assert start!35352)

(declare-fun b!353734 () Bool)

(declare-fun res!196176 () Bool)

(declare-fun e!216726 () Bool)

(assert (=> b!353734 (=> (not res!196176) (not e!216726))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19175 0))(
  ( (array!19176 (arr!9079 (Array (_ BitVec 32) (_ BitVec 64))) (size!9431 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19175)

(declare-datatypes ((V!11389 0))(
  ( (V!11390 (val!3949 Int)) )
))
(declare-datatypes ((ValueCell!3561 0))(
  ( (ValueCellFull!3561 (v!6139 V!11389)) (EmptyCell!3561) )
))
(declare-datatypes ((array!19177 0))(
  ( (array!19178 (arr!9080 (Array (_ BitVec 32) ValueCell!3561)) (size!9432 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19177)

(assert (=> b!353734 (= res!196176 (and (= (size!9432 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9431 _keys!1456) (size!9432 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!353735 () Bool)

(declare-fun res!196175 () Bool)

(assert (=> b!353735 (=> (not res!196175) (not e!216726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19175 (_ BitVec 32)) Bool)

(assert (=> b!353735 (= res!196175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!196177 () Bool)

(assert (=> start!35352 (=> (not res!196177) (not e!216726))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35352 (= res!196177 (validMask!0 mask!1842))))

(assert (=> start!35352 e!216726))

(assert (=> start!35352 true))

(declare-fun e!216725 () Bool)

(declare-fun array_inv!6684 (array!19177) Bool)

(assert (=> start!35352 (and (array_inv!6684 _values!1208) e!216725)))

(declare-fun array_inv!6685 (array!19175) Bool)

(assert (=> start!35352 (array_inv!6685 _keys!1456)))

(declare-fun b!353736 () Bool)

(declare-fun e!216727 () Bool)

(declare-fun tp_is_empty!7809 () Bool)

(assert (=> b!353736 (= e!216727 tp_is_empty!7809)))

(declare-fun b!353737 () Bool)

(assert (=> b!353737 (= e!216726 false)))

(declare-fun lt!165589 () Bool)

(declare-datatypes ((List!5302 0))(
  ( (Nil!5299) (Cons!5298 (h!6154 (_ BitVec 64)) (t!10460 List!5302)) )
))
(declare-fun arrayNoDuplicates!0 (array!19175 (_ BitVec 32) List!5302) Bool)

(assert (=> b!353737 (= lt!165589 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5299))))

(declare-fun b!353738 () Bool)

(declare-fun e!216728 () Bool)

(assert (=> b!353738 (= e!216728 tp_is_empty!7809)))

(declare-fun b!353739 () Bool)

(declare-fun mapRes!13218 () Bool)

(assert (=> b!353739 (= e!216725 (and e!216727 mapRes!13218))))

(declare-fun condMapEmpty!13218 () Bool)

(declare-fun mapDefault!13218 () ValueCell!3561)

(assert (=> b!353739 (= condMapEmpty!13218 (= (arr!9080 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3561)) mapDefault!13218)))))

(declare-fun mapNonEmpty!13218 () Bool)

(declare-fun tp!27114 () Bool)

(assert (=> mapNonEmpty!13218 (= mapRes!13218 (and tp!27114 e!216728))))

(declare-fun mapRest!13218 () (Array (_ BitVec 32) ValueCell!3561))

(declare-fun mapKey!13218 () (_ BitVec 32))

(declare-fun mapValue!13218 () ValueCell!3561)

(assert (=> mapNonEmpty!13218 (= (arr!9080 _values!1208) (store mapRest!13218 mapKey!13218 mapValue!13218))))

(declare-fun mapIsEmpty!13218 () Bool)

(assert (=> mapIsEmpty!13218 mapRes!13218))

(assert (= (and start!35352 res!196177) b!353734))

(assert (= (and b!353734 res!196176) b!353735))

(assert (= (and b!353735 res!196175) b!353737))

(assert (= (and b!353739 condMapEmpty!13218) mapIsEmpty!13218))

(assert (= (and b!353739 (not condMapEmpty!13218)) mapNonEmpty!13218))

(get-info :version)

(assert (= (and mapNonEmpty!13218 ((_ is ValueCellFull!3561) mapValue!13218)) b!353738))

(assert (= (and b!353739 ((_ is ValueCellFull!3561) mapDefault!13218)) b!353736))

(assert (= start!35352 b!353739))

(declare-fun m!352971 () Bool)

(assert (=> b!353735 m!352971))

(declare-fun m!352973 () Bool)

(assert (=> start!35352 m!352973))

(declare-fun m!352975 () Bool)

(assert (=> start!35352 m!352975))

(declare-fun m!352977 () Bool)

(assert (=> start!35352 m!352977))

(declare-fun m!352979 () Bool)

(assert (=> b!353737 m!352979))

(declare-fun m!352981 () Bool)

(assert (=> mapNonEmpty!13218 m!352981))

(check-sat tp_is_empty!7809 (not b!353737) (not mapNonEmpty!13218) (not start!35352) (not b!353735))
(check-sat)
