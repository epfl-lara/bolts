; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33676 () Bool)

(assert start!33676)

(declare-fun b_free!6903 () Bool)

(declare-fun b_next!6903 () Bool)

(assert (=> start!33676 (= b_free!6903 (not b_next!6903))))

(declare-fun tp!24213 () Bool)

(declare-fun b_and!14101 () Bool)

(assert (=> start!33676 (= tp!24213 b_and!14101)))

(declare-fun b!334201 () Bool)

(declare-fun e!205165 () Bool)

(declare-fun tp_is_empty!6855 () Bool)

(assert (=> b!334201 (= e!205165 tp_is_empty!6855)))

(declare-fun b!334202 () Bool)

(declare-fun res!184305 () Bool)

(declare-fun e!205168 () Bool)

(assert (=> b!334202 (=> (not res!184305) (not e!205168))))

(declare-datatypes ((array!17299 0))(
  ( (array!17300 (arr!8177 (Array (_ BitVec 32) (_ BitVec 64))) (size!8529 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17299)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17299 (_ BitVec 32)) Bool)

(assert (=> b!334202 (= res!184305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!334203 () Bool)

(declare-fun res!184308 () Bool)

(declare-fun e!205166 () Bool)

(assert (=> b!334203 (=> (not res!184308) (not e!205166))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3171 0))(
  ( (MissingZero!3171 (index!14863 (_ BitVec 32))) (Found!3171 (index!14864 (_ BitVec 32))) (Intermediate!3171 (undefined!3983 Bool) (index!14865 (_ BitVec 32)) (x!33324 (_ BitVec 32))) (Undefined!3171) (MissingVacant!3171 (index!14866 (_ BitVec 32))) )
))
(declare-fun lt!159476 () SeekEntryResult!3171)

(declare-fun arrayContainsKey!0 (array!17299 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!334203 (= res!184308 (arrayContainsKey!0 _keys!1895 k0!1348 (index!14864 lt!159476)))))

(declare-fun b!334205 () Bool)

(declare-fun e!205167 () Bool)

(assert (=> b!334205 (= e!205167 tp_is_empty!6855)))

(declare-fun b!334206 () Bool)

(declare-fun e!205169 () Bool)

(declare-fun mapRes!11679 () Bool)

(assert (=> b!334206 (= e!205169 (and e!205167 mapRes!11679))))

(declare-fun condMapEmpty!11679 () Bool)

(declare-datatypes ((V!10117 0))(
  ( (V!10118 (val!3472 Int)) )
))
(declare-datatypes ((ValueCell!3084 0))(
  ( (ValueCellFull!3084 (v!5630 V!10117)) (EmptyCell!3084) )
))
(declare-datatypes ((array!17301 0))(
  ( (array!17302 (arr!8178 (Array (_ BitVec 32) ValueCell!3084)) (size!8530 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17301)

(declare-fun mapDefault!11679 () ValueCell!3084)

(assert (=> b!334206 (= condMapEmpty!11679 (= (arr!8178 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3084)) mapDefault!11679)))))

(declare-fun b!334207 () Bool)

(declare-fun res!184307 () Bool)

(assert (=> b!334207 (=> (not res!184307) (not e!205168))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!334207 (= res!184307 (and (= (size!8530 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8529 _keys!1895) (size!8530 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!334208 () Bool)

(declare-fun res!184304 () Bool)

(assert (=> b!334208 (=> (not res!184304) (not e!205168))))

(declare-fun zeroValue!1467 () V!10117)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10117)

(declare-datatypes ((tuple2!5046 0))(
  ( (tuple2!5047 (_1!2533 (_ BitVec 64)) (_2!2533 V!10117)) )
))
(declare-datatypes ((List!4687 0))(
  ( (Nil!4684) (Cons!4683 (h!5539 tuple2!5046) (t!9783 List!4687)) )
))
(declare-datatypes ((ListLongMap!3973 0))(
  ( (ListLongMap!3974 (toList!2002 List!4687)) )
))
(declare-fun contains!2042 (ListLongMap!3973 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1525 (array!17299 array!17301 (_ BitVec 32) (_ BitVec 32) V!10117 V!10117 (_ BitVec 32) Int) ListLongMap!3973)

(assert (=> b!334208 (= res!184304 (not (contains!2042 (getCurrentListMap!1525 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!334204 () Bool)

(declare-fun res!184310 () Bool)

(assert (=> b!334204 (=> (not res!184310) (not e!205168))))

(declare-datatypes ((List!4688 0))(
  ( (Nil!4685) (Cons!4684 (h!5540 (_ BitVec 64)) (t!9784 List!4688)) )
))
(declare-fun arrayNoDuplicates!0 (array!17299 (_ BitVec 32) List!4688) Bool)

(assert (=> b!334204 (= res!184310 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4685))))

(declare-fun res!184306 () Bool)

(assert (=> start!33676 (=> (not res!184306) (not e!205168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33676 (= res!184306 (validMask!0 mask!2385))))

(assert (=> start!33676 e!205168))

(assert (=> start!33676 true))

(assert (=> start!33676 tp_is_empty!6855))

(assert (=> start!33676 tp!24213))

(declare-fun array_inv!6070 (array!17301) Bool)

(assert (=> start!33676 (and (array_inv!6070 _values!1525) e!205169)))

(declare-fun array_inv!6071 (array!17299) Bool)

(assert (=> start!33676 (array_inv!6071 _keys!1895)))

(declare-fun mapNonEmpty!11679 () Bool)

(declare-fun tp!24212 () Bool)

(assert (=> mapNonEmpty!11679 (= mapRes!11679 (and tp!24212 e!205165))))

(declare-fun mapKey!11679 () (_ BitVec 32))

(declare-fun mapValue!11679 () ValueCell!3084)

(declare-fun mapRest!11679 () (Array (_ BitVec 32) ValueCell!3084))

(assert (=> mapNonEmpty!11679 (= (arr!8178 _values!1525) (store mapRest!11679 mapKey!11679 mapValue!11679))))

(declare-fun b!334209 () Bool)

(assert (=> b!334209 (= e!205166 (not true))))

(assert (=> b!334209 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10396 0))(
  ( (Unit!10397) )
))
(declare-fun lt!159477 () Unit!10396)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17299 (_ BitVec 64) (_ BitVec 32)) Unit!10396)

(assert (=> b!334209 (= lt!159477 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k0!1348 (index!14864 lt!159476)))))

(declare-fun b!334210 () Bool)

(assert (=> b!334210 (= e!205168 e!205166)))

(declare-fun res!184309 () Bool)

(assert (=> b!334210 (=> (not res!184309) (not e!205166))))

(get-info :version)

(assert (=> b!334210 (= res!184309 (and ((_ is Found!3171) lt!159476) (= (select (arr!8177 _keys!1895) (index!14864 lt!159476)) k0!1348)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17299 (_ BitVec 32)) SeekEntryResult!3171)

(assert (=> b!334210 (= lt!159476 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!11679 () Bool)

(assert (=> mapIsEmpty!11679 mapRes!11679))

(declare-fun b!334211 () Bool)

(declare-fun res!184303 () Bool)

(assert (=> b!334211 (=> (not res!184303) (not e!205168))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!334211 (= res!184303 (validKeyInArray!0 k0!1348))))

(assert (= (and start!33676 res!184306) b!334207))

(assert (= (and b!334207 res!184307) b!334202))

(assert (= (and b!334202 res!184305) b!334204))

(assert (= (and b!334204 res!184310) b!334211))

(assert (= (and b!334211 res!184303) b!334208))

(assert (= (and b!334208 res!184304) b!334210))

(assert (= (and b!334210 res!184309) b!334203))

(assert (= (and b!334203 res!184308) b!334209))

(assert (= (and b!334206 condMapEmpty!11679) mapIsEmpty!11679))

(assert (= (and b!334206 (not condMapEmpty!11679)) mapNonEmpty!11679))

(assert (= (and mapNonEmpty!11679 ((_ is ValueCellFull!3084) mapValue!11679)) b!334201))

(assert (= (and b!334206 ((_ is ValueCellFull!3084) mapDefault!11679)) b!334205))

(assert (= start!33676 b!334206))

(declare-fun m!338313 () Bool)

(assert (=> b!334203 m!338313))

(declare-fun m!338315 () Bool)

(assert (=> b!334210 m!338315))

(declare-fun m!338317 () Bool)

(assert (=> b!334210 m!338317))

(declare-fun m!338319 () Bool)

(assert (=> mapNonEmpty!11679 m!338319))

(declare-fun m!338321 () Bool)

(assert (=> b!334208 m!338321))

(assert (=> b!334208 m!338321))

(declare-fun m!338323 () Bool)

(assert (=> b!334208 m!338323))

(declare-fun m!338325 () Bool)

(assert (=> b!334204 m!338325))

(declare-fun m!338327 () Bool)

(assert (=> b!334209 m!338327))

(declare-fun m!338329 () Bool)

(assert (=> b!334209 m!338329))

(declare-fun m!338331 () Bool)

(assert (=> start!33676 m!338331))

(declare-fun m!338333 () Bool)

(assert (=> start!33676 m!338333))

(declare-fun m!338335 () Bool)

(assert (=> start!33676 m!338335))

(declare-fun m!338337 () Bool)

(assert (=> b!334202 m!338337))

(declare-fun m!338339 () Bool)

(assert (=> b!334211 m!338339))

(check-sat (not b!334210) (not b!334211) (not mapNonEmpty!11679) b_and!14101 (not b!334208) (not b!334203) (not start!33676) tp_is_empty!6855 (not b_next!6903) (not b!334209) (not b!334204) (not b!334202))
(check-sat b_and!14101 (not b_next!6903))
