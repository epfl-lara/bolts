; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35544 () Bool)

(assert start!35544)

(declare-fun b!355893 () Bool)

(declare-fun e!218105 () Bool)

(declare-fun e!218104 () Bool)

(declare-fun mapRes!13491 () Bool)

(assert (=> b!355893 (= e!218105 (and e!218104 mapRes!13491))))

(declare-fun condMapEmpty!13491 () Bool)

(declare-datatypes ((V!11629 0))(
  ( (V!11630 (val!4039 Int)) )
))
(declare-datatypes ((ValueCell!3651 0))(
  ( (ValueCellFull!3651 (v!6229 V!11629)) (EmptyCell!3651) )
))
(declare-datatypes ((array!19521 0))(
  ( (array!19522 (arr!9251 (Array (_ BitVec 32) ValueCell!3651)) (size!9603 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19521)

(declare-fun mapDefault!13491 () ValueCell!3651)

(assert (=> b!355893 (= condMapEmpty!13491 (= (arr!9251 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3651)) mapDefault!13491)))))

(declare-fun b!355894 () Bool)

(declare-fun e!218102 () Bool)

(assert (=> b!355894 (= e!218102 false)))

(declare-fun lt!165859 () Bool)

(declare-datatypes ((array!19523 0))(
  ( (array!19524 (arr!9252 (Array (_ BitVec 32) (_ BitVec 64))) (size!9604 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19523)

(declare-datatypes ((List!5380 0))(
  ( (Nil!5377) (Cons!5376 (h!6232 (_ BitVec 64)) (t!10538 List!5380)) )
))
(declare-fun arrayNoDuplicates!0 (array!19523 (_ BitVec 32) List!5380) Bool)

(assert (=> b!355894 (= lt!165859 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5377))))

(declare-fun mapIsEmpty!13491 () Bool)

(assert (=> mapIsEmpty!13491 mapRes!13491))

(declare-fun res!197506 () Bool)

(assert (=> start!35544 (=> (not res!197506) (not e!218102))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35544 (= res!197506 (validMask!0 mask!1842))))

(assert (=> start!35544 e!218102))

(assert (=> start!35544 true))

(declare-fun array_inv!6812 (array!19521) Bool)

(assert (=> start!35544 (and (array_inv!6812 _values!1208) e!218105)))

(declare-fun array_inv!6813 (array!19523) Bool)

(assert (=> start!35544 (array_inv!6813 _keys!1456)))

(declare-fun b!355895 () Bool)

(declare-fun tp_is_empty!7989 () Bool)

(assert (=> b!355895 (= e!218104 tp_is_empty!7989)))

(declare-fun b!355896 () Bool)

(declare-fun res!197505 () Bool)

(assert (=> b!355896 (=> (not res!197505) (not e!218102))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!355896 (= res!197505 (and (= (size!9603 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9604 _keys!1456) (size!9603 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!13491 () Bool)

(declare-fun tp!27468 () Bool)

(declare-fun e!218101 () Bool)

(assert (=> mapNonEmpty!13491 (= mapRes!13491 (and tp!27468 e!218101))))

(declare-fun mapValue!13491 () ValueCell!3651)

(declare-fun mapKey!13491 () (_ BitVec 32))

(declare-fun mapRest!13491 () (Array (_ BitVec 32) ValueCell!3651))

(assert (=> mapNonEmpty!13491 (= (arr!9251 _values!1208) (store mapRest!13491 mapKey!13491 mapValue!13491))))

(declare-fun b!355897 () Bool)

(declare-fun res!197504 () Bool)

(assert (=> b!355897 (=> (not res!197504) (not e!218102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19523 (_ BitVec 32)) Bool)

(assert (=> b!355897 (= res!197504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!355898 () Bool)

(assert (=> b!355898 (= e!218101 tp_is_empty!7989)))

(assert (= (and start!35544 res!197506) b!355896))

(assert (= (and b!355896 res!197505) b!355897))

(assert (= (and b!355897 res!197504) b!355894))

(assert (= (and b!355893 condMapEmpty!13491) mapIsEmpty!13491))

(assert (= (and b!355893 (not condMapEmpty!13491)) mapNonEmpty!13491))

(get-info :version)

(assert (= (and mapNonEmpty!13491 ((_ is ValueCellFull!3651) mapValue!13491)) b!355898))

(assert (= (and b!355893 ((_ is ValueCellFull!3651) mapDefault!13491)) b!355895))

(assert (= start!35544 b!355893))

(declare-fun m!354453 () Bool)

(assert (=> b!355894 m!354453))

(declare-fun m!354455 () Bool)

(assert (=> start!35544 m!354455))

(declare-fun m!354457 () Bool)

(assert (=> start!35544 m!354457))

(declare-fun m!354459 () Bool)

(assert (=> start!35544 m!354459))

(declare-fun m!354461 () Bool)

(assert (=> mapNonEmpty!13491 m!354461))

(declare-fun m!354463 () Bool)

(assert (=> b!355897 m!354463))

(check-sat tp_is_empty!7989 (not mapNonEmpty!13491) (not start!35544) (not b!355894) (not b!355897))
(check-sat)
