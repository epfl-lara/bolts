; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107368 () Bool)

(assert start!107368)

(declare-fun b_free!27651 () Bool)

(declare-fun b_next!27651 () Bool)

(assert (=> start!107368 (= b_free!27651 (not b_next!27651))))

(declare-fun tp!97459 () Bool)

(declare-fun b_and!45693 () Bool)

(assert (=> start!107368 (= tp!97459 b_and!45693)))

(declare-fun b!1271941 () Bool)

(declare-fun e!725467 () Bool)

(declare-fun e!725465 () Bool)

(declare-fun mapRes!51112 () Bool)

(assert (=> b!1271941 (= e!725467 (and e!725465 mapRes!51112))))

(declare-fun condMapEmpty!51112 () Bool)

(declare-datatypes ((V!49221 0))(
  ( (V!49222 (val!16585 Int)) )
))
(declare-datatypes ((ValueCell!15657 0))(
  ( (ValueCellFull!15657 (v!19220 V!49221)) (EmptyCell!15657) )
))
(declare-datatypes ((array!83233 0))(
  ( (array!83234 (arr!40149 (Array (_ BitVec 32) ValueCell!15657)) (size!40686 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83233)

(declare-fun mapDefault!51112 () ValueCell!15657)

(assert (=> b!1271941 (= condMapEmpty!51112 (= (arr!40149 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15657)) mapDefault!51112)))))

(declare-fun mapIsEmpty!51112 () Bool)

(assert (=> mapIsEmpty!51112 mapRes!51112))

(declare-fun res!846251 () Bool)

(declare-fun e!725466 () Bool)

(assert (=> start!107368 (=> (not res!846251) (not e!725466))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107368 (= res!846251 (validMask!0 mask!1730))))

(assert (=> start!107368 e!725466))

(declare-fun array_inv!30479 (array!83233) Bool)

(assert (=> start!107368 (and (array_inv!30479 _values!1134) e!725467)))

(assert (=> start!107368 true))

(declare-datatypes ((array!83235 0))(
  ( (array!83236 (arr!40150 (Array (_ BitVec 32) (_ BitVec 64))) (size!40687 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83235)

(declare-fun array_inv!30480 (array!83235) Bool)

(assert (=> start!107368 (array_inv!30480 _keys!1364)))

(declare-fun tp_is_empty!33021 () Bool)

(assert (=> start!107368 tp_is_empty!33021))

(assert (=> start!107368 tp!97459))

(declare-fun from!1698 () (_ BitVec 32))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun b!1271942 () Bool)

(declare-fun minValueAfter!52 () V!49221)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun minValueBefore!52 () V!49221)

(declare-fun defaultEntry!1142 () Int)

(declare-fun zeroValueAfter!52 () V!49221)

(declare-fun zeroValueBefore!52 () V!49221)

(declare-datatypes ((tuple2!21512 0))(
  ( (tuple2!21513 (_1!10766 (_ BitVec 64)) (_2!10766 V!49221)) )
))
(declare-datatypes ((List!28707 0))(
  ( (Nil!28704) (Cons!28703 (h!29912 tuple2!21512) (t!42243 List!28707)) )
))
(declare-datatypes ((ListLongMap!19253 0))(
  ( (ListLongMap!19254 (toList!9642 List!28707)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5950 (array!83235 array!83233 (_ BitVec 32) (_ BitVec 32) V!49221 V!49221 (_ BitVec 32) Int) ListLongMap!19253)

(assert (=> b!1271942 (= e!725466 (not (= (getCurrentListMapNoExtraKeys!5950 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 from!1698 defaultEntry!1142) (getCurrentListMapNoExtraKeys!5950 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 from!1698 defaultEntry!1142))))))

(assert (=> b!1271942 (= (getCurrentListMapNoExtraKeys!5950 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5950 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-datatypes ((Unit!42256 0))(
  ( (Unit!42257) )
))
(declare-fun lt!574886 () Unit!42256)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1246 (array!83235 array!83233 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!49221 V!49221 V!49221 V!49221 (_ BitVec 32) Int) Unit!42256)

(assert (=> b!1271942 (= lt!574886 (lemmaNoChangeToArrayThenSameMapNoExtras!1246 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun b!1271943 () Bool)

(declare-fun res!846250 () Bool)

(assert (=> b!1271943 (=> (not res!846250) (not e!725466))))

(declare-datatypes ((List!28708 0))(
  ( (Nil!28705) (Cons!28704 (h!29913 (_ BitVec 64)) (t!42244 List!28708)) )
))
(declare-fun arrayNoDuplicates!0 (array!83235 (_ BitVec 32) List!28708) Bool)

(assert (=> b!1271943 (= res!846250 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28705))))

(declare-fun b!1271944 () Bool)

(declare-fun e!725468 () Bool)

(assert (=> b!1271944 (= e!725468 tp_is_empty!33021)))

(declare-fun b!1271945 () Bool)

(assert (=> b!1271945 (= e!725465 tp_is_empty!33021)))

(declare-fun mapNonEmpty!51112 () Bool)

(declare-fun tp!97460 () Bool)

(assert (=> mapNonEmpty!51112 (= mapRes!51112 (and tp!97460 e!725468))))

(declare-fun mapKey!51112 () (_ BitVec 32))

(declare-fun mapRest!51112 () (Array (_ BitVec 32) ValueCell!15657))

(declare-fun mapValue!51112 () ValueCell!15657)

(assert (=> mapNonEmpty!51112 (= (arr!40149 _values!1134) (store mapRest!51112 mapKey!51112 mapValue!51112))))

(declare-fun b!1271946 () Bool)

(declare-fun res!846248 () Bool)

(assert (=> b!1271946 (=> (not res!846248) (not e!725466))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83235 (_ BitVec 32)) Bool)

(assert (=> b!1271946 (= res!846248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1271947 () Bool)

(declare-fun res!846247 () Bool)

(assert (=> b!1271947 (=> (not res!846247) (not e!725466))))

(assert (=> b!1271947 (= res!846247 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40687 _keys!1364)) (bvslt from!1698 (size!40687 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1271948 () Bool)

(declare-fun res!846249 () Bool)

(assert (=> b!1271948 (=> (not res!846249) (not e!725466))))

(assert (=> b!1271948 (= res!846249 (and (= (size!40686 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40687 _keys!1364) (size!40686 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(assert (= (and start!107368 res!846251) b!1271948))

(assert (= (and b!1271948 res!846249) b!1271946))

(assert (= (and b!1271946 res!846248) b!1271943))

(assert (= (and b!1271943 res!846250) b!1271947))

(assert (= (and b!1271947 res!846247) b!1271942))

(assert (= (and b!1271941 condMapEmpty!51112) mapIsEmpty!51112))

(assert (= (and b!1271941 (not condMapEmpty!51112)) mapNonEmpty!51112))

(get-info :version)

(assert (= (and mapNonEmpty!51112 ((_ is ValueCellFull!15657) mapValue!51112)) b!1271944))

(assert (= (and b!1271941 ((_ is ValueCellFull!15657) mapDefault!51112)) b!1271945))

(assert (= start!107368 b!1271941))

(declare-fun m!1169727 () Bool)

(assert (=> start!107368 m!1169727))

(declare-fun m!1169729 () Bool)

(assert (=> start!107368 m!1169729))

(declare-fun m!1169731 () Bool)

(assert (=> start!107368 m!1169731))

(declare-fun m!1169733 () Bool)

(assert (=> b!1271943 m!1169733))

(declare-fun m!1169735 () Bool)

(assert (=> b!1271946 m!1169735))

(declare-fun m!1169737 () Bool)

(assert (=> mapNonEmpty!51112 m!1169737))

(declare-fun m!1169739 () Bool)

(assert (=> b!1271942 m!1169739))

(declare-fun m!1169741 () Bool)

(assert (=> b!1271942 m!1169741))

(declare-fun m!1169743 () Bool)

(assert (=> b!1271942 m!1169743))

(declare-fun m!1169745 () Bool)

(assert (=> b!1271942 m!1169745))

(declare-fun m!1169747 () Bool)

(assert (=> b!1271942 m!1169747))

(check-sat (not b!1271942) (not b_next!27651) (not b!1271946) b_and!45693 (not start!107368) (not mapNonEmpty!51112) (not b!1271943) tp_is_empty!33021)
(check-sat b_and!45693 (not b_next!27651))
(get-model)

(declare-fun d!139725 () Bool)

(declare-fun res!846271 () Bool)

(declare-fun e!725491 () Bool)

(assert (=> d!139725 (=> res!846271 e!725491)))

(assert (=> d!139725 (= res!846271 (bvsge #b00000000000000000000000000000000 (size!40687 _keys!1364)))))

(assert (=> d!139725 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730) e!725491)))

(declare-fun b!1271981 () Bool)

(declare-fun e!725492 () Bool)

(declare-fun call!62514 () Bool)

(assert (=> b!1271981 (= e!725492 call!62514)))

(declare-fun b!1271982 () Bool)

(declare-fun e!725490 () Bool)

(assert (=> b!1271982 (= e!725490 e!725492)))

(declare-fun lt!574896 () (_ BitVec 64))

(assert (=> b!1271982 (= lt!574896 (select (arr!40150 _keys!1364) #b00000000000000000000000000000000))))

(declare-fun lt!574898 () Unit!42256)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83235 (_ BitVec 64) (_ BitVec 32)) Unit!42256)

(assert (=> b!1271982 (= lt!574898 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1364 lt!574896 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1271982 (arrayContainsKey!0 _keys!1364 lt!574896 #b00000000000000000000000000000000)))

(declare-fun lt!574897 () Unit!42256)

(assert (=> b!1271982 (= lt!574897 lt!574898)))

(declare-fun res!846272 () Bool)

(declare-datatypes ((SeekEntryResult!9984 0))(
  ( (MissingZero!9984 (index!42306 (_ BitVec 32))) (Found!9984 (index!42307 (_ BitVec 32))) (Intermediate!9984 (undefined!10796 Bool) (index!42308 (_ BitVec 32)) (x!112359 (_ BitVec 32))) (Undefined!9984) (MissingVacant!9984 (index!42309 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83235 (_ BitVec 32)) SeekEntryResult!9984)

(assert (=> b!1271982 (= res!846272 (= (seekEntryOrOpen!0 (select (arr!40150 _keys!1364) #b00000000000000000000000000000000) _keys!1364 mask!1730) (Found!9984 #b00000000000000000000000000000000)))))

(assert (=> b!1271982 (=> (not res!846272) (not e!725492))))

(declare-fun b!1271983 () Bool)

(assert (=> b!1271983 (= e!725491 e!725490)))

(declare-fun c!123578 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1271983 (= c!123578 (validKeyInArray!0 (select (arr!40150 _keys!1364) #b00000000000000000000000000000000)))))

(declare-fun bm!62511 () Bool)

(assert (=> bm!62511 (= call!62514 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1364 mask!1730))))

(declare-fun b!1271984 () Bool)

(assert (=> b!1271984 (= e!725490 call!62514)))

(assert (= (and d!139725 (not res!846271)) b!1271983))

(assert (= (and b!1271983 c!123578) b!1271982))

(assert (= (and b!1271983 (not c!123578)) b!1271984))

(assert (= (and b!1271982 res!846272) b!1271981))

(assert (= (or b!1271981 b!1271984) bm!62511))

(declare-fun m!1169771 () Bool)

(assert (=> b!1271982 m!1169771))

(declare-fun m!1169773 () Bool)

(assert (=> b!1271982 m!1169773))

(declare-fun m!1169775 () Bool)

(assert (=> b!1271982 m!1169775))

(assert (=> b!1271982 m!1169771))

(declare-fun m!1169777 () Bool)

(assert (=> b!1271982 m!1169777))

(assert (=> b!1271983 m!1169771))

(assert (=> b!1271983 m!1169771))

(declare-fun m!1169779 () Bool)

(assert (=> b!1271983 m!1169779))

(declare-fun m!1169781 () Bool)

(assert (=> bm!62511 m!1169781))

(assert (=> b!1271946 d!139725))

(declare-fun d!139727 () Bool)

(assert (=> d!139727 (= (validMask!0 mask!1730) (and (or (= mask!1730 #b00000000000000000000000000000111) (= mask!1730 #b00000000000000000000000000001111) (= mask!1730 #b00000000000000000000000000011111) (= mask!1730 #b00000000000000000000000000111111) (= mask!1730 #b00000000000000000000000001111111) (= mask!1730 #b00000000000000000000000011111111) (= mask!1730 #b00000000000000000000000111111111) (= mask!1730 #b00000000000000000000001111111111) (= mask!1730 #b00000000000000000000011111111111) (= mask!1730 #b00000000000000000000111111111111) (= mask!1730 #b00000000000000000001111111111111) (= mask!1730 #b00000000000000000011111111111111) (= mask!1730 #b00000000000000000111111111111111) (= mask!1730 #b00000000000000001111111111111111) (= mask!1730 #b00000000000000011111111111111111) (= mask!1730 #b00000000000000111111111111111111) (= mask!1730 #b00000000000001111111111111111111) (= mask!1730 #b00000000000011111111111111111111) (= mask!1730 #b00000000000111111111111111111111) (= mask!1730 #b00000000001111111111111111111111) (= mask!1730 #b00000000011111111111111111111111) (= mask!1730 #b00000000111111111111111111111111) (= mask!1730 #b00000001111111111111111111111111) (= mask!1730 #b00000011111111111111111111111111) (= mask!1730 #b00000111111111111111111111111111) (= mask!1730 #b00001111111111111111111111111111) (= mask!1730 #b00011111111111111111111111111111) (= mask!1730 #b00111111111111111111111111111111)) (bvsle mask!1730 #b00111111111111111111111111111111)))))

(assert (=> start!107368 d!139727))

(declare-fun d!139729 () Bool)

(assert (=> d!139729 (= (array_inv!30479 _values!1134) (bvsge (size!40686 _values!1134) #b00000000000000000000000000000000))))

(assert (=> start!107368 d!139729))

(declare-fun d!139731 () Bool)

(assert (=> d!139731 (= (array_inv!30480 _keys!1364) (bvsge (size!40687 _keys!1364) #b00000000000000000000000000000000))))

(assert (=> start!107368 d!139731))

(declare-fun b!1272009 () Bool)

(declare-fun lt!574913 () Unit!42256)

(declare-fun lt!574919 () Unit!42256)

(assert (=> b!1272009 (= lt!574913 lt!574919)))

(declare-fun lt!574918 () (_ BitVec 64))

(declare-fun lt!574916 () ListLongMap!19253)

(declare-fun lt!574914 () V!49221)

(declare-fun lt!574917 () (_ BitVec 64))

(declare-fun contains!7682 (ListLongMap!19253 (_ BitVec 64)) Bool)

(declare-fun +!4242 (ListLongMap!19253 tuple2!21512) ListLongMap!19253)

(assert (=> b!1272009 (not (contains!7682 (+!4242 lt!574916 (tuple2!21513 lt!574917 lt!574914)) lt!574918))))

(declare-fun addStillNotContains!335 (ListLongMap!19253 (_ BitVec 64) V!49221 (_ BitVec 64)) Unit!42256)

(assert (=> b!1272009 (= lt!574919 (addStillNotContains!335 lt!574916 lt!574917 lt!574914 lt!574918))))

(assert (=> b!1272009 (= lt!574918 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!20544 (ValueCell!15657 V!49221) V!49221)

(declare-fun dynLambda!3485 (Int (_ BitVec 64)) V!49221)

(assert (=> b!1272009 (= lt!574914 (get!20544 (select (arr!40149 _values!1134) from!1698) (dynLambda!3485 defaultEntry!1142 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1272009 (= lt!574917 (select (arr!40150 _keys!1364) from!1698))))

(declare-fun call!62517 () ListLongMap!19253)

(assert (=> b!1272009 (= lt!574916 call!62517)))

(declare-fun e!725513 () ListLongMap!19253)

(assert (=> b!1272009 (= e!725513 (+!4242 call!62517 (tuple2!21513 (select (arr!40150 _keys!1364) from!1698) (get!20544 (select (arr!40149 _values!1134) from!1698) (dynLambda!3485 defaultEntry!1142 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1272010 () Bool)

(declare-fun e!725510 () ListLongMap!19253)

(assert (=> b!1272010 (= e!725510 (ListLongMap!19254 Nil!28704))))

(declare-fun b!1272011 () Bool)

(declare-fun e!725508 () Bool)

(declare-fun e!725512 () Bool)

(assert (=> b!1272011 (= e!725508 e!725512)))

(declare-fun c!123589 () Bool)

(declare-fun e!725511 () Bool)

(assert (=> b!1272011 (= c!123589 e!725511)))

(declare-fun res!846282 () Bool)

(assert (=> b!1272011 (=> (not res!846282) (not e!725511))))

(assert (=> b!1272011 (= res!846282 (bvslt from!1698 (size!40687 _keys!1364)))))

(declare-fun b!1272012 () Bool)

(assert (=> b!1272012 (= e!725510 e!725513)))

(declare-fun c!123587 () Bool)

(assert (=> b!1272012 (= c!123587 (validKeyInArray!0 (select (arr!40150 _keys!1364) from!1698)))))

(declare-fun b!1272014 () Bool)

(declare-fun res!846281 () Bool)

(assert (=> b!1272014 (=> (not res!846281) (not e!725508))))

(declare-fun lt!574915 () ListLongMap!19253)

(assert (=> b!1272014 (= res!846281 (not (contains!7682 lt!574915 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1272015 () Bool)

(assert (=> b!1272015 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvslt from!1698 (size!40687 _keys!1364)))))

(assert (=> b!1272015 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvslt from!1698 (size!40686 _values!1134)))))

(declare-fun e!725507 () Bool)

(declare-fun apply!1040 (ListLongMap!19253 (_ BitVec 64)) V!49221)

(assert (=> b!1272015 (= e!725507 (= (apply!1040 lt!574915 (select (arr!40150 _keys!1364) from!1698)) (get!20544 (select (arr!40149 _values!1134) from!1698) (dynLambda!3485 defaultEntry!1142 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1272016 () Bool)

(assert (=> b!1272016 (= e!725511 (validKeyInArray!0 (select (arr!40150 _keys!1364) from!1698)))))

(assert (=> b!1272016 (bvsge from!1698 #b00000000000000000000000000000000)))

(declare-fun b!1272017 () Bool)

(declare-fun e!725509 () Bool)

(declare-fun isEmpty!1050 (ListLongMap!19253) Bool)

(assert (=> b!1272017 (= e!725509 (isEmpty!1050 lt!574915))))

(declare-fun b!1272018 () Bool)

(assert (=> b!1272018 (= e!725512 e!725509)))

(declare-fun c!123588 () Bool)

(assert (=> b!1272018 (= c!123588 (bvslt from!1698 (size!40687 _keys!1364)))))

(declare-fun b!1272019 () Bool)

(assert (=> b!1272019 (= e!725512 e!725507)))

(assert (=> b!1272019 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvslt from!1698 (size!40687 _keys!1364)))))

(declare-fun res!846284 () Bool)

(assert (=> b!1272019 (= res!846284 (contains!7682 lt!574915 (select (arr!40150 _keys!1364) from!1698)))))

(assert (=> b!1272019 (=> (not res!846284) (not e!725507))))

(declare-fun b!1272013 () Bool)

(assert (=> b!1272013 (= e!725509 (= lt!574915 (getCurrentListMapNoExtraKeys!5950 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd from!1698 #b00000000000000000000000000000001) defaultEntry!1142)))))

(declare-fun d!139733 () Bool)

(assert (=> d!139733 e!725508))

(declare-fun res!846283 () Bool)

(assert (=> d!139733 (=> (not res!846283) (not e!725508))))

(assert (=> d!139733 (= res!846283 (not (contains!7682 lt!574915 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!139733 (= lt!574915 e!725510)))

(declare-fun c!123590 () Bool)

(assert (=> d!139733 (= c!123590 (bvsge from!1698 (size!40687 _keys!1364)))))

(assert (=> d!139733 (validMask!0 mask!1730)))

(assert (=> d!139733 (= (getCurrentListMapNoExtraKeys!5950 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 from!1698 defaultEntry!1142) lt!574915)))

(declare-fun bm!62514 () Bool)

(assert (=> bm!62514 (= call!62517 (getCurrentListMapNoExtraKeys!5950 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd from!1698 #b00000000000000000000000000000001) defaultEntry!1142))))

(declare-fun b!1272020 () Bool)

(assert (=> b!1272020 (= e!725513 call!62517)))

(assert (= (and d!139733 c!123590) b!1272010))

(assert (= (and d!139733 (not c!123590)) b!1272012))

(assert (= (and b!1272012 c!123587) b!1272009))

(assert (= (and b!1272012 (not c!123587)) b!1272020))

(assert (= (or b!1272009 b!1272020) bm!62514))

(assert (= (and d!139733 res!846283) b!1272014))

(assert (= (and b!1272014 res!846281) b!1272011))

(assert (= (and b!1272011 res!846282) b!1272016))

(assert (= (and b!1272011 c!123589) b!1272019))

(assert (= (and b!1272011 (not c!123589)) b!1272018))

(assert (= (and b!1272019 res!846284) b!1272015))

(assert (= (and b!1272018 c!123588) b!1272013))

(assert (= (and b!1272018 (not c!123588)) b!1272017))

(declare-fun b_lambda!23049 () Bool)

(assert (=> (not b_lambda!23049) (not b!1272009)))

(declare-fun t!42247 () Bool)

(declare-fun tb!11345 () Bool)

(assert (=> (and start!107368 (= defaultEntry!1142 defaultEntry!1142) t!42247) tb!11345))

(declare-fun result!23557 () Bool)

(assert (=> tb!11345 (= result!23557 tp_is_empty!33021)))

(assert (=> b!1272009 t!42247))

(declare-fun b_and!45697 () Bool)

(assert (= b_and!45693 (and (=> t!42247 result!23557) b_and!45697)))

(declare-fun b_lambda!23051 () Bool)

(assert (=> (not b_lambda!23051) (not b!1272015)))

(assert (=> b!1272015 t!42247))

(declare-fun b_and!45699 () Bool)

(assert (= b_and!45697 (and (=> t!42247 result!23557) b_and!45699)))

(declare-fun m!1169783 () Bool)

(assert (=> bm!62514 m!1169783))

(declare-fun m!1169785 () Bool)

(assert (=> b!1272015 m!1169785))

(declare-fun m!1169787 () Bool)

(assert (=> b!1272015 m!1169787))

(declare-fun m!1169789 () Bool)

(assert (=> b!1272015 m!1169789))

(declare-fun m!1169791 () Bool)

(assert (=> b!1272015 m!1169791))

(declare-fun m!1169793 () Bool)

(assert (=> b!1272015 m!1169793))

(assert (=> b!1272015 m!1169791))

(assert (=> b!1272015 m!1169787))

(assert (=> b!1272015 m!1169785))

(declare-fun m!1169795 () Bool)

(assert (=> b!1272017 m!1169795))

(assert (=> b!1272019 m!1169791))

(assert (=> b!1272019 m!1169791))

(declare-fun m!1169797 () Bool)

(assert (=> b!1272019 m!1169797))

(assert (=> b!1272016 m!1169791))

(assert (=> b!1272016 m!1169791))

(declare-fun m!1169799 () Bool)

(assert (=> b!1272016 m!1169799))

(declare-fun m!1169801 () Bool)

(assert (=> b!1272014 m!1169801))

(assert (=> b!1272012 m!1169791))

(assert (=> b!1272012 m!1169791))

(assert (=> b!1272012 m!1169799))

(assert (=> b!1272013 m!1169783))

(assert (=> b!1272009 m!1169791))

(assert (=> b!1272009 m!1169787))

(declare-fun m!1169803 () Bool)

(assert (=> b!1272009 m!1169803))

(declare-fun m!1169805 () Bool)

(assert (=> b!1272009 m!1169805))

(declare-fun m!1169807 () Bool)

(assert (=> b!1272009 m!1169807))

(assert (=> b!1272009 m!1169785))

(assert (=> b!1272009 m!1169785))

(assert (=> b!1272009 m!1169787))

(assert (=> b!1272009 m!1169789))

(assert (=> b!1272009 m!1169803))

(declare-fun m!1169809 () Bool)

(assert (=> b!1272009 m!1169809))

(declare-fun m!1169811 () Bool)

(assert (=> d!139733 m!1169811))

(assert (=> d!139733 m!1169727))

(assert (=> b!1271942 d!139733))

(declare-fun d!139735 () Bool)

(assert (=> d!139735 (= (getCurrentListMapNoExtraKeys!5950 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) (getCurrentListMapNoExtraKeys!5950 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(declare-fun lt!574922 () Unit!42256)

(declare-fun choose!1904 (array!83235 array!83233 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!49221 V!49221 V!49221 V!49221 (_ BitVec 32) Int) Unit!42256)

(assert (=> d!139735 (= lt!574922 (choose!1904 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142))))

(assert (=> d!139735 (validMask!0 mask!1730)))

(assert (=> d!139735 (= (lemmaNoChangeToArrayThenSameMapNoExtras!1246 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 extraKeysAfter!73 zeroValueBefore!52 zeroValueAfter!52 minValueBefore!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) lt!574922)))

(declare-fun bs!36105 () Bool)

(assert (= bs!36105 d!139735))

(assert (=> bs!36105 m!1169747))

(assert (=> bs!36105 m!1169743))

(declare-fun m!1169813 () Bool)

(assert (=> bs!36105 m!1169813))

(assert (=> bs!36105 m!1169727))

(assert (=> b!1271942 d!139735))

(declare-fun b!1272023 () Bool)

(declare-fun lt!574923 () Unit!42256)

(declare-fun lt!574929 () Unit!42256)

(assert (=> b!1272023 (= lt!574923 lt!574929)))

(declare-fun lt!574926 () ListLongMap!19253)

(declare-fun lt!574924 () V!49221)

(declare-fun lt!574928 () (_ BitVec 64))

(declare-fun lt!574927 () (_ BitVec 64))

(assert (=> b!1272023 (not (contains!7682 (+!4242 lt!574926 (tuple2!21513 lt!574927 lt!574924)) lt!574928))))

(assert (=> b!1272023 (= lt!574929 (addStillNotContains!335 lt!574926 lt!574927 lt!574924 lt!574928))))

(assert (=> b!1272023 (= lt!574928 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1272023 (= lt!574924 (get!20544 (select (arr!40149 _values!1134) from!1698) (dynLambda!3485 defaultEntry!1142 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1272023 (= lt!574927 (select (arr!40150 _keys!1364) from!1698))))

(declare-fun call!62518 () ListLongMap!19253)

(assert (=> b!1272023 (= lt!574926 call!62518)))

(declare-fun e!725520 () ListLongMap!19253)

(assert (=> b!1272023 (= e!725520 (+!4242 call!62518 (tuple2!21513 (select (arr!40150 _keys!1364) from!1698) (get!20544 (select (arr!40149 _values!1134) from!1698) (dynLambda!3485 defaultEntry!1142 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1272024 () Bool)

(declare-fun e!725517 () ListLongMap!19253)

(assert (=> b!1272024 (= e!725517 (ListLongMap!19254 Nil!28704))))

(declare-fun b!1272025 () Bool)

(declare-fun e!725515 () Bool)

(declare-fun e!725519 () Bool)

(assert (=> b!1272025 (= e!725515 e!725519)))

(declare-fun c!123593 () Bool)

(declare-fun e!725518 () Bool)

(assert (=> b!1272025 (= c!123593 e!725518)))

(declare-fun res!846286 () Bool)

(assert (=> b!1272025 (=> (not res!846286) (not e!725518))))

(assert (=> b!1272025 (= res!846286 (bvslt from!1698 (size!40687 _keys!1364)))))

(declare-fun b!1272026 () Bool)

(assert (=> b!1272026 (= e!725517 e!725520)))

(declare-fun c!123591 () Bool)

(assert (=> b!1272026 (= c!123591 (validKeyInArray!0 (select (arr!40150 _keys!1364) from!1698)))))

(declare-fun b!1272028 () Bool)

(declare-fun res!846285 () Bool)

(assert (=> b!1272028 (=> (not res!846285) (not e!725515))))

(declare-fun lt!574925 () ListLongMap!19253)

(assert (=> b!1272028 (= res!846285 (not (contains!7682 lt!574925 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1272029 () Bool)

(assert (=> b!1272029 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvslt from!1698 (size!40687 _keys!1364)))))

(assert (=> b!1272029 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvslt from!1698 (size!40686 _values!1134)))))

(declare-fun e!725514 () Bool)

(assert (=> b!1272029 (= e!725514 (= (apply!1040 lt!574925 (select (arr!40150 _keys!1364) from!1698)) (get!20544 (select (arr!40149 _values!1134) from!1698) (dynLambda!3485 defaultEntry!1142 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1272030 () Bool)

(assert (=> b!1272030 (= e!725518 (validKeyInArray!0 (select (arr!40150 _keys!1364) from!1698)))))

(assert (=> b!1272030 (bvsge from!1698 #b00000000000000000000000000000000)))

(declare-fun b!1272031 () Bool)

(declare-fun e!725516 () Bool)

(assert (=> b!1272031 (= e!725516 (isEmpty!1050 lt!574925))))

(declare-fun b!1272032 () Bool)

(assert (=> b!1272032 (= e!725519 e!725516)))

(declare-fun c!123592 () Bool)

(assert (=> b!1272032 (= c!123592 (bvslt from!1698 (size!40687 _keys!1364)))))

(declare-fun b!1272033 () Bool)

(assert (=> b!1272033 (= e!725519 e!725514)))

(assert (=> b!1272033 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvslt from!1698 (size!40687 _keys!1364)))))

(declare-fun res!846288 () Bool)

(assert (=> b!1272033 (= res!846288 (contains!7682 lt!574925 (select (arr!40150 _keys!1364) from!1698)))))

(assert (=> b!1272033 (=> (not res!846288) (not e!725514))))

(declare-fun b!1272027 () Bool)

(assert (=> b!1272027 (= e!725516 (= lt!574925 (getCurrentListMapNoExtraKeys!5950 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd from!1698 #b00000000000000000000000000000001) defaultEntry!1142)))))

(declare-fun d!139737 () Bool)

(assert (=> d!139737 e!725515))

(declare-fun res!846287 () Bool)

(assert (=> d!139737 (=> (not res!846287) (not e!725515))))

(assert (=> d!139737 (= res!846287 (not (contains!7682 lt!574925 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!139737 (= lt!574925 e!725517)))

(declare-fun c!123594 () Bool)

(assert (=> d!139737 (= c!123594 (bvsge from!1698 (size!40687 _keys!1364)))))

(assert (=> d!139737 (validMask!0 mask!1730)))

(assert (=> d!139737 (= (getCurrentListMapNoExtraKeys!5950 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 from!1698 defaultEntry!1142) lt!574925)))

(declare-fun bm!62515 () Bool)

(assert (=> bm!62515 (= call!62518 (getCurrentListMapNoExtraKeys!5950 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd from!1698 #b00000000000000000000000000000001) defaultEntry!1142))))

(declare-fun b!1272034 () Bool)

(assert (=> b!1272034 (= e!725520 call!62518)))

(assert (= (and d!139737 c!123594) b!1272024))

(assert (= (and d!139737 (not c!123594)) b!1272026))

(assert (= (and b!1272026 c!123591) b!1272023))

(assert (= (and b!1272026 (not c!123591)) b!1272034))

(assert (= (or b!1272023 b!1272034) bm!62515))

(assert (= (and d!139737 res!846287) b!1272028))

(assert (= (and b!1272028 res!846285) b!1272025))

(assert (= (and b!1272025 res!846286) b!1272030))

(assert (= (and b!1272025 c!123593) b!1272033))

(assert (= (and b!1272025 (not c!123593)) b!1272032))

(assert (= (and b!1272033 res!846288) b!1272029))

(assert (= (and b!1272032 c!123592) b!1272027))

(assert (= (and b!1272032 (not c!123592)) b!1272031))

(declare-fun b_lambda!23053 () Bool)

(assert (=> (not b_lambda!23053) (not b!1272023)))

(assert (=> b!1272023 t!42247))

(declare-fun b_and!45701 () Bool)

(assert (= b_and!45699 (and (=> t!42247 result!23557) b_and!45701)))

(declare-fun b_lambda!23055 () Bool)

(assert (=> (not b_lambda!23055) (not b!1272029)))

(assert (=> b!1272029 t!42247))

(declare-fun b_and!45703 () Bool)

(assert (= b_and!45701 (and (=> t!42247 result!23557) b_and!45703)))

(declare-fun m!1169815 () Bool)

(assert (=> bm!62515 m!1169815))

(assert (=> b!1272029 m!1169785))

(assert (=> b!1272029 m!1169787))

(assert (=> b!1272029 m!1169789))

(assert (=> b!1272029 m!1169791))

(declare-fun m!1169817 () Bool)

(assert (=> b!1272029 m!1169817))

(assert (=> b!1272029 m!1169791))

(assert (=> b!1272029 m!1169787))

(assert (=> b!1272029 m!1169785))

(declare-fun m!1169819 () Bool)

(assert (=> b!1272031 m!1169819))

(assert (=> b!1272033 m!1169791))

(assert (=> b!1272033 m!1169791))

(declare-fun m!1169821 () Bool)

(assert (=> b!1272033 m!1169821))

(assert (=> b!1272030 m!1169791))

(assert (=> b!1272030 m!1169791))

(assert (=> b!1272030 m!1169799))

(declare-fun m!1169823 () Bool)

(assert (=> b!1272028 m!1169823))

(assert (=> b!1272026 m!1169791))

(assert (=> b!1272026 m!1169791))

(assert (=> b!1272026 m!1169799))

(assert (=> b!1272027 m!1169815))

(assert (=> b!1272023 m!1169791))

(assert (=> b!1272023 m!1169787))

(declare-fun m!1169825 () Bool)

(assert (=> b!1272023 m!1169825))

(declare-fun m!1169827 () Bool)

(assert (=> b!1272023 m!1169827))

(declare-fun m!1169829 () Bool)

(assert (=> b!1272023 m!1169829))

(assert (=> b!1272023 m!1169785))

(assert (=> b!1272023 m!1169785))

(assert (=> b!1272023 m!1169787))

(assert (=> b!1272023 m!1169789))

(assert (=> b!1272023 m!1169825))

(declare-fun m!1169831 () Bool)

(assert (=> b!1272023 m!1169831))

(declare-fun m!1169833 () Bool)

(assert (=> d!139737 m!1169833))

(assert (=> d!139737 m!1169727))

(assert (=> b!1271942 d!139737))

(declare-fun b!1272035 () Bool)

(declare-fun lt!574930 () Unit!42256)

(declare-fun lt!574936 () Unit!42256)

(assert (=> b!1272035 (= lt!574930 lt!574936)))

(declare-fun lt!574935 () (_ BitVec 64))

(declare-fun lt!574933 () ListLongMap!19253)

(declare-fun lt!574934 () (_ BitVec 64))

(declare-fun lt!574931 () V!49221)

(assert (=> b!1272035 (not (contains!7682 (+!4242 lt!574933 (tuple2!21513 lt!574934 lt!574931)) lt!574935))))

(assert (=> b!1272035 (= lt!574936 (addStillNotContains!335 lt!574933 lt!574934 lt!574931 lt!574935))))

(assert (=> b!1272035 (= lt!574935 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1272035 (= lt!574931 (get!20544 (select (arr!40149 _values!1134) (bvadd #b00000000000000000000000000000001 from!1698)) (dynLambda!3485 defaultEntry!1142 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1272035 (= lt!574934 (select (arr!40150 _keys!1364) (bvadd #b00000000000000000000000000000001 from!1698)))))

(declare-fun call!62519 () ListLongMap!19253)

(assert (=> b!1272035 (= lt!574933 call!62519)))

(declare-fun e!725527 () ListLongMap!19253)

(assert (=> b!1272035 (= e!725527 (+!4242 call!62519 (tuple2!21513 (select (arr!40150 _keys!1364) (bvadd #b00000000000000000000000000000001 from!1698)) (get!20544 (select (arr!40149 _values!1134) (bvadd #b00000000000000000000000000000001 from!1698)) (dynLambda!3485 defaultEntry!1142 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1272036 () Bool)

(declare-fun e!725524 () ListLongMap!19253)

(assert (=> b!1272036 (= e!725524 (ListLongMap!19254 Nil!28704))))

(declare-fun b!1272037 () Bool)

(declare-fun e!725522 () Bool)

(declare-fun e!725526 () Bool)

(assert (=> b!1272037 (= e!725522 e!725526)))

(declare-fun c!123597 () Bool)

(declare-fun e!725525 () Bool)

(assert (=> b!1272037 (= c!123597 e!725525)))

(declare-fun res!846290 () Bool)

(assert (=> b!1272037 (=> (not res!846290) (not e!725525))))

(assert (=> b!1272037 (= res!846290 (bvslt (bvadd #b00000000000000000000000000000001 from!1698) (size!40687 _keys!1364)))))

(declare-fun b!1272038 () Bool)

(assert (=> b!1272038 (= e!725524 e!725527)))

(declare-fun c!123595 () Bool)

(assert (=> b!1272038 (= c!123595 (validKeyInArray!0 (select (arr!40150 _keys!1364) (bvadd #b00000000000000000000000000000001 from!1698))))))

(declare-fun b!1272040 () Bool)

(declare-fun res!846289 () Bool)

(assert (=> b!1272040 (=> (not res!846289) (not e!725522))))

(declare-fun lt!574932 () ListLongMap!19253)

(assert (=> b!1272040 (= res!846289 (not (contains!7682 lt!574932 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1272041 () Bool)

(assert (=> b!1272041 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1698) (size!40687 _keys!1364)))))

(assert (=> b!1272041 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1698) (size!40686 _values!1134)))))

(declare-fun e!725521 () Bool)

(assert (=> b!1272041 (= e!725521 (= (apply!1040 lt!574932 (select (arr!40150 _keys!1364) (bvadd #b00000000000000000000000000000001 from!1698))) (get!20544 (select (arr!40149 _values!1134) (bvadd #b00000000000000000000000000000001 from!1698)) (dynLambda!3485 defaultEntry!1142 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1272042 () Bool)

(assert (=> b!1272042 (= e!725525 (validKeyInArray!0 (select (arr!40150 _keys!1364) (bvadd #b00000000000000000000000000000001 from!1698))))))

(assert (=> b!1272042 (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))

(declare-fun b!1272043 () Bool)

(declare-fun e!725523 () Bool)

(assert (=> b!1272043 (= e!725523 (isEmpty!1050 lt!574932))))

(declare-fun b!1272044 () Bool)

(assert (=> b!1272044 (= e!725526 e!725523)))

(declare-fun c!123596 () Bool)

(assert (=> b!1272044 (= c!123596 (bvslt (bvadd #b00000000000000000000000000000001 from!1698) (size!40687 _keys!1364)))))

(declare-fun b!1272045 () Bool)

(assert (=> b!1272045 (= e!725526 e!725521)))

(assert (=> b!1272045 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1698) (size!40687 _keys!1364)))))

(declare-fun res!846292 () Bool)

(assert (=> b!1272045 (= res!846292 (contains!7682 lt!574932 (select (arr!40150 _keys!1364) (bvadd #b00000000000000000000000000000001 from!1698))))))

(assert (=> b!1272045 (=> (not res!846292) (not e!725521))))

(declare-fun b!1272039 () Bool)

(assert (=> b!1272039 (= e!725523 (= lt!574932 (getCurrentListMapNoExtraKeys!5950 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698 #b00000000000000000000000000000001) defaultEntry!1142)))))

(declare-fun d!139739 () Bool)

(assert (=> d!139739 e!725522))

(declare-fun res!846291 () Bool)

(assert (=> d!139739 (=> (not res!846291) (not e!725522))))

(assert (=> d!139739 (= res!846291 (not (contains!7682 lt!574932 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!139739 (= lt!574932 e!725524)))

(declare-fun c!123598 () Bool)

(assert (=> d!139739 (= c!123598 (bvsge (bvadd #b00000000000000000000000000000001 from!1698) (size!40687 _keys!1364)))))

(assert (=> d!139739 (validMask!0 mask!1730)))

(assert (=> d!139739 (= (getCurrentListMapNoExtraKeys!5950 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) lt!574932)))

(declare-fun bm!62516 () Bool)

(assert (=> bm!62516 (= call!62519 (getCurrentListMapNoExtraKeys!5950 _keys!1364 _values!1134 mask!1730 extraKeysBefore!81 zeroValueBefore!52 minValueBefore!52 (bvadd #b00000000000000000000000000000001 from!1698 #b00000000000000000000000000000001) defaultEntry!1142))))

(declare-fun b!1272046 () Bool)

(assert (=> b!1272046 (= e!725527 call!62519)))

(assert (= (and d!139739 c!123598) b!1272036))

(assert (= (and d!139739 (not c!123598)) b!1272038))

(assert (= (and b!1272038 c!123595) b!1272035))

(assert (= (and b!1272038 (not c!123595)) b!1272046))

(assert (= (or b!1272035 b!1272046) bm!62516))

(assert (= (and d!139739 res!846291) b!1272040))

(assert (= (and b!1272040 res!846289) b!1272037))

(assert (= (and b!1272037 res!846290) b!1272042))

(assert (= (and b!1272037 c!123597) b!1272045))

(assert (= (and b!1272037 (not c!123597)) b!1272044))

(assert (= (and b!1272045 res!846292) b!1272041))

(assert (= (and b!1272044 c!123596) b!1272039))

(assert (= (and b!1272044 (not c!123596)) b!1272043))

(declare-fun b_lambda!23057 () Bool)

(assert (=> (not b_lambda!23057) (not b!1272035)))

(assert (=> b!1272035 t!42247))

(declare-fun b_and!45705 () Bool)

(assert (= b_and!45703 (and (=> t!42247 result!23557) b_and!45705)))

(declare-fun b_lambda!23059 () Bool)

(assert (=> (not b_lambda!23059) (not b!1272041)))

(assert (=> b!1272041 t!42247))

(declare-fun b_and!45707 () Bool)

(assert (= b_and!45705 (and (=> t!42247 result!23557) b_and!45707)))

(declare-fun m!1169835 () Bool)

(assert (=> bm!62516 m!1169835))

(declare-fun m!1169837 () Bool)

(assert (=> b!1272041 m!1169837))

(assert (=> b!1272041 m!1169787))

(declare-fun m!1169839 () Bool)

(assert (=> b!1272041 m!1169839))

(declare-fun m!1169841 () Bool)

(assert (=> b!1272041 m!1169841))

(declare-fun m!1169843 () Bool)

(assert (=> b!1272041 m!1169843))

(assert (=> b!1272041 m!1169841))

(assert (=> b!1272041 m!1169787))

(assert (=> b!1272041 m!1169837))

(declare-fun m!1169845 () Bool)

(assert (=> b!1272043 m!1169845))

(assert (=> b!1272045 m!1169841))

(assert (=> b!1272045 m!1169841))

(declare-fun m!1169847 () Bool)

(assert (=> b!1272045 m!1169847))

(assert (=> b!1272042 m!1169841))

(assert (=> b!1272042 m!1169841))

(declare-fun m!1169849 () Bool)

(assert (=> b!1272042 m!1169849))

(declare-fun m!1169851 () Bool)

(assert (=> b!1272040 m!1169851))

(assert (=> b!1272038 m!1169841))

(assert (=> b!1272038 m!1169841))

(assert (=> b!1272038 m!1169849))

(assert (=> b!1272039 m!1169835))

(assert (=> b!1272035 m!1169841))

(assert (=> b!1272035 m!1169787))

(declare-fun m!1169853 () Bool)

(assert (=> b!1272035 m!1169853))

(declare-fun m!1169855 () Bool)

(assert (=> b!1272035 m!1169855))

(declare-fun m!1169857 () Bool)

(assert (=> b!1272035 m!1169857))

(assert (=> b!1272035 m!1169837))

(assert (=> b!1272035 m!1169837))

(assert (=> b!1272035 m!1169787))

(assert (=> b!1272035 m!1169839))

(assert (=> b!1272035 m!1169853))

(declare-fun m!1169859 () Bool)

(assert (=> b!1272035 m!1169859))

(declare-fun m!1169861 () Bool)

(assert (=> d!139739 m!1169861))

(assert (=> d!139739 m!1169727))

(assert (=> b!1271942 d!139739))

(declare-fun b!1272047 () Bool)

(declare-fun lt!574937 () Unit!42256)

(declare-fun lt!574943 () Unit!42256)

(assert (=> b!1272047 (= lt!574937 lt!574943)))

(declare-fun lt!574941 () (_ BitVec 64))

(declare-fun lt!574938 () V!49221)

(declare-fun lt!574940 () ListLongMap!19253)

(declare-fun lt!574942 () (_ BitVec 64))

(assert (=> b!1272047 (not (contains!7682 (+!4242 lt!574940 (tuple2!21513 lt!574941 lt!574938)) lt!574942))))

(assert (=> b!1272047 (= lt!574943 (addStillNotContains!335 lt!574940 lt!574941 lt!574938 lt!574942))))

(assert (=> b!1272047 (= lt!574942 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1272047 (= lt!574938 (get!20544 (select (arr!40149 _values!1134) (bvadd #b00000000000000000000000000000001 from!1698)) (dynLambda!3485 defaultEntry!1142 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1272047 (= lt!574941 (select (arr!40150 _keys!1364) (bvadd #b00000000000000000000000000000001 from!1698)))))

(declare-fun call!62520 () ListLongMap!19253)

(assert (=> b!1272047 (= lt!574940 call!62520)))

(declare-fun e!725534 () ListLongMap!19253)

(assert (=> b!1272047 (= e!725534 (+!4242 call!62520 (tuple2!21513 (select (arr!40150 _keys!1364) (bvadd #b00000000000000000000000000000001 from!1698)) (get!20544 (select (arr!40149 _values!1134) (bvadd #b00000000000000000000000000000001 from!1698)) (dynLambda!3485 defaultEntry!1142 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1272048 () Bool)

(declare-fun e!725531 () ListLongMap!19253)

(assert (=> b!1272048 (= e!725531 (ListLongMap!19254 Nil!28704))))

(declare-fun b!1272049 () Bool)

(declare-fun e!725529 () Bool)

(declare-fun e!725533 () Bool)

(assert (=> b!1272049 (= e!725529 e!725533)))

(declare-fun c!123601 () Bool)

(declare-fun e!725532 () Bool)

(assert (=> b!1272049 (= c!123601 e!725532)))

(declare-fun res!846294 () Bool)

(assert (=> b!1272049 (=> (not res!846294) (not e!725532))))

(assert (=> b!1272049 (= res!846294 (bvslt (bvadd #b00000000000000000000000000000001 from!1698) (size!40687 _keys!1364)))))

(declare-fun b!1272050 () Bool)

(assert (=> b!1272050 (= e!725531 e!725534)))

(declare-fun c!123599 () Bool)

(assert (=> b!1272050 (= c!123599 (validKeyInArray!0 (select (arr!40150 _keys!1364) (bvadd #b00000000000000000000000000000001 from!1698))))))

(declare-fun b!1272052 () Bool)

(declare-fun res!846293 () Bool)

(assert (=> b!1272052 (=> (not res!846293) (not e!725529))))

(declare-fun lt!574939 () ListLongMap!19253)

(assert (=> b!1272052 (= res!846293 (not (contains!7682 lt!574939 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1272053 () Bool)

(assert (=> b!1272053 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1698) (size!40687 _keys!1364)))))

(assert (=> b!1272053 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1698) (size!40686 _values!1134)))))

(declare-fun e!725528 () Bool)

(assert (=> b!1272053 (= e!725528 (= (apply!1040 lt!574939 (select (arr!40150 _keys!1364) (bvadd #b00000000000000000000000000000001 from!1698))) (get!20544 (select (arr!40149 _values!1134) (bvadd #b00000000000000000000000000000001 from!1698)) (dynLambda!3485 defaultEntry!1142 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1272054 () Bool)

(assert (=> b!1272054 (= e!725532 (validKeyInArray!0 (select (arr!40150 _keys!1364) (bvadd #b00000000000000000000000000000001 from!1698))))))

(assert (=> b!1272054 (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))

(declare-fun b!1272055 () Bool)

(declare-fun e!725530 () Bool)

(assert (=> b!1272055 (= e!725530 (isEmpty!1050 lt!574939))))

(declare-fun b!1272056 () Bool)

(assert (=> b!1272056 (= e!725533 e!725530)))

(declare-fun c!123600 () Bool)

(assert (=> b!1272056 (= c!123600 (bvslt (bvadd #b00000000000000000000000000000001 from!1698) (size!40687 _keys!1364)))))

(declare-fun b!1272057 () Bool)

(assert (=> b!1272057 (= e!725533 e!725528)))

(assert (=> b!1272057 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1698) (size!40687 _keys!1364)))))

(declare-fun res!846296 () Bool)

(assert (=> b!1272057 (= res!846296 (contains!7682 lt!574939 (select (arr!40150 _keys!1364) (bvadd #b00000000000000000000000000000001 from!1698))))))

(assert (=> b!1272057 (=> (not res!846296) (not e!725528))))

(declare-fun b!1272051 () Bool)

(assert (=> b!1272051 (= e!725530 (= lt!574939 (getCurrentListMapNoExtraKeys!5950 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698 #b00000000000000000000000000000001) defaultEntry!1142)))))

(declare-fun d!139741 () Bool)

(assert (=> d!139741 e!725529))

(declare-fun res!846295 () Bool)

(assert (=> d!139741 (=> (not res!846295) (not e!725529))))

(assert (=> d!139741 (= res!846295 (not (contains!7682 lt!574939 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!139741 (= lt!574939 e!725531)))

(declare-fun c!123602 () Bool)

(assert (=> d!139741 (= c!123602 (bvsge (bvadd #b00000000000000000000000000000001 from!1698) (size!40687 _keys!1364)))))

(assert (=> d!139741 (validMask!0 mask!1730)))

(assert (=> d!139741 (= (getCurrentListMapNoExtraKeys!5950 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698) defaultEntry!1142) lt!574939)))

(declare-fun bm!62517 () Bool)

(assert (=> bm!62517 (= call!62520 (getCurrentListMapNoExtraKeys!5950 _keys!1364 _values!1134 mask!1730 extraKeysAfter!73 zeroValueAfter!52 minValueAfter!52 (bvadd #b00000000000000000000000000000001 from!1698 #b00000000000000000000000000000001) defaultEntry!1142))))

(declare-fun b!1272058 () Bool)

(assert (=> b!1272058 (= e!725534 call!62520)))

(assert (= (and d!139741 c!123602) b!1272048))

(assert (= (and d!139741 (not c!123602)) b!1272050))

(assert (= (and b!1272050 c!123599) b!1272047))

(assert (= (and b!1272050 (not c!123599)) b!1272058))

(assert (= (or b!1272047 b!1272058) bm!62517))

(assert (= (and d!139741 res!846295) b!1272052))

(assert (= (and b!1272052 res!846293) b!1272049))

(assert (= (and b!1272049 res!846294) b!1272054))

(assert (= (and b!1272049 c!123601) b!1272057))

(assert (= (and b!1272049 (not c!123601)) b!1272056))

(assert (= (and b!1272057 res!846296) b!1272053))

(assert (= (and b!1272056 c!123600) b!1272051))

(assert (= (and b!1272056 (not c!123600)) b!1272055))

(declare-fun b_lambda!23061 () Bool)

(assert (=> (not b_lambda!23061) (not b!1272047)))

(assert (=> b!1272047 t!42247))

(declare-fun b_and!45709 () Bool)

(assert (= b_and!45707 (and (=> t!42247 result!23557) b_and!45709)))

(declare-fun b_lambda!23063 () Bool)

(assert (=> (not b_lambda!23063) (not b!1272053)))

(assert (=> b!1272053 t!42247))

(declare-fun b_and!45711 () Bool)

(assert (= b_and!45709 (and (=> t!42247 result!23557) b_and!45711)))

(declare-fun m!1169863 () Bool)

(assert (=> bm!62517 m!1169863))

(assert (=> b!1272053 m!1169837))

(assert (=> b!1272053 m!1169787))

(assert (=> b!1272053 m!1169839))

(assert (=> b!1272053 m!1169841))

(declare-fun m!1169865 () Bool)

(assert (=> b!1272053 m!1169865))

(assert (=> b!1272053 m!1169841))

(assert (=> b!1272053 m!1169787))

(assert (=> b!1272053 m!1169837))

(declare-fun m!1169867 () Bool)

(assert (=> b!1272055 m!1169867))

(assert (=> b!1272057 m!1169841))

(assert (=> b!1272057 m!1169841))

(declare-fun m!1169869 () Bool)

(assert (=> b!1272057 m!1169869))

(assert (=> b!1272054 m!1169841))

(assert (=> b!1272054 m!1169841))

(assert (=> b!1272054 m!1169849))

(declare-fun m!1169871 () Bool)

(assert (=> b!1272052 m!1169871))

(assert (=> b!1272050 m!1169841))

(assert (=> b!1272050 m!1169841))

(assert (=> b!1272050 m!1169849))

(assert (=> b!1272051 m!1169863))

(assert (=> b!1272047 m!1169841))

(assert (=> b!1272047 m!1169787))

(declare-fun m!1169873 () Bool)

(assert (=> b!1272047 m!1169873))

(declare-fun m!1169875 () Bool)

(assert (=> b!1272047 m!1169875))

(declare-fun m!1169877 () Bool)

(assert (=> b!1272047 m!1169877))

(assert (=> b!1272047 m!1169837))

(assert (=> b!1272047 m!1169837))

(assert (=> b!1272047 m!1169787))

(assert (=> b!1272047 m!1169839))

(assert (=> b!1272047 m!1169873))

(declare-fun m!1169879 () Bool)

(assert (=> b!1272047 m!1169879))

(declare-fun m!1169881 () Bool)

(assert (=> d!139741 m!1169881))

(assert (=> d!139741 m!1169727))

(assert (=> b!1271942 d!139741))

(declare-fun b!1272069 () Bool)

(declare-fun e!725546 () Bool)

(declare-fun call!62523 () Bool)

(assert (=> b!1272069 (= e!725546 call!62523)))

(declare-fun bm!62520 () Bool)

(declare-fun c!123605 () Bool)

(assert (=> bm!62520 (= call!62523 (arrayNoDuplicates!0 _keys!1364 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!123605 (Cons!28704 (select (arr!40150 _keys!1364) #b00000000000000000000000000000000) Nil!28705) Nil!28705)))))

(declare-fun b!1272070 () Bool)

(declare-fun e!725545 () Bool)

(declare-fun e!725544 () Bool)

(assert (=> b!1272070 (= e!725545 e!725544)))

(declare-fun res!846304 () Bool)

(assert (=> b!1272070 (=> (not res!846304) (not e!725544))))

(declare-fun e!725543 () Bool)

(assert (=> b!1272070 (= res!846304 (not e!725543))))

(declare-fun res!846305 () Bool)

(assert (=> b!1272070 (=> (not res!846305) (not e!725543))))

(assert (=> b!1272070 (= res!846305 (validKeyInArray!0 (select (arr!40150 _keys!1364) #b00000000000000000000000000000000)))))

(declare-fun b!1272071 () Bool)

(assert (=> b!1272071 (= e!725546 call!62523)))

(declare-fun b!1272072 () Bool)

(assert (=> b!1272072 (= e!725544 e!725546)))

(assert (=> b!1272072 (= c!123605 (validKeyInArray!0 (select (arr!40150 _keys!1364) #b00000000000000000000000000000000)))))

(declare-fun b!1272073 () Bool)

(declare-fun contains!7683 (List!28708 (_ BitVec 64)) Bool)

(assert (=> b!1272073 (= e!725543 (contains!7683 Nil!28705 (select (arr!40150 _keys!1364) #b00000000000000000000000000000000)))))

(declare-fun d!139743 () Bool)

(declare-fun res!846303 () Bool)

(assert (=> d!139743 (=> res!846303 e!725545)))

(assert (=> d!139743 (= res!846303 (bvsge #b00000000000000000000000000000000 (size!40687 _keys!1364)))))

(assert (=> d!139743 (= (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28705) e!725545)))

(assert (= (and d!139743 (not res!846303)) b!1272070))

(assert (= (and b!1272070 res!846305) b!1272073))

(assert (= (and b!1272070 res!846304) b!1272072))

(assert (= (and b!1272072 c!123605) b!1272069))

(assert (= (and b!1272072 (not c!123605)) b!1272071))

(assert (= (or b!1272069 b!1272071) bm!62520))

(assert (=> bm!62520 m!1169771))

(declare-fun m!1169883 () Bool)

(assert (=> bm!62520 m!1169883))

(assert (=> b!1272070 m!1169771))

(assert (=> b!1272070 m!1169771))

(assert (=> b!1272070 m!1169779))

(assert (=> b!1272072 m!1169771))

(assert (=> b!1272072 m!1169771))

(assert (=> b!1272072 m!1169779))

(assert (=> b!1272073 m!1169771))

(assert (=> b!1272073 m!1169771))

(declare-fun m!1169885 () Bool)

(assert (=> b!1272073 m!1169885))

(assert (=> b!1271943 d!139743))

(declare-fun mapNonEmpty!51118 () Bool)

(declare-fun mapRes!51118 () Bool)

(declare-fun tp!97469 () Bool)

(declare-fun e!725552 () Bool)

(assert (=> mapNonEmpty!51118 (= mapRes!51118 (and tp!97469 e!725552))))

(declare-fun mapKey!51118 () (_ BitVec 32))

(declare-fun mapValue!51118 () ValueCell!15657)

(declare-fun mapRest!51118 () (Array (_ BitVec 32) ValueCell!15657))

(assert (=> mapNonEmpty!51118 (= mapRest!51112 (store mapRest!51118 mapKey!51118 mapValue!51118))))

(declare-fun b!1272081 () Bool)

(declare-fun e!725551 () Bool)

(assert (=> b!1272081 (= e!725551 tp_is_empty!33021)))

(declare-fun b!1272080 () Bool)

(assert (=> b!1272080 (= e!725552 tp_is_empty!33021)))

(declare-fun condMapEmpty!51118 () Bool)

(declare-fun mapDefault!51118 () ValueCell!15657)

(assert (=> mapNonEmpty!51112 (= condMapEmpty!51118 (= mapRest!51112 ((as const (Array (_ BitVec 32) ValueCell!15657)) mapDefault!51118)))))

(assert (=> mapNonEmpty!51112 (= tp!97460 (and e!725551 mapRes!51118))))

(declare-fun mapIsEmpty!51118 () Bool)

(assert (=> mapIsEmpty!51118 mapRes!51118))

(assert (= (and mapNonEmpty!51112 condMapEmpty!51118) mapIsEmpty!51118))

(assert (= (and mapNonEmpty!51112 (not condMapEmpty!51118)) mapNonEmpty!51118))

(assert (= (and mapNonEmpty!51118 ((_ is ValueCellFull!15657) mapValue!51118)) b!1272080))

(assert (= (and mapNonEmpty!51112 ((_ is ValueCellFull!15657) mapDefault!51118)) b!1272081))

(declare-fun m!1169887 () Bool)

(assert (=> mapNonEmpty!51118 m!1169887))

(declare-fun b_lambda!23065 () Bool)

(assert (= b_lambda!23051 (or (and start!107368 b_free!27651) b_lambda!23065)))

(declare-fun b_lambda!23067 () Bool)

(assert (= b_lambda!23063 (or (and start!107368 b_free!27651) b_lambda!23067)))

(declare-fun b_lambda!23069 () Bool)

(assert (= b_lambda!23053 (or (and start!107368 b_free!27651) b_lambda!23069)))

(declare-fun b_lambda!23071 () Bool)

(assert (= b_lambda!23061 (or (and start!107368 b_free!27651) b_lambda!23071)))

(declare-fun b_lambda!23073 () Bool)

(assert (= b_lambda!23055 (or (and start!107368 b_free!27651) b_lambda!23073)))

(declare-fun b_lambda!23075 () Bool)

(assert (= b_lambda!23049 (or (and start!107368 b_free!27651) b_lambda!23075)))

(declare-fun b_lambda!23077 () Bool)

(assert (= b_lambda!23059 (or (and start!107368 b_free!27651) b_lambda!23077)))

(declare-fun b_lambda!23079 () Bool)

(assert (= b_lambda!23057 (or (and start!107368 b_free!27651) b_lambda!23079)))

(check-sat (not b!1272040) (not b_lambda!23067) (not b!1272047) (not b_next!27651) (not b!1272033) (not b!1272072) (not d!139739) (not b!1272070) (not b!1272035) (not b!1272012) (not d!139737) (not b!1272039) (not b_lambda!23071) (not b!1272041) (not b!1272026) (not d!139733) (not b!1271983) (not b!1272009) (not bm!62517) (not b!1271982) (not b!1272052) (not mapNonEmpty!51118) (not b!1272053) tp_is_empty!33021 (not bm!62514) (not bm!62520) b_and!45711 (not b!1272016) (not b!1272019) (not b!1272043) (not b!1272029) (not b!1272028) (not b!1272027) (not b!1272015) (not b!1272042) (not b!1272051) (not b!1272055) (not bm!62516) (not b!1272023) (not b!1272014) (not b!1272030) (not b!1272057) (not b_lambda!23079) (not b!1272054) (not d!139735) (not b_lambda!23075) (not d!139741) (not b!1272073) (not bm!62515) (not b_lambda!23073) (not b_lambda!23065) (not b!1272050) (not b_lambda!23069) (not b!1272017) (not b!1272038) (not b_lambda!23077) (not b!1272045) (not bm!62511) (not b!1272013) (not b!1272031))
(check-sat b_and!45711 (not b_next!27651))
