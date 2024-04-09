; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35790 () Bool)

(assert start!35790)

(declare-fun b!359223 () Bool)

(declare-fun res!199727 () Bool)

(declare-fun e!220027 () Bool)

(assert (=> b!359223 (=> (not res!199727) (not e!220027))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19991 0))(
  ( (array!19992 (arr!9486 (Array (_ BitVec 32) (_ BitVec 64))) (size!9838 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19991)

(declare-datatypes ((V!11957 0))(
  ( (V!11958 (val!4162 Int)) )
))
(declare-datatypes ((ValueCell!3774 0))(
  ( (ValueCellFull!3774 (v!6352 V!11957)) (EmptyCell!3774) )
))
(declare-datatypes ((array!19993 0))(
  ( (array!19994 (arr!9487 (Array (_ BitVec 32) ValueCell!3774)) (size!9839 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19993)

(assert (=> b!359223 (= res!199727 (and (= (size!9839 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9838 _keys!1456) (size!9839 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359224 () Bool)

(declare-fun e!220031 () Bool)

(declare-fun tp_is_empty!8235 () Bool)

(assert (=> b!359224 (= e!220031 tp_is_empty!8235)))

(declare-fun mapIsEmpty!13860 () Bool)

(declare-fun mapRes!13860 () Bool)

(assert (=> mapIsEmpty!13860 mapRes!13860))

(declare-fun res!199729 () Bool)

(assert (=> start!35790 (=> (not res!199729) (not e!220027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35790 (= res!199729 (validMask!0 mask!1842))))

(assert (=> start!35790 e!220027))

(assert (=> start!35790 true))

(declare-fun e!220030 () Bool)

(declare-fun array_inv!6980 (array!19993) Bool)

(assert (=> start!35790 (and (array_inv!6980 _values!1208) e!220030)))

(declare-fun array_inv!6981 (array!19991) Bool)

(assert (=> start!35790 (array_inv!6981 _keys!1456)))

(declare-fun b!359225 () Bool)

(assert (=> b!359225 (= e!220027 false)))

(declare-fun lt!166300 () Bool)

(declare-datatypes ((List!5490 0))(
  ( (Nil!5487) (Cons!5486 (h!6342 (_ BitVec 64)) (t!10648 List!5490)) )
))
(declare-fun arrayNoDuplicates!0 (array!19991 (_ BitVec 32) List!5490) Bool)

(assert (=> b!359225 (= lt!166300 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5487))))

(declare-fun mapNonEmpty!13860 () Bool)

(declare-fun tp!27927 () Bool)

(assert (=> mapNonEmpty!13860 (= mapRes!13860 (and tp!27927 e!220031))))

(declare-fun mapKey!13860 () (_ BitVec 32))

(declare-fun mapValue!13860 () ValueCell!3774)

(declare-fun mapRest!13860 () (Array (_ BitVec 32) ValueCell!3774))

(assert (=> mapNonEmpty!13860 (= (arr!9487 _values!1208) (store mapRest!13860 mapKey!13860 mapValue!13860))))

(declare-fun b!359226 () Bool)

(declare-fun e!220028 () Bool)

(assert (=> b!359226 (= e!220028 tp_is_empty!8235)))

(declare-fun b!359227 () Bool)

(assert (=> b!359227 (= e!220030 (and e!220028 mapRes!13860))))

(declare-fun condMapEmpty!13860 () Bool)

(declare-fun mapDefault!13860 () ValueCell!3774)

(assert (=> b!359227 (= condMapEmpty!13860 (= (arr!9487 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3774)) mapDefault!13860)))))

(declare-fun b!359228 () Bool)

(declare-fun res!199728 () Bool)

(assert (=> b!359228 (=> (not res!199728) (not e!220027))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19991 (_ BitVec 32)) Bool)

(assert (=> b!359228 (= res!199728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(assert (= (and start!35790 res!199729) b!359223))

(assert (= (and b!359223 res!199727) b!359228))

(assert (= (and b!359228 res!199728) b!359225))

(assert (= (and b!359227 condMapEmpty!13860) mapIsEmpty!13860))

(assert (= (and b!359227 (not condMapEmpty!13860)) mapNonEmpty!13860))

(get-info :version)

(assert (= (and mapNonEmpty!13860 ((_ is ValueCellFull!3774) mapValue!13860)) b!359224))

(assert (= (and b!359227 ((_ is ValueCellFull!3774) mapDefault!13860)) b!359226))

(assert (= start!35790 b!359227))

(declare-fun m!356775 () Bool)

(assert (=> start!35790 m!356775))

(declare-fun m!356777 () Bool)

(assert (=> start!35790 m!356777))

(declare-fun m!356779 () Bool)

(assert (=> start!35790 m!356779))

(declare-fun m!356781 () Bool)

(assert (=> b!359225 m!356781))

(declare-fun m!356783 () Bool)

(assert (=> mapNonEmpty!13860 m!356783))

(declare-fun m!356785 () Bool)

(assert (=> b!359228 m!356785))

(check-sat tp_is_empty!8235 (not b!359228) (not b!359225) (not mapNonEmpty!13860) (not start!35790))
(check-sat)
