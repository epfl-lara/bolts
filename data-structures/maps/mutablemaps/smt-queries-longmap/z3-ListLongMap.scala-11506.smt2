; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133954 () Bool)

(assert start!133954)

(declare-fun b_free!32145 () Bool)

(declare-fun b_next!32145 () Bool)

(assert (=> start!133954 (= b_free!32145 (not b_next!32145))))

(declare-fun tp!113737 () Bool)

(declare-fun b_and!51741 () Bool)

(assert (=> start!133954 (= tp!113737 b_and!51741)))

(declare-fun mapIsEmpty!59770 () Bool)

(declare-fun mapRes!59770 () Bool)

(assert (=> mapIsEmpty!59770 mapRes!59770))

(declare-fun b!1565336 () Bool)

(declare-fun res!1070129 () Bool)

(declare-fun e!872534 () Bool)

(assert (=> b!1565336 (=> (not res!1070129) (not e!872534))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!104499 0))(
  ( (array!104500 (arr!50432 (Array (_ BitVec 32) (_ BitVec 64))) (size!50983 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104499)

(assert (=> b!1565336 (= res!1070129 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50983 _keys!637)) (bvslt from!782 (size!50983 _keys!637))))))

(declare-fun b!1565337 () Bool)

(assert (=> b!1565337 (= e!872534 (not true))))

(declare-datatypes ((V!60099 0))(
  ( (V!60100 (val!19543 Int)) )
))
(declare-datatypes ((tuple2!25374 0))(
  ( (tuple2!25375 (_1!12697 (_ BitVec 64)) (_2!12697 V!60099)) )
))
(declare-datatypes ((List!36762 0))(
  ( (Nil!36759) (Cons!36758 (h!38205 tuple2!25374) (t!51628 List!36762)) )
))
(declare-datatypes ((ListLongMap!22821 0))(
  ( (ListLongMap!22822 (toList!11426 List!36762)) )
))
(declare-fun lt!672200 () ListLongMap!22821)

(declare-fun lt!672199 () V!60099)

(declare-fun contains!10347 (ListLongMap!22821 (_ BitVec 64)) Bool)

(declare-fun +!5033 (ListLongMap!22821 tuple2!25374) ListLongMap!22821)

(assert (=> b!1565337 (not (contains!10347 (+!5033 lt!672200 (tuple2!25375 (select (arr!50432 _keys!637) from!782) lt!672199)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51940 0))(
  ( (Unit!51941) )
))
(declare-fun lt!672198 () Unit!51940)

(declare-fun addStillNotContains!569 (ListLongMap!22821 (_ BitVec 64) V!60099 (_ BitVec 64)) Unit!51940)

(assert (=> b!1565337 (= lt!672198 (addStillNotContains!569 lt!672200 (select (arr!50432 _keys!637) from!782) lt!672199 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18429 0))(
  ( (ValueCellFull!18429 (v!22296 V!60099)) (EmptyCell!18429) )
))
(declare-datatypes ((array!104501 0))(
  ( (array!104502 (arr!50433 (Array (_ BitVec 32) ValueCell!18429)) (size!50984 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104501)

(declare-fun get!26359 (ValueCell!18429 V!60099) V!60099)

(declare-fun dynLambda!3922 (Int (_ BitVec 64)) V!60099)

(assert (=> b!1565337 (= lt!672199 (get!26359 (select (arr!50433 _values!487) from!782) (dynLambda!3922 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!60099)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60099)

(declare-fun getCurrentListMapNoExtraKeys!6766 (array!104499 array!104501 (_ BitVec 32) (_ BitVec 32) V!60099 V!60099 (_ BitVec 32) Int) ListLongMap!22821)

(assert (=> b!1565337 (= lt!672200 (getCurrentListMapNoExtraKeys!6766 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1565338 () Bool)

(declare-fun e!872533 () Bool)

(declare-fun tp_is_empty!38919 () Bool)

(assert (=> b!1565338 (= e!872533 tp_is_empty!38919)))

(declare-fun b!1565339 () Bool)

(declare-fun e!872531 () Bool)

(declare-fun e!872532 () Bool)

(assert (=> b!1565339 (= e!872531 (and e!872532 mapRes!59770))))

(declare-fun condMapEmpty!59770 () Bool)

(declare-fun mapDefault!59770 () ValueCell!18429)

(assert (=> b!1565339 (= condMapEmpty!59770 (= (arr!50433 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18429)) mapDefault!59770)))))

(declare-fun b!1565340 () Bool)

(assert (=> b!1565340 (= e!872532 tp_is_empty!38919)))

(declare-fun res!1070130 () Bool)

(assert (=> start!133954 (=> (not res!1070130) (not e!872534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133954 (= res!1070130 (validMask!0 mask!947))))

(assert (=> start!133954 e!872534))

(assert (=> start!133954 tp!113737))

(assert (=> start!133954 tp_is_empty!38919))

(assert (=> start!133954 true))

(declare-fun array_inv!39109 (array!104499) Bool)

(assert (=> start!133954 (array_inv!39109 _keys!637)))

(declare-fun array_inv!39110 (array!104501) Bool)

(assert (=> start!133954 (and (array_inv!39110 _values!487) e!872531)))

(declare-fun mapNonEmpty!59770 () Bool)

(declare-fun tp!113738 () Bool)

(assert (=> mapNonEmpty!59770 (= mapRes!59770 (and tp!113738 e!872533))))

(declare-fun mapValue!59770 () ValueCell!18429)

(declare-fun mapKey!59770 () (_ BitVec 32))

(declare-fun mapRest!59770 () (Array (_ BitVec 32) ValueCell!18429))

(assert (=> mapNonEmpty!59770 (= (arr!50433 _values!487) (store mapRest!59770 mapKey!59770 mapValue!59770))))

(declare-fun b!1565341 () Bool)

(declare-fun res!1070127 () Bool)

(assert (=> b!1565341 (=> (not res!1070127) (not e!872534))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1565341 (= res!1070127 (validKeyInArray!0 (select (arr!50432 _keys!637) from!782)))))

(declare-fun b!1565342 () Bool)

(declare-fun res!1070126 () Bool)

(assert (=> b!1565342 (=> (not res!1070126) (not e!872534))))

(declare-datatypes ((List!36763 0))(
  ( (Nil!36760) (Cons!36759 (h!38206 (_ BitVec 64)) (t!51629 List!36763)) )
))
(declare-fun arrayNoDuplicates!0 (array!104499 (_ BitVec 32) List!36763) Bool)

(assert (=> b!1565342 (= res!1070126 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36760))))

(declare-fun b!1565343 () Bool)

(declare-fun res!1070128 () Bool)

(assert (=> b!1565343 (=> (not res!1070128) (not e!872534))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104499 (_ BitVec 32)) Bool)

(assert (=> b!1565343 (= res!1070128 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1565344 () Bool)

(declare-fun res!1070125 () Bool)

(assert (=> b!1565344 (=> (not res!1070125) (not e!872534))))

(assert (=> b!1565344 (= res!1070125 (and (= (size!50984 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50983 _keys!637) (size!50984 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(assert (= (and start!133954 res!1070130) b!1565344))

(assert (= (and b!1565344 res!1070125) b!1565343))

(assert (= (and b!1565343 res!1070128) b!1565342))

(assert (= (and b!1565342 res!1070126) b!1565336))

(assert (= (and b!1565336 res!1070129) b!1565341))

(assert (= (and b!1565341 res!1070127) b!1565337))

(assert (= (and b!1565339 condMapEmpty!59770) mapIsEmpty!59770))

(assert (= (and b!1565339 (not condMapEmpty!59770)) mapNonEmpty!59770))

(get-info :version)

(assert (= (and mapNonEmpty!59770 ((_ is ValueCellFull!18429) mapValue!59770)) b!1565338))

(assert (= (and b!1565339 ((_ is ValueCellFull!18429) mapDefault!59770)) b!1565340))

(assert (= start!133954 b!1565339))

(declare-fun b_lambda!24969 () Bool)

(assert (=> (not b_lambda!24969) (not b!1565337)))

(declare-fun t!51627 () Bool)

(declare-fun tb!12621 () Bool)

(assert (=> (and start!133954 (= defaultEntry!495 defaultEntry!495) t!51627) tb!12621))

(declare-fun result!26525 () Bool)

(assert (=> tb!12621 (= result!26525 tp_is_empty!38919)))

(assert (=> b!1565337 t!51627))

(declare-fun b_and!51743 () Bool)

(assert (= b_and!51741 (and (=> t!51627 result!26525) b_and!51743)))

(declare-fun m!1440287 () Bool)

(assert (=> b!1565337 m!1440287))

(declare-fun m!1440289 () Bool)

(assert (=> b!1565337 m!1440289))

(declare-fun m!1440291 () Bool)

(assert (=> b!1565337 m!1440291))

(declare-fun m!1440293 () Bool)

(assert (=> b!1565337 m!1440293))

(declare-fun m!1440295 () Bool)

(assert (=> b!1565337 m!1440295))

(assert (=> b!1565337 m!1440287))

(assert (=> b!1565337 m!1440293))

(assert (=> b!1565337 m!1440289))

(declare-fun m!1440297 () Bool)

(assert (=> b!1565337 m!1440297))

(declare-fun m!1440299 () Bool)

(assert (=> b!1565337 m!1440299))

(assert (=> b!1565337 m!1440297))

(declare-fun m!1440301 () Bool)

(assert (=> b!1565337 m!1440301))

(declare-fun m!1440303 () Bool)

(assert (=> start!133954 m!1440303))

(declare-fun m!1440305 () Bool)

(assert (=> start!133954 m!1440305))

(declare-fun m!1440307 () Bool)

(assert (=> start!133954 m!1440307))

(declare-fun m!1440309 () Bool)

(assert (=> mapNonEmpty!59770 m!1440309))

(assert (=> b!1565341 m!1440293))

(assert (=> b!1565341 m!1440293))

(declare-fun m!1440311 () Bool)

(assert (=> b!1565341 m!1440311))

(declare-fun m!1440313 () Bool)

(assert (=> b!1565343 m!1440313))

(declare-fun m!1440315 () Bool)

(assert (=> b!1565342 m!1440315))

(check-sat (not b!1565343) (not mapNonEmpty!59770) (not b!1565337) tp_is_empty!38919 (not b_next!32145) (not b_lambda!24969) (not b!1565342) (not start!133954) b_and!51743 (not b!1565341))
(check-sat b_and!51743 (not b_next!32145))
