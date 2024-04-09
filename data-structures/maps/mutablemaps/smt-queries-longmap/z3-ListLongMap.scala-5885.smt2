; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75870 () Bool)

(assert start!75870)

(declare-fun b!892225 () Bool)

(declare-fun b_free!15813 () Bool)

(declare-fun b_next!15813 () Bool)

(assert (=> b!892225 (= b_free!15813 (not b_next!15813))))

(declare-fun tp!55409 () Bool)

(declare-fun b_and!26071 () Bool)

(assert (=> b!892225 (= tp!55409 b_and!26071)))

(declare-fun res!604604 () Bool)

(declare-fun e!498082 () Bool)

(assert (=> start!75870 (=> (not res!604604) (not e!498082))))

(declare-datatypes ((array!52248 0))(
  ( (array!52249 (arr!25126 (Array (_ BitVec 32) (_ BitVec 64))) (size!25571 (_ BitVec 32))) )
))
(declare-datatypes ((V!29153 0))(
  ( (V!29154 (val!9121 Int)) )
))
(declare-datatypes ((ValueCell!8589 0))(
  ( (ValueCellFull!8589 (v!11593 V!29153)) (EmptyCell!8589) )
))
(declare-datatypes ((array!52250 0))(
  ( (array!52251 (arr!25127 (Array (_ BitVec 32) ValueCell!8589)) (size!25572 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4194 0))(
  ( (LongMapFixedSize!4195 (defaultEntry!5294 Int) (mask!25798 (_ BitVec 32)) (extraKeys!4988 (_ BitVec 32)) (zeroValue!5092 V!29153) (minValue!5092 V!29153) (_size!2152 (_ BitVec 32)) (_keys!9973 array!52248) (_values!5279 array!52250) (_vacant!2152 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4194)

(declare-fun valid!1609 (LongMapFixedSize!4194) Bool)

(assert (=> start!75870 (= res!604604 (valid!1609 thiss!1181))))

(assert (=> start!75870 e!498082))

(declare-fun e!498087 () Bool)

(assert (=> start!75870 e!498087))

(assert (=> start!75870 true))

(declare-fun mapIsEmpty!28766 () Bool)

(declare-fun mapRes!28766 () Bool)

(assert (=> mapIsEmpty!28766 mapRes!28766))

(declare-fun e!498084 () Bool)

(declare-fun tp_is_empty!18141 () Bool)

(declare-fun array_inv!19710 (array!52248) Bool)

(declare-fun array_inv!19711 (array!52250) Bool)

(assert (=> b!892225 (= e!498087 (and tp!55409 tp_is_empty!18141 (array_inv!19710 (_keys!9973 thiss!1181)) (array_inv!19711 (_values!5279 thiss!1181)) e!498084))))

(declare-fun b!892226 () Bool)

(declare-fun e!498085 () Bool)

(assert (=> b!892226 (= e!498084 (and e!498085 mapRes!28766))))

(declare-fun condMapEmpty!28766 () Bool)

(declare-fun mapDefault!28766 () ValueCell!8589)

(assert (=> b!892226 (= condMapEmpty!28766 (= (arr!25127 (_values!5279 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8589)) mapDefault!28766)))))

(declare-fun b!892227 () Bool)

(declare-fun res!604603 () Bool)

(assert (=> b!892227 (=> (not res!604603) (not e!498082))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!892227 (= res!604603 (not (= key!785 (bvneg key!785))))))

(declare-fun b!892228 () Bool)

(assert (=> b!892228 (= e!498085 tp_is_empty!18141)))

(declare-fun b!892229 () Bool)

(declare-fun e!498088 () Bool)

(assert (=> b!892229 (= e!498088 true)))

(declare-fun lt!403103 () Bool)

(declare-datatypes ((tuple2!12012 0))(
  ( (tuple2!12013 (_1!6016 (_ BitVec 64)) (_2!6016 V!29153)) )
))
(declare-datatypes ((List!17861 0))(
  ( (Nil!17858) (Cons!17857 (h!18988 tuple2!12012) (t!25168 List!17861)) )
))
(declare-datatypes ((ListLongMap!10723 0))(
  ( (ListLongMap!10724 (toList!5377 List!17861)) )
))
(declare-fun lt!403107 () ListLongMap!10723)

(declare-fun contains!4354 (ListLongMap!10723 (_ BitVec 64)) Bool)

(assert (=> b!892229 (= lt!403103 (contains!4354 lt!403107 key!785))))

(declare-fun b!892230 () Bool)

(declare-fun res!604601 () Bool)

(assert (=> b!892230 (=> res!604601 e!498088)))

(declare-datatypes ((List!17862 0))(
  ( (Nil!17859) (Cons!17858 (h!18989 (_ BitVec 64)) (t!25169 List!17862)) )
))
(declare-fun arrayNoDuplicates!0 (array!52248 (_ BitVec 32) List!17862) Bool)

(assert (=> b!892230 (= res!604601 (not (arrayNoDuplicates!0 (_keys!9973 thiss!1181) #b00000000000000000000000000000000 Nil!17859)))))

(declare-fun b!892231 () Bool)

(declare-fun e!498086 () Bool)

(declare-datatypes ((SeekEntryResult!8838 0))(
  ( (MissingZero!8838 (index!37722 (_ BitVec 32))) (Found!8838 (index!37723 (_ BitVec 32))) (Intermediate!8838 (undefined!9650 Bool) (index!37724 (_ BitVec 32)) (x!75823 (_ BitVec 32))) (Undefined!8838) (MissingVacant!8838 (index!37725 (_ BitVec 32))) )
))
(declare-fun lt!403106 () SeekEntryResult!8838)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!892231 (= e!498086 (inRange!0 (index!37723 lt!403106) (mask!25798 thiss!1181)))))

(declare-fun b!892232 () Bool)

(declare-fun e!498081 () Bool)

(assert (=> b!892232 (= e!498081 e!498088)))

(declare-fun res!604605 () Bool)

(assert (=> b!892232 (=> res!604605 e!498088)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!892232 (= res!604605 (not (validMask!0 (mask!25798 thiss!1181))))))

(assert (=> b!892232 (contains!4354 lt!403107 (select (arr!25126 (_keys!9973 thiss!1181)) (index!37723 lt!403106)))))

(declare-fun getCurrentListMap!2628 (array!52248 array!52250 (_ BitVec 32) (_ BitVec 32) V!29153 V!29153 (_ BitVec 32) Int) ListLongMap!10723)

(assert (=> b!892232 (= lt!403107 (getCurrentListMap!2628 (_keys!9973 thiss!1181) (_values!5279 thiss!1181) (mask!25798 thiss!1181) (extraKeys!4988 thiss!1181) (zeroValue!5092 thiss!1181) (minValue!5092 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5294 thiss!1181)))))

(declare-datatypes ((Unit!30357 0))(
  ( (Unit!30358) )
))
(declare-fun lt!403105 () Unit!30357)

(declare-fun lemmaValidKeyInArrayIsInListMap!221 (array!52248 array!52250 (_ BitVec 32) (_ BitVec 32) V!29153 V!29153 (_ BitVec 32) Int) Unit!30357)

(assert (=> b!892232 (= lt!403105 (lemmaValidKeyInArrayIsInListMap!221 (_keys!9973 thiss!1181) (_values!5279 thiss!1181) (mask!25798 thiss!1181) (extraKeys!4988 thiss!1181) (zeroValue!5092 thiss!1181) (minValue!5092 thiss!1181) (index!37723 lt!403106) (defaultEntry!5294 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52248 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!892232 (arrayContainsKey!0 (_keys!9973 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!403104 () Unit!30357)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52248 (_ BitVec 64) (_ BitVec 32)) Unit!30357)

(assert (=> b!892232 (= lt!403104 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9973 thiss!1181) key!785 (index!37723 lt!403106)))))

(declare-fun mapNonEmpty!28766 () Bool)

(declare-fun tp!55408 () Bool)

(declare-fun e!498083 () Bool)

(assert (=> mapNonEmpty!28766 (= mapRes!28766 (and tp!55408 e!498083))))

(declare-fun mapValue!28766 () ValueCell!8589)

(declare-fun mapKey!28766 () (_ BitVec 32))

(declare-fun mapRest!28766 () (Array (_ BitVec 32) ValueCell!8589))

(assert (=> mapNonEmpty!28766 (= (arr!25127 (_values!5279 thiss!1181)) (store mapRest!28766 mapKey!28766 mapValue!28766))))

(declare-fun b!892233 () Bool)

(declare-fun res!604602 () Bool)

(assert (=> b!892233 (=> res!604602 e!498088)))

(assert (=> b!892233 (= res!604602 (or (not (= (size!25572 (_values!5279 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25798 thiss!1181)))) (not (= (size!25571 (_keys!9973 thiss!1181)) (size!25572 (_values!5279 thiss!1181)))) (bvslt (mask!25798 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4988 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4988 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!892234 () Bool)

(assert (=> b!892234 (= e!498083 tp_is_empty!18141)))

(declare-fun b!892235 () Bool)

(assert (=> b!892235 (= e!498082 (not e!498081))))

(declare-fun res!604606 () Bool)

(assert (=> b!892235 (=> res!604606 e!498081)))

(get-info :version)

(assert (=> b!892235 (= res!604606 (not ((_ is Found!8838) lt!403106)))))

(assert (=> b!892235 e!498086))

(declare-fun res!604607 () Bool)

(assert (=> b!892235 (=> res!604607 e!498086)))

(assert (=> b!892235 (= res!604607 (not ((_ is Found!8838) lt!403106)))))

(declare-fun lt!403102 () Unit!30357)

(declare-fun lemmaSeekEntryGivesInRangeIndex!53 (array!52248 array!52250 (_ BitVec 32) (_ BitVec 32) V!29153 V!29153 (_ BitVec 64)) Unit!30357)

(assert (=> b!892235 (= lt!403102 (lemmaSeekEntryGivesInRangeIndex!53 (_keys!9973 thiss!1181) (_values!5279 thiss!1181) (mask!25798 thiss!1181) (extraKeys!4988 thiss!1181) (zeroValue!5092 thiss!1181) (minValue!5092 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52248 (_ BitVec 32)) SeekEntryResult!8838)

(assert (=> b!892235 (= lt!403106 (seekEntry!0 key!785 (_keys!9973 thiss!1181) (mask!25798 thiss!1181)))))

(declare-fun b!892236 () Bool)

(declare-fun res!604608 () Bool)

(assert (=> b!892236 (=> res!604608 e!498088)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52248 (_ BitVec 32)) Bool)

(assert (=> b!892236 (= res!604608 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9973 thiss!1181) (mask!25798 thiss!1181))))))

(assert (= (and start!75870 res!604604) b!892227))

(assert (= (and b!892227 res!604603) b!892235))

(assert (= (and b!892235 (not res!604607)) b!892231))

(assert (= (and b!892235 (not res!604606)) b!892232))

(assert (= (and b!892232 (not res!604605)) b!892233))

(assert (= (and b!892233 (not res!604602)) b!892236))

(assert (= (and b!892236 (not res!604608)) b!892230))

(assert (= (and b!892230 (not res!604601)) b!892229))

(assert (= (and b!892226 condMapEmpty!28766) mapIsEmpty!28766))

(assert (= (and b!892226 (not condMapEmpty!28766)) mapNonEmpty!28766))

(assert (= (and mapNonEmpty!28766 ((_ is ValueCellFull!8589) mapValue!28766)) b!892234))

(assert (= (and b!892226 ((_ is ValueCellFull!8589) mapDefault!28766)) b!892228))

(assert (= b!892225 b!892226))

(assert (= start!75870 b!892225))

(declare-fun m!830591 () Bool)

(assert (=> start!75870 m!830591))

(declare-fun m!830593 () Bool)

(assert (=> b!892231 m!830593))

(declare-fun m!830595 () Bool)

(assert (=> b!892236 m!830595))

(declare-fun m!830597 () Bool)

(assert (=> b!892225 m!830597))

(declare-fun m!830599 () Bool)

(assert (=> b!892225 m!830599))

(declare-fun m!830601 () Bool)

(assert (=> b!892230 m!830601))

(declare-fun m!830603 () Bool)

(assert (=> mapNonEmpty!28766 m!830603))

(declare-fun m!830605 () Bool)

(assert (=> b!892235 m!830605))

(declare-fun m!830607 () Bool)

(assert (=> b!892235 m!830607))

(declare-fun m!830609 () Bool)

(assert (=> b!892229 m!830609))

(declare-fun m!830611 () Bool)

(assert (=> b!892232 m!830611))

(declare-fun m!830613 () Bool)

(assert (=> b!892232 m!830613))

(declare-fun m!830615 () Bool)

(assert (=> b!892232 m!830615))

(declare-fun m!830617 () Bool)

(assert (=> b!892232 m!830617))

(declare-fun m!830619 () Bool)

(assert (=> b!892232 m!830619))

(declare-fun m!830621 () Bool)

(assert (=> b!892232 m!830621))

(assert (=> b!892232 m!830617))

(declare-fun m!830623 () Bool)

(assert (=> b!892232 m!830623))

(check-sat (not b!892230) (not b!892235) (not mapNonEmpty!28766) (not b!892225) (not start!75870) (not b!892229) (not b!892236) (not b_next!15813) (not b!892231) tp_is_empty!18141 b_and!26071 (not b!892232))
(check-sat b_and!26071 (not b_next!15813))
