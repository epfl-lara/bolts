; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7366 () Bool)

(assert start!7366)

(declare-fun mapIsEmpty!2066 () Bool)

(declare-fun mapRes!2066 () Bool)

(assert (=> mapIsEmpty!2066 mapRes!2066))

(declare-fun b!47286 () Bool)

(declare-fun e!30264 () Bool)

(declare-fun tp_is_empty!2021 () Bool)

(assert (=> b!47286 (= e!30264 tp_is_empty!2021)))

(declare-fun b!47287 () Bool)

(declare-fun e!30262 () Bool)

(declare-datatypes ((array!3104 0))(
  ( (array!3105 (arr!1489 (Array (_ BitVec 32) (_ BitVec 64))) (size!1711 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3104)

(assert (=> b!47287 (= e!30262 (and (bvsle #b00000000000000000000000000000000 (size!1711 _keys!1940)) (bvsge (size!1711 _keys!1940) #b01111111111111111111111111111111)))))

(declare-fun b!47288 () Bool)

(declare-fun e!30265 () Bool)

(assert (=> b!47288 (= e!30265 tp_is_empty!2021)))

(declare-fun b!47289 () Bool)

(declare-fun e!30263 () Bool)

(assert (=> b!47289 (= e!30263 (and e!30265 mapRes!2066))))

(declare-fun condMapEmpty!2066 () Bool)

(declare-datatypes ((V!2427 0))(
  ( (V!2428 (val!1049 Int)) )
))
(declare-datatypes ((ValueCell!721 0))(
  ( (ValueCellFull!721 (v!2108 V!2427)) (EmptyCell!721) )
))
(declare-datatypes ((array!3106 0))(
  ( (array!3107 (arr!1490 (Array (_ BitVec 32) ValueCell!721)) (size!1712 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3106)

(declare-fun mapDefault!2066 () ValueCell!721)

