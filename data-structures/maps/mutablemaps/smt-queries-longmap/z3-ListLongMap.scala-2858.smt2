; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41188 () Bool)

(assert start!41188)

(declare-fun b_free!11049 () Bool)

(declare-fun b_next!11049 () Bool)

(assert (=> start!41188 (= b_free!11049 (not b_next!11049))))

(declare-fun tp!38983 () Bool)

(declare-fun b_and!19355 () Bool)

(assert (=> start!41188 (= tp!38983 b_and!19355)))

(declare-fun b!460114 () Bool)

(declare-fun e!268457 () Bool)

(declare-fun e!268455 () Bool)

(assert (=> b!460114 (= e!268457 e!268455)))

(declare-fun res!275155 () Bool)

(assert (=> b!460114 (=> res!275155 e!268455)))

(declare-fun k0!794 () (_ BitVec 64))

(declare-datatypes ((array!28535 0))(
  ( (array!28536 (arr!13705 (Array (_ BitVec 32) (_ BitVec 64))) (size!14057 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28535)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!460114 (= res!275155 (= k0!794 (select (arr!13705 _keys!709) from!863)))))

(assert (=> b!460114 (not (= (select (arr!13705 _keys!709) from!863) k0!794))))

(declare-datatypes ((Unit!13340 0))(
  ( (Unit!13341) )
))
(declare-fun lt!208374 () Unit!13340)

(declare-fun e!268453 () Unit!13340)

(assert (=> b!460114 (= lt!208374 e!268453)))

(declare-fun c!56447 () Bool)

(assert (=> b!460114 (= c!56447 (= (select (arr!13705 _keys!709) from!863) k0!794))))

(declare-datatypes ((V!17621 0))(
  ( (V!17622 (val!6238 Int)) )
))
(declare-datatypes ((tuple2!8192 0))(
  ( (tuple2!8193 (_1!4106 (_ BitVec 64)) (_2!4106 V!17621)) )
))
(declare-datatypes ((List!8294 0))(
  ( (Nil!8291) (Cons!8290 (h!9146 tuple2!8192) (t!14230 List!8294)) )
))
(declare-datatypes ((ListLongMap!7119 0))(
  ( (ListLongMap!7120 (toList!3575 List!8294)) )
))
(declare-fun lt!208377 () ListLongMap!7119)

(declare-fun lt!208379 () ListLongMap!7119)

(assert (=> b!460114 (= lt!208377 lt!208379)))

(declare-fun lt!208378 () ListLongMap!7119)

(declare-fun lt!208375 () tuple2!8192)

(declare-fun +!1594 (ListLongMap!7119 tuple2!8192) ListLongMap!7119)

(assert (=> b!460114 (= lt!208379 (+!1594 lt!208378 lt!208375))))

(declare-fun lt!208376 () V!17621)

(assert (=> b!460114 (= lt!208375 (tuple2!8193 (select (arr!13705 _keys!709) from!863) lt!208376))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5850 0))(
  ( (ValueCellFull!5850 (v!8512 V!17621)) (EmptyCell!5850) )
))
(declare-datatypes ((array!28537 0))(
  ( (array!28538 (arr!13706 (Array (_ BitVec 32) ValueCell!5850)) (size!14058 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28537)

(declare-fun get!6778 (ValueCell!5850 V!17621) V!17621)

(declare-fun dynLambda!902 (Int (_ BitVec 64)) V!17621)

(assert (=> b!460114 (= lt!208376 (get!6778 (select (arr!13706 _values!549) from!863) (dynLambda!902 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!20230 () Bool)

(declare-fun mapRes!20230 () Bool)

(declare-fun tp!38982 () Bool)

(declare-fun e!268456 () Bool)

(assert (=> mapNonEmpty!20230 (= mapRes!20230 (and tp!38982 e!268456))))

(declare-fun mapValue!20230 () ValueCell!5850)

(declare-fun mapKey!20230 () (_ BitVec 32))

(declare-fun mapRest!20230 () (Array (_ BitVec 32) ValueCell!5850))

(assert (=> mapNonEmpty!20230 (= (arr!13706 _values!549) (store mapRest!20230 mapKey!20230 mapValue!20230))))

(declare-fun b!460115 () Bool)

(declare-fun Unit!13342 () Unit!13340)

(assert (=> b!460115 (= e!268453 Unit!13342)))

(declare-fun lt!208372 () Unit!13340)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28535 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13340)

(assert (=> b!460115 (= lt!208372 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!460115 false))

(declare-fun b!460116 () Bool)

(declare-fun res!275156 () Bool)

(declare-fun e!268462 () Bool)

(assert (=> b!460116 (=> (not res!275156) (not e!268462))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!460116 (= res!275156 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14057 _keys!709))))))

(declare-fun b!460117 () Bool)

(declare-fun res!275150 () Bool)

(assert (=> b!460117 (=> (not res!275150) (not e!268462))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!460117 (= res!275150 (validKeyInArray!0 k0!794))))

(declare-fun b!460118 () Bool)

(declare-fun res!275159 () Bool)

(assert (=> b!460118 (=> (not res!275159) (not e!268462))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28535 (_ BitVec 32)) Bool)

(assert (=> b!460118 (= res!275159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!460119 () Bool)

(declare-fun tp_is_empty!12387 () Bool)

(assert (=> b!460119 (= e!268456 tp_is_empty!12387)))

(declare-fun b!460120 () Bool)

(declare-fun e!268461 () Bool)

(declare-fun e!268458 () Bool)

(assert (=> b!460120 (= e!268461 e!268458)))

(declare-fun res!275153 () Bool)

(assert (=> b!460120 (=> (not res!275153) (not e!268458))))

(assert (=> b!460120 (= res!275153 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!17621)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!208380 () array!28537)

(declare-fun zeroValue!515 () V!17621)

(declare-fun lt!208370 () array!28535)

(declare-fun getCurrentListMapNoExtraKeys!1745 (array!28535 array!28537 (_ BitVec 32) (_ BitVec 32) V!17621 V!17621 (_ BitVec 32) Int) ListLongMap!7119)

(assert (=> b!460120 (= lt!208377 (getCurrentListMapNoExtraKeys!1745 lt!208370 lt!208380 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17621)

(assert (=> b!460120 (= lt!208380 (array!28538 (store (arr!13706 _values!549) i!563 (ValueCellFull!5850 v!412)) (size!14058 _values!549)))))

(declare-fun lt!208382 () ListLongMap!7119)

(assert (=> b!460120 (= lt!208382 (getCurrentListMapNoExtraKeys!1745 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!20230 () Bool)

(assert (=> mapIsEmpty!20230 mapRes!20230))

(declare-fun b!460121 () Bool)

(declare-fun res!275157 () Bool)

(assert (=> b!460121 (=> (not res!275157) (not e!268462))))

(assert (=> b!460121 (= res!275157 (or (= (select (arr!13705 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13705 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!460122 () Bool)

(declare-fun res!275160 () Bool)

(assert (=> b!460122 (=> (not res!275160) (not e!268461))))

(declare-datatypes ((List!8295 0))(
  ( (Nil!8292) (Cons!8291 (h!9147 (_ BitVec 64)) (t!14231 List!8295)) )
))
(declare-fun arrayNoDuplicates!0 (array!28535 (_ BitVec 32) List!8295) Bool)

(assert (=> b!460122 (= res!275160 (arrayNoDuplicates!0 lt!208370 #b00000000000000000000000000000000 Nil!8292))))

(declare-fun b!460123 () Bool)

(declare-fun e!268459 () Bool)

(assert (=> b!460123 (= e!268459 tp_is_empty!12387)))

(declare-fun b!460124 () Bool)

(assert (=> b!460124 (= e!268455 true)))

(declare-fun lt!208369 () ListLongMap!7119)

(declare-fun lt!208371 () tuple2!8192)

(assert (=> b!460124 (= lt!208379 (+!1594 (+!1594 lt!208369 lt!208375) lt!208371))))

(declare-fun lt!208381 () Unit!13340)

(declare-fun addCommutativeForDiffKeys!420 (ListLongMap!7119 (_ BitVec 64) V!17621 (_ BitVec 64) V!17621) Unit!13340)

(assert (=> b!460124 (= lt!208381 (addCommutativeForDiffKeys!420 lt!208369 k0!794 v!412 (select (arr!13705 _keys!709) from!863) lt!208376))))

(declare-fun res!275152 () Bool)

(assert (=> start!41188 (=> (not res!275152) (not e!268462))))

(assert (=> start!41188 (= res!275152 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14057 _keys!709))))))

(assert (=> start!41188 e!268462))

(assert (=> start!41188 tp_is_empty!12387))

(assert (=> start!41188 tp!38983))

(assert (=> start!41188 true))

(declare-fun e!268454 () Bool)

(declare-fun array_inv!9908 (array!28537) Bool)

(assert (=> start!41188 (and (array_inv!9908 _values!549) e!268454)))

(declare-fun array_inv!9909 (array!28535) Bool)

(assert (=> start!41188 (array_inv!9909 _keys!709)))

(declare-fun b!460125 () Bool)

(assert (=> b!460125 (= e!268458 (not e!268457))))

(declare-fun res!275161 () Bool)

(assert (=> b!460125 (=> res!275161 e!268457)))

(assert (=> b!460125 (= res!275161 (not (validKeyInArray!0 (select (arr!13705 _keys!709) from!863))))))

(declare-fun lt!208373 () ListLongMap!7119)

(assert (=> b!460125 (= lt!208373 lt!208378)))

(assert (=> b!460125 (= lt!208378 (+!1594 lt!208369 lt!208371))))

(assert (=> b!460125 (= lt!208373 (getCurrentListMapNoExtraKeys!1745 lt!208370 lt!208380 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!460125 (= lt!208371 (tuple2!8193 k0!794 v!412))))

(assert (=> b!460125 (= lt!208369 (getCurrentListMapNoExtraKeys!1745 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!208383 () Unit!13340)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!748 (array!28535 array!28537 (_ BitVec 32) (_ BitVec 32) V!17621 V!17621 (_ BitVec 32) (_ BitVec 64) V!17621 (_ BitVec 32) Int) Unit!13340)

(assert (=> b!460125 (= lt!208383 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!748 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!460126 () Bool)

(declare-fun res!275147 () Bool)

(assert (=> b!460126 (=> (not res!275147) (not e!268462))))

(assert (=> b!460126 (= res!275147 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8292))))

(declare-fun b!460127 () Bool)

(declare-fun res!275154 () Bool)

(assert (=> b!460127 (=> (not res!275154) (not e!268461))))

(assert (=> b!460127 (= res!275154 (bvsle from!863 i!563))))

(declare-fun b!460128 () Bool)

(declare-fun res!275148 () Bool)

(assert (=> b!460128 (=> (not res!275148) (not e!268462))))

(assert (=> b!460128 (= res!275148 (and (= (size!14058 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14057 _keys!709) (size!14058 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!460129 () Bool)

(declare-fun Unit!13343 () Unit!13340)

(assert (=> b!460129 (= e!268453 Unit!13343)))

(declare-fun b!460130 () Bool)

(assert (=> b!460130 (= e!268462 e!268461)))

(declare-fun res!275149 () Bool)

(assert (=> b!460130 (=> (not res!275149) (not e!268461))))

(assert (=> b!460130 (= res!275149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208370 mask!1025))))

(assert (=> b!460130 (= lt!208370 (array!28536 (store (arr!13705 _keys!709) i!563 k0!794) (size!14057 _keys!709)))))

(declare-fun b!460131 () Bool)

(declare-fun res!275158 () Bool)

(assert (=> b!460131 (=> (not res!275158) (not e!268462))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!460131 (= res!275158 (validMask!0 mask!1025))))

(declare-fun b!460132 () Bool)

(declare-fun res!275151 () Bool)

(assert (=> b!460132 (=> (not res!275151) (not e!268462))))

(declare-fun arrayContainsKey!0 (array!28535 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!460132 (= res!275151 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!460133 () Bool)

(assert (=> b!460133 (= e!268454 (and e!268459 mapRes!20230))))

(declare-fun condMapEmpty!20230 () Bool)

(declare-fun mapDefault!20230 () ValueCell!5850)

(assert (=> b!460133 (= condMapEmpty!20230 (= (arr!13706 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5850)) mapDefault!20230)))))

(assert (= (and start!41188 res!275152) b!460131))

(assert (= (and b!460131 res!275158) b!460128))

(assert (= (and b!460128 res!275148) b!460118))

(assert (= (and b!460118 res!275159) b!460126))

(assert (= (and b!460126 res!275147) b!460116))

(assert (= (and b!460116 res!275156) b!460117))

(assert (= (and b!460117 res!275150) b!460121))

(assert (= (and b!460121 res!275157) b!460132))

(assert (= (and b!460132 res!275151) b!460130))

(assert (= (and b!460130 res!275149) b!460122))

(assert (= (and b!460122 res!275160) b!460127))

(assert (= (and b!460127 res!275154) b!460120))

(assert (= (and b!460120 res!275153) b!460125))

(assert (= (and b!460125 (not res!275161)) b!460114))

(assert (= (and b!460114 c!56447) b!460115))

(assert (= (and b!460114 (not c!56447)) b!460129))

(assert (= (and b!460114 (not res!275155)) b!460124))

(assert (= (and b!460133 condMapEmpty!20230) mapIsEmpty!20230))

(assert (= (and b!460133 (not condMapEmpty!20230)) mapNonEmpty!20230))

(get-info :version)

(assert (= (and mapNonEmpty!20230 ((_ is ValueCellFull!5850) mapValue!20230)) b!460119))

(assert (= (and b!460133 ((_ is ValueCellFull!5850) mapDefault!20230)) b!460123))

(assert (= start!41188 b!460133))

(declare-fun b_lambda!9913 () Bool)

(assert (=> (not b_lambda!9913) (not b!460114)))

(declare-fun t!14229 () Bool)

(declare-fun tb!3893 () Bool)

(assert (=> (and start!41188 (= defaultEntry!557 defaultEntry!557) t!14229) tb!3893))

(declare-fun result!7323 () Bool)

(assert (=> tb!3893 (= result!7323 tp_is_empty!12387)))

(assert (=> b!460114 t!14229))

(declare-fun b_and!19357 () Bool)

(assert (= b_and!19355 (and (=> t!14229 result!7323) b_and!19357)))

(declare-fun m!443349 () Bool)

(assert (=> b!460121 m!443349))

(declare-fun m!443351 () Bool)

(assert (=> b!460131 m!443351))

(declare-fun m!443353 () Bool)

(assert (=> b!460124 m!443353))

(assert (=> b!460124 m!443353))

(declare-fun m!443355 () Bool)

(assert (=> b!460124 m!443355))

(declare-fun m!443357 () Bool)

(assert (=> b!460124 m!443357))

(assert (=> b!460124 m!443357))

(declare-fun m!443359 () Bool)

(assert (=> b!460124 m!443359))

(declare-fun m!443361 () Bool)

(assert (=> b!460122 m!443361))

(declare-fun m!443363 () Bool)

(assert (=> b!460126 m!443363))

(declare-fun m!443365 () Bool)

(assert (=> b!460117 m!443365))

(declare-fun m!443367 () Bool)

(assert (=> b!460130 m!443367))

(declare-fun m!443369 () Bool)

(assert (=> b!460130 m!443369))

(declare-fun m!443371 () Bool)

(assert (=> b!460120 m!443371))

(declare-fun m!443373 () Bool)

(assert (=> b!460120 m!443373))

(declare-fun m!443375 () Bool)

(assert (=> b!460120 m!443375))

(declare-fun m!443377 () Bool)

(assert (=> b!460118 m!443377))

(declare-fun m!443379 () Bool)

(assert (=> start!41188 m!443379))

(declare-fun m!443381 () Bool)

(assert (=> start!41188 m!443381))

(assert (=> b!460125 m!443357))

(declare-fun m!443383 () Bool)

(assert (=> b!460125 m!443383))

(declare-fun m!443385 () Bool)

(assert (=> b!460125 m!443385))

(declare-fun m!443387 () Bool)

(assert (=> b!460125 m!443387))

(assert (=> b!460125 m!443357))

(declare-fun m!443389 () Bool)

(assert (=> b!460125 m!443389))

(declare-fun m!443391 () Bool)

(assert (=> b!460125 m!443391))

(declare-fun m!443393 () Bool)

(assert (=> b!460115 m!443393))

(assert (=> b!460114 m!443357))

(declare-fun m!443395 () Bool)

(assert (=> b!460114 m!443395))

(declare-fun m!443397 () Bool)

(assert (=> b!460114 m!443397))

(declare-fun m!443399 () Bool)

(assert (=> b!460114 m!443399))

(assert (=> b!460114 m!443397))

(assert (=> b!460114 m!443395))

(declare-fun m!443401 () Bool)

(assert (=> b!460114 m!443401))

(declare-fun m!443403 () Bool)

(assert (=> mapNonEmpty!20230 m!443403))

(declare-fun m!443405 () Bool)

(assert (=> b!460132 m!443405))

(check-sat (not b!460120) (not b!460126) (not b!460118) (not b_lambda!9913) (not start!41188) (not b_next!11049) (not b!460130) (not b!460117) (not b!460122) (not b!460115) (not b!460124) (not mapNonEmpty!20230) (not b!460125) tp_is_empty!12387 b_and!19357 (not b!460132) (not b!460131) (not b!460114))
(check-sat b_and!19357 (not b_next!11049))
