; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35682 () Bool)

(assert start!35682)

(declare-fun b!358152 () Bool)

(declare-fun e!219220 () Bool)

(declare-fun tp_is_empty!8127 () Bool)

(assert (=> b!358152 (= e!219220 tp_is_empty!8127)))

(declare-fun b!358153 () Bool)

(declare-fun res!199142 () Bool)

(declare-fun e!219218 () Bool)

(assert (=> b!358153 (=> (not res!199142) (not e!219218))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19783 0))(
  ( (array!19784 (arr!9382 (Array (_ BitVec 32) (_ BitVec 64))) (size!9734 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19783)

(declare-datatypes ((V!11813 0))(
  ( (V!11814 (val!4108 Int)) )
))
(declare-datatypes ((ValueCell!3720 0))(
  ( (ValueCellFull!3720 (v!6298 V!11813)) (EmptyCell!3720) )
))
(declare-datatypes ((array!19785 0))(
  ( (array!19786 (arr!9383 (Array (_ BitVec 32) ValueCell!3720)) (size!9735 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19785)

(assert (=> b!358153 (= res!199142 (and (= (size!9735 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9734 _keys!1456) (size!9735 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun res!199144 () Bool)

(assert (=> start!35682 (=> (not res!199144) (not e!219218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35682 (= res!199144 (validMask!0 mask!1842))))

(assert (=> start!35682 e!219218))

(assert (=> start!35682 true))

(declare-fun e!219217 () Bool)

(declare-fun array_inv!6896 (array!19785) Bool)

(assert (=> start!35682 (and (array_inv!6896 _values!1208) e!219217)))

(declare-fun array_inv!6897 (array!19783) Bool)

(assert (=> start!35682 (array_inv!6897 _keys!1456)))

(declare-fun mapNonEmpty!13698 () Bool)

(declare-fun mapRes!13698 () Bool)

(declare-fun tp!27756 () Bool)

(declare-fun e!219219 () Bool)

(assert (=> mapNonEmpty!13698 (= mapRes!13698 (and tp!27756 e!219219))))

(declare-fun mapRest!13698 () (Array (_ BitVec 32) ValueCell!3720))

(declare-fun mapKey!13698 () (_ BitVec 32))

(declare-fun mapValue!13698 () ValueCell!3720)

(assert (=> mapNonEmpty!13698 (= (arr!9383 _values!1208) (store mapRest!13698 mapKey!13698 mapValue!13698))))

(declare-fun b!358154 () Bool)

(assert (=> b!358154 (= e!219218 false)))

(declare-fun lt!166138 () Bool)

(declare-datatypes ((List!5447 0))(
  ( (Nil!5444) (Cons!5443 (h!6299 (_ BitVec 64)) (t!10605 List!5447)) )
))
(declare-fun arrayNoDuplicates!0 (array!19783 (_ BitVec 32) List!5447) Bool)

(assert (=> b!358154 (= lt!166138 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5444))))

(declare-fun b!358155 () Bool)

(assert (=> b!358155 (= e!219219 tp_is_empty!8127)))

(declare-fun b!358156 () Bool)

(assert (=> b!358156 (= e!219217 (and e!219220 mapRes!13698))))

(declare-fun condMapEmpty!13698 () Bool)

(declare-fun mapDefault!13698 () ValueCell!3720)

(assert (=> b!358156 (= condMapEmpty!13698 (= (arr!9383 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3720)) mapDefault!13698)))))

(declare-fun b!358157 () Bool)

(declare-fun res!199143 () Bool)

(assert (=> b!358157 (=> (not res!199143) (not e!219218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19783 (_ BitVec 32)) Bool)

(assert (=> b!358157 (= res!199143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapIsEmpty!13698 () Bool)

(assert (=> mapIsEmpty!13698 mapRes!13698))

(assert (= (and start!35682 res!199144) b!358153))

(assert (= (and b!358153 res!199142) b!358157))

(assert (= (and b!358157 res!199143) b!358154))

(assert (= (and b!358156 condMapEmpty!13698) mapIsEmpty!13698))

(assert (= (and b!358156 (not condMapEmpty!13698)) mapNonEmpty!13698))

(get-info :version)

(assert (= (and mapNonEmpty!13698 ((_ is ValueCellFull!3720) mapValue!13698)) b!358155))

(assert (= (and b!358156 ((_ is ValueCellFull!3720) mapDefault!13698)) b!358152))

(assert (= start!35682 b!358156))

(declare-fun m!356055 () Bool)

(assert (=> start!35682 m!356055))

(declare-fun m!356057 () Bool)

(assert (=> start!35682 m!356057))

(declare-fun m!356059 () Bool)

(assert (=> start!35682 m!356059))

(declare-fun m!356061 () Bool)

(assert (=> mapNonEmpty!13698 m!356061))

(declare-fun m!356063 () Bool)

(assert (=> b!358154 m!356063))

(declare-fun m!356065 () Bool)

(assert (=> b!358157 m!356065))

(check-sat (not b!358154) (not start!35682) tp_is_empty!8127 (not b!358157) (not mapNonEmpty!13698))
(check-sat)
