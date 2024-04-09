; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33760 () Bool)

(assert start!33760)

(declare-fun b_free!6987 () Bool)

(declare-fun b_next!6987 () Bool)

(assert (=> start!33760 (= b_free!6987 (not b_next!6987))))

(declare-fun tp!24465 () Bool)

(declare-fun b_and!14185 () Bool)

(assert (=> start!33760 (= tp!24465 b_and!14185)))

(declare-fun b!335577 () Bool)

(declare-fun e!206010 () Bool)

(declare-fun tp_is_empty!6939 () Bool)

(assert (=> b!335577 (= e!206010 tp_is_empty!6939)))

(declare-fun b!335578 () Bool)

(declare-fun e!206007 () Bool)

(assert (=> b!335578 (= e!206007 tp_is_empty!6939)))

(declare-fun b!335579 () Bool)

(declare-fun res!185305 () Bool)

(declare-fun e!206009 () Bool)

(assert (=> b!335579 (=> (not res!185305) (not e!206009))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10229 0))(
  ( (V!10230 (val!3514 Int)) )
))
(declare-datatypes ((ValueCell!3126 0))(
  ( (ValueCellFull!3126 (v!5672 V!10229)) (EmptyCell!3126) )
))
(declare-datatypes ((array!17457 0))(
  ( (array!17458 (arr!8256 (Array (_ BitVec 32) ValueCell!3126)) (size!8608 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17457)

(declare-datatypes ((array!17459 0))(
  ( (array!17460 (arr!8257 (Array (_ BitVec 32) (_ BitVec 64))) (size!8609 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17459)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!335579 (= res!185305 (and (= (size!8608 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8609 _keys!1895) (size!8608 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!335580 () Bool)

(declare-fun e!206008 () Bool)

(declare-fun mapRes!11805 () Bool)

(assert (=> b!335580 (= e!206008 (and e!206010 mapRes!11805))))

(declare-fun condMapEmpty!11805 () Bool)

(declare-fun mapDefault!11805 () ValueCell!3126)

(assert (=> b!335580 (= condMapEmpty!11805 (= (arr!8256 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3126)) mapDefault!11805)))))

(declare-fun mapIsEmpty!11805 () Bool)

(assert (=> mapIsEmpty!11805 mapRes!11805))

(declare-fun b!335581 () Bool)

(declare-fun res!185301 () Bool)

(assert (=> b!335581 (=> (not res!185301) (not e!206009))))

(declare-datatypes ((List!4746 0))(
  ( (Nil!4743) (Cons!4742 (h!5598 (_ BitVec 64)) (t!9842 List!4746)) )
))
(declare-fun arrayNoDuplicates!0 (array!17459 (_ BitVec 32) List!4746) Bool)

(assert (=> b!335581 (= res!185301 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4743))))

(declare-fun res!185303 () Bool)

(assert (=> start!33760 (=> (not res!185303) (not e!206009))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33760 (= res!185303 (validMask!0 mask!2385))))

(assert (=> start!33760 e!206009))

(assert (=> start!33760 true))

(assert (=> start!33760 tp_is_empty!6939))

(assert (=> start!33760 tp!24465))

(declare-fun array_inv!6120 (array!17457) Bool)

(assert (=> start!33760 (and (array_inv!6120 _values!1525) e!206008)))

(declare-fun array_inv!6121 (array!17459) Bool)

(assert (=> start!33760 (array_inv!6121 _keys!1895)))

(declare-fun b!335582 () Bool)

(assert (=> b!335582 (= e!206009 false)))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3202 0))(
  ( (MissingZero!3202 (index!14987 (_ BitVec 32))) (Found!3202 (index!14988 (_ BitVec 32))) (Intermediate!3202 (undefined!4014 Bool) (index!14989 (_ BitVec 32)) (x!33467 (_ BitVec 32))) (Undefined!3202) (MissingVacant!3202 (index!14990 (_ BitVec 32))) )
))
(declare-fun lt!159903 () SeekEntryResult!3202)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17459 (_ BitVec 32)) SeekEntryResult!3202)

(assert (=> b!335582 (= lt!159903 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!335583 () Bool)

(declare-fun res!185304 () Bool)

(assert (=> b!335583 (=> (not res!185304) (not e!206009))))

(declare-fun zeroValue!1467 () V!10229)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10229)

(declare-datatypes ((tuple2!5106 0))(
  ( (tuple2!5107 (_1!2563 (_ BitVec 64)) (_2!2563 V!10229)) )
))
(declare-datatypes ((List!4747 0))(
  ( (Nil!4744) (Cons!4743 (h!5599 tuple2!5106) (t!9843 List!4747)) )
))
(declare-datatypes ((ListLongMap!4033 0))(
  ( (ListLongMap!4034 (toList!2032 List!4747)) )
))
(declare-fun contains!2072 (ListLongMap!4033 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1552 (array!17459 array!17457 (_ BitVec 32) (_ BitVec 32) V!10229 V!10229 (_ BitVec 32) Int) ListLongMap!4033)

(assert (=> b!335583 (= res!185304 (not (contains!2072 (getCurrentListMap!1552 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapNonEmpty!11805 () Bool)

(declare-fun tp!24464 () Bool)

(assert (=> mapNonEmpty!11805 (= mapRes!11805 (and tp!24464 e!206007))))

(declare-fun mapValue!11805 () ValueCell!3126)

(declare-fun mapRest!11805 () (Array (_ BitVec 32) ValueCell!3126))

(declare-fun mapKey!11805 () (_ BitVec 32))

(assert (=> mapNonEmpty!11805 (= (arr!8256 _values!1525) (store mapRest!11805 mapKey!11805 mapValue!11805))))

(declare-fun b!335584 () Bool)

(declare-fun res!185306 () Bool)

(assert (=> b!335584 (=> (not res!185306) (not e!206009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17459 (_ BitVec 32)) Bool)

(assert (=> b!335584 (= res!185306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!335585 () Bool)

(declare-fun res!185302 () Bool)

(assert (=> b!335585 (=> (not res!185302) (not e!206009))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!335585 (= res!185302 (validKeyInArray!0 k0!1348))))

(assert (= (and start!33760 res!185303) b!335579))

(assert (= (and b!335579 res!185305) b!335584))

(assert (= (and b!335584 res!185306) b!335581))

(assert (= (and b!335581 res!185301) b!335585))

(assert (= (and b!335585 res!185302) b!335583))

(assert (= (and b!335583 res!185304) b!335582))

(assert (= (and b!335580 condMapEmpty!11805) mapIsEmpty!11805))

(assert (= (and b!335580 (not condMapEmpty!11805)) mapNonEmpty!11805))

(get-info :version)

(assert (= (and mapNonEmpty!11805 ((_ is ValueCellFull!3126) mapValue!11805)) b!335578))

(assert (= (and b!335580 ((_ is ValueCellFull!3126) mapDefault!11805)) b!335577))

(assert (= start!33760 b!335580))

(declare-fun m!339601 () Bool)

(assert (=> b!335583 m!339601))

(assert (=> b!335583 m!339601))

(declare-fun m!339603 () Bool)

(assert (=> b!335583 m!339603))

(declare-fun m!339605 () Bool)

(assert (=> start!33760 m!339605))

(declare-fun m!339607 () Bool)

(assert (=> start!33760 m!339607))

(declare-fun m!339609 () Bool)

(assert (=> start!33760 m!339609))

(declare-fun m!339611 () Bool)

(assert (=> b!335581 m!339611))

(declare-fun m!339613 () Bool)

(assert (=> b!335582 m!339613))

(declare-fun m!339615 () Bool)

(assert (=> b!335584 m!339615))

(declare-fun m!339617 () Bool)

(assert (=> mapNonEmpty!11805 m!339617))

(declare-fun m!339619 () Bool)

(assert (=> b!335585 m!339619))

(check-sat (not start!33760) (not b!335583) b_and!14185 (not b!335581) tp_is_empty!6939 (not b!335582) (not mapNonEmpty!11805) (not b!335584) (not b_next!6987) (not b!335585))
(check-sat b_and!14185 (not b_next!6987))
