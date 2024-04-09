; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16822 () Bool)

(assert start!16822)

(declare-fun b!169385 () Bool)

(declare-fun b_free!4131 () Bool)

(declare-fun b_next!4131 () Bool)

(assert (=> b!169385 (= b_free!4131 (not b_next!4131))))

(declare-fun tp!15000 () Bool)

(declare-fun b_and!10563 () Bool)

(assert (=> b!169385 (= tp!15000 b_and!10563)))

(declare-fun b!169381 () Bool)

(declare-fun b_free!4133 () Bool)

(declare-fun b_next!4133 () Bool)

(assert (=> b!169381 (= b_free!4133 (not b_next!4133))))

(declare-fun tp!14997 () Bool)

(declare-fun b_and!10565 () Bool)

(assert (=> b!169381 (= tp!14997 b_and!10565)))

(declare-fun b!169375 () Bool)

(declare-fun res!80589 () Bool)

(declare-fun e!111616 () Bool)

(assert (=> b!169375 (=> (not res!80589) (not e!111616))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!169375 (= res!80589 (not (= key!828 (bvneg key!828))))))

(declare-fun b!169376 () Bool)

(declare-fun e!111615 () Bool)

(declare-fun e!111625 () Bool)

(declare-fun mapRes!6620 () Bool)

(assert (=> b!169376 (= e!111615 (and e!111625 mapRes!6620))))

(declare-fun condMapEmpty!6621 () Bool)

(declare-datatypes ((V!4869 0))(
  ( (V!4870 (val!2003 Int)) )
))
(declare-datatypes ((ValueCell!1615 0))(
  ( (ValueCellFull!1615 (v!3864 V!4869)) (EmptyCell!1615) )
))
(declare-datatypes ((array!6930 0))(
  ( (array!6931 (arr!3300 (Array (_ BitVec 32) (_ BitVec 64))) (size!3588 (_ BitVec 32))) )
))
(declare-datatypes ((array!6932 0))(
  ( (array!6933 (arr!3301 (Array (_ BitVec 32) ValueCell!1615)) (size!3589 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2138 0))(
  ( (LongMapFixedSize!2139 (defaultEntry!3511 Int) (mask!8294 (_ BitVec 32)) (extraKeys!3252 (_ BitVec 32)) (zeroValue!3354 V!4869) (minValue!3354 V!4869) (_size!1118 (_ BitVec 32)) (_keys!5336 array!6930) (_values!3494 array!6932) (_vacant!1118 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!3214 0))(
  ( (tuple2!3215 (_1!1617 Bool) (_2!1617 LongMapFixedSize!2138)) )
))
(declare-fun err!71 () tuple2!3214)

(declare-fun mapDefault!6621 () ValueCell!1615)

