; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38154 () Bool)

(assert start!38154)

(declare-fun b_free!9027 () Bool)

(declare-fun b_next!9027 () Bool)

(assert (=> start!38154 (= b_free!9027 (not b_next!9027))))

(declare-fun tp!31863 () Bool)

(declare-fun b_and!16407 () Bool)

(assert (=> start!38154 (= tp!31863 b_and!16407)))

(declare-fun res!225130 () Bool)

(declare-fun e!237934 () Bool)

(assert (=> start!38154 (=> (not res!225130) (not e!237934))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38154 (= res!225130 (validMask!0 mask!970))))

(assert (=> start!38154 e!237934))

(declare-datatypes ((V!14037 0))(
  ( (V!14038 (val!4894 Int)) )
))
(declare-datatypes ((ValueCell!4506 0))(
  ( (ValueCellFull!4506 (v!7127 V!14037)) (EmptyCell!4506) )
))
(declare-datatypes ((array!23279 0))(
  ( (array!23280 (arr!11095 (Array (_ BitVec 32) ValueCell!4506)) (size!11447 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23279)

(declare-fun e!237931 () Bool)

(declare-fun array_inv!8132 (array!23279) Bool)

(assert (=> start!38154 (and (array_inv!8132 _values!506) e!237931)))

(assert (=> start!38154 tp!31863))

(assert (=> start!38154 true))

(declare-fun tp_is_empty!9699 () Bool)

(assert (=> start!38154 tp_is_empty!9699))

(declare-datatypes ((array!23281 0))(
  ( (array!23282 (arr!11096 (Array (_ BitVec 32) (_ BitVec 64))) (size!11448 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23281)

(declare-fun array_inv!8133 (array!23281) Bool)

(assert (=> start!38154 (array_inv!8133 _keys!658)))

(declare-fun b!392924 () Bool)

(declare-fun e!237933 () Bool)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!392924 (= e!237933 (bvslt i!548 (size!11447 _values!506)))))

(declare-datatypes ((tuple2!6536 0))(
  ( (tuple2!6537 (_1!3278 (_ BitVec 64)) (_2!3278 V!14037)) )
))
(declare-datatypes ((List!6418 0))(
  ( (Nil!6415) (Cons!6414 (h!7270 tuple2!6536) (t!11596 List!6418)) )
))
(declare-datatypes ((ListLongMap!5463 0))(
  ( (ListLongMap!5464 (toList!2747 List!6418)) )
))
(declare-fun lt!185917 () ListLongMap!5463)

(declare-fun lt!185913 () ListLongMap!5463)

(declare-fun lt!185918 () tuple2!6536)

(declare-fun +!1045 (ListLongMap!5463 tuple2!6536) ListLongMap!5463)

(assert (=> b!392924 (= lt!185917 (+!1045 lt!185913 lt!185918))))

(declare-fun v!373 () V!14037)

(declare-fun lt!185911 () ListLongMap!5463)

(declare-fun k0!778 () (_ BitVec 64))

(declare-datatypes ((Unit!11985 0))(
  ( (Unit!11986) )
))
(declare-fun lt!185920 () Unit!11985)

(declare-fun minValue!472 () V!14037)

(declare-fun addCommutativeForDiffKeys!341 (ListLongMap!5463 (_ BitVec 64) V!14037 (_ BitVec 64) V!14037) Unit!11985)

(assert (=> b!392924 (= lt!185920 (addCommutativeForDiffKeys!341 lt!185911 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!392925 () Bool)

(declare-fun res!225136 () Bool)

(assert (=> b!392925 (=> (not res!225136) (not e!237934))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!392925 (= res!225136 (validKeyInArray!0 k0!778))))

(declare-fun b!392926 () Bool)

(declare-fun res!225131 () Bool)

(assert (=> b!392926 (=> (not res!225131) (not e!237934))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!392926 (= res!225131 (and (= (size!11447 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11448 _keys!658) (size!11447 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!392927 () Bool)

(declare-fun res!225134 () Bool)

(assert (=> b!392927 (=> (not res!225134) (not e!237934))))

(declare-datatypes ((List!6419 0))(
  ( (Nil!6416) (Cons!6415 (h!7271 (_ BitVec 64)) (t!11597 List!6419)) )
))
(declare-fun arrayNoDuplicates!0 (array!23281 (_ BitVec 32) List!6419) Bool)

(assert (=> b!392927 (= res!225134 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6416))))

(declare-fun b!392928 () Bool)

(declare-fun e!237932 () Bool)

(assert (=> b!392928 (= e!237932 tp_is_empty!9699)))

(declare-fun mapNonEmpty!16143 () Bool)

(declare-fun mapRes!16143 () Bool)

(declare-fun tp!31862 () Bool)

(assert (=> mapNonEmpty!16143 (= mapRes!16143 (and tp!31862 e!237932))))

(declare-fun mapRest!16143 () (Array (_ BitVec 32) ValueCell!4506))

(declare-fun mapValue!16143 () ValueCell!4506)

(declare-fun mapKey!16143 () (_ BitVec 32))

(assert (=> mapNonEmpty!16143 (= (arr!11095 _values!506) (store mapRest!16143 mapKey!16143 mapValue!16143))))

(declare-fun mapIsEmpty!16143 () Bool)

(assert (=> mapIsEmpty!16143 mapRes!16143))

(declare-fun b!392929 () Bool)

(declare-fun res!225137 () Bool)

(assert (=> b!392929 (=> (not res!225137) (not e!237934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23281 (_ BitVec 32)) Bool)

(assert (=> b!392929 (= res!225137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!392930 () Bool)

(declare-fun e!237936 () Bool)

(assert (=> b!392930 (= e!237936 tp_is_empty!9699)))

(declare-fun b!392931 () Bool)

(assert (=> b!392931 (= e!237931 (and e!237936 mapRes!16143))))

(declare-fun condMapEmpty!16143 () Bool)

(declare-fun mapDefault!16143 () ValueCell!4506)

(assert (=> b!392931 (= condMapEmpty!16143 (= (arr!11095 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4506)) mapDefault!16143)))))

(declare-fun b!392932 () Bool)

(declare-fun res!225135 () Bool)

(declare-fun e!237937 () Bool)

(assert (=> b!392932 (=> (not res!225135) (not e!237937))))

(declare-fun lt!185914 () array!23281)

(assert (=> b!392932 (= res!225135 (arrayNoDuplicates!0 lt!185914 #b00000000000000000000000000000000 Nil!6416))))

(declare-fun b!392933 () Bool)

(declare-fun res!225140 () Bool)

(assert (=> b!392933 (=> (not res!225140) (not e!237934))))

(declare-fun arrayContainsKey!0 (array!23281 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!392933 (= res!225140 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!392934 () Bool)

(declare-fun res!225139 () Bool)

(assert (=> b!392934 (=> (not res!225139) (not e!237934))))

(assert (=> b!392934 (= res!225139 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11448 _keys!658))))))

(declare-fun b!392935 () Bool)

(declare-fun e!237938 () Bool)

(assert (=> b!392935 (= e!237937 (not e!237938))))

(declare-fun res!225132 () Bool)

(assert (=> b!392935 (=> res!225132 e!237938)))

(assert (=> b!392935 (= res!225132 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!185910 () ListLongMap!5463)

(declare-fun zeroValue!472 () V!14037)

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!2109 (array!23281 array!23279 (_ BitVec 32) (_ BitVec 32) V!14037 V!14037 (_ BitVec 32) Int) ListLongMap!5463)

(assert (=> b!392935 (= lt!185910 (getCurrentListMap!2109 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185909 () ListLongMap!5463)

(declare-fun lt!185912 () array!23279)

(assert (=> b!392935 (= lt!185909 (getCurrentListMap!2109 lt!185914 lt!185912 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185916 () ListLongMap!5463)

(declare-fun lt!185919 () ListLongMap!5463)

(assert (=> b!392935 (and (= lt!185916 lt!185919) (= lt!185919 lt!185916))))

(assert (=> b!392935 (= lt!185919 (+!1045 lt!185911 lt!185918))))

(assert (=> b!392935 (= lt!185918 (tuple2!6537 k0!778 v!373))))

(declare-fun lt!185915 () Unit!11985)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!266 (array!23281 array!23279 (_ BitVec 32) (_ BitVec 32) V!14037 V!14037 (_ BitVec 32) (_ BitVec 64) V!14037 (_ BitVec 32) Int) Unit!11985)

(assert (=> b!392935 (= lt!185915 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!266 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!971 (array!23281 array!23279 (_ BitVec 32) (_ BitVec 32) V!14037 V!14037 (_ BitVec 32) Int) ListLongMap!5463)

(assert (=> b!392935 (= lt!185916 (getCurrentListMapNoExtraKeys!971 lt!185914 lt!185912 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!392935 (= lt!185912 (array!23280 (store (arr!11095 _values!506) i!548 (ValueCellFull!4506 v!373)) (size!11447 _values!506)))))

(assert (=> b!392935 (= lt!185911 (getCurrentListMapNoExtraKeys!971 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!392936 () Bool)

(declare-fun res!225133 () Bool)

(assert (=> b!392936 (=> (not res!225133) (not e!237934))))

(assert (=> b!392936 (= res!225133 (or (= (select (arr!11096 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11096 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!392937 () Bool)

(assert (=> b!392937 (= e!237934 e!237937)))

(declare-fun res!225138 () Bool)

(assert (=> b!392937 (=> (not res!225138) (not e!237937))))

(assert (=> b!392937 (= res!225138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!185914 mask!970))))

(assert (=> b!392937 (= lt!185914 (array!23282 (store (arr!11096 _keys!658) i!548 k0!778) (size!11448 _keys!658)))))

(declare-fun b!392938 () Bool)

(assert (=> b!392938 (= e!237938 e!237933)))

(declare-fun res!225141 () Bool)

(assert (=> b!392938 (=> res!225141 e!237933)))

(assert (=> b!392938 (= res!225141 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!392938 (= lt!185910 lt!185913)))

(declare-fun lt!185921 () tuple2!6536)

(assert (=> b!392938 (= lt!185913 (+!1045 lt!185911 lt!185921))))

(assert (=> b!392938 (= lt!185909 lt!185917)))

(assert (=> b!392938 (= lt!185917 (+!1045 lt!185919 lt!185921))))

(assert (=> b!392938 (= lt!185909 (+!1045 lt!185916 lt!185921))))

(assert (=> b!392938 (= lt!185921 (tuple2!6537 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (= (and start!38154 res!225130) b!392926))

(assert (= (and b!392926 res!225131) b!392929))

(assert (= (and b!392929 res!225137) b!392927))

(assert (= (and b!392927 res!225134) b!392934))

(assert (= (and b!392934 res!225139) b!392925))

(assert (= (and b!392925 res!225136) b!392936))

(assert (= (and b!392936 res!225133) b!392933))

(assert (= (and b!392933 res!225140) b!392937))

(assert (= (and b!392937 res!225138) b!392932))

(assert (= (and b!392932 res!225135) b!392935))

(assert (= (and b!392935 (not res!225132)) b!392938))

(assert (= (and b!392938 (not res!225141)) b!392924))

(assert (= (and b!392931 condMapEmpty!16143) mapIsEmpty!16143))

(assert (= (and b!392931 (not condMapEmpty!16143)) mapNonEmpty!16143))

(get-info :version)

(assert (= (and mapNonEmpty!16143 ((_ is ValueCellFull!4506) mapValue!16143)) b!392928))

(assert (= (and b!392931 ((_ is ValueCellFull!4506) mapDefault!16143)) b!392930))

(assert (= start!38154 b!392931))

(declare-fun m!389413 () Bool)

(assert (=> b!392935 m!389413))

(declare-fun m!389415 () Bool)

(assert (=> b!392935 m!389415))

(declare-fun m!389417 () Bool)

(assert (=> b!392935 m!389417))

(declare-fun m!389419 () Bool)

(assert (=> b!392935 m!389419))

(declare-fun m!389421 () Bool)

(assert (=> b!392935 m!389421))

(declare-fun m!389423 () Bool)

(assert (=> b!392935 m!389423))

(declare-fun m!389425 () Bool)

(assert (=> b!392935 m!389425))

(declare-fun m!389427 () Bool)

(assert (=> b!392929 m!389427))

(declare-fun m!389429 () Bool)

(assert (=> b!392936 m!389429))

(declare-fun m!389431 () Bool)

(assert (=> start!38154 m!389431))

(declare-fun m!389433 () Bool)

(assert (=> start!38154 m!389433))

(declare-fun m!389435 () Bool)

(assert (=> start!38154 m!389435))

(declare-fun m!389437 () Bool)

(assert (=> b!392933 m!389437))

(declare-fun m!389439 () Bool)

(assert (=> b!392924 m!389439))

(declare-fun m!389441 () Bool)

(assert (=> b!392924 m!389441))

(declare-fun m!389443 () Bool)

(assert (=> mapNonEmpty!16143 m!389443))

(declare-fun m!389445 () Bool)

(assert (=> b!392932 m!389445))

(declare-fun m!389447 () Bool)

(assert (=> b!392925 m!389447))

(declare-fun m!389449 () Bool)

(assert (=> b!392938 m!389449))

(declare-fun m!389451 () Bool)

(assert (=> b!392938 m!389451))

(declare-fun m!389453 () Bool)

(assert (=> b!392938 m!389453))

(declare-fun m!389455 () Bool)

(assert (=> b!392927 m!389455))

(declare-fun m!389457 () Bool)

(assert (=> b!392937 m!389457))

(declare-fun m!389459 () Bool)

(assert (=> b!392937 m!389459))

(check-sat b_and!16407 (not b!392929) (not b!392932) tp_is_empty!9699 (not b!392927) (not b!392933) (not b!392924) (not mapNonEmpty!16143) (not b!392925) (not b!392938) (not b_next!9027) (not b!392935) (not b!392937) (not start!38154))
(check-sat b_and!16407 (not b_next!9027))
