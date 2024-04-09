; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16598 () Bool)

(assert start!16598)

(declare-fun b!165300 () Bool)

(declare-fun b_free!3891 () Bool)

(declare-fun b_next!3891 () Bool)

(assert (=> b!165300 (= b_free!3891 (not b_next!3891))))

(declare-fun tp!14273 () Bool)

(declare-fun b_and!10323 () Bool)

(assert (=> b!165300 (= tp!14273 b_and!10323)))

(declare-fun b!165294 () Bool)

(declare-fun e!108442 () Bool)

(declare-fun tp_is_empty!3693 () Bool)

(assert (=> b!165294 (= e!108442 tp_is_empty!3693)))

(declare-fun b!165295 () Bool)

(declare-fun e!108440 () Bool)

(assert (=> b!165295 (= e!108440 tp_is_empty!3693)))

(declare-fun b!165296 () Bool)

(declare-fun res!78424 () Bool)

(declare-fun e!108444 () Bool)

(assert (=> b!165296 (=> (not res!78424) (not e!108444))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!165296 (= res!78424 (not (= key!828 (bvneg key!828))))))

(declare-fun b!165297 () Bool)

(declare-fun res!78420 () Bool)

(declare-fun e!108443 () Bool)

(assert (=> b!165297 (=> (not res!78420) (not e!108443))))

(declare-datatypes ((V!4571 0))(
  ( (V!4572 (val!1891 Int)) )
))
(declare-datatypes ((ValueCell!1503 0))(
  ( (ValueCellFull!1503 (v!3752 V!4571)) (EmptyCell!1503) )
))
(declare-datatypes ((array!6482 0))(
  ( (array!6483 (arr!3076 (Array (_ BitVec 32) (_ BitVec 64))) (size!3364 (_ BitVec 32))) )
))
(declare-datatypes ((array!6484 0))(
  ( (array!6485 (arr!3077 (Array (_ BitVec 32) ValueCell!1503)) (size!3365 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1914 0))(
  ( (LongMapFixedSize!1915 (defaultEntry!3399 Int) (mask!8108 (_ BitVec 32)) (extraKeys!3140 (_ BitVec 32)) (zeroValue!3242 V!4571) (minValue!3242 V!4571) (_size!1006 (_ BitVec 32)) (_keys!5224 array!6482) (_values!3382 array!6484) (_vacant!1006 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1914)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6482 (_ BitVec 32)) Bool)

(assert (=> b!165297 (= res!78420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5224 thiss!1248) (mask!8108 thiss!1248)))))

(declare-fun mapNonEmpty!6258 () Bool)

(declare-fun mapRes!6258 () Bool)

(declare-fun tp!14274 () Bool)

(assert (=> mapNonEmpty!6258 (= mapRes!6258 (and tp!14274 e!108442))))

(declare-fun mapKey!6258 () (_ BitVec 32))

(declare-fun mapRest!6258 () (Array (_ BitVec 32) ValueCell!1503))

(declare-fun mapValue!6258 () ValueCell!1503)

(assert (=> mapNonEmpty!6258 (= (arr!3077 (_values!3382 thiss!1248)) (store mapRest!6258 mapKey!6258 mapValue!6258))))

(declare-fun res!78425 () Bool)

(assert (=> start!16598 (=> (not res!78425) (not e!108444))))

(declare-fun valid!839 (LongMapFixedSize!1914) Bool)

(assert (=> start!16598 (= res!78425 (valid!839 thiss!1248))))

(assert (=> start!16598 e!108444))

(declare-fun e!108441 () Bool)

(assert (=> start!16598 e!108441))

(assert (=> start!16598 true))

(declare-fun b!165298 () Bool)

(assert (=> b!165298 (= e!108443 false)))

(declare-fun lt!83075 () Bool)

(declare-datatypes ((List!2067 0))(
  ( (Nil!2064) (Cons!2063 (h!2680 (_ BitVec 64)) (t!6877 List!2067)) )
))
(declare-fun arrayNoDuplicates!0 (array!6482 (_ BitVec 32) List!2067) Bool)

(assert (=> b!165298 (= lt!83075 (arrayNoDuplicates!0 (_keys!5224 thiss!1248) #b00000000000000000000000000000000 Nil!2064))))

(declare-fun b!165299 () Bool)

(declare-fun res!78421 () Bool)

(assert (=> b!165299 (=> (not res!78421) (not e!108443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165299 (= res!78421 (validMask!0 (mask!8108 thiss!1248)))))

(declare-fun e!108445 () Bool)

(declare-fun array_inv!1965 (array!6482) Bool)

(declare-fun array_inv!1966 (array!6484) Bool)

(assert (=> b!165300 (= e!108441 (and tp!14273 tp_is_empty!3693 (array_inv!1965 (_keys!5224 thiss!1248)) (array_inv!1966 (_values!3382 thiss!1248)) e!108445))))

(declare-fun b!165301 () Bool)

(declare-fun res!78422 () Bool)

(assert (=> b!165301 (=> (not res!78422) (not e!108443))))

(declare-datatypes ((tuple2!3060 0))(
  ( (tuple2!3061 (_1!1540 (_ BitVec 64)) (_2!1540 V!4571)) )
))
(declare-datatypes ((List!2068 0))(
  ( (Nil!2065) (Cons!2064 (h!2681 tuple2!3060) (t!6878 List!2068)) )
))
(declare-datatypes ((ListLongMap!2029 0))(
  ( (ListLongMap!2030 (toList!1030 List!2068)) )
))
(declare-fun contains!1066 (ListLongMap!2029 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!683 (array!6482 array!6484 (_ BitVec 32) (_ BitVec 32) V!4571 V!4571 (_ BitVec 32) Int) ListLongMap!2029)

(assert (=> b!165301 (= res!78422 (not (contains!1066 (getCurrentListMap!683 (_keys!5224 thiss!1248) (_values!3382 thiss!1248) (mask!8108 thiss!1248) (extraKeys!3140 thiss!1248) (zeroValue!3242 thiss!1248) (minValue!3242 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3399 thiss!1248)) key!828)))))

(declare-fun mapIsEmpty!6258 () Bool)

(assert (=> mapIsEmpty!6258 mapRes!6258))

(declare-fun b!165302 () Bool)

(assert (=> b!165302 (= e!108444 e!108443)))

(declare-fun res!78426 () Bool)

(assert (=> b!165302 (=> (not res!78426) (not e!108443))))

(declare-datatypes ((SeekEntryResult!444 0))(
  ( (MissingZero!444 (index!3944 (_ BitVec 32))) (Found!444 (index!3945 (_ BitVec 32))) (Intermediate!444 (undefined!1256 Bool) (index!3946 (_ BitVec 32)) (x!18336 (_ BitVec 32))) (Undefined!444) (MissingVacant!444 (index!3947 (_ BitVec 32))) )
))
(declare-fun lt!83074 () SeekEntryResult!444)

(get-info :version)

(assert (=> b!165302 (= res!78426 (and (not ((_ is Undefined!444) lt!83074)) (not ((_ is MissingVacant!444) lt!83074)) (not ((_ is MissingZero!444) lt!83074)) ((_ is Found!444) lt!83074)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6482 (_ BitVec 32)) SeekEntryResult!444)

(assert (=> b!165302 (= lt!83074 (seekEntryOrOpen!0 key!828 (_keys!5224 thiss!1248) (mask!8108 thiss!1248)))))

(declare-fun b!165303 () Bool)

(assert (=> b!165303 (= e!108445 (and e!108440 mapRes!6258))))

(declare-fun condMapEmpty!6258 () Bool)

(declare-fun mapDefault!6258 () ValueCell!1503)

(assert (=> b!165303 (= condMapEmpty!6258 (= (arr!3077 (_values!3382 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1503)) mapDefault!6258)))))

(declare-fun b!165304 () Bool)

(declare-fun res!78423 () Bool)

(assert (=> b!165304 (=> (not res!78423) (not e!108443))))

(assert (=> b!165304 (= res!78423 (and (= (size!3365 (_values!3382 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8108 thiss!1248))) (= (size!3364 (_keys!5224 thiss!1248)) (size!3365 (_values!3382 thiss!1248))) (bvsge (mask!8108 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3140 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3140 thiss!1248) #b00000000000000000000000000000011)))))

(assert (= (and start!16598 res!78425) b!165296))

(assert (= (and b!165296 res!78424) b!165302))

(assert (= (and b!165302 res!78426) b!165301))

(assert (= (and b!165301 res!78422) b!165299))

(assert (= (and b!165299 res!78421) b!165304))

(assert (= (and b!165304 res!78423) b!165297))

(assert (= (and b!165297 res!78420) b!165298))

(assert (= (and b!165303 condMapEmpty!6258) mapIsEmpty!6258))

(assert (= (and b!165303 (not condMapEmpty!6258)) mapNonEmpty!6258))

(assert (= (and mapNonEmpty!6258 ((_ is ValueCellFull!1503) mapValue!6258)) b!165294))

(assert (= (and b!165303 ((_ is ValueCellFull!1503) mapDefault!6258)) b!165295))

(assert (= b!165300 b!165303))

(assert (= start!16598 b!165300))

(declare-fun m!195169 () Bool)

(assert (=> b!165297 m!195169))

(declare-fun m!195171 () Bool)

(assert (=> mapNonEmpty!6258 m!195171))

(declare-fun m!195173 () Bool)

(assert (=> b!165298 m!195173))

(declare-fun m!195175 () Bool)

(assert (=> b!165299 m!195175))

(declare-fun m!195177 () Bool)

(assert (=> b!165300 m!195177))

(declare-fun m!195179 () Bool)

(assert (=> b!165300 m!195179))

(declare-fun m!195181 () Bool)

(assert (=> b!165301 m!195181))

(assert (=> b!165301 m!195181))

(declare-fun m!195183 () Bool)

(assert (=> b!165301 m!195183))

(declare-fun m!195185 () Bool)

(assert (=> b!165302 m!195185))

(declare-fun m!195187 () Bool)

(assert (=> start!16598 m!195187))

(check-sat (not mapNonEmpty!6258) (not b!165297) (not b!165301) (not start!16598) (not b!165299) (not b!165302) b_and!10323 (not b!165300) (not b_next!3891) tp_is_empty!3693 (not b!165298))
(check-sat b_and!10323 (not b_next!3891))
