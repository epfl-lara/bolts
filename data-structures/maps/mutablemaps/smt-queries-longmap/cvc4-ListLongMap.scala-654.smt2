; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16288 () Bool)

(assert start!16288)

(declare-fun b!162331 () Bool)

(declare-fun b_free!3737 () Bool)

(declare-fun b_next!3737 () Bool)

(assert (=> b!162331 (= b_free!3737 (not b_next!3737))))

(declare-fun tp!13781 () Bool)

(declare-fun b_and!10169 () Bool)

(assert (=> b!162331 (= tp!13781 b_and!10169)))

(declare-fun res!76886 () Bool)

(declare-fun e!106369 () Bool)

(assert (=> start!16288 (=> (not res!76886) (not e!106369))))

(declare-datatypes ((V!4365 0))(
  ( (V!4366 (val!1814 Int)) )
))
(declare-datatypes ((ValueCell!1426 0))(
  ( (ValueCellFull!1426 (v!3675 V!4365)) (EmptyCell!1426) )
))
(declare-datatypes ((array!6156 0))(
  ( (array!6157 (arr!2922 (Array (_ BitVec 32) (_ BitVec 64))) (size!3206 (_ BitVec 32))) )
))
(declare-datatypes ((array!6158 0))(
  ( (array!6159 (arr!2923 (Array (_ BitVec 32) ValueCell!1426)) (size!3207 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1760 0))(
  ( (LongMapFixedSize!1761 (defaultEntry!3322 Int) (mask!7942 (_ BitVec 32)) (extraKeys!3063 (_ BitVec 32)) (zeroValue!3165 V!4365) (minValue!3165 V!4365) (_size!929 (_ BitVec 32)) (_keys!5123 array!6156) (_values!3305 array!6158) (_vacant!929 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1760)

(declare-fun valid!788 (LongMapFixedSize!1760) Bool)

(assert (=> start!16288 (= res!76886 (valid!788 thiss!1248))))

(assert (=> start!16288 e!106369))

(declare-fun e!106372 () Bool)

(assert (=> start!16288 e!106372))

(assert (=> start!16288 true))

(declare-fun b!162327 () Bool)

(declare-fun e!106373 () Bool)

(declare-fun e!106371 () Bool)

(declare-fun mapRes!5996 () Bool)

(assert (=> b!162327 (= e!106373 (and e!106371 mapRes!5996))))

(declare-fun condMapEmpty!5996 () Bool)

(declare-fun mapDefault!5996 () ValueCell!1426)

