; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83948 () Bool)

(assert start!83948)

(declare-fun res!656401 () Bool)

(declare-fun e!552761 () Bool)

(assert (=> start!83948 (=> (not res!656401) (not e!552761))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83948 (= res!656401 (validMask!0 mask!1948))))

(assert (=> start!83948 e!552761))

(assert (=> start!83948 true))

(declare-datatypes ((V!35281 0))(
  ( (V!35282 (val!11412 Int)) )
))
(declare-datatypes ((ValueCell!10880 0))(
  ( (ValueCellFull!10880 (v!13974 V!35281)) (EmptyCell!10880) )
))
(declare-datatypes ((array!61453 0))(
  ( (array!61454 (arr!29580 (Array (_ BitVec 32) ValueCell!10880)) (size!30060 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61453)

(declare-fun e!552758 () Bool)

(declare-fun array_inv!22755 (array!61453) Bool)

(assert (=> start!83948 (and (array_inv!22755 _values!1278) e!552758)))

(declare-datatypes ((array!61455 0))(
  ( (array!61456 (arr!29581 (Array (_ BitVec 32) (_ BitVec 64))) (size!30061 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61455)

(declare-fun array_inv!22756 (array!61455) Bool)

(assert (=> start!83948 (array_inv!22756 _keys!1544)))

(declare-fun mapNonEmpty!36113 () Bool)

(declare-fun mapRes!36113 () Bool)

(declare-fun tp!68627 () Bool)

(declare-fun e!552760 () Bool)

(assert (=> mapNonEmpty!36113 (= mapRes!36113 (and tp!68627 e!552760))))

(declare-fun mapValue!36113 () ValueCell!10880)

(declare-fun mapRest!36113 () (Array (_ BitVec 32) ValueCell!10880))

(declare-fun mapKey!36113 () (_ BitVec 32))

(assert (=> mapNonEmpty!36113 (= (arr!29580 _values!1278) (store mapRest!36113 mapKey!36113 mapValue!36113))))

(declare-fun b!980641 () Bool)

(declare-fun e!552759 () Bool)

(declare-fun tp_is_empty!22723 () Bool)

(assert (=> b!980641 (= e!552759 tp_is_empty!22723)))

(declare-fun mapIsEmpty!36113 () Bool)

(assert (=> mapIsEmpty!36113 mapRes!36113))

(declare-fun b!980642 () Bool)

(declare-fun res!656402 () Bool)

(assert (=> b!980642 (=> (not res!656402) (not e!552761))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61455 (_ BitVec 32)) Bool)

(assert (=> b!980642 (= res!656402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!980643 () Bool)

(assert (=> b!980643 (= e!552761 false)))

(declare-fun lt!435547 () Bool)

(declare-datatypes ((List!20643 0))(
  ( (Nil!20640) (Cons!20639 (h!21801 (_ BitVec 64)) (t!29334 List!20643)) )
))
(declare-fun arrayNoDuplicates!0 (array!61455 (_ BitVec 32) List!20643) Bool)

(assert (=> b!980643 (= lt!435547 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20640))))

(declare-fun b!980644 () Bool)

(assert (=> b!980644 (= e!552758 (and e!552759 mapRes!36113))))

(declare-fun condMapEmpty!36113 () Bool)

(declare-fun mapDefault!36113 () ValueCell!10880)

