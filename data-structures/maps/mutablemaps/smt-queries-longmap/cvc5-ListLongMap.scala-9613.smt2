; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113742 () Bool)

(assert start!113742)

(declare-fun b_free!31591 () Bool)

(declare-fun b_next!31591 () Bool)

(assert (=> start!113742 (= b_free!31591 (not b_next!31591))))

(declare-fun tp!110593 () Bool)

(declare-fun b_and!50999 () Bool)

(assert (=> start!113742 (= tp!110593 b_and!50999)))

(declare-fun b!1349471 () Bool)

(declare-fun res!895337 () Bool)

(declare-fun e!767684 () Bool)

(assert (=> b!1349471 (=> (not res!895337) (not e!767684))))

(declare-datatypes ((array!91973 0))(
  ( (array!91974 (arr!44434 (Array (_ BitVec 32) (_ BitVec 64))) (size!44985 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91973)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91973 (_ BitVec 32)) Bool)

(assert (=> b!1349471 (= res!895337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1349472 () Bool)

(declare-fun res!895344 () Bool)

(assert (=> b!1349472 (=> (not res!895344) (not e!767684))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!55225 0))(
  ( (V!55226 (val!18870 Int)) )
))
(declare-datatypes ((ValueCell!17897 0))(
  ( (ValueCellFull!17897 (v!21524 V!55225)) (EmptyCell!17897) )
))
(declare-datatypes ((array!91975 0))(
  ( (array!91976 (arr!44435 (Array (_ BitVec 32) ValueCell!17897)) (size!44986 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91975)

(assert (=> b!1349472 (= res!895344 (and (= (size!44986 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44985 _keys!1571) (size!44986 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1349473 () Bool)

(declare-fun res!895339 () Bool)

(assert (=> b!1349473 (=> (not res!895339) (not e!767684))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1349473 (= res!895339 (not (= (select (arr!44434 _keys!1571) from!1960) k!1142)))))

(declare-fun mapNonEmpty!58107 () Bool)

(declare-fun mapRes!58107 () Bool)

(declare-fun tp!110592 () Bool)

(declare-fun e!767685 () Bool)

(assert (=> mapNonEmpty!58107 (= mapRes!58107 (and tp!110592 e!767685))))

(declare-fun mapRest!58107 () (Array (_ BitVec 32) ValueCell!17897))

(declare-fun mapKey!58107 () (_ BitVec 32))

(declare-fun mapValue!58107 () ValueCell!17897)

(assert (=> mapNonEmpty!58107 (= (arr!44435 _values!1303) (store mapRest!58107 mapKey!58107 mapValue!58107))))

(declare-fun b!1349474 () Bool)

(declare-fun res!895341 () Bool)

(assert (=> b!1349474 (=> (not res!895341) (not e!767684))))

(assert (=> b!1349474 (= res!895341 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44985 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1349475 () Bool)

(declare-fun tp_is_empty!37591 () Bool)

(assert (=> b!1349475 (= e!767685 tp_is_empty!37591)))

(declare-fun b!1349476 () Bool)

(declare-fun e!767686 () Bool)

(declare-fun e!767683 () Bool)

(assert (=> b!1349476 (= e!767686 (and e!767683 mapRes!58107))))

(declare-fun condMapEmpty!58107 () Bool)

(declare-fun mapDefault!58107 () ValueCell!17897)

