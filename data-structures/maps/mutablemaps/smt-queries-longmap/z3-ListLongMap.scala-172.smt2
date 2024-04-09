; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3292 () Bool)

(assert start!3292)

(declare-fun b!20226 () Bool)

(declare-fun b_free!711 () Bool)

(declare-fun b_next!711 () Bool)

(assert (=> b!20226 (= b_free!711 (not b_next!711))))

(declare-fun tp!3361 () Bool)

(declare-fun b_and!1389 () Bool)

(assert (=> b!20226 (= tp!3361 b_and!1389)))

(declare-fun mapNonEmpty!934 () Bool)

(declare-fun mapRes!934 () Bool)

(declare-fun tp!3360 () Bool)

(declare-fun e!13200 () Bool)

(assert (=> mapNonEmpty!934 (= mapRes!934 (and tp!3360 e!13200))))

(declare-datatypes ((V!1125 0))(
  ( (V!1126 (val!514 Int)) )
))
(declare-datatypes ((ValueCell!288 0))(
  ( (ValueCellFull!288 (v!1545 V!1125)) (EmptyCell!288) )
))
(declare-fun mapValue!934 () ValueCell!288)

(declare-fun mapRest!934 () (Array (_ BitVec 32) ValueCell!288))

(declare-fun mapKey!934 () (_ BitVec 32))

(declare-datatypes ((array!1167 0))(
  ( (array!1168 (arr!555 (Array (_ BitVec 32) ValueCell!288)) (size!648 (_ BitVec 32))) )
))
(declare-datatypes ((array!1169 0))(
  ( (array!1170 (arr!556 (Array (_ BitVec 32) (_ BitVec 64))) (size!649 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!162 0))(
  ( (LongMapFixedSize!163 (defaultEntry!1704 Int) (mask!4666 (_ BitVec 32)) (extraKeys!1610 (_ BitVec 32)) (zeroValue!1634 V!1125) (minValue!1634 V!1125) (_size!119 (_ BitVec 32)) (_keys!3128 array!1169) (_values!1696 array!1167) (_vacant!119 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!162 0))(
  ( (Cell!163 (v!1546 LongMapFixedSize!162)) )
))
(declare-datatypes ((LongMap!162 0))(
  ( (LongMap!163 (underlying!92 Cell!162)) )
))
(declare-fun thiss!938 () LongMap!162)

(assert (=> mapNonEmpty!934 (= (arr!555 (_values!1696 (v!1546 (underlying!92 thiss!938)))) (store mapRest!934 mapKey!934 mapValue!934))))

(declare-fun b!20219 () Bool)

(declare-datatypes ((tuple2!830 0))(
  ( (tuple2!831 (_1!418 Bool) (_2!418 Cell!162)) )
))
(declare-fun e!13201 () tuple2!830)

(declare-fun lt!5890 () LongMapFixedSize!162)

(assert (=> b!20219 (= e!13201 (tuple2!831 true (Cell!163 lt!5890)))))

(declare-fun c!2184 () Bool)

(declare-fun c!2182 () Bool)

(declare-datatypes ((tuple2!832 0))(
  ( (tuple2!833 (_1!419 Bool) (_2!419 LongMapFixedSize!162)) )
))
(declare-fun call!987 () tuple2!832)

(declare-fun bm!984 () Bool)

(declare-fun update!16 (LongMapFixedSize!162 (_ BitVec 64) V!1125) tuple2!832)

(assert (=> bm!984 (= call!987 (update!16 lt!5890 (ite (or c!2182 c!2184) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2182 c!2184) (zeroValue!1634 (v!1546 (underlying!92 thiss!938))) (minValue!1634 (v!1546 (underlying!92 thiss!938))))))))

(declare-fun res!13410 () Bool)

(declare-fun e!13198 () Bool)

(assert (=> start!3292 (=> (not res!13410) (not e!13198))))

(declare-fun valid!84 (LongMap!162) Bool)

(assert (=> start!3292 (= res!13410 (valid!84 thiss!938))))

(assert (=> start!3292 e!13198))

(declare-fun e!13196 () Bool)

(assert (=> start!3292 e!13196))

(declare-fun b!20220 () Bool)

(declare-fun e!13204 () Bool)

(assert (=> b!20220 (= e!13196 e!13204)))

(declare-fun b!20221 () Bool)

(declare-fun tp_is_empty!975 () Bool)

(assert (=> b!20221 (= e!13200 tp_is_empty!975)))

(declare-fun b!20222 () Bool)

(declare-fun c!2183 () Bool)

(declare-fun lt!5891 () Bool)

(assert (=> b!20222 (= c!2183 (and (not (= (bvand (extraKeys!1610 (v!1546 (underlying!92 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!5891))))

(declare-fun e!13205 () tuple2!830)

(assert (=> b!20222 (= e!13205 e!13201)))

(declare-fun b!20223 () Bool)

(declare-fun e!13206 () Bool)

(assert (=> b!20223 (= e!13206 tp_is_empty!975)))

(declare-fun b!20224 () Bool)

(declare-fun e!13197 () tuple2!830)

(assert (=> b!20224 (= e!13197 e!13205)))

(assert (=> b!20224 (= c!2184 (and (not lt!5891) (= (bvand (extraKeys!1610 (v!1546 (underlying!92 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!20225 () Bool)

(declare-fun lt!5885 () tuple2!832)

(assert (=> b!20225 (= e!13201 (tuple2!831 (_1!419 lt!5885) (Cell!163 (_2!419 lt!5885))))))

(declare-fun call!988 () tuple2!832)

(assert (=> b!20225 (= lt!5885 call!988)))

(declare-fun e!13199 () Bool)

(declare-fun e!13203 () Bool)

(declare-fun array_inv!393 (array!1169) Bool)

(declare-fun array_inv!394 (array!1167) Bool)

(assert (=> b!20226 (= e!13199 (and tp!3361 tp_is_empty!975 (array_inv!393 (_keys!3128 (v!1546 (underlying!92 thiss!938)))) (array_inv!394 (_values!1696 (v!1546 (underlying!92 thiss!938)))) e!13203))))

(declare-fun b!20227 () Bool)

(declare-fun lt!5887 () tuple2!832)

(assert (=> b!20227 (= lt!5887 call!988)))

(assert (=> b!20227 (= e!13205 (tuple2!831 (_1!419 lt!5887) (Cell!163 (_2!419 lt!5887))))))

(declare-fun b!20228 () Bool)

(assert (=> b!20228 (= e!13198 false)))

(declare-fun lt!5889 () tuple2!830)

(assert (=> b!20228 (= lt!5889 e!13197)))

(assert (=> b!20228 (= c!2182 (and (not lt!5891) (not (= (bvand (extraKeys!1610 (v!1546 (underlying!92 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!20228 (= lt!5891 (= (bvand (extraKeys!1610 (v!1546 (underlying!92 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun getNewLongMapFixedSize!18 ((_ BitVec 32) Int) LongMapFixedSize!162)

(declare-fun computeNewMask!15 (LongMap!162 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!20228 (= lt!5890 (getNewLongMapFixedSize!18 (computeNewMask!15 thiss!938 (mask!4666 (v!1546 (underlying!92 thiss!938))) (_vacant!119 (v!1546 (underlying!92 thiss!938))) (_size!119 (v!1546 (underlying!92 thiss!938)))) (defaultEntry!1704 (v!1546 (underlying!92 thiss!938)))))))

(declare-fun bm!985 () Bool)

(assert (=> bm!985 (= call!988 call!987)))

(declare-fun b!20229 () Bool)

(declare-fun lt!5886 () tuple2!832)

(declare-fun lt!5888 () tuple2!832)

(assert (=> b!20229 (= e!13197 (tuple2!831 (and (_1!419 lt!5886) (_1!419 lt!5888)) (Cell!163 (_2!419 lt!5888))))))

(assert (=> b!20229 (= lt!5886 call!987)))

(assert (=> b!20229 (= lt!5888 (update!16 (_2!419 lt!5886) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1634 (v!1546 (underlying!92 thiss!938)))))))

(declare-fun b!20230 () Bool)

(assert (=> b!20230 (= e!13204 e!13199)))

(declare-fun b!20231 () Bool)

(assert (=> b!20231 (= e!13203 (and e!13206 mapRes!934))))

(declare-fun condMapEmpty!934 () Bool)

(declare-fun mapDefault!934 () ValueCell!288)

(assert (=> b!20231 (= condMapEmpty!934 (= (arr!555 (_values!1696 (v!1546 (underlying!92 thiss!938)))) ((as const (Array (_ BitVec 32) ValueCell!288)) mapDefault!934)))))

(declare-fun mapIsEmpty!934 () Bool)

(assert (=> mapIsEmpty!934 mapRes!934))

(assert (= (and start!3292 res!13410) b!20228))

(assert (= (and b!20228 c!2182) b!20229))

(assert (= (and b!20228 (not c!2182)) b!20224))

(assert (= (and b!20224 c!2184) b!20227))

(assert (= (and b!20224 (not c!2184)) b!20222))

(assert (= (and b!20222 c!2183) b!20225))

(assert (= (and b!20222 (not c!2183)) b!20219))

(assert (= (or b!20227 b!20225) bm!985))

(assert (= (or b!20229 bm!985) bm!984))

(assert (= (and b!20231 condMapEmpty!934) mapIsEmpty!934))

(assert (= (and b!20231 (not condMapEmpty!934)) mapNonEmpty!934))

(get-info :version)

(assert (= (and mapNonEmpty!934 ((_ is ValueCellFull!288) mapValue!934)) b!20221))

(assert (= (and b!20231 ((_ is ValueCellFull!288) mapDefault!934)) b!20223))

(assert (= b!20226 b!20231))

(assert (= b!20230 b!20226))

(assert (= b!20220 b!20230))

(assert (= start!3292 b!20220))

(declare-fun m!14199 () Bool)

(assert (=> bm!984 m!14199))

(declare-fun m!14201 () Bool)

(assert (=> start!3292 m!14201))

(declare-fun m!14203 () Bool)

(assert (=> b!20229 m!14203))

(declare-fun m!14205 () Bool)

(assert (=> b!20226 m!14205))

(declare-fun m!14207 () Bool)

(assert (=> b!20226 m!14207))

(declare-fun m!14209 () Bool)

(assert (=> mapNonEmpty!934 m!14209))

(declare-fun m!14211 () Bool)

(assert (=> b!20228 m!14211))

(assert (=> b!20228 m!14211))

(declare-fun m!14213 () Bool)

(assert (=> b!20228 m!14213))

(check-sat (not b!20229) (not b!20228) (not b!20226) (not bm!984) (not b_next!711) tp_is_empty!975 (not mapNonEmpty!934) (not start!3292) b_and!1389)
(check-sat b_and!1389 (not b_next!711))
