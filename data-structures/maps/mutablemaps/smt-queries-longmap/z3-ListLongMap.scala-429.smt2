; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8026 () Bool)

(assert start!8026)

(declare-fun b!50373 () Bool)

(declare-fun b_free!1541 () Bool)

(declare-fun b_next!1541 () Bool)

(assert (=> b!50373 (= b_free!1541 (not b_next!1541))))

(declare-fun tp!6680 () Bool)

(declare-fun b_and!2761 () Bool)

(assert (=> b!50373 (= tp!6680 b_and!2761)))

(declare-fun b!50365 () Bool)

(declare-fun b_free!1543 () Bool)

(declare-fun b_next!1543 () Bool)

(assert (=> b!50365 (= b_free!1543 (not b_next!1543))))

(declare-fun tp!6682 () Bool)

(declare-fun b_and!2763 () Bool)

(assert (=> b!50365 (= tp!6682 b_and!2763)))

(declare-fun b!50359 () Bool)

(declare-fun e!32534 () Bool)

(declare-fun e!32535 () Bool)

(declare-fun mapRes!2188 () Bool)

(assert (=> b!50359 (= e!32534 (and e!32535 mapRes!2188))))

(declare-fun condMapEmpty!2187 () Bool)

(declare-datatypes ((V!2563 0))(
  ( (V!2564 (val!1138 Int)) )
))
(declare-datatypes ((array!3284 0))(
  ( (array!3285 (arr!1570 (Array (_ BitVec 32) (_ BitVec 64))) (size!1793 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!750 0))(
  ( (ValueCellFull!750 (v!2160 V!2563)) (EmptyCell!750) )
))
(declare-datatypes ((array!3286 0))(
  ( (array!3287 (arr!1571 (Array (_ BitVec 32) ValueCell!750)) (size!1794 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!408 0))(
  ( (LongMapFixedSize!409 (defaultEntry!1918 Int) (mask!5705 (_ BitVec 32)) (extraKeys!1809 (_ BitVec 32)) (zeroValue!1836 V!2563) (minValue!1836 V!2563) (_size!253 (_ BitVec 32)) (_keys!3526 array!3284) (_values!1901 array!3286) (_vacant!253 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!408)

(declare-fun mapDefault!2187 () ValueCell!750)

(assert (=> b!50359 (= condMapEmpty!2187 (= (arr!1571 (_values!1901 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!750)) mapDefault!2187)))))

(declare-fun b!50360 () Bool)

(declare-fun tp_is_empty!2187 () Bool)

(assert (=> b!50360 (= e!32535 tp_is_empty!2187)))

(declare-fun mapIsEmpty!2187 () Bool)

(declare-fun mapRes!2187 () Bool)

(assert (=> mapIsEmpty!2187 mapRes!2187))

(declare-fun b!50361 () Bool)

(declare-fun e!32537 () Bool)

(assert (=> b!50361 (= e!32537 tp_is_empty!2187)))

(declare-fun b!50362 () Bool)

(declare-fun e!32536 () Bool)

(declare-fun e!32542 () Bool)

(assert (=> b!50362 (= e!32536 e!32542)))

(declare-fun b!50363 () Bool)

(declare-fun res!29003 () Bool)

(declare-fun e!32538 () Bool)

(assert (=> b!50363 (=> (not res!29003) (not e!32538))))

(declare-fun valid!137 (LongMapFixedSize!408) Bool)

(assert (=> b!50363 (= res!29003 (valid!137 newMap!16))))

(declare-fun e!32531 () Bool)

(declare-fun array_inv!915 (array!3284) Bool)

(declare-fun array_inv!916 (array!3286) Bool)

(assert (=> b!50365 (= e!32531 (and tp!6682 tp_is_empty!2187 (array_inv!915 (_keys!3526 newMap!16)) (array_inv!916 (_values!1901 newMap!16)) e!32534))))

(declare-fun mapNonEmpty!2187 () Bool)

(declare-fun tp!6681 () Bool)

(declare-fun e!32539 () Bool)

(assert (=> mapNonEmpty!2187 (= mapRes!2187 (and tp!6681 e!32539))))

(declare-datatypes ((Cell!232 0))(
  ( (Cell!233 (v!2161 LongMapFixedSize!408)) )
))
(declare-datatypes ((LongMap!232 0))(
  ( (LongMap!233 (underlying!127 Cell!232)) )
))
(declare-fun thiss!992 () LongMap!232)

(declare-fun mapRest!2187 () (Array (_ BitVec 32) ValueCell!750))

(declare-fun mapValue!2188 () ValueCell!750)

(declare-fun mapKey!2187 () (_ BitVec 32))

(assert (=> mapNonEmpty!2187 (= (arr!1571 (_values!1901 (v!2161 (underlying!127 thiss!992)))) (store mapRest!2187 mapKey!2187 mapValue!2188))))

(declare-fun mapIsEmpty!2188 () Bool)

(assert (=> mapIsEmpty!2188 mapRes!2188))

(declare-fun b!50366 () Bool)

(declare-fun e!32541 () Bool)

(assert (=> b!50366 (= e!32541 tp_is_empty!2187)))

(declare-fun mapNonEmpty!2188 () Bool)

(declare-fun tp!6679 () Bool)

(assert (=> mapNonEmpty!2188 (= mapRes!2188 (and tp!6679 e!32541))))

(declare-fun mapRest!2188 () (Array (_ BitVec 32) ValueCell!750))

(declare-fun mapKey!2188 () (_ BitVec 32))

(declare-fun mapValue!2187 () ValueCell!750)

(assert (=> mapNonEmpty!2188 (= (arr!1571 (_values!1901 newMap!16)) (store mapRest!2188 mapKey!2188 mapValue!2187))))

(declare-fun b!50367 () Bool)

(declare-fun res!29004 () Bool)

(assert (=> b!50367 (=> (not res!29004) (not e!32538))))

(assert (=> b!50367 (= res!29004 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5705 newMap!16)) (_size!253 (v!2161 (underlying!127 thiss!992)))))))

(declare-fun b!50368 () Bool)

(assert (=> b!50368 (= e!32539 tp_is_empty!2187)))

(declare-fun b!50369 () Bool)

(declare-fun e!32533 () Bool)

(assert (=> b!50369 (= e!32533 e!32536)))

(declare-fun b!50370 () Bool)

(assert (=> b!50370 (= e!32538 (not (= (size!1794 (_values!1901 (v!2161 (underlying!127 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5705 (v!2161 (underlying!127 thiss!992)))))))))

(declare-fun b!50371 () Bool)

(declare-fun res!29002 () Bool)

(assert (=> b!50371 (=> (not res!29002) (not e!32538))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!50371 (= res!29002 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1793 (_keys!3526 (v!2161 (underlying!127 thiss!992)))))))))

(declare-fun res!29006 () Bool)

(assert (=> start!8026 (=> (not res!29006) (not e!32538))))

(declare-fun valid!138 (LongMap!232) Bool)

(assert (=> start!8026 (= res!29006 (valid!138 thiss!992))))

(assert (=> start!8026 e!32538))

(assert (=> start!8026 e!32533))

(assert (=> start!8026 true))

(assert (=> start!8026 e!32531))

(declare-fun b!50364 () Bool)

(declare-fun res!29005 () Bool)

(assert (=> b!50364 (=> (not res!29005) (not e!32538))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!50364 (= res!29005 (validMask!0 (mask!5705 (v!2161 (underlying!127 thiss!992)))))))

(declare-fun b!50372 () Bool)

(declare-fun e!32532 () Bool)

(assert (=> b!50372 (= e!32532 (and e!32537 mapRes!2187))))

(declare-fun condMapEmpty!2188 () Bool)

(declare-fun mapDefault!2188 () ValueCell!750)

(assert (=> b!50372 (= condMapEmpty!2188 (= (arr!1571 (_values!1901 (v!2161 (underlying!127 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!750)) mapDefault!2188)))))

(assert (=> b!50373 (= e!32542 (and tp!6680 tp_is_empty!2187 (array_inv!915 (_keys!3526 (v!2161 (underlying!127 thiss!992)))) (array_inv!916 (_values!1901 (v!2161 (underlying!127 thiss!992)))) e!32532))))

(assert (= (and start!8026 res!29006) b!50371))

(assert (= (and b!50371 res!29002) b!50363))

(assert (= (and b!50363 res!29003) b!50367))

(assert (= (and b!50367 res!29004) b!50364))

(assert (= (and b!50364 res!29005) b!50370))

(assert (= (and b!50372 condMapEmpty!2188) mapIsEmpty!2187))

(assert (= (and b!50372 (not condMapEmpty!2188)) mapNonEmpty!2187))

(get-info :version)

(assert (= (and mapNonEmpty!2187 ((_ is ValueCellFull!750) mapValue!2188)) b!50368))

(assert (= (and b!50372 ((_ is ValueCellFull!750) mapDefault!2188)) b!50361))

(assert (= b!50373 b!50372))

(assert (= b!50362 b!50373))

(assert (= b!50369 b!50362))

(assert (= start!8026 b!50369))

(assert (= (and b!50359 condMapEmpty!2187) mapIsEmpty!2188))

(assert (= (and b!50359 (not condMapEmpty!2187)) mapNonEmpty!2188))

(assert (= (and mapNonEmpty!2188 ((_ is ValueCellFull!750) mapValue!2187)) b!50366))

(assert (= (and b!50359 ((_ is ValueCellFull!750) mapDefault!2187)) b!50360))

(assert (= b!50365 b!50359))

(assert (= start!8026 b!50365))

(declare-fun m!43695 () Bool)

(assert (=> b!50363 m!43695))

(declare-fun m!43697 () Bool)

(assert (=> b!50373 m!43697))

(declare-fun m!43699 () Bool)

(assert (=> b!50373 m!43699))

(declare-fun m!43701 () Bool)

(assert (=> mapNonEmpty!2187 m!43701))

(declare-fun m!43703 () Bool)

(assert (=> b!50365 m!43703))

(declare-fun m!43705 () Bool)

(assert (=> b!50365 m!43705))

(declare-fun m!43707 () Bool)

(assert (=> mapNonEmpty!2188 m!43707))

(declare-fun m!43709 () Bool)

(assert (=> b!50364 m!43709))

(declare-fun m!43711 () Bool)

(assert (=> start!8026 m!43711))

(check-sat (not b_next!1543) (not mapNonEmpty!2188) (not b!50363) b_and!2761 tp_is_empty!2187 b_and!2763 (not b!50373) (not mapNonEmpty!2187) (not b!50364) (not b!50365) (not b_next!1541) (not start!8026))
(check-sat b_and!2761 b_and!2763 (not b_next!1541) (not b_next!1543))
(get-model)

(declare-fun d!10179 () Bool)

(assert (=> d!10179 (= (valid!138 thiss!992) (valid!137 (v!2161 (underlying!127 thiss!992))))))

(declare-fun bs!2359 () Bool)

(assert (= bs!2359 d!10179))

(declare-fun m!43731 () Bool)

(assert (=> bs!2359 m!43731))

(assert (=> start!8026 d!10179))

(declare-fun d!10181 () Bool)

(assert (=> d!10181 (= (validMask!0 (mask!5705 (v!2161 (underlying!127 thiss!992)))) (and (or (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000000000000111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000000000001111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000000000011111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000000000111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000000001111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000000011111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000000111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000001111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000011111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000111111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000000000001111111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000000000011111111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000000000111111111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000000001111111111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000000011111111111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000000111111111111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000001111111111111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000011111111111111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000111111111111111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000001111111111111111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000011111111111111111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000111111111111111111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000001111111111111111111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000011111111111111111111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000111111111111111111111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00001111111111111111111111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00011111111111111111111111111111) (= (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!50364 d!10181))

(declare-fun d!10183 () Bool)

(assert (=> d!10183 (= (array_inv!915 (_keys!3526 newMap!16)) (bvsge (size!1793 (_keys!3526 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!50365 d!10183))

(declare-fun d!10185 () Bool)

(assert (=> d!10185 (= (array_inv!916 (_values!1901 newMap!16)) (bvsge (size!1794 (_values!1901 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!50365 d!10185))

(declare-fun d!10187 () Bool)

(assert (=> d!10187 (= (array_inv!915 (_keys!3526 (v!2161 (underlying!127 thiss!992)))) (bvsge (size!1793 (_keys!3526 (v!2161 (underlying!127 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!50373 d!10187))

(declare-fun d!10189 () Bool)

(assert (=> d!10189 (= (array_inv!916 (_values!1901 (v!2161 (underlying!127 thiss!992)))) (bvsge (size!1794 (_values!1901 (v!2161 (underlying!127 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!50373 d!10189))

(declare-fun d!10191 () Bool)

(declare-fun res!29028 () Bool)

(declare-fun e!32584 () Bool)

(assert (=> d!10191 (=> (not res!29028) (not e!32584))))

(declare-fun simpleValid!33 (LongMapFixedSize!408) Bool)

(assert (=> d!10191 (= res!29028 (simpleValid!33 newMap!16))))

(assert (=> d!10191 (= (valid!137 newMap!16) e!32584)))

(declare-fun b!50425 () Bool)

(declare-fun res!29029 () Bool)

(assert (=> b!50425 (=> (not res!29029) (not e!32584))))

(declare-fun arrayCountValidKeys!0 (array!3284 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!50425 (= res!29029 (= (arrayCountValidKeys!0 (_keys!3526 newMap!16) #b00000000000000000000000000000000 (size!1793 (_keys!3526 newMap!16))) (_size!253 newMap!16)))))

(declare-fun b!50426 () Bool)

(declare-fun res!29030 () Bool)

(assert (=> b!50426 (=> (not res!29030) (not e!32584))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3284 (_ BitVec 32)) Bool)

(assert (=> b!50426 (= res!29030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3526 newMap!16) (mask!5705 newMap!16)))))

(declare-fun b!50427 () Bool)

(declare-datatypes ((List!1348 0))(
  ( (Nil!1345) (Cons!1344 (h!1924 (_ BitVec 64)) (t!4390 List!1348)) )
))
(declare-fun arrayNoDuplicates!0 (array!3284 (_ BitVec 32) List!1348) Bool)

(assert (=> b!50427 (= e!32584 (arrayNoDuplicates!0 (_keys!3526 newMap!16) #b00000000000000000000000000000000 Nil!1345))))

(assert (= (and d!10191 res!29028) b!50425))

(assert (= (and b!50425 res!29029) b!50426))

(assert (= (and b!50426 res!29030) b!50427))

(declare-fun m!43733 () Bool)

(assert (=> d!10191 m!43733))

(declare-fun m!43735 () Bool)

(assert (=> b!50425 m!43735))

(declare-fun m!43737 () Bool)

(assert (=> b!50426 m!43737))

(declare-fun m!43739 () Bool)

(assert (=> b!50427 m!43739))

(assert (=> b!50363 d!10191))

(declare-fun mapNonEmpty!2197 () Bool)

(declare-fun mapRes!2197 () Bool)

(declare-fun tp!6697 () Bool)

(declare-fun e!32589 () Bool)

(assert (=> mapNonEmpty!2197 (= mapRes!2197 (and tp!6697 e!32589))))

(declare-fun mapRest!2197 () (Array (_ BitVec 32) ValueCell!750))

(declare-fun mapKey!2197 () (_ BitVec 32))

(declare-fun mapValue!2197 () ValueCell!750)

(assert (=> mapNonEmpty!2197 (= mapRest!2187 (store mapRest!2197 mapKey!2197 mapValue!2197))))

(declare-fun mapIsEmpty!2197 () Bool)

(assert (=> mapIsEmpty!2197 mapRes!2197))

(declare-fun condMapEmpty!2197 () Bool)

(declare-fun mapDefault!2197 () ValueCell!750)

(assert (=> mapNonEmpty!2187 (= condMapEmpty!2197 (= mapRest!2187 ((as const (Array (_ BitVec 32) ValueCell!750)) mapDefault!2197)))))

(declare-fun e!32590 () Bool)

(assert (=> mapNonEmpty!2187 (= tp!6681 (and e!32590 mapRes!2197))))

(declare-fun b!50434 () Bool)

(assert (=> b!50434 (= e!32589 tp_is_empty!2187)))

(declare-fun b!50435 () Bool)

(assert (=> b!50435 (= e!32590 tp_is_empty!2187)))

(assert (= (and mapNonEmpty!2187 condMapEmpty!2197) mapIsEmpty!2197))

(assert (= (and mapNonEmpty!2187 (not condMapEmpty!2197)) mapNonEmpty!2197))

(assert (= (and mapNonEmpty!2197 ((_ is ValueCellFull!750) mapValue!2197)) b!50434))

(assert (= (and mapNonEmpty!2187 ((_ is ValueCellFull!750) mapDefault!2197)) b!50435))

(declare-fun m!43741 () Bool)

(assert (=> mapNonEmpty!2197 m!43741))

(declare-fun mapNonEmpty!2198 () Bool)

(declare-fun mapRes!2198 () Bool)

(declare-fun tp!6698 () Bool)

(declare-fun e!32591 () Bool)

(assert (=> mapNonEmpty!2198 (= mapRes!2198 (and tp!6698 e!32591))))

(declare-fun mapKey!2198 () (_ BitVec 32))

(declare-fun mapRest!2198 () (Array (_ BitVec 32) ValueCell!750))

(declare-fun mapValue!2198 () ValueCell!750)

(assert (=> mapNonEmpty!2198 (= mapRest!2188 (store mapRest!2198 mapKey!2198 mapValue!2198))))

(declare-fun mapIsEmpty!2198 () Bool)

(assert (=> mapIsEmpty!2198 mapRes!2198))

(declare-fun condMapEmpty!2198 () Bool)

(declare-fun mapDefault!2198 () ValueCell!750)

(assert (=> mapNonEmpty!2188 (= condMapEmpty!2198 (= mapRest!2188 ((as const (Array (_ BitVec 32) ValueCell!750)) mapDefault!2198)))))

(declare-fun e!32592 () Bool)

(assert (=> mapNonEmpty!2188 (= tp!6679 (and e!32592 mapRes!2198))))

(declare-fun b!50436 () Bool)

(assert (=> b!50436 (= e!32591 tp_is_empty!2187)))

(declare-fun b!50437 () Bool)

(assert (=> b!50437 (= e!32592 tp_is_empty!2187)))

(assert (= (and mapNonEmpty!2188 condMapEmpty!2198) mapIsEmpty!2198))

(assert (= (and mapNonEmpty!2188 (not condMapEmpty!2198)) mapNonEmpty!2198))

(assert (= (and mapNonEmpty!2198 ((_ is ValueCellFull!750) mapValue!2198)) b!50436))

(assert (= (and mapNonEmpty!2188 ((_ is ValueCellFull!750) mapDefault!2198)) b!50437))

(declare-fun m!43743 () Bool)

(assert (=> mapNonEmpty!2198 m!43743))

(check-sat (not d!10191) (not b_next!1543) b_and!2761 tp_is_empty!2187 b_and!2763 (not b!50426) (not mapNonEmpty!2197) (not mapNonEmpty!2198) (not b_next!1541) (not d!10179) (not b!50425) (not b!50427))
(check-sat b_and!2761 b_and!2763 (not b_next!1541) (not b_next!1543))
(get-model)

(declare-fun d!10193 () Bool)

(declare-fun res!29031 () Bool)

(declare-fun e!32593 () Bool)

(assert (=> d!10193 (=> (not res!29031) (not e!32593))))

(assert (=> d!10193 (= res!29031 (simpleValid!33 (v!2161 (underlying!127 thiss!992))))))

(assert (=> d!10193 (= (valid!137 (v!2161 (underlying!127 thiss!992))) e!32593)))

(declare-fun b!50438 () Bool)

(declare-fun res!29032 () Bool)

(assert (=> b!50438 (=> (not res!29032) (not e!32593))))

(assert (=> b!50438 (= res!29032 (= (arrayCountValidKeys!0 (_keys!3526 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000000000000000 (size!1793 (_keys!3526 (v!2161 (underlying!127 thiss!992))))) (_size!253 (v!2161 (underlying!127 thiss!992)))))))

(declare-fun b!50439 () Bool)

(declare-fun res!29033 () Bool)

(assert (=> b!50439 (=> (not res!29033) (not e!32593))))

(assert (=> b!50439 (= res!29033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3526 (v!2161 (underlying!127 thiss!992))) (mask!5705 (v!2161 (underlying!127 thiss!992)))))))

(declare-fun b!50440 () Bool)

(assert (=> b!50440 (= e!32593 (arrayNoDuplicates!0 (_keys!3526 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000000000000000 Nil!1345))))

(assert (= (and d!10193 res!29031) b!50438))

(assert (= (and b!50438 res!29032) b!50439))

(assert (= (and b!50439 res!29033) b!50440))

(declare-fun m!43745 () Bool)

(assert (=> d!10193 m!43745))

(declare-fun m!43747 () Bool)

(assert (=> b!50438 m!43747))

(declare-fun m!43749 () Bool)

(assert (=> b!50439 m!43749))

(declare-fun m!43751 () Bool)

(assert (=> b!50440 m!43751))

(assert (=> d!10179 d!10193))

(declare-fun d!10195 () Bool)

(declare-fun res!29042 () Bool)

(declare-fun e!32596 () Bool)

(assert (=> d!10195 (=> (not res!29042) (not e!32596))))

(assert (=> d!10195 (= res!29042 (validMask!0 (mask!5705 newMap!16)))))

(assert (=> d!10195 (= (simpleValid!33 newMap!16) e!32596)))

(declare-fun b!50452 () Bool)

(assert (=> b!50452 (= e!32596 (and (bvsge (extraKeys!1809 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!1809 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!253 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun b!50451 () Bool)

(declare-fun res!29044 () Bool)

(assert (=> b!50451 (=> (not res!29044) (not e!32596))))

(declare-fun size!1797 (LongMapFixedSize!408) (_ BitVec 32))

(assert (=> b!50451 (= res!29044 (= (size!1797 newMap!16) (bvadd (_size!253 newMap!16) (bvsdiv (bvadd (extraKeys!1809 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!50450 () Bool)

(declare-fun res!29045 () Bool)

(assert (=> b!50450 (=> (not res!29045) (not e!32596))))

(assert (=> b!50450 (= res!29045 (bvsge (size!1797 newMap!16) (_size!253 newMap!16)))))

(declare-fun b!50449 () Bool)

(declare-fun res!29043 () Bool)

(assert (=> b!50449 (=> (not res!29043) (not e!32596))))

(assert (=> b!50449 (= res!29043 (and (= (size!1794 (_values!1901 newMap!16)) (bvadd (mask!5705 newMap!16) #b00000000000000000000000000000001)) (= (size!1793 (_keys!3526 newMap!16)) (size!1794 (_values!1901 newMap!16))) (bvsge (_size!253 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!253 newMap!16) (bvadd (mask!5705 newMap!16) #b00000000000000000000000000000001))))))

(assert (= (and d!10195 res!29042) b!50449))

(assert (= (and b!50449 res!29043) b!50450))

(assert (= (and b!50450 res!29045) b!50451))

(assert (= (and b!50451 res!29044) b!50452))

(declare-fun m!43753 () Bool)

(assert (=> d!10195 m!43753))

(declare-fun m!43755 () Bool)

(assert (=> b!50451 m!43755))

(assert (=> b!50450 m!43755))

(assert (=> d!10191 d!10195))

(declare-fun b!50461 () Bool)

(declare-fun e!32602 () (_ BitVec 32))

(declare-fun call!3891 () (_ BitVec 32))

(assert (=> b!50461 (= e!32602 (bvadd #b00000000000000000000000000000001 call!3891))))

(declare-fun b!50462 () Bool)

(declare-fun e!32601 () (_ BitVec 32))

(assert (=> b!50462 (= e!32601 #b00000000000000000000000000000000)))

(declare-fun bm!3888 () Bool)

(assert (=> bm!3888 (= call!3891 (arrayCountValidKeys!0 (_keys!3526 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1793 (_keys!3526 newMap!16))))))

(declare-fun b!50463 () Bool)

(assert (=> b!50463 (= e!32601 e!32602)))

(declare-fun c!6812 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!50463 (= c!6812 (validKeyInArray!0 (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!10197 () Bool)

(declare-fun lt!21062 () (_ BitVec 32))

(assert (=> d!10197 (and (bvsge lt!21062 #b00000000000000000000000000000000) (bvsle lt!21062 (bvsub (size!1793 (_keys!3526 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!10197 (= lt!21062 e!32601)))

(declare-fun c!6811 () Bool)

(assert (=> d!10197 (= c!6811 (bvsge #b00000000000000000000000000000000 (size!1793 (_keys!3526 newMap!16))))))

(assert (=> d!10197 (and (bvsle #b00000000000000000000000000000000 (size!1793 (_keys!3526 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1793 (_keys!3526 newMap!16)) (size!1793 (_keys!3526 newMap!16))))))

(assert (=> d!10197 (= (arrayCountValidKeys!0 (_keys!3526 newMap!16) #b00000000000000000000000000000000 (size!1793 (_keys!3526 newMap!16))) lt!21062)))

(declare-fun b!50464 () Bool)

(assert (=> b!50464 (= e!32602 call!3891)))

(assert (= (and d!10197 c!6811) b!50462))

(assert (= (and d!10197 (not c!6811)) b!50463))

(assert (= (and b!50463 c!6812) b!50461))

(assert (= (and b!50463 (not c!6812)) b!50464))

(assert (= (or b!50461 b!50464) bm!3888))

(declare-fun m!43757 () Bool)

(assert (=> bm!3888 m!43757))

(declare-fun m!43759 () Bool)

(assert (=> b!50463 m!43759))

(assert (=> b!50463 m!43759))

(declare-fun m!43761 () Bool)

(assert (=> b!50463 m!43761))

(assert (=> b!50425 d!10197))

(declare-fun b!50474 () Bool)

(declare-fun e!32609 () Bool)

(declare-fun e!32611 () Bool)

(assert (=> b!50474 (= e!32609 e!32611)))

(declare-fun c!6815 () Bool)

(assert (=> b!50474 (= c!6815 (validKeyInArray!0 (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!50475 () Bool)

(declare-fun call!3894 () Bool)

(assert (=> b!50475 (= e!32611 call!3894)))

(declare-fun b!50476 () Bool)

(declare-fun e!32610 () Bool)

(assert (=> b!50476 (= e!32611 e!32610)))

(declare-fun lt!21070 () (_ BitVec 64))

(assert (=> b!50476 (= lt!21070 (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!1420 0))(
  ( (Unit!1421) )
))
(declare-fun lt!21071 () Unit!1420)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3284 (_ BitVec 64) (_ BitVec 32)) Unit!1420)

(assert (=> b!50476 (= lt!21071 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3526 newMap!16) lt!21070 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!3284 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!50476 (arrayContainsKey!0 (_keys!3526 newMap!16) lt!21070 #b00000000000000000000000000000000)))

(declare-fun lt!21069 () Unit!1420)

(assert (=> b!50476 (= lt!21069 lt!21071)))

(declare-fun res!29050 () Bool)

(declare-datatypes ((SeekEntryResult!229 0))(
  ( (MissingZero!229 (index!3038 (_ BitVec 32))) (Found!229 (index!3039 (_ BitVec 32))) (Intermediate!229 (undefined!1041 Bool) (index!3040 (_ BitVec 32)) (x!9215 (_ BitVec 32))) (Undefined!229) (MissingVacant!229 (index!3041 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3284 (_ BitVec 32)) SeekEntryResult!229)

(assert (=> b!50476 (= res!29050 (= (seekEntryOrOpen!0 (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000) (_keys!3526 newMap!16) (mask!5705 newMap!16)) (Found!229 #b00000000000000000000000000000000)))))

(assert (=> b!50476 (=> (not res!29050) (not e!32610))))

(declare-fun bm!3891 () Bool)

(assert (=> bm!3891 (= call!3894 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3526 newMap!16) (mask!5705 newMap!16)))))

(declare-fun b!50473 () Bool)

(assert (=> b!50473 (= e!32610 call!3894)))

(declare-fun d!10199 () Bool)

(declare-fun res!29051 () Bool)

(assert (=> d!10199 (=> res!29051 e!32609)))

(assert (=> d!10199 (= res!29051 (bvsge #b00000000000000000000000000000000 (size!1793 (_keys!3526 newMap!16))))))

(assert (=> d!10199 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3526 newMap!16) (mask!5705 newMap!16)) e!32609)))

(assert (= (and d!10199 (not res!29051)) b!50474))

(assert (= (and b!50474 c!6815) b!50476))

(assert (= (and b!50474 (not c!6815)) b!50475))

(assert (= (and b!50476 res!29050) b!50473))

(assert (= (or b!50473 b!50475) bm!3891))

(assert (=> b!50474 m!43759))

(assert (=> b!50474 m!43759))

(assert (=> b!50474 m!43761))

(assert (=> b!50476 m!43759))

(declare-fun m!43763 () Bool)

(assert (=> b!50476 m!43763))

(declare-fun m!43765 () Bool)

(assert (=> b!50476 m!43765))

(assert (=> b!50476 m!43759))

(declare-fun m!43767 () Bool)

(assert (=> b!50476 m!43767))

(declare-fun m!43769 () Bool)

(assert (=> bm!3891 m!43769))

(assert (=> b!50426 d!10199))

(declare-fun bm!3894 () Bool)

(declare-fun call!3897 () Bool)

(declare-fun c!6818 () Bool)

(assert (=> bm!3894 (= call!3897 (arrayNoDuplicates!0 (_keys!3526 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6818 (Cons!1344 (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000) Nil!1345) Nil!1345)))))

(declare-fun b!50487 () Bool)

(declare-fun e!32623 () Bool)

(assert (=> b!50487 (= e!32623 call!3897)))

(declare-fun b!50488 () Bool)

(declare-fun e!32621 () Bool)

(declare-fun contains!620 (List!1348 (_ BitVec 64)) Bool)

(assert (=> b!50488 (= e!32621 (contains!620 Nil!1345 (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!50489 () Bool)

(declare-fun e!32622 () Bool)

(assert (=> b!50489 (= e!32622 e!32623)))

(assert (=> b!50489 (= c!6818 (validKeyInArray!0 (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!10201 () Bool)

(declare-fun res!29059 () Bool)

(declare-fun e!32620 () Bool)

(assert (=> d!10201 (=> res!29059 e!32620)))

(assert (=> d!10201 (= res!29059 (bvsge #b00000000000000000000000000000000 (size!1793 (_keys!3526 newMap!16))))))

(assert (=> d!10201 (= (arrayNoDuplicates!0 (_keys!3526 newMap!16) #b00000000000000000000000000000000 Nil!1345) e!32620)))

(declare-fun b!50490 () Bool)

(assert (=> b!50490 (= e!32623 call!3897)))

(declare-fun b!50491 () Bool)

(assert (=> b!50491 (= e!32620 e!32622)))

(declare-fun res!29060 () Bool)

(assert (=> b!50491 (=> (not res!29060) (not e!32622))))

(assert (=> b!50491 (= res!29060 (not e!32621))))

(declare-fun res!29058 () Bool)

(assert (=> b!50491 (=> (not res!29058) (not e!32621))))

(assert (=> b!50491 (= res!29058 (validKeyInArray!0 (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!10201 (not res!29059)) b!50491))

(assert (= (and b!50491 res!29058) b!50488))

(assert (= (and b!50491 res!29060) b!50489))

(assert (= (and b!50489 c!6818) b!50490))

(assert (= (and b!50489 (not c!6818)) b!50487))

(assert (= (or b!50490 b!50487) bm!3894))

(assert (=> bm!3894 m!43759))

(declare-fun m!43771 () Bool)

(assert (=> bm!3894 m!43771))

(assert (=> b!50488 m!43759))

(assert (=> b!50488 m!43759))

(declare-fun m!43773 () Bool)

(assert (=> b!50488 m!43773))

(assert (=> b!50489 m!43759))

(assert (=> b!50489 m!43759))

(assert (=> b!50489 m!43761))

(assert (=> b!50491 m!43759))

(assert (=> b!50491 m!43759))

(assert (=> b!50491 m!43761))

(assert (=> b!50427 d!10201))

(declare-fun mapNonEmpty!2199 () Bool)

(declare-fun mapRes!2199 () Bool)

(declare-fun tp!6699 () Bool)

(declare-fun e!32624 () Bool)

(assert (=> mapNonEmpty!2199 (= mapRes!2199 (and tp!6699 e!32624))))

(declare-fun mapKey!2199 () (_ BitVec 32))

(declare-fun mapRest!2199 () (Array (_ BitVec 32) ValueCell!750))

(declare-fun mapValue!2199 () ValueCell!750)

(assert (=> mapNonEmpty!2199 (= mapRest!2198 (store mapRest!2199 mapKey!2199 mapValue!2199))))

(declare-fun mapIsEmpty!2199 () Bool)

(assert (=> mapIsEmpty!2199 mapRes!2199))

(declare-fun condMapEmpty!2199 () Bool)

(declare-fun mapDefault!2199 () ValueCell!750)

(assert (=> mapNonEmpty!2198 (= condMapEmpty!2199 (= mapRest!2198 ((as const (Array (_ BitVec 32) ValueCell!750)) mapDefault!2199)))))

(declare-fun e!32625 () Bool)

(assert (=> mapNonEmpty!2198 (= tp!6698 (and e!32625 mapRes!2199))))

(declare-fun b!50492 () Bool)

(assert (=> b!50492 (= e!32624 tp_is_empty!2187)))

(declare-fun b!50493 () Bool)

(assert (=> b!50493 (= e!32625 tp_is_empty!2187)))

(assert (= (and mapNonEmpty!2198 condMapEmpty!2199) mapIsEmpty!2199))

(assert (= (and mapNonEmpty!2198 (not condMapEmpty!2199)) mapNonEmpty!2199))

(assert (= (and mapNonEmpty!2199 ((_ is ValueCellFull!750) mapValue!2199)) b!50492))

(assert (= (and mapNonEmpty!2198 ((_ is ValueCellFull!750) mapDefault!2199)) b!50493))

(declare-fun m!43775 () Bool)

(assert (=> mapNonEmpty!2199 m!43775))

(declare-fun mapNonEmpty!2200 () Bool)

(declare-fun mapRes!2200 () Bool)

(declare-fun tp!6700 () Bool)

(declare-fun e!32626 () Bool)

(assert (=> mapNonEmpty!2200 (= mapRes!2200 (and tp!6700 e!32626))))

(declare-fun mapRest!2200 () (Array (_ BitVec 32) ValueCell!750))

(declare-fun mapValue!2200 () ValueCell!750)

(declare-fun mapKey!2200 () (_ BitVec 32))

(assert (=> mapNonEmpty!2200 (= mapRest!2197 (store mapRest!2200 mapKey!2200 mapValue!2200))))

(declare-fun mapIsEmpty!2200 () Bool)

(assert (=> mapIsEmpty!2200 mapRes!2200))

(declare-fun condMapEmpty!2200 () Bool)

(declare-fun mapDefault!2200 () ValueCell!750)

(assert (=> mapNonEmpty!2197 (= condMapEmpty!2200 (= mapRest!2197 ((as const (Array (_ BitVec 32) ValueCell!750)) mapDefault!2200)))))

(declare-fun e!32627 () Bool)

(assert (=> mapNonEmpty!2197 (= tp!6697 (and e!32627 mapRes!2200))))

(declare-fun b!50494 () Bool)

(assert (=> b!50494 (= e!32626 tp_is_empty!2187)))

(declare-fun b!50495 () Bool)

(assert (=> b!50495 (= e!32627 tp_is_empty!2187)))

(assert (= (and mapNonEmpty!2197 condMapEmpty!2200) mapIsEmpty!2200))

(assert (= (and mapNonEmpty!2197 (not condMapEmpty!2200)) mapNonEmpty!2200))

(assert (= (and mapNonEmpty!2200 ((_ is ValueCellFull!750) mapValue!2200)) b!50494))

(assert (= (and mapNonEmpty!2197 ((_ is ValueCellFull!750) mapDefault!2200)) b!50495))

(declare-fun m!43777 () Bool)

(assert (=> mapNonEmpty!2200 m!43777))

(check-sat (not b!50476) b_and!2763 (not b!50489) (not d!10193) (not b!50463) (not bm!3888) (not b_next!1543) (not bm!3891) (not mapNonEmpty!2200) (not bm!3894) (not b!50491) b_and!2761 (not mapNonEmpty!2199) (not b!50440) tp_is_empty!2187 (not b!50438) (not b_next!1541) (not b!50474) (not b!50488) (not b!50451) (not d!10195) (not b!50450) (not b!50439))
(check-sat b_and!2761 b_and!2763 (not b_next!1541) (not b_next!1543))
(get-model)

(declare-fun d!10203 () Bool)

(assert (=> d!10203 (arrayContainsKey!0 (_keys!3526 newMap!16) lt!21070 #b00000000000000000000000000000000)))

(declare-fun lt!21074 () Unit!1420)

(declare-fun choose!13 (array!3284 (_ BitVec 64) (_ BitVec 32)) Unit!1420)

(assert (=> d!10203 (= lt!21074 (choose!13 (_keys!3526 newMap!16) lt!21070 #b00000000000000000000000000000000))))

(assert (=> d!10203 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!10203 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3526 newMap!16) lt!21070 #b00000000000000000000000000000000) lt!21074)))

(declare-fun bs!2360 () Bool)

(assert (= bs!2360 d!10203))

(assert (=> bs!2360 m!43765))

(declare-fun m!43779 () Bool)

(assert (=> bs!2360 m!43779))

(assert (=> b!50476 d!10203))

(declare-fun d!10205 () Bool)

(declare-fun res!29065 () Bool)

(declare-fun e!32632 () Bool)

(assert (=> d!10205 (=> res!29065 e!32632)))

(assert (=> d!10205 (= res!29065 (= (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000) lt!21070))))

(assert (=> d!10205 (= (arrayContainsKey!0 (_keys!3526 newMap!16) lt!21070 #b00000000000000000000000000000000) e!32632)))

(declare-fun b!50500 () Bool)

(declare-fun e!32633 () Bool)

(assert (=> b!50500 (= e!32632 e!32633)))

(declare-fun res!29066 () Bool)

(assert (=> b!50500 (=> (not res!29066) (not e!32633))))

(assert (=> b!50500 (= res!29066 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1793 (_keys!3526 newMap!16))))))

(declare-fun b!50501 () Bool)

(assert (=> b!50501 (= e!32633 (arrayContainsKey!0 (_keys!3526 newMap!16) lt!21070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!10205 (not res!29065)) b!50500))

(assert (= (and b!50500 res!29066) b!50501))

(assert (=> d!10205 m!43759))

(declare-fun m!43781 () Bool)

(assert (=> b!50501 m!43781))

(assert (=> b!50476 d!10205))

(declare-fun b!50514 () Bool)

(declare-fun e!32642 () SeekEntryResult!229)

(declare-fun lt!21083 () SeekEntryResult!229)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3284 (_ BitVec 32)) SeekEntryResult!229)

(assert (=> b!50514 (= e!32642 (seekKeyOrZeroReturnVacant!0 (x!9215 lt!21083) (index!3040 lt!21083) (index!3040 lt!21083) (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000) (_keys!3526 newMap!16) (mask!5705 newMap!16)))))

(declare-fun d!10207 () Bool)

(declare-fun lt!21081 () SeekEntryResult!229)

(assert (=> d!10207 (and (or ((_ is Undefined!229) lt!21081) (not ((_ is Found!229) lt!21081)) (and (bvsge (index!3039 lt!21081) #b00000000000000000000000000000000) (bvslt (index!3039 lt!21081) (size!1793 (_keys!3526 newMap!16))))) (or ((_ is Undefined!229) lt!21081) ((_ is Found!229) lt!21081) (not ((_ is MissingZero!229) lt!21081)) (and (bvsge (index!3038 lt!21081) #b00000000000000000000000000000000) (bvslt (index!3038 lt!21081) (size!1793 (_keys!3526 newMap!16))))) (or ((_ is Undefined!229) lt!21081) ((_ is Found!229) lt!21081) ((_ is MissingZero!229) lt!21081) (not ((_ is MissingVacant!229) lt!21081)) (and (bvsge (index!3041 lt!21081) #b00000000000000000000000000000000) (bvslt (index!3041 lt!21081) (size!1793 (_keys!3526 newMap!16))))) (or ((_ is Undefined!229) lt!21081) (ite ((_ is Found!229) lt!21081) (= (select (arr!1570 (_keys!3526 newMap!16)) (index!3039 lt!21081)) (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!229) lt!21081) (= (select (arr!1570 (_keys!3526 newMap!16)) (index!3038 lt!21081)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!229) lt!21081) (= (select (arr!1570 (_keys!3526 newMap!16)) (index!3041 lt!21081)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!32640 () SeekEntryResult!229)

(assert (=> d!10207 (= lt!21081 e!32640)))

(declare-fun c!6826 () Bool)

(assert (=> d!10207 (= c!6826 (and ((_ is Intermediate!229) lt!21083) (undefined!1041 lt!21083)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3284 (_ BitVec 32)) SeekEntryResult!229)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!10207 (= lt!21083 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000) (mask!5705 newMap!16)) (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000) (_keys!3526 newMap!16) (mask!5705 newMap!16)))))

(assert (=> d!10207 (validMask!0 (mask!5705 newMap!16))))

(assert (=> d!10207 (= (seekEntryOrOpen!0 (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000) (_keys!3526 newMap!16) (mask!5705 newMap!16)) lt!21081)))

(declare-fun b!50515 () Bool)

(assert (=> b!50515 (= e!32640 Undefined!229)))

(declare-fun b!50516 () Bool)

(assert (=> b!50516 (= e!32642 (MissingZero!229 (index!3040 lt!21083)))))

(declare-fun b!50517 () Bool)

(declare-fun e!32641 () SeekEntryResult!229)

(assert (=> b!50517 (= e!32640 e!32641)))

(declare-fun lt!21082 () (_ BitVec 64))

(assert (=> b!50517 (= lt!21082 (select (arr!1570 (_keys!3526 newMap!16)) (index!3040 lt!21083)))))

(declare-fun c!6825 () Bool)

(assert (=> b!50517 (= c!6825 (= lt!21082 (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!50518 () Bool)

(assert (=> b!50518 (= e!32641 (Found!229 (index!3040 lt!21083)))))

(declare-fun b!50519 () Bool)

(declare-fun c!6827 () Bool)

(assert (=> b!50519 (= c!6827 (= lt!21082 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!50519 (= e!32641 e!32642)))

(assert (= (and d!10207 c!6826) b!50515))

(assert (= (and d!10207 (not c!6826)) b!50517))

(assert (= (and b!50517 c!6825) b!50518))

(assert (= (and b!50517 (not c!6825)) b!50519))

(assert (= (and b!50519 c!6827) b!50516))

(assert (= (and b!50519 (not c!6827)) b!50514))

(assert (=> b!50514 m!43759))

(declare-fun m!43783 () Bool)

(assert (=> b!50514 m!43783))

(declare-fun m!43785 () Bool)

(assert (=> d!10207 m!43785))

(declare-fun m!43787 () Bool)

(assert (=> d!10207 m!43787))

(declare-fun m!43789 () Bool)

(assert (=> d!10207 m!43789))

(assert (=> d!10207 m!43759))

(declare-fun m!43791 () Bool)

(assert (=> d!10207 m!43791))

(assert (=> d!10207 m!43753))

(assert (=> d!10207 m!43791))

(assert (=> d!10207 m!43759))

(declare-fun m!43793 () Bool)

(assert (=> d!10207 m!43793))

(declare-fun m!43795 () Bool)

(assert (=> b!50517 m!43795))

(assert (=> b!50476 d!10207))

(declare-fun b!50521 () Bool)

(declare-fun e!32643 () Bool)

(declare-fun e!32645 () Bool)

(assert (=> b!50521 (= e!32643 e!32645)))

(declare-fun c!6828 () Bool)

(assert (=> b!50521 (= c!6828 (validKeyInArray!0 (select (arr!1570 (_keys!3526 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!50522 () Bool)

(declare-fun call!3898 () Bool)

(assert (=> b!50522 (= e!32645 call!3898)))

(declare-fun b!50523 () Bool)

(declare-fun e!32644 () Bool)

(assert (=> b!50523 (= e!32645 e!32644)))

(declare-fun lt!21085 () (_ BitVec 64))

(assert (=> b!50523 (= lt!21085 (select (arr!1570 (_keys!3526 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!21086 () Unit!1420)

(assert (=> b!50523 (= lt!21086 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3526 newMap!16) lt!21085 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!50523 (arrayContainsKey!0 (_keys!3526 newMap!16) lt!21085 #b00000000000000000000000000000000)))

(declare-fun lt!21084 () Unit!1420)

(assert (=> b!50523 (= lt!21084 lt!21086)))

(declare-fun res!29067 () Bool)

(assert (=> b!50523 (= res!29067 (= (seekEntryOrOpen!0 (select (arr!1570 (_keys!3526 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3526 newMap!16) (mask!5705 newMap!16)) (Found!229 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!50523 (=> (not res!29067) (not e!32644))))

(declare-fun bm!3895 () Bool)

(assert (=> bm!3895 (= call!3898 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3526 newMap!16) (mask!5705 newMap!16)))))

(declare-fun b!50520 () Bool)

(assert (=> b!50520 (= e!32644 call!3898)))

(declare-fun d!10209 () Bool)

(declare-fun res!29068 () Bool)

(assert (=> d!10209 (=> res!29068 e!32643)))

(assert (=> d!10209 (= res!29068 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1793 (_keys!3526 newMap!16))))))

(assert (=> d!10209 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3526 newMap!16) (mask!5705 newMap!16)) e!32643)))

(assert (= (and d!10209 (not res!29068)) b!50521))

(assert (= (and b!50521 c!6828) b!50523))

(assert (= (and b!50521 (not c!6828)) b!50522))

(assert (= (and b!50523 res!29067) b!50520))

(assert (= (or b!50520 b!50522) bm!3895))

(declare-fun m!43797 () Bool)

(assert (=> b!50521 m!43797))

(assert (=> b!50521 m!43797))

(declare-fun m!43799 () Bool)

(assert (=> b!50521 m!43799))

(assert (=> b!50523 m!43797))

(declare-fun m!43801 () Bool)

(assert (=> b!50523 m!43801))

(declare-fun m!43803 () Bool)

(assert (=> b!50523 m!43803))

(assert (=> b!50523 m!43797))

(declare-fun m!43805 () Bool)

(assert (=> b!50523 m!43805))

(declare-fun m!43807 () Bool)

(assert (=> bm!3895 m!43807))

(assert (=> bm!3891 d!10209))

(declare-fun d!10211 () Bool)

(declare-fun res!29069 () Bool)

(declare-fun e!32646 () Bool)

(assert (=> d!10211 (=> (not res!29069) (not e!32646))))

(assert (=> d!10211 (= res!29069 (validMask!0 (mask!5705 (v!2161 (underlying!127 thiss!992)))))))

(assert (=> d!10211 (= (simpleValid!33 (v!2161 (underlying!127 thiss!992))) e!32646)))

(declare-fun b!50527 () Bool)

(assert (=> b!50527 (= e!32646 (and (bvsge (extraKeys!1809 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1809 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000000000000011) (bvsge (_vacant!253 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun b!50526 () Bool)

(declare-fun res!29071 () Bool)

(assert (=> b!50526 (=> (not res!29071) (not e!32646))))

(assert (=> b!50526 (= res!29071 (= (size!1797 (v!2161 (underlying!127 thiss!992))) (bvadd (_size!253 (v!2161 (underlying!127 thiss!992))) (bvsdiv (bvadd (extraKeys!1809 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!50525 () Bool)

(declare-fun res!29072 () Bool)

(assert (=> b!50525 (=> (not res!29072) (not e!32646))))

(assert (=> b!50525 (= res!29072 (bvsge (size!1797 (v!2161 (underlying!127 thiss!992))) (_size!253 (v!2161 (underlying!127 thiss!992)))))))

(declare-fun b!50524 () Bool)

(declare-fun res!29070 () Bool)

(assert (=> b!50524 (=> (not res!29070) (not e!32646))))

(assert (=> b!50524 (= res!29070 (and (= (size!1794 (_values!1901 (v!2161 (underlying!127 thiss!992)))) (bvadd (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000000000000001)) (= (size!1793 (_keys!3526 (v!2161 (underlying!127 thiss!992)))) (size!1794 (_values!1901 (v!2161 (underlying!127 thiss!992))))) (bvsge (_size!253 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000000000000000) (bvsle (_size!253 (v!2161 (underlying!127 thiss!992))) (bvadd (mask!5705 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000000000000001))))))

(assert (= (and d!10211 res!29069) b!50524))

(assert (= (and b!50524 res!29070) b!50525))

(assert (= (and b!50525 res!29072) b!50526))

(assert (= (and b!50526 res!29071) b!50527))

(assert (=> d!10211 m!43709))

(declare-fun m!43809 () Bool)

(assert (=> b!50526 m!43809))

(assert (=> b!50525 m!43809))

(assert (=> d!10193 d!10211))

(declare-fun c!6829 () Bool)

(declare-fun bm!3896 () Bool)

(declare-fun call!3899 () Bool)

(assert (=> bm!3896 (= call!3899 (arrayNoDuplicates!0 (_keys!3526 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!6829 (Cons!1344 (select (arr!1570 (_keys!3526 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!6818 (Cons!1344 (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000) Nil!1345) Nil!1345)) (ite c!6818 (Cons!1344 (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000) Nil!1345) Nil!1345))))))

(declare-fun b!50528 () Bool)

(declare-fun e!32650 () Bool)

(assert (=> b!50528 (= e!32650 call!3899)))

(declare-fun b!50529 () Bool)

(declare-fun e!32648 () Bool)

(assert (=> b!50529 (= e!32648 (contains!620 (ite c!6818 (Cons!1344 (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000) Nil!1345) Nil!1345) (select (arr!1570 (_keys!3526 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!50530 () Bool)

(declare-fun e!32649 () Bool)

(assert (=> b!50530 (= e!32649 e!32650)))

(assert (=> b!50530 (= c!6829 (validKeyInArray!0 (select (arr!1570 (_keys!3526 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!10213 () Bool)

(declare-fun res!29074 () Bool)

(declare-fun e!32647 () Bool)

(assert (=> d!10213 (=> res!29074 e!32647)))

(assert (=> d!10213 (= res!29074 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1793 (_keys!3526 newMap!16))))))

(assert (=> d!10213 (= (arrayNoDuplicates!0 (_keys!3526 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6818 (Cons!1344 (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000) Nil!1345) Nil!1345)) e!32647)))

(declare-fun b!50531 () Bool)

(assert (=> b!50531 (= e!32650 call!3899)))

(declare-fun b!50532 () Bool)

(assert (=> b!50532 (= e!32647 e!32649)))

(declare-fun res!29075 () Bool)

(assert (=> b!50532 (=> (not res!29075) (not e!32649))))

(assert (=> b!50532 (= res!29075 (not e!32648))))

(declare-fun res!29073 () Bool)

(assert (=> b!50532 (=> (not res!29073) (not e!32648))))

(assert (=> b!50532 (= res!29073 (validKeyInArray!0 (select (arr!1570 (_keys!3526 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!10213 (not res!29074)) b!50532))

(assert (= (and b!50532 res!29073) b!50529))

(assert (= (and b!50532 res!29075) b!50530))

(assert (= (and b!50530 c!6829) b!50531))

(assert (= (and b!50530 (not c!6829)) b!50528))

(assert (= (or b!50531 b!50528) bm!3896))

(assert (=> bm!3896 m!43797))

(declare-fun m!43811 () Bool)

(assert (=> bm!3896 m!43811))

(assert (=> b!50529 m!43797))

(assert (=> b!50529 m!43797))

(declare-fun m!43813 () Bool)

(assert (=> b!50529 m!43813))

(assert (=> b!50530 m!43797))

(assert (=> b!50530 m!43797))

(assert (=> b!50530 m!43799))

(assert (=> b!50532 m!43797))

(assert (=> b!50532 m!43797))

(assert (=> b!50532 m!43799))

(assert (=> bm!3894 d!10213))

(declare-fun d!10215 () Bool)

(assert (=> d!10215 (= (size!1797 newMap!16) (bvadd (_size!253 newMap!16) (bvsdiv (bvadd (extraKeys!1809 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!50450 d!10215))

(declare-fun d!10217 () Bool)

(declare-fun lt!21089 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!55 (List!1348) (InoxSet (_ BitVec 64)))

(assert (=> d!10217 (= lt!21089 (select (content!55 Nil!1345) (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!32655 () Bool)

(assert (=> d!10217 (= lt!21089 e!32655)))

(declare-fun res!29080 () Bool)

(assert (=> d!10217 (=> (not res!29080) (not e!32655))))

(assert (=> d!10217 (= res!29080 ((_ is Cons!1344) Nil!1345))))

(assert (=> d!10217 (= (contains!620 Nil!1345 (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000)) lt!21089)))

(declare-fun b!50537 () Bool)

(declare-fun e!32656 () Bool)

(assert (=> b!50537 (= e!32655 e!32656)))

(declare-fun res!29081 () Bool)

(assert (=> b!50537 (=> res!29081 e!32656)))

(assert (=> b!50537 (= res!29081 (= (h!1924 Nil!1345) (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!50538 () Bool)

(assert (=> b!50538 (= e!32656 (contains!620 (t!4390 Nil!1345) (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!10217 res!29080) b!50537))

(assert (= (and b!50537 (not res!29081)) b!50538))

(declare-fun m!43815 () Bool)

(assert (=> d!10217 m!43815))

(assert (=> d!10217 m!43759))

(declare-fun m!43817 () Bool)

(assert (=> d!10217 m!43817))

(assert (=> b!50538 m!43759))

(declare-fun m!43819 () Bool)

(assert (=> b!50538 m!43819))

(assert (=> b!50488 d!10217))

(assert (=> b!50451 d!10215))

(declare-fun b!50539 () Bool)

(declare-fun e!32658 () (_ BitVec 32))

(declare-fun call!3900 () (_ BitVec 32))

(assert (=> b!50539 (= e!32658 (bvadd #b00000000000000000000000000000001 call!3900))))

(declare-fun b!50540 () Bool)

(declare-fun e!32657 () (_ BitVec 32))

(assert (=> b!50540 (= e!32657 #b00000000000000000000000000000000)))

(declare-fun bm!3897 () Bool)

(assert (=> bm!3897 (= call!3900 (arrayCountValidKeys!0 (_keys!3526 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1793 (_keys!3526 newMap!16))))))

(declare-fun b!50541 () Bool)

(assert (=> b!50541 (= e!32657 e!32658)))

(declare-fun c!6831 () Bool)

(assert (=> b!50541 (= c!6831 (validKeyInArray!0 (select (arr!1570 (_keys!3526 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!10219 () Bool)

(declare-fun lt!21090 () (_ BitVec 32))

(assert (=> d!10219 (and (bvsge lt!21090 #b00000000000000000000000000000000) (bvsle lt!21090 (bvsub (size!1793 (_keys!3526 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!10219 (= lt!21090 e!32657)))

(declare-fun c!6830 () Bool)

(assert (=> d!10219 (= c!6830 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1793 (_keys!3526 newMap!16))))))

(assert (=> d!10219 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1793 (_keys!3526 newMap!16))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!1793 (_keys!3526 newMap!16)) (size!1793 (_keys!3526 newMap!16))))))

(assert (=> d!10219 (= (arrayCountValidKeys!0 (_keys!3526 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1793 (_keys!3526 newMap!16))) lt!21090)))

(declare-fun b!50542 () Bool)

(assert (=> b!50542 (= e!32658 call!3900)))

(assert (= (and d!10219 c!6830) b!50540))

(assert (= (and d!10219 (not c!6830)) b!50541))

(assert (= (and b!50541 c!6831) b!50539))

(assert (= (and b!50541 (not c!6831)) b!50542))

(assert (= (or b!50539 b!50542) bm!3897))

(declare-fun m!43821 () Bool)

(assert (=> bm!3897 m!43821))

(assert (=> b!50541 m!43797))

(assert (=> b!50541 m!43797))

(assert (=> b!50541 m!43799))

(assert (=> bm!3888 d!10219))

(declare-fun d!10221 () Bool)

(assert (=> d!10221 (= (validKeyInArray!0 (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000)) (and (not (= (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1570 (_keys!3526 newMap!16)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!50489 d!10221))

(assert (=> b!50463 d!10221))

(declare-fun b!50543 () Bool)

(declare-fun e!32660 () (_ BitVec 32))

(declare-fun call!3901 () (_ BitVec 32))

(assert (=> b!50543 (= e!32660 (bvadd #b00000000000000000000000000000001 call!3901))))

(declare-fun b!50544 () Bool)

(declare-fun e!32659 () (_ BitVec 32))

(assert (=> b!50544 (= e!32659 #b00000000000000000000000000000000)))

(declare-fun bm!3898 () Bool)

(assert (=> bm!3898 (= call!3901 (arrayCountValidKeys!0 (_keys!3526 (v!2161 (underlying!127 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1793 (_keys!3526 (v!2161 (underlying!127 thiss!992))))))))

(declare-fun b!50545 () Bool)

(assert (=> b!50545 (= e!32659 e!32660)))

(declare-fun c!6833 () Bool)

(assert (=> b!50545 (= c!6833 (validKeyInArray!0 (select (arr!1570 (_keys!3526 (v!2161 (underlying!127 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!10223 () Bool)

(declare-fun lt!21091 () (_ BitVec 32))

(assert (=> d!10223 (and (bvsge lt!21091 #b00000000000000000000000000000000) (bvsle lt!21091 (bvsub (size!1793 (_keys!3526 (v!2161 (underlying!127 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (=> d!10223 (= lt!21091 e!32659)))

(declare-fun c!6832 () Bool)

(assert (=> d!10223 (= c!6832 (bvsge #b00000000000000000000000000000000 (size!1793 (_keys!3526 (v!2161 (underlying!127 thiss!992))))))))

(assert (=> d!10223 (and (bvsle #b00000000000000000000000000000000 (size!1793 (_keys!3526 (v!2161 (underlying!127 thiss!992))))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1793 (_keys!3526 (v!2161 (underlying!127 thiss!992)))) (size!1793 (_keys!3526 (v!2161 (underlying!127 thiss!992))))))))

(assert (=> d!10223 (= (arrayCountValidKeys!0 (_keys!3526 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000000000000000 (size!1793 (_keys!3526 (v!2161 (underlying!127 thiss!992))))) lt!21091)))

(declare-fun b!50546 () Bool)

(assert (=> b!50546 (= e!32660 call!3901)))

(assert (= (and d!10223 c!6832) b!50544))

(assert (= (and d!10223 (not c!6832)) b!50545))

(assert (= (and b!50545 c!6833) b!50543))

(assert (= (and b!50545 (not c!6833)) b!50546))

(assert (= (or b!50543 b!50546) bm!3898))

(declare-fun m!43823 () Bool)

(assert (=> bm!3898 m!43823))

(declare-fun m!43825 () Bool)

(assert (=> b!50545 m!43825))

(assert (=> b!50545 m!43825))

(declare-fun m!43827 () Bool)

(assert (=> b!50545 m!43827))

(assert (=> b!50438 d!10223))

(declare-fun b!50548 () Bool)

(declare-fun e!32661 () Bool)

(declare-fun e!32663 () Bool)

(assert (=> b!50548 (= e!32661 e!32663)))

(declare-fun c!6834 () Bool)

(assert (=> b!50548 (= c!6834 (validKeyInArray!0 (select (arr!1570 (_keys!3526 (v!2161 (underlying!127 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!50549 () Bool)

(declare-fun call!3902 () Bool)

(assert (=> b!50549 (= e!32663 call!3902)))

(declare-fun b!50550 () Bool)

(declare-fun e!32662 () Bool)

(assert (=> b!50550 (= e!32663 e!32662)))

(declare-fun lt!21093 () (_ BitVec 64))

(assert (=> b!50550 (= lt!21093 (select (arr!1570 (_keys!3526 (v!2161 (underlying!127 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!21094 () Unit!1420)

(assert (=> b!50550 (= lt!21094 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3526 (v!2161 (underlying!127 thiss!992))) lt!21093 #b00000000000000000000000000000000))))

(assert (=> b!50550 (arrayContainsKey!0 (_keys!3526 (v!2161 (underlying!127 thiss!992))) lt!21093 #b00000000000000000000000000000000)))

(declare-fun lt!21092 () Unit!1420)

(assert (=> b!50550 (= lt!21092 lt!21094)))

(declare-fun res!29082 () Bool)

(assert (=> b!50550 (= res!29082 (= (seekEntryOrOpen!0 (select (arr!1570 (_keys!3526 (v!2161 (underlying!127 thiss!992)))) #b00000000000000000000000000000000) (_keys!3526 (v!2161 (underlying!127 thiss!992))) (mask!5705 (v!2161 (underlying!127 thiss!992)))) (Found!229 #b00000000000000000000000000000000)))))

(assert (=> b!50550 (=> (not res!29082) (not e!32662))))

(declare-fun bm!3899 () Bool)

(assert (=> bm!3899 (= call!3902 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3526 (v!2161 (underlying!127 thiss!992))) (mask!5705 (v!2161 (underlying!127 thiss!992)))))))

(declare-fun b!50547 () Bool)

(assert (=> b!50547 (= e!32662 call!3902)))

(declare-fun d!10225 () Bool)

(declare-fun res!29083 () Bool)

(assert (=> d!10225 (=> res!29083 e!32661)))

(assert (=> d!10225 (= res!29083 (bvsge #b00000000000000000000000000000000 (size!1793 (_keys!3526 (v!2161 (underlying!127 thiss!992))))))))

(assert (=> d!10225 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3526 (v!2161 (underlying!127 thiss!992))) (mask!5705 (v!2161 (underlying!127 thiss!992)))) e!32661)))

(assert (= (and d!10225 (not res!29083)) b!50548))

(assert (= (and b!50548 c!6834) b!50550))

(assert (= (and b!50548 (not c!6834)) b!50549))

(assert (= (and b!50550 res!29082) b!50547))

(assert (= (or b!50547 b!50549) bm!3899))

(assert (=> b!50548 m!43825))

(assert (=> b!50548 m!43825))

(assert (=> b!50548 m!43827))

(assert (=> b!50550 m!43825))

(declare-fun m!43829 () Bool)

(assert (=> b!50550 m!43829))

(declare-fun m!43831 () Bool)

(assert (=> b!50550 m!43831))

(assert (=> b!50550 m!43825))

(declare-fun m!43833 () Bool)

(assert (=> b!50550 m!43833))

(declare-fun m!43835 () Bool)

(assert (=> bm!3899 m!43835))

(assert (=> b!50439 d!10225))

(assert (=> b!50491 d!10221))

(declare-fun d!10227 () Bool)

(assert (=> d!10227 (= (validMask!0 (mask!5705 newMap!16)) (and (or (= (mask!5705 newMap!16) #b00000000000000000000000000000111) (= (mask!5705 newMap!16) #b00000000000000000000000000001111) (= (mask!5705 newMap!16) #b00000000000000000000000000011111) (= (mask!5705 newMap!16) #b00000000000000000000000000111111) (= (mask!5705 newMap!16) #b00000000000000000000000001111111) (= (mask!5705 newMap!16) #b00000000000000000000000011111111) (= (mask!5705 newMap!16) #b00000000000000000000000111111111) (= (mask!5705 newMap!16) #b00000000000000000000001111111111) (= (mask!5705 newMap!16) #b00000000000000000000011111111111) (= (mask!5705 newMap!16) #b00000000000000000000111111111111) (= (mask!5705 newMap!16) #b00000000000000000001111111111111) (= (mask!5705 newMap!16) #b00000000000000000011111111111111) (= (mask!5705 newMap!16) #b00000000000000000111111111111111) (= (mask!5705 newMap!16) #b00000000000000001111111111111111) (= (mask!5705 newMap!16) #b00000000000000011111111111111111) (= (mask!5705 newMap!16) #b00000000000000111111111111111111) (= (mask!5705 newMap!16) #b00000000000001111111111111111111) (= (mask!5705 newMap!16) #b00000000000011111111111111111111) (= (mask!5705 newMap!16) #b00000000000111111111111111111111) (= (mask!5705 newMap!16) #b00000000001111111111111111111111) (= (mask!5705 newMap!16) #b00000000011111111111111111111111) (= (mask!5705 newMap!16) #b00000000111111111111111111111111) (= (mask!5705 newMap!16) #b00000001111111111111111111111111) (= (mask!5705 newMap!16) #b00000011111111111111111111111111) (= (mask!5705 newMap!16) #b00000111111111111111111111111111) (= (mask!5705 newMap!16) #b00001111111111111111111111111111) (= (mask!5705 newMap!16) #b00011111111111111111111111111111) (= (mask!5705 newMap!16) #b00111111111111111111111111111111)) (bvsle (mask!5705 newMap!16) #b00111111111111111111111111111111)))))

(assert (=> d!10195 d!10227))

(declare-fun bm!3900 () Bool)

(declare-fun call!3903 () Bool)

(declare-fun c!6835 () Bool)

(assert (=> bm!3900 (= call!3903 (arrayNoDuplicates!0 (_keys!3526 (v!2161 (underlying!127 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6835 (Cons!1344 (select (arr!1570 (_keys!3526 (v!2161 (underlying!127 thiss!992)))) #b00000000000000000000000000000000) Nil!1345) Nil!1345)))))

(declare-fun b!50551 () Bool)

(declare-fun e!32667 () Bool)

(assert (=> b!50551 (= e!32667 call!3903)))

(declare-fun b!50552 () Bool)

(declare-fun e!32665 () Bool)

(assert (=> b!50552 (= e!32665 (contains!620 Nil!1345 (select (arr!1570 (_keys!3526 (v!2161 (underlying!127 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!50553 () Bool)

(declare-fun e!32666 () Bool)

(assert (=> b!50553 (= e!32666 e!32667)))

(assert (=> b!50553 (= c!6835 (validKeyInArray!0 (select (arr!1570 (_keys!3526 (v!2161 (underlying!127 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!10229 () Bool)

(declare-fun res!29085 () Bool)

(declare-fun e!32664 () Bool)

(assert (=> d!10229 (=> res!29085 e!32664)))

(assert (=> d!10229 (= res!29085 (bvsge #b00000000000000000000000000000000 (size!1793 (_keys!3526 (v!2161 (underlying!127 thiss!992))))))))

(assert (=> d!10229 (= (arrayNoDuplicates!0 (_keys!3526 (v!2161 (underlying!127 thiss!992))) #b00000000000000000000000000000000 Nil!1345) e!32664)))

(declare-fun b!50554 () Bool)

(assert (=> b!50554 (= e!32667 call!3903)))

(declare-fun b!50555 () Bool)

(assert (=> b!50555 (= e!32664 e!32666)))

(declare-fun res!29086 () Bool)

(assert (=> b!50555 (=> (not res!29086) (not e!32666))))

(assert (=> b!50555 (= res!29086 (not e!32665))))

(declare-fun res!29084 () Bool)

(assert (=> b!50555 (=> (not res!29084) (not e!32665))))

(assert (=> b!50555 (= res!29084 (validKeyInArray!0 (select (arr!1570 (_keys!3526 (v!2161 (underlying!127 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (= (and d!10229 (not res!29085)) b!50555))

(assert (= (and b!50555 res!29084) b!50552))

(assert (= (and b!50555 res!29086) b!50553))

(assert (= (and b!50553 c!6835) b!50554))

(assert (= (and b!50553 (not c!6835)) b!50551))

(assert (= (or b!50554 b!50551) bm!3900))

(assert (=> bm!3900 m!43825))

(declare-fun m!43837 () Bool)

(assert (=> bm!3900 m!43837))

(assert (=> b!50552 m!43825))

(assert (=> b!50552 m!43825))

(declare-fun m!43839 () Bool)

(assert (=> b!50552 m!43839))

(assert (=> b!50553 m!43825))

(assert (=> b!50553 m!43825))

(assert (=> b!50553 m!43827))

(assert (=> b!50555 m!43825))

(assert (=> b!50555 m!43825))

(assert (=> b!50555 m!43827))

(assert (=> b!50440 d!10229))

(assert (=> b!50474 d!10221))

(declare-fun mapNonEmpty!2201 () Bool)

(declare-fun mapRes!2201 () Bool)

(declare-fun tp!6701 () Bool)

(declare-fun e!32668 () Bool)

(assert (=> mapNonEmpty!2201 (= mapRes!2201 (and tp!6701 e!32668))))

(declare-fun mapValue!2201 () ValueCell!750)

(declare-fun mapKey!2201 () (_ BitVec 32))

(declare-fun mapRest!2201 () (Array (_ BitVec 32) ValueCell!750))

(assert (=> mapNonEmpty!2201 (= mapRest!2200 (store mapRest!2201 mapKey!2201 mapValue!2201))))

(declare-fun mapIsEmpty!2201 () Bool)

(assert (=> mapIsEmpty!2201 mapRes!2201))

(declare-fun condMapEmpty!2201 () Bool)

(declare-fun mapDefault!2201 () ValueCell!750)

(assert (=> mapNonEmpty!2200 (= condMapEmpty!2201 (= mapRest!2200 ((as const (Array (_ BitVec 32) ValueCell!750)) mapDefault!2201)))))

(declare-fun e!32669 () Bool)

(assert (=> mapNonEmpty!2200 (= tp!6700 (and e!32669 mapRes!2201))))

(declare-fun b!50556 () Bool)

(assert (=> b!50556 (= e!32668 tp_is_empty!2187)))

(declare-fun b!50557 () Bool)

(assert (=> b!50557 (= e!32669 tp_is_empty!2187)))

(assert (= (and mapNonEmpty!2200 condMapEmpty!2201) mapIsEmpty!2201))

(assert (= (and mapNonEmpty!2200 (not condMapEmpty!2201)) mapNonEmpty!2201))

(assert (= (and mapNonEmpty!2201 ((_ is ValueCellFull!750) mapValue!2201)) b!50556))

(assert (= (and mapNonEmpty!2200 ((_ is ValueCellFull!750) mapDefault!2201)) b!50557))

(declare-fun m!43841 () Bool)

(assert (=> mapNonEmpty!2201 m!43841))

(declare-fun mapNonEmpty!2202 () Bool)

(declare-fun mapRes!2202 () Bool)

(declare-fun tp!6702 () Bool)

(declare-fun e!32670 () Bool)

(assert (=> mapNonEmpty!2202 (= mapRes!2202 (and tp!6702 e!32670))))

(declare-fun mapKey!2202 () (_ BitVec 32))

(declare-fun mapRest!2202 () (Array (_ BitVec 32) ValueCell!750))

(declare-fun mapValue!2202 () ValueCell!750)

(assert (=> mapNonEmpty!2202 (= mapRest!2199 (store mapRest!2202 mapKey!2202 mapValue!2202))))

(declare-fun mapIsEmpty!2202 () Bool)

(assert (=> mapIsEmpty!2202 mapRes!2202))

(declare-fun condMapEmpty!2202 () Bool)

(declare-fun mapDefault!2202 () ValueCell!750)

(assert (=> mapNonEmpty!2199 (= condMapEmpty!2202 (= mapRest!2199 ((as const (Array (_ BitVec 32) ValueCell!750)) mapDefault!2202)))))

(declare-fun e!32671 () Bool)

(assert (=> mapNonEmpty!2199 (= tp!6699 (and e!32671 mapRes!2202))))

(declare-fun b!50558 () Bool)

(assert (=> b!50558 (= e!32670 tp_is_empty!2187)))

(declare-fun b!50559 () Bool)

(assert (=> b!50559 (= e!32671 tp_is_empty!2187)))

(assert (= (and mapNonEmpty!2199 condMapEmpty!2202) mapIsEmpty!2202))

(assert (= (and mapNonEmpty!2199 (not condMapEmpty!2202)) mapNonEmpty!2202))

(assert (= (and mapNonEmpty!2202 ((_ is ValueCellFull!750) mapValue!2202)) b!50558))

(assert (= (and mapNonEmpty!2199 ((_ is ValueCellFull!750) mapDefault!2202)) b!50559))

(declare-fun m!43843 () Bool)

(assert (=> mapNonEmpty!2202 m!43843))

(check-sat (not b!50552) b_and!2761 tp_is_empty!2187 (not bm!3895) b_and!2763 (not mapNonEmpty!2201) (not b!50538) (not b!50550) (not mapNonEmpty!2202) (not b!50501) (not bm!3900) (not b!50523) (not b!50541) (not b!50525) (not bm!3899) (not b_next!1543) (not bm!3896) (not b!50555) (not b!50526) (not b!50548) (not b!50514) (not bm!3898) (not d!10207) (not d!10217) (not b!50532) (not b!50545) (not b!50521) (not b_next!1541) (not d!10203) (not b!50553) (not d!10211) (not b!50530) (not bm!3897) (not b!50529))
(check-sat b_and!2761 b_and!2763 (not b_next!1541) (not b_next!1543))
