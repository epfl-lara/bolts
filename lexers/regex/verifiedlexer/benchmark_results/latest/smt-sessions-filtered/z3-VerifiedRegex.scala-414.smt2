; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12212 () Bool)

(assert start!12212)

(declare-fun b!120747 () Bool)

(declare-fun b_free!3865 () Bool)

(declare-fun b_next!3865 () Bool)

(assert (=> b!120747 (= b_free!3865 (not b_next!3865))))

(declare-fun tp!66336 () Bool)

(declare-fun b_and!5995 () Bool)

(assert (=> b!120747 (= tp!66336 b_and!5995)))

(declare-fun b!120735 () Bool)

(declare-fun b_free!3867 () Bool)

(declare-fun b_next!3867 () Bool)

(assert (=> b!120735 (= b_free!3867 (not b_next!3867))))

(declare-fun tp!66345 () Bool)

(declare-fun b_and!5997 () Bool)

(assert (=> b!120735 (= tp!66345 b_and!5997)))

(declare-fun b!120733 () Bool)

(declare-fun e!69135 () Bool)

(declare-fun e!69137 () Bool)

(assert (=> b!120733 (= e!69135 e!69137)))

(declare-fun res!56682 () Bool)

(assert (=> b!120733 (=> (not res!56682) (not e!69137))))

(declare-fun testedPSize!285 () Int)

(declare-fun lt!36013 () Int)

(assert (=> b!120733 (= res!56682 (= testedPSize!285 lt!36013))))

(declare-datatypes ((C!2008 0))(
  ( (C!2009 (val!730 Int)) )
))
(declare-datatypes ((List!1998 0))(
  ( (Nil!1992) (Cons!1992 (h!7389 C!2008) (t!22475 List!1998)) )
))
(declare-fun testedP!367 () List!1998)

(declare-fun size!1844 (List!1998) Int)

(assert (=> b!120733 (= lt!36013 (size!1844 testedP!367))))

(declare-fun b!120734 () Bool)

(declare-fun e!69146 () Bool)

(declare-fun e!69130 () Bool)

(assert (=> b!120734 (= e!69146 (not e!69130))))

(declare-fun res!56680 () Bool)

(assert (=> b!120734 (=> res!56680 e!69130)))

(declare-fun totalInput!1363 () List!1998)

(declare-fun isPrefix!123 (List!1998 List!1998) Bool)

(assert (=> b!120734 (= res!56680 (not (isPrefix!123 testedP!367 totalInput!1363)))))

(declare-fun lt!36025 () List!1998)

(assert (=> b!120734 (isPrefix!123 testedP!367 lt!36025)))

(declare-datatypes ((Unit!1510 0))(
  ( (Unit!1511) )
))
(declare-fun lt!36018 () Unit!1510)

(declare-fun testedSuffix!285 () List!1998)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!67 (List!1998 List!1998) Unit!1510)

(assert (=> b!120734 (= lt!36018 (lemmaConcatTwoListThenFirstIsPrefix!67 testedP!367 testedSuffix!285))))

(declare-fun e!69134 () Bool)

(declare-datatypes ((Regex!543 0))(
  ( (ElementMatch!543 (c!26950 C!2008)) (Concat!927 (regOne!1598 Regex!543) (regTwo!1598 Regex!543)) (EmptyExpr!543) (Star!543 (reg!872 Regex!543)) (EmptyLang!543) (Union!543 (regOne!1599 Regex!543) (regTwo!1599 Regex!543)) )
))
(declare-datatypes ((Hashable!405 0))(
  ( (HashableExt!404 (__x!2152 Int)) )
))
(declare-datatypes ((tuple2!2306 0))(
  ( (tuple2!2307 (_1!1363 Regex!543) (_2!1363 C!2008)) )
))
(declare-datatypes ((tuple2!2308 0))(
  ( (tuple2!2309 (_1!1364 tuple2!2306) (_2!1364 Regex!543)) )
))
(declare-datatypes ((List!1999 0))(
  ( (Nil!1993) (Cons!1993 (h!7390 tuple2!2308) (t!22476 List!1999)) )
))
(declare-datatypes ((array!1509 0))(
  ( (array!1510 (arr!702 (Array (_ BitVec 32) (_ BitVec 64))) (size!1845 (_ BitVec 32))) )
))
(declare-datatypes ((array!1511 0))(
  ( (array!1512 (arr!703 (Array (_ BitVec 32) List!1999)) (size!1846 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!818 0))(
  ( (LongMapFixedSize!819 (defaultEntry!748 Int) (mask!1348 (_ BitVec 32)) (extraKeys!655 (_ BitVec 32)) (zeroValue!665 List!1999) (minValue!665 List!1999) (_size!951 (_ BitVec 32)) (_keys!700 array!1509) (_values!687 array!1511) (_vacant!470 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1625 0))(
  ( (Cell!1626 (v!13349 LongMapFixedSize!818)) )
))
(declare-datatypes ((MutLongMap!409 0))(
  ( (LongMap!409 (underlying!1017 Cell!1625)) (MutLongMapExt!408 (__x!2153 Int)) )
))
(declare-datatypes ((Cell!1627 0))(
  ( (Cell!1628 (v!13350 MutLongMap!409)) )
))
(declare-datatypes ((MutableMap!405 0))(
  ( (MutableMapExt!404 (__x!2154 Int)) (HashMap!405 (underlying!1018 Cell!1627) (hashF!2281 Hashable!405) (_size!952 (_ BitVec 32)) (defaultValue!554 Int)) )
))
(declare-datatypes ((Cache!246 0))(
  ( (Cache!247 (cache!857 MutableMap!405)) )
))
(declare-fun cache!470 () Cache!246)

(declare-fun tp!66342 () Bool)

(declare-fun tp!66338 () Bool)

(declare-fun e!69127 () Bool)

(declare-fun array_inv!507 (array!1509) Bool)

(declare-fun array_inv!508 (array!1511) Bool)

(assert (=> b!120735 (= e!69127 (and tp!66345 tp!66342 tp!66338 (array_inv!507 (_keys!700 (v!13349 (underlying!1017 (v!13350 (underlying!1018 (cache!857 cache!470))))))) (array_inv!508 (_values!687 (v!13349 (underlying!1017 (v!13350 (underlying!1018 (cache!857 cache!470))))))) e!69134))))

(declare-fun b!120736 () Bool)

(declare-fun e!69136 () Bool)

(declare-fun tp_is_empty!1141 () Bool)

(declare-fun tp!66346 () Bool)

(assert (=> b!120736 (= e!69136 (and tp_is_empty!1141 tp!66346))))

(declare-fun b!120737 () Bool)

(declare-fun e!69145 () Bool)

(declare-fun r!15532 () Regex!543)

(declare-fun lt!36010 () C!2008)

(declare-fun validRegex!142 (Regex!543) Bool)

(declare-fun derivativeStep!52 (Regex!543 C!2008) Regex!543)

(assert (=> b!120737 (= e!69145 (validRegex!142 (derivativeStep!52 r!15532 lt!36010)))))

(declare-fun b!120738 () Bool)

(declare-fun res!56684 () Bool)

(declare-fun e!69141 () Bool)

(assert (=> b!120738 (=> res!56684 e!69141)))

(declare-fun totalInputSize!643 () Int)

(assert (=> b!120738 (= res!56684 (= testedPSize!285 totalInputSize!643))))

(declare-fun res!56683 () Bool)

(declare-fun e!69144 () Bool)

(assert (=> start!12212 (=> (not res!56683) (not e!69144))))

(assert (=> start!12212 (= res!56683 (validRegex!142 r!15532))))

(assert (=> start!12212 e!69144))

(assert (=> start!12212 true))

(declare-fun e!69132 () Bool)

(assert (=> start!12212 e!69132))

(declare-fun e!69140 () Bool)

(assert (=> start!12212 e!69140))

(declare-fun e!69128 () Bool)

(assert (=> start!12212 e!69128))

(assert (=> start!12212 e!69136))

(declare-fun e!69133 () Bool)

(declare-fun inv!2520 (Cache!246) Bool)

(assert (=> start!12212 (and (inv!2520 cache!470) e!69133)))

(declare-fun b!120739 () Bool)

(declare-fun e!69139 () Bool)

(declare-fun e!69138 () Bool)

(assert (=> b!120739 (= e!69139 e!69138)))

(declare-fun b!120740 () Bool)

(assert (=> b!120740 (= e!69130 e!69141)))

(declare-fun res!56685 () Bool)

(assert (=> b!120740 (=> res!56685 e!69141)))

(declare-fun lostCause!66 (Regex!543) Bool)

(assert (=> b!120740 (= res!56685 (lostCause!66 r!15532))))

(declare-fun lt!36017 () List!1998)

(assert (=> b!120740 (and (= testedSuffix!285 lt!36017) (= lt!36017 testedSuffix!285))))

(declare-fun lt!36023 () Unit!1510)

(declare-fun lemmaSamePrefixThenSameSuffix!57 (List!1998 List!1998 List!1998 List!1998 List!1998) Unit!1510)

(assert (=> b!120740 (= lt!36023 (lemmaSamePrefixThenSameSuffix!57 testedP!367 testedSuffix!285 testedP!367 lt!36017 totalInput!1363))))

(declare-fun getSuffix!61 (List!1998 List!1998) List!1998)

(assert (=> b!120740 (= lt!36017 (getSuffix!61 totalInput!1363 testedP!367))))

(declare-fun b!120741 () Bool)

(declare-fun tp!66350 () Bool)

(declare-fun tp!66344 () Bool)

(assert (=> b!120741 (= e!69132 (and tp!66350 tp!66344))))

(declare-fun b!120742 () Bool)

(declare-fun tp!66343 () Bool)

(assert (=> b!120742 (= e!69140 (and tp_is_empty!1141 tp!66343))))

(declare-fun b!120743 () Bool)

(assert (=> b!120743 (= e!69144 e!69135)))

(declare-fun res!56678 () Bool)

(assert (=> b!120743 (=> (not res!56678) (not e!69135))))

(assert (=> b!120743 (= res!56678 (= lt!36025 totalInput!1363))))

(declare-fun ++!374 (List!1998 List!1998) List!1998)

(assert (=> b!120743 (= lt!36025 (++!374 testedP!367 testedSuffix!285))))

(declare-fun b!120744 () Bool)

(declare-fun e!69126 () Bool)

(assert (=> b!120744 (= e!69126 e!69145)))

(declare-fun res!56686 () Bool)

(assert (=> b!120744 (=> res!56686 e!69145)))

(declare-fun nullable!83 (Regex!543) Bool)

(assert (=> b!120744 (= res!56686 (not (nullable!83 r!15532)))))

(declare-fun lt!36022 () List!1998)

(declare-fun lt!36019 () List!1998)

(assert (=> b!120744 (= (++!374 lt!36022 lt!36019) totalInput!1363)))

(declare-fun lt!36016 () Unit!1510)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!20 (List!1998 C!2008 List!1998 List!1998) Unit!1510)

(assert (=> b!120744 (= lt!36016 (lemmaMoveElementToOtherListKeepsConcatEq!20 testedP!367 lt!36010 lt!36019 totalInput!1363))))

(declare-fun tail!233 (List!1998) List!1998)

(assert (=> b!120744 (= lt!36019 (tail!233 testedSuffix!285))))

(declare-fun head!497 (List!1998) C!2008)

(assert (=> b!120744 (isPrefix!123 (++!374 testedP!367 (Cons!1992 (head!497 lt!36017) Nil!1992)) totalInput!1363)))

(declare-fun lt!36014 () Unit!1510)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!26 (List!1998 List!1998) Unit!1510)

(assert (=> b!120744 (= lt!36014 (lemmaAddHeadSuffixToPrefixStillPrefix!26 testedP!367 totalInput!1363))))

(assert (=> b!120744 (= lt!36022 (++!374 testedP!367 (Cons!1992 lt!36010 Nil!1992)))))

(assert (=> b!120744 (= lt!36010 (head!497 testedSuffix!285))))

(declare-fun b!120745 () Bool)

(declare-fun e!69129 () Unit!1510)

(declare-fun Unit!1512 () Unit!1510)

(assert (=> b!120745 (= e!69129 Unit!1512)))

(declare-fun b!120746 () Bool)

(assert (=> b!120746 (= e!69132 tp_is_empty!1141)))

(declare-fun mapIsEmpty!1580 () Bool)

(declare-fun mapRes!1580 () Bool)

(assert (=> mapIsEmpty!1580 mapRes!1580))

(declare-fun e!69131 () Bool)

(declare-fun e!69143 () Bool)

(assert (=> b!120747 (= e!69131 (and e!69143 tp!66336))))

(declare-fun b!120748 () Bool)

(declare-fun tp!66348 () Bool)

(assert (=> b!120748 (= e!69134 (and tp!66348 mapRes!1580))))

(declare-fun condMapEmpty!1580 () Bool)

(declare-fun mapDefault!1580 () List!1999)

(assert (=> b!120748 (= condMapEmpty!1580 (= (arr!703 (_values!687 (v!13349 (underlying!1017 (v!13350 (underlying!1018 (cache!857 cache!470))))))) ((as const (Array (_ BitVec 32) List!1999)) mapDefault!1580)))))

(declare-fun b!120749 () Bool)

(assert (=> b!120749 (= e!69141 e!69126)))

(declare-fun res!56687 () Bool)

(assert (=> b!120749 (=> res!56687 e!69126)))

(declare-fun lt!36012 () Int)

(assert (=> b!120749 (= res!56687 (>= lt!36013 lt!36012))))

(declare-fun lt!36020 () Unit!1510)

(assert (=> b!120749 (= lt!36020 e!69129)))

(declare-fun c!26949 () Bool)

(assert (=> b!120749 (= c!26949 (= lt!36013 lt!36012))))

(assert (=> b!120749 (<= lt!36013 lt!36012)))

(declare-fun lt!36011 () Unit!1510)

(declare-fun lemmaIsPrefixThenSmallerEqSize!35 (List!1998 List!1998) Unit!1510)

(assert (=> b!120749 (= lt!36011 (lemmaIsPrefixThenSmallerEqSize!35 testedP!367 totalInput!1363))))

(declare-fun b!120750 () Bool)

(declare-fun lt!36015 () MutLongMap!409)

(get-info :version)

(assert (=> b!120750 (= e!69143 (and e!69139 ((_ is LongMap!409) lt!36015)))))

(assert (=> b!120750 (= lt!36015 (v!13350 (underlying!1018 (cache!857 cache!470))))))

(declare-fun b!120751 () Bool)

(assert (=> b!120751 (= e!69137 e!69146)))

(declare-fun res!56679 () Bool)

(assert (=> b!120751 (=> (not res!56679) (not e!69146))))

(assert (=> b!120751 (= res!56679 (= totalInputSize!643 lt!36012))))

(assert (=> b!120751 (= lt!36012 (size!1844 totalInput!1363))))

(declare-fun b!120752 () Bool)

(declare-fun tp!66339 () Bool)

(assert (=> b!120752 (= e!69128 (and tp_is_empty!1141 tp!66339))))

(declare-fun b!120753 () Bool)

(assert (=> b!120753 (= e!69138 e!69127)))

(declare-fun b!120754 () Bool)

(declare-fun res!56681 () Bool)

(assert (=> b!120754 (=> (not res!56681) (not e!69144))))

(declare-fun valid!369 (Cache!246) Bool)

(assert (=> b!120754 (= res!56681 (valid!369 cache!470))))

(declare-fun b!120755 () Bool)

(declare-fun tp!66341 () Bool)

(declare-fun tp!66349 () Bool)

(assert (=> b!120755 (= e!69132 (and tp!66341 tp!66349))))

(declare-fun b!120756 () Bool)

(assert (=> b!120756 (= e!69133 e!69131)))

(declare-fun mapNonEmpty!1580 () Bool)

(declare-fun tp!66340 () Bool)

(declare-fun tp!66337 () Bool)

(assert (=> mapNonEmpty!1580 (= mapRes!1580 (and tp!66340 tp!66337))))

(declare-fun mapKey!1580 () (_ BitVec 32))

(declare-fun mapRest!1580 () (Array (_ BitVec 32) List!1999))

(declare-fun mapValue!1580 () List!1999)

(assert (=> mapNonEmpty!1580 (= (arr!703 (_values!687 (v!13349 (underlying!1017 (v!13350 (underlying!1018 (cache!857 cache!470))))))) (store mapRest!1580 mapKey!1580 mapValue!1580))))

(declare-fun b!120757 () Bool)

(declare-fun Unit!1513 () Unit!1510)

(assert (=> b!120757 (= e!69129 Unit!1513)))

(declare-fun lt!36024 () Unit!1510)

(declare-fun lemmaIsPrefixRefl!93 (List!1998 List!1998) Unit!1510)

(assert (=> b!120757 (= lt!36024 (lemmaIsPrefixRefl!93 totalInput!1363 totalInput!1363))))

(assert (=> b!120757 (isPrefix!123 totalInput!1363 totalInput!1363)))

(declare-fun lt!36021 () Unit!1510)

(declare-fun lemmaIsPrefixSameLengthThenSameList!36 (List!1998 List!1998 List!1998) Unit!1510)

(assert (=> b!120757 (= lt!36021 (lemmaIsPrefixSameLengthThenSameList!36 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> b!120757 false))

(declare-fun b!120758 () Bool)

(declare-fun tp!66347 () Bool)

(assert (=> b!120758 (= e!69132 tp!66347)))

(assert (= (and start!12212 res!56683) b!120754))

(assert (= (and b!120754 res!56681) b!120743))

(assert (= (and b!120743 res!56678) b!120733))

(assert (= (and b!120733 res!56682) b!120751))

(assert (= (and b!120751 res!56679) b!120734))

(assert (= (and b!120734 (not res!56680)) b!120740))

(assert (= (and b!120740 (not res!56685)) b!120738))

(assert (= (and b!120738 (not res!56684)) b!120749))

(assert (= (and b!120749 c!26949) b!120757))

(assert (= (and b!120749 (not c!26949)) b!120745))

(assert (= (and b!120749 (not res!56687)) b!120744))

(assert (= (and b!120744 (not res!56686)) b!120737))

(assert (= (and start!12212 ((_ is ElementMatch!543) r!15532)) b!120746))

(assert (= (and start!12212 ((_ is Concat!927) r!15532)) b!120741))

(assert (= (and start!12212 ((_ is Star!543) r!15532)) b!120758))

(assert (= (and start!12212 ((_ is Union!543) r!15532)) b!120755))

(assert (= (and start!12212 ((_ is Cons!1992) totalInput!1363)) b!120742))

(assert (= (and start!12212 ((_ is Cons!1992) testedSuffix!285)) b!120752))

(assert (= (and start!12212 ((_ is Cons!1992) testedP!367)) b!120736))

(assert (= (and b!120748 condMapEmpty!1580) mapIsEmpty!1580))

(assert (= (and b!120748 (not condMapEmpty!1580)) mapNonEmpty!1580))

(assert (= b!120735 b!120748))

(assert (= b!120753 b!120735))

(assert (= b!120739 b!120753))

(assert (= (and b!120750 ((_ is LongMap!409) (v!13350 (underlying!1018 (cache!857 cache!470))))) b!120739))

(assert (= b!120747 b!120750))

(assert (= (and b!120756 ((_ is HashMap!405) (cache!857 cache!470))) b!120747))

(assert (= start!12212 b!120756))

(declare-fun m!107153 () Bool)

(assert (=> b!120744 m!107153))

(declare-fun m!107155 () Bool)

(assert (=> b!120744 m!107155))

(declare-fun m!107157 () Bool)

(assert (=> b!120744 m!107157))

(declare-fun m!107159 () Bool)

(assert (=> b!120744 m!107159))

(declare-fun m!107161 () Bool)

(assert (=> b!120744 m!107161))

(declare-fun m!107163 () Bool)

(assert (=> b!120744 m!107163))

(declare-fun m!107165 () Bool)

(assert (=> b!120744 m!107165))

(assert (=> b!120744 m!107155))

(declare-fun m!107167 () Bool)

(assert (=> b!120744 m!107167))

(declare-fun m!107169 () Bool)

(assert (=> b!120744 m!107169))

(declare-fun m!107171 () Bool)

(assert (=> b!120744 m!107171))

(declare-fun m!107173 () Bool)

(assert (=> b!120751 m!107173))

(declare-fun m!107175 () Bool)

(assert (=> b!120734 m!107175))

(declare-fun m!107177 () Bool)

(assert (=> b!120734 m!107177))

(declare-fun m!107179 () Bool)

(assert (=> b!120734 m!107179))

(declare-fun m!107181 () Bool)

(assert (=> b!120733 m!107181))

(declare-fun m!107183 () Bool)

(assert (=> b!120757 m!107183))

(declare-fun m!107185 () Bool)

(assert (=> b!120757 m!107185))

(declare-fun m!107187 () Bool)

(assert (=> b!120757 m!107187))

(declare-fun m!107189 () Bool)

(assert (=> b!120743 m!107189))

(declare-fun m!107191 () Bool)

(assert (=> b!120735 m!107191))

(declare-fun m!107193 () Bool)

(assert (=> b!120735 m!107193))

(declare-fun m!107195 () Bool)

(assert (=> b!120740 m!107195))

(declare-fun m!107197 () Bool)

(assert (=> b!120740 m!107197))

(declare-fun m!107199 () Bool)

(assert (=> b!120740 m!107199))

(declare-fun m!107201 () Bool)

(assert (=> start!12212 m!107201))

(declare-fun m!107203 () Bool)

(assert (=> start!12212 m!107203))

(declare-fun m!107205 () Bool)

(assert (=> b!120749 m!107205))

(declare-fun m!107207 () Bool)

(assert (=> b!120754 m!107207))

(declare-fun m!107209 () Bool)

(assert (=> mapNonEmpty!1580 m!107209))

(declare-fun m!107211 () Bool)

(assert (=> b!120737 m!107211))

(assert (=> b!120737 m!107211))

(declare-fun m!107213 () Bool)

(assert (=> b!120737 m!107213))

(check-sat (not b!120736) tp_is_empty!1141 (not b!120749) b_and!5997 (not b!120735) (not b!120740) (not b!120737) (not b!120752) (not b!120755) (not b!120744) (not b!120741) b_and!5995 (not b!120733) (not b!120751) (not b!120757) (not b!120734) (not b_next!3867) (not b_next!3865) (not mapNonEmpty!1580) (not b!120758) (not b!120743) (not b!120742) (not b!120754) (not b!120748) (not start!12212))
(check-sat b_and!5995 b_and!5997 (not b_next!3865) (not b_next!3867))
(get-model)

(declare-fun d!28765 () Bool)

(declare-fun lt!36028 () Int)

(assert (=> d!28765 (>= lt!36028 0)))

(declare-fun e!69149 () Int)

(assert (=> d!28765 (= lt!36028 e!69149)))

(declare-fun c!26953 () Bool)

(assert (=> d!28765 (= c!26953 ((_ is Nil!1992) totalInput!1363))))

(assert (=> d!28765 (= (size!1844 totalInput!1363) lt!36028)))

(declare-fun b!120763 () Bool)

(assert (=> b!120763 (= e!69149 0)))

(declare-fun b!120764 () Bool)

(assert (=> b!120764 (= e!69149 (+ 1 (size!1844 (t!22475 totalInput!1363))))))

(assert (= (and d!28765 c!26953) b!120763))

(assert (= (and d!28765 (not c!26953)) b!120764))

(declare-fun m!107215 () Bool)

(assert (=> b!120764 m!107215))

(assert (=> b!120751 d!28765))

(declare-fun b!120775 () Bool)

(declare-fun res!56692 () Bool)

(declare-fun e!69154 () Bool)

(assert (=> b!120775 (=> (not res!56692) (not e!69154))))

(declare-fun lt!36031 () List!1998)

(assert (=> b!120775 (= res!56692 (= (size!1844 lt!36031) (+ (size!1844 testedP!367) (size!1844 testedSuffix!285))))))

(declare-fun d!28767 () Bool)

(assert (=> d!28767 e!69154))

(declare-fun res!56693 () Bool)

(assert (=> d!28767 (=> (not res!56693) (not e!69154))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!224 (List!1998) (InoxSet C!2008))

(assert (=> d!28767 (= res!56693 (= (content!224 lt!36031) ((_ map or) (content!224 testedP!367) (content!224 testedSuffix!285))))))

(declare-fun e!69155 () List!1998)

(assert (=> d!28767 (= lt!36031 e!69155)))

(declare-fun c!26956 () Bool)

(assert (=> d!28767 (= c!26956 ((_ is Nil!1992) testedP!367))))

(assert (=> d!28767 (= (++!374 testedP!367 testedSuffix!285) lt!36031)))

(declare-fun b!120776 () Bool)

(assert (=> b!120776 (= e!69154 (or (not (= testedSuffix!285 Nil!1992)) (= lt!36031 testedP!367)))))

(declare-fun b!120774 () Bool)

(assert (=> b!120774 (= e!69155 (Cons!1992 (h!7389 testedP!367) (++!374 (t!22475 testedP!367) testedSuffix!285)))))

(declare-fun b!120773 () Bool)

(assert (=> b!120773 (= e!69155 testedSuffix!285)))

(assert (= (and d!28767 c!26956) b!120773))

(assert (= (and d!28767 (not c!26956)) b!120774))

(assert (= (and d!28767 res!56693) b!120775))

(assert (= (and b!120775 res!56692) b!120776))

(declare-fun m!107217 () Bool)

(assert (=> b!120775 m!107217))

(assert (=> b!120775 m!107181))

(declare-fun m!107219 () Bool)

(assert (=> b!120775 m!107219))

(declare-fun m!107221 () Bool)

(assert (=> d!28767 m!107221))

(declare-fun m!107223 () Bool)

(assert (=> d!28767 m!107223))

(declare-fun m!107225 () Bool)

(assert (=> d!28767 m!107225))

(declare-fun m!107227 () Bool)

(assert (=> b!120774 m!107227))

(assert (=> b!120743 d!28767))

(declare-fun b!120787 () Bool)

(declare-fun e!69164 () Bool)

(assert (=> b!120787 (= e!69164 (isPrefix!123 (tail!233 testedP!367) (tail!233 totalInput!1363)))))

(declare-fun b!120786 () Bool)

(declare-fun res!56702 () Bool)

(assert (=> b!120786 (=> (not res!56702) (not e!69164))))

(assert (=> b!120786 (= res!56702 (= (head!497 testedP!367) (head!497 totalInput!1363)))))

(declare-fun b!120788 () Bool)

(declare-fun e!69163 () Bool)

(assert (=> b!120788 (= e!69163 (>= (size!1844 totalInput!1363) (size!1844 testedP!367)))))

(declare-fun d!28769 () Bool)

(assert (=> d!28769 e!69163))

(declare-fun res!56703 () Bool)

(assert (=> d!28769 (=> res!56703 e!69163)))

(declare-fun lt!36034 () Bool)

(assert (=> d!28769 (= res!56703 (not lt!36034))))

(declare-fun e!69162 () Bool)

(assert (=> d!28769 (= lt!36034 e!69162)))

(declare-fun res!56704 () Bool)

(assert (=> d!28769 (=> res!56704 e!69162)))

(assert (=> d!28769 (= res!56704 ((_ is Nil!1992) testedP!367))))

(assert (=> d!28769 (= (isPrefix!123 testedP!367 totalInput!1363) lt!36034)))

(declare-fun b!120785 () Bool)

(assert (=> b!120785 (= e!69162 e!69164)))

(declare-fun res!56705 () Bool)

(assert (=> b!120785 (=> (not res!56705) (not e!69164))))

(assert (=> b!120785 (= res!56705 (not ((_ is Nil!1992) totalInput!1363)))))

(assert (= (and d!28769 (not res!56704)) b!120785))

(assert (= (and b!120785 res!56705) b!120786))

(assert (= (and b!120786 res!56702) b!120787))

(assert (= (and d!28769 (not res!56703)) b!120788))

(declare-fun m!107229 () Bool)

(assert (=> b!120787 m!107229))

(declare-fun m!107231 () Bool)

(assert (=> b!120787 m!107231))

(assert (=> b!120787 m!107229))

(assert (=> b!120787 m!107231))

(declare-fun m!107233 () Bool)

(assert (=> b!120787 m!107233))

(declare-fun m!107235 () Bool)

(assert (=> b!120786 m!107235))

(declare-fun m!107237 () Bool)

(assert (=> b!120786 m!107237))

(assert (=> b!120788 m!107173))

(assert (=> b!120788 m!107181))

(assert (=> b!120734 d!28769))

(declare-fun b!120791 () Bool)

(declare-fun e!69167 () Bool)

(assert (=> b!120791 (= e!69167 (isPrefix!123 (tail!233 testedP!367) (tail!233 lt!36025)))))

(declare-fun b!120790 () Bool)

(declare-fun res!56706 () Bool)

(assert (=> b!120790 (=> (not res!56706) (not e!69167))))

(assert (=> b!120790 (= res!56706 (= (head!497 testedP!367) (head!497 lt!36025)))))

(declare-fun b!120792 () Bool)

(declare-fun e!69166 () Bool)

(assert (=> b!120792 (= e!69166 (>= (size!1844 lt!36025) (size!1844 testedP!367)))))

(declare-fun d!28771 () Bool)

(assert (=> d!28771 e!69166))

(declare-fun res!56707 () Bool)

(assert (=> d!28771 (=> res!56707 e!69166)))

(declare-fun lt!36035 () Bool)

(assert (=> d!28771 (= res!56707 (not lt!36035))))

(declare-fun e!69165 () Bool)

(assert (=> d!28771 (= lt!36035 e!69165)))

(declare-fun res!56708 () Bool)

(assert (=> d!28771 (=> res!56708 e!69165)))

(assert (=> d!28771 (= res!56708 ((_ is Nil!1992) testedP!367))))

(assert (=> d!28771 (= (isPrefix!123 testedP!367 lt!36025) lt!36035)))

(declare-fun b!120789 () Bool)

(assert (=> b!120789 (= e!69165 e!69167)))

(declare-fun res!56709 () Bool)

(assert (=> b!120789 (=> (not res!56709) (not e!69167))))

(assert (=> b!120789 (= res!56709 (not ((_ is Nil!1992) lt!36025)))))

(assert (= (and d!28771 (not res!56708)) b!120789))

(assert (= (and b!120789 res!56709) b!120790))

(assert (= (and b!120790 res!56706) b!120791))

(assert (= (and d!28771 (not res!56707)) b!120792))

(assert (=> b!120791 m!107229))

(declare-fun m!107239 () Bool)

(assert (=> b!120791 m!107239))

(assert (=> b!120791 m!107229))

(assert (=> b!120791 m!107239))

(declare-fun m!107241 () Bool)

(assert (=> b!120791 m!107241))

(assert (=> b!120790 m!107235))

(declare-fun m!107243 () Bool)

(assert (=> b!120790 m!107243))

(declare-fun m!107245 () Bool)

(assert (=> b!120792 m!107245))

(assert (=> b!120792 m!107181))

(assert (=> b!120734 d!28771))

(declare-fun d!28773 () Bool)

(assert (=> d!28773 (isPrefix!123 testedP!367 (++!374 testedP!367 testedSuffix!285))))

(declare-fun lt!36038 () Unit!1510)

(declare-fun choose!1566 (List!1998 List!1998) Unit!1510)

(assert (=> d!28773 (= lt!36038 (choose!1566 testedP!367 testedSuffix!285))))

(assert (=> d!28773 (= (lemmaConcatTwoListThenFirstIsPrefix!67 testedP!367 testedSuffix!285) lt!36038)))

(declare-fun bs!11941 () Bool)

(assert (= bs!11941 d!28773))

(assert (=> bs!11941 m!107189))

(assert (=> bs!11941 m!107189))

(declare-fun m!107247 () Bool)

(assert (=> bs!11941 m!107247))

(declare-fun m!107249 () Bool)

(assert (=> bs!11941 m!107249))

(assert (=> b!120734 d!28773))

(declare-fun d!28775 () Bool)

(declare-fun validCacheMap!26 (MutableMap!405) Bool)

(assert (=> d!28775 (= (valid!369 cache!470) (validCacheMap!26 (cache!857 cache!470)))))

(declare-fun bs!11942 () Bool)

(assert (= bs!11942 d!28775))

(declare-fun m!107251 () Bool)

(assert (=> bs!11942 m!107251))

(assert (=> b!120754 d!28775))

(declare-fun d!28777 () Bool)

(declare-fun res!56724 () Bool)

(declare-fun e!69186 () Bool)

(assert (=> d!28777 (=> res!56724 e!69186)))

(assert (=> d!28777 (= res!56724 ((_ is ElementMatch!543) r!15532))))

(assert (=> d!28777 (= (validRegex!142 r!15532) e!69186)))

(declare-fun b!120811 () Bool)

(declare-fun e!69187 () Bool)

(assert (=> b!120811 (= e!69186 e!69187)))

(declare-fun c!26962 () Bool)

(assert (=> b!120811 (= c!26962 ((_ is Star!543) r!15532))))

(declare-fun b!120812 () Bool)

(declare-fun e!69182 () Bool)

(assert (=> b!120812 (= e!69187 e!69182)))

(declare-fun c!26961 () Bool)

(assert (=> b!120812 (= c!26961 ((_ is Union!543) r!15532))))

(declare-fun b!120813 () Bool)

(declare-fun e!69184 () Bool)

(declare-fun e!69188 () Bool)

(assert (=> b!120813 (= e!69184 e!69188)))

(declare-fun res!56720 () Bool)

(assert (=> b!120813 (=> (not res!56720) (not e!69188))))

(declare-fun call!5086 () Bool)

(assert (=> b!120813 (= res!56720 call!5086)))

(declare-fun b!120814 () Bool)

(declare-fun res!56722 () Bool)

(assert (=> b!120814 (=> res!56722 e!69184)))

(assert (=> b!120814 (= res!56722 (not ((_ is Concat!927) r!15532)))))

(assert (=> b!120814 (= e!69182 e!69184)))

(declare-fun bm!5081 () Bool)

(declare-fun call!5088 () Bool)

(assert (=> bm!5081 (= call!5088 (validRegex!142 (ite c!26961 (regOne!1599 r!15532) (regTwo!1598 r!15532))))))

(declare-fun b!120815 () Bool)

(declare-fun e!69185 () Bool)

(assert (=> b!120815 (= e!69187 e!69185)))

(declare-fun res!56721 () Bool)

(assert (=> b!120815 (= res!56721 (not (nullable!83 (reg!872 r!15532))))))

(assert (=> b!120815 (=> (not res!56721) (not e!69185))))

(declare-fun b!120816 () Bool)

(declare-fun call!5087 () Bool)

(assert (=> b!120816 (= e!69185 call!5087)))

(declare-fun bm!5082 () Bool)

(assert (=> bm!5082 (= call!5087 (validRegex!142 (ite c!26962 (reg!872 r!15532) (ite c!26961 (regTwo!1599 r!15532) (regOne!1598 r!15532)))))))

(declare-fun b!120817 () Bool)

(assert (=> b!120817 (= e!69188 call!5088)))

(declare-fun b!120818 () Bool)

(declare-fun e!69183 () Bool)

(assert (=> b!120818 (= e!69183 call!5086)))

(declare-fun b!120819 () Bool)

(declare-fun res!56723 () Bool)

(assert (=> b!120819 (=> (not res!56723) (not e!69183))))

(assert (=> b!120819 (= res!56723 call!5088)))

(assert (=> b!120819 (= e!69182 e!69183)))

(declare-fun bm!5083 () Bool)

(assert (=> bm!5083 (= call!5086 call!5087)))

(assert (= (and d!28777 (not res!56724)) b!120811))

(assert (= (and b!120811 c!26962) b!120815))

(assert (= (and b!120811 (not c!26962)) b!120812))

(assert (= (and b!120815 res!56721) b!120816))

(assert (= (and b!120812 c!26961) b!120819))

(assert (= (and b!120812 (not c!26961)) b!120814))

(assert (= (and b!120819 res!56723) b!120818))

(assert (= (and b!120814 (not res!56722)) b!120813))

(assert (= (and b!120813 res!56720) b!120817))

(assert (= (or b!120818 b!120813) bm!5083))

(assert (= (or b!120819 b!120817) bm!5081))

(assert (= (or b!120816 bm!5083) bm!5082))

(declare-fun m!107253 () Bool)

(assert (=> bm!5081 m!107253))

(declare-fun m!107255 () Bool)

(assert (=> b!120815 m!107255))

(declare-fun m!107257 () Bool)

(assert (=> bm!5082 m!107257))

(assert (=> start!12212 d!28777))

(declare-fun d!28779 () Bool)

(declare-fun res!56727 () Bool)

(declare-fun e!69191 () Bool)

(assert (=> d!28779 (=> (not res!56727) (not e!69191))))

(assert (=> d!28779 (= res!56727 ((_ is HashMap!405) (cache!857 cache!470)))))

(assert (=> d!28779 (= (inv!2520 cache!470) e!69191)))

(declare-fun b!120822 () Bool)

(assert (=> b!120822 (= e!69191 (validCacheMap!26 (cache!857 cache!470)))))

(assert (= (and d!28779 res!56727) b!120822))

(assert (=> b!120822 m!107251))

(assert (=> start!12212 d!28779))

(declare-fun d!28781 () Bool)

(assert (=> d!28781 (= (head!497 lt!36017) (h!7389 lt!36017))))

(assert (=> b!120744 d!28781))

(declare-fun d!28783 () Bool)

(assert (=> d!28783 (= (head!497 testedSuffix!285) (h!7389 testedSuffix!285))))

(assert (=> b!120744 d!28783))

(declare-fun d!28785 () Bool)

(assert (=> d!28785 (= (tail!233 testedSuffix!285) (t!22475 testedSuffix!285))))

(assert (=> b!120744 d!28785))

(declare-fun b!120825 () Bool)

(declare-fun res!56728 () Bool)

(declare-fun e!69192 () Bool)

(assert (=> b!120825 (=> (not res!56728) (not e!69192))))

(declare-fun lt!36039 () List!1998)

(assert (=> b!120825 (= res!56728 (= (size!1844 lt!36039) (+ (size!1844 testedP!367) (size!1844 (Cons!1992 lt!36010 Nil!1992)))))))

(declare-fun d!28787 () Bool)

(assert (=> d!28787 e!69192))

(declare-fun res!56729 () Bool)

(assert (=> d!28787 (=> (not res!56729) (not e!69192))))

(assert (=> d!28787 (= res!56729 (= (content!224 lt!36039) ((_ map or) (content!224 testedP!367) (content!224 (Cons!1992 lt!36010 Nil!1992)))))))

(declare-fun e!69193 () List!1998)

(assert (=> d!28787 (= lt!36039 e!69193)))

(declare-fun c!26963 () Bool)

(assert (=> d!28787 (= c!26963 ((_ is Nil!1992) testedP!367))))

(assert (=> d!28787 (= (++!374 testedP!367 (Cons!1992 lt!36010 Nil!1992)) lt!36039)))

(declare-fun b!120826 () Bool)

(assert (=> b!120826 (= e!69192 (or (not (= (Cons!1992 lt!36010 Nil!1992) Nil!1992)) (= lt!36039 testedP!367)))))

(declare-fun b!120824 () Bool)

(assert (=> b!120824 (= e!69193 (Cons!1992 (h!7389 testedP!367) (++!374 (t!22475 testedP!367) (Cons!1992 lt!36010 Nil!1992))))))

(declare-fun b!120823 () Bool)

(assert (=> b!120823 (= e!69193 (Cons!1992 lt!36010 Nil!1992))))

(assert (= (and d!28787 c!26963) b!120823))

(assert (= (and d!28787 (not c!26963)) b!120824))

(assert (= (and d!28787 res!56729) b!120825))

(assert (= (and b!120825 res!56728) b!120826))

(declare-fun m!107259 () Bool)

(assert (=> b!120825 m!107259))

(assert (=> b!120825 m!107181))

(declare-fun m!107261 () Bool)

(assert (=> b!120825 m!107261))

(declare-fun m!107263 () Bool)

(assert (=> d!28787 m!107263))

(assert (=> d!28787 m!107223))

(declare-fun m!107265 () Bool)

(assert (=> d!28787 m!107265))

(declare-fun m!107267 () Bool)

(assert (=> b!120824 m!107267))

(assert (=> b!120744 d!28787))

(declare-fun d!28789 () Bool)

(assert (=> d!28789 (isPrefix!123 (++!374 testedP!367 (Cons!1992 (head!497 (getSuffix!61 totalInput!1363 testedP!367)) Nil!1992)) totalInput!1363)))

(declare-fun lt!36042 () Unit!1510)

(declare-fun choose!1567 (List!1998 List!1998) Unit!1510)

(assert (=> d!28789 (= lt!36042 (choose!1567 testedP!367 totalInput!1363))))

(assert (=> d!28789 (isPrefix!123 testedP!367 totalInput!1363)))

(assert (=> d!28789 (= (lemmaAddHeadSuffixToPrefixStillPrefix!26 testedP!367 totalInput!1363) lt!36042)))

(declare-fun bs!11943 () Bool)

(assert (= bs!11943 d!28789))

(declare-fun m!107269 () Bool)

(assert (=> bs!11943 m!107269))

(declare-fun m!107271 () Bool)

(assert (=> bs!11943 m!107271))

(assert (=> bs!11943 m!107199))

(declare-fun m!107273 () Bool)

(assert (=> bs!11943 m!107273))

(assert (=> bs!11943 m!107269))

(declare-fun m!107275 () Bool)

(assert (=> bs!11943 m!107275))

(assert (=> bs!11943 m!107199))

(assert (=> bs!11943 m!107175))

(assert (=> b!120744 d!28789))

(declare-fun b!120829 () Bool)

(declare-fun e!69196 () Bool)

(assert (=> b!120829 (= e!69196 (isPrefix!123 (tail!233 (++!374 testedP!367 (Cons!1992 (head!497 lt!36017) Nil!1992))) (tail!233 totalInput!1363)))))

(declare-fun b!120828 () Bool)

(declare-fun res!56730 () Bool)

(assert (=> b!120828 (=> (not res!56730) (not e!69196))))

(assert (=> b!120828 (= res!56730 (= (head!497 (++!374 testedP!367 (Cons!1992 (head!497 lt!36017) Nil!1992))) (head!497 totalInput!1363)))))

(declare-fun b!120830 () Bool)

(declare-fun e!69195 () Bool)

(assert (=> b!120830 (= e!69195 (>= (size!1844 totalInput!1363) (size!1844 (++!374 testedP!367 (Cons!1992 (head!497 lt!36017) Nil!1992)))))))

(declare-fun d!28791 () Bool)

(assert (=> d!28791 e!69195))

(declare-fun res!56731 () Bool)

(assert (=> d!28791 (=> res!56731 e!69195)))

(declare-fun lt!36043 () Bool)

(assert (=> d!28791 (= res!56731 (not lt!36043))))

(declare-fun e!69194 () Bool)

(assert (=> d!28791 (= lt!36043 e!69194)))

(declare-fun res!56732 () Bool)

(assert (=> d!28791 (=> res!56732 e!69194)))

(assert (=> d!28791 (= res!56732 ((_ is Nil!1992) (++!374 testedP!367 (Cons!1992 (head!497 lt!36017) Nil!1992))))))

(assert (=> d!28791 (= (isPrefix!123 (++!374 testedP!367 (Cons!1992 (head!497 lt!36017) Nil!1992)) totalInput!1363) lt!36043)))

(declare-fun b!120827 () Bool)

(assert (=> b!120827 (= e!69194 e!69196)))

(declare-fun res!56733 () Bool)

(assert (=> b!120827 (=> (not res!56733) (not e!69196))))

(assert (=> b!120827 (= res!56733 (not ((_ is Nil!1992) totalInput!1363)))))

(assert (= (and d!28791 (not res!56732)) b!120827))

(assert (= (and b!120827 res!56733) b!120828))

(assert (= (and b!120828 res!56730) b!120829))

(assert (= (and d!28791 (not res!56731)) b!120830))

(assert (=> b!120829 m!107155))

(declare-fun m!107277 () Bool)

(assert (=> b!120829 m!107277))

(assert (=> b!120829 m!107231))

(assert (=> b!120829 m!107277))

(assert (=> b!120829 m!107231))

(declare-fun m!107279 () Bool)

(assert (=> b!120829 m!107279))

(assert (=> b!120828 m!107155))

(declare-fun m!107281 () Bool)

(assert (=> b!120828 m!107281))

(assert (=> b!120828 m!107237))

(assert (=> b!120830 m!107173))

(assert (=> b!120830 m!107155))

(declare-fun m!107283 () Bool)

(assert (=> b!120830 m!107283))

(assert (=> b!120744 d!28791))

(declare-fun b!120833 () Bool)

(declare-fun res!56734 () Bool)

(declare-fun e!69197 () Bool)

(assert (=> b!120833 (=> (not res!56734) (not e!69197))))

(declare-fun lt!36044 () List!1998)

(assert (=> b!120833 (= res!56734 (= (size!1844 lt!36044) (+ (size!1844 lt!36022) (size!1844 lt!36019))))))

(declare-fun d!28793 () Bool)

(assert (=> d!28793 e!69197))

(declare-fun res!56735 () Bool)

(assert (=> d!28793 (=> (not res!56735) (not e!69197))))

(assert (=> d!28793 (= res!56735 (= (content!224 lt!36044) ((_ map or) (content!224 lt!36022) (content!224 lt!36019))))))

(declare-fun e!69198 () List!1998)

(assert (=> d!28793 (= lt!36044 e!69198)))

(declare-fun c!26964 () Bool)

(assert (=> d!28793 (= c!26964 ((_ is Nil!1992) lt!36022))))

(assert (=> d!28793 (= (++!374 lt!36022 lt!36019) lt!36044)))

(declare-fun b!120834 () Bool)

(assert (=> b!120834 (= e!69197 (or (not (= lt!36019 Nil!1992)) (= lt!36044 lt!36022)))))

(declare-fun b!120832 () Bool)

(assert (=> b!120832 (= e!69198 (Cons!1992 (h!7389 lt!36022) (++!374 (t!22475 lt!36022) lt!36019)))))

(declare-fun b!120831 () Bool)

(assert (=> b!120831 (= e!69198 lt!36019)))

(assert (= (and d!28793 c!26964) b!120831))

(assert (= (and d!28793 (not c!26964)) b!120832))

(assert (= (and d!28793 res!56735) b!120833))

(assert (= (and b!120833 res!56734) b!120834))

(declare-fun m!107285 () Bool)

(assert (=> b!120833 m!107285))

(declare-fun m!107287 () Bool)

(assert (=> b!120833 m!107287))

(declare-fun m!107289 () Bool)

(assert (=> b!120833 m!107289))

(declare-fun m!107291 () Bool)

(assert (=> d!28793 m!107291))

(declare-fun m!107293 () Bool)

(assert (=> d!28793 m!107293))

(declare-fun m!107295 () Bool)

(assert (=> d!28793 m!107295))

(declare-fun m!107297 () Bool)

(assert (=> b!120832 m!107297))

(assert (=> b!120744 d!28793))

(declare-fun d!28795 () Bool)

(assert (=> d!28795 (= (++!374 (++!374 testedP!367 (Cons!1992 lt!36010 Nil!1992)) lt!36019) totalInput!1363)))

(declare-fun lt!36047 () Unit!1510)

(declare-fun choose!1568 (List!1998 C!2008 List!1998 List!1998) Unit!1510)

(assert (=> d!28795 (= lt!36047 (choose!1568 testedP!367 lt!36010 lt!36019 totalInput!1363))))

(assert (=> d!28795 (= (++!374 testedP!367 (Cons!1992 lt!36010 lt!36019)) totalInput!1363)))

(assert (=> d!28795 (= (lemmaMoveElementToOtherListKeepsConcatEq!20 testedP!367 lt!36010 lt!36019 totalInput!1363) lt!36047)))

(declare-fun bs!11944 () Bool)

(assert (= bs!11944 d!28795))

(assert (=> bs!11944 m!107163))

(assert (=> bs!11944 m!107163))

(declare-fun m!107299 () Bool)

(assert (=> bs!11944 m!107299))

(declare-fun m!107301 () Bool)

(assert (=> bs!11944 m!107301))

(declare-fun m!107303 () Bool)

(assert (=> bs!11944 m!107303))

(assert (=> b!120744 d!28795))

(declare-fun b!120837 () Bool)

(declare-fun res!56736 () Bool)

(declare-fun e!69199 () Bool)

(assert (=> b!120837 (=> (not res!56736) (not e!69199))))

(declare-fun lt!36048 () List!1998)

(assert (=> b!120837 (= res!56736 (= (size!1844 lt!36048) (+ (size!1844 testedP!367) (size!1844 (Cons!1992 (head!497 lt!36017) Nil!1992)))))))

(declare-fun d!28797 () Bool)

(assert (=> d!28797 e!69199))

(declare-fun res!56737 () Bool)

(assert (=> d!28797 (=> (not res!56737) (not e!69199))))

(assert (=> d!28797 (= res!56737 (= (content!224 lt!36048) ((_ map or) (content!224 testedP!367) (content!224 (Cons!1992 (head!497 lt!36017) Nil!1992)))))))

(declare-fun e!69200 () List!1998)

(assert (=> d!28797 (= lt!36048 e!69200)))

(declare-fun c!26965 () Bool)

(assert (=> d!28797 (= c!26965 ((_ is Nil!1992) testedP!367))))

(assert (=> d!28797 (= (++!374 testedP!367 (Cons!1992 (head!497 lt!36017) Nil!1992)) lt!36048)))

(declare-fun b!120838 () Bool)

(assert (=> b!120838 (= e!69199 (or (not (= (Cons!1992 (head!497 lt!36017) Nil!1992) Nil!1992)) (= lt!36048 testedP!367)))))

(declare-fun b!120836 () Bool)

(assert (=> b!120836 (= e!69200 (Cons!1992 (h!7389 testedP!367) (++!374 (t!22475 testedP!367) (Cons!1992 (head!497 lt!36017) Nil!1992))))))

(declare-fun b!120835 () Bool)

(assert (=> b!120835 (= e!69200 (Cons!1992 (head!497 lt!36017) Nil!1992))))

(assert (= (and d!28797 c!26965) b!120835))

(assert (= (and d!28797 (not c!26965)) b!120836))

(assert (= (and d!28797 res!56737) b!120837))

(assert (= (and b!120837 res!56736) b!120838))

(declare-fun m!107305 () Bool)

(assert (=> b!120837 m!107305))

(assert (=> b!120837 m!107181))

(declare-fun m!107307 () Bool)

(assert (=> b!120837 m!107307))

(declare-fun m!107309 () Bool)

(assert (=> d!28797 m!107309))

(assert (=> d!28797 m!107223))

(declare-fun m!107311 () Bool)

(assert (=> d!28797 m!107311))

(declare-fun m!107313 () Bool)

(assert (=> b!120836 m!107313))

(assert (=> b!120744 d!28797))

(declare-fun d!28799 () Bool)

(declare-fun nullableFct!19 (Regex!543) Bool)

(assert (=> d!28799 (= (nullable!83 r!15532) (nullableFct!19 r!15532))))

(declare-fun bs!11945 () Bool)

(assert (= bs!11945 d!28799))

(declare-fun m!107315 () Bool)

(assert (=> bs!11945 m!107315))

(assert (=> b!120744 d!28799))

(declare-fun d!28801 () Bool)

(declare-fun lt!36049 () Int)

(assert (=> d!28801 (>= lt!36049 0)))

(declare-fun e!69201 () Int)

(assert (=> d!28801 (= lt!36049 e!69201)))

(declare-fun c!26966 () Bool)

(assert (=> d!28801 (= c!26966 ((_ is Nil!1992) testedP!367))))

(assert (=> d!28801 (= (size!1844 testedP!367) lt!36049)))

(declare-fun b!120839 () Bool)

(assert (=> b!120839 (= e!69201 0)))

(declare-fun b!120840 () Bool)

(assert (=> b!120840 (= e!69201 (+ 1 (size!1844 (t!22475 testedP!367))))))

(assert (= (and d!28801 c!26966) b!120839))

(assert (= (and d!28801 (not c!26966)) b!120840))

(declare-fun m!107317 () Bool)

(assert (=> b!120840 m!107317))

(assert (=> b!120733 d!28801))

(declare-fun d!28803 () Bool)

(assert (=> d!28803 (= (array_inv!507 (_keys!700 (v!13349 (underlying!1017 (v!13350 (underlying!1018 (cache!857 cache!470))))))) (bvsge (size!1845 (_keys!700 (v!13349 (underlying!1017 (v!13350 (underlying!1018 (cache!857 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!120735 d!28803))

(declare-fun d!28805 () Bool)

(assert (=> d!28805 (= (array_inv!508 (_values!687 (v!13349 (underlying!1017 (v!13350 (underlying!1018 (cache!857 cache!470))))))) (bvsge (size!1846 (_values!687 (v!13349 (underlying!1017 (v!13350 (underlying!1018 (cache!857 cache!470))))))) #b00000000000000000000000000000000))))

(assert (=> b!120735 d!28805))

(declare-fun d!28807 () Bool)

(assert (=> d!28807 (isPrefix!123 totalInput!1363 totalInput!1363)))

(declare-fun lt!36052 () Unit!1510)

(declare-fun choose!1569 (List!1998 List!1998) Unit!1510)

(assert (=> d!28807 (= lt!36052 (choose!1569 totalInput!1363 totalInput!1363))))

(assert (=> d!28807 (= (lemmaIsPrefixRefl!93 totalInput!1363 totalInput!1363) lt!36052)))

(declare-fun bs!11946 () Bool)

(assert (= bs!11946 d!28807))

(assert (=> bs!11946 m!107185))

(declare-fun m!107319 () Bool)

(assert (=> bs!11946 m!107319))

(assert (=> b!120757 d!28807))

(declare-fun b!120843 () Bool)

(declare-fun e!69204 () Bool)

(assert (=> b!120843 (= e!69204 (isPrefix!123 (tail!233 totalInput!1363) (tail!233 totalInput!1363)))))

(declare-fun b!120842 () Bool)

(declare-fun res!56738 () Bool)

(assert (=> b!120842 (=> (not res!56738) (not e!69204))))

(assert (=> b!120842 (= res!56738 (= (head!497 totalInput!1363) (head!497 totalInput!1363)))))

(declare-fun b!120844 () Bool)

(declare-fun e!69203 () Bool)

(assert (=> b!120844 (= e!69203 (>= (size!1844 totalInput!1363) (size!1844 totalInput!1363)))))

(declare-fun d!28809 () Bool)

(assert (=> d!28809 e!69203))

(declare-fun res!56739 () Bool)

(assert (=> d!28809 (=> res!56739 e!69203)))

(declare-fun lt!36053 () Bool)

(assert (=> d!28809 (= res!56739 (not lt!36053))))

(declare-fun e!69202 () Bool)

(assert (=> d!28809 (= lt!36053 e!69202)))

(declare-fun res!56740 () Bool)

(assert (=> d!28809 (=> res!56740 e!69202)))

(assert (=> d!28809 (= res!56740 ((_ is Nil!1992) totalInput!1363))))

(assert (=> d!28809 (= (isPrefix!123 totalInput!1363 totalInput!1363) lt!36053)))

(declare-fun b!120841 () Bool)

(assert (=> b!120841 (= e!69202 e!69204)))

(declare-fun res!56741 () Bool)

(assert (=> b!120841 (=> (not res!56741) (not e!69204))))

(assert (=> b!120841 (= res!56741 (not ((_ is Nil!1992) totalInput!1363)))))

(assert (= (and d!28809 (not res!56740)) b!120841))

(assert (= (and b!120841 res!56741) b!120842))

(assert (= (and b!120842 res!56738) b!120843))

(assert (= (and d!28809 (not res!56739)) b!120844))

(assert (=> b!120843 m!107231))

(assert (=> b!120843 m!107231))

(assert (=> b!120843 m!107231))

(assert (=> b!120843 m!107231))

(declare-fun m!107321 () Bool)

(assert (=> b!120843 m!107321))

(assert (=> b!120842 m!107237))

(assert (=> b!120842 m!107237))

(assert (=> b!120844 m!107173))

(assert (=> b!120844 m!107173))

(assert (=> b!120757 d!28809))

(declare-fun d!28811 () Bool)

(assert (=> d!28811 (= totalInput!1363 testedP!367)))

(declare-fun lt!36056 () Unit!1510)

(declare-fun choose!1570 (List!1998 List!1998 List!1998) Unit!1510)

(assert (=> d!28811 (= lt!36056 (choose!1570 totalInput!1363 testedP!367 totalInput!1363))))

(assert (=> d!28811 (isPrefix!123 totalInput!1363 totalInput!1363)))

(assert (=> d!28811 (= (lemmaIsPrefixSameLengthThenSameList!36 totalInput!1363 testedP!367 totalInput!1363) lt!36056)))

(declare-fun bs!11947 () Bool)

(assert (= bs!11947 d!28811))

(declare-fun m!107323 () Bool)

(assert (=> bs!11947 m!107323))

(assert (=> bs!11947 m!107185))

(assert (=> b!120757 d!28811))

(declare-fun d!28813 () Bool)

(declare-fun res!56746 () Bool)

(declare-fun e!69209 () Bool)

(assert (=> d!28813 (=> res!56746 e!69209)))

(assert (=> d!28813 (= res!56746 ((_ is ElementMatch!543) (derivativeStep!52 r!15532 lt!36010)))))

(assert (=> d!28813 (= (validRegex!142 (derivativeStep!52 r!15532 lt!36010)) e!69209)))

(declare-fun b!120845 () Bool)

(declare-fun e!69210 () Bool)

(assert (=> b!120845 (= e!69209 e!69210)))

(declare-fun c!26968 () Bool)

(assert (=> b!120845 (= c!26968 ((_ is Star!543) (derivativeStep!52 r!15532 lt!36010)))))

(declare-fun b!120846 () Bool)

(declare-fun e!69205 () Bool)

(assert (=> b!120846 (= e!69210 e!69205)))

(declare-fun c!26967 () Bool)

(assert (=> b!120846 (= c!26967 ((_ is Union!543) (derivativeStep!52 r!15532 lt!36010)))))

(declare-fun b!120847 () Bool)

(declare-fun e!69207 () Bool)

(declare-fun e!69211 () Bool)

(assert (=> b!120847 (= e!69207 e!69211)))

(declare-fun res!56742 () Bool)

(assert (=> b!120847 (=> (not res!56742) (not e!69211))))

(declare-fun call!5089 () Bool)

(assert (=> b!120847 (= res!56742 call!5089)))

(declare-fun b!120848 () Bool)

(declare-fun res!56744 () Bool)

(assert (=> b!120848 (=> res!56744 e!69207)))

(assert (=> b!120848 (= res!56744 (not ((_ is Concat!927) (derivativeStep!52 r!15532 lt!36010))))))

(assert (=> b!120848 (= e!69205 e!69207)))

(declare-fun bm!5084 () Bool)

(declare-fun call!5091 () Bool)

(assert (=> bm!5084 (= call!5091 (validRegex!142 (ite c!26967 (regOne!1599 (derivativeStep!52 r!15532 lt!36010)) (regTwo!1598 (derivativeStep!52 r!15532 lt!36010)))))))

(declare-fun b!120849 () Bool)

(declare-fun e!69208 () Bool)

(assert (=> b!120849 (= e!69210 e!69208)))

(declare-fun res!56743 () Bool)

(assert (=> b!120849 (= res!56743 (not (nullable!83 (reg!872 (derivativeStep!52 r!15532 lt!36010)))))))

(assert (=> b!120849 (=> (not res!56743) (not e!69208))))

(declare-fun b!120850 () Bool)

(declare-fun call!5090 () Bool)

(assert (=> b!120850 (= e!69208 call!5090)))

(declare-fun bm!5085 () Bool)

(assert (=> bm!5085 (= call!5090 (validRegex!142 (ite c!26968 (reg!872 (derivativeStep!52 r!15532 lt!36010)) (ite c!26967 (regTwo!1599 (derivativeStep!52 r!15532 lt!36010)) (regOne!1598 (derivativeStep!52 r!15532 lt!36010))))))))

(declare-fun b!120851 () Bool)

(assert (=> b!120851 (= e!69211 call!5091)))

(declare-fun b!120852 () Bool)

(declare-fun e!69206 () Bool)

(assert (=> b!120852 (= e!69206 call!5089)))

(declare-fun b!120853 () Bool)

(declare-fun res!56745 () Bool)

(assert (=> b!120853 (=> (not res!56745) (not e!69206))))

(assert (=> b!120853 (= res!56745 call!5091)))

(assert (=> b!120853 (= e!69205 e!69206)))

(declare-fun bm!5086 () Bool)

(assert (=> bm!5086 (= call!5089 call!5090)))

(assert (= (and d!28813 (not res!56746)) b!120845))

(assert (= (and b!120845 c!26968) b!120849))

(assert (= (and b!120845 (not c!26968)) b!120846))

(assert (= (and b!120849 res!56743) b!120850))

(assert (= (and b!120846 c!26967) b!120853))

(assert (= (and b!120846 (not c!26967)) b!120848))

(assert (= (and b!120853 res!56745) b!120852))

(assert (= (and b!120848 (not res!56744)) b!120847))

(assert (= (and b!120847 res!56742) b!120851))

(assert (= (or b!120852 b!120847) bm!5086))

(assert (= (or b!120853 b!120851) bm!5084))

(assert (= (or b!120850 bm!5086) bm!5085))

(declare-fun m!107325 () Bool)

(assert (=> bm!5084 m!107325))

(declare-fun m!107327 () Bool)

(assert (=> b!120849 m!107327))

(declare-fun m!107329 () Bool)

(assert (=> bm!5085 m!107329))

(assert (=> b!120737 d!28813))

(declare-fun bm!5095 () Bool)

(declare-fun call!5103 () Regex!543)

(declare-fun call!5100 () Regex!543)

(assert (=> bm!5095 (= call!5103 call!5100)))

(declare-fun b!120874 () Bool)

(declare-fun e!69223 () Regex!543)

(assert (=> b!120874 (= e!69223 (Union!543 (Concat!927 call!5103 (regTwo!1598 r!15532)) EmptyLang!543))))

(declare-fun b!120875 () Bool)

(declare-fun e!69226 () Regex!543)

(assert (=> b!120875 (= e!69226 EmptyLang!543)))

(declare-fun b!120876 () Bool)

(declare-fun e!69222 () Regex!543)

(assert (=> b!120876 (= e!69222 (Concat!927 call!5100 r!15532))))

(declare-fun b!120877 () Bool)

(declare-fun e!69224 () Regex!543)

(assert (=> b!120877 (= e!69224 e!69222)))

(declare-fun c!26981 () Bool)

(assert (=> b!120877 (= c!26981 ((_ is Star!543) r!15532))))

(declare-fun b!120878 () Bool)

(declare-fun e!69225 () Regex!543)

(assert (=> b!120878 (= e!69226 e!69225)))

(declare-fun c!26979 () Bool)

(assert (=> b!120878 (= c!26979 ((_ is ElementMatch!543) r!15532))))

(declare-fun bm!5097 () Bool)

(declare-fun call!5101 () Regex!543)

(assert (=> bm!5097 (= call!5100 call!5101)))

(declare-fun b!120879 () Bool)

(declare-fun call!5102 () Regex!543)

(assert (=> b!120879 (= e!69224 (Union!543 call!5102 call!5101))))

(declare-fun b!120880 () Bool)

(declare-fun c!26983 () Bool)

(assert (=> b!120880 (= c!26983 ((_ is Union!543) r!15532))))

(assert (=> b!120880 (= e!69225 e!69224)))

(declare-fun bm!5098 () Bool)

(assert (=> bm!5098 (= call!5102 (derivativeStep!52 (ite c!26983 (regOne!1599 r!15532) (regTwo!1598 r!15532)) lt!36010))))

(declare-fun d!28815 () Bool)

(declare-fun lt!36059 () Regex!543)

(assert (=> d!28815 (validRegex!142 lt!36059)))

(assert (=> d!28815 (= lt!36059 e!69226)))

(declare-fun c!26980 () Bool)

(assert (=> d!28815 (= c!26980 (or ((_ is EmptyExpr!543) r!15532) ((_ is EmptyLang!543) r!15532)))))

(assert (=> d!28815 (validRegex!142 r!15532)))

(assert (=> d!28815 (= (derivativeStep!52 r!15532 lt!36010) lt!36059)))

(declare-fun bm!5096 () Bool)

(assert (=> bm!5096 (= call!5101 (derivativeStep!52 (ite c!26983 (regTwo!1599 r!15532) (ite c!26981 (reg!872 r!15532) (regOne!1598 r!15532))) lt!36010))))

(declare-fun b!120881 () Bool)

(assert (=> b!120881 (= e!69225 (ite (= lt!36010 (c!26950 r!15532)) EmptyExpr!543 EmptyLang!543))))

(declare-fun b!120882 () Bool)

(assert (=> b!120882 (= e!69223 (Union!543 (Concat!927 call!5103 (regTwo!1598 r!15532)) call!5102))))

(declare-fun b!120883 () Bool)

(declare-fun c!26982 () Bool)

(assert (=> b!120883 (= c!26982 (nullable!83 (regOne!1598 r!15532)))))

(assert (=> b!120883 (= e!69222 e!69223)))

(assert (= (and d!28815 c!26980) b!120875))

(assert (= (and d!28815 (not c!26980)) b!120878))

(assert (= (and b!120878 c!26979) b!120881))

(assert (= (and b!120878 (not c!26979)) b!120880))

(assert (= (and b!120880 c!26983) b!120879))

(assert (= (and b!120880 (not c!26983)) b!120877))

(assert (= (and b!120877 c!26981) b!120876))

(assert (= (and b!120877 (not c!26981)) b!120883))

(assert (= (and b!120883 c!26982) b!120882))

(assert (= (and b!120883 (not c!26982)) b!120874))

(assert (= (or b!120882 b!120874) bm!5095))

(assert (= (or b!120876 bm!5095) bm!5097))

(assert (= (or b!120879 bm!5097) bm!5096))

(assert (= (or b!120879 b!120882) bm!5098))

(declare-fun m!107331 () Bool)

(assert (=> bm!5098 m!107331))

(declare-fun m!107333 () Bool)

(assert (=> d!28815 m!107333))

(assert (=> d!28815 m!107201))

(declare-fun m!107335 () Bool)

(assert (=> bm!5096 m!107335))

(declare-fun m!107337 () Bool)

(assert (=> b!120883 m!107337))

(assert (=> b!120737 d!28815))

(declare-fun d!28817 () Bool)

(assert (=> d!28817 (<= (size!1844 testedP!367) (size!1844 totalInput!1363))))

(declare-fun lt!36062 () Unit!1510)

(declare-fun choose!1571 (List!1998 List!1998) Unit!1510)

(assert (=> d!28817 (= lt!36062 (choose!1571 testedP!367 totalInput!1363))))

(assert (=> d!28817 (isPrefix!123 testedP!367 totalInput!1363)))

(assert (=> d!28817 (= (lemmaIsPrefixThenSmallerEqSize!35 testedP!367 totalInput!1363) lt!36062)))

(declare-fun bs!11948 () Bool)

(assert (= bs!11948 d!28817))

(assert (=> bs!11948 m!107181))

(assert (=> bs!11948 m!107173))

(declare-fun m!107339 () Bool)

(assert (=> bs!11948 m!107339))

(assert (=> bs!11948 m!107175))

(assert (=> b!120749 d!28817))

(declare-fun d!28819 () Bool)

(declare-fun lostCauseFct!29 (Regex!543) Bool)

(assert (=> d!28819 (= (lostCause!66 r!15532) (lostCauseFct!29 r!15532))))

(declare-fun bs!11949 () Bool)

(assert (= bs!11949 d!28819))

(declare-fun m!107341 () Bool)

(assert (=> bs!11949 m!107341))

(assert (=> b!120740 d!28819))

(declare-fun d!28821 () Bool)

(assert (=> d!28821 (= testedSuffix!285 lt!36017)))

(declare-fun lt!36065 () Unit!1510)

(declare-fun choose!1572 (List!1998 List!1998 List!1998 List!1998 List!1998) Unit!1510)

(assert (=> d!28821 (= lt!36065 (choose!1572 testedP!367 testedSuffix!285 testedP!367 lt!36017 totalInput!1363))))

(assert (=> d!28821 (isPrefix!123 testedP!367 totalInput!1363)))

(assert (=> d!28821 (= (lemmaSamePrefixThenSameSuffix!57 testedP!367 testedSuffix!285 testedP!367 lt!36017 totalInput!1363) lt!36065)))

(declare-fun bs!11950 () Bool)

(assert (= bs!11950 d!28821))

(declare-fun m!107343 () Bool)

(assert (=> bs!11950 m!107343))

(assert (=> bs!11950 m!107175))

(assert (=> b!120740 d!28821))

(declare-fun d!28823 () Bool)

(declare-fun lt!36068 () List!1998)

(assert (=> d!28823 (= (++!374 testedP!367 lt!36068) totalInput!1363)))

(declare-fun e!69229 () List!1998)

(assert (=> d!28823 (= lt!36068 e!69229)))

(declare-fun c!26986 () Bool)

(assert (=> d!28823 (= c!26986 ((_ is Cons!1992) testedP!367))))

(assert (=> d!28823 (>= (size!1844 totalInput!1363) (size!1844 testedP!367))))

(assert (=> d!28823 (= (getSuffix!61 totalInput!1363 testedP!367) lt!36068)))

(declare-fun b!120888 () Bool)

(assert (=> b!120888 (= e!69229 (getSuffix!61 (tail!233 totalInput!1363) (t!22475 testedP!367)))))

(declare-fun b!120889 () Bool)

(assert (=> b!120889 (= e!69229 totalInput!1363)))

(assert (= (and d!28823 c!26986) b!120888))

(assert (= (and d!28823 (not c!26986)) b!120889))

(declare-fun m!107345 () Bool)

(assert (=> d!28823 m!107345))

(assert (=> d!28823 m!107173))

(assert (=> d!28823 m!107181))

(assert (=> b!120888 m!107231))

(assert (=> b!120888 m!107231))

(declare-fun m!107347 () Bool)

(assert (=> b!120888 m!107347))

(assert (=> b!120740 d!28823))

(declare-fun tp!66371 () Bool)

(declare-fun b!120897 () Bool)

(declare-fun tp!66370 () Bool)

(declare-fun e!69235 () Bool)

(declare-fun tp!66366 () Bool)

(assert (=> b!120897 (= e!69235 (and tp!66370 tp_is_empty!1141 tp!66366 tp!66371))))

(declare-fun tp!66369 () Bool)

(declare-fun tp!66368 () Bool)

(declare-fun b!120896 () Bool)

(declare-fun e!69234 () Bool)

(declare-fun tp!66365 () Bool)

(assert (=> b!120896 (= e!69234 (and tp!66365 tp_is_empty!1141 tp!66368 tp!66369))))

(declare-fun mapIsEmpty!1583 () Bool)

(declare-fun mapRes!1583 () Bool)

(assert (=> mapIsEmpty!1583 mapRes!1583))

(declare-fun mapNonEmpty!1583 () Bool)

(declare-fun tp!66367 () Bool)

(assert (=> mapNonEmpty!1583 (= mapRes!1583 (and tp!66367 e!69234))))

(declare-fun mapKey!1583 () (_ BitVec 32))

(declare-fun mapValue!1583 () List!1999)

(declare-fun mapRest!1583 () (Array (_ BitVec 32) List!1999))

(assert (=> mapNonEmpty!1583 (= mapRest!1580 (store mapRest!1583 mapKey!1583 mapValue!1583))))

(declare-fun condMapEmpty!1583 () Bool)

(declare-fun mapDefault!1583 () List!1999)

(assert (=> mapNonEmpty!1580 (= condMapEmpty!1583 (= mapRest!1580 ((as const (Array (_ BitVec 32) List!1999)) mapDefault!1583)))))

(assert (=> mapNonEmpty!1580 (= tp!66340 (and e!69235 mapRes!1583))))

(assert (= (and mapNonEmpty!1580 condMapEmpty!1583) mapIsEmpty!1583))

(assert (= (and mapNonEmpty!1580 (not condMapEmpty!1583)) mapNonEmpty!1583))

(assert (= (and mapNonEmpty!1583 ((_ is Cons!1993) mapValue!1583)) b!120896))

(assert (= (and mapNonEmpty!1580 ((_ is Cons!1993) mapDefault!1583)) b!120897))

(declare-fun m!107349 () Bool)

(assert (=> mapNonEmpty!1583 m!107349))

(declare-fun e!69238 () Bool)

(declare-fun tp!66380 () Bool)

(declare-fun tp!66379 () Bool)

(declare-fun b!120902 () Bool)

(declare-fun tp!66378 () Bool)

(assert (=> b!120902 (= e!69238 (and tp!66378 tp_is_empty!1141 tp!66379 tp!66380))))

(assert (=> mapNonEmpty!1580 (= tp!66337 e!69238)))

(assert (= (and mapNonEmpty!1580 ((_ is Cons!1993) mapValue!1580)) b!120902))

(declare-fun b!120907 () Bool)

(declare-fun e!69241 () Bool)

(declare-fun tp!66383 () Bool)

(assert (=> b!120907 (= e!69241 (and tp_is_empty!1141 tp!66383))))

(assert (=> b!120742 (= tp!66343 e!69241)))

(assert (= (and b!120742 ((_ is Cons!1992) (t!22475 totalInput!1363))) b!120907))

(declare-fun b!120908 () Bool)

(declare-fun e!69242 () Bool)

(declare-fun tp!66384 () Bool)

(assert (=> b!120908 (= e!69242 (and tp_is_empty!1141 tp!66384))))

(assert (=> b!120736 (= tp!66346 e!69242)))

(assert (= (and b!120736 ((_ is Cons!1992) (t!22475 testedP!367))) b!120908))

(declare-fun b!120921 () Bool)

(declare-fun e!69245 () Bool)

(declare-fun tp!66395 () Bool)

(assert (=> b!120921 (= e!69245 tp!66395)))

(declare-fun b!120920 () Bool)

(declare-fun tp!66397 () Bool)

(declare-fun tp!66398 () Bool)

(assert (=> b!120920 (= e!69245 (and tp!66397 tp!66398))))

(declare-fun b!120919 () Bool)

(assert (=> b!120919 (= e!69245 tp_is_empty!1141)))

(declare-fun b!120922 () Bool)

(declare-fun tp!66399 () Bool)

(declare-fun tp!66396 () Bool)

(assert (=> b!120922 (= e!69245 (and tp!66399 tp!66396))))

(assert (=> b!120741 (= tp!66350 e!69245)))

(assert (= (and b!120741 ((_ is ElementMatch!543) (regOne!1598 r!15532))) b!120919))

(assert (= (and b!120741 ((_ is Concat!927) (regOne!1598 r!15532))) b!120920))

(assert (= (and b!120741 ((_ is Star!543) (regOne!1598 r!15532))) b!120921))

(assert (= (and b!120741 ((_ is Union!543) (regOne!1598 r!15532))) b!120922))

(declare-fun b!120925 () Bool)

(declare-fun e!69246 () Bool)

(declare-fun tp!66400 () Bool)

(assert (=> b!120925 (= e!69246 tp!66400)))

(declare-fun b!120924 () Bool)

(declare-fun tp!66402 () Bool)

(declare-fun tp!66403 () Bool)

(assert (=> b!120924 (= e!69246 (and tp!66402 tp!66403))))

(declare-fun b!120923 () Bool)

(assert (=> b!120923 (= e!69246 tp_is_empty!1141)))

(declare-fun b!120926 () Bool)

(declare-fun tp!66404 () Bool)

(declare-fun tp!66401 () Bool)

(assert (=> b!120926 (= e!69246 (and tp!66404 tp!66401))))

(assert (=> b!120741 (= tp!66344 e!69246)))

(assert (= (and b!120741 ((_ is ElementMatch!543) (regTwo!1598 r!15532))) b!120923))

(assert (= (and b!120741 ((_ is Concat!927) (regTwo!1598 r!15532))) b!120924))

(assert (= (and b!120741 ((_ is Star!543) (regTwo!1598 r!15532))) b!120925))

(assert (= (and b!120741 ((_ is Union!543) (regTwo!1598 r!15532))) b!120926))

(declare-fun b!120927 () Bool)

(declare-fun e!69247 () Bool)

(declare-fun tp!66405 () Bool)

(assert (=> b!120927 (= e!69247 (and tp_is_empty!1141 tp!66405))))

(assert (=> b!120752 (= tp!66339 e!69247)))

(assert (= (and b!120752 ((_ is Cons!1992) (t!22475 testedSuffix!285))) b!120927))

(declare-fun b!120930 () Bool)

(declare-fun e!69248 () Bool)

(declare-fun tp!66406 () Bool)

(assert (=> b!120930 (= e!69248 tp!66406)))

(declare-fun b!120929 () Bool)

(declare-fun tp!66408 () Bool)

(declare-fun tp!66409 () Bool)

(assert (=> b!120929 (= e!69248 (and tp!66408 tp!66409))))

(declare-fun b!120928 () Bool)

(assert (=> b!120928 (= e!69248 tp_is_empty!1141)))

(declare-fun b!120931 () Bool)

(declare-fun tp!66410 () Bool)

(declare-fun tp!66407 () Bool)

(assert (=> b!120931 (= e!69248 (and tp!66410 tp!66407))))

(assert (=> b!120758 (= tp!66347 e!69248)))

(assert (= (and b!120758 ((_ is ElementMatch!543) (reg!872 r!15532))) b!120928))

(assert (= (and b!120758 ((_ is Concat!927) (reg!872 r!15532))) b!120929))

(assert (= (and b!120758 ((_ is Star!543) (reg!872 r!15532))) b!120930))

(assert (= (and b!120758 ((_ is Union!543) (reg!872 r!15532))) b!120931))

(declare-fun tp!66411 () Bool)

(declare-fun b!120932 () Bool)

(declare-fun e!69249 () Bool)

(declare-fun tp!66412 () Bool)

(declare-fun tp!66413 () Bool)

(assert (=> b!120932 (= e!69249 (and tp!66411 tp_is_empty!1141 tp!66412 tp!66413))))

(assert (=> b!120748 (= tp!66348 e!69249)))

(assert (= (and b!120748 ((_ is Cons!1993) mapDefault!1580)) b!120932))

(declare-fun tp!66415 () Bool)

(declare-fun tp!66416 () Bool)

(declare-fun e!69250 () Bool)

(declare-fun tp!66414 () Bool)

(declare-fun b!120933 () Bool)

(assert (=> b!120933 (= e!69250 (and tp!66414 tp_is_empty!1141 tp!66415 tp!66416))))

(assert (=> b!120735 (= tp!66342 e!69250)))

(assert (= (and b!120735 ((_ is Cons!1993) (zeroValue!665 (v!13349 (underlying!1017 (v!13350 (underlying!1018 (cache!857 cache!470)))))))) b!120933))

(declare-fun tp!66417 () Bool)

(declare-fun e!69251 () Bool)

(declare-fun b!120934 () Bool)

(declare-fun tp!66419 () Bool)

(declare-fun tp!66418 () Bool)

(assert (=> b!120934 (= e!69251 (and tp!66417 tp_is_empty!1141 tp!66418 tp!66419))))

(assert (=> b!120735 (= tp!66338 e!69251)))

(assert (= (and b!120735 ((_ is Cons!1993) (minValue!665 (v!13349 (underlying!1017 (v!13350 (underlying!1018 (cache!857 cache!470)))))))) b!120934))

(declare-fun b!120937 () Bool)

(declare-fun e!69252 () Bool)

(declare-fun tp!66420 () Bool)

(assert (=> b!120937 (= e!69252 tp!66420)))

(declare-fun b!120936 () Bool)

(declare-fun tp!66422 () Bool)

(declare-fun tp!66423 () Bool)

(assert (=> b!120936 (= e!69252 (and tp!66422 tp!66423))))

(declare-fun b!120935 () Bool)

(assert (=> b!120935 (= e!69252 tp_is_empty!1141)))

(declare-fun b!120938 () Bool)

(declare-fun tp!66424 () Bool)

(declare-fun tp!66421 () Bool)

(assert (=> b!120938 (= e!69252 (and tp!66424 tp!66421))))

(assert (=> b!120755 (= tp!66341 e!69252)))

(assert (= (and b!120755 ((_ is ElementMatch!543) (regOne!1599 r!15532))) b!120935))

(assert (= (and b!120755 ((_ is Concat!927) (regOne!1599 r!15532))) b!120936))

(assert (= (and b!120755 ((_ is Star!543) (regOne!1599 r!15532))) b!120937))

(assert (= (and b!120755 ((_ is Union!543) (regOne!1599 r!15532))) b!120938))

(declare-fun b!120941 () Bool)

(declare-fun e!69253 () Bool)

(declare-fun tp!66425 () Bool)

(assert (=> b!120941 (= e!69253 tp!66425)))

(declare-fun b!120940 () Bool)

(declare-fun tp!66427 () Bool)

(declare-fun tp!66428 () Bool)

(assert (=> b!120940 (= e!69253 (and tp!66427 tp!66428))))

(declare-fun b!120939 () Bool)

(assert (=> b!120939 (= e!69253 tp_is_empty!1141)))

(declare-fun b!120942 () Bool)

(declare-fun tp!66429 () Bool)

(declare-fun tp!66426 () Bool)

(assert (=> b!120942 (= e!69253 (and tp!66429 tp!66426))))

(assert (=> b!120755 (= tp!66349 e!69253)))

(assert (= (and b!120755 ((_ is ElementMatch!543) (regTwo!1599 r!15532))) b!120939))

(assert (= (and b!120755 ((_ is Concat!927) (regTwo!1599 r!15532))) b!120940))

(assert (= (and b!120755 ((_ is Star!543) (regTwo!1599 r!15532))) b!120941))

(assert (= (and b!120755 ((_ is Union!543) (regTwo!1599 r!15532))) b!120942))

(check-sat (not b!120942) (not b!120830) (not b!120936) (not d!28821) (not b!120849) (not d!28811) (not b!120941) (not b!120940) (not b!120896) (not b!120907) (not b!120844) (not b!120824) (not b!120934) (not b!120902) (not b!120828) (not bm!5084) tp_is_empty!1141 (not b!120897) (not b!120920) (not d!28775) (not b!120933) (not b!120791) (not b!120815) (not b!120938) (not b_next!3867) (not b_next!3865) (not b!120833) (not d!28817) (not b!120883) (not b!120921) (not b!120836) (not b!120825) b_and!5997 (not bm!5081) (not d!28767) (not b!120843) (not b!120937) (not bm!5085) (not b!120790) (not b!120929) (not bm!5098) (not b!120926) (not b!120822) (not d!28793) (not d!28819) (not b!120764) (not bm!5096) (not b!120924) (not b!120932) (not b!120788) (not b!120840) (not b!120832) (not b!120787) (not bm!5082) (not d!28815) (not d!28789) (not d!28773) (not d!28799) (not b!120842) (not b!120927) (not b!120930) (not b!120925) (not d!28797) b_and!5995 (not b!120786) (not b!120829) (not d!28823) (not b!120908) (not b!120774) (not d!28807) (not d!28787) (not b!120775) (not b!120888) (not b!120792) (not b!120922) (not b!120837) (not b!120931) (not d!28795) (not mapNonEmpty!1583))
(check-sat b_and!5995 b_and!5997 (not b_next!3865) (not b_next!3867))
