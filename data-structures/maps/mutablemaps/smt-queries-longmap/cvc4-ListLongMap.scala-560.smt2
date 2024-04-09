; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15218 () Bool)

(assert start!15218)

(declare-fun b!146489 () Bool)

(declare-fun b_free!3117 () Bool)

(declare-fun b_next!3117 () Bool)

(assert (=> b!146489 (= b_free!3117 (not b_next!3117))))

(declare-fun tp!11853 () Bool)

(declare-fun b_and!9177 () Bool)

(assert (=> b!146489 (= tp!11853 b_and!9177)))

(declare-fun b!146491 () Bool)

(declare-fun b_free!3119 () Bool)

(declare-fun b_next!3119 () Bool)

(assert (=> b!146491 (= b_free!3119 (not b_next!3119))))

(declare-fun tp!11854 () Bool)

(declare-fun b_and!9179 () Bool)

(assert (=> b!146491 (= tp!11854 b_and!9179)))

(declare-fun b!146486 () Bool)

(declare-fun e!95558 () Bool)

(declare-fun e!95561 () Bool)

(assert (=> b!146486 (= e!95558 e!95561)))

(declare-fun res!69683 () Bool)

(assert (=> b!146486 (=> (not res!69683) (not e!95561))))

(declare-datatypes ((V!3613 0))(
  ( (V!3614 (val!1532 Int)) )
))
(declare-datatypes ((array!4994 0))(
  ( (array!4995 (arr!2358 (Array (_ BitVec 32) (_ BitVec 64))) (size!2634 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1144 0))(
  ( (ValueCellFull!1144 (v!3352 V!3613)) (EmptyCell!1144) )
))
(declare-datatypes ((array!4996 0))(
  ( (array!4997 (arr!2359 (Array (_ BitVec 32) ValueCell!1144)) (size!2635 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1196 0))(
  ( (LongMapFixedSize!1197 (defaultEntry!3014 Int) (mask!7390 (_ BitVec 32)) (extraKeys!2759 (_ BitVec 32)) (zeroValue!2859 V!3613) (minValue!2859 V!3613) (_size!647 (_ BitVec 32)) (_keys!4783 array!4994) (_values!2997 array!4996) (_vacant!647 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!978 0))(
  ( (Cell!979 (v!3353 LongMapFixedSize!1196)) )
))
(declare-datatypes ((LongMap!978 0))(
  ( (LongMap!979 (underlying!500 Cell!978)) )
))
(declare-fun thiss!992 () LongMap!978)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!146486 (= res!69683 (and (not (= (select (arr!2358 (_keys!4783 (v!3353 (underlying!500 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2358 (_keys!4783 (v!3353 (underlying!500 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!77048 () V!3613)

(declare-fun get!1576 (ValueCell!1144 V!3613) V!3613)

(declare-fun dynLambda!456 (Int (_ BitVec 64)) V!3613)

(assert (=> b!146486 (= lt!77048 (get!1576 (select (arr!2359 (_values!2997 (v!3353 (underlying!500 thiss!992)))) from!355) (dynLambda!456 (defaultEntry!3014 (v!3353 (underlying!500 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!4997 () Bool)

(declare-fun mapRes!4998 () Bool)

(assert (=> mapIsEmpty!4997 mapRes!4998))

(declare-fun b!146487 () Bool)

(declare-fun e!95567 () Bool)

(assert (=> b!146487 (= e!95567 (not true))))

(declare-datatypes ((tuple2!2744 0))(
  ( (tuple2!2745 (_1!1382 (_ BitVec 64)) (_2!1382 V!3613)) )
))
(declare-datatypes ((List!1796 0))(
  ( (Nil!1793) (Cons!1792 (h!2400 tuple2!2744) (t!6505 List!1796)) )
))
(declare-datatypes ((ListLongMap!1779 0))(
  ( (ListLongMap!1780 (toList!905 List!1796)) )
))
(declare-fun lt!77047 () ListLongMap!1779)

(declare-fun lt!77051 () tuple2!2744)

(declare-fun lt!77041 () tuple2!2744)

(declare-fun +!180 (ListLongMap!1779 tuple2!2744) ListLongMap!1779)

(assert (=> b!146487 (= (+!180 (+!180 lt!77047 lt!77051) lt!77041) (+!180 (+!180 lt!77047 lt!77041) lt!77051))))

(assert (=> b!146487 (= lt!77041 (tuple2!2745 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2859 (v!3353 (underlying!500 thiss!992)))))))

(assert (=> b!146487 (= lt!77051 (tuple2!2745 (select (arr!2358 (_keys!4783 (v!3353 (underlying!500 thiss!992)))) from!355) lt!77048))))

(declare-datatypes ((Unit!4637 0))(
  ( (Unit!4638) )
))
(declare-fun lt!77052 () Unit!4637)

(declare-fun addCommutativeForDiffKeys!73 (ListLongMap!1779 (_ BitVec 64) V!3613 (_ BitVec 64) V!3613) Unit!4637)

(assert (=> b!146487 (= lt!77052 (addCommutativeForDiffKeys!73 lt!77047 (select (arr!2358 (_keys!4783 (v!3353 (underlying!500 thiss!992)))) from!355) lt!77048 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2859 (v!3353 (underlying!500 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!149 (array!4994 array!4996 (_ BitVec 32) (_ BitVec 32) V!3613 V!3613 (_ BitVec 32) Int) ListLongMap!1779)

(assert (=> b!146487 (= lt!77047 (getCurrentListMapNoExtraKeys!149 (_keys!4783 (v!3353 (underlying!500 thiss!992))) (_values!2997 (v!3353 (underlying!500 thiss!992))) (mask!7390 (v!3353 (underlying!500 thiss!992))) (extraKeys!2759 (v!3353 (underlying!500 thiss!992))) (zeroValue!2859 (v!3353 (underlying!500 thiss!992))) (minValue!2859 (v!3353 (underlying!500 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3014 (v!3353 (underlying!500 thiss!992)))))))

(declare-fun b!146488 () Bool)

(declare-fun e!95559 () Bool)

(assert (=> b!146488 (= e!95559 e!95558)))

(declare-fun res!69684 () Bool)

(assert (=> b!146488 (=> (not res!69684) (not e!95558))))

(declare-fun lt!77049 () ListLongMap!1779)

(declare-fun lt!77045 () ListLongMap!1779)

(assert (=> b!146488 (= res!69684 (= lt!77049 lt!77045))))

(declare-fun newMap!16 () LongMapFixedSize!1196)

(declare-fun map!1466 (LongMapFixedSize!1196) ListLongMap!1779)

(assert (=> b!146488 (= lt!77045 (map!1466 newMap!16))))

(declare-fun getCurrentListMap!569 (array!4994 array!4996 (_ BitVec 32) (_ BitVec 32) V!3613 V!3613 (_ BitVec 32) Int) ListLongMap!1779)

(assert (=> b!146488 (= lt!77049 (getCurrentListMap!569 (_keys!4783 (v!3353 (underlying!500 thiss!992))) (_values!2997 (v!3353 (underlying!500 thiss!992))) (mask!7390 (v!3353 (underlying!500 thiss!992))) (extraKeys!2759 (v!3353 (underlying!500 thiss!992))) (zeroValue!2859 (v!3353 (underlying!500 thiss!992))) (minValue!2859 (v!3353 (underlying!500 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3014 (v!3353 (underlying!500 thiss!992)))))))

(declare-fun tp_is_empty!2975 () Bool)

(declare-fun e!95554 () Bool)

(declare-fun e!95560 () Bool)

(declare-fun array_inv!1465 (array!4994) Bool)

(declare-fun array_inv!1466 (array!4996) Bool)

(assert (=> b!146489 (= e!95560 (and tp!11853 tp_is_empty!2975 (array_inv!1465 (_keys!4783 (v!3353 (underlying!500 thiss!992)))) (array_inv!1466 (_values!2997 (v!3353 (underlying!500 thiss!992)))) e!95554))))

(declare-fun b!146490 () Bool)

(declare-fun e!95555 () Bool)

(assert (=> b!146490 (= e!95554 (and e!95555 mapRes!4998))))

(declare-fun condMapEmpty!4998 () Bool)

(declare-fun mapDefault!4997 () ValueCell!1144)

