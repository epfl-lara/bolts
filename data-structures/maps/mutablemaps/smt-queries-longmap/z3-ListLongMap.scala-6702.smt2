; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84214 () Bool)

(assert start!84214)

(declare-fun b_free!19887 () Bool)

(declare-fun b_next!19887 () Bool)

(assert (=> start!84214 (= b_free!19887 (not b_next!19887))))

(declare-fun tp!69266 () Bool)

(declare-fun b_and!31869 () Bool)

(assert (=> start!84214 (= tp!69266 b_and!31869)))

(declare-fun mapNonEmpty!36512 () Bool)

(declare-fun mapRes!36512 () Bool)

(declare-fun tp!69265 () Bool)

(declare-fun e!554974 () Bool)

(assert (=> mapNonEmpty!36512 (= mapRes!36512 (and tp!69265 e!554974))))

(declare-datatypes ((V!35635 0))(
  ( (V!35636 (val!11545 Int)) )
))
(declare-datatypes ((ValueCell!11013 0))(
  ( (ValueCellFull!11013 (v!14107 V!35635)) (EmptyCell!11013) )
))
(declare-fun mapRest!36512 () (Array (_ BitVec 32) ValueCell!11013))

(declare-datatypes ((array!61947 0))(
  ( (array!61948 (arr!29827 (Array (_ BitVec 32) ValueCell!11013)) (size!30307 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61947)

(declare-fun mapKey!36512 () (_ BitVec 32))

(declare-fun mapValue!36512 () ValueCell!11013)

(assert (=> mapNonEmpty!36512 (= (arr!29827 _values!1278) (store mapRest!36512 mapKey!36512 mapValue!36512))))

(declare-fun res!658831 () Bool)

(declare-fun e!554976 () Bool)

(assert (=> start!84214 (=> (not res!658831) (not e!554976))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84214 (= res!658831 (validMask!0 mask!1948))))

(assert (=> start!84214 e!554976))

(assert (=> start!84214 true))

(declare-fun tp_is_empty!22989 () Bool)

(assert (=> start!84214 tp_is_empty!22989))

(declare-fun e!554977 () Bool)

(declare-fun array_inv!22923 (array!61947) Bool)

(assert (=> start!84214 (and (array_inv!22923 _values!1278) e!554977)))

(assert (=> start!84214 tp!69266))

(declare-datatypes ((array!61949 0))(
  ( (array!61950 (arr!29828 (Array (_ BitVec 32) (_ BitVec 64))) (size!30308 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61949)

(declare-fun array_inv!22924 (array!61949) Bool)

(assert (=> start!84214 (array_inv!22924 _keys!1544)))

(declare-fun b!984412 () Bool)

(declare-fun e!554975 () Bool)

(assert (=> b!984412 (= e!554977 (and e!554975 mapRes!36512))))

(declare-fun condMapEmpty!36512 () Bool)

(declare-fun mapDefault!36512 () ValueCell!11013)

(assert (=> b!984412 (= condMapEmpty!36512 (= (arr!29827 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11013)) mapDefault!36512)))))

(declare-fun b!984413 () Bool)

(declare-fun res!658834 () Bool)

(assert (=> b!984413 (=> (not res!658834) (not e!554976))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!984413 (= res!658834 (and (= (size!30307 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30308 _keys!1544) (size!30307 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!984414 () Bool)

(declare-fun e!554973 () Bool)

(assert (=> b!984414 (= e!554976 e!554973)))

(declare-fun res!658835 () Bool)

(assert (=> b!984414 (=> (not res!658835) (not e!554973))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!984414 (= res!658835 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29828 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!436814 () V!35635)

(declare-fun get!15494 (ValueCell!11013 V!35635) V!35635)

(declare-fun dynLambda!1831 (Int (_ BitVec 64)) V!35635)

(assert (=> b!984414 (= lt!436814 (get!15494 (select (arr!29827 _values!1278) from!1932) (dynLambda!1831 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((tuple2!14868 0))(
  ( (tuple2!14869 (_1!7444 (_ BitVec 64)) (_2!7444 V!35635)) )
))
(declare-datatypes ((List!20787 0))(
  ( (Nil!20784) (Cons!20783 (h!21945 tuple2!14868) (t!29626 List!20787)) )
))
(declare-datatypes ((ListLongMap!13579 0))(
  ( (ListLongMap!13580 (toList!6805 List!20787)) )
))
(declare-fun lt!436813 () ListLongMap!13579)

(declare-fun minValue!1220 () V!35635)

(declare-fun zeroValue!1220 () V!35635)

(declare-fun getCurrentListMapNoExtraKeys!3460 (array!61949 array!61947 (_ BitVec 32) (_ BitVec 32) V!35635 V!35635 (_ BitVec 32) Int) ListLongMap!13579)

(assert (=> b!984414 (= lt!436813 (getCurrentListMapNoExtraKeys!3460 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!984415 () Bool)

(declare-fun res!658836 () Bool)

(assert (=> b!984415 (=> (not res!658836) (not e!554976))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984415 (= res!658836 (validKeyInArray!0 (select (arr!29828 _keys!1544) from!1932)))))

(declare-fun b!984416 () Bool)

(declare-fun res!658833 () Bool)

(assert (=> b!984416 (=> (not res!658833) (not e!554976))))

(assert (=> b!984416 (= res!658833 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30308 _keys!1544))))))

(declare-fun b!984417 () Bool)

(declare-fun res!658830 () Bool)

(assert (=> b!984417 (=> (not res!658830) (not e!554976))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61949 (_ BitVec 32)) Bool)

(assert (=> b!984417 (= res!658830 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36512 () Bool)

(assert (=> mapIsEmpty!36512 mapRes!36512))

(declare-fun b!984418 () Bool)

(declare-fun res!658829 () Bool)

(assert (=> b!984418 (=> (not res!658829) (not e!554976))))

(assert (=> b!984418 (= res!658829 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!984419 () Bool)

(assert (=> b!984419 (= e!554974 tp_is_empty!22989)))

(declare-fun b!984420 () Bool)

(declare-fun res!658832 () Bool)

(assert (=> b!984420 (=> (not res!658832) (not e!554976))))

(declare-datatypes ((List!20788 0))(
  ( (Nil!20785) (Cons!20784 (h!21946 (_ BitVec 64)) (t!29627 List!20788)) )
))
(declare-fun arrayNoDuplicates!0 (array!61949 (_ BitVec 32) List!20788) Bool)

(assert (=> b!984420 (= res!658832 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20785))))

(declare-fun b!984421 () Bool)

(assert (=> b!984421 (= e!554975 tp_is_empty!22989)))

(declare-fun b!984422 () Bool)

(assert (=> b!984422 (= e!554973 (not true))))

(declare-fun lt!436812 () tuple2!14868)

(declare-fun lt!436816 () tuple2!14868)

(declare-fun +!2996 (ListLongMap!13579 tuple2!14868) ListLongMap!13579)

(assert (=> b!984422 (= (+!2996 (+!2996 lt!436813 lt!436812) lt!436816) (+!2996 (+!2996 lt!436813 lt!436816) lt!436812))))

(assert (=> b!984422 (= lt!436816 (tuple2!14869 (select (arr!29828 _keys!1544) from!1932) lt!436814))))

(assert (=> b!984422 (= lt!436812 (tuple2!14869 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32667 0))(
  ( (Unit!32668) )
))
(declare-fun lt!436815 () Unit!32667)

(declare-fun addCommutativeForDiffKeys!658 (ListLongMap!13579 (_ BitVec 64) V!35635 (_ BitVec 64) V!35635) Unit!32667)

(assert (=> b!984422 (= lt!436815 (addCommutativeForDiffKeys!658 lt!436813 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29828 _keys!1544) from!1932) lt!436814))))

(assert (= (and start!84214 res!658831) b!984413))

(assert (= (and b!984413 res!658834) b!984417))

(assert (= (and b!984417 res!658830) b!984420))

(assert (= (and b!984420 res!658832) b!984416))

(assert (= (and b!984416 res!658833) b!984415))

(assert (= (and b!984415 res!658836) b!984418))

(assert (= (and b!984418 res!658829) b!984414))

(assert (= (and b!984414 res!658835) b!984422))

(assert (= (and b!984412 condMapEmpty!36512) mapIsEmpty!36512))

(assert (= (and b!984412 (not condMapEmpty!36512)) mapNonEmpty!36512))

(get-info :version)

(assert (= (and mapNonEmpty!36512 ((_ is ValueCellFull!11013) mapValue!36512)) b!984419))

(assert (= (and b!984412 ((_ is ValueCellFull!11013) mapDefault!36512)) b!984421))

(assert (= start!84214 b!984412))

(declare-fun b_lambda!14949 () Bool)

(assert (=> (not b_lambda!14949) (not b!984414)))

(declare-fun t!29625 () Bool)

(declare-fun tb!6689 () Bool)

(assert (=> (and start!84214 (= defaultEntry!1281 defaultEntry!1281) t!29625) tb!6689))

(declare-fun result!13359 () Bool)

(assert (=> tb!6689 (= result!13359 tp_is_empty!22989)))

(assert (=> b!984414 t!29625))

(declare-fun b_and!31871 () Bool)

(assert (= b_and!31869 (and (=> t!29625 result!13359) b_and!31871)))

(declare-fun m!911601 () Bool)

(assert (=> b!984417 m!911601))

(declare-fun m!911603 () Bool)

(assert (=> start!84214 m!911603))

(declare-fun m!911605 () Bool)

(assert (=> start!84214 m!911605))

(declare-fun m!911607 () Bool)

(assert (=> start!84214 m!911607))

(declare-fun m!911609 () Bool)

(assert (=> mapNonEmpty!36512 m!911609))

(declare-fun m!911611 () Bool)

(assert (=> b!984414 m!911611))

(declare-fun m!911613 () Bool)

(assert (=> b!984414 m!911613))

(declare-fun m!911615 () Bool)

(assert (=> b!984414 m!911615))

(declare-fun m!911617 () Bool)

(assert (=> b!984414 m!911617))

(assert (=> b!984414 m!911613))

(assert (=> b!984414 m!911617))

(declare-fun m!911619 () Bool)

(assert (=> b!984414 m!911619))

(declare-fun m!911621 () Bool)

(assert (=> b!984420 m!911621))

(assert (=> b!984415 m!911611))

(assert (=> b!984415 m!911611))

(declare-fun m!911623 () Bool)

(assert (=> b!984415 m!911623))

(assert (=> b!984422 m!911611))

(declare-fun m!911625 () Bool)

(assert (=> b!984422 m!911625))

(declare-fun m!911627 () Bool)

(assert (=> b!984422 m!911627))

(assert (=> b!984422 m!911611))

(declare-fun m!911629 () Bool)

(assert (=> b!984422 m!911629))

(assert (=> b!984422 m!911627))

(declare-fun m!911631 () Bool)

(assert (=> b!984422 m!911631))

(assert (=> b!984422 m!911625))

(declare-fun m!911633 () Bool)

(assert (=> b!984422 m!911633))

(check-sat (not b_next!19887) (not b!984420) tp_is_empty!22989 (not mapNonEmpty!36512) (not b!984415) b_and!31871 (not b!984422) (not start!84214) (not b!984417) (not b!984414) (not b_lambda!14949))
(check-sat b_and!31871 (not b_next!19887))
