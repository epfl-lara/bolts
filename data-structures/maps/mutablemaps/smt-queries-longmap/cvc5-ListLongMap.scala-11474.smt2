; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133674 () Bool)

(assert start!133674)

(declare-fun b!1562507 () Bool)

(declare-fun e!870729 () Bool)

(declare-fun tp_is_empty!38725 () Bool)

(assert (=> b!1562507 (= e!870729 tp_is_empty!38725)))

(declare-fun b!1562508 () Bool)

(declare-fun res!1068378 () Bool)

(declare-fun e!870728 () Bool)

(assert (=> b!1562508 (=> (not res!1068378) (not e!870728))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104115 0))(
  ( (array!104116 (arr!50245 (Array (_ BitVec 32) (_ BitVec 64))) (size!50796 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104115)

(declare-datatypes ((V!59841 0))(
  ( (V!59842 (val!19446 Int)) )
))
(declare-datatypes ((ValueCell!18332 0))(
  ( (ValueCellFull!18332 (v!22195 V!59841)) (EmptyCell!18332) )
))
(declare-datatypes ((array!104117 0))(
  ( (array!104118 (arr!50246 (Array (_ BitVec 32) ValueCell!18332)) (size!50797 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104117)

(assert (=> b!1562508 (= res!1068378 (and (= (size!50797 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50796 _keys!637) (size!50797 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562509 () Bool)

(declare-fun res!1068380 () Bool)

(assert (=> b!1562509 (=> (not res!1068380) (not e!870728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104115 (_ BitVec 32)) Bool)

(assert (=> b!1562509 (= res!1068380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapIsEmpty!59463 () Bool)

(declare-fun mapRes!59463 () Bool)

(assert (=> mapIsEmpty!59463 mapRes!59463))

(declare-fun res!1068379 () Bool)

(assert (=> start!133674 (=> (not res!1068379) (not e!870728))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133674 (= res!1068379 (validMask!0 mask!947))))

(assert (=> start!133674 e!870728))

(assert (=> start!133674 true))

(declare-fun e!870731 () Bool)

(declare-fun array_inv!38979 (array!104117) Bool)

(assert (=> start!133674 (and (array_inv!38979 _values!487) e!870731)))

(declare-fun array_inv!38980 (array!104115) Bool)

(assert (=> start!133674 (array_inv!38980 _keys!637)))

(declare-fun mapNonEmpty!59463 () Bool)

(declare-fun tp!113299 () Bool)

(assert (=> mapNonEmpty!59463 (= mapRes!59463 (and tp!113299 e!870729))))

(declare-fun mapRest!59463 () (Array (_ BitVec 32) ValueCell!18332))

(declare-fun mapValue!59463 () ValueCell!18332)

(declare-fun mapKey!59463 () (_ BitVec 32))

(assert (=> mapNonEmpty!59463 (= (arr!50246 _values!487) (store mapRest!59463 mapKey!59463 mapValue!59463))))

(declare-fun b!1562510 () Bool)

(declare-fun e!870730 () Bool)

(assert (=> b!1562510 (= e!870731 (and e!870730 mapRes!59463))))

(declare-fun condMapEmpty!59463 () Bool)

(declare-fun mapDefault!59463 () ValueCell!18332)

