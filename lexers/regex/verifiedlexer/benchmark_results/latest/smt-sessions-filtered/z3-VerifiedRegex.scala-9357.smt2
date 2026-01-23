; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497010 () Bool)

(assert start!497010)

(declare-fun b!4808579 () Bool)

(declare-fun b_free!130035 () Bool)

(declare-fun b_next!130825 () Bool)

(assert (=> b!4808579 (= b_free!130035 (not b_next!130825))))

(declare-fun tp!1359914 () Bool)

(declare-fun b_and!341809 () Bool)

(assert (=> b!4808579 (= tp!1359914 b_and!341809)))

(declare-fun b!4808584 () Bool)

(declare-fun b_free!130037 () Bool)

(declare-fun b_next!130827 () Bool)

(assert (=> b!4808584 (= b_free!130037 (not b_next!130827))))

(declare-fun tp!1359912 () Bool)

(declare-fun b_and!341811 () Bool)

(assert (=> b!4808584 (= tp!1359912 b_and!341811)))

(declare-fun mapNonEmpty!22223 () Bool)

(declare-fun mapRes!22223 () Bool)

(declare-fun tp!1359913 () Bool)

(declare-fun tp!1359911 () Bool)

(assert (=> mapNonEmpty!22223 (= mapRes!22223 (and tp!1359913 tp!1359911))))

(declare-datatypes ((K!16074 0))(
  ( (K!16075 (val!21165 Int)) )
))
(declare-datatypes ((array!18456 0))(
  ( (array!18457 (arr!8231 (Array (_ BitVec 32) (_ BitVec 64))) (size!36477 (_ BitVec 32))) )
))
(declare-datatypes ((V!16320 0))(
  ( (V!16321 (val!21166 Int)) )
))
(declare-datatypes ((tuple2!57284 0))(
  ( (tuple2!57285 (_1!31936 K!16074) (_2!31936 V!16320)) )
))
(declare-datatypes ((List!54598 0))(
  ( (Nil!54474) (Cons!54474 (h!60906 tuple2!57284) (t!362068 List!54598)) )
))
(declare-datatypes ((array!18458 0))(
  ( (array!18459 (arr!8232 (Array (_ BitVec 32) List!54598)) (size!36478 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10046 0))(
  ( (LongMapFixedSize!10047 (defaultEntry!5441 Int) (mask!15005 (_ BitVec 32)) (extraKeys!5298 (_ BitVec 32)) (zeroValue!5311 List!54598) (minValue!5311 List!54598) (_size!10071 (_ BitVec 32)) (_keys!5365 array!18456) (_values!5336 array!18458) (_vacant!5088 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19857 0))(
  ( (Cell!19858 (v!48733 LongMapFixedSize!10046)) )
))
(declare-datatypes ((MutLongMap!5023 0))(
  ( (LongMap!5023 (underlying!10253 Cell!19857)) (MutLongMapExt!5022 (__x!33167 Int)) )
))
(declare-datatypes ((Hashable!7034 0))(
  ( (HashableExt!7033 (__x!33168 Int)) )
))
(declare-datatypes ((Cell!19859 0))(
  ( (Cell!19860 (v!48734 MutLongMap!5023)) )
))
(declare-datatypes ((MutableMap!4907 0))(
  ( (MutableMapExt!4906 (__x!33169 Int)) (HashMap!4907 (underlying!10254 Cell!19859) (hashF!13302 Hashable!7034) (_size!10072 (_ BitVec 32)) (defaultValue!5078 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4907)

(declare-fun mapKey!22223 () (_ BitVec 32))

(declare-fun mapRest!22223 () (Array (_ BitVec 32) List!54598))

(declare-fun mapValue!22223 () List!54598)

(assert (=> mapNonEmpty!22223 (= (arr!8232 (_values!5336 (v!48733 (underlying!10253 (v!48734 (underlying!10254 thiss!41921)))))) (store mapRest!22223 mapKey!22223 mapValue!22223))))

(declare-fun b!4808575 () Bool)

(declare-fun e!3003609 () Bool)

(declare-fun tp!1359910 () Bool)

(assert (=> b!4808575 (= e!3003609 (and tp!1359910 mapRes!22223))))

(declare-fun condMapEmpty!22223 () Bool)

(declare-fun mapDefault!22223 () List!54598)

(assert (=> b!4808575 (= condMapEmpty!22223 (= (arr!8232 (_values!5336 (v!48733 (underlying!10253 (v!48734 (underlying!10254 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54598)) mapDefault!22223)))))

(declare-fun res!2045577 () Bool)

(declare-fun e!3003610 () Bool)

(assert (=> start!497010 (=> (not res!2045577) (not e!3003610))))

(get-info :version)

(assert (=> start!497010 (= res!2045577 ((_ is HashMap!4907) thiss!41921))))

(assert (=> start!497010 e!3003610))

(declare-fun e!3003612 () Bool)

(assert (=> start!497010 e!3003612))

(declare-fun tp_is_empty!33911 () Bool)

(assert (=> start!497010 tp_is_empty!33911))

(declare-fun lambda!233598 () Int)

(declare-datatypes ((tuple2!57286 0))(
  ( (tuple2!57287 (_1!31937 (_ BitVec 64)) (_2!31937 List!54598)) )
))
(declare-datatypes ((List!54599 0))(
  ( (Nil!54475) (Cons!54475 (h!60907 tuple2!57286) (t!362069 List!54599)) )
))
(declare-datatypes ((ListLongMap!5549 0))(
  ( (ListLongMap!5550 (toList!7095 List!54599)) )
))
(declare-fun lt!1961268 () ListLongMap!5549)

(declare-datatypes ((Unit!141409 0))(
  ( (Unit!141410) )
))
(declare-fun e!3003608 () Unit!141409)

(declare-fun b!4808576 () Bool)

(declare-fun lt!1961260 () tuple2!57286)

(declare-fun forallContained!4251 (List!54599 Int tuple2!57286) Unit!141409)

(assert (=> b!4808576 (= e!3003608 (forallContained!4251 (toList!7095 lt!1961268) lambda!233598 lt!1961260))))

(declare-fun map!12371 (MutLongMap!5023) ListLongMap!5549)

(assert (=> b!4808576 (= lt!1961268 (map!12371 (v!48734 (underlying!10254 thiss!41921))))))

(declare-fun lt!1961258 () List!54598)

(declare-fun lt!1961262 () (_ BitVec 64))

(declare-fun apply!13108 (MutLongMap!5023 (_ BitVec 64)) List!54598)

(assert (=> b!4808576 (= lt!1961258 (apply!13108 (v!48734 (underlying!10254 thiss!41921)) lt!1961262))))

(assert (=> b!4808576 (= lt!1961260 (tuple2!57287 lt!1961262 lt!1961258))))

(declare-fun c!819557 () Bool)

(declare-fun contains!18161 (List!54599 tuple2!57286) Bool)

(assert (=> b!4808576 (= c!819557 (not (contains!18161 (toList!7095 lt!1961268) lt!1961260)))))

(declare-fun lt!1961261 () Unit!141409)

(declare-fun e!3003607 () Unit!141409)

(assert (=> b!4808576 (= lt!1961261 e!3003607)))

(declare-fun b!4808577 () Bool)

(assert (=> b!4808577 false))

(declare-fun lt!1961265 () Unit!141409)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!979 (List!54599 (_ BitVec 64) List!54598) Unit!141409)

(assert (=> b!4808577 (= lt!1961265 (lemmaGetValueByKeyImpliesContainsTuple!979 (toList!7095 lt!1961268) lt!1961262 lt!1961258))))

(declare-datatypes ((Option!13266 0))(
  ( (None!13265) (Some!13265 (v!48735 List!54598)) )
))
(declare-fun isDefined!10405 (Option!13266) Bool)

(declare-fun getValueByKey!2463 (List!54599 (_ BitVec 64)) Option!13266)

(assert (=> b!4808577 (isDefined!10405 (getValueByKey!2463 (toList!7095 lt!1961268) lt!1961262))))

(declare-fun lt!1961269 () Unit!141409)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2251 (List!54599 (_ BitVec 64)) Unit!141409)

(assert (=> b!4808577 (= lt!1961269 (lemmaContainsKeyImpliesGetValueByKeyDefined!2251 (toList!7095 lt!1961268) lt!1961262))))

(declare-fun containsKey!4118 (List!54599 (_ BitVec 64)) Bool)

(assert (=> b!4808577 (containsKey!4118 (toList!7095 lt!1961268) lt!1961262)))

(declare-fun lt!1961264 () Unit!141409)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!250 (List!54599 (_ BitVec 64)) Unit!141409)

(assert (=> b!4808577 (= lt!1961264 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!250 (toList!7095 lt!1961268) lt!1961262))))

(declare-fun Unit!141411 () Unit!141409)

(assert (=> b!4808577 (= e!3003607 Unit!141411)))

(declare-fun b!4808578 () Bool)

(declare-fun e!3003605 () Bool)

(assert (=> b!4808578 (= e!3003610 e!3003605)))

(declare-fun res!2045578 () Bool)

(assert (=> b!4808578 (=> (not res!2045578) (not e!3003605))))

(declare-fun lt!1961263 () ListLongMap!5549)

(declare-fun key!1652 () K!16074)

(declare-datatypes ((ListMap!6535 0))(
  ( (ListMap!6536 (toList!7096 List!54598)) )
))
(declare-fun contains!18162 (ListMap!6535 K!16074) Bool)

(declare-fun extractMap!2519 (List!54599) ListMap!6535)

(assert (=> b!4808578 (= res!2045578 (not (contains!18162 (extractMap!2519 (toList!7095 lt!1961263)) key!1652)))))

(assert (=> b!4808578 (= lt!1961263 (map!12371 (v!48734 (underlying!10254 thiss!41921))))))

(declare-fun lt!1961259 () Unit!141409)

(assert (=> b!4808578 (= lt!1961259 e!3003608)))

(declare-fun c!819558 () Bool)

(declare-fun contains!18163 (MutLongMap!5023 (_ BitVec 64)) Bool)

(assert (=> b!4808578 (= c!819558 (contains!18163 (v!48734 (underlying!10254 thiss!41921)) lt!1961262))))

(declare-fun hash!5103 (Hashable!7034 K!16074) (_ BitVec 64))

(assert (=> b!4808578 (= lt!1961262 (hash!5103 (hashF!13302 thiss!41921) key!1652))))

(declare-fun tp!1359909 () Bool)

(declare-fun e!3003603 () Bool)

(declare-fun tp!1359908 () Bool)

(declare-fun array_inv!5937 (array!18456) Bool)

(declare-fun array_inv!5938 (array!18458) Bool)

(assert (=> b!4808579 (= e!3003603 (and tp!1359914 tp!1359908 tp!1359909 (array_inv!5937 (_keys!5365 (v!48733 (underlying!10253 (v!48734 (underlying!10254 thiss!41921)))))) (array_inv!5938 (_values!5336 (v!48733 (underlying!10253 (v!48734 (underlying!10254 thiss!41921)))))) e!3003609))))

(declare-fun b!4808580 () Bool)

(declare-fun e!3003602 () Bool)

(declare-fun e!3003604 () Bool)

(declare-fun lt!1961266 () MutLongMap!5023)

(assert (=> b!4808580 (= e!3003602 (and e!3003604 ((_ is LongMap!5023) lt!1961266)))))

(assert (=> b!4808580 (= lt!1961266 (v!48734 (underlying!10254 thiss!41921)))))

(declare-fun b!4808581 () Bool)

(declare-fun res!2045579 () Bool)

(assert (=> b!4808581 (=> (not res!2045579) (not e!3003610))))

(declare-fun valid!4043 (MutableMap!4907) Bool)

(assert (=> b!4808581 (= res!2045579 (valid!4043 thiss!41921))))

(declare-fun b!4808582 () Bool)

(declare-fun e!3003606 () Bool)

(assert (=> b!4808582 (= e!3003604 e!3003606)))

(declare-fun b!4808583 () Bool)

(declare-fun Unit!141412 () Unit!141409)

(assert (=> b!4808583 (= e!3003607 Unit!141412)))

(assert (=> b!4808584 (= e!3003612 (and e!3003602 tp!1359912))))

(declare-fun b!4808585 () Bool)

(declare-fun Unit!141413 () Unit!141409)

(assert (=> b!4808585 (= e!3003608 Unit!141413)))

(declare-fun b!4808586 () Bool)

(assert (=> b!4808586 (= e!3003606 e!3003603)))

(declare-fun b!4808587 () Bool)

(assert (=> b!4808587 (= e!3003605 false)))

(declare-fun lt!1961267 () Bool)

(declare-fun contains!18164 (ListLongMap!5549 (_ BitVec 64)) Bool)

(assert (=> b!4808587 (= lt!1961267 (contains!18164 lt!1961263 lt!1961262))))

(declare-fun mapIsEmpty!22223 () Bool)

(assert (=> mapIsEmpty!22223 mapRes!22223))

(assert (= (and start!497010 res!2045577) b!4808581))

(assert (= (and b!4808581 res!2045579) b!4808578))

(assert (= (and b!4808578 c!819558) b!4808576))

(assert (= (and b!4808578 (not c!819558)) b!4808585))

(assert (= (and b!4808576 c!819557) b!4808577))

(assert (= (and b!4808576 (not c!819557)) b!4808583))

(assert (= (and b!4808578 res!2045578) b!4808587))

(assert (= (and b!4808575 condMapEmpty!22223) mapIsEmpty!22223))

(assert (= (and b!4808575 (not condMapEmpty!22223)) mapNonEmpty!22223))

(assert (= b!4808579 b!4808575))

(assert (= b!4808586 b!4808579))

(assert (= b!4808582 b!4808586))

(assert (= (and b!4808580 ((_ is LongMap!5023) (v!48734 (underlying!10254 thiss!41921)))) b!4808582))

(assert (= b!4808584 b!4808580))

(assert (= (and start!497010 ((_ is HashMap!4907) thiss!41921)) b!4808584))

(declare-fun m!5794648 () Bool)

(assert (=> b!4808579 m!5794648))

(declare-fun m!5794650 () Bool)

(assert (=> b!4808579 m!5794650))

(declare-fun m!5794652 () Bool)

(assert (=> b!4808576 m!5794652))

(declare-fun m!5794654 () Bool)

(assert (=> b!4808576 m!5794654))

(declare-fun m!5794656 () Bool)

(assert (=> b!4808576 m!5794656))

(declare-fun m!5794658 () Bool)

(assert (=> b!4808576 m!5794658))

(declare-fun m!5794660 () Bool)

(assert (=> b!4808587 m!5794660))

(declare-fun m!5794662 () Bool)

(assert (=> mapNonEmpty!22223 m!5794662))

(declare-fun m!5794664 () Bool)

(assert (=> b!4808577 m!5794664))

(declare-fun m!5794666 () Bool)

(assert (=> b!4808577 m!5794666))

(declare-fun m!5794668 () Bool)

(assert (=> b!4808577 m!5794668))

(declare-fun m!5794670 () Bool)

(assert (=> b!4808577 m!5794670))

(declare-fun m!5794672 () Bool)

(assert (=> b!4808577 m!5794672))

(declare-fun m!5794674 () Bool)

(assert (=> b!4808577 m!5794674))

(assert (=> b!4808577 m!5794664))

(declare-fun m!5794676 () Bool)

(assert (=> b!4808581 m!5794676))

(declare-fun m!5794678 () Bool)

(assert (=> b!4808578 m!5794678))

(declare-fun m!5794680 () Bool)

(assert (=> b!4808578 m!5794680))

(declare-fun m!5794682 () Bool)

(assert (=> b!4808578 m!5794682))

(assert (=> b!4808578 m!5794680))

(declare-fun m!5794684 () Bool)

(assert (=> b!4808578 m!5794684))

(assert (=> b!4808578 m!5794654))

(check-sat (not b_next!130825) tp_is_empty!33911 (not b_next!130827) (not mapNonEmpty!22223) b_and!341809 b_and!341811 (not b!4808587) (not b!4808578) (not b!4808575) (not b!4808579) (not b!4808576) (not b!4808581) (not b!4808577))
(check-sat b_and!341809 b_and!341811 (not b_next!130825) (not b_next!130827))
