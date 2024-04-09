; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37874 () Bool)

(assert start!37874)

(declare-fun b_free!8925 () Bool)

(declare-fun b_next!8925 () Bool)

(assert (=> start!37874 (= b_free!8925 (not b_next!8925))))

(declare-fun tp!31533 () Bool)

(declare-fun b_and!16209 () Bool)

(assert (=> start!37874 (= tp!31533 b_and!16209)))

(declare-fun b!389008 () Bool)

(declare-fun res!222575 () Bool)

(declare-fun e!235694 () Bool)

(assert (=> b!389008 (=> (not res!222575) (not e!235694))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13901 0))(
  ( (V!13902 (val!4843 Int)) )
))
(declare-datatypes ((ValueCell!4455 0))(
  ( (ValueCellFull!4455 (v!7044 V!13901)) (EmptyCell!4455) )
))
(declare-datatypes ((array!23065 0))(
  ( (array!23066 (arr!10996 (Array (_ BitVec 32) ValueCell!4455)) (size!11348 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23065)

(declare-datatypes ((array!23067 0))(
  ( (array!23068 (arr!10997 (Array (_ BitVec 32) (_ BitVec 64))) (size!11349 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23067)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!389008 (= res!222575 (and (= (size!11348 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11349 _keys!658) (size!11348 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!389009 () Bool)

(declare-fun e!235699 () Bool)

(declare-fun e!235695 () Bool)

(declare-fun mapRes!15966 () Bool)

(assert (=> b!389009 (= e!235699 (and e!235695 mapRes!15966))))

(declare-fun condMapEmpty!15966 () Bool)

(declare-fun mapDefault!15966 () ValueCell!4455)

(assert (=> b!389009 (= condMapEmpty!15966 (= (arr!10996 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4455)) mapDefault!15966)))))

(declare-fun mapNonEmpty!15966 () Bool)

(declare-fun tp!31532 () Bool)

(declare-fun e!235701 () Bool)

(assert (=> mapNonEmpty!15966 (= mapRes!15966 (and tp!31532 e!235701))))

(declare-fun mapKey!15966 () (_ BitVec 32))

(declare-fun mapValue!15966 () ValueCell!4455)

(declare-fun mapRest!15966 () (Array (_ BitVec 32) ValueCell!4455))

(assert (=> mapNonEmpty!15966 (= (arr!10996 _values!506) (store mapRest!15966 mapKey!15966 mapValue!15966))))

(declare-datatypes ((tuple2!6458 0))(
  ( (tuple2!6459 (_1!3239 (_ BitVec 64)) (_2!3239 V!13901)) )
))
(declare-fun lt!182879 () tuple2!6458)

(declare-datatypes ((List!6340 0))(
  ( (Nil!6337) (Cons!6336 (h!7192 tuple2!6458) (t!11502 List!6340)) )
))
(declare-datatypes ((ListLongMap!5385 0))(
  ( (ListLongMap!5386 (toList!2708 List!6340)) )
))
(declare-fun lt!182872 () ListLongMap!5385)

(declare-fun e!235696 () Bool)

(declare-fun lt!182875 () ListLongMap!5385)

(declare-fun lt!182876 () tuple2!6458)

(declare-fun b!389010 () Bool)

(declare-fun +!1006 (ListLongMap!5385 tuple2!6458) ListLongMap!5385)

(assert (=> b!389010 (= e!235696 (= lt!182875 (+!1006 (+!1006 lt!182872 lt!182879) lt!182876)))))

(declare-fun b!389011 () Bool)

(declare-fun tp_is_empty!9597 () Bool)

(assert (=> b!389011 (= e!235701 tp_is_empty!9597)))

(declare-fun b!389012 () Bool)

(declare-fun res!222580 () Bool)

(declare-fun e!235698 () Bool)

(assert (=> b!389012 (=> (not res!222580) (not e!235698))))

(declare-fun lt!182870 () array!23067)

(declare-datatypes ((List!6341 0))(
  ( (Nil!6338) (Cons!6337 (h!7193 (_ BitVec 64)) (t!11503 List!6341)) )
))
(declare-fun arrayNoDuplicates!0 (array!23067 (_ BitVec 32) List!6341) Bool)

(assert (=> b!389012 (= res!222580 (arrayNoDuplicates!0 lt!182870 #b00000000000000000000000000000000 Nil!6338))))

(declare-fun b!389013 () Bool)

(declare-fun res!222578 () Bool)

(assert (=> b!389013 (=> (not res!222578) (not e!235696))))

(declare-fun lt!182874 () ListLongMap!5385)

(declare-fun lt!182878 () ListLongMap!5385)

(assert (=> b!389013 (= res!222578 (= lt!182874 (+!1006 (+!1006 lt!182878 lt!182879) lt!182876)))))

(declare-fun b!389014 () Bool)

(declare-fun res!222579 () Bool)

(assert (=> b!389014 (=> (not res!222579) (not e!235694))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23067 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!389014 (= res!222579 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15966 () Bool)

(assert (=> mapIsEmpty!15966 mapRes!15966))

(declare-fun b!389015 () Bool)

(assert (=> b!389015 (= e!235694 e!235698)))

(declare-fun res!222569 () Bool)

(assert (=> b!389015 (=> (not res!222569) (not e!235698))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23067 (_ BitVec 32)) Bool)

(assert (=> b!389015 (= res!222569 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182870 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!389015 (= lt!182870 (array!23068 (store (arr!10997 _keys!658) i!548 k0!778) (size!11349 _keys!658)))))

(declare-fun b!389016 () Bool)

(declare-fun e!235697 () Bool)

(assert (=> b!389016 (= e!235697 (not (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!389016 e!235696))

(declare-fun res!222577 () Bool)

(assert (=> b!389016 (=> (not res!222577) (not e!235696))))

(declare-fun lt!182877 () ListLongMap!5385)

(assert (=> b!389016 (= res!222577 (= lt!182875 (+!1006 (+!1006 lt!182877 lt!182879) lt!182876)))))

(declare-fun minValue!472 () V!13901)

(assert (=> b!389016 (= lt!182876 (tuple2!6459 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun zeroValue!472 () V!13901)

(assert (=> b!389016 (= lt!182879 (tuple2!6459 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun res!222571 () Bool)

(assert (=> start!37874 (=> (not res!222571) (not e!235694))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37874 (= res!222571 (validMask!0 mask!970))))

(assert (=> start!37874 e!235694))

(declare-fun array_inv!8062 (array!23065) Bool)

(assert (=> start!37874 (and (array_inv!8062 _values!506) e!235699)))

(assert (=> start!37874 tp!31533))

(assert (=> start!37874 true))

(assert (=> start!37874 tp_is_empty!9597))

(declare-fun array_inv!8063 (array!23067) Bool)

(assert (=> start!37874 (array_inv!8063 _keys!658)))

(declare-fun b!389017 () Bool)

(declare-fun res!222581 () Bool)

(assert (=> b!389017 (=> (not res!222581) (not e!235694))))

(assert (=> b!389017 (= res!222581 (or (= (select (arr!10997 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10997 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!389018 () Bool)

(declare-fun res!222574 () Bool)

(assert (=> b!389018 (=> (not res!222574) (not e!235694))))

(assert (=> b!389018 (= res!222574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!389019 () Bool)

(assert (=> b!389019 (= e!235695 tp_is_empty!9597)))

(declare-fun b!389020 () Bool)

(declare-fun res!222573 () Bool)

(assert (=> b!389020 (=> (not res!222573) (not e!235694))))

(assert (=> b!389020 (= res!222573 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6338))))

(declare-fun b!389021 () Bool)

(assert (=> b!389021 (= e!235698 (not e!235697))))

(declare-fun res!222572 () Bool)

(assert (=> b!389021 (=> res!222572 e!235697)))

(assert (=> b!389021 (= res!222572 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun getCurrentListMap!2077 (array!23067 array!23065 (_ BitVec 32) (_ BitVec 32) V!13901 V!13901 (_ BitVec 32) Int) ListLongMap!5385)

(assert (=> b!389021 (= lt!182874 (getCurrentListMap!2077 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182873 () array!23065)

(assert (=> b!389021 (= lt!182875 (getCurrentListMap!2077 lt!182870 lt!182873 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!389021 (and (= lt!182877 lt!182872) (= lt!182872 lt!182877))))

(declare-fun v!373 () V!13901)

(assert (=> b!389021 (= lt!182872 (+!1006 lt!182878 (tuple2!6459 k0!778 v!373)))))

(declare-datatypes ((Unit!11899 0))(
  ( (Unit!11900) )
))
(declare-fun lt!182871 () Unit!11899)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!234 (array!23067 array!23065 (_ BitVec 32) (_ BitVec 32) V!13901 V!13901 (_ BitVec 32) (_ BitVec 64) V!13901 (_ BitVec 32) Int) Unit!11899)

(assert (=> b!389021 (= lt!182871 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!234 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!939 (array!23067 array!23065 (_ BitVec 32) (_ BitVec 32) V!13901 V!13901 (_ BitVec 32) Int) ListLongMap!5385)

(assert (=> b!389021 (= lt!182877 (getCurrentListMapNoExtraKeys!939 lt!182870 lt!182873 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!389021 (= lt!182873 (array!23066 (store (arr!10996 _values!506) i!548 (ValueCellFull!4455 v!373)) (size!11348 _values!506)))))

(assert (=> b!389021 (= lt!182878 (getCurrentListMapNoExtraKeys!939 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!389022 () Bool)

(declare-fun res!222576 () Bool)

(assert (=> b!389022 (=> (not res!222576) (not e!235694))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!389022 (= res!222576 (validKeyInArray!0 k0!778))))

(declare-fun b!389023 () Bool)

(declare-fun res!222570 () Bool)

(assert (=> b!389023 (=> (not res!222570) (not e!235694))))

(assert (=> b!389023 (= res!222570 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11349 _keys!658))))))

(assert (= (and start!37874 res!222571) b!389008))

(assert (= (and b!389008 res!222575) b!389018))

(assert (= (and b!389018 res!222574) b!389020))

(assert (= (and b!389020 res!222573) b!389023))

(assert (= (and b!389023 res!222570) b!389022))

(assert (= (and b!389022 res!222576) b!389017))

(assert (= (and b!389017 res!222581) b!389014))

(assert (= (and b!389014 res!222579) b!389015))

(assert (= (and b!389015 res!222569) b!389012))

(assert (= (and b!389012 res!222580) b!389021))

(assert (= (and b!389021 (not res!222572)) b!389016))

(assert (= (and b!389016 res!222577) b!389013))

(assert (= (and b!389013 res!222578) b!389010))

(assert (= (and b!389009 condMapEmpty!15966) mapIsEmpty!15966))

(assert (= (and b!389009 (not condMapEmpty!15966)) mapNonEmpty!15966))

(get-info :version)

(assert (= (and mapNonEmpty!15966 ((_ is ValueCellFull!4455) mapValue!15966)) b!389011))

(assert (= (and b!389009 ((_ is ValueCellFull!4455) mapDefault!15966)) b!389019))

(assert (= start!37874 b!389009))

(declare-fun m!385065 () Bool)

(assert (=> start!37874 m!385065))

(declare-fun m!385067 () Bool)

(assert (=> start!37874 m!385067))

(declare-fun m!385069 () Bool)

(assert (=> start!37874 m!385069))

(declare-fun m!385071 () Bool)

(assert (=> b!389010 m!385071))

(assert (=> b!389010 m!385071))

(declare-fun m!385073 () Bool)

(assert (=> b!389010 m!385073))

(declare-fun m!385075 () Bool)

(assert (=> b!389012 m!385075))

(declare-fun m!385077 () Bool)

(assert (=> b!389018 m!385077))

(declare-fun m!385079 () Bool)

(assert (=> b!389013 m!385079))

(assert (=> b!389013 m!385079))

(declare-fun m!385081 () Bool)

(assert (=> b!389013 m!385081))

(declare-fun m!385083 () Bool)

(assert (=> mapNonEmpty!15966 m!385083))

(declare-fun m!385085 () Bool)

(assert (=> b!389014 m!385085))

(declare-fun m!385087 () Bool)

(assert (=> b!389020 m!385087))

(declare-fun m!385089 () Bool)

(assert (=> b!389017 m!385089))

(declare-fun m!385091 () Bool)

(assert (=> b!389016 m!385091))

(assert (=> b!389016 m!385091))

(declare-fun m!385093 () Bool)

(assert (=> b!389016 m!385093))

(declare-fun m!385095 () Bool)

(assert (=> b!389021 m!385095))

(declare-fun m!385097 () Bool)

(assert (=> b!389021 m!385097))

(declare-fun m!385099 () Bool)

(assert (=> b!389021 m!385099))

(declare-fun m!385101 () Bool)

(assert (=> b!389021 m!385101))

(declare-fun m!385103 () Bool)

(assert (=> b!389021 m!385103))

(declare-fun m!385105 () Bool)

(assert (=> b!389021 m!385105))

(declare-fun m!385107 () Bool)

(assert (=> b!389021 m!385107))

(declare-fun m!385109 () Bool)

(assert (=> b!389022 m!385109))

(declare-fun m!385111 () Bool)

(assert (=> b!389015 m!385111))

(declare-fun m!385113 () Bool)

(assert (=> b!389015 m!385113))

(check-sat (not b!389014) (not b!389021) (not b!389020) b_and!16209 (not start!37874) (not b!389016) (not b!389012) (not b_next!8925) (not b!389013) (not b!389015) (not b!389022) (not b!389010) (not mapNonEmpty!15966) tp_is_empty!9597 (not b!389018))
(check-sat b_and!16209 (not b_next!8925))
(get-model)

(declare-fun d!72749 () Bool)

(declare-fun e!235728 () Bool)

(assert (=> d!72749 e!235728))

(declare-fun res!222625 () Bool)

(assert (=> d!72749 (=> (not res!222625) (not e!235728))))

(declare-fun lt!182920 () ListLongMap!5385)

(declare-fun contains!2447 (ListLongMap!5385 (_ BitVec 64)) Bool)

(assert (=> d!72749 (= res!222625 (contains!2447 lt!182920 (_1!3239 lt!182876)))))

(declare-fun lt!182921 () List!6340)

(assert (=> d!72749 (= lt!182920 (ListLongMap!5386 lt!182921))))

(declare-fun lt!182918 () Unit!11899)

(declare-fun lt!182919 () Unit!11899)

(assert (=> d!72749 (= lt!182918 lt!182919)))

(declare-datatypes ((Option!362 0))(
  ( (Some!361 (v!7049 V!13901)) (None!360) )
))
(declare-fun getValueByKey!356 (List!6340 (_ BitVec 64)) Option!362)

(assert (=> d!72749 (= (getValueByKey!356 lt!182921 (_1!3239 lt!182876)) (Some!361 (_2!3239 lt!182876)))))

(declare-fun lemmaContainsTupThenGetReturnValue!180 (List!6340 (_ BitVec 64) V!13901) Unit!11899)

(assert (=> d!72749 (= lt!182919 (lemmaContainsTupThenGetReturnValue!180 lt!182921 (_1!3239 lt!182876) (_2!3239 lt!182876)))))

(declare-fun insertStrictlySorted!182 (List!6340 (_ BitVec 64) V!13901) List!6340)

(assert (=> d!72749 (= lt!182921 (insertStrictlySorted!182 (toList!2708 (+!1006 lt!182878 lt!182879)) (_1!3239 lt!182876) (_2!3239 lt!182876)))))

(assert (=> d!72749 (= (+!1006 (+!1006 lt!182878 lt!182879) lt!182876) lt!182920)))

(declare-fun b!389076 () Bool)

(declare-fun res!222626 () Bool)

(assert (=> b!389076 (=> (not res!222626) (not e!235728))))

(assert (=> b!389076 (= res!222626 (= (getValueByKey!356 (toList!2708 lt!182920) (_1!3239 lt!182876)) (Some!361 (_2!3239 lt!182876))))))

(declare-fun b!389077 () Bool)

(declare-fun contains!2448 (List!6340 tuple2!6458) Bool)

(assert (=> b!389077 (= e!235728 (contains!2448 (toList!2708 lt!182920) lt!182876))))

(assert (= (and d!72749 res!222625) b!389076))

(assert (= (and b!389076 res!222626) b!389077))

(declare-fun m!385165 () Bool)

(assert (=> d!72749 m!385165))

(declare-fun m!385167 () Bool)

(assert (=> d!72749 m!385167))

(declare-fun m!385169 () Bool)

(assert (=> d!72749 m!385169))

(declare-fun m!385171 () Bool)

(assert (=> d!72749 m!385171))

(declare-fun m!385173 () Bool)

(assert (=> b!389076 m!385173))

(declare-fun m!385175 () Bool)

(assert (=> b!389077 m!385175))

(assert (=> b!389013 d!72749))

(declare-fun d!72751 () Bool)

(declare-fun e!235729 () Bool)

(assert (=> d!72751 e!235729))

(declare-fun res!222627 () Bool)

(assert (=> d!72751 (=> (not res!222627) (not e!235729))))

(declare-fun lt!182924 () ListLongMap!5385)

(assert (=> d!72751 (= res!222627 (contains!2447 lt!182924 (_1!3239 lt!182879)))))

(declare-fun lt!182925 () List!6340)

(assert (=> d!72751 (= lt!182924 (ListLongMap!5386 lt!182925))))

(declare-fun lt!182922 () Unit!11899)

(declare-fun lt!182923 () Unit!11899)

(assert (=> d!72751 (= lt!182922 lt!182923)))

(assert (=> d!72751 (= (getValueByKey!356 lt!182925 (_1!3239 lt!182879)) (Some!361 (_2!3239 lt!182879)))))

(assert (=> d!72751 (= lt!182923 (lemmaContainsTupThenGetReturnValue!180 lt!182925 (_1!3239 lt!182879) (_2!3239 lt!182879)))))

(assert (=> d!72751 (= lt!182925 (insertStrictlySorted!182 (toList!2708 lt!182878) (_1!3239 lt!182879) (_2!3239 lt!182879)))))

(assert (=> d!72751 (= (+!1006 lt!182878 lt!182879) lt!182924)))

(declare-fun b!389078 () Bool)

(declare-fun res!222628 () Bool)

(assert (=> b!389078 (=> (not res!222628) (not e!235729))))

(assert (=> b!389078 (= res!222628 (= (getValueByKey!356 (toList!2708 lt!182924) (_1!3239 lt!182879)) (Some!361 (_2!3239 lt!182879))))))

(declare-fun b!389079 () Bool)

(assert (=> b!389079 (= e!235729 (contains!2448 (toList!2708 lt!182924) lt!182879))))

(assert (= (and d!72751 res!222627) b!389078))

(assert (= (and b!389078 res!222628) b!389079))

(declare-fun m!385177 () Bool)

(assert (=> d!72751 m!385177))

(declare-fun m!385179 () Bool)

(assert (=> d!72751 m!385179))

(declare-fun m!385181 () Bool)

(assert (=> d!72751 m!385181))

(declare-fun m!385183 () Bool)

(assert (=> d!72751 m!385183))

(declare-fun m!385185 () Bool)

(assert (=> b!389078 m!385185))

(declare-fun m!385187 () Bool)

(assert (=> b!389079 m!385187))

(assert (=> b!389013 d!72751))

(declare-fun d!72753 () Bool)

(assert (=> d!72753 (= (validKeyInArray!0 k0!778) (and (not (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!389022 d!72753))

(declare-fun b!389090 () Bool)

(declare-fun e!235740 () Bool)

(declare-fun e!235738 () Bool)

(assert (=> b!389090 (= e!235740 e!235738)))

(declare-fun c!53954 () Bool)

(assert (=> b!389090 (= c!53954 (validKeyInArray!0 (select (arr!10997 lt!182870) #b00000000000000000000000000000000)))))

(declare-fun b!389091 () Bool)

(declare-fun e!235739 () Bool)

(declare-fun contains!2449 (List!6341 (_ BitVec 64)) Bool)

(assert (=> b!389091 (= e!235739 (contains!2449 Nil!6338 (select (arr!10997 lt!182870) #b00000000000000000000000000000000)))))

(declare-fun d!72755 () Bool)

(declare-fun res!222636 () Bool)

(declare-fun e!235741 () Bool)

(assert (=> d!72755 (=> res!222636 e!235741)))

(assert (=> d!72755 (= res!222636 (bvsge #b00000000000000000000000000000000 (size!11349 lt!182870)))))

(assert (=> d!72755 (= (arrayNoDuplicates!0 lt!182870 #b00000000000000000000000000000000 Nil!6338) e!235741)))

(declare-fun b!389092 () Bool)

(assert (=> b!389092 (= e!235741 e!235740)))

(declare-fun res!222637 () Bool)

(assert (=> b!389092 (=> (not res!222637) (not e!235740))))

(assert (=> b!389092 (= res!222637 (not e!235739))))

(declare-fun res!222635 () Bool)

(assert (=> b!389092 (=> (not res!222635) (not e!235739))))

(assert (=> b!389092 (= res!222635 (validKeyInArray!0 (select (arr!10997 lt!182870) #b00000000000000000000000000000000)))))

(declare-fun b!389093 () Bool)

(declare-fun call!27400 () Bool)

(assert (=> b!389093 (= e!235738 call!27400)))

(declare-fun b!389094 () Bool)

(assert (=> b!389094 (= e!235738 call!27400)))

(declare-fun bm!27397 () Bool)

(assert (=> bm!27397 (= call!27400 (arrayNoDuplicates!0 lt!182870 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53954 (Cons!6337 (select (arr!10997 lt!182870) #b00000000000000000000000000000000) Nil!6338) Nil!6338)))))

(assert (= (and d!72755 (not res!222636)) b!389092))

(assert (= (and b!389092 res!222635) b!389091))

(assert (= (and b!389092 res!222637) b!389090))

(assert (= (and b!389090 c!53954) b!389093))

(assert (= (and b!389090 (not c!53954)) b!389094))

(assert (= (or b!389093 b!389094) bm!27397))

(declare-fun m!385189 () Bool)

(assert (=> b!389090 m!385189))

(assert (=> b!389090 m!385189))

(declare-fun m!385191 () Bool)

(assert (=> b!389090 m!385191))

(assert (=> b!389091 m!385189))

(assert (=> b!389091 m!385189))

(declare-fun m!385193 () Bool)

(assert (=> b!389091 m!385193))

(assert (=> b!389092 m!385189))

(assert (=> b!389092 m!385189))

(assert (=> b!389092 m!385191))

(assert (=> bm!27397 m!385189))

(declare-fun m!385195 () Bool)

(assert (=> bm!27397 m!385195))

(assert (=> b!389012 d!72755))

(declare-fun d!72757 () Bool)

(declare-fun res!222642 () Bool)

(declare-fun e!235746 () Bool)

(assert (=> d!72757 (=> res!222642 e!235746)))

(assert (=> d!72757 (= res!222642 (= (select (arr!10997 _keys!658) #b00000000000000000000000000000000) k0!778))))

(assert (=> d!72757 (= (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000) e!235746)))

(declare-fun b!389099 () Bool)

(declare-fun e!235747 () Bool)

(assert (=> b!389099 (= e!235746 e!235747)))

(declare-fun res!222643 () Bool)

(assert (=> b!389099 (=> (not res!222643) (not e!235747))))

(assert (=> b!389099 (= res!222643 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!11349 _keys!658)))))

(declare-fun b!389100 () Bool)

(assert (=> b!389100 (= e!235747 (arrayContainsKey!0 _keys!658 k0!778 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!72757 (not res!222642)) b!389099))

(assert (= (and b!389099 res!222643) b!389100))

(declare-fun m!385197 () Bool)

(assert (=> d!72757 m!385197))

(declare-fun m!385199 () Bool)

(assert (=> b!389100 m!385199))

(assert (=> b!389014 d!72757))

(declare-fun b!389109 () Bool)

(declare-fun e!235755 () Bool)

(declare-fun call!27403 () Bool)

(assert (=> b!389109 (= e!235755 call!27403)))

(declare-fun b!389110 () Bool)

(declare-fun e!235754 () Bool)

(assert (=> b!389110 (= e!235754 call!27403)))

(declare-fun bm!27400 () Bool)

(assert (=> bm!27400 (= call!27403 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(declare-fun b!389111 () Bool)

(assert (=> b!389111 (= e!235754 e!235755)))

(declare-fun lt!182934 () (_ BitVec 64))

(assert (=> b!389111 (= lt!182934 (select (arr!10997 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!182932 () Unit!11899)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23067 (_ BitVec 64) (_ BitVec 32)) Unit!11899)

(assert (=> b!389111 (= lt!182932 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!182934 #b00000000000000000000000000000000))))

(assert (=> b!389111 (arrayContainsKey!0 _keys!658 lt!182934 #b00000000000000000000000000000000)))

(declare-fun lt!182933 () Unit!11899)

(assert (=> b!389111 (= lt!182933 lt!182932)))

(declare-fun res!222648 () Bool)

(declare-datatypes ((SeekEntryResult!3498 0))(
  ( (MissingZero!3498 (index!16171 (_ BitVec 32))) (Found!3498 (index!16172 (_ BitVec 32))) (Intermediate!3498 (undefined!4310 Bool) (index!16173 (_ BitVec 32)) (x!38212 (_ BitVec 32))) (Undefined!3498) (MissingVacant!3498 (index!16174 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!23067 (_ BitVec 32)) SeekEntryResult!3498)

(assert (=> b!389111 (= res!222648 (= (seekEntryOrOpen!0 (select (arr!10997 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3498 #b00000000000000000000000000000000)))))

(assert (=> b!389111 (=> (not res!222648) (not e!235755))))

(declare-fun d!72759 () Bool)

(declare-fun res!222649 () Bool)

(declare-fun e!235756 () Bool)

(assert (=> d!72759 (=> res!222649 e!235756)))

(assert (=> d!72759 (= res!222649 (bvsge #b00000000000000000000000000000000 (size!11349 _keys!658)))))

(assert (=> d!72759 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!235756)))

(declare-fun b!389112 () Bool)

(assert (=> b!389112 (= e!235756 e!235754)))

(declare-fun c!53957 () Bool)

(assert (=> b!389112 (= c!53957 (validKeyInArray!0 (select (arr!10997 _keys!658) #b00000000000000000000000000000000)))))

(assert (= (and d!72759 (not res!222649)) b!389112))

(assert (= (and b!389112 c!53957) b!389111))

(assert (= (and b!389112 (not c!53957)) b!389110))

(assert (= (and b!389111 res!222648) b!389109))

(assert (= (or b!389109 b!389110) bm!27400))

(declare-fun m!385201 () Bool)

(assert (=> bm!27400 m!385201))

(assert (=> b!389111 m!385197))

(declare-fun m!385203 () Bool)

(assert (=> b!389111 m!385203))

(declare-fun m!385205 () Bool)

(assert (=> b!389111 m!385205))

(assert (=> b!389111 m!385197))

(declare-fun m!385207 () Bool)

(assert (=> b!389111 m!385207))

(assert (=> b!389112 m!385197))

(assert (=> b!389112 m!385197))

(declare-fun m!385209 () Bool)

(assert (=> b!389112 m!385209))

(assert (=> b!389018 d!72759))

(declare-fun b!389113 () Bool)

(declare-fun e!235759 () Bool)

(declare-fun e!235757 () Bool)

(assert (=> b!389113 (= e!235759 e!235757)))

(declare-fun c!53958 () Bool)

(assert (=> b!389113 (= c!53958 (validKeyInArray!0 (select (arr!10997 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!389114 () Bool)

(declare-fun e!235758 () Bool)

(assert (=> b!389114 (= e!235758 (contains!2449 Nil!6338 (select (arr!10997 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun d!72761 () Bool)

(declare-fun res!222651 () Bool)

(declare-fun e!235760 () Bool)

(assert (=> d!72761 (=> res!222651 e!235760)))

(assert (=> d!72761 (= res!222651 (bvsge #b00000000000000000000000000000000 (size!11349 _keys!658)))))

(assert (=> d!72761 (= (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6338) e!235760)))

(declare-fun b!389115 () Bool)

(assert (=> b!389115 (= e!235760 e!235759)))

(declare-fun res!222652 () Bool)

(assert (=> b!389115 (=> (not res!222652) (not e!235759))))

(assert (=> b!389115 (= res!222652 (not e!235758))))

(declare-fun res!222650 () Bool)

(assert (=> b!389115 (=> (not res!222650) (not e!235758))))

(assert (=> b!389115 (= res!222650 (validKeyInArray!0 (select (arr!10997 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!389116 () Bool)

(declare-fun call!27404 () Bool)

(assert (=> b!389116 (= e!235757 call!27404)))

(declare-fun b!389117 () Bool)

(assert (=> b!389117 (= e!235757 call!27404)))

(declare-fun bm!27401 () Bool)

(assert (=> bm!27401 (= call!27404 (arrayNoDuplicates!0 _keys!658 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53958 (Cons!6337 (select (arr!10997 _keys!658) #b00000000000000000000000000000000) Nil!6338) Nil!6338)))))

(assert (= (and d!72761 (not res!222651)) b!389115))

(assert (= (and b!389115 res!222650) b!389114))

(assert (= (and b!389115 res!222652) b!389113))

(assert (= (and b!389113 c!53958) b!389116))

(assert (= (and b!389113 (not c!53958)) b!389117))

(assert (= (or b!389116 b!389117) bm!27401))

(assert (=> b!389113 m!385197))

(assert (=> b!389113 m!385197))

(assert (=> b!389113 m!385209))

(assert (=> b!389114 m!385197))

(assert (=> b!389114 m!385197))

(declare-fun m!385211 () Bool)

(assert (=> b!389114 m!385211))

(assert (=> b!389115 m!385197))

(assert (=> b!389115 m!385197))

(assert (=> b!389115 m!385209))

(assert (=> bm!27401 m!385197))

(declare-fun m!385213 () Bool)

(assert (=> bm!27401 m!385213))

(assert (=> b!389020 d!72761))

(declare-fun d!72763 () Bool)

(declare-fun e!235761 () Bool)

(assert (=> d!72763 e!235761))

(declare-fun res!222653 () Bool)

(assert (=> d!72763 (=> (not res!222653) (not e!235761))))

(declare-fun lt!182937 () ListLongMap!5385)

(assert (=> d!72763 (= res!222653 (contains!2447 lt!182937 (_1!3239 lt!182876)))))

(declare-fun lt!182938 () List!6340)

(assert (=> d!72763 (= lt!182937 (ListLongMap!5386 lt!182938))))

(declare-fun lt!182935 () Unit!11899)

(declare-fun lt!182936 () Unit!11899)

(assert (=> d!72763 (= lt!182935 lt!182936)))

(assert (=> d!72763 (= (getValueByKey!356 lt!182938 (_1!3239 lt!182876)) (Some!361 (_2!3239 lt!182876)))))

(assert (=> d!72763 (= lt!182936 (lemmaContainsTupThenGetReturnValue!180 lt!182938 (_1!3239 lt!182876) (_2!3239 lt!182876)))))

(assert (=> d!72763 (= lt!182938 (insertStrictlySorted!182 (toList!2708 (+!1006 lt!182872 lt!182879)) (_1!3239 lt!182876) (_2!3239 lt!182876)))))

(assert (=> d!72763 (= (+!1006 (+!1006 lt!182872 lt!182879) lt!182876) lt!182937)))

(declare-fun b!389118 () Bool)

(declare-fun res!222654 () Bool)

(assert (=> b!389118 (=> (not res!222654) (not e!235761))))

(assert (=> b!389118 (= res!222654 (= (getValueByKey!356 (toList!2708 lt!182937) (_1!3239 lt!182876)) (Some!361 (_2!3239 lt!182876))))))

(declare-fun b!389119 () Bool)

(assert (=> b!389119 (= e!235761 (contains!2448 (toList!2708 lt!182937) lt!182876))))

(assert (= (and d!72763 res!222653) b!389118))

(assert (= (and b!389118 res!222654) b!389119))

(declare-fun m!385215 () Bool)

(assert (=> d!72763 m!385215))

(declare-fun m!385217 () Bool)

(assert (=> d!72763 m!385217))

(declare-fun m!385219 () Bool)

(assert (=> d!72763 m!385219))

(declare-fun m!385221 () Bool)

(assert (=> d!72763 m!385221))

(declare-fun m!385223 () Bool)

(assert (=> b!389118 m!385223))

(declare-fun m!385225 () Bool)

(assert (=> b!389119 m!385225))

(assert (=> b!389010 d!72763))

(declare-fun d!72765 () Bool)

(declare-fun e!235762 () Bool)

(assert (=> d!72765 e!235762))

(declare-fun res!222655 () Bool)

(assert (=> d!72765 (=> (not res!222655) (not e!235762))))

(declare-fun lt!182941 () ListLongMap!5385)

(assert (=> d!72765 (= res!222655 (contains!2447 lt!182941 (_1!3239 lt!182879)))))

(declare-fun lt!182942 () List!6340)

(assert (=> d!72765 (= lt!182941 (ListLongMap!5386 lt!182942))))

(declare-fun lt!182939 () Unit!11899)

(declare-fun lt!182940 () Unit!11899)

(assert (=> d!72765 (= lt!182939 lt!182940)))

(assert (=> d!72765 (= (getValueByKey!356 lt!182942 (_1!3239 lt!182879)) (Some!361 (_2!3239 lt!182879)))))

(assert (=> d!72765 (= lt!182940 (lemmaContainsTupThenGetReturnValue!180 lt!182942 (_1!3239 lt!182879) (_2!3239 lt!182879)))))

(assert (=> d!72765 (= lt!182942 (insertStrictlySorted!182 (toList!2708 lt!182872) (_1!3239 lt!182879) (_2!3239 lt!182879)))))

(assert (=> d!72765 (= (+!1006 lt!182872 lt!182879) lt!182941)))

(declare-fun b!389120 () Bool)

(declare-fun res!222656 () Bool)

(assert (=> b!389120 (=> (not res!222656) (not e!235762))))

(assert (=> b!389120 (= res!222656 (= (getValueByKey!356 (toList!2708 lt!182941) (_1!3239 lt!182879)) (Some!361 (_2!3239 lt!182879))))))

(declare-fun b!389121 () Bool)

(assert (=> b!389121 (= e!235762 (contains!2448 (toList!2708 lt!182941) lt!182879))))

(assert (= (and d!72765 res!222655) b!389120))

(assert (= (and b!389120 res!222656) b!389121))

(declare-fun m!385227 () Bool)

(assert (=> d!72765 m!385227))

(declare-fun m!385229 () Bool)

(assert (=> d!72765 m!385229))

(declare-fun m!385231 () Bool)

(assert (=> d!72765 m!385231))

(declare-fun m!385233 () Bool)

(assert (=> d!72765 m!385233))

(declare-fun m!385235 () Bool)

(assert (=> b!389120 m!385235))

(declare-fun m!385237 () Bool)

(assert (=> b!389121 m!385237))

(assert (=> b!389010 d!72765))

(declare-fun d!72767 () Bool)

(declare-fun e!235763 () Bool)

(assert (=> d!72767 e!235763))

(declare-fun res!222657 () Bool)

(assert (=> d!72767 (=> (not res!222657) (not e!235763))))

(declare-fun lt!182945 () ListLongMap!5385)

(assert (=> d!72767 (= res!222657 (contains!2447 lt!182945 (_1!3239 lt!182876)))))

(declare-fun lt!182946 () List!6340)

(assert (=> d!72767 (= lt!182945 (ListLongMap!5386 lt!182946))))

(declare-fun lt!182943 () Unit!11899)

(declare-fun lt!182944 () Unit!11899)

(assert (=> d!72767 (= lt!182943 lt!182944)))

(assert (=> d!72767 (= (getValueByKey!356 lt!182946 (_1!3239 lt!182876)) (Some!361 (_2!3239 lt!182876)))))

(assert (=> d!72767 (= lt!182944 (lemmaContainsTupThenGetReturnValue!180 lt!182946 (_1!3239 lt!182876) (_2!3239 lt!182876)))))

(assert (=> d!72767 (= lt!182946 (insertStrictlySorted!182 (toList!2708 (+!1006 lt!182877 lt!182879)) (_1!3239 lt!182876) (_2!3239 lt!182876)))))

(assert (=> d!72767 (= (+!1006 (+!1006 lt!182877 lt!182879) lt!182876) lt!182945)))

(declare-fun b!389122 () Bool)

(declare-fun res!222658 () Bool)

(assert (=> b!389122 (=> (not res!222658) (not e!235763))))

(assert (=> b!389122 (= res!222658 (= (getValueByKey!356 (toList!2708 lt!182945) (_1!3239 lt!182876)) (Some!361 (_2!3239 lt!182876))))))

(declare-fun b!389123 () Bool)

(assert (=> b!389123 (= e!235763 (contains!2448 (toList!2708 lt!182945) lt!182876))))

(assert (= (and d!72767 res!222657) b!389122))

(assert (= (and b!389122 res!222658) b!389123))

(declare-fun m!385239 () Bool)

(assert (=> d!72767 m!385239))

(declare-fun m!385241 () Bool)

(assert (=> d!72767 m!385241))

(declare-fun m!385243 () Bool)

(assert (=> d!72767 m!385243))

(declare-fun m!385245 () Bool)

(assert (=> d!72767 m!385245))

(declare-fun m!385247 () Bool)

(assert (=> b!389122 m!385247))

(declare-fun m!385249 () Bool)

(assert (=> b!389123 m!385249))

(assert (=> b!389016 d!72767))

(declare-fun d!72769 () Bool)

(declare-fun e!235764 () Bool)

(assert (=> d!72769 e!235764))

(declare-fun res!222659 () Bool)

(assert (=> d!72769 (=> (not res!222659) (not e!235764))))

(declare-fun lt!182949 () ListLongMap!5385)

(assert (=> d!72769 (= res!222659 (contains!2447 lt!182949 (_1!3239 lt!182879)))))

(declare-fun lt!182950 () List!6340)

(assert (=> d!72769 (= lt!182949 (ListLongMap!5386 lt!182950))))

(declare-fun lt!182947 () Unit!11899)

(declare-fun lt!182948 () Unit!11899)

(assert (=> d!72769 (= lt!182947 lt!182948)))

(assert (=> d!72769 (= (getValueByKey!356 lt!182950 (_1!3239 lt!182879)) (Some!361 (_2!3239 lt!182879)))))

(assert (=> d!72769 (= lt!182948 (lemmaContainsTupThenGetReturnValue!180 lt!182950 (_1!3239 lt!182879) (_2!3239 lt!182879)))))

(assert (=> d!72769 (= lt!182950 (insertStrictlySorted!182 (toList!2708 lt!182877) (_1!3239 lt!182879) (_2!3239 lt!182879)))))

(assert (=> d!72769 (= (+!1006 lt!182877 lt!182879) lt!182949)))

(declare-fun b!389124 () Bool)

(declare-fun res!222660 () Bool)

(assert (=> b!389124 (=> (not res!222660) (not e!235764))))

(assert (=> b!389124 (= res!222660 (= (getValueByKey!356 (toList!2708 lt!182949) (_1!3239 lt!182879)) (Some!361 (_2!3239 lt!182879))))))

(declare-fun b!389125 () Bool)

(assert (=> b!389125 (= e!235764 (contains!2448 (toList!2708 lt!182949) lt!182879))))

(assert (= (and d!72769 res!222659) b!389124))

(assert (= (and b!389124 res!222660) b!389125))

(declare-fun m!385251 () Bool)

(assert (=> d!72769 m!385251))

(declare-fun m!385253 () Bool)

(assert (=> d!72769 m!385253))

(declare-fun m!385255 () Bool)

(assert (=> d!72769 m!385255))

(declare-fun m!385257 () Bool)

(assert (=> d!72769 m!385257))

(declare-fun m!385259 () Bool)

(assert (=> b!389124 m!385259))

(declare-fun m!385261 () Bool)

(assert (=> b!389125 m!385261))

(assert (=> b!389016 d!72769))

(declare-fun b!389150 () Bool)

(declare-fun e!235781 () Bool)

(declare-fun lt!182970 () ListLongMap!5385)

(declare-fun isEmpty!550 (ListLongMap!5385) Bool)

(assert (=> b!389150 (= e!235781 (isEmpty!550 lt!182970))))

(declare-fun b!389151 () Bool)

(declare-fun e!235780 () ListLongMap!5385)

(assert (=> b!389151 (= e!235780 (ListLongMap!5386 Nil!6337))))

(declare-fun b!389152 () Bool)

(declare-fun e!235785 () ListLongMap!5385)

(assert (=> b!389152 (= e!235780 e!235785)))

(declare-fun c!53968 () Bool)

(assert (=> b!389152 (= c!53968 (validKeyInArray!0 (select (arr!10997 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun bm!27404 () Bool)

(declare-fun call!27407 () ListLongMap!5385)

(assert (=> bm!27404 (= call!27407 (getCurrentListMapNoExtraKeys!939 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!389153 () Bool)

(assert (=> b!389153 (= e!235781 (= lt!182970 (getCurrentListMapNoExtraKeys!939 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!389154 () Bool)

(declare-fun e!235779 () Bool)

(declare-fun e!235782 () Bool)

(assert (=> b!389154 (= e!235779 e!235782)))

(declare-fun c!53969 () Bool)

(declare-fun e!235783 () Bool)

(assert (=> b!389154 (= c!53969 e!235783)))

(declare-fun res!222670 () Bool)

(assert (=> b!389154 (=> (not res!222670) (not e!235783))))

(assert (=> b!389154 (= res!222670 (bvslt #b00000000000000000000000000000000 (size!11349 _keys!658)))))

(declare-fun b!389155 () Bool)

(assert (=> b!389155 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11349 _keys!658)))))

(assert (=> b!389155 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11348 _values!506)))))

(declare-fun e!235784 () Bool)

(declare-fun apply!299 (ListLongMap!5385 (_ BitVec 64)) V!13901)

(declare-fun get!5572 (ValueCell!4455 V!13901) V!13901)

(declare-fun dynLambda!637 (Int (_ BitVec 64)) V!13901)

(assert (=> b!389155 (= e!235784 (= (apply!299 lt!182970 (select (arr!10997 _keys!658) #b00000000000000000000000000000000)) (get!5572 (select (arr!10996 _values!506) #b00000000000000000000000000000000) (dynLambda!637 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!389156 () Bool)

(declare-fun res!222672 () Bool)

(assert (=> b!389156 (=> (not res!222672) (not e!235779))))

(assert (=> b!389156 (= res!222672 (not (contains!2447 lt!182970 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!72771 () Bool)

(assert (=> d!72771 e!235779))

(declare-fun res!222671 () Bool)

(assert (=> d!72771 (=> (not res!222671) (not e!235779))))

(assert (=> d!72771 (= res!222671 (not (contains!2447 lt!182970 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!72771 (= lt!182970 e!235780)))

(declare-fun c!53967 () Bool)

(assert (=> d!72771 (= c!53967 (bvsge #b00000000000000000000000000000000 (size!11349 _keys!658)))))

(assert (=> d!72771 (validMask!0 mask!970)))

(assert (=> d!72771 (= (getCurrentListMapNoExtraKeys!939 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!182970)))

(declare-fun b!389157 () Bool)

(assert (=> b!389157 (= e!235783 (validKeyInArray!0 (select (arr!10997 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!389157 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!389158 () Bool)

(declare-fun lt!182967 () Unit!11899)

(declare-fun lt!182965 () Unit!11899)

(assert (=> b!389158 (= lt!182967 lt!182965)))

(declare-fun lt!182969 () (_ BitVec 64))

(declare-fun lt!182968 () V!13901)

(declare-fun lt!182971 () (_ BitVec 64))

(declare-fun lt!182966 () ListLongMap!5385)

(assert (=> b!389158 (not (contains!2447 (+!1006 lt!182966 (tuple2!6459 lt!182971 lt!182968)) lt!182969))))

(declare-fun addStillNotContains!134 (ListLongMap!5385 (_ BitVec 64) V!13901 (_ BitVec 64)) Unit!11899)

(assert (=> b!389158 (= lt!182965 (addStillNotContains!134 lt!182966 lt!182971 lt!182968 lt!182969))))

(assert (=> b!389158 (= lt!182969 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!389158 (= lt!182968 (get!5572 (select (arr!10996 _values!506) #b00000000000000000000000000000000) (dynLambda!637 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!389158 (= lt!182971 (select (arr!10997 _keys!658) #b00000000000000000000000000000000))))

(assert (=> b!389158 (= lt!182966 call!27407)))

(assert (=> b!389158 (= e!235785 (+!1006 call!27407 (tuple2!6459 (select (arr!10997 _keys!658) #b00000000000000000000000000000000) (get!5572 (select (arr!10996 _values!506) #b00000000000000000000000000000000) (dynLambda!637 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!389159 () Bool)

(assert (=> b!389159 (= e!235785 call!27407)))

(declare-fun b!389160 () Bool)

(assert (=> b!389160 (= e!235782 e!235781)))

(declare-fun c!53970 () Bool)

(assert (=> b!389160 (= c!53970 (bvslt #b00000000000000000000000000000000 (size!11349 _keys!658)))))

(declare-fun b!389161 () Bool)

(assert (=> b!389161 (= e!235782 e!235784)))

(assert (=> b!389161 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11349 _keys!658)))))

(declare-fun res!222669 () Bool)

(assert (=> b!389161 (= res!222669 (contains!2447 lt!182970 (select (arr!10997 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!389161 (=> (not res!222669) (not e!235784))))

(assert (= (and d!72771 c!53967) b!389151))

(assert (= (and d!72771 (not c!53967)) b!389152))

(assert (= (and b!389152 c!53968) b!389158))

(assert (= (and b!389152 (not c!53968)) b!389159))

(assert (= (or b!389158 b!389159) bm!27404))

(assert (= (and d!72771 res!222671) b!389156))

(assert (= (and b!389156 res!222672) b!389154))

(assert (= (and b!389154 res!222670) b!389157))

(assert (= (and b!389154 c!53969) b!389161))

(assert (= (and b!389154 (not c!53969)) b!389160))

(assert (= (and b!389161 res!222669) b!389155))

(assert (= (and b!389160 c!53970) b!389153))

(assert (= (and b!389160 (not c!53970)) b!389150))

(declare-fun b_lambda!8605 () Bool)

(assert (=> (not b_lambda!8605) (not b!389155)))

(declare-fun t!11507 () Bool)

(declare-fun tb!3121 () Bool)

(assert (=> (and start!37874 (= defaultEntry!514 defaultEntry!514) t!11507) tb!3121))

(declare-fun result!5727 () Bool)

(assert (=> tb!3121 (= result!5727 tp_is_empty!9597)))

(assert (=> b!389155 t!11507))

(declare-fun b_and!16213 () Bool)

(assert (= b_and!16209 (and (=> t!11507 result!5727) b_and!16213)))

(declare-fun b_lambda!8607 () Bool)

(assert (=> (not b_lambda!8607) (not b!389158)))

(assert (=> b!389158 t!11507))

(declare-fun b_and!16215 () Bool)

(assert (= b_and!16213 (and (=> t!11507 result!5727) b_and!16215)))

(declare-fun m!385263 () Bool)

(assert (=> bm!27404 m!385263))

(declare-fun m!385265 () Bool)

(assert (=> b!389150 m!385265))

(assert (=> b!389157 m!385197))

(assert (=> b!389157 m!385197))

(assert (=> b!389157 m!385209))

(declare-fun m!385267 () Bool)

(assert (=> d!72771 m!385267))

(assert (=> d!72771 m!385065))

(assert (=> b!389155 m!385197))

(declare-fun m!385269 () Bool)

(assert (=> b!389155 m!385269))

(declare-fun m!385271 () Bool)

(assert (=> b!389155 m!385271))

(declare-fun m!385273 () Bool)

(assert (=> b!389155 m!385273))

(assert (=> b!389155 m!385269))

(assert (=> b!389155 m!385271))

(assert (=> b!389155 m!385197))

(declare-fun m!385275 () Bool)

(assert (=> b!389155 m!385275))

(assert (=> b!389158 m!385197))

(assert (=> b!389158 m!385271))

(declare-fun m!385277 () Bool)

(assert (=> b!389158 m!385277))

(declare-fun m!385279 () Bool)

(assert (=> b!389158 m!385279))

(declare-fun m!385281 () Bool)

(assert (=> b!389158 m!385281))

(declare-fun m!385283 () Bool)

(assert (=> b!389158 m!385283))

(assert (=> b!389158 m!385269))

(assert (=> b!389158 m!385271))

(assert (=> b!389158 m!385273))

(assert (=> b!389158 m!385281))

(assert (=> b!389158 m!385269))

(assert (=> b!389153 m!385263))

(assert (=> b!389152 m!385197))

(assert (=> b!389152 m!385197))

(assert (=> b!389152 m!385209))

(assert (=> b!389161 m!385197))

(assert (=> b!389161 m!385197))

(declare-fun m!385285 () Bool)

(assert (=> b!389161 m!385285))

(declare-fun m!385287 () Bool)

(assert (=> b!389156 m!385287))

(assert (=> b!389021 d!72771))

(declare-fun b!389206 () Bool)

(declare-fun c!53987 () Bool)

(assert (=> b!389206 (= c!53987 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!235816 () ListLongMap!5385)

(declare-fun e!235813 () ListLongMap!5385)

(assert (=> b!389206 (= e!235816 e!235813)))

(declare-fun b!389207 () Bool)

(declare-fun e!235821 () Bool)

(declare-fun lt!183030 () ListLongMap!5385)

(assert (=> b!389207 (= e!235821 (= (apply!299 lt!183030 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!389208 () Bool)

(declare-fun res!222691 () Bool)

(declare-fun e!235822 () Bool)

(assert (=> b!389208 (=> (not res!222691) (not e!235822))))

(declare-fun e!235815 () Bool)

(assert (=> b!389208 (= res!222691 e!235815)))

(declare-fun res!222698 () Bool)

(assert (=> b!389208 (=> res!222698 e!235815)))

(declare-fun e!235823 () Bool)

(assert (=> b!389208 (= res!222698 (not e!235823))))

(declare-fun res!222699 () Bool)

(assert (=> b!389208 (=> (not res!222699) (not e!235823))))

(assert (=> b!389208 (= res!222699 (bvslt #b00000000000000000000000000000000 (size!11349 _keys!658)))))

(declare-fun b!389209 () Bool)

(declare-fun e!235812 () Unit!11899)

(declare-fun Unit!11901 () Unit!11899)

(assert (=> b!389209 (= e!235812 Unit!11901)))

(declare-fun bm!27419 () Bool)

(declare-fun call!27425 () ListLongMap!5385)

(declare-fun call!27426 () ListLongMap!5385)

(assert (=> bm!27419 (= call!27425 call!27426)))

(declare-fun b!389211 () Bool)

(declare-fun e!235818 () Bool)

(assert (=> b!389211 (= e!235818 (= (apply!299 lt!183030 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun b!389212 () Bool)

(declare-fun e!235824 () ListLongMap!5385)

(declare-fun call!27424 () ListLongMap!5385)

(assert (=> b!389212 (= e!235824 (+!1006 call!27424 (tuple2!6459 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun bm!27420 () Bool)

(declare-fun call!27422 () ListLongMap!5385)

(assert (=> bm!27420 (= call!27422 call!27424)))

(declare-fun bm!27421 () Bool)

(declare-fun call!27427 () Bool)

(assert (=> bm!27421 (= call!27427 (contains!2447 lt!183030 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!27422 () Bool)

(declare-fun call!27428 () ListLongMap!5385)

(assert (=> bm!27422 (= call!27428 call!27425)))

(declare-fun b!389213 () Bool)

(assert (=> b!389213 (= e!235813 call!27422)))

(declare-fun b!389214 () Bool)

(assert (=> b!389214 (= e!235816 call!27422)))

(declare-fun b!389215 () Bool)

(assert (=> b!389215 (= e!235824 e!235816)))

(declare-fun c!53984 () Bool)

(assert (=> b!389215 (= c!53984 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!389216 () Bool)

(declare-fun e!235814 () Bool)

(assert (=> b!389216 (= e!235814 e!235818)))

(declare-fun res!222696 () Bool)

(declare-fun call!27423 () Bool)

(assert (=> b!389216 (= res!222696 call!27423)))

(assert (=> b!389216 (=> (not res!222696) (not e!235818))))

(declare-fun b!389217 () Bool)

(declare-fun e!235820 () Bool)

(assert (=> b!389217 (= e!235815 e!235820)))

(declare-fun res!222692 () Bool)

(assert (=> b!389217 (=> (not res!222692) (not e!235820))))

(assert (=> b!389217 (= res!222692 (contains!2447 lt!183030 (select (arr!10997 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!389217 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11349 _keys!658)))))

(declare-fun b!389218 () Bool)

(declare-fun e!235819 () Bool)

(assert (=> b!389218 (= e!235819 (validKeyInArray!0 (select (arr!10997 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!389219 () Bool)

(assert (=> b!389219 (= e!235823 (validKeyInArray!0 (select (arr!10997 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun bm!27423 () Bool)

(assert (=> bm!27423 (= call!27423 (contains!2447 lt!183030 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!389220 () Bool)

(declare-fun lt!183036 () Unit!11899)

(assert (=> b!389220 (= e!235812 lt!183036)))

(declare-fun lt!183025 () ListLongMap!5385)

(assert (=> b!389220 (= lt!183025 (getCurrentListMapNoExtraKeys!939 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183017 () (_ BitVec 64))

(assert (=> b!389220 (= lt!183017 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!183018 () (_ BitVec 64))

(assert (=> b!389220 (= lt!183018 (select (arr!10997 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!183023 () Unit!11899)

(declare-fun addStillContains!275 (ListLongMap!5385 (_ BitVec 64) V!13901 (_ BitVec 64)) Unit!11899)

(assert (=> b!389220 (= lt!183023 (addStillContains!275 lt!183025 lt!183017 zeroValue!472 lt!183018))))

(assert (=> b!389220 (contains!2447 (+!1006 lt!183025 (tuple2!6459 lt!183017 zeroValue!472)) lt!183018)))

(declare-fun lt!183021 () Unit!11899)

(assert (=> b!389220 (= lt!183021 lt!183023)))

(declare-fun lt!183020 () ListLongMap!5385)

(assert (=> b!389220 (= lt!183020 (getCurrentListMapNoExtraKeys!939 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183019 () (_ BitVec 64))

(assert (=> b!389220 (= lt!183019 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!183026 () (_ BitVec 64))

(assert (=> b!389220 (= lt!183026 (select (arr!10997 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!183027 () Unit!11899)

(declare-fun addApplyDifferent!275 (ListLongMap!5385 (_ BitVec 64) V!13901 (_ BitVec 64)) Unit!11899)

(assert (=> b!389220 (= lt!183027 (addApplyDifferent!275 lt!183020 lt!183019 minValue!472 lt!183026))))

(assert (=> b!389220 (= (apply!299 (+!1006 lt!183020 (tuple2!6459 lt!183019 minValue!472)) lt!183026) (apply!299 lt!183020 lt!183026))))

(declare-fun lt!183031 () Unit!11899)

(assert (=> b!389220 (= lt!183031 lt!183027)))

(declare-fun lt!183029 () ListLongMap!5385)

(assert (=> b!389220 (= lt!183029 (getCurrentListMapNoExtraKeys!939 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183022 () (_ BitVec 64))

(assert (=> b!389220 (= lt!183022 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!183024 () (_ BitVec 64))

(assert (=> b!389220 (= lt!183024 (select (arr!10997 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!183035 () Unit!11899)

(assert (=> b!389220 (= lt!183035 (addApplyDifferent!275 lt!183029 lt!183022 zeroValue!472 lt!183024))))

(assert (=> b!389220 (= (apply!299 (+!1006 lt!183029 (tuple2!6459 lt!183022 zeroValue!472)) lt!183024) (apply!299 lt!183029 lt!183024))))

(declare-fun lt!183016 () Unit!11899)

(assert (=> b!389220 (= lt!183016 lt!183035)))

(declare-fun lt!183033 () ListLongMap!5385)

(assert (=> b!389220 (= lt!183033 (getCurrentListMapNoExtraKeys!939 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183032 () (_ BitVec 64))

(assert (=> b!389220 (= lt!183032 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!183028 () (_ BitVec 64))

(assert (=> b!389220 (= lt!183028 (select (arr!10997 _keys!658) #b00000000000000000000000000000000))))

(assert (=> b!389220 (= lt!183036 (addApplyDifferent!275 lt!183033 lt!183032 minValue!472 lt!183028))))

(assert (=> b!389220 (= (apply!299 (+!1006 lt!183033 (tuple2!6459 lt!183032 minValue!472)) lt!183028) (apply!299 lt!183033 lt!183028))))

(declare-fun bm!27424 () Bool)

(assert (=> bm!27424 (= call!27426 (getCurrentListMapNoExtraKeys!939 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!389221 () Bool)

(assert (=> b!389221 (= e!235820 (= (apply!299 lt!183030 (select (arr!10997 _keys!658) #b00000000000000000000000000000000)) (get!5572 (select (arr!10996 _values!506) #b00000000000000000000000000000000) (dynLambda!637 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!389221 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11348 _values!506)))))

(assert (=> b!389221 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11349 _keys!658)))))

(declare-fun b!389222 () Bool)

(assert (=> b!389222 (= e!235813 call!27428)))

(declare-fun bm!27425 () Bool)

(declare-fun c!53988 () Bool)

(assert (=> bm!27425 (= call!27424 (+!1006 (ite c!53988 call!27426 (ite c!53984 call!27425 call!27428)) (ite (or c!53988 c!53984) (tuple2!6459 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6459 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!389223 () Bool)

(assert (=> b!389223 (= e!235814 (not call!27423))))

(declare-fun b!389224 () Bool)

(declare-fun e!235817 () Bool)

(assert (=> b!389224 (= e!235817 e!235821)))

(declare-fun res!222697 () Bool)

(assert (=> b!389224 (= res!222697 call!27427)))

(assert (=> b!389224 (=> (not res!222697) (not e!235821))))

(declare-fun d!72773 () Bool)

(assert (=> d!72773 e!235822))

(declare-fun res!222693 () Bool)

(assert (=> d!72773 (=> (not res!222693) (not e!235822))))

(assert (=> d!72773 (= res!222693 (or (bvsge #b00000000000000000000000000000000 (size!11349 _keys!658)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11349 _keys!658)))))))

(declare-fun lt!183037 () ListLongMap!5385)

(assert (=> d!72773 (= lt!183030 lt!183037)))

(declare-fun lt!183034 () Unit!11899)

(assert (=> d!72773 (= lt!183034 e!235812)))

(declare-fun c!53986 () Bool)

(assert (=> d!72773 (= c!53986 e!235819)))

(declare-fun res!222695 () Bool)

(assert (=> d!72773 (=> (not res!222695) (not e!235819))))

(assert (=> d!72773 (= res!222695 (bvslt #b00000000000000000000000000000000 (size!11349 _keys!658)))))

(assert (=> d!72773 (= lt!183037 e!235824)))

(assert (=> d!72773 (= c!53988 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!72773 (validMask!0 mask!970)))

(assert (=> d!72773 (= (getCurrentListMap!2077 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!183030)))

(declare-fun b!389210 () Bool)

(declare-fun res!222694 () Bool)

(assert (=> b!389210 (=> (not res!222694) (not e!235822))))

(assert (=> b!389210 (= res!222694 e!235817)))

(declare-fun c!53983 () Bool)

(assert (=> b!389210 (= c!53983 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!389225 () Bool)

(assert (=> b!389225 (= e!235817 (not call!27427))))

(declare-fun b!389226 () Bool)

(assert (=> b!389226 (= e!235822 e!235814)))

(declare-fun c!53985 () Bool)

(assert (=> b!389226 (= c!53985 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!72773 c!53988) b!389212))

(assert (= (and d!72773 (not c!53988)) b!389215))

(assert (= (and b!389215 c!53984) b!389214))

(assert (= (and b!389215 (not c!53984)) b!389206))

(assert (= (and b!389206 c!53987) b!389213))

(assert (= (and b!389206 (not c!53987)) b!389222))

(assert (= (or b!389213 b!389222) bm!27422))

(assert (= (or b!389214 bm!27422) bm!27419))

(assert (= (or b!389214 b!389213) bm!27420))

(assert (= (or b!389212 bm!27419) bm!27424))

(assert (= (or b!389212 bm!27420) bm!27425))

(assert (= (and d!72773 res!222695) b!389218))

(assert (= (and d!72773 c!53986) b!389220))

(assert (= (and d!72773 (not c!53986)) b!389209))

(assert (= (and d!72773 res!222693) b!389208))

(assert (= (and b!389208 res!222699) b!389219))

(assert (= (and b!389208 (not res!222698)) b!389217))

(assert (= (and b!389217 res!222692) b!389221))

(assert (= (and b!389208 res!222691) b!389210))

(assert (= (and b!389210 c!53983) b!389224))

(assert (= (and b!389210 (not c!53983)) b!389225))

(assert (= (and b!389224 res!222697) b!389207))

(assert (= (or b!389224 b!389225) bm!27421))

(assert (= (and b!389210 res!222694) b!389226))

(assert (= (and b!389226 c!53985) b!389216))

(assert (= (and b!389226 (not c!53985)) b!389223))

(assert (= (and b!389216 res!222696) b!389211))

(assert (= (or b!389216 b!389223) bm!27423))

(declare-fun b_lambda!8609 () Bool)

(assert (=> (not b_lambda!8609) (not b!389221)))

(assert (=> b!389221 t!11507))

(declare-fun b_and!16217 () Bool)

(assert (= b_and!16215 (and (=> t!11507 result!5727) b_and!16217)))

(declare-fun m!385289 () Bool)

(assert (=> bm!27425 m!385289))

(assert (=> b!389218 m!385197))

(assert (=> b!389218 m!385197))

(assert (=> b!389218 m!385209))

(declare-fun m!385291 () Bool)

(assert (=> bm!27423 m!385291))

(declare-fun m!385293 () Bool)

(assert (=> bm!27421 m!385293))

(declare-fun m!385295 () Bool)

(assert (=> b!389211 m!385295))

(declare-fun m!385297 () Bool)

(assert (=> b!389212 m!385297))

(declare-fun m!385299 () Bool)

(assert (=> b!389220 m!385299))

(declare-fun m!385301 () Bool)

(assert (=> b!389220 m!385301))

(declare-fun m!385303 () Bool)

(assert (=> b!389220 m!385303))

(declare-fun m!385305 () Bool)

(assert (=> b!389220 m!385305))

(declare-fun m!385307 () Bool)

(assert (=> b!389220 m!385307))

(declare-fun m!385309 () Bool)

(assert (=> b!389220 m!385309))

(declare-fun m!385311 () Bool)

(assert (=> b!389220 m!385311))

(declare-fun m!385313 () Bool)

(assert (=> b!389220 m!385313))

(declare-fun m!385315 () Bool)

(assert (=> b!389220 m!385315))

(assert (=> b!389220 m!385309))

(declare-fun m!385317 () Bool)

(assert (=> b!389220 m!385317))

(declare-fun m!385319 () Bool)

(assert (=> b!389220 m!385319))

(declare-fun m!385321 () Bool)

(assert (=> b!389220 m!385321))

(declare-fun m!385323 () Bool)

(assert (=> b!389220 m!385323))

(assert (=> b!389220 m!385301))

(assert (=> b!389220 m!385095))

(assert (=> b!389220 m!385197))

(assert (=> b!389220 m!385315))

(declare-fun m!385325 () Bool)

(assert (=> b!389220 m!385325))

(assert (=> b!389220 m!385317))

(declare-fun m!385327 () Bool)

(assert (=> b!389220 m!385327))

(declare-fun m!385329 () Bool)

(assert (=> b!389207 m!385329))

(assert (=> b!389221 m!385197))

(declare-fun m!385331 () Bool)

(assert (=> b!389221 m!385331))

(assert (=> b!389221 m!385271))

(assert (=> b!389221 m!385269))

(assert (=> b!389221 m!385197))

(assert (=> b!389221 m!385269))

(assert (=> b!389221 m!385271))

(assert (=> b!389221 m!385273))

(assert (=> b!389219 m!385197))

(assert (=> b!389219 m!385197))

(assert (=> b!389219 m!385209))

(assert (=> d!72773 m!385065))

(assert (=> bm!27424 m!385095))

(assert (=> b!389217 m!385197))

(assert (=> b!389217 m!385197))

(declare-fun m!385333 () Bool)

(assert (=> b!389217 m!385333))

(assert (=> b!389021 d!72773))

(declare-fun d!72775 () Bool)

(declare-fun e!235825 () Bool)

(assert (=> d!72775 e!235825))

(declare-fun res!222700 () Bool)

(assert (=> d!72775 (=> (not res!222700) (not e!235825))))

(declare-fun lt!183040 () ListLongMap!5385)

(assert (=> d!72775 (= res!222700 (contains!2447 lt!183040 (_1!3239 (tuple2!6459 k0!778 v!373))))))

(declare-fun lt!183041 () List!6340)

(assert (=> d!72775 (= lt!183040 (ListLongMap!5386 lt!183041))))

(declare-fun lt!183038 () Unit!11899)

(declare-fun lt!183039 () Unit!11899)

(assert (=> d!72775 (= lt!183038 lt!183039)))

(assert (=> d!72775 (= (getValueByKey!356 lt!183041 (_1!3239 (tuple2!6459 k0!778 v!373))) (Some!361 (_2!3239 (tuple2!6459 k0!778 v!373))))))

(assert (=> d!72775 (= lt!183039 (lemmaContainsTupThenGetReturnValue!180 lt!183041 (_1!3239 (tuple2!6459 k0!778 v!373)) (_2!3239 (tuple2!6459 k0!778 v!373))))))

(assert (=> d!72775 (= lt!183041 (insertStrictlySorted!182 (toList!2708 lt!182878) (_1!3239 (tuple2!6459 k0!778 v!373)) (_2!3239 (tuple2!6459 k0!778 v!373))))))

(assert (=> d!72775 (= (+!1006 lt!182878 (tuple2!6459 k0!778 v!373)) lt!183040)))

(declare-fun b!389227 () Bool)

(declare-fun res!222701 () Bool)

(assert (=> b!389227 (=> (not res!222701) (not e!235825))))

(assert (=> b!389227 (= res!222701 (= (getValueByKey!356 (toList!2708 lt!183040) (_1!3239 (tuple2!6459 k0!778 v!373))) (Some!361 (_2!3239 (tuple2!6459 k0!778 v!373)))))))

(declare-fun b!389228 () Bool)

(assert (=> b!389228 (= e!235825 (contains!2448 (toList!2708 lt!183040) (tuple2!6459 k0!778 v!373)))))

(assert (= (and d!72775 res!222700) b!389227))

(assert (= (and b!389227 res!222701) b!389228))

(declare-fun m!385335 () Bool)

(assert (=> d!72775 m!385335))

(declare-fun m!385337 () Bool)

(assert (=> d!72775 m!385337))

(declare-fun m!385339 () Bool)

(assert (=> d!72775 m!385339))

(declare-fun m!385341 () Bool)

(assert (=> d!72775 m!385341))

(declare-fun m!385343 () Bool)

(assert (=> b!389227 m!385343))

(declare-fun m!385345 () Bool)

(assert (=> b!389228 m!385345))

(assert (=> b!389021 d!72775))

(declare-fun b!389229 () Bool)

(declare-fun c!53993 () Bool)

(assert (=> b!389229 (= c!53993 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!235830 () ListLongMap!5385)

(declare-fun e!235827 () ListLongMap!5385)

(assert (=> b!389229 (= e!235830 e!235827)))

(declare-fun b!389230 () Bool)

(declare-fun e!235835 () Bool)

(declare-fun lt!183056 () ListLongMap!5385)

(assert (=> b!389230 (= e!235835 (= (apply!299 lt!183056 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!389231 () Bool)

(declare-fun res!222702 () Bool)

(declare-fun e!235836 () Bool)

(assert (=> b!389231 (=> (not res!222702) (not e!235836))))

(declare-fun e!235829 () Bool)

(assert (=> b!389231 (= res!222702 e!235829)))

(declare-fun res!222709 () Bool)

(assert (=> b!389231 (=> res!222709 e!235829)))

(declare-fun e!235837 () Bool)

(assert (=> b!389231 (= res!222709 (not e!235837))))

(declare-fun res!222710 () Bool)

(assert (=> b!389231 (=> (not res!222710) (not e!235837))))

(assert (=> b!389231 (= res!222710 (bvslt #b00000000000000000000000000000000 (size!11349 lt!182870)))))

(declare-fun b!389232 () Bool)

(declare-fun e!235826 () Unit!11899)

(declare-fun Unit!11902 () Unit!11899)

(assert (=> b!389232 (= e!235826 Unit!11902)))

(declare-fun bm!27426 () Bool)

(declare-fun call!27432 () ListLongMap!5385)

(declare-fun call!27433 () ListLongMap!5385)

(assert (=> bm!27426 (= call!27432 call!27433)))

(declare-fun b!389234 () Bool)

(declare-fun e!235832 () Bool)

(assert (=> b!389234 (= e!235832 (= (apply!299 lt!183056 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun b!389235 () Bool)

(declare-fun e!235838 () ListLongMap!5385)

(declare-fun call!27431 () ListLongMap!5385)

(assert (=> b!389235 (= e!235838 (+!1006 call!27431 (tuple2!6459 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun bm!27427 () Bool)

(declare-fun call!27429 () ListLongMap!5385)

(assert (=> bm!27427 (= call!27429 call!27431)))

(declare-fun bm!27428 () Bool)

(declare-fun call!27434 () Bool)

(assert (=> bm!27428 (= call!27434 (contains!2447 lt!183056 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!27429 () Bool)

(declare-fun call!27435 () ListLongMap!5385)

(assert (=> bm!27429 (= call!27435 call!27432)))

(declare-fun b!389236 () Bool)

(assert (=> b!389236 (= e!235827 call!27429)))

(declare-fun b!389237 () Bool)

(assert (=> b!389237 (= e!235830 call!27429)))

(declare-fun b!389238 () Bool)

(assert (=> b!389238 (= e!235838 e!235830)))

(declare-fun c!53990 () Bool)

(assert (=> b!389238 (= c!53990 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!389239 () Bool)

(declare-fun e!235828 () Bool)

(assert (=> b!389239 (= e!235828 e!235832)))

(declare-fun res!222707 () Bool)

(declare-fun call!27430 () Bool)

(assert (=> b!389239 (= res!222707 call!27430)))

(assert (=> b!389239 (=> (not res!222707) (not e!235832))))

(declare-fun b!389240 () Bool)

(declare-fun e!235834 () Bool)

(assert (=> b!389240 (= e!235829 e!235834)))

(declare-fun res!222703 () Bool)

(assert (=> b!389240 (=> (not res!222703) (not e!235834))))

(assert (=> b!389240 (= res!222703 (contains!2447 lt!183056 (select (arr!10997 lt!182870) #b00000000000000000000000000000000)))))

(assert (=> b!389240 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11349 lt!182870)))))

(declare-fun b!389241 () Bool)

(declare-fun e!235833 () Bool)

(assert (=> b!389241 (= e!235833 (validKeyInArray!0 (select (arr!10997 lt!182870) #b00000000000000000000000000000000)))))

(declare-fun b!389242 () Bool)

(assert (=> b!389242 (= e!235837 (validKeyInArray!0 (select (arr!10997 lt!182870) #b00000000000000000000000000000000)))))

(declare-fun bm!27430 () Bool)

(assert (=> bm!27430 (= call!27430 (contains!2447 lt!183056 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!389243 () Bool)

(declare-fun lt!183062 () Unit!11899)

(assert (=> b!389243 (= e!235826 lt!183062)))

(declare-fun lt!183051 () ListLongMap!5385)

(assert (=> b!389243 (= lt!183051 (getCurrentListMapNoExtraKeys!939 lt!182870 lt!182873 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183043 () (_ BitVec 64))

(assert (=> b!389243 (= lt!183043 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!183044 () (_ BitVec 64))

(assert (=> b!389243 (= lt!183044 (select (arr!10997 lt!182870) #b00000000000000000000000000000000))))

(declare-fun lt!183049 () Unit!11899)

(assert (=> b!389243 (= lt!183049 (addStillContains!275 lt!183051 lt!183043 zeroValue!472 lt!183044))))

(assert (=> b!389243 (contains!2447 (+!1006 lt!183051 (tuple2!6459 lt!183043 zeroValue!472)) lt!183044)))

(declare-fun lt!183047 () Unit!11899)

(assert (=> b!389243 (= lt!183047 lt!183049)))

(declare-fun lt!183046 () ListLongMap!5385)

(assert (=> b!389243 (= lt!183046 (getCurrentListMapNoExtraKeys!939 lt!182870 lt!182873 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183045 () (_ BitVec 64))

(assert (=> b!389243 (= lt!183045 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!183052 () (_ BitVec 64))

(assert (=> b!389243 (= lt!183052 (select (arr!10997 lt!182870) #b00000000000000000000000000000000))))

(declare-fun lt!183053 () Unit!11899)

(assert (=> b!389243 (= lt!183053 (addApplyDifferent!275 lt!183046 lt!183045 minValue!472 lt!183052))))

(assert (=> b!389243 (= (apply!299 (+!1006 lt!183046 (tuple2!6459 lt!183045 minValue!472)) lt!183052) (apply!299 lt!183046 lt!183052))))

(declare-fun lt!183057 () Unit!11899)

(assert (=> b!389243 (= lt!183057 lt!183053)))

(declare-fun lt!183055 () ListLongMap!5385)

(assert (=> b!389243 (= lt!183055 (getCurrentListMapNoExtraKeys!939 lt!182870 lt!182873 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183048 () (_ BitVec 64))

(assert (=> b!389243 (= lt!183048 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!183050 () (_ BitVec 64))

(assert (=> b!389243 (= lt!183050 (select (arr!10997 lt!182870) #b00000000000000000000000000000000))))

(declare-fun lt!183061 () Unit!11899)

(assert (=> b!389243 (= lt!183061 (addApplyDifferent!275 lt!183055 lt!183048 zeroValue!472 lt!183050))))

(assert (=> b!389243 (= (apply!299 (+!1006 lt!183055 (tuple2!6459 lt!183048 zeroValue!472)) lt!183050) (apply!299 lt!183055 lt!183050))))

(declare-fun lt!183042 () Unit!11899)

(assert (=> b!389243 (= lt!183042 lt!183061)))

(declare-fun lt!183059 () ListLongMap!5385)

(assert (=> b!389243 (= lt!183059 (getCurrentListMapNoExtraKeys!939 lt!182870 lt!182873 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!183058 () (_ BitVec 64))

(assert (=> b!389243 (= lt!183058 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!183054 () (_ BitVec 64))

(assert (=> b!389243 (= lt!183054 (select (arr!10997 lt!182870) #b00000000000000000000000000000000))))

(assert (=> b!389243 (= lt!183062 (addApplyDifferent!275 lt!183059 lt!183058 minValue!472 lt!183054))))

(assert (=> b!389243 (= (apply!299 (+!1006 lt!183059 (tuple2!6459 lt!183058 minValue!472)) lt!183054) (apply!299 lt!183059 lt!183054))))

(declare-fun bm!27431 () Bool)

(assert (=> bm!27431 (= call!27433 (getCurrentListMapNoExtraKeys!939 lt!182870 lt!182873 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!389244 () Bool)

(assert (=> b!389244 (= e!235834 (= (apply!299 lt!183056 (select (arr!10997 lt!182870) #b00000000000000000000000000000000)) (get!5572 (select (arr!10996 lt!182873) #b00000000000000000000000000000000) (dynLambda!637 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!389244 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11348 lt!182873)))))

(assert (=> b!389244 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11349 lt!182870)))))

(declare-fun b!389245 () Bool)

(assert (=> b!389245 (= e!235827 call!27435)))

(declare-fun bm!27432 () Bool)

(declare-fun c!53994 () Bool)

(assert (=> bm!27432 (= call!27431 (+!1006 (ite c!53994 call!27433 (ite c!53990 call!27432 call!27435)) (ite (or c!53994 c!53990) (tuple2!6459 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6459 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!389246 () Bool)

(assert (=> b!389246 (= e!235828 (not call!27430))))

(declare-fun b!389247 () Bool)

(declare-fun e!235831 () Bool)

(assert (=> b!389247 (= e!235831 e!235835)))

(declare-fun res!222708 () Bool)

(assert (=> b!389247 (= res!222708 call!27434)))

(assert (=> b!389247 (=> (not res!222708) (not e!235835))))

(declare-fun d!72777 () Bool)

(assert (=> d!72777 e!235836))

(declare-fun res!222704 () Bool)

(assert (=> d!72777 (=> (not res!222704) (not e!235836))))

(assert (=> d!72777 (= res!222704 (or (bvsge #b00000000000000000000000000000000 (size!11349 lt!182870)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11349 lt!182870)))))))

(declare-fun lt!183063 () ListLongMap!5385)

(assert (=> d!72777 (= lt!183056 lt!183063)))

(declare-fun lt!183060 () Unit!11899)

(assert (=> d!72777 (= lt!183060 e!235826)))

(declare-fun c!53992 () Bool)

(assert (=> d!72777 (= c!53992 e!235833)))

(declare-fun res!222706 () Bool)

(assert (=> d!72777 (=> (not res!222706) (not e!235833))))

(assert (=> d!72777 (= res!222706 (bvslt #b00000000000000000000000000000000 (size!11349 lt!182870)))))

(assert (=> d!72777 (= lt!183063 e!235838)))

(assert (=> d!72777 (= c!53994 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!72777 (validMask!0 mask!970)))

(assert (=> d!72777 (= (getCurrentListMap!2077 lt!182870 lt!182873 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!183056)))

(declare-fun b!389233 () Bool)

(declare-fun res!222705 () Bool)

(assert (=> b!389233 (=> (not res!222705) (not e!235836))))

(assert (=> b!389233 (= res!222705 e!235831)))

(declare-fun c!53989 () Bool)

(assert (=> b!389233 (= c!53989 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!389248 () Bool)

(assert (=> b!389248 (= e!235831 (not call!27434))))

(declare-fun b!389249 () Bool)

(assert (=> b!389249 (= e!235836 e!235828)))

(declare-fun c!53991 () Bool)

(assert (=> b!389249 (= c!53991 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!72777 c!53994) b!389235))

(assert (= (and d!72777 (not c!53994)) b!389238))

(assert (= (and b!389238 c!53990) b!389237))

(assert (= (and b!389238 (not c!53990)) b!389229))

(assert (= (and b!389229 c!53993) b!389236))

(assert (= (and b!389229 (not c!53993)) b!389245))

(assert (= (or b!389236 b!389245) bm!27429))

(assert (= (or b!389237 bm!27429) bm!27426))

(assert (= (or b!389237 b!389236) bm!27427))

(assert (= (or b!389235 bm!27426) bm!27431))

(assert (= (or b!389235 bm!27427) bm!27432))

(assert (= (and d!72777 res!222706) b!389241))

(assert (= (and d!72777 c!53992) b!389243))

(assert (= (and d!72777 (not c!53992)) b!389232))

(assert (= (and d!72777 res!222704) b!389231))

(assert (= (and b!389231 res!222710) b!389242))

(assert (= (and b!389231 (not res!222709)) b!389240))

(assert (= (and b!389240 res!222703) b!389244))

(assert (= (and b!389231 res!222702) b!389233))

(assert (= (and b!389233 c!53989) b!389247))

(assert (= (and b!389233 (not c!53989)) b!389248))

(assert (= (and b!389247 res!222708) b!389230))

(assert (= (or b!389247 b!389248) bm!27428))

(assert (= (and b!389233 res!222705) b!389249))

(assert (= (and b!389249 c!53991) b!389239))

(assert (= (and b!389249 (not c!53991)) b!389246))

(assert (= (and b!389239 res!222707) b!389234))

(assert (= (or b!389239 b!389246) bm!27430))

(declare-fun b_lambda!8611 () Bool)

(assert (=> (not b_lambda!8611) (not b!389244)))

(assert (=> b!389244 t!11507))

(declare-fun b_and!16219 () Bool)

(assert (= b_and!16217 (and (=> t!11507 result!5727) b_and!16219)))

(declare-fun m!385347 () Bool)

(assert (=> bm!27432 m!385347))

(assert (=> b!389241 m!385189))

(assert (=> b!389241 m!385189))

(assert (=> b!389241 m!385191))

(declare-fun m!385349 () Bool)

(assert (=> bm!27430 m!385349))

(declare-fun m!385351 () Bool)

(assert (=> bm!27428 m!385351))

(declare-fun m!385353 () Bool)

(assert (=> b!389234 m!385353))

(declare-fun m!385355 () Bool)

(assert (=> b!389235 m!385355))

(declare-fun m!385357 () Bool)

(assert (=> b!389243 m!385357))

(declare-fun m!385359 () Bool)

(assert (=> b!389243 m!385359))

(declare-fun m!385361 () Bool)

(assert (=> b!389243 m!385361))

(declare-fun m!385363 () Bool)

(assert (=> b!389243 m!385363))

(declare-fun m!385365 () Bool)

(assert (=> b!389243 m!385365))

(declare-fun m!385367 () Bool)

(assert (=> b!389243 m!385367))

(declare-fun m!385369 () Bool)

(assert (=> b!389243 m!385369))

(declare-fun m!385371 () Bool)

(assert (=> b!389243 m!385371))

(declare-fun m!385373 () Bool)

(assert (=> b!389243 m!385373))

(assert (=> b!389243 m!385367))

(declare-fun m!385375 () Bool)

(assert (=> b!389243 m!385375))

(declare-fun m!385377 () Bool)

(assert (=> b!389243 m!385377))

(declare-fun m!385379 () Bool)

(assert (=> b!389243 m!385379))

(declare-fun m!385381 () Bool)

(assert (=> b!389243 m!385381))

(assert (=> b!389243 m!385359))

(assert (=> b!389243 m!385101))

(assert (=> b!389243 m!385189))

(assert (=> b!389243 m!385373))

(declare-fun m!385383 () Bool)

(assert (=> b!389243 m!385383))

(assert (=> b!389243 m!385375))

(declare-fun m!385385 () Bool)

(assert (=> b!389243 m!385385))

(declare-fun m!385387 () Bool)

(assert (=> b!389230 m!385387))

(assert (=> b!389244 m!385189))

(declare-fun m!385389 () Bool)

(assert (=> b!389244 m!385389))

(assert (=> b!389244 m!385271))

(declare-fun m!385391 () Bool)

(assert (=> b!389244 m!385391))

(assert (=> b!389244 m!385189))

(assert (=> b!389244 m!385391))

(assert (=> b!389244 m!385271))

(declare-fun m!385393 () Bool)

(assert (=> b!389244 m!385393))

(assert (=> b!389242 m!385189))

(assert (=> b!389242 m!385189))

(assert (=> b!389242 m!385191))

(assert (=> d!72777 m!385065))

(assert (=> bm!27431 m!385101))

(assert (=> b!389240 m!385189))

(assert (=> b!389240 m!385189))

(declare-fun m!385395 () Bool)

(assert (=> b!389240 m!385395))

(assert (=> b!389021 d!72777))

(declare-fun b!389256 () Bool)

(declare-fun e!235843 () Bool)

(declare-fun e!235844 () Bool)

(assert (=> b!389256 (= e!235843 e!235844)))

(declare-fun c!53997 () Bool)

(assert (=> b!389256 (= c!53997 (bvsle #b00000000000000000000000000000000 i!548))))

(declare-fun call!27441 () ListLongMap!5385)

(declare-fun bm!27437 () Bool)

(assert (=> bm!27437 (= call!27441 (getCurrentListMapNoExtraKeys!939 (array!23068 (store (arr!10997 _keys!658) i!548 k0!778) (size!11349 _keys!658)) (array!23066 (store (arr!10996 _values!506) i!548 (ValueCellFull!4455 v!373)) (size!11348 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun bm!27438 () Bool)

(declare-fun call!27440 () ListLongMap!5385)

(assert (=> bm!27438 (= call!27440 (getCurrentListMapNoExtraKeys!939 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun d!72779 () Bool)

(assert (=> d!72779 e!235843))

(declare-fun res!222713 () Bool)

(assert (=> d!72779 (=> (not res!222713) (not e!235843))))

(assert (=> d!72779 (= res!222713 (and (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11349 _keys!658)))) (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11348 _values!506)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11349 _keys!658)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11348 _values!506))))))))

(declare-fun lt!183066 () Unit!11899)

(declare-fun choose!1321 (array!23067 array!23065 (_ BitVec 32) (_ BitVec 32) V!13901 V!13901 (_ BitVec 32) (_ BitVec 64) V!13901 (_ BitVec 32) Int) Unit!11899)

(assert (=> d!72779 (= lt!183066 (choose!1321 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> d!72779 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!11349 _keys!658)))))

(assert (=> d!72779 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!234 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514) lt!183066)))

(declare-fun b!389257 () Bool)

(assert (=> b!389257 (= e!235844 (= call!27441 call!27440))))

(declare-fun b!389258 () Bool)

(assert (=> b!389258 (= e!235844 (= call!27441 (+!1006 call!27440 (tuple2!6459 k0!778 v!373))))))

(assert (= (and d!72779 res!222713) b!389256))

(assert (= (and b!389256 c!53997) b!389258))

(assert (= (and b!389256 (not c!53997)) b!389257))

(assert (= (or b!389258 b!389257) bm!27438))

(assert (= (or b!389258 b!389257) bm!27437))

(assert (=> bm!27437 m!385113))

(assert (=> bm!27437 m!385107))

(declare-fun m!385397 () Bool)

(assert (=> bm!27437 m!385397))

(assert (=> bm!27438 m!385095))

(declare-fun m!385399 () Bool)

(assert (=> d!72779 m!385399))

(declare-fun m!385401 () Bool)

(assert (=> b!389258 m!385401))

(assert (=> b!389021 d!72779))

(declare-fun b!389259 () Bool)

(declare-fun e!235847 () Bool)

(declare-fun lt!183072 () ListLongMap!5385)

(assert (=> b!389259 (= e!235847 (isEmpty!550 lt!183072))))

(declare-fun b!389260 () Bool)

(declare-fun e!235846 () ListLongMap!5385)

(assert (=> b!389260 (= e!235846 (ListLongMap!5386 Nil!6337))))

(declare-fun b!389261 () Bool)

(declare-fun e!235851 () ListLongMap!5385)

(assert (=> b!389261 (= e!235846 e!235851)))

(declare-fun c!53999 () Bool)

(assert (=> b!389261 (= c!53999 (validKeyInArray!0 (select (arr!10997 lt!182870) #b00000000000000000000000000000000)))))

(declare-fun call!27442 () ListLongMap!5385)

(declare-fun bm!27439 () Bool)

(assert (=> bm!27439 (= call!27442 (getCurrentListMapNoExtraKeys!939 lt!182870 lt!182873 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!389262 () Bool)

(assert (=> b!389262 (= e!235847 (= lt!183072 (getCurrentListMapNoExtraKeys!939 lt!182870 lt!182873 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!389263 () Bool)

(declare-fun e!235845 () Bool)

(declare-fun e!235848 () Bool)

(assert (=> b!389263 (= e!235845 e!235848)))

(declare-fun c!54000 () Bool)

(declare-fun e!235849 () Bool)

(assert (=> b!389263 (= c!54000 e!235849)))

(declare-fun res!222715 () Bool)

(assert (=> b!389263 (=> (not res!222715) (not e!235849))))

(assert (=> b!389263 (= res!222715 (bvslt #b00000000000000000000000000000000 (size!11349 lt!182870)))))

(declare-fun b!389264 () Bool)

(assert (=> b!389264 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11349 lt!182870)))))

(assert (=> b!389264 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11348 lt!182873)))))

(declare-fun e!235850 () Bool)

(assert (=> b!389264 (= e!235850 (= (apply!299 lt!183072 (select (arr!10997 lt!182870) #b00000000000000000000000000000000)) (get!5572 (select (arr!10996 lt!182873) #b00000000000000000000000000000000) (dynLambda!637 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!389265 () Bool)

(declare-fun res!222717 () Bool)

(assert (=> b!389265 (=> (not res!222717) (not e!235845))))

(assert (=> b!389265 (= res!222717 (not (contains!2447 lt!183072 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!72781 () Bool)

(assert (=> d!72781 e!235845))

(declare-fun res!222716 () Bool)

(assert (=> d!72781 (=> (not res!222716) (not e!235845))))

(assert (=> d!72781 (= res!222716 (not (contains!2447 lt!183072 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!72781 (= lt!183072 e!235846)))

(declare-fun c!53998 () Bool)

(assert (=> d!72781 (= c!53998 (bvsge #b00000000000000000000000000000000 (size!11349 lt!182870)))))

(assert (=> d!72781 (validMask!0 mask!970)))

(assert (=> d!72781 (= (getCurrentListMapNoExtraKeys!939 lt!182870 lt!182873 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!183072)))

(declare-fun b!389266 () Bool)

(assert (=> b!389266 (= e!235849 (validKeyInArray!0 (select (arr!10997 lt!182870) #b00000000000000000000000000000000)))))

(assert (=> b!389266 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!389267 () Bool)

(declare-fun lt!183069 () Unit!11899)

(declare-fun lt!183067 () Unit!11899)

(assert (=> b!389267 (= lt!183069 lt!183067)))

(declare-fun lt!183071 () (_ BitVec 64))

(declare-fun lt!183073 () (_ BitVec 64))

(declare-fun lt!183070 () V!13901)

(declare-fun lt!183068 () ListLongMap!5385)

(assert (=> b!389267 (not (contains!2447 (+!1006 lt!183068 (tuple2!6459 lt!183073 lt!183070)) lt!183071))))

(assert (=> b!389267 (= lt!183067 (addStillNotContains!134 lt!183068 lt!183073 lt!183070 lt!183071))))

(assert (=> b!389267 (= lt!183071 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!389267 (= lt!183070 (get!5572 (select (arr!10996 lt!182873) #b00000000000000000000000000000000) (dynLambda!637 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!389267 (= lt!183073 (select (arr!10997 lt!182870) #b00000000000000000000000000000000))))

(assert (=> b!389267 (= lt!183068 call!27442)))

(assert (=> b!389267 (= e!235851 (+!1006 call!27442 (tuple2!6459 (select (arr!10997 lt!182870) #b00000000000000000000000000000000) (get!5572 (select (arr!10996 lt!182873) #b00000000000000000000000000000000) (dynLambda!637 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!389268 () Bool)

(assert (=> b!389268 (= e!235851 call!27442)))

(declare-fun b!389269 () Bool)

(assert (=> b!389269 (= e!235848 e!235847)))

(declare-fun c!54001 () Bool)

(assert (=> b!389269 (= c!54001 (bvslt #b00000000000000000000000000000000 (size!11349 lt!182870)))))

(declare-fun b!389270 () Bool)

(assert (=> b!389270 (= e!235848 e!235850)))

(assert (=> b!389270 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11349 lt!182870)))))

(declare-fun res!222714 () Bool)

(assert (=> b!389270 (= res!222714 (contains!2447 lt!183072 (select (arr!10997 lt!182870) #b00000000000000000000000000000000)))))

(assert (=> b!389270 (=> (not res!222714) (not e!235850))))

(assert (= (and d!72781 c!53998) b!389260))

(assert (= (and d!72781 (not c!53998)) b!389261))

(assert (= (and b!389261 c!53999) b!389267))

(assert (= (and b!389261 (not c!53999)) b!389268))

(assert (= (or b!389267 b!389268) bm!27439))

(assert (= (and d!72781 res!222716) b!389265))

(assert (= (and b!389265 res!222717) b!389263))

(assert (= (and b!389263 res!222715) b!389266))

(assert (= (and b!389263 c!54000) b!389270))

(assert (= (and b!389263 (not c!54000)) b!389269))

(assert (= (and b!389270 res!222714) b!389264))

(assert (= (and b!389269 c!54001) b!389262))

(assert (= (and b!389269 (not c!54001)) b!389259))

(declare-fun b_lambda!8613 () Bool)

(assert (=> (not b_lambda!8613) (not b!389264)))

(assert (=> b!389264 t!11507))

(declare-fun b_and!16221 () Bool)

(assert (= b_and!16219 (and (=> t!11507 result!5727) b_and!16221)))

(declare-fun b_lambda!8615 () Bool)

(assert (=> (not b_lambda!8615) (not b!389267)))

(assert (=> b!389267 t!11507))

(declare-fun b_and!16223 () Bool)

(assert (= b_and!16221 (and (=> t!11507 result!5727) b_and!16223)))

(declare-fun m!385403 () Bool)

(assert (=> bm!27439 m!385403))

(declare-fun m!385405 () Bool)

(assert (=> b!389259 m!385405))

(assert (=> b!389266 m!385189))

(assert (=> b!389266 m!385189))

(assert (=> b!389266 m!385191))

(declare-fun m!385407 () Bool)

(assert (=> d!72781 m!385407))

(assert (=> d!72781 m!385065))

(assert (=> b!389264 m!385189))

(assert (=> b!389264 m!385391))

(assert (=> b!389264 m!385271))

(assert (=> b!389264 m!385393))

(assert (=> b!389264 m!385391))

(assert (=> b!389264 m!385271))

(assert (=> b!389264 m!385189))

(declare-fun m!385409 () Bool)

(assert (=> b!389264 m!385409))

(assert (=> b!389267 m!385189))

(assert (=> b!389267 m!385271))

(declare-fun m!385411 () Bool)

(assert (=> b!389267 m!385411))

(declare-fun m!385413 () Bool)

(assert (=> b!389267 m!385413))

(declare-fun m!385415 () Bool)

(assert (=> b!389267 m!385415))

(declare-fun m!385417 () Bool)

(assert (=> b!389267 m!385417))

(assert (=> b!389267 m!385391))

(assert (=> b!389267 m!385271))

(assert (=> b!389267 m!385393))

(assert (=> b!389267 m!385415))

(assert (=> b!389267 m!385391))

(assert (=> b!389262 m!385403))

(assert (=> b!389261 m!385189))

(assert (=> b!389261 m!385189))

(assert (=> b!389261 m!385191))

(assert (=> b!389270 m!385189))

(assert (=> b!389270 m!385189))

(declare-fun m!385419 () Bool)

(assert (=> b!389270 m!385419))

(declare-fun m!385421 () Bool)

(assert (=> b!389265 m!385421))

(assert (=> b!389021 d!72781))

(declare-fun d!72783 () Bool)

(assert (=> d!72783 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!37874 d!72783))

(declare-fun d!72785 () Bool)

(assert (=> d!72785 (= (array_inv!8062 _values!506) (bvsge (size!11348 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!37874 d!72785))

(declare-fun d!72787 () Bool)

(assert (=> d!72787 (= (array_inv!8063 _keys!658) (bvsge (size!11349 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!37874 d!72787))

(declare-fun b!389271 () Bool)

(declare-fun e!235853 () Bool)

(declare-fun call!27443 () Bool)

(assert (=> b!389271 (= e!235853 call!27443)))

(declare-fun b!389272 () Bool)

(declare-fun e!235852 () Bool)

(assert (=> b!389272 (= e!235852 call!27443)))

(declare-fun bm!27440 () Bool)

(assert (=> bm!27440 (= call!27443 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!182870 mask!970))))

(declare-fun b!389273 () Bool)

(assert (=> b!389273 (= e!235852 e!235853)))

(declare-fun lt!183076 () (_ BitVec 64))

(assert (=> b!389273 (= lt!183076 (select (arr!10997 lt!182870) #b00000000000000000000000000000000))))

(declare-fun lt!183074 () Unit!11899)

(assert (=> b!389273 (= lt!183074 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!182870 lt!183076 #b00000000000000000000000000000000))))

(assert (=> b!389273 (arrayContainsKey!0 lt!182870 lt!183076 #b00000000000000000000000000000000)))

(declare-fun lt!183075 () Unit!11899)

(assert (=> b!389273 (= lt!183075 lt!183074)))

(declare-fun res!222718 () Bool)

(assert (=> b!389273 (= res!222718 (= (seekEntryOrOpen!0 (select (arr!10997 lt!182870) #b00000000000000000000000000000000) lt!182870 mask!970) (Found!3498 #b00000000000000000000000000000000)))))

(assert (=> b!389273 (=> (not res!222718) (not e!235853))))

(declare-fun d!72789 () Bool)

(declare-fun res!222719 () Bool)

(declare-fun e!235854 () Bool)

(assert (=> d!72789 (=> res!222719 e!235854)))

(assert (=> d!72789 (= res!222719 (bvsge #b00000000000000000000000000000000 (size!11349 lt!182870)))))

(assert (=> d!72789 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182870 mask!970) e!235854)))

(declare-fun b!389274 () Bool)

(assert (=> b!389274 (= e!235854 e!235852)))

(declare-fun c!54002 () Bool)

(assert (=> b!389274 (= c!54002 (validKeyInArray!0 (select (arr!10997 lt!182870) #b00000000000000000000000000000000)))))

(assert (= (and d!72789 (not res!222719)) b!389274))

(assert (= (and b!389274 c!54002) b!389273))

(assert (= (and b!389274 (not c!54002)) b!389272))

(assert (= (and b!389273 res!222718) b!389271))

(assert (= (or b!389271 b!389272) bm!27440))

(declare-fun m!385423 () Bool)

(assert (=> bm!27440 m!385423))

(assert (=> b!389273 m!385189))

(declare-fun m!385425 () Bool)

(assert (=> b!389273 m!385425))

(declare-fun m!385427 () Bool)

(assert (=> b!389273 m!385427))

(assert (=> b!389273 m!385189))

(declare-fun m!385429 () Bool)

(assert (=> b!389273 m!385429))

(assert (=> b!389274 m!385189))

(assert (=> b!389274 m!385189))

(assert (=> b!389274 m!385191))

(assert (=> b!389015 d!72789))

(declare-fun mapNonEmpty!15972 () Bool)

(declare-fun mapRes!15972 () Bool)

(declare-fun tp!31542 () Bool)

(declare-fun e!235859 () Bool)

(assert (=> mapNonEmpty!15972 (= mapRes!15972 (and tp!31542 e!235859))))

(declare-fun mapKey!15972 () (_ BitVec 32))

(declare-fun mapRest!15972 () (Array (_ BitVec 32) ValueCell!4455))

(declare-fun mapValue!15972 () ValueCell!4455)

(assert (=> mapNonEmpty!15972 (= mapRest!15966 (store mapRest!15972 mapKey!15972 mapValue!15972))))

(declare-fun b!389282 () Bool)

(declare-fun e!235860 () Bool)

(assert (=> b!389282 (= e!235860 tp_is_empty!9597)))

(declare-fun b!389281 () Bool)

(assert (=> b!389281 (= e!235859 tp_is_empty!9597)))

(declare-fun condMapEmpty!15972 () Bool)

(declare-fun mapDefault!15972 () ValueCell!4455)

(assert (=> mapNonEmpty!15966 (= condMapEmpty!15972 (= mapRest!15966 ((as const (Array (_ BitVec 32) ValueCell!4455)) mapDefault!15972)))))

(assert (=> mapNonEmpty!15966 (= tp!31532 (and e!235860 mapRes!15972))))

(declare-fun mapIsEmpty!15972 () Bool)

(assert (=> mapIsEmpty!15972 mapRes!15972))

(assert (= (and mapNonEmpty!15966 condMapEmpty!15972) mapIsEmpty!15972))

(assert (= (and mapNonEmpty!15966 (not condMapEmpty!15972)) mapNonEmpty!15972))

(assert (= (and mapNonEmpty!15972 ((_ is ValueCellFull!4455) mapValue!15972)) b!389281))

(assert (= (and mapNonEmpty!15966 ((_ is ValueCellFull!4455) mapDefault!15972)) b!389282))

(declare-fun m!385431 () Bool)

(assert (=> mapNonEmpty!15972 m!385431))

(declare-fun b_lambda!8617 () Bool)

(assert (= b_lambda!8613 (or (and start!37874 b_free!8925) b_lambda!8617)))

(declare-fun b_lambda!8619 () Bool)

(assert (= b_lambda!8605 (or (and start!37874 b_free!8925) b_lambda!8619)))

(declare-fun b_lambda!8621 () Bool)

(assert (= b_lambda!8615 (or (and start!37874 b_free!8925) b_lambda!8621)))

(declare-fun b_lambda!8623 () Bool)

(assert (= b_lambda!8609 (or (and start!37874 b_free!8925) b_lambda!8623)))

(declare-fun b_lambda!8625 () Bool)

(assert (= b_lambda!8611 (or (and start!37874 b_free!8925) b_lambda!8625)))

(declare-fun b_lambda!8627 () Bool)

(assert (= b_lambda!8607 (or (and start!37874 b_free!8925) b_lambda!8627)))

(check-sat (not b!389227) (not b!389157) (not b!389230) (not b!389118) (not b!389234) (not b!389090) (not bm!27437) (not bm!27440) (not d!72773) (not b!389077) (not b!389212) (not b!389242) (not b!389115) (not b!389218) (not b_lambda!8621) (not b!389155) (not b_lambda!8625) (not b!389274) (not d!72769) (not b!389119) (not d!72763) (not b!389259) (not b!389240) (not b!389079) (not bm!27430) (not b!389241) (not d!72781) (not bm!27401) (not b!389076) (not b!389235) (not d!72775) (not b!389123) (not d!72765) (not b!389158) (not b!389120) (not b!389156) (not b!389124) (not b!389243) (not bm!27421) (not b!389111) (not bm!27423) (not b!389161) (not b!389221) (not b!389122) (not b!389150) (not bm!27424) (not bm!27400) (not b!389211) (not b!389125) (not bm!27425) (not bm!27438) (not bm!27404) (not b!389207) (not b!389114) (not b!389113) tp_is_empty!9597 (not bm!27432) (not b!389244) (not b!389152) (not b!389220) (not d!72751) (not b!389112) (not b!389270) (not b!389258) (not bm!27397) (not b!389228) (not bm!27431) b_and!16223 (not b!389217) (not d!72779) (not b_lambda!8623) (not b!389266) (not b!389092) (not b!389100) (not b!389267) (not b!389262) (not b!389121) (not b!389078) (not b_lambda!8627) (not b!389091) (not bm!27439) (not b_lambda!8619) (not b!389219) (not b!389273) (not b!389261) (not d!72771) (not b!389265) (not mapNonEmpty!15972) (not d!72767) (not bm!27428) (not d!72777) (not b!389264) (not b!389153) (not d!72749) (not b_next!8925) (not b_lambda!8617))
(check-sat b_and!16223 (not b_next!8925))
