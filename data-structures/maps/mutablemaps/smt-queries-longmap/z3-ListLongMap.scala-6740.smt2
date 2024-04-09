; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84478 () Bool)

(assert start!84478)

(declare-fun b_free!20001 () Bool)

(declare-fun b_next!20001 () Bool)

(assert (=> start!84478 (= b_free!20001 (not b_next!20001))))

(declare-fun tp!69785 () Bool)

(declare-fun b_and!32087 () Bool)

(assert (=> start!84478 (= tp!69785 b_and!32087)))

(declare-fun b!987585 () Bool)

(declare-fun e!556913 () Bool)

(declare-fun e!556910 () Bool)

(assert (=> b!987585 (= e!556913 (not e!556910))))

(declare-fun res!660790 () Bool)

(assert (=> b!987585 (=> res!660790 e!556910)))

(declare-datatypes ((array!62383 0))(
  ( (array!62384 (arr!30043 (Array (_ BitVec 32) (_ BitVec 64))) (size!30523 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62383)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!987585 (= res!660790 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!30043 _keys!1544) from!1932)))))

(declare-datatypes ((V!35939 0))(
  ( (V!35940 (val!11659 Int)) )
))
(declare-datatypes ((tuple2!14952 0))(
  ( (tuple2!14953 (_1!7486 (_ BitVec 64)) (_2!7486 V!35939)) )
))
(declare-datatypes ((List!20903 0))(
  ( (Nil!20900) (Cons!20899 (h!22061 tuple2!14952) (t!29840 List!20903)) )
))
(declare-datatypes ((ListLongMap!13663 0))(
  ( (ListLongMap!13664 (toList!6847 List!20903)) )
))
(declare-fun lt!437920 () ListLongMap!13663)

(declare-fun lt!437917 () tuple2!14952)

(declare-fun lt!437922 () tuple2!14952)

(declare-fun lt!437926 () ListLongMap!13663)

(declare-fun +!3035 (ListLongMap!13663 tuple2!14952) ListLongMap!13663)

(assert (=> b!987585 (= (+!3035 lt!437920 lt!437917) (+!3035 lt!437926 lt!437922))))

(declare-fun lt!437919 () ListLongMap!13663)

(assert (=> b!987585 (= lt!437926 (+!3035 lt!437919 lt!437917))))

(declare-fun lt!437925 () V!35939)

(assert (=> b!987585 (= lt!437917 (tuple2!14953 (select (arr!30043 _keys!1544) from!1932) lt!437925))))

(assert (=> b!987585 (= lt!437920 (+!3035 lt!437919 lt!437922))))

(declare-fun minValue!1220 () V!35939)

(assert (=> b!987585 (= lt!437922 (tuple2!14953 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32735 0))(
  ( (Unit!32736) )
))
(declare-fun lt!437923 () Unit!32735)

(declare-fun addCommutativeForDiffKeys!691 (ListLongMap!13663 (_ BitVec 64) V!35939 (_ BitVec 64) V!35939) Unit!32735)

(assert (=> b!987585 (= lt!437923 (addCommutativeForDiffKeys!691 lt!437919 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30043 _keys!1544) from!1932) lt!437925))))

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((ValueCell!11127 0))(
  ( (ValueCellFull!11127 (v!14223 V!35939)) (EmptyCell!11127) )
))
(declare-datatypes ((array!62385 0))(
  ( (array!62386 (arr!30044 (Array (_ BitVec 32) ValueCell!11127)) (size!30524 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62385)

(declare-fun get!15604 (ValueCell!11127 V!35939) V!35939)

(declare-fun dynLambda!1863 (Int (_ BitVec 64)) V!35939)

(assert (=> b!987585 (= lt!437925 (get!15604 (select (arr!30044 _values!1278) from!1932) (dynLambda!1863 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!437924 () ListLongMap!13663)

(declare-fun lt!437918 () tuple2!14952)

(assert (=> b!987585 (= lt!437919 (+!3035 lt!437924 lt!437918))))

(declare-fun zeroValue!1220 () V!35939)

(assert (=> b!987585 (= lt!437918 (tuple2!14953 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3497 (array!62383 array!62385 (_ BitVec 32) (_ BitVec 32) V!35939 V!35939 (_ BitVec 32) Int) ListLongMap!13663)

(assert (=> b!987585 (= lt!437924 (getCurrentListMapNoExtraKeys!3497 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!987586 () Bool)

(declare-fun res!660784 () Bool)

(assert (=> b!987586 (=> (not res!660784) (not e!556913))))

(declare-datatypes ((List!20904 0))(
  ( (Nil!20901) (Cons!20900 (h!22062 (_ BitVec 64)) (t!29841 List!20904)) )
))
(declare-fun arrayNoDuplicates!0 (array!62383 (_ BitVec 32) List!20904) Bool)

(assert (=> b!987586 (= res!660784 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20901))))

(declare-fun b!987587 () Bool)

(declare-fun e!556912 () Bool)

(declare-fun tp_is_empty!23217 () Bool)

(assert (=> b!987587 (= e!556912 tp_is_empty!23217)))

(declare-fun b!987589 () Bool)

(declare-fun res!660789 () Bool)

(assert (=> b!987589 (=> (not res!660789) (not e!556913))))

(assert (=> b!987589 (= res!660789 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30523 _keys!1544))))))

(declare-fun b!987590 () Bool)

(declare-fun e!556914 () Bool)

(assert (=> b!987590 (= e!556914 tp_is_empty!23217)))

(declare-fun b!987591 () Bool)

(assert (=> b!987591 (= e!556910 (bvslt from!1932 (size!30524 _values!1278)))))

(declare-fun lt!437921 () ListLongMap!13663)

(declare-fun getCurrentListMap!3868 (array!62383 array!62385 (_ BitVec 32) (_ BitVec 32) V!35939 V!35939 (_ BitVec 32) Int) ListLongMap!13663)

(assert (=> b!987591 (= lt!437921 (getCurrentListMap!3868 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(assert (=> b!987591 (= lt!437926 (+!3035 (+!3035 lt!437924 lt!437917) lt!437918))))

(declare-fun lt!437927 () Unit!32735)

(assert (=> b!987591 (= lt!437927 (addCommutativeForDiffKeys!691 lt!437924 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!30043 _keys!1544) from!1932) lt!437925))))

(declare-fun b!987592 () Bool)

(declare-fun res!660786 () Bool)

(assert (=> b!987592 (=> (not res!660786) (not e!556913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62383 (_ BitVec 32)) Bool)

(assert (=> b!987592 (= res!660786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!987593 () Bool)

(declare-fun res!660785 () Bool)

(assert (=> b!987593 (=> (not res!660785) (not e!556913))))

(assert (=> b!987593 (= res!660785 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!36860 () Bool)

(declare-fun mapRes!36860 () Bool)

(declare-fun tp!69784 () Bool)

(assert (=> mapNonEmpty!36860 (= mapRes!36860 (and tp!69784 e!556912))))

(declare-fun mapRest!36860 () (Array (_ BitVec 32) ValueCell!11127))

(declare-fun mapKey!36860 () (_ BitVec 32))

(declare-fun mapValue!36860 () ValueCell!11127)

(assert (=> mapNonEmpty!36860 (= (arr!30044 _values!1278) (store mapRest!36860 mapKey!36860 mapValue!36860))))

(declare-fun mapIsEmpty!36860 () Bool)

(assert (=> mapIsEmpty!36860 mapRes!36860))

(declare-fun b!987594 () Bool)

(declare-fun res!660787 () Bool)

(assert (=> b!987594 (=> (not res!660787) (not e!556913))))

(assert (=> b!987594 (= res!660787 (and (= (size!30524 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30523 _keys!1544) (size!30524 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!987595 () Bool)

(declare-fun e!556911 () Bool)

(assert (=> b!987595 (= e!556911 (and e!556914 mapRes!36860))))

(declare-fun condMapEmpty!36860 () Bool)

(declare-fun mapDefault!36860 () ValueCell!11127)

(assert (=> b!987595 (= condMapEmpty!36860 (= (arr!30044 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11127)) mapDefault!36860)))))

(declare-fun b!987588 () Bool)

(declare-fun res!660791 () Bool)

(assert (=> b!987588 (=> (not res!660791) (not e!556913))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!987588 (= res!660791 (validKeyInArray!0 (select (arr!30043 _keys!1544) from!1932)))))

(declare-fun res!660788 () Bool)

(assert (=> start!84478 (=> (not res!660788) (not e!556913))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84478 (= res!660788 (validMask!0 mask!1948))))

(assert (=> start!84478 e!556913))

(assert (=> start!84478 true))

(assert (=> start!84478 tp_is_empty!23217))

(declare-fun array_inv!23069 (array!62385) Bool)

(assert (=> start!84478 (and (array_inv!23069 _values!1278) e!556911)))

(assert (=> start!84478 tp!69785))

(declare-fun array_inv!23070 (array!62383) Bool)

(assert (=> start!84478 (array_inv!23070 _keys!1544)))

(assert (= (and start!84478 res!660788) b!987594))

(assert (= (and b!987594 res!660787) b!987592))

(assert (= (and b!987592 res!660786) b!987586))

(assert (= (and b!987586 res!660784) b!987589))

(assert (= (and b!987589 res!660789) b!987588))

(assert (= (and b!987588 res!660791) b!987593))

(assert (= (and b!987593 res!660785) b!987585))

(assert (= (and b!987585 (not res!660790)) b!987591))

(assert (= (and b!987595 condMapEmpty!36860) mapIsEmpty!36860))

(assert (= (and b!987595 (not condMapEmpty!36860)) mapNonEmpty!36860))

(get-info :version)

(assert (= (and mapNonEmpty!36860 ((_ is ValueCellFull!11127) mapValue!36860)) b!987587))

(assert (= (and b!987595 ((_ is ValueCellFull!11127) mapDefault!36860)) b!987590))

(assert (= start!84478 b!987595))

(declare-fun b_lambda!15063 () Bool)

(assert (=> (not b_lambda!15063) (not b!987585)))

(declare-fun t!29839 () Bool)

(declare-fun tb!6787 () Bool)

(assert (=> (and start!84478 (= defaultEntry!1281 defaultEntry!1281) t!29839) tb!6787))

(declare-fun result!13559 () Bool)

(assert (=> tb!6787 (= result!13559 tp_is_empty!23217)))

(assert (=> b!987585 t!29839))

(declare-fun b_and!32089 () Bool)

(assert (= b_and!32087 (and (=> t!29839 result!13559) b_and!32089)))

(declare-fun m!914359 () Bool)

(assert (=> start!84478 m!914359))

(declare-fun m!914361 () Bool)

(assert (=> start!84478 m!914361))

(declare-fun m!914363 () Bool)

(assert (=> start!84478 m!914363))

(declare-fun m!914365 () Bool)

(assert (=> b!987586 m!914365))

(declare-fun m!914367 () Bool)

(assert (=> b!987591 m!914367))

(declare-fun m!914369 () Bool)

(assert (=> b!987591 m!914369))

(declare-fun m!914371 () Bool)

(assert (=> b!987591 m!914371))

(assert (=> b!987591 m!914367))

(declare-fun m!914373 () Bool)

(assert (=> b!987591 m!914373))

(declare-fun m!914375 () Bool)

(assert (=> b!987591 m!914375))

(assert (=> b!987591 m!914369))

(declare-fun m!914377 () Bool)

(assert (=> b!987592 m!914377))

(assert (=> b!987585 m!914367))

(declare-fun m!914379 () Bool)

(assert (=> b!987585 m!914379))

(declare-fun m!914381 () Bool)

(assert (=> b!987585 m!914381))

(declare-fun m!914383 () Bool)

(assert (=> b!987585 m!914383))

(declare-fun m!914385 () Bool)

(assert (=> b!987585 m!914385))

(assert (=> b!987585 m!914367))

(declare-fun m!914387 () Bool)

(assert (=> b!987585 m!914387))

(declare-fun m!914389 () Bool)

(assert (=> b!987585 m!914389))

(declare-fun m!914391 () Bool)

(assert (=> b!987585 m!914391))

(declare-fun m!914393 () Bool)

(assert (=> b!987585 m!914393))

(declare-fun m!914395 () Bool)

(assert (=> b!987585 m!914395))

(assert (=> b!987585 m!914379))

(assert (=> b!987585 m!914395))

(declare-fun m!914397 () Bool)

(assert (=> b!987585 m!914397))

(declare-fun m!914399 () Bool)

(assert (=> mapNonEmpty!36860 m!914399))

(assert (=> b!987588 m!914367))

(assert (=> b!987588 m!914367))

(declare-fun m!914401 () Bool)

(assert (=> b!987588 m!914401))

(check-sat (not b!987585) (not b_lambda!15063) (not b!987592) (not b!987586) (not b!987591) (not b!987588) (not mapNonEmpty!36860) tp_is_empty!23217 b_and!32089 (not start!84478) (not b_next!20001))
(check-sat b_and!32089 (not b_next!20001))
