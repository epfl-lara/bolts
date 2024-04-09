; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75838 () Bool)

(assert start!75838)

(declare-fun b!891652 () Bool)

(declare-fun b_free!15781 () Bool)

(declare-fun b_next!15781 () Bool)

(assert (=> b!891652 (= b_free!15781 (not b_next!15781))))

(declare-fun tp!55312 () Bool)

(declare-fun b_and!26039 () Bool)

(assert (=> b!891652 (= tp!55312 b_and!26039)))

(declare-fun b!891649 () Bool)

(declare-fun res!604221 () Bool)

(declare-fun e!497651 () Bool)

(assert (=> b!891649 (=> res!604221 e!497651)))

(declare-datatypes ((array!52184 0))(
  ( (array!52185 (arr!25094 (Array (_ BitVec 32) (_ BitVec 64))) (size!25539 (_ BitVec 32))) )
))
(declare-datatypes ((V!29111 0))(
  ( (V!29112 (val!9105 Int)) )
))
(declare-datatypes ((ValueCell!8573 0))(
  ( (ValueCellFull!8573 (v!11577 V!29111)) (EmptyCell!8573) )
))
(declare-datatypes ((array!52186 0))(
  ( (array!52187 (arr!25095 (Array (_ BitVec 32) ValueCell!8573)) (size!25540 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4162 0))(
  ( (LongMapFixedSize!4163 (defaultEntry!5278 Int) (mask!25772 (_ BitVec 32)) (extraKeys!4972 (_ BitVec 32)) (zeroValue!5076 V!29111) (minValue!5076 V!29111) (_size!2136 (_ BitVec 32)) (_keys!9957 array!52184) (_values!5263 array!52186) (_vacant!2136 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4162)

(assert (=> b!891649 (= res!604221 (or (not (= (size!25540 (_values!5263 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25772 thiss!1181)))) (not (= (size!25539 (_keys!9957 thiss!1181)) (size!25540 (_values!5263 thiss!1181)))) (bvslt (mask!25772 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4972 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4972 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!891650 () Bool)

(declare-fun e!497657 () Bool)

(declare-datatypes ((SeekEntryResult!8825 0))(
  ( (MissingZero!8825 (index!37670 (_ BitVec 32))) (Found!8825 (index!37671 (_ BitVec 32))) (Intermediate!8825 (undefined!9637 Bool) (index!37672 (_ BitVec 32)) (x!75770 (_ BitVec 32))) (Undefined!8825) (MissingVacant!8825 (index!37673 (_ BitVec 32))) )
))
(declare-fun lt!402817 () SeekEntryResult!8825)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!891650 (= e!497657 (inRange!0 (index!37671 lt!402817) (mask!25772 thiss!1181)))))

(declare-fun b!891651 () Bool)

(declare-fun e!497654 () Bool)

(assert (=> b!891651 (= e!497654 e!497651)))

(declare-fun res!604223 () Bool)

(assert (=> b!891651 (=> res!604223 e!497651)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!891651 (= res!604223 (not (validMask!0 (mask!25772 thiss!1181))))))

(declare-datatypes ((tuple2!11986 0))(
  ( (tuple2!11987 (_1!6003 (_ BitVec 64)) (_2!6003 V!29111)) )
))
(declare-datatypes ((List!17836 0))(
  ( (Nil!17833) (Cons!17832 (h!18963 tuple2!11986) (t!25143 List!17836)) )
))
(declare-datatypes ((ListLongMap!10697 0))(
  ( (ListLongMap!10698 (toList!5364 List!17836)) )
))
(declare-fun lt!402818 () ListLongMap!10697)

(declare-fun contains!4341 (ListLongMap!10697 (_ BitVec 64)) Bool)

(assert (=> b!891651 (contains!4341 lt!402818 (select (arr!25094 (_keys!9957 thiss!1181)) (index!37671 lt!402817)))))

(declare-fun getCurrentListMap!2617 (array!52184 array!52186 (_ BitVec 32) (_ BitVec 32) V!29111 V!29111 (_ BitVec 32) Int) ListLongMap!10697)

(assert (=> b!891651 (= lt!402818 (getCurrentListMap!2617 (_keys!9957 thiss!1181) (_values!5263 thiss!1181) (mask!25772 thiss!1181) (extraKeys!4972 thiss!1181) (zeroValue!5076 thiss!1181) (minValue!5076 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5278 thiss!1181)))))

(declare-datatypes ((Unit!30333 0))(
  ( (Unit!30334) )
))
(declare-fun lt!402816 () Unit!30333)

(declare-fun lemmaValidKeyInArrayIsInListMap!210 (array!52184 array!52186 (_ BitVec 32) (_ BitVec 32) V!29111 V!29111 (_ BitVec 32) Int) Unit!30333)

(assert (=> b!891651 (= lt!402816 (lemmaValidKeyInArrayIsInListMap!210 (_keys!9957 thiss!1181) (_values!5263 thiss!1181) (mask!25772 thiss!1181) (extraKeys!4972 thiss!1181) (zeroValue!5076 thiss!1181) (minValue!5076 thiss!1181) (index!37671 lt!402817) (defaultEntry!5278 thiss!1181)))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52184 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!891651 (arrayContainsKey!0 (_keys!9957 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402815 () Unit!30333)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52184 (_ BitVec 64) (_ BitVec 32)) Unit!30333)

(assert (=> b!891651 (= lt!402815 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9957 thiss!1181) key!785 (index!37671 lt!402817)))))

(declare-fun res!604222 () Bool)

(declare-fun e!497653 () Bool)

(assert (=> start!75838 (=> (not res!604222) (not e!497653))))

(declare-fun valid!1599 (LongMapFixedSize!4162) Bool)

(assert (=> start!75838 (= res!604222 (valid!1599 thiss!1181))))

(assert (=> start!75838 e!497653))

(declare-fun e!497652 () Bool)

(assert (=> start!75838 e!497652))

(assert (=> start!75838 true))

(declare-fun tp_is_empty!18109 () Bool)

(declare-fun e!497656 () Bool)

(declare-fun array_inv!19686 (array!52184) Bool)

(declare-fun array_inv!19687 (array!52186) Bool)

(assert (=> b!891652 (= e!497652 (and tp!55312 tp_is_empty!18109 (array_inv!19686 (_keys!9957 thiss!1181)) (array_inv!19687 (_values!5263 thiss!1181)) e!497656))))

(declare-fun b!891653 () Bool)

(assert (=> b!891653 (= e!497651 true)))

(declare-fun lt!402814 () Bool)

(assert (=> b!891653 (= lt!402814 (contains!4341 lt!402818 key!785))))

(declare-fun b!891654 () Bool)

(declare-fun res!604218 () Bool)

(assert (=> b!891654 (=> res!604218 e!497651)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52184 (_ BitVec 32)) Bool)

(assert (=> b!891654 (= res!604218 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9957 thiss!1181) (mask!25772 thiss!1181))))))

(declare-fun b!891655 () Bool)

(declare-fun e!497650 () Bool)

(assert (=> b!891655 (= e!497650 tp_is_empty!18109)))

(declare-fun b!891656 () Bool)

(declare-fun e!497649 () Bool)

(declare-fun mapRes!28718 () Bool)

(assert (=> b!891656 (= e!497656 (and e!497649 mapRes!28718))))

(declare-fun condMapEmpty!28718 () Bool)

(declare-fun mapDefault!28718 () ValueCell!8573)

