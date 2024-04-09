; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113382 () Bool)

(assert start!113382)

(declare-fun b_free!31397 () Bool)

(declare-fun b_next!31397 () Bool)

(assert (=> start!113382 (= b_free!31397 (not b_next!31397))))

(declare-fun tp!109997 () Bool)

(declare-fun b_and!50657 () Bool)

(assert (=> start!113382 (= tp!109997 b_and!50657)))

(declare-fun b!1345037 () Bool)

(declare-fun res!892537 () Bool)

(declare-fun e!765454 () Bool)

(assert (=> b!1345037 (=> (not res!892537) (not e!765454))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((array!91591 0))(
  ( (array!91592 (arr!44247 (Array (_ BitVec 32) (_ BitVec 64))) (size!44798 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91591)

(assert (=> b!1345037 (= res!892537 (not (= k!1142 (select (arr!44247 _keys!1571) from!1960))))))

(declare-fun b!1345038 () Bool)

(declare-fun res!892533 () Bool)

(declare-fun e!765455 () Bool)

(assert (=> b!1345038 (=> (not res!892533) (not e!765455))))

(assert (=> b!1345038 (= res!892533 (not (= (select (arr!44247 _keys!1571) from!1960) k!1142)))))

(declare-fun res!892538 () Bool)

(assert (=> start!113382 (=> (not res!892538) (not e!765455))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113382 (= res!892538 (validMask!0 mask!1977))))

(assert (=> start!113382 e!765455))

(declare-fun tp_is_empty!37397 () Bool)

(assert (=> start!113382 tp_is_empty!37397))

(assert (=> start!113382 true))

(declare-fun array_inv!33259 (array!91591) Bool)

(assert (=> start!113382 (array_inv!33259 _keys!1571)))

(declare-datatypes ((V!54965 0))(
  ( (V!54966 (val!18773 Int)) )
))
(declare-datatypes ((ValueCell!17800 0))(
  ( (ValueCellFull!17800 (v!21419 V!54965)) (EmptyCell!17800) )
))
(declare-datatypes ((array!91593 0))(
  ( (array!91594 (arr!44248 (Array (_ BitVec 32) ValueCell!17800)) (size!44799 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91593)

(declare-fun e!765453 () Bool)

(declare-fun array_inv!33260 (array!91593) Bool)

(assert (=> start!113382 (and (array_inv!33260 _values!1303) e!765453)))

(assert (=> start!113382 tp!109997))

(declare-fun b!1345039 () Bool)

(declare-fun e!765457 () Bool)

(declare-fun mapRes!57802 () Bool)

(assert (=> b!1345039 (= e!765453 (and e!765457 mapRes!57802))))

(declare-fun condMapEmpty!57802 () Bool)

(declare-fun mapDefault!57802 () ValueCell!17800)

