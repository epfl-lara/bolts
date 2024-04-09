; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20342 () Bool)

(assert start!20342)

(declare-fun b_free!4989 () Bool)

(declare-fun b_next!4989 () Bool)

(assert (=> start!20342 (= b_free!4989 (not b_next!4989))))

(declare-fun tp!17999 () Bool)

(declare-fun b_and!11753 () Bool)

(assert (=> start!20342 (= tp!17999 b_and!11753)))

(declare-fun b!200386 () Bool)

(declare-fun e!131419 () Bool)

(declare-fun tp_is_empty!4845 () Bool)

(assert (=> b!200386 (= e!131419 tp_is_empty!4845)))

(declare-fun res!95489 () Bool)

(declare-fun e!131413 () Bool)

(assert (=> start!20342 (=> (not res!95489) (not e!131413))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20342 (= res!95489 (validMask!0 mask!1149))))

(assert (=> start!20342 e!131413))

(declare-datatypes ((V!6107 0))(
  ( (V!6108 (val!2467 Int)) )
))
(declare-datatypes ((ValueCell!2079 0))(
  ( (ValueCellFull!2079 (v!4433 V!6107)) (EmptyCell!2079) )
))
(declare-datatypes ((array!8920 0))(
  ( (array!8921 (arr!4210 (Array (_ BitVec 32) ValueCell!2079)) (size!4535 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8920)

(declare-fun e!131417 () Bool)

(declare-fun array_inv!2761 (array!8920) Bool)

(assert (=> start!20342 (and (array_inv!2761 _values!649) e!131417)))

(assert (=> start!20342 true))

(assert (=> start!20342 tp_is_empty!4845))

(declare-datatypes ((array!8922 0))(
  ( (array!8923 (arr!4211 (Array (_ BitVec 32) (_ BitVec 64))) (size!4536 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8922)

(declare-fun array_inv!2762 (array!8922) Bool)

(assert (=> start!20342 (array_inv!2762 _keys!825)))

(assert (=> start!20342 tp!17999))

(declare-fun b!200387 () Bool)

(declare-fun e!131418 () Bool)

(assert (=> b!200387 (= e!131418 tp_is_empty!4845)))

(declare-fun b!200388 () Bool)

(declare-fun e!131414 () Bool)

(assert (=> b!200388 (= e!131413 (not e!131414))))

(declare-fun res!95492 () Bool)

(assert (=> b!200388 (=> res!95492 e!131414)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!200388 (= res!95492 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3724 0))(
  ( (tuple2!3725 (_1!1872 (_ BitVec 64)) (_2!1872 V!6107)) )
))
(declare-datatypes ((List!2664 0))(
  ( (Nil!2661) (Cons!2660 (h!3302 tuple2!3724) (t!7603 List!2664)) )
))
(declare-datatypes ((ListLongMap!2651 0))(
  ( (ListLongMap!2652 (toList!1341 List!2664)) )
))
(declare-fun lt!99052 () ListLongMap!2651)

(declare-fun zeroValue!615 () V!6107)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6107)

(declare-fun getCurrentListMap!926 (array!8922 array!8920 (_ BitVec 32) (_ BitVec 32) V!6107 V!6107 (_ BitVec 32) Int) ListLongMap!2651)

(assert (=> b!200388 (= lt!99052 (getCurrentListMap!926 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99058 () array!8920)

(declare-fun lt!99057 () ListLongMap!2651)

(assert (=> b!200388 (= lt!99057 (getCurrentListMap!926 _keys!825 lt!99058 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!99056 () ListLongMap!2651)

(declare-fun lt!99050 () ListLongMap!2651)

(assert (=> b!200388 (and (= lt!99056 lt!99050) (= lt!99050 lt!99056))))

(declare-fun lt!99046 () ListLongMap!2651)

(declare-fun lt!99053 () tuple2!3724)

(declare-fun +!358 (ListLongMap!2651 tuple2!3724) ListLongMap!2651)

(assert (=> b!200388 (= lt!99050 (+!358 lt!99046 lt!99053))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun v!520 () V!6107)

(assert (=> b!200388 (= lt!99053 (tuple2!3725 k0!843 v!520))))

(declare-datatypes ((Unit!6023 0))(
  ( (Unit!6024) )
))
(declare-fun lt!99055 () Unit!6023)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!39 (array!8922 array!8920 (_ BitVec 32) (_ BitVec 32) V!6107 V!6107 (_ BitVec 32) (_ BitVec 64) V!6107 (_ BitVec 32) Int) Unit!6023)

(assert (=> b!200388 (= lt!99055 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!39 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!297 (array!8922 array!8920 (_ BitVec 32) (_ BitVec 32) V!6107 V!6107 (_ BitVec 32) Int) ListLongMap!2651)

(assert (=> b!200388 (= lt!99056 (getCurrentListMapNoExtraKeys!297 _keys!825 lt!99058 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200388 (= lt!99058 (array!8921 (store (arr!4210 _values!649) i!601 (ValueCellFull!2079 v!520)) (size!4535 _values!649)))))

(assert (=> b!200388 (= lt!99046 (getCurrentListMapNoExtraKeys!297 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!8336 () Bool)

(declare-fun mapRes!8336 () Bool)

(assert (=> mapIsEmpty!8336 mapRes!8336))

(declare-fun b!200389 () Bool)

(assert (=> b!200389 (= e!131417 (and e!131419 mapRes!8336))))

(declare-fun condMapEmpty!8336 () Bool)

(declare-fun mapDefault!8336 () ValueCell!2079)

(assert (=> b!200389 (= condMapEmpty!8336 (= (arr!4210 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2079)) mapDefault!8336)))))

(declare-fun b!200390 () Bool)

(declare-fun e!131416 () Bool)

(assert (=> b!200390 (= e!131416 true)))

(declare-fun lt!99051 () tuple2!3724)

(declare-fun lt!99048 () ListLongMap!2651)

(declare-fun lt!99047 () ListLongMap!2651)

(assert (=> b!200390 (= (+!358 lt!99047 lt!99051) (+!358 lt!99048 lt!99053))))

(declare-fun lt!99049 () ListLongMap!2651)

(declare-fun lt!99061 () Unit!6023)

(declare-fun addCommutativeForDiffKeys!82 (ListLongMap!2651 (_ BitVec 64) V!6107 (_ BitVec 64) V!6107) Unit!6023)

(assert (=> b!200390 (= lt!99061 (addCommutativeForDiffKeys!82 lt!99049 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!200391 () Bool)

(declare-fun res!95494 () Bool)

(assert (=> b!200391 (=> (not res!95494) (not e!131413))))

(assert (=> b!200391 (= res!95494 (and (= (size!4535 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4536 _keys!825) (size!4535 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!200392 () Bool)

(declare-fun res!95496 () Bool)

(assert (=> b!200392 (=> (not res!95496) (not e!131413))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8922 (_ BitVec 32)) Bool)

(assert (=> b!200392 (= res!95496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8336 () Bool)

(declare-fun tp!17998 () Bool)

(assert (=> mapNonEmpty!8336 (= mapRes!8336 (and tp!17998 e!131418))))

(declare-fun mapValue!8336 () ValueCell!2079)

(declare-fun mapKey!8336 () (_ BitVec 32))

(declare-fun mapRest!8336 () (Array (_ BitVec 32) ValueCell!2079))

(assert (=> mapNonEmpty!8336 (= (arr!4210 _values!649) (store mapRest!8336 mapKey!8336 mapValue!8336))))

(declare-fun b!200393 () Bool)

(declare-fun res!95493 () Bool)

(assert (=> b!200393 (=> (not res!95493) (not e!131413))))

(assert (=> b!200393 (= res!95493 (= (select (arr!4211 _keys!825) i!601) k0!843))))

(declare-fun b!200394 () Bool)

(declare-fun res!95495 () Bool)

(assert (=> b!200394 (=> (not res!95495) (not e!131413))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!200394 (= res!95495 (validKeyInArray!0 k0!843))))

(declare-fun b!200395 () Bool)

(declare-fun res!95491 () Bool)

(assert (=> b!200395 (=> (not res!95491) (not e!131413))))

(assert (=> b!200395 (= res!95491 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4536 _keys!825))))))

(declare-fun b!200396 () Bool)

(declare-fun res!95490 () Bool)

(assert (=> b!200396 (=> (not res!95490) (not e!131413))))

(declare-datatypes ((List!2665 0))(
  ( (Nil!2662) (Cons!2661 (h!3303 (_ BitVec 64)) (t!7604 List!2665)) )
))
(declare-fun arrayNoDuplicates!0 (array!8922 (_ BitVec 32) List!2665) Bool)

(assert (=> b!200396 (= res!95490 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2662))))

(declare-fun b!200397 () Bool)

(assert (=> b!200397 (= e!131414 e!131416)))

(declare-fun res!95497 () Bool)

(assert (=> b!200397 (=> res!95497 e!131416)))

(assert (=> b!200397 (= res!95497 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!99054 () ListLongMap!2651)

(assert (=> b!200397 (= lt!99054 lt!99047)))

(assert (=> b!200397 (= lt!99047 (+!358 lt!99049 lt!99053))))

(declare-fun lt!99060 () Unit!6023)

(assert (=> b!200397 (= lt!99060 (addCommutativeForDiffKeys!82 lt!99046 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (=> b!200397 (= lt!99057 (+!358 lt!99054 lt!99051))))

(declare-fun lt!99059 () tuple2!3724)

(assert (=> b!200397 (= lt!99054 (+!358 lt!99050 lt!99059))))

(assert (=> b!200397 (= lt!99052 lt!99048)))

(assert (=> b!200397 (= lt!99048 (+!358 lt!99049 lt!99051))))

(assert (=> b!200397 (= lt!99049 (+!358 lt!99046 lt!99059))))

(assert (=> b!200397 (= lt!99057 (+!358 (+!358 lt!99056 lt!99059) lt!99051))))

(assert (=> b!200397 (= lt!99051 (tuple2!3725 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!200397 (= lt!99059 (tuple2!3725 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (= (and start!20342 res!95489) b!200391))

(assert (= (and b!200391 res!95494) b!200392))

(assert (= (and b!200392 res!95496) b!200396))

(assert (= (and b!200396 res!95490) b!200395))

(assert (= (and b!200395 res!95491) b!200394))

(assert (= (and b!200394 res!95495) b!200393))

(assert (= (and b!200393 res!95493) b!200388))

(assert (= (and b!200388 (not res!95492)) b!200397))

(assert (= (and b!200397 (not res!95497)) b!200390))

(assert (= (and b!200389 condMapEmpty!8336) mapIsEmpty!8336))

(assert (= (and b!200389 (not condMapEmpty!8336)) mapNonEmpty!8336))

(get-info :version)

(assert (= (and mapNonEmpty!8336 ((_ is ValueCellFull!2079) mapValue!8336)) b!200387))

(assert (= (and b!200389 ((_ is ValueCellFull!2079) mapDefault!8336)) b!200386))

(assert (= start!20342 b!200389))

(declare-fun m!226885 () Bool)

(assert (=> b!200397 m!226885))

(declare-fun m!226887 () Bool)

(assert (=> b!200397 m!226887))

(declare-fun m!226889 () Bool)

(assert (=> b!200397 m!226889))

(declare-fun m!226891 () Bool)

(assert (=> b!200397 m!226891))

(declare-fun m!226893 () Bool)

(assert (=> b!200397 m!226893))

(assert (=> b!200397 m!226891))

(declare-fun m!226895 () Bool)

(assert (=> b!200397 m!226895))

(declare-fun m!226897 () Bool)

(assert (=> b!200397 m!226897))

(declare-fun m!226899 () Bool)

(assert (=> b!200397 m!226899))

(declare-fun m!226901 () Bool)

(assert (=> start!20342 m!226901))

(declare-fun m!226903 () Bool)

(assert (=> start!20342 m!226903))

(declare-fun m!226905 () Bool)

(assert (=> start!20342 m!226905))

(declare-fun m!226907 () Bool)

(assert (=> b!200392 m!226907))

(declare-fun m!226909 () Bool)

(assert (=> b!200396 m!226909))

(declare-fun m!226911 () Bool)

(assert (=> mapNonEmpty!8336 m!226911))

(declare-fun m!226913 () Bool)

(assert (=> b!200393 m!226913))

(declare-fun m!226915 () Bool)

(assert (=> b!200388 m!226915))

(declare-fun m!226917 () Bool)

(assert (=> b!200388 m!226917))

(declare-fun m!226919 () Bool)

(assert (=> b!200388 m!226919))

(declare-fun m!226921 () Bool)

(assert (=> b!200388 m!226921))

(declare-fun m!226923 () Bool)

(assert (=> b!200388 m!226923))

(declare-fun m!226925 () Bool)

(assert (=> b!200388 m!226925))

(declare-fun m!226927 () Bool)

(assert (=> b!200388 m!226927))

(declare-fun m!226929 () Bool)

(assert (=> b!200394 m!226929))

(declare-fun m!226931 () Bool)

(assert (=> b!200390 m!226931))

(declare-fun m!226933 () Bool)

(assert (=> b!200390 m!226933))

(declare-fun m!226935 () Bool)

(assert (=> b!200390 m!226935))

(check-sat tp_is_empty!4845 (not b!200397) (not b!200390) b_and!11753 (not b!200396) (not b!200388) (not b!200392) (not start!20342) (not b_next!4989) (not mapNonEmpty!8336) (not b!200394))
(check-sat b_and!11753 (not b_next!4989))
