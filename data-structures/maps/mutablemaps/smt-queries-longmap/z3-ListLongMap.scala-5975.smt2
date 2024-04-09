; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77706 () Bool)

(assert start!77706)

(declare-fun b_free!16263 () Bool)

(declare-fun b_next!16263 () Bool)

(assert (=> start!77706 (= b_free!16263 (not b_next!16263))))

(declare-fun tp!57051 () Bool)

(declare-fun b_and!26697 () Bool)

(assert (=> start!77706 (= tp!57051 b_and!26697)))

(declare-fun b!905752 () Bool)

(declare-fun res!611343 () Bool)

(declare-fun e!507598 () Bool)

(assert (=> b!905752 (=> (not res!611343) (not e!507598))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun k0!1033 () (_ BitVec 64))

(declare-datatypes ((array!53392 0))(
  ( (array!53393 (arr!25651 (Array (_ BitVec 32) (_ BitVec 64))) (size!26111 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53392)

(assert (=> b!905752 (= res!611343 (and (= (select (arr!25651 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!29734 () Bool)

(declare-fun mapRes!29734 () Bool)

(assert (=> mapIsEmpty!29734 mapRes!29734))

(declare-fun b!905753 () Bool)

(declare-fun res!611347 () Bool)

(declare-fun e!507601 () Bool)

(assert (=> b!905753 (=> res!611347 e!507601)))

(declare-datatypes ((V!29873 0))(
  ( (V!29874 (val!9391 Int)) )
))
(declare-fun lt!408671 () V!29873)

(declare-datatypes ((tuple2!12240 0))(
  ( (tuple2!12241 (_1!6130 (_ BitVec 64)) (_2!6130 V!29873)) )
))
(declare-datatypes ((List!18104 0))(
  ( (Nil!18101) (Cons!18100 (h!19246 tuple2!12240) (t!25547 List!18104)) )
))
(declare-datatypes ((ListLongMap!10951 0))(
  ( (ListLongMap!10952 (toList!5491 List!18104)) )
))
(declare-fun lt!408669 () ListLongMap!10951)

(declare-fun apply!468 (ListLongMap!10951 (_ BitVec 64)) V!29873)

(assert (=> b!905753 (= res!611347 (not (= (apply!468 lt!408669 k0!1033) lt!408671)))))

(declare-fun b!905754 () Bool)

(declare-fun e!507603 () Bool)

(declare-fun e!507605 () Bool)

(assert (=> b!905754 (= e!507603 (and e!507605 mapRes!29734))))

(declare-fun condMapEmpty!29734 () Bool)

(declare-datatypes ((ValueCell!8859 0))(
  ( (ValueCellFull!8859 (v!11896 V!29873)) (EmptyCell!8859) )
))
(declare-datatypes ((array!53394 0))(
  ( (array!53395 (arr!25652 (Array (_ BitVec 32) ValueCell!8859)) (size!26112 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53394)

(declare-fun mapDefault!29734 () ValueCell!8859)

(assert (=> b!905754 (= condMapEmpty!29734 (= (arr!25652 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8859)) mapDefault!29734)))))

(declare-fun b!905755 () Bool)

(declare-fun tp_is_empty!18681 () Bool)

(assert (=> b!905755 (= e!507605 tp_is_empty!18681)))

(declare-fun b!905756 () Bool)

(declare-fun e!507600 () Bool)

(assert (=> b!905756 (= e!507600 tp_is_empty!18681)))

(declare-fun b!905757 () Bool)

(declare-fun e!507599 () Bool)

(assert (=> b!905757 (= e!507598 (not e!507599))))

(declare-fun res!611352 () Bool)

(assert (=> b!905757 (=> res!611352 e!507599)))

(assert (=> b!905757 (= res!611352 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26111 _keys!1386))))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun get!13495 (ValueCell!8859 V!29873) V!29873)

(declare-fun dynLambda!1341 (Int (_ BitVec 64)) V!29873)

(assert (=> b!905757 (= lt!408671 (get!13495 (select (arr!25652 _values!1152) i!717) (dynLambda!1341 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53392 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!905757 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29873)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29873)

(declare-datatypes ((Unit!30707 0))(
  ( (Unit!30708) )
))
(declare-fun lt!408668 () Unit!30707)

(declare-fun lemmaKeyInListMapIsInArray!214 (array!53392 array!53394 (_ BitVec 32) (_ BitVec 32) V!29873 V!29873 (_ BitVec 64) Int) Unit!30707)

(assert (=> b!905757 (= lt!408668 (lemmaKeyInListMapIsInArray!214 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!905758 () Bool)

(declare-fun res!611349 () Bool)

(declare-fun e!507604 () Bool)

(assert (=> b!905758 (=> (not res!611349) (not e!507604))))

(declare-datatypes ((List!18105 0))(
  ( (Nil!18102) (Cons!18101 (h!19247 (_ BitVec 64)) (t!25548 List!18105)) )
))
(declare-fun arrayNoDuplicates!0 (array!53392 (_ BitVec 32) List!18105) Bool)

(assert (=> b!905758 (= res!611349 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18102))))

(declare-fun mapNonEmpty!29734 () Bool)

(declare-fun tp!57052 () Bool)

(assert (=> mapNonEmpty!29734 (= mapRes!29734 (and tp!57052 e!507600))))

(declare-fun mapRest!29734 () (Array (_ BitVec 32) ValueCell!8859))

(declare-fun mapValue!29734 () ValueCell!8859)

(declare-fun mapKey!29734 () (_ BitVec 32))

(assert (=> mapNonEmpty!29734 (= (arr!25652 _values!1152) (store mapRest!29734 mapKey!29734 mapValue!29734))))

(declare-fun b!905759 () Bool)

(assert (=> b!905759 (= e!507604 e!507598)))

(declare-fun res!611344 () Bool)

(assert (=> b!905759 (=> (not res!611344) (not e!507598))))

(declare-fun lt!408670 () ListLongMap!10951)

(declare-fun contains!4501 (ListLongMap!10951 (_ BitVec 64)) Bool)

(assert (=> b!905759 (= res!611344 (contains!4501 lt!408670 k0!1033))))

(declare-fun getCurrentListMap!2725 (array!53392 array!53394 (_ BitVec 32) (_ BitVec 32) V!29873 V!29873 (_ BitVec 32) Int) ListLongMap!10951)

(assert (=> b!905759 (= lt!408670 (getCurrentListMap!2725 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun res!611346 () Bool)

(assert (=> start!77706 (=> (not res!611346) (not e!507604))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77706 (= res!611346 (validMask!0 mask!1756))))

(assert (=> start!77706 e!507604))

(declare-fun array_inv!20072 (array!53394) Bool)

(assert (=> start!77706 (and (array_inv!20072 _values!1152) e!507603)))

(assert (=> start!77706 tp!57051))

(assert (=> start!77706 true))

(assert (=> start!77706 tp_is_empty!18681))

(declare-fun array_inv!20073 (array!53392) Bool)

(assert (=> start!77706 (array_inv!20073 _keys!1386)))

(declare-fun b!905760 () Bool)

(declare-fun res!611345 () Bool)

(assert (=> b!905760 (=> (not res!611345) (not e!507604))))

(assert (=> b!905760 (= res!611345 (and (= (size!26112 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26111 _keys!1386) (size!26112 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!905761 () Bool)

(declare-fun res!611348 () Bool)

(assert (=> b!905761 (=> (not res!611348) (not e!507604))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53392 (_ BitVec 32)) Bool)

(assert (=> b!905761 (= res!611348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!905762 () Bool)

(assert (=> b!905762 (= e!507599 e!507601)))

(declare-fun res!611351 () Bool)

(assert (=> b!905762 (=> res!611351 e!507601)))

(assert (=> b!905762 (= res!611351 (not (contains!4501 lt!408669 k0!1033)))))

(assert (=> b!905762 (= lt!408669 (getCurrentListMap!2725 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!905763 () Bool)

(assert (=> b!905763 (= e!507601 true)))

(assert (=> b!905763 (= (apply!468 lt!408670 k0!1033) lt!408671)))

(declare-fun lt!408667 () Unit!30707)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!19 (array!53392 array!53394 (_ BitVec 32) (_ BitVec 32) V!29873 V!29873 (_ BitVec 64) V!29873 (_ BitVec 32) Int) Unit!30707)

(assert (=> b!905763 (= lt!408667 (lemmaListMapApplyFromThenApplyFromZero!19 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!408671 i!717 defaultEntry!1160))))

(declare-fun b!905764 () Bool)

(declare-fun res!611350 () Bool)

(assert (=> b!905764 (=> (not res!611350) (not e!507598))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!905764 (= res!611350 (inRange!0 i!717 mask!1756))))

(assert (= (and start!77706 res!611346) b!905760))

(assert (= (and b!905760 res!611345) b!905761))

(assert (= (and b!905761 res!611348) b!905758))

(assert (= (and b!905758 res!611349) b!905759))

(assert (= (and b!905759 res!611344) b!905764))

(assert (= (and b!905764 res!611350) b!905752))

(assert (= (and b!905752 res!611343) b!905757))

(assert (= (and b!905757 (not res!611352)) b!905762))

(assert (= (and b!905762 (not res!611351)) b!905753))

(assert (= (and b!905753 (not res!611347)) b!905763))

(assert (= (and b!905754 condMapEmpty!29734) mapIsEmpty!29734))

(assert (= (and b!905754 (not condMapEmpty!29734)) mapNonEmpty!29734))

(get-info :version)

(assert (= (and mapNonEmpty!29734 ((_ is ValueCellFull!8859) mapValue!29734)) b!905756))

(assert (= (and b!905754 ((_ is ValueCellFull!8859) mapDefault!29734)) b!905755))

(assert (= start!77706 b!905754))

(declare-fun b_lambda!13167 () Bool)

(assert (=> (not b_lambda!13167) (not b!905757)))

(declare-fun t!25546 () Bool)

(declare-fun tb!5293 () Bool)

(assert (=> (and start!77706 (= defaultEntry!1160 defaultEntry!1160) t!25546) tb!5293))

(declare-fun result!10373 () Bool)

(assert (=> tb!5293 (= result!10373 tp_is_empty!18681)))

(assert (=> b!905757 t!25546))

(declare-fun b_and!26699 () Bool)

(assert (= b_and!26697 (and (=> t!25546 result!10373) b_and!26699)))

(declare-fun m!841251 () Bool)

(assert (=> mapNonEmpty!29734 m!841251))

(declare-fun m!841253 () Bool)

(assert (=> b!905759 m!841253))

(declare-fun m!841255 () Bool)

(assert (=> b!905759 m!841255))

(declare-fun m!841257 () Bool)

(assert (=> b!905753 m!841257))

(declare-fun m!841259 () Bool)

(assert (=> b!905758 m!841259))

(declare-fun m!841261 () Bool)

(assert (=> b!905763 m!841261))

(declare-fun m!841263 () Bool)

(assert (=> b!905763 m!841263))

(declare-fun m!841265 () Bool)

(assert (=> b!905764 m!841265))

(declare-fun m!841267 () Bool)

(assert (=> b!905762 m!841267))

(declare-fun m!841269 () Bool)

(assert (=> b!905762 m!841269))

(declare-fun m!841271 () Bool)

(assert (=> b!905757 m!841271))

(declare-fun m!841273 () Bool)

(assert (=> b!905757 m!841273))

(declare-fun m!841275 () Bool)

(assert (=> b!905757 m!841275))

(declare-fun m!841277 () Bool)

(assert (=> b!905757 m!841277))

(assert (=> b!905757 m!841271))

(assert (=> b!905757 m!841275))

(declare-fun m!841279 () Bool)

(assert (=> b!905757 m!841279))

(declare-fun m!841281 () Bool)

(assert (=> start!77706 m!841281))

(declare-fun m!841283 () Bool)

(assert (=> start!77706 m!841283))

(declare-fun m!841285 () Bool)

(assert (=> start!77706 m!841285))

(declare-fun m!841287 () Bool)

(assert (=> b!905761 m!841287))

(declare-fun m!841289 () Bool)

(assert (=> b!905752 m!841289))

(check-sat (not b!905759) (not b!905762) (not b!905764) (not b!905758) (not start!77706) (not b!905763) (not mapNonEmpty!29734) (not b!905753) (not b!905761) (not b_next!16263) (not b!905757) b_and!26699 tp_is_empty!18681 (not b_lambda!13167))
(check-sat b_and!26699 (not b_next!16263))
