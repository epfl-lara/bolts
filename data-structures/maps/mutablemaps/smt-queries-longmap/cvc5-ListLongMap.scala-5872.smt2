; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75790 () Bool)

(assert start!75790)

(declare-fun b!890817 () Bool)

(declare-fun b_free!15733 () Bool)

(declare-fun b_next!15733 () Bool)

(assert (=> b!890817 (= b_free!15733 (not b_next!15733))))

(declare-fun tp!55169 () Bool)

(declare-fun b_and!25991 () Bool)

(assert (=> b!890817 (= tp!55169 b_and!25991)))

(declare-fun b!890810 () Bool)

(declare-fun e!497007 () Bool)

(declare-fun e!497006 () Bool)

(assert (=> b!890810 (= e!497007 e!497006)))

(declare-fun res!603667 () Bool)

(assert (=> b!890810 (=> res!603667 e!497006)))

(declare-datatypes ((array!52088 0))(
  ( (array!52089 (arr!25046 (Array (_ BitVec 32) (_ BitVec 64))) (size!25491 (_ BitVec 32))) )
))
(declare-datatypes ((V!29047 0))(
  ( (V!29048 (val!9081 Int)) )
))
(declare-datatypes ((ValueCell!8549 0))(
  ( (ValueCellFull!8549 (v!11553 V!29047)) (EmptyCell!8549) )
))
(declare-datatypes ((array!52090 0))(
  ( (array!52091 (arr!25047 (Array (_ BitVec 32) ValueCell!8549)) (size!25492 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4114 0))(
  ( (LongMapFixedSize!4115 (defaultEntry!5254 Int) (mask!25732 (_ BitVec 32)) (extraKeys!4948 (_ BitVec 32)) (zeroValue!5052 V!29047) (minValue!5052 V!29047) (_size!2112 (_ BitVec 32)) (_keys!9933 array!52088) (_values!5239 array!52090) (_vacant!2112 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4114)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!890810 (= res!603667 (not (validMask!0 (mask!25732 thiss!1181))))))

(declare-fun key!785 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!52088 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!890810 (arrayContainsKey!0 (_keys!9933 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30297 0))(
  ( (Unit!30298) )
))
(declare-fun lt!402432 () Unit!30297)

(declare-datatypes ((SeekEntryResult!8806 0))(
  ( (MissingZero!8806 (index!37594 (_ BitVec 32))) (Found!8806 (index!37595 (_ BitVec 32))) (Intermediate!8806 (undefined!9618 Bool) (index!37596 (_ BitVec 32)) (x!75687 (_ BitVec 32))) (Undefined!8806) (MissingVacant!8806 (index!37597 (_ BitVec 32))) )
))
(declare-fun lt!402434 () SeekEntryResult!8806)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52088 (_ BitVec 64) (_ BitVec 32)) Unit!30297)

(assert (=> b!890810 (= lt!402432 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9933 thiss!1181) key!785 (index!37595 lt!402434)))))

(declare-fun b!890811 () Bool)

(declare-fun e!497008 () Bool)

(declare-fun e!497001 () Bool)

(declare-fun mapRes!28646 () Bool)

(assert (=> b!890811 (= e!497008 (and e!497001 mapRes!28646))))

(declare-fun condMapEmpty!28646 () Bool)

(declare-fun mapDefault!28646 () ValueCell!8549)

