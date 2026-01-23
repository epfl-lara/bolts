; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110864 () Bool)

(assert start!110864)

(declare-fun b!1257175 () Bool)

(declare-fun b_free!29751 () Bool)

(declare-fun b_next!30455 () Bool)

(assert (=> b!1257175 (= b_free!29751 (not b_next!30455))))

(declare-fun tp!370604 () Bool)

(declare-fun b_and!84895 () Bool)

(assert (=> b!1257175 (= tp!370604 b_and!84895)))

(declare-fun b!1257173 () Bool)

(declare-fun res!556615 () Bool)

(declare-fun e!800190 () Bool)

(assert (=> b!1257173 (=> (not res!556615) (not e!800190))))

(declare-datatypes ((V!2958 0))(
  ( (V!2959 (val!4188 Int)) )
))
(declare-datatypes ((array!4650 0))(
  ( (array!4651 (arr!2073 (Array (_ BitVec 32) V!2958)) (size!9964 (_ BitVec 32))) )
))
(declare-datatypes ((array!4652 0))(
  ( (array!4653 (arr!2074 (Array (_ BitVec 32) (_ BitVec 64))) (size!9965 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2620 0))(
  ( (LongMapFixedSize!2621 (defaultEntry!1670 Int) (mask!4121 (_ BitVec 32)) (extraKeys!1557 (_ BitVec 32)) (zeroValue!1567 V!2958) (minValue!1567 V!2958) (_size!2704 (_ BitVec 32)) (_keys!1604 array!4652) (_values!1589 array!4650) (_vacant!1371 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5131 0))(
  ( (Cell!5132 (v!20782 LongMapFixedSize!2620)) )
))
(declare-datatypes ((MutLongMap!1310 0))(
  ( (LongMap!1310 (underlying!2828 Cell!5131)) (MutLongMapExt!1309 (__x!8204 Int)) )
))
(declare-datatypes ((tuple2!12484 0))(
  ( (tuple2!12485 (_1!7090 Bool) (_2!7090 MutLongMap!1310)) )
))
(declare-fun lt!420822 () tuple2!12484)

(assert (=> b!1257173 (= res!556615 (_1!7090 lt!420822))))

(declare-fun b!1257174 () Bool)

(declare-fun res!556613 () Bool)

(declare-fun e!800189 () Bool)

(assert (=> b!1257174 (=> (not res!556613) (not e!800189))))

(declare-fun thiss!47507 () MutLongMap!1310)

(declare-fun valid!1050 (MutLongMap!1310) Bool)

(assert (=> b!1257174 (= res!556613 (valid!1050 thiss!47507))))

(declare-fun e!800193 () Bool)

(declare-fun tp_is_empty!6515 () Bool)

(declare-fun e!800192 () Bool)

(declare-fun array_inv!1507 (array!4652) Bool)

(declare-fun array_inv!1508 (array!4650) Bool)

(assert (=> b!1257175 (= e!800192 (and tp!370604 tp_is_empty!6515 (array_inv!1507 (_keys!1604 (v!20782 (underlying!2828 thiss!47507)))) (array_inv!1508 (_values!1589 (v!20782 (underlying!2828 thiss!47507)))) e!800193))))

(declare-fun mapIsEmpty!6289 () Bool)

(declare-fun mapRes!6289 () Bool)

(assert (=> mapIsEmpty!6289 mapRes!6289))

(declare-fun b!1257176 () Bool)

(assert (=> b!1257176 (= e!800189 e!800190)))

(declare-fun res!556616 () Bool)

(assert (=> b!1257176 (=> (not res!556616) (not e!800190))))

(get-info :version)

(assert (=> b!1257176 (= res!556616 ((_ is MutLongMapExt!1309) (_2!7090 lt!420822)))))

(declare-fun key!7089 () (_ BitVec 64))

(declare-fun v!11771 () V!2958)

(declare-fun choose!7874 (MutLongMap!1310 (_ BitVec 64) V!2958) tuple2!12484)

(assert (=> b!1257176 (= lt!420822 (choose!7874 thiss!47507 key!7089 v!11771))))

(declare-fun b!1257177 () Bool)

(declare-fun e!800188 () Bool)

(assert (=> b!1257177 (= e!800188 e!800192)))

(declare-fun mapNonEmpty!6289 () Bool)

(declare-fun tp!370603 () Bool)

(assert (=> mapNonEmpty!6289 (= mapRes!6289 (and tp!370603 tp_is_empty!6515))))

(declare-fun mapKey!6289 () (_ BitVec 32))

(declare-fun mapValue!6289 () V!2958)

(declare-fun mapRest!6289 () (Array (_ BitVec 32) V!2958))

(assert (=> mapNonEmpty!6289 (= (arr!2073 (_values!1589 (v!20782 (underlying!2828 thiss!47507)))) (store mapRest!6289 mapKey!6289 mapValue!6289))))

(declare-fun b!1257179 () Bool)

(declare-fun res!556614 () Bool)

(assert (=> b!1257179 (=> (not res!556614) (not e!800190))))

(assert (=> b!1257179 (= res!556614 (valid!1050 (_2!7090 lt!420822)))))

(declare-fun b!1257180 () Bool)

(assert (=> b!1257180 (= e!800190 false)))

(declare-fun lt!420821 () Bool)

(declare-datatypes ((tuple2!12486 0))(
  ( (tuple2!12487 (_1!7091 (_ BitVec 64)) (_2!7091 V!2958)) )
))
(declare-datatypes ((List!12631 0))(
  ( (Nil!12567) (Cons!12567 (h!17968 tuple2!12486) (t!115763 List!12631)) )
))
(declare-datatypes ((ListLongMap!145 0))(
  ( (ListLongMap!146 (toList!704 List!12631)) )
))
(declare-fun contains!2125 (ListLongMap!145 (_ BitVec 64)) Bool)

(declare-fun abstractMap!55 (MutLongMap!1310) ListLongMap!145)

(assert (=> b!1257180 (= lt!420821 (contains!2125 (abstractMap!55 (_2!7090 lt!420822)) key!7089))))

(declare-fun b!1257181 () Bool)

(assert (=> b!1257181 (= e!800193 (and tp_is_empty!6515 mapRes!6289))))

(declare-fun condMapEmpty!6289 () Bool)

(declare-fun mapDefault!6289 () V!2958)

(assert (=> b!1257181 (= condMapEmpty!6289 (= (arr!2073 (_values!1589 (v!20782 (underlying!2828 thiss!47507)))) ((as const (Array (_ BitVec 32) V!2958)) mapDefault!6289)))))

(declare-fun b!1257178 () Bool)

(declare-fun e!800194 () Bool)

(assert (=> b!1257178 (= e!800194 e!800188)))

(declare-fun res!556612 () Bool)

(assert (=> start!110864 (=> (not res!556612) (not e!800189))))

(assert (=> start!110864 (= res!556612 ((_ is MutLongMapExt!1309) thiss!47507))))

(assert (=> start!110864 e!800189))

(assert (=> start!110864 e!800194))

(assert (=> start!110864 true))

(assert (=> start!110864 tp_is_empty!6515))

(assert (= (and start!110864 res!556612) b!1257174))

(assert (= (and b!1257174 res!556613) b!1257176))

(assert (= (and b!1257176 res!556616) b!1257179))

(assert (= (and b!1257179 res!556614) b!1257173))

(assert (= (and b!1257173 res!556615) b!1257180))

(assert (= (and b!1257181 condMapEmpty!6289) mapIsEmpty!6289))

(assert (= (and b!1257181 (not condMapEmpty!6289)) mapNonEmpty!6289))

(assert (= b!1257175 b!1257181))

(assert (= b!1257177 b!1257175))

(assert (= b!1257178 b!1257177))

(assert (= (and start!110864 ((_ is LongMap!1310) thiss!47507)) b!1257178))

(declare-fun m!1415329 () Bool)

(assert (=> b!1257180 m!1415329))

(assert (=> b!1257180 m!1415329))

(declare-fun m!1415331 () Bool)

(assert (=> b!1257180 m!1415331))

(declare-fun m!1415333 () Bool)

(assert (=> b!1257175 m!1415333))

(declare-fun m!1415335 () Bool)

(assert (=> b!1257175 m!1415335))

(declare-fun m!1415337 () Bool)

(assert (=> mapNonEmpty!6289 m!1415337))

(declare-fun m!1415339 () Bool)

(assert (=> b!1257174 m!1415339))

(declare-fun m!1415341 () Bool)

(assert (=> b!1257179 m!1415341))

(declare-fun m!1415343 () Bool)

(assert (=> b!1257176 m!1415343))

(check-sat (not b!1257176) b_and!84895 (not b!1257180) (not mapNonEmpty!6289) (not b!1257174) (not b!1257179) (not b!1257175) (not b_next!30455) tp_is_empty!6515)
(check-sat b_and!84895 (not b_next!30455))
