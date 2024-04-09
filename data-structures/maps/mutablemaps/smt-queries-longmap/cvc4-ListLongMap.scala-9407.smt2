; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112002 () Bool)

(assert start!112002)

(declare-fun b_free!30539 () Bool)

(declare-fun b_next!30539 () Bool)

(assert (=> start!112002 (= b_free!30539 (not b_next!30539))))

(declare-fun tp!107100 () Bool)

(declare-fun b_and!49187 () Bool)

(assert (=> start!112002 (= tp!107100 b_and!49187)))

(declare-fun b!1326810 () Bool)

(declare-fun res!880650 () Bool)

(declare-fun e!756239 () Bool)

(assert (=> b!1326810 (=> (not res!880650) (not e!756239))))

(declare-datatypes ((array!89587 0))(
  ( (array!89588 (arr!43261 (Array (_ BitVec 32) (_ BitVec 64))) (size!43812 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89587)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1326810 (= res!880650 (not (validKeyInArray!0 (select (arr!43261 _keys!1609) from!2000))))))

(declare-fun b!1326811 () Bool)

(declare-fun res!880654 () Bool)

(assert (=> b!1326811 (=> (not res!880654) (not e!756239))))

(declare-datatypes ((List!30868 0))(
  ( (Nil!30865) (Cons!30864 (h!32073 (_ BitVec 64)) (t!44879 List!30868)) )
))
(declare-fun arrayNoDuplicates!0 (array!89587 (_ BitVec 32) List!30868) Bool)

(assert (=> b!1326811 (= res!880654 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30865))))

(declare-fun mapIsEmpty!56193 () Bool)

(declare-fun mapRes!56193 () Bool)

(assert (=> mapIsEmpty!56193 mapRes!56193))

(declare-fun b!1326812 () Bool)

(declare-fun res!880656 () Bool)

(assert (=> b!1326812 (=> (not res!880656) (not e!756239))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89587 (_ BitVec 32)) Bool)

(assert (=> b!1326812 (= res!880656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1326813 () Bool)

(declare-fun e!756241 () Bool)

(declare-fun tp_is_empty!36359 () Bool)

(assert (=> b!1326813 (= e!756241 tp_is_empty!36359)))

(declare-fun mapNonEmpty!56193 () Bool)

(declare-fun tp!107101 () Bool)

(assert (=> mapNonEmpty!56193 (= mapRes!56193 (and tp!107101 e!756241))))

(declare-fun mapKey!56193 () (_ BitVec 32))

(declare-datatypes ((V!53581 0))(
  ( (V!53582 (val!18254 Int)) )
))
(declare-datatypes ((ValueCell!17281 0))(
  ( (ValueCellFull!17281 (v!20886 V!53581)) (EmptyCell!17281) )
))
(declare-fun mapRest!56193 () (Array (_ BitVec 32) ValueCell!17281))

(declare-fun mapValue!56193 () ValueCell!17281)

(declare-datatypes ((array!89589 0))(
  ( (array!89590 (arr!43262 (Array (_ BitVec 32) ValueCell!17281)) (size!43813 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89589)

(assert (=> mapNonEmpty!56193 (= (arr!43262 _values!1337) (store mapRest!56193 mapKey!56193 mapValue!56193))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53581)

(declare-fun minValue!1279 () V!53581)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun b!1326814 () Bool)

(declare-datatypes ((tuple2!23704 0))(
  ( (tuple2!23705 (_1!11862 (_ BitVec 64)) (_2!11862 V!53581)) )
))
(declare-datatypes ((List!30869 0))(
  ( (Nil!30866) (Cons!30865 (h!32074 tuple2!23704) (t!44880 List!30869)) )
))
(declare-datatypes ((ListLongMap!21373 0))(
  ( (ListLongMap!21374 (toList!10702 List!30869)) )
))
(declare-fun contains!8797 (ListLongMap!21373 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5634 (array!89587 array!89589 (_ BitVec 32) (_ BitVec 32) V!53581 V!53581 (_ BitVec 32) Int) ListLongMap!21373)

(assert (=> b!1326814 (= e!756239 (not (contains!8797 (getCurrentListMap!5634 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) k!1164)))))

(declare-fun b!1326815 () Bool)

(declare-fun res!880649 () Bool)

(assert (=> b!1326815 (=> (not res!880649) (not e!756239))))

(assert (=> b!1326815 (= res!880649 (contains!8797 (getCurrentListMap!5634 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun res!880655 () Bool)

(assert (=> start!112002 (=> (not res!880655) (not e!756239))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112002 (= res!880655 (validMask!0 mask!2019))))

(assert (=> start!112002 e!756239))

(declare-fun array_inv!32595 (array!89587) Bool)

(assert (=> start!112002 (array_inv!32595 _keys!1609)))

(assert (=> start!112002 true))

(assert (=> start!112002 tp_is_empty!36359))

(declare-fun e!756238 () Bool)

(declare-fun array_inv!32596 (array!89589) Bool)

(assert (=> start!112002 (and (array_inv!32596 _values!1337) e!756238)))

(assert (=> start!112002 tp!107100))

(declare-fun b!1326809 () Bool)

(declare-fun e!756240 () Bool)

(assert (=> b!1326809 (= e!756238 (and e!756240 mapRes!56193))))

(declare-fun condMapEmpty!56193 () Bool)

(declare-fun mapDefault!56193 () ValueCell!17281)

