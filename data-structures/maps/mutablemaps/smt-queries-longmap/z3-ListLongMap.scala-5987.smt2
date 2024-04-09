; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77778 () Bool)

(assert start!77778)

(declare-fun b_free!16335 () Bool)

(declare-fun b_next!16335 () Bool)

(assert (=> start!77778 (= b_free!16335 (not b_next!16335))))

(declare-fun tp!57268 () Bool)

(declare-fun b_and!26841 () Bool)

(assert (=> start!77778 (= tp!57268 b_and!26841)))

(declare-fun b!907228 () Bool)

(declare-fun res!612430 () Bool)

(declare-fun e!508467 () Bool)

(assert (=> b!907228 (=> (not res!612430) (not e!508467))))

(declare-datatypes ((V!29969 0))(
  ( (V!29970 (val!9427 Int)) )
))
(declare-datatypes ((ValueCell!8895 0))(
  ( (ValueCellFull!8895 (v!11932 V!29969)) (EmptyCell!8895) )
))
(declare-datatypes ((array!53532 0))(
  ( (array!53533 (arr!25721 (Array (_ BitVec 32) ValueCell!8895)) (size!26181 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53532)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53534 0))(
  ( (array!53535 (arr!25722 (Array (_ BitVec 32) (_ BitVec 64))) (size!26182 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53534)

(assert (=> b!907228 (= res!612430 (and (= (size!26181 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26182 _keys!1386) (size!26181 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!907229 () Bool)

(declare-fun res!612432 () Bool)

(assert (=> b!907229 (=> (not res!612432) (not e!508467))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53534 (_ BitVec 32)) Bool)

(assert (=> b!907229 (= res!612432 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!907230 () Bool)

(declare-fun e!508469 () Bool)

(assert (=> b!907230 (= e!508469 true)))

(declare-datatypes ((tuple2!12298 0))(
  ( (tuple2!12299 (_1!6159 (_ BitVec 64)) (_2!6159 V!29969)) )
))
(declare-datatypes ((List!18158 0))(
  ( (Nil!18155) (Cons!18154 (h!19300 tuple2!12298) (t!25673 List!18158)) )
))
(declare-datatypes ((ListLongMap!11009 0))(
  ( (ListLongMap!11010 (toList!5520 List!18158)) )
))
(declare-fun lt!409210 () ListLongMap!11009)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun lt!409208 () V!29969)

(declare-fun apply!496 (ListLongMap!11009 (_ BitVec 64)) V!29969)

(assert (=> b!907230 (= (apply!496 lt!409210 k0!1033) lt!409208)))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29969)

(declare-fun minValue!1094 () V!29969)

(declare-datatypes ((Unit!30767 0))(
  ( (Unit!30768) )
))
(declare-fun lt!409211 () Unit!30767)

(declare-fun defaultEntry!1160 () Int)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!42 (array!53534 array!53532 (_ BitVec 32) (_ BitVec 32) V!29969 V!29969 (_ BitVec 64) V!29969 (_ BitVec 32) Int) Unit!30767)

(assert (=> b!907230 (= lt!409211 (lemmaListMapApplyFromThenApplyFromZero!42 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!409208 i!717 defaultEntry!1160))))

(declare-fun b!907231 () Bool)

(declare-fun res!612424 () Bool)

(declare-fun e!508462 () Bool)

(assert (=> b!907231 (=> (not res!612424) (not e!508462))))

(assert (=> b!907231 (= res!612424 (and (= (select (arr!25722 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!907232 () Bool)

(declare-fun res!612426 () Bool)

(assert (=> b!907232 (=> (not res!612426) (not e!508467))))

(declare-datatypes ((List!18159 0))(
  ( (Nil!18156) (Cons!18155 (h!19301 (_ BitVec 64)) (t!25674 List!18159)) )
))
(declare-fun arrayNoDuplicates!0 (array!53534 (_ BitVec 32) List!18159) Bool)

(assert (=> b!907232 (= res!612426 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18156))))

(declare-fun b!907233 () Bool)

(assert (=> b!907233 (= e!508467 e!508462)))

(declare-fun res!612431 () Bool)

(assert (=> b!907233 (=> (not res!612431) (not e!508462))))

(declare-fun contains!4528 (ListLongMap!11009 (_ BitVec 64)) Bool)

(assert (=> b!907233 (= res!612431 (contains!4528 lt!409210 k0!1033))))

(declare-fun getCurrentListMap!2752 (array!53534 array!53532 (_ BitVec 32) (_ BitVec 32) V!29969 V!29969 (_ BitVec 32) Int) ListLongMap!11009)

(assert (=> b!907233 (= lt!409210 (getCurrentListMap!2752 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun res!612423 () Bool)

(assert (=> start!77778 (=> (not res!612423) (not e!508467))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77778 (= res!612423 (validMask!0 mask!1756))))

(assert (=> start!77778 e!508467))

(declare-fun e!508465 () Bool)

(declare-fun array_inv!20114 (array!53532) Bool)

(assert (=> start!77778 (and (array_inv!20114 _values!1152) e!508465)))

(assert (=> start!77778 tp!57268))

(assert (=> start!77778 true))

(declare-fun tp_is_empty!18753 () Bool)

(assert (=> start!77778 tp_is_empty!18753))

(declare-fun array_inv!20115 (array!53534) Bool)

(assert (=> start!77778 (array_inv!20115 _keys!1386)))

(declare-fun b!907234 () Bool)

(declare-fun e!508466 () Bool)

(assert (=> b!907234 (= e!508466 e!508469)))

(declare-fun res!612425 () Bool)

(assert (=> b!907234 (=> res!612425 e!508469)))

(declare-fun lt!409209 () ListLongMap!11009)

(assert (=> b!907234 (= res!612425 (not (contains!4528 lt!409209 k0!1033)))))

(assert (=> b!907234 (= lt!409209 (getCurrentListMap!2752 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!907235 () Bool)

(declare-fun res!612428 () Bool)

(assert (=> b!907235 (=> res!612428 e!508469)))

(assert (=> b!907235 (= res!612428 (not (= (apply!496 lt!409209 k0!1033) lt!409208)))))

(declare-fun mapNonEmpty!29842 () Bool)

(declare-fun mapRes!29842 () Bool)

(declare-fun tp!57267 () Bool)

(declare-fun e!508468 () Bool)

(assert (=> mapNonEmpty!29842 (= mapRes!29842 (and tp!57267 e!508468))))

(declare-fun mapRest!29842 () (Array (_ BitVec 32) ValueCell!8895))

(declare-fun mapValue!29842 () ValueCell!8895)

(declare-fun mapKey!29842 () (_ BitVec 32))

(assert (=> mapNonEmpty!29842 (= (arr!25721 _values!1152) (store mapRest!29842 mapKey!29842 mapValue!29842))))

(declare-fun b!907236 () Bool)

(declare-fun e!508463 () Bool)

(assert (=> b!907236 (= e!508465 (and e!508463 mapRes!29842))))

(declare-fun condMapEmpty!29842 () Bool)

(declare-fun mapDefault!29842 () ValueCell!8895)

(assert (=> b!907236 (= condMapEmpty!29842 (= (arr!25721 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8895)) mapDefault!29842)))))

(declare-fun b!907237 () Bool)

(assert (=> b!907237 (= e!508463 tp_is_empty!18753)))

(declare-fun b!907238 () Bool)

(assert (=> b!907238 (= e!508462 (not e!508466))))

(declare-fun res!612427 () Bool)

(assert (=> b!907238 (=> res!612427 e!508466)))

(assert (=> b!907238 (= res!612427 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26182 _keys!1386))))))

(declare-fun get!13546 (ValueCell!8895 V!29969) V!29969)

(declare-fun dynLambda!1368 (Int (_ BitVec 64)) V!29969)

(assert (=> b!907238 (= lt!409208 (get!13546 (select (arr!25721 _values!1152) i!717) (dynLambda!1368 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53534 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!907238 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun lt!409207 () Unit!30767)

(declare-fun lemmaKeyInListMapIsInArray!241 (array!53534 array!53532 (_ BitVec 32) (_ BitVec 32) V!29969 V!29969 (_ BitVec 64) Int) Unit!30767)

(assert (=> b!907238 (= lt!409207 (lemmaKeyInListMapIsInArray!241 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun mapIsEmpty!29842 () Bool)

(assert (=> mapIsEmpty!29842 mapRes!29842))

(declare-fun b!907239 () Bool)

(assert (=> b!907239 (= e!508468 tp_is_empty!18753)))

(declare-fun b!907240 () Bool)

(declare-fun res!612429 () Bool)

(assert (=> b!907240 (=> (not res!612429) (not e!508462))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!907240 (= res!612429 (inRange!0 i!717 mask!1756))))

(assert (= (and start!77778 res!612423) b!907228))

(assert (= (and b!907228 res!612430) b!907229))

(assert (= (and b!907229 res!612432) b!907232))

(assert (= (and b!907232 res!612426) b!907233))

(assert (= (and b!907233 res!612431) b!907240))

(assert (= (and b!907240 res!612429) b!907231))

(assert (= (and b!907231 res!612424) b!907238))

(assert (= (and b!907238 (not res!612427)) b!907234))

(assert (= (and b!907234 (not res!612425)) b!907235))

(assert (= (and b!907235 (not res!612428)) b!907230))

(assert (= (and b!907236 condMapEmpty!29842) mapIsEmpty!29842))

(assert (= (and b!907236 (not condMapEmpty!29842)) mapNonEmpty!29842))

(get-info :version)

(assert (= (and mapNonEmpty!29842 ((_ is ValueCellFull!8895) mapValue!29842)) b!907239))

(assert (= (and b!907236 ((_ is ValueCellFull!8895) mapDefault!29842)) b!907237))

(assert (= start!77778 b!907236))

(declare-fun b_lambda!13239 () Bool)

(assert (=> (not b_lambda!13239) (not b!907238)))

(declare-fun t!25672 () Bool)

(declare-fun tb!5365 () Bool)

(assert (=> (and start!77778 (= defaultEntry!1160 defaultEntry!1160) t!25672) tb!5365))

(declare-fun result!10517 () Bool)

(assert (=> tb!5365 (= result!10517 tp_is_empty!18753)))

(assert (=> b!907238 t!25672))

(declare-fun b_and!26843 () Bool)

(assert (= b_and!26841 (and (=> t!25672 result!10517) b_and!26843)))

(declare-fun m!842691 () Bool)

(assert (=> b!907233 m!842691))

(declare-fun m!842693 () Bool)

(assert (=> b!907233 m!842693))

(declare-fun m!842695 () Bool)

(assert (=> mapNonEmpty!29842 m!842695))

(declare-fun m!842697 () Bool)

(assert (=> b!907240 m!842697))

(declare-fun m!842699 () Bool)

(assert (=> b!907229 m!842699))

(declare-fun m!842701 () Bool)

(assert (=> b!907238 m!842701))

(declare-fun m!842703 () Bool)

(assert (=> b!907238 m!842703))

(declare-fun m!842705 () Bool)

(assert (=> b!907238 m!842705))

(declare-fun m!842707 () Bool)

(assert (=> b!907238 m!842707))

(assert (=> b!907238 m!842701))

(assert (=> b!907238 m!842705))

(declare-fun m!842709 () Bool)

(assert (=> b!907238 m!842709))

(declare-fun m!842711 () Bool)

(assert (=> b!907235 m!842711))

(declare-fun m!842713 () Bool)

(assert (=> start!77778 m!842713))

(declare-fun m!842715 () Bool)

(assert (=> start!77778 m!842715))

(declare-fun m!842717 () Bool)

(assert (=> start!77778 m!842717))

(declare-fun m!842719 () Bool)

(assert (=> b!907234 m!842719))

(declare-fun m!842721 () Bool)

(assert (=> b!907234 m!842721))

(declare-fun m!842723 () Bool)

(assert (=> b!907230 m!842723))

(declare-fun m!842725 () Bool)

(assert (=> b!907230 m!842725))

(declare-fun m!842727 () Bool)

(assert (=> b!907232 m!842727))

(declare-fun m!842729 () Bool)

(assert (=> b!907231 m!842729))

(check-sat b_and!26843 (not b!907233) (not start!77778) (not b_lambda!13239) (not b!907238) (not mapNonEmpty!29842) (not b!907240) (not b!907230) (not b!907229) (not b!907235) (not b!907234) (not b_next!16335) tp_is_empty!18753 (not b!907232))
(check-sat b_and!26843 (not b_next!16335))
