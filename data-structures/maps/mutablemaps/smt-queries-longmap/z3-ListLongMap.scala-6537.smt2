; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83136 () Bool)

(assert start!83136)

(declare-fun b_free!19101 () Bool)

(declare-fun b_next!19101 () Bool)

(assert (=> start!83136 (= b_free!19101 (not b_next!19101))))

(declare-fun tp!66583 () Bool)

(declare-fun b_and!30607 () Bool)

(assert (=> start!83136 (= tp!66583 b_and!30607)))

(declare-fun mapNonEmpty!35008 () Bool)

(declare-fun mapRes!35008 () Bool)

(declare-fun tp!66582 () Bool)

(declare-fun e!546507 () Bool)

(assert (=> mapNonEmpty!35008 (= mapRes!35008 (and tp!66582 e!546507))))

(declare-datatypes ((V!34315 0))(
  ( (V!34316 (val!11050 Int)) )
))
(declare-datatypes ((ValueCell!10518 0))(
  ( (ValueCellFull!10518 (v!13609 V!34315)) (EmptyCell!10518) )
))
(declare-datatypes ((array!60045 0))(
  ( (array!60046 (arr!28882 (Array (_ BitVec 32) ValueCell!10518)) (size!29362 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60045)

(declare-fun mapKey!35008 () (_ BitVec 32))

(declare-fun mapRest!35008 () (Array (_ BitVec 32) ValueCell!10518))

(declare-fun mapValue!35008 () ValueCell!10518)

(assert (=> mapNonEmpty!35008 (= (arr!28882 _values!1425) (store mapRest!35008 mapKey!35008 mapValue!35008))))

(declare-fun b!969308 () Bool)

(declare-fun res!648888 () Bool)

(declare-fun e!546506 () Bool)

(assert (=> b!969308 (=> (not res!648888) (not e!546506))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60047 0))(
  ( (array!60048 (arr!28883 (Array (_ BitVec 32) (_ BitVec 64))) (size!29363 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60047)

(assert (=> b!969308 (= res!648888 (and (= (size!29362 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29363 _keys!1717) (size!29362 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!969309 () Bool)

(declare-fun tp_is_empty!21999 () Bool)

(assert (=> b!969309 (= e!546507 tp_is_empty!21999)))

(declare-fun b!969310 () Bool)

(declare-fun e!546505 () Bool)

(declare-fun e!546503 () Bool)

(assert (=> b!969310 (= e!546505 (and e!546503 mapRes!35008))))

(declare-fun condMapEmpty!35008 () Bool)

(declare-fun mapDefault!35008 () ValueCell!10518)

(assert (=> b!969310 (= condMapEmpty!35008 (= (arr!28882 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10518)) mapDefault!35008)))))

(declare-fun res!648889 () Bool)

(assert (=> start!83136 (=> (not res!648889) (not e!546506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83136 (= res!648889 (validMask!0 mask!2147))))

(assert (=> start!83136 e!546506))

(assert (=> start!83136 true))

(declare-fun array_inv!22251 (array!60045) Bool)

(assert (=> start!83136 (and (array_inv!22251 _values!1425) e!546505)))

(assert (=> start!83136 tp_is_empty!21999))

(assert (=> start!83136 tp!66583))

(declare-fun array_inv!22252 (array!60047) Bool)

(assert (=> start!83136 (array_inv!22252 _keys!1717)))

(declare-fun b!969311 () Bool)

(declare-fun res!648885 () Bool)

(assert (=> b!969311 (=> (not res!648885) (not e!546506))))

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!969311 (= res!648885 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29363 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29363 _keys!1717))))))

(declare-fun b!969312 () Bool)

(assert (=> b!969312 (= e!546506 false)))

(declare-fun lt!431584 () Bool)

(declare-fun zeroValue!1367 () V!34315)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34315)

(declare-datatypes ((tuple2!14252 0))(
  ( (tuple2!14253 (_1!7136 (_ BitVec 64)) (_2!7136 V!34315)) )
))
(declare-datatypes ((List!20145 0))(
  ( (Nil!20142) (Cons!20141 (h!21303 tuple2!14252) (t!28516 List!20145)) )
))
(declare-datatypes ((ListLongMap!12963 0))(
  ( (ListLongMap!12964 (toList!6497 List!20145)) )
))
(declare-fun contains!5552 (ListLongMap!12963 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3682 (array!60047 array!60045 (_ BitVec 32) (_ BitVec 32) V!34315 V!34315 (_ BitVec 32) Int) ListLongMap!12963)

(assert (=> b!969312 (= lt!431584 (contains!5552 (getCurrentListMap!3682 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28883 _keys!1717) i!822)))))

(declare-fun b!969313 () Bool)

(declare-fun res!648887 () Bool)

(assert (=> b!969313 (=> (not res!648887) (not e!546506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60047 (_ BitVec 32)) Bool)

(assert (=> b!969313 (= res!648887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!969314 () Bool)

(assert (=> b!969314 (= e!546503 tp_is_empty!21999)))

(declare-fun b!969315 () Bool)

(declare-fun res!648884 () Bool)

(assert (=> b!969315 (=> (not res!648884) (not e!546506))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!969315 (= res!648884 (validKeyInArray!0 (select (arr!28883 _keys!1717) i!822)))))

(declare-fun b!969316 () Bool)

(declare-fun res!648886 () Bool)

(assert (=> b!969316 (=> (not res!648886) (not e!546506))))

(declare-datatypes ((List!20146 0))(
  ( (Nil!20143) (Cons!20142 (h!21304 (_ BitVec 64)) (t!28517 List!20146)) )
))
(declare-fun arrayNoDuplicates!0 (array!60047 (_ BitVec 32) List!20146) Bool)

(assert (=> b!969316 (= res!648886 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20143))))

(declare-fun mapIsEmpty!35008 () Bool)

(assert (=> mapIsEmpty!35008 mapRes!35008))

(assert (= (and start!83136 res!648889) b!969308))

(assert (= (and b!969308 res!648888) b!969313))

(assert (= (and b!969313 res!648887) b!969316))

(assert (= (and b!969316 res!648886) b!969311))

(assert (= (and b!969311 res!648885) b!969315))

(assert (= (and b!969315 res!648884) b!969312))

(assert (= (and b!969310 condMapEmpty!35008) mapIsEmpty!35008))

(assert (= (and b!969310 (not condMapEmpty!35008)) mapNonEmpty!35008))

(get-info :version)

(assert (= (and mapNonEmpty!35008 ((_ is ValueCellFull!10518) mapValue!35008)) b!969309))

(assert (= (and b!969310 ((_ is ValueCellFull!10518) mapDefault!35008)) b!969314))

(assert (= start!83136 b!969310))

(declare-fun m!897403 () Bool)

(assert (=> mapNonEmpty!35008 m!897403))

(declare-fun m!897405 () Bool)

(assert (=> start!83136 m!897405))

(declare-fun m!897407 () Bool)

(assert (=> start!83136 m!897407))

(declare-fun m!897409 () Bool)

(assert (=> start!83136 m!897409))

(declare-fun m!897411 () Bool)

(assert (=> b!969313 m!897411))

(declare-fun m!897413 () Bool)

(assert (=> b!969316 m!897413))

(declare-fun m!897415 () Bool)

(assert (=> b!969315 m!897415))

(assert (=> b!969315 m!897415))

(declare-fun m!897417 () Bool)

(assert (=> b!969315 m!897417))

(declare-fun m!897419 () Bool)

(assert (=> b!969312 m!897419))

(assert (=> b!969312 m!897415))

(assert (=> b!969312 m!897419))

(assert (=> b!969312 m!897415))

(declare-fun m!897421 () Bool)

(assert (=> b!969312 m!897421))

(check-sat (not start!83136) (not b_next!19101) b_and!30607 (not mapNonEmpty!35008) (not b!969315) (not b!969313) tp_is_empty!21999 (not b!969312) (not b!969316))
(check-sat b_and!30607 (not b_next!19101))
