; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83202 () Bool)

(assert start!83202)

(declare-fun b_free!19167 () Bool)

(declare-fun b_next!19167 () Bool)

(assert (=> start!83202 (= b_free!19167 (not b_next!19167))))

(declare-fun tp!66780 () Bool)

(declare-fun b_and!30673 () Bool)

(assert (=> start!83202 (= tp!66780 b_and!30673)))

(declare-fun b!970208 () Bool)

(declare-fun res!649488 () Bool)

(declare-fun e!546999 () Bool)

(assert (=> b!970208 (=> (not res!649488) (not e!546999))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34403 0))(
  ( (V!34404 (val!11083 Int)) )
))
(declare-datatypes ((ValueCell!10551 0))(
  ( (ValueCellFull!10551 (v!13642 V!34403)) (EmptyCell!10551) )
))
(declare-datatypes ((array!60171 0))(
  ( (array!60172 (arr!28945 (Array (_ BitVec 32) ValueCell!10551)) (size!29425 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60171)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60173 0))(
  ( (array!60174 (arr!28946 (Array (_ BitVec 32) (_ BitVec 64))) (size!29426 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60173)

(assert (=> b!970208 (= res!649488 (and (= (size!29425 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29426 _keys!1717) (size!29425 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!970209 () Bool)

(declare-fun res!649489 () Bool)

(assert (=> b!970209 (=> (not res!649489) (not e!546999))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970209 (= res!649489 (validKeyInArray!0 (select (arr!28946 _keys!1717) i!822)))))

(declare-fun b!970210 () Bool)

(declare-fun res!649487 () Bool)

(assert (=> b!970210 (=> (not res!649487) (not e!546999))))

(declare-datatypes ((List!20189 0))(
  ( (Nil!20186) (Cons!20185 (h!21347 (_ BitVec 64)) (t!28560 List!20189)) )
))
(declare-fun arrayNoDuplicates!0 (array!60173 (_ BitVec 32) List!20189) Bool)

(assert (=> b!970210 (= res!649487 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20186))))

(declare-fun b!970211 () Bool)

(declare-fun e!547000 () Bool)

(declare-fun tp_is_empty!22065 () Bool)

(assert (=> b!970211 (= e!547000 tp_is_empty!22065)))

(declare-fun b!970212 () Bool)

(declare-fun e!546998 () Bool)

(assert (=> b!970212 (= e!546998 tp_is_empty!22065)))

(declare-fun b!970213 () Bool)

(declare-fun res!649492 () Bool)

(assert (=> b!970213 (=> (not res!649492) (not e!546999))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60173 (_ BitVec 32)) Bool)

(assert (=> b!970213 (= res!649492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!970214 () Bool)

(declare-fun e!547001 () Bool)

(declare-fun mapRes!35107 () Bool)

(assert (=> b!970214 (= e!547001 (and e!547000 mapRes!35107))))

(declare-fun condMapEmpty!35107 () Bool)

(declare-fun mapDefault!35107 () ValueCell!10551)

(assert (=> b!970214 (= condMapEmpty!35107 (= (arr!28945 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10551)) mapDefault!35107)))))

(declare-fun b!970215 () Bool)

(declare-fun res!649490 () Bool)

(assert (=> b!970215 (=> (not res!649490) (not e!546999))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!970215 (= res!649490 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29426 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29426 _keys!1717))))))

(declare-fun mapNonEmpty!35107 () Bool)

(declare-fun tp!66781 () Bool)

(assert (=> mapNonEmpty!35107 (= mapRes!35107 (and tp!66781 e!546998))))

(declare-fun mapKey!35107 () (_ BitVec 32))

(declare-fun mapValue!35107 () ValueCell!10551)

(declare-fun mapRest!35107 () (Array (_ BitVec 32) ValueCell!10551))

(assert (=> mapNonEmpty!35107 (= (arr!28945 _values!1425) (store mapRest!35107 mapKey!35107 mapValue!35107))))

(declare-fun b!970216 () Bool)

(assert (=> b!970216 (= e!546999 false)))

(declare-fun zeroValue!1367 () V!34403)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34403)

(declare-fun lt!431674 () Bool)

(declare-datatypes ((tuple2!14298 0))(
  ( (tuple2!14299 (_1!7159 (_ BitVec 64)) (_2!7159 V!34403)) )
))
(declare-datatypes ((List!20190 0))(
  ( (Nil!20187) (Cons!20186 (h!21348 tuple2!14298) (t!28561 List!20190)) )
))
(declare-datatypes ((ListLongMap!13009 0))(
  ( (ListLongMap!13010 (toList!6520 List!20190)) )
))
(declare-fun contains!5575 (ListLongMap!13009 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3705 (array!60173 array!60171 (_ BitVec 32) (_ BitVec 32) V!34403 V!34403 (_ BitVec 32) Int) ListLongMap!13009)

(assert (=> b!970216 (= lt!431674 (contains!5575 (getCurrentListMap!3705 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28946 _keys!1717) i!822)))))

(declare-fun mapIsEmpty!35107 () Bool)

(assert (=> mapIsEmpty!35107 mapRes!35107))

(declare-fun res!649491 () Bool)

(assert (=> start!83202 (=> (not res!649491) (not e!546999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83202 (= res!649491 (validMask!0 mask!2147))))

(assert (=> start!83202 e!546999))

(assert (=> start!83202 true))

(declare-fun array_inv!22293 (array!60171) Bool)

(assert (=> start!83202 (and (array_inv!22293 _values!1425) e!547001)))

(assert (=> start!83202 tp_is_empty!22065))

(assert (=> start!83202 tp!66780))

(declare-fun array_inv!22294 (array!60173) Bool)

(assert (=> start!83202 (array_inv!22294 _keys!1717)))

(assert (= (and start!83202 res!649491) b!970208))

(assert (= (and b!970208 res!649488) b!970213))

(assert (= (and b!970213 res!649492) b!970210))

(assert (= (and b!970210 res!649487) b!970215))

(assert (= (and b!970215 res!649490) b!970209))

(assert (= (and b!970209 res!649489) b!970216))

(assert (= (and b!970214 condMapEmpty!35107) mapIsEmpty!35107))

(assert (= (and b!970214 (not condMapEmpty!35107)) mapNonEmpty!35107))

(get-info :version)

(assert (= (and mapNonEmpty!35107 ((_ is ValueCellFull!10551) mapValue!35107)) b!970212))

(assert (= (and b!970214 ((_ is ValueCellFull!10551) mapDefault!35107)) b!970211))

(assert (= start!83202 b!970214))

(declare-fun m!898063 () Bool)

(assert (=> b!970213 m!898063))

(declare-fun m!898065 () Bool)

(assert (=> b!970209 m!898065))

(assert (=> b!970209 m!898065))

(declare-fun m!898067 () Bool)

(assert (=> b!970209 m!898067))

(declare-fun m!898069 () Bool)

(assert (=> b!970216 m!898069))

(assert (=> b!970216 m!898065))

(assert (=> b!970216 m!898069))

(assert (=> b!970216 m!898065))

(declare-fun m!898071 () Bool)

(assert (=> b!970216 m!898071))

(declare-fun m!898073 () Bool)

(assert (=> b!970210 m!898073))

(declare-fun m!898075 () Bool)

(assert (=> mapNonEmpty!35107 m!898075))

(declare-fun m!898077 () Bool)

(assert (=> start!83202 m!898077))

(declare-fun m!898079 () Bool)

(assert (=> start!83202 m!898079))

(declare-fun m!898081 () Bool)

(assert (=> start!83202 m!898081))

(check-sat (not b!970216) (not b!970213) b_and!30673 tp_is_empty!22065 (not b!970209) (not mapNonEmpty!35107) (not start!83202) (not b!970210) (not b_next!19167))
(check-sat b_and!30673 (not b_next!19167))
