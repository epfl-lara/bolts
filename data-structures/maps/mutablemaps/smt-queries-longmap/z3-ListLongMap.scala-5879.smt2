; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75834 () Bool)

(assert start!75834)

(declare-fun b!891580 () Bool)

(declare-fun b_free!15777 () Bool)

(declare-fun b_next!15777 () Bool)

(assert (=> b!891580 (= b_free!15777 (not b_next!15777))))

(declare-fun tp!55300 () Bool)

(declare-fun b_and!26035 () Bool)

(assert (=> b!891580 (= tp!55300 b_and!26035)))

(declare-fun b!891577 () Bool)

(declare-fun e!497597 () Bool)

(declare-fun tp_is_empty!18105 () Bool)

(assert (=> b!891577 (= e!497597 tp_is_empty!18105)))

(declare-fun b!891578 () Bool)

(declare-fun e!497601 () Bool)

(declare-fun e!497599 () Bool)

(assert (=> b!891578 (= e!497601 e!497599)))

(declare-fun res!604172 () Bool)

(assert (=> b!891578 (=> res!604172 e!497599)))

(declare-datatypes ((array!52176 0))(
  ( (array!52177 (arr!25090 (Array (_ BitVec 32) (_ BitVec 64))) (size!25535 (_ BitVec 32))) )
))
(declare-datatypes ((V!29105 0))(
  ( (V!29106 (val!9103 Int)) )
))
(declare-datatypes ((ValueCell!8571 0))(
  ( (ValueCellFull!8571 (v!11575 V!29105)) (EmptyCell!8571) )
))
(declare-datatypes ((array!52178 0))(
  ( (array!52179 (arr!25091 (Array (_ BitVec 32) ValueCell!8571)) (size!25536 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4158 0))(
  ( (LongMapFixedSize!4159 (defaultEntry!5276 Int) (mask!25768 (_ BitVec 32)) (extraKeys!4970 (_ BitVec 32)) (zeroValue!5074 V!29105) (minValue!5074 V!29105) (_size!2134 (_ BitVec 32)) (_keys!9955 array!52176) (_values!5261 array!52178) (_vacant!2134 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4158)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!891578 (= res!604172 (not (validMask!0 (mask!25768 thiss!1181))))))

(declare-datatypes ((tuple2!11984 0))(
  ( (tuple2!11985 (_1!6002 (_ BitVec 64)) (_2!6002 V!29105)) )
))
(declare-datatypes ((List!17834 0))(
  ( (Nil!17831) (Cons!17830 (h!18961 tuple2!11984) (t!25141 List!17834)) )
))
(declare-datatypes ((ListLongMap!10695 0))(
  ( (ListLongMap!10696 (toList!5363 List!17834)) )
))
(declare-fun lt!402782 () ListLongMap!10695)

(declare-datatypes ((SeekEntryResult!8824 0))(
  ( (MissingZero!8824 (index!37666 (_ BitVec 32))) (Found!8824 (index!37667 (_ BitVec 32))) (Intermediate!8824 (undefined!9636 Bool) (index!37668 (_ BitVec 32)) (x!75761 (_ BitVec 32))) (Undefined!8824) (MissingVacant!8824 (index!37669 (_ BitVec 32))) )
))
(declare-fun lt!402783 () SeekEntryResult!8824)

(declare-fun contains!4340 (ListLongMap!10695 (_ BitVec 64)) Bool)

(assert (=> b!891578 (contains!4340 lt!402782 (select (arr!25090 (_keys!9955 thiss!1181)) (index!37667 lt!402783)))))

(declare-fun getCurrentListMap!2616 (array!52176 array!52178 (_ BitVec 32) (_ BitVec 32) V!29105 V!29105 (_ BitVec 32) Int) ListLongMap!10695)

(assert (=> b!891578 (= lt!402782 (getCurrentListMap!2616 (_keys!9955 thiss!1181) (_values!5261 thiss!1181) (mask!25768 thiss!1181) (extraKeys!4970 thiss!1181) (zeroValue!5074 thiss!1181) (minValue!5074 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5276 thiss!1181)))))

(declare-datatypes ((Unit!30331 0))(
  ( (Unit!30332) )
))
(declare-fun lt!402779 () Unit!30331)

(declare-fun lemmaValidKeyInArrayIsInListMap!209 (array!52176 array!52178 (_ BitVec 32) (_ BitVec 32) V!29105 V!29105 (_ BitVec 32) Int) Unit!30331)

(assert (=> b!891578 (= lt!402779 (lemmaValidKeyInArrayIsInListMap!209 (_keys!9955 thiss!1181) (_values!5261 thiss!1181) (mask!25768 thiss!1181) (extraKeys!4970 thiss!1181) (zeroValue!5074 thiss!1181) (minValue!5074 thiss!1181) (index!37667 lt!402783) (defaultEntry!5276 thiss!1181)))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52176 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!891578 (arrayContainsKey!0 (_keys!9955 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402780 () Unit!30331)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52176 (_ BitVec 64) (_ BitVec 32)) Unit!30331)

(assert (=> b!891578 (= lt!402780 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9955 thiss!1181) key!785 (index!37667 lt!402783)))))

(declare-fun b!891579 () Bool)

(assert (=> b!891579 (= e!497599 true)))

(declare-fun lt!402781 () Bool)

(assert (=> b!891579 (= lt!402781 (contains!4340 lt!402782 key!785))))

(declare-fun e!497603 () Bool)

(declare-fun e!497598 () Bool)

(declare-fun array_inv!19684 (array!52176) Bool)

(declare-fun array_inv!19685 (array!52178) Bool)

(assert (=> b!891580 (= e!497598 (and tp!55300 tp_is_empty!18105 (array_inv!19684 (_keys!9955 thiss!1181)) (array_inv!19685 (_values!5261 thiss!1181)) e!497603))))

(declare-fun b!891581 () Bool)

(declare-fun e!497602 () Bool)

(assert (=> b!891581 (= e!497602 tp_is_empty!18105)))

(declare-fun b!891582 () Bool)

(declare-fun res!604169 () Bool)

(assert (=> b!891582 (=> res!604169 e!497599)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52176 (_ BitVec 32)) Bool)

(assert (=> b!891582 (= res!604169 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9955 thiss!1181) (mask!25768 thiss!1181))))))

(declare-fun b!891583 () Bool)

(declare-fun e!497596 () Bool)

(assert (=> b!891583 (= e!497596 (not e!497601))))

(declare-fun res!604175 () Bool)

(assert (=> b!891583 (=> res!604175 e!497601)))

(get-info :version)

(assert (=> b!891583 (= res!604175 (not ((_ is Found!8824) lt!402783)))))

(declare-fun e!497600 () Bool)

(assert (=> b!891583 e!497600))

(declare-fun res!604171 () Bool)

(assert (=> b!891583 (=> res!604171 e!497600)))

(assert (=> b!891583 (= res!604171 (not ((_ is Found!8824) lt!402783)))))

(declare-fun lt!402778 () Unit!30331)

(declare-fun lemmaSeekEntryGivesInRangeIndex!43 (array!52176 array!52178 (_ BitVec 32) (_ BitVec 32) V!29105 V!29105 (_ BitVec 64)) Unit!30331)

(assert (=> b!891583 (= lt!402778 (lemmaSeekEntryGivesInRangeIndex!43 (_keys!9955 thiss!1181) (_values!5261 thiss!1181) (mask!25768 thiss!1181) (extraKeys!4970 thiss!1181) (zeroValue!5074 thiss!1181) (minValue!5074 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52176 (_ BitVec 32)) SeekEntryResult!8824)

(assert (=> b!891583 (= lt!402783 (seekEntry!0 key!785 (_keys!9955 thiss!1181) (mask!25768 thiss!1181)))))

(declare-fun b!891584 () Bool)

(declare-fun res!604170 () Bool)

(assert (=> b!891584 (=> res!604170 e!497599)))

(declare-datatypes ((List!17835 0))(
  ( (Nil!17832) (Cons!17831 (h!18962 (_ BitVec 64)) (t!25142 List!17835)) )
))
(declare-fun arrayNoDuplicates!0 (array!52176 (_ BitVec 32) List!17835) Bool)

(assert (=> b!891584 (= res!604170 (not (arrayNoDuplicates!0 (_keys!9955 thiss!1181) #b00000000000000000000000000000000 Nil!17832)))))

(declare-fun b!891585 () Bool)

(declare-fun res!604174 () Bool)

(assert (=> b!891585 (=> res!604174 e!497599)))

(assert (=> b!891585 (= res!604174 (or (not (= (size!25536 (_values!5261 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25768 thiss!1181)))) (not (= (size!25535 (_keys!9955 thiss!1181)) (size!25536 (_values!5261 thiss!1181)))) (bvslt (mask!25768 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4970 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4970 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun res!604176 () Bool)

(assert (=> start!75834 (=> (not res!604176) (not e!497596))))

(declare-fun valid!1598 (LongMapFixedSize!4158) Bool)

(assert (=> start!75834 (= res!604176 (valid!1598 thiss!1181))))

(assert (=> start!75834 e!497596))

(assert (=> start!75834 e!497598))

(assert (=> start!75834 true))

(declare-fun b!891586 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!891586 (= e!497600 (inRange!0 (index!37667 lt!402783) (mask!25768 thiss!1181)))))

(declare-fun b!891587 () Bool)

(declare-fun res!604173 () Bool)

(assert (=> b!891587 (=> (not res!604173) (not e!497596))))

(assert (=> b!891587 (= res!604173 (not (= key!785 (bvneg key!785))))))

(declare-fun mapIsEmpty!28712 () Bool)

(declare-fun mapRes!28712 () Bool)

(assert (=> mapIsEmpty!28712 mapRes!28712))

(declare-fun mapNonEmpty!28712 () Bool)

(declare-fun tp!55301 () Bool)

(assert (=> mapNonEmpty!28712 (= mapRes!28712 (and tp!55301 e!497602))))

(declare-fun mapKey!28712 () (_ BitVec 32))

(declare-fun mapValue!28712 () ValueCell!8571)

(declare-fun mapRest!28712 () (Array (_ BitVec 32) ValueCell!8571))

(assert (=> mapNonEmpty!28712 (= (arr!25091 (_values!5261 thiss!1181)) (store mapRest!28712 mapKey!28712 mapValue!28712))))

(declare-fun b!891588 () Bool)

(assert (=> b!891588 (= e!497603 (and e!497597 mapRes!28712))))

(declare-fun condMapEmpty!28712 () Bool)

(declare-fun mapDefault!28712 () ValueCell!8571)

(assert (=> b!891588 (= condMapEmpty!28712 (= (arr!25091 (_values!5261 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8571)) mapDefault!28712)))))

(assert (= (and start!75834 res!604176) b!891587))

(assert (= (and b!891587 res!604173) b!891583))

(assert (= (and b!891583 (not res!604171)) b!891586))

(assert (= (and b!891583 (not res!604175)) b!891578))

(assert (= (and b!891578 (not res!604172)) b!891585))

(assert (= (and b!891585 (not res!604174)) b!891582))

(assert (= (and b!891582 (not res!604169)) b!891584))

(assert (= (and b!891584 (not res!604170)) b!891579))

(assert (= (and b!891588 condMapEmpty!28712) mapIsEmpty!28712))

(assert (= (and b!891588 (not condMapEmpty!28712)) mapNonEmpty!28712))

(assert (= (and mapNonEmpty!28712 ((_ is ValueCellFull!8571) mapValue!28712)) b!891581))

(assert (= (and b!891588 ((_ is ValueCellFull!8571) mapDefault!28712)) b!891577))

(assert (= b!891580 b!891588))

(assert (= start!75834 b!891580))

(declare-fun m!829979 () Bool)

(assert (=> start!75834 m!829979))

(declare-fun m!829981 () Bool)

(assert (=> mapNonEmpty!28712 m!829981))

(declare-fun m!829983 () Bool)

(assert (=> b!891579 m!829983))

(declare-fun m!829985 () Bool)

(assert (=> b!891580 m!829985))

(declare-fun m!829987 () Bool)

(assert (=> b!891580 m!829987))

(declare-fun m!829989 () Bool)

(assert (=> b!891578 m!829989))

(declare-fun m!829991 () Bool)

(assert (=> b!891578 m!829991))

(declare-fun m!829993 () Bool)

(assert (=> b!891578 m!829993))

(assert (=> b!891578 m!829991))

(declare-fun m!829995 () Bool)

(assert (=> b!891578 m!829995))

(declare-fun m!829997 () Bool)

(assert (=> b!891578 m!829997))

(declare-fun m!829999 () Bool)

(assert (=> b!891578 m!829999))

(declare-fun m!830001 () Bool)

(assert (=> b!891578 m!830001))

(declare-fun m!830003 () Bool)

(assert (=> b!891584 m!830003))

(declare-fun m!830005 () Bool)

(assert (=> b!891582 m!830005))

(declare-fun m!830007 () Bool)

(assert (=> b!891583 m!830007))

(declare-fun m!830009 () Bool)

(assert (=> b!891583 m!830009))

(declare-fun m!830011 () Bool)

(assert (=> b!891586 m!830011))

(check-sat (not b!891582) (not b!891584) (not b!891578) b_and!26035 (not b!891586) (not b!891579) (not mapNonEmpty!28712) (not start!75834) (not b!891580) (not b_next!15777) tp_is_empty!18105 (not b!891583))
(check-sat b_and!26035 (not b_next!15777))
