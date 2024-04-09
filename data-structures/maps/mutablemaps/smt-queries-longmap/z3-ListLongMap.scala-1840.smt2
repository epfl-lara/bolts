; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33374 () Bool)

(assert start!33374)

(declare-fun mapNonEmpty!11364 () Bool)

(declare-fun mapRes!11364 () Bool)

(declare-fun tp!23739 () Bool)

(declare-fun e!203301 () Bool)

(assert (=> mapNonEmpty!11364 (= mapRes!11364 (and tp!23739 e!203301))))

(declare-datatypes ((V!9861 0))(
  ( (V!9862 (val!3376 Int)) )
))
(declare-datatypes ((ValueCell!2988 0))(
  ( (ValueCellFull!2988 (v!5530 V!9861)) (EmptyCell!2988) )
))
(declare-fun mapValue!11364 () ValueCell!2988)

(declare-fun mapKey!11364 () (_ BitVec 32))

(declare-datatypes ((array!16921 0))(
  ( (array!16922 (arr!7997 (Array (_ BitVec 32) ValueCell!2988)) (size!8349 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16921)

(declare-fun mapRest!11364 () (Array (_ BitVec 32) ValueCell!2988))

(assert (=> mapNonEmpty!11364 (= (arr!7997 _values!1525) (store mapRest!11364 mapKey!11364 mapValue!11364))))

(declare-fun res!182652 () Bool)

(declare-fun e!203303 () Bool)

(assert (=> start!33374 (=> (not res!182652) (not e!203303))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33374 (= res!182652 (validMask!0 mask!2385))))

(assert (=> start!33374 e!203303))

(assert (=> start!33374 true))

(declare-fun e!203304 () Bool)

(declare-fun array_inv!5950 (array!16921) Bool)

(assert (=> start!33374 (and (array_inv!5950 _values!1525) e!203304)))

(declare-datatypes ((array!16923 0))(
  ( (array!16924 (arr!7998 (Array (_ BitVec 32) (_ BitVec 64))) (size!8350 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!16923)

(declare-fun array_inv!5951 (array!16923) Bool)

(assert (=> start!33374 (array_inv!5951 _keys!1895)))

(declare-fun b!331356 () Bool)

(declare-fun tp_is_empty!6663 () Bool)

(assert (=> b!331356 (= e!203301 tp_is_empty!6663)))

(declare-fun b!331357 () Bool)

(declare-fun e!203305 () Bool)

(assert (=> b!331357 (= e!203304 (and e!203305 mapRes!11364))))

(declare-fun condMapEmpty!11364 () Bool)

(declare-fun mapDefault!11364 () ValueCell!2988)

(assert (=> b!331357 (= condMapEmpty!11364 (= (arr!7997 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!2988)) mapDefault!11364)))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun b!331358 () Bool)

(assert (=> b!331358 (= e!203303 (and (= (size!8349 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8350 _keys!1895) (size!8349 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011) (not (= (size!8350 _keys!1895) (bvadd #b00000000000000000000000000000001 mask!2385)))))))

(declare-fun mapIsEmpty!11364 () Bool)

(assert (=> mapIsEmpty!11364 mapRes!11364))

(declare-fun b!331359 () Bool)

(assert (=> b!331359 (= e!203305 tp_is_empty!6663)))

(assert (= (and start!33374 res!182652) b!331358))

(assert (= (and b!331357 condMapEmpty!11364) mapIsEmpty!11364))

(assert (= (and b!331357 (not condMapEmpty!11364)) mapNonEmpty!11364))

(get-info :version)

(assert (= (and mapNonEmpty!11364 ((_ is ValueCellFull!2988) mapValue!11364)) b!331356))

(assert (= (and b!331357 ((_ is ValueCellFull!2988) mapDefault!11364)) b!331359))

(assert (= start!33374 b!331357))

(declare-fun m!336237 () Bool)

(assert (=> mapNonEmpty!11364 m!336237))

(declare-fun m!336239 () Bool)

(assert (=> start!33374 m!336239))

(declare-fun m!336241 () Bool)

(assert (=> start!33374 m!336241))

(declare-fun m!336243 () Bool)

(assert (=> start!33374 m!336243))

(check-sat (not start!33374) (not mapNonEmpty!11364) tp_is_empty!6663)
(check-sat)
