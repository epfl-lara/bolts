; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113304 () Bool)

(assert start!113304)

(declare-fun b_free!31319 () Bool)

(declare-fun b_next!31319 () Bool)

(assert (=> start!113304 (= b_free!31319 (not b_next!31319))))

(declare-fun tp!109762 () Bool)

(declare-fun b_and!50551 () Bool)

(assert (=> start!113304 (= tp!109762 b_and!50551)))

(declare-fun b!1343818 () Bool)

(declare-fun res!891691 () Bool)

(declare-fun e!764844 () Bool)

(assert (=> b!1343818 (=> (not res!891691) (not e!764844))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91437 0))(
  ( (array!91438 (arr!44170 (Array (_ BitVec 32) (_ BitVec 64))) (size!44721 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91437)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54861 0))(
  ( (V!54862 (val!18734 Int)) )
))
(declare-datatypes ((ValueCell!17761 0))(
  ( (ValueCellFull!17761 (v!21380 V!54861)) (EmptyCell!17761) )
))
(declare-datatypes ((array!91439 0))(
  ( (array!91440 (arr!44171 (Array (_ BitVec 32) ValueCell!17761)) (size!44722 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91439)

(assert (=> b!1343818 (= res!891691 (and (= (size!44722 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44721 _keys!1571) (size!44722 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!57685 () Bool)

(declare-fun mapRes!57685 () Bool)

(assert (=> mapIsEmpty!57685 mapRes!57685))

(declare-fun b!1343819 () Bool)

(declare-fun e!764846 () Bool)

(declare-fun tp_is_empty!37319 () Bool)

(assert (=> b!1343819 (= e!764846 tp_is_empty!37319)))

(declare-fun res!891694 () Bool)

(assert (=> start!113304 (=> (not res!891694) (not e!764844))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113304 (= res!891694 (validMask!0 mask!1977))))

(assert (=> start!113304 e!764844))

(assert (=> start!113304 tp_is_empty!37319))

(assert (=> start!113304 true))

(declare-fun array_inv!33207 (array!91437) Bool)

(assert (=> start!113304 (array_inv!33207 _keys!1571)))

(declare-fun e!764843 () Bool)

(declare-fun array_inv!33208 (array!91439) Bool)

(assert (=> start!113304 (and (array_inv!33208 _values!1303) e!764843)))

(assert (=> start!113304 tp!109762))

(declare-fun b!1343820 () Bool)

(declare-fun e!764845 () Bool)

(assert (=> b!1343820 (= e!764843 (and e!764845 mapRes!57685))))

(declare-fun condMapEmpty!57685 () Bool)

(declare-fun mapDefault!57685 () ValueCell!17761)

