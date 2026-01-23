; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242242 () Bool)

(assert start!242242)

(declare-fun b!2482144 () Bool)

(declare-fun b_free!72337 () Bool)

(declare-fun b_next!73041 () Bool)

(assert (=> b!2482144 (= b_free!72337 (not b_next!73041))))

(declare-fun tp!794639 () Bool)

(declare-fun b_and!188585 () Bool)

(assert (=> b!2482144 (= tp!794639 b_and!188585)))

(declare-fun b!2482149 () Bool)

(declare-fun b_free!72339 () Bool)

(declare-fun b_next!73043 () Bool)

(assert (=> b!2482149 (= b_free!72339 (not b_next!73043))))

(declare-fun tp!794636 () Bool)

(declare-fun b_and!188587 () Bool)

(assert (=> b!2482149 (= tp!794636 b_and!188587)))

(declare-fun tp!794634 () Bool)

(declare-fun tp!794638 () Bool)

(declare-fun e!1575661 () Bool)

(declare-datatypes ((Hashable!3280 0))(
  ( (HashableExt!3279 (__x!19016 Int)) )
))
(declare-datatypes ((K!5510 0))(
  ( (K!5511 (val!8883 Int)) )
))
(declare-datatypes ((V!5712 0))(
  ( (V!5713 (val!8884 Int)) )
))
(declare-datatypes ((tuple2!28850 0))(
  ( (tuple2!28851 (_1!16966 K!5510) (_2!16966 V!5712)) )
))
(declare-datatypes ((List!29219 0))(
  ( (Nil!29119) (Cons!29119 (h!34525 tuple2!28850) (t!210878 List!29219)) )
))
(declare-datatypes ((array!11945 0))(
  ( (array!11946 (arr!5330 (Array (_ BitVec 32) List!29219)) (size!22749 (_ BitVec 32))) )
))
(declare-datatypes ((array!11947 0))(
  ( (array!11948 (arr!5331 (Array (_ BitVec 32) (_ BitVec 64))) (size!22750 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6740 0))(
  ( (LongMapFixedSize!6741 (defaultEntry!3744 Int) (mask!8544 (_ BitVec 32)) (extraKeys!3618 (_ BitVec 32)) (zeroValue!3628 List!29219) (minValue!3628 List!29219) (_size!6787 (_ BitVec 32)) (_keys!3667 array!11947) (_values!3650 array!11945) (_vacant!3431 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13297 0))(
  ( (Cell!13298 (v!31464 LongMapFixedSize!6740)) )
))
(declare-datatypes ((MutLongMap!3370 0))(
  ( (LongMap!3370 (underlying!6947 Cell!13297)) (MutLongMapExt!3369 (__x!19017 Int)) )
))
(declare-datatypes ((Cell!13299 0))(
  ( (Cell!13300 (v!31465 MutLongMap!3370)) )
))
(declare-datatypes ((MutableMap!3280 0))(
  ( (MutableMapExt!3279 (__x!19018 Int)) (HashMap!3280 (underlying!6948 Cell!13299) (hashF!5243 Hashable!3280) (_size!6788 (_ BitVec 32)) (defaultValue!3442 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3280)

(declare-fun e!1575656 () Bool)

(declare-fun array_inv!3825 (array!11947) Bool)

(declare-fun array_inv!3826 (array!11945) Bool)

(assert (=> b!2482144 (= e!1575656 (and tp!794639 tp!794638 tp!794634 (array_inv!3825 (_keys!3667 (v!31464 (underlying!6947 (v!31465 (underlying!6948 thiss!42540)))))) (array_inv!3826 (_values!3650 (v!31464 (underlying!6947 (v!31465 (underlying!6948 thiss!42540)))))) e!1575661))))

(declare-fun b!2482145 () Bool)

(declare-fun e!1575662 () Bool)

(assert (=> b!2482145 (= e!1575662 e!1575656)))

(declare-fun mapNonEmpty!15581 () Bool)

(declare-fun mapRes!15581 () Bool)

(declare-fun tp!794635 () Bool)

(declare-fun tp!794633 () Bool)

(assert (=> mapNonEmpty!15581 (= mapRes!15581 (and tp!794635 tp!794633))))

(declare-fun mapRest!15581 () (Array (_ BitVec 32) List!29219))

(declare-fun mapKey!15581 () (_ BitVec 32))

(declare-fun mapValue!15581 () List!29219)

(assert (=> mapNonEmpty!15581 (= (arr!5330 (_values!3650 (v!31464 (underlying!6947 (v!31465 (underlying!6948 thiss!42540)))))) (store mapRest!15581 mapKey!15581 mapValue!15581))))

(declare-fun res!1050792 () Bool)

(declare-fun e!1575659 () Bool)

(assert (=> start!242242 (=> (not res!1050792) (not e!1575659))))

(get-info :version)

(assert (=> start!242242 (= res!1050792 ((_ is HashMap!3280) thiss!42540))))

(assert (=> start!242242 e!1575659))

(declare-fun e!1575658 () Bool)

(assert (=> start!242242 e!1575658))

(declare-fun tp_is_empty!12271 () Bool)

(assert (=> start!242242 tp_is_empty!12271))

(declare-fun mapIsEmpty!15581 () Bool)

(assert (=> mapIsEmpty!15581 mapRes!15581))

(declare-fun b!2482146 () Bool)

(declare-fun res!1050791 () Bool)

(assert (=> b!2482146 (=> (not res!1050791) (not e!1575659))))

(declare-fun valid!2575 (MutableMap!3280) Bool)

(assert (=> b!2482146 (= res!1050791 (valid!2575 thiss!42540))))

(declare-fun b!2482147 () Bool)

(assert (=> b!2482147 (= e!1575659 false)))

(declare-fun lt!888729 () List!29219)

(declare-fun lt!888727 () List!29219)

(declare-fun key!2246 () K!5510)

(declare-fun removePairForKey!73 (List!29219 K!5510) List!29219)

(assert (=> b!2482147 (= lt!888729 (removePairForKey!73 lt!888727 key!2246))))

(declare-datatypes ((ListMap!1071 0))(
  ( (ListMap!1072 (toList!1589 List!29219)) )
))
(declare-fun lt!888725 () ListMap!1071)

(declare-fun map!6211 (MutableMap!3280) ListMap!1071)

(assert (=> b!2482147 (= lt!888725 (map!6211 thiss!42540))))

(declare-datatypes ((Unit!42631 0))(
  ( (Unit!42632) )
))
(declare-fun lt!888728 () Unit!42631)

(declare-fun lt!888726 () (_ BitVec 64))

(declare-fun lambda!94069 () Int)

(declare-datatypes ((tuple2!28852 0))(
  ( (tuple2!28853 (_1!16967 (_ BitVec 64)) (_2!16967 List!29219)) )
))
(declare-datatypes ((List!29220 0))(
  ( (Nil!29120) (Cons!29120 (h!34526 tuple2!28852) (t!210879 List!29220)) )
))
(declare-fun forallContained!862 (List!29220 Int tuple2!28852) Unit!42631)

(declare-datatypes ((ListLongMap!537 0))(
  ( (ListLongMap!538 (toList!1590 List!29220)) )
))
(declare-fun map!6212 (MutLongMap!3370) ListLongMap!537)

(assert (=> b!2482147 (= lt!888728 (forallContained!862 (toList!1590 (map!6212 (v!31465 (underlying!6948 thiss!42540)))) lambda!94069 (tuple2!28853 lt!888726 lt!888727)))))

(declare-fun apply!6924 (MutLongMap!3370 (_ BitVec 64)) List!29219)

(assert (=> b!2482147 (= lt!888727 (apply!6924 (v!31465 (underlying!6948 thiss!42540)) lt!888726))))

(declare-fun hash!695 (Hashable!3280 K!5510) (_ BitVec 64))

(assert (=> b!2482147 (= lt!888726 (hash!695 (hashF!5243 thiss!42540) key!2246))))

(declare-fun b!2482148 () Bool)

(declare-fun e!1575660 () Bool)

(assert (=> b!2482148 (= e!1575660 e!1575662)))

(declare-fun e!1575655 () Bool)

(assert (=> b!2482149 (= e!1575658 (and e!1575655 tp!794636))))

(declare-fun b!2482150 () Bool)

(declare-fun tp!794637 () Bool)

(assert (=> b!2482150 (= e!1575661 (and tp!794637 mapRes!15581))))

(declare-fun condMapEmpty!15581 () Bool)

(declare-fun mapDefault!15581 () List!29219)

(assert (=> b!2482150 (= condMapEmpty!15581 (= (arr!5330 (_values!3650 (v!31464 (underlying!6947 (v!31465 (underlying!6948 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29219)) mapDefault!15581)))))

(declare-fun b!2482151 () Bool)

(declare-fun res!1050793 () Bool)

(assert (=> b!2482151 (=> (not res!1050793) (not e!1575659))))

(declare-fun contains!5117 (MutableMap!3280 K!5510) Bool)

(assert (=> b!2482151 (= res!1050793 (contains!5117 thiss!42540 key!2246))))

(declare-fun b!2482152 () Bool)

(declare-fun lt!888730 () MutLongMap!3370)

(assert (=> b!2482152 (= e!1575655 (and e!1575660 ((_ is LongMap!3370) lt!888730)))))

(assert (=> b!2482152 (= lt!888730 (v!31465 (underlying!6948 thiss!42540)))))

(assert (= (and start!242242 res!1050792) b!2482146))

(assert (= (and b!2482146 res!1050791) b!2482151))

(assert (= (and b!2482151 res!1050793) b!2482147))

(assert (= (and b!2482150 condMapEmpty!15581) mapIsEmpty!15581))

(assert (= (and b!2482150 (not condMapEmpty!15581)) mapNonEmpty!15581))

(assert (= b!2482144 b!2482150))

(assert (= b!2482145 b!2482144))

(assert (= b!2482148 b!2482145))

(assert (= (and b!2482152 ((_ is LongMap!3370) (v!31465 (underlying!6948 thiss!42540)))) b!2482148))

(assert (= b!2482149 b!2482152))

(assert (= (and start!242242 ((_ is HashMap!3280) thiss!42540)) b!2482149))

(declare-fun m!2850209 () Bool)

(assert (=> b!2482146 m!2850209))

(declare-fun m!2850211 () Bool)

(assert (=> b!2482151 m!2850211))

(declare-fun m!2850213 () Bool)

(assert (=> b!2482144 m!2850213))

(declare-fun m!2850215 () Bool)

(assert (=> b!2482144 m!2850215))

(declare-fun m!2850217 () Bool)

(assert (=> b!2482147 m!2850217))

(declare-fun m!2850219 () Bool)

(assert (=> b!2482147 m!2850219))

(declare-fun m!2850221 () Bool)

(assert (=> b!2482147 m!2850221))

(declare-fun m!2850223 () Bool)

(assert (=> b!2482147 m!2850223))

(declare-fun m!2850225 () Bool)

(assert (=> b!2482147 m!2850225))

(declare-fun m!2850227 () Bool)

(assert (=> b!2482147 m!2850227))

(declare-fun m!2850229 () Bool)

(assert (=> mapNonEmpty!15581 m!2850229))

(check-sat (not b!2482151) (not mapNonEmpty!15581) (not b!2482144) (not b_next!73041) (not b!2482150) b_and!188585 (not b_next!73043) (not b!2482147) b_and!188587 tp_is_empty!12271 (not b!2482146))
(check-sat b_and!188587 b_and!188585 (not b_next!73041) (not b_next!73043))
