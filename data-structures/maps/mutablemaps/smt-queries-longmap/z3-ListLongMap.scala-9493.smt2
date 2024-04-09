; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112604 () Bool)

(assert start!112604)

(declare-fun b_free!30963 () Bool)

(declare-fun b_next!30963 () Bool)

(assert (=> start!112604 (= b_free!30963 (not b_next!30963))))

(declare-fun tp!108527 () Bool)

(declare-fun b_and!49881 () Bool)

(assert (=> start!112604 (= tp!108527 b_and!49881)))

(declare-fun mapIsEmpty!56983 () Bool)

(declare-fun mapRes!56983 () Bool)

(assert (=> mapIsEmpty!56983 mapRes!56983))

(declare-fun res!886227 () Bool)

(declare-fun e!760476 () Bool)

(assert (=> start!112604 (=> (not res!886227) (not e!760476))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112604 (= res!886227 (validMask!0 mask!1998))))

(assert (=> start!112604 e!760476))

(declare-datatypes ((V!54267 0))(
  ( (V!54268 (val!18511 Int)) )
))
(declare-datatypes ((ValueCell!17538 0))(
  ( (ValueCellFull!17538 (v!21146 V!54267)) (EmptyCell!17538) )
))
(declare-datatypes ((array!90583 0))(
  ( (array!90584 (arr!43753 (Array (_ BitVec 32) ValueCell!17538)) (size!44304 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90583)

(declare-fun e!760480 () Bool)

(declare-fun array_inv!32931 (array!90583) Bool)

(assert (=> start!112604 (and (array_inv!32931 _values!1320) e!760480)))

(assert (=> start!112604 true))

(declare-datatypes ((array!90585 0))(
  ( (array!90586 (arr!43754 (Array (_ BitVec 32) (_ BitVec 64))) (size!44305 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90585)

(declare-fun array_inv!32932 (array!90585) Bool)

(assert (=> start!112604 (array_inv!32932 _keys!1590)))

(assert (=> start!112604 tp!108527))

(declare-fun tp_is_empty!36873 () Bool)

(assert (=> start!112604 tp_is_empty!36873))

(declare-fun b!1335196 () Bool)

(declare-fun e!760479 () Bool)

(assert (=> b!1335196 (= e!760480 (and e!760479 mapRes!56983))))

(declare-fun condMapEmpty!56983 () Bool)

(declare-fun mapDefault!56983 () ValueCell!17538)

(assert (=> b!1335196 (= condMapEmpty!56983 (= (arr!43753 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17538)) mapDefault!56983)))))

(declare-fun b!1335197 () Bool)

(declare-fun res!886229 () Bool)

(assert (=> b!1335197 (=> (not res!886229) (not e!760476))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1335197 (= res!886229 (and (= (size!44304 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44305 _keys!1590) (size!44304 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1335198 () Bool)

(declare-fun res!886225 () Bool)

(assert (=> b!1335198 (=> (not res!886225) (not e!760476))))

(declare-datatypes ((List!31194 0))(
  ( (Nil!31191) (Cons!31190 (h!32399 (_ BitVec 64)) (t!45465 List!31194)) )
))
(declare-fun arrayNoDuplicates!0 (array!90585 (_ BitVec 32) List!31194) Bool)

(assert (=> b!1335198 (= res!886225 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31191))))

(declare-fun b!1335199 () Bool)

(declare-fun e!760478 () Bool)

(assert (=> b!1335199 (= e!760478 tp_is_empty!36873)))

(declare-fun b!1335200 () Bool)

(declare-fun res!886226 () Bool)

(assert (=> b!1335200 (=> (not res!886226) (not e!760476))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90585 (_ BitVec 32)) Bool)

(assert (=> b!1335200 (= res!886226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapNonEmpty!56983 () Bool)

(declare-fun tp!108526 () Bool)

(assert (=> mapNonEmpty!56983 (= mapRes!56983 (and tp!108526 e!760478))))

(declare-fun mapKey!56983 () (_ BitVec 32))

(declare-fun mapValue!56983 () ValueCell!17538)

(declare-fun mapRest!56983 () (Array (_ BitVec 32) ValueCell!17538))

(assert (=> mapNonEmpty!56983 (= (arr!43753 _values!1320) (store mapRest!56983 mapKey!56983 mapValue!56983))))

(declare-fun b!1335201 () Bool)

(assert (=> b!1335201 (= e!760476 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun lt!592373 () Bool)

(declare-fun minValue!1262 () V!54267)

(declare-fun zeroValue!1262 () V!54267)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!24024 0))(
  ( (tuple2!24025 (_1!12022 (_ BitVec 64)) (_2!12022 V!54267)) )
))
(declare-datatypes ((List!31195 0))(
  ( (Nil!31192) (Cons!31191 (h!32400 tuple2!24024) (t!45466 List!31195)) )
))
(declare-datatypes ((ListLongMap!21693 0))(
  ( (ListLongMap!21694 (toList!10862 List!31195)) )
))
(declare-fun contains!8962 (ListLongMap!21693 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5773 (array!90585 array!90583 (_ BitVec 32) (_ BitVec 32) V!54267 V!54267 (_ BitVec 32) Int) ListLongMap!21693)

(assert (=> b!1335201 (= lt!592373 (contains!8962 (getCurrentListMap!5773 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1335202 () Bool)

(declare-fun res!886228 () Bool)

(assert (=> b!1335202 (=> (not res!886228) (not e!760476))))

(assert (=> b!1335202 (= res!886228 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44305 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1335203 () Bool)

(assert (=> b!1335203 (= e!760479 tp_is_empty!36873)))

(assert (= (and start!112604 res!886227) b!1335197))

(assert (= (and b!1335197 res!886229) b!1335200))

(assert (= (and b!1335200 res!886226) b!1335198))

(assert (= (and b!1335198 res!886225) b!1335202))

(assert (= (and b!1335202 res!886228) b!1335201))

(assert (= (and b!1335196 condMapEmpty!56983) mapIsEmpty!56983))

(assert (= (and b!1335196 (not condMapEmpty!56983)) mapNonEmpty!56983))

(get-info :version)

(assert (= (and mapNonEmpty!56983 ((_ is ValueCellFull!17538) mapValue!56983)) b!1335199))

(assert (= (and b!1335196 ((_ is ValueCellFull!17538) mapDefault!56983)) b!1335203))

(assert (= start!112604 b!1335196))

(declare-fun m!1223347 () Bool)

(assert (=> mapNonEmpty!56983 m!1223347))

(declare-fun m!1223349 () Bool)

(assert (=> b!1335198 m!1223349))

(declare-fun m!1223351 () Bool)

(assert (=> b!1335201 m!1223351))

(assert (=> b!1335201 m!1223351))

(declare-fun m!1223353 () Bool)

(assert (=> b!1335201 m!1223353))

(declare-fun m!1223355 () Bool)

(assert (=> start!112604 m!1223355))

(declare-fun m!1223357 () Bool)

(assert (=> start!112604 m!1223357))

(declare-fun m!1223359 () Bool)

(assert (=> start!112604 m!1223359))

(declare-fun m!1223361 () Bool)

(assert (=> b!1335200 m!1223361))

(check-sat (not start!112604) tp_is_empty!36873 (not b_next!30963) (not mapNonEmpty!56983) (not b!1335200) (not b!1335198) b_and!49881 (not b!1335201))
(check-sat b_and!49881 (not b_next!30963))
