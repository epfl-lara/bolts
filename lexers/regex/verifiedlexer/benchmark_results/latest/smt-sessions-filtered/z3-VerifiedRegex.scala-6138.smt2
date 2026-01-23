; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297362 () Bool)

(assert start!297362)

(declare-fun b!3175554 () Bool)

(declare-fun b_free!83473 () Bool)

(declare-fun b_next!84177 () Bool)

(assert (=> b!3175554 (= b_free!83473 (not b_next!84177))))

(declare-fun tp!1004235 () Bool)

(declare-fun b_and!209767 () Bool)

(assert (=> b!3175554 (= tp!1004235 b_and!209767)))

(declare-fun b!3175552 () Bool)

(declare-fun b_free!83475 () Bool)

(declare-fun b_next!84179 () Bool)

(assert (=> b!3175552 (= b_free!83475 (not b_next!84179))))

(declare-fun tp!1004231 () Bool)

(declare-fun b_and!209769 () Bool)

(assert (=> b!3175552 (= tp!1004231 b_and!209769)))

(declare-fun b!3175549 () Bool)

(declare-fun e!1977982 () Bool)

(declare-fun tp!1004236 () Bool)

(declare-fun mapRes!19223 () Bool)

(assert (=> b!3175549 (= e!1977982 (and tp!1004236 mapRes!19223))))

(declare-fun condMapEmpty!19223 () Bool)

(declare-datatypes ((array!15256 0))(
  ( (array!15257 (arr!6786 (Array (_ BitVec 32) (_ BitVec 64))) (size!26872 (_ BitVec 32))) )
))
(declare-datatypes ((C!19840 0))(
  ( (C!19841 (val!11956 Int)) )
))
(declare-datatypes ((Regex!9827 0))(
  ( (ElementMatch!9827 (c!533620 C!19840)) (Concat!15148 (regOne!20166 Regex!9827) (regTwo!20166 Regex!9827)) (EmptyExpr!9827) (Star!9827 (reg!10156 Regex!9827)) (EmptyLang!9827) (Union!9827 (regOne!20167 Regex!9827) (regTwo!20167 Regex!9827)) )
))
(declare-datatypes ((tuple2!34986 0))(
  ( (tuple2!34987 (_1!20625 Regex!9827) (_2!20625 C!19840)) )
))
(declare-datatypes ((tuple2!34988 0))(
  ( (tuple2!34989 (_1!20626 tuple2!34986) (_2!20626 Regex!9827)) )
))
(declare-datatypes ((List!35683 0))(
  ( (Nil!35559) (Cons!35559 (h!40979 tuple2!34988) (t!234774 List!35683)) )
))
(declare-datatypes ((array!15258 0))(
  ( (array!15259 (arr!6787 (Array (_ BitVec 32) List!35683)) (size!26873 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8496 0))(
  ( (LongMapFixedSize!8497 (defaultEntry!4633 Int) (mask!10955 (_ BitVec 32)) (extraKeys!4497 (_ BitVec 32)) (zeroValue!4507 List!35683) (minValue!4507 List!35683) (_size!8539 (_ BitVec 32)) (_keys!4548 array!15256) (_values!4529 array!15258) (_vacant!4309 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16801 0))(
  ( (Cell!16802 (v!35364 LongMapFixedSize!8496)) )
))
(declare-datatypes ((Hashable!4164 0))(
  ( (HashableExt!4163 (__x!22850 Int)) )
))
(declare-datatypes ((MutLongMap!4248 0))(
  ( (LongMap!4248 (underlying!8725 Cell!16801)) (MutLongMapExt!4247 (__x!22851 Int)) )
))
(declare-datatypes ((Cell!16803 0))(
  ( (Cell!16804 (v!35365 MutLongMap!4248)) )
))
(declare-datatypes ((MutableMap!4154 0))(
  ( (MutableMapExt!4153 (__x!22852 Int)) (HashMap!4154 (underlying!8726 Cell!16803) (hashF!6196 Hashable!4164) (_size!8540 (_ BitVec 32)) (defaultValue!4325 Int)) )
))
(declare-fun m!3458 () MutableMap!4154)

(declare-fun mapDefault!19223 () List!35683)

(assert (=> b!3175549 (= condMapEmpty!19223 (= (arr!6787 (_values!4529 (v!35364 (underlying!8725 (v!35365 (underlying!8726 m!3458)))))) ((as const (Array (_ BitVec 32) List!35683)) mapDefault!19223)))))

(declare-fun b!3175550 () Bool)

(declare-fun e!1977984 () Bool)

(assert (=> b!3175550 (= e!1977984 false)))

(declare-fun lt!1067845 () Bool)

(declare-fun invariantList!508 (List!35683) Bool)

(declare-datatypes ((ListMap!1375 0))(
  ( (ListMap!1376 (toList!2115 List!35683)) )
))
(declare-fun map!8004 (MutableMap!4154) ListMap!1375)

(assert (=> b!3175550 (= lt!1067845 (invariantList!508 (toList!2115 (map!8004 m!3458))))))

(declare-fun mapNonEmpty!19223 () Bool)

(declare-fun tp!1004234 () Bool)

(declare-fun tp!1004233 () Bool)

(assert (=> mapNonEmpty!19223 (= mapRes!19223 (and tp!1004234 tp!1004233))))

(declare-fun mapRest!19223 () (Array (_ BitVec 32) List!35683))

(declare-fun mapValue!19223 () List!35683)

(declare-fun mapKey!19223 () (_ BitVec 32))

(assert (=> mapNonEmpty!19223 (= (arr!6787 (_values!4529 (v!35364 (underlying!8725 (v!35365 (underlying!8726 m!3458)))))) (store mapRest!19223 mapKey!19223 mapValue!19223))))

(declare-fun b!3175551 () Bool)

(declare-fun e!1977980 () Bool)

(declare-fun e!1977981 () Bool)

(assert (=> b!3175551 (= e!1977980 e!1977981)))

(declare-fun e!1977979 () Bool)

(declare-fun e!1977983 () Bool)

(assert (=> b!3175552 (= e!1977979 (and e!1977983 tp!1004231))))

(declare-fun b!3175553 () Bool)

(declare-fun e!1977985 () Bool)

(assert (=> b!3175553 (= e!1977985 e!1977980)))

(declare-fun mapIsEmpty!19223 () Bool)

(assert (=> mapIsEmpty!19223 mapRes!19223))

(declare-fun tp!1004232 () Bool)

(declare-fun tp!1004230 () Bool)

(declare-fun array_inv!4876 (array!15256) Bool)

(declare-fun array_inv!4877 (array!15258) Bool)

(assert (=> b!3175554 (= e!1977981 (and tp!1004235 tp!1004230 tp!1004232 (array_inv!4876 (_keys!4548 (v!35364 (underlying!8725 (v!35365 (underlying!8726 m!3458)))))) (array_inv!4877 (_values!4529 (v!35364 (underlying!8725 (v!35365 (underlying!8726 m!3458)))))) e!1977982))))

(declare-fun res!1290186 () Bool)

(assert (=> start!297362 (=> (not res!1290186) (not e!1977984))))

(get-info :version)

(assert (=> start!297362 (= res!1290186 ((_ is HashMap!4154) m!3458))))

(assert (=> start!297362 e!1977984))

(assert (=> start!297362 e!1977979))

(declare-fun b!3175555 () Bool)

(declare-fun lt!1067846 () MutLongMap!4248)

(assert (=> b!3175555 (= e!1977983 (and e!1977985 ((_ is LongMap!4248) lt!1067846)))))

(assert (=> b!3175555 (= lt!1067846 (v!35365 (underlying!8726 m!3458)))))

(declare-fun b!3175556 () Bool)

(declare-fun res!1290187 () Bool)

(assert (=> b!3175556 (=> (not res!1290187) (not e!1977984))))

(declare-fun valid!3301 (MutableMap!4154) Bool)

(assert (=> b!3175556 (= res!1290187 (valid!3301 m!3458))))

(assert (= (and start!297362 res!1290186) b!3175556))

(assert (= (and b!3175556 res!1290187) b!3175550))

(assert (= (and b!3175549 condMapEmpty!19223) mapIsEmpty!19223))

(assert (= (and b!3175549 (not condMapEmpty!19223)) mapNonEmpty!19223))

(assert (= b!3175554 b!3175549))

(assert (= b!3175551 b!3175554))

(assert (= b!3175553 b!3175551))

(assert (= (and b!3175555 ((_ is LongMap!4248) (v!35365 (underlying!8726 m!3458)))) b!3175553))

(assert (= b!3175552 b!3175555))

(assert (= (and start!297362 ((_ is HashMap!4154) m!3458)) b!3175552))

(declare-fun m!3432287 () Bool)

(assert (=> b!3175550 m!3432287))

(declare-fun m!3432289 () Bool)

(assert (=> b!3175550 m!3432289))

(declare-fun m!3432291 () Bool)

(assert (=> mapNonEmpty!19223 m!3432291))

(declare-fun m!3432293 () Bool)

(assert (=> b!3175554 m!3432293))

(declare-fun m!3432295 () Bool)

(assert (=> b!3175554 m!3432295))

(declare-fun m!3432297 () Bool)

(assert (=> b!3175556 m!3432297))

(check-sat (not b!3175549) (not b_next!84179) (not b!3175556) (not b!3175554) b_and!209767 (not mapNonEmpty!19223) (not b!3175550) b_and!209769 (not b_next!84177))
(check-sat b_and!209769 b_and!209767 (not b_next!84177) (not b_next!84179))
