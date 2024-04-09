; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111836 () Bool)

(assert start!111836)

(declare-fun b_free!30457 () Bool)

(declare-fun b_next!30457 () Bool)

(assert (=> start!111836 (= b_free!30457 (not b_next!30457))))

(declare-fun tp!106848 () Bool)

(declare-fun b_and!49005 () Bool)

(assert (=> start!111836 (= tp!106848 b_and!49005)))

(declare-fun b!1324766 () Bool)

(declare-fun e!755241 () Bool)

(declare-fun e!755239 () Bool)

(declare-fun mapRes!56063 () Bool)

(assert (=> b!1324766 (= e!755241 (and e!755239 mapRes!56063))))

(declare-fun condMapEmpty!56063 () Bool)

(declare-datatypes ((V!53473 0))(
  ( (V!53474 (val!18213 Int)) )
))
(declare-datatypes ((ValueCell!17240 0))(
  ( (ValueCellFull!17240 (v!20841 V!53473)) (EmptyCell!17240) )
))
(declare-datatypes ((array!89423 0))(
  ( (array!89424 (arr!43181 (Array (_ BitVec 32) ValueCell!17240)) (size!43732 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89423)

(declare-fun mapDefault!56063 () ValueCell!17240)

