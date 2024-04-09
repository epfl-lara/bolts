; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84256 () Bool)

(assert start!84256)

(declare-fun b_free!19929 () Bool)

(declare-fun b_next!19929 () Bool)

(assert (=> start!84256 (= b_free!19929 (not b_next!19929))))

(declare-fun tp!69391 () Bool)

(declare-fun b_and!31953 () Bool)

(assert (=> start!84256 (= tp!69391 b_and!31953)))

(declare-fun b!985147 () Bool)

(declare-fun res!659338 () Bool)

(declare-fun e!555354 () Bool)

(assert (=> b!985147 (=> (not res!659338) (not e!555354))))

(declare-datatypes ((array!62027 0))(
  ( (array!62028 (arr!29867 (Array (_ BitVec 32) (_ BitVec 64))) (size!30347 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62027)

(declare-datatypes ((List!20818 0))(
  ( (Nil!20815) (Cons!20814 (h!21976 (_ BitVec 64)) (t!29699 List!20818)) )
))
(declare-fun arrayNoDuplicates!0 (array!62027 (_ BitVec 32) List!20818) Bool)

(assert (=> b!985147 (= res!659338 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20815))))

(declare-fun b!985148 () Bool)

(declare-fun e!555353 () Bool)

(declare-fun tp_is_empty!23031 () Bool)

(assert (=> b!985148 (= e!555353 tp_is_empty!23031)))

(declare-fun b!985149 () Bool)

(declare-fun res!659334 () Bool)

(assert (=> b!985149 (=> (not res!659334) (not e!555354))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35691 0))(
  ( (V!35692 (val!11566 Int)) )
))
(declare-datatypes ((ValueCell!11034 0))(
  ( (ValueCellFull!11034 (v!14128 V!35691)) (EmptyCell!11034) )
))
(declare-datatypes ((array!62029 0))(
  ( (array!62030 (arr!29868 (Array (_ BitVec 32) ValueCell!11034)) (size!30348 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62029)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!985149 (= res!659334 (and (= (size!30348 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30347 _keys!1544) (size!30348 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!985150 () Bool)

(declare-fun res!659335 () Bool)

(assert (=> b!985150 (=> (not res!659335) (not e!555354))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!985150 (= res!659335 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30347 _keys!1544))))))

(declare-fun res!659333 () Bool)

(assert (=> start!84256 (=> (not res!659333) (not e!555354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84256 (= res!659333 (validMask!0 mask!1948))))

(assert (=> start!84256 e!555354))

(assert (=> start!84256 true))

(assert (=> start!84256 tp_is_empty!23031))

(declare-fun e!555355 () Bool)

(declare-fun array_inv!22953 (array!62029) Bool)

(assert (=> start!84256 (and (array_inv!22953 _values!1278) e!555355)))

(assert (=> start!84256 tp!69391))

(declare-fun array_inv!22954 (array!62027) Bool)

(assert (=> start!84256 (array_inv!22954 _keys!1544)))

(declare-fun mapIsEmpty!36575 () Bool)

(declare-fun mapRes!36575 () Bool)

(assert (=> mapIsEmpty!36575 mapRes!36575))

(declare-fun b!985151 () Bool)

(declare-fun e!555352 () Bool)

(assert (=> b!985151 (= e!555354 e!555352)))

(declare-fun res!659340 () Bool)

(assert (=> b!985151 (=> (not res!659340) (not e!555352))))

(assert (=> b!985151 (= res!659340 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29867 _keys!1544) from!1932))))))

(declare-fun lt!437131 () V!35691)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15524 (ValueCell!11034 V!35691) V!35691)

(declare-fun dynLambda!1847 (Int (_ BitVec 64)) V!35691)

(assert (=> b!985151 (= lt!437131 (get!15524 (select (arr!29868 _values!1278) from!1932) (dynLambda!1847 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((tuple2!14900 0))(
  ( (tuple2!14901 (_1!7460 (_ BitVec 64)) (_2!7460 V!35691)) )
))
(declare-datatypes ((List!20819 0))(
  ( (Nil!20816) (Cons!20815 (h!21977 tuple2!14900) (t!29700 List!20819)) )
))
(declare-datatypes ((ListLongMap!13611 0))(
  ( (ListLongMap!13612 (toList!6821 List!20819)) )
))
(declare-fun lt!437130 () ListLongMap!13611)

(declare-fun zeroValue!1220 () V!35691)

(declare-fun minValue!1220 () V!35691)

(declare-fun getCurrentListMapNoExtraKeys!3476 (array!62027 array!62029 (_ BitVec 32) (_ BitVec 32) V!35691 V!35691 (_ BitVec 32) Int) ListLongMap!13611)

(assert (=> b!985151 (= lt!437130 (getCurrentListMapNoExtraKeys!3476 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!985152 () Bool)

(declare-fun res!659339 () Bool)

(assert (=> b!985152 (=> (not res!659339) (not e!555354))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62027 (_ BitVec 32)) Bool)

(assert (=> b!985152 (= res!659339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!985153 () Bool)

(assert (=> b!985153 (= e!555352 (not true))))

(declare-fun lt!437129 () tuple2!14900)

(declare-fun lt!437128 () tuple2!14900)

(declare-fun +!3010 (ListLongMap!13611 tuple2!14900) ListLongMap!13611)

(assert (=> b!985153 (= (+!3010 (+!3010 lt!437130 lt!437129) lt!437128) (+!3010 (+!3010 lt!437130 lt!437128) lt!437129))))

(assert (=> b!985153 (= lt!437128 (tuple2!14901 (select (arr!29867 _keys!1544) from!1932) lt!437131))))

(assert (=> b!985153 (= lt!437129 (tuple2!14901 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32695 0))(
  ( (Unit!32696) )
))
(declare-fun lt!437127 () Unit!32695)

(declare-fun addCommutativeForDiffKeys!672 (ListLongMap!13611 (_ BitVec 64) V!35691 (_ BitVec 64) V!35691) Unit!32695)

(assert (=> b!985153 (= lt!437127 (addCommutativeForDiffKeys!672 lt!437130 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29867 _keys!1544) from!1932) lt!437131))))

(declare-fun b!985154 () Bool)

(declare-fun e!555351 () Bool)

(assert (=> b!985154 (= e!555351 tp_is_empty!23031)))

(declare-fun b!985155 () Bool)

(declare-fun res!659336 () Bool)

(assert (=> b!985155 (=> (not res!659336) (not e!555354))))

(assert (=> b!985155 (= res!659336 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!985156 () Bool)

(assert (=> b!985156 (= e!555355 (and e!555351 mapRes!36575))))

(declare-fun condMapEmpty!36575 () Bool)

(declare-fun mapDefault!36575 () ValueCell!11034)

(assert (=> b!985156 (= condMapEmpty!36575 (= (arr!29868 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11034)) mapDefault!36575)))))

(declare-fun b!985157 () Bool)

(declare-fun res!659337 () Bool)

(assert (=> b!985157 (=> (not res!659337) (not e!555354))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!985157 (= res!659337 (validKeyInArray!0 (select (arr!29867 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!36575 () Bool)

(declare-fun tp!69392 () Bool)

(assert (=> mapNonEmpty!36575 (= mapRes!36575 (and tp!69392 e!555353))))

(declare-fun mapRest!36575 () (Array (_ BitVec 32) ValueCell!11034))

(declare-fun mapKey!36575 () (_ BitVec 32))

(declare-fun mapValue!36575 () ValueCell!11034)

(assert (=> mapNonEmpty!36575 (= (arr!29868 _values!1278) (store mapRest!36575 mapKey!36575 mapValue!36575))))

(assert (= (and start!84256 res!659333) b!985149))

(assert (= (and b!985149 res!659334) b!985152))

(assert (= (and b!985152 res!659339) b!985147))

(assert (= (and b!985147 res!659338) b!985150))

(assert (= (and b!985150 res!659335) b!985157))

(assert (= (and b!985157 res!659337) b!985155))

(assert (= (and b!985155 res!659336) b!985151))

(assert (= (and b!985151 res!659340) b!985153))

(assert (= (and b!985156 condMapEmpty!36575) mapIsEmpty!36575))

(assert (= (and b!985156 (not condMapEmpty!36575)) mapNonEmpty!36575))

(get-info :version)

(assert (= (and mapNonEmpty!36575 ((_ is ValueCellFull!11034) mapValue!36575)) b!985148))

(assert (= (and b!985156 ((_ is ValueCellFull!11034) mapDefault!36575)) b!985154))

(assert (= start!84256 b!985156))

(declare-fun b_lambda!14991 () Bool)

(assert (=> (not b_lambda!14991) (not b!985151)))

(declare-fun t!29698 () Bool)

(declare-fun tb!6731 () Bool)

(assert (=> (and start!84256 (= defaultEntry!1281 defaultEntry!1281) t!29698) tb!6731))

(declare-fun result!13443 () Bool)

(assert (=> tb!6731 (= result!13443 tp_is_empty!23031)))

(assert (=> b!985151 t!29698))

(declare-fun b_and!31955 () Bool)

(assert (= b_and!31953 (and (=> t!29698 result!13443) b_and!31955)))

(declare-fun m!912315 () Bool)

(assert (=> b!985151 m!912315))

(declare-fun m!912317 () Bool)

(assert (=> b!985151 m!912317))

(declare-fun m!912319 () Bool)

(assert (=> b!985151 m!912319))

(declare-fun m!912321 () Bool)

(assert (=> b!985151 m!912321))

(assert (=> b!985151 m!912317))

(assert (=> b!985151 m!912321))

(declare-fun m!912323 () Bool)

(assert (=> b!985151 m!912323))

(declare-fun m!912325 () Bool)

(assert (=> b!985147 m!912325))

(declare-fun m!912327 () Bool)

(assert (=> mapNonEmpty!36575 m!912327))

(assert (=> b!985157 m!912315))

(assert (=> b!985157 m!912315))

(declare-fun m!912329 () Bool)

(assert (=> b!985157 m!912329))

(declare-fun m!912331 () Bool)

(assert (=> b!985152 m!912331))

(declare-fun m!912333 () Bool)

(assert (=> start!84256 m!912333))

(declare-fun m!912335 () Bool)

(assert (=> start!84256 m!912335))

(declare-fun m!912337 () Bool)

(assert (=> start!84256 m!912337))

(declare-fun m!912339 () Bool)

(assert (=> b!985153 m!912339))

(assert (=> b!985153 m!912315))

(declare-fun m!912341 () Bool)

(assert (=> b!985153 m!912341))

(assert (=> b!985153 m!912315))

(declare-fun m!912343 () Bool)

(assert (=> b!985153 m!912343))

(assert (=> b!985153 m!912341))

(declare-fun m!912345 () Bool)

(assert (=> b!985153 m!912345))

(assert (=> b!985153 m!912339))

(declare-fun m!912347 () Bool)

(assert (=> b!985153 m!912347))

(check-sat (not b_lambda!14991) b_and!31955 tp_is_empty!23031 (not b_next!19929) (not b!985153) (not b!985147) (not b!985157) (not mapNonEmpty!36575) (not start!84256) (not b!985151) (not b!985152))
(check-sat b_and!31955 (not b_next!19929))
