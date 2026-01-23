; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12050 () Bool)

(assert start!12050)

(declare-fun b!118839 () Bool)

(declare-fun b_free!3793 () Bool)

(declare-fun b_next!3793 () Bool)

(assert (=> b!118839 (= b_free!3793 (not b_next!3793))))

(declare-fun tp!65215 () Bool)

(declare-fun b_and!5923 () Bool)

(assert (=> b!118839 (= tp!65215 b_and!5923)))

(declare-fun b!118856 () Bool)

(declare-fun b_free!3795 () Bool)

(declare-fun b_next!3795 () Bool)

(assert (=> b!118856 (= b_free!3795 (not b_next!3795))))

(declare-fun tp!65212 () Bool)

(declare-fun b_and!5925 () Bool)

(assert (=> b!118856 (= tp!65212 b_and!5925)))

(declare-fun b!118837 () Bool)

(declare-fun e!67786 () Bool)

(declare-fun tp_is_empty!1105 () Bool)

(declare-fun tp!65218 () Bool)

(assert (=> b!118837 (= e!67786 (and tp_is_empty!1105 tp!65218))))

(declare-fun b!118838 () Bool)

(declare-fun res!56014 () Bool)

(declare-fun e!67779 () Bool)

(assert (=> b!118838 (=> (not res!56014) (not e!67779))))

(declare-datatypes ((C!1972 0))(
  ( (C!1973 (val!712 Int)) )
))
(declare-datatypes ((Regex!525 0))(
  ( (ElementMatch!525 (c!26799 C!1972)) (Concat!909 (regOne!1562 Regex!525) (regTwo!1562 Regex!525)) (EmptyExpr!525) (Star!525 (reg!854 Regex!525)) (EmptyLang!525) (Union!525 (regOne!1563 Regex!525) (regTwo!1563 Regex!525)) )
))
(declare-datatypes ((Hashable!387 0))(
  ( (HashableExt!386 (__x!2098 Int)) )
))
(declare-datatypes ((tuple2!2224 0))(
  ( (tuple2!2225 (_1!1322 Regex!525) (_2!1322 C!1972)) )
))
(declare-datatypes ((tuple2!2226 0))(
  ( (tuple2!2227 (_1!1323 tuple2!2224) (_2!1323 Regex!525)) )
))
(declare-datatypes ((List!1964 0))(
  ( (Nil!1958) (Cons!1958 (h!7355 tuple2!2226) (t!22441 List!1964)) )
))
(declare-datatypes ((array!1429 0))(
  ( (array!1430 (arr!666 (Array (_ BitVec 32) (_ BitVec 64))) (size!1794 (_ BitVec 32))) )
))
(declare-datatypes ((array!1431 0))(
  ( (array!1432 (arr!667 (Array (_ BitVec 32) List!1964)) (size!1795 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!782 0))(
  ( (LongMapFixedSize!783 (defaultEntry!730 Int) (mask!1321 (_ BitVec 32)) (extraKeys!637 (_ BitVec 32)) (zeroValue!647 List!1964) (minValue!647 List!1964) (_size!915 (_ BitVec 32)) (_keys!682 array!1429) (_values!669 array!1431) (_vacant!452 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1553 0))(
  ( (Cell!1554 (v!13313 LongMapFixedSize!782)) )
))
(declare-datatypes ((MutLongMap!391 0))(
  ( (LongMap!391 (underlying!981 Cell!1553)) (MutLongMapExt!390 (__x!2099 Int)) )
))
(declare-datatypes ((Cell!1555 0))(
  ( (Cell!1556 (v!13314 MutLongMap!391)) )
))
(declare-datatypes ((MutableMap!387 0))(
  ( (MutableMapExt!386 (__x!2100 Int)) (HashMap!387 (underlying!982 Cell!1555) (hashF!2263 Hashable!387) (_size!916 (_ BitVec 32)) (defaultValue!536 Int)) )
))
(declare-datatypes ((Cache!210 0))(
  ( (Cache!211 (cache!839 MutableMap!387)) )
))
(declare-fun cache!470 () Cache!210)

(declare-fun valid!355 (Cache!210) Bool)

(assert (=> b!118838 (= res!56014 (valid!355 cache!470))))

(declare-fun e!67791 () Bool)

(declare-fun e!67783 () Bool)

(assert (=> b!118839 (= e!67791 (and e!67783 tp!65215))))

(declare-fun b!118840 () Bool)

(declare-fun e!67792 () Bool)

(declare-fun tp!65221 () Bool)

(assert (=> b!118840 (= e!67792 tp!65221)))

(declare-fun b!118841 () Bool)

(declare-fun res!56015 () Bool)

(declare-fun e!67782 () Bool)

(assert (=> b!118841 (=> (not res!56015) (not e!67782))))

(declare-fun totalInputSize!643 () Int)

(declare-datatypes ((List!1965 0))(
  ( (Nil!1959) (Cons!1959 (h!7356 C!1972) (t!22442 List!1965)) )
))
(declare-fun totalInput!1363 () List!1965)

(declare-fun size!1796 (List!1965) Int)

(assert (=> b!118841 (= res!56015 (= totalInputSize!643 (size!1796 totalInput!1363)))))

(declare-fun b!118842 () Bool)

(declare-fun e!67785 () Bool)

(declare-fun e!67789 () Bool)

(assert (=> b!118842 (= e!67785 e!67789)))

(declare-fun b!118843 () Bool)

(declare-fun tp!65219 () Bool)

(declare-fun tp!65213 () Bool)

(assert (=> b!118843 (= e!67792 (and tp!65219 tp!65213))))

(declare-fun b!118844 () Bool)

(declare-fun res!56018 () Bool)

(assert (=> b!118844 (=> (not res!56018) (not e!67782))))

(declare-fun testedPSize!285 () Int)

(declare-fun testedP!367 () List!1965)

(assert (=> b!118844 (= res!56018 (= testedPSize!285 (size!1796 testedP!367)))))

(declare-fun res!56017 () Bool)

(assert (=> start!12050 (=> (not res!56017) (not e!67779))))

(declare-fun r!15532 () Regex!525)

(declare-fun validRegex!129 (Regex!525) Bool)

(assert (=> start!12050 (= res!56017 (validRegex!129 r!15532))))

(assert (=> start!12050 e!67779))

(assert (=> start!12050 true))

(assert (=> start!12050 e!67792))

(declare-fun e!67788 () Bool)

(assert (=> start!12050 e!67788))

(assert (=> start!12050 e!67786))

(declare-fun e!67787 () Bool)

(assert (=> start!12050 e!67787))

(declare-fun e!67780 () Bool)

(declare-fun inv!2480 (Cache!210) Bool)

(assert (=> start!12050 (and (inv!2480 cache!470) e!67780)))

(declare-fun b!118845 () Bool)

(declare-fun e!67790 () Bool)

(assert (=> b!118845 (= e!67782 (not e!67790))))

(declare-fun res!56019 () Bool)

(assert (=> b!118845 (=> res!56019 e!67790)))

(declare-fun isPrefix!109 (List!1965 List!1965) Bool)

(assert (=> b!118845 (= res!56019 (not (isPrefix!109 testedP!367 totalInput!1363)))))

(declare-fun lt!35174 () List!1965)

(assert (=> b!118845 (isPrefix!109 testedP!367 lt!35174)))

(declare-datatypes ((Unit!1467 0))(
  ( (Unit!1468) )
))
(declare-fun lt!35176 () Unit!1467)

(declare-fun testedSuffix!285 () List!1965)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!55 (List!1965 List!1965) Unit!1467)

(assert (=> b!118845 (= lt!35176 (lemmaConcatTwoListThenFirstIsPrefix!55 testedP!367 testedSuffix!285))))

(declare-fun b!118846 () Bool)

(assert (=> b!118846 (= e!67779 e!67782)))

(declare-fun res!56016 () Bool)

(assert (=> b!118846 (=> (not res!56016) (not e!67782))))

(assert (=> b!118846 (= res!56016 (= lt!35174 totalInput!1363))))

(declare-fun ++!361 (List!1965 List!1965) List!1965)

(assert (=> b!118846 (= lt!35174 (++!361 testedP!367 testedSuffix!285))))

(declare-fun b!118847 () Bool)

(declare-fun e!67778 () Bool)

(assert (=> b!118847 (= e!67789 e!67778)))

(declare-fun b!118848 () Bool)

(assert (=> b!118848 (= e!67780 e!67791)))

(declare-fun b!118849 () Bool)

(assert (=> b!118849 (= e!67792 tp_is_empty!1105)))

(declare-fun b!118850 () Bool)

(declare-fun lt!35173 () MutLongMap!391)

(get-info :version)

(assert (=> b!118850 (= e!67783 (and e!67785 ((_ is LongMap!391) lt!35173)))))

(assert (=> b!118850 (= lt!35173 (v!13314 (underlying!982 (cache!839 cache!470))))))

(declare-fun mapNonEmpty!1514 () Bool)

(declare-fun mapRes!1514 () Bool)

(declare-fun tp!65217 () Bool)

(declare-fun tp!65211 () Bool)

(assert (=> mapNonEmpty!1514 (= mapRes!1514 (and tp!65217 tp!65211))))

(declare-fun mapValue!1514 () List!1964)

(declare-fun mapKey!1514 () (_ BitVec 32))

(declare-fun mapRest!1514 () (Array (_ BitVec 32) List!1964))

(assert (=> mapNonEmpty!1514 (= (arr!667 (_values!669 (v!13313 (underlying!981 (v!13314 (underlying!982 (cache!839 cache!470))))))) (store mapRest!1514 mapKey!1514 mapValue!1514))))

(declare-fun b!118851 () Bool)

(declare-fun tp!65222 () Bool)

(declare-fun tp!65220 () Bool)

(assert (=> b!118851 (= e!67792 (and tp!65222 tp!65220))))

(declare-fun b!118852 () Bool)

(declare-fun e!67781 () Bool)

(declare-fun tp!65224 () Bool)

(assert (=> b!118852 (= e!67781 (and tp!65224 mapRes!1514))))

(declare-fun condMapEmpty!1514 () Bool)

(declare-fun mapDefault!1514 () List!1964)

(assert (=> b!118852 (= condMapEmpty!1514 (= (arr!667 (_values!669 (v!13313 (underlying!981 (v!13314 (underlying!982 (cache!839 cache!470))))))) ((as const (Array (_ BitVec 32) List!1964)) mapDefault!1514)))))

(declare-fun b!118853 () Bool)

(declare-fun tp!65214 () Bool)

(assert (=> b!118853 (= e!67787 (and tp_is_empty!1105 tp!65214))))

(declare-fun mapIsEmpty!1514 () Bool)

(assert (=> mapIsEmpty!1514 mapRes!1514))

(declare-fun b!118854 () Bool)

(declare-fun tp!65223 () Bool)

(assert (=> b!118854 (= e!67788 (and tp_is_empty!1105 tp!65223))))

(declare-fun b!118855 () Bool)

(declare-fun lt!35175 () List!1965)

(assert (=> b!118855 (= e!67790 (= lt!35175 testedSuffix!285))))

(assert (=> b!118855 (= testedSuffix!285 lt!35175)))

(declare-fun lt!35172 () Unit!1467)

(declare-fun lemmaSamePrefixThenSameSuffix!44 (List!1965 List!1965 List!1965 List!1965 List!1965) Unit!1467)

(assert (=> b!118855 (= lt!35172 (lemmaSamePrefixThenSameSuffix!44 testedP!367 testedSuffix!285 testedP!367 lt!35175 totalInput!1363))))

(declare-fun getSuffix!48 (List!1965 List!1965) List!1965)

(assert (=> b!118855 (= lt!35175 (getSuffix!48 totalInput!1363 testedP!367))))

(declare-fun tp!65210 () Bool)

(declare-fun tp!65216 () Bool)

(declare-fun array_inv!479 (array!1429) Bool)

(declare-fun array_inv!480 (array!1431) Bool)

(assert (=> b!118856 (= e!67778 (and tp!65212 tp!65210 tp!65216 (array_inv!479 (_keys!682 (v!13313 (underlying!981 (v!13314 (underlying!982 (cache!839 cache!470))))))) (array_inv!480 (_values!669 (v!13313 (underlying!981 (v!13314 (underlying!982 (cache!839 cache!470))))))) e!67781))))

(assert (= (and start!12050 res!56017) b!118838))

(assert (= (and b!118838 res!56014) b!118846))

(assert (= (and b!118846 res!56016) b!118844))

(assert (= (and b!118844 res!56018) b!118841))

(assert (= (and b!118841 res!56015) b!118845))

(assert (= (and b!118845 (not res!56019)) b!118855))

(assert (= (and start!12050 ((_ is ElementMatch!525) r!15532)) b!118849))

(assert (= (and start!12050 ((_ is Concat!909) r!15532)) b!118851))

(assert (= (and start!12050 ((_ is Star!525) r!15532)) b!118840))

(assert (= (and start!12050 ((_ is Union!525) r!15532)) b!118843))

(assert (= (and start!12050 ((_ is Cons!1959) totalInput!1363)) b!118854))

(assert (= (and start!12050 ((_ is Cons!1959) testedSuffix!285)) b!118837))

(assert (= (and start!12050 ((_ is Cons!1959) testedP!367)) b!118853))

(assert (= (and b!118852 condMapEmpty!1514) mapIsEmpty!1514))

(assert (= (and b!118852 (not condMapEmpty!1514)) mapNonEmpty!1514))

(assert (= b!118856 b!118852))

(assert (= b!118847 b!118856))

(assert (= b!118842 b!118847))

(assert (= (and b!118850 ((_ is LongMap!391) (v!13314 (underlying!982 (cache!839 cache!470))))) b!118842))

(assert (= b!118839 b!118850))

(assert (= (and b!118848 ((_ is HashMap!387) (cache!839 cache!470))) b!118839))

(assert (= start!12050 b!118848))

(declare-fun m!106045 () Bool)

(assert (=> b!118845 m!106045))

(declare-fun m!106047 () Bool)

(assert (=> b!118845 m!106047))

(declare-fun m!106049 () Bool)

(assert (=> b!118845 m!106049))

(declare-fun m!106051 () Bool)

(assert (=> b!118838 m!106051))

(declare-fun m!106053 () Bool)

(assert (=> b!118855 m!106053))

(declare-fun m!106055 () Bool)

(assert (=> b!118855 m!106055))

(declare-fun m!106057 () Bool)

(assert (=> b!118856 m!106057))

(declare-fun m!106059 () Bool)

(assert (=> b!118856 m!106059))

(declare-fun m!106061 () Bool)

(assert (=> b!118841 m!106061))

(declare-fun m!106063 () Bool)

(assert (=> b!118844 m!106063))

(declare-fun m!106065 () Bool)

(assert (=> start!12050 m!106065))

(declare-fun m!106067 () Bool)

(assert (=> start!12050 m!106067))

(declare-fun m!106069 () Bool)

(assert (=> b!118846 m!106069))

(declare-fun m!106071 () Bool)

(assert (=> mapNonEmpty!1514 m!106071))

(check-sat (not b!118846) (not b_next!3793) (not b!118851) (not b!118840) tp_is_empty!1105 (not mapNonEmpty!1514) (not b!118844) (not b!118845) (not b!118838) b_and!5925 (not b!118837) (not start!12050) (not b!118856) (not b!118854) (not b!118853) b_and!5923 (not b!118852) (not b_next!3795) (not b!118841) (not b!118843) (not b!118855))
(check-sat b_and!5923 b_and!5925 (not b_next!3793) (not b_next!3795))
