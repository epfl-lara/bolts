; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487252 () Bool)

(assert start!487252)

(declare-fun b!4764194 () Bool)

(declare-fun b_free!129499 () Bool)

(declare-fun b_next!130289 () Bool)

(assert (=> b!4764194 (= b_free!129499 (not b_next!130289))))

(declare-fun tp!1354580 () Bool)

(declare-fun b_and!341187 () Bool)

(assert (=> b!4764194 (= tp!1354580 b_and!341187)))

(declare-fun b!4764192 () Bool)

(declare-fun b_free!129501 () Bool)

(declare-fun b_next!130291 () Bool)

(assert (=> b!4764192 (= b_free!129501 (not b_next!130291))))

(declare-fun tp!1354581 () Bool)

(declare-fun b_and!341189 () Bool)

(assert (=> b!4764192 (= tp!1354581 b_and!341189)))

(declare-fun b!4764189 () Bool)

(declare-fun res!2020660 () Bool)

(declare-fun e!2973372 () Bool)

(assert (=> b!4764189 (=> (not res!2020660) (not e!2973372))))

(declare-datatypes ((K!14864 0))(
  ( (K!14865 (val!20197 Int)) )
))
(declare-datatypes ((V!15110 0))(
  ( (V!15111 (val!20198 Int)) )
))
(declare-datatypes ((tuple2!55400 0))(
  ( (tuple2!55401 (_1!30994 K!14864) (_2!30994 V!15110)) )
))
(declare-datatypes ((array!17854 0))(
  ( (array!17855 (arr!7963 (Array (_ BitVec 32) (_ BitVec 64))) (size!36193 (_ BitVec 32))) )
))
(declare-datatypes ((List!53544 0))(
  ( (Nil!53420) (Cons!53420 (h!59832 tuple2!55400) (t!360946 List!53544)) )
))
(declare-datatypes ((array!17856 0))(
  ( (array!17857 (arr!7964 (Array (_ BitVec 32) List!53544)) (size!36194 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6550 0))(
  ( (HashableExt!6549 (__x!32415 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9778 0))(
  ( (LongMapFixedSize!9779 (defaultEntry!5307 Int) (mask!14629 (_ BitVec 32)) (extraKeys!5164 (_ BitVec 32)) (zeroValue!5177 List!53544) (minValue!5177 List!53544) (_size!9803 (_ BitVec 32)) (_keys!5231 array!17854) (_values!5202 array!17856) (_vacant!4954 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19321 0))(
  ( (Cell!19322 (v!47505 LongMapFixedSize!9778)) )
))
(declare-datatypes ((MutLongMap!4889 0))(
  ( (LongMap!4889 (underlying!9985 Cell!19321)) (MutLongMapExt!4888 (__x!32416 Int)) )
))
(declare-datatypes ((Cell!19323 0))(
  ( (Cell!19324 (v!47506 MutLongMap!4889)) )
))
(declare-datatypes ((MutableMap!4773 0))(
  ( (MutableMapExt!4772 (__x!32417 Int)) (HashMap!4773 (underlying!9986 Cell!19323) (hashF!12375 Hashable!6550) (_size!9804 (_ BitVec 32)) (defaultValue!4944 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4773)

(declare-fun valid!3887 (MutableMap!4773) Bool)

(assert (=> b!4764189 (= res!2020660 (valid!3887 thiss!42052))))

(declare-fun b!4764190 () Bool)

(declare-fun res!2020661 () Bool)

(assert (=> b!4764190 (=> (not res!2020661) (not e!2973372))))

(declare-fun key!1776 () K!14864)

(declare-fun contains!16735 (MutableMap!4773 K!14864) Bool)

(assert (=> b!4764190 (= res!2020661 (contains!16735 thiss!42052 key!1776))))

(declare-fun res!2020662 () Bool)

(assert (=> start!487252 (=> (not res!2020662) (not e!2973372))))

(get-info :version)

(assert (=> start!487252 (= res!2020662 ((_ is HashMap!4773) thiss!42052))))

(assert (=> start!487252 e!2973372))

(declare-fun e!2973376 () Bool)

(assert (=> start!487252 e!2973376))

(declare-fun tp_is_empty!32353 () Bool)

(assert (=> start!487252 tp_is_empty!32353))

(declare-fun b!4764191 () Bool)

(declare-fun e!2973377 () Bool)

(declare-fun e!2973370 () Bool)

(assert (=> b!4764191 (= e!2973377 e!2973370)))

(declare-fun e!2973378 () Bool)

(assert (=> b!4764192 (= e!2973376 (and e!2973378 tp!1354581))))

(declare-fun b!4764193 () Bool)

(declare-fun e!2973375 () Bool)

(assert (=> b!4764193 (= e!2973370 e!2973375)))

(declare-fun tp!1354575 () Bool)

(declare-fun tp!1354577 () Bool)

(declare-fun e!2973374 () Bool)

(declare-fun array_inv!5727 (array!17854) Bool)

(declare-fun array_inv!5728 (array!17856) Bool)

(assert (=> b!4764194 (= e!2973375 (and tp!1354580 tp!1354577 tp!1354575 (array_inv!5727 (_keys!5231 (v!47505 (underlying!9985 (v!47506 (underlying!9986 thiss!42052)))))) (array_inv!5728 (_values!5202 (v!47505 (underlying!9985 (v!47506 (underlying!9986 thiss!42052)))))) e!2973374))))

(declare-fun b!4764195 () Bool)

(declare-fun e!2973371 () Bool)

(assert (=> b!4764195 (= e!2973371 false)))

(declare-fun mapIsEmpty!21719 () Bool)

(declare-fun mapRes!21719 () Bool)

(assert (=> mapIsEmpty!21719 mapRes!21719))

(declare-fun mapNonEmpty!21719 () Bool)

(declare-fun tp!1354576 () Bool)

(declare-fun tp!1354578 () Bool)

(assert (=> mapNonEmpty!21719 (= mapRes!21719 (and tp!1354576 tp!1354578))))

(declare-fun mapValue!21719 () List!53544)

(declare-fun mapRest!21719 () (Array (_ BitVec 32) List!53544))

(declare-fun mapKey!21719 () (_ BitVec 32))

(assert (=> mapNonEmpty!21719 (= (arr!7964 (_values!5202 (v!47505 (underlying!9985 (v!47506 (underlying!9986 thiss!42052)))))) (store mapRest!21719 mapKey!21719 mapValue!21719))))

(declare-fun b!4764196 () Bool)

(assert (=> b!4764196 (= e!2973372 e!2973371)))

(declare-fun res!2020663 () Bool)

(assert (=> b!4764196 (=> (not res!2020663) (not e!2973371))))

(declare-fun lt!1927180 () (_ BitVec 64))

(declare-datatypes ((tuple2!55402 0))(
  ( (tuple2!55403 (_1!30995 (_ BitVec 64)) (_2!30995 List!53544)) )
))
(declare-datatypes ((List!53545 0))(
  ( (Nil!53421) (Cons!53421 (h!59833 tuple2!55402) (t!360947 List!53545)) )
))
(declare-fun contains!16736 (List!53545 tuple2!55402) Bool)

(declare-datatypes ((ListLongMap!4633 0))(
  ( (ListLongMap!4634 (toList!6245 List!53545)) )
))
(declare-fun map!11922 (MutLongMap!4889) ListLongMap!4633)

(declare-fun apply!12574 (MutLongMap!4889 (_ BitVec 64)) List!53544)

(assert (=> b!4764196 (= res!2020663 (not (contains!16736 (toList!6245 (map!11922 (v!47506 (underlying!9986 thiss!42052)))) (tuple2!55403 lt!1927180 (apply!12574 (v!47506 (underlying!9986 thiss!42052)) lt!1927180)))))))

(declare-fun hash!4534 (Hashable!6550 K!14864) (_ BitVec 64))

(assert (=> b!4764196 (= lt!1927180 (hash!4534 (hashF!12375 thiss!42052) key!1776))))

(declare-fun b!4764197 () Bool)

(declare-fun lt!1927181 () MutLongMap!4889)

(assert (=> b!4764197 (= e!2973378 (and e!2973377 ((_ is LongMap!4889) lt!1927181)))))

(assert (=> b!4764197 (= lt!1927181 (v!47506 (underlying!9986 thiss!42052)))))

(declare-fun b!4764198 () Bool)

(declare-fun tp!1354579 () Bool)

(assert (=> b!4764198 (= e!2973374 (and tp!1354579 mapRes!21719))))

(declare-fun condMapEmpty!21719 () Bool)

(declare-fun mapDefault!21719 () List!53544)

(assert (=> b!4764198 (= condMapEmpty!21719 (= (arr!7964 (_values!5202 (v!47505 (underlying!9985 (v!47506 (underlying!9986 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53544)) mapDefault!21719)))))

(assert (= (and start!487252 res!2020662) b!4764189))

(assert (= (and b!4764189 res!2020660) b!4764190))

(assert (= (and b!4764190 res!2020661) b!4764196))

(assert (= (and b!4764196 res!2020663) b!4764195))

(assert (= (and b!4764198 condMapEmpty!21719) mapIsEmpty!21719))

(assert (= (and b!4764198 (not condMapEmpty!21719)) mapNonEmpty!21719))

(assert (= b!4764194 b!4764198))

(assert (= b!4764193 b!4764194))

(assert (= b!4764191 b!4764193))

(assert (= (and b!4764197 ((_ is LongMap!4889) (v!47506 (underlying!9986 thiss!42052)))) b!4764191))

(assert (= b!4764192 b!4764197))

(assert (= (and start!487252 ((_ is HashMap!4773) thiss!42052)) b!4764192))

(declare-fun m!5734738 () Bool)

(assert (=> b!4764194 m!5734738))

(declare-fun m!5734740 () Bool)

(assert (=> b!4764194 m!5734740))

(declare-fun m!5734742 () Bool)

(assert (=> b!4764190 m!5734742))

(declare-fun m!5734744 () Bool)

(assert (=> mapNonEmpty!21719 m!5734744))

(declare-fun m!5734746 () Bool)

(assert (=> b!4764196 m!5734746))

(declare-fun m!5734748 () Bool)

(assert (=> b!4764196 m!5734748))

(declare-fun m!5734750 () Bool)

(assert (=> b!4764196 m!5734750))

(declare-fun m!5734752 () Bool)

(assert (=> b!4764196 m!5734752))

(declare-fun m!5734754 () Bool)

(assert (=> b!4764189 m!5734754))

(check-sat (not b!4764190) (not b_next!130291) (not b_next!130289) b_and!341187 (not b!4764194) (not b!4764198) (not mapNonEmpty!21719) b_and!341189 (not b!4764196) (not b!4764189) tp_is_empty!32353)
(check-sat b_and!341189 b_and!341187 (not b_next!130291) (not b_next!130289))
