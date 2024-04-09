; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108052 () Bool)

(assert start!108052)

(declare-fun b!1275740 () Bool)

(declare-fun e!728399 () Bool)

(declare-fun tp_is_empty!33289 () Bool)

(assert (=> b!1275740 (= e!728399 tp_is_empty!33289)))

(declare-fun b!1275741 () Bool)

(declare-fun e!728396 () Bool)

(assert (=> b!1275741 (= e!728396 tp_is_empty!33289)))

(declare-fun res!847984 () Bool)

(declare-fun e!728395 () Bool)

(assert (=> start!108052 (=> (not res!847984) (not e!728395))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108052 (= res!847984 (validMask!0 mask!1805))))

(assert (=> start!108052 e!728395))

(assert (=> start!108052 true))

(declare-datatypes ((V!49489 0))(
  ( (V!49490 (val!16719 Int)) )
))
(declare-datatypes ((ValueCell!15746 0))(
  ( (ValueCellFull!15746 (v!19314 V!49489)) (EmptyCell!15746) )
))
(declare-datatypes ((array!83629 0))(
  ( (array!83630 (arr!40322 (Array (_ BitVec 32) ValueCell!15746)) (size!40873 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83629)

(declare-fun e!728397 () Bool)

(declare-fun array_inv!30599 (array!83629) Bool)

(assert (=> start!108052 (and (array_inv!30599 _values!1187) e!728397)))

(declare-datatypes ((array!83631 0))(
  ( (array!83632 (arr!40323 (Array (_ BitVec 32) (_ BitVec 64))) (size!40874 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83631)

(declare-fun array_inv!30600 (array!83631) Bool)

(assert (=> start!108052 (array_inv!30600 _keys!1427)))

(declare-fun b!1275742 () Bool)

(declare-fun mapRes!51461 () Bool)

(assert (=> b!1275742 (= e!728397 (and e!728396 mapRes!51461))))

(declare-fun condMapEmpty!51461 () Bool)

(declare-fun mapDefault!51461 () ValueCell!15746)

