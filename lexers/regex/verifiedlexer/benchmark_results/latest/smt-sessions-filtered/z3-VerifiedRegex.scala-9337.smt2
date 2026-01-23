; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496646 () Bool)

(assert start!496646)

(declare-fun b!4806416 () Bool)

(declare-fun b_free!129875 () Bool)

(declare-fun b_next!130665 () Bool)

(assert (=> b!4806416 (= b_free!129875 (not b_next!130665))))

(declare-fun tp!1358938 () Bool)

(declare-fun b_and!341631 () Bool)

(assert (=> b!4806416 (= tp!1358938 b_and!341631)))

(declare-fun b!4806421 () Bool)

(declare-fun b_free!129877 () Bool)

(declare-fun b_next!130667 () Bool)

(assert (=> b!4806421 (= b_free!129877 (not b_next!130667))))

(declare-fun tp!1358936 () Bool)

(declare-fun b_and!341633 () Bool)

(assert (=> b!4806421 (= tp!1358936 b_and!341633)))

(declare-fun b!4806415 () Bool)

(declare-fun e!3001833 () Bool)

(declare-datatypes ((K!15974 0))(
  ( (K!15975 (val!21085 Int)) )
))
(declare-datatypes ((array!18278 0))(
  ( (array!18279 (arr!8151 (Array (_ BitVec 32) (_ BitVec 64))) (size!36397 (_ BitVec 32))) )
))
(declare-datatypes ((V!16220 0))(
  ( (V!16221 (val!21086 Int)) )
))
(declare-datatypes ((tuple2!57130 0))(
  ( (tuple2!57131 (_1!31859 K!15974) (_2!31859 V!16220)) )
))
(declare-datatypes ((List!54518 0))(
  ( (Nil!54394) (Cons!54394 (h!60826 tuple2!57130) (t!361970 List!54518)) )
))
(declare-datatypes ((array!18280 0))(
  ( (array!18281 (arr!8152 (Array (_ BitVec 32) List!54518)) (size!36398 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9966 0))(
  ( (LongMapFixedSize!9967 (defaultEntry!5401 Int) (mask!14945 (_ BitVec 32)) (extraKeys!5258 (_ BitVec 32)) (zeroValue!5271 List!54518) (minValue!5271 List!54518) (_size!9991 (_ BitVec 32)) (_keys!5325 array!18278) (_values!5296 array!18280) (_vacant!5048 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19697 0))(
  ( (Cell!19698 (v!48602 LongMapFixedSize!9966)) )
))
(declare-datatypes ((MutLongMap!4983 0))(
  ( (LongMap!4983 (underlying!10173 Cell!19697)) (MutLongMapExt!4982 (__x!33047 Int)) )
))
(declare-datatypes ((Hashable!6994 0))(
  ( (HashableExt!6993 (__x!33048 Int)) )
))
(declare-datatypes ((Cell!19699 0))(
  ( (Cell!19700 (v!48603 MutLongMap!4983)) )
))
(declare-datatypes ((MutableMap!4867 0))(
  ( (MutableMapExt!4866 (__x!33049 Int)) (HashMap!4867 (underlying!10174 Cell!19699) (hashF!13262 Hashable!6994) (_size!9992 (_ BitVec 32)) (defaultValue!5038 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4867)

(get-info :version)

(assert (=> b!4806415 (= e!3001833 (not ((_ is LongMap!4983) (v!48603 (underlying!10174 thiss!41921)))))))

(declare-datatypes ((tuple2!57132 0))(
  ( (tuple2!57133 (_1!31860 (_ BitVec 64)) (_2!31860 List!54518)) )
))
(declare-datatypes ((List!54519 0))(
  ( (Nil!54395) (Cons!54395 (h!60827 tuple2!57132) (t!361971 List!54519)) )
))
(declare-datatypes ((ListLongMap!5475 0))(
  ( (ListLongMap!5476 (toList!7045 List!54519)) )
))
(declare-fun lt!1959963 () ListLongMap!5475)

(declare-fun lt!1959961 () (_ BitVec 64))

(declare-fun containsKey!4080 (List!54519 (_ BitVec 64)) Bool)

(assert (=> b!4806415 (containsKey!4080 (toList!7045 lt!1959963) lt!1959961)))

(declare-datatypes ((Unit!141255 0))(
  ( (Unit!141256) )
))
(declare-fun lt!1959964 () Unit!141255)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!215 (List!54519 (_ BitVec 64)) Unit!141255)

(assert (=> b!4806415 (= lt!1959964 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!215 (toList!7045 lt!1959963) lt!1959961))))

(declare-fun mapIsEmpty!22076 () Bool)

(declare-fun mapRes!22076 () Bool)

(assert (=> mapIsEmpty!22076 mapRes!22076))

(declare-fun e!3001842 () Bool)

(declare-fun tp!1358939 () Bool)

(declare-fun e!3001839 () Bool)

(declare-fun tp!1358935 () Bool)

(declare-fun array_inv!5869 (array!18278) Bool)

(declare-fun array_inv!5870 (array!18280) Bool)

(assert (=> b!4806416 (= e!3001842 (and tp!1358938 tp!1358939 tp!1358935 (array_inv!5869 (_keys!5325 (v!48602 (underlying!10173 (v!48603 (underlying!10174 thiss!41921)))))) (array_inv!5870 (_values!5296 (v!48602 (underlying!10173 (v!48603 (underlying!10174 thiss!41921)))))) e!3001839))))

(declare-fun b!4806417 () Bool)

(declare-fun e!3001840 () Bool)

(declare-fun e!3001835 () Bool)

(declare-fun lt!1959962 () MutLongMap!4983)

(assert (=> b!4806417 (= e!3001840 (and e!3001835 ((_ is LongMap!4983) lt!1959962)))))

(assert (=> b!4806417 (= lt!1959962 (v!48603 (underlying!10174 thiss!41921)))))

(declare-fun b!4806418 () Bool)

(declare-fun tp!1358934 () Bool)

(assert (=> b!4806418 (= e!3001839 (and tp!1358934 mapRes!22076))))

(declare-fun condMapEmpty!22076 () Bool)

(declare-fun mapDefault!22076 () List!54518)

(assert (=> b!4806418 (= condMapEmpty!22076 (= (arr!8152 (_values!5296 (v!48602 (underlying!10173 (v!48603 (underlying!10174 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54518)) mapDefault!22076)))))

(declare-fun mapNonEmpty!22076 () Bool)

(declare-fun tp!1358933 () Bool)

(declare-fun tp!1358937 () Bool)

(assert (=> mapNonEmpty!22076 (= mapRes!22076 (and tp!1358933 tp!1358937))))

(declare-fun mapKey!22076 () (_ BitVec 32))

(declare-fun mapValue!22076 () List!54518)

(declare-fun mapRest!22076 () (Array (_ BitVec 32) List!54518))

(assert (=> mapNonEmpty!22076 (= (arr!8152 (_values!5296 (v!48602 (underlying!10173 (v!48603 (underlying!10174 thiss!41921)))))) (store mapRest!22076 mapKey!22076 mapValue!22076))))

(declare-fun b!4806419 () Bool)

(declare-fun e!3001841 () Bool)

(assert (=> b!4806419 (= e!3001835 e!3001841)))

(declare-fun b!4806420 () Bool)

(declare-fun res!2044829 () Bool)

(declare-fun e!3001837 () Bool)

(assert (=> b!4806420 (=> (not res!2044829) (not e!3001837))))

(declare-fun valid!3991 (MutableMap!4867) Bool)

(assert (=> b!4806420 (= res!2044829 (valid!3991 thiss!41921))))

(declare-fun e!3001838 () Bool)

(assert (=> b!4806421 (= e!3001838 (and e!3001840 tp!1358936))))

(declare-fun b!4806423 () Bool)

(assert (=> b!4806423 (= e!3001841 e!3001842)))

(declare-fun b!4806424 () Bool)

(declare-fun e!3001836 () Bool)

(assert (=> b!4806424 (= e!3001836 e!3001833)))

(declare-fun res!2044830 () Bool)

(assert (=> b!4806424 (=> (not res!2044830) (not e!3001833))))

(declare-fun contains!18058 (List!54519 tuple2!57132) Bool)

(declare-fun apply!13066 (MutLongMap!4983 (_ BitVec 64)) List!54518)

(assert (=> b!4806424 (= res!2044830 (not (contains!18058 (toList!7045 lt!1959963) (tuple2!57133 lt!1959961 (apply!13066 (v!48603 (underlying!10174 thiss!41921)) lt!1959961)))))))

(declare-fun map!12309 (MutLongMap!4983) ListLongMap!5475)

(assert (=> b!4806424 (= lt!1959963 (map!12309 (v!48603 (underlying!10174 thiss!41921))))))

(declare-fun res!2044831 () Bool)

(assert (=> start!496646 (=> (not res!2044831) (not e!3001837))))

(assert (=> start!496646 (= res!2044831 ((_ is HashMap!4867) thiss!41921))))

(assert (=> start!496646 e!3001837))

(assert (=> start!496646 e!3001838))

(declare-fun tp_is_empty!33813 () Bool)

(assert (=> start!496646 tp_is_empty!33813))

(declare-fun b!4806422 () Bool)

(assert (=> b!4806422 (= e!3001837 e!3001836)))

(declare-fun res!2044832 () Bool)

(assert (=> b!4806422 (=> (not res!2044832) (not e!3001836))))

(declare-fun contains!18059 (MutLongMap!4983 (_ BitVec 64)) Bool)

(assert (=> b!4806422 (= res!2044832 (contains!18059 (v!48603 (underlying!10174 thiss!41921)) lt!1959961))))

(declare-fun key!1652 () K!15974)

(declare-fun hash!5062 (Hashable!6994 K!15974) (_ BitVec 64))

(assert (=> b!4806422 (= lt!1959961 (hash!5062 (hashF!13262 thiss!41921) key!1652))))

(assert (= (and start!496646 res!2044831) b!4806420))

(assert (= (and b!4806420 res!2044829) b!4806422))

(assert (= (and b!4806422 res!2044832) b!4806424))

(assert (= (and b!4806424 res!2044830) b!4806415))

(assert (= (and b!4806418 condMapEmpty!22076) mapIsEmpty!22076))

(assert (= (and b!4806418 (not condMapEmpty!22076)) mapNonEmpty!22076))

(assert (= b!4806416 b!4806418))

(assert (= b!4806423 b!4806416))

(assert (= b!4806419 b!4806423))

(assert (= (and b!4806417 ((_ is LongMap!4983) (v!48603 (underlying!10174 thiss!41921)))) b!4806419))

(assert (= b!4806421 b!4806417))

(assert (= (and start!496646 ((_ is HashMap!4867) thiss!41921)) b!4806421))

(declare-fun m!5792780 () Bool)

(assert (=> b!4806422 m!5792780))

(declare-fun m!5792782 () Bool)

(assert (=> b!4806422 m!5792782))

(declare-fun m!5792784 () Bool)

(assert (=> b!4806415 m!5792784))

(declare-fun m!5792786 () Bool)

(assert (=> b!4806415 m!5792786))

(declare-fun m!5792788 () Bool)

(assert (=> b!4806424 m!5792788))

(declare-fun m!5792790 () Bool)

(assert (=> b!4806424 m!5792790))

(declare-fun m!5792792 () Bool)

(assert (=> b!4806424 m!5792792))

(declare-fun m!5792794 () Bool)

(assert (=> mapNonEmpty!22076 m!5792794))

(declare-fun m!5792796 () Bool)

(assert (=> b!4806420 m!5792796))

(declare-fun m!5792798 () Bool)

(assert (=> b!4806416 m!5792798))

(declare-fun m!5792800 () Bool)

(assert (=> b!4806416 m!5792800))

(check-sat tp_is_empty!33813 (not b!4806415) (not b!4806420) (not b_next!130667) (not b!4806416) (not b!4806422) b_and!341633 b_and!341631 (not b_next!130665) (not b!4806424) (not b!4806418) (not mapNonEmpty!22076))
(check-sat b_and!341631 b_and!341633 (not b_next!130665) (not b_next!130667))
