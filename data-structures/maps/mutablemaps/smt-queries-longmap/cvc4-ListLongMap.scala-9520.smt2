; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113022 () Bool)

(assert start!113022)

(declare-fun mapIsEmpty!57262 () Bool)

(declare-fun mapRes!57262 () Bool)

(assert (=> mapIsEmpty!57262 mapRes!57262))

(declare-fun b!1339147 () Bool)

(declare-fun res!888481 () Bool)

(declare-fun e!762728 () Bool)

(assert (=> b!1339147 (=> (not res!888481) (not e!762728))))

(declare-datatypes ((array!90897 0))(
  ( (array!90898 (arr!43900 (Array (_ BitVec 32) (_ BitVec 64))) (size!44451 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90897)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90897 (_ BitVec 32)) Bool)

(assert (=> b!1339147 (= res!888481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339148 () Bool)

(declare-fun res!888482 () Bool)

(assert (=> b!1339148 (=> (not res!888482) (not e!762728))))

(declare-datatypes ((V!54485 0))(
  ( (V!54486 (val!18593 Int)) )
))
(declare-datatypes ((ValueCell!17620 0))(
  ( (ValueCellFull!17620 (v!21239 V!54485)) (EmptyCell!17620) )
))
(declare-datatypes ((array!90899 0))(
  ( (array!90900 (arr!43901 (Array (_ BitVec 32) ValueCell!17620)) (size!44452 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90899)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1339148 (= res!888482 (and (= (size!44452 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44451 _keys!1571) (size!44452 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1339149 () Bool)

(declare-fun e!762729 () Bool)

(declare-fun tp_is_empty!37037 () Bool)

(assert (=> b!1339149 (= e!762729 tp_is_empty!37037)))

(declare-fun b!1339150 () Bool)

(declare-fun e!762727 () Bool)

(assert (=> b!1339150 (= e!762727 (and e!762729 mapRes!57262))))

(declare-fun condMapEmpty!57262 () Bool)

(declare-fun mapDefault!57262 () ValueCell!17620)

