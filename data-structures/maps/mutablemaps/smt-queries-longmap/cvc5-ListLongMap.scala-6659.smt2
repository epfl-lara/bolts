; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83954 () Bool)

(assert start!83954)

(declare-fun res!656429 () Bool)

(declare-fun e!552802 () Bool)

(assert (=> start!83954 (=> (not res!656429) (not e!552802))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83954 (= res!656429 (validMask!0 mask!1948))))

(assert (=> start!83954 e!552802))

(assert (=> start!83954 true))

(declare-datatypes ((V!35289 0))(
  ( (V!35290 (val!11415 Int)) )
))
(declare-datatypes ((ValueCell!10883 0))(
  ( (ValueCellFull!10883 (v!13977 V!35289)) (EmptyCell!10883) )
))
(declare-datatypes ((array!61465 0))(
  ( (array!61466 (arr!29586 (Array (_ BitVec 32) ValueCell!10883)) (size!30066 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61465)

(declare-fun e!552805 () Bool)

(declare-fun array_inv!22761 (array!61465) Bool)

(assert (=> start!83954 (and (array_inv!22761 _values!1278) e!552805)))

(declare-datatypes ((array!61467 0))(
  ( (array!61468 (arr!29587 (Array (_ BitVec 32) (_ BitVec 64))) (size!30067 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61467)

(declare-fun array_inv!22762 (array!61467) Bool)

(assert (=> start!83954 (array_inv!22762 _keys!1544)))

(declare-fun b!980695 () Bool)

(declare-fun res!656430 () Bool)

(assert (=> b!980695 (=> (not res!656430) (not e!552802))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61467 (_ BitVec 32)) Bool)

(assert (=> b!980695 (= res!656430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!36122 () Bool)

(declare-fun mapRes!36122 () Bool)

(declare-fun tp!68636 () Bool)

(declare-fun e!552804 () Bool)

(assert (=> mapNonEmpty!36122 (= mapRes!36122 (and tp!68636 e!552804))))

(declare-fun mapKey!36122 () (_ BitVec 32))

(declare-fun mapRest!36122 () (Array (_ BitVec 32) ValueCell!10883))

(declare-fun mapValue!36122 () ValueCell!10883)

(assert (=> mapNonEmpty!36122 (= (arr!29586 _values!1278) (store mapRest!36122 mapKey!36122 mapValue!36122))))

(declare-fun b!980696 () Bool)

(declare-fun e!552803 () Bool)

(declare-fun tp_is_empty!22729 () Bool)

(assert (=> b!980696 (= e!552803 tp_is_empty!22729)))

(declare-fun b!980697 () Bool)

(declare-fun res!656428 () Bool)

(assert (=> b!980697 (=> (not res!656428) (not e!552802))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!980697 (= res!656428 (and (= (size!30066 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30067 _keys!1544) (size!30066 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980698 () Bool)

(assert (=> b!980698 (= e!552804 tp_is_empty!22729)))

(declare-fun b!980699 () Bool)

(assert (=> b!980699 (= e!552802 false)))

(declare-fun lt!435556 () Bool)

(declare-datatypes ((List!20646 0))(
  ( (Nil!20643) (Cons!20642 (h!21804 (_ BitVec 64)) (t!29337 List!20646)) )
))
(declare-fun arrayNoDuplicates!0 (array!61467 (_ BitVec 32) List!20646) Bool)

(assert (=> b!980699 (= lt!435556 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20643))))

(declare-fun b!980700 () Bool)

(assert (=> b!980700 (= e!552805 (and e!552803 mapRes!36122))))

(declare-fun condMapEmpty!36122 () Bool)

(declare-fun mapDefault!36122 () ValueCell!10883)

