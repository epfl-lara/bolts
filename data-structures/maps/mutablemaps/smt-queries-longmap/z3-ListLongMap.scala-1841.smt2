; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33380 () Bool)

(assert start!33380)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!9869 0))(
  ( (V!9870 (val!3379 Int)) )
))
(declare-datatypes ((ValueCell!2991 0))(
  ( (ValueCellFull!2991 (v!5533 V!9869)) (EmptyCell!2991) )
))
(declare-datatypes ((array!16933 0))(
  ( (array!16934 (arr!8003 (Array (_ BitVec 32) ValueCell!2991)) (size!8355 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!16933)

(declare-datatypes ((array!16935 0))(
  ( (array!16936 (arr!8004 (Array (_ BitVec 32) (_ BitVec 64))) (size!8356 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!16935)

(declare-fun b!331392 () Bool)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun e!203346 () Bool)

(assert (=> b!331392 (= e!203346 (and (= (size!8355 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8356 _keys!1895) (size!8355 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011) (= (size!8356 _keys!1895) (bvadd #b00000000000000000000000000000001 mask!2385)) (bvsgt #b00000000000000000000000000000000 (size!8356 _keys!1895))))))

(declare-fun b!331393 () Bool)

(declare-fun e!203348 () Bool)

(declare-fun tp_is_empty!6669 () Bool)

(assert (=> b!331393 (= e!203348 tp_is_empty!6669)))

(declare-fun b!331394 () Bool)

(declare-fun e!203350 () Bool)

(assert (=> b!331394 (= e!203350 tp_is_empty!6669)))

(declare-fun mapIsEmpty!11373 () Bool)

(declare-fun mapRes!11373 () Bool)

(assert (=> mapIsEmpty!11373 mapRes!11373))

(declare-fun b!331395 () Bool)

(declare-fun e!203349 () Bool)

(assert (=> b!331395 (= e!203349 (and e!203348 mapRes!11373))))

(declare-fun condMapEmpty!11373 () Bool)

(declare-fun mapDefault!11373 () ValueCell!2991)

(assert (=> b!331395 (= condMapEmpty!11373 (= (arr!8003 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!2991)) mapDefault!11373)))))

(declare-fun res!182661 () Bool)

(assert (=> start!33380 (=> (not res!182661) (not e!203346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33380 (= res!182661 (validMask!0 mask!2385))))

(assert (=> start!33380 e!203346))

(assert (=> start!33380 true))

(declare-fun array_inv!5956 (array!16933) Bool)

(assert (=> start!33380 (and (array_inv!5956 _values!1525) e!203349)))

(declare-fun array_inv!5957 (array!16935) Bool)

(assert (=> start!33380 (array_inv!5957 _keys!1895)))

(declare-fun mapNonEmpty!11373 () Bool)

(declare-fun tp!23748 () Bool)

(assert (=> mapNonEmpty!11373 (= mapRes!11373 (and tp!23748 e!203350))))

(declare-fun mapKey!11373 () (_ BitVec 32))

(declare-fun mapValue!11373 () ValueCell!2991)

(declare-fun mapRest!11373 () (Array (_ BitVec 32) ValueCell!2991))

(assert (=> mapNonEmpty!11373 (= (arr!8003 _values!1525) (store mapRest!11373 mapKey!11373 mapValue!11373))))

(assert (= (and start!33380 res!182661) b!331392))

(assert (= (and b!331395 condMapEmpty!11373) mapIsEmpty!11373))

(assert (= (and b!331395 (not condMapEmpty!11373)) mapNonEmpty!11373))

(get-info :version)

(assert (= (and mapNonEmpty!11373 ((_ is ValueCellFull!2991) mapValue!11373)) b!331394))

(assert (= (and b!331395 ((_ is ValueCellFull!2991) mapDefault!11373)) b!331393))

(assert (= start!33380 b!331395))

(declare-fun m!336261 () Bool)

(assert (=> start!33380 m!336261))

(declare-fun m!336263 () Bool)

(assert (=> start!33380 m!336263))

(declare-fun m!336265 () Bool)

(assert (=> start!33380 m!336265))

(declare-fun m!336267 () Bool)

(assert (=> mapNonEmpty!11373 m!336267))

(check-sat (not start!33380) (not mapNonEmpty!11373) tp_is_empty!6669)
(check-sat)
(get-model)

(declare-fun d!70317 () Bool)

(assert (=> d!70317 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!33380 d!70317))

(declare-fun d!70319 () Bool)

(assert (=> d!70319 (= (array_inv!5956 _values!1525) (bvsge (size!8355 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!33380 d!70319))

(declare-fun d!70321 () Bool)

(assert (=> d!70321 (= (array_inv!5957 _keys!1895) (bvsge (size!8356 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!33380 d!70321))

(declare-fun condMapEmpty!11379 () Bool)

(declare-fun mapDefault!11379 () ValueCell!2991)

(assert (=> mapNonEmpty!11373 (= condMapEmpty!11379 (= mapRest!11373 ((as const (Array (_ BitVec 32) ValueCell!2991)) mapDefault!11379)))))

(declare-fun e!203371 () Bool)

(declare-fun mapRes!11379 () Bool)

(assert (=> mapNonEmpty!11373 (= tp!23748 (and e!203371 mapRes!11379))))

(declare-fun mapIsEmpty!11379 () Bool)

(assert (=> mapIsEmpty!11379 mapRes!11379))

(declare-fun mapNonEmpty!11379 () Bool)

(declare-fun tp!23754 () Bool)

(declare-fun e!203370 () Bool)

(assert (=> mapNonEmpty!11379 (= mapRes!11379 (and tp!23754 e!203370))))

(declare-fun mapKey!11379 () (_ BitVec 32))

(declare-fun mapValue!11379 () ValueCell!2991)

(declare-fun mapRest!11379 () (Array (_ BitVec 32) ValueCell!2991))

(assert (=> mapNonEmpty!11379 (= mapRest!11373 (store mapRest!11379 mapKey!11379 mapValue!11379))))

(declare-fun b!331415 () Bool)

(assert (=> b!331415 (= e!203371 tp_is_empty!6669)))

(declare-fun b!331414 () Bool)

(assert (=> b!331414 (= e!203370 tp_is_empty!6669)))

(assert (= (and mapNonEmpty!11373 condMapEmpty!11379) mapIsEmpty!11379))

(assert (= (and mapNonEmpty!11373 (not condMapEmpty!11379)) mapNonEmpty!11379))

(assert (= (and mapNonEmpty!11379 ((_ is ValueCellFull!2991) mapValue!11379)) b!331414))

(assert (= (and mapNonEmpty!11373 ((_ is ValueCellFull!2991) mapDefault!11379)) b!331415))

(declare-fun m!336277 () Bool)

(assert (=> mapNonEmpty!11379 m!336277))

(check-sat (not mapNonEmpty!11379) tp_is_empty!6669)
(check-sat)
