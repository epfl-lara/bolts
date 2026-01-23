; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414058 () Bool)

(assert start!414058)

(declare-fun b!4309060 () Bool)

(declare-fun b_free!128555 () Bool)

(declare-fun b_next!129259 () Bool)

(assert (=> b!4309060 (= b_free!128555 (not b_next!129259))))

(declare-fun tp!1324190 () Bool)

(declare-fun b_and!339969 () Bool)

(assert (=> b!4309060 (= tp!1324190 b_and!339969)))

(declare-fun b!4309065 () Bool)

(declare-fun b_free!128557 () Bool)

(declare-fun b_next!129261 () Bool)

(assert (=> b!4309065 (= b_free!128557 (not b_next!129261))))

(declare-fun tp!1324188 () Bool)

(declare-fun b_and!339971 () Bool)

(assert (=> b!4309065 (= tp!1324188 b_and!339971)))

(declare-fun tp!1324187 () Bool)

(declare-fun e!2679711 () Bool)

(declare-fun e!2679712 () Bool)

(declare-fun tp!1324191 () Bool)

(declare-datatypes ((V!9571 0))(
  ( (V!9572 (val!15753 Int)) )
))
(declare-datatypes ((K!9369 0))(
  ( (K!9370 (val!15754 Int)) )
))
(declare-datatypes ((tuple2!46578 0))(
  ( (tuple2!46579 (_1!26568 K!9369) (_2!26568 V!9571)) )
))
(declare-datatypes ((List!48297 0))(
  ( (Nil!48173) (Cons!48173 (h!53607 tuple2!46578) (t!355096 List!48297)) )
))
(declare-datatypes ((array!16752 0))(
  ( (array!16753 (arr!7483 (Array (_ BitVec 32) (_ BitVec 64))) (size!35522 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4565 0))(
  ( (HashableExt!4564 (__x!29972 Int)) )
))
(declare-datatypes ((array!16754 0))(
  ( (array!16755 (arr!7484 (Array (_ BitVec 32) List!48297)) (size!35523 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9298 0))(
  ( (LongMapFixedSize!9299 (defaultEntry!5034 Int) (mask!13202 (_ BitVec 32)) (extraKeys!4898 (_ BitVec 32)) (zeroValue!4908 List!48297) (minValue!4908 List!48297) (_size!9341 (_ BitVec 32)) (_keys!4949 array!16752) (_values!4930 array!16754) (_vacant!4710 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18405 0))(
  ( (Cell!18406 (v!42287 LongMapFixedSize!9298)) )
))
(declare-datatypes ((MutLongMap!4649 0))(
  ( (LongMap!4649 (underlying!9527 Cell!18405)) (MutLongMapExt!4648 (__x!29973 Int)) )
))
(declare-datatypes ((Cell!18407 0))(
  ( (Cell!18408 (v!42288 MutLongMap!4649)) )
))
(declare-datatypes ((MutableMap!4555 0))(
  ( (MutableMapExt!4554 (__x!29974 Int)) (HashMap!4555 (underlying!9528 Cell!18407) (hashF!6681 Hashable!4565) (_size!9342 (_ BitVec 32)) (defaultValue!4726 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4555)

(declare-fun array_inv!5369 (array!16752) Bool)

(declare-fun array_inv!5370 (array!16754) Bool)

(assert (=> b!4309060 (= e!2679712 (and tp!1324190 tp!1324187 tp!1324191 (array_inv!5369 (_keys!4949 (v!42287 (underlying!9527 (v!42288 (underlying!9528 thiss!42308)))))) (array_inv!5370 (_values!4930 (v!42287 (underlying!9527 (v!42288 (underlying!9528 thiss!42308)))))) e!2679711))))

(declare-fun b!4309061 () Bool)

(declare-fun e!2679705 () Bool)

(assert (=> b!4309061 (= e!2679705 e!2679712)))

(declare-fun res!1766127 () Bool)

(declare-fun e!2679710 () Bool)

(assert (=> start!414058 (=> (not res!1766127) (not e!2679710))))

(get-info :version)

(assert (=> start!414058 (= res!1766127 ((_ is HashMap!4555) thiss!42308))))

(assert (=> start!414058 e!2679710))

(declare-fun e!2679707 () Bool)

(assert (=> start!414058 e!2679707))

(declare-fun b!4309062 () Bool)

(declare-fun tp!1324189 () Bool)

(declare-fun mapRes!20770 () Bool)

(assert (=> b!4309062 (= e!2679711 (and tp!1324189 mapRes!20770))))

(declare-fun condMapEmpty!20770 () Bool)

(declare-fun mapDefault!20770 () List!48297)

(assert (=> b!4309062 (= condMapEmpty!20770 (= (arr!7484 (_values!4930 (v!42287 (underlying!9527 (v!42288 (underlying!9528 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48297)) mapDefault!20770)))))

(declare-fun b!4309063 () Bool)

(declare-fun e!2679706 () Bool)

(declare-fun e!2679709 () Bool)

(declare-fun lt!1530069 () MutLongMap!4649)

(assert (=> b!4309063 (= e!2679706 (and e!2679709 ((_ is LongMap!4649) lt!1530069)))))

(assert (=> b!4309063 (= lt!1530069 (v!42288 (underlying!9528 thiss!42308)))))

(declare-fun b!4309064 () Bool)

(declare-fun res!1766126 () Bool)

(assert (=> b!4309064 (=> (not res!1766126) (not e!2679710))))

(declare-fun valid!3637 (MutableMap!4555) Bool)

(assert (=> b!4309064 (= res!1766126 (valid!3637 thiss!42308))))

(assert (=> b!4309065 (= e!2679707 (and e!2679706 tp!1324188))))

(declare-fun b!4309066 () Bool)

(assert (=> b!4309066 (= e!2679710 false)))

(declare-datatypes ((ListMap!1665 0))(
  ( (ListMap!1666 (toList!2384 List!48297)) )
))
(declare-fun lt!1530068 () ListMap!1665)

(declare-fun map!10158 (MutableMap!4555) ListMap!1665)

(assert (=> b!4309066 (= lt!1530068 (map!10158 thiss!42308))))

(declare-fun b!4309067 () Bool)

(assert (=> b!4309067 (= e!2679709 e!2679705)))

(declare-fun mapIsEmpty!20770 () Bool)

(assert (=> mapIsEmpty!20770 mapRes!20770))

(declare-fun mapNonEmpty!20770 () Bool)

(declare-fun tp!1324193 () Bool)

(declare-fun tp!1324192 () Bool)

(assert (=> mapNonEmpty!20770 (= mapRes!20770 (and tp!1324193 tp!1324192))))

(declare-fun mapRest!20770 () (Array (_ BitVec 32) List!48297))

(declare-fun mapKey!20770 () (_ BitVec 32))

(declare-fun mapValue!20770 () List!48297)

(assert (=> mapNonEmpty!20770 (= (arr!7484 (_values!4930 (v!42287 (underlying!9527 (v!42288 (underlying!9528 thiss!42308)))))) (store mapRest!20770 mapKey!20770 mapValue!20770))))

(assert (= (and start!414058 res!1766127) b!4309064))

(assert (= (and b!4309064 res!1766126) b!4309066))

(assert (= (and b!4309062 condMapEmpty!20770) mapIsEmpty!20770))

(assert (= (and b!4309062 (not condMapEmpty!20770)) mapNonEmpty!20770))

(assert (= b!4309060 b!4309062))

(assert (= b!4309061 b!4309060))

(assert (= b!4309067 b!4309061))

(assert (= (and b!4309063 ((_ is LongMap!4649) (v!42288 (underlying!9528 thiss!42308)))) b!4309067))

(assert (= b!4309065 b!4309063))

(assert (= (and start!414058 ((_ is HashMap!4555) thiss!42308)) b!4309065))

(declare-fun m!4902203 () Bool)

(assert (=> b!4309060 m!4902203))

(declare-fun m!4902205 () Bool)

(assert (=> b!4309060 m!4902205))

(declare-fun m!4902207 () Bool)

(assert (=> b!4309064 m!4902207))

(declare-fun m!4902209 () Bool)

(assert (=> b!4309066 m!4902209))

(declare-fun m!4902211 () Bool)

(assert (=> mapNonEmpty!20770 m!4902211))

(check-sat b_and!339969 b_and!339971 (not b!4309060) (not b!4309064) (not mapNonEmpty!20770) (not b_next!129259) (not b!4309066) (not b!4309062) (not b_next!129261))
(check-sat b_and!339969 b_and!339971 (not b_next!129261) (not b_next!129259))
