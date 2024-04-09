; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8284 () Bool)

(assert start!8284)

(declare-fun b!53276 () Bool)

(declare-fun b_free!1709 () Bool)

(declare-fun b_next!1709 () Bool)

(assert (=> b!53276 (= b_free!1709 (not b_next!1709))))

(declare-fun tp!7227 () Bool)

(declare-fun b_and!2969 () Bool)

(assert (=> b!53276 (= tp!7227 b_and!2969)))

(declare-fun b!53274 () Bool)

(declare-fun b_free!1711 () Bool)

(declare-fun b_next!1711 () Bool)

(assert (=> b!53274 (= b_free!1711 (not b_next!1711))))

(declare-fun tp!7230 () Bool)

(declare-fun b_and!2971 () Bool)

(assert (=> b!53274 (= tp!7230 b_and!2971)))

(declare-fun mapIsEmpty!2483 () Bool)

(declare-fun mapRes!2484 () Bool)

(assert (=> mapIsEmpty!2483 mapRes!2484))

(declare-fun b!53268 () Bool)

(declare-fun e!34745 () Bool)

(declare-fun e!34753 () Bool)

(assert (=> b!53268 (= e!34745 e!34753)))

(declare-fun b!53269 () Bool)

(declare-fun e!34752 () Bool)

(declare-fun e!34747 () Bool)

(assert (=> b!53269 (= e!34752 e!34747)))

(declare-fun res!30212 () Bool)

(assert (=> b!53269 (=> (not res!30212) (not e!34747))))

(declare-datatypes ((V!2675 0))(
  ( (V!2676 (val!1180 Int)) )
))
(declare-datatypes ((array!3464 0))(
  ( (array!3465 (arr!1654 (Array (_ BitVec 32) (_ BitVec 64))) (size!1883 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!792 0))(
  ( (ValueCellFull!792 (v!2244 V!2675)) (EmptyCell!792) )
))
(declare-datatypes ((array!3466 0))(
  ( (array!3467 (arr!1655 (Array (_ BitVec 32) ValueCell!792)) (size!1884 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!492 0))(
  ( (LongMapFixedSize!493 (defaultEntry!1960 Int) (mask!5793 (_ BitVec 32)) (extraKeys!1851 (_ BitVec 32)) (zeroValue!1878 V!2675) (minValue!1878 V!2675) (_size!295 (_ BitVec 32)) (_keys!3580 array!3464) (_values!1943 array!3466) (_vacant!295 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!306 0))(
  ( (Cell!307 (v!2245 LongMapFixedSize!492)) )
))
(declare-datatypes ((LongMap!306 0))(
  ( (LongMap!307 (underlying!164 Cell!306)) )
))
(declare-fun thiss!992 () LongMap!306)

(declare-datatypes ((tuple2!1878 0))(
  ( (tuple2!1879 (_1!949 (_ BitVec 64)) (_2!949 V!2675)) )
))
(declare-datatypes ((List!1371 0))(
  ( (Nil!1368) (Cons!1367 (h!1947 tuple2!1878) (t!4457 List!1371)) )
))
(declare-datatypes ((ListLongMap!1287 0))(
  ( (ListLongMap!1288 (toList!659 List!1371)) )
))
(declare-fun lt!21436 () ListLongMap!1287)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lt!21439 () ListLongMap!1287)

(assert (=> b!53269 (= res!30212 (and (= lt!21436 lt!21439) (not (= (select (arr!1654 (_keys!3580 (v!2245 (underlying!164 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1654 (_keys!3580 (v!2245 (underlying!164 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!492)

(declare-fun map!1031 (LongMapFixedSize!492) ListLongMap!1287)

(assert (=> b!53269 (= lt!21439 (map!1031 newMap!16))))

(declare-fun getCurrentListMap!367 (array!3464 array!3466 (_ BitVec 32) (_ BitVec 32) V!2675 V!2675 (_ BitVec 32) Int) ListLongMap!1287)

(assert (=> b!53269 (= lt!21436 (getCurrentListMap!367 (_keys!3580 (v!2245 (underlying!164 thiss!992))) (_values!1943 (v!2245 (underlying!164 thiss!992))) (mask!5793 (v!2245 (underlying!164 thiss!992))) (extraKeys!1851 (v!2245 (underlying!164 thiss!992))) (zeroValue!1878 (v!2245 (underlying!164 thiss!992))) (minValue!1878 (v!2245 (underlying!164 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1960 (v!2245 (underlying!164 thiss!992)))))))

(declare-fun b!53270 () Bool)

(declare-fun res!30208 () Bool)

(declare-fun e!34742 () Bool)

(assert (=> b!53270 (=> (not res!30208) (not e!34742))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3464 (_ BitVec 32)) Bool)

(assert (=> b!53270 (= res!30208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3580 (v!2245 (underlying!164 thiss!992))) (mask!5793 (v!2245 (underlying!164 thiss!992)))))))

(declare-fun b!53271 () Bool)

(declare-fun res!30206 () Bool)

(assert (=> b!53271 (=> (not res!30206) (not e!34752))))

(assert (=> b!53271 (= res!30206 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1883 (_keys!3580 (v!2245 (underlying!164 thiss!992)))))))))

(declare-fun b!53272 () Bool)

(declare-fun e!34743 () Bool)

(assert (=> b!53272 (= e!34753 e!34743)))

(declare-fun b!53273 () Bool)

(declare-fun res!30213 () Bool)

(assert (=> b!53273 (=> (not res!30213) (not e!34742))))

(assert (=> b!53273 (= res!30213 (and (= (size!1884 (_values!1943 (v!2245 (underlying!164 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5793 (v!2245 (underlying!164 thiss!992))))) (= (size!1883 (_keys!3580 (v!2245 (underlying!164 thiss!992)))) (size!1884 (_values!1943 (v!2245 (underlying!164 thiss!992))))) (bvsge (mask!5793 (v!2245 (underlying!164 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1851 (v!2245 (underlying!164 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1851 (v!2245 (underlying!164 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!53275 () Bool)

(declare-fun res!30210 () Bool)

(assert (=> b!53275 (=> (not res!30210) (not e!34752))))

(assert (=> b!53275 (= res!30210 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5793 newMap!16)) (_size!295 (v!2245 (underlying!164 thiss!992)))))))

(declare-fun tp_is_empty!2271 () Bool)

(declare-fun e!34740 () Bool)

(declare-fun array_inv!969 (array!3464) Bool)

(declare-fun array_inv!970 (array!3466) Bool)

(assert (=> b!53276 (= e!34743 (and tp!7227 tp_is_empty!2271 (array_inv!969 (_keys!3580 (v!2245 (underlying!164 thiss!992)))) (array_inv!970 (_values!1943 (v!2245 (underlying!164 thiss!992)))) e!34740))))

(declare-fun b!53277 () Bool)

(declare-fun res!30207 () Bool)

(assert (=> b!53277 (=> (not res!30207) (not e!34742))))

(assert (=> b!53277 (= res!30207 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!1883 (_keys!3580 (v!2245 (underlying!164 thiss!992)))))))))

(declare-fun b!53278 () Bool)

(declare-fun e!34748 () Bool)

(assert (=> b!53278 (= e!34748 tp_is_empty!2271)))

(declare-fun b!53279 () Bool)

(declare-fun res!30211 () Bool)

(assert (=> b!53279 (=> (not res!30211) (not e!34742))))

(declare-datatypes ((List!1372 0))(
  ( (Nil!1369) (Cons!1368 (h!1948 (_ BitVec 64)) (t!4458 List!1372)) )
))
(declare-fun arrayNoDuplicates!0 (array!3464 (_ BitVec 32) List!1372) Bool)

(assert (=> b!53279 (= res!30211 (arrayNoDuplicates!0 (_keys!3580 (v!2245 (underlying!164 thiss!992))) #b00000000000000000000000000000000 Nil!1369))))

(declare-fun b!53280 () Bool)

(declare-fun res!30209 () Bool)

(assert (=> b!53280 (=> (not res!30209) (not e!34742))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!53280 (= res!30209 (validMask!0 (mask!5793 (v!2245 (underlying!164 thiss!992)))))))

(declare-fun b!53281 () Bool)

(declare-fun e!34750 () Bool)

(assert (=> b!53281 (= e!34740 (and e!34750 mapRes!2484))))

(declare-fun condMapEmpty!2483 () Bool)

(declare-fun mapDefault!2484 () ValueCell!792)

(assert (=> b!53281 (= condMapEmpty!2483 (= (arr!1655 (_values!1943 (v!2245 (underlying!164 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!792)) mapDefault!2484)))))

(declare-fun b!53282 () Bool)

(declare-fun res!30203 () Bool)

(assert (=> b!53282 (=> (not res!30203) (not e!34752))))

(declare-fun valid!181 (LongMapFixedSize!492) Bool)

(assert (=> b!53282 (= res!30203 (valid!181 newMap!16))))

(declare-fun mapNonEmpty!2483 () Bool)

(declare-fun tp!7228 () Bool)

(declare-fun e!34754 () Bool)

(assert (=> mapNonEmpty!2483 (= mapRes!2484 (and tp!7228 e!34754))))

(declare-fun mapKey!2484 () (_ BitVec 32))

(declare-fun mapValue!2483 () ValueCell!792)

(declare-fun mapRest!2484 () (Array (_ BitVec 32) ValueCell!792))

(assert (=> mapNonEmpty!2483 (= (arr!1655 (_values!1943 (v!2245 (underlying!164 thiss!992)))) (store mapRest!2484 mapKey!2484 mapValue!2483))))

(declare-fun b!53283 () Bool)

(declare-fun e!34744 () Bool)

(assert (=> b!53283 (= e!34744 tp_is_empty!2271)))

(declare-fun b!53284 () Bool)

(assert (=> b!53284 (= e!34754 tp_is_empty!2271)))

(declare-fun b!53285 () Bool)

(assert (=> b!53285 (= e!34750 tp_is_empty!2271)))

(declare-fun res!30204 () Bool)

(assert (=> start!8284 (=> (not res!30204) (not e!34752))))

(declare-fun valid!182 (LongMap!306) Bool)

(assert (=> start!8284 (= res!30204 (valid!182 thiss!992))))

(assert (=> start!8284 e!34752))

(assert (=> start!8284 e!34745))

(assert (=> start!8284 true))

(declare-fun e!34741 () Bool)

(assert (=> start!8284 e!34741))

(declare-fun e!34749 () Bool)

(assert (=> b!53274 (= e!34741 (and tp!7230 tp_is_empty!2271 (array_inv!969 (_keys!3580 newMap!16)) (array_inv!970 (_values!1943 newMap!16)) e!34749))))

(declare-fun b!53286 () Bool)

(assert (=> b!53286 (= e!34747 e!34742)))

(declare-fun res!30205 () Bool)

(assert (=> b!53286 (=> (not res!30205) (not e!34742))))

(declare-fun contains!631 (ListLongMap!1287 (_ BitVec 64)) Bool)

(assert (=> b!53286 (= res!30205 (contains!631 lt!21439 (select (arr!1654 (_keys!3580 (v!2245 (underlying!164 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!1880 0))(
  ( (tuple2!1881 (_1!950 Bool) (_2!950 LongMapFixedSize!492)) )
))
(declare-fun lt!21437 () tuple2!1880)

(declare-fun update!45 (LongMapFixedSize!492 (_ BitVec 64) V!2675) tuple2!1880)

(declare-fun get!994 (ValueCell!792 V!2675) V!2675)

(declare-fun dynLambda!273 (Int (_ BitVec 64)) V!2675)

(assert (=> b!53286 (= lt!21437 (update!45 newMap!16 (select (arr!1654 (_keys!3580 (v!2245 (underlying!164 thiss!992)))) from!355) (get!994 (select (arr!1655 (_values!1943 (v!2245 (underlying!164 thiss!992)))) from!355) (dynLambda!273 (defaultEntry!1960 (v!2245 (underlying!164 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!2484 () Bool)

(declare-fun mapRes!2483 () Bool)

(declare-fun tp!7229 () Bool)

(assert (=> mapNonEmpty!2484 (= mapRes!2483 (and tp!7229 e!34744))))

(declare-fun mapValue!2484 () ValueCell!792)

(declare-fun mapKey!2483 () (_ BitVec 32))

(declare-fun mapRest!2483 () (Array (_ BitVec 32) ValueCell!792))

(assert (=> mapNonEmpty!2484 (= (arr!1655 (_values!1943 newMap!16)) (store mapRest!2483 mapKey!2483 mapValue!2484))))

(declare-fun b!53287 () Bool)

(assert (=> b!53287 (= e!34742 false)))

(declare-fun lt!21438 () Bool)

(assert (=> b!53287 (= lt!21438 (contains!631 lt!21436 (select (arr!1654 (_keys!3580 (v!2245 (underlying!164 thiss!992)))) from!355)))))

(declare-fun mapIsEmpty!2484 () Bool)

(assert (=> mapIsEmpty!2484 mapRes!2483))

(declare-fun b!53288 () Bool)

(assert (=> b!53288 (= e!34749 (and e!34748 mapRes!2483))))

(declare-fun condMapEmpty!2484 () Bool)

(declare-fun mapDefault!2483 () ValueCell!792)

(assert (=> b!53288 (= condMapEmpty!2484 (= (arr!1655 (_values!1943 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!792)) mapDefault!2483)))))

(assert (= (and start!8284 res!30204) b!53271))

(assert (= (and b!53271 res!30206) b!53282))

(assert (= (and b!53282 res!30203) b!53275))

(assert (= (and b!53275 res!30210) b!53269))

(assert (= (and b!53269 res!30212) b!53286))

(assert (= (and b!53286 res!30205) b!53280))

(assert (= (and b!53280 res!30209) b!53273))

(assert (= (and b!53273 res!30213) b!53270))

(assert (= (and b!53270 res!30208) b!53279))

(assert (= (and b!53279 res!30211) b!53277))

(assert (= (and b!53277 res!30207) b!53287))

(assert (= (and b!53281 condMapEmpty!2483) mapIsEmpty!2483))

(assert (= (and b!53281 (not condMapEmpty!2483)) mapNonEmpty!2483))

(get-info :version)

(assert (= (and mapNonEmpty!2483 ((_ is ValueCellFull!792) mapValue!2483)) b!53284))

(assert (= (and b!53281 ((_ is ValueCellFull!792) mapDefault!2484)) b!53285))

(assert (= b!53276 b!53281))

(assert (= b!53272 b!53276))

(assert (= b!53268 b!53272))

(assert (= start!8284 b!53268))

(assert (= (and b!53288 condMapEmpty!2484) mapIsEmpty!2484))

(assert (= (and b!53288 (not condMapEmpty!2484)) mapNonEmpty!2484))

(assert (= (and mapNonEmpty!2484 ((_ is ValueCellFull!792) mapValue!2484)) b!53283))

(assert (= (and b!53288 ((_ is ValueCellFull!792) mapDefault!2483)) b!53278))

(assert (= b!53274 b!53288))

(assert (= start!8284 b!53274))

(declare-fun b_lambda!2385 () Bool)

(assert (=> (not b_lambda!2385) (not b!53286)))

(declare-fun t!4454 () Bool)

(declare-fun tb!1061 () Bool)

(assert (=> (and b!53276 (= (defaultEntry!1960 (v!2245 (underlying!164 thiss!992))) (defaultEntry!1960 (v!2245 (underlying!164 thiss!992)))) t!4454) tb!1061))

(declare-fun result!1985 () Bool)

(assert (=> tb!1061 (= result!1985 tp_is_empty!2271)))

(assert (=> b!53286 t!4454))

(declare-fun b_and!2973 () Bool)

(assert (= b_and!2969 (and (=> t!4454 result!1985) b_and!2973)))

(declare-fun tb!1063 () Bool)

(declare-fun t!4456 () Bool)

(assert (=> (and b!53274 (= (defaultEntry!1960 newMap!16) (defaultEntry!1960 (v!2245 (underlying!164 thiss!992)))) t!4456) tb!1063))

(declare-fun result!1989 () Bool)

(assert (= result!1989 result!1985))

(assert (=> b!53286 t!4456))

(declare-fun b_and!2975 () Bool)

(assert (= b_and!2971 (and (=> t!4456 result!1989) b_and!2975)))

(declare-fun m!45351 () Bool)

(assert (=> start!8284 m!45351))

(declare-fun m!45353 () Bool)

(assert (=> b!53287 m!45353))

(assert (=> b!53287 m!45353))

(declare-fun m!45355 () Bool)

(assert (=> b!53287 m!45355))

(declare-fun m!45357 () Bool)

(assert (=> b!53280 m!45357))

(declare-fun m!45359 () Bool)

(assert (=> b!53286 m!45359))

(declare-fun m!45361 () Bool)

(assert (=> b!53286 m!45361))

(declare-fun m!45363 () Bool)

(assert (=> b!53286 m!45363))

(assert (=> b!53286 m!45353))

(assert (=> b!53286 m!45353))

(assert (=> b!53286 m!45363))

(declare-fun m!45365 () Bool)

(assert (=> b!53286 m!45365))

(assert (=> b!53286 m!45359))

(assert (=> b!53286 m!45353))

(declare-fun m!45367 () Bool)

(assert (=> b!53286 m!45367))

(assert (=> b!53286 m!45361))

(declare-fun m!45369 () Bool)

(assert (=> b!53276 m!45369))

(declare-fun m!45371 () Bool)

(assert (=> b!53276 m!45371))

(declare-fun m!45373 () Bool)

(assert (=> mapNonEmpty!2484 m!45373))

(declare-fun m!45375 () Bool)

(assert (=> b!53270 m!45375))

(assert (=> b!53269 m!45353))

(declare-fun m!45377 () Bool)

(assert (=> b!53269 m!45377))

(declare-fun m!45379 () Bool)

(assert (=> b!53269 m!45379))

(declare-fun m!45381 () Bool)

(assert (=> b!53279 m!45381))

(declare-fun m!45383 () Bool)

(assert (=> b!53282 m!45383))

(declare-fun m!45385 () Bool)

(assert (=> mapNonEmpty!2483 m!45385))

(declare-fun m!45387 () Bool)

(assert (=> b!53274 m!45387))

(declare-fun m!45389 () Bool)

(assert (=> b!53274 m!45389))

(check-sat (not b!53279) (not b!53269) tp_is_empty!2271 (not b!53280) (not b!53274) b_and!2973 (not b!53287) (not b_lambda!2385) (not b_next!1711) (not start!8284) (not mapNonEmpty!2483) b_and!2975 (not mapNonEmpty!2484) (not b_next!1709) (not b!53270) (not b!53286) (not b!53276) (not b!53282))
(check-sat b_and!2973 b_and!2975 (not b_next!1709) (not b_next!1711))
