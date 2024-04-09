; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76498 () Bool)

(assert start!76498)

(declare-fun b!896374 () Bool)

(declare-fun b_free!15955 () Bool)

(declare-fun b_next!15955 () Bool)

(assert (=> b!896374 (= b_free!15955 (not b_next!15955))))

(declare-fun tp!55901 () Bool)

(declare-fun b_and!26265 () Bool)

(assert (=> b!896374 (= tp!55901 b_and!26265)))

(declare-fun b!896369 () Bool)

(declare-fun e!501083 () Bool)

(declare-datatypes ((SeekEntryResult!8887 0))(
  ( (MissingZero!8887 (index!37918 (_ BitVec 32))) (Found!8887 (index!37919 (_ BitVec 32))) (Intermediate!8887 (undefined!9699 Bool) (index!37920 (_ BitVec 32)) (x!76329 (_ BitVec 32))) (Undefined!8887) (MissingVacant!8887 (index!37921 (_ BitVec 32))) )
))
(declare-fun lt!404798 () SeekEntryResult!8887)

(declare-datatypes ((array!52570 0))(
  ( (array!52571 (arr!25268 (Array (_ BitVec 32) (_ BitVec 64))) (size!25720 (_ BitVec 32))) )
))
(declare-datatypes ((V!29343 0))(
  ( (V!29344 (val!9192 Int)) )
))
(declare-datatypes ((ValueCell!8660 0))(
  ( (ValueCellFull!8660 (v!11679 V!29343)) (EmptyCell!8660) )
))
(declare-datatypes ((array!52572 0))(
  ( (array!52573 (arr!25269 (Array (_ BitVec 32) ValueCell!8660)) (size!25721 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4336 0))(
  ( (LongMapFixedSize!4337 (defaultEntry!5380 Int) (mask!26019 (_ BitVec 32)) (extraKeys!5082 (_ BitVec 32)) (zeroValue!5186 V!29343) (minValue!5186 V!29343) (_size!2223 (_ BitVec 32)) (_keys!10111 array!52570) (_values!5373 array!52572) (_vacant!2223 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4336)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!896369 (= e!501083 (inRange!0 (index!37919 lt!404798) (mask!26019 thiss!1181)))))

(declare-fun b!896370 () Bool)

(declare-fun res!606201 () Bool)

(declare-fun e!501081 () Bool)

(assert (=> b!896370 (=> (not res!606201) (not e!501081))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!896370 (= res!606201 (not (= key!785 (bvneg key!785))))))

(declare-fun b!896371 () Bool)

(declare-fun e!501087 () Bool)

(declare-fun e!501086 () Bool)

(declare-fun mapRes!29045 () Bool)

(assert (=> b!896371 (= e!501087 (and e!501086 mapRes!29045))))

(declare-fun condMapEmpty!29045 () Bool)

(declare-fun mapDefault!29045 () ValueCell!8660)

