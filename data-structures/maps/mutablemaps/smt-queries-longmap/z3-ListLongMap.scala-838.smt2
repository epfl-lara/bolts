; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20138 () Bool)

(assert start!20138)

(declare-fun b_free!4785 () Bool)

(declare-fun b_next!4785 () Bool)

(assert (=> start!20138 (= b_free!4785 (not b_next!4785))))

(declare-fun tp!17387 () Bool)

(declare-fun b_and!11549 () Bool)

(assert (=> start!20138 (= tp!17387 b_and!11549)))

(declare-fun mapIsEmpty!8030 () Bool)

(declare-fun mapRes!8030 () Bool)

(assert (=> mapIsEmpty!8030 mapRes!8030))

(declare-fun b!197280 () Bool)

(declare-fun res!93306 () Bool)

(declare-fun e!129849 () Bool)

(assert (=> b!197280 (=> (not res!93306) (not e!129849))))

(declare-datatypes ((array!8534 0))(
  ( (array!8535 (arr!4017 (Array (_ BitVec 32) (_ BitVec 64))) (size!4342 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8534)

(declare-datatypes ((List!2527 0))(
  ( (Nil!2524) (Cons!2523 (h!3165 (_ BitVec 64)) (t!7466 List!2527)) )
))
(declare-fun arrayNoDuplicates!0 (array!8534 (_ BitVec 32) List!2527) Bool)

(assert (=> b!197280 (= res!93306 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2524))))

(declare-fun b!197281 () Bool)

(declare-fun res!93302 () Bool)

(assert (=> b!197281 (=> (not res!93302) (not e!129849))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197281 (= res!93302 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4342 _keys!825))))))

(declare-fun b!197282 () Bool)

(assert (=> b!197282 (= e!129849 false)))

(declare-datatypes ((V!5835 0))(
  ( (V!5836 (val!2365 Int)) )
))
(declare-datatypes ((tuple2!3592 0))(
  ( (tuple2!3593 (_1!1806 (_ BitVec 64)) (_2!1806 V!5835)) )
))
(declare-datatypes ((List!2528 0))(
  ( (Nil!2525) (Cons!2524 (h!3166 tuple2!3592) (t!7467 List!2528)) )
))
(declare-datatypes ((ListLongMap!2519 0))(
  ( (ListLongMap!2520 (toList!1275 List!2528)) )
))
(declare-fun lt!97729 () ListLongMap!2519)

(declare-datatypes ((ValueCell!1977 0))(
  ( (ValueCellFull!1977 (v!4331 V!5835)) (EmptyCell!1977) )
))
(declare-datatypes ((array!8536 0))(
  ( (array!8537 (arr!4018 (Array (_ BitVec 32) ValueCell!1977)) (size!4343 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8536)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!5835)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5835)

(declare-fun getCurrentListMapNoExtraKeys!232 (array!8534 array!8536 (_ BitVec 32) (_ BitVec 32) V!5835 V!5835 (_ BitVec 32) Int) ListLongMap!2519)

(assert (=> b!197282 (= lt!97729 (getCurrentListMapNoExtraKeys!232 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!197283 () Bool)

(declare-fun res!93304 () Bool)

(assert (=> b!197283 (=> (not res!93304) (not e!129849))))

(assert (=> b!197283 (= res!93304 (and (= (size!4343 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4342 _keys!825) (size!4343 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197284 () Bool)

(declare-fun res!93307 () Bool)

(assert (=> b!197284 (=> (not res!93307) (not e!129849))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8534 (_ BitVec 32)) Bool)

(assert (=> b!197284 (= res!93307 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun res!93301 () Bool)

(assert (=> start!20138 (=> (not res!93301) (not e!129849))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20138 (= res!93301 (validMask!0 mask!1149))))

(assert (=> start!20138 e!129849))

(declare-fun e!129846 () Bool)

(declare-fun array_inv!2611 (array!8536) Bool)

(assert (=> start!20138 (and (array_inv!2611 _values!649) e!129846)))

(assert (=> start!20138 true))

(declare-fun tp_is_empty!4641 () Bool)

(assert (=> start!20138 tp_is_empty!4641))

(declare-fun array_inv!2612 (array!8534) Bool)

(assert (=> start!20138 (array_inv!2612 _keys!825)))

(assert (=> start!20138 tp!17387))

(declare-fun b!197285 () Bool)

(declare-fun e!129850 () Bool)

(assert (=> b!197285 (= e!129850 tp_is_empty!4641)))

(declare-fun b!197286 () Bool)

(declare-fun res!93303 () Bool)

(assert (=> b!197286 (=> (not res!93303) (not e!129849))))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!197286 (= res!93303 (= (select (arr!4017 _keys!825) i!601) k0!843))))

(declare-fun mapNonEmpty!8030 () Bool)

(declare-fun tp!17386 () Bool)

(declare-fun e!129847 () Bool)

(assert (=> mapNonEmpty!8030 (= mapRes!8030 (and tp!17386 e!129847))))

(declare-fun mapValue!8030 () ValueCell!1977)

(declare-fun mapRest!8030 () (Array (_ BitVec 32) ValueCell!1977))

(declare-fun mapKey!8030 () (_ BitVec 32))

(assert (=> mapNonEmpty!8030 (= (arr!4018 _values!649) (store mapRest!8030 mapKey!8030 mapValue!8030))))

(declare-fun b!197287 () Bool)

(assert (=> b!197287 (= e!129847 tp_is_empty!4641)))

(declare-fun b!197288 () Bool)

(declare-fun res!93305 () Bool)

(assert (=> b!197288 (=> (not res!93305) (not e!129849))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!197288 (= res!93305 (validKeyInArray!0 k0!843))))

(declare-fun b!197289 () Bool)

(assert (=> b!197289 (= e!129846 (and e!129850 mapRes!8030))))

(declare-fun condMapEmpty!8030 () Bool)

(declare-fun mapDefault!8030 () ValueCell!1977)

(assert (=> b!197289 (= condMapEmpty!8030 (= (arr!4018 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1977)) mapDefault!8030)))))

(assert (= (and start!20138 res!93301) b!197283))

(assert (= (and b!197283 res!93304) b!197284))

(assert (= (and b!197284 res!93307) b!197280))

(assert (= (and b!197280 res!93306) b!197281))

(assert (= (and b!197281 res!93302) b!197288))

(assert (= (and b!197288 res!93305) b!197286))

(assert (= (and b!197286 res!93303) b!197282))

(assert (= (and b!197289 condMapEmpty!8030) mapIsEmpty!8030))

(assert (= (and b!197289 (not condMapEmpty!8030)) mapNonEmpty!8030))

(get-info :version)

(assert (= (and mapNonEmpty!8030 ((_ is ValueCellFull!1977) mapValue!8030)) b!197287))

(assert (= (and b!197289 ((_ is ValueCellFull!1977) mapDefault!8030)) b!197285))

(assert (= start!20138 b!197289))

(declare-fun m!224229 () Bool)

(assert (=> b!197282 m!224229))

(declare-fun m!224231 () Bool)

(assert (=> start!20138 m!224231))

(declare-fun m!224233 () Bool)

(assert (=> start!20138 m!224233))

(declare-fun m!224235 () Bool)

(assert (=> start!20138 m!224235))

(declare-fun m!224237 () Bool)

(assert (=> b!197288 m!224237))

(declare-fun m!224239 () Bool)

(assert (=> b!197284 m!224239))

(declare-fun m!224241 () Bool)

(assert (=> b!197280 m!224241))

(declare-fun m!224243 () Bool)

(assert (=> b!197286 m!224243))

(declare-fun m!224245 () Bool)

(assert (=> mapNonEmpty!8030 m!224245))

(check-sat b_and!11549 (not b!197288) (not start!20138) (not mapNonEmpty!8030) (not b!197284) (not b_next!4785) tp_is_empty!4641 (not b!197280) (not b!197282))
(check-sat b_and!11549 (not b_next!4785))
