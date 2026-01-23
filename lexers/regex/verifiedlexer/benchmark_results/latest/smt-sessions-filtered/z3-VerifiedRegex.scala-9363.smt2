; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497118 () Bool)

(assert start!497118)

(declare-fun b!4809408 () Bool)

(declare-fun b_free!130083 () Bool)

(declare-fun b_next!130873 () Bool)

(assert (=> b!4809408 (= b_free!130083 (not b_next!130873))))

(declare-fun tp!1360192 () Bool)

(declare-fun b_and!341861 () Bool)

(assert (=> b!4809408 (= tp!1360192 b_and!341861)))

(declare-fun b!4809411 () Bool)

(declare-fun b_free!130085 () Bool)

(declare-fun b_next!130875 () Bool)

(assert (=> b!4809411 (= b_free!130085 (not b_next!130875))))

(declare-fun tp!1360195 () Bool)

(declare-fun b_and!341863 () Bool)

(assert (=> b!4809411 (= tp!1360195 b_and!341863)))

(declare-fun bs!1160020 () Bool)

(declare-fun b!4809399 () Bool)

(declare-fun b!4809398 () Bool)

(assert (= bs!1160020 (and b!4809399 b!4809398)))

(declare-fun lambda!233688 () Int)

(declare-fun lambda!233687 () Int)

(assert (=> bs!1160020 (= lambda!233688 lambda!233687)))

(declare-fun res!2045903 () Bool)

(declare-fun e!3004201 () Bool)

(assert (=> start!497118 (=> (not res!2045903) (not e!3004201))))

(declare-datatypes ((K!16104 0))(
  ( (K!16105 (val!21189 Int)) )
))
(declare-datatypes ((array!18508 0))(
  ( (array!18509 (arr!8255 (Array (_ BitVec 32) (_ BitVec 64))) (size!36501 (_ BitVec 32))) )
))
(declare-datatypes ((V!16350 0))(
  ( (V!16351 (val!21190 Int)) )
))
(declare-datatypes ((tuple2!57332 0))(
  ( (tuple2!57333 (_1!31960 K!16104) (_2!31960 V!16350)) )
))
(declare-datatypes ((List!54624 0))(
  ( (Nil!54500) (Cons!54500 (h!60932 tuple2!57332) (t!362098 List!54624)) )
))
(declare-datatypes ((array!18510 0))(
  ( (array!18511 (arr!8256 (Array (_ BitVec 32) List!54624)) (size!36502 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10070 0))(
  ( (LongMapFixedSize!10071 (defaultEntry!5453 Int) (mask!15023 (_ BitVec 32)) (extraKeys!5310 (_ BitVec 32)) (zeroValue!5323 List!54624) (minValue!5323 List!54624) (_size!10095 (_ BitVec 32)) (_keys!5377 array!18508) (_values!5348 array!18510) (_vacant!5100 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19905 0))(
  ( (Cell!19906 (v!48781 LongMapFixedSize!10070)) )
))
(declare-datatypes ((MutLongMap!5035 0))(
  ( (LongMap!5035 (underlying!10277 Cell!19905)) (MutLongMapExt!5034 (__x!33203 Int)) )
))
(declare-datatypes ((Hashable!7046 0))(
  ( (HashableExt!7045 (__x!33204 Int)) )
))
(declare-datatypes ((Cell!19907 0))(
  ( (Cell!19908 (v!48782 MutLongMap!5035)) )
))
(declare-datatypes ((MutableMap!4919 0))(
  ( (MutableMapExt!4918 (__x!33205 Int)) (HashMap!4919 (underlying!10278 Cell!19907) (hashF!13314 Hashable!7046) (_size!10096 (_ BitVec 32)) (defaultValue!5090 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4919)

(get-info :version)

(assert (=> start!497118 (= res!2045903 ((_ is HashMap!4919) thiss!41921))))

(assert (=> start!497118 e!3004201))

(declare-fun e!3004194 () Bool)

(assert (=> start!497118 e!3004194))

(declare-fun tp_is_empty!33939 () Bool)

(assert (=> start!497118 tp_is_empty!33939))

(declare-fun b!4809394 () Bool)

(declare-fun e!3004192 () Bool)

(assert (=> b!4809394 (= e!3004201 e!3004192)))

(declare-fun res!2045901 () Bool)

(assert (=> b!4809394 (=> (not res!2045901) (not e!3004192))))

(declare-datatypes ((tuple2!57334 0))(
  ( (tuple2!57335 (_1!31961 (_ BitVec 64)) (_2!31961 List!54624)) )
))
(declare-datatypes ((List!54625 0))(
  ( (Nil!54501) (Cons!54501 (h!60933 tuple2!57334) (t!362099 List!54625)) )
))
(declare-datatypes ((ListLongMap!5573 0))(
  ( (ListLongMap!5574 (toList!7119 List!54625)) )
))
(declare-fun lt!1961861 () ListLongMap!5573)

(declare-fun key!1652 () K!16104)

(declare-datatypes ((ListMap!6559 0))(
  ( (ListMap!6560 (toList!7120 List!54624)) )
))
(declare-fun contains!18209 (ListMap!6559 K!16104) Bool)

(declare-fun extractMap!2531 (List!54625) ListMap!6559)

(assert (=> b!4809394 (= res!2045901 (not (contains!18209 (extractMap!2531 (toList!7119 lt!1961861)) key!1652)))))

(declare-fun map!12391 (MutLongMap!5035) ListLongMap!5573)

(assert (=> b!4809394 (= lt!1961861 (map!12391 (v!48782 (underlying!10278 thiss!41921))))))

(declare-datatypes ((Unit!141471 0))(
  ( (Unit!141472) )
))
(declare-fun lt!1961854 () Unit!141471)

(declare-fun e!3004191 () Unit!141471)

(assert (=> b!4809394 (= lt!1961854 e!3004191)))

(declare-fun c!819684 () Bool)

(declare-fun lt!1961862 () (_ BitVec 64))

(declare-fun contains!18210 (MutLongMap!5035 (_ BitVec 64)) Bool)

(assert (=> b!4809394 (= c!819684 (contains!18210 (v!48782 (underlying!10278 thiss!41921)) lt!1961862))))

(declare-fun hash!5117 (Hashable!7046 K!16104) (_ BitVec 64))

(assert (=> b!4809394 (= lt!1961862 (hash!5117 (hashF!13314 thiss!41921) key!1652))))

(declare-fun b!4809395 () Bool)

(declare-fun e!3004200 () Unit!141471)

(declare-fun Unit!141473 () Unit!141471)

(assert (=> b!4809395 (= e!3004200 Unit!141473)))

(declare-fun b!4809396 () Bool)

(declare-fun e!3004193 () Bool)

(assert (=> b!4809396 (= e!3004192 e!3004193)))

(declare-fun res!2045896 () Bool)

(assert (=> b!4809396 (=> (not res!2045896) (not e!3004193))))

(declare-fun lt!1961858 () List!54624)

(declare-datatypes ((Option!13286 0))(
  ( (None!13285) (Some!13285 (v!48783 tuple2!57332)) )
))
(declare-fun isDefined!10425 (Option!13286) Bool)

(declare-fun getPair!958 (List!54624 K!16104) Option!13286)

(assert (=> b!4809396 (= res!2045896 (isDefined!10425 (getPair!958 lt!1961858 key!1652)))))

(declare-fun apply!13127 (ListLongMap!5573 (_ BitVec 64)) List!54624)

(assert (=> b!4809396 (= lt!1961858 (apply!13127 lt!1961861 lt!1961862))))

(declare-fun b!4809397 () Bool)

(assert (=> b!4809397 false))

(declare-fun lt!1961863 () List!54624)

(declare-fun lt!1961853 () Unit!141471)

(declare-fun lt!1961856 () ListLongMap!5573)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!990 (List!54625 (_ BitVec 64) List!54624) Unit!141471)

(assert (=> b!4809397 (= lt!1961853 (lemmaGetValueByKeyImpliesContainsTuple!990 (toList!7119 lt!1961856) lt!1961862 lt!1961863))))

(declare-datatypes ((Option!13287 0))(
  ( (None!13286) (Some!13286 (v!48784 List!54624)) )
))
(declare-fun isDefined!10426 (Option!13287) Bool)

(declare-fun getValueByKey!2476 (List!54625 (_ BitVec 64)) Option!13287)

(assert (=> b!4809397 (isDefined!10426 (getValueByKey!2476 (toList!7119 lt!1961856) lt!1961862))))

(declare-fun lt!1961859 () Unit!141471)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2264 (List!54625 (_ BitVec 64)) Unit!141471)

(assert (=> b!4809397 (= lt!1961859 (lemmaContainsKeyImpliesGetValueByKeyDefined!2264 (toList!7119 lt!1961856) lt!1961862))))

(declare-fun containsKey!4133 (List!54625 (_ BitVec 64)) Bool)

(assert (=> b!4809397 (containsKey!4133 (toList!7119 lt!1961856) lt!1961862)))

(declare-fun lt!1961852 () Unit!141471)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!261 (List!54625 (_ BitVec 64)) Unit!141471)

(assert (=> b!4809397 (= lt!1961852 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!261 (toList!7119 lt!1961856) lt!1961862))))

(declare-fun Unit!141474 () Unit!141471)

(assert (=> b!4809397 (= e!3004200 Unit!141474)))

(declare-fun lt!1961865 () tuple2!57334)

(declare-fun forallContained!4259 (List!54625 Int tuple2!57334) Unit!141471)

(assert (=> b!4809398 (= e!3004191 (forallContained!4259 (toList!7119 lt!1961856) lambda!233687 lt!1961865))))

(assert (=> b!4809398 (= lt!1961856 (map!12391 (v!48782 (underlying!10278 thiss!41921))))))

(declare-fun apply!13128 (MutLongMap!5035 (_ BitVec 64)) List!54624)

(assert (=> b!4809398 (= lt!1961863 (apply!13128 (v!48782 (underlying!10278 thiss!41921)) lt!1961862))))

(assert (=> b!4809398 (= lt!1961865 (tuple2!57335 lt!1961862 lt!1961863))))

(declare-fun c!819683 () Bool)

(declare-fun contains!18211 (List!54625 tuple2!57334) Bool)

(assert (=> b!4809398 (= c!819683 (not (contains!18211 (toList!7119 lt!1961856) lt!1961865)))))

(declare-fun lt!1961866 () Unit!141471)

(assert (=> b!4809398 (= lt!1961866 e!3004200)))

(declare-fun res!2045897 () Bool)

(assert (=> b!4809399 (=> (not res!2045897) (not e!3004193))))

(declare-fun forall!12390 (List!54625 Int) Bool)

(assert (=> b!4809399 (= res!2045897 (forall!12390 (toList!7119 lt!1961861) lambda!233688))))

(declare-fun b!4809400 () Bool)

(declare-fun res!2045898 () Bool)

(assert (=> b!4809400 (=> (not res!2045898) (not e!3004201))))

(declare-fun valid!4057 (MutableMap!4919) Bool)

(assert (=> b!4809400 (= res!2045898 (valid!4057 thiss!41921))))

(declare-fun b!4809401 () Bool)

(declare-fun e!3004197 () Bool)

(declare-fun e!3004195 () Bool)

(declare-fun lt!1961864 () MutLongMap!5035)

(assert (=> b!4809401 (= e!3004197 (and e!3004195 ((_ is LongMap!5035) lt!1961864)))))

(assert (=> b!4809401 (= lt!1961864 (v!48782 (underlying!10278 thiss!41921)))))

(declare-fun b!4809402 () Bool)

(declare-fun res!2045899 () Bool)

(assert (=> b!4809402 (=> (not res!2045899) (not e!3004193))))

(declare-fun allKeysSameHashInMap!2405 (ListLongMap!5573 Hashable!7046) Bool)

(assert (=> b!4809402 (= res!2045899 (allKeysSameHashInMap!2405 lt!1961861 (hashF!13314 thiss!41921)))))

(declare-fun b!4809403 () Bool)

(declare-fun res!2045902 () Bool)

(assert (=> b!4809403 (=> (not res!2045902) (not e!3004192))))

(declare-fun contains!18212 (ListLongMap!5573 (_ BitVec 64)) Bool)

(assert (=> b!4809403 (= res!2045902 (contains!18212 lt!1961861 lt!1961862))))

(declare-fun b!4809404 () Bool)

(declare-fun Unit!141475 () Unit!141471)

(assert (=> b!4809404 (= e!3004191 Unit!141475)))

(declare-fun b!4809405 () Bool)

(declare-fun e!3004202 () Bool)

(declare-fun e!3004199 () Bool)

(assert (=> b!4809405 (= e!3004202 e!3004199)))

(declare-fun b!4809406 () Bool)

(declare-fun e!3004198 () Bool)

(assert (=> b!4809406 (= e!3004198 true)))

(declare-fun lt!1961851 () Unit!141471)

(declare-fun lt!1961857 () tuple2!57334)

(assert (=> b!4809406 (= lt!1961851 (forallContained!4259 (toList!7119 lt!1961861) lambda!233688 lt!1961857))))

(declare-fun b!4809407 () Bool)

(assert (=> b!4809407 (= e!3004193 (not e!3004198))))

(declare-fun res!2045900 () Bool)

(assert (=> b!4809407 (=> res!2045900 e!3004198)))

(assert (=> b!4809407 (= res!2045900 (not (forall!12390 (toList!7119 lt!1961861) lambda!233688)))))

(declare-fun lt!1961855 () Unit!141471)

(assert (=> b!4809407 (= lt!1961855 (forallContained!4259 (toList!7119 lt!1961861) lambda!233688 lt!1961857))))

(assert (=> b!4809407 (contains!18211 (toList!7119 lt!1961861) lt!1961857)))

(assert (=> b!4809407 (= lt!1961857 (tuple2!57335 lt!1961862 lt!1961858))))

(declare-fun lt!1961860 () Unit!141471)

(declare-fun lemmaGetValueImpliesTupleContained!646 (ListLongMap!5573 (_ BitVec 64) List!54624) Unit!141471)

(assert (=> b!4809407 (= lt!1961860 (lemmaGetValueImpliesTupleContained!646 lt!1961861 lt!1961862 lt!1961858))))

(declare-fun tp!1360194 () Bool)

(declare-fun tp!1360193 () Bool)

(declare-fun e!3004196 () Bool)

(declare-fun array_inv!5961 (array!18508) Bool)

(declare-fun array_inv!5962 (array!18510) Bool)

(assert (=> b!4809408 (= e!3004199 (and tp!1360192 tp!1360194 tp!1360193 (array_inv!5961 (_keys!5377 (v!48781 (underlying!10277 (v!48782 (underlying!10278 thiss!41921)))))) (array_inv!5962 (_values!5348 (v!48781 (underlying!10277 (v!48782 (underlying!10278 thiss!41921)))))) e!3004196))))

(declare-fun mapNonEmpty!22265 () Bool)

(declare-fun mapRes!22265 () Bool)

(declare-fun tp!1360190 () Bool)

(declare-fun tp!1360191 () Bool)

(assert (=> mapNonEmpty!22265 (= mapRes!22265 (and tp!1360190 tp!1360191))))

(declare-fun mapValue!22265 () List!54624)

(declare-fun mapKey!22265 () (_ BitVec 32))

(declare-fun mapRest!22265 () (Array (_ BitVec 32) List!54624))

(assert (=> mapNonEmpty!22265 (= (arr!8256 (_values!5348 (v!48781 (underlying!10277 (v!48782 (underlying!10278 thiss!41921)))))) (store mapRest!22265 mapKey!22265 mapValue!22265))))

(declare-fun b!4809409 () Bool)

(assert (=> b!4809409 (= e!3004195 e!3004202)))

(declare-fun b!4809410 () Bool)

(declare-fun tp!1360196 () Bool)

(assert (=> b!4809410 (= e!3004196 (and tp!1360196 mapRes!22265))))

(declare-fun condMapEmpty!22265 () Bool)

(declare-fun mapDefault!22265 () List!54624)

(assert (=> b!4809410 (= condMapEmpty!22265 (= (arr!8256 (_values!5348 (v!48781 (underlying!10277 (v!48782 (underlying!10278 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54624)) mapDefault!22265)))))

(assert (=> b!4809411 (= e!3004194 (and e!3004197 tp!1360195))))

(declare-fun mapIsEmpty!22265 () Bool)

(assert (=> mapIsEmpty!22265 mapRes!22265))

(assert (= (and start!497118 res!2045903) b!4809400))

(assert (= (and b!4809400 res!2045898) b!4809394))

(assert (= (and b!4809394 c!819684) b!4809398))

(assert (= (and b!4809394 (not c!819684)) b!4809404))

(assert (= (and b!4809398 c!819683) b!4809397))

(assert (= (and b!4809398 (not c!819683)) b!4809395))

(assert (= (and b!4809394 res!2045901) b!4809403))

(assert (= (and b!4809403 res!2045902) b!4809396))

(assert (= (and b!4809396 res!2045896) b!4809399))

(assert (= (and b!4809399 res!2045897) b!4809402))

(assert (= (and b!4809402 res!2045899) b!4809407))

(assert (= (and b!4809407 (not res!2045900)) b!4809406))

(assert (= (and b!4809410 condMapEmpty!22265) mapIsEmpty!22265))

(assert (= (and b!4809410 (not condMapEmpty!22265)) mapNonEmpty!22265))

(assert (= b!4809408 b!4809410))

(assert (= b!4809405 b!4809408))

(assert (= b!4809409 b!4809405))

(assert (= (and b!4809401 ((_ is LongMap!5035) (v!48782 (underlying!10278 thiss!41921)))) b!4809409))

(assert (= b!4809411 b!4809401))

(assert (= (and start!497118 ((_ is HashMap!4919) thiss!41921)) b!4809411))

(declare-fun m!5795424 () Bool)

(assert (=> b!4809397 m!5795424))

(declare-fun m!5795426 () Bool)

(assert (=> b!4809397 m!5795426))

(declare-fun m!5795428 () Bool)

(assert (=> b!4809397 m!5795428))

(declare-fun m!5795430 () Bool)

(assert (=> b!4809397 m!5795430))

(assert (=> b!4809397 m!5795426))

(declare-fun m!5795432 () Bool)

(assert (=> b!4809397 m!5795432))

(declare-fun m!5795434 () Bool)

(assert (=> b!4809397 m!5795434))

(declare-fun m!5795436 () Bool)

(assert (=> b!4809399 m!5795436))

(declare-fun m!5795438 () Bool)

(assert (=> mapNonEmpty!22265 m!5795438))

(declare-fun m!5795440 () Bool)

(assert (=> b!4809402 m!5795440))

(declare-fun m!5795442 () Bool)

(assert (=> b!4809403 m!5795442))

(declare-fun m!5795444 () Bool)

(assert (=> b!4809408 m!5795444))

(declare-fun m!5795446 () Bool)

(assert (=> b!4809408 m!5795446))

(declare-fun m!5795448 () Bool)

(assert (=> b!4809396 m!5795448))

(assert (=> b!4809396 m!5795448))

(declare-fun m!5795450 () Bool)

(assert (=> b!4809396 m!5795450))

(declare-fun m!5795452 () Bool)

(assert (=> b!4809396 m!5795452))

(declare-fun m!5795454 () Bool)

(assert (=> b!4809406 m!5795454))

(declare-fun m!5795456 () Bool)

(assert (=> b!4809394 m!5795456))

(declare-fun m!5795458 () Bool)

(assert (=> b!4809394 m!5795458))

(assert (=> b!4809394 m!5795456))

(declare-fun m!5795460 () Bool)

(assert (=> b!4809394 m!5795460))

(declare-fun m!5795462 () Bool)

(assert (=> b!4809394 m!5795462))

(declare-fun m!5795464 () Bool)

(assert (=> b!4809394 m!5795464))

(declare-fun m!5795466 () Bool)

(assert (=> b!4809400 m!5795466))

(declare-fun m!5795468 () Bool)

(assert (=> b!4809398 m!5795468))

(assert (=> b!4809398 m!5795464))

(declare-fun m!5795470 () Bool)

(assert (=> b!4809398 m!5795470))

(declare-fun m!5795472 () Bool)

(assert (=> b!4809398 m!5795472))

(assert (=> b!4809407 m!5795436))

(assert (=> b!4809407 m!5795454))

(declare-fun m!5795474 () Bool)

(assert (=> b!4809407 m!5795474))

(declare-fun m!5795476 () Bool)

(assert (=> b!4809407 m!5795476))

(check-sat (not b_next!130873) tp_is_empty!33939 (not b!4809394) b_and!341861 (not b!4809406) (not b!4809397) (not b!4809400) (not b!4809407) (not b!4809402) (not b!4809408) (not b!4809396) (not b!4809410) (not b_next!130875) b_and!341863 (not b!4809398) (not b!4809399) (not mapNonEmpty!22265) (not b!4809403))
(check-sat b_and!341861 b_and!341863 (not b_next!130873) (not b_next!130875))
