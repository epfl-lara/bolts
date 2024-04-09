; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77790 () Bool)

(assert start!77790)

(declare-fun b_free!16347 () Bool)

(declare-fun b_next!16347 () Bool)

(assert (=> start!77790 (= b_free!16347 (not b_next!16347))))

(declare-fun tp!57304 () Bool)

(declare-fun b_and!26865 () Bool)

(assert (=> start!77790 (= tp!57304 b_and!26865)))

(declare-fun b!907474 () Bool)

(declare-fun res!612608 () Bool)

(declare-fun e!508609 () Bool)

(assert (=> b!907474 (=> (not res!612608) (not e!508609))))

(declare-datatypes ((array!53556 0))(
  ( (array!53557 (arr!25733 (Array (_ BitVec 32) (_ BitVec 64))) (size!26193 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53556)

(declare-datatypes ((List!18170 0))(
  ( (Nil!18167) (Cons!18166 (h!19312 (_ BitVec 64)) (t!25697 List!18170)) )
))
(declare-fun arrayNoDuplicates!0 (array!53556 (_ BitVec 32) List!18170) Bool)

(assert (=> b!907474 (= res!612608 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18167))))

(declare-fun b!907475 () Bool)

(declare-fun res!612605 () Bool)

(assert (=> b!907475 (=> (not res!612605) (not e!508609))))

(declare-datatypes ((V!29985 0))(
  ( (V!29986 (val!9433 Int)) )
))
(declare-datatypes ((ValueCell!8901 0))(
  ( (ValueCellFull!8901 (v!11938 V!29985)) (EmptyCell!8901) )
))
(declare-datatypes ((array!53558 0))(
  ( (array!53559 (arr!25734 (Array (_ BitVec 32) ValueCell!8901)) (size!26194 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53558)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(assert (=> b!907475 (= res!612605 (and (= (size!26194 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26193 _keys!1386) (size!26194 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!907476 () Bool)

(declare-fun e!508607 () Bool)

(declare-fun e!508611 () Bool)

(assert (=> b!907476 (= e!508607 e!508611)))

(declare-fun res!612610 () Bool)

(assert (=> b!907476 (=> res!612610 e!508611)))

(declare-datatypes ((tuple2!12310 0))(
  ( (tuple2!12311 (_1!6165 (_ BitVec 64)) (_2!6165 V!29985)) )
))
(declare-datatypes ((List!18171 0))(
  ( (Nil!18168) (Cons!18167 (h!19313 tuple2!12310) (t!25698 List!18171)) )
))
(declare-datatypes ((ListLongMap!11021 0))(
  ( (ListLongMap!11022 (toList!5526 List!18171)) )
))
(declare-fun lt!409297 () ListLongMap!11021)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun contains!4534 (ListLongMap!11021 (_ BitVec 64)) Bool)

(assert (=> b!907476 (= res!612610 (not (contains!4534 lt!409297 k0!1033)))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29985)

(declare-fun minValue!1094 () V!29985)

(declare-fun i!717 () (_ BitVec 32))

(declare-fun getCurrentListMap!2758 (array!53556 array!53558 (_ BitVec 32) (_ BitVec 32) V!29985 V!29985 (_ BitVec 32) Int) ListLongMap!11021)

(assert (=> b!907476 (= lt!409297 (getCurrentListMap!2758 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!907477 () Bool)

(declare-fun e!508610 () Bool)

(declare-fun tp_is_empty!18765 () Bool)

(assert (=> b!907477 (= e!508610 tp_is_empty!18765)))

(declare-fun b!907478 () Bool)

(declare-fun e!508612 () Bool)

(assert (=> b!907478 (= e!508612 (not e!508607))))

(declare-fun res!612612 () Bool)

(assert (=> b!907478 (=> res!612612 e!508607)))

(assert (=> b!907478 (= res!612612 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26193 _keys!1386))))))

(declare-fun lt!409299 () V!29985)

(declare-fun get!13555 (ValueCell!8901 V!29985) V!29985)

(declare-fun dynLambda!1373 (Int (_ BitVec 64)) V!29985)

(assert (=> b!907478 (= lt!409299 (get!13555 (select (arr!25734 _values!1152) i!717) (dynLambda!1373 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53556 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!907478 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30779 0))(
  ( (Unit!30780) )
))
(declare-fun lt!409300 () Unit!30779)

(declare-fun lemmaKeyInListMapIsInArray!246 (array!53556 array!53558 (_ BitVec 32) (_ BitVec 32) V!29985 V!29985 (_ BitVec 64) Int) Unit!30779)

(assert (=> b!907478 (= lt!409300 (lemmaKeyInListMapIsInArray!246 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!907479 () Bool)

(declare-fun res!612609 () Bool)

(assert (=> b!907479 (=> res!612609 e!508611)))

(declare-fun apply!502 (ListLongMap!11021 (_ BitVec 64)) V!29985)

(assert (=> b!907479 (= res!612609 (not (= (apply!502 lt!409297 k0!1033) lt!409299)))))

(declare-fun b!907480 () Bool)

(declare-fun e!508608 () Bool)

(assert (=> b!907480 (= e!508608 tp_is_empty!18765)))

(declare-fun mapIsEmpty!29860 () Bool)

(declare-fun mapRes!29860 () Bool)

(assert (=> mapIsEmpty!29860 mapRes!29860))

(declare-fun b!907481 () Bool)

(declare-fun res!612607 () Bool)

(assert (=> b!907481 (=> (not res!612607) (not e!508612))))

(assert (=> b!907481 (= res!612607 (and (= (select (arr!25733 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!907482 () Bool)

(declare-fun e!508606 () Bool)

(assert (=> b!907482 (= e!508606 (and e!508608 mapRes!29860))))

(declare-fun condMapEmpty!29860 () Bool)

(declare-fun mapDefault!29860 () ValueCell!8901)

(assert (=> b!907482 (= condMapEmpty!29860 (= (arr!25734 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8901)) mapDefault!29860)))))

(declare-fun b!907483 () Bool)

(declare-fun res!612606 () Bool)

(assert (=> b!907483 (=> (not res!612606) (not e!508612))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!907483 (= res!612606 (inRange!0 i!717 mask!1756))))

(declare-fun res!612603 () Bool)

(assert (=> start!77790 (=> (not res!612603) (not e!508609))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77790 (= res!612603 (validMask!0 mask!1756))))

(assert (=> start!77790 e!508609))

(declare-fun array_inv!20126 (array!53558) Bool)

(assert (=> start!77790 (and (array_inv!20126 _values!1152) e!508606)))

(assert (=> start!77790 tp!57304))

(assert (=> start!77790 true))

(assert (=> start!77790 tp_is_empty!18765))

(declare-fun array_inv!20127 (array!53556) Bool)

(assert (=> start!77790 (array_inv!20127 _keys!1386)))

(declare-fun b!907484 () Bool)

(assert (=> b!907484 (= e!508611 (or (bvsge #b00000000000000000000000000000000 (size!26193 _keys!1386)) (bvslt (size!26193 _keys!1386) #b01111111111111111111111111111111)))))

(declare-fun lt!409298 () ListLongMap!11021)

(assert (=> b!907484 (= (apply!502 lt!409298 k0!1033) lt!409299)))

(declare-fun lt!409301 () Unit!30779)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!48 (array!53556 array!53558 (_ BitVec 32) (_ BitVec 32) V!29985 V!29985 (_ BitVec 64) V!29985 (_ BitVec 32) Int) Unit!30779)

(assert (=> b!907484 (= lt!409301 (lemmaListMapApplyFromThenApplyFromZero!48 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!409299 i!717 defaultEntry!1160))))

(declare-fun b!907485 () Bool)

(assert (=> b!907485 (= e!508609 e!508612)))

(declare-fun res!612604 () Bool)

(assert (=> b!907485 (=> (not res!612604) (not e!508612))))

(assert (=> b!907485 (= res!612604 (contains!4534 lt!409298 k0!1033))))

(assert (=> b!907485 (= lt!409298 (getCurrentListMap!2758 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun mapNonEmpty!29860 () Bool)

(declare-fun tp!57303 () Bool)

(assert (=> mapNonEmpty!29860 (= mapRes!29860 (and tp!57303 e!508610))))

(declare-fun mapRest!29860 () (Array (_ BitVec 32) ValueCell!8901))

(declare-fun mapValue!29860 () ValueCell!8901)

(declare-fun mapKey!29860 () (_ BitVec 32))

(assert (=> mapNonEmpty!29860 (= (arr!25734 _values!1152) (store mapRest!29860 mapKey!29860 mapValue!29860))))

(declare-fun b!907486 () Bool)

(declare-fun res!612611 () Bool)

(assert (=> b!907486 (=> (not res!612611) (not e!508609))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53556 (_ BitVec 32)) Bool)

(assert (=> b!907486 (= res!612611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(assert (= (and start!77790 res!612603) b!907475))

(assert (= (and b!907475 res!612605) b!907486))

(assert (= (and b!907486 res!612611) b!907474))

(assert (= (and b!907474 res!612608) b!907485))

(assert (= (and b!907485 res!612604) b!907483))

(assert (= (and b!907483 res!612606) b!907481))

(assert (= (and b!907481 res!612607) b!907478))

(assert (= (and b!907478 (not res!612612)) b!907476))

(assert (= (and b!907476 (not res!612610)) b!907479))

(assert (= (and b!907479 (not res!612609)) b!907484))

(assert (= (and b!907482 condMapEmpty!29860) mapIsEmpty!29860))

(assert (= (and b!907482 (not condMapEmpty!29860)) mapNonEmpty!29860))

(get-info :version)

(assert (= (and mapNonEmpty!29860 ((_ is ValueCellFull!8901) mapValue!29860)) b!907477))

(assert (= (and b!907482 ((_ is ValueCellFull!8901) mapDefault!29860)) b!907480))

(assert (= start!77790 b!907482))

(declare-fun b_lambda!13251 () Bool)

(assert (=> (not b_lambda!13251) (not b!907478)))

(declare-fun t!25696 () Bool)

(declare-fun tb!5377 () Bool)

(assert (=> (and start!77790 (= defaultEntry!1160 defaultEntry!1160) t!25696) tb!5377))

(declare-fun result!10541 () Bool)

(assert (=> tb!5377 (= result!10541 tp_is_empty!18765)))

(assert (=> b!907478 t!25696))

(declare-fun b_and!26867 () Bool)

(assert (= b_and!26865 (and (=> t!25696 result!10541) b_and!26867)))

(declare-fun m!842931 () Bool)

(assert (=> b!907481 m!842931))

(declare-fun m!842933 () Bool)

(assert (=> b!907486 m!842933))

(declare-fun m!842935 () Bool)

(assert (=> start!77790 m!842935))

(declare-fun m!842937 () Bool)

(assert (=> start!77790 m!842937))

(declare-fun m!842939 () Bool)

(assert (=> start!77790 m!842939))

(declare-fun m!842941 () Bool)

(assert (=> b!907485 m!842941))

(declare-fun m!842943 () Bool)

(assert (=> b!907485 m!842943))

(declare-fun m!842945 () Bool)

(assert (=> mapNonEmpty!29860 m!842945))

(declare-fun m!842947 () Bool)

(assert (=> b!907484 m!842947))

(declare-fun m!842949 () Bool)

(assert (=> b!907484 m!842949))

(declare-fun m!842951 () Bool)

(assert (=> b!907474 m!842951))

(declare-fun m!842953 () Bool)

(assert (=> b!907483 m!842953))

(declare-fun m!842955 () Bool)

(assert (=> b!907478 m!842955))

(declare-fun m!842957 () Bool)

(assert (=> b!907478 m!842957))

(declare-fun m!842959 () Bool)

(assert (=> b!907478 m!842959))

(declare-fun m!842961 () Bool)

(assert (=> b!907478 m!842961))

(assert (=> b!907478 m!842955))

(assert (=> b!907478 m!842959))

(declare-fun m!842963 () Bool)

(assert (=> b!907478 m!842963))

(declare-fun m!842965 () Bool)

(assert (=> b!907476 m!842965))

(declare-fun m!842967 () Bool)

(assert (=> b!907476 m!842967))

(declare-fun m!842969 () Bool)

(assert (=> b!907479 m!842969))

(check-sat (not b!907483) (not b!907484) (not b!907474) (not b!907476) (not b!907485) (not mapNonEmpty!29860) (not start!77790) (not b_next!16347) tp_is_empty!18765 (not b!907486) (not b_lambda!13251) b_and!26867 (not b!907478) (not b!907479))
(check-sat b_and!26867 (not b_next!16347))
(get-model)

(declare-fun b_lambda!13255 () Bool)

(assert (= b_lambda!13251 (or (and start!77790 b_free!16347) b_lambda!13255)))

(check-sat (not b!907483) b_and!26867 (not b_lambda!13255) (not b!907484) (not b!907474) (not b!907476) (not b!907485) (not mapNonEmpty!29860) (not start!77790) (not b_next!16347) tp_is_empty!18765 (not b!907486) (not b!907478) (not b!907479))
(check-sat b_and!26867 (not b_next!16347))
(get-model)

(declare-fun d!112011 () Bool)

(declare-datatypes ((Option!478 0))(
  ( (Some!477 (v!11941 V!29985)) (None!476) )
))
(declare-fun get!13557 (Option!478) V!29985)

(declare-fun getValueByKey!472 (List!18171 (_ BitVec 64)) Option!478)

(assert (=> d!112011 (= (apply!502 lt!409298 k0!1033) (get!13557 (getValueByKey!472 (toList!5526 lt!409298) k0!1033)))))

(declare-fun bs!25483 () Bool)

(assert (= bs!25483 d!112011))

(declare-fun m!843011 () Bool)

(assert (=> bs!25483 m!843011))

(assert (=> bs!25483 m!843011))

(declare-fun m!843013 () Bool)

(assert (=> bs!25483 m!843013))

(assert (=> b!907484 d!112011))

(declare-fun d!112013 () Bool)

(declare-fun e!508640 () Bool)

(assert (=> d!112013 e!508640))

(declare-fun res!612645 () Bool)

(assert (=> d!112013 (=> (not res!612645) (not e!508640))))

(assert (=> d!112013 (= res!612645 (contains!4534 (getCurrentListMap!2758 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun lt!409319 () Unit!30779)

(declare-fun choose!1535 (array!53556 array!53558 (_ BitVec 32) (_ BitVec 32) V!29985 V!29985 (_ BitVec 64) V!29985 (_ BitVec 32) Int) Unit!30779)

(assert (=> d!112013 (= lt!409319 (choose!1535 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!409299 i!717 defaultEntry!1160))))

(assert (=> d!112013 (validMask!0 mask!1756)))

(assert (=> d!112013 (= (lemmaListMapApplyFromThenApplyFromZero!48 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!409299 i!717 defaultEntry!1160) lt!409319)))

(declare-fun b!907532 () Bool)

(assert (=> b!907532 (= e!508640 (= (apply!502 (getCurrentListMap!2758 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033) lt!409299))))

(assert (= (and d!112013 res!612645) b!907532))

(assert (=> d!112013 m!842943))

(assert (=> d!112013 m!842943))

(declare-fun m!843015 () Bool)

(assert (=> d!112013 m!843015))

(declare-fun m!843017 () Bool)

(assert (=> d!112013 m!843017))

(assert (=> d!112013 m!842935))

(assert (=> b!907532 m!842943))

(assert (=> b!907532 m!842943))

(declare-fun m!843019 () Bool)

(assert (=> b!907532 m!843019))

(assert (=> b!907484 d!112013))

(declare-fun d!112015 () Bool)

(assert (=> d!112015 (= (apply!502 lt!409297 k0!1033) (get!13557 (getValueByKey!472 (toList!5526 lt!409297) k0!1033)))))

(declare-fun bs!25484 () Bool)

(assert (= bs!25484 d!112015))

(declare-fun m!843021 () Bool)

(assert (=> bs!25484 m!843021))

(assert (=> bs!25484 m!843021))

(declare-fun m!843023 () Bool)

(assert (=> bs!25484 m!843023))

(assert (=> b!907479 d!112015))

(declare-fun b!907543 () Bool)

(declare-fun e!508651 () Bool)

(declare-fun call!40255 () Bool)

(assert (=> b!907543 (= e!508651 call!40255)))

(declare-fun b!907544 () Bool)

(declare-fun e!508650 () Bool)

(assert (=> b!907544 (= e!508650 e!508651)))

(declare-fun c!95569 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!907544 (= c!95569 (validKeyInArray!0 (select (arr!25733 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun d!112017 () Bool)

(declare-fun res!612652 () Bool)

(declare-fun e!508649 () Bool)

(assert (=> d!112017 (=> res!612652 e!508649)))

(assert (=> d!112017 (= res!612652 (bvsge #b00000000000000000000000000000000 (size!26193 _keys!1386)))))

(assert (=> d!112017 (= (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18167) e!508649)))

(declare-fun b!907545 () Bool)

(assert (=> b!907545 (= e!508651 call!40255)))

(declare-fun bm!40252 () Bool)

(assert (=> bm!40252 (= call!40255 (arrayNoDuplicates!0 _keys!1386 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!95569 (Cons!18166 (select (arr!25733 _keys!1386) #b00000000000000000000000000000000) Nil!18167) Nil!18167)))))

(declare-fun b!907546 () Bool)

(assert (=> b!907546 (= e!508649 e!508650)))

(declare-fun res!612654 () Bool)

(assert (=> b!907546 (=> (not res!612654) (not e!508650))))

(declare-fun e!508652 () Bool)

(assert (=> b!907546 (= res!612654 (not e!508652))))

(declare-fun res!612653 () Bool)

(assert (=> b!907546 (=> (not res!612653) (not e!508652))))

(assert (=> b!907546 (= res!612653 (validKeyInArray!0 (select (arr!25733 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!907547 () Bool)

(declare-fun contains!4536 (List!18170 (_ BitVec 64)) Bool)

(assert (=> b!907547 (= e!508652 (contains!4536 Nil!18167 (select (arr!25733 _keys!1386) #b00000000000000000000000000000000)))))

(assert (= (and d!112017 (not res!612652)) b!907546))

(assert (= (and b!907546 res!612653) b!907547))

(assert (= (and b!907546 res!612654) b!907544))

(assert (= (and b!907544 c!95569) b!907543))

(assert (= (and b!907544 (not c!95569)) b!907545))

(assert (= (or b!907543 b!907545) bm!40252))

(declare-fun m!843025 () Bool)

(assert (=> b!907544 m!843025))

(assert (=> b!907544 m!843025))

(declare-fun m!843027 () Bool)

(assert (=> b!907544 m!843027))

(assert (=> bm!40252 m!843025))

(declare-fun m!843029 () Bool)

(assert (=> bm!40252 m!843029))

(assert (=> b!907546 m!843025))

(assert (=> b!907546 m!843025))

(assert (=> b!907546 m!843027))

(assert (=> b!907547 m!843025))

(assert (=> b!907547 m!843025))

(declare-fun m!843031 () Bool)

(assert (=> b!907547 m!843031))

(assert (=> b!907474 d!112017))

(declare-fun d!112019 () Bool)

(assert (=> d!112019 (= (inRange!0 i!717 mask!1756) (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (bvadd mask!1756 #b00000000000000000000000000000001))))))

(assert (=> b!907483 d!112019))

(declare-fun d!112021 () Bool)

(declare-fun c!95572 () Bool)

(assert (=> d!112021 (= c!95572 ((_ is ValueCellFull!8901) (select (arr!25734 _values!1152) i!717)))))

(declare-fun e!508655 () V!29985)

(assert (=> d!112021 (= (get!13555 (select (arr!25734 _values!1152) i!717) (dynLambda!1373 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)) e!508655)))

(declare-fun b!907552 () Bool)

(declare-fun get!13558 (ValueCell!8901 V!29985) V!29985)

(assert (=> b!907552 (= e!508655 (get!13558 (select (arr!25734 _values!1152) i!717) (dynLambda!1373 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!907553 () Bool)

(declare-fun get!13559 (ValueCell!8901 V!29985) V!29985)

(assert (=> b!907553 (= e!508655 (get!13559 (select (arr!25734 _values!1152) i!717) (dynLambda!1373 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!112021 c!95572) b!907552))

(assert (= (and d!112021 (not c!95572)) b!907553))

(assert (=> b!907552 m!842955))

(assert (=> b!907552 m!842959))

(declare-fun m!843033 () Bool)

(assert (=> b!907552 m!843033))

(assert (=> b!907553 m!842955))

(assert (=> b!907553 m!842959))

(declare-fun m!843035 () Bool)

(assert (=> b!907553 m!843035))

(assert (=> b!907478 d!112021))

(declare-fun d!112023 () Bool)

(declare-fun res!612659 () Bool)

(declare-fun e!508660 () Bool)

(assert (=> d!112023 (=> res!612659 e!508660)))

(assert (=> d!112023 (= res!612659 (= (select (arr!25733 _keys!1386) #b00000000000000000000000000000000) k0!1033))))

(assert (=> d!112023 (= (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000) e!508660)))

(declare-fun b!907558 () Bool)

(declare-fun e!508661 () Bool)

(assert (=> b!907558 (= e!508660 e!508661)))

(declare-fun res!612660 () Bool)

(assert (=> b!907558 (=> (not res!612660) (not e!508661))))

(assert (=> b!907558 (= res!612660 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!26193 _keys!1386)))))

(declare-fun b!907559 () Bool)

(assert (=> b!907559 (= e!508661 (arrayContainsKey!0 _keys!1386 k0!1033 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!112023 (not res!612659)) b!907558))

(assert (= (and b!907558 res!612660) b!907559))

(assert (=> d!112023 m!843025))

(declare-fun m!843037 () Bool)

(assert (=> b!907559 m!843037))

(assert (=> b!907478 d!112023))

(declare-fun d!112025 () Bool)

(declare-fun e!508664 () Bool)

(assert (=> d!112025 e!508664))

(declare-fun c!95575 () Bool)

(assert (=> d!112025 (= c!95575 (and (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!409322 () Unit!30779)

(declare-fun choose!1536 (array!53556 array!53558 (_ BitVec 32) (_ BitVec 32) V!29985 V!29985 (_ BitVec 64) Int) Unit!30779)

(assert (=> d!112025 (= lt!409322 (choose!1536 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(assert (=> d!112025 (validMask!0 mask!1756)))

(assert (=> d!112025 (= (lemmaKeyInListMapIsInArray!246 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160) lt!409322)))

(declare-fun b!907564 () Bool)

(assert (=> b!907564 (= e!508664 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000))))

(declare-fun b!907565 () Bool)

(assert (=> b!907565 (= e!508664 (ite (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!112025 c!95575) b!907564))

(assert (= (and d!112025 (not c!95575)) b!907565))

(declare-fun m!843039 () Bool)

(assert (=> d!112025 m!843039))

(assert (=> d!112025 m!842935))

(assert (=> b!907564 m!842961))

(assert (=> b!907478 d!112025))

(declare-fun b!907574 () Bool)

(declare-fun e!508673 () Bool)

(declare-fun e!508671 () Bool)

(assert (=> b!907574 (= e!508673 e!508671)))

(declare-fun lt!409330 () (_ BitVec 64))

(assert (=> b!907574 (= lt!409330 (select (arr!25733 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!409331 () Unit!30779)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!53556 (_ BitVec 64) (_ BitVec 32)) Unit!30779)

(assert (=> b!907574 (= lt!409331 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1386 lt!409330 #b00000000000000000000000000000000))))

(assert (=> b!907574 (arrayContainsKey!0 _keys!1386 lt!409330 #b00000000000000000000000000000000)))

(declare-fun lt!409329 () Unit!30779)

(assert (=> b!907574 (= lt!409329 lt!409331)))

(declare-fun res!612666 () Bool)

(declare-datatypes ((SeekEntryResult!8950 0))(
  ( (MissingZero!8950 (index!38170 (_ BitVec 32))) (Found!8950 (index!38171 (_ BitVec 32))) (Intermediate!8950 (undefined!9762 Bool) (index!38172 (_ BitVec 32)) (x!77480 (_ BitVec 32))) (Undefined!8950) (MissingVacant!8950 (index!38173 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!53556 (_ BitVec 32)) SeekEntryResult!8950)

(assert (=> b!907574 (= res!612666 (= (seekEntryOrOpen!0 (select (arr!25733 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756) (Found!8950 #b00000000000000000000000000000000)))))

(assert (=> b!907574 (=> (not res!612666) (not e!508671))))

(declare-fun b!907576 () Bool)

(declare-fun call!40258 () Bool)

(assert (=> b!907576 (= e!508671 call!40258)))

(declare-fun bm!40255 () Bool)

(assert (=> bm!40255 (= call!40258 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1386 mask!1756))))

(declare-fun b!907577 () Bool)

(assert (=> b!907577 (= e!508673 call!40258)))

(declare-fun d!112027 () Bool)

(declare-fun res!612665 () Bool)

(declare-fun e!508672 () Bool)

(assert (=> d!112027 (=> res!612665 e!508672)))

(assert (=> d!112027 (= res!612665 (bvsge #b00000000000000000000000000000000 (size!26193 _keys!1386)))))

(assert (=> d!112027 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756) e!508672)))

(declare-fun b!907575 () Bool)

(assert (=> b!907575 (= e!508672 e!508673)))

(declare-fun c!95578 () Bool)

(assert (=> b!907575 (= c!95578 (validKeyInArray!0 (select (arr!25733 _keys!1386) #b00000000000000000000000000000000)))))

(assert (= (and d!112027 (not res!612665)) b!907575))

(assert (= (and b!907575 c!95578) b!907574))

(assert (= (and b!907575 (not c!95578)) b!907577))

(assert (= (and b!907574 res!612666) b!907576))

(assert (= (or b!907576 b!907577) bm!40255))

(assert (=> b!907574 m!843025))

(declare-fun m!843041 () Bool)

(assert (=> b!907574 m!843041))

(declare-fun m!843043 () Bool)

(assert (=> b!907574 m!843043))

(assert (=> b!907574 m!843025))

(declare-fun m!843045 () Bool)

(assert (=> b!907574 m!843045))

(declare-fun m!843047 () Bool)

(assert (=> bm!40255 m!843047))

(assert (=> b!907575 m!843025))

(assert (=> b!907575 m!843025))

(assert (=> b!907575 m!843027))

(assert (=> b!907486 d!112027))

(declare-fun d!112029 () Bool)

(assert (=> d!112029 (= (validMask!0 mask!1756) (and (or (= mask!1756 #b00000000000000000000000000000111) (= mask!1756 #b00000000000000000000000000001111) (= mask!1756 #b00000000000000000000000000011111) (= mask!1756 #b00000000000000000000000000111111) (= mask!1756 #b00000000000000000000000001111111) (= mask!1756 #b00000000000000000000000011111111) (= mask!1756 #b00000000000000000000000111111111) (= mask!1756 #b00000000000000000000001111111111) (= mask!1756 #b00000000000000000000011111111111) (= mask!1756 #b00000000000000000000111111111111) (= mask!1756 #b00000000000000000001111111111111) (= mask!1756 #b00000000000000000011111111111111) (= mask!1756 #b00000000000000000111111111111111) (= mask!1756 #b00000000000000001111111111111111) (= mask!1756 #b00000000000000011111111111111111) (= mask!1756 #b00000000000000111111111111111111) (= mask!1756 #b00000000000001111111111111111111) (= mask!1756 #b00000000000011111111111111111111) (= mask!1756 #b00000000000111111111111111111111) (= mask!1756 #b00000000001111111111111111111111) (= mask!1756 #b00000000011111111111111111111111) (= mask!1756 #b00000000111111111111111111111111) (= mask!1756 #b00000001111111111111111111111111) (= mask!1756 #b00000011111111111111111111111111) (= mask!1756 #b00000111111111111111111111111111) (= mask!1756 #b00001111111111111111111111111111) (= mask!1756 #b00011111111111111111111111111111) (= mask!1756 #b00111111111111111111111111111111)) (bvsle mask!1756 #b00111111111111111111111111111111)))))

(assert (=> start!77790 d!112029))

(declare-fun d!112031 () Bool)

(assert (=> d!112031 (= (array_inv!20126 _values!1152) (bvsge (size!26194 _values!1152) #b00000000000000000000000000000000))))

(assert (=> start!77790 d!112031))

(declare-fun d!112033 () Bool)

(assert (=> d!112033 (= (array_inv!20127 _keys!1386) (bvsge (size!26193 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> start!77790 d!112033))

(declare-fun d!112035 () Bool)

(declare-fun e!508679 () Bool)

(assert (=> d!112035 e!508679))

(declare-fun res!612669 () Bool)

(assert (=> d!112035 (=> res!612669 e!508679)))

(declare-fun lt!409343 () Bool)

(assert (=> d!112035 (= res!612669 (not lt!409343))))

(declare-fun lt!409342 () Bool)

(assert (=> d!112035 (= lt!409343 lt!409342)))

(declare-fun lt!409340 () Unit!30779)

(declare-fun e!508678 () Unit!30779)

(assert (=> d!112035 (= lt!409340 e!508678)))

(declare-fun c!95581 () Bool)

(assert (=> d!112035 (= c!95581 lt!409342)))

(declare-fun containsKey!437 (List!18171 (_ BitVec 64)) Bool)

(assert (=> d!112035 (= lt!409342 (containsKey!437 (toList!5526 lt!409297) k0!1033))))

(assert (=> d!112035 (= (contains!4534 lt!409297 k0!1033) lt!409343)))

(declare-fun b!907584 () Bool)

(declare-fun lt!409341 () Unit!30779)

(assert (=> b!907584 (= e!508678 lt!409341)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!332 (List!18171 (_ BitVec 64)) Unit!30779)

(assert (=> b!907584 (= lt!409341 (lemmaContainsKeyImpliesGetValueByKeyDefined!332 (toList!5526 lt!409297) k0!1033))))

(declare-fun isDefined!342 (Option!478) Bool)

(assert (=> b!907584 (isDefined!342 (getValueByKey!472 (toList!5526 lt!409297) k0!1033))))

(declare-fun b!907585 () Bool)

(declare-fun Unit!30783 () Unit!30779)

(assert (=> b!907585 (= e!508678 Unit!30783)))

(declare-fun b!907586 () Bool)

(assert (=> b!907586 (= e!508679 (isDefined!342 (getValueByKey!472 (toList!5526 lt!409297) k0!1033)))))

(assert (= (and d!112035 c!95581) b!907584))

(assert (= (and d!112035 (not c!95581)) b!907585))

(assert (= (and d!112035 (not res!612669)) b!907586))

(declare-fun m!843049 () Bool)

(assert (=> d!112035 m!843049))

(declare-fun m!843051 () Bool)

(assert (=> b!907584 m!843051))

(assert (=> b!907584 m!843021))

(assert (=> b!907584 m!843021))

(declare-fun m!843053 () Bool)

(assert (=> b!907584 m!843053))

(assert (=> b!907586 m!843021))

(assert (=> b!907586 m!843021))

(assert (=> b!907586 m!843053))

(assert (=> b!907476 d!112035))

(declare-fun b!907629 () Bool)

(declare-fun e!508714 () Bool)

(declare-fun call!40279 () Bool)

(assert (=> b!907629 (= e!508714 (not call!40279))))

(declare-fun b!907630 () Bool)

(declare-fun e!508711 () ListLongMap!11021)

(declare-fun call!40273 () ListLongMap!11021)

(declare-fun +!2557 (ListLongMap!11021 tuple2!12310) ListLongMap!11021)

(assert (=> b!907630 (= e!508711 (+!2557 call!40273 (tuple2!12311 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))

(declare-fun b!907631 () Bool)

(declare-fun e!508713 () Bool)

(declare-fun e!508707 () Bool)

(assert (=> b!907631 (= e!508713 e!508707)))

(declare-fun res!612689 () Bool)

(declare-fun call!40275 () Bool)

(assert (=> b!907631 (= res!612689 call!40275)))

(assert (=> b!907631 (=> (not res!612689) (not e!508707))))

(declare-fun b!907632 () Bool)

(declare-fun e!508717 () ListLongMap!11021)

(declare-fun call!40276 () ListLongMap!11021)

(assert (=> b!907632 (= e!508717 call!40276)))

(declare-fun b!907633 () Bool)

(declare-fun e!508716 () Bool)

(declare-fun lt!409388 () ListLongMap!11021)

(assert (=> b!907633 (= e!508716 (= (apply!502 lt!409388 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1094))))

(declare-fun b!907634 () Bool)

(declare-fun e!508712 () ListLongMap!11021)

(assert (=> b!907634 (= e!508712 call!40276)))

(declare-fun b!907635 () Bool)

(assert (=> b!907635 (= e!508707 (= (apply!502 lt!409388 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1094))))

(declare-fun b!907637 () Bool)

(declare-fun c!95595 () Bool)

(assert (=> b!907637 (= c!95595 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!907637 (= e!508717 e!508712)))

(declare-fun call!40274 () ListLongMap!11021)

(declare-fun bm!40270 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3305 (array!53556 array!53558 (_ BitVec 32) (_ BitVec 32) V!29985 V!29985 (_ BitVec 32) Int) ListLongMap!11021)

(assert (=> bm!40270 (= call!40274 (getCurrentListMapNoExtraKeys!3305 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!907638 () Bool)

(declare-fun e!508706 () Bool)

(declare-fun e!508710 () Bool)

(assert (=> b!907638 (= e!508706 e!508710)))

(declare-fun res!612696 () Bool)

(assert (=> b!907638 (=> (not res!612696) (not e!508710))))

(assert (=> b!907638 (= res!612696 (contains!4534 lt!409388 (select (arr!25733 _keys!1386) i!717)))))

(assert (=> b!907638 (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26193 _keys!1386)))))

(declare-fun b!907639 () Bool)

(declare-fun e!508709 () Bool)

(assert (=> b!907639 (= e!508709 (validKeyInArray!0 (select (arr!25733 _keys!1386) i!717)))))

(declare-fun bm!40271 () Bool)

(declare-fun call!40277 () ListLongMap!11021)

(assert (=> bm!40271 (= call!40277 call!40274)))

(declare-fun bm!40272 () Bool)

(assert (=> bm!40272 (= call!40275 (contains!4534 lt!409388 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!907640 () Bool)

(assert (=> b!907640 (= e!508710 (= (apply!502 lt!409388 (select (arr!25733 _keys!1386) i!717)) (get!13555 (select (arr!25734 _values!1152) i!717) (dynLambda!1373 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!907640 (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26194 _values!1152)))))

(assert (=> b!907640 (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26193 _keys!1386)))))

(declare-fun b!907641 () Bool)

(declare-fun call!40278 () ListLongMap!11021)

(assert (=> b!907641 (= e!508712 call!40278)))

(declare-fun b!907642 () Bool)

(assert (=> b!907642 (= e!508713 (not call!40275))))

(declare-fun b!907643 () Bool)

(declare-fun res!612693 () Bool)

(declare-fun e!508715 () Bool)

(assert (=> b!907643 (=> (not res!612693) (not e!508715))))

(assert (=> b!907643 (= res!612693 e!508713)))

(declare-fun c!95599 () Bool)

(assert (=> b!907643 (= c!95599 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun d!112037 () Bool)

(assert (=> d!112037 e!508715))

(declare-fun res!612691 () Bool)

(assert (=> d!112037 (=> (not res!612691) (not e!508715))))

(assert (=> d!112037 (= res!612691 (or (bvsge i!717 (size!26193 _keys!1386)) (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26193 _keys!1386)))))))

(declare-fun lt!409400 () ListLongMap!11021)

(assert (=> d!112037 (= lt!409388 lt!409400)))

(declare-fun lt!409404 () Unit!30779)

(declare-fun e!508718 () Unit!30779)

(assert (=> d!112037 (= lt!409404 e!508718)))

(declare-fun c!95594 () Bool)

(declare-fun e!508708 () Bool)

(assert (=> d!112037 (= c!95594 e!508708)))

(declare-fun res!612694 () Bool)

(assert (=> d!112037 (=> (not res!612694) (not e!508708))))

(assert (=> d!112037 (= res!612694 (bvslt i!717 (size!26193 _keys!1386)))))

(assert (=> d!112037 (= lt!409400 e!508711)))

(declare-fun c!95597 () Bool)

(assert (=> d!112037 (= c!95597 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!112037 (validMask!0 mask!1756)))

(assert (=> d!112037 (= (getCurrentListMap!2758 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160) lt!409388)))

(declare-fun b!907636 () Bool)

(assert (=> b!907636 (= e!508711 e!508717)))

(declare-fun c!95598 () Bool)

(assert (=> b!907636 (= c!95598 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!907644 () Bool)

(assert (=> b!907644 (= e!508708 (validKeyInArray!0 (select (arr!25733 _keys!1386) i!717)))))

(declare-fun b!907645 () Bool)

(declare-fun Unit!30784 () Unit!30779)

(assert (=> b!907645 (= e!508718 Unit!30784)))

(declare-fun b!907646 () Bool)

(assert (=> b!907646 (= e!508715 e!508714)))

(declare-fun c!95596 () Bool)

(assert (=> b!907646 (= c!95596 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!40273 () Bool)

(assert (=> bm!40273 (= call!40278 call!40277)))

(declare-fun bm!40274 () Bool)

(assert (=> bm!40274 (= call!40273 (+!2557 (ite c!95597 call!40274 (ite c!95598 call!40277 call!40278)) (ite (or c!95597 c!95598) (tuple2!12311 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12311 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(declare-fun b!907647 () Bool)

(assert (=> b!907647 (= e!508714 e!508716)))

(declare-fun res!612692 () Bool)

(assert (=> b!907647 (= res!612692 call!40279)))

(assert (=> b!907647 (=> (not res!612692) (not e!508716))))

(declare-fun bm!40275 () Bool)

(assert (=> bm!40275 (= call!40279 (contains!4534 lt!409388 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!40276 () Bool)

(assert (=> bm!40276 (= call!40276 call!40273)))

(declare-fun b!907648 () Bool)

(declare-fun lt!409401 () Unit!30779)

(assert (=> b!907648 (= e!508718 lt!409401)))

(declare-fun lt!409409 () ListLongMap!11021)

(assert (=> b!907648 (= lt!409409 (getCurrentListMapNoExtraKeys!3305 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun lt!409402 () (_ BitVec 64))

(assert (=> b!907648 (= lt!409402 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!409406 () (_ BitVec 64))

(assert (=> b!907648 (= lt!409406 (select (arr!25733 _keys!1386) i!717))))

(declare-fun lt!409399 () Unit!30779)

(declare-fun addStillContains!343 (ListLongMap!11021 (_ BitVec 64) V!29985 (_ BitVec 64)) Unit!30779)

(assert (=> b!907648 (= lt!409399 (addStillContains!343 lt!409409 lt!409402 zeroValue!1094 lt!409406))))

(assert (=> b!907648 (contains!4534 (+!2557 lt!409409 (tuple2!12311 lt!409402 zeroValue!1094)) lt!409406)))

(declare-fun lt!409389 () Unit!30779)

(assert (=> b!907648 (= lt!409389 lt!409399)))

(declare-fun lt!409398 () ListLongMap!11021)

(assert (=> b!907648 (= lt!409398 (getCurrentListMapNoExtraKeys!3305 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun lt!409408 () (_ BitVec 64))

(assert (=> b!907648 (= lt!409408 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!409394 () (_ BitVec 64))

(assert (=> b!907648 (= lt!409394 (select (arr!25733 _keys!1386) i!717))))

(declare-fun lt!409396 () Unit!30779)

(declare-fun addApplyDifferent!343 (ListLongMap!11021 (_ BitVec 64) V!29985 (_ BitVec 64)) Unit!30779)

(assert (=> b!907648 (= lt!409396 (addApplyDifferent!343 lt!409398 lt!409408 minValue!1094 lt!409394))))

(assert (=> b!907648 (= (apply!502 (+!2557 lt!409398 (tuple2!12311 lt!409408 minValue!1094)) lt!409394) (apply!502 lt!409398 lt!409394))))

(declare-fun lt!409392 () Unit!30779)

(assert (=> b!907648 (= lt!409392 lt!409396)))

(declare-fun lt!409405 () ListLongMap!11021)

(assert (=> b!907648 (= lt!409405 (getCurrentListMapNoExtraKeys!3305 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun lt!409391 () (_ BitVec 64))

(assert (=> b!907648 (= lt!409391 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!409390 () (_ BitVec 64))

(assert (=> b!907648 (= lt!409390 (select (arr!25733 _keys!1386) i!717))))

(declare-fun lt!409407 () Unit!30779)

(assert (=> b!907648 (= lt!409407 (addApplyDifferent!343 lt!409405 lt!409391 zeroValue!1094 lt!409390))))

(assert (=> b!907648 (= (apply!502 (+!2557 lt!409405 (tuple2!12311 lt!409391 zeroValue!1094)) lt!409390) (apply!502 lt!409405 lt!409390))))

(declare-fun lt!409403 () Unit!30779)

(assert (=> b!907648 (= lt!409403 lt!409407)))

(declare-fun lt!409395 () ListLongMap!11021)

(assert (=> b!907648 (= lt!409395 (getCurrentListMapNoExtraKeys!3305 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun lt!409393 () (_ BitVec 64))

(assert (=> b!907648 (= lt!409393 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!409397 () (_ BitVec 64))

(assert (=> b!907648 (= lt!409397 (select (arr!25733 _keys!1386) i!717))))

(assert (=> b!907648 (= lt!409401 (addApplyDifferent!343 lt!409395 lt!409393 minValue!1094 lt!409397))))

(assert (=> b!907648 (= (apply!502 (+!2557 lt!409395 (tuple2!12311 lt!409393 minValue!1094)) lt!409397) (apply!502 lt!409395 lt!409397))))

(declare-fun b!907649 () Bool)

(declare-fun res!612695 () Bool)

(assert (=> b!907649 (=> (not res!612695) (not e!508715))))

(assert (=> b!907649 (= res!612695 e!508706)))

(declare-fun res!612690 () Bool)

(assert (=> b!907649 (=> res!612690 e!508706)))

(assert (=> b!907649 (= res!612690 (not e!508709))))

(declare-fun res!612688 () Bool)

(assert (=> b!907649 (=> (not res!612688) (not e!508709))))

(assert (=> b!907649 (= res!612688 (bvslt i!717 (size!26193 _keys!1386)))))

(assert (= (and d!112037 c!95597) b!907630))

(assert (= (and d!112037 (not c!95597)) b!907636))

(assert (= (and b!907636 c!95598) b!907632))

(assert (= (and b!907636 (not c!95598)) b!907637))

(assert (= (and b!907637 c!95595) b!907634))

(assert (= (and b!907637 (not c!95595)) b!907641))

(assert (= (or b!907634 b!907641) bm!40273))

(assert (= (or b!907632 bm!40273) bm!40271))

(assert (= (or b!907632 b!907634) bm!40276))

(assert (= (or b!907630 bm!40271) bm!40270))

(assert (= (or b!907630 bm!40276) bm!40274))

(assert (= (and d!112037 res!612694) b!907644))

(assert (= (and d!112037 c!95594) b!907648))

(assert (= (and d!112037 (not c!95594)) b!907645))

(assert (= (and d!112037 res!612691) b!907649))

(assert (= (and b!907649 res!612688) b!907639))

(assert (= (and b!907649 (not res!612690)) b!907638))

(assert (= (and b!907638 res!612696) b!907640))

(assert (= (and b!907649 res!612695) b!907643))

(assert (= (and b!907643 c!95599) b!907631))

(assert (= (and b!907643 (not c!95599)) b!907642))

(assert (= (and b!907631 res!612689) b!907635))

(assert (= (or b!907631 b!907642) bm!40272))

(assert (= (and b!907643 res!612693) b!907646))

(assert (= (and b!907646 c!95596) b!907647))

(assert (= (and b!907646 (not c!95596)) b!907629))

(assert (= (and b!907647 res!612692) b!907633))

(assert (= (or b!907647 b!907629) bm!40275))

(declare-fun b_lambda!13257 () Bool)

(assert (=> (not b_lambda!13257) (not b!907640)))

(assert (=> b!907640 t!25696))

(declare-fun b_and!26873 () Bool)

(assert (= b_and!26867 (and (=> t!25696 result!10541) b_and!26873)))

(declare-fun m!843055 () Bool)

(assert (=> bm!40270 m!843055))

(assert (=> b!907644 m!842931))

(assert (=> b!907644 m!842931))

(declare-fun m!843057 () Bool)

(assert (=> b!907644 m!843057))

(declare-fun m!843059 () Bool)

(assert (=> bm!40272 m!843059))

(declare-fun m!843061 () Bool)

(assert (=> bm!40275 m!843061))

(declare-fun m!843063 () Bool)

(assert (=> b!907635 m!843063))

(assert (=> b!907639 m!842931))

(assert (=> b!907639 m!842931))

(assert (=> b!907639 m!843057))

(declare-fun m!843065 () Bool)

(assert (=> b!907633 m!843065))

(declare-fun m!843067 () Bool)

(assert (=> b!907648 m!843067))

(declare-fun m!843069 () Bool)

(assert (=> b!907648 m!843069))

(assert (=> b!907648 m!842931))

(declare-fun m!843071 () Bool)

(assert (=> b!907648 m!843071))

(declare-fun m!843073 () Bool)

(assert (=> b!907648 m!843073))

(declare-fun m!843075 () Bool)

(assert (=> b!907648 m!843075))

(declare-fun m!843077 () Bool)

(assert (=> b!907648 m!843077))

(declare-fun m!843079 () Bool)

(assert (=> b!907648 m!843079))

(declare-fun m!843081 () Bool)

(assert (=> b!907648 m!843081))

(assert (=> b!907648 m!843073))

(assert (=> b!907648 m!843077))

(declare-fun m!843083 () Bool)

(assert (=> b!907648 m!843083))

(declare-fun m!843085 () Bool)

(assert (=> b!907648 m!843085))

(declare-fun m!843087 () Bool)

(assert (=> b!907648 m!843087))

(declare-fun m!843089 () Bool)

(assert (=> b!907648 m!843089))

(declare-fun m!843091 () Bool)

(assert (=> b!907648 m!843091))

(assert (=> b!907648 m!843081))

(declare-fun m!843093 () Bool)

(assert (=> b!907648 m!843093))

(declare-fun m!843095 () Bool)

(assert (=> b!907648 m!843095))

(assert (=> b!907648 m!843087))

(assert (=> b!907648 m!843055))

(assert (=> b!907638 m!842931))

(assert (=> b!907638 m!842931))

(declare-fun m!843097 () Bool)

(assert (=> b!907638 m!843097))

(declare-fun m!843099 () Bool)

(assert (=> bm!40274 m!843099))

(assert (=> b!907640 m!842931))

(assert (=> b!907640 m!842931))

(declare-fun m!843101 () Bool)

(assert (=> b!907640 m!843101))

(assert (=> b!907640 m!842955))

(assert (=> b!907640 m!842959))

(assert (=> b!907640 m!842963))

(assert (=> b!907640 m!842959))

(assert (=> b!907640 m!842955))

(assert (=> d!112037 m!842935))

(declare-fun m!843103 () Bool)

(assert (=> b!907630 m!843103))

(assert (=> b!907476 d!112037))

(declare-fun d!112039 () Bool)

(declare-fun e!508720 () Bool)

(assert (=> d!112039 e!508720))

(declare-fun res!612697 () Bool)

(assert (=> d!112039 (=> res!612697 e!508720)))

(declare-fun lt!409413 () Bool)

(assert (=> d!112039 (= res!612697 (not lt!409413))))

(declare-fun lt!409412 () Bool)

(assert (=> d!112039 (= lt!409413 lt!409412)))

(declare-fun lt!409410 () Unit!30779)

(declare-fun e!508719 () Unit!30779)

(assert (=> d!112039 (= lt!409410 e!508719)))

(declare-fun c!95600 () Bool)

(assert (=> d!112039 (= c!95600 lt!409412)))

(assert (=> d!112039 (= lt!409412 (containsKey!437 (toList!5526 lt!409298) k0!1033))))

(assert (=> d!112039 (= (contains!4534 lt!409298 k0!1033) lt!409413)))

(declare-fun b!907650 () Bool)

(declare-fun lt!409411 () Unit!30779)

(assert (=> b!907650 (= e!508719 lt!409411)))

(assert (=> b!907650 (= lt!409411 (lemmaContainsKeyImpliesGetValueByKeyDefined!332 (toList!5526 lt!409298) k0!1033))))

(assert (=> b!907650 (isDefined!342 (getValueByKey!472 (toList!5526 lt!409298) k0!1033))))

(declare-fun b!907651 () Bool)

(declare-fun Unit!30785 () Unit!30779)

(assert (=> b!907651 (= e!508719 Unit!30785)))

(declare-fun b!907652 () Bool)

(assert (=> b!907652 (= e!508720 (isDefined!342 (getValueByKey!472 (toList!5526 lt!409298) k0!1033)))))

(assert (= (and d!112039 c!95600) b!907650))

(assert (= (and d!112039 (not c!95600)) b!907651))

(assert (= (and d!112039 (not res!612697)) b!907652))

(declare-fun m!843105 () Bool)

(assert (=> d!112039 m!843105))

(declare-fun m!843107 () Bool)

(assert (=> b!907650 m!843107))

(assert (=> b!907650 m!843011))

(assert (=> b!907650 m!843011))

(declare-fun m!843109 () Bool)

(assert (=> b!907650 m!843109))

(assert (=> b!907652 m!843011))

(assert (=> b!907652 m!843011))

(assert (=> b!907652 m!843109))

(assert (=> b!907485 d!112039))

(declare-fun b!907653 () Bool)

(declare-fun e!508729 () Bool)

(declare-fun call!40286 () Bool)

(assert (=> b!907653 (= e!508729 (not call!40286))))

(declare-fun b!907654 () Bool)

(declare-fun e!508726 () ListLongMap!11021)

(declare-fun call!40280 () ListLongMap!11021)

(assert (=> b!907654 (= e!508726 (+!2557 call!40280 (tuple2!12311 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))

(declare-fun b!907655 () Bool)

(declare-fun e!508728 () Bool)

(declare-fun e!508722 () Bool)

(assert (=> b!907655 (= e!508728 e!508722)))

(declare-fun res!612699 () Bool)

(declare-fun call!40282 () Bool)

(assert (=> b!907655 (= res!612699 call!40282)))

(assert (=> b!907655 (=> (not res!612699) (not e!508722))))

(declare-fun b!907656 () Bool)

(declare-fun e!508732 () ListLongMap!11021)

(declare-fun call!40283 () ListLongMap!11021)

(assert (=> b!907656 (= e!508732 call!40283)))

(declare-fun b!907657 () Bool)

(declare-fun e!508731 () Bool)

(declare-fun lt!409414 () ListLongMap!11021)

(assert (=> b!907657 (= e!508731 (= (apply!502 lt!409414 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1094))))

(declare-fun b!907658 () Bool)

(declare-fun e!508727 () ListLongMap!11021)

(assert (=> b!907658 (= e!508727 call!40283)))

(declare-fun b!907659 () Bool)

(assert (=> b!907659 (= e!508722 (= (apply!502 lt!409414 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1094))))

(declare-fun b!907661 () Bool)

(declare-fun c!95602 () Bool)

(assert (=> b!907661 (= c!95602 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!907661 (= e!508732 e!508727)))

(declare-fun bm!40277 () Bool)

(declare-fun call!40281 () ListLongMap!11021)

(assert (=> bm!40277 (= call!40281 (getCurrentListMapNoExtraKeys!3305 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!907662 () Bool)

(declare-fun e!508721 () Bool)

(declare-fun e!508725 () Bool)

(assert (=> b!907662 (= e!508721 e!508725)))

(declare-fun res!612706 () Bool)

(assert (=> b!907662 (=> (not res!612706) (not e!508725))))

(assert (=> b!907662 (= res!612706 (contains!4534 lt!409414 (select (arr!25733 _keys!1386) #b00000000000000000000000000000000)))))

(assert (=> b!907662 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26193 _keys!1386)))))

(declare-fun b!907663 () Bool)

(declare-fun e!508724 () Bool)

(assert (=> b!907663 (= e!508724 (validKeyInArray!0 (select (arr!25733 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun bm!40278 () Bool)

(declare-fun call!40284 () ListLongMap!11021)

(assert (=> bm!40278 (= call!40284 call!40281)))

(declare-fun bm!40279 () Bool)

(assert (=> bm!40279 (= call!40282 (contains!4534 lt!409414 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!907664 () Bool)

(assert (=> b!907664 (= e!508725 (= (apply!502 lt!409414 (select (arr!25733 _keys!1386) #b00000000000000000000000000000000)) (get!13555 (select (arr!25734 _values!1152) #b00000000000000000000000000000000) (dynLambda!1373 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!907664 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26194 _values!1152)))))

(assert (=> b!907664 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26193 _keys!1386)))))

(declare-fun b!907665 () Bool)

(declare-fun call!40285 () ListLongMap!11021)

(assert (=> b!907665 (= e!508727 call!40285)))

(declare-fun b!907666 () Bool)

(assert (=> b!907666 (= e!508728 (not call!40282))))

(declare-fun b!907667 () Bool)

(declare-fun res!612703 () Bool)

(declare-fun e!508730 () Bool)

(assert (=> b!907667 (=> (not res!612703) (not e!508730))))

(assert (=> b!907667 (= res!612703 e!508728)))

(declare-fun c!95606 () Bool)

(assert (=> b!907667 (= c!95606 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun d!112041 () Bool)

(assert (=> d!112041 e!508730))

(declare-fun res!612701 () Bool)

(assert (=> d!112041 (=> (not res!612701) (not e!508730))))

(assert (=> d!112041 (= res!612701 (or (bvsge #b00000000000000000000000000000000 (size!26193 _keys!1386)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26193 _keys!1386)))))))

(declare-fun lt!409426 () ListLongMap!11021)

(assert (=> d!112041 (= lt!409414 lt!409426)))

(declare-fun lt!409430 () Unit!30779)

(declare-fun e!508733 () Unit!30779)

(assert (=> d!112041 (= lt!409430 e!508733)))

(declare-fun c!95601 () Bool)

(declare-fun e!508723 () Bool)

(assert (=> d!112041 (= c!95601 e!508723)))

(declare-fun res!612704 () Bool)

(assert (=> d!112041 (=> (not res!612704) (not e!508723))))

(assert (=> d!112041 (= res!612704 (bvslt #b00000000000000000000000000000000 (size!26193 _keys!1386)))))

(assert (=> d!112041 (= lt!409426 e!508726)))

(declare-fun c!95604 () Bool)

(assert (=> d!112041 (= c!95604 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!112041 (validMask!0 mask!1756)))

(assert (=> d!112041 (= (getCurrentListMap!2758 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) lt!409414)))

(declare-fun b!907660 () Bool)

(assert (=> b!907660 (= e!508726 e!508732)))

(declare-fun c!95605 () Bool)

(assert (=> b!907660 (= c!95605 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!907668 () Bool)

(assert (=> b!907668 (= e!508723 (validKeyInArray!0 (select (arr!25733 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!907669 () Bool)

(declare-fun Unit!30786 () Unit!30779)

(assert (=> b!907669 (= e!508733 Unit!30786)))

(declare-fun b!907670 () Bool)

(assert (=> b!907670 (= e!508730 e!508729)))

(declare-fun c!95603 () Bool)

(assert (=> b!907670 (= c!95603 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!40280 () Bool)

(assert (=> bm!40280 (= call!40285 call!40284)))

(declare-fun bm!40281 () Bool)

(assert (=> bm!40281 (= call!40280 (+!2557 (ite c!95604 call!40281 (ite c!95605 call!40284 call!40285)) (ite (or c!95604 c!95605) (tuple2!12311 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12311 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(declare-fun b!907671 () Bool)

(assert (=> b!907671 (= e!508729 e!508731)))

(declare-fun res!612702 () Bool)

(assert (=> b!907671 (= res!612702 call!40286)))

(assert (=> b!907671 (=> (not res!612702) (not e!508731))))

(declare-fun bm!40282 () Bool)

(assert (=> bm!40282 (= call!40286 (contains!4534 lt!409414 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!40283 () Bool)

(assert (=> bm!40283 (= call!40283 call!40280)))

(declare-fun b!907672 () Bool)

(declare-fun lt!409427 () Unit!30779)

(assert (=> b!907672 (= e!508733 lt!409427)))

(declare-fun lt!409435 () ListLongMap!11021)

(assert (=> b!907672 (= lt!409435 (getCurrentListMapNoExtraKeys!3305 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!409428 () (_ BitVec 64))

(assert (=> b!907672 (= lt!409428 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!409432 () (_ BitVec 64))

(assert (=> b!907672 (= lt!409432 (select (arr!25733 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!409425 () Unit!30779)

(assert (=> b!907672 (= lt!409425 (addStillContains!343 lt!409435 lt!409428 zeroValue!1094 lt!409432))))

(assert (=> b!907672 (contains!4534 (+!2557 lt!409435 (tuple2!12311 lt!409428 zeroValue!1094)) lt!409432)))

(declare-fun lt!409415 () Unit!30779)

(assert (=> b!907672 (= lt!409415 lt!409425)))

(declare-fun lt!409424 () ListLongMap!11021)

(assert (=> b!907672 (= lt!409424 (getCurrentListMapNoExtraKeys!3305 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!409434 () (_ BitVec 64))

(assert (=> b!907672 (= lt!409434 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!409420 () (_ BitVec 64))

(assert (=> b!907672 (= lt!409420 (select (arr!25733 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!409422 () Unit!30779)

(assert (=> b!907672 (= lt!409422 (addApplyDifferent!343 lt!409424 lt!409434 minValue!1094 lt!409420))))

(assert (=> b!907672 (= (apply!502 (+!2557 lt!409424 (tuple2!12311 lt!409434 minValue!1094)) lt!409420) (apply!502 lt!409424 lt!409420))))

(declare-fun lt!409418 () Unit!30779)

(assert (=> b!907672 (= lt!409418 lt!409422)))

(declare-fun lt!409431 () ListLongMap!11021)

(assert (=> b!907672 (= lt!409431 (getCurrentListMapNoExtraKeys!3305 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!409417 () (_ BitVec 64))

(assert (=> b!907672 (= lt!409417 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!409416 () (_ BitVec 64))

(assert (=> b!907672 (= lt!409416 (select (arr!25733 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!409433 () Unit!30779)

(assert (=> b!907672 (= lt!409433 (addApplyDifferent!343 lt!409431 lt!409417 zeroValue!1094 lt!409416))))

(assert (=> b!907672 (= (apply!502 (+!2557 lt!409431 (tuple2!12311 lt!409417 zeroValue!1094)) lt!409416) (apply!502 lt!409431 lt!409416))))

(declare-fun lt!409429 () Unit!30779)

(assert (=> b!907672 (= lt!409429 lt!409433)))

(declare-fun lt!409421 () ListLongMap!11021)

(assert (=> b!907672 (= lt!409421 (getCurrentListMapNoExtraKeys!3305 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!409419 () (_ BitVec 64))

(assert (=> b!907672 (= lt!409419 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!409423 () (_ BitVec 64))

(assert (=> b!907672 (= lt!409423 (select (arr!25733 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> b!907672 (= lt!409427 (addApplyDifferent!343 lt!409421 lt!409419 minValue!1094 lt!409423))))

(assert (=> b!907672 (= (apply!502 (+!2557 lt!409421 (tuple2!12311 lt!409419 minValue!1094)) lt!409423) (apply!502 lt!409421 lt!409423))))

(declare-fun b!907673 () Bool)

(declare-fun res!612705 () Bool)

(assert (=> b!907673 (=> (not res!612705) (not e!508730))))

(assert (=> b!907673 (= res!612705 e!508721)))

(declare-fun res!612700 () Bool)

(assert (=> b!907673 (=> res!612700 e!508721)))

(assert (=> b!907673 (= res!612700 (not e!508724))))

(declare-fun res!612698 () Bool)

(assert (=> b!907673 (=> (not res!612698) (not e!508724))))

(assert (=> b!907673 (= res!612698 (bvslt #b00000000000000000000000000000000 (size!26193 _keys!1386)))))

(assert (= (and d!112041 c!95604) b!907654))

(assert (= (and d!112041 (not c!95604)) b!907660))

(assert (= (and b!907660 c!95605) b!907656))

(assert (= (and b!907660 (not c!95605)) b!907661))

(assert (= (and b!907661 c!95602) b!907658))

(assert (= (and b!907661 (not c!95602)) b!907665))

(assert (= (or b!907658 b!907665) bm!40280))

(assert (= (or b!907656 bm!40280) bm!40278))

(assert (= (or b!907656 b!907658) bm!40283))

(assert (= (or b!907654 bm!40278) bm!40277))

(assert (= (or b!907654 bm!40283) bm!40281))

(assert (= (and d!112041 res!612704) b!907668))

(assert (= (and d!112041 c!95601) b!907672))

(assert (= (and d!112041 (not c!95601)) b!907669))

(assert (= (and d!112041 res!612701) b!907673))

(assert (= (and b!907673 res!612698) b!907663))

(assert (= (and b!907673 (not res!612700)) b!907662))

(assert (= (and b!907662 res!612706) b!907664))

(assert (= (and b!907673 res!612705) b!907667))

(assert (= (and b!907667 c!95606) b!907655))

(assert (= (and b!907667 (not c!95606)) b!907666))

(assert (= (and b!907655 res!612699) b!907659))

(assert (= (or b!907655 b!907666) bm!40279))

(assert (= (and b!907667 res!612703) b!907670))

(assert (= (and b!907670 c!95603) b!907671))

(assert (= (and b!907670 (not c!95603)) b!907653))

(assert (= (and b!907671 res!612702) b!907657))

(assert (= (or b!907671 b!907653) bm!40282))

(declare-fun b_lambda!13259 () Bool)

(assert (=> (not b_lambda!13259) (not b!907664)))

(assert (=> b!907664 t!25696))

(declare-fun b_and!26875 () Bool)

(assert (= b_and!26873 (and (=> t!25696 result!10541) b_and!26875)))

(declare-fun m!843111 () Bool)

(assert (=> bm!40277 m!843111))

(assert (=> b!907668 m!843025))

(assert (=> b!907668 m!843025))

(assert (=> b!907668 m!843027))

(declare-fun m!843113 () Bool)

(assert (=> bm!40279 m!843113))

(declare-fun m!843115 () Bool)

(assert (=> bm!40282 m!843115))

(declare-fun m!843117 () Bool)

(assert (=> b!907659 m!843117))

(assert (=> b!907663 m!843025))

(assert (=> b!907663 m!843025))

(assert (=> b!907663 m!843027))

(declare-fun m!843119 () Bool)

(assert (=> b!907657 m!843119))

(declare-fun m!843121 () Bool)

(assert (=> b!907672 m!843121))

(declare-fun m!843123 () Bool)

(assert (=> b!907672 m!843123))

(assert (=> b!907672 m!843025))

(declare-fun m!843125 () Bool)

(assert (=> b!907672 m!843125))

(declare-fun m!843127 () Bool)

(assert (=> b!907672 m!843127))

(declare-fun m!843129 () Bool)

(assert (=> b!907672 m!843129))

(declare-fun m!843131 () Bool)

(assert (=> b!907672 m!843131))

(declare-fun m!843133 () Bool)

(assert (=> b!907672 m!843133))

(declare-fun m!843135 () Bool)

(assert (=> b!907672 m!843135))

(assert (=> b!907672 m!843127))

(assert (=> b!907672 m!843131))

(declare-fun m!843137 () Bool)

(assert (=> b!907672 m!843137))

(declare-fun m!843139 () Bool)

(assert (=> b!907672 m!843139))

(declare-fun m!843141 () Bool)

(assert (=> b!907672 m!843141))

(declare-fun m!843143 () Bool)

(assert (=> b!907672 m!843143))

(declare-fun m!843145 () Bool)

(assert (=> b!907672 m!843145))

(assert (=> b!907672 m!843135))

(declare-fun m!843147 () Bool)

(assert (=> b!907672 m!843147))

(declare-fun m!843149 () Bool)

(assert (=> b!907672 m!843149))

(assert (=> b!907672 m!843141))

(assert (=> b!907672 m!843111))

(assert (=> b!907662 m!843025))

(assert (=> b!907662 m!843025))

(declare-fun m!843151 () Bool)

(assert (=> b!907662 m!843151))

(declare-fun m!843153 () Bool)

(assert (=> bm!40281 m!843153))

(assert (=> b!907664 m!843025))

(assert (=> b!907664 m!843025))

(declare-fun m!843155 () Bool)

(assert (=> b!907664 m!843155))

(declare-fun m!843157 () Bool)

(assert (=> b!907664 m!843157))

(assert (=> b!907664 m!842959))

(declare-fun m!843159 () Bool)

(assert (=> b!907664 m!843159))

(assert (=> b!907664 m!842959))

(assert (=> b!907664 m!843157))

(assert (=> d!112041 m!842935))

(declare-fun m!843161 () Bool)

(assert (=> b!907654 m!843161))

(assert (=> b!907485 d!112041))

(declare-fun mapNonEmpty!29866 () Bool)

(declare-fun mapRes!29866 () Bool)

(declare-fun tp!57313 () Bool)

(declare-fun e!508739 () Bool)

(assert (=> mapNonEmpty!29866 (= mapRes!29866 (and tp!57313 e!508739))))

(declare-fun mapValue!29866 () ValueCell!8901)

(declare-fun mapKey!29866 () (_ BitVec 32))

(declare-fun mapRest!29866 () (Array (_ BitVec 32) ValueCell!8901))

(assert (=> mapNonEmpty!29866 (= mapRest!29860 (store mapRest!29866 mapKey!29866 mapValue!29866))))

(declare-fun b!907681 () Bool)

(declare-fun e!508738 () Bool)

(assert (=> b!907681 (= e!508738 tp_is_empty!18765)))

(declare-fun condMapEmpty!29866 () Bool)

(declare-fun mapDefault!29866 () ValueCell!8901)

(assert (=> mapNonEmpty!29860 (= condMapEmpty!29866 (= mapRest!29860 ((as const (Array (_ BitVec 32) ValueCell!8901)) mapDefault!29866)))))

(assert (=> mapNonEmpty!29860 (= tp!57303 (and e!508738 mapRes!29866))))

(declare-fun mapIsEmpty!29866 () Bool)

(assert (=> mapIsEmpty!29866 mapRes!29866))

(declare-fun b!907680 () Bool)

(assert (=> b!907680 (= e!508739 tp_is_empty!18765)))

(assert (= (and mapNonEmpty!29860 condMapEmpty!29866) mapIsEmpty!29866))

(assert (= (and mapNonEmpty!29860 (not condMapEmpty!29866)) mapNonEmpty!29866))

(assert (= (and mapNonEmpty!29866 ((_ is ValueCellFull!8901) mapValue!29866)) b!907680))

(assert (= (and mapNonEmpty!29860 ((_ is ValueCellFull!8901) mapDefault!29866)) b!907681))

(declare-fun m!843163 () Bool)

(assert (=> mapNonEmpty!29866 m!843163))

(declare-fun b_lambda!13261 () Bool)

(assert (= b_lambda!13259 (or (and start!77790 b_free!16347) b_lambda!13261)))

(declare-fun b_lambda!13263 () Bool)

(assert (= b_lambda!13257 (or (and start!77790 b_free!16347) b_lambda!13263)))

(check-sat (not bm!40272) (not d!112037) (not b!907657) (not bm!40255) (not bm!40252) (not b!907584) (not d!112035) (not b!907663) (not d!112011) (not d!112041) (not bm!40274) (not b!907662) (not b!907650) (not b_lambda!13255) (not bm!40270) (not b!907553) (not b!907644) (not mapNonEmpty!29866) (not b!907635) (not d!112013) (not bm!40275) (not b!907672) (not b!907559) (not b!907668) (not b_lambda!13263) (not b!907575) (not bm!40282) (not b!907564) (not b!907546) (not b!907552) (not b!907638) (not b!907544) (not b!907648) (not b!907630) (not b!907652) (not d!112025) (not b!907654) (not bm!40277) (not b!907532) b_and!26875 (not b!907639) (not bm!40279) (not d!112015) (not b_next!16347) (not b!907664) (not bm!40281) (not b!907574) (not d!112039) (not b!907586) (not b!907547) (not b!907659) tp_is_empty!18765 (not b!907633) (not b_lambda!13261) (not b!907640))
(check-sat b_and!26875 (not b_next!16347))
