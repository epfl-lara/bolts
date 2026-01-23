; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46354 () Bool)

(assert start!46354)

(declare-fun b!512177 () Bool)

(declare-fun b_free!13267 () Bool)

(declare-fun b_next!13267 () Bool)

(assert (=> b!512177 (= b_free!13267 (not b_next!13267))))

(declare-fun tp!159205 () Bool)

(declare-fun b_and!50687 () Bool)

(assert (=> b!512177 (= tp!159205 b_and!50687)))

(declare-fun mapIsEmpty!1790 () Bool)

(declare-fun mapRes!1790 () Bool)

(assert (=> mapIsEmpty!1790 mapRes!1790))

(declare-fun res!217351 () Bool)

(declare-fun e!306001 () Bool)

(assert (=> start!46354 (=> (not res!217351) (not e!306001))))

(declare-datatypes ((V!1367 0))(
  ( (V!1368 (val!1680 Int)) )
))
(declare-datatypes ((array!1755 0))(
  ( (array!1756 (arr!810 (Array (_ BitVec 32) (_ BitVec 64))) (size!3744 (_ BitVec 32))) )
))
(declare-datatypes ((array!1757 0))(
  ( (array!1758 (arr!811 (Array (_ BitVec 32) V!1367)) (size!3745 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!926 0))(
  ( (LongMapFixedSize!927 (defaultEntry!810 Int) (mask!1856 (_ BitVec 32)) (extraKeys!709 (_ BitVec 32)) (zeroValue!719 V!1367) (minValue!719 V!1367) (_size!1040 (_ BitVec 32)) (_keys!754 array!1755) (_values!741 array!1757) (_vacant!524 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1803 0))(
  ( (Cell!1804 (v!15640 LongMapFixedSize!926)) )
))
(declare-datatypes ((MutLongMap!463 0))(
  ( (LongMap!463 (underlying!1110 Cell!1803)) (MutLongMapExt!462 (__x!3290 Int)) )
))
(declare-fun thiss!47442 () MutLongMap!463)

(get-info :version)

(assert (=> start!46354 (= res!217351 ((_ is MutLongMapExt!462) thiss!47442))))

(assert (=> start!46354 e!306001))

(declare-fun e!306000 () Bool)

(assert (=> start!46354 e!306000))

(assert (=> start!46354 true))

(declare-fun e!306002 () Bool)

(declare-fun tp_is_empty!2463 () Bool)

(declare-fun e!306004 () Bool)

(declare-fun array_inv!583 (array!1755) Bool)

(declare-fun array_inv!584 (array!1757) Bool)

(assert (=> b!512177 (= e!306002 (and tp!159205 tp_is_empty!2463 (array_inv!583 (_keys!754 (v!15640 (underlying!1110 thiss!47442)))) (array_inv!584 (_values!741 (v!15640 (underlying!1110 thiss!47442)))) e!306004))))

(declare-fun b!512178 () Bool)

(declare-fun e!305999 () Bool)

(assert (=> b!512178 (= e!305999 e!306002)))

(declare-fun b!512179 () Bool)

(assert (=> b!512179 (= e!306001 false)))

(declare-fun lt!212183 () Bool)

(declare-fun key!7052 () (_ BitVec 64))

(declare-fun contains!1045 (MutLongMap!463 (_ BitVec 64)) Bool)

(assert (=> b!512179 (= lt!212183 (contains!1045 thiss!47442 key!7052))))

(declare-fun lt!212182 () V!1367)

(declare-fun choose!3648 (MutLongMap!463 (_ BitVec 64)) V!1367)

(assert (=> b!512179 (= lt!212182 (choose!3648 thiss!47442 key!7052))))

(declare-fun b!512180 () Bool)

(assert (=> b!512180 (= e!306000 e!305999)))

(declare-fun mapNonEmpty!1790 () Bool)

(declare-fun tp!159204 () Bool)

(assert (=> mapNonEmpty!1790 (= mapRes!1790 (and tp!159204 tp_is_empty!2463))))

(declare-fun mapValue!1790 () V!1367)

(declare-fun mapRest!1790 () (Array (_ BitVec 32) V!1367))

(declare-fun mapKey!1790 () (_ BitVec 32))

(assert (=> mapNonEmpty!1790 (= (arr!811 (_values!741 (v!15640 (underlying!1110 thiss!47442)))) (store mapRest!1790 mapKey!1790 mapValue!1790))))

(declare-fun b!512181 () Bool)

(assert (=> b!512181 (= e!306004 (and tp_is_empty!2463 mapRes!1790))))

(declare-fun condMapEmpty!1790 () Bool)

(declare-fun mapDefault!1790 () V!1367)

(assert (=> b!512181 (= condMapEmpty!1790 (= (arr!811 (_values!741 (v!15640 (underlying!1110 thiss!47442)))) ((as const (Array (_ BitVec 32) V!1367)) mapDefault!1790)))))

(declare-fun b!512182 () Bool)

(declare-fun res!217350 () Bool)

(assert (=> b!512182 (=> (not res!217350) (not e!306001))))

(declare-fun valid!417 (MutLongMap!463) Bool)

(assert (=> b!512182 (= res!217350 (valid!417 thiss!47442))))

(assert (= (and start!46354 res!217351) b!512182))

(assert (= (and b!512182 res!217350) b!512179))

(assert (= (and b!512181 condMapEmpty!1790) mapIsEmpty!1790))

(assert (= (and b!512181 (not condMapEmpty!1790)) mapNonEmpty!1790))

(assert (= b!512177 b!512181))

(assert (= b!512178 b!512177))

(assert (= b!512180 b!512178))

(assert (= (and start!46354 ((_ is LongMap!463) thiss!47442)) b!512180))

(declare-fun m!758979 () Bool)

(assert (=> b!512177 m!758979))

(declare-fun m!758981 () Bool)

(assert (=> b!512177 m!758981))

(declare-fun m!758983 () Bool)

(assert (=> b!512179 m!758983))

(declare-fun m!758985 () Bool)

(assert (=> b!512179 m!758985))

(declare-fun m!758987 () Bool)

(assert (=> mapNonEmpty!1790 m!758987))

(declare-fun m!758989 () Bool)

(assert (=> b!512182 m!758989))

(check-sat (not b!512182) (not b!512179) (not b!512177) (not mapNonEmpty!1790) b_and!50687 tp_is_empty!2463 (not b_next!13267))
(check-sat b_and!50687 (not b_next!13267))
