; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39800 () Bool)

(assert start!39800)

(declare-fun b_free!10059 () Bool)

(declare-fun b_next!10059 () Bool)

(assert (=> start!39800 (= b_free!10059 (not b_next!10059))))

(declare-fun tp!35706 () Bool)

(declare-fun b_and!17795 () Bool)

(assert (=> start!39800 (= tp!35706 b_and!17795)))

(declare-fun b!428884 () Bool)

(declare-fun res!251902 () Bool)

(declare-fun e!254087 () Bool)

(assert (=> b!428884 (=> (not res!251902) (not e!254087))))

(declare-datatypes ((array!26239 0))(
  ( (array!26240 (arr!12566 (Array (_ BitVec 32) (_ BitVec 64))) (size!12918 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26239)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26239 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!428884 (= res!251902 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!428885 () Bool)

(declare-fun e!254092 () Bool)

(assert (=> b!428885 (= e!254087 e!254092)))

(declare-fun res!251907 () Bool)

(assert (=> b!428885 (=> (not res!251907) (not e!254092))))

(declare-fun lt!196039 () array!26239)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26239 (_ BitVec 32)) Bool)

(assert (=> b!428885 (= res!251907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!196039 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!428885 (= lt!196039 (array!26240 (store (arr!12566 _keys!709) i!563 k0!794) (size!12918 _keys!709)))))

(declare-fun b!428886 () Bool)

(declare-fun e!254091 () Bool)

(assert (=> b!428886 (= e!254092 e!254091)))

(declare-fun res!251910 () Bool)

(assert (=> b!428886 (=> (not res!251910) (not e!254091))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!428886 (= res!251910 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16053 0))(
  ( (V!16054 (val!5650 Int)) )
))
(declare-fun minValue!515 () V!16053)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5262 0))(
  ( (ValueCellFull!5262 (v!7893 V!16053)) (EmptyCell!5262) )
))
(declare-datatypes ((array!26241 0))(
  ( (array!26242 (arr!12567 (Array (_ BitVec 32) ValueCell!5262)) (size!12919 (_ BitVec 32))) )
))
(declare-fun lt!196047 () array!26241)

(declare-fun zeroValue!515 () V!16053)

(declare-datatypes ((tuple2!7372 0))(
  ( (tuple2!7373 (_1!3696 (_ BitVec 64)) (_2!3696 V!16053)) )
))
(declare-datatypes ((List!7422 0))(
  ( (Nil!7419) (Cons!7418 (h!8274 tuple2!7372) (t!12938 List!7422)) )
))
(declare-datatypes ((ListLongMap!6299 0))(
  ( (ListLongMap!6300 (toList!3165 List!7422)) )
))
(declare-fun lt!196041 () ListLongMap!6299)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1364 (array!26239 array!26241 (_ BitVec 32) (_ BitVec 32) V!16053 V!16053 (_ BitVec 32) Int) ListLongMap!6299)

(assert (=> b!428886 (= lt!196041 (getCurrentListMapNoExtraKeys!1364 lt!196039 lt!196047 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16053)

(declare-fun _values!549 () array!26241)

(assert (=> b!428886 (= lt!196047 (array!26242 (store (arr!12567 _values!549) i!563 (ValueCellFull!5262 v!412)) (size!12919 _values!549)))))

(declare-fun lt!196044 () ListLongMap!6299)

(assert (=> b!428886 (= lt!196044 (getCurrentListMapNoExtraKeys!1364 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!428888 () Bool)

(declare-datatypes ((Unit!12551 0))(
  ( (Unit!12552) )
))
(declare-fun e!254088 () Unit!12551)

(declare-fun Unit!12553 () Unit!12551)

(assert (=> b!428888 (= e!254088 Unit!12553)))

(declare-fun lt!196040 () Unit!12551)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26239 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12551)

(assert (=> b!428888 (= lt!196040 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!428888 false))

(declare-fun b!428889 () Bool)

(declare-fun res!251909 () Bool)

(assert (=> b!428889 (=> (not res!251909) (not e!254087))))

(assert (=> b!428889 (= res!251909 (or (= (select (arr!12566 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12566 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!428890 () Bool)

(declare-fun res!251908 () Bool)

(assert (=> b!428890 (=> (not res!251908) (not e!254087))))

(assert (=> b!428890 (= res!251908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!428891 () Bool)

(declare-fun res!251913 () Bool)

(assert (=> b!428891 (=> (not res!251913) (not e!254087))))

(declare-datatypes ((List!7423 0))(
  ( (Nil!7420) (Cons!7419 (h!8275 (_ BitVec 64)) (t!12939 List!7423)) )
))
(declare-fun arrayNoDuplicates!0 (array!26239 (_ BitVec 32) List!7423) Bool)

(assert (=> b!428891 (= res!251913 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7420))))

(declare-fun b!428892 () Bool)

(declare-fun res!251911 () Bool)

(assert (=> b!428892 (=> (not res!251911) (not e!254092))))

(assert (=> b!428892 (= res!251911 (bvsle from!863 i!563))))

(declare-fun b!428893 () Bool)

(declare-fun res!251912 () Bool)

(assert (=> b!428893 (=> (not res!251912) (not e!254087))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!428893 (= res!251912 (validMask!0 mask!1025))))

(declare-fun mapIsEmpty!18438 () Bool)

(declare-fun mapRes!18438 () Bool)

(assert (=> mapIsEmpty!18438 mapRes!18438))

(declare-fun b!428894 () Bool)

(declare-fun e!254089 () Bool)

(declare-fun tp_is_empty!11211 () Bool)

(assert (=> b!428894 (= e!254089 tp_is_empty!11211)))

(declare-fun b!428895 () Bool)

(declare-fun e!254085 () Bool)

(assert (=> b!428895 (= e!254091 (not e!254085))))

(declare-fun res!251905 () Bool)

(assert (=> b!428895 (=> res!251905 e!254085)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!428895 (= res!251905 (not (validKeyInArray!0 (select (arr!12566 _keys!709) from!863))))))

(declare-fun lt!196038 () ListLongMap!6299)

(declare-fun lt!196045 () ListLongMap!6299)

(assert (=> b!428895 (= lt!196038 lt!196045)))

(declare-fun lt!196042 () ListLongMap!6299)

(declare-fun +!1315 (ListLongMap!6299 tuple2!7372) ListLongMap!6299)

(assert (=> b!428895 (= lt!196045 (+!1315 lt!196042 (tuple2!7373 k0!794 v!412)))))

(assert (=> b!428895 (= lt!196038 (getCurrentListMapNoExtraKeys!1364 lt!196039 lt!196047 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!428895 (= lt!196042 (getCurrentListMapNoExtraKeys!1364 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!196043 () Unit!12551)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!515 (array!26239 array!26241 (_ BitVec 32) (_ BitVec 32) V!16053 V!16053 (_ BitVec 32) (_ BitVec 64) V!16053 (_ BitVec 32) Int) Unit!12551)

(assert (=> b!428895 (= lt!196043 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!515 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!428896 () Bool)

(declare-fun e!254090 () Bool)

(assert (=> b!428896 (= e!254090 tp_is_empty!11211)))

(declare-fun b!428897 () Bool)

(declare-fun Unit!12554 () Unit!12551)

(assert (=> b!428897 (= e!254088 Unit!12554)))

(declare-fun mapNonEmpty!18438 () Bool)

(declare-fun tp!35705 () Bool)

(assert (=> mapNonEmpty!18438 (= mapRes!18438 (and tp!35705 e!254089))))

(declare-fun mapRest!18438 () (Array (_ BitVec 32) ValueCell!5262))

(declare-fun mapValue!18438 () ValueCell!5262)

(declare-fun mapKey!18438 () (_ BitVec 32))

(assert (=> mapNonEmpty!18438 (= (arr!12567 _values!549) (store mapRest!18438 mapKey!18438 mapValue!18438))))

(declare-fun b!428898 () Bool)

(declare-fun e!254086 () Bool)

(assert (=> b!428898 (= e!254086 (and e!254090 mapRes!18438))))

(declare-fun condMapEmpty!18438 () Bool)

(declare-fun mapDefault!18438 () ValueCell!5262)

(assert (=> b!428898 (= condMapEmpty!18438 (= (arr!12567 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5262)) mapDefault!18438)))))

(declare-fun b!428899 () Bool)

(declare-fun res!251901 () Bool)

(assert (=> b!428899 (=> (not res!251901) (not e!254087))))

(assert (=> b!428899 (= res!251901 (validKeyInArray!0 k0!794))))

(declare-fun b!428887 () Bool)

(declare-fun res!251906 () Bool)

(assert (=> b!428887 (=> (not res!251906) (not e!254092))))

(assert (=> b!428887 (= res!251906 (arrayNoDuplicates!0 lt!196039 #b00000000000000000000000000000000 Nil!7420))))

(declare-fun res!251904 () Bool)

(assert (=> start!39800 (=> (not res!251904) (not e!254087))))

(assert (=> start!39800 (= res!251904 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12918 _keys!709))))))

(assert (=> start!39800 e!254087))

(assert (=> start!39800 tp_is_empty!11211))

(assert (=> start!39800 tp!35706))

(assert (=> start!39800 true))

(declare-fun array_inv!9144 (array!26241) Bool)

(assert (=> start!39800 (and (array_inv!9144 _values!549) e!254086)))

(declare-fun array_inv!9145 (array!26239) Bool)

(assert (=> start!39800 (array_inv!9145 _keys!709)))

(declare-fun b!428900 () Bool)

(assert (=> b!428900 (= e!254085 true)))

(assert (=> b!428900 (not (= (select (arr!12566 _keys!709) from!863) k0!794))))

(declare-fun lt!196046 () Unit!12551)

(assert (=> b!428900 (= lt!196046 e!254088)))

(declare-fun c!55349 () Bool)

(assert (=> b!428900 (= c!55349 (= (select (arr!12566 _keys!709) from!863) k0!794))))

(declare-fun get!6235 (ValueCell!5262 V!16053) V!16053)

(declare-fun dynLambda!762 (Int (_ BitVec 64)) V!16053)

(assert (=> b!428900 (= lt!196041 (+!1315 lt!196045 (tuple2!7373 (select (arr!12566 _keys!709) from!863) (get!6235 (select (arr!12567 _values!549) from!863) (dynLambda!762 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!428901 () Bool)

(declare-fun res!251903 () Bool)

(assert (=> b!428901 (=> (not res!251903) (not e!254087))))

(assert (=> b!428901 (= res!251903 (and (= (size!12919 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12918 _keys!709) (size!12919 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!428902 () Bool)

(declare-fun res!251900 () Bool)

(assert (=> b!428902 (=> (not res!251900) (not e!254087))))

(assert (=> b!428902 (= res!251900 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12918 _keys!709))))))

(assert (= (and start!39800 res!251904) b!428893))

(assert (= (and b!428893 res!251912) b!428901))

(assert (= (and b!428901 res!251903) b!428890))

(assert (= (and b!428890 res!251908) b!428891))

(assert (= (and b!428891 res!251913) b!428902))

(assert (= (and b!428902 res!251900) b!428899))

(assert (= (and b!428899 res!251901) b!428889))

(assert (= (and b!428889 res!251909) b!428884))

(assert (= (and b!428884 res!251902) b!428885))

(assert (= (and b!428885 res!251907) b!428887))

(assert (= (and b!428887 res!251906) b!428892))

(assert (= (and b!428892 res!251911) b!428886))

(assert (= (and b!428886 res!251910) b!428895))

(assert (= (and b!428895 (not res!251905)) b!428900))

(assert (= (and b!428900 c!55349) b!428888))

(assert (= (and b!428900 (not c!55349)) b!428897))

(assert (= (and b!428898 condMapEmpty!18438) mapIsEmpty!18438))

(assert (= (and b!428898 (not condMapEmpty!18438)) mapNonEmpty!18438))

(get-info :version)

(assert (= (and mapNonEmpty!18438 ((_ is ValueCellFull!5262) mapValue!18438)) b!428894))

(assert (= (and b!428898 ((_ is ValueCellFull!5262) mapDefault!18438)) b!428896))

(assert (= start!39800 b!428898))

(declare-fun b_lambda!9177 () Bool)

(assert (=> (not b_lambda!9177) (not b!428900)))

(declare-fun t!12937 () Bool)

(declare-fun tb!3473 () Bool)

(assert (=> (and start!39800 (= defaultEntry!557 defaultEntry!557) t!12937) tb!3473))

(declare-fun result!6465 () Bool)

(assert (=> tb!3473 (= result!6465 tp_is_empty!11211)))

(assert (=> b!428900 t!12937))

(declare-fun b_and!17797 () Bool)

(assert (= b_and!17795 (and (=> t!12937 result!6465) b_and!17797)))

(declare-fun m!417275 () Bool)

(assert (=> b!428900 m!417275))

(declare-fun m!417277 () Bool)

(assert (=> b!428900 m!417277))

(declare-fun m!417279 () Bool)

(assert (=> b!428900 m!417279))

(assert (=> b!428900 m!417279))

(assert (=> b!428900 m!417277))

(declare-fun m!417281 () Bool)

(assert (=> b!428900 m!417281))

(declare-fun m!417283 () Bool)

(assert (=> b!428900 m!417283))

(declare-fun m!417285 () Bool)

(assert (=> b!428888 m!417285))

(declare-fun m!417287 () Bool)

(assert (=> b!428890 m!417287))

(declare-fun m!417289 () Bool)

(assert (=> start!39800 m!417289))

(declare-fun m!417291 () Bool)

(assert (=> start!39800 m!417291))

(declare-fun m!417293 () Bool)

(assert (=> b!428893 m!417293))

(assert (=> b!428895 m!417275))

(declare-fun m!417295 () Bool)

(assert (=> b!428895 m!417295))

(declare-fun m!417297 () Bool)

(assert (=> b!428895 m!417297))

(declare-fun m!417299 () Bool)

(assert (=> b!428895 m!417299))

(assert (=> b!428895 m!417275))

(declare-fun m!417301 () Bool)

(assert (=> b!428895 m!417301))

(declare-fun m!417303 () Bool)

(assert (=> b!428895 m!417303))

(declare-fun m!417305 () Bool)

(assert (=> b!428886 m!417305))

(declare-fun m!417307 () Bool)

(assert (=> b!428886 m!417307))

(declare-fun m!417309 () Bool)

(assert (=> b!428886 m!417309))

(declare-fun m!417311 () Bool)

(assert (=> b!428899 m!417311))

(declare-fun m!417313 () Bool)

(assert (=> b!428885 m!417313))

(declare-fun m!417315 () Bool)

(assert (=> b!428885 m!417315))

(declare-fun m!417317 () Bool)

(assert (=> b!428889 m!417317))

(declare-fun m!417319 () Bool)

(assert (=> b!428884 m!417319))

(declare-fun m!417321 () Bool)

(assert (=> mapNonEmpty!18438 m!417321))

(declare-fun m!417323 () Bool)

(assert (=> b!428891 m!417323))

(declare-fun m!417325 () Bool)

(assert (=> b!428887 m!417325))

(check-sat (not b!428885) (not mapNonEmpty!18438) (not b!428888) b_and!17797 (not b_lambda!9177) tp_is_empty!11211 (not b!428895) (not b!428887) (not start!39800) (not b!428884) (not b!428890) (not b!428900) (not b!428893) (not b_next!10059) (not b!428891) (not b!428899) (not b!428886))
(check-sat b_and!17797 (not b_next!10059))
