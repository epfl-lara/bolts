; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75418 () Bool)

(assert start!75418)

(declare-fun b!887563 () Bool)

(declare-fun b_free!15525 () Bool)

(declare-fun b_next!15525 () Bool)

(assert (=> b!887563 (= b_free!15525 (not b_next!15525))))

(declare-fun tp!54517 () Bool)

(declare-fun b_and!25779 () Bool)

(assert (=> b!887563 (= tp!54517 b_and!25779)))

(declare-fun res!602202 () Bool)

(declare-fun e!494368 () Bool)

(assert (=> start!75418 (=> (not res!602202) (not e!494368))))

(declare-datatypes ((V!28769 0))(
  ( (V!28770 (val!8977 Int)) )
))
(declare-datatypes ((array!51656 0))(
  ( (array!51657 (arr!24838 (Array (_ BitVec 32) (_ BitVec 64))) (size!25279 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!8445 0))(
  ( (ValueCellFull!8445 (v!11434 V!28769)) (EmptyCell!8445) )
))
(declare-datatypes ((array!51658 0))(
  ( (array!51659 (arr!24839 (Array (_ BitVec 32) ValueCell!8445)) (size!25280 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3906 0))(
  ( (LongMapFixedSize!3907 (defaultEntry!5144 Int) (mask!25539 (_ BitVec 32)) (extraKeys!4838 (_ BitVec 32)) (zeroValue!4942 V!28769) (minValue!4942 V!28769) (_size!2008 (_ BitVec 32)) (_keys!9817 array!51656) (_values!5129 array!51658) (_vacant!2008 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1060 0))(
  ( (Cell!1061 (v!11435 LongMapFixedSize!3906)) )
))
(declare-datatypes ((LongMap!1060 0))(
  ( (LongMap!1061 (underlying!541 Cell!1060)) )
))
(declare-fun thiss!821 () LongMap!1060)

(declare-fun valid!1512 (LongMap!1060) Bool)

(assert (=> start!75418 (= res!602202 (valid!1512 thiss!821))))

(assert (=> start!75418 e!494368))

(declare-fun e!494372 () Bool)

(assert (=> start!75418 e!494372))

(declare-fun mapIsEmpty!28306 () Bool)

(declare-fun mapRes!28306 () Bool)

(assert (=> mapIsEmpty!28306 mapRes!28306))

(declare-fun mapNonEmpty!28306 () Bool)

(declare-fun tp!54516 () Bool)

(declare-fun e!494367 () Bool)

(assert (=> mapNonEmpty!28306 (= mapRes!28306 (and tp!54516 e!494367))))

(declare-fun mapValue!28306 () ValueCell!8445)

(declare-fun mapRest!28306 () (Array (_ BitVec 32) ValueCell!8445))

(declare-fun mapKey!28306 () (_ BitVec 32))

(assert (=> mapNonEmpty!28306 (= (arr!24839 (_values!5129 (v!11435 (underlying!541 thiss!821)))) (store mapRest!28306 mapKey!28306 mapValue!28306))))

(declare-fun b!887560 () Bool)

(declare-fun e!494373 () Bool)

(declare-fun e!494369 () Bool)

(assert (=> b!887560 (= e!494373 e!494369)))

(declare-fun b!887561 () Bool)

(declare-fun e!494374 () Bool)

(declare-fun e!494371 () Bool)

(assert (=> b!887561 (= e!494374 (and e!494371 mapRes!28306))))

(declare-fun condMapEmpty!28306 () Bool)

(declare-fun mapDefault!28306 () ValueCell!8445)

(assert (=> b!887561 (= condMapEmpty!28306 (= (arr!24839 (_values!5129 (v!11435 (underlying!541 thiss!821)))) ((as const (Array (_ BitVec 32) ValueCell!8445)) mapDefault!28306)))))

(declare-fun b!887562 () Bool)

(declare-fun tp_is_empty!17853 () Bool)

(assert (=> b!887562 (= e!494371 tp_is_empty!17853)))

(declare-fun array_inv!19524 (array!51656) Bool)

(declare-fun array_inv!19525 (array!51658) Bool)

(assert (=> b!887563 (= e!494369 (and tp!54517 tp_is_empty!17853 (array_inv!19524 (_keys!9817 (v!11435 (underlying!541 thiss!821)))) (array_inv!19525 (_values!5129 (v!11435 (underlying!541 thiss!821)))) e!494374))))

(declare-fun b!887564 () Bool)

(assert (=> b!887564 (= e!494372 e!494373)))

(declare-fun b!887565 () Bool)

(assert (=> b!887565 (= e!494367 tp_is_empty!17853)))

(declare-fun b!887566 () Bool)

(declare-fun valid!1513 (LongMapFixedSize!3906) Bool)

(assert (=> b!887566 (= e!494368 (not (valid!1513 (v!11435 (underlying!541 thiss!821)))))))

(assert (= (and start!75418 res!602202) b!887566))

(assert (= (and b!887561 condMapEmpty!28306) mapIsEmpty!28306))

(assert (= (and b!887561 (not condMapEmpty!28306)) mapNonEmpty!28306))

(get-info :version)

(assert (= (and mapNonEmpty!28306 ((_ is ValueCellFull!8445) mapValue!28306)) b!887565))

(assert (= (and b!887561 ((_ is ValueCellFull!8445) mapDefault!28306)) b!887562))

(assert (= b!887563 b!887561))

(assert (= b!887560 b!887563))

(assert (= b!887564 b!887560))

(assert (= start!75418 b!887564))

(declare-fun m!827215 () Bool)

(assert (=> start!75418 m!827215))

(declare-fun m!827217 () Bool)

(assert (=> mapNonEmpty!28306 m!827217))

(declare-fun m!827219 () Bool)

(assert (=> b!887563 m!827219))

(declare-fun m!827221 () Bool)

(assert (=> b!887563 m!827221))

(declare-fun m!827223 () Bool)

(assert (=> b!887566 m!827223))

(check-sat b_and!25779 (not start!75418) tp_is_empty!17853 (not mapNonEmpty!28306) (not b_next!15525) (not b!887563) (not b!887566))
(check-sat b_and!25779 (not b_next!15525))
(get-model)

(declare-fun d!109883 () Bool)

(assert (=> d!109883 (= (array_inv!19524 (_keys!9817 (v!11435 (underlying!541 thiss!821)))) (bvsge (size!25279 (_keys!9817 (v!11435 (underlying!541 thiss!821)))) #b00000000000000000000000000000000))))

(assert (=> b!887563 d!109883))

(declare-fun d!109885 () Bool)

(assert (=> d!109885 (= (array_inv!19525 (_values!5129 (v!11435 (underlying!541 thiss!821)))) (bvsge (size!25280 (_values!5129 (v!11435 (underlying!541 thiss!821)))) #b00000000000000000000000000000000))))

(assert (=> b!887563 d!109885))

(declare-fun d!109887 () Bool)

(declare-fun res!602212 () Bool)

(declare-fun e!494401 () Bool)

(assert (=> d!109887 (=> (not res!602212) (not e!494401))))

(declare-fun simpleValid!287 (LongMapFixedSize!3906) Bool)

(assert (=> d!109887 (= res!602212 (simpleValid!287 (v!11435 (underlying!541 thiss!821))))))

(assert (=> d!109887 (= (valid!1513 (v!11435 (underlying!541 thiss!821))) e!494401)))

(declare-fun b!887594 () Bool)

(declare-fun res!602213 () Bool)

(assert (=> b!887594 (=> (not res!602213) (not e!494401))))

(declare-fun arrayCountValidKeys!0 (array!51656 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!887594 (= res!602213 (= (arrayCountValidKeys!0 (_keys!9817 (v!11435 (underlying!541 thiss!821))) #b00000000000000000000000000000000 (size!25279 (_keys!9817 (v!11435 (underlying!541 thiss!821))))) (_size!2008 (v!11435 (underlying!541 thiss!821)))))))

(declare-fun b!887595 () Bool)

(declare-fun res!602214 () Bool)

(assert (=> b!887595 (=> (not res!602214) (not e!494401))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51656 (_ BitVec 32)) Bool)

(assert (=> b!887595 (= res!602214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9817 (v!11435 (underlying!541 thiss!821))) (mask!25539 (v!11435 (underlying!541 thiss!821)))))))

(declare-fun b!887596 () Bool)

(declare-datatypes ((List!17767 0))(
  ( (Nil!17764) (Cons!17763 (h!18894 (_ BitVec 64)) (t!25070 List!17767)) )
))
(declare-fun arrayNoDuplicates!0 (array!51656 (_ BitVec 32) List!17767) Bool)

(assert (=> b!887596 (= e!494401 (arrayNoDuplicates!0 (_keys!9817 (v!11435 (underlying!541 thiss!821))) #b00000000000000000000000000000000 Nil!17764))))

(assert (= (and d!109887 res!602212) b!887594))

(assert (= (and b!887594 res!602213) b!887595))

(assert (= (and b!887595 res!602214) b!887596))

(declare-fun m!827235 () Bool)

(assert (=> d!109887 m!827235))

(declare-fun m!827237 () Bool)

(assert (=> b!887594 m!827237))

(declare-fun m!827239 () Bool)

(assert (=> b!887595 m!827239))

(declare-fun m!827241 () Bool)

(assert (=> b!887596 m!827241))

(assert (=> b!887566 d!109887))

(declare-fun d!109889 () Bool)

(assert (=> d!109889 (= (valid!1512 thiss!821) (valid!1513 (v!11435 (underlying!541 thiss!821))))))

(declare-fun bs!24879 () Bool)

(assert (= bs!24879 d!109889))

(assert (=> bs!24879 m!827223))

(assert (=> start!75418 d!109889))

(declare-fun mapIsEmpty!28312 () Bool)

(declare-fun mapRes!28312 () Bool)

(assert (=> mapIsEmpty!28312 mapRes!28312))

(declare-fun condMapEmpty!28312 () Bool)

(declare-fun mapDefault!28312 () ValueCell!8445)

(assert (=> mapNonEmpty!28306 (= condMapEmpty!28312 (= mapRest!28306 ((as const (Array (_ BitVec 32) ValueCell!8445)) mapDefault!28312)))))

(declare-fun e!494407 () Bool)

(assert (=> mapNonEmpty!28306 (= tp!54516 (and e!494407 mapRes!28312))))

(declare-fun b!887603 () Bool)

(declare-fun e!494406 () Bool)

(assert (=> b!887603 (= e!494406 tp_is_empty!17853)))

(declare-fun b!887604 () Bool)

(assert (=> b!887604 (= e!494407 tp_is_empty!17853)))

(declare-fun mapNonEmpty!28312 () Bool)

(declare-fun tp!54526 () Bool)

(assert (=> mapNonEmpty!28312 (= mapRes!28312 (and tp!54526 e!494406))))

(declare-fun mapRest!28312 () (Array (_ BitVec 32) ValueCell!8445))

(declare-fun mapValue!28312 () ValueCell!8445)

(declare-fun mapKey!28312 () (_ BitVec 32))

(assert (=> mapNonEmpty!28312 (= mapRest!28306 (store mapRest!28312 mapKey!28312 mapValue!28312))))

(assert (= (and mapNonEmpty!28306 condMapEmpty!28312) mapIsEmpty!28312))

(assert (= (and mapNonEmpty!28306 (not condMapEmpty!28312)) mapNonEmpty!28312))

(assert (= (and mapNonEmpty!28312 ((_ is ValueCellFull!8445) mapValue!28312)) b!887603))

(assert (= (and mapNonEmpty!28306 ((_ is ValueCellFull!8445) mapDefault!28312)) b!887604))

(declare-fun m!827243 () Bool)

(assert (=> mapNonEmpty!28312 m!827243))

(check-sat b_and!25779 (not b!887596) (not mapNonEmpty!28312) (not d!109887) (not d!109889) (not b!887594) (not b_next!15525) tp_is_empty!17853 (not b!887595))
(check-sat b_and!25779 (not b_next!15525))
