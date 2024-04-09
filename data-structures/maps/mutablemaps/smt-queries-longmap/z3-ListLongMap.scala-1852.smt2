; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33490 () Bool)

(assert start!33490)

(declare-fun b!332122 () Bool)

(declare-fun res!183031 () Bool)

(declare-fun e!203940 () Bool)

(assert (=> b!332122 (=> (not res!183031) (not e!203940))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!9957 0))(
  ( (V!9958 (val!3412 Int)) )
))
(declare-datatypes ((ValueCell!3024 0))(
  ( (ValueCellFull!3024 (v!5567 V!9957)) (EmptyCell!3024) )
))
(declare-datatypes ((array!17063 0))(
  ( (array!17064 (arr!8063 (Array (_ BitVec 32) ValueCell!3024)) (size!8415 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17063)

(declare-datatypes ((array!17065 0))(
  ( (array!17066 (arr!8064 (Array (_ BitVec 32) (_ BitVec 64))) (size!8416 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17065)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!332122 (= res!183031 (and (= (size!8415 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8416 _keys!1895) (size!8415 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!332123 () Bool)

(declare-fun res!183030 () Bool)

(assert (=> b!332123 (=> (not res!183030) (not e!203940))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17065 (_ BitVec 32)) Bool)

(assert (=> b!332123 (= res!183030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!332124 () Bool)

(declare-fun e!203939 () Bool)

(declare-fun e!203938 () Bool)

(declare-fun mapRes!11487 () Bool)

(assert (=> b!332124 (= e!203939 (and e!203938 mapRes!11487))))

(declare-fun condMapEmpty!11487 () Bool)

(declare-fun mapDefault!11487 () ValueCell!3024)

(assert (=> b!332124 (= condMapEmpty!11487 (= (arr!8063 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3024)) mapDefault!11487)))))

(declare-fun b!332125 () Bool)

(declare-fun e!203936 () Bool)

(declare-fun tp_is_empty!6735 () Bool)

(assert (=> b!332125 (= e!203936 tp_is_empty!6735)))

(declare-fun mapIsEmpty!11487 () Bool)

(assert (=> mapIsEmpty!11487 mapRes!11487))

(declare-fun res!183032 () Bool)

(assert (=> start!33490 (=> (not res!183032) (not e!203940))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33490 (= res!183032 (validMask!0 mask!2385))))

(assert (=> start!33490 e!203940))

(assert (=> start!33490 true))

(declare-fun array_inv!5996 (array!17063) Bool)

(assert (=> start!33490 (and (array_inv!5996 _values!1525) e!203939)))

(declare-fun array_inv!5997 (array!17065) Bool)

(assert (=> start!33490 (array_inv!5997 _keys!1895)))

(declare-fun b!332126 () Bool)

(assert (=> b!332126 (= e!203938 tp_is_empty!6735)))

(declare-fun b!332127 () Bool)

(assert (=> b!332127 (= e!203940 false)))

(declare-fun lt!158958 () Bool)

(declare-datatypes ((List!4611 0))(
  ( (Nil!4608) (Cons!4607 (h!5463 (_ BitVec 64)) (t!9701 List!4611)) )
))
(declare-fun arrayNoDuplicates!0 (array!17065 (_ BitVec 32) List!4611) Bool)

(assert (=> b!332127 (= lt!158958 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4608))))

(declare-fun mapNonEmpty!11487 () Bool)

(declare-fun tp!23862 () Bool)

(assert (=> mapNonEmpty!11487 (= mapRes!11487 (and tp!23862 e!203936))))

(declare-fun mapRest!11487 () (Array (_ BitVec 32) ValueCell!3024))

(declare-fun mapKey!11487 () (_ BitVec 32))

(declare-fun mapValue!11487 () ValueCell!3024)

(assert (=> mapNonEmpty!11487 (= (arr!8063 _values!1525) (store mapRest!11487 mapKey!11487 mapValue!11487))))

(assert (= (and start!33490 res!183032) b!332122))

(assert (= (and b!332122 res!183031) b!332123))

(assert (= (and b!332123 res!183030) b!332127))

(assert (= (and b!332124 condMapEmpty!11487) mapIsEmpty!11487))

(assert (= (and b!332124 (not condMapEmpty!11487)) mapNonEmpty!11487))

(get-info :version)

(assert (= (and mapNonEmpty!11487 ((_ is ValueCellFull!3024) mapValue!11487)) b!332125))

(assert (= (and b!332124 ((_ is ValueCellFull!3024) mapDefault!11487)) b!332126))

(assert (= start!33490 b!332124))

(declare-fun m!336725 () Bool)

(assert (=> b!332123 m!336725))

(declare-fun m!336727 () Bool)

(assert (=> start!33490 m!336727))

(declare-fun m!336729 () Bool)

(assert (=> start!33490 m!336729))

(declare-fun m!336731 () Bool)

(assert (=> start!33490 m!336731))

(declare-fun m!336733 () Bool)

(assert (=> b!332127 m!336733))

(declare-fun m!336735 () Bool)

(assert (=> mapNonEmpty!11487 m!336735))

(check-sat (not b!332127) (not b!332123) tp_is_empty!6735 (not start!33490) (not mapNonEmpty!11487))
(check-sat)
