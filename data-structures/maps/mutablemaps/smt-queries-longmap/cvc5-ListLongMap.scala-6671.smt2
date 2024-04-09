; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84026 () Bool)

(assert start!84026)

(declare-fun b_free!19753 () Bool)

(declare-fun b_next!19753 () Bool)

(assert (=> start!84026 (= b_free!19753 (not b_next!19753))))

(declare-fun tp!68783 () Bool)

(declare-fun b_and!31607 () Bool)

(assert (=> start!84026 (= tp!68783 b_and!31607)))

(declare-fun b!981569 () Bool)

(declare-fun res!656967 () Bool)

(declare-fun e!553375 () Bool)

(assert (=> b!981569 (=> (not res!656967) (not e!553375))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35385 0))(
  ( (V!35386 (val!11451 Int)) )
))
(declare-datatypes ((ValueCell!10919 0))(
  ( (ValueCellFull!10919 (v!14013 V!35385)) (EmptyCell!10919) )
))
(declare-datatypes ((array!61595 0))(
  ( (array!61596 (arr!29651 (Array (_ BitVec 32) ValueCell!10919)) (size!30131 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61595)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61597 0))(
  ( (array!61598 (arr!29652 (Array (_ BitVec 32) (_ BitVec 64))) (size!30132 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61597)

(assert (=> b!981569 (= res!656967 (and (= (size!30131 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30132 _keys!1544) (size!30131 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!981570 () Bool)

(declare-fun e!553374 () Bool)

(declare-fun e!553376 () Bool)

(declare-fun mapRes!36230 () Bool)

(assert (=> b!981570 (= e!553374 (and e!553376 mapRes!36230))))

(declare-fun condMapEmpty!36230 () Bool)

(declare-fun mapDefault!36230 () ValueCell!10919)

