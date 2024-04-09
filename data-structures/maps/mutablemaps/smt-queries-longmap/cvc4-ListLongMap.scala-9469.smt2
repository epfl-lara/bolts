; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112462 () Bool)

(assert start!112462)

(declare-fun b_free!30821 () Bool)

(declare-fun b_next!30821 () Bool)

(assert (=> start!112462 (= b_free!30821 (not b_next!30821))))

(declare-fun tp!108100 () Bool)

(declare-fun b_and!49673 () Bool)

(assert (=> start!112462 (= tp!108100 b_and!49673)))

(declare-fun b!1332814 () Bool)

(declare-fun res!884549 () Bool)

(declare-fun e!759334 () Bool)

(assert (=> b!1332814 (=> (not res!884549) (not e!759334))))

(declare-datatypes ((array!90309 0))(
  ( (array!90310 (arr!43616 (Array (_ BitVec 32) (_ BitVec 64))) (size!44167 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90309)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90309 (_ BitVec 32)) Bool)

(assert (=> b!1332814 (= res!884549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1332815 () Bool)

(declare-fun e!759333 () Bool)

(declare-fun e!759332 () Bool)

(declare-fun mapRes!56770 () Bool)

(assert (=> b!1332815 (= e!759333 (and e!759332 mapRes!56770))))

(declare-fun condMapEmpty!56770 () Bool)

(declare-datatypes ((V!54077 0))(
  ( (V!54078 (val!18440 Int)) )
))
(declare-datatypes ((ValueCell!17467 0))(
  ( (ValueCellFull!17467 (v!21075 V!54077)) (EmptyCell!17467) )
))
(declare-datatypes ((array!90311 0))(
  ( (array!90312 (arr!43617 (Array (_ BitVec 32) ValueCell!17467)) (size!44168 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90311)

(declare-fun mapDefault!56770 () ValueCell!17467)

