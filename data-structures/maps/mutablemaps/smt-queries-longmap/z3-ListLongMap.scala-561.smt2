; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15222 () Bool)

(assert start!15222)

(declare-fun b!146615 () Bool)

(declare-fun b_free!3125 () Bool)

(declare-fun b_next!3125 () Bool)

(assert (=> b!146615 (= b_free!3125 (not b_next!3125))))

(declare-fun tp!11880 () Bool)

(declare-fun b_and!9193 () Bool)

(assert (=> b!146615 (= tp!11880 b_and!9193)))

(declare-fun b!146621 () Bool)

(declare-fun b_free!3127 () Bool)

(declare-fun b_next!3127 () Bool)

(assert (=> b!146621 (= b_free!3127 (not b_next!3127))))

(declare-fun tp!11878 () Bool)

(declare-fun b_and!9195 () Bool)

(assert (=> b!146621 (= tp!11878 b_and!9195)))

(declare-fun b!146609 () Bool)

(declare-datatypes ((Unit!4641 0))(
  ( (Unit!4642) )
))
(declare-fun e!95672 () Unit!4641)

(declare-fun Unit!4643 () Unit!4641)

(assert (=> b!146609 (= e!95672 Unit!4643)))

(declare-fun b!146610 () Bool)

(declare-fun e!95671 () Bool)

(declare-fun e!95673 () Bool)

(declare-fun mapRes!5010 () Bool)

(assert (=> b!146610 (= e!95671 (and e!95673 mapRes!5010))))

(declare-fun condMapEmpty!5010 () Bool)

(declare-datatypes ((V!3619 0))(
  ( (V!3620 (val!1534 Int)) )
))
(declare-datatypes ((array!5002 0))(
  ( (array!5003 (arr!2362 (Array (_ BitVec 32) (_ BitVec 64))) (size!2638 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1146 0))(
  ( (ValueCellFull!1146 (v!3356 V!3619)) (EmptyCell!1146) )
))
(declare-datatypes ((array!5004 0))(
  ( (array!5005 (arr!2363 (Array (_ BitVec 32) ValueCell!1146)) (size!2639 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1200 0))(
  ( (LongMapFixedSize!1201 (defaultEntry!3016 Int) (mask!7394 (_ BitVec 32)) (extraKeys!2761 (_ BitVec 32)) (zeroValue!2861 V!3619) (minValue!2861 V!3619) (_size!649 (_ BitVec 32)) (_keys!4785 array!5002) (_values!2999 array!5004) (_vacant!649 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1200)

(declare-fun mapDefault!5009 () ValueCell!1146)

(assert (=> b!146610 (= condMapEmpty!5010 (= (arr!2363 (_values!2999 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1146)) mapDefault!5009)))))

(declare-fun b!146611 () Bool)

(declare-fun e!95668 () Bool)

(declare-fun tp_is_empty!2979 () Bool)

(assert (=> b!146611 (= e!95668 tp_is_empty!2979)))

(declare-fun b!146612 () Bool)

(declare-fun res!69732 () Bool)

(declare-fun e!95665 () Bool)

(assert (=> b!146612 (=> (not res!69732) (not e!95665))))

(declare-fun valid!584 (LongMapFixedSize!1200) Bool)

(assert (=> b!146612 (= res!69732 (valid!584 newMap!16))))

(declare-fun b!146613 () Bool)

(declare-fun e!95674 () Bool)

(declare-fun e!95670 () Bool)

(assert (=> b!146613 (= e!95674 e!95670)))

(declare-fun b!146614 () Bool)

(declare-fun e!95676 () Bool)

(declare-fun e!95660 () Bool)

(assert (=> b!146614 (= e!95676 e!95660)))

(declare-fun res!69727 () Bool)

(assert (=> b!146614 (=> (not res!69727) (not e!95660))))

(declare-datatypes ((tuple2!2750 0))(
  ( (tuple2!2751 (_1!1385 Bool) (_2!1385 LongMapFixedSize!1200)) )
))
(declare-fun lt!77156 () tuple2!2750)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!146614 (= res!69727 (and (_1!1385 lt!77156) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!77159 () Unit!4641)

(assert (=> b!146614 (= lt!77159 e!95672)))

(declare-datatypes ((Cell!982 0))(
  ( (Cell!983 (v!3357 LongMapFixedSize!1200)) )
))
(declare-datatypes ((LongMap!982 0))(
  ( (LongMap!983 (underlying!502 Cell!982)) )
))
(declare-fun thiss!992 () LongMap!982)

(declare-datatypes ((tuple2!2752 0))(
  ( (tuple2!2753 (_1!1386 (_ BitVec 64)) (_2!1386 V!3619)) )
))
(declare-datatypes ((List!1798 0))(
  ( (Nil!1795) (Cons!1794 (h!2402 tuple2!2752) (t!6515 List!1798)) )
))
(declare-datatypes ((ListLongMap!1783 0))(
  ( (ListLongMap!1784 (toList!907 List!1798)) )
))
(declare-fun lt!77145 () ListLongMap!1783)

(declare-fun c!27698 () Bool)

(declare-fun contains!948 (ListLongMap!1783 (_ BitVec 64)) Bool)

(assert (=> b!146614 (= c!27698 (contains!948 lt!77145 (select (arr!2362 (_keys!4785 (v!3357 (underlying!502 thiss!992)))) from!355)))))

(declare-fun lt!77148 () V!3619)

(declare-fun update!225 (LongMapFixedSize!1200 (_ BitVec 64) V!3619) tuple2!2750)

(assert (=> b!146614 (= lt!77156 (update!225 newMap!16 (select (arr!2362 (_keys!4785 (v!3357 (underlying!502 thiss!992)))) from!355) lt!77148))))

(declare-fun e!95666 () Bool)

(declare-fun array_inv!1467 (array!5002) Bool)

(declare-fun array_inv!1468 (array!5004) Bool)

(assert (=> b!146615 (= e!95670 (and tp!11880 tp_is_empty!2979 (array_inv!1467 (_keys!4785 (v!3357 (underlying!502 thiss!992)))) (array_inv!1468 (_values!2999 (v!3357 (underlying!502 thiss!992)))) e!95666))))

(declare-fun b!146616 () Bool)

(declare-fun e!95663 () Bool)

(assert (=> b!146616 (= e!95660 (not e!95663))))

(declare-fun res!69726 () Bool)

(assert (=> b!146616 (=> res!69726 e!95663)))

(declare-fun getCurrentListMap!570 (array!5002 array!5004 (_ BitVec 32) (_ BitVec 32) V!3619 V!3619 (_ BitVec 32) Int) ListLongMap!1783)

(declare-fun map!1469 (LongMapFixedSize!1200) ListLongMap!1783)

(assert (=> b!146616 (= res!69726 (not (= (getCurrentListMap!570 (_keys!4785 (v!3357 (underlying!502 thiss!992))) (_values!2999 (v!3357 (underlying!502 thiss!992))) (mask!7394 (v!3357 (underlying!502 thiss!992))) (extraKeys!2761 (v!3357 (underlying!502 thiss!992))) (zeroValue!2861 (v!3357 (underlying!502 thiss!992))) (minValue!2861 (v!3357 (underlying!502 thiss!992))) from!355 (defaultEntry!3016 (v!3357 (underlying!502 thiss!992)))) (map!1469 (_2!1385 lt!77156)))))))

(declare-fun lt!77154 () ListLongMap!1783)

(declare-fun lt!77157 () ListLongMap!1783)

(declare-fun lt!77147 () tuple2!2752)

(declare-fun lt!77160 () tuple2!2752)

(declare-fun +!181 (ListLongMap!1783 tuple2!2752) ListLongMap!1783)

(assert (=> b!146616 (= (+!181 lt!77154 lt!77160) (+!181 (+!181 lt!77157 lt!77160) lt!77147))))

(assert (=> b!146616 (= lt!77160 (tuple2!2753 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2861 (v!3357 (underlying!502 thiss!992)))))))

(declare-fun lt!77144 () Unit!4641)

(declare-fun addCommutativeForDiffKeys!74 (ListLongMap!1783 (_ BitVec 64) V!3619 (_ BitVec 64) V!3619) Unit!4641)

(assert (=> b!146616 (= lt!77144 (addCommutativeForDiffKeys!74 lt!77157 (select (arr!2362 (_keys!4785 (v!3357 (underlying!502 thiss!992)))) from!355) lt!77148 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2861 (v!3357 (underlying!502 thiss!992)))))))

(declare-fun lt!77155 () ListLongMap!1783)

(assert (=> b!146616 (= lt!77155 lt!77154)))

(assert (=> b!146616 (= lt!77154 (+!181 lt!77157 lt!77147))))

(declare-fun lt!77153 () ListLongMap!1783)

(declare-fun lt!77150 () tuple2!2752)

(assert (=> b!146616 (= lt!77155 (+!181 lt!77153 lt!77150))))

(declare-fun lt!77152 () ListLongMap!1783)

(assert (=> b!146616 (= lt!77157 (+!181 lt!77152 lt!77150))))

(assert (=> b!146616 (= lt!77150 (tuple2!2753 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2861 (v!3357 (underlying!502 thiss!992)))))))

(assert (=> b!146616 (= lt!77153 (+!181 lt!77152 lt!77147))))

(assert (=> b!146616 (= lt!77147 (tuple2!2753 (select (arr!2362 (_keys!4785 (v!3357 (underlying!502 thiss!992)))) from!355) lt!77148))))

(declare-fun lt!77151 () Unit!4641)

(assert (=> b!146616 (= lt!77151 (addCommutativeForDiffKeys!74 lt!77152 (select (arr!2362 (_keys!4785 (v!3357 (underlying!502 thiss!992)))) from!355) lt!77148 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2861 (v!3357 (underlying!502 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!150 (array!5002 array!5004 (_ BitVec 32) (_ BitVec 32) V!3619 V!3619 (_ BitVec 32) Int) ListLongMap!1783)

(assert (=> b!146616 (= lt!77152 (getCurrentListMapNoExtraKeys!150 (_keys!4785 (v!3357 (underlying!502 thiss!992))) (_values!2999 (v!3357 (underlying!502 thiss!992))) (mask!7394 (v!3357 (underlying!502 thiss!992))) (extraKeys!2761 (v!3357 (underlying!502 thiss!992))) (zeroValue!2861 (v!3357 (underlying!502 thiss!992))) (minValue!2861 (v!3357 (underlying!502 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3016 (v!3357 (underlying!502 thiss!992)))))))

(declare-fun b!146617 () Bool)

(declare-fun e!95661 () Bool)

(declare-fun mapRes!5009 () Bool)

(assert (=> b!146617 (= e!95666 (and e!95661 mapRes!5009))))

(declare-fun condMapEmpty!5009 () Bool)

(declare-fun mapDefault!5010 () ValueCell!1146)

(assert (=> b!146617 (= condMapEmpty!5009 (= (arr!2363 (_values!2999 (v!3357 (underlying!502 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1146)) mapDefault!5010)))))

(declare-fun b!146618 () Bool)

(assert (=> b!146618 (= e!95673 tp_is_empty!2979)))

(declare-fun b!146619 () Bool)

(declare-fun e!95675 () Bool)

(assert (=> b!146619 (= e!95675 e!95674)))

(declare-fun res!69731 () Bool)

(assert (=> start!15222 (=> (not res!69731) (not e!95665))))

(declare-fun valid!585 (LongMap!982) Bool)

(assert (=> start!15222 (= res!69731 (valid!585 thiss!992))))

(assert (=> start!15222 e!95665))

(assert (=> start!15222 e!95675))

(assert (=> start!15222 true))

(declare-fun e!95669 () Bool)

(assert (=> start!15222 e!95669))

(declare-fun b!146620 () Bool)

(declare-fun Unit!4644 () Unit!4641)

(assert (=> b!146620 (= e!95672 Unit!4644)))

(declare-fun lt!77143 () Unit!4641)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!157 (array!5002 array!5004 (_ BitVec 32) (_ BitVec 32) V!3619 V!3619 (_ BitVec 64) (_ BitVec 32) Int) Unit!4641)

(assert (=> b!146620 (= lt!77143 (lemmaListMapContainsThenArrayContainsFrom!157 (_keys!4785 (v!3357 (underlying!502 thiss!992))) (_values!2999 (v!3357 (underlying!502 thiss!992))) (mask!7394 (v!3357 (underlying!502 thiss!992))) (extraKeys!2761 (v!3357 (underlying!502 thiss!992))) (zeroValue!2861 (v!3357 (underlying!502 thiss!992))) (minValue!2861 (v!3357 (underlying!502 thiss!992))) (select (arr!2362 (_keys!4785 (v!3357 (underlying!502 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3016 (v!3357 (underlying!502 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!5002 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!146620 (arrayContainsKey!0 (_keys!4785 (v!3357 (underlying!502 thiss!992))) (select (arr!2362 (_keys!4785 (v!3357 (underlying!502 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!77146 () Unit!4641)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!5002 (_ BitVec 32) (_ BitVec 32)) Unit!4641)

(assert (=> b!146620 (= lt!77146 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4785 (v!3357 (underlying!502 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1799 0))(
  ( (Nil!1796) (Cons!1795 (h!2403 (_ BitVec 64)) (t!6516 List!1799)) )
))
(declare-fun arrayNoDuplicates!0 (array!5002 (_ BitVec 32) List!1799) Bool)

(assert (=> b!146620 (arrayNoDuplicates!0 (_keys!4785 (v!3357 (underlying!502 thiss!992))) from!355 Nil!1796)))

(declare-fun lt!77158 () Unit!4641)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!5002 (_ BitVec 32) (_ BitVec 64) List!1799) Unit!4641)

(assert (=> b!146620 (= lt!77158 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4785 (v!3357 (underlying!502 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2362 (_keys!4785 (v!3357 (underlying!502 thiss!992)))) from!355) (Cons!1795 (select (arr!2362 (_keys!4785 (v!3357 (underlying!502 thiss!992)))) from!355) Nil!1796)))))

(assert (=> b!146620 false))

(assert (=> b!146621 (= e!95669 (and tp!11878 tp_is_empty!2979 (array_inv!1467 (_keys!4785 newMap!16)) (array_inv!1468 (_values!2999 newMap!16)) e!95671))))

(declare-fun mapNonEmpty!5009 () Bool)

(declare-fun tp!11879 () Bool)

(declare-fun e!95667 () Bool)

(assert (=> mapNonEmpty!5009 (= mapRes!5009 (and tp!11879 e!95667))))

(declare-fun mapRest!5010 () (Array (_ BitVec 32) ValueCell!1146))

(declare-fun mapKey!5009 () (_ BitVec 32))

(declare-fun mapValue!5009 () ValueCell!1146)

(assert (=> mapNonEmpty!5009 (= (arr!2363 (_values!2999 (v!3357 (underlying!502 thiss!992)))) (store mapRest!5010 mapKey!5009 mapValue!5009))))

(declare-fun mapNonEmpty!5010 () Bool)

(declare-fun tp!11877 () Bool)

(assert (=> mapNonEmpty!5010 (= mapRes!5010 (and tp!11877 e!95668))))

(declare-fun mapRest!5009 () (Array (_ BitVec 32) ValueCell!1146))

(declare-fun mapValue!5010 () ValueCell!1146)

(declare-fun mapKey!5010 () (_ BitVec 32))

(assert (=> mapNonEmpty!5010 (= (arr!2363 (_values!2999 newMap!16)) (store mapRest!5009 mapKey!5010 mapValue!5010))))

(declare-fun b!146622 () Bool)

(assert (=> b!146622 (= e!95667 tp_is_empty!2979)))

(declare-fun mapIsEmpty!5009 () Bool)

(assert (=> mapIsEmpty!5009 mapRes!5009))

(declare-fun b!146623 () Bool)

(declare-fun e!95662 () Bool)

(assert (=> b!146623 (= e!95665 e!95662)))

(declare-fun res!69729 () Bool)

(assert (=> b!146623 (=> (not res!69729) (not e!95662))))

(declare-fun lt!77149 () ListLongMap!1783)

(assert (=> b!146623 (= res!69729 (= lt!77149 lt!77145))))

(assert (=> b!146623 (= lt!77145 (map!1469 newMap!16))))

(assert (=> b!146623 (= lt!77149 (getCurrentListMap!570 (_keys!4785 (v!3357 (underlying!502 thiss!992))) (_values!2999 (v!3357 (underlying!502 thiss!992))) (mask!7394 (v!3357 (underlying!502 thiss!992))) (extraKeys!2761 (v!3357 (underlying!502 thiss!992))) (zeroValue!2861 (v!3357 (underlying!502 thiss!992))) (minValue!2861 (v!3357 (underlying!502 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3016 (v!3357 (underlying!502 thiss!992)))))))

(declare-fun b!146624 () Bool)

(declare-fun res!69730 () Bool)

(assert (=> b!146624 (=> (not res!69730) (not e!95665))))

(assert (=> b!146624 (= res!69730 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2638 (_keys!4785 (v!3357 (underlying!502 thiss!992)))))))))

(declare-fun b!146625 () Bool)

(assert (=> b!146625 (= e!95661 tp_is_empty!2979)))

(declare-fun b!146626 () Bool)

(assert (=> b!146626 (= e!95663 (bvslt (bvsub from!355 #b00000000000000000000000000000001) from!355))))

(declare-fun mapIsEmpty!5010 () Bool)

(assert (=> mapIsEmpty!5010 mapRes!5010))

(declare-fun b!146627 () Bool)

(assert (=> b!146627 (= e!95662 e!95676)))

(declare-fun res!69728 () Bool)

(assert (=> b!146627 (=> (not res!69728) (not e!95676))))

(assert (=> b!146627 (= res!69728 (and (not (= (select (arr!2362 (_keys!4785 (v!3357 (underlying!502 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2362 (_keys!4785 (v!3357 (underlying!502 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1579 (ValueCell!1146 V!3619) V!3619)

(declare-fun dynLambda!457 (Int (_ BitVec 64)) V!3619)

(assert (=> b!146627 (= lt!77148 (get!1579 (select (arr!2363 (_values!2999 (v!3357 (underlying!502 thiss!992)))) from!355) (dynLambda!457 (defaultEntry!3016 (v!3357 (underlying!502 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!146628 () Bool)

(declare-fun res!69725 () Bool)

(assert (=> b!146628 (=> (not res!69725) (not e!95665))))

(assert (=> b!146628 (= res!69725 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7394 newMap!16)) (_size!649 (v!3357 (underlying!502 thiss!992)))))))

(assert (= (and start!15222 res!69731) b!146624))

(assert (= (and b!146624 res!69730) b!146612))

(assert (= (and b!146612 res!69732) b!146628))

(assert (= (and b!146628 res!69725) b!146623))

(assert (= (and b!146623 res!69729) b!146627))

(assert (= (and b!146627 res!69728) b!146614))

(assert (= (and b!146614 c!27698) b!146620))

(assert (= (and b!146614 (not c!27698)) b!146609))

(assert (= (and b!146614 res!69727) b!146616))

(assert (= (and b!146616 (not res!69726)) b!146626))

(assert (= (and b!146617 condMapEmpty!5009) mapIsEmpty!5009))

(assert (= (and b!146617 (not condMapEmpty!5009)) mapNonEmpty!5009))

(get-info :version)

(assert (= (and mapNonEmpty!5009 ((_ is ValueCellFull!1146) mapValue!5009)) b!146622))

(assert (= (and b!146617 ((_ is ValueCellFull!1146) mapDefault!5010)) b!146625))

(assert (= b!146615 b!146617))

(assert (= b!146613 b!146615))

(assert (= b!146619 b!146613))

(assert (= start!15222 b!146619))

(assert (= (and b!146610 condMapEmpty!5010) mapIsEmpty!5010))

(assert (= (and b!146610 (not condMapEmpty!5010)) mapNonEmpty!5010))

(assert (= (and mapNonEmpty!5010 ((_ is ValueCellFull!1146) mapValue!5010)) b!146611))

(assert (= (and b!146610 ((_ is ValueCellFull!1146) mapDefault!5009)) b!146618))

(assert (= b!146621 b!146610))

(assert (= start!15222 b!146621))

(declare-fun b_lambda!6593 () Bool)

(assert (=> (not b_lambda!6593) (not b!146627)))

(declare-fun t!6512 () Bool)

(declare-fun tb!2677 () Bool)

(assert (=> (and b!146615 (= (defaultEntry!3016 (v!3357 (underlying!502 thiss!992))) (defaultEntry!3016 (v!3357 (underlying!502 thiss!992)))) t!6512) tb!2677))

(declare-fun result!4367 () Bool)

(assert (=> tb!2677 (= result!4367 tp_is_empty!2979)))

(assert (=> b!146627 t!6512))

(declare-fun b_and!9197 () Bool)

(assert (= b_and!9193 (and (=> t!6512 result!4367) b_and!9197)))

(declare-fun t!6514 () Bool)

(declare-fun tb!2679 () Bool)

(assert (=> (and b!146621 (= (defaultEntry!3016 newMap!16) (defaultEntry!3016 (v!3357 (underlying!502 thiss!992)))) t!6514) tb!2679))

(declare-fun result!4371 () Bool)

(assert (= result!4371 result!4367))

(assert (=> b!146627 t!6514))

(declare-fun b_and!9199 () Bool)

(assert (= b_and!9195 (and (=> t!6514 result!4371) b_and!9199)))

(declare-fun m!176549 () Bool)

(assert (=> mapNonEmpty!5010 m!176549))

(declare-fun m!176551 () Bool)

(assert (=> b!146615 m!176551))

(declare-fun m!176553 () Bool)

(assert (=> b!146615 m!176553))

(declare-fun m!176555 () Bool)

(assert (=> start!15222 m!176555))

(declare-fun m!176557 () Bool)

(assert (=> b!146627 m!176557))

(declare-fun m!176559 () Bool)

(assert (=> b!146627 m!176559))

(declare-fun m!176561 () Bool)

(assert (=> b!146627 m!176561))

(assert (=> b!146627 m!176559))

(assert (=> b!146627 m!176561))

(declare-fun m!176563 () Bool)

(assert (=> b!146627 m!176563))

(declare-fun m!176565 () Bool)

(assert (=> b!146621 m!176565))

(declare-fun m!176567 () Bool)

(assert (=> b!146621 m!176567))

(declare-fun m!176569 () Bool)

(assert (=> b!146620 m!176569))

(declare-fun m!176571 () Bool)

(assert (=> b!146620 m!176571))

(assert (=> b!146620 m!176557))

(declare-fun m!176573 () Bool)

(assert (=> b!146620 m!176573))

(assert (=> b!146620 m!176557))

(assert (=> b!146620 m!176557))

(declare-fun m!176575 () Bool)

(assert (=> b!146620 m!176575))

(assert (=> b!146620 m!176557))

(declare-fun m!176577 () Bool)

(assert (=> b!146620 m!176577))

(declare-fun m!176579 () Bool)

(assert (=> b!146612 m!176579))

(declare-fun m!176581 () Bool)

(assert (=> b!146616 m!176581))

(declare-fun m!176583 () Bool)

(assert (=> b!146616 m!176583))

(declare-fun m!176585 () Bool)

(assert (=> b!146616 m!176585))

(declare-fun m!176587 () Bool)

(assert (=> b!146616 m!176587))

(declare-fun m!176589 () Bool)

(assert (=> b!146616 m!176589))

(declare-fun m!176591 () Bool)

(assert (=> b!146616 m!176591))

(assert (=> b!146616 m!176557))

(declare-fun m!176593 () Bool)

(assert (=> b!146616 m!176593))

(declare-fun m!176595 () Bool)

(assert (=> b!146616 m!176595))

(assert (=> b!146616 m!176557))

(declare-fun m!176597 () Bool)

(assert (=> b!146616 m!176597))

(assert (=> b!146616 m!176589))

(declare-fun m!176599 () Bool)

(assert (=> b!146616 m!176599))

(assert (=> b!146616 m!176557))

(declare-fun m!176601 () Bool)

(assert (=> b!146616 m!176601))

(declare-fun m!176603 () Bool)

(assert (=> b!146616 m!176603))

(declare-fun m!176605 () Bool)

(assert (=> b!146623 m!176605))

(declare-fun m!176607 () Bool)

(assert (=> b!146623 m!176607))

(assert (=> b!146614 m!176557))

(assert (=> b!146614 m!176557))

(declare-fun m!176609 () Bool)

(assert (=> b!146614 m!176609))

(assert (=> b!146614 m!176557))

(declare-fun m!176611 () Bool)

(assert (=> b!146614 m!176611))

(declare-fun m!176613 () Bool)

(assert (=> mapNonEmpty!5009 m!176613))

(check-sat (not b!146623) tp_is_empty!2979 (not b!146612) (not b!146620) (not b!146615) (not mapNonEmpty!5010) (not b!146616) (not start!15222) (not b!146627) (not b!146614) (not b_lambda!6593) (not b_next!3127) (not b_next!3125) (not b!146621) b_and!9199 b_and!9197 (not mapNonEmpty!5009))
(check-sat b_and!9197 b_and!9199 (not b_next!3125) (not b_next!3127))
