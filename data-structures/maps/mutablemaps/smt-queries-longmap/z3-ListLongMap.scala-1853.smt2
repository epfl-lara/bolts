; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33496 () Bool)

(assert start!33496)

(declare-fun b!332176 () Bool)

(declare-fun res!183057 () Bool)

(declare-fun e!203982 () Bool)

(assert (=> b!332176 (=> (not res!183057) (not e!203982))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!9965 0))(
  ( (V!9966 (val!3415 Int)) )
))
(declare-datatypes ((ValueCell!3027 0))(
  ( (ValueCellFull!3027 (v!5570 V!9965)) (EmptyCell!3027) )
))
(declare-datatypes ((array!17075 0))(
  ( (array!17076 (arr!8069 (Array (_ BitVec 32) ValueCell!3027)) (size!8421 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17075)

(declare-datatypes ((array!17077 0))(
  ( (array!17078 (arr!8070 (Array (_ BitVec 32) (_ BitVec 64))) (size!8422 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17077)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!332176 (= res!183057 (and (= (size!8421 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8422 _keys!1895) (size!8421 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!332177 () Bool)

(declare-fun e!203984 () Bool)

(declare-fun tp_is_empty!6741 () Bool)

(assert (=> b!332177 (= e!203984 tp_is_empty!6741)))

(declare-fun mapNonEmpty!11496 () Bool)

(declare-fun mapRes!11496 () Bool)

(declare-fun tp!23871 () Bool)

(assert (=> mapNonEmpty!11496 (= mapRes!11496 (and tp!23871 e!203984))))

(declare-fun mapRest!11496 () (Array (_ BitVec 32) ValueCell!3027))

(declare-fun mapKey!11496 () (_ BitVec 32))

(declare-fun mapValue!11496 () ValueCell!3027)

(assert (=> mapNonEmpty!11496 (= (arr!8069 _values!1525) (store mapRest!11496 mapKey!11496 mapValue!11496))))

(declare-fun b!332178 () Bool)

(declare-fun e!203981 () Bool)

(declare-fun e!203983 () Bool)

(assert (=> b!332178 (= e!203981 (and e!203983 mapRes!11496))))

(declare-fun condMapEmpty!11496 () Bool)

(declare-fun mapDefault!11496 () ValueCell!3027)

(assert (=> b!332178 (= condMapEmpty!11496 (= (arr!8069 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3027)) mapDefault!11496)))))

(declare-fun b!332179 () Bool)

(assert (=> b!332179 (= e!203983 tp_is_empty!6741)))

(declare-fun res!183058 () Bool)

(assert (=> start!33496 (=> (not res!183058) (not e!203982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33496 (= res!183058 (validMask!0 mask!2385))))

(assert (=> start!33496 e!203982))

(assert (=> start!33496 true))

(declare-fun array_inv!6000 (array!17075) Bool)

(assert (=> start!33496 (and (array_inv!6000 _values!1525) e!203981)))

(declare-fun array_inv!6001 (array!17077) Bool)

(assert (=> start!33496 (array_inv!6001 _keys!1895)))

(declare-fun b!332180 () Bool)

(declare-fun res!183059 () Bool)

(assert (=> b!332180 (=> (not res!183059) (not e!203982))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17077 (_ BitVec 32)) Bool)

(assert (=> b!332180 (= res!183059 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!332181 () Bool)

(assert (=> b!332181 (= e!203982 false)))

(declare-fun lt!158967 () Bool)

(declare-datatypes ((List!4613 0))(
  ( (Nil!4610) (Cons!4609 (h!5465 (_ BitVec 64)) (t!9703 List!4613)) )
))
(declare-fun arrayNoDuplicates!0 (array!17077 (_ BitVec 32) List!4613) Bool)

(assert (=> b!332181 (= lt!158967 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4610))))

(declare-fun mapIsEmpty!11496 () Bool)

(assert (=> mapIsEmpty!11496 mapRes!11496))

(assert (= (and start!33496 res!183058) b!332176))

(assert (= (and b!332176 res!183057) b!332180))

(assert (= (and b!332180 res!183059) b!332181))

(assert (= (and b!332178 condMapEmpty!11496) mapIsEmpty!11496))

(assert (= (and b!332178 (not condMapEmpty!11496)) mapNonEmpty!11496))

(get-info :version)

(assert (= (and mapNonEmpty!11496 ((_ is ValueCellFull!3027) mapValue!11496)) b!332177))

(assert (= (and b!332178 ((_ is ValueCellFull!3027) mapDefault!11496)) b!332179))

(assert (= start!33496 b!332178))

(declare-fun m!336761 () Bool)

(assert (=> mapNonEmpty!11496 m!336761))

(declare-fun m!336763 () Bool)

(assert (=> start!33496 m!336763))

(declare-fun m!336765 () Bool)

(assert (=> start!33496 m!336765))

(declare-fun m!336767 () Bool)

(assert (=> start!33496 m!336767))

(declare-fun m!336769 () Bool)

(assert (=> b!332180 m!336769))

(declare-fun m!336771 () Bool)

(assert (=> b!332181 m!336771))

(check-sat tp_is_empty!6741 (not b!332181) (not start!33496) (not b!332180) (not mapNonEmpty!11496))
(check-sat)
