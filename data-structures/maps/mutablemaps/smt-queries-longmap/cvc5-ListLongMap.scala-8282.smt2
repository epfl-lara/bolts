; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100860 () Bool)

(assert start!100860)

(declare-fun b_free!25963 () Bool)

(declare-fun b_next!25963 () Bool)

(assert (=> start!100860 (= b_free!25963 (not b_next!25963))))

(declare-fun tp!90896 () Bool)

(declare-fun b_and!42941 () Bool)

(assert (=> start!100860 (= tp!90896 b_and!42941)))

(declare-fun b!1207087 () Bool)

(declare-datatypes ((Unit!39938 0))(
  ( (Unit!39939) )
))
(declare-fun e!685532 () Unit!39938)

(declare-fun e!685539 () Unit!39938)

(assert (=> b!1207087 (= e!685532 e!685539)))

(declare-fun c!118542 () Bool)

(declare-fun lt!547637 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1207087 (= c!118542 (and (not lt!547637) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1207088 () Bool)

(declare-fun e!685537 () Bool)

(declare-fun e!685535 () Bool)

(declare-fun mapRes!47859 () Bool)

(assert (=> b!1207088 (= e!685537 (and e!685535 mapRes!47859))))

(declare-fun condMapEmpty!47859 () Bool)

(declare-datatypes ((V!46017 0))(
  ( (V!46018 (val!15390 Int)) )
))
(declare-datatypes ((ValueCell!14624 0))(
  ( (ValueCellFull!14624 (v!18036 V!46017)) (EmptyCell!14624) )
))
(declare-datatypes ((array!78092 0))(
  ( (array!78093 (arr!37682 (Array (_ BitVec 32) ValueCell!14624)) (size!38219 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78092)

(declare-fun mapDefault!47859 () ValueCell!14624)

