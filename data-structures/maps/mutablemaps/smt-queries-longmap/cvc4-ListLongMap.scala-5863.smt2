; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75740 () Bool)

(assert start!75740)

(declare-fun b!890026 () Bool)

(declare-fun b_free!15683 () Bool)

(declare-fun b_next!15683 () Bool)

(assert (=> b!890026 (= b_free!15683 (not b_next!15683))))

(declare-fun tp!55019 () Bool)

(declare-fun b_and!25941 () Bool)

(assert (=> b!890026 (= tp!55019 b_and!25941)))

(declare-fun b!890025 () Bool)

(declare-fun e!496346 () Bool)

(declare-datatypes ((SeekEntryResult!8785 0))(
  ( (MissingZero!8785 (index!37510 (_ BitVec 32))) (Found!8785 (index!37511 (_ BitVec 32))) (Intermediate!8785 (undefined!9597 Bool) (index!37512 (_ BitVec 32)) (x!75594 (_ BitVec 32))) (Undefined!8785) (MissingVacant!8785 (index!37513 (_ BitVec 32))) )
))
(declare-fun lt!402152 () SeekEntryResult!8785)

(declare-datatypes ((array!51988 0))(
  ( (array!51989 (arr!24996 (Array (_ BitVec 32) (_ BitVec 64))) (size!25441 (_ BitVec 32))) )
))
(declare-datatypes ((V!28979 0))(
  ( (V!28980 (val!9056 Int)) )
))
(declare-datatypes ((ValueCell!8524 0))(
  ( (ValueCellFull!8524 (v!11528 V!28979)) (EmptyCell!8524) )
))
(declare-datatypes ((array!51990 0))(
  ( (array!51991 (arr!24997 (Array (_ BitVec 32) ValueCell!8524)) (size!25442 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4064 0))(
  ( (LongMapFixedSize!4065 (defaultEntry!5229 Int) (mask!25689 (_ BitVec 32)) (extraKeys!4923 (_ BitVec 32)) (zeroValue!5027 V!28979) (minValue!5027 V!28979) (_size!2087 (_ BitVec 32)) (_keys!9908 array!51988) (_values!5214 array!51990) (_vacant!2087 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4064)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!890025 (= e!496346 (inRange!0 (index!37511 lt!402152) (mask!25689 thiss!1181)))))

(declare-fun mapIsEmpty!28571 () Bool)

(declare-fun mapRes!28571 () Bool)

(assert (=> mapIsEmpty!28571 mapRes!28571))

(declare-fun e!496351 () Bool)

(declare-fun e!496348 () Bool)

(declare-fun tp_is_empty!18011 () Bool)

(declare-fun array_inv!19628 (array!51988) Bool)

(declare-fun array_inv!19629 (array!51990) Bool)

(assert (=> b!890026 (= e!496348 (and tp!55019 tp_is_empty!18011 (array_inv!19628 (_keys!9908 thiss!1181)) (array_inv!19629 (_values!5214 thiss!1181)) e!496351))))

(declare-fun b!890027 () Bool)

(declare-fun e!496349 () Bool)

(assert (=> b!890027 (= e!496351 (and e!496349 mapRes!28571))))

(declare-fun condMapEmpty!28571 () Bool)

(declare-fun mapDefault!28571 () ValueCell!8524)

