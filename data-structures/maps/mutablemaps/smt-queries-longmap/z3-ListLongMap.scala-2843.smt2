; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41054 () Bool)

(assert start!41054)

(declare-fun b_free!10959 () Bool)

(declare-fun b_next!10959 () Bool)

(assert (=> start!41054 (= b_free!10959 (not b_next!10959))))

(declare-fun tp!38706 () Bool)

(declare-fun b_and!19143 () Bool)

(assert (=> start!41054 (= tp!38706 b_and!19143)))

(declare-fun res!273093 () Bool)

(declare-fun e!267073 () Bool)

(assert (=> start!41054 (=> (not res!273093) (not e!267073))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!28363 0))(
  ( (array!28364 (arr!13621 (Array (_ BitVec 32) (_ BitVec 64))) (size!13973 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28363)

(assert (=> start!41054 (= res!273093 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13973 _keys!709))))))

(assert (=> start!41054 e!267073))

(declare-fun tp_is_empty!12297 () Bool)

(assert (=> start!41054 tp_is_empty!12297))

(assert (=> start!41054 tp!38706))

(assert (=> start!41054 true))

(declare-datatypes ((V!17501 0))(
  ( (V!17502 (val!6193 Int)) )
))
(declare-datatypes ((ValueCell!5805 0))(
  ( (ValueCellFull!5805 (v!8459 V!17501)) (EmptyCell!5805) )
))
(declare-datatypes ((array!28365 0))(
  ( (array!28366 (arr!13622 (Array (_ BitVec 32) ValueCell!5805)) (size!13974 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28365)

(declare-fun e!267074 () Bool)

(declare-fun array_inv!9856 (array!28365) Bool)

(assert (=> start!41054 (and (array_inv!9856 _values!549) e!267074)))

(declare-fun array_inv!9857 (array!28363) Bool)

(assert (=> start!41054 (array_inv!9857 _keys!709)))

(declare-fun b!457260 () Bool)

(declare-fun e!267077 () Bool)

(assert (=> b!457260 (= e!267073 e!267077)))

(declare-fun res!273100 () Bool)

(assert (=> b!457260 (=> (not res!273100) (not e!267077))))

(declare-fun lt!206889 () array!28363)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28363 (_ BitVec 32)) Bool)

(assert (=> b!457260 (= res!273100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206889 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!457260 (= lt!206889 (array!28364 (store (arr!13621 _keys!709) i!563 k0!794) (size!13973 _keys!709)))))

(declare-fun b!457261 () Bool)

(declare-fun e!267075 () Bool)

(assert (=> b!457261 (= e!267077 e!267075)))

(declare-fun res!273098 () Bool)

(assert (=> b!457261 (=> (not res!273098) (not e!267075))))

(assert (=> b!457261 (= res!273098 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!17501)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!206884 () array!28365)

(declare-fun zeroValue!515 () V!17501)

(declare-datatypes ((tuple2!8122 0))(
  ( (tuple2!8123 (_1!4071 (_ BitVec 64)) (_2!4071 V!17501)) )
))
(declare-datatypes ((List!8225 0))(
  ( (Nil!8222) (Cons!8221 (h!9077 tuple2!8122) (t!14071 List!8225)) )
))
(declare-datatypes ((ListLongMap!7049 0))(
  ( (ListLongMap!7050 (toList!3540 List!8225)) )
))
(declare-fun lt!206890 () ListLongMap!7049)

(declare-fun getCurrentListMapNoExtraKeys!1715 (array!28363 array!28365 (_ BitVec 32) (_ BitVec 32) V!17501 V!17501 (_ BitVec 32) Int) ListLongMap!7049)

(assert (=> b!457261 (= lt!206890 (getCurrentListMapNoExtraKeys!1715 lt!206889 lt!206884 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17501)

(assert (=> b!457261 (= lt!206884 (array!28366 (store (arr!13622 _values!549) i!563 (ValueCellFull!5805 v!412)) (size!13974 _values!549)))))

(declare-fun lt!206887 () ListLongMap!7049)

(assert (=> b!457261 (= lt!206887 (getCurrentListMapNoExtraKeys!1715 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!457262 () Bool)

(declare-fun e!267079 () Bool)

(assert (=> b!457262 (= e!267079 tp_is_empty!12297)))

(declare-fun b!457263 () Bool)

(declare-fun res!273095 () Bool)

(assert (=> b!457263 (=> (not res!273095) (not e!267073))))

(declare-fun arrayContainsKey!0 (array!28363 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!457263 (= res!273095 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!457264 () Bool)

(declare-fun res!273092 () Bool)

(assert (=> b!457264 (=> (not res!273092) (not e!267073))))

(assert (=> b!457264 (= res!273092 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!457265 () Bool)

(declare-fun e!267072 () Bool)

(declare-fun mapRes!20089 () Bool)

(assert (=> b!457265 (= e!267074 (and e!267072 mapRes!20089))))

(declare-fun condMapEmpty!20089 () Bool)

(declare-fun mapDefault!20089 () ValueCell!5805)

(assert (=> b!457265 (= condMapEmpty!20089 (= (arr!13622 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5805)) mapDefault!20089)))))

(declare-fun b!457266 () Bool)

(declare-fun res!273102 () Bool)

(assert (=> b!457266 (=> (not res!273102) (not e!267073))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!457266 (= res!273102 (validMask!0 mask!1025))))

(declare-fun b!457267 () Bool)

(assert (=> b!457267 (= e!267072 tp_is_empty!12297)))

(declare-fun mapNonEmpty!20089 () Bool)

(declare-fun tp!38707 () Bool)

(assert (=> mapNonEmpty!20089 (= mapRes!20089 (and tp!38707 e!267079))))

(declare-fun mapKey!20089 () (_ BitVec 32))

(declare-fun mapRest!20089 () (Array (_ BitVec 32) ValueCell!5805))

(declare-fun mapValue!20089 () ValueCell!5805)

(assert (=> mapNonEmpty!20089 (= (arr!13622 _values!549) (store mapRest!20089 mapKey!20089 mapValue!20089))))

(declare-fun b!457268 () Bool)

(declare-fun res!273094 () Bool)

(assert (=> b!457268 (=> (not res!273094) (not e!267073))))

(assert (=> b!457268 (= res!273094 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13973 _keys!709))))))

(declare-fun b!457269 () Bool)

(declare-fun res!273103 () Bool)

(assert (=> b!457269 (=> (not res!273103) (not e!267077))))

(declare-datatypes ((List!8226 0))(
  ( (Nil!8223) (Cons!8222 (h!9078 (_ BitVec 64)) (t!14072 List!8226)) )
))
(declare-fun arrayNoDuplicates!0 (array!28363 (_ BitVec 32) List!8226) Bool)

(assert (=> b!457269 (= res!273103 (arrayNoDuplicates!0 lt!206889 #b00000000000000000000000000000000 Nil!8223))))

(declare-fun b!457270 () Bool)

(declare-fun res!273096 () Bool)

(assert (=> b!457270 (=> (not res!273096) (not e!267073))))

(assert (=> b!457270 (= res!273096 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8223))))

(declare-fun b!457271 () Bool)

(declare-fun res!273104 () Bool)

(assert (=> b!457271 (=> (not res!273104) (not e!267077))))

(assert (=> b!457271 (= res!273104 (bvsle from!863 i!563))))

(declare-fun b!457272 () Bool)

(declare-fun e!267076 () Bool)

(assert (=> b!457272 (= e!267076 (bvslt from!863 (size!13973 _keys!709)))))

(declare-fun lt!206888 () ListLongMap!7049)

(declare-fun +!1560 (ListLongMap!7049 tuple2!8122) ListLongMap!7049)

(declare-fun get!6714 (ValueCell!5805 V!17501) V!17501)

(declare-fun dynLambda!872 (Int (_ BitVec 64)) V!17501)

(assert (=> b!457272 (= lt!206890 (+!1560 lt!206888 (tuple2!8123 (select (arr!13621 _keys!709) from!863) (get!6714 (select (arr!13622 _values!549) from!863) (dynLambda!872 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!457273 () Bool)

(declare-fun res!273099 () Bool)

(assert (=> b!457273 (=> (not res!273099) (not e!267073))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!457273 (= res!273099 (validKeyInArray!0 k0!794))))

(declare-fun b!457274 () Bool)

(declare-fun res!273105 () Bool)

(assert (=> b!457274 (=> (not res!273105) (not e!267073))))

(assert (=> b!457274 (= res!273105 (and (= (size!13974 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13973 _keys!709) (size!13974 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!457275 () Bool)

(declare-fun res!273101 () Bool)

(assert (=> b!457275 (=> (not res!273101) (not e!267073))))

(assert (=> b!457275 (= res!273101 (or (= (select (arr!13621 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13621 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!457276 () Bool)

(assert (=> b!457276 (= e!267075 (not e!267076))))

(declare-fun res!273097 () Bool)

(assert (=> b!457276 (=> res!273097 e!267076)))

(assert (=> b!457276 (= res!273097 (not (validKeyInArray!0 (select (arr!13621 _keys!709) from!863))))))

(declare-fun lt!206883 () ListLongMap!7049)

(assert (=> b!457276 (= lt!206883 lt!206888)))

(declare-fun lt!206885 () ListLongMap!7049)

(assert (=> b!457276 (= lt!206888 (+!1560 lt!206885 (tuple2!8123 k0!794 v!412)))))

(assert (=> b!457276 (= lt!206883 (getCurrentListMapNoExtraKeys!1715 lt!206889 lt!206884 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!457276 (= lt!206885 (getCurrentListMapNoExtraKeys!1715 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!13243 0))(
  ( (Unit!13244) )
))
(declare-fun lt!206886 () Unit!13243)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!724 (array!28363 array!28365 (_ BitVec 32) (_ BitVec 32) V!17501 V!17501 (_ BitVec 32) (_ BitVec 64) V!17501 (_ BitVec 32) Int) Unit!13243)

(assert (=> b!457276 (= lt!206886 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!724 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!20089 () Bool)

(assert (=> mapIsEmpty!20089 mapRes!20089))

(assert (= (and start!41054 res!273093) b!457266))

(assert (= (and b!457266 res!273102) b!457274))

(assert (= (and b!457274 res!273105) b!457264))

(assert (= (and b!457264 res!273092) b!457270))

(assert (= (and b!457270 res!273096) b!457268))

(assert (= (and b!457268 res!273094) b!457273))

(assert (= (and b!457273 res!273099) b!457275))

(assert (= (and b!457275 res!273101) b!457263))

(assert (= (and b!457263 res!273095) b!457260))

(assert (= (and b!457260 res!273100) b!457269))

(assert (= (and b!457269 res!273103) b!457271))

(assert (= (and b!457271 res!273104) b!457261))

(assert (= (and b!457261 res!273098) b!457276))

(assert (= (and b!457276 (not res!273097)) b!457272))

(assert (= (and b!457265 condMapEmpty!20089) mapIsEmpty!20089))

(assert (= (and b!457265 (not condMapEmpty!20089)) mapNonEmpty!20089))

(get-info :version)

(assert (= (and mapNonEmpty!20089 ((_ is ValueCellFull!5805) mapValue!20089)) b!457262))

(assert (= (and b!457265 ((_ is ValueCellFull!5805) mapDefault!20089)) b!457267))

(assert (= start!41054 b!457265))

(declare-fun b_lambda!9755 () Bool)

(assert (=> (not b_lambda!9755) (not b!457272)))

(declare-fun t!14070 () Bool)

(declare-fun tb!3803 () Bool)

(assert (=> (and start!41054 (= defaultEntry!557 defaultEntry!557) t!14070) tb!3803))

(declare-fun result!7139 () Bool)

(assert (=> tb!3803 (= result!7139 tp_is_empty!12297)))

(assert (=> b!457272 t!14070))

(declare-fun b_and!19145 () Bool)

(assert (= b_and!19143 (and (=> t!14070 result!7139) b_and!19145)))

(declare-fun m!440651 () Bool)

(assert (=> start!41054 m!440651))

(declare-fun m!440653 () Bool)

(assert (=> start!41054 m!440653))

(declare-fun m!440655 () Bool)

(assert (=> mapNonEmpty!20089 m!440655))

(declare-fun m!440657 () Bool)

(assert (=> b!457266 m!440657))

(declare-fun m!440659 () Bool)

(assert (=> b!457263 m!440659))

(declare-fun m!440661 () Bool)

(assert (=> b!457270 m!440661))

(declare-fun m!440663 () Bool)

(assert (=> b!457261 m!440663))

(declare-fun m!440665 () Bool)

(assert (=> b!457261 m!440665))

(declare-fun m!440667 () Bool)

(assert (=> b!457261 m!440667))

(declare-fun m!440669 () Bool)

(assert (=> b!457276 m!440669))

(declare-fun m!440671 () Bool)

(assert (=> b!457276 m!440671))

(declare-fun m!440673 () Bool)

(assert (=> b!457276 m!440673))

(assert (=> b!457276 m!440669))

(declare-fun m!440675 () Bool)

(assert (=> b!457276 m!440675))

(declare-fun m!440677 () Bool)

(assert (=> b!457276 m!440677))

(declare-fun m!440679 () Bool)

(assert (=> b!457276 m!440679))

(declare-fun m!440681 () Bool)

(assert (=> b!457260 m!440681))

(declare-fun m!440683 () Bool)

(assert (=> b!457260 m!440683))

(declare-fun m!440685 () Bool)

(assert (=> b!457264 m!440685))

(assert (=> b!457272 m!440669))

(declare-fun m!440687 () Bool)

(assert (=> b!457272 m!440687))

(declare-fun m!440689 () Bool)

(assert (=> b!457272 m!440689))

(declare-fun m!440691 () Bool)

(assert (=> b!457272 m!440691))

(assert (=> b!457272 m!440691))

(assert (=> b!457272 m!440687))

(declare-fun m!440693 () Bool)

(assert (=> b!457272 m!440693))

(declare-fun m!440695 () Bool)

(assert (=> b!457275 m!440695))

(declare-fun m!440697 () Bool)

(assert (=> b!457273 m!440697))

(declare-fun m!440699 () Bool)

(assert (=> b!457269 m!440699))

(check-sat (not b!457272) (not b!457263) (not b!457270) (not mapNonEmpty!20089) (not start!41054) (not b_next!10959) (not b!457273) tp_is_empty!12297 (not b!457266) (not b!457269) (not b!457276) b_and!19145 (not b!457260) (not b_lambda!9755) (not b!457261) (not b!457264))
(check-sat b_and!19145 (not b_next!10959))
