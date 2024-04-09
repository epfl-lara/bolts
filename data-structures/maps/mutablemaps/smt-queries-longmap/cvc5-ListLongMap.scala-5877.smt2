; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75820 () Bool)

(assert start!75820)

(declare-fun b!891333 () Bool)

(declare-fun b_free!15763 () Bool)

(declare-fun b_next!15763 () Bool)

(assert (=> b!891333 (= b_free!15763 (not b_next!15763))))

(declare-fun tp!55259 () Bool)

(declare-fun b_and!26021 () Bool)

(assert (=> b!891333 (= tp!55259 b_and!26021)))

(declare-fun b!891325 () Bool)

(declare-fun e!497412 () Bool)

(declare-fun tp_is_empty!18091 () Bool)

(assert (=> b!891325 (= e!497412 tp_is_empty!18091)))

(declare-fun b!891326 () Bool)

(declare-fun res!604008 () Bool)

(declare-fun e!497409 () Bool)

(assert (=> b!891326 (=> res!604008 e!497409)))

(declare-datatypes ((array!52148 0))(
  ( (array!52149 (arr!25076 (Array (_ BitVec 32) (_ BitVec 64))) (size!25521 (_ BitVec 32))) )
))
(declare-datatypes ((V!29087 0))(
  ( (V!29088 (val!9096 Int)) )
))
(declare-datatypes ((ValueCell!8564 0))(
  ( (ValueCellFull!8564 (v!11568 V!29087)) (EmptyCell!8564) )
))
(declare-datatypes ((array!52150 0))(
  ( (array!52151 (arr!25077 (Array (_ BitVec 32) ValueCell!8564)) (size!25522 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4144 0))(
  ( (LongMapFixedSize!4145 (defaultEntry!5269 Int) (mask!25757 (_ BitVec 32)) (extraKeys!4963 (_ BitVec 32)) (zeroValue!5067 V!29087) (minValue!5067 V!29087) (_size!2127 (_ BitVec 32)) (_keys!9948 array!52148) (_values!5254 array!52150) (_vacant!2127 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4144)

(declare-datatypes ((List!17825 0))(
  ( (Nil!17822) (Cons!17821 (h!18952 (_ BitVec 64)) (t!25132 List!17825)) )
))
(declare-fun arrayNoDuplicates!0 (array!52148 (_ BitVec 32) List!17825) Bool)

(assert (=> b!891326 (= res!604008 (not (arrayNoDuplicates!0 (_keys!9948 thiss!1181) #b00000000000000000000000000000000 Nil!17822)))))

(declare-fun b!891327 () Bool)

(assert (=> b!891327 (= e!497409 true)))

(declare-fun lt!402657 () Bool)

(declare-datatypes ((tuple2!11972 0))(
  ( (tuple2!11973 (_1!5996 (_ BitVec 64)) (_2!5996 V!29087)) )
))
(declare-datatypes ((List!17826 0))(
  ( (Nil!17823) (Cons!17822 (h!18953 tuple2!11972) (t!25133 List!17826)) )
))
(declare-datatypes ((ListLongMap!10683 0))(
  ( (ListLongMap!10684 (toList!5357 List!17826)) )
))
(declare-fun lt!402656 () ListLongMap!10683)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun contains!4334 (ListLongMap!10683 (_ BitVec 64)) Bool)

(assert (=> b!891327 (= lt!402657 (contains!4334 lt!402656 key!785))))

(declare-fun mapNonEmpty!28691 () Bool)

(declare-fun mapRes!28691 () Bool)

(declare-fun tp!55258 () Bool)

(declare-fun e!497406 () Bool)

(assert (=> mapNonEmpty!28691 (= mapRes!28691 (and tp!55258 e!497406))))

(declare-fun mapKey!28691 () (_ BitVec 32))

(declare-fun mapValue!28691 () ValueCell!8564)

(declare-fun mapRest!28691 () (Array (_ BitVec 32) ValueCell!8564))

(assert (=> mapNonEmpty!28691 (= (arr!25077 (_values!5254 thiss!1181)) (store mapRest!28691 mapKey!28691 mapValue!28691))))

(declare-fun b!891328 () Bool)

(declare-fun res!604006 () Bool)

(declare-fun e!497407 () Bool)

(assert (=> b!891328 (=> (not res!604006) (not e!497407))))

(assert (=> b!891328 (= res!604006 (not (= key!785 (bvneg key!785))))))

(declare-fun b!891329 () Bool)

(declare-fun e!497413 () Bool)

(assert (=> b!891329 (= e!497413 e!497409)))

(declare-fun res!604007 () Bool)

(assert (=> b!891329 (=> res!604007 e!497409)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!891329 (= res!604007 (not (validMask!0 (mask!25757 thiss!1181))))))

(declare-datatypes ((SeekEntryResult!8819 0))(
  ( (MissingZero!8819 (index!37646 (_ BitVec 32))) (Found!8819 (index!37647 (_ BitVec 32))) (Intermediate!8819 (undefined!9631 Bool) (index!37648 (_ BitVec 32)) (x!75740 (_ BitVec 32))) (Undefined!8819) (MissingVacant!8819 (index!37649 (_ BitVec 32))) )
))
(declare-fun lt!402655 () SeekEntryResult!8819)

(assert (=> b!891329 (contains!4334 lt!402656 (select (arr!25076 (_keys!9948 thiss!1181)) (index!37647 lt!402655)))))

(declare-fun getCurrentListMap!2611 (array!52148 array!52150 (_ BitVec 32) (_ BitVec 32) V!29087 V!29087 (_ BitVec 32) Int) ListLongMap!10683)

(assert (=> b!891329 (= lt!402656 (getCurrentListMap!2611 (_keys!9948 thiss!1181) (_values!5254 thiss!1181) (mask!25757 thiss!1181) (extraKeys!4963 thiss!1181) (zeroValue!5067 thiss!1181) (minValue!5067 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5269 thiss!1181)))))

(declare-datatypes ((Unit!30321 0))(
  ( (Unit!30322) )
))
(declare-fun lt!402654 () Unit!30321)

(declare-fun lemmaValidKeyInArrayIsInListMap!204 (array!52148 array!52150 (_ BitVec 32) (_ BitVec 32) V!29087 V!29087 (_ BitVec 32) Int) Unit!30321)

(assert (=> b!891329 (= lt!402654 (lemmaValidKeyInArrayIsInListMap!204 (_keys!9948 thiss!1181) (_values!5254 thiss!1181) (mask!25757 thiss!1181) (extraKeys!4963 thiss!1181) (zeroValue!5067 thiss!1181) (minValue!5067 thiss!1181) (index!37647 lt!402655) (defaultEntry!5269 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52148 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!891329 (arrayContainsKey!0 (_keys!9948 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402653 () Unit!30321)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52148 (_ BitVec 64) (_ BitVec 32)) Unit!30321)

(assert (=> b!891329 (= lt!402653 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9948 thiss!1181) key!785 (index!37647 lt!402655)))))

(declare-fun b!891330 () Bool)

(declare-fun res!604003 () Bool)

(assert (=> b!891330 (=> res!604003 e!497409)))

(assert (=> b!891330 (= res!604003 (or (not (= (size!25522 (_values!5254 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25757 thiss!1181)))) (not (= (size!25521 (_keys!9948 thiss!1181)) (size!25522 (_values!5254 thiss!1181)))) (bvslt (mask!25757 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4963 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4963 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!891331 () Bool)

(declare-fun e!497410 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!891331 (= e!497410 (inRange!0 (index!37647 lt!402655) (mask!25757 thiss!1181)))))

(declare-fun b!891332 () Bool)

(assert (=> b!891332 (= e!497407 (not e!497413))))

(declare-fun res!604004 () Bool)

(assert (=> b!891332 (=> res!604004 e!497413)))

(assert (=> b!891332 (= res!604004 (not (is-Found!8819 lt!402655)))))

(assert (=> b!891332 e!497410))

(declare-fun res!604001 () Bool)

(assert (=> b!891332 (=> res!604001 e!497410)))

(assert (=> b!891332 (= res!604001 (not (is-Found!8819 lt!402655)))))

(declare-fun lt!402652 () Unit!30321)

(declare-fun lemmaSeekEntryGivesInRangeIndex!39 (array!52148 array!52150 (_ BitVec 32) (_ BitVec 32) V!29087 V!29087 (_ BitVec 64)) Unit!30321)

(assert (=> b!891332 (= lt!402652 (lemmaSeekEntryGivesInRangeIndex!39 (_keys!9948 thiss!1181) (_values!5254 thiss!1181) (mask!25757 thiss!1181) (extraKeys!4963 thiss!1181) (zeroValue!5067 thiss!1181) (minValue!5067 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52148 (_ BitVec 32)) SeekEntryResult!8819)

(assert (=> b!891332 (= lt!402655 (seekEntry!0 key!785 (_keys!9948 thiss!1181) (mask!25757 thiss!1181)))))

(declare-fun e!497411 () Bool)

(declare-fun e!497414 () Bool)

(declare-fun array_inv!19676 (array!52148) Bool)

(declare-fun array_inv!19677 (array!52150) Bool)

(assert (=> b!891333 (= e!497414 (and tp!55259 tp_is_empty!18091 (array_inv!19676 (_keys!9948 thiss!1181)) (array_inv!19677 (_values!5254 thiss!1181)) e!497411))))

(declare-fun res!604002 () Bool)

(assert (=> start!75820 (=> (not res!604002) (not e!497407))))

(declare-fun valid!1595 (LongMapFixedSize!4144) Bool)

(assert (=> start!75820 (= res!604002 (valid!1595 thiss!1181))))

(assert (=> start!75820 e!497407))

(assert (=> start!75820 e!497414))

(assert (=> start!75820 true))

(declare-fun b!891334 () Bool)

(assert (=> b!891334 (= e!497406 tp_is_empty!18091)))

(declare-fun mapIsEmpty!28691 () Bool)

(assert (=> mapIsEmpty!28691 mapRes!28691))

(declare-fun b!891335 () Bool)

(declare-fun res!604005 () Bool)

(assert (=> b!891335 (=> res!604005 e!497409)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52148 (_ BitVec 32)) Bool)

(assert (=> b!891335 (= res!604005 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9948 thiss!1181) (mask!25757 thiss!1181))))))

(declare-fun b!891336 () Bool)

(assert (=> b!891336 (= e!497411 (and e!497412 mapRes!28691))))

(declare-fun condMapEmpty!28691 () Bool)

(declare-fun mapDefault!28691 () ValueCell!8564)

