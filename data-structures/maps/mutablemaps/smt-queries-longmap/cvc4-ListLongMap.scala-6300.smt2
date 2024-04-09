; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80616 () Bool)

(assert start!80616)

(declare-fun b!945832 () Bool)

(declare-fun b_free!18125 () Bool)

(declare-fun b_next!18125 () Bool)

(assert (=> b!945832 (= b_free!18125 (not b_next!18125))))

(declare-fun tp!62907 () Bool)

(declare-fun b_and!29565 () Bool)

(assert (=> b!945832 (= tp!62907 b_and!29565)))

(declare-fun b!945829 () Bool)

(declare-fun e!532130 () Bool)

(declare-fun e!532129 () Bool)

(assert (=> b!945829 (= e!532130 e!532129)))

(declare-fun res!635192 () Bool)

(assert (=> b!945829 (=> (not res!635192) (not e!532129))))

(declare-datatypes ((SeekEntryResult!9087 0))(
  ( (MissingZero!9087 (index!38718 (_ BitVec 32))) (Found!9087 (index!38719 (_ BitVec 32))) (Intermediate!9087 (undefined!9899 Bool) (index!38720 (_ BitVec 32)) (x!81300 (_ BitVec 32))) (Undefined!9087) (MissingVacant!9087 (index!38721 (_ BitVec 32))) )
))
(declare-fun lt!426100 () SeekEntryResult!9087)

(assert (=> b!945829 (= res!635192 (is-Found!9087 lt!426100))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32475 0))(
  ( (V!32476 (val!10367 Int)) )
))
(declare-datatypes ((ValueCell!9835 0))(
  ( (ValueCellFull!9835 (v!12901 V!32475)) (EmptyCell!9835) )
))
(declare-datatypes ((array!57268 0))(
  ( (array!57269 (arr!27549 (Array (_ BitVec 32) ValueCell!9835)) (size!28019 (_ BitVec 32))) )
))
(declare-datatypes ((array!57270 0))(
  ( (array!57271 (arr!27550 (Array (_ BitVec 32) (_ BitVec 64))) (size!28020 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4820 0))(
  ( (LongMapFixedSize!4821 (defaultEntry!5707 Int) (mask!27385 (_ BitVec 32)) (extraKeys!5439 (_ BitVec 32)) (zeroValue!5543 V!32475) (minValue!5543 V!32475) (_size!2465 (_ BitVec 32)) (_keys!10590 array!57270) (_values!5730 array!57268) (_vacant!2465 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4820)

(declare-fun seekEntry!0 ((_ BitVec 64) array!57270 (_ BitVec 32)) SeekEntryResult!9087)

(assert (=> b!945829 (= lt!426100 (seekEntry!0 key!756 (_keys!10590 thiss!1141) (mask!27385 thiss!1141)))))

(declare-fun b!945830 () Bool)

(declare-fun e!532128 () Bool)

(declare-fun e!532131 () Bool)

(declare-fun mapRes!32796 () Bool)

(assert (=> b!945830 (= e!532128 (and e!532131 mapRes!32796))))

(declare-fun condMapEmpty!32796 () Bool)

(declare-fun mapDefault!32796 () ValueCell!9835)

