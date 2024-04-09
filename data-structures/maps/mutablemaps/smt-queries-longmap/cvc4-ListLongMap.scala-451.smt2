; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8334 () Bool)

(assert start!8334)

(declare-fun b!54834 () Bool)

(declare-fun b_free!1809 () Bool)

(declare-fun b_next!1809 () Bool)

(assert (=> b!54834 (= b_free!1809 (not b_next!1809))))

(declare-fun tp!7528 () Bool)

(declare-fun b_and!3169 () Bool)

(assert (=> b!54834 (= tp!7528 b_and!3169)))

(declare-fun b!54827 () Bool)

(declare-fun b_free!1811 () Bool)

(declare-fun b_next!1811 () Bool)

(assert (=> b!54827 (= b_free!1811 (not b_next!1811))))

(declare-fun tp!7529 () Bool)

(declare-fun b_and!3171 () Bool)

(assert (=> b!54827 (= tp!7529 b_and!3171)))

(declare-fun b!54825 () Bool)

(declare-fun e!35889 () Bool)

(declare-fun e!35890 () Bool)

(declare-fun mapRes!2633 () Bool)

(assert (=> b!54825 (= e!35889 (and e!35890 mapRes!2633))))

(declare-fun condMapEmpty!2633 () Bool)

(declare-datatypes ((V!2741 0))(
  ( (V!2742 (val!1205 Int)) )
))
(declare-datatypes ((array!3564 0))(
  ( (array!3565 (arr!1704 (Array (_ BitVec 32) (_ BitVec 64))) (size!1933 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!817 0))(
  ( (ValueCellFull!817 (v!2292 V!2741)) (EmptyCell!817) )
))
(declare-datatypes ((array!3566 0))(
  ( (array!3567 (arr!1705 (Array (_ BitVec 32) ValueCell!817)) (size!1934 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!542 0))(
  ( (LongMapFixedSize!543 (defaultEntry!1985 Int) (mask!5834 (_ BitVec 32)) (extraKeys!1876 (_ BitVec 32)) (zeroValue!1903 V!2741) (minValue!1903 V!2741) (_size!320 (_ BitVec 32)) (_keys!3605 array!3564) (_values!1968 array!3566) (_vacant!320 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!352 0))(
  ( (Cell!353 (v!2293 LongMapFixedSize!542)) )
))
(declare-datatypes ((LongMap!352 0))(
  ( (LongMap!353 (underlying!187 Cell!352)) )
))
(declare-fun thiss!992 () LongMap!352)

(declare-fun mapDefault!2634 () ValueCell!817)

