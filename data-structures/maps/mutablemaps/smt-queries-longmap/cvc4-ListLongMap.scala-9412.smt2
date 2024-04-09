; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112098 () Bool)

(assert start!112098)

(declare-fun b!1327424 () Bool)

(declare-fun e!756707 () Bool)

(declare-fun e!756708 () Bool)

(declare-fun mapRes!56251 () Bool)

(assert (=> b!1327424 (= e!756707 (and e!756708 mapRes!56251))))

(declare-fun condMapEmpty!56251 () Bool)

(declare-datatypes ((V!53621 0))(
  ( (V!53622 (val!18269 Int)) )
))
(declare-datatypes ((ValueCell!17296 0))(
  ( (ValueCellFull!17296 (v!20903 V!53621)) (EmptyCell!17296) )
))
(declare-datatypes ((array!89645 0))(
  ( (array!89646 (arr!43286 (Array (_ BitVec 32) ValueCell!17296)) (size!43837 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89645)

(declare-fun mapDefault!56251 () ValueCell!17296)

