; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99658 () Bool)

(assert start!99658)

(declare-fun b_free!25201 () Bool)

(declare-fun b_next!25201 () Bool)

(assert (=> start!99658 (= b_free!25201 (not b_next!25201))))

(declare-fun tp!88317 () Bool)

(declare-fun b_and!41283 () Bool)

(assert (=> start!99658 (= tp!88317 b_and!41283)))

(declare-fun b!1180349 () Bool)

(declare-fun e!671108 () Bool)

(declare-fun e!671105 () Bool)

(declare-fun mapRes!46424 () Bool)

(assert (=> b!1180349 (= e!671108 (and e!671105 mapRes!46424))))

(declare-fun condMapEmpty!46424 () Bool)

(declare-datatypes ((V!44769 0))(
  ( (V!44770 (val!14922 Int)) )
))
(declare-datatypes ((ValueCell!14156 0))(
  ( (ValueCellFull!14156 (v!17561 V!44769)) (EmptyCell!14156) )
))
(declare-datatypes ((array!76232 0))(
  ( (array!76233 (arr!36762 (Array (_ BitVec 32) ValueCell!14156)) (size!37299 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76232)

(declare-fun mapDefault!46424 () ValueCell!14156)

