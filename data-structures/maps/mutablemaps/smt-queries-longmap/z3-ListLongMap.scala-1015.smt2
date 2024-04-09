; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21704 () Bool)

(assert start!21704)

(declare-fun b!217851 () Bool)

(declare-fun b_free!5841 () Bool)

(declare-fun b_next!5841 () Bool)

(assert (=> b!217851 (= b_free!5841 (not b_next!5841))))

(declare-fun tp!20658 () Bool)

(declare-fun b_and!12749 () Bool)

(assert (=> b!217851 (= tp!20658 b_and!12749)))

(declare-fun res!106749 () Bool)

(declare-fun e!141723 () Bool)

(assert (=> start!21704 (=> (not res!106749) (not e!141723))))

(declare-datatypes ((V!7251 0))(
  ( (V!7252 (val!2896 Int)) )
))
(declare-datatypes ((ValueCell!2508 0))(
  ( (ValueCellFull!2508 (v!4910 V!7251)) (EmptyCell!2508) )
))
(declare-datatypes ((array!10644 0))(
  ( (array!10645 (arr!5043 (Array (_ BitVec 32) ValueCell!2508)) (size!5375 (_ BitVec 32))) )
))
(declare-datatypes ((array!10646 0))(
  ( (array!10647 (arr!5044 (Array (_ BitVec 32) (_ BitVec 64))) (size!5376 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2916 0))(
  ( (LongMapFixedSize!2917 (defaultEntry!4108 Int) (mask!9873 (_ BitVec 32)) (extraKeys!3845 (_ BitVec 32)) (zeroValue!3949 V!7251) (minValue!3949 V!7251) (_size!1507 (_ BitVec 32)) (_keys!6157 array!10646) (_values!4091 array!10644) (_vacant!1507 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2916)

(declare-fun valid!1175 (LongMapFixedSize!2916) Bool)

(assert (=> start!21704 (= res!106749 (valid!1175 thiss!1504))))

(assert (=> start!21704 e!141723))

(declare-fun e!141720 () Bool)

(assert (=> start!21704 e!141720))

(assert (=> start!21704 true))

(declare-fun b!217844 () Bool)

(declare-fun e!141722 () Bool)

(assert (=> b!217844 (= e!141723 e!141722)))

(declare-fun res!106753 () Bool)

(assert (=> b!217844 (=> (not res!106753) (not e!141722))))

(declare-datatypes ((SeekEntryResult!786 0))(
  ( (MissingZero!786 (index!5314 (_ BitVec 32))) (Found!786 (index!5315 (_ BitVec 32))) (Intermediate!786 (undefined!1598 Bool) (index!5316 (_ BitVec 32)) (x!22794 (_ BitVec 32))) (Undefined!786) (MissingVacant!786 (index!5317 (_ BitVec 32))) )
))
(declare-fun lt!111451 () SeekEntryResult!786)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217844 (= res!106753 (or (= lt!111451 (MissingZero!786 index!297)) (= lt!111451 (MissingVacant!786 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10646 (_ BitVec 32)) SeekEntryResult!786)

(assert (=> b!217844 (= lt!111451 (seekEntryOrOpen!0 key!932 (_keys!6157 thiss!1504) (mask!9873 thiss!1504)))))

(declare-fun b!217845 () Bool)

(declare-fun res!106754 () Bool)

(assert (=> b!217845 (=> (not res!106754) (not e!141722))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10646 (_ BitVec 32)) Bool)

(assert (=> b!217845 (= res!106754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6157 thiss!1504) (mask!9873 thiss!1504)))))

(declare-fun b!217846 () Bool)

(declare-fun res!106755 () Bool)

(assert (=> b!217846 (=> (not res!106755) (not e!141722))))

(declare-datatypes ((tuple2!4300 0))(
  ( (tuple2!4301 (_1!2160 (_ BitVec 64)) (_2!2160 V!7251)) )
))
(declare-datatypes ((List!3229 0))(
  ( (Nil!3226) (Cons!3225 (h!3872 tuple2!4300) (t!8192 List!3229)) )
))
(declare-datatypes ((ListLongMap!3227 0))(
  ( (ListLongMap!3228 (toList!1629 List!3229)) )
))
(declare-fun contains!1464 (ListLongMap!3227 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1152 (array!10646 array!10644 (_ BitVec 32) (_ BitVec 32) V!7251 V!7251 (_ BitVec 32) Int) ListLongMap!3227)

(assert (=> b!217846 (= res!106755 (not (contains!1464 (getCurrentListMap!1152 (_keys!6157 thiss!1504) (_values!4091 thiss!1504) (mask!9873 thiss!1504) (extraKeys!3845 thiss!1504) (zeroValue!3949 thiss!1504) (minValue!3949 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4108 thiss!1504)) key!932)))))

(declare-fun b!217847 () Bool)

(declare-fun res!106750 () Bool)

(assert (=> b!217847 (=> (not res!106750) (not e!141722))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217847 (= res!106750 (validMask!0 (mask!9873 thiss!1504)))))

(declare-fun mapNonEmpty!9717 () Bool)

(declare-fun mapRes!9717 () Bool)

(declare-fun tp!20657 () Bool)

(declare-fun e!141725 () Bool)

(assert (=> mapNonEmpty!9717 (= mapRes!9717 (and tp!20657 e!141725))))

(declare-fun mapKey!9717 () (_ BitVec 32))

(declare-fun mapValue!9717 () ValueCell!2508)

(declare-fun mapRest!9717 () (Array (_ BitVec 32) ValueCell!2508))

(assert (=> mapNonEmpty!9717 (= (arr!5043 (_values!4091 thiss!1504)) (store mapRest!9717 mapKey!9717 mapValue!9717))))

(declare-fun mapIsEmpty!9717 () Bool)

(assert (=> mapIsEmpty!9717 mapRes!9717))

(declare-fun b!217848 () Bool)

(declare-fun e!141724 () Bool)

(declare-fun tp_is_empty!5703 () Bool)

(assert (=> b!217848 (= e!141724 tp_is_empty!5703)))

(declare-fun b!217849 () Bool)

(declare-fun e!141721 () Bool)

(assert (=> b!217849 (= e!141721 (and e!141724 mapRes!9717))))

(declare-fun condMapEmpty!9717 () Bool)

(declare-fun mapDefault!9717 () ValueCell!2508)

(assert (=> b!217849 (= condMapEmpty!9717 (= (arr!5043 (_values!4091 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2508)) mapDefault!9717)))))

(declare-fun b!217850 () Bool)

(declare-fun res!106751 () Bool)

(assert (=> b!217850 (=> (not res!106751) (not e!141722))))

(assert (=> b!217850 (= res!106751 (and (= (size!5375 (_values!4091 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9873 thiss!1504))) (= (size!5376 (_keys!6157 thiss!1504)) (size!5375 (_values!4091 thiss!1504))) (bvsge (mask!9873 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3845 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3845 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun array_inv!3331 (array!10646) Bool)

(declare-fun array_inv!3332 (array!10644) Bool)

(assert (=> b!217851 (= e!141720 (and tp!20658 tp_is_empty!5703 (array_inv!3331 (_keys!6157 thiss!1504)) (array_inv!3332 (_values!4091 thiss!1504)) e!141721))))

(declare-fun b!217852 () Bool)

(declare-fun res!106752 () Bool)

(assert (=> b!217852 (=> (not res!106752) (not e!141723))))

(assert (=> b!217852 (= res!106752 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!217853 () Bool)

(assert (=> b!217853 (= e!141722 false)))

(declare-fun lt!111450 () Bool)

(declare-datatypes ((List!3230 0))(
  ( (Nil!3227) (Cons!3226 (h!3873 (_ BitVec 64)) (t!8193 List!3230)) )
))
(declare-fun arrayNoDuplicates!0 (array!10646 (_ BitVec 32) List!3230) Bool)

(assert (=> b!217853 (= lt!111450 (arrayNoDuplicates!0 (_keys!6157 thiss!1504) #b00000000000000000000000000000000 Nil!3227))))

(declare-fun b!217854 () Bool)

(assert (=> b!217854 (= e!141725 tp_is_empty!5703)))

(assert (= (and start!21704 res!106749) b!217852))

(assert (= (and b!217852 res!106752) b!217844))

(assert (= (and b!217844 res!106753) b!217846))

(assert (= (and b!217846 res!106755) b!217847))

(assert (= (and b!217847 res!106750) b!217850))

(assert (= (and b!217850 res!106751) b!217845))

(assert (= (and b!217845 res!106754) b!217853))

(assert (= (and b!217849 condMapEmpty!9717) mapIsEmpty!9717))

(assert (= (and b!217849 (not condMapEmpty!9717)) mapNonEmpty!9717))

(get-info :version)

(assert (= (and mapNonEmpty!9717 ((_ is ValueCellFull!2508) mapValue!9717)) b!217854))

(assert (= (and b!217849 ((_ is ValueCellFull!2508) mapDefault!9717)) b!217848))

(assert (= b!217851 b!217849))

(assert (= start!21704 b!217851))

(declare-fun m!244007 () Bool)

(assert (=> b!217846 m!244007))

(assert (=> b!217846 m!244007))

(declare-fun m!244009 () Bool)

(assert (=> b!217846 m!244009))

(declare-fun m!244011 () Bool)

(assert (=> b!217847 m!244011))

(declare-fun m!244013 () Bool)

(assert (=> b!217845 m!244013))

(declare-fun m!244015 () Bool)

(assert (=> mapNonEmpty!9717 m!244015))

(declare-fun m!244017 () Bool)

(assert (=> b!217844 m!244017))

(declare-fun m!244019 () Bool)

(assert (=> start!21704 m!244019))

(declare-fun m!244021 () Bool)

(assert (=> b!217851 m!244021))

(declare-fun m!244023 () Bool)

(assert (=> b!217851 m!244023))

(declare-fun m!244025 () Bool)

(assert (=> b!217853 m!244025))

(check-sat (not b_next!5841) (not mapNonEmpty!9717) tp_is_empty!5703 (not b!217845) (not b!217847) (not b!217853) (not b!217851) (not b!217844) (not start!21704) b_and!12749 (not b!217846))
(check-sat b_and!12749 (not b_next!5841))
