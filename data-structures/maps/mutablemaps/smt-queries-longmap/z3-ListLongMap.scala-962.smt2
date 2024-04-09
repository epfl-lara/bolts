; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20882 () Bool)

(assert start!20882)

(declare-fun b_free!5523 () Bool)

(declare-fun b_next!5523 () Bool)

(assert (=> start!20882 (= b_free!5523 (not b_next!5523))))

(declare-fun tp!19610 () Bool)

(declare-fun b_and!12287 () Bool)

(assert (=> start!20882 (= tp!19610 b_and!12287)))

(declare-fun mapNonEmpty!9146 () Bool)

(declare-fun mapRes!9146 () Bool)

(declare-fun tp!19609 () Bool)

(declare-fun e!136466 () Bool)

(assert (=> mapNonEmpty!9146 (= mapRes!9146 (and tp!19609 e!136466))))

(declare-datatypes ((V!6827 0))(
  ( (V!6828 (val!2737 Int)) )
))
(declare-datatypes ((ValueCell!2349 0))(
  ( (ValueCellFull!2349 (v!4703 V!6827)) (EmptyCell!2349) )
))
(declare-fun mapRest!9146 () (Array (_ BitVec 32) ValueCell!2349))

(declare-fun mapValue!9146 () ValueCell!2349)

(declare-datatypes ((array!9966 0))(
  ( (array!9967 (arr!4733 (Array (_ BitVec 32) ValueCell!2349)) (size!5058 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9966)

(declare-fun mapKey!9146 () (_ BitVec 32))

(assert (=> mapNonEmpty!9146 (= (arr!4733 _values!649) (store mapRest!9146 mapKey!9146 mapValue!9146))))

(declare-fun mapIsEmpty!9146 () Bool)

(assert (=> mapIsEmpty!9146 mapRes!9146))

(declare-fun b!209471 () Bool)

(declare-fun res!102150 () Bool)

(declare-fun e!136470 () Bool)

(assert (=> b!209471 (=> (not res!102150) (not e!136470))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9968 0))(
  ( (array!9969 (arr!4734 (Array (_ BitVec 32) (_ BitVec 64))) (size!5059 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9968)

(assert (=> b!209471 (= res!102150 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5059 _keys!825))))))

(declare-fun b!209472 () Bool)

(declare-fun e!136468 () Bool)

(declare-fun tp_is_empty!5385 () Bool)

(assert (=> b!209472 (= e!136468 tp_is_empty!5385)))

(declare-fun b!209473 () Bool)

(declare-fun res!102144 () Bool)

(assert (=> b!209473 (=> (not res!102144) (not e!136470))))

(declare-datatypes ((List!3052 0))(
  ( (Nil!3049) (Cons!3048 (h!3690 (_ BitVec 64)) (t!7991 List!3052)) )
))
(declare-fun arrayNoDuplicates!0 (array!9968 (_ BitVec 32) List!3052) Bool)

(assert (=> b!209473 (= res!102144 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3049))))

(declare-fun b!209474 () Bool)

(declare-fun res!102147 () Bool)

(assert (=> b!209474 (=> (not res!102147) (not e!136470))))

(declare-fun k0!843 () (_ BitVec 64))

(assert (=> b!209474 (= res!102147 (= (select (arr!4734 _keys!825) i!601) k0!843))))

(declare-fun b!209475 () Bool)

(declare-fun e!136467 () Bool)

(assert (=> b!209475 (= e!136467 (and e!136468 mapRes!9146))))

(declare-fun condMapEmpty!9146 () Bool)

(declare-fun mapDefault!9146 () ValueCell!2349)

(assert (=> b!209475 (= condMapEmpty!9146 (= (arr!4733 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2349)) mapDefault!9146)))))

(declare-fun b!209477 () Bool)

(assert (=> b!209477 (= e!136466 tp_is_empty!5385)))

(declare-fun b!209478 () Bool)

(declare-fun res!102145 () Bool)

(assert (=> b!209478 (=> (not res!102145) (not e!136470))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!209478 (= res!102145 (validKeyInArray!0 k0!843))))

(declare-fun b!209479 () Bool)

(declare-fun e!136471 () Bool)

(assert (=> b!209479 (= e!136470 (not e!136471))))

(declare-fun res!102151 () Bool)

(assert (=> b!209479 (=> res!102151 e!136471)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!209479 (= res!102151 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6827)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6827)

(declare-datatypes ((tuple2!4132 0))(
  ( (tuple2!4133 (_1!2076 (_ BitVec 64)) (_2!2076 V!6827)) )
))
(declare-datatypes ((List!3053 0))(
  ( (Nil!3050) (Cons!3049 (h!3691 tuple2!4132) (t!7992 List!3053)) )
))
(declare-datatypes ((ListLongMap!3059 0))(
  ( (ListLongMap!3060 (toList!1545 List!3053)) )
))
(declare-fun lt!107088 () ListLongMap!3059)

(declare-fun getCurrentListMap!1078 (array!9968 array!9966 (_ BitVec 32) (_ BitVec 32) V!6827 V!6827 (_ BitVec 32) Int) ListLongMap!3059)

(assert (=> b!209479 (= lt!107088 (getCurrentListMap!1078 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107087 () ListLongMap!3059)

(declare-fun lt!107085 () array!9966)

(assert (=> b!209479 (= lt!107087 (getCurrentListMap!1078 _keys!825 lt!107085 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107089 () ListLongMap!3059)

(declare-fun lt!107086 () ListLongMap!3059)

(assert (=> b!209479 (and (= lt!107089 lt!107086) (= lt!107086 lt!107089))))

(declare-fun v!520 () V!6827)

(declare-fun lt!107084 () ListLongMap!3059)

(declare-fun +!538 (ListLongMap!3059 tuple2!4132) ListLongMap!3059)

(assert (=> b!209479 (= lt!107086 (+!538 lt!107084 (tuple2!4133 k0!843 v!520)))))

(declare-datatypes ((Unit!6369 0))(
  ( (Unit!6370) )
))
(declare-fun lt!107083 () Unit!6369)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!195 (array!9968 array!9966 (_ BitVec 32) (_ BitVec 32) V!6827 V!6827 (_ BitVec 32) (_ BitVec 64) V!6827 (_ BitVec 32) Int) Unit!6369)

(assert (=> b!209479 (= lt!107083 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!195 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!477 (array!9968 array!9966 (_ BitVec 32) (_ BitVec 32) V!6827 V!6827 (_ BitVec 32) Int) ListLongMap!3059)

(assert (=> b!209479 (= lt!107089 (getCurrentListMapNoExtraKeys!477 _keys!825 lt!107085 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!209479 (= lt!107085 (array!9967 (store (arr!4733 _values!649) i!601 (ValueCellFull!2349 v!520)) (size!5058 _values!649)))))

(assert (=> b!209479 (= lt!107084 (getCurrentListMapNoExtraKeys!477 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!209480 () Bool)

(declare-fun res!102148 () Bool)

(assert (=> b!209480 (=> (not res!102148) (not e!136470))))

(assert (=> b!209480 (= res!102148 (and (= (size!5058 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5059 _keys!825) (size!5058 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!209481 () Bool)

(declare-fun res!102146 () Bool)

(assert (=> b!209481 (=> (not res!102146) (not e!136470))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9968 (_ BitVec 32)) Bool)

(assert (=> b!209481 (= res!102146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun res!102149 () Bool)

(assert (=> start!20882 (=> (not res!102149) (not e!136470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20882 (= res!102149 (validMask!0 mask!1149))))

(assert (=> start!20882 e!136470))

(declare-fun array_inv!3127 (array!9966) Bool)

(assert (=> start!20882 (and (array_inv!3127 _values!649) e!136467)))

(assert (=> start!20882 true))

(assert (=> start!20882 tp_is_empty!5385))

(declare-fun array_inv!3128 (array!9968) Bool)

(assert (=> start!20882 (array_inv!3128 _keys!825)))

(assert (=> start!20882 tp!19610))

(declare-fun b!209476 () Bool)

(assert (=> b!209476 (= e!136471 (= lt!107087 (+!538 (+!538 lt!107089 (tuple2!4133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615)) (tuple2!4133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(assert (= (and start!20882 res!102149) b!209480))

(assert (= (and b!209480 res!102148) b!209481))

(assert (= (and b!209481 res!102146) b!209473))

(assert (= (and b!209473 res!102144) b!209471))

(assert (= (and b!209471 res!102150) b!209478))

(assert (= (and b!209478 res!102145) b!209474))

(assert (= (and b!209474 res!102147) b!209479))

(assert (= (and b!209479 (not res!102151)) b!209476))

(assert (= (and b!209475 condMapEmpty!9146) mapIsEmpty!9146))

(assert (= (and b!209475 (not condMapEmpty!9146)) mapNonEmpty!9146))

(get-info :version)

(assert (= (and mapNonEmpty!9146 ((_ is ValueCellFull!2349) mapValue!9146)) b!209477))

(assert (= (and b!209475 ((_ is ValueCellFull!2349) mapDefault!9146)) b!209472))

(assert (= start!20882 b!209475))

(declare-fun m!236869 () Bool)

(assert (=> b!209476 m!236869))

(assert (=> b!209476 m!236869))

(declare-fun m!236871 () Bool)

(assert (=> b!209476 m!236871))

(declare-fun m!236873 () Bool)

(assert (=> b!209473 m!236873))

(declare-fun m!236875 () Bool)

(assert (=> b!209478 m!236875))

(declare-fun m!236877 () Bool)

(assert (=> start!20882 m!236877))

(declare-fun m!236879 () Bool)

(assert (=> start!20882 m!236879))

(declare-fun m!236881 () Bool)

(assert (=> start!20882 m!236881))

(declare-fun m!236883 () Bool)

(assert (=> mapNonEmpty!9146 m!236883))

(declare-fun m!236885 () Bool)

(assert (=> b!209474 m!236885))

(declare-fun m!236887 () Bool)

(assert (=> b!209479 m!236887))

(declare-fun m!236889 () Bool)

(assert (=> b!209479 m!236889))

(declare-fun m!236891 () Bool)

(assert (=> b!209479 m!236891))

(declare-fun m!236893 () Bool)

(assert (=> b!209479 m!236893))

(declare-fun m!236895 () Bool)

(assert (=> b!209479 m!236895))

(declare-fun m!236897 () Bool)

(assert (=> b!209479 m!236897))

(declare-fun m!236899 () Bool)

(assert (=> b!209479 m!236899))

(declare-fun m!236901 () Bool)

(assert (=> b!209481 m!236901))

(check-sat (not b!209479) (not b_next!5523) tp_is_empty!5385 (not start!20882) b_and!12287 (not b!209473) (not mapNonEmpty!9146) (not b!209478) (not b!209476) (not b!209481))
(check-sat b_and!12287 (not b_next!5523))
(get-model)

(declare-fun d!57777 () Bool)

(declare-fun e!136492 () Bool)

(assert (=> d!57777 e!136492))

(declare-fun res!102180 () Bool)

(assert (=> d!57777 (=> (not res!102180) (not e!136492))))

(declare-fun lt!107122 () ListLongMap!3059)

(declare-fun contains!1388 (ListLongMap!3059 (_ BitVec 64)) Bool)

(assert (=> d!57777 (= res!102180 (contains!1388 lt!107122 (_1!2076 (tuple2!4133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun lt!107119 () List!3053)

(assert (=> d!57777 (= lt!107122 (ListLongMap!3060 lt!107119))))

(declare-fun lt!107121 () Unit!6369)

(declare-fun lt!107120 () Unit!6369)

(assert (=> d!57777 (= lt!107121 lt!107120)))

(declare-datatypes ((Option!252 0))(
  ( (Some!251 (v!4708 V!6827)) (None!250) )
))
(declare-fun getValueByKey!246 (List!3053 (_ BitVec 64)) Option!252)

(assert (=> d!57777 (= (getValueByKey!246 lt!107119 (_1!2076 (tuple2!4133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))) (Some!251 (_2!2076 (tuple2!4133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun lemmaContainsTupThenGetReturnValue!135 (List!3053 (_ BitVec 64) V!6827) Unit!6369)

(assert (=> d!57777 (= lt!107120 (lemmaContainsTupThenGetReturnValue!135 lt!107119 (_1!2076 (tuple2!4133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)) (_2!2076 (tuple2!4133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun insertStrictlySorted!137 (List!3053 (_ BitVec 64) V!6827) List!3053)

(assert (=> d!57777 (= lt!107119 (insertStrictlySorted!137 (toList!1545 (+!538 lt!107089 (tuple2!4133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))) (_1!2076 (tuple2!4133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)) (_2!2076 (tuple2!4133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(assert (=> d!57777 (= (+!538 (+!538 lt!107089 (tuple2!4133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615)) (tuple2!4133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)) lt!107122)))

(declare-fun b!209519 () Bool)

(declare-fun res!102181 () Bool)

(assert (=> b!209519 (=> (not res!102181) (not e!136492))))

(assert (=> b!209519 (= res!102181 (= (getValueByKey!246 (toList!1545 lt!107122) (_1!2076 (tuple2!4133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))) (Some!251 (_2!2076 (tuple2!4133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))))

(declare-fun b!209520 () Bool)

(declare-fun contains!1389 (List!3053 tuple2!4132) Bool)

(assert (=> b!209520 (= e!136492 (contains!1389 (toList!1545 lt!107122) (tuple2!4133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(assert (= (and d!57777 res!102180) b!209519))

(assert (= (and b!209519 res!102181) b!209520))

(declare-fun m!236937 () Bool)

(assert (=> d!57777 m!236937))

(declare-fun m!236939 () Bool)

(assert (=> d!57777 m!236939))

(declare-fun m!236941 () Bool)

(assert (=> d!57777 m!236941))

(declare-fun m!236943 () Bool)

(assert (=> d!57777 m!236943))

(declare-fun m!236945 () Bool)

(assert (=> b!209519 m!236945))

(declare-fun m!236947 () Bool)

(assert (=> b!209520 m!236947))

(assert (=> b!209476 d!57777))

(declare-fun d!57779 () Bool)

(declare-fun e!136493 () Bool)

(assert (=> d!57779 e!136493))

(declare-fun res!102182 () Bool)

(assert (=> d!57779 (=> (not res!102182) (not e!136493))))

(declare-fun lt!107126 () ListLongMap!3059)

(assert (=> d!57779 (= res!102182 (contains!1388 lt!107126 (_1!2076 (tuple2!4133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))))

(declare-fun lt!107123 () List!3053)

(assert (=> d!57779 (= lt!107126 (ListLongMap!3060 lt!107123))))

(declare-fun lt!107125 () Unit!6369)

(declare-fun lt!107124 () Unit!6369)

(assert (=> d!57779 (= lt!107125 lt!107124)))

(assert (=> d!57779 (= (getValueByKey!246 lt!107123 (_1!2076 (tuple2!4133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))) (Some!251 (_2!2076 (tuple2!4133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))))

(assert (=> d!57779 (= lt!107124 (lemmaContainsTupThenGetReturnValue!135 lt!107123 (_1!2076 (tuple2!4133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615)) (_2!2076 (tuple2!4133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))))

(assert (=> d!57779 (= lt!107123 (insertStrictlySorted!137 (toList!1545 lt!107089) (_1!2076 (tuple2!4133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615)) (_2!2076 (tuple2!4133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))))

(assert (=> d!57779 (= (+!538 lt!107089 (tuple2!4133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615)) lt!107126)))

(declare-fun b!209521 () Bool)

(declare-fun res!102183 () Bool)

(assert (=> b!209521 (=> (not res!102183) (not e!136493))))

(assert (=> b!209521 (= res!102183 (= (getValueByKey!246 (toList!1545 lt!107126) (_1!2076 (tuple2!4133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))) (Some!251 (_2!2076 (tuple2!4133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615)))))))

(declare-fun b!209522 () Bool)

(assert (=> b!209522 (= e!136493 (contains!1389 (toList!1545 lt!107126) (tuple2!4133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615)))))

(assert (= (and d!57779 res!102182) b!209521))

(assert (= (and b!209521 res!102183) b!209522))

(declare-fun m!236949 () Bool)

(assert (=> d!57779 m!236949))

(declare-fun m!236951 () Bool)

(assert (=> d!57779 m!236951))

(declare-fun m!236953 () Bool)

(assert (=> d!57779 m!236953))

(declare-fun m!236955 () Bool)

(assert (=> d!57779 m!236955))

(declare-fun m!236957 () Bool)

(assert (=> b!209521 m!236957))

(declare-fun m!236959 () Bool)

(assert (=> b!209522 m!236959))

(assert (=> b!209476 d!57779))

(declare-fun b!209532 () Bool)

(declare-fun e!136501 () Bool)

(declare-fun call!19777 () Bool)

(assert (=> b!209532 (= e!136501 call!19777)))

(declare-fun bm!19774 () Bool)

(assert (=> bm!19774 (= call!19777 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!825 mask!1149))))

(declare-fun b!209533 () Bool)

(declare-fun e!136500 () Bool)

(assert (=> b!209533 (= e!136500 call!19777)))

(declare-fun b!209534 () Bool)

(assert (=> b!209534 (= e!136500 e!136501)))

(declare-fun lt!107134 () (_ BitVec 64))

(assert (=> b!209534 (= lt!107134 (select (arr!4734 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107135 () Unit!6369)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!9968 (_ BitVec 64) (_ BitVec 32)) Unit!6369)

(assert (=> b!209534 (= lt!107135 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!825 lt!107134 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!9968 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!209534 (arrayContainsKey!0 _keys!825 lt!107134 #b00000000000000000000000000000000)))

(declare-fun lt!107133 () Unit!6369)

(assert (=> b!209534 (= lt!107133 lt!107135)))

(declare-fun res!102189 () Bool)

(declare-datatypes ((SeekEntryResult!714 0))(
  ( (MissingZero!714 (index!5026 (_ BitVec 32))) (Found!714 (index!5027 (_ BitVec 32))) (Intermediate!714 (undefined!1526 Bool) (index!5028 (_ BitVec 32)) (x!21984 (_ BitVec 32))) (Undefined!714) (MissingVacant!714 (index!5029 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!9968 (_ BitVec 32)) SeekEntryResult!714)

(assert (=> b!209534 (= res!102189 (= (seekEntryOrOpen!0 (select (arr!4734 _keys!825) #b00000000000000000000000000000000) _keys!825 mask!1149) (Found!714 #b00000000000000000000000000000000)))))

(assert (=> b!209534 (=> (not res!102189) (not e!136501))))

(declare-fun b!209531 () Bool)

(declare-fun e!136502 () Bool)

(assert (=> b!209531 (= e!136502 e!136500)))

(declare-fun c!35419 () Bool)

(assert (=> b!209531 (= c!35419 (validKeyInArray!0 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun d!57781 () Bool)

(declare-fun res!102188 () Bool)

(assert (=> d!57781 (=> res!102188 e!136502)))

(assert (=> d!57781 (= res!102188 (bvsge #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(assert (=> d!57781 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149) e!136502)))

(assert (= (and d!57781 (not res!102188)) b!209531))

(assert (= (and b!209531 c!35419) b!209534))

(assert (= (and b!209531 (not c!35419)) b!209533))

(assert (= (and b!209534 res!102189) b!209532))

(assert (= (or b!209532 b!209533) bm!19774))

(declare-fun m!236961 () Bool)

(assert (=> bm!19774 m!236961))

(declare-fun m!236963 () Bool)

(assert (=> b!209534 m!236963))

(declare-fun m!236965 () Bool)

(assert (=> b!209534 m!236965))

(declare-fun m!236967 () Bool)

(assert (=> b!209534 m!236967))

(assert (=> b!209534 m!236963))

(declare-fun m!236969 () Bool)

(assert (=> b!209534 m!236969))

(assert (=> b!209531 m!236963))

(assert (=> b!209531 m!236963))

(declare-fun m!236971 () Bool)

(assert (=> b!209531 m!236971))

(assert (=> b!209481 d!57781))

(declare-fun d!57783 () Bool)

(assert (=> d!57783 (= (validMask!0 mask!1149) (and (or (= mask!1149 #b00000000000000000000000000000111) (= mask!1149 #b00000000000000000000000000001111) (= mask!1149 #b00000000000000000000000000011111) (= mask!1149 #b00000000000000000000000000111111) (= mask!1149 #b00000000000000000000000001111111) (= mask!1149 #b00000000000000000000000011111111) (= mask!1149 #b00000000000000000000000111111111) (= mask!1149 #b00000000000000000000001111111111) (= mask!1149 #b00000000000000000000011111111111) (= mask!1149 #b00000000000000000000111111111111) (= mask!1149 #b00000000000000000001111111111111) (= mask!1149 #b00000000000000000011111111111111) (= mask!1149 #b00000000000000000111111111111111) (= mask!1149 #b00000000000000001111111111111111) (= mask!1149 #b00000000000000011111111111111111) (= mask!1149 #b00000000000000111111111111111111) (= mask!1149 #b00000000000001111111111111111111) (= mask!1149 #b00000000000011111111111111111111) (= mask!1149 #b00000000000111111111111111111111) (= mask!1149 #b00000000001111111111111111111111) (= mask!1149 #b00000000011111111111111111111111) (= mask!1149 #b00000000111111111111111111111111) (= mask!1149 #b00000001111111111111111111111111) (= mask!1149 #b00000011111111111111111111111111) (= mask!1149 #b00000111111111111111111111111111) (= mask!1149 #b00001111111111111111111111111111) (= mask!1149 #b00011111111111111111111111111111) (= mask!1149 #b00111111111111111111111111111111)) (bvsle mask!1149 #b00111111111111111111111111111111)))))

(assert (=> start!20882 d!57783))

(declare-fun d!57785 () Bool)

(assert (=> d!57785 (= (array_inv!3127 _values!649) (bvsge (size!5058 _values!649) #b00000000000000000000000000000000))))

(assert (=> start!20882 d!57785))

(declare-fun d!57787 () Bool)

(assert (=> d!57787 (= (array_inv!3128 _keys!825) (bvsge (size!5059 _keys!825) #b00000000000000000000000000000000))))

(assert (=> start!20882 d!57787))

(declare-fun b!209559 () Bool)

(declare-fun lt!107154 () Unit!6369)

(declare-fun lt!107151 () Unit!6369)

(assert (=> b!209559 (= lt!107154 lt!107151)))

(declare-fun lt!107153 () V!6827)

(declare-fun lt!107156 () ListLongMap!3059)

(declare-fun lt!107155 () (_ BitVec 64))

(declare-fun lt!107150 () (_ BitVec 64))

(assert (=> b!209559 (not (contains!1388 (+!538 lt!107156 (tuple2!4133 lt!107155 lt!107153)) lt!107150))))

(declare-fun addStillNotContains!100 (ListLongMap!3059 (_ BitVec 64) V!6827 (_ BitVec 64)) Unit!6369)

(assert (=> b!209559 (= lt!107151 (addStillNotContains!100 lt!107156 lt!107155 lt!107153 lt!107150))))

(assert (=> b!209559 (= lt!107150 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!2540 (ValueCell!2349 V!6827) V!6827)

(declare-fun dynLambda!527 (Int (_ BitVec 64)) V!6827)

(assert (=> b!209559 (= lt!107153 (get!2540 (select (arr!4733 lt!107085) #b00000000000000000000000000000000) (dynLambda!527 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!209559 (= lt!107155 (select (arr!4734 _keys!825) #b00000000000000000000000000000000))))

(declare-fun call!19780 () ListLongMap!3059)

(assert (=> b!209559 (= lt!107156 call!19780)))

(declare-fun e!136522 () ListLongMap!3059)

(assert (=> b!209559 (= e!136522 (+!538 call!19780 (tuple2!4133 (select (arr!4734 _keys!825) #b00000000000000000000000000000000) (get!2540 (select (arr!4733 lt!107085) #b00000000000000000000000000000000) (dynLambda!527 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!209560 () Bool)

(assert (=> b!209560 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(assert (=> b!209560 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5058 lt!107085)))))

(declare-fun lt!107152 () ListLongMap!3059)

(declare-fun e!136521 () Bool)

(declare-fun apply!189 (ListLongMap!3059 (_ BitVec 64)) V!6827)

(assert (=> b!209560 (= e!136521 (= (apply!189 lt!107152 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)) (get!2540 (select (arr!4733 lt!107085) #b00000000000000000000000000000000) (dynLambda!527 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!209561 () Bool)

(declare-fun e!136519 () ListLongMap!3059)

(assert (=> b!209561 (= e!136519 (ListLongMap!3060 Nil!3050))))

(declare-fun b!209562 () Bool)

(declare-fun e!136520 () Bool)

(assert (=> b!209562 (= e!136520 (validKeyInArray!0 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!209562 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!209563 () Bool)

(declare-fun res!102199 () Bool)

(declare-fun e!136523 () Bool)

(assert (=> b!209563 (=> (not res!102199) (not e!136523))))

(assert (=> b!209563 (= res!102199 (not (contains!1388 lt!107152 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!209565 () Bool)

(assert (=> b!209565 (= e!136522 call!19780)))

(declare-fun b!209566 () Bool)

(declare-fun e!136518 () Bool)

(assert (=> b!209566 (= e!136518 (= lt!107152 (getCurrentListMapNoExtraKeys!477 _keys!825 lt!107085 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun b!209567 () Bool)

(declare-fun e!136517 () Bool)

(assert (=> b!209567 (= e!136517 e!136518)))

(declare-fun c!35429 () Bool)

(assert (=> b!209567 (= c!35429 (bvslt #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(declare-fun d!57789 () Bool)

(assert (=> d!57789 e!136523))

(declare-fun res!102200 () Bool)

(assert (=> d!57789 (=> (not res!102200) (not e!136523))))

(assert (=> d!57789 (= res!102200 (not (contains!1388 lt!107152 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57789 (= lt!107152 e!136519)))

(declare-fun c!35430 () Bool)

(assert (=> d!57789 (= c!35430 (bvsge #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(assert (=> d!57789 (validMask!0 mask!1149)))

(assert (=> d!57789 (= (getCurrentListMapNoExtraKeys!477 _keys!825 lt!107085 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!107152)))

(declare-fun b!209564 () Bool)

(assert (=> b!209564 (= e!136517 e!136521)))

(assert (=> b!209564 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(declare-fun res!102198 () Bool)

(assert (=> b!209564 (= res!102198 (contains!1388 lt!107152 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!209564 (=> (not res!102198) (not e!136521))))

(declare-fun b!209568 () Bool)

(assert (=> b!209568 (= e!136523 e!136517)))

(declare-fun c!35431 () Bool)

(assert (=> b!209568 (= c!35431 e!136520)))

(declare-fun res!102201 () Bool)

(assert (=> b!209568 (=> (not res!102201) (not e!136520))))

(assert (=> b!209568 (= res!102201 (bvslt #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(declare-fun b!209569 () Bool)

(declare-fun isEmpty!495 (ListLongMap!3059) Bool)

(assert (=> b!209569 (= e!136518 (isEmpty!495 lt!107152))))

(declare-fun b!209570 () Bool)

(assert (=> b!209570 (= e!136519 e!136522)))

(declare-fun c!35428 () Bool)

(assert (=> b!209570 (= c!35428 (validKeyInArray!0 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun bm!19777 () Bool)

(assert (=> bm!19777 (= call!19780 (getCurrentListMapNoExtraKeys!477 _keys!825 lt!107085 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(assert (= (and d!57789 c!35430) b!209561))

(assert (= (and d!57789 (not c!35430)) b!209570))

(assert (= (and b!209570 c!35428) b!209559))

(assert (= (and b!209570 (not c!35428)) b!209565))

(assert (= (or b!209559 b!209565) bm!19777))

(assert (= (and d!57789 res!102200) b!209563))

(assert (= (and b!209563 res!102199) b!209568))

(assert (= (and b!209568 res!102201) b!209562))

(assert (= (and b!209568 c!35431) b!209564))

(assert (= (and b!209568 (not c!35431)) b!209567))

(assert (= (and b!209564 res!102198) b!209560))

(assert (= (and b!209567 c!35429) b!209566))

(assert (= (and b!209567 (not c!35429)) b!209569))

(declare-fun b_lambda!7569 () Bool)

(assert (=> (not b_lambda!7569) (not b!209559)))

(declare-fun t!7996 () Bool)

(declare-fun tb!2899 () Bool)

(assert (=> (and start!20882 (= defaultEntry!657 defaultEntry!657) t!7996) tb!2899))

(declare-fun result!4969 () Bool)

(assert (=> tb!2899 (= result!4969 tp_is_empty!5385)))

(assert (=> b!209559 t!7996))

(declare-fun b_and!12291 () Bool)

(assert (= b_and!12287 (and (=> t!7996 result!4969) b_and!12291)))

(declare-fun b_lambda!7571 () Bool)

(assert (=> (not b_lambda!7571) (not b!209560)))

(assert (=> b!209560 t!7996))

(declare-fun b_and!12293 () Bool)

(assert (= b_and!12291 (and (=> t!7996 result!4969) b_and!12293)))

(declare-fun m!236973 () Bool)

(assert (=> b!209566 m!236973))

(assert (=> b!209562 m!236963))

(assert (=> b!209562 m!236963))

(assert (=> b!209562 m!236971))

(assert (=> b!209570 m!236963))

(assert (=> b!209570 m!236963))

(assert (=> b!209570 m!236971))

(declare-fun m!236975 () Bool)

(assert (=> b!209559 m!236975))

(declare-fun m!236977 () Bool)

(assert (=> b!209559 m!236977))

(declare-fun m!236979 () Bool)

(assert (=> b!209559 m!236979))

(declare-fun m!236981 () Bool)

(assert (=> b!209559 m!236981))

(assert (=> b!209559 m!236963))

(assert (=> b!209559 m!236977))

(declare-fun m!236983 () Bool)

(assert (=> b!209559 m!236983))

(assert (=> b!209559 m!236983))

(declare-fun m!236985 () Bool)

(assert (=> b!209559 m!236985))

(assert (=> b!209559 m!236975))

(declare-fun m!236987 () Bool)

(assert (=> b!209559 m!236987))

(declare-fun m!236989 () Bool)

(assert (=> b!209563 m!236989))

(assert (=> b!209560 m!236975))

(assert (=> b!209560 m!236963))

(declare-fun m!236991 () Bool)

(assert (=> b!209560 m!236991))

(assert (=> b!209560 m!236975))

(assert (=> b!209560 m!236977))

(assert (=> b!209560 m!236979))

(assert (=> b!209560 m!236963))

(assert (=> b!209560 m!236977))

(assert (=> bm!19777 m!236973))

(declare-fun m!236993 () Bool)

(assert (=> b!209569 m!236993))

(declare-fun m!236995 () Bool)

(assert (=> d!57789 m!236995))

(assert (=> d!57789 m!236877))

(assert (=> b!209564 m!236963))

(assert (=> b!209564 m!236963))

(declare-fun m!236997 () Bool)

(assert (=> b!209564 m!236997))

(assert (=> b!209479 d!57789))

(declare-fun d!57791 () Bool)

(declare-fun e!136558 () Bool)

(assert (=> d!57791 e!136558))

(declare-fun res!102222 () Bool)

(assert (=> d!57791 (=> (not res!102222) (not e!136558))))

(assert (=> d!57791 (= res!102222 (or (bvsge #b00000000000000000000000000000000 (size!5059 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5059 _keys!825)))))))

(declare-fun lt!107201 () ListLongMap!3059)

(declare-fun lt!107213 () ListLongMap!3059)

(assert (=> d!57791 (= lt!107201 lt!107213)))

(declare-fun lt!107219 () Unit!6369)

(declare-fun e!136560 () Unit!6369)

(assert (=> d!57791 (= lt!107219 e!136560)))

(declare-fun c!35448 () Bool)

(declare-fun e!136551 () Bool)

(assert (=> d!57791 (= c!35448 e!136551)))

(declare-fun res!102227 () Bool)

(assert (=> d!57791 (=> (not res!102227) (not e!136551))))

(assert (=> d!57791 (= res!102227 (bvslt #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(declare-fun e!136554 () ListLongMap!3059)

(assert (=> d!57791 (= lt!107213 e!136554)))

(declare-fun c!35444 () Bool)

(assert (=> d!57791 (= c!35444 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!57791 (validMask!0 mask!1149)))

(assert (=> d!57791 (= (getCurrentListMap!1078 _keys!825 lt!107085 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!107201)))

(declare-fun bm!19792 () Bool)

(declare-fun call!19801 () Bool)

(assert (=> bm!19792 (= call!19801 (contains!1388 lt!107201 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!209615 () Bool)

(declare-fun e!136556 () Bool)

(declare-fun e!136561 () Bool)

(assert (=> b!209615 (= e!136556 e!136561)))

(declare-fun res!102224 () Bool)

(declare-fun call!19800 () Bool)

(assert (=> b!209615 (= res!102224 call!19800)))

(assert (=> b!209615 (=> (not res!102224) (not e!136561))))

(declare-fun b!209616 () Bool)

(assert (=> b!209616 (= e!136556 (not call!19800))))

(declare-fun b!209617 () Bool)

(declare-fun res!102221 () Bool)

(assert (=> b!209617 (=> (not res!102221) (not e!136558))))

(assert (=> b!209617 (= res!102221 e!136556)))

(declare-fun c!35447 () Bool)

(assert (=> b!209617 (= c!35447 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!209618 () Bool)

(declare-fun e!136555 () ListLongMap!3059)

(declare-fun call!19796 () ListLongMap!3059)

(assert (=> b!209618 (= e!136555 call!19796)))

(declare-fun b!209619 () Bool)

(assert (=> b!209619 (= e!136561 (= (apply!189 lt!107201 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!209620 () Bool)

(declare-fun e!136553 () ListLongMap!3059)

(assert (=> b!209620 (= e!136553 call!19796)))

(declare-fun b!209621 () Bool)

(declare-fun call!19799 () ListLongMap!3059)

(assert (=> b!209621 (= e!136555 call!19799)))

(declare-fun b!209622 () Bool)

(declare-fun call!19795 () ListLongMap!3059)

(assert (=> b!209622 (= e!136554 (+!538 call!19795 (tuple2!4133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun b!209623 () Bool)

(declare-fun e!136559 () Bool)

(assert (=> b!209623 (= e!136559 (not call!19801))))

(declare-fun b!209624 () Bool)

(assert (=> b!209624 (= e!136558 e!136559)))

(declare-fun c!35449 () Bool)

(assert (=> b!209624 (= c!35449 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!209625 () Bool)

(declare-fun e!136550 () Bool)

(assert (=> b!209625 (= e!136559 e!136550)))

(declare-fun res!102228 () Bool)

(assert (=> b!209625 (= res!102228 call!19801)))

(assert (=> b!209625 (=> (not res!102228) (not e!136550))))

(declare-fun b!209626 () Bool)

(declare-fun lt!107207 () Unit!6369)

(assert (=> b!209626 (= e!136560 lt!107207)))

(declare-fun lt!107212 () ListLongMap!3059)

(assert (=> b!209626 (= lt!107212 (getCurrentListMapNoExtraKeys!477 _keys!825 lt!107085 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107215 () (_ BitVec 64))

(assert (=> b!209626 (= lt!107215 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107211 () (_ BitVec 64))

(assert (=> b!209626 (= lt!107211 (select (arr!4734 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107204 () Unit!6369)

(declare-fun addStillContains!165 (ListLongMap!3059 (_ BitVec 64) V!6827 (_ BitVec 64)) Unit!6369)

(assert (=> b!209626 (= lt!107204 (addStillContains!165 lt!107212 lt!107215 zeroValue!615 lt!107211))))

(assert (=> b!209626 (contains!1388 (+!538 lt!107212 (tuple2!4133 lt!107215 zeroValue!615)) lt!107211)))

(declare-fun lt!107216 () Unit!6369)

(assert (=> b!209626 (= lt!107216 lt!107204)))

(declare-fun lt!107221 () ListLongMap!3059)

(assert (=> b!209626 (= lt!107221 (getCurrentListMapNoExtraKeys!477 _keys!825 lt!107085 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107210 () (_ BitVec 64))

(assert (=> b!209626 (= lt!107210 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107206 () (_ BitVec 64))

(assert (=> b!209626 (= lt!107206 (select (arr!4734 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107220 () Unit!6369)

(declare-fun addApplyDifferent!165 (ListLongMap!3059 (_ BitVec 64) V!6827 (_ BitVec 64)) Unit!6369)

(assert (=> b!209626 (= lt!107220 (addApplyDifferent!165 lt!107221 lt!107210 minValue!615 lt!107206))))

(assert (=> b!209626 (= (apply!189 (+!538 lt!107221 (tuple2!4133 lt!107210 minValue!615)) lt!107206) (apply!189 lt!107221 lt!107206))))

(declare-fun lt!107208 () Unit!6369)

(assert (=> b!209626 (= lt!107208 lt!107220)))

(declare-fun lt!107202 () ListLongMap!3059)

(assert (=> b!209626 (= lt!107202 (getCurrentListMapNoExtraKeys!477 _keys!825 lt!107085 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107205 () (_ BitVec 64))

(assert (=> b!209626 (= lt!107205 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107222 () (_ BitVec 64))

(assert (=> b!209626 (= lt!107222 (select (arr!4734 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107209 () Unit!6369)

(assert (=> b!209626 (= lt!107209 (addApplyDifferent!165 lt!107202 lt!107205 zeroValue!615 lt!107222))))

(assert (=> b!209626 (= (apply!189 (+!538 lt!107202 (tuple2!4133 lt!107205 zeroValue!615)) lt!107222) (apply!189 lt!107202 lt!107222))))

(declare-fun lt!107214 () Unit!6369)

(assert (=> b!209626 (= lt!107214 lt!107209)))

(declare-fun lt!107203 () ListLongMap!3059)

(assert (=> b!209626 (= lt!107203 (getCurrentListMapNoExtraKeys!477 _keys!825 lt!107085 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107217 () (_ BitVec 64))

(assert (=> b!209626 (= lt!107217 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107218 () (_ BitVec 64))

(assert (=> b!209626 (= lt!107218 (select (arr!4734 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!209626 (= lt!107207 (addApplyDifferent!165 lt!107203 lt!107217 minValue!615 lt!107218))))

(assert (=> b!209626 (= (apply!189 (+!538 lt!107203 (tuple2!4133 lt!107217 minValue!615)) lt!107218) (apply!189 lt!107203 lt!107218))))

(declare-fun b!209627 () Bool)

(assert (=> b!209627 (= e!136550 (= (apply!189 lt!107201 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun b!209628 () Bool)

(declare-fun res!102225 () Bool)

(assert (=> b!209628 (=> (not res!102225) (not e!136558))))

(declare-fun e!136552 () Bool)

(assert (=> b!209628 (= res!102225 e!136552)))

(declare-fun res!102220 () Bool)

(assert (=> b!209628 (=> res!102220 e!136552)))

(declare-fun e!136562 () Bool)

(assert (=> b!209628 (= res!102220 (not e!136562))))

(declare-fun res!102226 () Bool)

(assert (=> b!209628 (=> (not res!102226) (not e!136562))))

(assert (=> b!209628 (= res!102226 (bvslt #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(declare-fun bm!19793 () Bool)

(declare-fun call!19798 () ListLongMap!3059)

(assert (=> bm!19793 (= call!19799 call!19798)))

(declare-fun b!209629 () Bool)

(declare-fun Unit!6373 () Unit!6369)

(assert (=> b!209629 (= e!136560 Unit!6373)))

(declare-fun bm!19794 () Bool)

(assert (=> bm!19794 (= call!19796 call!19795)))

(declare-fun bm!19795 () Bool)

(declare-fun call!19797 () ListLongMap!3059)

(assert (=> bm!19795 (= call!19798 call!19797)))

(declare-fun b!209630 () Bool)

(assert (=> b!209630 (= e!136554 e!136553)))

(declare-fun c!35445 () Bool)

(assert (=> b!209630 (= c!35445 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!209631 () Bool)

(assert (=> b!209631 (= e!136551 (validKeyInArray!0 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun e!136557 () Bool)

(declare-fun b!209632 () Bool)

(assert (=> b!209632 (= e!136557 (= (apply!189 lt!107201 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)) (get!2540 (select (arr!4733 lt!107085) #b00000000000000000000000000000000) (dynLambda!527 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!209632 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5058 lt!107085)))))

(assert (=> b!209632 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(declare-fun bm!19796 () Bool)

(assert (=> bm!19796 (= call!19800 (contains!1388 lt!107201 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!19797 () Bool)

(assert (=> bm!19797 (= call!19795 (+!538 (ite c!35444 call!19797 (ite c!35445 call!19798 call!19799)) (ite (or c!35444 c!35445) (tuple2!4133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun bm!19798 () Bool)

(assert (=> bm!19798 (= call!19797 (getCurrentListMapNoExtraKeys!477 _keys!825 lt!107085 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!209633 () Bool)

(declare-fun c!35446 () Bool)

(assert (=> b!209633 (= c!35446 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!209633 (= e!136553 e!136555)))

(declare-fun b!209634 () Bool)

(assert (=> b!209634 (= e!136552 e!136557)))

(declare-fun res!102223 () Bool)

(assert (=> b!209634 (=> (not res!102223) (not e!136557))))

(assert (=> b!209634 (= res!102223 (contains!1388 lt!107201 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!209634 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(declare-fun b!209635 () Bool)

(assert (=> b!209635 (= e!136562 (validKeyInArray!0 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)))))

(assert (= (and d!57791 c!35444) b!209622))

(assert (= (and d!57791 (not c!35444)) b!209630))

(assert (= (and b!209630 c!35445) b!209620))

(assert (= (and b!209630 (not c!35445)) b!209633))

(assert (= (and b!209633 c!35446) b!209618))

(assert (= (and b!209633 (not c!35446)) b!209621))

(assert (= (or b!209618 b!209621) bm!19793))

(assert (= (or b!209620 bm!19793) bm!19795))

(assert (= (or b!209620 b!209618) bm!19794))

(assert (= (or b!209622 bm!19795) bm!19798))

(assert (= (or b!209622 bm!19794) bm!19797))

(assert (= (and d!57791 res!102227) b!209631))

(assert (= (and d!57791 c!35448) b!209626))

(assert (= (and d!57791 (not c!35448)) b!209629))

(assert (= (and d!57791 res!102222) b!209628))

(assert (= (and b!209628 res!102226) b!209635))

(assert (= (and b!209628 (not res!102220)) b!209634))

(assert (= (and b!209634 res!102223) b!209632))

(assert (= (and b!209628 res!102225) b!209617))

(assert (= (and b!209617 c!35447) b!209615))

(assert (= (and b!209617 (not c!35447)) b!209616))

(assert (= (and b!209615 res!102224) b!209619))

(assert (= (or b!209615 b!209616) bm!19796))

(assert (= (and b!209617 res!102221) b!209624))

(assert (= (and b!209624 c!35449) b!209625))

(assert (= (and b!209624 (not c!35449)) b!209623))

(assert (= (and b!209625 res!102228) b!209627))

(assert (= (or b!209625 b!209623) bm!19792))

(declare-fun b_lambda!7573 () Bool)

(assert (=> (not b_lambda!7573) (not b!209632)))

(assert (=> b!209632 t!7996))

(declare-fun b_and!12295 () Bool)

(assert (= b_and!12293 (and (=> t!7996 result!4969) b_and!12295)))

(declare-fun m!236999 () Bool)

(assert (=> bm!19792 m!236999))

(assert (=> b!209635 m!236963))

(assert (=> b!209635 m!236963))

(assert (=> b!209635 m!236971))

(declare-fun m!237001 () Bool)

(assert (=> b!209622 m!237001))

(declare-fun m!237003 () Bool)

(assert (=> bm!19797 m!237003))

(assert (=> d!57791 m!236877))

(assert (=> bm!19798 m!236887))

(declare-fun m!237005 () Bool)

(assert (=> b!209619 m!237005))

(assert (=> b!209631 m!236963))

(assert (=> b!209631 m!236963))

(assert (=> b!209631 m!236971))

(declare-fun m!237007 () Bool)

(assert (=> b!209626 m!237007))

(assert (=> b!209626 m!236963))

(declare-fun m!237009 () Bool)

(assert (=> b!209626 m!237009))

(declare-fun m!237011 () Bool)

(assert (=> b!209626 m!237011))

(assert (=> b!209626 m!237009))

(declare-fun m!237013 () Bool)

(assert (=> b!209626 m!237013))

(declare-fun m!237015 () Bool)

(assert (=> b!209626 m!237015))

(declare-fun m!237017 () Bool)

(assert (=> b!209626 m!237017))

(declare-fun m!237019 () Bool)

(assert (=> b!209626 m!237019))

(declare-fun m!237021 () Bool)

(assert (=> b!209626 m!237021))

(assert (=> b!209626 m!236887))

(declare-fun m!237023 () Bool)

(assert (=> b!209626 m!237023))

(declare-fun m!237025 () Bool)

(assert (=> b!209626 m!237025))

(assert (=> b!209626 m!237023))

(declare-fun m!237027 () Bool)

(assert (=> b!209626 m!237027))

(declare-fun m!237029 () Bool)

(assert (=> b!209626 m!237029))

(declare-fun m!237031 () Bool)

(assert (=> b!209626 m!237031))

(assert (=> b!209626 m!237019))

(assert (=> b!209626 m!237029))

(declare-fun m!237033 () Bool)

(assert (=> b!209626 m!237033))

(declare-fun m!237035 () Bool)

(assert (=> b!209626 m!237035))

(declare-fun m!237037 () Bool)

(assert (=> bm!19796 m!237037))

(assert (=> b!209634 m!236963))

(assert (=> b!209634 m!236963))

(declare-fun m!237039 () Bool)

(assert (=> b!209634 m!237039))

(assert (=> b!209632 m!236963))

(assert (=> b!209632 m!236977))

(assert (=> b!209632 m!236975))

(assert (=> b!209632 m!236975))

(assert (=> b!209632 m!236977))

(assert (=> b!209632 m!236979))

(assert (=> b!209632 m!236963))

(declare-fun m!237041 () Bool)

(assert (=> b!209632 m!237041))

(declare-fun m!237043 () Bool)

(assert (=> b!209627 m!237043))

(assert (=> b!209479 d!57791))

(declare-fun b!209636 () Bool)

(declare-fun lt!107227 () Unit!6369)

(declare-fun lt!107224 () Unit!6369)

(assert (=> b!209636 (= lt!107227 lt!107224)))

(declare-fun lt!107229 () ListLongMap!3059)

(declare-fun lt!107223 () (_ BitVec 64))

(declare-fun lt!107226 () V!6827)

(declare-fun lt!107228 () (_ BitVec 64))

(assert (=> b!209636 (not (contains!1388 (+!538 lt!107229 (tuple2!4133 lt!107228 lt!107226)) lt!107223))))

(assert (=> b!209636 (= lt!107224 (addStillNotContains!100 lt!107229 lt!107228 lt!107226 lt!107223))))

(assert (=> b!209636 (= lt!107223 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!209636 (= lt!107226 (get!2540 (select (arr!4733 _values!649) #b00000000000000000000000000000000) (dynLambda!527 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!209636 (= lt!107228 (select (arr!4734 _keys!825) #b00000000000000000000000000000000))))

(declare-fun call!19802 () ListLongMap!3059)

(assert (=> b!209636 (= lt!107229 call!19802)))

(declare-fun e!136568 () ListLongMap!3059)

(assert (=> b!209636 (= e!136568 (+!538 call!19802 (tuple2!4133 (select (arr!4734 _keys!825) #b00000000000000000000000000000000) (get!2540 (select (arr!4733 _values!649) #b00000000000000000000000000000000) (dynLambda!527 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!209637 () Bool)

(assert (=> b!209637 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(assert (=> b!209637 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5058 _values!649)))))

(declare-fun lt!107225 () ListLongMap!3059)

(declare-fun e!136567 () Bool)

(assert (=> b!209637 (= e!136567 (= (apply!189 lt!107225 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)) (get!2540 (select (arr!4733 _values!649) #b00000000000000000000000000000000) (dynLambda!527 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!209638 () Bool)

(declare-fun e!136565 () ListLongMap!3059)

(assert (=> b!209638 (= e!136565 (ListLongMap!3060 Nil!3050))))

(declare-fun b!209639 () Bool)

(declare-fun e!136566 () Bool)

(assert (=> b!209639 (= e!136566 (validKeyInArray!0 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!209639 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!209640 () Bool)

(declare-fun res!102230 () Bool)

(declare-fun e!136569 () Bool)

(assert (=> b!209640 (=> (not res!102230) (not e!136569))))

(assert (=> b!209640 (= res!102230 (not (contains!1388 lt!107225 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!209642 () Bool)

(assert (=> b!209642 (= e!136568 call!19802)))

(declare-fun b!209643 () Bool)

(declare-fun e!136564 () Bool)

(assert (=> b!209643 (= e!136564 (= lt!107225 (getCurrentListMapNoExtraKeys!477 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun b!209644 () Bool)

(declare-fun e!136563 () Bool)

(assert (=> b!209644 (= e!136563 e!136564)))

(declare-fun c!35451 () Bool)

(assert (=> b!209644 (= c!35451 (bvslt #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(declare-fun d!57793 () Bool)

(assert (=> d!57793 e!136569))

(declare-fun res!102231 () Bool)

(assert (=> d!57793 (=> (not res!102231) (not e!136569))))

(assert (=> d!57793 (= res!102231 (not (contains!1388 lt!107225 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57793 (= lt!107225 e!136565)))

(declare-fun c!35452 () Bool)

(assert (=> d!57793 (= c!35452 (bvsge #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(assert (=> d!57793 (validMask!0 mask!1149)))

(assert (=> d!57793 (= (getCurrentListMapNoExtraKeys!477 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!107225)))

(declare-fun b!209641 () Bool)

(assert (=> b!209641 (= e!136563 e!136567)))

(assert (=> b!209641 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(declare-fun res!102229 () Bool)

(assert (=> b!209641 (= res!102229 (contains!1388 lt!107225 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!209641 (=> (not res!102229) (not e!136567))))

(declare-fun b!209645 () Bool)

(assert (=> b!209645 (= e!136569 e!136563)))

(declare-fun c!35453 () Bool)

(assert (=> b!209645 (= c!35453 e!136566)))

(declare-fun res!102232 () Bool)

(assert (=> b!209645 (=> (not res!102232) (not e!136566))))

(assert (=> b!209645 (= res!102232 (bvslt #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(declare-fun b!209646 () Bool)

(assert (=> b!209646 (= e!136564 (isEmpty!495 lt!107225))))

(declare-fun b!209647 () Bool)

(assert (=> b!209647 (= e!136565 e!136568)))

(declare-fun c!35450 () Bool)

(assert (=> b!209647 (= c!35450 (validKeyInArray!0 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun bm!19799 () Bool)

(assert (=> bm!19799 (= call!19802 (getCurrentListMapNoExtraKeys!477 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(assert (= (and d!57793 c!35452) b!209638))

(assert (= (and d!57793 (not c!35452)) b!209647))

(assert (= (and b!209647 c!35450) b!209636))

(assert (= (and b!209647 (not c!35450)) b!209642))

(assert (= (or b!209636 b!209642) bm!19799))

(assert (= (and d!57793 res!102231) b!209640))

(assert (= (and b!209640 res!102230) b!209645))

(assert (= (and b!209645 res!102232) b!209639))

(assert (= (and b!209645 c!35453) b!209641))

(assert (= (and b!209645 (not c!35453)) b!209644))

(assert (= (and b!209641 res!102229) b!209637))

(assert (= (and b!209644 c!35451) b!209643))

(assert (= (and b!209644 (not c!35451)) b!209646))

(declare-fun b_lambda!7575 () Bool)

(assert (=> (not b_lambda!7575) (not b!209636)))

(assert (=> b!209636 t!7996))

(declare-fun b_and!12297 () Bool)

(assert (= b_and!12295 (and (=> t!7996 result!4969) b_and!12297)))

(declare-fun b_lambda!7577 () Bool)

(assert (=> (not b_lambda!7577) (not b!209637)))

(assert (=> b!209637 t!7996))

(declare-fun b_and!12299 () Bool)

(assert (= b_and!12297 (and (=> t!7996 result!4969) b_and!12299)))

(declare-fun m!237045 () Bool)

(assert (=> b!209643 m!237045))

(assert (=> b!209639 m!236963))

(assert (=> b!209639 m!236963))

(assert (=> b!209639 m!236971))

(assert (=> b!209647 m!236963))

(assert (=> b!209647 m!236963))

(assert (=> b!209647 m!236971))

(declare-fun m!237047 () Bool)

(assert (=> b!209636 m!237047))

(assert (=> b!209636 m!236977))

(declare-fun m!237049 () Bool)

(assert (=> b!209636 m!237049))

(declare-fun m!237051 () Bool)

(assert (=> b!209636 m!237051))

(assert (=> b!209636 m!236963))

(assert (=> b!209636 m!236977))

(declare-fun m!237053 () Bool)

(assert (=> b!209636 m!237053))

(assert (=> b!209636 m!237053))

(declare-fun m!237055 () Bool)

(assert (=> b!209636 m!237055))

(assert (=> b!209636 m!237047))

(declare-fun m!237057 () Bool)

(assert (=> b!209636 m!237057))

(declare-fun m!237059 () Bool)

(assert (=> b!209640 m!237059))

(assert (=> b!209637 m!237047))

(assert (=> b!209637 m!236963))

(declare-fun m!237061 () Bool)

(assert (=> b!209637 m!237061))

(assert (=> b!209637 m!237047))

(assert (=> b!209637 m!236977))

(assert (=> b!209637 m!237049))

(assert (=> b!209637 m!236963))

(assert (=> b!209637 m!236977))

(assert (=> bm!19799 m!237045))

(declare-fun m!237063 () Bool)

(assert (=> b!209646 m!237063))

(declare-fun m!237065 () Bool)

(assert (=> d!57793 m!237065))

(assert (=> d!57793 m!236877))

(assert (=> b!209641 m!236963))

(assert (=> b!209641 m!236963))

(declare-fun m!237067 () Bool)

(assert (=> b!209641 m!237067))

(assert (=> b!209479 d!57793))

(declare-fun d!57795 () Bool)

(declare-fun e!136570 () Bool)

(assert (=> d!57795 e!136570))

(declare-fun res!102233 () Bool)

(assert (=> d!57795 (=> (not res!102233) (not e!136570))))

(declare-fun lt!107233 () ListLongMap!3059)

(assert (=> d!57795 (= res!102233 (contains!1388 lt!107233 (_1!2076 (tuple2!4133 k0!843 v!520))))))

(declare-fun lt!107230 () List!3053)

(assert (=> d!57795 (= lt!107233 (ListLongMap!3060 lt!107230))))

(declare-fun lt!107232 () Unit!6369)

(declare-fun lt!107231 () Unit!6369)

(assert (=> d!57795 (= lt!107232 lt!107231)))

(assert (=> d!57795 (= (getValueByKey!246 lt!107230 (_1!2076 (tuple2!4133 k0!843 v!520))) (Some!251 (_2!2076 (tuple2!4133 k0!843 v!520))))))

(assert (=> d!57795 (= lt!107231 (lemmaContainsTupThenGetReturnValue!135 lt!107230 (_1!2076 (tuple2!4133 k0!843 v!520)) (_2!2076 (tuple2!4133 k0!843 v!520))))))

(assert (=> d!57795 (= lt!107230 (insertStrictlySorted!137 (toList!1545 lt!107084) (_1!2076 (tuple2!4133 k0!843 v!520)) (_2!2076 (tuple2!4133 k0!843 v!520))))))

(assert (=> d!57795 (= (+!538 lt!107084 (tuple2!4133 k0!843 v!520)) lt!107233)))

(declare-fun b!209648 () Bool)

(declare-fun res!102234 () Bool)

(assert (=> b!209648 (=> (not res!102234) (not e!136570))))

(assert (=> b!209648 (= res!102234 (= (getValueByKey!246 (toList!1545 lt!107233) (_1!2076 (tuple2!4133 k0!843 v!520))) (Some!251 (_2!2076 (tuple2!4133 k0!843 v!520)))))))

(declare-fun b!209649 () Bool)

(assert (=> b!209649 (= e!136570 (contains!1389 (toList!1545 lt!107233) (tuple2!4133 k0!843 v!520)))))

(assert (= (and d!57795 res!102233) b!209648))

(assert (= (and b!209648 res!102234) b!209649))

(declare-fun m!237069 () Bool)

(assert (=> d!57795 m!237069))

(declare-fun m!237071 () Bool)

(assert (=> d!57795 m!237071))

(declare-fun m!237073 () Bool)

(assert (=> d!57795 m!237073))

(declare-fun m!237075 () Bool)

(assert (=> d!57795 m!237075))

(declare-fun m!237077 () Bool)

(assert (=> b!209648 m!237077))

(declare-fun m!237079 () Bool)

(assert (=> b!209649 m!237079))

(assert (=> b!209479 d!57795))

(declare-fun call!19807 () ListLongMap!3059)

(declare-fun bm!19804 () Bool)

(assert (=> bm!19804 (= call!19807 (getCurrentListMapNoExtraKeys!477 _keys!825 (array!9967 (store (arr!4733 _values!649) i!601 (ValueCellFull!2349 v!520)) (size!5058 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!209656 () Bool)

(declare-fun call!19808 () ListLongMap!3059)

(declare-fun e!136576 () Bool)

(assert (=> b!209656 (= e!136576 (= call!19807 (+!538 call!19808 (tuple2!4133 k0!843 v!520))))))

(declare-fun d!57797 () Bool)

(declare-fun e!136575 () Bool)

(assert (=> d!57797 e!136575))

(declare-fun res!102237 () Bool)

(assert (=> d!57797 (=> (not res!102237) (not e!136575))))

(assert (=> d!57797 (= res!102237 (and (or (not (bvsle #b00000000000000000000000000000000 i!601)) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5058 _values!649)))) (or (bvsle #b00000000000000000000000000000000 i!601) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5058 _values!649))))))))

(declare-fun lt!107236 () Unit!6369)

(declare-fun choose!1080 (array!9968 array!9966 (_ BitVec 32) (_ BitVec 32) V!6827 V!6827 (_ BitVec 32) (_ BitVec 64) V!6827 (_ BitVec 32) Int) Unit!6369)

(assert (=> d!57797 (= lt!107236 (choose!1080 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> d!57797 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(assert (=> d!57797 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!195 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657) lt!107236)))

(declare-fun b!209657 () Bool)

(assert (=> b!209657 (= e!136575 e!136576)))

(declare-fun c!35456 () Bool)

(assert (=> b!209657 (= c!35456 (bvsle #b00000000000000000000000000000000 i!601))))

(declare-fun b!209658 () Bool)

(assert (=> b!209658 (= e!136576 (= call!19807 call!19808))))

(declare-fun bm!19805 () Bool)

(assert (=> bm!19805 (= call!19808 (getCurrentListMapNoExtraKeys!477 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (= (and d!57797 res!102237) b!209657))

(assert (= (and b!209657 c!35456) b!209656))

(assert (= (and b!209657 (not c!35456)) b!209658))

(assert (= (or b!209656 b!209658) bm!19804))

(assert (= (or b!209656 b!209658) bm!19805))

(assert (=> bm!19804 m!236889))

(declare-fun m!237081 () Bool)

(assert (=> bm!19804 m!237081))

(declare-fun m!237083 () Bool)

(assert (=> b!209656 m!237083))

(declare-fun m!237085 () Bool)

(assert (=> d!57797 m!237085))

(assert (=> bm!19805 m!236895))

(assert (=> b!209479 d!57797))

(declare-fun d!57799 () Bool)

(declare-fun e!136585 () Bool)

(assert (=> d!57799 e!136585))

(declare-fun res!102240 () Bool)

(assert (=> d!57799 (=> (not res!102240) (not e!136585))))

(assert (=> d!57799 (= res!102240 (or (bvsge #b00000000000000000000000000000000 (size!5059 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5059 _keys!825)))))))

(declare-fun lt!107237 () ListLongMap!3059)

(declare-fun lt!107249 () ListLongMap!3059)

(assert (=> d!57799 (= lt!107237 lt!107249)))

(declare-fun lt!107255 () Unit!6369)

(declare-fun e!136587 () Unit!6369)

(assert (=> d!57799 (= lt!107255 e!136587)))

(declare-fun c!35461 () Bool)

(declare-fun e!136578 () Bool)

(assert (=> d!57799 (= c!35461 e!136578)))

(declare-fun res!102245 () Bool)

(assert (=> d!57799 (=> (not res!102245) (not e!136578))))

(assert (=> d!57799 (= res!102245 (bvslt #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(declare-fun e!136581 () ListLongMap!3059)

(assert (=> d!57799 (= lt!107249 e!136581)))

(declare-fun c!35457 () Bool)

(assert (=> d!57799 (= c!35457 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!57799 (validMask!0 mask!1149)))

(assert (=> d!57799 (= (getCurrentListMap!1078 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!107237)))

(declare-fun bm!19806 () Bool)

(declare-fun call!19815 () Bool)

(assert (=> bm!19806 (= call!19815 (contains!1388 lt!107237 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!209659 () Bool)

(declare-fun e!136583 () Bool)

(declare-fun e!136588 () Bool)

(assert (=> b!209659 (= e!136583 e!136588)))

(declare-fun res!102242 () Bool)

(declare-fun call!19814 () Bool)

(assert (=> b!209659 (= res!102242 call!19814)))

(assert (=> b!209659 (=> (not res!102242) (not e!136588))))

(declare-fun b!209660 () Bool)

(assert (=> b!209660 (= e!136583 (not call!19814))))

(declare-fun b!209661 () Bool)

(declare-fun res!102239 () Bool)

(assert (=> b!209661 (=> (not res!102239) (not e!136585))))

(assert (=> b!209661 (= res!102239 e!136583)))

(declare-fun c!35460 () Bool)

(assert (=> b!209661 (= c!35460 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!209662 () Bool)

(declare-fun e!136582 () ListLongMap!3059)

(declare-fun call!19810 () ListLongMap!3059)

(assert (=> b!209662 (= e!136582 call!19810)))

(declare-fun b!209663 () Bool)

(assert (=> b!209663 (= e!136588 (= (apply!189 lt!107237 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!209664 () Bool)

(declare-fun e!136580 () ListLongMap!3059)

(assert (=> b!209664 (= e!136580 call!19810)))

(declare-fun b!209665 () Bool)

(declare-fun call!19813 () ListLongMap!3059)

(assert (=> b!209665 (= e!136582 call!19813)))

(declare-fun b!209666 () Bool)

(declare-fun call!19809 () ListLongMap!3059)

(assert (=> b!209666 (= e!136581 (+!538 call!19809 (tuple2!4133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun b!209667 () Bool)

(declare-fun e!136586 () Bool)

(assert (=> b!209667 (= e!136586 (not call!19815))))

(declare-fun b!209668 () Bool)

(assert (=> b!209668 (= e!136585 e!136586)))

(declare-fun c!35462 () Bool)

(assert (=> b!209668 (= c!35462 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!209669 () Bool)

(declare-fun e!136577 () Bool)

(assert (=> b!209669 (= e!136586 e!136577)))

(declare-fun res!102246 () Bool)

(assert (=> b!209669 (= res!102246 call!19815)))

(assert (=> b!209669 (=> (not res!102246) (not e!136577))))

(declare-fun b!209670 () Bool)

(declare-fun lt!107243 () Unit!6369)

(assert (=> b!209670 (= e!136587 lt!107243)))

(declare-fun lt!107248 () ListLongMap!3059)

(assert (=> b!209670 (= lt!107248 (getCurrentListMapNoExtraKeys!477 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107251 () (_ BitVec 64))

(assert (=> b!209670 (= lt!107251 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107247 () (_ BitVec 64))

(assert (=> b!209670 (= lt!107247 (select (arr!4734 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107240 () Unit!6369)

(assert (=> b!209670 (= lt!107240 (addStillContains!165 lt!107248 lt!107251 zeroValue!615 lt!107247))))

(assert (=> b!209670 (contains!1388 (+!538 lt!107248 (tuple2!4133 lt!107251 zeroValue!615)) lt!107247)))

(declare-fun lt!107252 () Unit!6369)

(assert (=> b!209670 (= lt!107252 lt!107240)))

(declare-fun lt!107257 () ListLongMap!3059)

(assert (=> b!209670 (= lt!107257 (getCurrentListMapNoExtraKeys!477 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107246 () (_ BitVec 64))

(assert (=> b!209670 (= lt!107246 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107242 () (_ BitVec 64))

(assert (=> b!209670 (= lt!107242 (select (arr!4734 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107256 () Unit!6369)

(assert (=> b!209670 (= lt!107256 (addApplyDifferent!165 lt!107257 lt!107246 minValue!615 lt!107242))))

(assert (=> b!209670 (= (apply!189 (+!538 lt!107257 (tuple2!4133 lt!107246 minValue!615)) lt!107242) (apply!189 lt!107257 lt!107242))))

(declare-fun lt!107244 () Unit!6369)

(assert (=> b!209670 (= lt!107244 lt!107256)))

(declare-fun lt!107238 () ListLongMap!3059)

(assert (=> b!209670 (= lt!107238 (getCurrentListMapNoExtraKeys!477 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107241 () (_ BitVec 64))

(assert (=> b!209670 (= lt!107241 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107258 () (_ BitVec 64))

(assert (=> b!209670 (= lt!107258 (select (arr!4734 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107245 () Unit!6369)

(assert (=> b!209670 (= lt!107245 (addApplyDifferent!165 lt!107238 lt!107241 zeroValue!615 lt!107258))))

(assert (=> b!209670 (= (apply!189 (+!538 lt!107238 (tuple2!4133 lt!107241 zeroValue!615)) lt!107258) (apply!189 lt!107238 lt!107258))))

(declare-fun lt!107250 () Unit!6369)

(assert (=> b!209670 (= lt!107250 lt!107245)))

(declare-fun lt!107239 () ListLongMap!3059)

(assert (=> b!209670 (= lt!107239 (getCurrentListMapNoExtraKeys!477 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107253 () (_ BitVec 64))

(assert (=> b!209670 (= lt!107253 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107254 () (_ BitVec 64))

(assert (=> b!209670 (= lt!107254 (select (arr!4734 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!209670 (= lt!107243 (addApplyDifferent!165 lt!107239 lt!107253 minValue!615 lt!107254))))

(assert (=> b!209670 (= (apply!189 (+!538 lt!107239 (tuple2!4133 lt!107253 minValue!615)) lt!107254) (apply!189 lt!107239 lt!107254))))

(declare-fun b!209671 () Bool)

(assert (=> b!209671 (= e!136577 (= (apply!189 lt!107237 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun b!209672 () Bool)

(declare-fun res!102243 () Bool)

(assert (=> b!209672 (=> (not res!102243) (not e!136585))))

(declare-fun e!136579 () Bool)

(assert (=> b!209672 (= res!102243 e!136579)))

(declare-fun res!102238 () Bool)

(assert (=> b!209672 (=> res!102238 e!136579)))

(declare-fun e!136589 () Bool)

(assert (=> b!209672 (= res!102238 (not e!136589))))

(declare-fun res!102244 () Bool)

(assert (=> b!209672 (=> (not res!102244) (not e!136589))))

(assert (=> b!209672 (= res!102244 (bvslt #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(declare-fun bm!19807 () Bool)

(declare-fun call!19812 () ListLongMap!3059)

(assert (=> bm!19807 (= call!19813 call!19812)))

(declare-fun b!209673 () Bool)

(declare-fun Unit!6374 () Unit!6369)

(assert (=> b!209673 (= e!136587 Unit!6374)))

(declare-fun bm!19808 () Bool)

(assert (=> bm!19808 (= call!19810 call!19809)))

(declare-fun bm!19809 () Bool)

(declare-fun call!19811 () ListLongMap!3059)

(assert (=> bm!19809 (= call!19812 call!19811)))

(declare-fun b!209674 () Bool)

(assert (=> b!209674 (= e!136581 e!136580)))

(declare-fun c!35458 () Bool)

(assert (=> b!209674 (= c!35458 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!209675 () Bool)

(assert (=> b!209675 (= e!136578 (validKeyInArray!0 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun e!136584 () Bool)

(declare-fun b!209676 () Bool)

(assert (=> b!209676 (= e!136584 (= (apply!189 lt!107237 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)) (get!2540 (select (arr!4733 _values!649) #b00000000000000000000000000000000) (dynLambda!527 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!209676 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5058 _values!649)))))

(assert (=> b!209676 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(declare-fun bm!19810 () Bool)

(assert (=> bm!19810 (= call!19814 (contains!1388 lt!107237 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!19811 () Bool)

(assert (=> bm!19811 (= call!19809 (+!538 (ite c!35457 call!19811 (ite c!35458 call!19812 call!19813)) (ite (or c!35457 c!35458) (tuple2!4133 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun bm!19812 () Bool)

(assert (=> bm!19812 (= call!19811 (getCurrentListMapNoExtraKeys!477 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!209677 () Bool)

(declare-fun c!35459 () Bool)

(assert (=> b!209677 (= c!35459 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!209677 (= e!136580 e!136582)))

(declare-fun b!209678 () Bool)

(assert (=> b!209678 (= e!136579 e!136584)))

(declare-fun res!102241 () Bool)

(assert (=> b!209678 (=> (not res!102241) (not e!136584))))

(assert (=> b!209678 (= res!102241 (contains!1388 lt!107237 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!209678 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(declare-fun b!209679 () Bool)

(assert (=> b!209679 (= e!136589 (validKeyInArray!0 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)))))

(assert (= (and d!57799 c!35457) b!209666))

(assert (= (and d!57799 (not c!35457)) b!209674))

(assert (= (and b!209674 c!35458) b!209664))

(assert (= (and b!209674 (not c!35458)) b!209677))

(assert (= (and b!209677 c!35459) b!209662))

(assert (= (and b!209677 (not c!35459)) b!209665))

(assert (= (or b!209662 b!209665) bm!19807))

(assert (= (or b!209664 bm!19807) bm!19809))

(assert (= (or b!209664 b!209662) bm!19808))

(assert (= (or b!209666 bm!19809) bm!19812))

(assert (= (or b!209666 bm!19808) bm!19811))

(assert (= (and d!57799 res!102245) b!209675))

(assert (= (and d!57799 c!35461) b!209670))

(assert (= (and d!57799 (not c!35461)) b!209673))

(assert (= (and d!57799 res!102240) b!209672))

(assert (= (and b!209672 res!102244) b!209679))

(assert (= (and b!209672 (not res!102238)) b!209678))

(assert (= (and b!209678 res!102241) b!209676))

(assert (= (and b!209672 res!102243) b!209661))

(assert (= (and b!209661 c!35460) b!209659))

(assert (= (and b!209661 (not c!35460)) b!209660))

(assert (= (and b!209659 res!102242) b!209663))

(assert (= (or b!209659 b!209660) bm!19810))

(assert (= (and b!209661 res!102239) b!209668))

(assert (= (and b!209668 c!35462) b!209669))

(assert (= (and b!209668 (not c!35462)) b!209667))

(assert (= (and b!209669 res!102246) b!209671))

(assert (= (or b!209669 b!209667) bm!19806))

(declare-fun b_lambda!7579 () Bool)

(assert (=> (not b_lambda!7579) (not b!209676)))

(assert (=> b!209676 t!7996))

(declare-fun b_and!12301 () Bool)

(assert (= b_and!12299 (and (=> t!7996 result!4969) b_and!12301)))

(declare-fun m!237087 () Bool)

(assert (=> bm!19806 m!237087))

(assert (=> b!209679 m!236963))

(assert (=> b!209679 m!236963))

(assert (=> b!209679 m!236971))

(declare-fun m!237089 () Bool)

(assert (=> b!209666 m!237089))

(declare-fun m!237091 () Bool)

(assert (=> bm!19811 m!237091))

(assert (=> d!57799 m!236877))

(assert (=> bm!19812 m!236895))

(declare-fun m!237093 () Bool)

(assert (=> b!209663 m!237093))

(assert (=> b!209675 m!236963))

(assert (=> b!209675 m!236963))

(assert (=> b!209675 m!236971))

(declare-fun m!237095 () Bool)

(assert (=> b!209670 m!237095))

(assert (=> b!209670 m!236963))

(declare-fun m!237097 () Bool)

(assert (=> b!209670 m!237097))

(declare-fun m!237099 () Bool)

(assert (=> b!209670 m!237099))

(assert (=> b!209670 m!237097))

(declare-fun m!237101 () Bool)

(assert (=> b!209670 m!237101))

(declare-fun m!237103 () Bool)

(assert (=> b!209670 m!237103))

(declare-fun m!237105 () Bool)

(assert (=> b!209670 m!237105))

(declare-fun m!237107 () Bool)

(assert (=> b!209670 m!237107))

(declare-fun m!237109 () Bool)

(assert (=> b!209670 m!237109))

(assert (=> b!209670 m!236895))

(declare-fun m!237111 () Bool)

(assert (=> b!209670 m!237111))

(declare-fun m!237113 () Bool)

(assert (=> b!209670 m!237113))

(assert (=> b!209670 m!237111))

(declare-fun m!237115 () Bool)

(assert (=> b!209670 m!237115))

(declare-fun m!237117 () Bool)

(assert (=> b!209670 m!237117))

(declare-fun m!237119 () Bool)

(assert (=> b!209670 m!237119))

(assert (=> b!209670 m!237107))

(assert (=> b!209670 m!237117))

(declare-fun m!237121 () Bool)

(assert (=> b!209670 m!237121))

(declare-fun m!237123 () Bool)

(assert (=> b!209670 m!237123))

(declare-fun m!237125 () Bool)

(assert (=> bm!19810 m!237125))

(assert (=> b!209678 m!236963))

(assert (=> b!209678 m!236963))

(declare-fun m!237127 () Bool)

(assert (=> b!209678 m!237127))

(assert (=> b!209676 m!236963))

(assert (=> b!209676 m!236977))

(assert (=> b!209676 m!237047))

(assert (=> b!209676 m!237047))

(assert (=> b!209676 m!236977))

(assert (=> b!209676 m!237049))

(assert (=> b!209676 m!236963))

(declare-fun m!237129 () Bool)

(assert (=> b!209676 m!237129))

(declare-fun m!237131 () Bool)

(assert (=> b!209671 m!237131))

(assert (=> b!209479 d!57799))

(declare-fun b!209690 () Bool)

(declare-fun e!136598 () Bool)

(declare-fun call!19818 () Bool)

(assert (=> b!209690 (= e!136598 call!19818)))

(declare-fun bm!19815 () Bool)

(declare-fun c!35465 () Bool)

(assert (=> bm!19815 (= call!19818 (arrayNoDuplicates!0 _keys!825 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!35465 (Cons!3048 (select (arr!4734 _keys!825) #b00000000000000000000000000000000) Nil!3049) Nil!3049)))))

(declare-fun b!209691 () Bool)

(declare-fun e!136599 () Bool)

(declare-fun e!136601 () Bool)

(assert (=> b!209691 (= e!136599 e!136601)))

(declare-fun res!102253 () Bool)

(assert (=> b!209691 (=> (not res!102253) (not e!136601))))

(declare-fun e!136600 () Bool)

(assert (=> b!209691 (= res!102253 (not e!136600))))

(declare-fun res!102254 () Bool)

(assert (=> b!209691 (=> (not res!102254) (not e!136600))))

(assert (=> b!209691 (= res!102254 (validKeyInArray!0 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!209692 () Bool)

(assert (=> b!209692 (= e!136598 call!19818)))

(declare-fun d!57801 () Bool)

(declare-fun res!102255 () Bool)

(assert (=> d!57801 (=> res!102255 e!136599)))

(assert (=> d!57801 (= res!102255 (bvsge #b00000000000000000000000000000000 (size!5059 _keys!825)))))

(assert (=> d!57801 (= (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3049) e!136599)))

(declare-fun b!209693 () Bool)

(assert (=> b!209693 (= e!136601 e!136598)))

(assert (=> b!209693 (= c!35465 (validKeyInArray!0 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!209694 () Bool)

(declare-fun contains!1390 (List!3052 (_ BitVec 64)) Bool)

(assert (=> b!209694 (= e!136600 (contains!1390 Nil!3049 (select (arr!4734 _keys!825) #b00000000000000000000000000000000)))))

(assert (= (and d!57801 (not res!102255)) b!209691))

(assert (= (and b!209691 res!102254) b!209694))

(assert (= (and b!209691 res!102253) b!209693))

(assert (= (and b!209693 c!35465) b!209692))

(assert (= (and b!209693 (not c!35465)) b!209690))

(assert (= (or b!209692 b!209690) bm!19815))

(assert (=> bm!19815 m!236963))

(declare-fun m!237133 () Bool)

(assert (=> bm!19815 m!237133))

(assert (=> b!209691 m!236963))

(assert (=> b!209691 m!236963))

(assert (=> b!209691 m!236971))

(assert (=> b!209693 m!236963))

(assert (=> b!209693 m!236963))

(assert (=> b!209693 m!236971))

(assert (=> b!209694 m!236963))

(assert (=> b!209694 m!236963))

(declare-fun m!237135 () Bool)

(assert (=> b!209694 m!237135))

(assert (=> b!209473 d!57801))

(declare-fun d!57803 () Bool)

(assert (=> d!57803 (= (validKeyInArray!0 k0!843) (and (not (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!209478 d!57803))

(declare-fun mapIsEmpty!9152 () Bool)

(declare-fun mapRes!9152 () Bool)

(assert (=> mapIsEmpty!9152 mapRes!9152))

(declare-fun b!209701 () Bool)

(declare-fun e!136606 () Bool)

(assert (=> b!209701 (= e!136606 tp_is_empty!5385)))

(declare-fun mapNonEmpty!9152 () Bool)

(declare-fun tp!19619 () Bool)

(assert (=> mapNonEmpty!9152 (= mapRes!9152 (and tp!19619 e!136606))))

(declare-fun mapValue!9152 () ValueCell!2349)

(declare-fun mapRest!9152 () (Array (_ BitVec 32) ValueCell!2349))

(declare-fun mapKey!9152 () (_ BitVec 32))

(assert (=> mapNonEmpty!9152 (= mapRest!9146 (store mapRest!9152 mapKey!9152 mapValue!9152))))

(declare-fun b!209702 () Bool)

(declare-fun e!136607 () Bool)

(assert (=> b!209702 (= e!136607 tp_is_empty!5385)))

(declare-fun condMapEmpty!9152 () Bool)

(declare-fun mapDefault!9152 () ValueCell!2349)

(assert (=> mapNonEmpty!9146 (= condMapEmpty!9152 (= mapRest!9146 ((as const (Array (_ BitVec 32) ValueCell!2349)) mapDefault!9152)))))

(assert (=> mapNonEmpty!9146 (= tp!19609 (and e!136607 mapRes!9152))))

(assert (= (and mapNonEmpty!9146 condMapEmpty!9152) mapIsEmpty!9152))

(assert (= (and mapNonEmpty!9146 (not condMapEmpty!9152)) mapNonEmpty!9152))

(assert (= (and mapNonEmpty!9152 ((_ is ValueCellFull!2349) mapValue!9152)) b!209701))

(assert (= (and mapNonEmpty!9146 ((_ is ValueCellFull!2349) mapDefault!9152)) b!209702))

(declare-fun m!237137 () Bool)

(assert (=> mapNonEmpty!9152 m!237137))

(declare-fun b_lambda!7581 () Bool)

(assert (= b_lambda!7571 (or (and start!20882 b_free!5523) b_lambda!7581)))

(declare-fun b_lambda!7583 () Bool)

(assert (= b_lambda!7573 (or (and start!20882 b_free!5523) b_lambda!7583)))

(declare-fun b_lambda!7585 () Bool)

(assert (= b_lambda!7577 (or (and start!20882 b_free!5523) b_lambda!7585)))

(declare-fun b_lambda!7587 () Bool)

(assert (= b_lambda!7579 (or (and start!20882 b_free!5523) b_lambda!7587)))

(declare-fun b_lambda!7589 () Bool)

(assert (= b_lambda!7569 (or (and start!20882 b_free!5523) b_lambda!7589)))

(declare-fun b_lambda!7591 () Bool)

(assert (= b_lambda!7575 (or (and start!20882 b_free!5523) b_lambda!7591)))

(check-sat (not bm!19810) (not b!209678) (not b!209570) (not b!209521) (not b!209632) (not b!209676) (not bm!19811) (not mapNonEmpty!9152) (not b!209619) (not b!209641) (not b!209563) (not b!209564) (not b!209559) (not b!209522) (not b!209534) (not b_lambda!7581) (not b!209520) (not bm!19815) (not bm!19798) (not b!209566) (not b!209648) (not b!209663) (not bm!19774) (not b!209649) (not b_lambda!7585) (not d!57797) (not b_next!5523) (not bm!19806) (not b!209671) (not b!209569) (not b!209631) (not b!209519) (not b!209694) (not b!209679) (not b!209627) (not bm!19792) (not bm!19799) (not bm!19796) (not b!209626) (not b_lambda!7589) (not b!209622) (not b!209656) (not bm!19812) (not bm!19805) b_and!12301 (not b!209646) (not b!209647) (not bm!19797) (not d!57789) tp_is_empty!5385 (not b!209693) (not b!209531) (not b_lambda!7587) (not b!209643) (not b!209675) (not d!57795) (not d!57799) (not b!209636) (not b!209562) (not b!209666) (not b!209634) (not b!209640) (not d!57777) (not b_lambda!7583) (not bm!19777) (not b!209635) (not b!209691) (not d!57793) (not bm!19804) (not b_lambda!7591) (not b!209639) (not d!57779) (not b!209637) (not b!209560) (not d!57791) (not b!209670))
(check-sat b_and!12301 (not b_next!5523))
