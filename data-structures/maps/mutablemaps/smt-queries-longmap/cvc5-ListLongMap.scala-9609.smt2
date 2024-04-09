; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113636 () Bool)

(assert start!113636)

(declare-fun b_free!31567 () Bool)

(declare-fun b_next!31567 () Bool)

(assert (=> start!113636 (= b_free!31567 (not b_next!31567))))

(declare-fun tp!110514 () Bool)

(declare-fun b_and!50935 () Bool)

(assert (=> start!113636 (= tp!110514 b_and!50935)))

(declare-fun b!1348461 () Bool)

(declare-fun res!894773 () Bool)

(declare-fun e!767148 () Bool)

(assert (=> b!1348461 (=> (not res!894773) (not e!767148))))

(declare-datatypes ((array!91923 0))(
  ( (array!91924 (arr!44411 (Array (_ BitVec 32) (_ BitVec 64))) (size!44962 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91923)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1348461 (= res!894773 (validKeyInArray!0 (select (arr!44411 _keys!1571) from!1960)))))

(declare-fun b!1348462 () Bool)

(declare-fun res!894775 () Bool)

(assert (=> b!1348462 (=> (not res!894775) (not e!767148))))

(declare-datatypes ((List!31624 0))(
  ( (Nil!31621) (Cons!31620 (h!32829 (_ BitVec 64)) (t!46269 List!31624)) )
))
(declare-fun arrayNoDuplicates!0 (array!91923 (_ BitVec 32) List!31624) Bool)

(assert (=> b!1348462 (= res!894775 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31621))))

(declare-fun b!1348463 () Bool)

(declare-fun res!894770 () Bool)

(assert (=> b!1348463 (=> (not res!894770) (not e!767148))))

(declare-fun k!1142 () (_ BitVec 64))

(assert (=> b!1348463 (= res!894770 (not (= (select (arr!44411 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1348464 () Bool)

(declare-fun e!767150 () Bool)

(declare-fun tp_is_empty!37567 () Bool)

(assert (=> b!1348464 (= e!767150 tp_is_empty!37567)))

(declare-fun b!1348465 () Bool)

(declare-fun e!767147 () Bool)

(declare-fun e!767151 () Bool)

(declare-fun mapRes!58064 () Bool)

(assert (=> b!1348465 (= e!767147 (and e!767151 mapRes!58064))))

(declare-fun condMapEmpty!58064 () Bool)

(declare-datatypes ((V!55193 0))(
  ( (V!55194 (val!18858 Int)) )
))
(declare-datatypes ((ValueCell!17885 0))(
  ( (ValueCellFull!17885 (v!21508 V!55193)) (EmptyCell!17885) )
))
(declare-datatypes ((array!91925 0))(
  ( (array!91926 (arr!44412 (Array (_ BitVec 32) ValueCell!17885)) (size!44963 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91925)

(declare-fun mapDefault!58064 () ValueCell!17885)

