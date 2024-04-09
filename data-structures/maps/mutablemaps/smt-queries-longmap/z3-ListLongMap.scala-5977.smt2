; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77718 () Bool)

(assert start!77718)

(declare-fun b_free!16275 () Bool)

(declare-fun b_next!16275 () Bool)

(assert (=> start!77718 (= b_free!16275 (not b_next!16275))))

(declare-fun tp!57088 () Bool)

(declare-fun b_and!26721 () Bool)

(assert (=> start!77718 (= tp!57088 b_and!26721)))

(declare-fun b!905998 () Bool)

(declare-fun e!507743 () Bool)

(assert (=> b!905998 (= e!507743 true)))

(declare-datatypes ((V!29889 0))(
  ( (V!29890 (val!9397 Int)) )
))
(declare-datatypes ((tuple2!12250 0))(
  ( (tuple2!12251 (_1!6135 (_ BitVec 64)) (_2!6135 V!29889)) )
))
(declare-datatypes ((List!18112 0))(
  ( (Nil!18109) (Cons!18108 (h!19254 tuple2!12250) (t!25567 List!18112)) )
))
(declare-datatypes ((ListLongMap!10961 0))(
  ( (ListLongMap!10962 (toList!5496 List!18112)) )
))
(declare-fun lt!408758 () ListLongMap!10961)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun lt!408760 () V!29889)

(declare-fun apply!473 (ListLongMap!10961 (_ BitVec 64)) V!29889)

(assert (=> b!905998 (= (apply!473 lt!408758 k0!1033) lt!408760)))

(declare-datatypes ((ValueCell!8865 0))(
  ( (ValueCellFull!8865 (v!11902 V!29889)) (EmptyCell!8865) )
))
(declare-datatypes ((array!53414 0))(
  ( (array!53415 (arr!25662 (Array (_ BitVec 32) ValueCell!8865)) (size!26122 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53414)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29889)

(declare-datatypes ((array!53416 0))(
  ( (array!53417 (arr!25663 (Array (_ BitVec 32) (_ BitVec 64))) (size!26123 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53416)

(declare-datatypes ((Unit!30717 0))(
  ( (Unit!30718) )
))
(declare-fun lt!408761 () Unit!30717)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29889)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!24 (array!53416 array!53414 (_ BitVec 32) (_ BitVec 32) V!29889 V!29889 (_ BitVec 64) V!29889 (_ BitVec 32) Int) Unit!30717)

(assert (=> b!905998 (= lt!408761 (lemmaListMapApplyFromThenApplyFromZero!24 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!408760 i!717 defaultEntry!1160))))

(declare-fun b!905999 () Bool)

(declare-fun e!507749 () Bool)

(assert (=> b!905999 (= e!507749 e!507743)))

(declare-fun res!611524 () Bool)

(assert (=> b!905999 (=> res!611524 e!507743)))

(declare-fun lt!408757 () ListLongMap!10961)

(declare-fun contains!4506 (ListLongMap!10961 (_ BitVec 64)) Bool)

(assert (=> b!905999 (= res!611524 (not (contains!4506 lt!408757 k0!1033)))))

(declare-fun getCurrentListMap!2730 (array!53416 array!53414 (_ BitVec 32) (_ BitVec 32) V!29889 V!29889 (_ BitVec 32) Int) ListLongMap!10961)

(assert (=> b!905999 (= lt!408757 (getCurrentListMap!2730 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!906000 () Bool)

(declare-fun res!611531 () Bool)

(declare-fun e!507745 () Bool)

(assert (=> b!906000 (=> (not res!611531) (not e!507745))))

(assert (=> b!906000 (= res!611531 (and (= (select (arr!25663 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!906001 () Bool)

(assert (=> b!906001 (= e!507745 (not e!507749))))

(declare-fun res!611526 () Bool)

(assert (=> b!906001 (=> res!611526 e!507749)))

(assert (=> b!906001 (= res!611526 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26123 _keys!1386))))))

(declare-fun get!13503 (ValueCell!8865 V!29889) V!29889)

(declare-fun dynLambda!1345 (Int (_ BitVec 64)) V!29889)

(assert (=> b!906001 (= lt!408760 (get!13503 (select (arr!25662 _values!1152) i!717) (dynLambda!1345 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53416 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!906001 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun lt!408759 () Unit!30717)

(declare-fun lemmaKeyInListMapIsInArray!218 (array!53416 array!53414 (_ BitVec 32) (_ BitVec 32) V!29889 V!29889 (_ BitVec 64) Int) Unit!30717)

(assert (=> b!906001 (= lt!408759 (lemmaKeyInListMapIsInArray!218 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!906002 () Bool)

(declare-fun res!611532 () Bool)

(declare-fun e!507746 () Bool)

(assert (=> b!906002 (=> (not res!611532) (not e!507746))))

(declare-datatypes ((List!18113 0))(
  ( (Nil!18110) (Cons!18109 (h!19255 (_ BitVec 64)) (t!25568 List!18113)) )
))
(declare-fun arrayNoDuplicates!0 (array!53416 (_ BitVec 32) List!18113) Bool)

(assert (=> b!906002 (= res!611532 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18110))))

(declare-fun b!906003 () Bool)

(assert (=> b!906003 (= e!507746 e!507745)))

(declare-fun res!611523 () Bool)

(assert (=> b!906003 (=> (not res!611523) (not e!507745))))

(assert (=> b!906003 (= res!611523 (contains!4506 lt!408758 k0!1033))))

(assert (=> b!906003 (= lt!408758 (getCurrentListMap!2730 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!906004 () Bool)

(declare-fun res!611527 () Bool)

(assert (=> b!906004 (=> (not res!611527) (not e!507746))))

(assert (=> b!906004 (= res!611527 (and (= (size!26122 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26123 _keys!1386) (size!26122 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!611530 () Bool)

(assert (=> start!77718 (=> (not res!611530) (not e!507746))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77718 (= res!611530 (validMask!0 mask!1756))))

(assert (=> start!77718 e!507746))

(declare-fun e!507747 () Bool)

(declare-fun array_inv!20076 (array!53414) Bool)

(assert (=> start!77718 (and (array_inv!20076 _values!1152) e!507747)))

(assert (=> start!77718 tp!57088))

(assert (=> start!77718 true))

(declare-fun tp_is_empty!18693 () Bool)

(assert (=> start!77718 tp_is_empty!18693))

(declare-fun array_inv!20077 (array!53416) Bool)

(assert (=> start!77718 (array_inv!20077 _keys!1386)))

(declare-fun mapIsEmpty!29752 () Bool)

(declare-fun mapRes!29752 () Bool)

(assert (=> mapIsEmpty!29752 mapRes!29752))

(declare-fun b!906005 () Bool)

(declare-fun e!507748 () Bool)

(assert (=> b!906005 (= e!507748 tp_is_empty!18693)))

(declare-fun b!906006 () Bool)

(declare-fun res!611525 () Bool)

(assert (=> b!906006 (=> (not res!611525) (not e!507745))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!906006 (= res!611525 (inRange!0 i!717 mask!1756))))

(declare-fun b!906007 () Bool)

(assert (=> b!906007 (= e!507747 (and e!507748 mapRes!29752))))

(declare-fun condMapEmpty!29752 () Bool)

(declare-fun mapDefault!29752 () ValueCell!8865)

(assert (=> b!906007 (= condMapEmpty!29752 (= (arr!25662 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8865)) mapDefault!29752)))))

(declare-fun b!906008 () Bool)

(declare-fun res!611528 () Bool)

(assert (=> b!906008 (=> res!611528 e!507743)))

(assert (=> b!906008 (= res!611528 (not (= (apply!473 lt!408757 k0!1033) lt!408760)))))

(declare-fun b!906009 () Bool)

(declare-fun res!611529 () Bool)

(assert (=> b!906009 (=> (not res!611529) (not e!507746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53416 (_ BitVec 32)) Bool)

(assert (=> b!906009 (= res!611529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!906010 () Bool)

(declare-fun e!507742 () Bool)

(assert (=> b!906010 (= e!507742 tp_is_empty!18693)))

(declare-fun mapNonEmpty!29752 () Bool)

(declare-fun tp!57087 () Bool)

(assert (=> mapNonEmpty!29752 (= mapRes!29752 (and tp!57087 e!507742))))

(declare-fun mapRest!29752 () (Array (_ BitVec 32) ValueCell!8865))

(declare-fun mapValue!29752 () ValueCell!8865)

(declare-fun mapKey!29752 () (_ BitVec 32))

(assert (=> mapNonEmpty!29752 (= (arr!25662 _values!1152) (store mapRest!29752 mapKey!29752 mapValue!29752))))

(assert (= (and start!77718 res!611530) b!906004))

(assert (= (and b!906004 res!611527) b!906009))

(assert (= (and b!906009 res!611529) b!906002))

(assert (= (and b!906002 res!611532) b!906003))

(assert (= (and b!906003 res!611523) b!906006))

(assert (= (and b!906006 res!611525) b!906000))

(assert (= (and b!906000 res!611531) b!906001))

(assert (= (and b!906001 (not res!611526)) b!905999))

(assert (= (and b!905999 (not res!611524)) b!906008))

(assert (= (and b!906008 (not res!611528)) b!905998))

(assert (= (and b!906007 condMapEmpty!29752) mapIsEmpty!29752))

(assert (= (and b!906007 (not condMapEmpty!29752)) mapNonEmpty!29752))

(get-info :version)

(assert (= (and mapNonEmpty!29752 ((_ is ValueCellFull!8865) mapValue!29752)) b!906010))

(assert (= (and b!906007 ((_ is ValueCellFull!8865) mapDefault!29752)) b!906005))

(assert (= start!77718 b!906007))

(declare-fun b_lambda!13179 () Bool)

(assert (=> (not b_lambda!13179) (not b!906001)))

(declare-fun t!25566 () Bool)

(declare-fun tb!5305 () Bool)

(assert (=> (and start!77718 (= defaultEntry!1160 defaultEntry!1160) t!25566) tb!5305))

(declare-fun result!10397 () Bool)

(assert (=> tb!5305 (= result!10397 tp_is_empty!18693)))

(assert (=> b!906001 t!25566))

(declare-fun b_and!26723 () Bool)

(assert (= b_and!26721 (and (=> t!25566 result!10397) b_and!26723)))

(declare-fun m!841491 () Bool)

(assert (=> b!905998 m!841491))

(declare-fun m!841493 () Bool)

(assert (=> b!905998 m!841493))

(declare-fun m!841495 () Bool)

(assert (=> b!906000 m!841495))

(declare-fun m!841497 () Bool)

(assert (=> start!77718 m!841497))

(declare-fun m!841499 () Bool)

(assert (=> start!77718 m!841499))

(declare-fun m!841501 () Bool)

(assert (=> start!77718 m!841501))

(declare-fun m!841503 () Bool)

(assert (=> b!905999 m!841503))

(declare-fun m!841505 () Bool)

(assert (=> b!905999 m!841505))

(declare-fun m!841507 () Bool)

(assert (=> b!906002 m!841507))

(declare-fun m!841509 () Bool)

(assert (=> b!906009 m!841509))

(declare-fun m!841511 () Bool)

(assert (=> b!906001 m!841511))

(declare-fun m!841513 () Bool)

(assert (=> b!906001 m!841513))

(declare-fun m!841515 () Bool)

(assert (=> b!906001 m!841515))

(declare-fun m!841517 () Bool)

(assert (=> b!906001 m!841517))

(assert (=> b!906001 m!841511))

(assert (=> b!906001 m!841515))

(declare-fun m!841519 () Bool)

(assert (=> b!906001 m!841519))

(declare-fun m!841521 () Bool)

(assert (=> b!906003 m!841521))

(declare-fun m!841523 () Bool)

(assert (=> b!906003 m!841523))

(declare-fun m!841525 () Bool)

(assert (=> mapNonEmpty!29752 m!841525))

(declare-fun m!841527 () Bool)

(assert (=> b!906008 m!841527))

(declare-fun m!841529 () Bool)

(assert (=> b!906006 m!841529))

(check-sat (not b!906008) (not b_lambda!13179) (not b!906006) (not b!905999) (not b!906009) (not b_next!16275) tp_is_empty!18693 b_and!26723 (not mapNonEmpty!29752) (not start!77718) (not b!906002) (not b!906003) (not b!906001) (not b!905998))
(check-sat b_and!26723 (not b_next!16275))
