; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108038 () Bool)

(assert start!108038)

(declare-fun res!847921 () Bool)

(declare-fun e!728291 () Bool)

(assert (=> start!108038 (=> (not res!847921) (not e!728291))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108038 (= res!847921 (validMask!0 mask!1805))))

(assert (=> start!108038 e!728291))

(assert (=> start!108038 true))

(declare-datatypes ((V!49469 0))(
  ( (V!49470 (val!16712 Int)) )
))
(declare-datatypes ((ValueCell!15739 0))(
  ( (ValueCellFull!15739 (v!19307 V!49469)) (EmptyCell!15739) )
))
(declare-datatypes ((array!83605 0))(
  ( (array!83606 (arr!40310 (Array (_ BitVec 32) ValueCell!15739)) (size!40861 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83605)

(declare-fun e!728292 () Bool)

(declare-fun array_inv!30593 (array!83605) Bool)

(assert (=> start!108038 (and (array_inv!30593 _values!1187) e!728292)))

(declare-datatypes ((array!83607 0))(
  ( (array!83608 (arr!40311 (Array (_ BitVec 32) (_ BitVec 64))) (size!40862 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83607)

(declare-fun array_inv!30594 (array!83607) Bool)

(assert (=> start!108038 (array_inv!30594 _keys!1427)))

(declare-fun mapNonEmpty!51440 () Bool)

(declare-fun mapRes!51440 () Bool)

(declare-fun tp!98199 () Bool)

(declare-fun e!728290 () Bool)

(assert (=> mapNonEmpty!51440 (= mapRes!51440 (and tp!98199 e!728290))))

(declare-fun mapKey!51440 () (_ BitVec 32))

(declare-fun mapValue!51440 () ValueCell!15739)

(declare-fun mapRest!51440 () (Array (_ BitVec 32) ValueCell!15739))

(assert (=> mapNonEmpty!51440 (= (arr!40310 _values!1187) (store mapRest!51440 mapKey!51440 mapValue!51440))))

(declare-fun b!1275614 () Bool)

(declare-fun e!728294 () Bool)

(assert (=> b!1275614 (= e!728292 (and e!728294 mapRes!51440))))

(declare-fun condMapEmpty!51440 () Bool)

(declare-fun mapDefault!51440 () ValueCell!15739)

