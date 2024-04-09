; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39482 () Bool)

(assert start!39482)

(declare-fun b_free!9741 () Bool)

(declare-fun b_next!9741 () Bool)

(assert (=> start!39482 (= b_free!9741 (not b_next!9741))))

(declare-fun tp!34751 () Bool)

(declare-fun b_and!17375 () Bool)

(assert (=> start!39482 (= tp!34751 b_and!17375)))

(declare-fun b!420952 () Bool)

(declare-fun res!245706 () Bool)

(declare-fun e!250649 () Bool)

(assert (=> b!420952 (=> (not res!245706) (not e!250649))))

(declare-datatypes ((array!25613 0))(
  ( (array!25614 (arr!12253 (Array (_ BitVec 32) (_ BitVec 64))) (size!12605 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25613)

(declare-datatypes ((List!7170 0))(
  ( (Nil!7167) (Cons!7166 (h!8022 (_ BitVec 64)) (t!12584 List!7170)) )
))
(declare-fun arrayNoDuplicates!0 (array!25613 (_ BitVec 32) List!7170) Bool)

(assert (=> b!420952 (= res!245706 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7167))))

(declare-fun res!245708 () Bool)

(assert (=> start!39482 (=> (not res!245708) (not e!250649))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39482 (= res!245708 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12605 _keys!709))))))

(assert (=> start!39482 e!250649))

(declare-fun tp_is_empty!10893 () Bool)

(assert (=> start!39482 tp_is_empty!10893))

(assert (=> start!39482 tp!34751))

(assert (=> start!39482 true))

(declare-datatypes ((V!15629 0))(
  ( (V!15630 (val!5491 Int)) )
))
(declare-datatypes ((ValueCell!5103 0))(
  ( (ValueCellFull!5103 (v!7734 V!15629)) (EmptyCell!5103) )
))
(declare-datatypes ((array!25615 0))(
  ( (array!25616 (arr!12254 (Array (_ BitVec 32) ValueCell!5103)) (size!12606 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25615)

(declare-fun e!250650 () Bool)

(declare-fun array_inv!8926 (array!25615) Bool)

(assert (=> start!39482 (and (array_inv!8926 _values!549) e!250650)))

(declare-fun array_inv!8927 (array!25613) Bool)

(assert (=> start!39482 (array_inv!8927 _keys!709)))

(declare-fun b!420953 () Bool)

(declare-fun e!250647 () Bool)

(declare-datatypes ((tuple2!7126 0))(
  ( (tuple2!7127 (_1!3573 (_ BitVec 64)) (_2!3573 V!15629)) )
))
(declare-datatypes ((List!7171 0))(
  ( (Nil!7168) (Cons!7167 (h!8023 tuple2!7126) (t!12585 List!7171)) )
))
(declare-datatypes ((ListLongMap!6053 0))(
  ( (ListLongMap!6054 (toList!3042 List!7171)) )
))
(declare-fun call!29398 () ListLongMap!6053)

(declare-fun call!29399 () ListLongMap!6053)

(assert (=> b!420953 (= e!250647 (= call!29398 call!29399))))

(declare-fun b!420954 () Bool)

(declare-fun res!245712 () Bool)

(assert (=> b!420954 (=> (not res!245712) (not e!250649))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25613 (_ BitVec 32)) Bool)

(assert (=> b!420954 (= res!245712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!420955 () Bool)

(declare-fun e!250646 () Bool)

(assert (=> b!420955 (= e!250646 tp_is_empty!10893)))

(declare-fun b!420956 () Bool)

(declare-fun res!245702 () Bool)

(assert (=> b!420956 (=> (not res!245702) (not e!250649))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25613 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!420956 (= res!245702 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!420957 () Bool)

(declare-fun res!245709 () Bool)

(assert (=> b!420957 (=> (not res!245709) (not e!250649))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!420957 (= res!245709 (validKeyInArray!0 k0!794))))

(declare-fun b!420958 () Bool)

(declare-fun e!250652 () Bool)

(declare-fun e!250648 () Bool)

(assert (=> b!420958 (= e!250652 (not e!250648))))

(declare-fun res!245707 () Bool)

(assert (=> b!420958 (=> res!245707 e!250648)))

(assert (=> b!420958 (= res!245707 (validKeyInArray!0 (select (arr!12253 _keys!709) from!863)))))

(assert (=> b!420958 e!250647))

(declare-fun c!55250 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!420958 (= c!55250 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!15629)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun v!412 () V!15629)

(declare-fun zeroValue!515 () V!15629)

(declare-datatypes ((Unit!12391 0))(
  ( (Unit!12392) )
))
(declare-fun lt!193263 () Unit!12391)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!450 (array!25613 array!25615 (_ BitVec 32) (_ BitVec 32) V!15629 V!15629 (_ BitVec 32) (_ BitVec 64) V!15629 (_ BitVec 32) Int) Unit!12391)

(assert (=> b!420958 (= lt!193263 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!450 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420959 () Bool)

(declare-fun res!245699 () Bool)

(assert (=> b!420959 (=> (not res!245699) (not e!250649))))

(assert (=> b!420959 (= res!245699 (and (= (size!12606 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12605 _keys!709) (size!12606 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17961 () Bool)

(declare-fun mapRes!17961 () Bool)

(assert (=> mapIsEmpty!17961 mapRes!17961))

(declare-fun b!420960 () Bool)

(assert (=> b!420960 (= e!250650 (and e!250646 mapRes!17961))))

(declare-fun condMapEmpty!17961 () Bool)

(declare-fun mapDefault!17961 () ValueCell!5103)

(assert (=> b!420960 (= condMapEmpty!17961 (= (arr!12254 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5103)) mapDefault!17961)))))

(declare-fun b!420961 () Bool)

(declare-fun e!250651 () Bool)

(assert (=> b!420961 (= e!250651 tp_is_empty!10893)))

(declare-fun b!420962 () Bool)

(declare-fun res!245711 () Bool)

(declare-fun e!250653 () Bool)

(assert (=> b!420962 (=> (not res!245711) (not e!250653))))

(declare-fun lt!193270 () array!25613)

(assert (=> b!420962 (= res!245711 (arrayNoDuplicates!0 lt!193270 #b00000000000000000000000000000000 Nil!7167))))

(declare-fun b!420963 () Bool)

(declare-fun res!245701 () Bool)

(assert (=> b!420963 (=> (not res!245701) (not e!250649))))

(assert (=> b!420963 (= res!245701 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12605 _keys!709))))))

(declare-fun b!420964 () Bool)

(declare-fun res!245705 () Bool)

(assert (=> b!420964 (=> (not res!245705) (not e!250653))))

(assert (=> b!420964 (= res!245705 (bvsle from!863 i!563))))

(declare-fun b!420965 () Bool)

(assert (=> b!420965 (= e!250649 e!250653)))

(declare-fun res!245700 () Bool)

(assert (=> b!420965 (=> (not res!245700) (not e!250653))))

(assert (=> b!420965 (= res!245700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193270 mask!1025))))

(assert (=> b!420965 (= lt!193270 (array!25614 (store (arr!12253 _keys!709) i!563 k0!794) (size!12605 _keys!709)))))

(declare-fun b!420966 () Bool)

(declare-fun +!1245 (ListLongMap!6053 tuple2!7126) ListLongMap!6053)

(assert (=> b!420966 (= e!250647 (= call!29399 (+!1245 call!29398 (tuple2!7127 k0!794 v!412))))))

(declare-fun b!420967 () Bool)

(declare-fun res!245710 () Bool)

(assert (=> b!420967 (=> (not res!245710) (not e!250649))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!420967 (= res!245710 (validMask!0 mask!1025))))

(declare-fun b!420968 () Bool)

(assert (=> b!420968 (= e!250648 true)))

(declare-fun lt!193262 () ListLongMap!6053)

(declare-fun lt!193266 () tuple2!7126)

(declare-fun lt!193265 () V!15629)

(assert (=> b!420968 (= (+!1245 lt!193262 lt!193266) (+!1245 (+!1245 lt!193262 (tuple2!7127 k0!794 lt!193265)) lt!193266))))

(declare-fun lt!193264 () V!15629)

(assert (=> b!420968 (= lt!193266 (tuple2!7127 k0!794 lt!193264))))

(declare-fun lt!193268 () Unit!12391)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!62 (ListLongMap!6053 (_ BitVec 64) V!15629 V!15629) Unit!12391)

(assert (=> b!420968 (= lt!193268 (addSameAsAddTwiceSameKeyDiffValues!62 lt!193262 k0!794 lt!193265 lt!193264))))

(declare-fun lt!193272 () V!15629)

(declare-fun get!6091 (ValueCell!5103 V!15629) V!15629)

(assert (=> b!420968 (= lt!193265 (get!6091 (select (arr!12254 _values!549) from!863) lt!193272))))

(declare-fun lt!193271 () ListLongMap!6053)

(assert (=> b!420968 (= lt!193271 (+!1245 lt!193262 (tuple2!7127 (select (arr!12253 lt!193270) from!863) lt!193264)))))

(assert (=> b!420968 (= lt!193264 (get!6091 (select (store (arr!12254 _values!549) i!563 (ValueCellFull!5103 v!412)) from!863) lt!193272))))

(declare-fun dynLambda!724 (Int (_ BitVec 64)) V!15629)

(assert (=> b!420968 (= lt!193272 (dynLambda!724 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!193267 () array!25615)

(declare-fun getCurrentListMapNoExtraKeys!1243 (array!25613 array!25615 (_ BitVec 32) (_ BitVec 32) V!15629 V!15629 (_ BitVec 32) Int) ListLongMap!6053)

(assert (=> b!420968 (= lt!193262 (getCurrentListMapNoExtraKeys!1243 lt!193270 lt!193267 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420969 () Bool)

(declare-fun res!245703 () Bool)

(assert (=> b!420969 (=> (not res!245703) (not e!250649))))

(assert (=> b!420969 (= res!245703 (or (= (select (arr!12253 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12253 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!420970 () Bool)

(assert (=> b!420970 (= e!250653 e!250652)))

(declare-fun res!245704 () Bool)

(assert (=> b!420970 (=> (not res!245704) (not e!250652))))

(assert (=> b!420970 (= res!245704 (= from!863 i!563))))

(assert (=> b!420970 (= lt!193271 (getCurrentListMapNoExtraKeys!1243 lt!193270 lt!193267 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!420970 (= lt!193267 (array!25616 (store (arr!12254 _values!549) i!563 (ValueCellFull!5103 v!412)) (size!12606 _values!549)))))

(declare-fun lt!193269 () ListLongMap!6053)

(assert (=> b!420970 (= lt!193269 (getCurrentListMapNoExtraKeys!1243 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun bm!29395 () Bool)

(assert (=> bm!29395 (= call!29399 (getCurrentListMapNoExtraKeys!1243 (ite c!55250 lt!193270 _keys!709) (ite c!55250 lt!193267 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!17961 () Bool)

(declare-fun tp!34752 () Bool)

(assert (=> mapNonEmpty!17961 (= mapRes!17961 (and tp!34752 e!250651))))

(declare-fun mapKey!17961 () (_ BitVec 32))

(declare-fun mapRest!17961 () (Array (_ BitVec 32) ValueCell!5103))

(declare-fun mapValue!17961 () ValueCell!5103)

(assert (=> mapNonEmpty!17961 (= (arr!12254 _values!549) (store mapRest!17961 mapKey!17961 mapValue!17961))))

(declare-fun bm!29396 () Bool)

(assert (=> bm!29396 (= call!29398 (getCurrentListMapNoExtraKeys!1243 (ite c!55250 _keys!709 lt!193270) (ite c!55250 _values!549 lt!193267) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (= (and start!39482 res!245708) b!420967))

(assert (= (and b!420967 res!245710) b!420959))

(assert (= (and b!420959 res!245699) b!420954))

(assert (= (and b!420954 res!245712) b!420952))

(assert (= (and b!420952 res!245706) b!420963))

(assert (= (and b!420963 res!245701) b!420957))

(assert (= (and b!420957 res!245709) b!420969))

(assert (= (and b!420969 res!245703) b!420956))

(assert (= (and b!420956 res!245702) b!420965))

(assert (= (and b!420965 res!245700) b!420962))

(assert (= (and b!420962 res!245711) b!420964))

(assert (= (and b!420964 res!245705) b!420970))

(assert (= (and b!420970 res!245704) b!420958))

(assert (= (and b!420958 c!55250) b!420966))

(assert (= (and b!420958 (not c!55250)) b!420953))

(assert (= (or b!420966 b!420953) bm!29395))

(assert (= (or b!420966 b!420953) bm!29396))

(assert (= (and b!420958 (not res!245707)) b!420968))

(assert (= (and b!420960 condMapEmpty!17961) mapIsEmpty!17961))

(assert (= (and b!420960 (not condMapEmpty!17961)) mapNonEmpty!17961))

(get-info :version)

(assert (= (and mapNonEmpty!17961 ((_ is ValueCellFull!5103) mapValue!17961)) b!420961))

(assert (= (and b!420960 ((_ is ValueCellFull!5103) mapDefault!17961)) b!420955))

(assert (= start!39482 b!420960))

(declare-fun b_lambda!9075 () Bool)

(assert (=> (not b_lambda!9075) (not b!420968)))

(declare-fun t!12583 () Bool)

(declare-fun tb!3371 () Bool)

(assert (=> (and start!39482 (= defaultEntry!557 defaultEntry!557) t!12583) tb!3371))

(declare-fun result!6261 () Bool)

(assert (=> tb!3371 (= result!6261 tp_is_empty!10893)))

(assert (=> b!420968 t!12583))

(declare-fun b_and!17377 () Bool)

(assert (= b_and!17375 (and (=> t!12583 result!6261) b_and!17377)))

(declare-fun m!410697 () Bool)

(assert (=> b!420957 m!410697))

(declare-fun m!410699 () Bool)

(assert (=> b!420967 m!410699))

(declare-fun m!410701 () Bool)

(assert (=> b!420969 m!410701))

(declare-fun m!410703 () Bool)

(assert (=> b!420956 m!410703))

(declare-fun m!410705 () Bool)

(assert (=> b!420954 m!410705))

(declare-fun m!410707 () Bool)

(assert (=> b!420952 m!410707))

(declare-fun m!410709 () Bool)

(assert (=> bm!29395 m!410709))

(declare-fun m!410711 () Bool)

(assert (=> start!39482 m!410711))

(declare-fun m!410713 () Bool)

(assert (=> start!39482 m!410713))

(declare-fun m!410715 () Bool)

(assert (=> mapNonEmpty!17961 m!410715))

(declare-fun m!410717 () Bool)

(assert (=> b!420965 m!410717))

(declare-fun m!410719 () Bool)

(assert (=> b!420965 m!410719))

(declare-fun m!410721 () Bool)

(assert (=> b!420968 m!410721))

(declare-fun m!410723 () Bool)

(assert (=> b!420968 m!410723))

(declare-fun m!410725 () Bool)

(assert (=> b!420968 m!410725))

(declare-fun m!410727 () Bool)

(assert (=> b!420968 m!410727))

(declare-fun m!410729 () Bool)

(assert (=> b!420968 m!410729))

(declare-fun m!410731 () Bool)

(assert (=> b!420968 m!410731))

(assert (=> b!420968 m!410725))

(declare-fun m!410733 () Bool)

(assert (=> b!420968 m!410733))

(declare-fun m!410735 () Bool)

(assert (=> b!420968 m!410735))

(declare-fun m!410737 () Bool)

(assert (=> b!420968 m!410737))

(declare-fun m!410739 () Bool)

(assert (=> b!420968 m!410739))

(declare-fun m!410741 () Bool)

(assert (=> b!420968 m!410741))

(declare-fun m!410743 () Bool)

(assert (=> b!420968 m!410743))

(assert (=> b!420968 m!410737))

(assert (=> b!420968 m!410729))

(declare-fun m!410745 () Bool)

(assert (=> b!420968 m!410745))

(declare-fun m!410747 () Bool)

(assert (=> b!420970 m!410747))

(assert (=> b!420970 m!410721))

(declare-fun m!410749 () Bool)

(assert (=> b!420970 m!410749))

(declare-fun m!410751 () Bool)

(assert (=> b!420962 m!410751))

(declare-fun m!410753 () Bool)

(assert (=> bm!29396 m!410753))

(declare-fun m!410755 () Bool)

(assert (=> b!420958 m!410755))

(assert (=> b!420958 m!410755))

(declare-fun m!410757 () Bool)

(assert (=> b!420958 m!410757))

(declare-fun m!410759 () Bool)

(assert (=> b!420958 m!410759))

(declare-fun m!410761 () Bool)

(assert (=> b!420966 m!410761))

(check-sat (not bm!29395) (not b!420962) b_and!17377 (not start!39482) (not mapNonEmpty!17961) (not b!420970) (not b!420958) (not b!420967) (not b_lambda!9075) (not b!420965) (not b!420954) (not b!420952) (not b_next!9741) (not b!420968) (not bm!29396) (not b!420956) (not b!420957) (not b!420966) tp_is_empty!10893)
(check-sat b_and!17377 (not b_next!9741))
