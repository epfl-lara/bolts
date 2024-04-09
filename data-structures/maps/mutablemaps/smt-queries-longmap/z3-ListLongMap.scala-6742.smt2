; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84546 () Bool)

(assert start!84546)

(declare-fun b_free!20013 () Bool)

(declare-fun b_next!20013 () Bool)

(assert (=> start!84546 (= b_free!20013 (not b_next!20013))))

(declare-fun tp!69824 () Bool)

(declare-fun b_and!32125 () Bool)

(assert (=> start!84546 (= tp!69824 b_and!32125)))

(declare-fun b!988372 () Bool)

(declare-fun e!557366 () Bool)

(assert (=> b!988372 (= e!557366 false)))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35955 0))(
  ( (V!35956 (val!11665 Int)) )
))
(declare-fun minValue!1220 () V!35955)

(declare-datatypes ((ValueCell!11133 0))(
  ( (ValueCellFull!11133 (v!14232 V!35955)) (EmptyCell!11133) )
))
(declare-datatypes ((array!62407 0))(
  ( (array!62408 (arr!30054 (Array (_ BitVec 32) ValueCell!11133)) (size!30534 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62407)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35955)

(declare-datatypes ((array!62409 0))(
  ( (array!62410 (arr!30055 (Array (_ BitVec 32) (_ BitVec 64))) (size!30535 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62409)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!14960 0))(
  ( (tuple2!14961 (_1!7490 (_ BitVec 64)) (_2!7490 V!35955)) )
))
(declare-datatypes ((List!20912 0))(
  ( (Nil!20909) (Cons!20908 (h!22070 tuple2!14960) (t!29857 List!20912)) )
))
(declare-datatypes ((ListLongMap!13671 0))(
  ( (ListLongMap!13672 (toList!6851 List!20912)) )
))
(declare-fun lt!438471 () ListLongMap!13671)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3501 (array!62409 array!62407 (_ BitVec 32) (_ BitVec 32) V!35955 V!35955 (_ BitVec 32) Int) ListLongMap!13671)

(assert (=> b!988372 (= lt!438471 (getCurrentListMapNoExtraKeys!3501 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!988373 () Bool)

(declare-fun e!557365 () Bool)

(declare-fun tp_is_empty!23229 () Bool)

(assert (=> b!988373 (= e!557365 tp_is_empty!23229)))

(declare-fun mapIsEmpty!36882 () Bool)

(declare-fun mapRes!36882 () Bool)

(assert (=> mapIsEmpty!36882 mapRes!36882))

(declare-fun res!661171 () Bool)

(assert (=> start!84546 (=> (not res!661171) (not e!557366))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84546 (= res!661171 (validMask!0 mask!1948))))

(assert (=> start!84546 e!557366))

(assert (=> start!84546 true))

(assert (=> start!84546 tp_is_empty!23229))

(declare-fun e!557367 () Bool)

(declare-fun array_inv!23077 (array!62407) Bool)

(assert (=> start!84546 (and (array_inv!23077 _values!1278) e!557367)))

(assert (=> start!84546 tp!69824))

(declare-fun array_inv!23078 (array!62409) Bool)

(assert (=> start!84546 (array_inv!23078 _keys!1544)))

(declare-fun mapNonEmpty!36882 () Bool)

(declare-fun tp!69825 () Bool)

(assert (=> mapNonEmpty!36882 (= mapRes!36882 (and tp!69825 e!557365))))

(declare-fun mapKey!36882 () (_ BitVec 32))

(declare-fun mapRest!36882 () (Array (_ BitVec 32) ValueCell!11133))

(declare-fun mapValue!36882 () ValueCell!11133)

(assert (=> mapNonEmpty!36882 (= (arr!30054 _values!1278) (store mapRest!36882 mapKey!36882 mapValue!36882))))

(declare-fun b!988374 () Bool)

(declare-fun res!661173 () Bool)

(assert (=> b!988374 (=> (not res!661173) (not e!557366))))

(assert (=> b!988374 (= res!661173 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!988375 () Bool)

(declare-fun res!661170 () Bool)

(assert (=> b!988375 (=> (not res!661170) (not e!557366))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62409 (_ BitVec 32)) Bool)

(assert (=> b!988375 (= res!661170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!988376 () Bool)

(declare-fun res!661169 () Bool)

(assert (=> b!988376 (=> (not res!661169) (not e!557366))))

(assert (=> b!988376 (= res!661169 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30535 _keys!1544))))))

(declare-fun b!988377 () Bool)

(declare-fun res!661174 () Bool)

(assert (=> b!988377 (=> (not res!661174) (not e!557366))))

(declare-datatypes ((List!20913 0))(
  ( (Nil!20910) (Cons!20909 (h!22071 (_ BitVec 64)) (t!29858 List!20913)) )
))
(declare-fun arrayNoDuplicates!0 (array!62409 (_ BitVec 32) List!20913) Bool)

(assert (=> b!988377 (= res!661174 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20910))))

(declare-fun b!988378 () Bool)

(declare-fun e!557364 () Bool)

(assert (=> b!988378 (= e!557364 tp_is_empty!23229)))

(declare-fun b!988379 () Bool)

(declare-fun res!661172 () Bool)

(assert (=> b!988379 (=> (not res!661172) (not e!557366))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!988379 (= res!661172 (validKeyInArray!0 (select (arr!30055 _keys!1544) from!1932)))))

(declare-fun b!988380 () Bool)

(declare-fun res!661168 () Bool)

(assert (=> b!988380 (=> (not res!661168) (not e!557366))))

(assert (=> b!988380 (= res!661168 (and (= (size!30534 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30535 _keys!1544) (size!30534 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!988381 () Bool)

(assert (=> b!988381 (= e!557367 (and e!557364 mapRes!36882))))

(declare-fun condMapEmpty!36882 () Bool)

(declare-fun mapDefault!36882 () ValueCell!11133)

(assert (=> b!988381 (= condMapEmpty!36882 (= (arr!30054 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11133)) mapDefault!36882)))))

(assert (= (and start!84546 res!661171) b!988380))

(assert (= (and b!988380 res!661168) b!988375))

(assert (= (and b!988375 res!661170) b!988377))

(assert (= (and b!988377 res!661174) b!988376))

(assert (= (and b!988376 res!661169) b!988379))

(assert (= (and b!988379 res!661172) b!988374))

(assert (= (and b!988374 res!661173) b!988372))

(assert (= (and b!988381 condMapEmpty!36882) mapIsEmpty!36882))

(assert (= (and b!988381 (not condMapEmpty!36882)) mapNonEmpty!36882))

(get-info :version)

(assert (= (and mapNonEmpty!36882 ((_ is ValueCellFull!11133) mapValue!36882)) b!988373))

(assert (= (and b!988381 ((_ is ValueCellFull!11133) mapDefault!36882)) b!988378))

(assert (= start!84546 b!988381))

(declare-fun m!915707 () Bool)

(assert (=> b!988379 m!915707))

(assert (=> b!988379 m!915707))

(declare-fun m!915709 () Bool)

(assert (=> b!988379 m!915709))

(declare-fun m!915711 () Bool)

(assert (=> b!988375 m!915711))

(declare-fun m!915713 () Bool)

(assert (=> start!84546 m!915713))

(declare-fun m!915715 () Bool)

(assert (=> start!84546 m!915715))

(declare-fun m!915717 () Bool)

(assert (=> start!84546 m!915717))

(declare-fun m!915719 () Bool)

(assert (=> b!988377 m!915719))

(declare-fun m!915721 () Bool)

(assert (=> mapNonEmpty!36882 m!915721))

(declare-fun m!915723 () Bool)

(assert (=> b!988372 m!915723))

(check-sat (not start!84546) tp_is_empty!23229 (not b!988379) (not b_next!20013) (not b!988377) (not b!988372) (not mapNonEmpty!36882) (not b!988375) b_and!32125)
(check-sat b_and!32125 (not b_next!20013))
