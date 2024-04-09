; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107388 () Bool)

(assert start!107388)

(declare-fun b_free!27657 () Bool)

(declare-fun b_next!27657 () Bool)

(assert (=> start!107388 (= b_free!27657 (not b_next!27657))))

(declare-fun tp!97480 () Bool)

(declare-fun b_and!45715 () Bool)

(assert (=> start!107388 (= tp!97480 b_and!45715)))

(declare-fun b!1272122 () Bool)

(declare-fun e!725579 () Bool)

(declare-fun tp_is_empty!33027 () Bool)

(assert (=> b!1272122 (= e!725579 tp_is_empty!33027)))

(declare-datatypes ((V!49229 0))(
  ( (V!49230 (val!16588 Int)) )
))
(declare-datatypes ((ValueCell!15660 0))(
  ( (ValueCellFull!15660 (v!19223 V!49229)) (EmptyCell!15660) )
))
(declare-datatypes ((array!83247 0))(
  ( (array!83248 (arr!40155 (Array (_ BitVec 32) ValueCell!15660)) (size!40692 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83247)

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!83249 0))(
  ( (array!83250 (arr!40156 (Array (_ BitVec 32) (_ BitVec 64))) (size!40693 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83249)

(declare-fun e!725582 () Bool)

(declare-fun b!1272123 () Bool)

(declare-fun minValueAfter!52 () V!49229)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!49229)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!49229)

(declare-fun zeroValueBefore!52 () V!49229)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-datatypes ((tuple2!21518 0))(
  ( (tuple2!21519 (_1!10769 (_ BitVec 64)) (_2!10769 V!49229)) )
))
(declare-datatypes ((List!28712 0))(
  ( (Nil!28709) (Cons!28708 (h!29917 tuple2!21518) (t!42250 List!28712)) )
))
(declare-datatypes ((ListLongMap!19259 0))(
  ( (ListLongMap!19260 (toList!9645 List!28712)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5953 (array!83249 array!83247 (_ BitVec 32) (_ BitVec 32) V!49229 V!49229 (_ BitVec 32) Int) ListLongMap!19259)

(assert (=> b!1272123 (= e!725582 (not (= (getCurrentListMapNoExtraKeys!5953 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 from!1698 defaultEntry!1142) (getCurrentListMapNoExtraKeys!5953 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 from!1698 defaultEntry!1142))))))

(declare-fun b!1272124 () Bool)

(declare-fun res!846332 () Bool)

(assert (=> b!1272124 (=> (not res!846332) (not e!725582))))

(assert (=> b!1272124 (= res!846332 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40693 _keys!1364)) (bvsge from!1698 (size!40693 _keys!1364))))))

(declare-fun b!1272125 () Bool)

(declare-fun e!725578 () Bool)

(declare-fun e!725580 () Bool)

(declare-fun mapRes!51124 () Bool)

(assert (=> b!1272125 (= e!725578 (and e!725580 mapRes!51124))))

(declare-fun condMapEmpty!51124 () Bool)

(declare-fun mapDefault!51124 () ValueCell!15660)

(assert (=> b!1272125 (= condMapEmpty!51124 (= (arr!40155 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15660)) mapDefault!51124)))))

(declare-fun b!1272126 () Bool)

(declare-fun res!846331 () Bool)

(assert (=> b!1272126 (=> (not res!846331) (not e!725582))))

(declare-datatypes ((List!28713 0))(
  ( (Nil!28710) (Cons!28709 (h!29918 (_ BitVec 64)) (t!42251 List!28713)) )
))
(declare-fun arrayNoDuplicates!0 (array!83249 (_ BitVec 32) List!28713) Bool)

(assert (=> b!1272126 (= res!846331 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28710))))

(declare-fun b!1272127 () Bool)

(assert (=> b!1272127 (= e!725580 tp_is_empty!33027)))

(declare-fun b!1272128 () Bool)

(declare-fun res!846333 () Bool)

(assert (=> b!1272128 (=> (not res!846333) (not e!725582))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83249 (_ BitVec 32)) Bool)

(assert (=> b!1272128 (= res!846333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapIsEmpty!51124 () Bool)

(assert (=> mapIsEmpty!51124 mapRes!51124))

(declare-fun b!1272129 () Bool)

(declare-fun res!846334 () Bool)

(assert (=> b!1272129 (=> (not res!846334) (not e!725582))))

(assert (=> b!1272129 (= res!846334 (and (= (size!40692 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40693 _keys!1364) (size!40692 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!51124 () Bool)

(declare-fun tp!97481 () Bool)

(assert (=> mapNonEmpty!51124 (= mapRes!51124 (and tp!97481 e!725579))))

(declare-fun mapValue!51124 () ValueCell!15660)

(declare-fun mapRest!51124 () (Array (_ BitVec 32) ValueCell!15660))

(declare-fun mapKey!51124 () (_ BitVec 32))

(assert (=> mapNonEmpty!51124 (= (arr!40155 _values!1134) (store mapRest!51124 mapKey!51124 mapValue!51124))))

(declare-fun res!846335 () Bool)

(assert (=> start!107388 (=> (not res!846335) (not e!725582))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107388 (= res!846335 (validMask!0 mask!1730))))

(assert (=> start!107388 e!725582))

(declare-fun array_inv!30483 (array!83247) Bool)

(assert (=> start!107388 (and (array_inv!30483 _values!1134) e!725578)))

(assert (=> start!107388 true))

(declare-fun array_inv!30484 (array!83249) Bool)

(assert (=> start!107388 (array_inv!30484 _keys!1364)))

(assert (=> start!107388 tp_is_empty!33027))

(assert (=> start!107388 tp!97480))

(assert (= (and start!107388 res!846335) b!1272129))

(assert (= (and b!1272129 res!846334) b!1272128))

(assert (= (and b!1272128 res!846333) b!1272126))

(assert (= (and b!1272126 res!846331) b!1272124))

(assert (= (and b!1272124 res!846332) b!1272123))

(assert (= (and b!1272125 condMapEmpty!51124) mapIsEmpty!51124))

(assert (= (and b!1272125 (not condMapEmpty!51124)) mapNonEmpty!51124))

(get-info :version)

(assert (= (and mapNonEmpty!51124 ((_ is ValueCellFull!15660) mapValue!51124)) b!1272122))

(assert (= (and b!1272125 ((_ is ValueCellFull!15660) mapDefault!51124)) b!1272127))

(assert (= start!107388 b!1272125))

(declare-fun m!1169905 () Bool)

(assert (=> b!1272126 m!1169905))

(declare-fun m!1169907 () Bool)

(assert (=> mapNonEmpty!51124 m!1169907))

(declare-fun m!1169909 () Bool)

(assert (=> start!107388 m!1169909))

(declare-fun m!1169911 () Bool)

(assert (=> start!107388 m!1169911))

(declare-fun m!1169913 () Bool)

(assert (=> start!107388 m!1169913))

(declare-fun m!1169915 () Bool)

(assert (=> b!1272123 m!1169915))

(declare-fun m!1169917 () Bool)

(assert (=> b!1272123 m!1169917))

(declare-fun m!1169919 () Bool)

(assert (=> b!1272128 m!1169919))

(check-sat (not b!1272123) (not start!107388) (not b!1272128) tp_is_empty!33027 (not mapNonEmpty!51124) (not b_next!27657) b_and!45715 (not b!1272126))
(check-sat b_and!45715 (not b_next!27657))
(get-model)

(declare-fun b!1272164 () Bool)

(declare-fun e!725607 () Bool)

(declare-fun call!62526 () Bool)

(assert (=> b!1272164 (= e!725607 call!62526)))

(declare-fun b!1272165 () Bool)

(declare-fun e!725606 () Bool)

(declare-fun e!725608 () Bool)

(assert (=> b!1272165 (= e!725606 e!725608)))

(declare-fun res!846358 () Bool)

(assert (=> b!1272165 (=> (not res!846358) (not e!725608))))

(declare-fun e!725609 () Bool)

(assert (=> b!1272165 (= res!846358 (not e!725609))))

(declare-fun res!846357 () Bool)

(assert (=> b!1272165 (=> (not res!846357) (not e!725609))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1272165 (= res!846357 (validKeyInArray!0 (select (arr!40156 _keys!1364) #b00000000000000000000000000000000)))))

(declare-fun b!1272166 () Bool)

(assert (=> b!1272166 (= e!725607 call!62526)))

(declare-fun b!1272167 () Bool)

(declare-fun contains!7684 (List!28713 (_ BitVec 64)) Bool)

(assert (=> b!1272167 (= e!725609 (contains!7684 Nil!28710 (select (arr!40156 _keys!1364) #b00000000000000000000000000000000)))))

(declare-fun b!1272168 () Bool)

(assert (=> b!1272168 (= e!725608 e!725607)))

(declare-fun c!123608 () Bool)

(assert (=> b!1272168 (= c!123608 (validKeyInArray!0 (select (arr!40156 _keys!1364) #b00000000000000000000000000000000)))))

(declare-fun bm!62523 () Bool)

(assert (=> bm!62523 (= call!62526 (arrayNoDuplicates!0 _keys!1364 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!123608 (Cons!28709 (select (arr!40156 _keys!1364) #b00000000000000000000000000000000) Nil!28710) Nil!28710)))))

(declare-fun d!139747 () Bool)

(declare-fun res!846359 () Bool)

(assert (=> d!139747 (=> res!846359 e!725606)))

(assert (=> d!139747 (= res!846359 (bvsge #b00000000000000000000000000000000 (size!40693 _keys!1364)))))

(assert (=> d!139747 (= (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28710) e!725606)))

(assert (= (and d!139747 (not res!846359)) b!1272165))

(assert (= (and b!1272165 res!846357) b!1272167))

(assert (= (and b!1272165 res!846358) b!1272168))

(assert (= (and b!1272168 c!123608) b!1272166))

(assert (= (and b!1272168 (not c!123608)) b!1272164))

(assert (= (or b!1272166 b!1272164) bm!62523))

(declare-fun m!1169937 () Bool)

(assert (=> b!1272165 m!1169937))

(assert (=> b!1272165 m!1169937))

(declare-fun m!1169939 () Bool)

(assert (=> b!1272165 m!1169939))

(assert (=> b!1272167 m!1169937))

(assert (=> b!1272167 m!1169937))

(declare-fun m!1169941 () Bool)

(assert (=> b!1272167 m!1169941))

(assert (=> b!1272168 m!1169937))

(assert (=> b!1272168 m!1169937))

(assert (=> b!1272168 m!1169939))

(assert (=> bm!62523 m!1169937))

(declare-fun m!1169943 () Bool)

(assert (=> bm!62523 m!1169943))

(assert (=> b!1272126 d!139747))

(declare-fun d!139749 () Bool)

(assert (=> d!139749 (= (validMask!0 mask!1730) (and (or (= mask!1730 #b00000000000000000000000000000111) (= mask!1730 #b00000000000000000000000000001111) (= mask!1730 #b00000000000000000000000000011111) (= mask!1730 #b00000000000000000000000000111111) (= mask!1730 #b00000000000000000000000001111111) (= mask!1730 #b00000000000000000000000011111111) (= mask!1730 #b00000000000000000000000111111111) (= mask!1730 #b00000000000000000000001111111111) (= mask!1730 #b00000000000000000000011111111111) (= mask!1730 #b00000000000000000000111111111111) (= mask!1730 #b00000000000000000001111111111111) (= mask!1730 #b00000000000000000011111111111111) (= mask!1730 #b00000000000000000111111111111111) (= mask!1730 #b00000000000000001111111111111111) (= mask!1730 #b00000000000000011111111111111111) (= mask!1730 #b00000000000000111111111111111111) (= mask!1730 #b00000000000001111111111111111111) (= mask!1730 #b00000000000011111111111111111111) (= mask!1730 #b00000000000111111111111111111111) (= mask!1730 #b00000000001111111111111111111111) (= mask!1730 #b00000000011111111111111111111111) (= mask!1730 #b00000000111111111111111111111111) (= mask!1730 #b00000001111111111111111111111111) (= mask!1730 #b00000011111111111111111111111111) (= mask!1730 #b00000111111111111111111111111111) (= mask!1730 #b00001111111111111111111111111111) (= mask!1730 #b00011111111111111111111111111111) (= mask!1730 #b00111111111111111111111111111111)) (bvsle mask!1730 #b00111111111111111111111111111111)))))

(assert (=> start!107388 d!139749))

(declare-fun d!139751 () Bool)

(assert (=> d!139751 (= (array_inv!30483 _values!1134) (bvsge (size!40692 _values!1134) #b00000000000000000000000000000000))))

(assert (=> start!107388 d!139751))

(declare-fun d!139753 () Bool)

(assert (=> d!139753 (= (array_inv!30484 _keys!1364) (bvsge (size!40693 _keys!1364) #b00000000000000000000000000000000))))

(assert (=> start!107388 d!139753))

(declare-fun b!1272193 () Bool)

(declare-fun e!725630 () ListLongMap!19259)

(declare-fun call!62529 () ListLongMap!19259)

(assert (=> b!1272193 (= e!725630 call!62529)))

(declare-fun b!1272194 () Bool)

(declare-fun e!725626 () Bool)

(declare-fun e!725625 () Bool)

(assert (=> b!1272194 (= e!725626 e!725625)))

(assert (=> b!1272194 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvslt from!1698 (size!40693 _keys!1364)))))

(declare-fun res!846369 () Bool)

(declare-fun lt!574960 () ListLongMap!19259)

(declare-fun contains!7685 (ListLongMap!19259 (_ BitVec 64)) Bool)

(assert (=> b!1272194 (= res!846369 (contains!7685 lt!574960 (select (arr!40156 _keys!1364) from!1698)))))

(assert (=> b!1272194 (=> (not res!846369) (not e!725625))))

(declare-fun b!1272196 () Bool)

(declare-fun res!846368 () Bool)

(declare-fun e!725627 () Bool)

(assert (=> b!1272196 (=> (not res!846368) (not e!725627))))

(assert (=> b!1272196 (= res!846368 (not (contains!7685 lt!574960 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1272197 () Bool)

(declare-datatypes ((Unit!42260 0))(
  ( (Unit!42261) )
))
(declare-fun lt!574962 () Unit!42260)

(declare-fun lt!574961 () Unit!42260)

(assert (=> b!1272197 (= lt!574962 lt!574961)))

(declare-fun lt!574959 () (_ BitVec 64))

(declare-fun lt!574958 () (_ BitVec 64))

(declare-fun lt!574964 () V!49229)

(declare-fun lt!574963 () ListLongMap!19259)

(declare-fun +!4243 (ListLongMap!19259 tuple2!21518) ListLongMap!19259)

(assert (=> b!1272197 (not (contains!7685 (+!4243 lt!574963 (tuple2!21519 lt!574959 lt!574964)) lt!574958))))

(declare-fun addStillNotContains!336 (ListLongMap!19259 (_ BitVec 64) V!49229 (_ BitVec 64)) Unit!42260)

(assert (=> b!1272197 (= lt!574961 (addStillNotContains!336 lt!574963 lt!574959 lt!574964 lt!574958))))

(assert (=> b!1272197 (= lt!574958 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!20547 (ValueCell!15660 V!49229) V!49229)

(declare-fun dynLambda!3486 (Int (_ BitVec 64)) V!49229)

(assert (=> b!1272197 (= lt!574964 (get!20547 (select (arr!40155 _values!1134) from!1698) (dynLambda!3486 defaultEntry!1142 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1272197 (= lt!574959 (select (arr!40156 _keys!1364) from!1698))))

(assert (=> b!1272197 (= lt!574963 call!62529)))

(assert (=> b!1272197 (= e!725630 (+!4243 call!62529 (tuple2!21519 (select (arr!40156 _keys!1364) from!1698) (get!20547 (select (arr!40155 _values!1134) from!1698) (dynLambda!3486 defaultEntry!1142 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1272198 () Bool)

(declare-fun e!725628 () Bool)

(declare-fun isEmpty!1051 (ListLongMap!19259) Bool)

(assert (=> b!1272198 (= e!725628 (isEmpty!1051 lt!574960))))

(declare-fun b!1272199 () Bool)

(declare-fun e!725629 () ListLongMap!19259)

(assert (=> b!1272199 (= e!725629 e!725630)))

(declare-fun c!123618 () Bool)

(assert (=> b!1272199 (= c!123618 (validKeyInArray!0 (select (arr!40156 _keys!1364) from!1698)))))

(declare-fun b!1272200 () Bool)

(assert (=> b!1272200 (= e!725628 (= lt!574960 (getCurrentListMapNoExtraKeys!5953 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd from!1698 #b00000000000000000000000000000001) defaultEntry!1142)))))

(declare-fun b!1272201 () Bool)

(declare-fun e!725624 () Bool)

(assert (=> b!1272201 (= e!725624 (validKeyInArray!0 (select (arr!40156 _keys!1364) from!1698)))))

(assert (=> b!1272201 (bvsge from!1698 #b00000000000000000000000000000000)))

(declare-fun d!139755 () Bool)

(assert (=> d!139755 e!725627))

(declare-fun res!846370 () Bool)

(assert (=> d!139755 (=> (not res!846370) (not e!725627))))

(assert (=> d!139755 (= res!846370 (not (contains!7685 lt!574960 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!139755 (= lt!574960 e!725629)))

(declare-fun c!123617 () Bool)

(assert (=> d!139755 (= c!123617 (bvsge from!1698 (size!40693 _keys!1364)))))

(assert (=> d!139755 (validMask!0 mask!1730)))

(assert (=> d!139755 (= (getCurrentListMapNoExtraKeys!5953 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 from!1698 defaultEntry!1142) lt!574960)))

(declare-fun b!1272195 () Bool)

(assert (=> b!1272195 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvslt from!1698 (size!40693 _keys!1364)))))

(assert (=> b!1272195 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvslt from!1698 (size!40692 _values!1134)))))

(declare-fun apply!1041 (ListLongMap!19259 (_ BitVec 64)) V!49229)

(assert (=> b!1272195 (= e!725625 (= (apply!1041 lt!574960 (select (arr!40156 _keys!1364) from!1698)) (get!20547 (select (arr!40155 _values!1134) from!1698) (dynLambda!3486 defaultEntry!1142 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!62526 () Bool)

(assert (=> bm!62526 (= call!62529 (getCurrentListMapNoExtraKeys!5953 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd from!1698 #b00000000000000000000000000000001) defaultEntry!1142))))

(declare-fun b!1272202 () Bool)

(assert (=> b!1272202 (= e!725629 (ListLongMap!19260 Nil!28709))))

(declare-fun b!1272203 () Bool)

(assert (=> b!1272203 (= e!725627 e!725626)))

(declare-fun c!123620 () Bool)

(assert (=> b!1272203 (= c!123620 e!725624)))

(declare-fun res!846371 () Bool)

(assert (=> b!1272203 (=> (not res!846371) (not e!725624))))

(assert (=> b!1272203 (= res!846371 (bvslt from!1698 (size!40693 _keys!1364)))))

(declare-fun b!1272204 () Bool)

(assert (=> b!1272204 (= e!725626 e!725628)))

(declare-fun c!123619 () Bool)

(assert (=> b!1272204 (= c!123619 (bvslt from!1698 (size!40693 _keys!1364)))))

(assert (= (and d!139755 c!123617) b!1272202))

(assert (= (and d!139755 (not c!123617)) b!1272199))

(assert (= (and b!1272199 c!123618) b!1272197))

(assert (= (and b!1272199 (not c!123618)) b!1272193))

(assert (= (or b!1272197 b!1272193) bm!62526))

(assert (= (and d!139755 res!846370) b!1272196))

(assert (= (and b!1272196 res!846368) b!1272203))

(assert (= (and b!1272203 res!846371) b!1272201))

(assert (= (and b!1272203 c!123620) b!1272194))

(assert (= (and b!1272203 (not c!123620)) b!1272204))

(assert (= (and b!1272194 res!846369) b!1272195))

(assert (= (and b!1272204 c!123619) b!1272200))

(assert (= (and b!1272204 (not c!123619)) b!1272198))

(declare-fun b_lambda!23081 () Bool)

(assert (=> (not b_lambda!23081) (not b!1272197)))

(declare-fun t!42255 () Bool)

(declare-fun tb!11347 () Bool)

(assert (=> (and start!107388 (= defaultEntry!1142 defaultEntry!1142) t!42255) tb!11347))

(declare-fun result!23563 () Bool)

(assert (=> tb!11347 (= result!23563 tp_is_empty!33027)))

(assert (=> b!1272197 t!42255))

(declare-fun b_and!45719 () Bool)

(assert (= b_and!45715 (and (=> t!42255 result!23563) b_and!45719)))

(declare-fun b_lambda!23083 () Bool)

(assert (=> (not b_lambda!23083) (not b!1272195)))

(assert (=> b!1272195 t!42255))

(declare-fun b_and!45721 () Bool)

(assert (= b_and!45719 (and (=> t!42255 result!23563) b_and!45721)))

(declare-fun m!1169945 () Bool)

(assert (=> b!1272199 m!1169945))

(assert (=> b!1272199 m!1169945))

(declare-fun m!1169947 () Bool)

(assert (=> b!1272199 m!1169947))

(declare-fun m!1169949 () Bool)

(assert (=> b!1272198 m!1169949))

(declare-fun m!1169951 () Bool)

(assert (=> bm!62526 m!1169951))

(declare-fun m!1169953 () Bool)

(assert (=> d!139755 m!1169953))

(assert (=> d!139755 m!1169909))

(assert (=> b!1272201 m!1169945))

(assert (=> b!1272201 m!1169945))

(assert (=> b!1272201 m!1169947))

(assert (=> b!1272195 m!1169945))

(declare-fun m!1169955 () Bool)

(assert (=> b!1272195 m!1169955))

(declare-fun m!1169957 () Bool)

(assert (=> b!1272195 m!1169957))

(assert (=> b!1272195 m!1169955))

(assert (=> b!1272195 m!1169957))

(declare-fun m!1169959 () Bool)

(assert (=> b!1272195 m!1169959))

(assert (=> b!1272195 m!1169945))

(declare-fun m!1169961 () Bool)

(assert (=> b!1272195 m!1169961))

(declare-fun m!1169963 () Bool)

(assert (=> b!1272197 m!1169963))

(declare-fun m!1169965 () Bool)

(assert (=> b!1272197 m!1169965))

(declare-fun m!1169967 () Bool)

(assert (=> b!1272197 m!1169967))

(assert (=> b!1272197 m!1169965))

(assert (=> b!1272197 m!1169945))

(declare-fun m!1169969 () Bool)

(assert (=> b!1272197 m!1169969))

(assert (=> b!1272197 m!1169955))

(assert (=> b!1272197 m!1169957))

(assert (=> b!1272197 m!1169955))

(assert (=> b!1272197 m!1169957))

(assert (=> b!1272197 m!1169959))

(declare-fun m!1169971 () Bool)

(assert (=> b!1272196 m!1169971))

(assert (=> b!1272200 m!1169951))

(assert (=> b!1272194 m!1169945))

(assert (=> b!1272194 m!1169945))

(declare-fun m!1169973 () Bool)

(assert (=> b!1272194 m!1169973))

(assert (=> b!1272123 d!139755))

(declare-fun b!1272207 () Bool)

(declare-fun e!725637 () ListLongMap!19259)

(declare-fun call!62530 () ListLongMap!19259)

(assert (=> b!1272207 (= e!725637 call!62530)))

(declare-fun b!1272208 () Bool)

(declare-fun e!725633 () Bool)

(declare-fun e!725632 () Bool)

(assert (=> b!1272208 (= e!725633 e!725632)))

(assert (=> b!1272208 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvslt from!1698 (size!40693 _keys!1364)))))

(declare-fun res!846373 () Bool)

(declare-fun lt!574967 () ListLongMap!19259)

(assert (=> b!1272208 (= res!846373 (contains!7685 lt!574967 (select (arr!40156 _keys!1364) from!1698)))))

(assert (=> b!1272208 (=> (not res!846373) (not e!725632))))

(declare-fun b!1272210 () Bool)

(declare-fun res!846372 () Bool)

(declare-fun e!725634 () Bool)

(assert (=> b!1272210 (=> (not res!846372) (not e!725634))))

(assert (=> b!1272210 (= res!846372 (not (contains!7685 lt!574967 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1272211 () Bool)

(declare-fun lt!574969 () Unit!42260)

(declare-fun lt!574968 () Unit!42260)

(assert (=> b!1272211 (= lt!574969 lt!574968)))

(declare-fun lt!574965 () (_ BitVec 64))

(declare-fun lt!574966 () (_ BitVec 64))

(declare-fun lt!574971 () V!49229)

(declare-fun lt!574970 () ListLongMap!19259)

(assert (=> b!1272211 (not (contains!7685 (+!4243 lt!574970 (tuple2!21519 lt!574966 lt!574971)) lt!574965))))

(assert (=> b!1272211 (= lt!574968 (addStillNotContains!336 lt!574970 lt!574966 lt!574971 lt!574965))))

(assert (=> b!1272211 (= lt!574965 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1272211 (= lt!574971 (get!20547 (select (arr!40155 _values!1134) from!1698) (dynLambda!3486 defaultEntry!1142 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1272211 (= lt!574966 (select (arr!40156 _keys!1364) from!1698))))

(assert (=> b!1272211 (= lt!574970 call!62530)))

(assert (=> b!1272211 (= e!725637 (+!4243 call!62530 (tuple2!21519 (select (arr!40156 _keys!1364) from!1698) (get!20547 (select (arr!40155 _values!1134) from!1698) (dynLambda!3486 defaultEntry!1142 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1272212 () Bool)

(declare-fun e!725635 () Bool)

(assert (=> b!1272212 (= e!725635 (isEmpty!1051 lt!574967))))

(declare-fun b!1272213 () Bool)

(declare-fun e!725636 () ListLongMap!19259)

(assert (=> b!1272213 (= e!725636 e!725637)))

(declare-fun c!123622 () Bool)

(assert (=> b!1272213 (= c!123622 (validKeyInArray!0 (select (arr!40156 _keys!1364) from!1698)))))

(declare-fun b!1272214 () Bool)

(assert (=> b!1272214 (= e!725635 (= lt!574967 (getCurrentListMapNoExtraKeys!5953 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd from!1698 #b00000000000000000000000000000001) defaultEntry!1142)))))

(declare-fun b!1272215 () Bool)

(declare-fun e!725631 () Bool)

(assert (=> b!1272215 (= e!725631 (validKeyInArray!0 (select (arr!40156 _keys!1364) from!1698)))))

(assert (=> b!1272215 (bvsge from!1698 #b00000000000000000000000000000000)))

(declare-fun d!139757 () Bool)

(assert (=> d!139757 e!725634))

(declare-fun res!846374 () Bool)

(assert (=> d!139757 (=> (not res!846374) (not e!725634))))

(assert (=> d!139757 (= res!846374 (not (contains!7685 lt!574967 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!139757 (= lt!574967 e!725636)))

(declare-fun c!123621 () Bool)

(assert (=> d!139757 (= c!123621 (bvsge from!1698 (size!40693 _keys!1364)))))

(assert (=> d!139757 (validMask!0 mask!1730)))

(assert (=> d!139757 (= (getCurrentListMapNoExtraKeys!5953 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 from!1698 defaultEntry!1142) lt!574967)))

(declare-fun b!1272209 () Bool)

(assert (=> b!1272209 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvslt from!1698 (size!40693 _keys!1364)))))

(assert (=> b!1272209 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvslt from!1698 (size!40692 _values!1134)))))

(assert (=> b!1272209 (= e!725632 (= (apply!1041 lt!574967 (select (arr!40156 _keys!1364) from!1698)) (get!20547 (select (arr!40155 _values!1134) from!1698) (dynLambda!3486 defaultEntry!1142 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!62527 () Bool)

(assert (=> bm!62527 (= call!62530 (getCurrentListMapNoExtraKeys!5953 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd from!1698 #b00000000000000000000000000000001) defaultEntry!1142))))

(declare-fun b!1272216 () Bool)

(assert (=> b!1272216 (= e!725636 (ListLongMap!19260 Nil!28709))))

(declare-fun b!1272217 () Bool)

(assert (=> b!1272217 (= e!725634 e!725633)))

(declare-fun c!123624 () Bool)

(assert (=> b!1272217 (= c!123624 e!725631)))

(declare-fun res!846375 () Bool)

(assert (=> b!1272217 (=> (not res!846375) (not e!725631))))

(assert (=> b!1272217 (= res!846375 (bvslt from!1698 (size!40693 _keys!1364)))))

(declare-fun b!1272218 () Bool)

(assert (=> b!1272218 (= e!725633 e!725635)))

(declare-fun c!123623 () Bool)

(assert (=> b!1272218 (= c!123623 (bvslt from!1698 (size!40693 _keys!1364)))))

(assert (= (and d!139757 c!123621) b!1272216))

(assert (= (and d!139757 (not c!123621)) b!1272213))

(assert (= (and b!1272213 c!123622) b!1272211))

(assert (= (and b!1272213 (not c!123622)) b!1272207))

(assert (= (or b!1272211 b!1272207) bm!62527))

(assert (= (and d!139757 res!846374) b!1272210))

(assert (= (and b!1272210 res!846372) b!1272217))

(assert (= (and b!1272217 res!846375) b!1272215))

(assert (= (and b!1272217 c!123624) b!1272208))

(assert (= (and b!1272217 (not c!123624)) b!1272218))

(assert (= (and b!1272208 res!846373) b!1272209))

(assert (= (and b!1272218 c!123623) b!1272214))

(assert (= (and b!1272218 (not c!123623)) b!1272212))

(declare-fun b_lambda!23085 () Bool)

(assert (=> (not b_lambda!23085) (not b!1272211)))

(assert (=> b!1272211 t!42255))

(declare-fun b_and!45723 () Bool)

(assert (= b_and!45721 (and (=> t!42255 result!23563) b_and!45723)))

(declare-fun b_lambda!23087 () Bool)

(assert (=> (not b_lambda!23087) (not b!1272209)))

(assert (=> b!1272209 t!42255))

(declare-fun b_and!45725 () Bool)

(assert (= b_and!45723 (and (=> t!42255 result!23563) b_and!45725)))

(assert (=> b!1272213 m!1169945))

(assert (=> b!1272213 m!1169945))

(assert (=> b!1272213 m!1169947))

(declare-fun m!1169975 () Bool)

(assert (=> b!1272212 m!1169975))

(declare-fun m!1169977 () Bool)

(assert (=> bm!62527 m!1169977))

(declare-fun m!1169979 () Bool)

(assert (=> d!139757 m!1169979))

(assert (=> d!139757 m!1169909))

(assert (=> b!1272215 m!1169945))

(assert (=> b!1272215 m!1169945))

(assert (=> b!1272215 m!1169947))

(assert (=> b!1272209 m!1169945))

(assert (=> b!1272209 m!1169955))

(assert (=> b!1272209 m!1169957))

(assert (=> b!1272209 m!1169955))

(assert (=> b!1272209 m!1169957))

(assert (=> b!1272209 m!1169959))

(assert (=> b!1272209 m!1169945))

(declare-fun m!1169981 () Bool)

(assert (=> b!1272209 m!1169981))

(declare-fun m!1169983 () Bool)

(assert (=> b!1272211 m!1169983))

(declare-fun m!1169985 () Bool)

(assert (=> b!1272211 m!1169985))

(declare-fun m!1169987 () Bool)

(assert (=> b!1272211 m!1169987))

(assert (=> b!1272211 m!1169985))

(assert (=> b!1272211 m!1169945))

(declare-fun m!1169989 () Bool)

(assert (=> b!1272211 m!1169989))

(assert (=> b!1272211 m!1169955))

(assert (=> b!1272211 m!1169957))

(assert (=> b!1272211 m!1169955))

(assert (=> b!1272211 m!1169957))

(assert (=> b!1272211 m!1169959))

(declare-fun m!1169991 () Bool)

(assert (=> b!1272210 m!1169991))

(assert (=> b!1272214 m!1169977))

(assert (=> b!1272208 m!1169945))

(assert (=> b!1272208 m!1169945))

(declare-fun m!1169993 () Bool)

(assert (=> b!1272208 m!1169993))

(assert (=> b!1272123 d!139757))

(declare-fun b!1272227 () Bool)

(declare-fun e!725646 () Bool)

(declare-fun call!62533 () Bool)

(assert (=> b!1272227 (= e!725646 call!62533)))

(declare-fun d!139759 () Bool)

(declare-fun res!846381 () Bool)

(declare-fun e!725644 () Bool)

(assert (=> d!139759 (=> res!846381 e!725644)))

(assert (=> d!139759 (= res!846381 (bvsge #b00000000000000000000000000000000 (size!40693 _keys!1364)))))

(assert (=> d!139759 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730) e!725644)))

(declare-fun b!1272228 () Bool)

(declare-fun e!725645 () Bool)

(assert (=> b!1272228 (= e!725646 e!725645)))

(declare-fun lt!574980 () (_ BitVec 64))

(assert (=> b!1272228 (= lt!574980 (select (arr!40156 _keys!1364) #b00000000000000000000000000000000))))

(declare-fun lt!574979 () Unit!42260)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83249 (_ BitVec 64) (_ BitVec 32)) Unit!42260)

(assert (=> b!1272228 (= lt!574979 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1364 lt!574980 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83249 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1272228 (arrayContainsKey!0 _keys!1364 lt!574980 #b00000000000000000000000000000000)))

(declare-fun lt!574978 () Unit!42260)

(assert (=> b!1272228 (= lt!574978 lt!574979)))

(declare-fun res!846380 () Bool)

(declare-datatypes ((SeekEntryResult!9985 0))(
  ( (MissingZero!9985 (index!42310 (_ BitVec 32))) (Found!9985 (index!42311 (_ BitVec 32))) (Intermediate!9985 (undefined!10797 Bool) (index!42312 (_ BitVec 32)) (x!112379 (_ BitVec 32))) (Undefined!9985) (MissingVacant!9985 (index!42313 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83249 (_ BitVec 32)) SeekEntryResult!9985)

(assert (=> b!1272228 (= res!846380 (= (seekEntryOrOpen!0 (select (arr!40156 _keys!1364) #b00000000000000000000000000000000) _keys!1364 mask!1730) (Found!9985 #b00000000000000000000000000000000)))))

(assert (=> b!1272228 (=> (not res!846380) (not e!725645))))

(declare-fun b!1272229 () Bool)

(assert (=> b!1272229 (= e!725644 e!725646)))

(declare-fun c!123627 () Bool)

(assert (=> b!1272229 (= c!123627 (validKeyInArray!0 (select (arr!40156 _keys!1364) #b00000000000000000000000000000000)))))

(declare-fun b!1272230 () Bool)

(assert (=> b!1272230 (= e!725645 call!62533)))

(declare-fun bm!62530 () Bool)

(assert (=> bm!62530 (= call!62533 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1364 mask!1730))))

(assert (= (and d!139759 (not res!846381)) b!1272229))

(assert (= (and b!1272229 c!123627) b!1272228))

(assert (= (and b!1272229 (not c!123627)) b!1272227))

(assert (= (and b!1272228 res!846380) b!1272230))

(assert (= (or b!1272230 b!1272227) bm!62530))

(assert (=> b!1272228 m!1169937))

(declare-fun m!1169995 () Bool)

(assert (=> b!1272228 m!1169995))

(declare-fun m!1169997 () Bool)

(assert (=> b!1272228 m!1169997))

(assert (=> b!1272228 m!1169937))

(declare-fun m!1169999 () Bool)

(assert (=> b!1272228 m!1169999))

(assert (=> b!1272229 m!1169937))

(assert (=> b!1272229 m!1169937))

(assert (=> b!1272229 m!1169939))

(declare-fun m!1170001 () Bool)

(assert (=> bm!62530 m!1170001))

(assert (=> b!1272128 d!139759))

(declare-fun condMapEmpty!51130 () Bool)

(declare-fun mapDefault!51130 () ValueCell!15660)

(assert (=> mapNonEmpty!51124 (= condMapEmpty!51130 (= mapRest!51124 ((as const (Array (_ BitVec 32) ValueCell!15660)) mapDefault!51130)))))

(declare-fun e!725651 () Bool)

(declare-fun mapRes!51130 () Bool)

(assert (=> mapNonEmpty!51124 (= tp!97481 (and e!725651 mapRes!51130))))

(declare-fun b!1272238 () Bool)

(assert (=> b!1272238 (= e!725651 tp_is_empty!33027)))

(declare-fun b!1272237 () Bool)

(declare-fun e!725652 () Bool)

(assert (=> b!1272237 (= e!725652 tp_is_empty!33027)))

(declare-fun mapNonEmpty!51130 () Bool)

(declare-fun tp!97490 () Bool)

(assert (=> mapNonEmpty!51130 (= mapRes!51130 (and tp!97490 e!725652))))

(declare-fun mapValue!51130 () ValueCell!15660)

(declare-fun mapKey!51130 () (_ BitVec 32))

(declare-fun mapRest!51130 () (Array (_ BitVec 32) ValueCell!15660))

(assert (=> mapNonEmpty!51130 (= mapRest!51124 (store mapRest!51130 mapKey!51130 mapValue!51130))))

(declare-fun mapIsEmpty!51130 () Bool)

(assert (=> mapIsEmpty!51130 mapRes!51130))

(assert (= (and mapNonEmpty!51124 condMapEmpty!51130) mapIsEmpty!51130))

(assert (= (and mapNonEmpty!51124 (not condMapEmpty!51130)) mapNonEmpty!51130))

(assert (= (and mapNonEmpty!51130 ((_ is ValueCellFull!15660) mapValue!51130)) b!1272237))

(assert (= (and mapNonEmpty!51124 ((_ is ValueCellFull!15660) mapDefault!51130)) b!1272238))

(declare-fun m!1170003 () Bool)

(assert (=> mapNonEmpty!51130 m!1170003))

(declare-fun b_lambda!23089 () Bool)

(assert (= b_lambda!23081 (or (and start!107388 b_free!27657) b_lambda!23089)))

(declare-fun b_lambda!23091 () Bool)

(assert (= b_lambda!23085 (or (and start!107388 b_free!27657) b_lambda!23091)))

(declare-fun b_lambda!23093 () Bool)

(assert (= b_lambda!23087 (or (and start!107388 b_free!27657) b_lambda!23093)))

(declare-fun b_lambda!23095 () Bool)

(assert (= b_lambda!23083 (or (and start!107388 b_free!27657) b_lambda!23095)))

(check-sat (not d!139755) (not b!1272215) (not b!1272228) (not d!139757) (not b!1272208) (not b!1272209) (not b!1272195) (not b_next!27657) (not b!1272196) (not b_lambda!23095) (not mapNonEmpty!51130) (not bm!62526) (not b!1272214) (not b!1272212) (not b!1272165) (not b!1272213) (not b!1272211) b_and!45725 (not bm!62527) (not b!1272200) (not b_lambda!23093) (not b!1272197) (not b!1272167) (not b!1272210) (not b!1272168) (not b!1272201) (not b!1272198) (not b!1272199) (not bm!62523) (not b!1272194) tp_is_empty!33027 (not b_lambda!23089) (not b_lambda!23091) (not b!1272229) (not bm!62530))
(check-sat b_and!45725 (not b_next!27657))
