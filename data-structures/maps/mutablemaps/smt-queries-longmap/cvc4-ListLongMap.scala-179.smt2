; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3474 () Bool)

(assert start!3474)

(declare-fun b!22884 () Bool)

(declare-fun b_free!755 () Bool)

(declare-fun b_next!755 () Bool)

(assert (=> b!22884 (= b_free!755 (not b_next!755))))

(declare-fun tp!3508 () Bool)

(declare-fun b_and!1475 () Bool)

(assert (=> b!22884 (= tp!3508 b_and!1475)))

(declare-fun bm!1744 () Bool)

(declare-datatypes ((V!1183 0))(
  ( (V!1184 (val!536 Int)) )
))
(declare-datatypes ((ValueCell!310 0))(
  ( (ValueCellFull!310 (v!1598 V!1183)) (EmptyCell!310) )
))
(declare-datatypes ((array!1265 0))(
  ( (array!1266 (arr!599 (Array (_ BitVec 32) ValueCell!310)) (size!695 (_ BitVec 32))) )
))
(declare-datatypes ((array!1267 0))(
  ( (array!1268 (arr!600 (Array (_ BitVec 32) (_ BitVec 64))) (size!696 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!206 0))(
  ( (LongMapFixedSize!207 (defaultEntry!1740 Int) (mask!4724 (_ BitVec 32)) (extraKeys!1639 (_ BitVec 32)) (zeroValue!1664 V!1183) (minValue!1664 V!1183) (_size!147 (_ BitVec 32)) (_keys!3162 array!1267) (_values!1727 array!1265) (_vacant!147 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!930 0))(
  ( (tuple2!931 (_1!472 Bool) (_2!472 LongMapFixedSize!206)) )
))
(declare-fun lt!7942 () tuple2!930)

(declare-fun lt!7945 () LongMapFixedSize!206)

(declare-fun call!1748 () tuple2!930)

(declare-fun c!2871 () Bool)

(declare-datatypes ((Cell!206 0))(
  ( (Cell!207 (v!1599 LongMapFixedSize!206)) )
))
(declare-datatypes ((LongMap!206 0))(
  ( (LongMap!207 (underlying!114 Cell!206)) )
))
(declare-fun thiss!938 () LongMap!206)

(declare-fun c!2870 () Bool)

(declare-fun update!33 (LongMapFixedSize!206 (_ BitVec 64) V!1183) tuple2!930)

(assert (=> bm!1744 (= call!1748 (update!33 (ite c!2870 (_2!472 lt!7942) lt!7945) (ite c!2870 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2871 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2870 (minValue!1664 (v!1599 (underlying!114 thiss!938))) (ite c!2871 (zeroValue!1664 (v!1599 (underlying!114 thiss!938))) (minValue!1664 (v!1599 (underlying!114 thiss!938)))))))))

(declare-fun b!22881 () Bool)

(declare-fun e!14889 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!22881 (= e!14889 (not (validMask!0 (mask!4724 (v!1599 (underlying!114 thiss!938))))))))

(declare-fun b!22882 () Bool)

(declare-datatypes ((tuple2!932 0))(
  ( (tuple2!933 (_1!473 Bool) (_2!473 Cell!206)) )
))
(declare-fun e!14884 () tuple2!932)

(assert (=> b!22882 (= e!14884 (tuple2!933 true (Cell!207 lt!7945)))))

(declare-fun b!22883 () Bool)

(declare-fun e!14885 () tuple2!932)

(declare-fun e!14888 () tuple2!932)

(assert (=> b!22883 (= e!14885 e!14888)))

(declare-fun lt!7946 () Bool)

(assert (=> b!22883 (= c!2871 (and (not lt!7946) (= (bvand (extraKeys!1639 (v!1599 (underlying!114 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!14887 () Bool)

(declare-fun e!14895 () Bool)

(declare-fun tp_is_empty!1019 () Bool)

(declare-fun array_inv!423 (array!1267) Bool)

(declare-fun array_inv!424 (array!1265) Bool)

(assert (=> b!22884 (= e!14887 (and tp!3508 tp_is_empty!1019 (array_inv!423 (_keys!3162 (v!1599 (underlying!114 thiss!938)))) (array_inv!424 (_values!1727 (v!1599 (underlying!114 thiss!938)))) e!14895))))

(declare-fun b!22885 () Bool)

(declare-fun lt!7943 () tuple2!930)

(declare-fun call!1747 () tuple2!930)

(assert (=> b!22885 (= lt!7943 call!1747)))

(assert (=> b!22885 (= e!14888 (tuple2!933 (_1!472 lt!7943) (Cell!207 (_2!472 lt!7943))))))

(declare-fun b!22887 () Bool)

(declare-fun e!14894 () Bool)

(declare-fun e!14890 () Bool)

(assert (=> b!22887 (= e!14894 e!14890)))

(declare-fun b!22888 () Bool)

(declare-fun lt!7944 () tuple2!930)

(assert (=> b!22888 (= e!14885 (tuple2!933 (and (_1!472 lt!7942) (_1!472 lt!7944)) (Cell!207 (_2!472 lt!7944))))))

(assert (=> b!22888 (= lt!7942 (update!33 lt!7945 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1664 (v!1599 (underlying!114 thiss!938)))))))

(assert (=> b!22888 (= lt!7944 call!1748)))

(declare-fun b!22889 () Bool)

(declare-fun lt!7941 () tuple2!930)

(assert (=> b!22889 (= e!14884 (tuple2!933 (_1!472 lt!7941) (Cell!207 (_2!472 lt!7941))))))

(assert (=> b!22889 (= lt!7941 call!1747)))

(declare-fun b!22890 () Bool)

(declare-fun e!14891 () Bool)

(declare-fun mapRes!1016 () Bool)

(assert (=> b!22890 (= e!14895 (and e!14891 mapRes!1016))))

(declare-fun condMapEmpty!1016 () Bool)

(declare-fun mapDefault!1016 () ValueCell!310)

