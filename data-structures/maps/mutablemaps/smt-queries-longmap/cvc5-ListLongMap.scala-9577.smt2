; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113360 () Bool)

(assert start!113360)

(declare-fun b_free!31375 () Bool)

(declare-fun b_next!31375 () Bool)

(assert (=> start!113360 (= b_free!31375 (not b_next!31375))))

(declare-fun tp!109931 () Bool)

(declare-fun b_and!50613 () Bool)

(assert (=> start!113360 (= tp!109931 b_and!50613)))

(declare-fun b!1344567 () Bool)

(declare-fun e!765263 () Bool)

(declare-fun tp_is_empty!37375 () Bool)

(assert (=> b!1344567 (= e!765263 tp_is_empty!37375)))

(declare-fun mapIsEmpty!57769 () Bool)

(declare-fun mapRes!57769 () Bool)

(assert (=> mapIsEmpty!57769 mapRes!57769))

(declare-fun b!1344568 () Bool)

(declare-fun res!892186 () Bool)

(declare-fun e!765262 () Bool)

(assert (=> b!1344568 (=> (not res!892186) (not e!765262))))

(declare-datatypes ((array!91547 0))(
  ( (array!91548 (arr!44225 (Array (_ BitVec 32) (_ BitVec 64))) (size!44776 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91547)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1344568 (= res!892186 (validKeyInArray!0 (select (arr!44225 _keys!1571) from!1960)))))

(declare-fun b!1344569 () Bool)

(declare-fun e!765265 () Bool)

(assert (=> b!1344569 (= e!765265 (and e!765263 mapRes!57769))))

(declare-fun condMapEmpty!57769 () Bool)

(declare-datatypes ((V!54937 0))(
  ( (V!54938 (val!18762 Int)) )
))
(declare-datatypes ((ValueCell!17789 0))(
  ( (ValueCellFull!17789 (v!21408 V!54937)) (EmptyCell!17789) )
))
(declare-datatypes ((array!91549 0))(
  ( (array!91550 (arr!44226 (Array (_ BitVec 32) ValueCell!17789)) (size!44777 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91549)

(declare-fun mapDefault!57769 () ValueCell!17789)

