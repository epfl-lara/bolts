; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39446 () Bool)

(assert start!39446)

(declare-fun b_free!9705 () Bool)

(declare-fun b_next!9705 () Bool)

(assert (=> start!39446 (= b_free!9705 (not b_next!9705))))

(declare-fun tp!34643 () Bool)

(declare-fun b_and!17303 () Bool)

(assert (=> start!39446 (= tp!34643 b_and!17303)))

(declare-fun b!419890 () Bool)

(declare-fun res!244956 () Bool)

(declare-fun e!250162 () Bool)

(assert (=> b!419890 (=> (not res!244956) (not e!250162))))

(declare-datatypes ((array!25545 0))(
  ( (array!25546 (arr!12219 (Array (_ BitVec 32) (_ BitVec 64))) (size!12571 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25545)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25545 (_ BitVec 32)) Bool)

(assert (=> b!419890 (= res!244956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!419891 () Bool)

(declare-fun e!250165 () Bool)

(declare-datatypes ((V!15581 0))(
  ( (V!15582 (val!5473 Int)) )
))
(declare-datatypes ((tuple2!7098 0))(
  ( (tuple2!7099 (_1!3559 (_ BitVec 64)) (_2!3559 V!15581)) )
))
(declare-datatypes ((List!7142 0))(
  ( (Nil!7139) (Cons!7138 (h!7994 tuple2!7098) (t!12520 List!7142)) )
))
(declare-datatypes ((ListLongMap!6025 0))(
  ( (ListLongMap!6026 (toList!3028 List!7142)) )
))
(declare-fun call!29291 () ListLongMap!6025)

(declare-fun call!29290 () ListLongMap!6025)

(assert (=> b!419891 (= e!250165 (= call!29291 call!29290))))

(declare-fun b!419892 () Bool)

(declare-fun res!244951 () Bool)

(assert (=> b!419892 (=> (not res!244951) (not e!250162))))

(declare-datatypes ((List!7143 0))(
  ( (Nil!7140) (Cons!7139 (h!7995 (_ BitVec 64)) (t!12521 List!7143)) )
))
(declare-fun arrayNoDuplicates!0 (array!25545 (_ BitVec 32) List!7143) Bool)

(assert (=> b!419892 (= res!244951 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7140))))

(declare-fun mapIsEmpty!17907 () Bool)

(declare-fun mapRes!17907 () Bool)

(assert (=> mapIsEmpty!17907 mapRes!17907))

(declare-fun b!419893 () Bool)

(declare-fun res!244947 () Bool)

(declare-fun e!250163 () Bool)

(assert (=> b!419893 (=> (not res!244947) (not e!250163))))

(declare-fun lt!192677 () array!25545)

(assert (=> b!419893 (= res!244947 (arrayNoDuplicates!0 lt!192677 #b00000000000000000000000000000000 Nil!7140))))

(declare-fun b!419895 () Bool)

(declare-fun res!244954 () Bool)

(assert (=> b!419895 (=> (not res!244954) (not e!250162))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25545 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!419895 (= res!244954 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!419896 () Bool)

(declare-fun res!244948 () Bool)

(assert (=> b!419896 (=> (not res!244948) (not e!250162))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!419896 (= res!244948 (or (= (select (arr!12219 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12219 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!419897 () Bool)

(declare-fun res!244953 () Bool)

(assert (=> b!419897 (=> (not res!244953) (not e!250162))))

(assert (=> b!419897 (= res!244953 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12571 _keys!709))))))

(declare-fun b!419898 () Bool)

(declare-fun res!244950 () Bool)

(assert (=> b!419898 (=> (not res!244950) (not e!250162))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!419898 (= res!244950 (validMask!0 mask!1025))))

(declare-fun b!419899 () Bool)

(declare-fun e!250164 () Bool)

(declare-fun e!250167 () Bool)

(assert (=> b!419899 (= e!250164 (and e!250167 mapRes!17907))))

(declare-fun condMapEmpty!17907 () Bool)

(declare-datatypes ((ValueCell!5085 0))(
  ( (ValueCellFull!5085 (v!7716 V!15581)) (EmptyCell!5085) )
))
(declare-datatypes ((array!25547 0))(
  ( (array!25548 (arr!12220 (Array (_ BitVec 32) ValueCell!5085)) (size!12572 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25547)

(declare-fun mapDefault!17907 () ValueCell!5085)

(assert (=> b!419899 (= condMapEmpty!17907 (= (arr!12220 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5085)) mapDefault!17907)))))

(declare-fun c!55196 () Bool)

(declare-fun minValue!515 () V!15581)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15581)

(declare-fun lt!192669 () array!25547)

(declare-fun bm!29287 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1229 (array!25545 array!25547 (_ BitVec 32) (_ BitVec 32) V!15581 V!15581 (_ BitVec 32) Int) ListLongMap!6025)

(assert (=> bm!29287 (= call!29290 (getCurrentListMapNoExtraKeys!1229 (ite c!55196 lt!192677 _keys!709) (ite c!55196 lt!192669 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419900 () Bool)

(declare-fun res!244952 () Bool)

(assert (=> b!419900 (=> (not res!244952) (not e!250163))))

(assert (=> b!419900 (= res!244952 (bvsle from!863 i!563))))

(declare-fun b!419901 () Bool)

(declare-fun tp_is_empty!10857 () Bool)

(assert (=> b!419901 (= e!250167 tp_is_empty!10857)))

(declare-fun b!419902 () Bool)

(declare-fun res!244944 () Bool)

(assert (=> b!419902 (=> (not res!244944) (not e!250162))))

(assert (=> b!419902 (= res!244944 (and (= (size!12572 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12571 _keys!709) (size!12572 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!419903 () Bool)

(declare-fun e!250168 () Bool)

(assert (=> b!419903 (= e!250168 tp_is_empty!10857)))

(declare-fun b!419904 () Bool)

(declare-fun e!250160 () Bool)

(declare-fun e!250161 () Bool)

(assert (=> b!419904 (= e!250160 (not e!250161))))

(declare-fun res!244946 () Bool)

(assert (=> b!419904 (=> res!244946 e!250161)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!419904 (= res!244946 (validKeyInArray!0 (select (arr!12219 _keys!709) from!863)))))

(assert (=> b!419904 e!250165))

(assert (=> b!419904 (= c!55196 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12365 0))(
  ( (Unit!12366) )
))
(declare-fun lt!192670 () Unit!12365)

(declare-fun v!412 () V!15581)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!438 (array!25545 array!25547 (_ BitVec 32) (_ BitVec 32) V!15581 V!15581 (_ BitVec 32) (_ BitVec 64) V!15581 (_ BitVec 32) Int) Unit!12365)

(assert (=> b!419904 (= lt!192670 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!438 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!244945 () Bool)

(assert (=> start!39446 (=> (not res!244945) (not e!250162))))

(assert (=> start!39446 (= res!244945 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12571 _keys!709))))))

(assert (=> start!39446 e!250162))

(assert (=> start!39446 tp_is_empty!10857))

(assert (=> start!39446 tp!34643))

(assert (=> start!39446 true))

(declare-fun array_inv!8904 (array!25547) Bool)

(assert (=> start!39446 (and (array_inv!8904 _values!549) e!250164)))

(declare-fun array_inv!8905 (array!25545) Bool)

(assert (=> start!39446 (array_inv!8905 _keys!709)))

(declare-fun b!419894 () Bool)

(declare-fun res!244943 () Bool)

(assert (=> b!419894 (=> (not res!244943) (not e!250162))))

(assert (=> b!419894 (= res!244943 (validKeyInArray!0 k0!794))))

(declare-fun b!419905 () Bool)

(assert (=> b!419905 (= e!250161 true)))

(declare-fun lt!192671 () V!15581)

(declare-fun lt!192672 () ListLongMap!6025)

(declare-fun lt!192674 () tuple2!7098)

(declare-fun +!1233 (ListLongMap!6025 tuple2!7098) ListLongMap!6025)

(assert (=> b!419905 (= (+!1233 lt!192672 lt!192674) (+!1233 (+!1233 lt!192672 (tuple2!7099 k0!794 lt!192671)) lt!192674))))

(declare-fun lt!192678 () V!15581)

(assert (=> b!419905 (= lt!192674 (tuple2!7099 k0!794 lt!192678))))

(declare-fun lt!192675 () Unit!12365)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!52 (ListLongMap!6025 (_ BitVec 64) V!15581 V!15581) Unit!12365)

(assert (=> b!419905 (= lt!192675 (addSameAsAddTwiceSameKeyDiffValues!52 lt!192672 k0!794 lt!192671 lt!192678))))

(declare-fun lt!192673 () V!15581)

(declare-fun get!6069 (ValueCell!5085 V!15581) V!15581)

(assert (=> b!419905 (= lt!192671 (get!6069 (select (arr!12220 _values!549) from!863) lt!192673))))

(declare-fun lt!192668 () ListLongMap!6025)

(assert (=> b!419905 (= lt!192668 (+!1233 lt!192672 (tuple2!7099 (select (arr!12219 lt!192677) from!863) lt!192678)))))

(assert (=> b!419905 (= lt!192678 (get!6069 (select (store (arr!12220 _values!549) i!563 (ValueCellFull!5085 v!412)) from!863) lt!192673))))

(declare-fun dynLambda!714 (Int (_ BitVec 64)) V!15581)

(assert (=> b!419905 (= lt!192673 (dynLambda!714 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!419905 (= lt!192672 (getCurrentListMapNoExtraKeys!1229 lt!192677 lt!192669 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419906 () Bool)

(assert (=> b!419906 (= e!250163 e!250160)))

(declare-fun res!244955 () Bool)

(assert (=> b!419906 (=> (not res!244955) (not e!250160))))

(assert (=> b!419906 (= res!244955 (= from!863 i!563))))

(assert (=> b!419906 (= lt!192668 (getCurrentListMapNoExtraKeys!1229 lt!192677 lt!192669 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!419906 (= lt!192669 (array!25548 (store (arr!12220 _values!549) i!563 (ValueCellFull!5085 v!412)) (size!12572 _values!549)))))

(declare-fun lt!192676 () ListLongMap!6025)

(assert (=> b!419906 (= lt!192676 (getCurrentListMapNoExtraKeys!1229 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!17907 () Bool)

(declare-fun tp!34644 () Bool)

(assert (=> mapNonEmpty!17907 (= mapRes!17907 (and tp!34644 e!250168))))

(declare-fun mapKey!17907 () (_ BitVec 32))

(declare-fun mapValue!17907 () ValueCell!5085)

(declare-fun mapRest!17907 () (Array (_ BitVec 32) ValueCell!5085))

(assert (=> mapNonEmpty!17907 (= (arr!12220 _values!549) (store mapRest!17907 mapKey!17907 mapValue!17907))))

(declare-fun bm!29288 () Bool)

(assert (=> bm!29288 (= call!29291 (getCurrentListMapNoExtraKeys!1229 (ite c!55196 _keys!709 lt!192677) (ite c!55196 _values!549 lt!192669) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419907 () Bool)

(assert (=> b!419907 (= e!250165 (= call!29290 (+!1233 call!29291 (tuple2!7099 k0!794 v!412))))))

(declare-fun b!419908 () Bool)

(assert (=> b!419908 (= e!250162 e!250163)))

(declare-fun res!244949 () Bool)

(assert (=> b!419908 (=> (not res!244949) (not e!250163))))

(assert (=> b!419908 (= res!244949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!192677 mask!1025))))

(assert (=> b!419908 (= lt!192677 (array!25546 (store (arr!12219 _keys!709) i!563 k0!794) (size!12571 _keys!709)))))

(assert (= (and start!39446 res!244945) b!419898))

(assert (= (and b!419898 res!244950) b!419902))

(assert (= (and b!419902 res!244944) b!419890))

(assert (= (and b!419890 res!244956) b!419892))

(assert (= (and b!419892 res!244951) b!419897))

(assert (= (and b!419897 res!244953) b!419894))

(assert (= (and b!419894 res!244943) b!419896))

(assert (= (and b!419896 res!244948) b!419895))

(assert (= (and b!419895 res!244954) b!419908))

(assert (= (and b!419908 res!244949) b!419893))

(assert (= (and b!419893 res!244947) b!419900))

(assert (= (and b!419900 res!244952) b!419906))

(assert (= (and b!419906 res!244955) b!419904))

(assert (= (and b!419904 c!55196) b!419907))

(assert (= (and b!419904 (not c!55196)) b!419891))

(assert (= (or b!419907 b!419891) bm!29287))

(assert (= (or b!419907 b!419891) bm!29288))

(assert (= (and b!419904 (not res!244946)) b!419905))

(assert (= (and b!419899 condMapEmpty!17907) mapIsEmpty!17907))

(assert (= (and b!419899 (not condMapEmpty!17907)) mapNonEmpty!17907))

(get-info :version)

(assert (= (and mapNonEmpty!17907 ((_ is ValueCellFull!5085) mapValue!17907)) b!419903))

(assert (= (and b!419899 ((_ is ValueCellFull!5085) mapDefault!17907)) b!419901))

(assert (= start!39446 b!419899))

(declare-fun b_lambda!9039 () Bool)

(assert (=> (not b_lambda!9039) (not b!419905)))

(declare-fun t!12519 () Bool)

(declare-fun tb!3335 () Bool)

(assert (=> (and start!39446 (= defaultEntry!557 defaultEntry!557) t!12519) tb!3335))

(declare-fun result!6189 () Bool)

(assert (=> tb!3335 (= result!6189 tp_is_empty!10857)))

(assert (=> b!419905 t!12519))

(declare-fun b_and!17305 () Bool)

(assert (= b_and!17303 (and (=> t!12519 result!6189) b_and!17305)))

(declare-fun m!409511 () Bool)

(assert (=> b!419904 m!409511))

(assert (=> b!419904 m!409511))

(declare-fun m!409513 () Bool)

(assert (=> b!419904 m!409513))

(declare-fun m!409515 () Bool)

(assert (=> b!419904 m!409515))

(declare-fun m!409517 () Bool)

(assert (=> b!419905 m!409517))

(declare-fun m!409519 () Bool)

(assert (=> b!419905 m!409519))

(declare-fun m!409521 () Bool)

(assert (=> b!419905 m!409521))

(declare-fun m!409523 () Bool)

(assert (=> b!419905 m!409523))

(declare-fun m!409525 () Bool)

(assert (=> b!419905 m!409525))

(assert (=> b!419905 m!409519))

(declare-fun m!409527 () Bool)

(assert (=> b!419905 m!409527))

(declare-fun m!409529 () Bool)

(assert (=> b!419905 m!409529))

(assert (=> b!419905 m!409523))

(declare-fun m!409531 () Bool)

(assert (=> b!419905 m!409531))

(assert (=> b!419905 m!409527))

(declare-fun m!409533 () Bool)

(assert (=> b!419905 m!409533))

(declare-fun m!409535 () Bool)

(assert (=> b!419905 m!409535))

(declare-fun m!409537 () Bool)

(assert (=> b!419905 m!409537))

(declare-fun m!409539 () Bool)

(assert (=> b!419905 m!409539))

(declare-fun m!409541 () Bool)

(assert (=> b!419905 m!409541))

(declare-fun m!409543 () Bool)

(assert (=> b!419893 m!409543))

(declare-fun m!409545 () Bool)

(assert (=> b!419908 m!409545))

(declare-fun m!409547 () Bool)

(assert (=> b!419908 m!409547))

(declare-fun m!409549 () Bool)

(assert (=> b!419890 m!409549))

(declare-fun m!409551 () Bool)

(assert (=> start!39446 m!409551))

(declare-fun m!409553 () Bool)

(assert (=> start!39446 m!409553))

(declare-fun m!409555 () Bool)

(assert (=> bm!29287 m!409555))

(declare-fun m!409557 () Bool)

(assert (=> b!419892 m!409557))

(declare-fun m!409559 () Bool)

(assert (=> b!419907 m!409559))

(declare-fun m!409561 () Bool)

(assert (=> bm!29288 m!409561))

(declare-fun m!409563 () Bool)

(assert (=> mapNonEmpty!17907 m!409563))

(declare-fun m!409565 () Bool)

(assert (=> b!419896 m!409565))

(declare-fun m!409567 () Bool)

(assert (=> b!419906 m!409567))

(assert (=> b!419906 m!409517))

(declare-fun m!409569 () Bool)

(assert (=> b!419906 m!409569))

(declare-fun m!409571 () Bool)

(assert (=> b!419898 m!409571))

(declare-fun m!409573 () Bool)

(assert (=> b!419895 m!409573))

(declare-fun m!409575 () Bool)

(assert (=> b!419894 m!409575))

(check-sat (not b!419895) tp_is_empty!10857 (not b!419898) (not b!419892) (not bm!29288) (not bm!29287) (not b!419894) (not mapNonEmpty!17907) b_and!17305 (not start!39446) (not b!419906) (not b!419908) (not b!419893) (not b_lambda!9039) (not b!419905) (not b!419890) (not b!419907) (not b!419904) (not b_next!9705))
(check-sat b_and!17305 (not b_next!9705))
