; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297138 () Bool)

(assert start!297138)

(declare-fun b!3172657 () Bool)

(declare-fun b_free!83329 () Bool)

(declare-fun b_next!84033 () Bool)

(assert (=> b!3172657 (= b_free!83329 (not b_next!84033))))

(declare-fun tp!1002191 () Bool)

(declare-fun b_and!209611 () Bool)

(assert (=> b!3172657 (= tp!1002191 b_and!209611)))

(declare-fun b!3172658 () Bool)

(declare-fun b_free!83331 () Bool)

(declare-fun b_next!84035 () Bool)

(assert (=> b!3172658 (= b_free!83331 (not b_next!84035))))

(declare-fun tp!1002196 () Bool)

(declare-fun b_and!209613 () Bool)

(assert (=> b!3172658 (= tp!1002196 b_and!209613)))

(declare-fun b!3172652 () Bool)

(declare-fun e!1976024 () Bool)

(declare-fun tp!1002190 () Bool)

(assert (=> b!3172652 (= e!1976024 tp!1002190)))

(declare-fun b!3172653 () Bool)

(declare-fun e!1976027 () Bool)

(declare-fun e!1976031 () Bool)

(assert (=> b!3172653 (= e!1976027 e!1976031)))

(declare-fun b!3172654 () Bool)

(declare-fun tp!1002198 () Bool)

(declare-fun tp!1002195 () Bool)

(assert (=> b!3172654 (= e!1976024 (and tp!1002198 tp!1002195))))

(declare-fun b!3172655 () Bool)

(declare-fun e!1976026 () Bool)

(declare-fun tp!1002192 () Bool)

(declare-fun mapRes!19085 () Bool)

(assert (=> b!3172655 (= e!1976026 (and tp!1002192 mapRes!19085))))

(declare-fun condMapEmpty!19085 () Bool)

(declare-datatypes ((C!19768 0))(
  ( (C!19769 (val!11920 Int)) )
))
(declare-datatypes ((Regex!9791 0))(
  ( (ElementMatch!9791 (c!533348 C!19768)) (Concat!15112 (regOne!20094 Regex!9791) (regTwo!20094 Regex!9791)) (EmptyExpr!9791) (Star!9791 (reg!10120 Regex!9791)) (EmptyLang!9791) (Union!9791 (regOne!20095 Regex!9791) (regTwo!20095 Regex!9791)) )
))
(declare-datatypes ((tuple2!34824 0))(
  ( (tuple2!34825 (_1!20544 Regex!9791) (_2!20544 C!19768)) )
))
(declare-datatypes ((tuple2!34826 0))(
  ( (tuple2!34827 (_1!20545 tuple2!34824) (_2!20545 Regex!9791)) )
))
(declare-datatypes ((List!35638 0))(
  ( (Nil!35514) (Cons!35514 (h!40934 tuple2!34826) (t!234723 List!35638)) )
))
(declare-datatypes ((array!15092 0))(
  ( (array!15093 (arr!6714 (Array (_ BitVec 32) (_ BitVec 64))) (size!26800 (_ BitVec 32))) )
))
(declare-datatypes ((array!15094 0))(
  ( (array!15095 (arr!6715 (Array (_ BitVec 32) List!35638)) (size!26801 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8424 0))(
  ( (LongMapFixedSize!8425 (defaultEntry!4597 Int) (mask!10901 (_ BitVec 32)) (extraKeys!4461 (_ BitVec 32)) (zeroValue!4471 List!35638) (minValue!4471 List!35638) (_size!8467 (_ BitVec 32)) (_keys!4512 array!15092) (_values!4493 array!15094) (_vacant!4273 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16657 0))(
  ( (Cell!16658 (v!35270 LongMapFixedSize!8424)) )
))
(declare-datatypes ((MutLongMap!4212 0))(
  ( (LongMap!4212 (underlying!8653 Cell!16657)) (MutLongMapExt!4211 (__x!22742 Int)) )
))
(declare-datatypes ((Cell!16659 0))(
  ( (Cell!16660 (v!35271 MutLongMap!4212)) )
))
(declare-datatypes ((Hashable!4128 0))(
  ( (HashableExt!4127 (__x!22743 Int)) )
))
(declare-datatypes ((MutableMap!4118 0))(
  ( (MutableMapExt!4117 (__x!22744 Int)) (HashMap!4118 (underlying!8654 Cell!16659) (hashF!6160 Hashable!4128) (_size!8468 (_ BitVec 32)) (defaultValue!4289 Int)) )
))
(declare-datatypes ((Cache!506 0))(
  ( (Cache!507 (cache!4264 MutableMap!4118)) )
))
(declare-fun thiss!28499 () Cache!506)

(declare-fun mapDefault!19085 () List!35638)

(assert (=> b!3172655 (= condMapEmpty!19085 (= (arr!6715 (_values!4493 (v!35270 (underlying!8653 (v!35271 (underlying!8654 (cache!4264 thiss!28499))))))) ((as const (Array (_ BitVec 32) List!35638)) mapDefault!19085)))))

(declare-fun res!1289402 () Bool)

(declare-fun e!1976028 () Bool)

(assert (=> start!297138 (=> (not res!1289402) (not e!1976028))))

(declare-fun r!4721 () Regex!9791)

(declare-fun validRegex!4497 (Regex!9791) Bool)

(assert (=> start!297138 (= res!1289402 (validRegex!4497 r!4721))))

(assert (=> start!297138 e!1976028))

(assert (=> start!297138 e!1976024))

(declare-fun e!1976030 () Bool)

(declare-fun inv!48233 (Cache!506) Bool)

(assert (=> start!297138 (and (inv!48233 thiss!28499) e!1976030)))

(declare-fun tp_is_empty!17145 () Bool)

(assert (=> start!297138 tp_is_empty!17145))

(declare-fun b!3172656 () Bool)

(declare-fun tp!1002197 () Bool)

(declare-fun tp!1002193 () Bool)

(assert (=> b!3172656 (= e!1976024 (and tp!1002197 tp!1002193))))

(declare-fun tp!1002194 () Bool)

(declare-fun tp!1002200 () Bool)

(declare-fun e!1976029 () Bool)

(declare-fun array_inv!4816 (array!15092) Bool)

(declare-fun array_inv!4817 (array!15094) Bool)

(assert (=> b!3172657 (= e!1976029 (and tp!1002191 tp!1002200 tp!1002194 (array_inv!4816 (_keys!4512 (v!35270 (underlying!8653 (v!35271 (underlying!8654 (cache!4264 thiss!28499))))))) (array_inv!4817 (_values!4493 (v!35270 (underlying!8653 (v!35271 (underlying!8654 (cache!4264 thiss!28499))))))) e!1976026))))

(declare-fun e!1976023 () Bool)

(declare-fun e!1976025 () Bool)

(assert (=> b!3172658 (= e!1976023 (and e!1976025 tp!1002196))))

(declare-fun mapIsEmpty!19085 () Bool)

(assert (=> mapIsEmpty!19085 mapRes!19085))

(declare-fun b!3172659 () Bool)

(assert (=> b!3172659 (= e!1976030 e!1976023)))

(declare-fun b!3172660 () Bool)

(declare-fun lt!1066760 () MutLongMap!4212)

(get-info :version)

(assert (=> b!3172660 (= e!1976025 (and e!1976027 ((_ is LongMap!4212) lt!1066760)))))

(assert (=> b!3172660 (= lt!1066760 (v!35271 (underlying!8654 (cache!4264 thiss!28499))))))

(declare-fun b!3172661 () Bool)

(declare-fun res!1289400 () Bool)

(assert (=> b!3172661 (=> (not res!1289400) (not e!1976028))))

(declare-fun validCacheMap!95 (MutableMap!4118) Bool)

(assert (=> b!3172661 (= res!1289400 (validCacheMap!95 (cache!4264 thiss!28499)))))

(declare-fun b!3172662 () Bool)

(assert (=> b!3172662 (= e!1976024 tp_is_empty!17145)))

(declare-fun b!3172663 () Bool)

(declare-fun res!1289401 () Bool)

(assert (=> b!3172663 (=> (not res!1289401) (not e!1976028))))

(declare-fun c!6988 () C!19768)

(declare-fun contains!6227 (MutableMap!4118 tuple2!34824) Bool)

(assert (=> b!3172663 (= res!1289401 (not (contains!6227 (cache!4264 thiss!28499) (tuple2!34825 r!4721 c!6988))))))

(declare-fun mapNonEmpty!19085 () Bool)

(declare-fun tp!1002189 () Bool)

(declare-fun tp!1002199 () Bool)

(assert (=> mapNonEmpty!19085 (= mapRes!19085 (and tp!1002189 tp!1002199))))

(declare-fun mapRest!19085 () (Array (_ BitVec 32) List!35638))

(declare-fun mapValue!19085 () List!35638)

(declare-fun mapKey!19085 () (_ BitVec 32))

(assert (=> mapNonEmpty!19085 (= (arr!6715 (_values!4493 (v!35270 (underlying!8653 (v!35271 (underlying!8654 (cache!4264 thiss!28499))))))) (store mapRest!19085 mapKey!19085 mapValue!19085))))

(declare-fun b!3172664 () Bool)

(assert (=> b!3172664 (= e!1976031 e!1976029)))

(declare-fun b!3172665 () Bool)

(assert (=> b!3172665 (= e!1976028 false)))

(assert (= (and start!297138 res!1289402) b!3172661))

(assert (= (and b!3172661 res!1289400) b!3172663))

(assert (= (and b!3172663 res!1289401) b!3172665))

(assert (= (and start!297138 ((_ is ElementMatch!9791) r!4721)) b!3172662))

(assert (= (and start!297138 ((_ is Concat!15112) r!4721)) b!3172654))

(assert (= (and start!297138 ((_ is Star!9791) r!4721)) b!3172652))

(assert (= (and start!297138 ((_ is Union!9791) r!4721)) b!3172656))

(assert (= (and b!3172655 condMapEmpty!19085) mapIsEmpty!19085))

(assert (= (and b!3172655 (not condMapEmpty!19085)) mapNonEmpty!19085))

(assert (= b!3172657 b!3172655))

(assert (= b!3172664 b!3172657))

(assert (= b!3172653 b!3172664))

(assert (= (and b!3172660 ((_ is LongMap!4212) (v!35271 (underlying!8654 (cache!4264 thiss!28499))))) b!3172653))

(assert (= b!3172658 b!3172660))

(assert (= (and b!3172659 ((_ is HashMap!4118) (cache!4264 thiss!28499))) b!3172658))

(assert (= start!297138 b!3172659))

(declare-fun m!3430815 () Bool)

(assert (=> mapNonEmpty!19085 m!3430815))

(declare-fun m!3430817 () Bool)

(assert (=> start!297138 m!3430817))

(declare-fun m!3430819 () Bool)

(assert (=> start!297138 m!3430819))

(declare-fun m!3430821 () Bool)

(assert (=> b!3172663 m!3430821))

(declare-fun m!3430823 () Bool)

(assert (=> b!3172657 m!3430823))

(declare-fun m!3430825 () Bool)

(assert (=> b!3172657 m!3430825))

(declare-fun m!3430827 () Bool)

(assert (=> b!3172661 m!3430827))

(check-sat (not b!3172663) (not b!3172655) (not b_next!84035) (not b_next!84033) b_and!209611 (not b!3172657) (not b!3172661) tp_is_empty!17145 b_and!209613 (not mapNonEmpty!19085) (not start!297138) (not b!3172656) (not b!3172654) (not b!3172652))
(check-sat b_and!209613 b_and!209611 (not b_next!84033) (not b_next!84035))
