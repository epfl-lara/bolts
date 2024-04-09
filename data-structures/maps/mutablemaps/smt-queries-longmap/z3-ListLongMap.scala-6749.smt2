; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84658 () Bool)

(assert start!84658)

(declare-fun b_free!20055 () Bool)

(declare-fun b_next!20055 () Bool)

(assert (=> start!84658 (= b_free!20055 (not b_next!20055))))

(declare-fun tp!69957 () Bool)

(declare-fun b_and!32205 () Bool)

(assert (=> start!84658 (= tp!69957 b_and!32205)))

(declare-fun b!989615 () Bool)

(declare-fun res!661877 () Bool)

(declare-fun e!558055 () Bool)

(assert (=> b!989615 (=> (not res!661877) (not e!558055))))

(declare-datatypes ((array!62491 0))(
  ( (array!62492 (arr!30094 (Array (_ BitVec 32) (_ BitVec 64))) (size!30574 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62491)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!989615 (= res!661877 (validKeyInArray!0 (select (arr!30094 _keys!1544) from!1932)))))

(declare-fun b!989616 () Bool)

(declare-fun res!661875 () Bool)

(assert (=> b!989616 (=> (not res!661875) (not e!558055))))

(assert (=> b!989616 (= res!661875 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30574 _keys!1544))))))

(declare-fun b!989617 () Bool)

(declare-fun e!558059 () Bool)

(declare-fun tp_is_empty!23271 () Bool)

(assert (=> b!989617 (= e!558059 tp_is_empty!23271)))

(declare-fun b!989618 () Bool)

(declare-datatypes ((V!36011 0))(
  ( (V!36012 (val!11686 Int)) )
))
(declare-datatypes ((ValueCell!11154 0))(
  ( (ValueCellFull!11154 (v!14256 V!36011)) (EmptyCell!11154) )
))
(declare-datatypes ((array!62493 0))(
  ( (array!62494 (arr!30095 (Array (_ BitVec 32) ValueCell!11154)) (size!30575 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62493)

(assert (=> b!989618 (= e!558055 (bvsge from!1932 (size!30575 _values!1278)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!36011)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((tuple2!14990 0))(
  ( (tuple2!14991 (_1!7505 (_ BitVec 64)) (_2!7505 V!36011)) )
))
(declare-datatypes ((List!20940 0))(
  ( (Nil!20937) (Cons!20936 (h!22098 tuple2!14990) (t!29905 List!20940)) )
))
(declare-datatypes ((ListLongMap!13701 0))(
  ( (ListLongMap!13702 (toList!6866 List!20940)) )
))
(declare-fun lt!439055 () ListLongMap!13701)

(declare-fun zeroValue!1220 () V!36011)

(declare-fun defaultEntry!1281 () Int)

(declare-fun getCurrentListMapNoExtraKeys!3516 (array!62491 array!62493 (_ BitVec 32) (_ BitVec 32) V!36011 V!36011 (_ BitVec 32) Int) ListLongMap!13701)

(assert (=> b!989618 (= lt!439055 (getCurrentListMapNoExtraKeys!3516 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!989619 () Bool)

(declare-fun res!661874 () Bool)

(assert (=> b!989619 (=> (not res!661874) (not e!558055))))

(assert (=> b!989619 (= res!661874 (and (= (size!30575 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30574 _keys!1544) (size!30575 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!989620 () Bool)

(declare-fun res!661879 () Bool)

(assert (=> b!989620 (=> (not res!661879) (not e!558055))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62491 (_ BitVec 32)) Bool)

(assert (=> b!989620 (= res!661879 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!989621 () Bool)

(declare-fun e!558057 () Bool)

(declare-fun e!558056 () Bool)

(declare-fun mapRes!36952 () Bool)

(assert (=> b!989621 (= e!558057 (and e!558056 mapRes!36952))))

(declare-fun condMapEmpty!36952 () Bool)

(declare-fun mapDefault!36952 () ValueCell!11154)

(assert (=> b!989621 (= condMapEmpty!36952 (= (arr!30095 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11154)) mapDefault!36952)))))

(declare-fun b!989622 () Bool)

(declare-fun res!661873 () Bool)

(assert (=> b!989622 (=> (not res!661873) (not e!558055))))

(assert (=> b!989622 (= res!661873 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!36952 () Bool)

(declare-fun tp!69958 () Bool)

(assert (=> mapNonEmpty!36952 (= mapRes!36952 (and tp!69958 e!558059))))

(declare-fun mapRest!36952 () (Array (_ BitVec 32) ValueCell!11154))

(declare-fun mapValue!36952 () ValueCell!11154)

(declare-fun mapKey!36952 () (_ BitVec 32))

(assert (=> mapNonEmpty!36952 (= (arr!30095 _values!1278) (store mapRest!36952 mapKey!36952 mapValue!36952))))

(declare-fun mapIsEmpty!36952 () Bool)

(assert (=> mapIsEmpty!36952 mapRes!36952))

(declare-fun b!989623 () Bool)

(declare-fun res!661878 () Bool)

(assert (=> b!989623 (=> (not res!661878) (not e!558055))))

(declare-datatypes ((List!20941 0))(
  ( (Nil!20938) (Cons!20937 (h!22099 (_ BitVec 64)) (t!29906 List!20941)) )
))
(declare-fun arrayNoDuplicates!0 (array!62491 (_ BitVec 32) List!20941) Bool)

(assert (=> b!989623 (= res!661878 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20938))))

(declare-fun res!661876 () Bool)

(assert (=> start!84658 (=> (not res!661876) (not e!558055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84658 (= res!661876 (validMask!0 mask!1948))))

(assert (=> start!84658 e!558055))

(assert (=> start!84658 true))

(assert (=> start!84658 tp_is_empty!23271))

(declare-fun array_inv!23107 (array!62493) Bool)

(assert (=> start!84658 (and (array_inv!23107 _values!1278) e!558057)))

(assert (=> start!84658 tp!69957))

(declare-fun array_inv!23108 (array!62491) Bool)

(assert (=> start!84658 (array_inv!23108 _keys!1544)))

(declare-fun b!989624 () Bool)

(assert (=> b!989624 (= e!558056 tp_is_empty!23271)))

(assert (= (and start!84658 res!661876) b!989619))

(assert (= (and b!989619 res!661874) b!989620))

(assert (= (and b!989620 res!661879) b!989623))

(assert (= (and b!989623 res!661878) b!989616))

(assert (= (and b!989616 res!661875) b!989615))

(assert (= (and b!989615 res!661877) b!989622))

(assert (= (and b!989622 res!661873) b!989618))

(assert (= (and b!989621 condMapEmpty!36952) mapIsEmpty!36952))

(assert (= (and b!989621 (not condMapEmpty!36952)) mapNonEmpty!36952))

(get-info :version)

(assert (= (and mapNonEmpty!36952 ((_ is ValueCellFull!11154) mapValue!36952)) b!989617))

(assert (= (and b!989621 ((_ is ValueCellFull!11154) mapDefault!36952)) b!989624))

(assert (= start!84658 b!989621))

(declare-fun m!917205 () Bool)

(assert (=> b!989615 m!917205))

(assert (=> b!989615 m!917205))

(declare-fun m!917207 () Bool)

(assert (=> b!989615 m!917207))

(declare-fun m!917209 () Bool)

(assert (=> b!989623 m!917209))

(declare-fun m!917211 () Bool)

(assert (=> start!84658 m!917211))

(declare-fun m!917213 () Bool)

(assert (=> start!84658 m!917213))

(declare-fun m!917215 () Bool)

(assert (=> start!84658 m!917215))

(declare-fun m!917217 () Bool)

(assert (=> b!989620 m!917217))

(declare-fun m!917219 () Bool)

(assert (=> b!989618 m!917219))

(declare-fun m!917221 () Bool)

(assert (=> mapNonEmpty!36952 m!917221))

(check-sat b_and!32205 (not start!84658) (not b!989618) (not b!989620) (not b!989615) (not b!989623) tp_is_empty!23271 (not mapNonEmpty!36952) (not b_next!20055))
(check-sat b_and!32205 (not b_next!20055))
