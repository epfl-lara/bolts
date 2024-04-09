; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21902 () Bool)

(assert start!21902)

(declare-fun b!221543 () Bool)

(declare-fun b_free!5957 () Bool)

(declare-fun b_next!5957 () Bool)

(assert (=> b!221543 (= b_free!5957 (not b_next!5957))))

(declare-fun tp!21013 () Bool)

(declare-fun b_and!12873 () Bool)

(assert (=> b!221543 (= tp!21013 b_and!12873)))

(declare-fun b!221534 () Bool)

(declare-datatypes ((Unit!6620 0))(
  ( (Unit!6621) )
))
(declare-fun e!143982 () Unit!6620)

(declare-fun lt!112460 () Unit!6620)

(assert (=> b!221534 (= e!143982 lt!112460)))

(declare-datatypes ((V!7405 0))(
  ( (V!7406 (val!2954 Int)) )
))
(declare-datatypes ((ValueCell!2566 0))(
  ( (ValueCellFull!2566 (v!4970 V!7405)) (EmptyCell!2566) )
))
(declare-datatypes ((array!10880 0))(
  ( (array!10881 (arr!5159 (Array (_ BitVec 32) ValueCell!2566)) (size!5492 (_ BitVec 32))) )
))
(declare-datatypes ((array!10882 0))(
  ( (array!10883 (arr!5160 (Array (_ BitVec 32) (_ BitVec 64))) (size!5493 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3032 0))(
  ( (LongMapFixedSize!3033 (defaultEntry!4175 Int) (mask!9987 (_ BitVec 32)) (extraKeys!3912 (_ BitVec 32)) (zeroValue!4016 V!7405) (minValue!4016 V!7405) (_size!1565 (_ BitVec 32)) (_keys!6229 array!10882) (_values!4158 array!10880) (_vacant!1565 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3032)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!227 (array!10882 array!10880 (_ BitVec 32) (_ BitVec 32) V!7405 V!7405 (_ BitVec 64) Int) Unit!6620)

(assert (=> b!221534 (= lt!112460 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!227 (_keys!6229 thiss!1504) (_values!4158 thiss!1504) (mask!9987 thiss!1504) (extraKeys!3912 thiss!1504) (zeroValue!4016 thiss!1504) (minValue!4016 thiss!1504) key!932 (defaultEntry!4175 thiss!1504)))))

(declare-fun c!36821 () Bool)

(declare-datatypes ((SeekEntryResult!837 0))(
  ( (MissingZero!837 (index!5518 (_ BitVec 32))) (Found!837 (index!5519 (_ BitVec 32))) (Intermediate!837 (undefined!1649 Bool) (index!5520 (_ BitVec 32)) (x!23025 (_ BitVec 32))) (Undefined!837) (MissingVacant!837 (index!5521 (_ BitVec 32))) )
))
(declare-fun lt!112463 () SeekEntryResult!837)

(assert (=> b!221534 (= c!36821 (is-MissingZero!837 lt!112463))))

(declare-fun e!143980 () Bool)

(assert (=> b!221534 e!143980))

(declare-fun b!221535 () Bool)

(declare-fun res!108704 () Bool)

(declare-fun e!143989 () Bool)

(assert (=> b!221535 (=> (not res!108704) (not e!143989))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10882 (_ BitVec 32)) Bool)

(assert (=> b!221535 (= res!108704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6229 thiss!1504) (mask!9987 thiss!1504)))))

(declare-fun b!221536 () Bool)

(declare-fun res!108714 () Bool)

(declare-fun e!143985 () Bool)

(assert (=> b!221536 (=> (not res!108714) (not e!143985))))

(assert (=> b!221536 (= res!108714 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!221537 () Bool)

(declare-fun e!143991 () Bool)

(assert (=> b!221537 (= e!143985 e!143991)))

(declare-fun res!108712 () Bool)

(assert (=> b!221537 (=> (not res!108712) (not e!143991))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!221537 (= res!108712 (or (= lt!112463 (MissingZero!837 index!297)) (= lt!112463 (MissingVacant!837 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10882 (_ BitVec 32)) SeekEntryResult!837)

(assert (=> b!221537 (= lt!112463 (seekEntryOrOpen!0 key!932 (_keys!6229 thiss!1504) (mask!9987 thiss!1504)))))

(declare-fun res!108706 () Bool)

(assert (=> start!21902 (=> (not res!108706) (not e!143985))))

(declare-fun valid!1216 (LongMapFixedSize!3032) Bool)

(assert (=> start!21902 (= res!108706 (valid!1216 thiss!1504))))

(assert (=> start!21902 e!143985))

(declare-fun e!143988 () Bool)

(assert (=> start!21902 e!143988))

(assert (=> start!21902 true))

(declare-fun b!221538 () Bool)

(declare-fun res!108707 () Bool)

(assert (=> b!221538 (=> (not res!108707) (not e!143989))))

(assert (=> b!221538 (= res!108707 (and (= (size!5492 (_values!4158 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9987 thiss!1504))) (= (size!5493 (_keys!6229 thiss!1504)) (size!5492 (_values!4158 thiss!1504))) (bvsge (mask!9987 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3912 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3912 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!221539 () Bool)

(assert (=> b!221539 (= e!143989 false)))

(declare-fun lt!112461 () Bool)

(declare-datatypes ((List!3306 0))(
  ( (Nil!3303) (Cons!3302 (h!3950 (_ BitVec 64)) (t!8273 List!3306)) )
))
(declare-fun arrayNoDuplicates!0 (array!10882 (_ BitVec 32) List!3306) Bool)

(assert (=> b!221539 (= lt!112461 (arrayNoDuplicates!0 (_keys!6229 thiss!1504) #b00000000000000000000000000000000 Nil!3303))))

(declare-fun mapIsEmpty!9898 () Bool)

(declare-fun mapRes!9898 () Bool)

(assert (=> mapIsEmpty!9898 mapRes!9898))

(declare-fun b!221540 () Bool)

(assert (=> b!221540 (= e!143991 e!143989)))

(declare-fun res!108710 () Bool)

(assert (=> b!221540 (=> (not res!108710) (not e!143989))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!221540 (= res!108710 (inRange!0 index!297 (mask!9987 thiss!1504)))))

(declare-fun lt!112462 () Unit!6620)

(assert (=> b!221540 (= lt!112462 e!143982)))

(declare-fun c!36819 () Bool)

(declare-datatypes ((tuple2!4380 0))(
  ( (tuple2!4381 (_1!2200 (_ BitVec 64)) (_2!2200 V!7405)) )
))
(declare-datatypes ((List!3307 0))(
  ( (Nil!3304) (Cons!3303 (h!3951 tuple2!4380) (t!8274 List!3307)) )
))
(declare-datatypes ((ListLongMap!3307 0))(
  ( (ListLongMap!3308 (toList!1669 List!3307)) )
))
(declare-fun contains!1506 (ListLongMap!3307 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1192 (array!10882 array!10880 (_ BitVec 32) (_ BitVec 32) V!7405 V!7405 (_ BitVec 32) Int) ListLongMap!3307)

(assert (=> b!221540 (= c!36819 (contains!1506 (getCurrentListMap!1192 (_keys!6229 thiss!1504) (_values!4158 thiss!1504) (mask!9987 thiss!1504) (extraKeys!3912 thiss!1504) (zeroValue!4016 thiss!1504) (minValue!4016 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4175 thiss!1504)) key!932))))

(declare-fun b!221541 () Bool)

(declare-fun c!36820 () Bool)

(assert (=> b!221541 (= c!36820 (is-MissingVacant!837 lt!112463))))

(declare-fun e!143983 () Bool)

(assert (=> b!221541 (= e!143980 e!143983)))

(declare-fun b!221542 () Bool)

(declare-fun e!143992 () Bool)

(declare-fun tp_is_empty!5819 () Bool)

(assert (=> b!221542 (= e!143992 tp_is_empty!5819)))

(declare-fun e!143987 () Bool)

(declare-fun array_inv!3407 (array!10882) Bool)

(declare-fun array_inv!3408 (array!10880) Bool)

(assert (=> b!221543 (= e!143988 (and tp!21013 tp_is_empty!5819 (array_inv!3407 (_keys!6229 thiss!1504)) (array_inv!3408 (_values!4158 thiss!1504)) e!143987))))

(declare-fun b!221544 () Bool)

(assert (=> b!221544 (= e!143983 (is-Undefined!837 lt!112463))))

(declare-fun b!221545 () Bool)

(declare-fun res!108711 () Bool)

(declare-fun e!143984 () Bool)

(assert (=> b!221545 (=> (not res!108711) (not e!143984))))

(declare-fun call!20703 () Bool)

(assert (=> b!221545 (= res!108711 call!20703)))

(assert (=> b!221545 (= e!143980 e!143984)))

(declare-fun mapNonEmpty!9898 () Bool)

(declare-fun tp!21012 () Bool)

(assert (=> mapNonEmpty!9898 (= mapRes!9898 (and tp!21012 e!143992))))

(declare-fun mapValue!9898 () ValueCell!2566)

(declare-fun mapRest!9898 () (Array (_ BitVec 32) ValueCell!2566))

(declare-fun mapKey!9898 () (_ BitVec 32))

(assert (=> mapNonEmpty!9898 (= (arr!5159 (_values!4158 thiss!1504)) (store mapRest!9898 mapKey!9898 mapValue!9898))))

(declare-fun bm!20700 () Bool)

(assert (=> bm!20700 (= call!20703 (inRange!0 (ite c!36821 (index!5518 lt!112463) (index!5521 lt!112463)) (mask!9987 thiss!1504)))))

(declare-fun b!221546 () Bool)

(declare-fun res!108713 () Bool)

(assert (=> b!221546 (= res!108713 (= (select (arr!5160 (_keys!6229 thiss!1504)) (index!5521 lt!112463)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!143986 () Bool)

(assert (=> b!221546 (=> (not res!108713) (not e!143986))))

(declare-fun b!221547 () Bool)

(assert (=> b!221547 (= e!143983 e!143986)))

(declare-fun res!108715 () Bool)

(assert (=> b!221547 (= res!108715 call!20703)))

(assert (=> b!221547 (=> (not res!108715) (not e!143986))))

(declare-fun b!221548 () Bool)

(declare-fun res!108705 () Bool)

(assert (=> b!221548 (=> (not res!108705) (not e!143989))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!221548 (= res!108705 (validMask!0 (mask!9987 thiss!1504)))))

(declare-fun b!221549 () Bool)

(declare-fun res!108708 () Bool)

(assert (=> b!221549 (=> (not res!108708) (not e!143989))))

(declare-fun arrayContainsKey!0 (array!10882 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!221549 (= res!108708 (arrayContainsKey!0 (_keys!6229 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!221550 () Bool)

(declare-fun e!143981 () Bool)

(assert (=> b!221550 (= e!143981 tp_is_empty!5819)))

(declare-fun bm!20701 () Bool)

(declare-fun call!20704 () Bool)

(assert (=> bm!20701 (= call!20704 (arrayContainsKey!0 (_keys!6229 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!221551 () Bool)

(declare-fun res!108709 () Bool)

(assert (=> b!221551 (=> (not res!108709) (not e!143984))))

(assert (=> b!221551 (= res!108709 (= (select (arr!5160 (_keys!6229 thiss!1504)) (index!5518 lt!112463)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!221552 () Bool)

(assert (=> b!221552 (= e!143984 (not call!20704))))

(declare-fun b!221553 () Bool)

(assert (=> b!221553 (= e!143987 (and e!143981 mapRes!9898))))

(declare-fun condMapEmpty!9898 () Bool)

(declare-fun mapDefault!9898 () ValueCell!2566)

