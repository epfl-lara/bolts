; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33454 () Bool)

(assert start!33454)

(declare-fun b!331798 () Bool)

(declare-fun res!182870 () Bool)

(declare-fun e!203670 () Bool)

(assert (=> b!331798 (=> (not res!182870) (not e!203670))))

(declare-datatypes ((array!16995 0))(
  ( (array!16996 (arr!8029 (Array (_ BitVec 32) (_ BitVec 64))) (size!8381 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!16995)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16995 (_ BitVec 32)) Bool)

(assert (=> b!331798 (= res!182870 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!11433 () Bool)

(declare-fun mapRes!11433 () Bool)

(declare-fun tp!23808 () Bool)

(declare-fun e!203666 () Bool)

(assert (=> mapNonEmpty!11433 (= mapRes!11433 (and tp!23808 e!203666))))

(declare-datatypes ((V!9909 0))(
  ( (V!9910 (val!3394 Int)) )
))
(declare-datatypes ((ValueCell!3006 0))(
  ( (ValueCellFull!3006 (v!5549 V!9909)) (EmptyCell!3006) )
))
(declare-fun mapValue!11433 () ValueCell!3006)

(declare-fun mapRest!11433 () (Array (_ BitVec 32) ValueCell!3006))

(declare-datatypes ((array!16997 0))(
  ( (array!16998 (arr!8030 (Array (_ BitVec 32) ValueCell!3006)) (size!8382 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16997)

(declare-fun mapKey!11433 () (_ BitVec 32))

(assert (=> mapNonEmpty!11433 (= (arr!8030 _values!1525) (store mapRest!11433 mapKey!11433 mapValue!11433))))

(declare-fun b!331799 () Bool)

(assert (=> b!331799 (= e!203670 false)))

(declare-fun lt!158904 () Bool)

(declare-datatypes ((List!4600 0))(
  ( (Nil!4597) (Cons!4596 (h!5452 (_ BitVec 64)) (t!9690 List!4600)) )
))
(declare-fun arrayNoDuplicates!0 (array!16995 (_ BitVec 32) List!4600) Bool)

(assert (=> b!331799 (= lt!158904 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4597))))

(declare-fun res!182869 () Bool)

(assert (=> start!33454 (=> (not res!182869) (not e!203670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33454 (= res!182869 (validMask!0 mask!2385))))

(assert (=> start!33454 e!203670))

(assert (=> start!33454 true))

(declare-fun e!203668 () Bool)

(declare-fun array_inv!5968 (array!16997) Bool)

(assert (=> start!33454 (and (array_inv!5968 _values!1525) e!203668)))

(declare-fun array_inv!5969 (array!16995) Bool)

(assert (=> start!33454 (array_inv!5969 _keys!1895)))

(declare-fun b!331800 () Bool)

(declare-fun e!203667 () Bool)

(assert (=> b!331800 (= e!203668 (and e!203667 mapRes!11433))))

(declare-fun condMapEmpty!11433 () Bool)

(declare-fun mapDefault!11433 () ValueCell!3006)

(assert (=> b!331800 (= condMapEmpty!11433 (= (arr!8030 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3006)) mapDefault!11433)))))

(declare-fun b!331801 () Bool)

(declare-fun tp_is_empty!6699 () Bool)

(assert (=> b!331801 (= e!203667 tp_is_empty!6699)))

(declare-fun b!331802 () Bool)

(declare-fun res!182868 () Bool)

(assert (=> b!331802 (=> (not res!182868) (not e!203670))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!331802 (= res!182868 (and (= (size!8382 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8381 _keys!1895) (size!8382 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!11433 () Bool)

(assert (=> mapIsEmpty!11433 mapRes!11433))

(declare-fun b!331803 () Bool)

(assert (=> b!331803 (= e!203666 tp_is_empty!6699)))

(assert (= (and start!33454 res!182869) b!331802))

(assert (= (and b!331802 res!182868) b!331798))

(assert (= (and b!331798 res!182870) b!331799))

(assert (= (and b!331800 condMapEmpty!11433) mapIsEmpty!11433))

(assert (= (and b!331800 (not condMapEmpty!11433)) mapNonEmpty!11433))

(get-info :version)

(assert (= (and mapNonEmpty!11433 ((_ is ValueCellFull!3006) mapValue!11433)) b!331803))

(assert (= (and b!331800 ((_ is ValueCellFull!3006) mapDefault!11433)) b!331801))

(assert (= start!33454 b!331800))

(declare-fun m!336509 () Bool)

(assert (=> b!331798 m!336509))

(declare-fun m!336511 () Bool)

(assert (=> mapNonEmpty!11433 m!336511))

(declare-fun m!336513 () Bool)

(assert (=> b!331799 m!336513))

(declare-fun m!336515 () Bool)

(assert (=> start!33454 m!336515))

(declare-fun m!336517 () Bool)

(assert (=> start!33454 m!336517))

(declare-fun m!336519 () Bool)

(assert (=> start!33454 m!336519))

(check-sat (not b!331798) (not start!33454) (not mapNonEmpty!11433) tp_is_empty!6699 (not b!331799))
(check-sat)
