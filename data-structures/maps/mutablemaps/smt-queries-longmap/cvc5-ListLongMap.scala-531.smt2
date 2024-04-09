; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13240 () Bool)

(assert start!13240)

(declare-fun b!116780 () Bool)

(declare-fun b_free!2761 () Bool)

(declare-fun b_next!2761 () Bool)

(assert (=> b!116780 (= b_free!2761 (not b_next!2761))))

(declare-fun tp!10657 () Bool)

(declare-fun b_and!7289 () Bool)

(assert (=> b!116780 (= tp!10657 b_and!7289)))

(declare-fun b!116767 () Bool)

(declare-fun b_free!2763 () Bool)

(declare-fun b_next!2763 () Bool)

(assert (=> b!116767 (= b_free!2763 (not b_next!2763))))

(declare-fun tp!10655 () Bool)

(declare-fun b_and!7291 () Bool)

(assert (=> b!116767 (= tp!10655 b_and!7291)))

(declare-fun b!116765 () Bool)

(declare-fun e!76285 () Bool)

(declare-fun e!76288 () Bool)

(declare-fun mapRes!4333 () Bool)

(assert (=> b!116765 (= e!76285 (and e!76288 mapRes!4333))))

(declare-fun condMapEmpty!4333 () Bool)

(declare-datatypes ((V!3377 0))(
  ( (V!3378 (val!1443 Int)) )
))
(declare-datatypes ((array!4600 0))(
  ( (array!4601 (arr!2180 (Array (_ BitVec 32) (_ BitVec 64))) (size!2441 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1055 0))(
  ( (ValueCellFull!1055 (v!3052 V!3377)) (EmptyCell!1055) )
))
(declare-datatypes ((array!4602 0))(
  ( (array!4603 (arr!2181 (Array (_ BitVec 32) ValueCell!1055)) (size!2442 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1018 0))(
  ( (LongMapFixedSize!1019 (defaultEntry!2721 Int) (mask!6941 (_ BitVec 32)) (extraKeys!2510 (_ BitVec 32)) (zeroValue!2588 V!3377) (minValue!2588 V!3377) (_size!558 (_ BitVec 32)) (_keys!4444 array!4600) (_values!2704 array!4602) (_vacant!558 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1018)

(declare-fun mapDefault!4334 () ValueCell!1055)

