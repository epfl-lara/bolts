; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16814 () Bool)

(assert start!16814)

(declare-fun b!169221 () Bool)

(declare-fun b_free!4115 () Bool)

(declare-fun b_next!4115 () Bool)

(assert (=> b!169221 (= b_free!4115 (not b_next!4115))))

(declare-fun tp!14950 () Bool)

(declare-fun b_and!10547 () Bool)

(assert (=> b!169221 (= tp!14950 b_and!10547)))

(declare-fun b!169219 () Bool)

(declare-fun b_free!4117 () Bool)

(declare-fun b_next!4117 () Bool)

(assert (=> b!169219 (= b_free!4117 (not b_next!4117))))

(declare-fun tp!14952 () Bool)

(declare-fun b_and!10549 () Bool)

(assert (=> b!169219 (= tp!14952 b_and!10549)))

(declare-fun e!111461 () Bool)

(declare-fun e!111463 () Bool)

(declare-datatypes ((V!4859 0))(
  ( (V!4860 (val!1999 Int)) )
))
(declare-datatypes ((ValueCell!1611 0))(
  ( (ValueCellFull!1611 (v!3860 V!4859)) (EmptyCell!1611) )
))
(declare-datatypes ((array!6914 0))(
  ( (array!6915 (arr!3292 (Array (_ BitVec 32) (_ BitVec 64))) (size!3580 (_ BitVec 32))) )
))
(declare-datatypes ((array!6916 0))(
  ( (array!6917 (arr!3293 (Array (_ BitVec 32) ValueCell!1611)) (size!3581 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2130 0))(
  ( (LongMapFixedSize!2131 (defaultEntry!3507 Int) (mask!8288 (_ BitVec 32)) (extraKeys!3248 (_ BitVec 32)) (zeroValue!3350 V!4859) (minValue!3350 V!4859) (_size!1114 (_ BitVec 32)) (_keys!5332 array!6914) (_values!3490 array!6916) (_vacant!1114 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2130)

(declare-fun tp_is_empty!3909 () Bool)

(declare-fun array_inv!2107 (array!6914) Bool)

(declare-fun array_inv!2108 (array!6916) Bool)

(assert (=> b!169219 (= e!111463 (and tp!14952 tp_is_empty!3909 (array_inv!2107 (_keys!5332 thiss!1248)) (array_inv!2108 (_values!3490 thiss!1248)) e!111461))))

(declare-fun res!80529 () Bool)

(declare-fun e!111458 () Bool)

(assert (=> start!16814 (=> (not res!80529) (not e!111458))))

(declare-fun valid!913 (LongMapFixedSize!2130) Bool)

(assert (=> start!16814 (= res!80529 (valid!913 thiss!1248))))

(assert (=> start!16814 e!111458))

(assert (=> start!16814 e!111463))

(assert (=> start!16814 true))

(declare-fun b!169220 () Bool)

(declare-fun e!111469 () Bool)

(assert (=> b!169220 (= e!111469 tp_is_empty!3909)))

(declare-fun e!111464 () Bool)

(declare-datatypes ((tuple2!3200 0))(
  ( (tuple2!3201 (_1!1610 Bool) (_2!1610 LongMapFixedSize!2130)) )
))
(declare-fun err!55 () tuple2!3200)

(declare-fun e!111465 () Bool)

(assert (=> b!169221 (= e!111465 (and tp!14950 tp_is_empty!3909 (array_inv!2107 (_keys!5332 (_2!1610 err!55))) (array_inv!2108 (_values!3490 (_2!1610 err!55))) e!111464))))

(declare-fun b!169222 () Bool)

(declare-fun e!111466 () Bool)

(assert (=> b!169222 (= e!111466 tp_is_empty!3909)))

(declare-fun mapNonEmpty!6596 () Bool)

(declare-fun mapRes!6596 () Bool)

(declare-fun tp!14949 () Bool)

(declare-fun e!111457 () Bool)

(assert (=> mapNonEmpty!6596 (= mapRes!6596 (and tp!14949 e!111457))))

(declare-fun mapRest!6596 () (Array (_ BitVec 32) ValueCell!1611))

(declare-fun mapValue!6596 () ValueCell!1611)

(declare-fun mapKey!6597 () (_ BitVec 32))

(assert (=> mapNonEmpty!6596 (= (arr!3293 (_values!3490 thiss!1248)) (store mapRest!6596 mapKey!6597 mapValue!6596))))

(declare-fun b!169223 () Bool)

(declare-fun e!111462 () Bool)

(declare-fun e!111467 () Bool)

(assert (=> b!169223 (= e!111462 e!111467)))

(declare-fun res!80528 () Bool)

(assert (=> b!169223 (=> (not res!80528) (not e!111467))))

(declare-fun lt!84898 () tuple2!3200)

(assert (=> b!169223 (= res!80528 (valid!913 (_2!1610 lt!84898)))))

(assert (=> b!169223 (= lt!84898 err!55)))

(assert (=> b!169223 true))

(assert (=> b!169223 e!111465))

(declare-fun mapNonEmpty!6597 () Bool)

(declare-fun mapRes!6597 () Bool)

(declare-fun tp!14951 () Bool)

(assert (=> mapNonEmpty!6597 (= mapRes!6597 (and tp!14951 e!111466))))

(declare-fun mapRest!6597 () (Array (_ BitVec 32) ValueCell!1611))

(declare-fun mapValue!6597 () ValueCell!1611)

(declare-fun mapKey!6596 () (_ BitVec 32))

(assert (=> mapNonEmpty!6597 (= (arr!3293 (_values!3490 (_2!1610 err!55))) (store mapRest!6597 mapKey!6596 mapValue!6597))))

(declare-fun b!169224 () Bool)

(assert (=> b!169224 (= e!111464 (and e!111469 mapRes!6597))))

(declare-fun condMapEmpty!6596 () Bool)

(declare-fun mapDefault!6596 () ValueCell!1611)

(assert (=> b!169224 (= condMapEmpty!6596 (= (arr!3293 (_values!3490 (_2!1610 err!55))) ((as const (Array (_ BitVec 32) ValueCell!1611)) mapDefault!6596)))))

(declare-fun b!169225 () Bool)

(assert (=> b!169225 (= e!111467 false)))

(declare-fun lt!84897 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3202 0))(
  ( (tuple2!3203 (_1!1611 (_ BitVec 64)) (_2!1611 V!4859)) )
))
(declare-datatypes ((List!2200 0))(
  ( (Nil!2197) (Cons!2196 (h!2813 tuple2!3202) (t!7010 List!2200)) )
))
(declare-datatypes ((ListLongMap!2163 0))(
  ( (ListLongMap!2164 (toList!1097 List!2200)) )
))
(declare-fun contains!1133 (ListLongMap!2163 (_ BitVec 64)) Bool)

(declare-fun map!1816 (LongMapFixedSize!2130) ListLongMap!2163)

(assert (=> b!169225 (= lt!84897 (contains!1133 (map!1816 (_2!1610 lt!84898)) key!828))))

(declare-fun mapIsEmpty!6596 () Bool)

(assert (=> mapIsEmpty!6596 mapRes!6597))

(declare-fun b!169226 () Bool)

(declare-fun e!111468 () Bool)

(assert (=> b!169226 (= e!111468 tp_is_empty!3909)))

(declare-fun mapIsEmpty!6597 () Bool)

(assert (=> mapIsEmpty!6597 mapRes!6596))

(declare-fun b!169227 () Bool)

(declare-fun res!80525 () Bool)

(assert (=> b!169227 (=> (not res!80525) (not e!111467))))

(assert (=> b!169227 (= res!80525 (_1!1610 lt!84898))))

(declare-fun b!169228 () Bool)

(declare-fun res!80527 () Bool)

(assert (=> b!169228 (=> (not res!80527) (not e!111458))))

(assert (=> b!169228 (= res!80527 (not (= key!828 (bvneg key!828))))))

(declare-fun b!169229 () Bool)

(assert (=> b!169229 (= e!111457 tp_is_empty!3909)))

(declare-fun b!169230 () Bool)

(assert (=> b!169230 (= e!111458 e!111462)))

(declare-fun res!80526 () Bool)

(assert (=> b!169230 (=> (not res!80526) (not e!111462))))

(declare-datatypes ((SeekEntryResult!531 0))(
  ( (MissingZero!531 (index!4292 (_ BitVec 32))) (Found!531 (index!4293 (_ BitVec 32))) (Intermediate!531 (undefined!1343 Bool) (index!4294 (_ BitVec 32)) (x!18711 (_ BitVec 32))) (Undefined!531) (MissingVacant!531 (index!4295 (_ BitVec 32))) )
))
(declare-fun lt!84899 () SeekEntryResult!531)

(get-info :version)

(assert (=> b!169230 (= res!80526 (and (not ((_ is Undefined!531) lt!84899)) (not ((_ is MissingVacant!531) lt!84899)) (not ((_ is MissingZero!531) lt!84899)) (not ((_ is Found!531) lt!84899))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6914 (_ BitVec 32)) SeekEntryResult!531)

(assert (=> b!169230 (= lt!84899 (seekEntryOrOpen!0 key!828 (_keys!5332 thiss!1248) (mask!8288 thiss!1248)))))

(declare-fun b!169231 () Bool)

(assert (=> b!169231 (= e!111461 (and e!111468 mapRes!6596))))

(declare-fun condMapEmpty!6597 () Bool)

(declare-fun mapDefault!6597 () ValueCell!1611)

(assert (=> b!169231 (= condMapEmpty!6597 (= (arr!3293 (_values!3490 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1611)) mapDefault!6597)))))

(assert (= (and start!16814 res!80529) b!169228))

(assert (= (and b!169228 res!80527) b!169230))

(assert (= (and b!169230 res!80526) b!169223))

(assert (= (and b!169224 condMapEmpty!6596) mapIsEmpty!6596))

(assert (= (and b!169224 (not condMapEmpty!6596)) mapNonEmpty!6597))

(assert (= (and mapNonEmpty!6597 ((_ is ValueCellFull!1611) mapValue!6597)) b!169222))

(assert (= (and b!169224 ((_ is ValueCellFull!1611) mapDefault!6596)) b!169220))

(assert (= b!169221 b!169224))

(assert (= b!169223 b!169221))

(assert (= (and b!169223 res!80528) b!169227))

(assert (= (and b!169227 res!80525) b!169225))

(assert (= (and b!169231 condMapEmpty!6597) mapIsEmpty!6597))

(assert (= (and b!169231 (not condMapEmpty!6597)) mapNonEmpty!6596))

(assert (= (and mapNonEmpty!6596 ((_ is ValueCellFull!1611) mapValue!6596)) b!169229))

(assert (= (and b!169231 ((_ is ValueCellFull!1611) mapDefault!6597)) b!169226))

(assert (= b!169219 b!169231))

(assert (= start!16814 b!169219))

(declare-fun m!198333 () Bool)

(assert (=> mapNonEmpty!6597 m!198333))

(declare-fun m!198335 () Bool)

(assert (=> b!169225 m!198335))

(assert (=> b!169225 m!198335))

(declare-fun m!198337 () Bool)

(assert (=> b!169225 m!198337))

(declare-fun m!198339 () Bool)

(assert (=> b!169223 m!198339))

(declare-fun m!198341 () Bool)

(assert (=> b!169219 m!198341))

(declare-fun m!198343 () Bool)

(assert (=> b!169219 m!198343))

(declare-fun m!198345 () Bool)

(assert (=> b!169230 m!198345))

(declare-fun m!198347 () Bool)

(assert (=> mapNonEmpty!6596 m!198347))

(declare-fun m!198349 () Bool)

(assert (=> start!16814 m!198349))

(declare-fun m!198351 () Bool)

(assert (=> b!169221 m!198351))

(declare-fun m!198353 () Bool)

(assert (=> b!169221 m!198353))

(check-sat (not b!169223) (not start!16814) (not b!169230) (not b!169219) b_and!10547 (not b!169225) tp_is_empty!3909 (not b_next!4117) (not mapNonEmpty!6597) (not mapNonEmpty!6596) b_and!10549 (not b!169221) (not b_next!4115))
(check-sat b_and!10547 b_and!10549 (not b_next!4117) (not b_next!4115))
