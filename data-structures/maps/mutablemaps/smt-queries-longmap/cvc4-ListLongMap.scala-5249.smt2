; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70622 () Bool)

(assert start!70622)

(declare-fun b_free!12905 () Bool)

(declare-fun b_next!12905 () Bool)

(assert (=> start!70622 (= b_free!12905 (not b_next!12905))))

(declare-fun tp!45451 () Bool)

(declare-fun b_and!21765 () Bool)

(assert (=> start!70622 (= tp!45451 b_and!21765)))

(declare-fun b!820010 () Bool)

(declare-fun e!455561 () Bool)

(declare-fun e!455564 () Bool)

(declare-fun mapRes!23524 () Bool)

(assert (=> b!820010 (= e!455561 (and e!455564 mapRes!23524))))

(declare-fun condMapEmpty!23524 () Bool)

(declare-datatypes ((V!24487 0))(
  ( (V!24488 (val!7355 Int)) )
))
(declare-datatypes ((ValueCell!6892 0))(
  ( (ValueCellFull!6892 (v!9781 V!24487)) (EmptyCell!6892) )
))
(declare-datatypes ((array!45394 0))(
  ( (array!45395 (arr!21746 (Array (_ BitVec 32) ValueCell!6892)) (size!22167 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45394)

(declare-fun mapDefault!23524 () ValueCell!6892)

