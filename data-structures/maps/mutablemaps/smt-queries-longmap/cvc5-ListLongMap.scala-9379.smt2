; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111746 () Bool)

(assert start!111746)

(declare-fun b_free!30367 () Bool)

(declare-fun b_next!30367 () Bool)

(assert (=> start!111746 (= b_free!30367 (not b_next!30367))))

(declare-fun tp!106578 () Bool)

(declare-fun b_and!48903 () Bool)

(assert (=> start!111746 (= tp!106578 b_and!48903)))

(declare-fun mapIsEmpty!55928 () Bool)

(declare-fun mapRes!55928 () Bool)

(assert (=> mapIsEmpty!55928 mapRes!55928))

(declare-fun b!1323539 () Bool)

(declare-fun res!878607 () Bool)

(declare-fun e!754564 () Bool)

(assert (=> b!1323539 (=> (not res!878607) (not e!754564))))

(declare-datatypes ((array!89249 0))(
  ( (array!89250 (arr!43094 (Array (_ BitVec 32) (_ BitVec 64))) (size!43645 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89249)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89249 (_ BitVec 32)) Bool)

(assert (=> b!1323539 (= res!878607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1323541 () Bool)

(declare-fun e!754563 () Bool)

(declare-fun e!754565 () Bool)

(assert (=> b!1323541 (= e!754563 (and e!754565 mapRes!55928))))

(declare-fun condMapEmpty!55928 () Bool)

(declare-datatypes ((V!53353 0))(
  ( (V!53354 (val!18168 Int)) )
))
(declare-datatypes ((ValueCell!17195 0))(
  ( (ValueCellFull!17195 (v!20796 V!53353)) (EmptyCell!17195) )
))
(declare-datatypes ((array!89251 0))(
  ( (array!89252 (arr!43095 (Array (_ BitVec 32) ValueCell!17195)) (size!43646 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89251)

(declare-fun mapDefault!55928 () ValueCell!17195)

