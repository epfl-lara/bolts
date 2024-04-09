; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108034 () Bool)

(assert start!108034)

(declare-fun res!847903 () Bool)

(declare-fun e!728261 () Bool)

(assert (=> start!108034 (=> (not res!847903) (not e!728261))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108034 (= res!847903 (validMask!0 mask!1805))))

(assert (=> start!108034 e!728261))

(assert (=> start!108034 true))

(declare-datatypes ((V!49465 0))(
  ( (V!49466 (val!16710 Int)) )
))
(declare-datatypes ((ValueCell!15737 0))(
  ( (ValueCellFull!15737 (v!19305 V!49465)) (EmptyCell!15737) )
))
(declare-datatypes ((array!83597 0))(
  ( (array!83598 (arr!40306 (Array (_ BitVec 32) ValueCell!15737)) (size!40857 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83597)

(declare-fun e!728263 () Bool)

(declare-fun array_inv!30589 (array!83597) Bool)

(assert (=> start!108034 (and (array_inv!30589 _values!1187) e!728263)))

(declare-datatypes ((array!83599 0))(
  ( (array!83600 (arr!40307 (Array (_ BitVec 32) (_ BitVec 64))) (size!40858 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83599)

(declare-fun array_inv!30590 (array!83599) Bool)

(assert (=> start!108034 (array_inv!30590 _keys!1427)))

(declare-fun mapNonEmpty!51434 () Bool)

(declare-fun mapRes!51434 () Bool)

(declare-fun tp!98193 () Bool)

(declare-fun e!728264 () Bool)

(assert (=> mapNonEmpty!51434 (= mapRes!51434 (and tp!98193 e!728264))))

(declare-fun mapRest!51434 () (Array (_ BitVec 32) ValueCell!15737))

(declare-fun mapKey!51434 () (_ BitVec 32))

(declare-fun mapValue!51434 () ValueCell!15737)

(assert (=> mapNonEmpty!51434 (= (arr!40306 _values!1187) (store mapRest!51434 mapKey!51434 mapValue!51434))))

(declare-fun mapIsEmpty!51434 () Bool)

(assert (=> mapIsEmpty!51434 mapRes!51434))

(declare-fun b!1275578 () Bool)

(declare-fun tp_is_empty!33271 () Bool)

(assert (=> b!1275578 (= e!728264 tp_is_empty!33271)))

(declare-fun b!1275579 () Bool)

(declare-fun e!728262 () Bool)

(assert (=> b!1275579 (= e!728263 (and e!728262 mapRes!51434))))

(declare-fun condMapEmpty!51434 () Bool)

(declare-fun mapDefault!51434 () ValueCell!15737)

