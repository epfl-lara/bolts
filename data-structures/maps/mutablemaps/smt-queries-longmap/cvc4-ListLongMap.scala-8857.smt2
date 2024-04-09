; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107488 () Bool)

(assert start!107488)

(declare-fun b!1272725 () Bool)

(declare-fun b_free!27689 () Bool)

(declare-fun b_next!27689 () Bool)

(assert (=> b!1272725 (= b_free!27689 (not b_next!27689))))

(declare-fun tp!97595 () Bool)

(declare-fun b_and!45755 () Bool)

(assert (=> b!1272725 (= tp!97595 b_and!45755)))

(declare-fun b!1272721 () Bool)

(declare-fun res!846579 () Bool)

(declare-fun e!726049 () Bool)

(assert (=> b!1272721 (=> (not res!846579) (not e!726049))))

(declare-datatypes ((V!49271 0))(
  ( (V!49272 (val!16604 Int)) )
))
(declare-datatypes ((ValueCell!15676 0))(
  ( (ValueCellFull!15676 (v!19239 V!49271)) (EmptyCell!15676) )
))
(declare-datatypes ((array!83321 0))(
  ( (array!83322 (arr!40187 (Array (_ BitVec 32) ValueCell!15676)) (size!40727 (_ BitVec 32))) )
))
(declare-datatypes ((array!83323 0))(
  ( (array!83324 (arr!40188 (Array (_ BitVec 32) (_ BitVec 64))) (size!40728 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6116 0))(
  ( (LongMapFixedSize!6117 (defaultEntry!6704 Int) (mask!34458 (_ BitVec 32)) (extraKeys!6383 (_ BitVec 32)) (zeroValue!6489 V!49271) (minValue!6489 V!49271) (_size!3113 (_ BitVec 32)) (_keys!12110 array!83323) (_values!6727 array!83321) (_vacant!3113 (_ BitVec 32))) )
))
(declare-fun thiss!1559 () LongMapFixedSize!6116)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1272721 (= res!846579 (validMask!0 (mask!34458 thiss!1559)))))

(declare-fun b!1272722 () Bool)

(declare-fun e!726052 () Bool)

(declare-fun e!726051 () Bool)

(declare-fun mapRes!51190 () Bool)

(assert (=> b!1272722 (= e!726052 (and e!726051 mapRes!51190))))

(declare-fun condMapEmpty!51190 () Bool)

(declare-fun mapDefault!51190 () ValueCell!15676)

