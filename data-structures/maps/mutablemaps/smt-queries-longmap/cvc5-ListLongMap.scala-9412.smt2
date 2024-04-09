; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112094 () Bool)

(assert start!112094)

(declare-fun b!1327382 () Bool)

(declare-fun e!756678 () Bool)

(declare-fun e!756677 () Bool)

(declare-fun mapRes!56245 () Bool)

(assert (=> b!1327382 (= e!756678 (and e!756677 mapRes!56245))))

(declare-fun condMapEmpty!56245 () Bool)

(declare-datatypes ((V!53617 0))(
  ( (V!53618 (val!18267 Int)) )
))
(declare-datatypes ((ValueCell!17294 0))(
  ( (ValueCellFull!17294 (v!20901 V!53617)) (EmptyCell!17294) )
))
(declare-datatypes ((array!89639 0))(
  ( (array!89640 (arr!43283 (Array (_ BitVec 32) ValueCell!17294)) (size!43834 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89639)

(declare-fun mapDefault!56245 () ValueCell!17294)

