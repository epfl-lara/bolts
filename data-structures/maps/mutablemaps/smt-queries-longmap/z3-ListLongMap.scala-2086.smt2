; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35694 () Bool)

(assert start!35694)

(declare-fun b!358260 () Bool)

(declare-fun e!219310 () Bool)

(declare-fun e!219307 () Bool)

(declare-fun mapRes!13716 () Bool)

(assert (=> b!358260 (= e!219310 (and e!219307 mapRes!13716))))

(declare-fun condMapEmpty!13716 () Bool)

(declare-datatypes ((V!11829 0))(
  ( (V!11830 (val!4114 Int)) )
))
(declare-datatypes ((ValueCell!3726 0))(
  ( (ValueCellFull!3726 (v!6304 V!11829)) (EmptyCell!3726) )
))
(declare-datatypes ((array!19807 0))(
  ( (array!19808 (arr!9394 (Array (_ BitVec 32) ValueCell!3726)) (size!9746 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19807)

(declare-fun mapDefault!13716 () ValueCell!3726)

(assert (=> b!358260 (= condMapEmpty!13716 (= (arr!9394 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3726)) mapDefault!13716)))))

(declare-fun mapIsEmpty!13716 () Bool)

(assert (=> mapIsEmpty!13716 mapRes!13716))

(declare-fun b!358261 () Bool)

(declare-fun res!199197 () Bool)

(declare-fun e!219309 () Bool)

(assert (=> b!358261 (=> (not res!199197) (not e!219309))))

(declare-datatypes ((array!19809 0))(
  ( (array!19810 (arr!9395 (Array (_ BitVec 32) (_ BitVec 64))) (size!9747 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19809)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19809 (_ BitVec 32)) Bool)

(assert (=> b!358261 (= res!199197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!199196 () Bool)

(assert (=> start!35694 (=> (not res!199196) (not e!219309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35694 (= res!199196 (validMask!0 mask!1842))))

(assert (=> start!35694 e!219309))

(assert (=> start!35694 true))

(declare-fun array_inv!6904 (array!19807) Bool)

(assert (=> start!35694 (and (array_inv!6904 _values!1208) e!219310)))

(declare-fun array_inv!6905 (array!19809) Bool)

(assert (=> start!35694 (array_inv!6905 _keys!1456)))

(declare-fun mapNonEmpty!13716 () Bool)

(declare-fun tp!27774 () Bool)

(declare-fun e!219311 () Bool)

(assert (=> mapNonEmpty!13716 (= mapRes!13716 (and tp!27774 e!219311))))

(declare-fun mapRest!13716 () (Array (_ BitVec 32) ValueCell!3726))

(declare-fun mapValue!13716 () ValueCell!3726)

(declare-fun mapKey!13716 () (_ BitVec 32))

(assert (=> mapNonEmpty!13716 (= (arr!9394 _values!1208) (store mapRest!13716 mapKey!13716 mapValue!13716))))

(declare-fun b!358262 () Bool)

(assert (=> b!358262 (= e!219309 false)))

(declare-fun lt!166156 () Bool)

(declare-datatypes ((List!5452 0))(
  ( (Nil!5449) (Cons!5448 (h!6304 (_ BitVec 64)) (t!10610 List!5452)) )
))
(declare-fun arrayNoDuplicates!0 (array!19809 (_ BitVec 32) List!5452) Bool)

(assert (=> b!358262 (= lt!166156 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5449))))

(declare-fun b!358263 () Bool)

(declare-fun res!199198 () Bool)

(assert (=> b!358263 (=> (not res!199198) (not e!219309))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!358263 (= res!199198 (and (= (size!9746 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9747 _keys!1456) (size!9746 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!358264 () Bool)

(declare-fun tp_is_empty!8139 () Bool)

(assert (=> b!358264 (= e!219307 tp_is_empty!8139)))

(declare-fun b!358265 () Bool)

(assert (=> b!358265 (= e!219311 tp_is_empty!8139)))

(assert (= (and start!35694 res!199196) b!358263))

(assert (= (and b!358263 res!199198) b!358261))

(assert (= (and b!358261 res!199197) b!358262))

(assert (= (and b!358260 condMapEmpty!13716) mapIsEmpty!13716))

(assert (= (and b!358260 (not condMapEmpty!13716)) mapNonEmpty!13716))

(get-info :version)

(assert (= (and mapNonEmpty!13716 ((_ is ValueCellFull!3726) mapValue!13716)) b!358265))

(assert (= (and b!358260 ((_ is ValueCellFull!3726) mapDefault!13716)) b!358264))

(assert (= start!35694 b!358260))

(declare-fun m!356127 () Bool)

(assert (=> b!358261 m!356127))

(declare-fun m!356129 () Bool)

(assert (=> start!35694 m!356129))

(declare-fun m!356131 () Bool)

(assert (=> start!35694 m!356131))

(declare-fun m!356133 () Bool)

(assert (=> start!35694 m!356133))

(declare-fun m!356135 () Bool)

(assert (=> mapNonEmpty!13716 m!356135))

(declare-fun m!356137 () Bool)

(assert (=> b!358262 m!356137))

(check-sat (not b!358261) tp_is_empty!8139 (not start!35694) (not b!358262) (not mapNonEmpty!13716))
(check-sat)
