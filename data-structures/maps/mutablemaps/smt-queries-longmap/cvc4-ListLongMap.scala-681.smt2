; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16606 () Bool)

(assert start!16606)

(declare-fun b!165430 () Bool)

(declare-fun b_free!3899 () Bool)

(declare-fun b_next!3899 () Bool)

(assert (=> b!165430 (= b_free!3899 (not b_next!3899))))

(declare-fun tp!14298 () Bool)

(declare-fun b_and!10331 () Bool)

(assert (=> b!165430 (= tp!14298 b_and!10331)))

(declare-fun b!165426 () Bool)

(declare-fun res!78508 () Bool)

(declare-fun e!108527 () Bool)

(assert (=> b!165426 (=> (not res!78508) (not e!108527))))

(declare-datatypes ((V!4581 0))(
  ( (V!4582 (val!1895 Int)) )
))
(declare-datatypes ((ValueCell!1507 0))(
  ( (ValueCellFull!1507 (v!3756 V!4581)) (EmptyCell!1507) )
))
(declare-datatypes ((array!6498 0))(
  ( (array!6499 (arr!3084 (Array (_ BitVec 32) (_ BitVec 64))) (size!3372 (_ BitVec 32))) )
))
(declare-datatypes ((array!6500 0))(
  ( (array!6501 (arr!3085 (Array (_ BitVec 32) ValueCell!1507)) (size!3373 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1922 0))(
  ( (LongMapFixedSize!1923 (defaultEntry!3403 Int) (mask!8114 (_ BitVec 32)) (extraKeys!3144 (_ BitVec 32)) (zeroValue!3246 V!4581) (minValue!3246 V!4581) (_size!1010 (_ BitVec 32)) (_keys!5228 array!6498) (_values!3386 array!6500) (_vacant!1010 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1922)

(assert (=> b!165426 (= res!78508 (and (= (size!3373 (_values!3386 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8114 thiss!1248))) (= (size!3372 (_keys!5228 thiss!1248)) (size!3373 (_values!3386 thiss!1248))) (bvsge (mask!8114 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3144 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3144 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!165427 () Bool)

(declare-fun e!108524 () Bool)

(declare-fun tp_is_empty!3701 () Bool)

(assert (=> b!165427 (= e!108524 tp_is_empty!3701)))

(declare-fun b!165428 () Bool)

(assert (=> b!165428 (= e!108527 false)))

(declare-fun lt!83099 () Bool)

(declare-datatypes ((List!2075 0))(
  ( (Nil!2072) (Cons!2071 (h!2688 (_ BitVec 64)) (t!6885 List!2075)) )
))
(declare-fun arrayNoDuplicates!0 (array!6498 (_ BitVec 32) List!2075) Bool)

(assert (=> b!165428 (= lt!83099 (arrayNoDuplicates!0 (_keys!5228 thiss!1248) #b00000000000000000000000000000000 Nil!2072))))

(declare-fun b!165429 () Bool)

(declare-fun e!108526 () Bool)

(declare-fun mapRes!6270 () Bool)

(assert (=> b!165429 (= e!108526 (and e!108524 mapRes!6270))))

(declare-fun condMapEmpty!6270 () Bool)

(declare-fun mapDefault!6270 () ValueCell!1507)

