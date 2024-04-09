; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83938 () Bool)

(assert start!83938)

(declare-fun b_free!19719 () Bool)

(declare-fun b_next!19719 () Bool)

(assert (=> start!83938 (= b_free!19719 (not b_next!19719))))

(declare-fun tp!68600 () Bool)

(declare-fun b_and!31545 () Bool)

(assert (=> start!83938 (= tp!68600 b_and!31545)))

(declare-fun b!980477 () Bool)

(declare-fun e!552671 () Bool)

(declare-fun tp_is_empty!22713 () Bool)

(assert (=> b!980477 (= e!552671 tp_is_empty!22713)))

(declare-fun b!980478 () Bool)

(declare-fun res!656298 () Bool)

(declare-fun e!552672 () Bool)

(assert (=> b!980478 (=> (not res!656298) (not e!552672))))

(declare-datatypes ((array!61433 0))(
  ( (array!61434 (arr!29570 (Array (_ BitVec 32) (_ BitVec 64))) (size!30050 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61433)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!980478 (= res!656298 (validKeyInArray!0 (select (arr!29570 _keys!1544) from!1932)))))

(declare-fun b!980479 () Bool)

(declare-fun e!552670 () Bool)

(declare-fun mapRes!36098 () Bool)

(assert (=> b!980479 (= e!552670 (and e!552671 mapRes!36098))))

(declare-fun condMapEmpty!36098 () Bool)

(declare-datatypes ((V!35267 0))(
  ( (V!35268 (val!11407 Int)) )
))
(declare-datatypes ((ValueCell!10875 0))(
  ( (ValueCellFull!10875 (v!13969 V!35267)) (EmptyCell!10875) )
))
(declare-datatypes ((array!61435 0))(
  ( (array!61436 (arr!29571 (Array (_ BitVec 32) ValueCell!10875)) (size!30051 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61435)

(declare-fun mapDefault!36098 () ValueCell!10875)

(assert (=> b!980479 (= condMapEmpty!36098 (= (arr!29571 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10875)) mapDefault!36098)))))

(declare-fun b!980480 () Bool)

(declare-fun e!552674 () Bool)

(assert (=> b!980480 (= e!552674 true)))

(declare-datatypes ((tuple2!14744 0))(
  ( (tuple2!14745 (_1!7382 (_ BitVec 64)) (_2!7382 V!35267)) )
))
(declare-datatypes ((List!20634 0))(
  ( (Nil!20631) (Cons!20630 (h!21792 tuple2!14744) (t!29317 List!20634)) )
))
(declare-datatypes ((ListLongMap!13455 0))(
  ( (ListLongMap!13456 (toList!6743 List!20634)) )
))
(declare-fun lt!435415 () ListLongMap!13455)

(declare-fun lt!435416 () tuple2!14744)

(declare-fun lt!435420 () tuple2!14744)

(declare-fun lt!435423 () ListLongMap!13455)

(declare-fun +!2949 (ListLongMap!13455 tuple2!14744) ListLongMap!13455)

(assert (=> b!980480 (= lt!435423 (+!2949 (+!2949 lt!435415 lt!435416) lt!435420))))

(declare-datatypes ((Unit!32573 0))(
  ( (Unit!32574) )
))
(declare-fun lt!435418 () Unit!32573)

(declare-fun zeroValue!1220 () V!35267)

(declare-fun lt!435424 () V!35267)

(declare-fun addCommutativeForDiffKeys!611 (ListLongMap!13455 (_ BitVec 64) V!35267 (_ BitVec 64) V!35267) Unit!32573)

(assert (=> b!980480 (= lt!435418 (addCommutativeForDiffKeys!611 lt!435415 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29570 _keys!1544) from!1932) lt!435424))))

(declare-fun b!980481 () Bool)

(declare-fun res!656291 () Bool)

(assert (=> b!980481 (=> (not res!656291) (not e!552672))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!980481 (= res!656291 (and (= (size!30051 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30050 _keys!1544) (size!30051 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!980482 () Bool)

(declare-fun e!552669 () Bool)

(assert (=> b!980482 (= e!552669 tp_is_empty!22713)))

(declare-fun b!980483 () Bool)

(declare-fun res!656296 () Bool)

(assert (=> b!980483 (=> (not res!656296) (not e!552672))))

(assert (=> b!980483 (= res!656296 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!36098 () Bool)

(declare-fun tp!68599 () Bool)

(assert (=> mapNonEmpty!36098 (= mapRes!36098 (and tp!68599 e!552669))))

(declare-fun mapKey!36098 () (_ BitVec 32))

(declare-fun mapValue!36098 () ValueCell!10875)

(declare-fun mapRest!36098 () (Array (_ BitVec 32) ValueCell!10875))

(assert (=> mapNonEmpty!36098 (= (arr!29571 _values!1278) (store mapRest!36098 mapKey!36098 mapValue!36098))))

(declare-fun b!980484 () Bool)

(declare-fun res!656297 () Bool)

(assert (=> b!980484 (=> (not res!656297) (not e!552672))))

(assert (=> b!980484 (= res!656297 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30050 _keys!1544))))))

(declare-fun mapIsEmpty!36098 () Bool)

(assert (=> mapIsEmpty!36098 mapRes!36098))

(declare-fun res!656293 () Bool)

(assert (=> start!83938 (=> (not res!656293) (not e!552672))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83938 (= res!656293 (validMask!0 mask!1948))))

(assert (=> start!83938 e!552672))

(assert (=> start!83938 true))

(assert (=> start!83938 tp_is_empty!22713))

(declare-fun array_inv!22749 (array!61435) Bool)

(assert (=> start!83938 (and (array_inv!22749 _values!1278) e!552670)))

(assert (=> start!83938 tp!68600))

(declare-fun array_inv!22750 (array!61433) Bool)

(assert (=> start!83938 (array_inv!22750 _keys!1544)))

(declare-fun b!980476 () Bool)

(declare-fun res!656295 () Bool)

(assert (=> b!980476 (=> (not res!656295) (not e!552672))))

(declare-datatypes ((List!20635 0))(
  ( (Nil!20632) (Cons!20631 (h!21793 (_ BitVec 64)) (t!29318 List!20635)) )
))
(declare-fun arrayNoDuplicates!0 (array!61433 (_ BitVec 32) List!20635) Bool)

(assert (=> b!980476 (= res!656295 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20632))))

(declare-fun b!980485 () Bool)

(declare-fun res!656294 () Bool)

(assert (=> b!980485 (=> (not res!656294) (not e!552672))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61433 (_ BitVec 32)) Bool)

(assert (=> b!980485 (= res!656294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!980486 () Bool)

(assert (=> b!980486 (= e!552672 (not e!552674))))

(declare-fun res!656292 () Bool)

(assert (=> b!980486 (=> res!656292 e!552674)))

(assert (=> b!980486 (= res!656292 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29570 _keys!1544) from!1932)))))

(declare-fun lt!435421 () ListLongMap!13455)

(declare-fun lt!435419 () tuple2!14744)

(assert (=> b!980486 (= (+!2949 lt!435421 lt!435416) (+!2949 lt!435423 lt!435419))))

(declare-fun lt!435422 () ListLongMap!13455)

(assert (=> b!980486 (= lt!435423 (+!2949 lt!435422 lt!435416))))

(assert (=> b!980486 (= lt!435416 (tuple2!14745 (select (arr!29570 _keys!1544) from!1932) lt!435424))))

(assert (=> b!980486 (= lt!435421 (+!2949 lt!435422 lt!435419))))

(declare-fun minValue!1220 () V!35267)

(assert (=> b!980486 (= lt!435419 (tuple2!14745 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-fun lt!435417 () Unit!32573)

(assert (=> b!980486 (= lt!435417 (addCommutativeForDiffKeys!611 lt!435422 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29570 _keys!1544) from!1932) lt!435424))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15352 (ValueCell!10875 V!35267) V!35267)

(declare-fun dynLambda!1781 (Int (_ BitVec 64)) V!35267)

(assert (=> b!980486 (= lt!435424 (get!15352 (select (arr!29571 _values!1278) from!1932) (dynLambda!1781 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!980486 (= lt!435422 (+!2949 lt!435415 lt!435420))))

(assert (=> b!980486 (= lt!435420 (tuple2!14745 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3406 (array!61433 array!61435 (_ BitVec 32) (_ BitVec 32) V!35267 V!35267 (_ BitVec 32) Int) ListLongMap!13455)

(assert (=> b!980486 (= lt!435415 (getCurrentListMapNoExtraKeys!3406 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(assert (= (and start!83938 res!656293) b!980481))

(assert (= (and b!980481 res!656291) b!980485))

(assert (= (and b!980485 res!656294) b!980476))

(assert (= (and b!980476 res!656295) b!980484))

(assert (= (and b!980484 res!656297) b!980478))

(assert (= (and b!980478 res!656298) b!980483))

(assert (= (and b!980483 res!656296) b!980486))

(assert (= (and b!980486 (not res!656292)) b!980480))

(assert (= (and b!980479 condMapEmpty!36098) mapIsEmpty!36098))

(assert (= (and b!980479 (not condMapEmpty!36098)) mapNonEmpty!36098))

(get-info :version)

(assert (= (and mapNonEmpty!36098 ((_ is ValueCellFull!10875) mapValue!36098)) b!980482))

(assert (= (and b!980479 ((_ is ValueCellFull!10875) mapDefault!36098)) b!980477))

(assert (= start!83938 b!980479))

(declare-fun b_lambda!14793 () Bool)

(assert (=> (not b_lambda!14793) (not b!980486)))

(declare-fun t!29316 () Bool)

(declare-fun tb!6533 () Bool)

(assert (=> (and start!83938 (= defaultEntry!1281 defaultEntry!1281) t!29316) tb!6533))

(declare-fun result!13047 () Bool)

(assert (=> tb!6533 (= result!13047 tp_is_empty!22713)))

(assert (=> b!980486 t!29316))

(declare-fun b_and!31547 () Bool)

(assert (= b_and!31545 (and (=> t!29316 result!13047) b_and!31547)))

(declare-fun m!908129 () Bool)

(assert (=> b!980476 m!908129))

(declare-fun m!908131 () Bool)

(assert (=> mapNonEmpty!36098 m!908131))

(declare-fun m!908133 () Bool)

(assert (=> b!980485 m!908133))

(declare-fun m!908135 () Bool)

(assert (=> b!980480 m!908135))

(assert (=> b!980480 m!908135))

(declare-fun m!908137 () Bool)

(assert (=> b!980480 m!908137))

(declare-fun m!908139 () Bool)

(assert (=> b!980480 m!908139))

(assert (=> b!980480 m!908139))

(declare-fun m!908141 () Bool)

(assert (=> b!980480 m!908141))

(declare-fun m!908143 () Bool)

(assert (=> start!83938 m!908143))

(declare-fun m!908145 () Bool)

(assert (=> start!83938 m!908145))

(declare-fun m!908147 () Bool)

(assert (=> start!83938 m!908147))

(assert (=> b!980478 m!908139))

(assert (=> b!980478 m!908139))

(declare-fun m!908149 () Bool)

(assert (=> b!980478 m!908149))

(declare-fun m!908151 () Bool)

(assert (=> b!980486 m!908151))

(declare-fun m!908153 () Bool)

(assert (=> b!980486 m!908153))

(assert (=> b!980486 m!908139))

(declare-fun m!908155 () Bool)

(assert (=> b!980486 m!908155))

(declare-fun m!908157 () Bool)

(assert (=> b!980486 m!908157))

(assert (=> b!980486 m!908139))

(declare-fun m!908159 () Bool)

(assert (=> b!980486 m!908159))

(declare-fun m!908161 () Bool)

(assert (=> b!980486 m!908161))

(declare-fun m!908163 () Bool)

(assert (=> b!980486 m!908163))

(declare-fun m!908165 () Bool)

(assert (=> b!980486 m!908165))

(declare-fun m!908167 () Bool)

(assert (=> b!980486 m!908167))

(assert (=> b!980486 m!908155))

(assert (=> b!980486 m!908167))

(declare-fun m!908169 () Bool)

(assert (=> b!980486 m!908169))

(check-sat (not b_next!19719) (not b!980476) (not b!980485) (not b!980478) b_and!31547 tp_is_empty!22713 (not b!980486) (not start!83938) (not b_lambda!14793) (not mapNonEmpty!36098) (not b!980480))
(check-sat b_and!31547 (not b_next!19719))
