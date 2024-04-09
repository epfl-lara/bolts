; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113472 () Bool)

(assert start!113472)

(declare-fun b_free!31487 () Bool)

(declare-fun b_next!31487 () Bool)

(assert (=> start!113472 (= b_free!31487 (not b_next!31487))))

(declare-fun tp!110266 () Bool)

(declare-fun b_and!50785 () Bool)

(assert (=> start!113472 (= tp!110266 b_and!50785)))

(declare-fun res!893562 () Bool)

(declare-fun e!766183 () Bool)

(assert (=> start!113472 (=> (not res!893562) (not e!766183))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113472 (= res!893562 (validMask!0 mask!1977))))

(assert (=> start!113472 e!766183))

(declare-fun tp_is_empty!37487 () Bool)

(assert (=> start!113472 tp_is_empty!37487))

(assert (=> start!113472 true))

(declare-datatypes ((array!91763 0))(
  ( (array!91764 (arr!44333 (Array (_ BitVec 32) (_ BitVec 64))) (size!44884 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91763)

(declare-fun array_inv!33319 (array!91763) Bool)

(assert (=> start!113472 (array_inv!33319 _keys!1571)))

(declare-datatypes ((V!55085 0))(
  ( (V!55086 (val!18818 Int)) )
))
(declare-datatypes ((ValueCell!17845 0))(
  ( (ValueCellFull!17845 (v!21464 V!55085)) (EmptyCell!17845) )
))
(declare-datatypes ((array!91765 0))(
  ( (array!91766 (arr!44334 (Array (_ BitVec 32) ValueCell!17845)) (size!44885 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91765)

(declare-fun e!766186 () Bool)

(declare-fun array_inv!33320 (array!91765) Bool)

(assert (=> start!113472 (and (array_inv!33320 _values!1303) e!766186)))

(assert (=> start!113472 tp!110266))

(declare-fun b!1346509 () Bool)

(declare-fun res!893564 () Bool)

(assert (=> b!1346509 (=> (not res!893564) (not e!766183))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1346509 (= res!893564 (not (= (select (arr!44333 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1346510 () Bool)

(declare-fun res!893563 () Bool)

(assert (=> b!1346510 (=> (not res!893563) (not e!766183))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1346510 (= res!893563 (not (validKeyInArray!0 (select (arr!44333 _keys!1571) from!1960))))))

(declare-fun b!1346511 () Bool)

(declare-fun e!766184 () Bool)

(assert (=> b!1346511 (= e!766184 tp_is_empty!37487)))

(declare-fun mapIsEmpty!57937 () Bool)

(declare-fun mapRes!57937 () Bool)

(assert (=> mapIsEmpty!57937 mapRes!57937))

(declare-fun b!1346512 () Bool)

(declare-fun e!766187 () Bool)

(assert (=> b!1346512 (= e!766186 (and e!766187 mapRes!57937))))

(declare-fun condMapEmpty!57937 () Bool)

(declare-fun mapDefault!57937 () ValueCell!17845)

