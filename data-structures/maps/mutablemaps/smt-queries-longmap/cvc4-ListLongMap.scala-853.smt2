; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20230 () Bool)

(assert start!20230)

(declare-fun b_free!4877 () Bool)

(declare-fun b_next!4877 () Bool)

(assert (=> start!20230 (= b_free!4877 (not b_next!4877))))

(declare-fun tp!17663 () Bool)

(declare-fun b_and!11641 () Bool)

(assert (=> start!20230 (= tp!17663 b_and!11641)))

(declare-fun b!198660 () Bool)

(declare-fun e!130537 () Bool)

(declare-fun tp_is_empty!4733 () Bool)

(assert (=> b!198660 (= e!130537 tp_is_empty!4733)))

(declare-fun b!198661 () Bool)

(declare-fun e!130536 () Bool)

(declare-fun mapRes!8168 () Bool)

(assert (=> b!198661 (= e!130536 (and e!130537 mapRes!8168))))

(declare-fun condMapEmpty!8168 () Bool)

(declare-datatypes ((V!5957 0))(
  ( (V!5958 (val!2411 Int)) )
))
(declare-datatypes ((ValueCell!2023 0))(
  ( (ValueCellFull!2023 (v!4377 V!5957)) (EmptyCell!2023) )
))
(declare-datatypes ((array!8710 0))(
  ( (array!8711 (arr!4105 (Array (_ BitVec 32) ValueCell!2023)) (size!4430 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8710)

(declare-fun mapDefault!8168 () ValueCell!2023)

