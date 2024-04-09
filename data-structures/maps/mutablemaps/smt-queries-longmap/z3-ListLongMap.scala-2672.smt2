; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39860 () Bool)

(assert start!39860)

(declare-fun b_free!10119 () Bool)

(declare-fun b_next!10119 () Bool)

(assert (=> start!39860 (= b_free!10119 (not b_next!10119))))

(declare-fun tp!35886 () Bool)

(declare-fun b_and!17915 () Bool)

(assert (=> start!39860 (= tp!35886 b_and!17915)))

(declare-fun mapIsEmpty!18528 () Bool)

(declare-fun mapRes!18528 () Bool)

(assert (=> mapIsEmpty!18528 mapRes!18528))

(declare-fun b!430695 () Bool)

(declare-fun e!254936 () Bool)

(declare-fun e!254943 () Bool)

(assert (=> b!430695 (= e!254936 (and e!254943 mapRes!18528))))

(declare-fun condMapEmpty!18528 () Bool)

(declare-datatypes ((V!16133 0))(
  ( (V!16134 (val!5680 Int)) )
))
(declare-datatypes ((ValueCell!5292 0))(
  ( (ValueCellFull!5292 (v!7923 V!16133)) (EmptyCell!5292) )
))
(declare-datatypes ((array!26355 0))(
  ( (array!26356 (arr!12624 (Array (_ BitVec 32) ValueCell!5292)) (size!12976 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26355)

(declare-fun mapDefault!18528 () ValueCell!5292)

(assert (=> b!430695 (= condMapEmpty!18528 (= (arr!12624 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5292)) mapDefault!18528)))))

(declare-fun b!430696 () Bool)

(declare-fun res!253203 () Bool)

(declare-fun e!254941 () Bool)

(assert (=> b!430696 (=> (not res!253203) (not e!254941))))

(declare-datatypes ((array!26357 0))(
  ( (array!26358 (arr!12625 (Array (_ BitVec 32) (_ BitVec 64))) (size!12977 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26357)

(declare-datatypes ((List!7472 0))(
  ( (Nil!7469) (Cons!7468 (h!8324 (_ BitVec 64)) (t!13048 List!7472)) )
))
(declare-fun arrayNoDuplicates!0 (array!26357 (_ BitVec 32) List!7472) Bool)

(assert (=> b!430696 (= res!253203 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7469))))

(declare-fun b!430697 () Bool)

(declare-fun res!253206 () Bool)

(assert (=> b!430697 (=> (not res!253206) (not e!254941))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!430697 (= res!253206 (validKeyInArray!0 k0!794))))

(declare-fun b!430698 () Bool)

(declare-fun res!253213 () Bool)

(assert (=> b!430698 (=> (not res!253213) (not e!254941))))

(declare-fun arrayContainsKey!0 (array!26357 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!430698 (= res!253213 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!430699 () Bool)

(declare-fun e!254940 () Bool)

(declare-fun e!254944 () Bool)

(assert (=> b!430699 (= e!254940 e!254944)))

(declare-fun res!253209 () Bool)

(assert (=> b!430699 (=> res!253209 e!254944)))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!430699 (= res!253209 (= k0!794 (select (arr!12625 _keys!709) from!863)))))

(assert (=> b!430699 (not (= (select (arr!12625 _keys!709) from!863) k0!794))))

(declare-datatypes ((Unit!12650 0))(
  ( (Unit!12651) )
))
(declare-fun lt!197144 () Unit!12650)

(declare-fun e!254938 () Unit!12650)

(assert (=> b!430699 (= lt!197144 e!254938)))

(declare-fun c!55439 () Bool)

(assert (=> b!430699 (= c!55439 (= (select (arr!12625 _keys!709) from!863) k0!794))))

(declare-datatypes ((tuple2!7418 0))(
  ( (tuple2!7419 (_1!3719 (_ BitVec 64)) (_2!3719 V!16133)) )
))
(declare-datatypes ((List!7473 0))(
  ( (Nil!7470) (Cons!7469 (h!8325 tuple2!7418) (t!13049 List!7473)) )
))
(declare-datatypes ((ListLongMap!6345 0))(
  ( (ListLongMap!6346 (toList!3188 List!7473)) )
))
(declare-fun lt!197147 () ListLongMap!6345)

(declare-fun lt!197150 () ListLongMap!6345)

(assert (=> b!430699 (= lt!197147 lt!197150)))

(declare-fun lt!197154 () ListLongMap!6345)

(declare-fun lt!197152 () tuple2!7418)

(declare-fun +!1336 (ListLongMap!6345 tuple2!7418) ListLongMap!6345)

(assert (=> b!430699 (= lt!197150 (+!1336 lt!197154 lt!197152))))

(declare-fun lt!197157 () V!16133)

(assert (=> b!430699 (= lt!197152 (tuple2!7419 (select (arr!12625 _keys!709) from!863) lt!197157))))

(declare-fun defaultEntry!557 () Int)

(declare-fun get!6272 (ValueCell!5292 V!16133) V!16133)

(declare-fun dynLambda!779 (Int (_ BitVec 64)) V!16133)

(assert (=> b!430699 (= lt!197157 (get!6272 (select (arr!12624 _values!549) from!863) (dynLambda!779 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!430701 () Bool)

(declare-fun res!253204 () Bool)

(declare-fun e!254935 () Bool)

(assert (=> b!430701 (=> (not res!253204) (not e!254935))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!430701 (= res!253204 (bvsle from!863 i!563))))

(declare-fun b!430702 () Bool)

(declare-fun res!253208 () Bool)

(assert (=> b!430702 (=> (not res!253208) (not e!254935))))

(declare-fun lt!197156 () array!26357)

(assert (=> b!430702 (= res!253208 (arrayNoDuplicates!0 lt!197156 #b00000000000000000000000000000000 Nil!7469))))

(declare-fun b!430703 () Bool)

(assert (=> b!430703 (= e!254941 e!254935)))

(declare-fun res!253201 () Bool)

(assert (=> b!430703 (=> (not res!253201) (not e!254935))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26357 (_ BitVec 32)) Bool)

(assert (=> b!430703 (= res!253201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!197156 mask!1025))))

(assert (=> b!430703 (= lt!197156 (array!26358 (store (arr!12625 _keys!709) i!563 k0!794) (size!12977 _keys!709)))))

(declare-fun b!430704 () Bool)

(declare-fun res!253210 () Bool)

(assert (=> b!430704 (=> (not res!253210) (not e!254941))))

(assert (=> b!430704 (= res!253210 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12977 _keys!709))))))

(declare-fun b!430705 () Bool)

(declare-fun res!253207 () Bool)

(assert (=> b!430705 (=> (not res!253207) (not e!254941))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!430705 (= res!253207 (validMask!0 mask!1025))))

(declare-fun b!430706 () Bool)

(declare-fun tp_is_empty!11271 () Bool)

(assert (=> b!430706 (= e!254943 tp_is_empty!11271)))

(declare-fun b!430707 () Bool)

(declare-fun res!253205 () Bool)

(assert (=> b!430707 (=> (not res!253205) (not e!254941))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!430707 (= res!253205 (and (= (size!12976 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12977 _keys!709) (size!12976 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!430708 () Bool)

(declare-fun e!254939 () Bool)

(assert (=> b!430708 (= e!254935 e!254939)))

(declare-fun res!253215 () Bool)

(assert (=> b!430708 (=> (not res!253215) (not e!254939))))

(assert (=> b!430708 (= res!253215 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun zeroValue!515 () V!16133)

(declare-fun minValue!515 () V!16133)

(declare-fun lt!197153 () array!26355)

(declare-fun getCurrentListMapNoExtraKeys!1384 (array!26357 array!26355 (_ BitVec 32) (_ BitVec 32) V!16133 V!16133 (_ BitVec 32) Int) ListLongMap!6345)

(assert (=> b!430708 (= lt!197147 (getCurrentListMapNoExtraKeys!1384 lt!197156 lt!197153 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16133)

(assert (=> b!430708 (= lt!197153 (array!26356 (store (arr!12624 _values!549) i!563 (ValueCellFull!5292 v!412)) (size!12976 _values!549)))))

(declare-fun lt!197149 () ListLongMap!6345)

(assert (=> b!430708 (= lt!197149 (getCurrentListMapNoExtraKeys!1384 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!430709 () Bool)

(declare-fun Unit!12652 () Unit!12650)

(assert (=> b!430709 (= e!254938 Unit!12652)))

(declare-fun b!430710 () Bool)

(assert (=> b!430710 (= e!254944 true)))

(declare-fun lt!197145 () ListLongMap!6345)

(declare-fun lt!197143 () tuple2!7418)

(assert (=> b!430710 (= lt!197150 (+!1336 (+!1336 lt!197145 lt!197152) lt!197143))))

(declare-fun lt!197148 () Unit!12650)

(declare-fun addCommutativeForDiffKeys!354 (ListLongMap!6345 (_ BitVec 64) V!16133 (_ BitVec 64) V!16133) Unit!12650)

(assert (=> b!430710 (= lt!197148 (addCommutativeForDiffKeys!354 lt!197145 k0!794 v!412 (select (arr!12625 _keys!709) from!863) lt!197157))))

(declare-fun b!430711 () Bool)

(declare-fun e!254937 () Bool)

(assert (=> b!430711 (= e!254937 tp_is_empty!11271)))

(declare-fun res!253212 () Bool)

(assert (=> start!39860 (=> (not res!253212) (not e!254941))))

(assert (=> start!39860 (= res!253212 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12977 _keys!709))))))

(assert (=> start!39860 e!254941))

(assert (=> start!39860 tp_is_empty!11271))

(assert (=> start!39860 tp!35886))

(assert (=> start!39860 true))

(declare-fun array_inv!9182 (array!26355) Bool)

(assert (=> start!39860 (and (array_inv!9182 _values!549) e!254936)))

(declare-fun array_inv!9183 (array!26357) Bool)

(assert (=> start!39860 (array_inv!9183 _keys!709)))

(declare-fun b!430700 () Bool)

(declare-fun res!253214 () Bool)

(assert (=> b!430700 (=> (not res!253214) (not e!254941))))

(assert (=> b!430700 (= res!253214 (or (= (select (arr!12625 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12625 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!430712 () Bool)

(declare-fun Unit!12653 () Unit!12650)

(assert (=> b!430712 (= e!254938 Unit!12653)))

(declare-fun lt!197155 () Unit!12650)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26357 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12650)

(assert (=> b!430712 (= lt!197155 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!430712 false))

(declare-fun b!430713 () Bool)

(assert (=> b!430713 (= e!254939 (not e!254940))))

(declare-fun res!253202 () Bool)

(assert (=> b!430713 (=> res!253202 e!254940)))

(assert (=> b!430713 (= res!253202 (not (validKeyInArray!0 (select (arr!12625 _keys!709) from!863))))))

(declare-fun lt!197146 () ListLongMap!6345)

(assert (=> b!430713 (= lt!197146 lt!197154)))

(assert (=> b!430713 (= lt!197154 (+!1336 lt!197145 lt!197143))))

(assert (=> b!430713 (= lt!197146 (getCurrentListMapNoExtraKeys!1384 lt!197156 lt!197153 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!430713 (= lt!197143 (tuple2!7419 k0!794 v!412))))

(assert (=> b!430713 (= lt!197145 (getCurrentListMapNoExtraKeys!1384 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!197151 () Unit!12650)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!531 (array!26357 array!26355 (_ BitVec 32) (_ BitVec 32) V!16133 V!16133 (_ BitVec 32) (_ BitVec 64) V!16133 (_ BitVec 32) Int) Unit!12650)

(assert (=> b!430713 (= lt!197151 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!531 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!430714 () Bool)

(declare-fun res!253211 () Bool)

(assert (=> b!430714 (=> (not res!253211) (not e!254941))))

(assert (=> b!430714 (= res!253211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!18528 () Bool)

(declare-fun tp!35885 () Bool)

(assert (=> mapNonEmpty!18528 (= mapRes!18528 (and tp!35885 e!254937))))

(declare-fun mapRest!18528 () (Array (_ BitVec 32) ValueCell!5292))

(declare-fun mapKey!18528 () (_ BitVec 32))

(declare-fun mapValue!18528 () ValueCell!5292)

(assert (=> mapNonEmpty!18528 (= (arr!12624 _values!549) (store mapRest!18528 mapKey!18528 mapValue!18528))))

(assert (= (and start!39860 res!253212) b!430705))

(assert (= (and b!430705 res!253207) b!430707))

(assert (= (and b!430707 res!253205) b!430714))

(assert (= (and b!430714 res!253211) b!430696))

(assert (= (and b!430696 res!253203) b!430704))

(assert (= (and b!430704 res!253210) b!430697))

(assert (= (and b!430697 res!253206) b!430700))

(assert (= (and b!430700 res!253214) b!430698))

(assert (= (and b!430698 res!253213) b!430703))

(assert (= (and b!430703 res!253201) b!430702))

(assert (= (and b!430702 res!253208) b!430701))

(assert (= (and b!430701 res!253204) b!430708))

(assert (= (and b!430708 res!253215) b!430713))

(assert (= (and b!430713 (not res!253202)) b!430699))

(assert (= (and b!430699 c!55439) b!430712))

(assert (= (and b!430699 (not c!55439)) b!430709))

(assert (= (and b!430699 (not res!253209)) b!430710))

(assert (= (and b!430695 condMapEmpty!18528) mapIsEmpty!18528))

(assert (= (and b!430695 (not condMapEmpty!18528)) mapNonEmpty!18528))

(get-info :version)

(assert (= (and mapNonEmpty!18528 ((_ is ValueCellFull!5292) mapValue!18528)) b!430711))

(assert (= (and b!430695 ((_ is ValueCellFull!5292) mapDefault!18528)) b!430706))

(assert (= start!39860 b!430695))

(declare-fun b_lambda!9237 () Bool)

(assert (=> (not b_lambda!9237) (not b!430699)))

(declare-fun t!13047 () Bool)

(declare-fun tb!3533 () Bool)

(assert (=> (and start!39860 (= defaultEntry!557 defaultEntry!557) t!13047) tb!3533))

(declare-fun result!6585 () Bool)

(assert (=> tb!3533 (= result!6585 tp_is_empty!11271)))

(assert (=> b!430699 t!13047))

(declare-fun b_and!17917 () Bool)

(assert (= b_and!17915 (and (=> t!13047 result!6585) b_and!17917)))

(declare-fun m!418913 () Bool)

(assert (=> b!430698 m!418913))

(declare-fun m!418915 () Bool)

(assert (=> b!430710 m!418915))

(assert (=> b!430710 m!418915))

(declare-fun m!418917 () Bool)

(assert (=> b!430710 m!418917))

(declare-fun m!418919 () Bool)

(assert (=> b!430710 m!418919))

(assert (=> b!430710 m!418919))

(declare-fun m!418921 () Bool)

(assert (=> b!430710 m!418921))

(declare-fun m!418923 () Bool)

(assert (=> b!430708 m!418923))

(declare-fun m!418925 () Bool)

(assert (=> b!430708 m!418925))

(declare-fun m!418927 () Bool)

(assert (=> b!430708 m!418927))

(declare-fun m!418929 () Bool)

(assert (=> b!430712 m!418929))

(declare-fun m!418931 () Bool)

(assert (=> b!430705 m!418931))

(assert (=> b!430699 m!418919))

(declare-fun m!418933 () Bool)

(assert (=> b!430699 m!418933))

(declare-fun m!418935 () Bool)

(assert (=> b!430699 m!418935))

(declare-fun m!418937 () Bool)

(assert (=> b!430699 m!418937))

(assert (=> b!430699 m!418937))

(assert (=> b!430699 m!418933))

(declare-fun m!418939 () Bool)

(assert (=> b!430699 m!418939))

(declare-fun m!418941 () Bool)

(assert (=> b!430700 m!418941))

(declare-fun m!418943 () Bool)

(assert (=> mapNonEmpty!18528 m!418943))

(declare-fun m!418945 () Bool)

(assert (=> b!430696 m!418945))

(declare-fun m!418947 () Bool)

(assert (=> b!430714 m!418947))

(declare-fun m!418949 () Bool)

(assert (=> b!430697 m!418949))

(declare-fun m!418951 () Bool)

(assert (=> start!39860 m!418951))

(declare-fun m!418953 () Bool)

(assert (=> start!39860 m!418953))

(assert (=> b!430713 m!418919))

(declare-fun m!418955 () Bool)

(assert (=> b!430713 m!418955))

(declare-fun m!418957 () Bool)

(assert (=> b!430713 m!418957))

(assert (=> b!430713 m!418919))

(declare-fun m!418959 () Bool)

(assert (=> b!430713 m!418959))

(declare-fun m!418961 () Bool)

(assert (=> b!430713 m!418961))

(declare-fun m!418963 () Bool)

(assert (=> b!430713 m!418963))

(declare-fun m!418965 () Bool)

(assert (=> b!430703 m!418965))

(declare-fun m!418967 () Bool)

(assert (=> b!430703 m!418967))

(declare-fun m!418969 () Bool)

(assert (=> b!430702 m!418969))

(check-sat (not b!430705) (not b_lambda!9237) (not b!430712) (not b!430698) (not start!39860) (not b!430713) (not b!430708) (not b!430703) (not b!430702) (not b_next!10119) (not b!430699) (not b!430710) (not b!430714) (not b!430696) (not mapNonEmpty!18528) (not b!430697) tp_is_empty!11271 b_and!17917)
(check-sat b_and!17917 (not b_next!10119))
