; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83298 () Bool)

(assert start!83298)

(declare-fun b_free!19263 () Bool)

(declare-fun b_next!19263 () Bool)

(assert (=> start!83298 (= b_free!19263 (not b_next!19263))))

(declare-fun tp!67068 () Bool)

(declare-fun b_and!30769 () Bool)

(assert (=> start!83298 (= tp!67068 b_and!30769)))

(declare-fun b!971599 () Bool)

(declare-fun e!547722 () Bool)

(declare-fun tp_is_empty!22161 () Bool)

(assert (=> b!971599 (= e!547722 tp_is_empty!22161)))

(declare-fun b!971600 () Bool)

(declare-fun res!650447 () Bool)

(declare-fun e!547718 () Bool)

(assert (=> b!971600 (=> (not res!650447) (not e!547718))))

(declare-datatypes ((array!60353 0))(
  ( (array!60354 (arr!29036 (Array (_ BitVec 32) (_ BitVec 64))) (size!29516 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60353)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60353 (_ BitVec 32)) Bool)

(assert (=> b!971600 (= res!650447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun res!650449 () Bool)

(assert (=> start!83298 (=> (not res!650449) (not e!547718))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83298 (= res!650449 (validMask!0 mask!2147))))

(assert (=> start!83298 e!547718))

(assert (=> start!83298 true))

(declare-datatypes ((V!34531 0))(
  ( (V!34532 (val!11131 Int)) )
))
(declare-datatypes ((ValueCell!10599 0))(
  ( (ValueCellFull!10599 (v!13690 V!34531)) (EmptyCell!10599) )
))
(declare-datatypes ((array!60355 0))(
  ( (array!60356 (arr!29037 (Array (_ BitVec 32) ValueCell!10599)) (size!29517 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60355)

(declare-fun e!547721 () Bool)

(declare-fun array_inv!22361 (array!60355) Bool)

(assert (=> start!83298 (and (array_inv!22361 _values!1425) e!547721)))

(assert (=> start!83298 tp_is_empty!22161))

(assert (=> start!83298 tp!67068))

(declare-fun array_inv!22362 (array!60353) Bool)

(assert (=> start!83298 (array_inv!22362 _keys!1717)))

(declare-fun b!971601 () Bool)

(declare-fun mapRes!35251 () Bool)

(assert (=> b!971601 (= e!547721 (and e!547722 mapRes!35251))))

(declare-fun condMapEmpty!35251 () Bool)

(declare-fun mapDefault!35251 () ValueCell!10599)

(assert (=> b!971601 (= condMapEmpty!35251 (= (arr!29037 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10599)) mapDefault!35251)))))

(declare-fun b!971602 () Bool)

(assert (=> b!971602 (= e!547718 false)))

(declare-datatypes ((tuple2!14372 0))(
  ( (tuple2!14373 (_1!7196 (_ BitVec 64)) (_2!7196 V!34531)) )
))
(declare-datatypes ((List!20263 0))(
  ( (Nil!20260) (Cons!20259 (h!21421 tuple2!14372) (t!28634 List!20263)) )
))
(declare-datatypes ((ListLongMap!13083 0))(
  ( (ListLongMap!13084 (toList!6557 List!20263)) )
))
(declare-fun lt!431809 () ListLongMap!13083)

(declare-fun zeroValue!1367 () V!34531)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34531)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3742 (array!60353 array!60355 (_ BitVec 32) (_ BitVec 32) V!34531 V!34531 (_ BitVec 32) Int) ListLongMap!13083)

(assert (=> b!971602 (= lt!431809 (getCurrentListMap!3742 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!971603 () Bool)

(declare-fun res!650450 () Bool)

(assert (=> b!971603 (=> (not res!650450) (not e!547718))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971603 (= res!650450 (validKeyInArray!0 (select (arr!29036 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35251 () Bool)

(assert (=> mapIsEmpty!35251 mapRes!35251))

(declare-fun b!971604 () Bool)

(declare-fun res!650451 () Bool)

(assert (=> b!971604 (=> (not res!650451) (not e!547718))))

(assert (=> b!971604 (= res!650451 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29516 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29516 _keys!1717))))))

(declare-fun b!971605 () Bool)

(declare-fun res!650446 () Bool)

(assert (=> b!971605 (=> (not res!650446) (not e!547718))))

(declare-fun contains!5607 (ListLongMap!13083 (_ BitVec 64)) Bool)

(assert (=> b!971605 (= res!650446 (contains!5607 (getCurrentListMap!3742 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29036 _keys!1717) i!822)))))

(declare-fun b!971606 () Bool)

(declare-fun res!650452 () Bool)

(assert (=> b!971606 (=> (not res!650452) (not e!547718))))

(declare-datatypes ((List!20264 0))(
  ( (Nil!20261) (Cons!20260 (h!21422 (_ BitVec 64)) (t!28635 List!20264)) )
))
(declare-fun arrayNoDuplicates!0 (array!60353 (_ BitVec 32) List!20264) Bool)

(assert (=> b!971606 (= res!650452 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20261))))

(declare-fun b!971607 () Bool)

(declare-fun res!650448 () Bool)

(assert (=> b!971607 (=> (not res!650448) (not e!547718))))

(assert (=> b!971607 (= res!650448 (and (= (size!29517 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29516 _keys!1717) (size!29517 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!35251 () Bool)

(declare-fun tp!67069 () Bool)

(declare-fun e!547719 () Bool)

(assert (=> mapNonEmpty!35251 (= mapRes!35251 (and tp!67069 e!547719))))

(declare-fun mapKey!35251 () (_ BitVec 32))

(declare-fun mapRest!35251 () (Array (_ BitVec 32) ValueCell!10599))

(declare-fun mapValue!35251 () ValueCell!10599)

(assert (=> mapNonEmpty!35251 (= (arr!29037 _values!1425) (store mapRest!35251 mapKey!35251 mapValue!35251))))

(declare-fun b!971608 () Bool)

(assert (=> b!971608 (= e!547719 tp_is_empty!22161)))

(assert (= (and start!83298 res!650449) b!971607))

(assert (= (and b!971607 res!650448) b!971600))

(assert (= (and b!971600 res!650447) b!971606))

(assert (= (and b!971606 res!650452) b!971604))

(assert (= (and b!971604 res!650451) b!971603))

(assert (= (and b!971603 res!650450) b!971605))

(assert (= (and b!971605 res!650446) b!971602))

(assert (= (and b!971601 condMapEmpty!35251) mapIsEmpty!35251))

(assert (= (and b!971601 (not condMapEmpty!35251)) mapNonEmpty!35251))

(get-info :version)

(assert (= (and mapNonEmpty!35251 ((_ is ValueCellFull!10599) mapValue!35251)) b!971608))

(assert (= (and b!971601 ((_ is ValueCellFull!10599) mapDefault!35251)) b!971599))

(assert (= start!83298 b!971601))

(declare-fun m!899079 () Bool)

(assert (=> b!971602 m!899079))

(declare-fun m!899081 () Bool)

(assert (=> b!971600 m!899081))

(declare-fun m!899083 () Bool)

(assert (=> mapNonEmpty!35251 m!899083))

(declare-fun m!899085 () Bool)

(assert (=> b!971605 m!899085))

(declare-fun m!899087 () Bool)

(assert (=> b!971605 m!899087))

(assert (=> b!971605 m!899085))

(assert (=> b!971605 m!899087))

(declare-fun m!899089 () Bool)

(assert (=> b!971605 m!899089))

(assert (=> b!971603 m!899087))

(assert (=> b!971603 m!899087))

(declare-fun m!899091 () Bool)

(assert (=> b!971603 m!899091))

(declare-fun m!899093 () Bool)

(assert (=> start!83298 m!899093))

(declare-fun m!899095 () Bool)

(assert (=> start!83298 m!899095))

(declare-fun m!899097 () Bool)

(assert (=> start!83298 m!899097))

(declare-fun m!899099 () Bool)

(assert (=> b!971606 m!899099))

(check-sat (not b!971605) tp_is_empty!22161 (not mapNonEmpty!35251) (not start!83298) (not b!971606) b_and!30769 (not b_next!19263) (not b!971600) (not b!971603) (not b!971602))
(check-sat b_and!30769 (not b_next!19263))
