; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39278 () Bool)

(assert start!39278)

(declare-fun b_free!9537 () Bool)

(declare-fun b_next!9537 () Bool)

(assert (=> start!39278 (= b_free!9537 (not b_next!9537))))

(declare-fun tp!34139 () Bool)

(declare-fun b_and!16967 () Bool)

(assert (=> start!39278 (= tp!34139 b_and!16967)))

(declare-fun b!414934 () Bool)

(declare-fun e!247896 () Bool)

(assert (=> b!414934 (= e!247896 true)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!15357 0))(
  ( (V!15358 (val!5389 Int)) )
))
(declare-fun minValue!515 () V!15357)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15357)

(declare-datatypes ((ValueCell!5001 0))(
  ( (ValueCellFull!5001 (v!7632 V!15357)) (EmptyCell!5001) )
))
(declare-datatypes ((array!25215 0))(
  ( (array!25216 (arr!12054 (Array (_ BitVec 32) ValueCell!5001)) (size!12406 (_ BitVec 32))) )
))
(declare-fun lt!190137 () array!25215)

(declare-datatypes ((array!25217 0))(
  ( (array!25218 (arr!12055 (Array (_ BitVec 32) (_ BitVec 64))) (size!12407 (_ BitVec 32))) )
))
(declare-fun lt!190139 () array!25217)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!6940 0))(
  ( (tuple2!6941 (_1!3480 (_ BitVec 64)) (_2!3480 V!15357)) )
))
(declare-datatypes ((List!6997 0))(
  ( (Nil!6994) (Cons!6993 (h!7849 tuple2!6940) (t!12207 List!6997)) )
))
(declare-datatypes ((ListLongMap!5867 0))(
  ( (ListLongMap!5868 (toList!2949 List!6997)) )
))
(declare-fun lt!190138 () ListLongMap!5867)

(declare-fun defaultEntry!557 () Int)

(declare-fun +!1164 (ListLongMap!5867 tuple2!6940) ListLongMap!5867)

(declare-fun getCurrentListMapNoExtraKeys!1154 (array!25217 array!25215 (_ BitVec 32) (_ BitVec 32) V!15357 V!15357 (_ BitVec 32) Int) ListLongMap!5867)

(declare-fun get!5952 (ValueCell!5001 V!15357) V!15357)

(declare-fun dynLambda!653 (Int (_ BitVec 64)) V!15357)

(assert (=> b!414934 (= lt!190138 (+!1164 (getCurrentListMapNoExtraKeys!1154 lt!190139 lt!190137 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!6941 (select (arr!12055 lt!190139) from!863) (get!5952 (select (arr!12054 lt!190137) from!863) (dynLambda!653 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!414935 () Bool)

(declare-fun e!247899 () Bool)

(declare-fun tp_is_empty!10689 () Bool)

(assert (=> b!414935 (= e!247899 tp_is_empty!10689)))

(declare-fun b!414936 () Bool)

(declare-fun res!241425 () Bool)

(declare-fun e!247894 () Bool)

(assert (=> b!414936 (=> (not res!241425) (not e!247894))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!414936 (= res!241425 (bvsle from!863 i!563))))

(declare-fun bm!28783 () Bool)

(declare-fun _values!549 () array!25215)

(declare-fun _keys!709 () array!25217)

(declare-fun call!28787 () ListLongMap!5867)

(declare-fun c!54944 () Bool)

(assert (=> bm!28783 (= call!28787 (getCurrentListMapNoExtraKeys!1154 (ite c!54944 _keys!709 lt!190139) (ite c!54944 _values!549 lt!190137) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!17655 () Bool)

(declare-fun mapRes!17655 () Bool)

(assert (=> mapIsEmpty!17655 mapRes!17655))

(declare-fun b!414937 () Bool)

(declare-fun res!241417 () Bool)

(declare-fun e!247900 () Bool)

(assert (=> b!414937 (=> (not res!241417) (not e!247900))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25217 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!414937 (= res!241417 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17655 () Bool)

(declare-fun tp!34140 () Bool)

(declare-fun e!247892 () Bool)

(assert (=> mapNonEmpty!17655 (= mapRes!17655 (and tp!34140 e!247892))))

(declare-fun mapRest!17655 () (Array (_ BitVec 32) ValueCell!5001))

(declare-fun mapKey!17655 () (_ BitVec 32))

(declare-fun mapValue!17655 () ValueCell!5001)

(assert (=> mapNonEmpty!17655 (= (arr!12054 _values!549) (store mapRest!17655 mapKey!17655 mapValue!17655))))

(declare-fun b!414938 () Bool)

(declare-fun e!247893 () Bool)

(assert (=> b!414938 (= e!247893 (not e!247896))))

(declare-fun res!241426 () Bool)

(assert (=> b!414938 (=> res!241426 e!247896)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!414938 (= res!241426 (validKeyInArray!0 (select (arr!12055 _keys!709) from!863)))))

(declare-fun e!247895 () Bool)

(assert (=> b!414938 e!247895))

(assert (=> b!414938 (= c!54944 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12229 0))(
  ( (Unit!12230) )
))
(declare-fun lt!190136 () Unit!12229)

(declare-fun v!412 () V!15357)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!377 (array!25217 array!25215 (_ BitVec 32) (_ BitVec 32) V!15357 V!15357 (_ BitVec 32) (_ BitVec 64) V!15357 (_ BitVec 32) Int) Unit!12229)

(assert (=> b!414938 (= lt!190136 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!377 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414939 () Bool)

(declare-fun res!241415 () Bool)

(assert (=> b!414939 (=> (not res!241415) (not e!247900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25217 (_ BitVec 32)) Bool)

(assert (=> b!414939 (= res!241415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun bm!28784 () Bool)

(declare-fun call!28786 () ListLongMap!5867)

(assert (=> bm!28784 (= call!28786 (getCurrentListMapNoExtraKeys!1154 (ite c!54944 lt!190139 _keys!709) (ite c!54944 lt!190137 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!414940 () Bool)

(declare-fun res!241418 () Bool)

(assert (=> b!414940 (=> (not res!241418) (not e!247900))))

(assert (=> b!414940 (= res!241418 (and (= (size!12406 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12407 _keys!709) (size!12406 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!241428 () Bool)

(assert (=> start!39278 (=> (not res!241428) (not e!247900))))

(assert (=> start!39278 (= res!241428 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12407 _keys!709))))))

(assert (=> start!39278 e!247900))

(assert (=> start!39278 tp_is_empty!10689))

(assert (=> start!39278 tp!34139))

(assert (=> start!39278 true))

(declare-fun e!247897 () Bool)

(declare-fun array_inv!8790 (array!25215) Bool)

(assert (=> start!39278 (and (array_inv!8790 _values!549) e!247897)))

(declare-fun array_inv!8791 (array!25217) Bool)

(assert (=> start!39278 (array_inv!8791 _keys!709)))

(declare-fun b!414941 () Bool)

(declare-fun res!241422 () Bool)

(assert (=> b!414941 (=> (not res!241422) (not e!247900))))

(declare-datatypes ((List!6998 0))(
  ( (Nil!6995) (Cons!6994 (h!7850 (_ BitVec 64)) (t!12208 List!6998)) )
))
(declare-fun arrayNoDuplicates!0 (array!25217 (_ BitVec 32) List!6998) Bool)

(assert (=> b!414941 (= res!241422 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6995))))

(declare-fun b!414942 () Bool)

(declare-fun res!241419 () Bool)

(assert (=> b!414942 (=> (not res!241419) (not e!247900))))

(assert (=> b!414942 (= res!241419 (validKeyInArray!0 k0!794))))

(declare-fun b!414943 () Bool)

(declare-fun res!241423 () Bool)

(assert (=> b!414943 (=> (not res!241423) (not e!247900))))

(assert (=> b!414943 (= res!241423 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12407 _keys!709))))))

(declare-fun b!414944 () Bool)

(assert (=> b!414944 (= e!247894 e!247893)))

(declare-fun res!241421 () Bool)

(assert (=> b!414944 (=> (not res!241421) (not e!247893))))

(assert (=> b!414944 (= res!241421 (= from!863 i!563))))

(assert (=> b!414944 (= lt!190138 (getCurrentListMapNoExtraKeys!1154 lt!190139 lt!190137 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!414944 (= lt!190137 (array!25216 (store (arr!12054 _values!549) i!563 (ValueCellFull!5001 v!412)) (size!12406 _values!549)))))

(declare-fun lt!190140 () ListLongMap!5867)

(assert (=> b!414944 (= lt!190140 (getCurrentListMapNoExtraKeys!1154 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!414945 () Bool)

(assert (=> b!414945 (= e!247897 (and e!247899 mapRes!17655))))

(declare-fun condMapEmpty!17655 () Bool)

(declare-fun mapDefault!17655 () ValueCell!5001)

(assert (=> b!414945 (= condMapEmpty!17655 (= (arr!12054 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5001)) mapDefault!17655)))))

(declare-fun b!414946 () Bool)

(assert (=> b!414946 (= e!247895 (= call!28786 (+!1164 call!28787 (tuple2!6941 k0!794 v!412))))))

(declare-fun b!414947 () Bool)

(declare-fun res!241416 () Bool)

(assert (=> b!414947 (=> (not res!241416) (not e!247900))))

(assert (=> b!414947 (= res!241416 (or (= (select (arr!12055 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12055 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!414948 () Bool)

(assert (=> b!414948 (= e!247900 e!247894)))

(declare-fun res!241424 () Bool)

(assert (=> b!414948 (=> (not res!241424) (not e!247894))))

(assert (=> b!414948 (= res!241424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190139 mask!1025))))

(assert (=> b!414948 (= lt!190139 (array!25218 (store (arr!12055 _keys!709) i!563 k0!794) (size!12407 _keys!709)))))

(declare-fun b!414949 () Bool)

(assert (=> b!414949 (= e!247895 (= call!28787 call!28786))))

(declare-fun b!414950 () Bool)

(declare-fun res!241427 () Bool)

(assert (=> b!414950 (=> (not res!241427) (not e!247894))))

(assert (=> b!414950 (= res!241427 (arrayNoDuplicates!0 lt!190139 #b00000000000000000000000000000000 Nil!6995))))

(declare-fun b!414951 () Bool)

(declare-fun res!241420 () Bool)

(assert (=> b!414951 (=> (not res!241420) (not e!247900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!414951 (= res!241420 (validMask!0 mask!1025))))

(declare-fun b!414952 () Bool)

(assert (=> b!414952 (= e!247892 tp_is_empty!10689)))

(assert (= (and start!39278 res!241428) b!414951))

(assert (= (and b!414951 res!241420) b!414940))

(assert (= (and b!414940 res!241418) b!414939))

(assert (= (and b!414939 res!241415) b!414941))

(assert (= (and b!414941 res!241422) b!414943))

(assert (= (and b!414943 res!241423) b!414942))

(assert (= (and b!414942 res!241419) b!414947))

(assert (= (and b!414947 res!241416) b!414937))

(assert (= (and b!414937 res!241417) b!414948))

(assert (= (and b!414948 res!241424) b!414950))

(assert (= (and b!414950 res!241427) b!414936))

(assert (= (and b!414936 res!241425) b!414944))

(assert (= (and b!414944 res!241421) b!414938))

(assert (= (and b!414938 c!54944) b!414946))

(assert (= (and b!414938 (not c!54944)) b!414949))

(assert (= (or b!414946 b!414949) bm!28784))

(assert (= (or b!414946 b!414949) bm!28783))

(assert (= (and b!414938 (not res!241426)) b!414934))

(assert (= (and b!414945 condMapEmpty!17655) mapIsEmpty!17655))

(assert (= (and b!414945 (not condMapEmpty!17655)) mapNonEmpty!17655))

(get-info :version)

(assert (= (and mapNonEmpty!17655 ((_ is ValueCellFull!5001) mapValue!17655)) b!414952))

(assert (= (and b!414945 ((_ is ValueCellFull!5001) mapDefault!17655)) b!414935))

(assert (= start!39278 b!414945))

(declare-fun b_lambda!8871 () Bool)

(assert (=> (not b_lambda!8871) (not b!414934)))

(declare-fun t!12206 () Bool)

(declare-fun tb!3167 () Bool)

(assert (=> (and start!39278 (= defaultEntry!557 defaultEntry!557) t!12206) tb!3167))

(declare-fun result!5853 () Bool)

(assert (=> tb!3167 (= result!5853 tp_is_empty!10689)))

(assert (=> b!414934 t!12206))

(declare-fun b_and!16969 () Bool)

(assert (= b_and!16967 (and (=> t!12206 result!5853) b_and!16969)))

(declare-fun m!404139 () Bool)

(assert (=> b!414950 m!404139))

(declare-fun m!404141 () Bool)

(assert (=> b!414934 m!404141))

(assert (=> b!414934 m!404141))

(declare-fun m!404143 () Bool)

(assert (=> b!414934 m!404143))

(declare-fun m!404145 () Bool)

(assert (=> b!414934 m!404145))

(assert (=> b!414934 m!404143))

(declare-fun m!404147 () Bool)

(assert (=> b!414934 m!404147))

(declare-fun m!404149 () Bool)

(assert (=> b!414934 m!404149))

(assert (=> b!414934 m!404149))

(declare-fun m!404151 () Bool)

(assert (=> b!414934 m!404151))

(declare-fun m!404153 () Bool)

(assert (=> b!414941 m!404153))

(declare-fun m!404155 () Bool)

(assert (=> mapNonEmpty!17655 m!404155))

(declare-fun m!404157 () Bool)

(assert (=> b!414938 m!404157))

(assert (=> b!414938 m!404157))

(declare-fun m!404159 () Bool)

(assert (=> b!414938 m!404159))

(declare-fun m!404161 () Bool)

(assert (=> b!414938 m!404161))

(declare-fun m!404163 () Bool)

(assert (=> b!414948 m!404163))

(declare-fun m!404165 () Bool)

(assert (=> b!414948 m!404165))

(declare-fun m!404167 () Bool)

(assert (=> bm!28783 m!404167))

(declare-fun m!404169 () Bool)

(assert (=> b!414939 m!404169))

(declare-fun m!404171 () Bool)

(assert (=> b!414951 m!404171))

(declare-fun m!404173 () Bool)

(assert (=> b!414947 m!404173))

(declare-fun m!404175 () Bool)

(assert (=> b!414946 m!404175))

(declare-fun m!404177 () Bool)

(assert (=> bm!28784 m!404177))

(declare-fun m!404179 () Bool)

(assert (=> b!414944 m!404179))

(declare-fun m!404181 () Bool)

(assert (=> b!414944 m!404181))

(declare-fun m!404183 () Bool)

(assert (=> b!414944 m!404183))

(declare-fun m!404185 () Bool)

(assert (=> start!39278 m!404185))

(declare-fun m!404187 () Bool)

(assert (=> start!39278 m!404187))

(declare-fun m!404189 () Bool)

(assert (=> b!414942 m!404189))

(declare-fun m!404191 () Bool)

(assert (=> b!414937 m!404191))

(check-sat (not b!414938) (not b!414934) (not bm!28784) b_and!16969 (not bm!28783) (not b!414937) (not b!414950) (not b!414948) (not b!414944) (not b!414942) (not b!414951) (not start!39278) (not b!414939) (not mapNonEmpty!17655) (not b_lambda!8871) (not b!414941) (not b_next!9537) (not b!414946) tp_is_empty!10689)
(check-sat b_and!16969 (not b_next!9537))
