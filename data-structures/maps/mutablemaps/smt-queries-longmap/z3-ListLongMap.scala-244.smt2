; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4146 () Bool)

(assert start!4146)

(declare-fun b_free!1053 () Bool)

(declare-fun b_next!1053 () Bool)

(assert (=> start!4146 (= b_free!1053 (not b_next!1053))))

(declare-fun tp!4578 () Bool)

(declare-fun b_and!1865 () Bool)

(assert (=> start!4146 (= tp!4578 b_and!1865)))

(declare-fun b!31250 () Bool)

(declare-fun res!18906 () Bool)

(declare-fun e!19981 () Bool)

(assert (=> b!31250 (=> (not res!18906) (not e!19981))))

(declare-datatypes ((array!2021 0))(
  ( (array!2022 (arr!964 (Array (_ BitVec 32) (_ BitVec 64))) (size!1065 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2021)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!2021 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!31250 (= res!18906 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!31251 () Bool)

(declare-fun res!18904 () Bool)

(assert (=> b!31251 (=> (not res!18904) (not e!19981))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2021 (_ BitVec 32)) Bool)

(assert (=> b!31251 (= res!18904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun res!18907 () Bool)

(assert (=> start!4146 (=> (not res!18907) (not e!19981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4146 (= res!18907 (validMask!0 mask!2294))))

(assert (=> start!4146 e!19981))

(assert (=> start!4146 true))

(assert (=> start!4146 tp!4578))

(declare-datatypes ((V!1701 0))(
  ( (V!1702 (val!730 Int)) )
))
(declare-datatypes ((ValueCell!504 0))(
  ( (ValueCellFull!504 (v!1819 V!1701)) (EmptyCell!504) )
))
(declare-datatypes ((array!2023 0))(
  ( (array!2024 (arr!965 (Array (_ BitVec 32) ValueCell!504)) (size!1066 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2023)

(declare-fun e!19979 () Bool)

(declare-fun array_inv!641 (array!2023) Bool)

(assert (=> start!4146 (and (array_inv!641 _values!1501) e!19979)))

(declare-fun array_inv!642 (array!2021) Bool)

(assert (=> start!4146 (array_inv!642 _keys!1833)))

(declare-fun tp_is_empty!1407 () Bool)

(assert (=> start!4146 tp_is_empty!1407))

(declare-fun mapIsEmpty!1639 () Bool)

(declare-fun mapRes!1639 () Bool)

(assert (=> mapIsEmpty!1639 mapRes!1639))

(declare-fun b!31252 () Bool)

(declare-fun res!18901 () Bool)

(assert (=> b!31252 (=> (not res!18901) (not e!19981))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!31252 (= res!18901 (and (= (size!1066 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1065 _keys!1833) (size!1066 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!31253 () Bool)

(declare-fun res!18903 () Bool)

(assert (=> b!31253 (=> (not res!18903) (not e!19981))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31253 (= res!18903 (validKeyInArray!0 k0!1304))))

(declare-fun b!31254 () Bool)

(declare-fun res!18902 () Bool)

(assert (=> b!31254 (=> (not res!18902) (not e!19981))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1701)

(declare-fun minValue!1443 () V!1701)

(declare-datatypes ((tuple2!1188 0))(
  ( (tuple2!1189 (_1!604 (_ BitVec 64)) (_2!604 V!1701)) )
))
(declare-datatypes ((List!790 0))(
  ( (Nil!787) (Cons!786 (h!1353 tuple2!1188) (t!3485 List!790)) )
))
(declare-datatypes ((ListLongMap!769 0))(
  ( (ListLongMap!770 (toList!400 List!790)) )
))
(declare-fun contains!337 (ListLongMap!769 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!225 (array!2021 array!2023 (_ BitVec 32) (_ BitVec 32) V!1701 V!1701 (_ BitVec 32) Int) ListLongMap!769)

(assert (=> b!31254 (= res!18902 (not (contains!337 (getCurrentListMap!225 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!31255 () Bool)

(assert (=> b!31255 (= e!19981 false)))

(declare-datatypes ((SeekEntryResult!127 0))(
  ( (MissingZero!127 (index!2630 (_ BitVec 32))) (Found!127 (index!2631 (_ BitVec 32))) (Intermediate!127 (undefined!939 Bool) (index!2632 (_ BitVec 32)) (x!6621 (_ BitVec 32))) (Undefined!127) (MissingVacant!127 (index!2633 (_ BitVec 32))) )
))
(declare-fun lt!11550 () SeekEntryResult!127)

(declare-fun seekEntry!0 ((_ BitVec 64) array!2021 (_ BitVec 32)) SeekEntryResult!127)

(assert (=> b!31255 (= lt!11550 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!31256 () Bool)

(declare-fun e!19977 () Bool)

(assert (=> b!31256 (= e!19977 tp_is_empty!1407)))

(declare-fun b!31257 () Bool)

(declare-fun res!18905 () Bool)

(assert (=> b!31257 (=> (not res!18905) (not e!19981))))

(declare-datatypes ((List!791 0))(
  ( (Nil!788) (Cons!787 (h!1354 (_ BitVec 64)) (t!3486 List!791)) )
))
(declare-fun arrayNoDuplicates!0 (array!2021 (_ BitVec 32) List!791) Bool)

(assert (=> b!31257 (= res!18905 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!788))))

(declare-fun mapNonEmpty!1639 () Bool)

(declare-fun tp!4579 () Bool)

(assert (=> mapNonEmpty!1639 (= mapRes!1639 (and tp!4579 e!19977))))

(declare-fun mapValue!1639 () ValueCell!504)

(declare-fun mapRest!1639 () (Array (_ BitVec 32) ValueCell!504))

(declare-fun mapKey!1639 () (_ BitVec 32))

(assert (=> mapNonEmpty!1639 (= (arr!965 _values!1501) (store mapRest!1639 mapKey!1639 mapValue!1639))))

(declare-fun b!31258 () Bool)

(declare-fun e!19980 () Bool)

(assert (=> b!31258 (= e!19980 tp_is_empty!1407)))

(declare-fun b!31259 () Bool)

(assert (=> b!31259 (= e!19979 (and e!19980 mapRes!1639))))

(declare-fun condMapEmpty!1639 () Bool)

(declare-fun mapDefault!1639 () ValueCell!504)

(assert (=> b!31259 (= condMapEmpty!1639 (= (arr!965 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!504)) mapDefault!1639)))))

(assert (= (and start!4146 res!18907) b!31252))

(assert (= (and b!31252 res!18901) b!31251))

(assert (= (and b!31251 res!18904) b!31257))

(assert (= (and b!31257 res!18905) b!31253))

(assert (= (and b!31253 res!18903) b!31254))

(assert (= (and b!31254 res!18902) b!31250))

(assert (= (and b!31250 res!18906) b!31255))

(assert (= (and b!31259 condMapEmpty!1639) mapIsEmpty!1639))

(assert (= (and b!31259 (not condMapEmpty!1639)) mapNonEmpty!1639))

(get-info :version)

(assert (= (and mapNonEmpty!1639 ((_ is ValueCellFull!504) mapValue!1639)) b!31256))

(assert (= (and b!31259 ((_ is ValueCellFull!504) mapDefault!1639)) b!31258))

(assert (= start!4146 b!31259))

(declare-fun m!25087 () Bool)

(assert (=> b!31251 m!25087))

(declare-fun m!25089 () Bool)

(assert (=> start!4146 m!25089))

(declare-fun m!25091 () Bool)

(assert (=> start!4146 m!25091))

(declare-fun m!25093 () Bool)

(assert (=> start!4146 m!25093))

(declare-fun m!25095 () Bool)

(assert (=> b!31254 m!25095))

(assert (=> b!31254 m!25095))

(declare-fun m!25097 () Bool)

(assert (=> b!31254 m!25097))

(declare-fun m!25099 () Bool)

(assert (=> b!31255 m!25099))

(declare-fun m!25101 () Bool)

(assert (=> b!31257 m!25101))

(declare-fun m!25103 () Bool)

(assert (=> b!31253 m!25103))

(declare-fun m!25105 () Bool)

(assert (=> mapNonEmpty!1639 m!25105))

(declare-fun m!25107 () Bool)

(assert (=> b!31250 m!25107))

(check-sat tp_is_empty!1407 (not mapNonEmpty!1639) (not b_next!1053) (not start!4146) (not b!31255) b_and!1865 (not b!31254) (not b!31251) (not b!31250) (not b!31257) (not b!31253))
(check-sat b_and!1865 (not b_next!1053))
