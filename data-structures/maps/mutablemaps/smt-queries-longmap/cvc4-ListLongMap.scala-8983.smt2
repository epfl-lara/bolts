; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108698 () Bool)

(assert start!108698)

(declare-fun b_free!28175 () Bool)

(declare-fun b_next!28175 () Bool)

(assert (=> start!108698 (= b_free!28175 (not b_next!28175))))

(declare-fun tp!99641 () Bool)

(declare-fun b_and!46251 () Bool)

(assert (=> start!108698 (= tp!99641 b_and!46251)))

(declare-fun b!1282539 () Bool)

(declare-fun e!732847 () Bool)

(declare-fun tp_is_empty!33815 () Bool)

(assert (=> b!1282539 (= e!732847 tp_is_empty!33815)))

(declare-fun b!1282540 () Bool)

(declare-fun e!732849 () Bool)

(assert (=> b!1282540 (= e!732849 tp_is_empty!33815)))

(declare-fun b!1282541 () Bool)

(declare-fun res!851982 () Bool)

(declare-fun e!732848 () Bool)

(assert (=> b!1282541 (=> (not res!851982) (not e!732848))))

(declare-datatypes ((array!84651 0))(
  ( (array!84652 (arr!40823 (Array (_ BitVec 32) (_ BitVec 64))) (size!41374 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84651)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84651 (_ BitVec 32)) Bool)

(assert (=> b!1282541 (= res!851982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!52280 () Bool)

(declare-fun mapRes!52280 () Bool)

(assert (=> mapIsEmpty!52280 mapRes!52280))

(declare-fun b!1282542 () Bool)

(declare-fun res!851978 () Bool)

(assert (=> b!1282542 (=> (not res!851978) (not e!732848))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1282542 (= res!851978 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41374 _keys!1741))))))

(declare-fun b!1282543 () Bool)

(declare-fun e!732850 () Bool)

(assert (=> b!1282543 (= e!732850 (and e!732849 mapRes!52280))))

(declare-fun condMapEmpty!52280 () Bool)

(declare-datatypes ((V!50189 0))(
  ( (V!50190 (val!16982 Int)) )
))
(declare-datatypes ((ValueCell!16009 0))(
  ( (ValueCellFull!16009 (v!19582 V!50189)) (EmptyCell!16009) )
))
(declare-datatypes ((array!84653 0))(
  ( (array!84654 (arr!40824 (Array (_ BitVec 32) ValueCell!16009)) (size!41375 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84653)

(declare-fun mapDefault!52280 () ValueCell!16009)

