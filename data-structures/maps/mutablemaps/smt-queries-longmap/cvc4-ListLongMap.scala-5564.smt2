; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73200 () Bool)

(assert start!73200)

(declare-fun b_free!14087 () Bool)

(declare-fun b_next!14087 () Bool)

(assert (=> start!73200 (= b_free!14087 (not b_next!14087))))

(declare-fun tp!49765 () Bool)

(declare-fun b_and!23351 () Bool)

(assert (=> start!73200 (= tp!49765 b_and!23351)))

(declare-fun b!852050 () Bool)

(declare-fun e!475260 () Bool)

(declare-fun tp_is_empty!16223 () Bool)

(assert (=> b!852050 (= e!475260 tp_is_empty!16223)))

(declare-fun b!852051 () Bool)

(declare-fun e!475259 () Bool)

(declare-fun e!475256 () Bool)

(declare-fun mapRes!25934 () Bool)

(assert (=> b!852051 (= e!475259 (and e!475256 mapRes!25934))))

(declare-fun condMapEmpty!25934 () Bool)

(declare-datatypes ((V!26677 0))(
  ( (V!26678 (val!8159 Int)) )
))
(declare-datatypes ((ValueCell!7672 0))(
  ( (ValueCellFull!7672 (v!10580 V!26677)) (EmptyCell!7672) )
))
(declare-datatypes ((array!48634 0))(
  ( (array!48635 (arr!23344 (Array (_ BitVec 32) ValueCell!7672)) (size!23785 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48634)

(declare-fun mapDefault!25934 () ValueCell!7672)

