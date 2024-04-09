; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83990 () Bool)

(assert start!83990)

(declare-fun res!656591 () Bool)

(declare-fun e!553074 () Bool)

(assert (=> start!83990 (=> (not res!656591) (not e!553074))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83990 (= res!656591 (validMask!0 mask!1948))))

(assert (=> start!83990 e!553074))

(assert (=> start!83990 true))

(declare-datatypes ((V!35337 0))(
  ( (V!35338 (val!11433 Int)) )
))
(declare-datatypes ((ValueCell!10901 0))(
  ( (ValueCellFull!10901 (v!13995 V!35337)) (EmptyCell!10901) )
))
(declare-datatypes ((array!61527 0))(
  ( (array!61528 (arr!29617 (Array (_ BitVec 32) ValueCell!10901)) (size!30097 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61527)

(declare-fun e!553073 () Bool)

(declare-fun array_inv!22779 (array!61527) Bool)

(assert (=> start!83990 (and (array_inv!22779 _values!1278) e!553073)))

(declare-datatypes ((array!61529 0))(
  ( (array!61530 (arr!29618 (Array (_ BitVec 32) (_ BitVec 64))) (size!30098 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61529)

(declare-fun array_inv!22780 (array!61529) Bool)

(assert (=> start!83990 (array_inv!22780 _keys!1544)))

(declare-fun mapNonEmpty!36176 () Bool)

(declare-fun mapRes!36176 () Bool)

(declare-fun tp!68690 () Bool)

(declare-fun e!553075 () Bool)

(assert (=> mapNonEmpty!36176 (= mapRes!36176 (and tp!68690 e!553075))))

(declare-fun mapKey!36176 () (_ BitVec 32))

(declare-fun mapRest!36176 () (Array (_ BitVec 32) ValueCell!10901))

(declare-fun mapValue!36176 () ValueCell!10901)

(assert (=> mapNonEmpty!36176 (= (arr!29617 _values!1278) (store mapRest!36176 mapKey!36176 mapValue!36176))))

(declare-fun b!981019 () Bool)

(assert (=> b!981019 (= e!553074 false)))

(declare-fun lt!435610 () Bool)

(declare-datatypes ((List!20655 0))(
  ( (Nil!20652) (Cons!20651 (h!21813 (_ BitVec 64)) (t!29346 List!20655)) )
))
(declare-fun arrayNoDuplicates!0 (array!61529 (_ BitVec 32) List!20655) Bool)

(assert (=> b!981019 (= lt!435610 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20652))))

(declare-fun b!981020 () Bool)

(declare-fun res!656590 () Bool)

(assert (=> b!981020 (=> (not res!656590) (not e!553074))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!981020 (= res!656590 (and (= (size!30097 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30098 _keys!1544) (size!30097 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!981021 () Bool)

(declare-fun res!656592 () Bool)

(assert (=> b!981021 (=> (not res!656592) (not e!553074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61529 (_ BitVec 32)) Bool)

(assert (=> b!981021 (= res!656592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!981022 () Bool)

(declare-fun tp_is_empty!22765 () Bool)

(assert (=> b!981022 (= e!553075 tp_is_empty!22765)))

(declare-fun mapIsEmpty!36176 () Bool)

(assert (=> mapIsEmpty!36176 mapRes!36176))

(declare-fun b!981023 () Bool)

(declare-fun e!553076 () Bool)

(assert (=> b!981023 (= e!553073 (and e!553076 mapRes!36176))))

(declare-fun condMapEmpty!36176 () Bool)

(declare-fun mapDefault!36176 () ValueCell!10901)

