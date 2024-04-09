; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84022 () Bool)

(assert start!84022)

(declare-fun b_free!19749 () Bool)

(declare-fun b_next!19749 () Bool)

(assert (=> start!84022 (= b_free!19749 (not b_next!19749))))

(declare-fun tp!68771 () Bool)

(declare-fun b_and!31599 () Bool)

(assert (=> start!84022 (= tp!68771 b_and!31599)))

(declare-fun res!656919 () Bool)

(declare-fun e!553336 () Bool)

(assert (=> start!84022 (=> (not res!656919) (not e!553336))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84022 (= res!656919 (validMask!0 mask!1948))))

(assert (=> start!84022 e!553336))

(assert (=> start!84022 true))

(declare-fun tp_is_empty!22797 () Bool)

(assert (=> start!84022 tp_is_empty!22797))

(declare-datatypes ((V!35379 0))(
  ( (V!35380 (val!11449 Int)) )
))
(declare-datatypes ((ValueCell!10917 0))(
  ( (ValueCellFull!10917 (v!14011 V!35379)) (EmptyCell!10917) )
))
(declare-datatypes ((array!61587 0))(
  ( (array!61588 (arr!29647 (Array (_ BitVec 32) ValueCell!10917)) (size!30127 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61587)

(declare-fun e!553339 () Bool)

(declare-fun array_inv!22803 (array!61587) Bool)

(assert (=> start!84022 (and (array_inv!22803 _values!1278) e!553339)))

(assert (=> start!84022 tp!68771))

(declare-datatypes ((array!61589 0))(
  ( (array!61590 (arr!29648 (Array (_ BitVec 32) (_ BitVec 64))) (size!30128 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61589)

(declare-fun array_inv!22804 (array!61589) Bool)

(assert (=> start!84022 (array_inv!22804 _keys!1544)))

(declare-fun mapNonEmpty!36224 () Bool)

(declare-fun mapRes!36224 () Bool)

(declare-fun tp!68770 () Bool)

(declare-fun e!553335 () Bool)

(assert (=> mapNonEmpty!36224 (= mapRes!36224 (and tp!68770 e!553335))))

(declare-fun mapKey!36224 () (_ BitVec 32))

(declare-fun mapValue!36224 () ValueCell!10917)

(declare-fun mapRest!36224 () (Array (_ BitVec 32) ValueCell!10917))

(assert (=> mapNonEmpty!36224 (= (arr!29647 _values!1278) (store mapRest!36224 mapKey!36224 mapValue!36224))))

(declare-fun b!981499 () Bool)

(declare-fun e!553338 () Bool)

(assert (=> b!981499 (= e!553338 tp_is_empty!22797)))

(declare-fun b!981500 () Bool)

(declare-fun res!656914 () Bool)

(assert (=> b!981500 (=> (not res!656914) (not e!553336))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!981500 (= res!656914 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30128 _keys!1544))))))

(declare-fun b!981501 () Bool)

(declare-fun res!656915 () Bool)

(assert (=> b!981501 (=> (not res!656915) (not e!553336))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!981501 (= res!656915 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!981502 () Bool)

(declare-fun e!553340 () Bool)

(assert (=> b!981502 (= e!553336 e!553340)))

(declare-fun res!656912 () Bool)

(assert (=> b!981502 (=> (not res!656912) (not e!553340))))

(assert (=> b!981502 (= res!656912 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29648 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!435742 () V!35379)

(declare-fun get!15387 (ValueCell!10917 V!35379) V!35379)

(declare-fun dynLambda!1788 (Int (_ BitVec 64)) V!35379)

(assert (=> b!981502 (= lt!435742 (get!15387 (select (arr!29647 _values!1278) from!1932) (dynLambda!1788 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35379)

(declare-fun zeroValue!1220 () V!35379)

(declare-datatypes ((tuple2!14768 0))(
  ( (tuple2!14769 (_1!7394 (_ BitVec 64)) (_2!7394 V!35379)) )
))
(declare-datatypes ((List!20674 0))(
  ( (Nil!20671) (Cons!20670 (h!21832 tuple2!14768) (t!29381 List!20674)) )
))
(declare-datatypes ((ListLongMap!13479 0))(
  ( (ListLongMap!13480 (toList!6755 List!20674)) )
))
(declare-fun lt!435743 () ListLongMap!13479)

(declare-fun getCurrentListMapNoExtraKeys!3415 (array!61589 array!61587 (_ BitVec 32) (_ BitVec 32) V!35379 V!35379 (_ BitVec 32) Int) ListLongMap!13479)

(assert (=> b!981502 (= lt!435743 (getCurrentListMapNoExtraKeys!3415 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!981503 () Bool)

(assert (=> b!981503 (= e!553340 (not true))))

(declare-fun lt!435741 () tuple2!14768)

(declare-fun lt!435744 () tuple2!14768)

(declare-fun +!2959 (ListLongMap!13479 tuple2!14768) ListLongMap!13479)

(assert (=> b!981503 (= (+!2959 (+!2959 lt!435743 lt!435741) lt!435744) (+!2959 (+!2959 lt!435743 lt!435744) lt!435741))))

(assert (=> b!981503 (= lt!435744 (tuple2!14769 (select (arr!29648 _keys!1544) from!1932) lt!435742))))

(assert (=> b!981503 (= lt!435741 (tuple2!14769 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32593 0))(
  ( (Unit!32594) )
))
(declare-fun lt!435745 () Unit!32593)

(declare-fun addCommutativeForDiffKeys!621 (ListLongMap!13479 (_ BitVec 64) V!35379 (_ BitVec 64) V!35379) Unit!32593)

(assert (=> b!981503 (= lt!435745 (addCommutativeForDiffKeys!621 lt!435743 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29648 _keys!1544) from!1932) lt!435742))))

(declare-fun b!981504 () Bool)

(declare-fun res!656916 () Bool)

(assert (=> b!981504 (=> (not res!656916) (not e!553336))))

(declare-datatypes ((List!20675 0))(
  ( (Nil!20672) (Cons!20671 (h!21833 (_ BitVec 64)) (t!29382 List!20675)) )
))
(declare-fun arrayNoDuplicates!0 (array!61589 (_ BitVec 32) List!20675) Bool)

(assert (=> b!981504 (= res!656916 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20672))))

(declare-fun mapIsEmpty!36224 () Bool)

(assert (=> mapIsEmpty!36224 mapRes!36224))

(declare-fun b!981505 () Bool)

(assert (=> b!981505 (= e!553335 tp_is_empty!22797)))

(declare-fun b!981506 () Bool)

(assert (=> b!981506 (= e!553339 (and e!553338 mapRes!36224))))

(declare-fun condMapEmpty!36224 () Bool)

(declare-fun mapDefault!36224 () ValueCell!10917)

(assert (=> b!981506 (= condMapEmpty!36224 (= (arr!29647 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10917)) mapDefault!36224)))))

(declare-fun b!981507 () Bool)

(declare-fun res!656917 () Bool)

(assert (=> b!981507 (=> (not res!656917) (not e!553336))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!981507 (= res!656917 (validKeyInArray!0 (select (arr!29648 _keys!1544) from!1932)))))

(declare-fun b!981508 () Bool)

(declare-fun res!656918 () Bool)

(assert (=> b!981508 (=> (not res!656918) (not e!553336))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61589 (_ BitVec 32)) Bool)

(assert (=> b!981508 (= res!656918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!981509 () Bool)

(declare-fun res!656913 () Bool)

(assert (=> b!981509 (=> (not res!656913) (not e!553336))))

(assert (=> b!981509 (= res!656913 (and (= (size!30127 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30128 _keys!1544) (size!30127 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(assert (= (and start!84022 res!656919) b!981509))

(assert (= (and b!981509 res!656913) b!981508))

(assert (= (and b!981508 res!656918) b!981504))

(assert (= (and b!981504 res!656916) b!981500))

(assert (= (and b!981500 res!656914) b!981507))

(assert (= (and b!981507 res!656917) b!981501))

(assert (= (and b!981501 res!656915) b!981502))

(assert (= (and b!981502 res!656912) b!981503))

(assert (= (and b!981506 condMapEmpty!36224) mapIsEmpty!36224))

(assert (= (and b!981506 (not condMapEmpty!36224)) mapNonEmpty!36224))

(get-info :version)

(assert (= (and mapNonEmpty!36224 ((_ is ValueCellFull!10917) mapValue!36224)) b!981505))

(assert (= (and b!981506 ((_ is ValueCellFull!10917) mapDefault!36224)) b!981499))

(assert (= start!84022 b!981506))

(declare-fun b_lambda!14817 () Bool)

(assert (=> (not b_lambda!14817) (not b!981502)))

(declare-fun t!29380 () Bool)

(declare-fun tb!6557 () Bool)

(assert (=> (and start!84022 (= defaultEntry!1281 defaultEntry!1281) t!29380) tb!6557))

(declare-fun result!13095 () Bool)

(assert (=> tb!6557 (= result!13095 tp_is_empty!22797)))

(assert (=> b!981502 t!29380))

(declare-fun b_and!31601 () Bool)

(assert (= b_and!31599 (and (=> t!29380 result!13095) b_and!31601)))

(declare-fun m!908967 () Bool)

(assert (=> mapNonEmpty!36224 m!908967))

(declare-fun m!908969 () Bool)

(assert (=> b!981504 m!908969))

(declare-fun m!908971 () Bool)

(assert (=> b!981502 m!908971))

(declare-fun m!908973 () Bool)

(assert (=> b!981502 m!908973))

(declare-fun m!908975 () Bool)

(assert (=> b!981502 m!908975))

(declare-fun m!908977 () Bool)

(assert (=> b!981502 m!908977))

(assert (=> b!981502 m!908973))

(assert (=> b!981502 m!908977))

(declare-fun m!908979 () Bool)

(assert (=> b!981502 m!908979))

(declare-fun m!908981 () Bool)

(assert (=> start!84022 m!908981))

(declare-fun m!908983 () Bool)

(assert (=> start!84022 m!908983))

(declare-fun m!908985 () Bool)

(assert (=> start!84022 m!908985))

(assert (=> b!981507 m!908971))

(assert (=> b!981507 m!908971))

(declare-fun m!908987 () Bool)

(assert (=> b!981507 m!908987))

(declare-fun m!908989 () Bool)

(assert (=> b!981508 m!908989))

(declare-fun m!908991 () Bool)

(assert (=> b!981503 m!908991))

(declare-fun m!908993 () Bool)

(assert (=> b!981503 m!908993))

(assert (=> b!981503 m!908971))

(assert (=> b!981503 m!908971))

(declare-fun m!908995 () Bool)

(assert (=> b!981503 m!908995))

(declare-fun m!908997 () Bool)

(assert (=> b!981503 m!908997))

(assert (=> b!981503 m!908997))

(declare-fun m!908999 () Bool)

(assert (=> b!981503 m!908999))

(assert (=> b!981503 m!908991))

(check-sat (not b_lambda!14817) (not start!84022) (not b!981508) (not b!981502) (not mapNonEmpty!36224) (not b!981503) (not b!981507) (not b_next!19749) (not b!981504) b_and!31601 tp_is_empty!22797)
(check-sat b_and!31601 (not b_next!19749))
