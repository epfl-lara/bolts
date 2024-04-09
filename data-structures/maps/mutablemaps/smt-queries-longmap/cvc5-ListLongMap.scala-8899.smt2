; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108070 () Bool)

(assert start!108070)

(declare-fun b!1275902 () Bool)

(declare-fun res!848066 () Bool)

(declare-fun e!728533 () Bool)

(assert (=> b!1275902 (=> (not res!848066) (not e!728533))))

(declare-datatypes ((array!83665 0))(
  ( (array!83666 (arr!40340 (Array (_ BitVec 32) (_ BitVec 64))) (size!40891 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83665)

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83665 (_ BitVec 32)) Bool)

(assert (=> b!1275902 (= res!848066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1275903 () Bool)

(declare-fun res!848067 () Bool)

(assert (=> b!1275903 (=> (not res!848067) (not e!728533))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((V!49513 0))(
  ( (V!49514 (val!16728 Int)) )
))
(declare-datatypes ((ValueCell!15755 0))(
  ( (ValueCellFull!15755 (v!19323 V!49513)) (EmptyCell!15755) )
))
(declare-datatypes ((array!83667 0))(
  ( (array!83668 (arr!40341 (Array (_ BitVec 32) ValueCell!15755)) (size!40892 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83667)

(assert (=> b!1275903 (= res!848067 (and (= (size!40892 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40891 _keys!1427) (size!40892 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun res!848065 () Bool)

(assert (=> start!108070 (=> (not res!848065) (not e!728533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108070 (= res!848065 (validMask!0 mask!1805))))

(assert (=> start!108070 e!728533))

(assert (=> start!108070 true))

(declare-fun e!728530 () Bool)

(declare-fun array_inv!30617 (array!83667) Bool)

(assert (=> start!108070 (and (array_inv!30617 _values!1187) e!728530)))

(declare-fun array_inv!30618 (array!83665) Bool)

(assert (=> start!108070 (array_inv!30618 _keys!1427)))

(declare-fun b!1275904 () Bool)

(declare-fun e!728532 () Bool)

(declare-fun tp_is_empty!33307 () Bool)

(assert (=> b!1275904 (= e!728532 tp_is_empty!33307)))

(declare-fun b!1275905 () Bool)

(declare-fun e!728534 () Bool)

(assert (=> b!1275905 (= e!728534 tp_is_empty!33307)))

(declare-fun mapNonEmpty!51488 () Bool)

(declare-fun mapRes!51488 () Bool)

(declare-fun tp!98247 () Bool)

(assert (=> mapNonEmpty!51488 (= mapRes!51488 (and tp!98247 e!728532))))

(declare-fun mapKey!51488 () (_ BitVec 32))

(declare-fun mapRest!51488 () (Array (_ BitVec 32) ValueCell!15755))

(declare-fun mapValue!51488 () ValueCell!15755)

(assert (=> mapNonEmpty!51488 (= (arr!40341 _values!1187) (store mapRest!51488 mapKey!51488 mapValue!51488))))

(declare-fun mapIsEmpty!51488 () Bool)

(assert (=> mapIsEmpty!51488 mapRes!51488))

(declare-fun b!1275906 () Bool)

(assert (=> b!1275906 (= e!728530 (and e!728534 mapRes!51488))))

(declare-fun condMapEmpty!51488 () Bool)

(declare-fun mapDefault!51488 () ValueCell!15755)

