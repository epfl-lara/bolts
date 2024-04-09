; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3790 () Bool)

(assert start!3790)

(declare-fun b!26551 () Bool)

(declare-fun res!15737 () Bool)

(declare-fun e!17307 () Bool)

(assert (=> b!26551 (=> (not res!15737) (not e!17307))))

(declare-datatypes ((array!1457 0))(
  ( (array!1458 (arr!686 (Array (_ BitVec 32) (_ BitVec 64))) (size!787 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1457)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1457 (_ BitVec 32)) Bool)

(assert (=> b!26551 (= res!15737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!26552 () Bool)

(declare-fun e!17311 () Bool)

(declare-fun tp_is_empty!1113 () Bool)

(assert (=> b!26552 (= e!17311 tp_is_empty!1113)))

(declare-fun mapIsEmpty!1186 () Bool)

(declare-fun mapRes!1186 () Bool)

(assert (=> mapIsEmpty!1186 mapRes!1186))

(declare-fun res!15738 () Bool)

(assert (=> start!3790 (=> (not res!15738) (not e!17307))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3790 (= res!15738 (validMask!0 mask!2294))))

(assert (=> start!3790 e!17307))

(assert (=> start!3790 true))

(declare-datatypes ((V!1309 0))(
  ( (V!1310 (val!583 Int)) )
))
(declare-datatypes ((ValueCell!357 0))(
  ( (ValueCellFull!357 (v!1669 V!1309)) (EmptyCell!357) )
))
(declare-datatypes ((array!1459 0))(
  ( (array!1460 (arr!687 (Array (_ BitVec 32) ValueCell!357)) (size!788 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1459)

(declare-fun e!17310 () Bool)

(declare-fun array_inv!471 (array!1459) Bool)

(assert (=> start!3790 (and (array_inv!471 _values!1501) e!17310)))

(declare-fun array_inv!472 (array!1457) Bool)

(assert (=> start!3790 (array_inv!472 _keys!1833)))

(declare-fun mapNonEmpty!1186 () Bool)

(declare-fun tp!3706 () Bool)

(assert (=> mapNonEmpty!1186 (= mapRes!1186 (and tp!3706 e!17311))))

(declare-fun mapValue!1186 () ValueCell!357)

(declare-fun mapRest!1186 () (Array (_ BitVec 32) ValueCell!357))

(declare-fun mapKey!1186 () (_ BitVec 32))

(assert (=> mapNonEmpty!1186 (= (arr!687 _values!1501) (store mapRest!1186 mapKey!1186 mapValue!1186))))

(declare-fun b!26553 () Bool)

(declare-fun e!17308 () Bool)

(assert (=> b!26553 (= e!17308 tp_is_empty!1113)))

(declare-fun b!26554 () Bool)

(assert (=> b!26554 (= e!17310 (and e!17308 mapRes!1186))))

(declare-fun condMapEmpty!1186 () Bool)

(declare-fun mapDefault!1186 () ValueCell!357)

(assert (=> b!26554 (= condMapEmpty!1186 (= (arr!687 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!357)) mapDefault!1186)))))

(declare-fun b!26555 () Bool)

(declare-fun res!15739 () Bool)

(assert (=> b!26555 (=> (not res!15739) (not e!17307))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!26555 (= res!15739 (and (= (size!788 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!787 _keys!1833) (size!788 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!26556 () Bool)

(assert (=> b!26556 (= e!17307 false)))

(declare-fun lt!10389 () Bool)

(declare-datatypes ((List!591 0))(
  ( (Nil!588) (Cons!587 (h!1154 (_ BitVec 64)) (t!3280 List!591)) )
))
(declare-fun arrayNoDuplicates!0 (array!1457 (_ BitVec 32) List!591) Bool)

(assert (=> b!26556 (= lt!10389 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!588))))

(assert (= (and start!3790 res!15738) b!26555))

(assert (= (and b!26555 res!15739) b!26551))

(assert (= (and b!26551 res!15737) b!26556))

(assert (= (and b!26554 condMapEmpty!1186) mapIsEmpty!1186))

(assert (= (and b!26554 (not condMapEmpty!1186)) mapNonEmpty!1186))

(get-info :version)

(assert (= (and mapNonEmpty!1186 ((_ is ValueCellFull!357) mapValue!1186)) b!26552))

(assert (= (and b!26554 ((_ is ValueCellFull!357) mapDefault!1186)) b!26553))

(assert (= start!3790 b!26554))

(declare-fun m!21301 () Bool)

(assert (=> b!26551 m!21301))

(declare-fun m!21303 () Bool)

(assert (=> start!3790 m!21303))

(declare-fun m!21305 () Bool)

(assert (=> start!3790 m!21305))

(declare-fun m!21307 () Bool)

(assert (=> start!3790 m!21307))

(declare-fun m!21309 () Bool)

(assert (=> mapNonEmpty!1186 m!21309))

(declare-fun m!21311 () Bool)

(assert (=> b!26556 m!21311))

(check-sat (not b!26556) (not b!26551) (not mapNonEmpty!1186) tp_is_empty!1113 (not start!3790))
(check-sat)
