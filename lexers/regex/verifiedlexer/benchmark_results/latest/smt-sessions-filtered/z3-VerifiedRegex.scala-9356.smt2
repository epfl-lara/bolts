; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496968 () Bool)

(assert start!496968)

(declare-fun b!4808395 () Bool)

(declare-fun b_free!130027 () Bool)

(declare-fun b_next!130817 () Bool)

(assert (=> b!4808395 (= b_free!130027 (not b_next!130817))))

(declare-fun tp!1359857 () Bool)

(declare-fun b_and!341799 () Bool)

(assert (=> b!4808395 (= tp!1359857 b_and!341799)))

(declare-fun b!4808400 () Bool)

(declare-fun b_free!130029 () Bool)

(declare-fun b_next!130819 () Bool)

(assert (=> b!4808400 (= b_free!130029 (not b_next!130819))))

(declare-fun tp!1359856 () Bool)

(declare-fun b_and!341801 () Bool)

(assert (=> b!4808400 (= tp!1359856 b_and!341801)))

(declare-fun b!4808389 () Bool)

(declare-fun res!2045516 () Bool)

(declare-fun e!3003463 () Bool)

(assert (=> b!4808389 (=> (not res!2045516) (not e!3003463))))

(declare-datatypes ((K!16069 0))(
  ( (K!16070 (val!21161 Int)) )
))
(declare-datatypes ((array!18446 0))(
  ( (array!18447 (arr!8227 (Array (_ BitVec 32) (_ BitVec 64))) (size!36473 (_ BitVec 32))) )
))
(declare-datatypes ((V!16315 0))(
  ( (V!16316 (val!21162 Int)) )
))
(declare-datatypes ((tuple2!57276 0))(
  ( (tuple2!57277 (_1!31932 K!16069) (_2!31932 V!16315)) )
))
(declare-datatypes ((List!54593 0))(
  ( (Nil!54469) (Cons!54469 (h!60901 tuple2!57276) (t!362061 List!54593)) )
))
(declare-datatypes ((array!18448 0))(
  ( (array!18449 (arr!8228 (Array (_ BitVec 32) List!54593)) (size!36474 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10042 0))(
  ( (LongMapFixedSize!10043 (defaultEntry!5439 Int) (mask!15002 (_ BitVec 32)) (extraKeys!5296 (_ BitVec 32)) (zeroValue!5309 List!54593) (minValue!5309 List!54593) (_size!10067 (_ BitVec 32)) (_keys!5363 array!18446) (_values!5334 array!18448) (_vacant!5086 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19849 0))(
  ( (Cell!19850 (v!48724 LongMapFixedSize!10042)) )
))
(declare-datatypes ((MutLongMap!5021 0))(
  ( (LongMap!5021 (underlying!10249 Cell!19849)) (MutLongMapExt!5020 (__x!33161 Int)) )
))
(declare-datatypes ((Hashable!7032 0))(
  ( (HashableExt!7031 (__x!33162 Int)) )
))
(declare-datatypes ((Cell!19851 0))(
  ( (Cell!19852 (v!48725 MutLongMap!5021)) )
))
(declare-datatypes ((MutableMap!4905 0))(
  ( (MutableMapExt!4904 (__x!33163 Int)) (HashMap!4905 (underlying!10250 Cell!19851) (hashF!13300 Hashable!7032) (_size!10068 (_ BitVec 32)) (defaultValue!5076 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4905)

(declare-fun valid!4039 (MutableMap!4905) Bool)

(assert (=> b!4808389 (= res!2045516 (valid!4039 thiss!41921))))

(declare-fun b!4808390 () Bool)

(declare-fun res!2045519 () Bool)

(declare-fun e!3003465 () Bool)

(assert (=> b!4808390 (=> (not res!2045519) (not e!3003465))))

(get-info :version)

(assert (=> b!4808390 (= res!2045519 ((_ is LongMap!5021) (v!48725 (underlying!10250 thiss!41921))))))

(declare-fun b!4808391 () Bool)

(declare-datatypes ((Unit!141396 0))(
  ( (Unit!141397) )
))
(declare-fun e!3003468 () Unit!141396)

(declare-fun Unit!141398 () Unit!141396)

(assert (=> b!4808391 (= e!3003468 Unit!141398)))

(declare-fun b!4808392 () Bool)

(declare-fun e!3003466 () Unit!141396)

(declare-fun Unit!141399 () Unit!141396)

(assert (=> b!4808392 (= e!3003466 Unit!141399)))

(declare-fun b!4808393 () Bool)

(declare-fun e!3003464 () Bool)

(declare-fun tp!1359852 () Bool)

(declare-fun mapRes!22214 () Bool)

(assert (=> b!4808393 (= e!3003464 (and tp!1359852 mapRes!22214))))

(declare-fun condMapEmpty!22214 () Bool)

(declare-fun mapDefault!22214 () List!54593)

(assert (=> b!4808393 (= condMapEmpty!22214 (= (arr!8228 (_values!5334 (v!48724 (underlying!10249 (v!48725 (underlying!10250 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54593)) mapDefault!22214)))))

(declare-fun b!4808394 () Bool)

(declare-fun e!3003461 () Bool)

(declare-fun e!3003469 () Bool)

(assert (=> b!4808394 (= e!3003461 e!3003469)))

(declare-fun tp!1359851 () Bool)

(declare-fun tp!1359855 () Bool)

(declare-fun e!3003467 () Bool)

(declare-fun array_inv!5933 (array!18446) Bool)

(declare-fun array_inv!5934 (array!18448) Bool)

(assert (=> b!4808395 (= e!3003467 (and tp!1359857 tp!1359851 tp!1359855 (array_inv!5933 (_keys!5363 (v!48724 (underlying!10249 (v!48725 (underlying!10250 thiss!41921)))))) (array_inv!5934 (_values!5334 (v!48724 (underlying!10249 (v!48725 (underlying!10250 thiss!41921)))))) e!3003464))))

(declare-fun res!2045517 () Bool)

(assert (=> start!496968 (=> (not res!2045517) (not e!3003463))))

(assert (=> start!496968 (= res!2045517 ((_ is HashMap!4905) thiss!41921))))

(assert (=> start!496968 e!3003463))

(declare-fun e!3003462 () Bool)

(assert (=> start!496968 e!3003462))

(declare-fun tp_is_empty!33905 () Bool)

(assert (=> start!496968 tp_is_empty!33905))

(declare-fun mapIsEmpty!22214 () Bool)

(assert (=> mapIsEmpty!22214 mapRes!22214))

(declare-fun b!4808396 () Bool)

(declare-fun res!2045515 () Bool)

(assert (=> b!4808396 (=> (not res!2045515) (not e!3003465))))

(declare-datatypes ((tuple2!57278 0))(
  ( (tuple2!57279 (_1!31933 (_ BitVec 64)) (_2!31933 List!54593)) )
))
(declare-datatypes ((List!54594 0))(
  ( (Nil!54470) (Cons!54470 (h!60902 tuple2!57278) (t!362062 List!54594)) )
))
(declare-datatypes ((ListLongMap!5545 0))(
  ( (ListLongMap!5546 (toList!7091 List!54594)) )
))
(declare-fun lt!1961127 () ListLongMap!5545)

(declare-fun lt!1961137 () (_ BitVec 64))

(declare-fun contains!18151 (ListLongMap!5545 (_ BitVec 64)) Bool)

(assert (=> b!4808396 (= res!2045515 (contains!18151 lt!1961127 lt!1961137))))

(declare-fun b!4808397 () Bool)

(declare-fun e!3003471 () Bool)

(declare-fun lt!1961128 () MutLongMap!5021)

(assert (=> b!4808397 (= e!3003471 (and e!3003461 ((_ is LongMap!5021) lt!1961128)))))

(assert (=> b!4808397 (= lt!1961128 (v!48725 (underlying!10250 thiss!41921)))))

(declare-fun b!4808398 () Bool)

(assert (=> b!4808398 (= e!3003469 e!3003467)))

(declare-fun b!4808399 () Bool)

(declare-fun valid!4040 (MutLongMap!5021) Bool)

(assert (=> b!4808399 (= e!3003465 (not (valid!4040 (v!48725 (underlying!10250 thiss!41921)))))))

(assert (=> b!4808400 (= e!3003462 (and e!3003471 tp!1359856))))

(declare-fun mapNonEmpty!22214 () Bool)

(declare-fun tp!1359853 () Bool)

(declare-fun tp!1359854 () Bool)

(assert (=> mapNonEmpty!22214 (= mapRes!22214 (and tp!1359853 tp!1359854))))

(declare-fun mapRest!22214 () (Array (_ BitVec 32) List!54593))

(declare-fun mapKey!22214 () (_ BitVec 32))

(declare-fun mapValue!22214 () List!54593)

(assert (=> mapNonEmpty!22214 (= (arr!8228 (_values!5334 (v!48724 (underlying!10249 (v!48725 (underlying!10250 thiss!41921)))))) (store mapRest!22214 mapKey!22214 mapValue!22214))))

(declare-fun lt!1961130 () ListLongMap!5545)

(declare-fun lt!1961135 () tuple2!57278)

(declare-fun b!4808401 () Bool)

(declare-fun lambda!233586 () Int)

(declare-fun forallContained!4249 (List!54594 Int tuple2!57278) Unit!141396)

(assert (=> b!4808401 (= e!3003468 (forallContained!4249 (toList!7091 lt!1961130) lambda!233586 lt!1961135))))

(declare-fun map!12367 (MutLongMap!5021) ListLongMap!5545)

(assert (=> b!4808401 (= lt!1961130 (map!12367 (v!48725 (underlying!10250 thiss!41921))))))

(declare-fun lt!1961132 () List!54593)

(declare-fun apply!13105 (MutLongMap!5021 (_ BitVec 64)) List!54593)

(assert (=> b!4808401 (= lt!1961132 (apply!13105 (v!48725 (underlying!10250 thiss!41921)) lt!1961137))))

(assert (=> b!4808401 (= lt!1961135 (tuple2!57279 lt!1961137 lt!1961132))))

(declare-fun c!819521 () Bool)

(declare-fun contains!18152 (List!54594 tuple2!57278) Bool)

(assert (=> b!4808401 (= c!819521 (not (contains!18152 (toList!7091 lt!1961130) lt!1961135)))))

(declare-fun lt!1961131 () Unit!141396)

(assert (=> b!4808401 (= lt!1961131 e!3003466)))

(declare-fun b!4808402 () Bool)

(assert (=> b!4808402 false))

(declare-fun lt!1961134 () Unit!141396)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!977 (List!54594 (_ BitVec 64) List!54593) Unit!141396)

(assert (=> b!4808402 (= lt!1961134 (lemmaGetValueByKeyImpliesContainsTuple!977 (toList!7091 lt!1961130) lt!1961137 lt!1961132))))

(declare-datatypes ((Option!13263 0))(
  ( (None!13262) (Some!13262 (v!48726 List!54593)) )
))
(declare-fun isDefined!10402 (Option!13263) Bool)

(declare-fun getValueByKey!2460 (List!54594 (_ BitVec 64)) Option!13263)

(assert (=> b!4808402 (isDefined!10402 (getValueByKey!2460 (toList!7091 lt!1961130) lt!1961137))))

(declare-fun lt!1961129 () Unit!141396)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2248 (List!54594 (_ BitVec 64)) Unit!141396)

(assert (=> b!4808402 (= lt!1961129 (lemmaContainsKeyImpliesGetValueByKeyDefined!2248 (toList!7091 lt!1961130) lt!1961137))))

(declare-fun containsKey!4115 (List!54594 (_ BitVec 64)) Bool)

(assert (=> b!4808402 (containsKey!4115 (toList!7091 lt!1961130) lt!1961137)))

(declare-fun lt!1961136 () Unit!141396)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!248 (List!54594 (_ BitVec 64)) Unit!141396)

(assert (=> b!4808402 (= lt!1961136 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!248 (toList!7091 lt!1961130) lt!1961137))))

(declare-fun Unit!141400 () Unit!141396)

(assert (=> b!4808402 (= e!3003466 Unit!141400)))

(declare-fun b!4808403 () Bool)

(assert (=> b!4808403 (= e!3003463 e!3003465)))

(declare-fun res!2045518 () Bool)

(assert (=> b!4808403 (=> (not res!2045518) (not e!3003465))))

(declare-fun key!1652 () K!16069)

(declare-datatypes ((ListMap!6531 0))(
  ( (ListMap!6532 (toList!7092 List!54593)) )
))
(declare-fun contains!18153 (ListMap!6531 K!16069) Bool)

(declare-fun extractMap!2517 (List!54594) ListMap!6531)

(assert (=> b!4808403 (= res!2045518 (not (contains!18153 (extractMap!2517 (toList!7091 lt!1961127)) key!1652)))))

(assert (=> b!4808403 (= lt!1961127 (map!12367 (v!48725 (underlying!10250 thiss!41921))))))

(declare-fun lt!1961133 () Unit!141396)

(assert (=> b!4808403 (= lt!1961133 e!3003468)))

(declare-fun c!819522 () Bool)

(declare-fun contains!18154 (MutLongMap!5021 (_ BitVec 64)) Bool)

(assert (=> b!4808403 (= c!819522 (contains!18154 (v!48725 (underlying!10250 thiss!41921)) lt!1961137))))

(declare-fun hash!5100 (Hashable!7032 K!16069) (_ BitVec 64))

(assert (=> b!4808403 (= lt!1961137 (hash!5100 (hashF!13300 thiss!41921) key!1652))))

(assert (= (and start!496968 res!2045517) b!4808389))

(assert (= (and b!4808389 res!2045516) b!4808403))

(assert (= (and b!4808403 c!819522) b!4808401))

(assert (= (and b!4808403 (not c!819522)) b!4808391))

(assert (= (and b!4808401 c!819521) b!4808402))

(assert (= (and b!4808401 (not c!819521)) b!4808392))

(assert (= (and b!4808403 res!2045518) b!4808396))

(assert (= (and b!4808396 res!2045515) b!4808390))

(assert (= (and b!4808390 res!2045519) b!4808399))

(assert (= (and b!4808393 condMapEmpty!22214) mapIsEmpty!22214))

(assert (= (and b!4808393 (not condMapEmpty!22214)) mapNonEmpty!22214))

(assert (= b!4808395 b!4808393))

(assert (= b!4808398 b!4808395))

(assert (= b!4808394 b!4808398))

(assert (= (and b!4808397 ((_ is LongMap!5021) (v!48725 (underlying!10250 thiss!41921)))) b!4808394))

(assert (= b!4808400 b!4808397))

(assert (= (and start!496968 ((_ is HashMap!4905) thiss!41921)) b!4808400))

(declare-fun m!5794480 () Bool)

(assert (=> b!4808403 m!5794480))

(declare-fun m!5794482 () Bool)

(assert (=> b!4808403 m!5794482))

(declare-fun m!5794484 () Bool)

(assert (=> b!4808403 m!5794484))

(declare-fun m!5794486 () Bool)

(assert (=> b!4808403 m!5794486))

(assert (=> b!4808403 m!5794480))

(declare-fun m!5794488 () Bool)

(assert (=> b!4808403 m!5794488))

(declare-fun m!5794490 () Bool)

(assert (=> b!4808402 m!5794490))

(declare-fun m!5794492 () Bool)

(assert (=> b!4808402 m!5794492))

(declare-fun m!5794494 () Bool)

(assert (=> b!4808402 m!5794494))

(declare-fun m!5794496 () Bool)

(assert (=> b!4808402 m!5794496))

(assert (=> b!4808402 m!5794494))

(declare-fun m!5794498 () Bool)

(assert (=> b!4808402 m!5794498))

(declare-fun m!5794500 () Bool)

(assert (=> b!4808402 m!5794500))

(declare-fun m!5794502 () Bool)

(assert (=> b!4808389 m!5794502))

(declare-fun m!5794504 () Bool)

(assert (=> mapNonEmpty!22214 m!5794504))

(declare-fun m!5794506 () Bool)

(assert (=> b!4808401 m!5794506))

(assert (=> b!4808401 m!5794484))

(declare-fun m!5794508 () Bool)

(assert (=> b!4808401 m!5794508))

(declare-fun m!5794510 () Bool)

(assert (=> b!4808401 m!5794510))

(declare-fun m!5794512 () Bool)

(assert (=> b!4808395 m!5794512))

(declare-fun m!5794514 () Bool)

(assert (=> b!4808395 m!5794514))

(declare-fun m!5794516 () Bool)

(assert (=> b!4808399 m!5794516))

(declare-fun m!5794518 () Bool)

(assert (=> b!4808396 m!5794518))

(check-sat b_and!341799 (not b_next!130819) (not b!4808389) (not b!4808403) tp_is_empty!33905 (not b!4808393) (not b!4808395) (not b!4808396) (not b!4808402) (not b!4808399) (not mapNonEmpty!22214) b_and!341801 (not b_next!130817) (not b!4808401))
(check-sat b_and!341799 b_and!341801 (not b_next!130817) (not b_next!130819))
(get-model)

(declare-fun d!1540035 () Bool)

(declare-fun e!3003477 () Bool)

(assert (=> d!1540035 e!3003477))

(declare-fun res!2045522 () Bool)

(assert (=> d!1540035 (=> res!2045522 e!3003477)))

(declare-fun lt!1961146 () Bool)

(assert (=> d!1540035 (= res!2045522 (not lt!1961146))))

(declare-fun lt!1961148 () Bool)

(assert (=> d!1540035 (= lt!1961146 lt!1961148)))

(declare-fun lt!1961147 () Unit!141396)

(declare-fun e!3003476 () Unit!141396)

(assert (=> d!1540035 (= lt!1961147 e!3003476)))

(declare-fun c!819525 () Bool)

(assert (=> d!1540035 (= c!819525 lt!1961148)))

(assert (=> d!1540035 (= lt!1961148 (containsKey!4115 (toList!7091 lt!1961127) lt!1961137))))

(assert (=> d!1540035 (= (contains!18151 lt!1961127 lt!1961137) lt!1961146)))

(declare-fun b!4808410 () Bool)

(declare-fun lt!1961149 () Unit!141396)

(assert (=> b!4808410 (= e!3003476 lt!1961149)))

(assert (=> b!4808410 (= lt!1961149 (lemmaContainsKeyImpliesGetValueByKeyDefined!2248 (toList!7091 lt!1961127) lt!1961137))))

(assert (=> b!4808410 (isDefined!10402 (getValueByKey!2460 (toList!7091 lt!1961127) lt!1961137))))

(declare-fun b!4808411 () Bool)

(declare-fun Unit!141401 () Unit!141396)

(assert (=> b!4808411 (= e!3003476 Unit!141401)))

(declare-fun b!4808412 () Bool)

(assert (=> b!4808412 (= e!3003477 (isDefined!10402 (getValueByKey!2460 (toList!7091 lt!1961127) lt!1961137)))))

(assert (= (and d!1540035 c!819525) b!4808410))

(assert (= (and d!1540035 (not c!819525)) b!4808411))

(assert (= (and d!1540035 (not res!2045522)) b!4808412))

(declare-fun m!5794520 () Bool)

(assert (=> d!1540035 m!5794520))

(declare-fun m!5794522 () Bool)

(assert (=> b!4808410 m!5794522))

(declare-fun m!5794524 () Bool)

(assert (=> b!4808410 m!5794524))

(assert (=> b!4808410 m!5794524))

(declare-fun m!5794526 () Bool)

(assert (=> b!4808410 m!5794526))

(assert (=> b!4808412 m!5794524))

(assert (=> b!4808412 m!5794524))

(assert (=> b!4808412 m!5794526))

(assert (=> b!4808396 d!1540035))

(declare-fun b!4808421 () Bool)

(declare-fun e!3003482 () Option!13263)

(assert (=> b!4808421 (= e!3003482 (Some!13262 (_2!31933 (h!60902 (toList!7091 lt!1961130)))))))

(declare-fun b!4808423 () Bool)

(declare-fun e!3003483 () Option!13263)

(assert (=> b!4808423 (= e!3003483 (getValueByKey!2460 (t!362062 (toList!7091 lt!1961130)) lt!1961137))))

(declare-fun b!4808424 () Bool)

(assert (=> b!4808424 (= e!3003483 None!13262)))

(declare-fun d!1540037 () Bool)

(declare-fun c!819530 () Bool)

(assert (=> d!1540037 (= c!819530 (and ((_ is Cons!54470) (toList!7091 lt!1961130)) (= (_1!31933 (h!60902 (toList!7091 lt!1961130))) lt!1961137)))))

(assert (=> d!1540037 (= (getValueByKey!2460 (toList!7091 lt!1961130) lt!1961137) e!3003482)))

(declare-fun b!4808422 () Bool)

(assert (=> b!4808422 (= e!3003482 e!3003483)))

(declare-fun c!819531 () Bool)

(assert (=> b!4808422 (= c!819531 (and ((_ is Cons!54470) (toList!7091 lt!1961130)) (not (= (_1!31933 (h!60902 (toList!7091 lt!1961130))) lt!1961137))))))

(assert (= (and d!1540037 c!819530) b!4808421))

(assert (= (and d!1540037 (not c!819530)) b!4808422))

(assert (= (and b!4808422 c!819531) b!4808423))

(assert (= (and b!4808422 (not c!819531)) b!4808424))

(declare-fun m!5794528 () Bool)

(assert (=> b!4808423 m!5794528))

(assert (=> b!4808402 d!1540037))

(declare-fun d!1540039 () Bool)

(assert (=> d!1540039 (isDefined!10402 (getValueByKey!2460 (toList!7091 lt!1961130) lt!1961137))))

(declare-fun lt!1961152 () Unit!141396)

(declare-fun choose!34824 (List!54594 (_ BitVec 64)) Unit!141396)

(assert (=> d!1540039 (= lt!1961152 (choose!34824 (toList!7091 lt!1961130) lt!1961137))))

(declare-fun e!3003486 () Bool)

(assert (=> d!1540039 e!3003486))

(declare-fun res!2045525 () Bool)

(assert (=> d!1540039 (=> (not res!2045525) (not e!3003486))))

(declare-fun isStrictlySorted!923 (List!54594) Bool)

(assert (=> d!1540039 (= res!2045525 (isStrictlySorted!923 (toList!7091 lt!1961130)))))

(assert (=> d!1540039 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2248 (toList!7091 lt!1961130) lt!1961137) lt!1961152)))

(declare-fun b!4808427 () Bool)

(assert (=> b!4808427 (= e!3003486 (containsKey!4115 (toList!7091 lt!1961130) lt!1961137))))

(assert (= (and d!1540039 res!2045525) b!4808427))

(assert (=> d!1540039 m!5794494))

(assert (=> d!1540039 m!5794494))

(assert (=> d!1540039 m!5794496))

(declare-fun m!5794530 () Bool)

(assert (=> d!1540039 m!5794530))

(declare-fun m!5794532 () Bool)

(assert (=> d!1540039 m!5794532))

(assert (=> b!4808427 m!5794498))

(assert (=> b!4808402 d!1540039))

(declare-fun d!1540041 () Bool)

(assert (=> d!1540041 (contains!18152 (toList!7091 lt!1961130) (tuple2!57279 lt!1961137 lt!1961132))))

(declare-fun lt!1961155 () Unit!141396)

(declare-fun choose!34825 (List!54594 (_ BitVec 64) List!54593) Unit!141396)

(assert (=> d!1540041 (= lt!1961155 (choose!34825 (toList!7091 lt!1961130) lt!1961137 lt!1961132))))

(declare-fun e!3003489 () Bool)

(assert (=> d!1540041 e!3003489))

(declare-fun res!2045528 () Bool)

(assert (=> d!1540041 (=> (not res!2045528) (not e!3003489))))

(assert (=> d!1540041 (= res!2045528 (isStrictlySorted!923 (toList!7091 lt!1961130)))))

(assert (=> d!1540041 (= (lemmaGetValueByKeyImpliesContainsTuple!977 (toList!7091 lt!1961130) lt!1961137 lt!1961132) lt!1961155)))

(declare-fun b!4808430 () Bool)

(assert (=> b!4808430 (= e!3003489 (= (getValueByKey!2460 (toList!7091 lt!1961130) lt!1961137) (Some!13262 lt!1961132)))))

(assert (= (and d!1540041 res!2045528) b!4808430))

(declare-fun m!5794534 () Bool)

(assert (=> d!1540041 m!5794534))

(declare-fun m!5794536 () Bool)

(assert (=> d!1540041 m!5794536))

(assert (=> d!1540041 m!5794532))

(assert (=> b!4808430 m!5794494))

(assert (=> b!4808402 d!1540041))

(declare-fun d!1540043 () Bool)

(declare-fun res!2045533 () Bool)

(declare-fun e!3003494 () Bool)

(assert (=> d!1540043 (=> res!2045533 e!3003494)))

(assert (=> d!1540043 (= res!2045533 (and ((_ is Cons!54470) (toList!7091 lt!1961130)) (= (_1!31933 (h!60902 (toList!7091 lt!1961130))) lt!1961137)))))

(assert (=> d!1540043 (= (containsKey!4115 (toList!7091 lt!1961130) lt!1961137) e!3003494)))

(declare-fun b!4808435 () Bool)

(declare-fun e!3003495 () Bool)

(assert (=> b!4808435 (= e!3003494 e!3003495)))

(declare-fun res!2045534 () Bool)

(assert (=> b!4808435 (=> (not res!2045534) (not e!3003495))))

(assert (=> b!4808435 (= res!2045534 (and (or (not ((_ is Cons!54470) (toList!7091 lt!1961130))) (bvsle (_1!31933 (h!60902 (toList!7091 lt!1961130))) lt!1961137)) ((_ is Cons!54470) (toList!7091 lt!1961130)) (bvslt (_1!31933 (h!60902 (toList!7091 lt!1961130))) lt!1961137)))))

(declare-fun b!4808436 () Bool)

(assert (=> b!4808436 (= e!3003495 (containsKey!4115 (t!362062 (toList!7091 lt!1961130)) lt!1961137))))

(assert (= (and d!1540043 (not res!2045533)) b!4808435))

(assert (= (and b!4808435 res!2045534) b!4808436))

(declare-fun m!5794538 () Bool)

(assert (=> b!4808436 m!5794538))

(assert (=> b!4808402 d!1540043))

(declare-fun d!1540045 () Bool)

(declare-fun isEmpty!29541 (Option!13263) Bool)

(assert (=> d!1540045 (= (isDefined!10402 (getValueByKey!2460 (toList!7091 lt!1961130) lt!1961137)) (not (isEmpty!29541 (getValueByKey!2460 (toList!7091 lt!1961130) lt!1961137))))))

(declare-fun bs!1159972 () Bool)

(assert (= bs!1159972 d!1540045))

(assert (=> bs!1159972 m!5794494))

(declare-fun m!5794540 () Bool)

(assert (=> bs!1159972 m!5794540))

(assert (=> b!4808402 d!1540045))

(declare-fun d!1540047 () Bool)

(assert (=> d!1540047 (containsKey!4115 (toList!7091 lt!1961130) lt!1961137)))

(declare-fun lt!1961158 () Unit!141396)

(declare-fun choose!34826 (List!54594 (_ BitVec 64)) Unit!141396)

(assert (=> d!1540047 (= lt!1961158 (choose!34826 (toList!7091 lt!1961130) lt!1961137))))

(declare-fun e!3003498 () Bool)

(assert (=> d!1540047 e!3003498))

(declare-fun res!2045537 () Bool)

(assert (=> d!1540047 (=> (not res!2045537) (not e!3003498))))

(assert (=> d!1540047 (= res!2045537 (isStrictlySorted!923 (toList!7091 lt!1961130)))))

(assert (=> d!1540047 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!248 (toList!7091 lt!1961130) lt!1961137) lt!1961158)))

(declare-fun b!4808439 () Bool)

(assert (=> b!4808439 (= e!3003498 (isDefined!10402 (getValueByKey!2460 (toList!7091 lt!1961130) lt!1961137)))))

(assert (= (and d!1540047 res!2045537) b!4808439))

(assert (=> d!1540047 m!5794498))

(declare-fun m!5794542 () Bool)

(assert (=> d!1540047 m!5794542))

(assert (=> d!1540047 m!5794532))

(assert (=> b!4808439 m!5794494))

(assert (=> b!4808439 m!5794494))

(assert (=> b!4808439 m!5794496))

(assert (=> b!4808402 d!1540047))

(declare-fun d!1540049 () Bool)

(declare-fun dynLambda!22124 (Int tuple2!57278) Bool)

(assert (=> d!1540049 (dynLambda!22124 lambda!233586 lt!1961135)))

(declare-fun lt!1961161 () Unit!141396)

(declare-fun choose!34827 (List!54594 Int tuple2!57278) Unit!141396)

(assert (=> d!1540049 (= lt!1961161 (choose!34827 (toList!7091 lt!1961130) lambda!233586 lt!1961135))))

(declare-fun e!3003501 () Bool)

(assert (=> d!1540049 e!3003501))

(declare-fun res!2045540 () Bool)

(assert (=> d!1540049 (=> (not res!2045540) (not e!3003501))))

(declare-fun forall!12382 (List!54594 Int) Bool)

(assert (=> d!1540049 (= res!2045540 (forall!12382 (toList!7091 lt!1961130) lambda!233586))))

(assert (=> d!1540049 (= (forallContained!4249 (toList!7091 lt!1961130) lambda!233586 lt!1961135) lt!1961161)))

(declare-fun b!4808442 () Bool)

(assert (=> b!4808442 (= e!3003501 (contains!18152 (toList!7091 lt!1961130) lt!1961135))))

(assert (= (and d!1540049 res!2045540) b!4808442))

(declare-fun b_lambda!188165 () Bool)

(assert (=> (not b_lambda!188165) (not d!1540049)))

(declare-fun m!5794544 () Bool)

(assert (=> d!1540049 m!5794544))

(declare-fun m!5794546 () Bool)

(assert (=> d!1540049 m!5794546))

(declare-fun m!5794548 () Bool)

(assert (=> d!1540049 m!5794548))

(assert (=> b!4808442 m!5794510))

(assert (=> b!4808401 d!1540049))

(declare-fun d!1540051 () Bool)

(declare-fun map!12368 (LongMapFixedSize!10042) ListLongMap!5545)

(assert (=> d!1540051 (= (map!12367 (v!48725 (underlying!10250 thiss!41921))) (map!12368 (v!48724 (underlying!10249 (v!48725 (underlying!10250 thiss!41921))))))))

(declare-fun bs!1159973 () Bool)

(assert (= bs!1159973 d!1540051))

(declare-fun m!5794550 () Bool)

(assert (=> bs!1159973 m!5794550))

(assert (=> b!4808401 d!1540051))

(declare-fun d!1540053 () Bool)

(declare-fun e!3003504 () Bool)

(assert (=> d!1540053 e!3003504))

(declare-fun c!819534 () Bool)

(assert (=> d!1540053 (= c!819534 (contains!18154 (v!48725 (underlying!10250 thiss!41921)) lt!1961137))))

(declare-fun lt!1961164 () List!54593)

(declare-fun apply!13106 (LongMapFixedSize!10042 (_ BitVec 64)) List!54593)

(assert (=> d!1540053 (= lt!1961164 (apply!13106 (v!48724 (underlying!10249 (v!48725 (underlying!10250 thiss!41921)))) lt!1961137))))

(assert (=> d!1540053 (valid!4040 (v!48725 (underlying!10250 thiss!41921)))))

(assert (=> d!1540053 (= (apply!13105 (v!48725 (underlying!10250 thiss!41921)) lt!1961137) lt!1961164)))

(declare-fun b!4808447 () Bool)

(declare-fun get!18632 (Option!13263) List!54593)

(assert (=> b!4808447 (= e!3003504 (= lt!1961164 (get!18632 (getValueByKey!2460 (toList!7091 (map!12367 (v!48725 (underlying!10250 thiss!41921)))) lt!1961137))))))

(declare-fun b!4808448 () Bool)

(declare-fun dynLambda!22125 (Int (_ BitVec 64)) List!54593)

(assert (=> b!4808448 (= e!3003504 (= lt!1961164 (dynLambda!22125 (defaultEntry!5439 (v!48724 (underlying!10249 (v!48725 (underlying!10250 thiss!41921))))) lt!1961137)))))

(assert (=> b!4808448 ((_ is LongMap!5021) (v!48725 (underlying!10250 thiss!41921)))))

(assert (= (and d!1540053 c!819534) b!4808447))

(assert (= (and d!1540053 (not c!819534)) b!4808448))

(declare-fun b_lambda!188167 () Bool)

(assert (=> (not b_lambda!188167) (not b!4808448)))

(declare-fun t!362064 () Bool)

(declare-fun tb!257521 () Bool)

(assert (=> (and b!4808395 (= (defaultEntry!5439 (v!48724 (underlying!10249 (v!48725 (underlying!10250 thiss!41921))))) (defaultEntry!5439 (v!48724 (underlying!10249 (v!48725 (underlying!10250 thiss!41921)))))) t!362064) tb!257521))

(assert (=> b!4808448 t!362064))

(declare-fun result!319576 () Bool)

(declare-fun b_and!341803 () Bool)

(assert (= b_and!341799 (and (=> t!362064 result!319576) b_and!341803)))

(assert (=> d!1540053 m!5794486))

(declare-fun m!5794552 () Bool)

(assert (=> d!1540053 m!5794552))

(assert (=> d!1540053 m!5794516))

(assert (=> b!4808447 m!5794484))

(declare-fun m!5794554 () Bool)

(assert (=> b!4808447 m!5794554))

(assert (=> b!4808447 m!5794554))

(declare-fun m!5794556 () Bool)

(assert (=> b!4808447 m!5794556))

(declare-fun m!5794558 () Bool)

(assert (=> b!4808448 m!5794558))

(assert (=> b!4808401 d!1540053))

(declare-fun d!1540055 () Bool)

(declare-fun lt!1961167 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9770 (List!54594) (InoxSet tuple2!57278))

(assert (=> d!1540055 (= lt!1961167 (select (content!9770 (toList!7091 lt!1961130)) lt!1961135))))

(declare-fun e!3003510 () Bool)

(assert (=> d!1540055 (= lt!1961167 e!3003510)))

(declare-fun res!2045546 () Bool)

(assert (=> d!1540055 (=> (not res!2045546) (not e!3003510))))

(assert (=> d!1540055 (= res!2045546 ((_ is Cons!54470) (toList!7091 lt!1961130)))))

(assert (=> d!1540055 (= (contains!18152 (toList!7091 lt!1961130) lt!1961135) lt!1961167)))

(declare-fun b!4808453 () Bool)

(declare-fun e!3003509 () Bool)

(assert (=> b!4808453 (= e!3003510 e!3003509)))

(declare-fun res!2045545 () Bool)

(assert (=> b!4808453 (=> res!2045545 e!3003509)))

(assert (=> b!4808453 (= res!2045545 (= (h!60902 (toList!7091 lt!1961130)) lt!1961135))))

(declare-fun b!4808454 () Bool)

(assert (=> b!4808454 (= e!3003509 (contains!18152 (t!362062 (toList!7091 lt!1961130)) lt!1961135))))

(assert (= (and d!1540055 res!2045546) b!4808453))

(assert (= (and b!4808453 (not res!2045545)) b!4808454))

(declare-fun m!5794560 () Bool)

(assert (=> d!1540055 m!5794560))

(declare-fun m!5794562 () Bool)

(assert (=> d!1540055 m!5794562))

(declare-fun m!5794564 () Bool)

(assert (=> b!4808454 m!5794564))

(assert (=> b!4808401 d!1540055))

(declare-fun d!1540057 () Bool)

(declare-fun valid!4041 (LongMapFixedSize!10042) Bool)

(assert (=> d!1540057 (= (valid!4040 (v!48725 (underlying!10250 thiss!41921))) (valid!4041 (v!48724 (underlying!10249 (v!48725 (underlying!10250 thiss!41921))))))))

(declare-fun bs!1159974 () Bool)

(assert (= bs!1159974 d!1540057))

(declare-fun m!5794566 () Bool)

(assert (=> bs!1159974 m!5794566))

(assert (=> b!4808399 d!1540057))

(declare-fun d!1540059 () Bool)

(declare-fun lt!1961170 () Bool)

(assert (=> d!1540059 (= lt!1961170 (contains!18151 (map!12367 (v!48725 (underlying!10250 thiss!41921))) lt!1961137))))

(declare-fun contains!18155 (LongMapFixedSize!10042 (_ BitVec 64)) Bool)

(assert (=> d!1540059 (= lt!1961170 (contains!18155 (v!48724 (underlying!10249 (v!48725 (underlying!10250 thiss!41921)))) lt!1961137))))

(assert (=> d!1540059 (valid!4040 (v!48725 (underlying!10250 thiss!41921)))))

(assert (=> d!1540059 (= (contains!18154 (v!48725 (underlying!10250 thiss!41921)) lt!1961137) lt!1961170)))

(declare-fun bs!1159975 () Bool)

(assert (= bs!1159975 d!1540059))

(assert (=> bs!1159975 m!5794484))

(assert (=> bs!1159975 m!5794484))

(declare-fun m!5794568 () Bool)

(assert (=> bs!1159975 m!5794568))

(declare-fun m!5794570 () Bool)

(assert (=> bs!1159975 m!5794570))

(assert (=> bs!1159975 m!5794516))

(assert (=> b!4808403 d!1540059))

(declare-fun d!1540061 () Bool)

(declare-fun hash!5101 (Hashable!7032 K!16069) (_ BitVec 64))

(assert (=> d!1540061 (= (hash!5100 (hashF!13300 thiss!41921) key!1652) (hash!5101 (hashF!13300 thiss!41921) key!1652))))

(declare-fun bs!1159976 () Bool)

(assert (= bs!1159976 d!1540061))

(declare-fun m!5794572 () Bool)

(assert (=> bs!1159976 m!5794572))

(assert (=> b!4808403 d!1540061))

(assert (=> b!4808403 d!1540051))

(declare-fun bs!1159977 () Bool)

(declare-fun d!1540063 () Bool)

(assert (= bs!1159977 (and d!1540063 b!4808401)))

(declare-fun lambda!233589 () Int)

(assert (=> bs!1159977 (= lambda!233589 lambda!233586)))

(declare-fun lt!1961173 () ListMap!6531)

(declare-fun invariantList!1770 (List!54593) Bool)

(assert (=> d!1540063 (invariantList!1770 (toList!7092 lt!1961173))))

(declare-fun e!3003513 () ListMap!6531)

(assert (=> d!1540063 (= lt!1961173 e!3003513)))

(declare-fun c!819537 () Bool)

(assert (=> d!1540063 (= c!819537 ((_ is Cons!54470) (toList!7091 lt!1961127)))))

(assert (=> d!1540063 (forall!12382 (toList!7091 lt!1961127) lambda!233589)))

(assert (=> d!1540063 (= (extractMap!2517 (toList!7091 lt!1961127)) lt!1961173)))

(declare-fun b!4808459 () Bool)

(declare-fun addToMapMapFromBucket!1747 (List!54593 ListMap!6531) ListMap!6531)

(assert (=> b!4808459 (= e!3003513 (addToMapMapFromBucket!1747 (_2!31933 (h!60902 (toList!7091 lt!1961127))) (extractMap!2517 (t!362062 (toList!7091 lt!1961127)))))))

(declare-fun b!4808460 () Bool)

(assert (=> b!4808460 (= e!3003513 (ListMap!6532 Nil!54469))))

(assert (= (and d!1540063 c!819537) b!4808459))

(assert (= (and d!1540063 (not c!819537)) b!4808460))

(declare-fun m!5794574 () Bool)

(assert (=> d!1540063 m!5794574))

(declare-fun m!5794576 () Bool)

(assert (=> d!1540063 m!5794576))

(declare-fun m!5794578 () Bool)

(assert (=> b!4808459 m!5794578))

(assert (=> b!4808459 m!5794578))

(declare-fun m!5794580 () Bool)

(assert (=> b!4808459 m!5794580))

(assert (=> b!4808403 d!1540063))

(declare-fun b!4808479 () Bool)

(assert (=> b!4808479 false))

(declare-fun lt!1961191 () Unit!141396)

(declare-fun lt!1961196 () Unit!141396)

(assert (=> b!4808479 (= lt!1961191 lt!1961196)))

(declare-fun containsKey!4116 (List!54593 K!16069) Bool)

(assert (=> b!4808479 (containsKey!4116 (toList!7092 (extractMap!2517 (toList!7091 lt!1961127))) key!1652)))

(declare-fun lemmaInGetKeysListThenContainsKey!1116 (List!54593 K!16069) Unit!141396)

(assert (=> b!4808479 (= lt!1961196 (lemmaInGetKeysListThenContainsKey!1116 (toList!7092 (extractMap!2517 (toList!7091 lt!1961127))) key!1652))))

(declare-fun e!3003528 () Unit!141396)

(declare-fun Unit!141402 () Unit!141396)

(assert (=> b!4808479 (= e!3003528 Unit!141402)))

(declare-fun b!4808480 () Bool)

(declare-datatypes ((List!54595 0))(
  ( (Nil!54471) (Cons!54471 (h!60903 K!16069) (t!362065 List!54595)) )
))
(declare-fun e!3003529 () List!54595)

(declare-fun keys!19947 (ListMap!6531) List!54595)

(assert (=> b!4808480 (= e!3003529 (keys!19947 (extractMap!2517 (toList!7091 lt!1961127))))))

(declare-fun b!4808481 () Bool)

(declare-fun e!3003526 () Unit!141396)

(declare-fun lt!1961197 () Unit!141396)

(assert (=> b!4808481 (= e!3003526 lt!1961197)))

(declare-fun lt!1961190 () Unit!141396)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2249 (List!54593 K!16069) Unit!141396)

(assert (=> b!4808481 (= lt!1961190 (lemmaContainsKeyImpliesGetValueByKeyDefined!2249 (toList!7092 (extractMap!2517 (toList!7091 lt!1961127))) key!1652))))

(declare-datatypes ((Option!13264 0))(
  ( (None!13263) (Some!13263 (v!48729 V!16315)) )
))
(declare-fun isDefined!10403 (Option!13264) Bool)

(declare-fun getValueByKey!2461 (List!54593 K!16069) Option!13264)

(assert (=> b!4808481 (isDefined!10403 (getValueByKey!2461 (toList!7092 (extractMap!2517 (toList!7091 lt!1961127))) key!1652))))

(declare-fun lt!1961192 () Unit!141396)

(assert (=> b!4808481 (= lt!1961192 lt!1961190)))

(declare-fun lemmaInListThenGetKeysListContains!1111 (List!54593 K!16069) Unit!141396)

(assert (=> b!4808481 (= lt!1961197 (lemmaInListThenGetKeysListContains!1111 (toList!7092 (extractMap!2517 (toList!7091 lt!1961127))) key!1652))))

(declare-fun call!335607 () Bool)

(assert (=> b!4808481 call!335607))

(declare-fun b!4808483 () Bool)

(declare-fun e!3003530 () Bool)

(declare-fun contains!18156 (List!54595 K!16069) Bool)

(assert (=> b!4808483 (= e!3003530 (contains!18156 (keys!19947 (extractMap!2517 (toList!7091 lt!1961127))) key!1652))))

(declare-fun b!4808484 () Bool)

(declare-fun getKeysList!1116 (List!54593) List!54595)

(assert (=> b!4808484 (= e!3003529 (getKeysList!1116 (toList!7092 (extractMap!2517 (toList!7091 lt!1961127)))))))

(declare-fun b!4808485 () Bool)

(assert (=> b!4808485 (= e!3003526 e!3003528)))

(declare-fun c!819544 () Bool)

(assert (=> b!4808485 (= c!819544 call!335607)))

(declare-fun b!4808486 () Bool)

(declare-fun e!3003527 () Bool)

(assert (=> b!4808486 (= e!3003527 e!3003530)))

(declare-fun res!2045554 () Bool)

(assert (=> b!4808486 (=> (not res!2045554) (not e!3003530))))

(assert (=> b!4808486 (= res!2045554 (isDefined!10403 (getValueByKey!2461 (toList!7092 (extractMap!2517 (toList!7091 lt!1961127))) key!1652)))))

(declare-fun b!4808487 () Bool)

(declare-fun e!3003531 () Bool)

(assert (=> b!4808487 (= e!3003531 (not (contains!18156 (keys!19947 (extractMap!2517 (toList!7091 lt!1961127))) key!1652)))))

(declare-fun bm!335602 () Bool)

(assert (=> bm!335602 (= call!335607 (contains!18156 e!3003529 key!1652))))

(declare-fun c!819546 () Bool)

(declare-fun c!819545 () Bool)

(assert (=> bm!335602 (= c!819546 c!819545)))

(declare-fun b!4808482 () Bool)

(declare-fun Unit!141403 () Unit!141396)

(assert (=> b!4808482 (= e!3003528 Unit!141403)))

(declare-fun d!1540065 () Bool)

(assert (=> d!1540065 e!3003527))

(declare-fun res!2045553 () Bool)

(assert (=> d!1540065 (=> res!2045553 e!3003527)))

(assert (=> d!1540065 (= res!2045553 e!3003531)))

(declare-fun res!2045555 () Bool)

(assert (=> d!1540065 (=> (not res!2045555) (not e!3003531))))

(declare-fun lt!1961194 () Bool)

(assert (=> d!1540065 (= res!2045555 (not lt!1961194))))

(declare-fun lt!1961193 () Bool)

(assert (=> d!1540065 (= lt!1961194 lt!1961193)))

(declare-fun lt!1961195 () Unit!141396)

(assert (=> d!1540065 (= lt!1961195 e!3003526)))

(assert (=> d!1540065 (= c!819545 lt!1961193)))

(assert (=> d!1540065 (= lt!1961193 (containsKey!4116 (toList!7092 (extractMap!2517 (toList!7091 lt!1961127))) key!1652))))

(assert (=> d!1540065 (= (contains!18153 (extractMap!2517 (toList!7091 lt!1961127)) key!1652) lt!1961194)))

(assert (= (and d!1540065 c!819545) b!4808481))

(assert (= (and d!1540065 (not c!819545)) b!4808485))

(assert (= (and b!4808485 c!819544) b!4808479))

(assert (= (and b!4808485 (not c!819544)) b!4808482))

(assert (= (or b!4808481 b!4808485) bm!335602))

(assert (= (and bm!335602 c!819546) b!4808484))

(assert (= (and bm!335602 (not c!819546)) b!4808480))

(assert (= (and d!1540065 res!2045555) b!4808487))

(assert (= (and d!1540065 (not res!2045553)) b!4808486))

(assert (= (and b!4808486 res!2045554) b!4808483))

(declare-fun m!5794582 () Bool)

(assert (=> b!4808484 m!5794582))

(assert (=> b!4808487 m!5794480))

(declare-fun m!5794584 () Bool)

(assert (=> b!4808487 m!5794584))

(assert (=> b!4808487 m!5794584))

(declare-fun m!5794586 () Bool)

(assert (=> b!4808487 m!5794586))

(assert (=> b!4808480 m!5794480))

(assert (=> b!4808480 m!5794584))

(assert (=> b!4808483 m!5794480))

(assert (=> b!4808483 m!5794584))

(assert (=> b!4808483 m!5794584))

(assert (=> b!4808483 m!5794586))

(declare-fun m!5794588 () Bool)

(assert (=> d!1540065 m!5794588))

(assert (=> b!4808479 m!5794588))

(declare-fun m!5794590 () Bool)

(assert (=> b!4808479 m!5794590))

(declare-fun m!5794592 () Bool)

(assert (=> bm!335602 m!5794592))

(declare-fun m!5794594 () Bool)

(assert (=> b!4808481 m!5794594))

(declare-fun m!5794596 () Bool)

(assert (=> b!4808481 m!5794596))

(assert (=> b!4808481 m!5794596))

(declare-fun m!5794598 () Bool)

(assert (=> b!4808481 m!5794598))

(declare-fun m!5794600 () Bool)

(assert (=> b!4808481 m!5794600))

(assert (=> b!4808486 m!5794596))

(assert (=> b!4808486 m!5794596))

(assert (=> b!4808486 m!5794598))

(assert (=> b!4808403 d!1540065))

(declare-fun bs!1159978 () Bool)

(declare-fun b!4808492 () Bool)

(assert (= bs!1159978 (and b!4808492 b!4808401)))

(declare-fun lambda!233592 () Int)

(assert (=> bs!1159978 (= lambda!233592 lambda!233586)))

(declare-fun bs!1159979 () Bool)

(assert (= bs!1159979 (and b!4808492 d!1540063)))

(assert (=> bs!1159979 (= lambda!233592 lambda!233589)))

(declare-fun d!1540067 () Bool)

(declare-fun res!2045560 () Bool)

(declare-fun e!3003534 () Bool)

(assert (=> d!1540067 (=> (not res!2045560) (not e!3003534))))

(assert (=> d!1540067 (= res!2045560 (valid!4040 (v!48725 (underlying!10250 thiss!41921))))))

(assert (=> d!1540067 (= (valid!4039 thiss!41921) e!3003534)))

(declare-fun res!2045561 () Bool)

(assert (=> b!4808492 (=> (not res!2045561) (not e!3003534))))

(assert (=> b!4808492 (= res!2045561 (forall!12382 (toList!7091 (map!12367 (v!48725 (underlying!10250 thiss!41921)))) lambda!233592))))

(declare-fun b!4808493 () Bool)

(declare-fun allKeysSameHashInMap!2398 (ListLongMap!5545 Hashable!7032) Bool)

(assert (=> b!4808493 (= e!3003534 (allKeysSameHashInMap!2398 (map!12367 (v!48725 (underlying!10250 thiss!41921))) (hashF!13300 thiss!41921)))))

(assert (= (and d!1540067 res!2045560) b!4808492))

(assert (= (and b!4808492 res!2045561) b!4808493))

(assert (=> d!1540067 m!5794516))

(assert (=> b!4808492 m!5794484))

(declare-fun m!5794602 () Bool)

(assert (=> b!4808492 m!5794602))

(assert (=> b!4808493 m!5794484))

(assert (=> b!4808493 m!5794484))

(declare-fun m!5794604 () Bool)

(assert (=> b!4808493 m!5794604))

(assert (=> b!4808389 d!1540067))

(declare-fun d!1540069 () Bool)

(assert (=> d!1540069 (= (array_inv!5933 (_keys!5363 (v!48724 (underlying!10249 (v!48725 (underlying!10250 thiss!41921)))))) (bvsge (size!36473 (_keys!5363 (v!48724 (underlying!10249 (v!48725 (underlying!10250 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4808395 d!1540069))

(declare-fun d!1540071 () Bool)

(assert (=> d!1540071 (= (array_inv!5934 (_values!5334 (v!48724 (underlying!10249 (v!48725 (underlying!10250 thiss!41921)))))) (bvsge (size!36474 (_values!5334 (v!48724 (underlying!10249 (v!48725 (underlying!10250 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4808395 d!1540071))

(declare-fun mapIsEmpty!22217 () Bool)

(declare-fun mapRes!22217 () Bool)

(assert (=> mapIsEmpty!22217 mapRes!22217))

(declare-fun tp!1359866 () Bool)

(declare-fun e!3003539 () Bool)

(declare-fun tp_is_empty!33907 () Bool)

(declare-fun b!4808500 () Bool)

(assert (=> b!4808500 (= e!3003539 (and tp_is_empty!33905 tp_is_empty!33907 tp!1359866))))

(declare-fun tp!1359865 () Bool)

(declare-fun e!3003540 () Bool)

(declare-fun b!4808501 () Bool)

(assert (=> b!4808501 (= e!3003540 (and tp_is_empty!33905 tp_is_empty!33907 tp!1359865))))

(declare-fun mapNonEmpty!22217 () Bool)

(declare-fun tp!1359864 () Bool)

(assert (=> mapNonEmpty!22217 (= mapRes!22217 (and tp!1359864 e!3003539))))

(declare-fun mapValue!22217 () List!54593)

(declare-fun mapKey!22217 () (_ BitVec 32))

(declare-fun mapRest!22217 () (Array (_ BitVec 32) List!54593))

(assert (=> mapNonEmpty!22217 (= mapRest!22214 (store mapRest!22217 mapKey!22217 mapValue!22217))))

(declare-fun condMapEmpty!22217 () Bool)

(declare-fun mapDefault!22217 () List!54593)

(assert (=> mapNonEmpty!22214 (= condMapEmpty!22217 (= mapRest!22214 ((as const (Array (_ BitVec 32) List!54593)) mapDefault!22217)))))

(assert (=> mapNonEmpty!22214 (= tp!1359853 (and e!3003540 mapRes!22217))))

(assert (= (and mapNonEmpty!22214 condMapEmpty!22217) mapIsEmpty!22217))

(assert (= (and mapNonEmpty!22214 (not condMapEmpty!22217)) mapNonEmpty!22217))

(assert (= (and mapNonEmpty!22217 ((_ is Cons!54469) mapValue!22217)) b!4808500))

(assert (= (and mapNonEmpty!22214 ((_ is Cons!54469) mapDefault!22217)) b!4808501))

(declare-fun m!5794606 () Bool)

(assert (=> mapNonEmpty!22217 m!5794606))

(declare-fun tp!1359869 () Bool)

(declare-fun e!3003543 () Bool)

(declare-fun b!4808506 () Bool)

(assert (=> b!4808506 (= e!3003543 (and tp_is_empty!33905 tp_is_empty!33907 tp!1359869))))

(assert (=> mapNonEmpty!22214 (= tp!1359854 e!3003543)))

(assert (= (and mapNonEmpty!22214 ((_ is Cons!54469) mapValue!22214)) b!4808506))

(declare-fun e!3003544 () Bool)

(declare-fun b!4808507 () Bool)

(declare-fun tp!1359870 () Bool)

(assert (=> b!4808507 (= e!3003544 (and tp_is_empty!33905 tp_is_empty!33907 tp!1359870))))

(assert (=> b!4808393 (= tp!1359852 e!3003544)))

(assert (= (and b!4808393 ((_ is Cons!54469) mapDefault!22214)) b!4808507))

(declare-fun e!3003545 () Bool)

(declare-fun b!4808508 () Bool)

(declare-fun tp!1359871 () Bool)

(assert (=> b!4808508 (= e!3003545 (and tp_is_empty!33905 tp_is_empty!33907 tp!1359871))))

(assert (=> b!4808395 (= tp!1359851 e!3003545)))

(assert (= (and b!4808395 ((_ is Cons!54469) (zeroValue!5309 (v!48724 (underlying!10249 (v!48725 (underlying!10250 thiss!41921))))))) b!4808508))

(declare-fun b!4808509 () Bool)

(declare-fun e!3003546 () Bool)

(declare-fun tp!1359872 () Bool)

(assert (=> b!4808509 (= e!3003546 (and tp_is_empty!33905 tp_is_empty!33907 tp!1359872))))

(assert (=> b!4808395 (= tp!1359855 e!3003546)))

(assert (= (and b!4808395 ((_ is Cons!54469) (minValue!5309 (v!48724 (underlying!10249 (v!48725 (underlying!10250 thiss!41921))))))) b!4808509))

(declare-fun b_lambda!188169 () Bool)

(assert (= b_lambda!188167 (or (and b!4808395 b_free!130027) b_lambda!188169)))

(declare-fun b_lambda!188171 () Bool)

(assert (= b_lambda!188165 (or b!4808401 b_lambda!188171)))

(declare-fun bs!1159980 () Bool)

(declare-fun d!1540073 () Bool)

(assert (= bs!1159980 (and d!1540073 b!4808401)))

(declare-fun noDuplicateKeys!2382 (List!54593) Bool)

(assert (=> bs!1159980 (= (dynLambda!22124 lambda!233586 lt!1961135) (noDuplicateKeys!2382 (_2!31933 lt!1961135)))))

(declare-fun m!5794608 () Bool)

(assert (=> bs!1159980 m!5794608))

(assert (=> d!1540049 d!1540073))

(check-sat (not b!4808442) (not b!4808423) (not d!1540047) (not b!4808439) (not b!4808481) (not b_lambda!188171) (not d!1540063) (not b!4808479) (not d!1540055) (not b!4808454) (not d!1540045) b_and!341801 (not b!4808492) (not d!1540065) (not b!4808483) (not d!1540041) (not d!1540051) (not b!4808447) (not b!4808493) (not b!4808500) (not b!4808484) (not d!1540035) tp_is_empty!33907 (not d!1540039) (not b!4808427) (not b!4808412) (not b!4808480) (not d!1540067) (not b!4808436) (not b!4808487) (not b!4808506) (not b!4808501) (not d!1540057) (not b_next!130819) (not b!4808486) (not d!1540061) (not b!4808507) (not tb!257521) (not d!1540049) (not bm!335602) (not b!4808508) (not bs!1159980) (not d!1540059) (not b!4808459) tp_is_empty!33905 (not mapNonEmpty!22217) (not b!4808430) (not b!4808509) b_and!341803 (not b_lambda!188169) (not d!1540053) (not b_next!130817) (not b!4808410))
(check-sat b_and!341803 b_and!341801 (not b_next!130817) (not b_next!130819))
