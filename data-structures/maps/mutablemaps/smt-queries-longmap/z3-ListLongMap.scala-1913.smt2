; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34078 () Bool)

(assert start!34078)

(declare-fun b_free!7149 () Bool)

(declare-fun b_next!7149 () Bool)

(assert (=> start!34078 (= b_free!7149 (not b_next!7149))))

(declare-fun tp!24972 () Bool)

(declare-fun b_and!14361 () Bool)

(assert (=> start!34078 (= tp!24972 b_and!14361)))

(declare-fun b!339271 () Bool)

(declare-fun res!187460 () Bool)

(declare-fun e!208170 () Bool)

(assert (=> b!339271 (=> (not res!187460) (not e!208170))))

(declare-datatypes ((array!17773 0))(
  ( (array!17774 (arr!8407 (Array (_ BitVec 32) (_ BitVec 64))) (size!8759 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17773)

(declare-datatypes ((List!4852 0))(
  ( (Nil!4849) (Cons!4848 (h!5704 (_ BitVec 64)) (t!9962 List!4852)) )
))
(declare-fun arrayNoDuplicates!0 (array!17773 (_ BitVec 32) List!4852) Bool)

(assert (=> b!339271 (= res!187460 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4849))))

(declare-fun b!339272 () Bool)

(declare-fun res!187464 () Bool)

(assert (=> b!339272 (=> (not res!187464) (not e!208170))))

(declare-datatypes ((V!10445 0))(
  ( (V!10446 (val!3595 Int)) )
))
(declare-datatypes ((ValueCell!3207 0))(
  ( (ValueCellFull!3207 (v!5760 V!10445)) (EmptyCell!3207) )
))
(declare-datatypes ((array!17775 0))(
  ( (array!17776 (arr!8408 (Array (_ BitVec 32) ValueCell!3207)) (size!8760 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17775)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun mask!2385 () (_ BitVec 32))

(assert (=> b!339272 (= res!187464 (and (= (size!8760 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8759 _keys!1895) (size!8760 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12069 () Bool)

(declare-fun mapRes!12069 () Bool)

(assert (=> mapIsEmpty!12069 mapRes!12069))

(declare-fun b!339273 () Bool)

(declare-datatypes ((Unit!10571 0))(
  ( (Unit!10572) )
))
(declare-fun e!208169 () Unit!10571)

(declare-fun Unit!10573 () Unit!10571)

(assert (=> b!339273 (= e!208169 Unit!10573)))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10445)

(declare-fun defaultEntry!1528 () Int)

(declare-fun lt!161177 () Unit!10571)

(declare-fun minValue!1467 () V!10445)

(declare-fun lemmaArrayContainsKeyThenInListMap!285 (array!17773 array!17775 (_ BitVec 32) (_ BitVec 32) V!10445 V!10445 (_ BitVec 64) (_ BitVec 32) Int) Unit!10571)

(declare-fun arrayScanForKey!0 (array!17773 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!339273 (= lt!161177 (lemmaArrayContainsKeyThenInListMap!285 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!339273 false))

(declare-fun res!187461 () Bool)

(assert (=> start!34078 (=> (not res!187461) (not e!208170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34078 (= res!187461 (validMask!0 mask!2385))))

(assert (=> start!34078 e!208170))

(assert (=> start!34078 true))

(declare-fun tp_is_empty!7101 () Bool)

(assert (=> start!34078 tp_is_empty!7101))

(assert (=> start!34078 tp!24972))

(declare-fun e!208166 () Bool)

(declare-fun array_inv!6226 (array!17775) Bool)

(assert (=> start!34078 (and (array_inv!6226 _values!1525) e!208166)))

(declare-fun array_inv!6227 (array!17773) Bool)

(assert (=> start!34078 (array_inv!6227 _keys!1895)))

(declare-fun b!339274 () Bool)

(declare-fun e!208165 () Bool)

(assert (=> b!339274 (= e!208165 tp_is_empty!7101)))

(declare-fun b!339275 () Bool)

(declare-fun e!208168 () Bool)

(assert (=> b!339275 (= e!208168 false)))

(declare-fun lt!161178 () Unit!10571)

(assert (=> b!339275 (= lt!161178 e!208169)))

(declare-fun c!52484 () Bool)

(declare-fun arrayContainsKey!0 (array!17773 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!339275 (= c!52484 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!12069 () Bool)

(declare-fun tp!24971 () Bool)

(assert (=> mapNonEmpty!12069 (= mapRes!12069 (and tp!24971 e!208165))))

(declare-fun mapKey!12069 () (_ BitVec 32))

(declare-fun mapValue!12069 () ValueCell!3207)

(declare-fun mapRest!12069 () (Array (_ BitVec 32) ValueCell!3207))

(assert (=> mapNonEmpty!12069 (= (arr!8408 _values!1525) (store mapRest!12069 mapKey!12069 mapValue!12069))))

(declare-fun b!339276 () Bool)

(assert (=> b!339276 (= e!208170 e!208168)))

(declare-fun res!187462 () Bool)

(assert (=> b!339276 (=> (not res!187462) (not e!208168))))

(declare-datatypes ((SeekEntryResult!3254 0))(
  ( (MissingZero!3254 (index!15195 (_ BitVec 32))) (Found!3254 (index!15196 (_ BitVec 32))) (Intermediate!3254 (undefined!4066 Bool) (index!15197 (_ BitVec 32)) (x!33805 (_ BitVec 32))) (Undefined!3254) (MissingVacant!3254 (index!15198 (_ BitVec 32))) )
))
(declare-fun lt!161176 () SeekEntryResult!3254)

(get-info :version)

(assert (=> b!339276 (= res!187462 (and (not ((_ is Found!3254) lt!161176)) ((_ is MissingZero!3254) lt!161176)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17773 (_ BitVec 32)) SeekEntryResult!3254)

(assert (=> b!339276 (= lt!161176 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!339277 () Bool)

(declare-fun e!208167 () Bool)

(assert (=> b!339277 (= e!208166 (and e!208167 mapRes!12069))))

(declare-fun condMapEmpty!12069 () Bool)

(declare-fun mapDefault!12069 () ValueCell!3207)

(assert (=> b!339277 (= condMapEmpty!12069 (= (arr!8408 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3207)) mapDefault!12069)))))

(declare-fun b!339278 () Bool)

(declare-fun res!187466 () Bool)

(assert (=> b!339278 (=> (not res!187466) (not e!208170))))

(declare-datatypes ((tuple2!5210 0))(
  ( (tuple2!5211 (_1!2615 (_ BitVec 64)) (_2!2615 V!10445)) )
))
(declare-datatypes ((List!4853 0))(
  ( (Nil!4850) (Cons!4849 (h!5705 tuple2!5210) (t!9963 List!4853)) )
))
(declare-datatypes ((ListLongMap!4137 0))(
  ( (ListLongMap!4138 (toList!2084 List!4853)) )
))
(declare-fun contains!2131 (ListLongMap!4137 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1604 (array!17773 array!17775 (_ BitVec 32) (_ BitVec 32) V!10445 V!10445 (_ BitVec 32) Int) ListLongMap!4137)

(assert (=> b!339278 (= res!187466 (not (contains!2131 (getCurrentListMap!1604 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!339279 () Bool)

(declare-fun Unit!10574 () Unit!10571)

(assert (=> b!339279 (= e!208169 Unit!10574)))

(declare-fun b!339280 () Bool)

(declare-fun res!187463 () Bool)

(assert (=> b!339280 (=> (not res!187463) (not e!208170))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17773 (_ BitVec 32)) Bool)

(assert (=> b!339280 (= res!187463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!339281 () Bool)

(declare-fun res!187465 () Bool)

(assert (=> b!339281 (=> (not res!187465) (not e!208170))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!339281 (= res!187465 (validKeyInArray!0 k0!1348))))

(declare-fun b!339282 () Bool)

(assert (=> b!339282 (= e!208167 tp_is_empty!7101)))

(assert (= (and start!34078 res!187461) b!339272))

(assert (= (and b!339272 res!187464) b!339280))

(assert (= (and b!339280 res!187463) b!339271))

(assert (= (and b!339271 res!187460) b!339281))

(assert (= (and b!339281 res!187465) b!339278))

(assert (= (and b!339278 res!187466) b!339276))

(assert (= (and b!339276 res!187462) b!339275))

(assert (= (and b!339275 c!52484) b!339273))

(assert (= (and b!339275 (not c!52484)) b!339279))

(assert (= (and b!339277 condMapEmpty!12069) mapIsEmpty!12069))

(assert (= (and b!339277 (not condMapEmpty!12069)) mapNonEmpty!12069))

(assert (= (and mapNonEmpty!12069 ((_ is ValueCellFull!3207) mapValue!12069)) b!339274))

(assert (= (and b!339277 ((_ is ValueCellFull!3207) mapDefault!12069)) b!339282))

(assert (= start!34078 b!339277))

(declare-fun m!342279 () Bool)

(assert (=> mapNonEmpty!12069 m!342279))

(declare-fun m!342281 () Bool)

(assert (=> b!339278 m!342281))

(assert (=> b!339278 m!342281))

(declare-fun m!342283 () Bool)

(assert (=> b!339278 m!342283))

(declare-fun m!342285 () Bool)

(assert (=> b!339280 m!342285))

(declare-fun m!342287 () Bool)

(assert (=> b!339275 m!342287))

(declare-fun m!342289 () Bool)

(assert (=> b!339273 m!342289))

(assert (=> b!339273 m!342289))

(declare-fun m!342291 () Bool)

(assert (=> b!339273 m!342291))

(declare-fun m!342293 () Bool)

(assert (=> b!339271 m!342293))

(declare-fun m!342295 () Bool)

(assert (=> b!339281 m!342295))

(declare-fun m!342297 () Bool)

(assert (=> start!34078 m!342297))

(declare-fun m!342299 () Bool)

(assert (=> start!34078 m!342299))

(declare-fun m!342301 () Bool)

(assert (=> start!34078 m!342301))

(declare-fun m!342303 () Bool)

(assert (=> b!339276 m!342303))

(check-sat (not start!34078) (not b!339271) (not b_next!7149) (not b!339281) (not b!339280) (not b!339276) tp_is_empty!7101 (not b!339275) b_and!14361 (not b!339278) (not b!339273) (not mapNonEmpty!12069))
(check-sat b_and!14361 (not b_next!7149))
