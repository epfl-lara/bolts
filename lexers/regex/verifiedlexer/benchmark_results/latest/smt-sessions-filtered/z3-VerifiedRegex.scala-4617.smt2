; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242082 () Bool)

(assert start!242082)

(declare-fun b!2481190 () Bool)

(declare-fun b_free!72273 () Bool)

(declare-fun b_next!72977 () Bool)

(assert (=> b!2481190 (= b_free!72273 (not b_next!72977))))

(declare-fun tp!794234 () Bool)

(declare-fun b_and!188519 () Bool)

(assert (=> b!2481190 (= tp!794234 b_and!188519)))

(declare-fun b!2481187 () Bool)

(declare-fun b_free!72275 () Bool)

(declare-fun b_next!72979 () Bool)

(assert (=> b!2481187 (= b_free!72275 (not b_next!72979))))

(declare-fun tp!794229 () Bool)

(declare-fun b_and!188521 () Bool)

(assert (=> b!2481187 (= tp!794229 b_and!188521)))

(declare-fun b!2481183 () Bool)

(declare-fun e!1574918 () Bool)

(declare-fun e!1574919 () Bool)

(declare-datatypes ((K!5470 0))(
  ( (K!5471 (val!8851 Int)) )
))
(declare-datatypes ((V!5672 0))(
  ( (V!5673 (val!8852 Int)) )
))
(declare-datatypes ((tuple2!28796 0))(
  ( (tuple2!28797 (_1!16939 K!5470) (_2!16939 V!5672)) )
))
(declare-datatypes ((List!29190 0))(
  ( (Nil!29090) (Cons!29090 (h!34496 tuple2!28796) (t!210847 List!29190)) )
))
(declare-datatypes ((array!11873 0))(
  ( (array!11874 (arr!5298 (Array (_ BitVec 32) List!29190)) (size!22717 (_ BitVec 32))) )
))
(declare-datatypes ((array!11875 0))(
  ( (array!11876 (arr!5299 (Array (_ BitVec 32) (_ BitVec 64))) (size!22718 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6708 0))(
  ( (LongMapFixedSize!6709 (defaultEntry!3728 Int) (mask!8520 (_ BitVec 32)) (extraKeys!3602 (_ BitVec 32)) (zeroValue!3612 List!29190) (minValue!3612 List!29190) (_size!6755 (_ BitVec 32)) (_keys!3651 array!11875) (_values!3634 array!11873) (_vacant!3415 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13233 0))(
  ( (Cell!13234 (v!31420 LongMapFixedSize!6708)) )
))
(declare-datatypes ((MutLongMap!3354 0))(
  ( (LongMap!3354 (underlying!6915 Cell!13233)) (MutLongMapExt!3353 (__x!18968 Int)) )
))
(declare-fun lt!888126 () MutLongMap!3354)

(get-info :version)

(assert (=> b!2481183 (= e!1574918 (and e!1574919 ((_ is LongMap!3354) lt!888126)))))

(declare-datatypes ((Hashable!3264 0))(
  ( (HashableExt!3263 (__x!18969 Int)) )
))
(declare-datatypes ((Cell!13235 0))(
  ( (Cell!13236 (v!31421 MutLongMap!3354)) )
))
(declare-datatypes ((MutableMap!3264 0))(
  ( (MutableMapExt!3263 (__x!18970 Int)) (HashMap!3264 (underlying!6916 Cell!13235) (hashF!5222 Hashable!3264) (_size!6756 (_ BitVec 32)) (defaultValue!3426 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3264)

(assert (=> b!2481183 (= lt!888126 (v!31421 (underlying!6916 thiss!42540)))))

(declare-fun b!2481184 () Bool)

(declare-fun e!1574920 () Bool)

(declare-fun tp!794233 () Bool)

(declare-fun mapRes!15520 () Bool)

(assert (=> b!2481184 (= e!1574920 (and tp!794233 mapRes!15520))))

(declare-fun condMapEmpty!15520 () Bool)

(declare-fun mapDefault!15520 () List!29190)

(assert (=> b!2481184 (= condMapEmpty!15520 (= (arr!5298 (_values!3634 (v!31420 (underlying!6915 (v!31421 (underlying!6916 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29190)) mapDefault!15520)))))

(declare-fun mapIsEmpty!15520 () Bool)

(assert (=> mapIsEmpty!15520 mapRes!15520))

(declare-fun b!2481185 () Bool)

(declare-fun e!1574924 () Bool)

(declare-fun e!1574922 () Bool)

(assert (=> b!2481185 (= e!1574924 e!1574922)))

(declare-fun b!2481186 () Bool)

(declare-fun res!1050426 () Bool)

(declare-fun e!1574925 () Bool)

(assert (=> b!2481186 (=> (not res!1050426) (not e!1574925))))

(declare-fun key!2246 () K!5470)

(declare-fun contains!5085 (MutableMap!3264 K!5470) Bool)

(assert (=> b!2481186 (= res!1050426 (not (contains!5085 thiss!42540 key!2246)))))

(declare-fun mapNonEmpty!15520 () Bool)

(declare-fun tp!794232 () Bool)

(declare-fun tp!794230 () Bool)

(assert (=> mapNonEmpty!15520 (= mapRes!15520 (and tp!794232 tp!794230))))

(declare-fun mapRest!15520 () (Array (_ BitVec 32) List!29190))

(declare-fun mapValue!15520 () List!29190)

(declare-fun mapKey!15520 () (_ BitVec 32))

(assert (=> mapNonEmpty!15520 (= (arr!5298 (_values!3634 (v!31420 (underlying!6915 (v!31421 (underlying!6916 thiss!42540)))))) (store mapRest!15520 mapKey!15520 mapValue!15520))))

(declare-fun res!1050428 () Bool)

(assert (=> start!242082 (=> (not res!1050428) (not e!1574925))))

(assert (=> start!242082 (= res!1050428 ((_ is HashMap!3264) thiss!42540))))

(assert (=> start!242082 e!1574925))

(declare-fun e!1574921 () Bool)

(assert (=> start!242082 e!1574921))

(declare-fun tp_is_empty!12231 () Bool)

(assert (=> start!242082 tp_is_empty!12231))

(assert (=> b!2481187 (= e!1574921 (and e!1574918 tp!794229))))

(declare-fun b!2481188 () Bool)

(assert (=> b!2481188 (= e!1574919 e!1574924)))

(declare-fun b!2481189 () Bool)

(assert (=> b!2481189 (= e!1574925 false)))

(declare-datatypes ((tuple2!28798 0))(
  ( (tuple2!28799 (_1!16940 (_ BitVec 64)) (_2!16940 List!29190)) )
))
(declare-datatypes ((List!29191 0))(
  ( (Nil!29091) (Cons!29091 (h!34497 tuple2!28798) (t!210848 List!29191)) )
))
(declare-datatypes ((ListLongMap!515 0))(
  ( (ListLongMap!516 (toList!1569 List!29191)) )
))
(declare-fun lt!888125 () ListLongMap!515)

(declare-fun map!6180 (MutLongMap!3354) ListLongMap!515)

(assert (=> b!2481189 (= lt!888125 (map!6180 (v!31421 (underlying!6916 thiss!42540))))))

(declare-fun tp!794228 () Bool)

(declare-fun tp!794231 () Bool)

(declare-fun array_inv!3803 (array!11875) Bool)

(declare-fun array_inv!3804 (array!11873) Bool)

(assert (=> b!2481190 (= e!1574922 (and tp!794234 tp!794228 tp!794231 (array_inv!3803 (_keys!3651 (v!31420 (underlying!6915 (v!31421 (underlying!6916 thiss!42540)))))) (array_inv!3804 (_values!3634 (v!31420 (underlying!6915 (v!31421 (underlying!6916 thiss!42540)))))) e!1574920))))

(declare-fun b!2481191 () Bool)

(declare-fun res!1050427 () Bool)

(assert (=> b!2481191 (=> (not res!1050427) (not e!1574925))))

(declare-fun valid!2559 (MutableMap!3264) Bool)

(assert (=> b!2481191 (= res!1050427 (valid!2559 thiss!42540))))

(assert (= (and start!242082 res!1050428) b!2481191))

(assert (= (and b!2481191 res!1050427) b!2481186))

(assert (= (and b!2481186 res!1050426) b!2481189))

(assert (= (and b!2481184 condMapEmpty!15520) mapIsEmpty!15520))

(assert (= (and b!2481184 (not condMapEmpty!15520)) mapNonEmpty!15520))

(assert (= b!2481190 b!2481184))

(assert (= b!2481185 b!2481190))

(assert (= b!2481188 b!2481185))

(assert (= (and b!2481183 ((_ is LongMap!3354) (v!31421 (underlying!6916 thiss!42540)))) b!2481188))

(assert (= b!2481187 b!2481183))

(assert (= (and start!242082 ((_ is HashMap!3264) thiss!42540)) b!2481187))

(declare-fun m!2849245 () Bool)

(assert (=> b!2481191 m!2849245))

(declare-fun m!2849247 () Bool)

(assert (=> b!2481190 m!2849247))

(declare-fun m!2849249 () Bool)

(assert (=> b!2481190 m!2849249))

(declare-fun m!2849251 () Bool)

(assert (=> mapNonEmpty!15520 m!2849251))

(declare-fun m!2849253 () Bool)

(assert (=> b!2481189 m!2849253))

(declare-fun m!2849255 () Bool)

(assert (=> b!2481186 m!2849255))

(check-sat (not b!2481184) (not b!2481190) b_and!188521 (not b_next!72979) (not b!2481191) tp_is_empty!12231 (not b!2481186) b_and!188519 (not b_next!72977) (not mapNonEmpty!15520) (not b!2481189))
(check-sat b_and!188521 b_and!188519 (not b_next!72977) (not b_next!72979))
