; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!654 () Bool)

(assert start!654)

(declare-fun b_free!127 () Bool)

(declare-fun b_next!127 () Bool)

(assert (=> start!654 (= b_free!127 (not b_next!127))))

(declare-fun tp!599 () Bool)

(declare-fun b_and!265 () Bool)

(assert (=> start!654 (= tp!599 b_and!265)))

(declare-fun b!4311 () Bool)

(declare-fun res!5663 () Bool)

(declare-fun e!2265 () Bool)

(assert (=> b!4311 (=> (not res!5663) (not e!2265))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!451 0))(
  ( (V!452 (val!108 Int)) )
))
(declare-datatypes ((ValueCell!86 0))(
  ( (ValueCellFull!86 (v!1195 V!451)) (EmptyCell!86) )
))
(declare-datatypes ((array!339 0))(
  ( (array!340 (arr!162 (Array (_ BitVec 32) ValueCell!86)) (size!224 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!339)

(declare-datatypes ((array!341 0))(
  ( (array!342 (arr!163 (Array (_ BitVec 32) (_ BitVec 64))) (size!225 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!341)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!4311 (= res!5663 (and (= (size!224 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!225 _keys!1806) (size!224 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!4312 () Bool)

(declare-fun e!2264 () Bool)

(declare-fun tp_is_empty!205 () Bool)

(assert (=> b!4312 (= e!2264 tp_is_empty!205)))

(declare-fun b!4313 () Bool)

(declare-fun e!2263 () Bool)

(declare-fun k!1278 () (_ BitVec 64))

(assert (=> b!4313 (= e!2263 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4314 () Bool)

(declare-fun res!5668 () Bool)

(assert (=> b!4314 (=> (not res!5668) (not e!2265))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!4314 (= res!5668 (validKeyInArray!0 k!1278))))

(declare-fun b!4315 () Bool)

(declare-fun e!2266 () Bool)

(declare-fun e!2267 () Bool)

(declare-fun mapRes!266 () Bool)

(assert (=> b!4315 (= e!2266 (and e!2267 mapRes!266))))

(declare-fun condMapEmpty!266 () Bool)

(declare-fun mapDefault!266 () ValueCell!86)

