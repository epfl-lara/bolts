; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105688 () Bool)

(assert start!105688)

(declare-fun b_free!27253 () Bool)

(declare-fun b_next!27253 () Bool)

(assert (=> start!105688 (= b_free!27253 (not b_next!27253))))

(declare-fun tp!95283 () Bool)

(declare-fun b_and!45137 () Bool)

(assert (=> start!105688 (= tp!95283 b_and!45137)))

(declare-fun b!1258415 () Bool)

(declare-fun e!715764 () Bool)

(declare-fun tp_is_empty!32155 () Bool)

(assert (=> b!1258415 (= e!715764 tp_is_empty!32155)))

(declare-fun mapNonEmpty!50026 () Bool)

(declare-fun mapRes!50026 () Bool)

(declare-fun tp!95282 () Bool)

(declare-fun e!715768 () Bool)

(assert (=> mapNonEmpty!50026 (= mapRes!50026 (and tp!95282 e!715768))))

(declare-datatypes ((V!48239 0))(
  ( (V!48240 (val!16140 Int)) )
))
(declare-datatypes ((ValueCell!15314 0))(
  ( (ValueCellFull!15314 (v!18842 V!48239)) (EmptyCell!15314) )
))
(declare-fun mapRest!50026 () (Array (_ BitVec 32) ValueCell!15314))

(declare-datatypes ((array!81927 0))(
  ( (array!81928 (arr!39515 (Array (_ BitVec 32) ValueCell!15314)) (size!40052 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81927)

(declare-fun mapKey!50026 () (_ BitVec 32))

(declare-fun mapValue!50026 () ValueCell!15314)

(assert (=> mapNonEmpty!50026 (= (arr!39515 _values!914) (store mapRest!50026 mapKey!50026 mapValue!50026))))

(declare-fun mapIsEmpty!50026 () Bool)

(assert (=> mapIsEmpty!50026 mapRes!50026))

(declare-fun b!1258416 () Bool)

(declare-fun e!715765 () Bool)

(assert (=> b!1258416 (= e!715765 (and e!715764 mapRes!50026))))

(declare-fun condMapEmpty!50026 () Bool)

(declare-fun mapDefault!50026 () ValueCell!15314)

