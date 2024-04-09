; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16754 () Bool)

(assert start!16754)

(declare-fun b!168184 () Bool)

(declare-fun b_free!4047 () Bool)

(declare-fun b_next!4047 () Bool)

(assert (=> b!168184 (= b_free!4047 (not b_next!4047))))

(declare-fun tp!14741 () Bool)

(declare-fun b_and!10479 () Bool)

(assert (=> b!168184 (= tp!14741 b_and!10479)))

(declare-fun res!80061 () Bool)

(declare-fun e!110555 () Bool)

(assert (=> start!16754 (=> (not res!80061) (not e!110555))))

(declare-datatypes ((V!4779 0))(
  ( (V!4780 (val!1969 Int)) )
))
(declare-datatypes ((ValueCell!1581 0))(
  ( (ValueCellFull!1581 (v!3830 V!4779)) (EmptyCell!1581) )
))
(declare-datatypes ((array!6794 0))(
  ( (array!6795 (arr!3232 (Array (_ BitVec 32) (_ BitVec 64))) (size!3520 (_ BitVec 32))) )
))
(declare-datatypes ((array!6796 0))(
  ( (array!6797 (arr!3233 (Array (_ BitVec 32) ValueCell!1581)) (size!3521 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2070 0))(
  ( (LongMapFixedSize!2071 (defaultEntry!3477 Int) (mask!8238 (_ BitVec 32)) (extraKeys!3218 (_ BitVec 32)) (zeroValue!3320 V!4779) (minValue!3320 V!4779) (_size!1084 (_ BitVec 32)) (_keys!5302 array!6794) (_values!3460 array!6796) (_vacant!1084 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2070)

(declare-fun valid!889 (LongMapFixedSize!2070) Bool)

(assert (=> start!16754 (= res!80061 (valid!889 thiss!1248))))

(assert (=> start!16754 e!110555))

(declare-fun e!110552 () Bool)

(assert (=> start!16754 e!110552))

(assert (=> start!16754 true))

(declare-fun tp_is_empty!3849 () Bool)

(assert (=> start!16754 tp_is_empty!3849))

(declare-fun e!110556 () Bool)

(declare-fun array_inv!2067 (array!6794) Bool)

(declare-fun array_inv!2068 (array!6796) Bool)

(assert (=> b!168184 (= e!110552 (and tp!14741 tp_is_empty!3849 (array_inv!2067 (_keys!5302 thiss!1248)) (array_inv!2068 (_values!3460 thiss!1248)) e!110556))))

(declare-fun b!168185 () Bool)

(declare-fun res!80059 () Bool)

(declare-fun e!110551 () Bool)

(assert (=> b!168185 (=> res!80059 e!110551)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6794 (_ BitVec 32)) Bool)

(assert (=> b!168185 (= res!80059 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5302 thiss!1248) (mask!8238 thiss!1248))))))

(declare-fun b!168186 () Bool)

(declare-fun e!110554 () Bool)

(assert (=> b!168186 (= e!110554 (not e!110551))))

(declare-fun res!80063 () Bool)

(assert (=> b!168186 (=> res!80063 e!110551)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!168186 (= res!80063 (not (validMask!0 (mask!8238 thiss!1248))))))

(declare-datatypes ((SeekEntryResult!505 0))(
  ( (MissingZero!505 (index!4188 (_ BitVec 32))) (Found!505 (index!4189 (_ BitVec 32))) (Intermediate!505 (undefined!1317 Bool) (index!4190 (_ BitVec 32)) (x!18605 (_ BitVec 32))) (Undefined!505) (MissingVacant!505 (index!4191 (_ BitVec 32))) )
))
(declare-fun lt!84138 () SeekEntryResult!505)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun v!309 () V!4779)

(declare-datatypes ((tuple2!3158 0))(
  ( (tuple2!3159 (_1!1589 (_ BitVec 64)) (_2!1589 V!4779)) )
))
(declare-datatypes ((List!2172 0))(
  ( (Nil!2169) (Cons!2168 (h!2785 tuple2!3158) (t!6982 List!2172)) )
))
(declare-datatypes ((ListLongMap!2127 0))(
  ( (ListLongMap!2128 (toList!1079 List!2172)) )
))
(declare-fun lt!84139 () ListLongMap!2127)

(declare-fun +!221 (ListLongMap!2127 tuple2!3158) ListLongMap!2127)

(declare-fun getCurrentListMap!732 (array!6794 array!6796 (_ BitVec 32) (_ BitVec 32) V!4779 V!4779 (_ BitVec 32) Int) ListLongMap!2127)

(assert (=> b!168186 (= (+!221 lt!84139 (tuple2!3159 key!828 v!309)) (getCurrentListMap!732 (_keys!5302 thiss!1248) (array!6797 (store (arr!3233 (_values!3460 thiss!1248)) (index!4189 lt!84138) (ValueCellFull!1581 v!309)) (size!3521 (_values!3460 thiss!1248))) (mask!8238 thiss!1248) (extraKeys!3218 thiss!1248) (zeroValue!3320 thiss!1248) (minValue!3320 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3477 thiss!1248)))))

(declare-datatypes ((Unit!5166 0))(
  ( (Unit!5167) )
))
(declare-fun lt!84136 () Unit!5166)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!81 (array!6794 array!6796 (_ BitVec 32) (_ BitVec 32) V!4779 V!4779 (_ BitVec 32) (_ BitVec 64) V!4779 Int) Unit!5166)

(assert (=> b!168186 (= lt!84136 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!81 (_keys!5302 thiss!1248) (_values!3460 thiss!1248) (mask!8238 thiss!1248) (extraKeys!3218 thiss!1248) (zeroValue!3320 thiss!1248) (minValue!3320 thiss!1248) (index!4189 lt!84138) key!828 v!309 (defaultEntry!3477 thiss!1248)))))

(declare-fun lt!84135 () Unit!5166)

(declare-fun e!110558 () Unit!5166)

(assert (=> b!168186 (= lt!84135 e!110558)))

(declare-fun c!30333 () Bool)

(declare-fun contains!1115 (ListLongMap!2127 (_ BitVec 64)) Bool)

(assert (=> b!168186 (= c!30333 (contains!1115 lt!84139 key!828))))

(assert (=> b!168186 (= lt!84139 (getCurrentListMap!732 (_keys!5302 thiss!1248) (_values!3460 thiss!1248) (mask!8238 thiss!1248) (extraKeys!3218 thiss!1248) (zeroValue!3320 thiss!1248) (minValue!3320 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3477 thiss!1248)))))

(declare-fun b!168187 () Bool)

(declare-fun e!110553 () Bool)

(assert (=> b!168187 (= e!110553 tp_is_empty!3849)))

(declare-fun b!168188 () Bool)

(assert (=> b!168188 (= e!110555 e!110554)))

(declare-fun res!80062 () Bool)

(assert (=> b!168188 (=> (not res!80062) (not e!110554))))

(get-info :version)

(assert (=> b!168188 (= res!80062 (and (not ((_ is Undefined!505) lt!84138)) (not ((_ is MissingVacant!505) lt!84138)) (not ((_ is MissingZero!505) lt!84138)) ((_ is Found!505) lt!84138)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6794 (_ BitVec 32)) SeekEntryResult!505)

(assert (=> b!168188 (= lt!84138 (seekEntryOrOpen!0 key!828 (_keys!5302 thiss!1248) (mask!8238 thiss!1248)))))

(declare-fun e!110559 () Bool)

(declare-fun b!168189 () Bool)

(assert (=> b!168189 (= e!110559 (= (select (arr!3232 (_keys!5302 thiss!1248)) (index!4189 lt!84138)) key!828))))

(declare-fun b!168190 () Bool)

(declare-fun res!80058 () Bool)

(assert (=> b!168190 (=> (not res!80058) (not e!110555))))

(assert (=> b!168190 (= res!80058 (not (= key!828 (bvneg key!828))))))

(declare-fun b!168191 () Bool)

(declare-fun res!80060 () Bool)

(assert (=> b!168191 (=> res!80060 e!110551)))

(assert (=> b!168191 (= res!80060 (or (not (= (size!3521 (_values!3460 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8238 thiss!1248)))) (not (= (size!3520 (_keys!5302 thiss!1248)) (size!3521 (_values!3460 thiss!1248)))) (bvslt (mask!8238 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3218 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3218 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!168192 () Bool)

(declare-fun Unit!5168 () Unit!5166)

(assert (=> b!168192 (= e!110558 Unit!5168)))

(declare-fun lt!84134 () Unit!5166)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!118 (array!6794 array!6796 (_ BitVec 32) (_ BitVec 32) V!4779 V!4779 (_ BitVec 64) Int) Unit!5166)

(assert (=> b!168192 (= lt!84134 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!118 (_keys!5302 thiss!1248) (_values!3460 thiss!1248) (mask!8238 thiss!1248) (extraKeys!3218 thiss!1248) (zeroValue!3320 thiss!1248) (minValue!3320 thiss!1248) key!828 (defaultEntry!3477 thiss!1248)))))

(assert (=> b!168192 false))

(declare-fun mapIsEmpty!6492 () Bool)

(declare-fun mapRes!6492 () Bool)

(assert (=> mapIsEmpty!6492 mapRes!6492))

(declare-fun b!168193 () Bool)

(declare-fun e!110557 () Bool)

(assert (=> b!168193 (= e!110557 tp_is_empty!3849)))

(declare-fun b!168194 () Bool)

(declare-fun lt!84140 () Unit!5166)

(assert (=> b!168194 (= e!110558 lt!84140)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!119 (array!6794 array!6796 (_ BitVec 32) (_ BitVec 32) V!4779 V!4779 (_ BitVec 64) Int) Unit!5166)

(assert (=> b!168194 (= lt!84140 (lemmaInListMapThenSeekEntryOrOpenFindsIt!119 (_keys!5302 thiss!1248) (_values!3460 thiss!1248) (mask!8238 thiss!1248) (extraKeys!3218 thiss!1248) (zeroValue!3320 thiss!1248) (minValue!3320 thiss!1248) key!828 (defaultEntry!3477 thiss!1248)))))

(declare-fun res!80064 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!168194 (= res!80064 (inRange!0 (index!4189 lt!84138) (mask!8238 thiss!1248)))))

(assert (=> b!168194 (=> (not res!80064) (not e!110559))))

(assert (=> b!168194 e!110559))

(declare-fun b!168195 () Bool)

(assert (=> b!168195 (= e!110551 true)))

(declare-fun lt!84137 () Bool)

(declare-datatypes ((List!2173 0))(
  ( (Nil!2170) (Cons!2169 (h!2786 (_ BitVec 64)) (t!6983 List!2173)) )
))
(declare-fun arrayNoDuplicates!0 (array!6794 (_ BitVec 32) List!2173) Bool)

(assert (=> b!168195 (= lt!84137 (arrayNoDuplicates!0 (_keys!5302 thiss!1248) #b00000000000000000000000000000000 Nil!2170))))

(declare-fun b!168196 () Bool)

(assert (=> b!168196 (= e!110556 (and e!110557 mapRes!6492))))

(declare-fun condMapEmpty!6492 () Bool)

(declare-fun mapDefault!6492 () ValueCell!1581)

(assert (=> b!168196 (= condMapEmpty!6492 (= (arr!3233 (_values!3460 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1581)) mapDefault!6492)))))

(declare-fun mapNonEmpty!6492 () Bool)

(declare-fun tp!14742 () Bool)

(assert (=> mapNonEmpty!6492 (= mapRes!6492 (and tp!14742 e!110553))))

(declare-fun mapRest!6492 () (Array (_ BitVec 32) ValueCell!1581))

(declare-fun mapKey!6492 () (_ BitVec 32))

(declare-fun mapValue!6492 () ValueCell!1581)

(assert (=> mapNonEmpty!6492 (= (arr!3233 (_values!3460 thiss!1248)) (store mapRest!6492 mapKey!6492 mapValue!6492))))

(assert (= (and start!16754 res!80061) b!168190))

(assert (= (and b!168190 res!80058) b!168188))

(assert (= (and b!168188 res!80062) b!168186))

(assert (= (and b!168186 c!30333) b!168194))

(assert (= (and b!168186 (not c!30333)) b!168192))

(assert (= (and b!168194 res!80064) b!168189))

(assert (= (and b!168186 (not res!80063)) b!168191))

(assert (= (and b!168191 (not res!80060)) b!168185))

(assert (= (and b!168185 (not res!80059)) b!168195))

(assert (= (and b!168196 condMapEmpty!6492) mapIsEmpty!6492))

(assert (= (and b!168196 (not condMapEmpty!6492)) mapNonEmpty!6492))

(assert (= (and mapNonEmpty!6492 ((_ is ValueCellFull!1581) mapValue!6492)) b!168187))

(assert (= (and b!168196 ((_ is ValueCellFull!1581) mapDefault!6492)) b!168193))

(assert (= b!168184 b!168196))

(assert (= start!16754 b!168184))

(declare-fun m!197297 () Bool)

(assert (=> b!168184 m!197297))

(declare-fun m!197299 () Bool)

(assert (=> b!168184 m!197299))

(declare-fun m!197301 () Bool)

(assert (=> b!168188 m!197301))

(declare-fun m!197303 () Bool)

(assert (=> mapNonEmpty!6492 m!197303))

(declare-fun m!197305 () Bool)

(assert (=> b!168185 m!197305))

(declare-fun m!197307 () Bool)

(assert (=> b!168186 m!197307))

(declare-fun m!197309 () Bool)

(assert (=> b!168186 m!197309))

(declare-fun m!197311 () Bool)

(assert (=> b!168186 m!197311))

(declare-fun m!197313 () Bool)

(assert (=> b!168186 m!197313))

(declare-fun m!197315 () Bool)

(assert (=> b!168186 m!197315))

(declare-fun m!197317 () Bool)

(assert (=> b!168186 m!197317))

(declare-fun m!197319 () Bool)

(assert (=> b!168186 m!197319))

(declare-fun m!197321 () Bool)

(assert (=> b!168194 m!197321))

(declare-fun m!197323 () Bool)

(assert (=> b!168194 m!197323))

(declare-fun m!197325 () Bool)

(assert (=> b!168189 m!197325))

(declare-fun m!197327 () Bool)

(assert (=> b!168195 m!197327))

(declare-fun m!197329 () Bool)

(assert (=> b!168192 m!197329))

(declare-fun m!197331 () Bool)

(assert (=> start!16754 m!197331))

(check-sat tp_is_empty!3849 (not b!168186) (not b!168188) (not start!16754) (not b!168185) (not b_next!4047) (not b!168194) (not b!168184) (not b!168195) b_and!10479 (not mapNonEmpty!6492) (not b!168192))
(check-sat b_and!10479 (not b_next!4047))
