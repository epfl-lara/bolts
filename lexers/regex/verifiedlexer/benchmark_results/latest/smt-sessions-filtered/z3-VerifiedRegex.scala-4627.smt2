; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242272 () Bool)

(assert start!242272)

(declare-fun b!2482356 () Bool)

(declare-fun b_free!72353 () Bool)

(declare-fun b_next!73057 () Bool)

(assert (=> b!2482356 (= b_free!72353 (not b_next!73057))))

(declare-fun tp!794732 () Bool)

(declare-fun b_and!188603 () Bool)

(assert (=> b!2482356 (= tp!794732 b_and!188603)))

(declare-fun b!2482360 () Bool)

(declare-fun b_free!72355 () Bool)

(declare-fun b_next!73059 () Bool)

(assert (=> b!2482360 (= b_free!72355 (not b_next!73059))))

(declare-fun tp!794734 () Bool)

(declare-fun b_and!188605 () Bool)

(assert (=> b!2482360 (= tp!794734 b_and!188605)))

(declare-fun res!1050854 () Bool)

(declare-fun e!1575817 () Bool)

(assert (=> start!242272 (=> (not res!1050854) (not e!1575817))))

(declare-datatypes ((Hashable!3284 0))(
  ( (HashableExt!3283 (__x!19028 Int)) )
))
(declare-datatypes ((K!5520 0))(
  ( (K!5521 (val!8891 Int)) )
))
(declare-datatypes ((V!5722 0))(
  ( (V!5723 (val!8892 Int)) )
))
(declare-datatypes ((tuple2!28866 0))(
  ( (tuple2!28867 (_1!16974 K!5520) (_2!16974 V!5722)) )
))
(declare-datatypes ((List!29225 0))(
  ( (Nil!29125) (Cons!29125 (h!34531 tuple2!28866) (t!210886 List!29225)) )
))
(declare-datatypes ((array!11963 0))(
  ( (array!11964 (arr!5338 (Array (_ BitVec 32) List!29225)) (size!22757 (_ BitVec 32))) )
))
(declare-datatypes ((array!11965 0))(
  ( (array!11966 (arr!5339 (Array (_ BitVec 32) (_ BitVec 64))) (size!22758 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6748 0))(
  ( (LongMapFixedSize!6749 (defaultEntry!3748 Int) (mask!8550 (_ BitVec 32)) (extraKeys!3622 (_ BitVec 32)) (zeroValue!3632 List!29225) (minValue!3632 List!29225) (_size!6795 (_ BitVec 32)) (_keys!3671 array!11965) (_values!3654 array!11963) (_vacant!3435 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13313 0))(
  ( (Cell!13314 (v!31478 LongMapFixedSize!6748)) )
))
(declare-datatypes ((MutLongMap!3374 0))(
  ( (LongMap!3374 (underlying!6955 Cell!13313)) (MutLongMapExt!3373 (__x!19029 Int)) )
))
(declare-datatypes ((Cell!13315 0))(
  ( (Cell!13316 (v!31479 MutLongMap!3374)) )
))
(declare-datatypes ((MutableMap!3284 0))(
  ( (MutableMapExt!3283 (__x!19030 Int)) (HashMap!3284 (underlying!6956 Cell!13315) (hashF!5247 Hashable!3284) (_size!6796 (_ BitVec 32)) (defaultValue!3446 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3284)

(get-info :version)

(assert (=> start!242272 (= res!1050854 ((_ is HashMap!3284) thiss!42540))))

(assert (=> start!242272 e!1575817))

(declare-fun e!1575819 () Bool)

(assert (=> start!242272 e!1575819))

(declare-fun tp_is_empty!12281 () Bool)

(assert (=> start!242272 tp_is_empty!12281))

(declare-fun b!2482355 () Bool)

(declare-fun e!1575816 () Bool)

(declare-fun tp!794738 () Bool)

(declare-fun mapRes!15596 () Bool)

(assert (=> b!2482355 (= e!1575816 (and tp!794738 mapRes!15596))))

(declare-fun condMapEmpty!15596 () Bool)

(declare-fun mapDefault!15596 () List!29225)

(assert (=> b!2482355 (= condMapEmpty!15596 (= (arr!5338 (_values!3654 (v!31478 (underlying!6955 (v!31479 (underlying!6956 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29225)) mapDefault!15596)))))

(declare-fun tp!794736 () Bool)

(declare-fun tp!794733 () Bool)

(declare-fun e!1575821 () Bool)

(declare-fun array_inv!3831 (array!11965) Bool)

(declare-fun array_inv!3832 (array!11963) Bool)

(assert (=> b!2482356 (= e!1575821 (and tp!794732 tp!794733 tp!794736 (array_inv!3831 (_keys!3671 (v!31478 (underlying!6955 (v!31479 (underlying!6956 thiss!42540)))))) (array_inv!3832 (_values!3654 (v!31478 (underlying!6955 (v!31479 (underlying!6956 thiss!42540)))))) e!1575816))))

(declare-fun mapNonEmpty!15596 () Bool)

(declare-fun tp!794737 () Bool)

(declare-fun tp!794735 () Bool)

(assert (=> mapNonEmpty!15596 (= mapRes!15596 (and tp!794737 tp!794735))))

(declare-fun mapRest!15596 () (Array (_ BitVec 32) List!29225))

(declare-fun mapValue!15596 () List!29225)

(declare-fun mapKey!15596 () (_ BitVec 32))

(assert (=> mapNonEmpty!15596 (= (arr!5338 (_values!3654 (v!31478 (underlying!6955 (v!31479 (underlying!6956 thiss!42540)))))) (store mapRest!15596 mapKey!15596 mapValue!15596))))

(declare-fun b!2482357 () Bool)

(declare-fun e!1575818 () Bool)

(assert (=> b!2482357 (= e!1575818 e!1575821)))

(declare-fun b!2482358 () Bool)

(assert (=> b!2482358 (= e!1575817 false)))

(declare-fun key!2246 () K!5520)

(declare-fun lt!888878 () List!29225)

(declare-fun lt!888875 () (_ BitVec 64))

(declare-datatypes ((tuple2!28868 0))(
  ( (tuple2!28869 (_1!16975 Bool) (_2!16975 MutLongMap!3374)) )
))
(declare-fun lt!888879 () tuple2!28868)

(declare-fun update!191 (MutLongMap!3374 (_ BitVec 64) List!29225) tuple2!28868)

(declare-fun removePairForKey!75 (List!29225 K!5520) List!29225)

(assert (=> b!2482358 (= lt!888879 (update!191 (v!31479 (underlying!6956 thiss!42540)) lt!888875 (removePairForKey!75 lt!888878 key!2246)))))

(declare-datatypes ((ListMap!1075 0))(
  ( (ListMap!1076 (toList!1593 List!29225)) )
))
(declare-fun lt!888880 () ListMap!1075)

(declare-fun map!6218 (MutableMap!3284) ListMap!1075)

(assert (=> b!2482358 (= lt!888880 (map!6218 thiss!42540))))

(declare-fun lambda!94087 () Int)

(declare-datatypes ((Unit!42640 0))(
  ( (Unit!42641) )
))
(declare-fun lt!888876 () Unit!42640)

(declare-datatypes ((tuple2!28870 0))(
  ( (tuple2!28871 (_1!16976 (_ BitVec 64)) (_2!16976 List!29225)) )
))
(declare-datatypes ((List!29226 0))(
  ( (Nil!29126) (Cons!29126 (h!34532 tuple2!28870) (t!210887 List!29226)) )
))
(declare-fun forallContained!864 (List!29226 Int tuple2!28870) Unit!42640)

(declare-datatypes ((ListLongMap!541 0))(
  ( (ListLongMap!542 (toList!1594 List!29226)) )
))
(declare-fun map!6219 (MutLongMap!3374) ListLongMap!541)

(assert (=> b!2482358 (= lt!888876 (forallContained!864 (toList!1594 (map!6219 (v!31479 (underlying!6956 thiss!42540)))) lambda!94087 (tuple2!28871 lt!888875 lt!888878)))))

(declare-fun apply!6928 (MutLongMap!3374 (_ BitVec 64)) List!29225)

(assert (=> b!2482358 (= lt!888878 (apply!6928 (v!31479 (underlying!6956 thiss!42540)) lt!888875))))

(declare-fun hash!698 (Hashable!3284 K!5520) (_ BitVec 64))

(assert (=> b!2482358 (= lt!888875 (hash!698 (hashF!5247 thiss!42540) key!2246))))

(declare-fun b!2482359 () Bool)

(declare-fun e!1575815 () Bool)

(declare-fun e!1575820 () Bool)

(declare-fun lt!888877 () MutLongMap!3374)

(assert (=> b!2482359 (= e!1575815 (and e!1575820 ((_ is LongMap!3374) lt!888877)))))

(assert (=> b!2482359 (= lt!888877 (v!31479 (underlying!6956 thiss!42540)))))

(assert (=> b!2482360 (= e!1575819 (and e!1575815 tp!794734))))

(declare-fun mapIsEmpty!15596 () Bool)

(assert (=> mapIsEmpty!15596 mapRes!15596))

(declare-fun b!2482361 () Bool)

(declare-fun res!1050856 () Bool)

(assert (=> b!2482361 (=> (not res!1050856) (not e!1575817))))

(declare-fun valid!2578 (MutableMap!3284) Bool)

(assert (=> b!2482361 (= res!1050856 (valid!2578 thiss!42540))))

(declare-fun b!2482362 () Bool)

(assert (=> b!2482362 (= e!1575820 e!1575818)))

(declare-fun b!2482363 () Bool)

(declare-fun res!1050855 () Bool)

(assert (=> b!2482363 (=> (not res!1050855) (not e!1575817))))

(declare-fun contains!5123 (MutableMap!3284 K!5520) Bool)

(assert (=> b!2482363 (= res!1050855 (contains!5123 thiss!42540 key!2246))))

(assert (= (and start!242272 res!1050854) b!2482361))

(assert (= (and b!2482361 res!1050856) b!2482363))

(assert (= (and b!2482363 res!1050855) b!2482358))

(assert (= (and b!2482355 condMapEmpty!15596) mapIsEmpty!15596))

(assert (= (and b!2482355 (not condMapEmpty!15596)) mapNonEmpty!15596))

(assert (= b!2482356 b!2482355))

(assert (= b!2482357 b!2482356))

(assert (= b!2482362 b!2482357))

(assert (= (and b!2482359 ((_ is LongMap!3374) (v!31479 (underlying!6956 thiss!42540)))) b!2482362))

(assert (= b!2482360 b!2482359))

(assert (= (and start!242272 ((_ is HashMap!3284) thiss!42540)) b!2482360))

(declare-fun m!2850405 () Bool)

(assert (=> b!2482363 m!2850405))

(declare-fun m!2850407 () Bool)

(assert (=> b!2482361 m!2850407))

(declare-fun m!2850409 () Bool)

(assert (=> mapNonEmpty!15596 m!2850409))

(declare-fun m!2850411 () Bool)

(assert (=> b!2482356 m!2850411))

(declare-fun m!2850413 () Bool)

(assert (=> b!2482356 m!2850413))

(declare-fun m!2850415 () Bool)

(assert (=> b!2482358 m!2850415))

(declare-fun m!2850417 () Bool)

(assert (=> b!2482358 m!2850417))

(declare-fun m!2850419 () Bool)

(assert (=> b!2482358 m!2850419))

(declare-fun m!2850421 () Bool)

(assert (=> b!2482358 m!2850421))

(declare-fun m!2850423 () Bool)

(assert (=> b!2482358 m!2850423))

(declare-fun m!2850425 () Bool)

(assert (=> b!2482358 m!2850425))

(assert (=> b!2482358 m!2850421))

(declare-fun m!2850427 () Bool)

(assert (=> b!2482358 m!2850427))

(check-sat (not b_next!73059) (not b!2482361) (not b!2482356) (not b_next!73057) (not b!2482363) (not b!2482355) b_and!188605 tp_is_empty!12281 (not mapNonEmpty!15596) b_and!188603 (not b!2482358))
(check-sat b_and!188605 b_and!188603 (not b_next!73057) (not b_next!73059))
