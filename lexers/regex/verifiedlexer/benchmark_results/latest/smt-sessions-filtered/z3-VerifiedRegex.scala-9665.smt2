; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507078 () Bool)

(assert start!507078)

(declare-fun b!4855111 () Bool)

(declare-fun b_free!130387 () Bool)

(declare-fun b_next!131177 () Bool)

(assert (=> b!4855111 (= b_free!130387 (not b_next!131177))))

(declare-fun tp!1366001 () Bool)

(declare-fun b_and!342215 () Bool)

(assert (=> b!4855111 (= tp!1366001 b_and!342215)))

(declare-fun b!4855110 () Bool)

(declare-fun b_free!130389 () Bool)

(declare-fun b_next!131179 () Bool)

(assert (=> b!4855110 (= b_free!130389 (not b_next!131179))))

(declare-fun tp!1366004 () Bool)

(declare-fun b_and!342217 () Bool)

(assert (=> b!4855110 (= tp!1366004 b_and!342217)))

(declare-fun b!4855106 () Bool)

(declare-fun e!3035456 () Bool)

(assert (=> b!4855106 (= e!3035456 false)))

(declare-fun lt!1991189 () Bool)

(declare-datatypes ((C!26340 0))(
  ( (C!26341 (val!22378 Int)) )
))
(declare-datatypes ((Regex!13071 0))(
  ( (ElementMatch!13071 (c!825933 C!26340)) (Concat!21390 (regOne!26654 Regex!13071) (regTwo!26654 Regex!13071)) (EmptyExpr!13071) (Star!13071 (reg!13400 Regex!13071)) (EmptyLang!13071) (Union!13071 (regOne!26655 Regex!13071) (regTwo!26655 Regex!13071)) )
))
(declare-datatypes ((List!55843 0))(
  ( (Nil!55719) (Cons!55719 (h!62167 Regex!13071) (t!363345 List!55843)) )
))
(declare-datatypes ((Context!5922 0))(
  ( (Context!5923 (exprs!3461 List!55843)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!59564 0))(
  ( (tuple2!59565 (_1!33079 (InoxSet Context!5922)) (_2!33079 Int)) )
))
(declare-datatypes ((tuple2!59566 0))(
  ( (tuple2!59567 (_1!33080 tuple2!59564) (_2!33080 Int)) )
))
(declare-datatypes ((List!55844 0))(
  ( (Nil!55720) (Cons!55720 (h!62168 tuple2!59566) (t!363346 List!55844)) )
))
(declare-datatypes ((array!18855 0))(
  ( (array!18856 (arr!8412 (Array (_ BitVec 32) List!55844)) (size!36686 (_ BitVec 32))) )
))
(declare-datatypes ((array!18857 0))(
  ( (array!18858 (arr!8413 (Array (_ BitVec 32) (_ BitVec 64))) (size!36687 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10228 0))(
  ( (LongMapFixedSize!10229 (defaultEntry!5539 Int) (mask!15420 (_ BitVec 32)) (extraKeys!5398 (_ BitVec 32)) (zeroValue!5411 List!55844) (minValue!5411 List!55844) (_size!10241 (_ BitVec 32)) (_keys!5468 array!18857) (_values!5436 array!18855) (_vacant!5179 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20197 0))(
  ( (Cell!20198 (v!49603 LongMapFixedSize!10228)) )
))
(declare-datatypes ((MutLongMap!5114 0))(
  ( (LongMap!5114 (underlying!10423 Cell!20197)) (MutLongMapExt!5113 (__x!33862 Int)) )
))
(declare-datatypes ((Cell!20199 0))(
  ( (Cell!20200 (v!49604 MutLongMap!5114)) )
))
(declare-datatypes ((Hashable!7559 0))(
  ( (HashableExt!7558 (__x!33863 Int)) )
))
(declare-datatypes ((MutableMap!4986 0))(
  ( (MutableMapExt!4985 (__x!33864 Int)) (HashMap!4986 (underlying!10424 Cell!20199) (hashF!13826 Hashable!7559) (_size!10242 (_ BitVec 32)) (defaultValue!5157 Int)) )
))
(declare-fun m!3502 () MutableMap!4986)

(declare-fun invariantList!1894 (List!55844) Bool)

(declare-datatypes ((ListMap!7157 0))(
  ( (ListMap!7158 (toList!7915 List!55844)) )
))
(declare-fun map!12803 (MutableMap!4986) ListMap!7157)

(assert (=> b!4855106 (= lt!1991189 (invariantList!1894 (toList!7915 (map!12803 m!3502))))))

(declare-fun b!4855107 () Bool)

(declare-fun res!2072628 () Bool)

(assert (=> b!4855107 (=> (not res!2072628) (not e!3035456))))

(declare-fun valid!4139 (MutableMap!4986) Bool)

(assert (=> b!4855107 (= res!2072628 (valid!4139 m!3502))))

(declare-fun b!4855108 () Bool)

(declare-fun e!3035457 () Bool)

(declare-fun e!3035453 () Bool)

(assert (=> b!4855108 (= e!3035457 e!3035453)))

(declare-fun b!4855109 () Bool)

(declare-fun e!3035455 () Bool)

(declare-fun tp!1366002 () Bool)

(declare-fun mapRes!22568 () Bool)

(assert (=> b!4855109 (= e!3035455 (and tp!1366002 mapRes!22568))))

(declare-fun condMapEmpty!22568 () Bool)

(declare-fun mapDefault!22568 () List!55844)

(assert (=> b!4855109 (= condMapEmpty!22568 (= (arr!8412 (_values!5436 (v!49603 (underlying!10423 (v!49604 (underlying!10424 m!3502)))))) ((as const (Array (_ BitVec 32) List!55844)) mapDefault!22568)))))

(declare-fun e!3035460 () Bool)

(declare-fun e!3035458 () Bool)

(assert (=> b!4855110 (= e!3035460 (and e!3035458 tp!1366004))))

(declare-fun tp!1366006 () Bool)

(declare-fun tp!1366005 () Bool)

(declare-fun array_inv!6076 (array!18857) Bool)

(declare-fun array_inv!6077 (array!18855) Bool)

(assert (=> b!4855111 (= e!3035453 (and tp!1366001 tp!1366006 tp!1366005 (array_inv!6076 (_keys!5468 (v!49603 (underlying!10423 (v!49604 (underlying!10424 m!3502)))))) (array_inv!6077 (_values!5436 (v!49603 (underlying!10423 (v!49604 (underlying!10424 m!3502)))))) e!3035455))))

(declare-fun b!4855112 () Bool)

(declare-fun e!3035454 () Bool)

(assert (=> b!4855112 (= e!3035454 e!3035457)))

(declare-fun res!2072629 () Bool)

(assert (=> start!507078 (=> (not res!2072629) (not e!3035456))))

(get-info :version)

(assert (=> start!507078 (= res!2072629 ((_ is HashMap!4986) m!3502))))

(assert (=> start!507078 e!3035456))

(assert (=> start!507078 e!3035460))

(declare-fun mapNonEmpty!22568 () Bool)

(declare-fun tp!1366003 () Bool)

(declare-fun tp!1366007 () Bool)

(assert (=> mapNonEmpty!22568 (= mapRes!22568 (and tp!1366003 tp!1366007))))

(declare-fun mapRest!22568 () (Array (_ BitVec 32) List!55844))

(declare-fun mapKey!22568 () (_ BitVec 32))

(declare-fun mapValue!22568 () List!55844)

(assert (=> mapNonEmpty!22568 (= (arr!8412 (_values!5436 (v!49603 (underlying!10423 (v!49604 (underlying!10424 m!3502)))))) (store mapRest!22568 mapKey!22568 mapValue!22568))))

(declare-fun b!4855113 () Bool)

(declare-fun lt!1991188 () MutLongMap!5114)

(assert (=> b!4855113 (= e!3035458 (and e!3035454 ((_ is LongMap!5114) lt!1991188)))))

(assert (=> b!4855113 (= lt!1991188 (v!49604 (underlying!10424 m!3502)))))

(declare-fun mapIsEmpty!22568 () Bool)

(assert (=> mapIsEmpty!22568 mapRes!22568))

(assert (= (and start!507078 res!2072629) b!4855107))

(assert (= (and b!4855107 res!2072628) b!4855106))

(assert (= (and b!4855109 condMapEmpty!22568) mapIsEmpty!22568))

(assert (= (and b!4855109 (not condMapEmpty!22568)) mapNonEmpty!22568))

(assert (= b!4855111 b!4855109))

(assert (= b!4855108 b!4855111))

(assert (= b!4855112 b!4855108))

(assert (= (and b!4855113 ((_ is LongMap!5114) (v!49604 (underlying!10424 m!3502)))) b!4855112))

(assert (= b!4855110 b!4855113))

(assert (= (and start!507078 ((_ is HashMap!4986) m!3502)) b!4855110))

(declare-fun m!5852822 () Bool)

(assert (=> b!4855106 m!5852822))

(declare-fun m!5852824 () Bool)

(assert (=> b!4855106 m!5852824))

(declare-fun m!5852826 () Bool)

(assert (=> b!4855107 m!5852826))

(declare-fun m!5852828 () Bool)

(assert (=> b!4855111 m!5852828))

(declare-fun m!5852830 () Bool)

(assert (=> b!4855111 m!5852830))

(declare-fun m!5852832 () Bool)

(assert (=> mapNonEmpty!22568 m!5852832))

(check-sat (not b_next!131179) (not b_next!131177) (not b!4855106) (not b!4855111) b_and!342217 (not b!4855107) (not mapNonEmpty!22568) (not b!4855109) b_and!342215)
(check-sat b_and!342217 b_and!342215 (not b_next!131179) (not b_next!131177))
