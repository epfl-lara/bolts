; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35718 () Bool)

(assert start!35718)

(declare-fun b!358476 () Bool)

(declare-fun e!219488 () Bool)

(assert (=> b!358476 (= e!219488 false)))

(declare-fun lt!166192 () Bool)

(declare-datatypes ((array!19853 0))(
  ( (array!19854 (arr!9417 (Array (_ BitVec 32) (_ BitVec 64))) (size!9769 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19853)

(declare-datatypes ((List!5461 0))(
  ( (Nil!5458) (Cons!5457 (h!6313 (_ BitVec 64)) (t!10619 List!5461)) )
))
(declare-fun arrayNoDuplicates!0 (array!19853 (_ BitVec 32) List!5461) Bool)

(assert (=> b!358476 (= lt!166192 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5458))))

(declare-fun b!358477 () Bool)

(declare-fun e!219487 () Bool)

(declare-fun e!219490 () Bool)

(declare-fun mapRes!13752 () Bool)

(assert (=> b!358477 (= e!219487 (and e!219490 mapRes!13752))))

(declare-fun condMapEmpty!13752 () Bool)

(declare-datatypes ((V!11861 0))(
  ( (V!11862 (val!4126 Int)) )
))
(declare-datatypes ((ValueCell!3738 0))(
  ( (ValueCellFull!3738 (v!6316 V!11861)) (EmptyCell!3738) )
))
(declare-datatypes ((array!19855 0))(
  ( (array!19856 (arr!9418 (Array (_ BitVec 32) ValueCell!3738)) (size!9770 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19855)

(declare-fun mapDefault!13752 () ValueCell!3738)

(assert (=> b!358477 (= condMapEmpty!13752 (= (arr!9418 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3738)) mapDefault!13752)))))

(declare-fun b!358478 () Bool)

(declare-fun e!219491 () Bool)

(declare-fun tp_is_empty!8163 () Bool)

(assert (=> b!358478 (= e!219491 tp_is_empty!8163)))

(declare-fun mapNonEmpty!13752 () Bool)

(declare-fun tp!27810 () Bool)

(assert (=> mapNonEmpty!13752 (= mapRes!13752 (and tp!27810 e!219491))))

(declare-fun mapValue!13752 () ValueCell!3738)

(declare-fun mapKey!13752 () (_ BitVec 32))

(declare-fun mapRest!13752 () (Array (_ BitVec 32) ValueCell!3738))

(assert (=> mapNonEmpty!13752 (= (arr!9418 _values!1208) (store mapRest!13752 mapKey!13752 mapValue!13752))))

(declare-fun b!358479 () Bool)

(declare-fun res!199306 () Bool)

(assert (=> b!358479 (=> (not res!199306) (not e!219488))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19853 (_ BitVec 32)) Bool)

(assert (=> b!358479 (= res!199306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapIsEmpty!13752 () Bool)

(assert (=> mapIsEmpty!13752 mapRes!13752))

(declare-fun res!199304 () Bool)

(assert (=> start!35718 (=> (not res!199304) (not e!219488))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35718 (= res!199304 (validMask!0 mask!1842))))

(assert (=> start!35718 e!219488))

(assert (=> start!35718 true))

(declare-fun array_inv!6924 (array!19855) Bool)

(assert (=> start!35718 (and (array_inv!6924 _values!1208) e!219487)))

(declare-fun array_inv!6925 (array!19853) Bool)

(assert (=> start!35718 (array_inv!6925 _keys!1456)))

(declare-fun b!358480 () Bool)

(assert (=> b!358480 (= e!219490 tp_is_empty!8163)))

(declare-fun b!358481 () Bool)

(declare-fun res!199305 () Bool)

(assert (=> b!358481 (=> (not res!199305) (not e!219488))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!358481 (= res!199305 (and (= (size!9770 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9769 _keys!1456) (size!9770 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(assert (= (and start!35718 res!199304) b!358481))

(assert (= (and b!358481 res!199305) b!358479))

(assert (= (and b!358479 res!199306) b!358476))

(assert (= (and b!358477 condMapEmpty!13752) mapIsEmpty!13752))

(assert (= (and b!358477 (not condMapEmpty!13752)) mapNonEmpty!13752))

(get-info :version)

(assert (= (and mapNonEmpty!13752 ((_ is ValueCellFull!3738) mapValue!13752)) b!358478))

(assert (= (and b!358477 ((_ is ValueCellFull!3738) mapDefault!13752)) b!358480))

(assert (= start!35718 b!358477))

(declare-fun m!356271 () Bool)

(assert (=> b!358476 m!356271))

(declare-fun m!356273 () Bool)

(assert (=> mapNonEmpty!13752 m!356273))

(declare-fun m!356275 () Bool)

(assert (=> b!358479 m!356275))

(declare-fun m!356277 () Bool)

(assert (=> start!35718 m!356277))

(declare-fun m!356279 () Bool)

(assert (=> start!35718 m!356279))

(declare-fun m!356281 () Bool)

(assert (=> start!35718 m!356281))

(check-sat (not b!358479) (not start!35718) (not b!358476) (not mapNonEmpty!13752) tp_is_empty!8163)
(check-sat)
