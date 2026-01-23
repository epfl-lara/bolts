; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413640 () Bool)

(assert start!413640)

(declare-fun b!4305579 () Bool)

(declare-fun b_free!128379 () Bool)

(declare-fun b_next!129083 () Bool)

(assert (=> b!4305579 (= b_free!128379 (not b_next!129083))))

(declare-fun tp!1323158 () Bool)

(declare-fun b_and!339779 () Bool)

(assert (=> b!4305579 (= tp!1323158 b_and!339779)))

(declare-fun b!4305588 () Bool)

(declare-fun b_free!128381 () Bool)

(declare-fun b_next!129085 () Bool)

(assert (=> b!4305588 (= b_free!128381 (not b_next!129085))))

(declare-fun tp!1323162 () Bool)

(declare-fun b_and!339781 () Bool)

(assert (=> b!4305588 (= tp!1323162 b_and!339781)))

(declare-fun b!4305576 () Bool)

(declare-fun res!1764717 () Bool)

(declare-fun e!2677141 () Bool)

(assert (=> b!4305576 (=> (not res!1764717) (not e!2677141))))

(declare-datatypes ((V!9461 0))(
  ( (V!9462 (val!15665 Int)) )
))
(declare-datatypes ((K!9259 0))(
  ( (K!9260 (val!15666 Int)) )
))
(declare-datatypes ((tuple2!46300 0))(
  ( (tuple2!46301 (_1!26429 K!9259) (_2!26429 V!9461)) )
))
(declare-datatypes ((List!48214 0))(
  ( (Nil!48090) (Cons!48090 (h!53517 tuple2!46300) (t!354999 List!48214)) )
))
(declare-datatypes ((array!16562 0))(
  ( (array!16563 (arr!7395 (Array (_ BitVec 32) (_ BitVec 64))) (size!35434 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4521 0))(
  ( (HashableExt!4520 (__x!29840 Int)) )
))
(declare-datatypes ((array!16564 0))(
  ( (array!16565 (arr!7396 (Array (_ BitVec 32) List!48214)) (size!35435 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9210 0))(
  ( (LongMapFixedSize!9211 (defaultEntry!4990 Int) (mask!13136 (_ BitVec 32)) (extraKeys!4854 (_ BitVec 32)) (zeroValue!4864 List!48214) (minValue!4864 List!48214) (_size!9253 (_ BitVec 32)) (_keys!4905 array!16562) (_values!4886 array!16564) (_vacant!4666 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18229 0))(
  ( (Cell!18230 (v!42146 LongMapFixedSize!9210)) )
))
(declare-datatypes ((MutLongMap!4605 0))(
  ( (LongMap!4605 (underlying!9439 Cell!18229)) (MutLongMapExt!4604 (__x!29841 Int)) )
))
(declare-datatypes ((Cell!18231 0))(
  ( (Cell!18232 (v!42147 MutLongMap!4605)) )
))
(declare-datatypes ((MutableMap!4511 0))(
  ( (MutableMapExt!4510 (__x!29842 Int)) (HashMap!4511 (underlying!9440 Cell!18231) (hashF!6595 Hashable!4521) (_size!9254 (_ BitVec 32)) (defaultValue!4682 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4511)

(declare-fun valid!3592 (MutableMap!4511) Bool)

(assert (=> b!4305576 (= res!1764717 (valid!3592 thiss!42308))))

(declare-fun b!4305577 () Bool)

(declare-fun e!2677138 () List!48214)

(declare-fun lt!1526705 () (_ BitVec 64))

(declare-fun apply!10953 (MutLongMap!4605 (_ BitVec 64)) List!48214)

(assert (=> b!4305577 (= e!2677138 (apply!10953 (v!42147 (underlying!9440 thiss!42308)) lt!1526705))))

(declare-fun mapIsEmpty!20617 () Bool)

(declare-fun mapRes!20617 () Bool)

(assert (=> mapIsEmpty!20617 mapRes!20617))

(declare-fun b!4305578 () Bool)

(declare-fun e!2677136 () Bool)

(declare-fun e!2677137 () Bool)

(assert (=> b!4305578 (= e!2677136 e!2677137)))

(declare-fun e!2677146 () Bool)

(declare-fun tp!1323164 () Bool)

(declare-fun tp!1323163 () Bool)

(declare-fun array_inv!5303 (array!16562) Bool)

(declare-fun array_inv!5304 (array!16564) Bool)

(assert (=> b!4305579 (= e!2677137 (and tp!1323158 tp!1323164 tp!1323163 (array_inv!5303 (_keys!4905 (v!42146 (underlying!9439 (v!42147 (underlying!9440 thiss!42308)))))) (array_inv!5304 (_values!4886 (v!42146 (underlying!9439 (v!42147 (underlying!9440 thiss!42308)))))) e!2677146))))

(declare-fun b!4305580 () Bool)

(declare-fun e!2677139 () Bool)

(assert (=> b!4305580 (= e!2677139 (not true))))

(declare-fun lt!1526709 () Bool)

(declare-fun lt!1526708 () List!48214)

(declare-fun noDuplicateKeys!185 (List!48214) Bool)

(assert (=> b!4305580 (= lt!1526709 (noDuplicateKeys!185 lt!1526708))))

(declare-fun allKeysSameHash!154 (List!48214 (_ BitVec 64) Hashable!4521) Bool)

(assert (=> b!4305580 (allKeysSameHash!154 lt!1526708 lt!1526705 (hashF!6595 thiss!42308))))

(declare-datatypes ((tuple2!46302 0))(
  ( (tuple2!46303 (_1!26430 (_ BitVec 64)) (_2!26430 List!48214)) )
))
(declare-datatypes ((List!48215 0))(
  ( (Nil!48091) (Cons!48091 (h!53518 tuple2!46302) (t!355000 List!48215)) )
))
(declare-datatypes ((ListLongMap!921 0))(
  ( (ListLongMap!922 (toList!2311 List!48215)) )
))
(declare-fun lt!1526711 () ListLongMap!921)

(declare-datatypes ((Unit!67098 0))(
  ( (Unit!67099) )
))
(declare-fun lt!1526706 () Unit!67098)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!145 (List!48215 (_ BitVec 64) List!48214 Hashable!4521) Unit!67098)

(assert (=> b!4305580 (= lt!1526706 (lemmaInLongMapAllKeySameHashThenForTuple!145 (toList!2311 lt!1526711) lt!1526705 lt!1526708 (hashF!6595 thiss!42308)))))

(declare-fun b!4305581 () Bool)

(declare-fun e!2677144 () Bool)

(assert (=> b!4305581 (= e!2677141 e!2677144)))

(declare-fun res!1764714 () Bool)

(assert (=> b!4305581 (=> (not res!1764714) (not e!2677144))))

(declare-fun key!2048 () K!9259)

(declare-fun contains!10027 (MutableMap!4511 K!9259) Bool)

(assert (=> b!4305581 (= res!1764714 (not (contains!10027 thiss!42308 key!2048)))))

(declare-fun map!10063 (MutLongMap!4605) ListLongMap!921)

(assert (=> b!4305581 (= lt!1526711 (map!10063 (v!42147 (underlying!9440 thiss!42308))))))

(declare-datatypes ((ListMap!1595 0))(
  ( (ListMap!1596 (toList!2312 List!48214)) )
))
(declare-fun lt!1526707 () ListMap!1595)

(declare-fun map!10064 (MutableMap!4511) ListMap!1595)

(assert (=> b!4305581 (= lt!1526707 (map!10064 thiss!42308))))

(declare-fun b!4305582 () Bool)

(declare-fun res!1764718 () Bool)

(assert (=> b!4305582 (=> (not res!1764718) (not e!2677139))))

(declare-fun isEmpty!28058 (List!48214) Bool)

(assert (=> b!4305582 (= res!1764718 (not (isEmpty!28058 lt!1526708)))))

(declare-fun b!4305583 () Bool)

(assert (=> b!4305583 (= e!2677138 Nil!48090)))

(declare-fun b!4305584 () Bool)

(assert (=> b!4305584 (= e!2677144 e!2677139)))

(declare-fun res!1764716 () Bool)

(assert (=> b!4305584 (=> (not res!1764716) (not e!2677139))))

(declare-fun v!9179 () V!9461)

(declare-datatypes ((tuple2!46304 0))(
  ( (tuple2!46305 (_1!26431 Bool) (_2!26431 MutLongMap!4605)) )
))
(declare-fun update!387 (MutLongMap!4605 (_ BitVec 64) List!48214) tuple2!46304)

(assert (=> b!4305584 (= res!1764716 (_1!26431 (update!387 (v!42147 (underlying!9440 thiss!42308)) lt!1526705 (Cons!48090 (tuple2!46301 key!2048 v!9179) lt!1526708))))))

(assert (=> b!4305584 (= lt!1526708 e!2677138)))

(declare-fun c!732056 () Bool)

(declare-fun contains!10028 (MutLongMap!4605 (_ BitVec 64)) Bool)

(assert (=> b!4305584 (= c!732056 (contains!10028 (v!42147 (underlying!9440 thiss!42308)) lt!1526705))))

(declare-fun hash!927 (Hashable!4521 K!9259) (_ BitVec 64))

(assert (=> b!4305584 (= lt!1526705 (hash!927 (hashF!6595 thiss!42308) key!2048))))

(declare-fun b!4305585 () Bool)

(declare-fun tp!1323161 () Bool)

(assert (=> b!4305585 (= e!2677146 (and tp!1323161 mapRes!20617))))

(declare-fun condMapEmpty!20617 () Bool)

(declare-fun mapDefault!20617 () List!48214)

(assert (=> b!4305585 (= condMapEmpty!20617 (= (arr!7396 (_values!4886 (v!42146 (underlying!9439 (v!42147 (underlying!9440 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48214)) mapDefault!20617)))))

(declare-fun b!4305586 () Bool)

(declare-fun e!2677140 () Bool)

(declare-fun e!2677143 () Bool)

(declare-fun lt!1526710 () MutLongMap!4605)

(get-info :version)

(assert (=> b!4305586 (= e!2677140 (and e!2677143 ((_ is LongMap!4605) lt!1526710)))))

(assert (=> b!4305586 (= lt!1526710 (v!42147 (underlying!9440 thiss!42308)))))

(declare-fun res!1764715 () Bool)

(assert (=> start!413640 (=> (not res!1764715) (not e!2677141))))

(assert (=> start!413640 (= res!1764715 ((_ is HashMap!4511) thiss!42308))))

(assert (=> start!413640 e!2677141))

(declare-fun e!2677145 () Bool)

(assert (=> start!413640 e!2677145))

(declare-fun tp_is_empty!23541 () Bool)

(assert (=> start!413640 tp_is_empty!23541))

(declare-fun tp_is_empty!23543 () Bool)

(assert (=> start!413640 tp_is_empty!23543))

(declare-fun b!4305587 () Bool)

(assert (=> b!4305587 (= e!2677143 e!2677136)))

(declare-fun mapNonEmpty!20617 () Bool)

(declare-fun tp!1323159 () Bool)

(declare-fun tp!1323160 () Bool)

(assert (=> mapNonEmpty!20617 (= mapRes!20617 (and tp!1323159 tp!1323160))))

(declare-fun mapKey!20617 () (_ BitVec 32))

(declare-fun mapRest!20617 () (Array (_ BitVec 32) List!48214))

(declare-fun mapValue!20617 () List!48214)

(assert (=> mapNonEmpty!20617 (= (arr!7396 (_values!4886 (v!42146 (underlying!9439 (v!42147 (underlying!9440 thiss!42308)))))) (store mapRest!20617 mapKey!20617 mapValue!20617))))

(assert (=> b!4305588 (= e!2677145 (and e!2677140 tp!1323162))))

(assert (= (and start!413640 res!1764715) b!4305576))

(assert (= (and b!4305576 res!1764717) b!4305581))

(assert (= (and b!4305581 res!1764714) b!4305584))

(assert (= (and b!4305584 c!732056) b!4305577))

(assert (= (and b!4305584 (not c!732056)) b!4305583))

(assert (= (and b!4305584 res!1764716) b!4305582))

(assert (= (and b!4305582 res!1764718) b!4305580))

(assert (= (and b!4305585 condMapEmpty!20617) mapIsEmpty!20617))

(assert (= (and b!4305585 (not condMapEmpty!20617)) mapNonEmpty!20617))

(assert (= b!4305579 b!4305585))

(assert (= b!4305578 b!4305579))

(assert (= b!4305587 b!4305578))

(assert (= (and b!4305586 ((_ is LongMap!4605) (v!42147 (underlying!9440 thiss!42308)))) b!4305587))

(assert (= b!4305588 b!4305586))

(assert (= (and start!413640 ((_ is HashMap!4511) thiss!42308)) b!4305588))

(declare-fun m!4898285 () Bool)

(assert (=> b!4305580 m!4898285))

(declare-fun m!4898287 () Bool)

(assert (=> b!4305580 m!4898287))

(declare-fun m!4898289 () Bool)

(assert (=> b!4305580 m!4898289))

(declare-fun m!4898291 () Bool)

(assert (=> b!4305579 m!4898291))

(declare-fun m!4898293 () Bool)

(assert (=> b!4305579 m!4898293))

(declare-fun m!4898295 () Bool)

(assert (=> b!4305581 m!4898295))

(declare-fun m!4898297 () Bool)

(assert (=> b!4305581 m!4898297))

(declare-fun m!4898299 () Bool)

(assert (=> b!4305581 m!4898299))

(declare-fun m!4898301 () Bool)

(assert (=> b!4305582 m!4898301))

(declare-fun m!4898303 () Bool)

(assert (=> mapNonEmpty!20617 m!4898303))

(declare-fun m!4898305 () Bool)

(assert (=> b!4305584 m!4898305))

(declare-fun m!4898307 () Bool)

(assert (=> b!4305584 m!4898307))

(declare-fun m!4898309 () Bool)

(assert (=> b!4305584 m!4898309))

(declare-fun m!4898311 () Bool)

(assert (=> b!4305577 m!4898311))

(declare-fun m!4898313 () Bool)

(assert (=> b!4305576 m!4898313))

(check-sat (not b!4305576) (not b!4305581) b_and!339781 b_and!339779 (not b_next!129085) (not b!4305585) (not b!4305577) (not b!4305580) (not b!4305582) (not b!4305579) (not b!4305584) (not mapNonEmpty!20617) tp_is_empty!23541 tp_is_empty!23543 (not b_next!129083))
(check-sat b_and!339779 b_and!339781 (not b_next!129085) (not b_next!129083))
