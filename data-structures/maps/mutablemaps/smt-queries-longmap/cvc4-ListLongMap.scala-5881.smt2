; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75848 () Bool)

(assert start!75848)

(declare-fun b!891831 () Bool)

(declare-fun b_free!15791 () Bool)

(declare-fun b_next!15791 () Bool)

(assert (=> b!891831 (= b_free!15791 (not b_next!15791))))

(declare-fun tp!55342 () Bool)

(declare-fun b_and!26049 () Bool)

(assert (=> b!891831 (= tp!55342 b_and!26049)))

(declare-fun b!891829 () Bool)

(declare-fun res!604338 () Bool)

(declare-fun e!497784 () Bool)

(assert (=> b!891829 (=> res!604338 e!497784)))

(declare-datatypes ((array!52204 0))(
  ( (array!52205 (arr!25104 (Array (_ BitVec 32) (_ BitVec 64))) (size!25549 (_ BitVec 32))) )
))
(declare-datatypes ((V!29123 0))(
  ( (V!29124 (val!9110 Int)) )
))
(declare-datatypes ((ValueCell!8578 0))(
  ( (ValueCellFull!8578 (v!11582 V!29123)) (EmptyCell!8578) )
))
(declare-datatypes ((array!52206 0))(
  ( (array!52207 (arr!25105 (Array (_ BitVec 32) ValueCell!8578)) (size!25550 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4172 0))(
  ( (LongMapFixedSize!4173 (defaultEntry!5283 Int) (mask!25779 (_ BitVec 32)) (extraKeys!4977 (_ BitVec 32)) (zeroValue!5081 V!29123) (minValue!5081 V!29123) (_size!2141 (_ BitVec 32)) (_keys!9962 array!52204) (_values!5268 array!52206) (_vacant!2141 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4172)

(declare-datatypes ((List!17845 0))(
  ( (Nil!17842) (Cons!17841 (h!18972 (_ BitVec 64)) (t!25152 List!17845)) )
))
(declare-fun arrayNoDuplicates!0 (array!52204 (_ BitVec 32) List!17845) Bool)

(assert (=> b!891829 (= res!604338 (not (arrayNoDuplicates!0 (_keys!9962 thiss!1181) #b00000000000000000000000000000000 Nil!17842)))))

(declare-fun b!891830 () Bool)

(declare-fun e!497790 () Bool)

(declare-fun tp_is_empty!18119 () Bool)

(assert (=> b!891830 (= e!497790 tp_is_empty!18119)))

(declare-fun e!497792 () Bool)

(declare-fun e!497789 () Bool)

(declare-fun array_inv!19696 (array!52204) Bool)

(declare-fun array_inv!19697 (array!52206) Bool)

(assert (=> b!891831 (= e!497792 (and tp!55342 tp_is_empty!18119 (array_inv!19696 (_keys!9962 thiss!1181)) (array_inv!19697 (_values!5268 thiss!1181)) e!497789))))

(declare-fun mapIsEmpty!28733 () Bool)

(declare-fun mapRes!28733 () Bool)

(assert (=> mapIsEmpty!28733 mapRes!28733))

(declare-fun b!891832 () Bool)

(declare-fun e!497786 () Bool)

(assert (=> b!891832 (= e!497786 e!497784)))

(declare-fun res!604341 () Bool)

(assert (=> b!891832 (=> res!604341 e!497784)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!891832 (= res!604341 (not (validMask!0 (mask!25779 thiss!1181))))))

(declare-datatypes ((tuple2!11996 0))(
  ( (tuple2!11997 (_1!6008 (_ BitVec 64)) (_2!6008 V!29123)) )
))
(declare-datatypes ((List!17846 0))(
  ( (Nil!17843) (Cons!17842 (h!18973 tuple2!11996) (t!25153 List!17846)) )
))
(declare-datatypes ((ListLongMap!10707 0))(
  ( (ListLongMap!10708 (toList!5369 List!17846)) )
))
(declare-fun lt!402906 () ListLongMap!10707)

(declare-datatypes ((SeekEntryResult!8830 0))(
  ( (MissingZero!8830 (index!37690 (_ BitVec 32))) (Found!8830 (index!37691 (_ BitVec 32))) (Intermediate!8830 (undefined!9642 Bool) (index!37692 (_ BitVec 32)) (x!75783 (_ BitVec 32))) (Undefined!8830) (MissingVacant!8830 (index!37693 (_ BitVec 32))) )
))
(declare-fun lt!402905 () SeekEntryResult!8830)

(declare-fun contains!4346 (ListLongMap!10707 (_ BitVec 64)) Bool)

(assert (=> b!891832 (contains!4346 lt!402906 (select (arr!25104 (_keys!9962 thiss!1181)) (index!37691 lt!402905)))))

(declare-fun getCurrentListMap!2622 (array!52204 array!52206 (_ BitVec 32) (_ BitVec 32) V!29123 V!29123 (_ BitVec 32) Int) ListLongMap!10707)

(assert (=> b!891832 (= lt!402906 (getCurrentListMap!2622 (_keys!9962 thiss!1181) (_values!5268 thiss!1181) (mask!25779 thiss!1181) (extraKeys!4977 thiss!1181) (zeroValue!5081 thiss!1181) (minValue!5081 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5283 thiss!1181)))))

(declare-datatypes ((Unit!30343 0))(
  ( (Unit!30344) )
))
(declare-fun lt!402909 () Unit!30343)

(declare-fun lemmaValidKeyInArrayIsInListMap!215 (array!52204 array!52206 (_ BitVec 32) (_ BitVec 32) V!29123 V!29123 (_ BitVec 32) Int) Unit!30343)

(assert (=> b!891832 (= lt!402909 (lemmaValidKeyInArrayIsInListMap!215 (_keys!9962 thiss!1181) (_values!5268 thiss!1181) (mask!25779 thiss!1181) (extraKeys!4977 thiss!1181) (zeroValue!5081 thiss!1181) (minValue!5081 thiss!1181) (index!37691 lt!402905) (defaultEntry!5283 thiss!1181)))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52204 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!891832 (arrayContainsKey!0 (_keys!9962 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402908 () Unit!30343)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52204 (_ BitVec 64) (_ BitVec 32)) Unit!30343)

(assert (=> b!891832 (= lt!402908 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9962 thiss!1181) key!785 (index!37691 lt!402905)))))

(declare-fun res!604340 () Bool)

(declare-fun e!497785 () Bool)

(assert (=> start!75848 (=> (not res!604340) (not e!497785))))

(declare-fun valid!1602 (LongMapFixedSize!4172) Bool)

(assert (=> start!75848 (= res!604340 (valid!1602 thiss!1181))))

(assert (=> start!75848 e!497785))

(assert (=> start!75848 e!497792))

(assert (=> start!75848 true))

(declare-fun b!891833 () Bool)

(declare-fun res!604337 () Bool)

(assert (=> b!891833 (=> (not res!604337) (not e!497785))))

(assert (=> b!891833 (= res!604337 (not (= key!785 (bvneg key!785))))))

(declare-fun mapNonEmpty!28733 () Bool)

(declare-fun tp!55343 () Bool)

(declare-fun e!497791 () Bool)

(assert (=> mapNonEmpty!28733 (= mapRes!28733 (and tp!55343 e!497791))))

(declare-fun mapRest!28733 () (Array (_ BitVec 32) ValueCell!8578))

(declare-fun mapKey!28733 () (_ BitVec 32))

(declare-fun mapValue!28733 () ValueCell!8578)

(assert (=> mapNonEmpty!28733 (= (arr!25105 (_values!5268 thiss!1181)) (store mapRest!28733 mapKey!28733 mapValue!28733))))

(declare-fun b!891834 () Bool)

(declare-fun res!604342 () Bool)

(assert (=> b!891834 (=> res!604342 e!497784)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52204 (_ BitVec 32)) Bool)

(assert (=> b!891834 (= res!604342 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9962 thiss!1181) (mask!25779 thiss!1181))))))

(declare-fun b!891835 () Bool)

(declare-fun e!497788 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!891835 (= e!497788 (inRange!0 (index!37691 lt!402905) (mask!25779 thiss!1181)))))

(declare-fun b!891836 () Bool)

(assert (=> b!891836 (= e!497784 true)))

(declare-fun lt!402907 () Bool)

(assert (=> b!891836 (= lt!402907 (contains!4346 lt!402906 key!785))))

(declare-fun b!891837 () Bool)

(declare-fun res!604344 () Bool)

(assert (=> b!891837 (=> res!604344 e!497784)))

(assert (=> b!891837 (= res!604344 (or (not (= (size!25550 (_values!5268 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25779 thiss!1181)))) (not (= (size!25549 (_keys!9962 thiss!1181)) (size!25550 (_values!5268 thiss!1181)))) (bvslt (mask!25779 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4977 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4977 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!891838 () Bool)

(assert (=> b!891838 (= e!497791 tp_is_empty!18119)))

(declare-fun b!891839 () Bool)

(assert (=> b!891839 (= e!497789 (and e!497790 mapRes!28733))))

(declare-fun condMapEmpty!28733 () Bool)

(declare-fun mapDefault!28733 () ValueCell!8578)

