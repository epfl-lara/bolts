; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112054 () Bool)

(assert start!112054)

(declare-fun b!1327184 () Bool)

(declare-fun e!756505 () Bool)

(declare-fun e!756506 () Bool)

(declare-fun mapRes!56209 () Bool)

(assert (=> b!1327184 (= e!756505 (and e!756506 mapRes!56209))))

(declare-fun condMapEmpty!56209 () Bool)

(declare-datatypes ((V!53593 0))(
  ( (V!53594 (val!18258 Int)) )
))
(declare-datatypes ((ValueCell!17285 0))(
  ( (ValueCellFull!17285 (v!20892 V!53593)) (EmptyCell!17285) )
))
(declare-datatypes ((array!89603 0))(
  ( (array!89604 (arr!43268 (Array (_ BitVec 32) ValueCell!17285)) (size!43819 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89603)

(declare-fun mapDefault!56209 () ValueCell!17285)

