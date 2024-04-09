; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111380 () Bool)

(assert start!111380)

(declare-fun mapIsEmpty!55379 () Bool)

(declare-fun mapRes!55379 () Bool)

(assert (=> mapIsEmpty!55379 mapRes!55379))

(declare-fun b!1317438 () Bool)

(declare-fun res!874456 () Bool)

(declare-fun e!751820 () Bool)

(assert (=> b!1317438 (=> (not res!874456) (not e!751820))))

(declare-datatypes ((array!88549 0))(
  ( (array!88550 (arr!42744 (Array (_ BitVec 32) (_ BitVec 64))) (size!43295 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88549)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!52865 0))(
  ( (V!52866 (val!17985 Int)) )
))
(declare-datatypes ((ValueCell!17012 0))(
  ( (ValueCellFull!17012 (v!20613 V!52865)) (EmptyCell!17012) )
))
(declare-datatypes ((array!88551 0))(
  ( (array!88552 (arr!42745 (Array (_ BitVec 32) ValueCell!17012)) (size!43296 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88551)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1317438 (= res!874456 (and (= (size!43296 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43295 _keys!1609) (size!43296 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1317439 () Bool)

(declare-fun e!751821 () Bool)

(declare-fun e!751822 () Bool)

(assert (=> b!1317439 (= e!751821 (and e!751822 mapRes!55379))))

(declare-fun condMapEmpty!55379 () Bool)

(declare-fun mapDefault!55379 () ValueCell!17012)

