; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39254 () Bool)

(assert start!39254)

(declare-fun b_free!9513 () Bool)

(declare-fun b_next!9513 () Bool)

(assert (=> start!39254 (= b_free!9513 (not b_next!9513))))

(declare-fun tp!34068 () Bool)

(declare-fun b_and!16919 () Bool)

(assert (=> start!39254 (= tp!34068 b_and!16919)))

(declare-datatypes ((V!15325 0))(
  ( (V!15326 (val!5377 Int)) )
))
(declare-datatypes ((tuple2!6922 0))(
  ( (tuple2!6923 (_1!3471 (_ BitVec 64)) (_2!3471 V!15325)) )
))
(declare-datatypes ((List!6979 0))(
  ( (Nil!6976) (Cons!6975 (h!7831 tuple2!6922) (t!12165 List!6979)) )
))
(declare-datatypes ((ListLongMap!5849 0))(
  ( (ListLongMap!5850 (toList!2940 List!6979)) )
))
(declare-fun call!28715 () ListLongMap!5849)

(declare-fun e!247568 () Bool)

(declare-fun call!28714 () ListLongMap!5849)

(declare-fun v!412 () V!15325)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun b!414226 () Bool)

(declare-fun +!1156 (ListLongMap!5849 tuple2!6922) ListLongMap!5849)

(assert (=> b!414226 (= e!247568 (= call!28715 (+!1156 call!28714 (tuple2!6923 k0!794 v!412))))))

(declare-fun mapNonEmpty!17619 () Bool)

(declare-fun mapRes!17619 () Bool)

(declare-fun tp!34067 () Bool)

(declare-fun e!247572 () Bool)

(assert (=> mapNonEmpty!17619 (= mapRes!17619 (and tp!34067 e!247572))))

(declare-datatypes ((ValueCell!4989 0))(
  ( (ValueCellFull!4989 (v!7620 V!15325)) (EmptyCell!4989) )
))
(declare-datatypes ((array!25169 0))(
  ( (array!25170 (arr!12031 (Array (_ BitVec 32) ValueCell!4989)) (size!12383 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25169)

(declare-fun mapRest!17619 () (Array (_ BitVec 32) ValueCell!4989))

(declare-fun mapKey!17619 () (_ BitVec 32))

(declare-fun mapValue!17619 () ValueCell!4989)

(assert (=> mapNonEmpty!17619 (= (arr!12031 _values!549) (store mapRest!17619 mapKey!17619 mapValue!17619))))

(declare-fun b!414227 () Bool)

(declare-fun res!240920 () Bool)

(declare-fun e!247573 () Bool)

(assert (=> b!414227 (=> (not res!240920) (not e!247573))))

(declare-datatypes ((array!25171 0))(
  ( (array!25172 (arr!12032 (Array (_ BitVec 32) (_ BitVec 64))) (size!12384 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25171)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!414227 (= res!240920 (or (= (select (arr!12032 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12032 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!240912 () Bool)

(assert (=> start!39254 (=> (not res!240912) (not e!247573))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39254 (= res!240912 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12384 _keys!709))))))

(assert (=> start!39254 e!247573))

(declare-fun tp_is_empty!10665 () Bool)

(assert (=> start!39254 tp_is_empty!10665))

(assert (=> start!39254 tp!34068))

(assert (=> start!39254 true))

(declare-fun e!247576 () Bool)

(declare-fun array_inv!8774 (array!25169) Bool)

(assert (=> start!39254 (and (array_inv!8774 _values!549) e!247576)))

(declare-fun array_inv!8775 (array!25171) Bool)

(assert (=> start!39254 (array_inv!8775 _keys!709)))

(declare-fun b!414228 () Bool)

(declare-fun res!240923 () Bool)

(assert (=> b!414228 (=> (not res!240923) (not e!247573))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25171 (_ BitVec 32)) Bool)

(assert (=> b!414228 (= res!240923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!414229 () Bool)

(declare-fun res!240924 () Bool)

(declare-fun e!247575 () Bool)

(assert (=> b!414229 (=> (not res!240924) (not e!247575))))

(declare-fun lt!189956 () array!25171)

(declare-datatypes ((List!6980 0))(
  ( (Nil!6977) (Cons!6976 (h!7832 (_ BitVec 64)) (t!12166 List!6980)) )
))
(declare-fun arrayNoDuplicates!0 (array!25171 (_ BitVec 32) List!6980) Bool)

(assert (=> b!414229 (= res!240924 (arrayNoDuplicates!0 lt!189956 #b00000000000000000000000000000000 Nil!6977))))

(declare-fun b!414230 () Bool)

(declare-fun res!240921 () Bool)

(assert (=> b!414230 (=> (not res!240921) (not e!247573))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!414230 (= res!240921 (validKeyInArray!0 k0!794))))

(declare-fun b!414231 () Bool)

(declare-fun res!240915 () Bool)

(assert (=> b!414231 (=> (not res!240915) (not e!247573))))

(assert (=> b!414231 (= res!240915 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12384 _keys!709))))))

(declare-fun b!414232 () Bool)

(declare-fun res!240917 () Bool)

(assert (=> b!414232 (=> (not res!240917) (not e!247573))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!414232 (= res!240917 (and (= (size!12383 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12384 _keys!709) (size!12383 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!414233 () Bool)

(declare-fun e!247569 () Bool)

(assert (=> b!414233 (= e!247569 true)))

(declare-fun minValue!515 () V!15325)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15325)

(declare-fun lt!189957 () ListLongMap!5849)

(declare-fun lt!189960 () array!25169)

(declare-fun getCurrentListMapNoExtraKeys!1147 (array!25171 array!25169 (_ BitVec 32) (_ BitVec 32) V!15325 V!15325 (_ BitVec 32) Int) ListLongMap!5849)

(declare-fun get!5938 (ValueCell!4989 V!15325) V!15325)

(declare-fun dynLambda!647 (Int (_ BitVec 64)) V!15325)

(assert (=> b!414233 (= lt!189957 (+!1156 (getCurrentListMapNoExtraKeys!1147 lt!189956 lt!189960 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!6923 (select (arr!12032 lt!189956) from!863) (get!5938 (select (arr!12031 lt!189960) from!863) (dynLambda!647 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!414234 () Bool)

(assert (=> b!414234 (= e!247568 (= call!28714 call!28715))))

(declare-fun mapIsEmpty!17619 () Bool)

(assert (=> mapIsEmpty!17619 mapRes!17619))

(declare-fun b!414235 () Bool)

(declare-fun res!240913 () Bool)

(assert (=> b!414235 (=> (not res!240913) (not e!247573))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!414235 (= res!240913 (validMask!0 mask!1025))))

(declare-fun b!414236 () Bool)

(declare-fun e!247574 () Bool)

(assert (=> b!414236 (= e!247575 e!247574)))

(declare-fun res!240919 () Bool)

(assert (=> b!414236 (=> (not res!240919) (not e!247574))))

(assert (=> b!414236 (= res!240919 (= from!863 i!563))))

(assert (=> b!414236 (= lt!189957 (getCurrentListMapNoExtraKeys!1147 lt!189956 lt!189960 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!414236 (= lt!189960 (array!25170 (store (arr!12031 _values!549) i!563 (ValueCellFull!4989 v!412)) (size!12383 _values!549)))))

(declare-fun lt!189959 () ListLongMap!5849)

(assert (=> b!414236 (= lt!189959 (getCurrentListMapNoExtraKeys!1147 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!414237 () Bool)

(assert (=> b!414237 (= e!247573 e!247575)))

(declare-fun res!240911 () Bool)

(assert (=> b!414237 (=> (not res!240911) (not e!247575))))

(assert (=> b!414237 (= res!240911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189956 mask!1025))))

(assert (=> b!414237 (= lt!189956 (array!25172 (store (arr!12032 _keys!709) i!563 k0!794) (size!12384 _keys!709)))))

(declare-fun c!54908 () Bool)

(declare-fun bm!28711 () Bool)

(assert (=> bm!28711 (= call!28714 (getCurrentListMapNoExtraKeys!1147 (ite c!54908 _keys!709 lt!189956) (ite c!54908 _values!549 lt!189960) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414238 () Bool)

(declare-fun res!240914 () Bool)

(assert (=> b!414238 (=> (not res!240914) (not e!247575))))

(assert (=> b!414238 (= res!240914 (bvsle from!863 i!563))))

(declare-fun b!414239 () Bool)

(declare-fun res!240916 () Bool)

(assert (=> b!414239 (=> (not res!240916) (not e!247573))))

(assert (=> b!414239 (= res!240916 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6977))))

(declare-fun b!414240 () Bool)

(declare-fun e!247571 () Bool)

(assert (=> b!414240 (= e!247576 (and e!247571 mapRes!17619))))

(declare-fun condMapEmpty!17619 () Bool)

(declare-fun mapDefault!17619 () ValueCell!4989)

(assert (=> b!414240 (= condMapEmpty!17619 (= (arr!12031 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4989)) mapDefault!17619)))))

(declare-fun b!414241 () Bool)

(declare-fun res!240918 () Bool)

(assert (=> b!414241 (=> (not res!240918) (not e!247573))))

(declare-fun arrayContainsKey!0 (array!25171 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!414241 (= res!240918 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!414242 () Bool)

(assert (=> b!414242 (= e!247574 (not e!247569))))

(declare-fun res!240922 () Bool)

(assert (=> b!414242 (=> res!240922 e!247569)))

(assert (=> b!414242 (= res!240922 (validKeyInArray!0 (select (arr!12032 _keys!709) from!863)))))

(assert (=> b!414242 e!247568))

(assert (=> b!414242 (= c!54908 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12215 0))(
  ( (Unit!12216) )
))
(declare-fun lt!189958 () Unit!12215)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!370 (array!25171 array!25169 (_ BitVec 32) (_ BitVec 32) V!15325 V!15325 (_ BitVec 32) (_ BitVec 64) V!15325 (_ BitVec 32) Int) Unit!12215)

(assert (=> b!414242 (= lt!189958 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!370 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!28712 () Bool)

(assert (=> bm!28712 (= call!28715 (getCurrentListMapNoExtraKeys!1147 (ite c!54908 lt!189956 _keys!709) (ite c!54908 lt!189960 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414243 () Bool)

(assert (=> b!414243 (= e!247572 tp_is_empty!10665)))

(declare-fun b!414244 () Bool)

(assert (=> b!414244 (= e!247571 tp_is_empty!10665)))

(assert (= (and start!39254 res!240912) b!414235))

(assert (= (and b!414235 res!240913) b!414232))

(assert (= (and b!414232 res!240917) b!414228))

(assert (= (and b!414228 res!240923) b!414239))

(assert (= (and b!414239 res!240916) b!414231))

(assert (= (and b!414231 res!240915) b!414230))

(assert (= (and b!414230 res!240921) b!414227))

(assert (= (and b!414227 res!240920) b!414241))

(assert (= (and b!414241 res!240918) b!414237))

(assert (= (and b!414237 res!240911) b!414229))

(assert (= (and b!414229 res!240924) b!414238))

(assert (= (and b!414238 res!240914) b!414236))

(assert (= (and b!414236 res!240919) b!414242))

(assert (= (and b!414242 c!54908) b!414226))

(assert (= (and b!414242 (not c!54908)) b!414234))

(assert (= (or b!414226 b!414234) bm!28712))

(assert (= (or b!414226 b!414234) bm!28711))

(assert (= (and b!414242 (not res!240922)) b!414233))

(assert (= (and b!414240 condMapEmpty!17619) mapIsEmpty!17619))

(assert (= (and b!414240 (not condMapEmpty!17619)) mapNonEmpty!17619))

(get-info :version)

(assert (= (and mapNonEmpty!17619 ((_ is ValueCellFull!4989) mapValue!17619)) b!414243))

(assert (= (and b!414240 ((_ is ValueCellFull!4989) mapDefault!17619)) b!414244))

(assert (= start!39254 b!414240))

(declare-fun b_lambda!8847 () Bool)

(assert (=> (not b_lambda!8847) (not b!414233)))

(declare-fun t!12164 () Bool)

(declare-fun tb!3143 () Bool)

(assert (=> (and start!39254 (= defaultEntry!557 defaultEntry!557) t!12164) tb!3143))

(declare-fun result!5805 () Bool)

(assert (=> tb!3143 (= result!5805 tp_is_empty!10665)))

(assert (=> b!414233 t!12164))

(declare-fun b_and!16921 () Bool)

(assert (= b_and!16919 (and (=> t!12164 result!5805) b_and!16921)))

(declare-fun m!403491 () Bool)

(assert (=> b!414230 m!403491))

(declare-fun m!403493 () Bool)

(assert (=> b!414242 m!403493))

(assert (=> b!414242 m!403493))

(declare-fun m!403495 () Bool)

(assert (=> b!414242 m!403495))

(declare-fun m!403497 () Bool)

(assert (=> b!414242 m!403497))

(declare-fun m!403499 () Bool)

(assert (=> bm!28712 m!403499))

(declare-fun m!403501 () Bool)

(assert (=> b!414229 m!403501))

(declare-fun m!403503 () Bool)

(assert (=> b!414228 m!403503))

(declare-fun m!403505 () Bool)

(assert (=> b!414237 m!403505))

(declare-fun m!403507 () Bool)

(assert (=> b!414237 m!403507))

(declare-fun m!403509 () Bool)

(assert (=> mapNonEmpty!17619 m!403509))

(declare-fun m!403511 () Bool)

(assert (=> b!414239 m!403511))

(declare-fun m!403513 () Bool)

(assert (=> b!414227 m!403513))

(declare-fun m!403515 () Bool)

(assert (=> start!39254 m!403515))

(declare-fun m!403517 () Bool)

(assert (=> start!39254 m!403517))

(declare-fun m!403519 () Bool)

(assert (=> b!414236 m!403519))

(declare-fun m!403521 () Bool)

(assert (=> b!414236 m!403521))

(declare-fun m!403523 () Bool)

(assert (=> b!414236 m!403523))

(declare-fun m!403525 () Bool)

(assert (=> b!414241 m!403525))

(declare-fun m!403527 () Bool)

(assert (=> bm!28711 m!403527))

(declare-fun m!403529 () Bool)

(assert (=> b!414233 m!403529))

(declare-fun m!403531 () Bool)

(assert (=> b!414233 m!403531))

(declare-fun m!403533 () Bool)

(assert (=> b!414233 m!403533))

(declare-fun m!403535 () Bool)

(assert (=> b!414233 m!403535))

(declare-fun m!403537 () Bool)

(assert (=> b!414233 m!403537))

(assert (=> b!414233 m!403529))

(assert (=> b!414233 m!403535))

(assert (=> b!414233 m!403533))

(declare-fun m!403539 () Bool)

(assert (=> b!414233 m!403539))

(declare-fun m!403541 () Bool)

(assert (=> b!414226 m!403541))

(declare-fun m!403543 () Bool)

(assert (=> b!414235 m!403543))

(check-sat (not b!414239) (not b_next!9513) b_and!16921 (not mapNonEmpty!17619) (not b!414233) (not bm!28712) tp_is_empty!10665 (not b!414236) (not start!39254) (not b!414228) (not b!414230) (not b!414226) (not b!414241) (not b!414229) (not b_lambda!8847) (not b!414235) (not b!414242) (not b!414237) (not bm!28711))
(check-sat b_and!16921 (not b_next!9513))
