; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33484 () Bool)

(assert start!33484)

(declare-fun b!332068 () Bool)

(declare-fun e!203891 () Bool)

(declare-fun e!203894 () Bool)

(declare-fun mapRes!11478 () Bool)

(assert (=> b!332068 (= e!203891 (and e!203894 mapRes!11478))))

(declare-fun condMapEmpty!11478 () Bool)

(declare-datatypes ((V!9949 0))(
  ( (V!9950 (val!3409 Int)) )
))
(declare-datatypes ((ValueCell!3021 0))(
  ( (ValueCellFull!3021 (v!5564 V!9949)) (EmptyCell!3021) )
))
(declare-datatypes ((array!17053 0))(
  ( (array!17054 (arr!8058 (Array (_ BitVec 32) ValueCell!3021)) (size!8410 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17053)

(declare-fun mapDefault!11478 () ValueCell!3021)

(assert (=> b!332068 (= condMapEmpty!11478 (= (arr!8058 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3021)) mapDefault!11478)))))

(declare-fun res!183004 () Bool)

(declare-fun e!203895 () Bool)

(assert (=> start!33484 (=> (not res!183004) (not e!203895))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33484 (= res!183004 (validMask!0 mask!2385))))

(assert (=> start!33484 e!203895))

(assert (=> start!33484 true))

(declare-fun array_inv!5992 (array!17053) Bool)

(assert (=> start!33484 (and (array_inv!5992 _values!1525) e!203891)))

(declare-datatypes ((array!17055 0))(
  ( (array!17056 (arr!8059 (Array (_ BitVec 32) (_ BitVec 64))) (size!8411 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17055)

(declare-fun array_inv!5993 (array!17055) Bool)

(assert (=> start!33484 (array_inv!5993 _keys!1895)))

(declare-fun b!332069 () Bool)

(declare-fun tp_is_empty!6729 () Bool)

(assert (=> b!332069 (= e!203894 tp_is_empty!6729)))

(declare-fun b!332070 () Bool)

(assert (=> b!332070 (= e!203895 false)))

(declare-fun lt!158949 () Bool)

(declare-datatypes ((List!4610 0))(
  ( (Nil!4607) (Cons!4606 (h!5462 (_ BitVec 64)) (t!9700 List!4610)) )
))
(declare-fun arrayNoDuplicates!0 (array!17055 (_ BitVec 32) List!4610) Bool)

(assert (=> b!332070 (= lt!158949 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4607))))

(declare-fun mapNonEmpty!11478 () Bool)

(declare-fun tp!23853 () Bool)

(declare-fun e!203892 () Bool)

(assert (=> mapNonEmpty!11478 (= mapRes!11478 (and tp!23853 e!203892))))

(declare-fun mapValue!11478 () ValueCell!3021)

(declare-fun mapRest!11478 () (Array (_ BitVec 32) ValueCell!3021))

(declare-fun mapKey!11478 () (_ BitVec 32))

(assert (=> mapNonEmpty!11478 (= (arr!8058 _values!1525) (store mapRest!11478 mapKey!11478 mapValue!11478))))

(declare-fun mapIsEmpty!11478 () Bool)

(assert (=> mapIsEmpty!11478 mapRes!11478))

(declare-fun b!332071 () Bool)

(assert (=> b!332071 (= e!203892 tp_is_empty!6729)))

(declare-fun b!332072 () Bool)

(declare-fun res!183003 () Bool)

(assert (=> b!332072 (=> (not res!183003) (not e!203895))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!332072 (= res!183003 (and (= (size!8410 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8411 _keys!1895) (size!8410 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!332073 () Bool)

(declare-fun res!183005 () Bool)

(assert (=> b!332073 (=> (not res!183005) (not e!203895))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17055 (_ BitVec 32)) Bool)

(assert (=> b!332073 (= res!183005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(assert (= (and start!33484 res!183004) b!332072))

(assert (= (and b!332072 res!183003) b!332073))

(assert (= (and b!332073 res!183005) b!332070))

(assert (= (and b!332068 condMapEmpty!11478) mapIsEmpty!11478))

(assert (= (and b!332068 (not condMapEmpty!11478)) mapNonEmpty!11478))

(get-info :version)

(assert (= (and mapNonEmpty!11478 ((_ is ValueCellFull!3021) mapValue!11478)) b!332071))

(assert (= (and b!332068 ((_ is ValueCellFull!3021) mapDefault!11478)) b!332069))

(assert (= start!33484 b!332068))

(declare-fun m!336689 () Bool)

(assert (=> start!33484 m!336689))

(declare-fun m!336691 () Bool)

(assert (=> start!33484 m!336691))

(declare-fun m!336693 () Bool)

(assert (=> start!33484 m!336693))

(declare-fun m!336695 () Bool)

(assert (=> b!332070 m!336695))

(declare-fun m!336697 () Bool)

(assert (=> mapNonEmpty!11478 m!336697))

(declare-fun m!336699 () Bool)

(assert (=> b!332073 m!336699))

(check-sat (not start!33484) (not b!332070) tp_is_empty!6729 (not b!332073) (not mapNonEmpty!11478))
(check-sat)
