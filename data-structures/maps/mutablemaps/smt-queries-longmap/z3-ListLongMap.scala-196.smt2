; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3796 () Bool)

(assert start!3796)

(declare-fun mapNonEmpty!1195 () Bool)

(declare-fun mapRes!1195 () Bool)

(declare-fun tp!3715 () Bool)

(declare-fun e!17356 () Bool)

(assert (=> mapNonEmpty!1195 (= mapRes!1195 (and tp!3715 e!17356))))

(declare-datatypes ((V!1317 0))(
  ( (V!1318 (val!586 Int)) )
))
(declare-datatypes ((ValueCell!360 0))(
  ( (ValueCellFull!360 (v!1672 V!1317)) (EmptyCell!360) )
))
(declare-datatypes ((array!1469 0))(
  ( (array!1470 (arr!692 (Array (_ BitVec 32) ValueCell!360)) (size!793 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1469)

(declare-fun mapValue!1195 () ValueCell!360)

(declare-fun mapKey!1195 () (_ BitVec 32))

(declare-fun mapRest!1195 () (Array (_ BitVec 32) ValueCell!360))

(assert (=> mapNonEmpty!1195 (= (arr!692 _values!1501) (store mapRest!1195 mapKey!1195 mapValue!1195))))

(declare-fun b!26605 () Bool)

(declare-fun e!17352 () Bool)

(declare-fun e!17355 () Bool)

(assert (=> b!26605 (= e!17352 (and e!17355 mapRes!1195))))

(declare-fun condMapEmpty!1195 () Bool)

(declare-fun mapDefault!1195 () ValueCell!360)

(assert (=> b!26605 (= condMapEmpty!1195 (= (arr!692 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!360)) mapDefault!1195)))))

(declare-fun res!15764 () Bool)

(declare-fun e!17354 () Bool)

(assert (=> start!3796 (=> (not res!15764) (not e!17354))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3796 (= res!15764 (validMask!0 mask!2294))))

(assert (=> start!3796 e!17354))

(assert (=> start!3796 true))

(declare-fun array_inv!477 (array!1469) Bool)

(assert (=> start!3796 (and (array_inv!477 _values!1501) e!17352)))

(declare-datatypes ((array!1471 0))(
  ( (array!1472 (arr!693 (Array (_ BitVec 32) (_ BitVec 64))) (size!794 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1471)

(declare-fun array_inv!478 (array!1471) Bool)

(assert (=> start!3796 (array_inv!478 _keys!1833)))

(declare-fun b!26606 () Bool)

(assert (=> b!26606 (= e!17354 false)))

(declare-fun lt!10398 () Bool)

(declare-datatypes ((List!594 0))(
  ( (Nil!591) (Cons!590 (h!1157 (_ BitVec 64)) (t!3283 List!594)) )
))
(declare-fun arrayNoDuplicates!0 (array!1471 (_ BitVec 32) List!594) Bool)

(assert (=> b!26606 (= lt!10398 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!591))))

(declare-fun b!26607 () Bool)

(declare-fun tp_is_empty!1119 () Bool)

(assert (=> b!26607 (= e!17355 tp_is_empty!1119)))

(declare-fun b!26608 () Bool)

(declare-fun res!15765 () Bool)

(assert (=> b!26608 (=> (not res!15765) (not e!17354))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1471 (_ BitVec 32)) Bool)

(assert (=> b!26608 (= res!15765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapIsEmpty!1195 () Bool)

(assert (=> mapIsEmpty!1195 mapRes!1195))

(declare-fun b!26609 () Bool)

(assert (=> b!26609 (= e!17356 tp_is_empty!1119)))

(declare-fun b!26610 () Bool)

(declare-fun res!15766 () Bool)

(assert (=> b!26610 (=> (not res!15766) (not e!17354))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!26610 (= res!15766 (and (= (size!793 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!794 _keys!1833) (size!793 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(assert (= (and start!3796 res!15764) b!26610))

(assert (= (and b!26610 res!15766) b!26608))

(assert (= (and b!26608 res!15765) b!26606))

(assert (= (and b!26605 condMapEmpty!1195) mapIsEmpty!1195))

(assert (= (and b!26605 (not condMapEmpty!1195)) mapNonEmpty!1195))

(get-info :version)

(assert (= (and mapNonEmpty!1195 ((_ is ValueCellFull!360) mapValue!1195)) b!26609))

(assert (= (and b!26605 ((_ is ValueCellFull!360) mapDefault!1195)) b!26607))

(assert (= start!3796 b!26605))

(declare-fun m!21337 () Bool)

(assert (=> mapNonEmpty!1195 m!21337))

(declare-fun m!21339 () Bool)

(assert (=> start!3796 m!21339))

(declare-fun m!21341 () Bool)

(assert (=> start!3796 m!21341))

(declare-fun m!21343 () Bool)

(assert (=> start!3796 m!21343))

(declare-fun m!21345 () Bool)

(assert (=> b!26606 m!21345))

(declare-fun m!21347 () Bool)

(assert (=> b!26608 m!21347))

(check-sat (not start!3796) (not b!26608) (not b!26606) tp_is_empty!1119 (not mapNonEmpty!1195))
(check-sat)
