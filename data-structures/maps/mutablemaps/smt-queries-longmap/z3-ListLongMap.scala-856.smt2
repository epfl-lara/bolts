; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20246 () Bool)

(assert start!20246)

(declare-fun b_free!4893 () Bool)

(declare-fun b_next!4893 () Bool)

(assert (=> start!20246 (= b_free!4893 (not b_next!4893))))

(declare-fun tp!17710 () Bool)

(declare-fun b_and!11657 () Bool)

(assert (=> start!20246 (= tp!17710 b_and!11657)))

(declare-fun b!198900 () Bool)

(declare-fun res!94438 () Bool)

(declare-fun e!130656 () Bool)

(assert (=> b!198900 (=> (not res!94438) (not e!130656))))

(declare-datatypes ((array!8738 0))(
  ( (array!8739 (arr!4119 (Array (_ BitVec 32) (_ BitVec 64))) (size!4444 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8738)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!198900 (= res!94438 (= (select (arr!4119 _keys!825) i!601) k0!843))))

(declare-fun b!198901 () Bool)

(declare-fun res!94436 () Bool)

(assert (=> b!198901 (=> (not res!94436) (not e!130656))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198901 (= res!94436 (validKeyInArray!0 k0!843))))

(declare-fun b!198902 () Bool)

(assert (=> b!198902 (= e!130656 (not true))))

(declare-datatypes ((V!5979 0))(
  ( (V!5980 (val!2419 Int)) )
))
(declare-datatypes ((tuple2!3662 0))(
  ( (tuple2!3663 (_1!1841 (_ BitVec 64)) (_2!1841 V!5979)) )
))
(declare-datatypes ((List!2601 0))(
  ( (Nil!2598) (Cons!2597 (h!3239 tuple2!3662) (t!7540 List!2601)) )
))
(declare-datatypes ((ListLongMap!2589 0))(
  ( (ListLongMap!2590 (toList!1310 List!2601)) )
))
(declare-fun lt!98123 () ListLongMap!2589)

(declare-fun lt!98124 () ListLongMap!2589)

(assert (=> b!198902 (and (= lt!98123 lt!98124) (= lt!98124 lt!98123))))

(declare-fun lt!98125 () ListLongMap!2589)

(declare-fun v!520 () V!5979)

(declare-fun +!327 (ListLongMap!2589 tuple2!3662) ListLongMap!2589)

(assert (=> b!198902 (= lt!98124 (+!327 lt!98125 (tuple2!3663 k0!843 v!520)))))

(declare-datatypes ((ValueCell!2031 0))(
  ( (ValueCellFull!2031 (v!4385 V!5979)) (EmptyCell!2031) )
))
(declare-datatypes ((array!8740 0))(
  ( (array!8741 (arr!4120 (Array (_ BitVec 32) ValueCell!2031)) (size!4445 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8740)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!5979)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5979)

(declare-datatypes ((Unit!5963 0))(
  ( (Unit!5964) )
))
(declare-fun lt!98122 () Unit!5963)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!9 (array!8738 array!8740 (_ BitVec 32) (_ BitVec 32) V!5979 V!5979 (_ BitVec 32) (_ BitVec 64) V!5979 (_ BitVec 32) Int) Unit!5963)

(assert (=> b!198902 (= lt!98122 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!9 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!267 (array!8738 array!8740 (_ BitVec 32) (_ BitVec 32) V!5979 V!5979 (_ BitVec 32) Int) ListLongMap!2589)

(assert (=> b!198902 (= lt!98123 (getCurrentListMapNoExtraKeys!267 _keys!825 (array!8741 (store (arr!4120 _values!649) i!601 (ValueCellFull!2031 v!520)) (size!4445 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!198902 (= lt!98125 (getCurrentListMapNoExtraKeys!267 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!198903 () Bool)

(declare-fun e!130660 () Bool)

(declare-fun tp_is_empty!4749 () Bool)

(assert (=> b!198903 (= e!130660 tp_is_empty!4749)))

(declare-fun b!198904 () Bool)

(declare-fun res!94435 () Bool)

(assert (=> b!198904 (=> (not res!94435) (not e!130656))))

(assert (=> b!198904 (= res!94435 (and (= (size!4445 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4444 _keys!825) (size!4445 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!94441 () Bool)

(assert (=> start!20246 (=> (not res!94441) (not e!130656))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20246 (= res!94441 (validMask!0 mask!1149))))

(assert (=> start!20246 e!130656))

(declare-fun e!130658 () Bool)

(declare-fun array_inv!2687 (array!8740) Bool)

(assert (=> start!20246 (and (array_inv!2687 _values!649) e!130658)))

(assert (=> start!20246 true))

(assert (=> start!20246 tp_is_empty!4749))

(declare-fun array_inv!2688 (array!8738) Bool)

(assert (=> start!20246 (array_inv!2688 _keys!825)))

(assert (=> start!20246 tp!17710))

(declare-fun b!198905 () Bool)

(declare-fun e!130657 () Bool)

(assert (=> b!198905 (= e!130657 tp_is_empty!4749)))

(declare-fun b!198906 () Bool)

(declare-fun res!94437 () Bool)

(assert (=> b!198906 (=> (not res!94437) (not e!130656))))

(declare-datatypes ((List!2602 0))(
  ( (Nil!2599) (Cons!2598 (h!3240 (_ BitVec 64)) (t!7541 List!2602)) )
))
(declare-fun arrayNoDuplicates!0 (array!8738 (_ BitVec 32) List!2602) Bool)

(assert (=> b!198906 (= res!94437 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2599))))

(declare-fun b!198907 () Bool)

(declare-fun mapRes!8192 () Bool)

(assert (=> b!198907 (= e!130658 (and e!130657 mapRes!8192))))

(declare-fun condMapEmpty!8192 () Bool)

(declare-fun mapDefault!8192 () ValueCell!2031)

(assert (=> b!198907 (= condMapEmpty!8192 (= (arr!4120 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2031)) mapDefault!8192)))))

(declare-fun b!198908 () Bool)

(declare-fun res!94440 () Bool)

(assert (=> b!198908 (=> (not res!94440) (not e!130656))))

(assert (=> b!198908 (= res!94440 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4444 _keys!825))))))

(declare-fun b!198909 () Bool)

(declare-fun res!94439 () Bool)

(assert (=> b!198909 (=> (not res!94439) (not e!130656))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8738 (_ BitVec 32)) Bool)

(assert (=> b!198909 (= res!94439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8192 () Bool)

(declare-fun tp!17711 () Bool)

(assert (=> mapNonEmpty!8192 (= mapRes!8192 (and tp!17711 e!130660))))

(declare-fun mapValue!8192 () ValueCell!2031)

(declare-fun mapRest!8192 () (Array (_ BitVec 32) ValueCell!2031))

(declare-fun mapKey!8192 () (_ BitVec 32))

(assert (=> mapNonEmpty!8192 (= (arr!4120 _values!649) (store mapRest!8192 mapKey!8192 mapValue!8192))))

(declare-fun mapIsEmpty!8192 () Bool)

(assert (=> mapIsEmpty!8192 mapRes!8192))

(assert (= (and start!20246 res!94441) b!198904))

(assert (= (and b!198904 res!94435) b!198909))

(assert (= (and b!198909 res!94439) b!198906))

(assert (= (and b!198906 res!94437) b!198908))

(assert (= (and b!198908 res!94440) b!198901))

(assert (= (and b!198901 res!94436) b!198900))

(assert (= (and b!198900 res!94438) b!198902))

(assert (= (and b!198907 condMapEmpty!8192) mapIsEmpty!8192))

(assert (= (and b!198907 (not condMapEmpty!8192)) mapNonEmpty!8192))

(get-info :version)

(assert (= (and mapNonEmpty!8192 ((_ is ValueCellFull!2031) mapValue!8192)) b!198903))

(assert (= (and b!198907 ((_ is ValueCellFull!2031) mapDefault!8192)) b!198905))

(assert (= start!20246 b!198907))

(declare-fun m!225449 () Bool)

(assert (=> b!198909 m!225449))

(declare-fun m!225451 () Bool)

(assert (=> b!198900 m!225451))

(declare-fun m!225453 () Bool)

(assert (=> b!198906 m!225453))

(declare-fun m!225455 () Bool)

(assert (=> start!20246 m!225455))

(declare-fun m!225457 () Bool)

(assert (=> start!20246 m!225457))

(declare-fun m!225459 () Bool)

(assert (=> start!20246 m!225459))

(declare-fun m!225461 () Bool)

(assert (=> mapNonEmpty!8192 m!225461))

(declare-fun m!225463 () Bool)

(assert (=> b!198901 m!225463))

(declare-fun m!225465 () Bool)

(assert (=> b!198902 m!225465))

(declare-fun m!225467 () Bool)

(assert (=> b!198902 m!225467))

(declare-fun m!225469 () Bool)

(assert (=> b!198902 m!225469))

(declare-fun m!225471 () Bool)

(assert (=> b!198902 m!225471))

(declare-fun m!225473 () Bool)

(assert (=> b!198902 m!225473))

(check-sat (not b!198906) (not b_next!4893) (not b!198909) (not start!20246) b_and!11657 (not b!198902) tp_is_empty!4749 (not mapNonEmpty!8192) (not b!198901))
(check-sat b_and!11657 (not b_next!4893))
