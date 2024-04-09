; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42592 () Bool)

(assert start!42592)

(declare-fun b_free!12019 () Bool)

(declare-fun b_next!12019 () Bool)

(assert (=> start!42592 (= b_free!12019 (not b_next!12019))))

(declare-fun tp!42096 () Bool)

(declare-fun b_and!20517 () Bool)

(assert (=> start!42592 (= tp!42096 b_and!20517)))

(declare-fun mapNonEmpty!21889 () Bool)

(declare-fun mapRes!21889 () Bool)

(declare-fun tp!42097 () Bool)

(declare-fun e!278818 () Bool)

(assert (=> mapNonEmpty!21889 (= mapRes!21889 (and tp!42097 e!278818))))

(declare-fun mapKey!21889 () (_ BitVec 32))

(declare-datatypes ((V!19035 0))(
  ( (V!19036 (val!6768 Int)) )
))
(declare-datatypes ((ValueCell!6380 0))(
  ( (ValueCellFull!6380 (v!9057 V!19035)) (EmptyCell!6380) )
))
(declare-datatypes ((array!30609 0))(
  ( (array!30610 (arr!14719 (Array (_ BitVec 32) ValueCell!6380)) (size!15071 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30609)

(declare-fun mapValue!21889 () ValueCell!6380)

(declare-fun mapRest!21889 () (Array (_ BitVec 32) ValueCell!6380))

(assert (=> mapNonEmpty!21889 (= (arr!14719 _values!833) (store mapRest!21889 mapKey!21889 mapValue!21889))))

(declare-fun b!474893 () Bool)

(declare-fun e!278821 () Bool)

(declare-fun e!278820 () Bool)

(assert (=> b!474893 (= e!278821 (and e!278820 mapRes!21889))))

(declare-fun condMapEmpty!21889 () Bool)

(declare-fun mapDefault!21889 () ValueCell!6380)

