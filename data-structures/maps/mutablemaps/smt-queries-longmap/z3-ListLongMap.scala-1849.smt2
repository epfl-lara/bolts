; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33472 () Bool)

(assert start!33472)

(declare-fun b!331960 () Bool)

(declare-fun res!182951 () Bool)

(declare-fun e!203801 () Bool)

(assert (=> b!331960 (=> (not res!182951) (not e!203801))))

(declare-datatypes ((array!17031 0))(
  ( (array!17032 (arr!8047 (Array (_ BitVec 32) (_ BitVec 64))) (size!8399 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17031)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17031 (_ BitVec 32)) Bool)

(assert (=> b!331960 (= res!182951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!331961 () Bool)

(declare-fun res!182950 () Bool)

(assert (=> b!331961 (=> (not res!182950) (not e!203801))))

(declare-datatypes ((V!9933 0))(
  ( (V!9934 (val!3403 Int)) )
))
(declare-datatypes ((ValueCell!3015 0))(
  ( (ValueCellFull!3015 (v!5558 V!9933)) (EmptyCell!3015) )
))
(declare-datatypes ((array!17033 0))(
  ( (array!17034 (arr!8048 (Array (_ BitVec 32) ValueCell!3015)) (size!8400 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17033)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!331961 (= res!182950 (and (= (size!8400 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8399 _keys!1895) (size!8400 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!182949 () Bool)

(assert (=> start!33472 (=> (not res!182949) (not e!203801))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33472 (= res!182949 (validMask!0 mask!2385))))

(assert (=> start!33472 e!203801))

(assert (=> start!33472 true))

(declare-fun e!203803 () Bool)

(declare-fun array_inv!5982 (array!17033) Bool)

(assert (=> start!33472 (and (array_inv!5982 _values!1525) e!203803)))

(declare-fun array_inv!5983 (array!17031) Bool)

(assert (=> start!33472 (array_inv!5983 _keys!1895)))

(declare-fun b!331962 () Bool)

(declare-fun e!203802 () Bool)

(declare-fun tp_is_empty!6717 () Bool)

(assert (=> b!331962 (= e!203802 tp_is_empty!6717)))

(declare-fun mapIsEmpty!11460 () Bool)

(declare-fun mapRes!11460 () Bool)

(assert (=> mapIsEmpty!11460 mapRes!11460))

(declare-fun mapNonEmpty!11460 () Bool)

(declare-fun tp!23835 () Bool)

(declare-fun e!203805 () Bool)

(assert (=> mapNonEmpty!11460 (= mapRes!11460 (and tp!23835 e!203805))))

(declare-fun mapValue!11460 () ValueCell!3015)

(declare-fun mapKey!11460 () (_ BitVec 32))

(declare-fun mapRest!11460 () (Array (_ BitVec 32) ValueCell!3015))

(assert (=> mapNonEmpty!11460 (= (arr!8048 _values!1525) (store mapRest!11460 mapKey!11460 mapValue!11460))))

(declare-fun b!331963 () Bool)

(assert (=> b!331963 (= e!203803 (and e!203802 mapRes!11460))))

(declare-fun condMapEmpty!11460 () Bool)

(declare-fun mapDefault!11460 () ValueCell!3015)

(assert (=> b!331963 (= condMapEmpty!11460 (= (arr!8048 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3015)) mapDefault!11460)))))

(declare-fun b!331964 () Bool)

(assert (=> b!331964 (= e!203805 tp_is_empty!6717)))

(declare-fun b!331965 () Bool)

(assert (=> b!331965 (= e!203801 false)))

(declare-fun lt!158931 () Bool)

(declare-datatypes ((List!4606 0))(
  ( (Nil!4603) (Cons!4602 (h!5458 (_ BitVec 64)) (t!9696 List!4606)) )
))
(declare-fun arrayNoDuplicates!0 (array!17031 (_ BitVec 32) List!4606) Bool)

(assert (=> b!331965 (= lt!158931 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4603))))

(assert (= (and start!33472 res!182949) b!331961))

(assert (= (and b!331961 res!182950) b!331960))

(assert (= (and b!331960 res!182951) b!331965))

(assert (= (and b!331963 condMapEmpty!11460) mapIsEmpty!11460))

(assert (= (and b!331963 (not condMapEmpty!11460)) mapNonEmpty!11460))

(get-info :version)

(assert (= (and mapNonEmpty!11460 ((_ is ValueCellFull!3015) mapValue!11460)) b!331964))

(assert (= (and b!331963 ((_ is ValueCellFull!3015) mapDefault!11460)) b!331962))

(assert (= start!33472 b!331963))

(declare-fun m!336617 () Bool)

(assert (=> b!331960 m!336617))

(declare-fun m!336619 () Bool)

(assert (=> start!33472 m!336619))

(declare-fun m!336621 () Bool)

(assert (=> start!33472 m!336621))

(declare-fun m!336623 () Bool)

(assert (=> start!33472 m!336623))

(declare-fun m!336625 () Bool)

(assert (=> mapNonEmpty!11460 m!336625))

(declare-fun m!336627 () Bool)

(assert (=> b!331965 m!336627))

(check-sat (not start!33472) (not mapNonEmpty!11460) tp_is_empty!6717 (not b!331965) (not b!331960))
(check-sat)
