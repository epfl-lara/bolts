; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83212 () Bool)

(assert start!83212)

(declare-fun b_free!19177 () Bool)

(declare-fun b_next!19177 () Bool)

(assert (=> start!83212 (= b_free!19177 (not b_next!19177))))

(declare-fun tp!66810 () Bool)

(declare-fun b_and!30683 () Bool)

(assert (=> start!83212 (= tp!66810 b_and!30683)))

(declare-fun b!970343 () Bool)

(declare-fun e!547073 () Bool)

(declare-fun e!547077 () Bool)

(declare-fun mapRes!35122 () Bool)

(assert (=> b!970343 (= e!547073 (and e!547077 mapRes!35122))))

(declare-fun condMapEmpty!35122 () Bool)

(declare-datatypes ((V!34417 0))(
  ( (V!34418 (val!11088 Int)) )
))
(declare-datatypes ((ValueCell!10556 0))(
  ( (ValueCellFull!10556 (v!13647 V!34417)) (EmptyCell!10556) )
))
(declare-datatypes ((array!60191 0))(
  ( (array!60192 (arr!28955 (Array (_ BitVec 32) ValueCell!10556)) (size!29435 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60191)

(declare-fun mapDefault!35122 () ValueCell!10556)

