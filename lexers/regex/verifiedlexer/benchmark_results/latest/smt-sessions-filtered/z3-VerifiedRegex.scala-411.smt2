; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12164 () Bool)

(assert start!12164)

(declare-fun b!120155 () Bool)

(declare-fun b_free!3841 () Bool)

(declare-fun b_next!3841 () Bool)

(assert (=> b!120155 (= b_free!3841 (not b_next!3841))))

(declare-fun tp!65988 () Bool)

(declare-fun b_and!5971 () Bool)

(assert (=> b!120155 (= tp!65988 b_and!5971)))

(declare-fun b!120149 () Bool)

(declare-fun b_free!3843 () Bool)

(declare-fun b_next!3843 () Bool)

(assert (=> b!120149 (= b_free!3843 (not b_next!3843))))

(declare-fun tp!65999 () Bool)

(declare-fun b_and!5973 () Bool)

(assert (=> b!120149 (= tp!65999 b_and!5973)))

(declare-fun b!120147 () Bool)

(declare-fun e!68688 () Bool)

(declare-fun e!68700 () Bool)

(assert (=> b!120147 (= e!68688 e!68700)))

(declare-fun res!56460 () Bool)

(assert (=> b!120147 (=> (not res!56460) (not e!68700))))

(declare-datatypes ((C!1996 0))(
  ( (C!1997 (val!724 Int)) )
))
(declare-datatypes ((List!1986 0))(
  ( (Nil!1980) (Cons!1980 (h!7377 C!1996) (t!22463 List!1986)) )
))
(declare-fun lt!35744 () List!1986)

(declare-fun totalInput!1363 () List!1986)

(assert (=> b!120147 (= res!56460 (= lt!35744 totalInput!1363))))

(declare-fun testedP!367 () List!1986)

(declare-fun testedSuffix!285 () List!1986)

(declare-fun ++!369 (List!1986 List!1986) List!1986)

(assert (=> b!120147 (= lt!35744 (++!369 testedP!367 testedSuffix!285))))

(declare-fun b!120148 () Bool)

(declare-fun e!68695 () Bool)

(declare-fun tp_is_empty!1129 () Bool)

(assert (=> b!120148 (= e!68695 tp_is_empty!1129)))

(declare-fun e!68694 () Bool)

(declare-fun tp!65998 () Bool)

(declare-datatypes ((Regex!537 0))(
  ( (ElementMatch!537 (c!26913 C!1996)) (Concat!921 (regOne!1586 Regex!537) (regTwo!1586 Regex!537)) (EmptyExpr!537) (Star!537 (reg!866 Regex!537)) (EmptyLang!537) (Union!537 (regOne!1587 Regex!537) (regTwo!1587 Regex!537)) )
))
(declare-datatypes ((Hashable!399 0))(
  ( (HashableExt!398 (__x!2134 Int)) )
))
(declare-datatypes ((tuple2!2282 0))(
  ( (tuple2!2283 (_1!1351 Regex!537) (_2!1351 C!1996)) )
))
(declare-datatypes ((tuple2!2284 0))(
  ( (tuple2!2285 (_1!1352 tuple2!2282) (_2!1352 Regex!537)) )
))
(declare-datatypes ((List!1987 0))(
  ( (Nil!1981) (Cons!1981 (h!7378 tuple2!2284) (t!22464 List!1987)) )
))
(declare-datatypes ((array!1483 0))(
  ( (array!1484 (arr!690 (Array (_ BitVec 32) (_ BitVec 64))) (size!1827 (_ BitVec 32))) )
))
(declare-datatypes ((array!1485 0))(
  ( (array!1486 (arr!691 (Array (_ BitVec 32) List!1987)) (size!1828 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!806 0))(
  ( (LongMapFixedSize!807 (defaultEntry!742 Int) (mask!1339 (_ BitVec 32)) (extraKeys!649 (_ BitVec 32)) (zeroValue!659 List!1987) (minValue!659 List!1987) (_size!939 (_ BitVec 32)) (_keys!694 array!1483) (_values!681 array!1485) (_vacant!464 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1601 0))(
  ( (Cell!1602 (v!13337 LongMapFixedSize!806)) )
))
(declare-datatypes ((MutLongMap!403 0))(
  ( (LongMap!403 (underlying!1005 Cell!1601)) (MutLongMapExt!402 (__x!2135 Int)) )
))
(declare-datatypes ((Cell!1603 0))(
  ( (Cell!1604 (v!13338 MutLongMap!403)) )
))
(declare-datatypes ((MutableMap!399 0))(
  ( (MutableMapExt!398 (__x!2136 Int)) (HashMap!399 (underlying!1006 Cell!1603) (hashF!2275 Hashable!399) (_size!940 (_ BitVec 32)) (defaultValue!548 Int)) )
))
(declare-datatypes ((Cache!234 0))(
  ( (Cache!235 (cache!851 MutableMap!399)) )
))
(declare-fun cache!470 () Cache!234)

(declare-fun e!68686 () Bool)

(declare-fun tp!65991 () Bool)

(declare-fun array_inv!495 (array!1483) Bool)

(declare-fun array_inv!496 (array!1485) Bool)

(assert (=> b!120149 (= e!68694 (and tp!65999 tp!65998 tp!65991 (array_inv!495 (_keys!694 (v!13337 (underlying!1005 (v!13338 (underlying!1006 (cache!851 cache!470))))))) (array_inv!496 (_values!681 (v!13337 (underlying!1005 (v!13338 (underlying!1006 (cache!851 cache!470))))))) e!68686))))

(declare-fun b!120150 () Bool)

(declare-fun e!68696 () Bool)

(declare-fun e!68697 () Bool)

(declare-fun lt!35745 () MutLongMap!403)

(get-info :version)

(assert (=> b!120150 (= e!68696 (and e!68697 ((_ is LongMap!403) lt!35745)))))

(assert (=> b!120150 (= lt!35745 (v!13338 (underlying!1006 (cache!851 cache!470))))))

(declare-fun b!120151 () Bool)

(declare-fun tp!65987 () Bool)

(declare-fun tp!65994 () Bool)

(assert (=> b!120151 (= e!68695 (and tp!65987 tp!65994))))

(declare-fun res!56465 () Bool)

(assert (=> start!12164 (=> (not res!56465) (not e!68688))))

(declare-fun r!15532 () Regex!537)

(declare-fun validRegex!137 (Regex!537) Bool)

(assert (=> start!12164 (= res!56465 (validRegex!137 r!15532))))

(assert (=> start!12164 e!68688))

(assert (=> start!12164 true))

(assert (=> start!12164 e!68695))

(declare-fun e!68683 () Bool)

(assert (=> start!12164 e!68683))

(declare-fun e!68693 () Bool)

(assert (=> start!12164 e!68693))

(declare-fun e!68692 () Bool)

(assert (=> start!12164 e!68692))

(declare-fun e!68699 () Bool)

(declare-fun inv!2506 (Cache!234) Bool)

(assert (=> start!12164 (and (inv!2506 cache!470) e!68699)))

(declare-fun b!120152 () Bool)

(declare-fun e!68689 () Bool)

(declare-fun e!68690 () Bool)

(assert (=> b!120152 (= e!68689 e!68690)))

(declare-fun res!56459 () Bool)

(assert (=> b!120152 (=> res!56459 e!68690)))

(declare-fun lostCause!61 (Regex!537) Bool)

(assert (=> b!120152 (= res!56459 (lostCause!61 r!15532))))

(declare-fun lt!35748 () List!1986)

(assert (=> b!120152 (and (= testedSuffix!285 lt!35748) (= lt!35748 testedSuffix!285))))

(declare-datatypes ((Unit!1494 0))(
  ( (Unit!1495) )
))
(declare-fun lt!35743 () Unit!1494)

(declare-fun lemmaSamePrefixThenSameSuffix!52 (List!1986 List!1986 List!1986 List!1986 List!1986) Unit!1494)

(assert (=> b!120152 (= lt!35743 (lemmaSamePrefixThenSameSuffix!52 testedP!367 testedSuffix!285 testedP!367 lt!35748 totalInput!1363))))

(declare-fun getSuffix!56 (List!1986 List!1986) List!1986)

(assert (=> b!120152 (= lt!35748 (getSuffix!56 totalInput!1363 testedP!367))))

(declare-fun mapNonEmpty!1559 () Bool)

(declare-fun mapRes!1559 () Bool)

(declare-fun tp!65989 () Bool)

(declare-fun tp!66001 () Bool)

(assert (=> mapNonEmpty!1559 (= mapRes!1559 (and tp!65989 tp!66001))))

(declare-fun mapRest!1559 () (Array (_ BitVec 32) List!1987))

(declare-fun mapKey!1559 () (_ BitVec 32))

(declare-fun mapValue!1559 () List!1987)

(assert (=> mapNonEmpty!1559 (= (arr!691 (_values!681 (v!13337 (underlying!1005 (v!13338 (underlying!1006 (cache!851 cache!470))))))) (store mapRest!1559 mapKey!1559 mapValue!1559))))

(declare-fun b!120153 () Bool)

(declare-fun e!68691 () Bool)

(assert (=> b!120153 (= e!68697 e!68691)))

(declare-fun b!120154 () Bool)

(declare-fun tp!65997 () Bool)

(assert (=> b!120154 (= e!68683 (and tp_is_empty!1129 tp!65997))))

(declare-fun e!68687 () Bool)

(assert (=> b!120155 (= e!68687 (and e!68696 tp!65988))))

(declare-fun b!120156 () Bool)

(declare-fun res!56457 () Bool)

(assert (=> b!120156 (=> res!56457 e!68690)))

(declare-fun testedPSize!285 () Int)

(declare-fun totalInputSize!643 () Int)

(assert (=> b!120156 (= res!56457 (= testedPSize!285 totalInputSize!643))))

(declare-fun b!120157 () Bool)

(declare-fun e!68701 () Bool)

(assert (=> b!120157 (= e!68701 (not e!68689))))

(declare-fun res!56464 () Bool)

(assert (=> b!120157 (=> res!56464 e!68689)))

(declare-fun isPrefix!117 (List!1986 List!1986) Bool)

(assert (=> b!120157 (= res!56464 (not (isPrefix!117 testedP!367 totalInput!1363)))))

(assert (=> b!120157 (isPrefix!117 testedP!367 lt!35744)))

(declare-fun lt!35741 () Unit!1494)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!62 (List!1986 List!1986) Unit!1494)

(assert (=> b!120157 (= lt!35741 (lemmaConcatTwoListThenFirstIsPrefix!62 testedP!367 testedSuffix!285))))

(declare-fun b!120158 () Bool)

(assert (=> b!120158 (= e!68691 e!68694)))

(declare-fun b!120159 () Bool)

(declare-fun e!68684 () Bool)

(assert (=> b!120159 (= e!68684 e!68701)))

(declare-fun res!56463 () Bool)

(assert (=> b!120159 (=> (not res!56463) (not e!68701))))

(declare-fun lt!35747 () Int)

(assert (=> b!120159 (= res!56463 (= totalInputSize!643 lt!35747))))

(declare-fun size!1829 (List!1986) Int)

(assert (=> b!120159 (= lt!35747 (size!1829 totalInput!1363))))

(declare-fun b!120160 () Bool)

(declare-fun tp!65993 () Bool)

(declare-fun tp!65990 () Bool)

(assert (=> b!120160 (= e!68695 (and tp!65993 tp!65990))))

(declare-fun b!120161 () Bool)

(declare-fun tp!65992 () Bool)

(assert (=> b!120161 (= e!68692 (and tp_is_empty!1129 tp!65992))))

(declare-fun b!120162 () Bool)

(declare-fun tp!65996 () Bool)

(assert (=> b!120162 (= e!68695 tp!65996)))

(declare-fun b!120163 () Bool)

(declare-fun e!68698 () Bool)

(declare-fun lt!35742 () Int)

(assert (=> b!120163 (= e!68698 (= lt!35747 lt!35742))))

(assert (=> b!120163 (isPrefix!117 totalInput!1363 totalInput!1363)))

(declare-fun lt!35746 () Unit!1494)

(declare-fun lemmaIsPrefixRefl!88 (List!1986 List!1986) Unit!1494)

(assert (=> b!120163 (= lt!35746 (lemmaIsPrefixRefl!88 totalInput!1363 totalInput!1363))))

(declare-fun b!120164 () Bool)

(declare-fun tp!66000 () Bool)

(assert (=> b!120164 (= e!68693 (and tp_is_empty!1129 tp!66000))))

(declare-fun b!120165 () Bool)

(declare-fun res!56458 () Bool)

(assert (=> b!120165 (=> (not res!56458) (not e!68688))))

(declare-fun valid!364 (Cache!234) Bool)

(assert (=> b!120165 (= res!56458 (valid!364 cache!470))))

(declare-fun b!120166 () Bool)

(assert (=> b!120166 (= e!68690 e!68698)))

(declare-fun res!56461 () Bool)

(assert (=> b!120166 (=> res!56461 e!68698)))

(assert (=> b!120166 (= res!56461 (not (= lt!35742 lt!35747)))))

(assert (=> b!120166 (<= lt!35742 lt!35747)))

(declare-fun lt!35740 () Unit!1494)

(declare-fun lemmaIsPrefixThenSmallerEqSize!31 (List!1986 List!1986) Unit!1494)

(assert (=> b!120166 (= lt!35740 (lemmaIsPrefixThenSmallerEqSize!31 testedP!367 totalInput!1363))))

(declare-fun b!120167 () Bool)

(assert (=> b!120167 (= e!68699 e!68687)))

(declare-fun b!120168 () Bool)

(declare-fun tp!65995 () Bool)

(assert (=> b!120168 (= e!68686 (and tp!65995 mapRes!1559))))

(declare-fun condMapEmpty!1559 () Bool)

(declare-fun mapDefault!1559 () List!1987)

(assert (=> b!120168 (= condMapEmpty!1559 (= (arr!691 (_values!681 (v!13337 (underlying!1005 (v!13338 (underlying!1006 (cache!851 cache!470))))))) ((as const (Array (_ BitVec 32) List!1987)) mapDefault!1559)))))

(declare-fun b!120169 () Bool)

(assert (=> b!120169 (= e!68700 e!68684)))

(declare-fun res!56462 () Bool)

(assert (=> b!120169 (=> (not res!56462) (not e!68684))))

(assert (=> b!120169 (= res!56462 (= testedPSize!285 lt!35742))))

(assert (=> b!120169 (= lt!35742 (size!1829 testedP!367))))

(declare-fun mapIsEmpty!1559 () Bool)

(assert (=> mapIsEmpty!1559 mapRes!1559))

(assert (= (and start!12164 res!56465) b!120165))

(assert (= (and b!120165 res!56458) b!120147))

(assert (= (and b!120147 res!56460) b!120169))

(assert (= (and b!120169 res!56462) b!120159))

(assert (= (and b!120159 res!56463) b!120157))

(assert (= (and b!120157 (not res!56464)) b!120152))

(assert (= (and b!120152 (not res!56459)) b!120156))

(assert (= (and b!120156 (not res!56457)) b!120166))

(assert (= (and b!120166 (not res!56461)) b!120163))

(assert (= (and start!12164 ((_ is ElementMatch!537) r!15532)) b!120148))

(assert (= (and start!12164 ((_ is Concat!921) r!15532)) b!120151))

(assert (= (and start!12164 ((_ is Star!537) r!15532)) b!120162))

(assert (= (and start!12164 ((_ is Union!537) r!15532)) b!120160))

(assert (= (and start!12164 ((_ is Cons!1980) totalInput!1363)) b!120154))

(assert (= (and start!12164 ((_ is Cons!1980) testedSuffix!285)) b!120164))

(assert (= (and start!12164 ((_ is Cons!1980) testedP!367)) b!120161))

(assert (= (and b!120168 condMapEmpty!1559) mapIsEmpty!1559))

(assert (= (and b!120168 (not condMapEmpty!1559)) mapNonEmpty!1559))

(assert (= b!120149 b!120168))

(assert (= b!120158 b!120149))

(assert (= b!120153 b!120158))

(assert (= (and b!120150 ((_ is LongMap!403) (v!13338 (underlying!1006 (cache!851 cache!470))))) b!120153))

(assert (= b!120155 b!120150))

(assert (= (and b!120167 ((_ is HashMap!399) (cache!851 cache!470))) b!120155))

(assert (= start!12164 b!120167))

(declare-fun m!106761 () Bool)

(assert (=> b!120166 m!106761))

(declare-fun m!106763 () Bool)

(assert (=> start!12164 m!106763))

(declare-fun m!106765 () Bool)

(assert (=> start!12164 m!106765))

(declare-fun m!106767 () Bool)

(assert (=> b!120165 m!106767))

(declare-fun m!106769 () Bool)

(assert (=> b!120147 m!106769))

(declare-fun m!106771 () Bool)

(assert (=> b!120152 m!106771))

(declare-fun m!106773 () Bool)

(assert (=> b!120152 m!106773))

(declare-fun m!106775 () Bool)

(assert (=> b!120152 m!106775))

(declare-fun m!106777 () Bool)

(assert (=> b!120149 m!106777))

(declare-fun m!106779 () Bool)

(assert (=> b!120149 m!106779))

(declare-fun m!106781 () Bool)

(assert (=> b!120169 m!106781))

(declare-fun m!106783 () Bool)

(assert (=> b!120163 m!106783))

(declare-fun m!106785 () Bool)

(assert (=> b!120163 m!106785))

(declare-fun m!106787 () Bool)

(assert (=> b!120159 m!106787))

(declare-fun m!106789 () Bool)

(assert (=> mapNonEmpty!1559 m!106789))

(declare-fun m!106791 () Bool)

(assert (=> b!120157 m!106791))

(declare-fun m!106793 () Bool)

(assert (=> b!120157 m!106793))

(declare-fun m!106795 () Bool)

(assert (=> b!120157 m!106795))

(check-sat b_and!5973 (not b!120169) tp_is_empty!1129 (not b!120154) (not b!120163) (not b!120168) (not b!120149) (not b!120159) (not mapNonEmpty!1559) (not b_next!3843) b_and!5971 (not b_next!3841) (not b!120147) (not b!120165) (not b!120151) (not b!120166) (not b!120161) (not start!12164) (not b!120160) (not b!120157) (not b!120152) (not b!120162) (not b!120164))
(check-sat b_and!5971 b_and!5973 (not b_next!3841) (not b_next!3843))
