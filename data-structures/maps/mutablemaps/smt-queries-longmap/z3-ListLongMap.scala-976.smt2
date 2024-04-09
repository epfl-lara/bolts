; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21128 () Bool)

(assert start!21128)

(declare-fun b_free!5607 () Bool)

(declare-fun b_next!5607 () Bool)

(assert (=> start!21128 (= b_free!5607 (not b_next!5607))))

(declare-fun tp!19886 () Bool)

(declare-fun b_and!12467 () Bool)

(assert (=> start!21128 (= tp!19886 b_and!12467)))

(declare-fun b!212471 () Bool)

(declare-fun res!103909 () Bool)

(declare-fun e!138253 () Bool)

(assert (=> b!212471 (=> (not res!103909) (not e!138253))))

(declare-datatypes ((array!10142 0))(
  ( (array!10143 (arr!4813 (Array (_ BitVec 32) (_ BitVec 64))) (size!5138 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10142)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10142 (_ BitVec 32)) Bool)

(assert (=> b!212471 (= res!103909 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!212472 () Bool)

(declare-fun e!138248 () Bool)

(declare-fun tp_is_empty!5469 () Bool)

(assert (=> b!212472 (= e!138248 tp_is_empty!5469)))

(declare-fun b!212473 () Bool)

(declare-fun e!138249 () Bool)

(declare-fun e!138250 () Bool)

(declare-fun mapRes!9296 () Bool)

(assert (=> b!212473 (= e!138249 (and e!138250 mapRes!9296))))

(declare-fun condMapEmpty!9296 () Bool)

(declare-datatypes ((V!6939 0))(
  ( (V!6940 (val!2779 Int)) )
))
(declare-datatypes ((ValueCell!2391 0))(
  ( (ValueCellFull!2391 (v!4777 V!6939)) (EmptyCell!2391) )
))
(declare-datatypes ((array!10144 0))(
  ( (array!10145 (arr!4814 (Array (_ BitVec 32) ValueCell!2391)) (size!5139 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10144)

(declare-fun mapDefault!9296 () ValueCell!2391)

(assert (=> b!212473 (= condMapEmpty!9296 (= (arr!4814 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2391)) mapDefault!9296)))))

(declare-fun b!212474 () Bool)

(declare-fun res!103908 () Bool)

(assert (=> b!212474 (=> (not res!103908) (not e!138253))))

(declare-datatypes ((List!3117 0))(
  ( (Nil!3114) (Cons!3113 (h!3755 (_ BitVec 64)) (t!8072 List!3117)) )
))
(declare-fun arrayNoDuplicates!0 (array!10142 (_ BitVec 32) List!3117) Bool)

(assert (=> b!212474 (= res!103908 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3114))))

(declare-fun res!103907 () Bool)

(assert (=> start!21128 (=> (not res!103907) (not e!138253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21128 (= res!103907 (validMask!0 mask!1149))))

(assert (=> start!21128 e!138253))

(declare-fun array_inv!3177 (array!10144) Bool)

(assert (=> start!21128 (and (array_inv!3177 _values!649) e!138249)))

(assert (=> start!21128 true))

(assert (=> start!21128 tp_is_empty!5469))

(declare-fun array_inv!3178 (array!10142) Bool)

(assert (=> start!21128 (array_inv!3178 _keys!825)))

(assert (=> start!21128 tp!19886))

(declare-fun mapIsEmpty!9296 () Bool)

(assert (=> mapIsEmpty!9296 mapRes!9296))

(declare-fun b!212475 () Bool)

(assert (=> b!212475 (= e!138250 tp_is_empty!5469)))

(declare-fun b!212476 () Bool)

(declare-fun e!138252 () Bool)

(assert (=> b!212476 (= e!138253 (not e!138252))))

(declare-fun res!103904 () Bool)

(assert (=> b!212476 (=> res!103904 e!138252)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!212476 (= res!103904 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!4204 0))(
  ( (tuple2!4205 (_1!2112 (_ BitVec 64)) (_2!2112 V!6939)) )
))
(declare-datatypes ((List!3118 0))(
  ( (Nil!3115) (Cons!3114 (h!3756 tuple2!4204) (t!8073 List!3118)) )
))
(declare-datatypes ((ListLongMap!3131 0))(
  ( (ListLongMap!3132 (toList!1581 List!3118)) )
))
(declare-fun lt!109587 () ListLongMap!3131)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6939)

(declare-fun zeroValue!615 () V!6939)

(declare-fun getCurrentListMap!1108 (array!10142 array!10144 (_ BitVec 32) (_ BitVec 32) V!6939 V!6939 (_ BitVec 32) Int) ListLongMap!3131)

(assert (=> b!212476 (= lt!109587 (getCurrentListMap!1108 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109588 () array!10144)

(declare-fun lt!109590 () ListLongMap!3131)

(assert (=> b!212476 (= lt!109590 (getCurrentListMap!1108 _keys!825 lt!109588 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109584 () ListLongMap!3131)

(declare-fun lt!109585 () ListLongMap!3131)

(assert (=> b!212476 (and (= lt!109584 lt!109585) (= lt!109585 lt!109584))))

(declare-fun lt!109591 () ListLongMap!3131)

(declare-fun v!520 () V!6939)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun +!574 (ListLongMap!3131 tuple2!4204) ListLongMap!3131)

(assert (=> b!212476 (= lt!109585 (+!574 lt!109591 (tuple2!4205 k0!843 v!520)))))

(declare-datatypes ((Unit!6449 0))(
  ( (Unit!6450) )
))
(declare-fun lt!109589 () Unit!6449)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!225 (array!10142 array!10144 (_ BitVec 32) (_ BitVec 32) V!6939 V!6939 (_ BitVec 32) (_ BitVec 64) V!6939 (_ BitVec 32) Int) Unit!6449)

(assert (=> b!212476 (= lt!109589 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!225 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!507 (array!10142 array!10144 (_ BitVec 32) (_ BitVec 32) V!6939 V!6939 (_ BitVec 32) Int) ListLongMap!3131)

(assert (=> b!212476 (= lt!109584 (getCurrentListMapNoExtraKeys!507 _keys!825 lt!109588 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!212476 (= lt!109588 (array!10145 (store (arr!4814 _values!649) i!601 (ValueCellFull!2391 v!520)) (size!5139 _values!649)))))

(assert (=> b!212476 (= lt!109591 (getCurrentListMapNoExtraKeys!507 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!212477 () Bool)

(declare-fun res!103906 () Bool)

(assert (=> b!212477 (=> (not res!103906) (not e!138253))))

(assert (=> b!212477 (= res!103906 (= (select (arr!4813 _keys!825) i!601) k0!843))))

(declare-fun b!212478 () Bool)

(declare-fun res!103905 () Bool)

(assert (=> b!212478 (=> (not res!103905) (not e!138253))))

(assert (=> b!212478 (= res!103905 (and (= (size!5139 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5138 _keys!825) (size!5139 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!212479 () Bool)

(declare-fun lt!109586 () tuple2!4204)

(assert (=> b!212479 (= e!138252 (= lt!109590 (+!574 lt!109585 lt!109586)))))

(assert (=> b!212479 (= lt!109590 (+!574 lt!109584 lt!109586))))

(assert (=> b!212479 (= lt!109586 (tuple2!4205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!212480 () Bool)

(declare-fun res!103902 () Bool)

(assert (=> b!212480 (=> (not res!103902) (not e!138253))))

(assert (=> b!212480 (= res!103902 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5138 _keys!825))))))

(declare-fun b!212481 () Bool)

(declare-fun res!103903 () Bool)

(assert (=> b!212481 (=> (not res!103903) (not e!138253))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!212481 (= res!103903 (validKeyInArray!0 k0!843))))

(declare-fun mapNonEmpty!9296 () Bool)

(declare-fun tp!19885 () Bool)

(assert (=> mapNonEmpty!9296 (= mapRes!9296 (and tp!19885 e!138248))))

(declare-fun mapValue!9296 () ValueCell!2391)

(declare-fun mapKey!9296 () (_ BitVec 32))

(declare-fun mapRest!9296 () (Array (_ BitVec 32) ValueCell!2391))

(assert (=> mapNonEmpty!9296 (= (arr!4814 _values!649) (store mapRest!9296 mapKey!9296 mapValue!9296))))

(assert (= (and start!21128 res!103907) b!212478))

(assert (= (and b!212478 res!103905) b!212471))

(assert (= (and b!212471 res!103909) b!212474))

(assert (= (and b!212474 res!103908) b!212480))

(assert (= (and b!212480 res!103902) b!212481))

(assert (= (and b!212481 res!103903) b!212477))

(assert (= (and b!212477 res!103906) b!212476))

(assert (= (and b!212476 (not res!103904)) b!212479))

(assert (= (and b!212473 condMapEmpty!9296) mapIsEmpty!9296))

(assert (= (and b!212473 (not condMapEmpty!9296)) mapNonEmpty!9296))

(get-info :version)

(assert (= (and mapNonEmpty!9296 ((_ is ValueCellFull!2391) mapValue!9296)) b!212472))

(assert (= (and b!212473 ((_ is ValueCellFull!2391) mapDefault!9296)) b!212475))

(assert (= start!21128 b!212473))

(declare-fun m!240295 () Bool)

(assert (=> b!212471 m!240295))

(declare-fun m!240297 () Bool)

(assert (=> b!212474 m!240297))

(declare-fun m!240299 () Bool)

(assert (=> b!212479 m!240299))

(declare-fun m!240301 () Bool)

(assert (=> b!212479 m!240301))

(declare-fun m!240303 () Bool)

(assert (=> mapNonEmpty!9296 m!240303))

(declare-fun m!240305 () Bool)

(assert (=> start!21128 m!240305))

(declare-fun m!240307 () Bool)

(assert (=> start!21128 m!240307))

(declare-fun m!240309 () Bool)

(assert (=> start!21128 m!240309))

(declare-fun m!240311 () Bool)

(assert (=> b!212481 m!240311))

(declare-fun m!240313 () Bool)

(assert (=> b!212476 m!240313))

(declare-fun m!240315 () Bool)

(assert (=> b!212476 m!240315))

(declare-fun m!240317 () Bool)

(assert (=> b!212476 m!240317))

(declare-fun m!240319 () Bool)

(assert (=> b!212476 m!240319))

(declare-fun m!240321 () Bool)

(assert (=> b!212476 m!240321))

(declare-fun m!240323 () Bool)

(assert (=> b!212476 m!240323))

(declare-fun m!240325 () Bool)

(assert (=> b!212476 m!240325))

(declare-fun m!240327 () Bool)

(assert (=> b!212477 m!240327))

(check-sat (not b_next!5607) (not b!212479) (not b!212481) (not b!212476) (not start!21128) (not b!212474) (not b!212471) tp_is_empty!5469 b_and!12467 (not mapNonEmpty!9296))
(check-sat b_and!12467 (not b_next!5607))
