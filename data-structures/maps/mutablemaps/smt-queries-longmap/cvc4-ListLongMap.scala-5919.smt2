; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76836 () Bool)

(assert start!76836)

(declare-fun b!898338 () Bool)

(declare-fun b_free!16019 () Bool)

(declare-fun b_next!16019 () Bool)

(assert (=> b!898338 (= b_free!16019 (not b_next!16019))))

(declare-fun tp!56126 () Bool)

(declare-fun b_and!26331 () Bool)

(assert (=> b!898338 (= tp!56126 b_and!26331)))

(declare-fun b!898336 () Bool)

(declare-fun e!502576 () Bool)

(declare-datatypes ((array!52718 0))(
  ( (array!52719 (arr!25332 (Array (_ BitVec 32) (_ BitVec 64))) (size!25788 (_ BitVec 32))) )
))
(declare-datatypes ((V!29427 0))(
  ( (V!29428 (val!9224 Int)) )
))
(declare-datatypes ((ValueCell!8692 0))(
  ( (ValueCellFull!8692 (v!11712 V!29427)) (EmptyCell!8692) )
))
(declare-datatypes ((array!52720 0))(
  ( (array!52721 (arr!25333 (Array (_ BitVec 32) ValueCell!8692)) (size!25789 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4400 0))(
  ( (LongMapFixedSize!4401 (defaultEntry!5414 Int) (mask!26137 (_ BitVec 32)) (extraKeys!5130 (_ BitVec 32)) (zeroValue!5234 V!29427) (minValue!5234 V!29427) (_size!2255 (_ BitVec 32)) (_keys!10185 array!52718) (_values!5421 array!52720) (_vacant!2255 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4400)

(assert (=> b!898336 (= e!502576 (= (size!25789 (_values!5421 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26137 thiss!1181))))))

(declare-fun b!898337 () Bool)

(declare-fun res!607193 () Bool)

(declare-fun e!502574 () Bool)

(assert (=> b!898337 (=> (not res!607193) (not e!502574))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!898337 (= res!607193 (not (= key!785 (bvneg key!785))))))

(declare-fun tp_is_empty!18347 () Bool)

(declare-fun e!502575 () Bool)

(declare-fun e!502573 () Bool)

(declare-fun array_inv!19854 (array!52718) Bool)

(declare-fun array_inv!19855 (array!52720) Bool)

(assert (=> b!898338 (= e!502575 (and tp!56126 tp_is_empty!18347 (array_inv!19854 (_keys!10185 thiss!1181)) (array_inv!19855 (_values!5421 thiss!1181)) e!502573))))

(declare-fun b!898339 () Bool)

(declare-fun e!502571 () Bool)

(declare-datatypes ((SeekEntryResult!8914 0))(
  ( (MissingZero!8914 (index!38026 (_ BitVec 32))) (Found!8914 (index!38027 (_ BitVec 32))) (Intermediate!8914 (undefined!9726 Bool) (index!38028 (_ BitVec 32)) (x!76554 (_ BitVec 32))) (Undefined!8914) (MissingVacant!8914 (index!38029 (_ BitVec 32))) )
))
(declare-fun lt!405561 () SeekEntryResult!8914)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!898339 (= e!502571 (inRange!0 (index!38027 lt!405561) (mask!26137 thiss!1181)))))

(declare-fun b!898340 () Bool)

(declare-fun e!502572 () Bool)

(declare-fun mapRes!29175 () Bool)

(assert (=> b!898340 (= e!502573 (and e!502572 mapRes!29175))))

(declare-fun condMapEmpty!29175 () Bool)

(declare-fun mapDefault!29175 () ValueCell!8692)

