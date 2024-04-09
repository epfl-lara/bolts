; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75936 () Bool)

(assert start!75936)

(declare-fun b!892973 () Bool)

(declare-fun b_free!15843 () Bool)

(declare-fun b_next!15843 () Bool)

(assert (=> b!892973 (= b_free!15843 (not b_next!15843))))

(declare-fun tp!55501 () Bool)

(declare-fun b_and!26123 () Bool)

(assert (=> b!892973 (= tp!55501 b_and!26123)))

(declare-fun b!892969 () Bool)

(declare-fun e!498667 () Bool)

(declare-fun tp_is_empty!18171 () Bool)

(assert (=> b!892969 (= e!498667 tp_is_empty!18171)))

(declare-fun mapNonEmpty!28814 () Bool)

(declare-fun mapRes!28814 () Bool)

(declare-fun tp!55502 () Bool)

(declare-fun e!498672 () Bool)

(assert (=> mapNonEmpty!28814 (= mapRes!28814 (and tp!55502 e!498672))))

(declare-fun mapKey!28814 () (_ BitVec 32))

(declare-datatypes ((array!52310 0))(
  ( (array!52311 (arr!25156 (Array (_ BitVec 32) (_ BitVec 64))) (size!25601 (_ BitVec 32))) )
))
(declare-datatypes ((V!29193 0))(
  ( (V!29194 (val!9136 Int)) )
))
(declare-datatypes ((ValueCell!8604 0))(
  ( (ValueCellFull!8604 (v!11611 V!29193)) (EmptyCell!8604) )
))
(declare-datatypes ((array!52312 0))(
  ( (array!52313 (arr!25157 (Array (_ BitVec 32) ValueCell!8604)) (size!25602 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4224 0))(
  ( (LongMapFixedSize!4225 (defaultEntry!5312 Int) (mask!25829 (_ BitVec 32)) (extraKeys!5007 (_ BitVec 32)) (zeroValue!5111 V!29193) (minValue!5111 V!29193) (_size!2167 (_ BitVec 32)) (_keys!9993 array!52310) (_values!5298 array!52312) (_vacant!2167 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4224)

(declare-fun mapRest!28814 () (Array (_ BitVec 32) ValueCell!8604))

(declare-fun mapValue!28814 () ValueCell!8604)

(assert (=> mapNonEmpty!28814 (= (arr!25157 (_values!5298 thiss!1181)) (store mapRest!28814 mapKey!28814 mapValue!28814))))

(declare-fun b!892970 () Bool)

(declare-fun res!604914 () Bool)

(declare-fun e!498668 () Bool)

(assert (=> b!892970 (=> (not res!604914) (not e!498668))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!892970 (= res!604914 (not (= key!785 (bvneg key!785))))))

(declare-fun b!892971 () Bool)

(declare-fun e!498674 () Bool)

(assert (=> b!892971 (= e!498674 true)))

(declare-fun lt!403482 () Bool)

(declare-fun contains!4365 (LongMapFixedSize!4224 (_ BitVec 64)) Bool)

(assert (=> b!892971 (= lt!403482 (contains!4365 thiss!1181 key!785))))

(declare-fun b!892972 () Bool)

(declare-fun e!498670 () Bool)

(assert (=> b!892972 (= e!498670 (and e!498667 mapRes!28814))))

(declare-fun condMapEmpty!28814 () Bool)

(declare-fun mapDefault!28814 () ValueCell!8604)

(assert (=> b!892972 (= condMapEmpty!28814 (= (arr!25157 (_values!5298 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8604)) mapDefault!28814)))))

(declare-fun res!604913 () Bool)

(assert (=> start!75936 (=> (not res!604913) (not e!498668))))

(declare-fun valid!1622 (LongMapFixedSize!4224) Bool)

(assert (=> start!75936 (= res!604913 (valid!1622 thiss!1181))))

(assert (=> start!75936 e!498668))

(declare-fun e!498671 () Bool)

(assert (=> start!75936 e!498671))

(assert (=> start!75936 true))

(declare-fun mapIsEmpty!28814 () Bool)

(assert (=> mapIsEmpty!28814 mapRes!28814))

(declare-fun array_inv!19734 (array!52310) Bool)

(declare-fun array_inv!19735 (array!52312) Bool)

(assert (=> b!892973 (= e!498671 (and tp!55501 tp_is_empty!18171 (array_inv!19734 (_keys!9993 thiss!1181)) (array_inv!19735 (_values!5298 thiss!1181)) e!498670))))

(declare-fun b!892974 () Bool)

(assert (=> b!892974 (= e!498668 (not e!498674))))

(declare-fun res!604912 () Bool)

(assert (=> b!892974 (=> res!604912 e!498674)))

(declare-datatypes ((SeekEntryResult!8853 0))(
  ( (MissingZero!8853 (index!37782 (_ BitVec 32))) (Found!8853 (index!37783 (_ BitVec 32))) (Intermediate!8853 (undefined!9665 Bool) (index!37784 (_ BitVec 32)) (x!75906 (_ BitVec 32))) (Undefined!8853) (MissingVacant!8853 (index!37785 (_ BitVec 32))) )
))
(declare-fun lt!403481 () SeekEntryResult!8853)

(get-info :version)

(assert (=> b!892974 (= res!604912 ((_ is Found!8853) lt!403481))))

(declare-fun e!498669 () Bool)

(assert (=> b!892974 e!498669))

(declare-fun res!604911 () Bool)

(assert (=> b!892974 (=> res!604911 e!498669)))

(assert (=> b!892974 (= res!604911 (not ((_ is Found!8853) lt!403481)))))

(declare-datatypes ((Unit!30389 0))(
  ( (Unit!30390) )
))
(declare-fun lt!403480 () Unit!30389)

(declare-fun lemmaSeekEntryGivesInRangeIndex!66 (array!52310 array!52312 (_ BitVec 32) (_ BitVec 32) V!29193 V!29193 (_ BitVec 64)) Unit!30389)

(assert (=> b!892974 (= lt!403480 (lemmaSeekEntryGivesInRangeIndex!66 (_keys!9993 thiss!1181) (_values!5298 thiss!1181) (mask!25829 thiss!1181) (extraKeys!5007 thiss!1181) (zeroValue!5111 thiss!1181) (minValue!5111 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52310 (_ BitVec 32)) SeekEntryResult!8853)

(assert (=> b!892974 (= lt!403481 (seekEntry!0 key!785 (_keys!9993 thiss!1181) (mask!25829 thiss!1181)))))

(declare-fun b!892975 () Bool)

(assert (=> b!892975 (= e!498672 tp_is_empty!18171)))

(declare-fun b!892976 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!892976 (= e!498669 (inRange!0 (index!37783 lt!403481) (mask!25829 thiss!1181)))))

(assert (= (and start!75936 res!604913) b!892970))

(assert (= (and b!892970 res!604914) b!892974))

(assert (= (and b!892974 (not res!604911)) b!892976))

(assert (= (and b!892974 (not res!604912)) b!892971))

(assert (= (and b!892972 condMapEmpty!28814) mapIsEmpty!28814))

(assert (= (and b!892972 (not condMapEmpty!28814)) mapNonEmpty!28814))

(assert (= (and mapNonEmpty!28814 ((_ is ValueCellFull!8604) mapValue!28814)) b!892975))

(assert (= (and b!892972 ((_ is ValueCellFull!8604) mapDefault!28814)) b!892969))

(assert (= b!892973 b!892972))

(assert (= start!75936 b!892973))

(declare-fun m!831205 () Bool)

(assert (=> mapNonEmpty!28814 m!831205))

(declare-fun m!831207 () Bool)

(assert (=> start!75936 m!831207))

(declare-fun m!831209 () Bool)

(assert (=> b!892974 m!831209))

(declare-fun m!831211 () Bool)

(assert (=> b!892974 m!831211))

(declare-fun m!831213 () Bool)

(assert (=> b!892976 m!831213))

(declare-fun m!831215 () Bool)

(assert (=> b!892971 m!831215))

(declare-fun m!831217 () Bool)

(assert (=> b!892973 m!831217))

(declare-fun m!831219 () Bool)

(assert (=> b!892973 m!831219))

(check-sat (not start!75936) (not mapNonEmpty!28814) (not b!892971) (not b!892974) b_and!26123 (not b_next!15843) tp_is_empty!18171 (not b!892973) (not b!892976))
(check-sat b_and!26123 (not b_next!15843))
