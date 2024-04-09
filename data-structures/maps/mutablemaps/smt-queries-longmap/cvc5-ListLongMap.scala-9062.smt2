; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109192 () Bool)

(assert start!109192)

(declare-fun b_free!28645 () Bool)

(declare-fun b_next!28645 () Bool)

(assert (=> start!109192 (= b_free!28645 (not b_next!28645))))

(declare-fun tp!101055 () Bool)

(declare-fun b_and!46745 () Bool)

(assert (=> start!109192 (= tp!101055 b_and!46745)))

(declare-fun b!1290795 () Bool)

(declare-fun e!736917 () Bool)

(declare-fun e!736921 () Bool)

(declare-fun mapRes!52988 () Bool)

(assert (=> b!1290795 (= e!736917 (and e!736921 mapRes!52988))))

(declare-fun condMapEmpty!52988 () Bool)

(declare-datatypes ((V!50817 0))(
  ( (V!50818 (val!17217 Int)) )
))
(declare-datatypes ((ValueCell!16244 0))(
  ( (ValueCellFull!16244 (v!19818 V!50817)) (EmptyCell!16244) )
))
(declare-datatypes ((array!85567 0))(
  ( (array!85568 (arr!41280 (Array (_ BitVec 32) ValueCell!16244)) (size!41831 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85567)

(declare-fun mapDefault!52988 () ValueCell!16244)

