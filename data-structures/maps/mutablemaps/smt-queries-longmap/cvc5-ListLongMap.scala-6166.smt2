; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79132 () Bool)

(assert start!79132)

(declare-fun b_free!17317 () Bool)

(declare-fun b_next!17317 () Bool)

(assert (=> start!79132 (= b_free!17317 (not b_next!17317))))

(declare-fun tp!60392 () Bool)

(declare-fun b_and!28389 () Bool)

(assert (=> start!79132 (= tp!60392 b_and!28389)))

(declare-fun b!928093 () Bool)

(declare-datatypes ((Unit!31408 0))(
  ( (Unit!31409) )
))
(declare-fun e!521117 () Unit!31408)

(declare-fun Unit!31410 () Unit!31408)

(assert (=> b!928093 (= e!521117 Unit!31410)))

(declare-fun b!928094 () Bool)

(declare-fun e!521122 () Bool)

(declare-fun e!521124 () Bool)

(declare-fun mapRes!31494 () Bool)

(assert (=> b!928094 (= e!521122 (and e!521124 mapRes!31494))))

(declare-fun condMapEmpty!31494 () Bool)

(declare-datatypes ((V!31399 0))(
  ( (V!31400 (val!9963 Int)) )
))
(declare-datatypes ((ValueCell!9431 0))(
  ( (ValueCellFull!9431 (v!12481 V!31399)) (EmptyCell!9431) )
))
(declare-datatypes ((array!55628 0))(
  ( (array!55629 (arr!26755 (Array (_ BitVec 32) ValueCell!9431)) (size!27215 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55628)

(declare-fun mapDefault!31494 () ValueCell!9431)

