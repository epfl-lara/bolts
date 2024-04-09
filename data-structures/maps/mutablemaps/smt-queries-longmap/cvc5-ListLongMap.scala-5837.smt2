; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75416 () Bool)

(assert start!75416)

(declare-fun b!887544 () Bool)

(declare-fun b_free!15523 () Bool)

(declare-fun b_next!15523 () Bool)

(assert (=> b!887544 (= b_free!15523 (not b_next!15523))))

(declare-fun tp!54510 () Bool)

(declare-fun b_and!25777 () Bool)

(assert (=> b!887544 (= tp!54510 b_and!25777)))

(declare-fun b!887539 () Bool)

(declare-fun e!494347 () Bool)

(declare-fun e!494349 () Bool)

(declare-fun mapRes!28303 () Bool)

(assert (=> b!887539 (= e!494347 (and e!494349 mapRes!28303))))

(declare-fun condMapEmpty!28303 () Bool)

(declare-datatypes ((V!28767 0))(
  ( (V!28768 (val!8976 Int)) )
))
(declare-datatypes ((array!51652 0))(
  ( (array!51653 (arr!24836 (Array (_ BitVec 32) (_ BitVec 64))) (size!25277 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!8444 0))(
  ( (ValueCellFull!8444 (v!11432 V!28767)) (EmptyCell!8444) )
))
(declare-datatypes ((array!51654 0))(
  ( (array!51655 (arr!24837 (Array (_ BitVec 32) ValueCell!8444)) (size!25278 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3904 0))(
  ( (LongMapFixedSize!3905 (defaultEntry!5143 Int) (mask!25538 (_ BitVec 32)) (extraKeys!4837 (_ BitVec 32)) (zeroValue!4941 V!28767) (minValue!4941 V!28767) (_size!2007 (_ BitVec 32)) (_keys!9816 array!51652) (_values!5128 array!51654) (_vacant!2007 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1058 0))(
  ( (Cell!1059 (v!11433 LongMapFixedSize!3904)) )
))
(declare-datatypes ((LongMap!1058 0))(
  ( (LongMap!1059 (underlying!540 Cell!1058)) )
))
(declare-fun thiss!821 () LongMap!1058)

(declare-fun mapDefault!28303 () ValueCell!8444)

