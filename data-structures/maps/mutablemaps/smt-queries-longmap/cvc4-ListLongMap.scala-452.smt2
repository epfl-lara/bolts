; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8340 () Bool)

(assert start!8340)

(declare-fun b!54997 () Bool)

(declare-fun b_free!1821 () Bool)

(declare-fun b_next!1821 () Bool)

(assert (=> b!54997 (= b_free!1821 (not b_next!1821))))

(declare-fun tp!7564 () Bool)

(declare-fun b_and!3193 () Bool)

(assert (=> b!54997 (= tp!7564 b_and!3193)))

(declare-fun b!54986 () Bool)

(declare-fun b_free!1823 () Bool)

(declare-fun b_next!1823 () Bool)

(assert (=> b!54986 (= b_free!1823 (not b_next!1823))))

(declare-fun tp!7563 () Bool)

(declare-fun b_and!3195 () Bool)

(assert (=> b!54986 (= tp!7563 b_and!3195)))

(declare-fun b!54984 () Bool)

(declare-fun e!36038 () Bool)

(declare-fun e!36033 () Bool)

(declare-fun mapRes!2652 () Bool)

(assert (=> b!54984 (= e!36038 (and e!36033 mapRes!2652))))

(declare-fun condMapEmpty!2652 () Bool)

(declare-datatypes ((V!2749 0))(
  ( (V!2750 (val!1208 Int)) )
))
(declare-datatypes ((array!3576 0))(
  ( (array!3577 (arr!1710 (Array (_ BitVec 32) (_ BitVec 64))) (size!1939 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!820 0))(
  ( (ValueCellFull!820 (v!2298 V!2749)) (EmptyCell!820) )
))
(declare-datatypes ((array!3578 0))(
  ( (array!3579 (arr!1711 (Array (_ BitVec 32) ValueCell!820)) (size!1940 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!548 0))(
  ( (LongMapFixedSize!549 (defaultEntry!1988 Int) (mask!5839 (_ BitVec 32)) (extraKeys!1879 (_ BitVec 32)) (zeroValue!1906 V!2749) (minValue!1906 V!2749) (_size!323 (_ BitVec 32)) (_keys!3608 array!3576) (_values!1971 array!3578) (_vacant!323 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!358 0))(
  ( (Cell!359 (v!2299 LongMapFixedSize!548)) )
))
(declare-datatypes ((LongMap!358 0))(
  ( (LongMap!359 (underlying!190 Cell!358)) )
))
(declare-fun thiss!992 () LongMap!358)

(declare-fun mapDefault!2652 () ValueCell!820)

