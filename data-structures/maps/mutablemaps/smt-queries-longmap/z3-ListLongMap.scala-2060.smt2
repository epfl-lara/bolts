; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35538 () Bool)

(assert start!35538)

(declare-fun mapIsEmpty!13482 () Bool)

(declare-fun mapRes!13482 () Bool)

(assert (=> mapIsEmpty!13482 mapRes!13482))

(declare-fun b!355840 () Bool)

(declare-fun e!218058 () Bool)

(declare-fun e!218060 () Bool)

(assert (=> b!355840 (= e!218058 (and e!218060 mapRes!13482))))

(declare-fun condMapEmpty!13482 () Bool)

(declare-datatypes ((V!11621 0))(
  ( (V!11622 (val!4036 Int)) )
))
(declare-datatypes ((ValueCell!3648 0))(
  ( (ValueCellFull!3648 (v!6226 V!11621)) (EmptyCell!3648) )
))
(declare-datatypes ((array!19509 0))(
  ( (array!19510 (arr!9245 (Array (_ BitVec 32) ValueCell!3648)) (size!9597 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19509)

(declare-fun mapDefault!13482 () ValueCell!3648)

(assert (=> b!355840 (= condMapEmpty!13482 (= (arr!9245 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3648)) mapDefault!13482)))))

(declare-fun b!355841 () Bool)

(declare-fun tp_is_empty!7983 () Bool)

(assert (=> b!355841 (= e!218060 tp_is_empty!7983)))

(declare-fun mapNonEmpty!13482 () Bool)

(declare-fun tp!27459 () Bool)

(declare-fun e!218057 () Bool)

(assert (=> mapNonEmpty!13482 (= mapRes!13482 (and tp!27459 e!218057))))

(declare-fun mapValue!13482 () ValueCell!3648)

(declare-fun mapKey!13482 () (_ BitVec 32))

(declare-fun mapRest!13482 () (Array (_ BitVec 32) ValueCell!3648))

(assert (=> mapNonEmpty!13482 (= (arr!9245 _values!1208) (store mapRest!13482 mapKey!13482 mapValue!13482))))

(declare-fun b!355842 () Bool)

(declare-fun res!197477 () Bool)

(declare-fun e!218059 () Bool)

(assert (=> b!355842 (=> (not res!197477) (not e!218059))))

(declare-datatypes ((array!19511 0))(
  ( (array!19512 (arr!9246 (Array (_ BitVec 32) (_ BitVec 64))) (size!9598 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19511)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19511 (_ BitVec 32)) Bool)

(assert (=> b!355842 (= res!197477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!197479 () Bool)

(assert (=> start!35538 (=> (not res!197479) (not e!218059))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35538 (= res!197479 (validMask!0 mask!1842))))

(assert (=> start!35538 e!218059))

(assert (=> start!35538 true))

(declare-fun array_inv!6810 (array!19509) Bool)

(assert (=> start!35538 (and (array_inv!6810 _values!1208) e!218058)))

(declare-fun array_inv!6811 (array!19511) Bool)

(assert (=> start!35538 (array_inv!6811 _keys!1456)))

(declare-fun b!355839 () Bool)

(declare-fun res!197478 () Bool)

(assert (=> b!355839 (=> (not res!197478) (not e!218059))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!355839 (= res!197478 (and (= (size!9597 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9598 _keys!1456) (size!9597 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!355843 () Bool)

(assert (=> b!355843 (= e!218057 tp_is_empty!7983)))

(declare-fun b!355844 () Bool)

(assert (=> b!355844 (= e!218059 false)))

(declare-fun lt!165850 () Bool)

(declare-datatypes ((List!5377 0))(
  ( (Nil!5374) (Cons!5373 (h!6229 (_ BitVec 64)) (t!10535 List!5377)) )
))
(declare-fun arrayNoDuplicates!0 (array!19511 (_ BitVec 32) List!5377) Bool)

(assert (=> b!355844 (= lt!165850 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5374))))

(assert (= (and start!35538 res!197479) b!355839))

(assert (= (and b!355839 res!197478) b!355842))

(assert (= (and b!355842 res!197477) b!355844))

(assert (= (and b!355840 condMapEmpty!13482) mapIsEmpty!13482))

(assert (= (and b!355840 (not condMapEmpty!13482)) mapNonEmpty!13482))

(get-info :version)

(assert (= (and mapNonEmpty!13482 ((_ is ValueCellFull!3648) mapValue!13482)) b!355843))

(assert (= (and b!355840 ((_ is ValueCellFull!3648) mapDefault!13482)) b!355841))

(assert (= start!35538 b!355840))

(declare-fun m!354417 () Bool)

(assert (=> mapNonEmpty!13482 m!354417))

(declare-fun m!354419 () Bool)

(assert (=> b!355842 m!354419))

(declare-fun m!354421 () Bool)

(assert (=> start!35538 m!354421))

(declare-fun m!354423 () Bool)

(assert (=> start!35538 m!354423))

(declare-fun m!354425 () Bool)

(assert (=> start!35538 m!354425))

(declare-fun m!354427 () Bool)

(assert (=> b!355844 m!354427))

(check-sat (not start!35538) (not b!355842) (not b!355844) tp_is_empty!7983 (not mapNonEmpty!13482))
(check-sat)
