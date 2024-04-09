; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15168 () Bool)

(assert start!15168)

(declare-fun b!145676 () Bool)

(declare-fun b_free!3077 () Bool)

(declare-fun b_next!3077 () Bool)

(assert (=> b!145676 (= b_free!3077 (not b_next!3077))))

(declare-fun tp!11731 () Bool)

(declare-fun b_and!9093 () Bool)

(assert (=> b!145676 (= tp!11731 b_and!9093)))

(declare-fun b!145678 () Bool)

(declare-fun b_free!3079 () Bool)

(declare-fun b_next!3079 () Bool)

(assert (=> b!145678 (= b_free!3079 (not b_next!3079))))

(declare-fun tp!11729 () Bool)

(declare-fun b_and!9095 () Bool)

(assert (=> b!145678 (= tp!11729 b_and!9095)))

(declare-fun b!145659 () Bool)

(declare-fun e!94925 () Bool)

(declare-fun e!94919 () Bool)

(declare-fun mapRes!4934 () Bool)

(assert (=> b!145659 (= e!94925 (and e!94919 mapRes!4934))))

(declare-fun condMapEmpty!4933 () Bool)

(declare-datatypes ((V!3587 0))(
  ( (V!3588 (val!1522 Int)) )
))
(declare-datatypes ((array!4952 0))(
  ( (array!4953 (arr!2338 (Array (_ BitVec 32) (_ BitVec 64))) (size!2614 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1134 0))(
  ( (ValueCellFull!1134 (v!3330 V!3587)) (EmptyCell!1134) )
))
(declare-datatypes ((array!4954 0))(
  ( (array!4955 (arr!2339 (Array (_ BitVec 32) ValueCell!1134)) (size!2615 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1176 0))(
  ( (LongMapFixedSize!1177 (defaultEntry!3002 Int) (mask!7372 (_ BitVec 32)) (extraKeys!2747 (_ BitVec 32)) (zeroValue!2847 V!3587) (minValue!2847 V!3587) (_size!637 (_ BitVec 32)) (_keys!4771 array!4952) (_values!2985 array!4954) (_vacant!637 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1176)

(declare-fun mapDefault!4933 () ValueCell!1134)

(assert (=> b!145659 (= condMapEmpty!4933 (= (arr!2339 (_values!2985 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1134)) mapDefault!4933)))))

(declare-fun b!145660 () Bool)

(declare-fun res!69356 () Bool)

(declare-fun e!94924 () Bool)

(assert (=> b!145660 (=> res!69356 e!94924)))

(declare-datatypes ((List!1780 0))(
  ( (Nil!1777) (Cons!1776 (h!2384 (_ BitVec 64)) (t!6449 List!1780)) )
))
(declare-fun lt!76628 () List!1780)

(declare-fun noDuplicate!56 (List!1780) Bool)

(assert (=> b!145660 (= res!69356 (not (noDuplicate!56 lt!76628)))))

(declare-fun b!145661 () Bool)

(declare-fun e!94917 () Bool)

(declare-fun tp_is_empty!2955 () Bool)

(assert (=> b!145661 (= e!94917 tp_is_empty!2955)))

(declare-fun b!145663 () Bool)

(declare-fun res!69365 () Bool)

(declare-fun e!94915 () Bool)

(assert (=> b!145663 (=> (not res!69365) (not e!94915))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((Cell!960 0))(
  ( (Cell!961 (v!3331 LongMapFixedSize!1176)) )
))
(declare-datatypes ((LongMap!960 0))(
  ( (LongMap!961 (underlying!491 Cell!960)) )
))
(declare-fun thiss!992 () LongMap!960)

(assert (=> b!145663 (= res!69365 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2614 (_keys!4771 (v!3331 (underlying!491 thiss!992)))))))))

(declare-fun b!145664 () Bool)

(declare-fun res!69360 () Bool)

(assert (=> b!145664 (=> (not res!69360) (not e!94915))))

(assert (=> b!145664 (= res!69360 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7372 newMap!16)) (_size!637 (v!3331 (underlying!491 thiss!992)))))))

(declare-fun mapIsEmpty!4933 () Bool)

(assert (=> mapIsEmpty!4933 mapRes!4934))

(declare-fun b!145665 () Bool)

(declare-fun res!69359 () Bool)

(assert (=> b!145665 (=> (not res!69359) (not e!94915))))

(declare-fun valid!570 (LongMapFixedSize!1176) Bool)

(assert (=> b!145665 (= res!69359 (valid!570 newMap!16))))

(declare-fun b!145666 () Bool)

(declare-fun e!94920 () Bool)

(assert (=> b!145666 (= e!94915 e!94920)))

(declare-fun res!69361 () Bool)

(assert (=> b!145666 (=> (not res!69361) (not e!94920))))

(declare-datatypes ((tuple2!2708 0))(
  ( (tuple2!2709 (_1!1364 (_ BitVec 64)) (_2!1364 V!3587)) )
))
(declare-datatypes ((List!1781 0))(
  ( (Nil!1778) (Cons!1777 (h!2385 tuple2!2708) (t!6450 List!1781)) )
))
(declare-datatypes ((ListLongMap!1761 0))(
  ( (ListLongMap!1762 (toList!896 List!1781)) )
))
(declare-fun lt!76627 () ListLongMap!1761)

(declare-fun lt!76629 () ListLongMap!1761)

(assert (=> b!145666 (= res!69361 (and (= lt!76629 lt!76627) (not (= (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1453 (LongMapFixedSize!1176) ListLongMap!1761)

(assert (=> b!145666 (= lt!76627 (map!1453 newMap!16))))

(declare-fun getCurrentListMap!562 (array!4952 array!4954 (_ BitVec 32) (_ BitVec 32) V!3587 V!3587 (_ BitVec 32) Int) ListLongMap!1761)

(assert (=> b!145666 (= lt!76629 (getCurrentListMap!562 (_keys!4771 (v!3331 (underlying!491 thiss!992))) (_values!2985 (v!3331 (underlying!491 thiss!992))) (mask!7372 (v!3331 (underlying!491 thiss!992))) (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) (zeroValue!2847 (v!3331 (underlying!491 thiss!992))) (minValue!2847 (v!3331 (underlying!491 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3002 (v!3331 (underlying!491 thiss!992)))))))

(declare-fun b!145667 () Bool)

(declare-fun contains!937 (List!1780 (_ BitVec 64)) Bool)

(assert (=> b!145667 (= e!94924 (contains!937 lt!76628 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355)))))

(declare-fun b!145668 () Bool)

(declare-fun res!69358 () Bool)

(assert (=> b!145668 (=> res!69358 e!94924)))

(assert (=> b!145668 (= res!69358 (contains!937 lt!76628 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145669 () Bool)

(declare-fun e!94922 () Bool)

(declare-fun e!94914 () Bool)

(assert (=> b!145669 (= e!94922 e!94914)))

(declare-fun mapNonEmpty!4933 () Bool)

(declare-fun mapRes!4933 () Bool)

(declare-fun tp!11730 () Bool)

(assert (=> mapNonEmpty!4933 (= mapRes!4933 (and tp!11730 e!94917))))

(declare-fun mapValue!4933 () ValueCell!1134)

(declare-fun mapKey!4934 () (_ BitVec 32))

(declare-fun mapRest!4934 () (Array (_ BitVec 32) ValueCell!1134))

(assert (=> mapNonEmpty!4933 (= (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) (store mapRest!4934 mapKey!4934 mapValue!4933))))

(declare-fun mapNonEmpty!4934 () Bool)

(declare-fun tp!11732 () Bool)

(declare-fun e!94921 () Bool)

(assert (=> mapNonEmpty!4934 (= mapRes!4934 (and tp!11732 e!94921))))

(declare-fun mapKey!4933 () (_ BitVec 32))

(declare-fun mapValue!4934 () ValueCell!1134)

(declare-fun mapRest!4933 () (Array (_ BitVec 32) ValueCell!1134))

(assert (=> mapNonEmpty!4934 (= (arr!2339 (_values!2985 newMap!16)) (store mapRest!4933 mapKey!4933 mapValue!4934))))

(declare-fun b!145670 () Bool)

(declare-fun e!94916 () Bool)

(declare-fun e!94923 () Bool)

(assert (=> b!145670 (= e!94916 (and e!94923 mapRes!4933))))

(declare-fun condMapEmpty!4934 () Bool)

(declare-fun mapDefault!4934 () ValueCell!1134)

(assert (=> b!145670 (= condMapEmpty!4934 (= (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1134)) mapDefault!4934)))))

(declare-fun b!145671 () Bool)

(declare-fun res!69362 () Bool)

(assert (=> b!145671 (=> res!69362 e!94924)))

(declare-fun arrayNoDuplicates!0 (array!4952 (_ BitVec 32) List!1780) Bool)

(assert (=> b!145671 (= res!69362 (not (arrayNoDuplicates!0 (_keys!4771 (v!3331 (underlying!491 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) lt!76628)))))

(declare-fun b!145672 () Bool)

(assert (=> b!145672 (= e!94921 tp_is_empty!2955)))

(declare-fun b!145673 () Bool)

(declare-fun e!94911 () Bool)

(assert (=> b!145673 (= e!94920 e!94911)))

(declare-fun res!69364 () Bool)

(assert (=> b!145673 (=> (not res!69364) (not e!94911))))

(declare-fun contains!938 (ListLongMap!1761 (_ BitVec 64)) Bool)

(assert (=> b!145673 (= res!69364 (contains!938 lt!76627 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2710 0))(
  ( (tuple2!2711 (_1!1365 Bool) (_2!1365 LongMapFixedSize!1176)) )
))
(declare-fun lt!76625 () tuple2!2710)

(declare-fun update!215 (LongMapFixedSize!1176 (_ BitVec 64) V!3587) tuple2!2710)

(declare-fun get!1560 (ValueCell!1134 V!3587) V!3587)

(declare-fun dynLambda!448 (Int (_ BitVec 64)) V!3587)

(assert (=> b!145673 (= lt!76625 (update!215 newMap!16 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) (get!1560 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!145674 () Bool)

(assert (=> b!145674 (= e!94919 tp_is_empty!2955)))

(declare-fun res!69357 () Bool)

(assert (=> start!15168 (=> (not res!69357) (not e!94915))))

(declare-fun valid!571 (LongMap!960) Bool)

(assert (=> start!15168 (= res!69357 (valid!571 thiss!992))))

(assert (=> start!15168 e!94915))

(declare-fun e!94918 () Bool)

(assert (=> start!15168 e!94918))

(assert (=> start!15168 true))

(declare-fun e!94913 () Bool)

(assert (=> start!15168 e!94913))

(declare-fun b!145662 () Bool)

(assert (=> b!145662 (= e!94923 tp_is_empty!2955)))

(declare-fun b!145675 () Bool)

(declare-fun res!69355 () Bool)

(assert (=> b!145675 (=> res!69355 e!94924)))

(assert (=> b!145675 (= res!69355 (contains!937 lt!76628 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun array_inv!1449 (array!4952) Bool)

(declare-fun array_inv!1450 (array!4954) Bool)

(assert (=> b!145676 (= e!94914 (and tp!11731 tp_is_empty!2955 (array_inv!1449 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) (array_inv!1450 (_values!2985 (v!3331 (underlying!491 thiss!992)))) e!94916))))

(declare-fun b!145677 () Bool)

(assert (=> b!145677 (= e!94918 e!94922)))

(declare-fun mapIsEmpty!4934 () Bool)

(assert (=> mapIsEmpty!4934 mapRes!4933))

(assert (=> b!145678 (= e!94913 (and tp!11729 tp_is_empty!2955 (array_inv!1449 (_keys!4771 newMap!16)) (array_inv!1450 (_values!2985 newMap!16)) e!94925))))

(declare-fun b!145679 () Bool)

(assert (=> b!145679 (= e!94911 (not e!94924))))

(declare-fun res!69363 () Bool)

(assert (=> b!145679 (=> res!69363 e!94924)))

(assert (=> b!145679 (= res!69363 (or (bvsge (size!2614 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2614 (_keys!4771 (v!3331 (underlying!491 thiss!992)))))))))

(assert (=> b!145679 (= lt!76628 (Cons!1776 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) Nil!1777))))

(assert (=> b!145679 (arrayNoDuplicates!0 (_keys!4771 (v!3331 (underlying!491 thiss!992))) from!355 Nil!1777)))

(declare-datatypes ((Unit!4611 0))(
  ( (Unit!4612) )
))
(declare-fun lt!76630 () Unit!4611)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4952 (_ BitVec 32) (_ BitVec 32)) Unit!4611)

(assert (=> b!145679 (= lt!76630 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4771 (v!3331 (underlying!491 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!4952 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!145679 (arrayContainsKey!0 (_keys!4771 (v!3331 (underlying!491 thiss!992))) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!76626 () Unit!4611)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!150 (array!4952 array!4954 (_ BitVec 32) (_ BitVec 32) V!3587 V!3587 (_ BitVec 64) (_ BitVec 32) Int) Unit!4611)

(assert (=> b!145679 (= lt!76626 (lemmaListMapContainsThenArrayContainsFrom!150 (_keys!4771 (v!3331 (underlying!491 thiss!992))) (_values!2985 (v!3331 (underlying!491 thiss!992))) (mask!7372 (v!3331 (underlying!491 thiss!992))) (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) (zeroValue!2847 (v!3331 (underlying!491 thiss!992))) (minValue!2847 (v!3331 (underlying!491 thiss!992))) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3002 (v!3331 (underlying!491 thiss!992)))))))

(assert (= (and start!15168 res!69357) b!145663))

(assert (= (and b!145663 res!69365) b!145665))

(assert (= (and b!145665 res!69359) b!145664))

(assert (= (and b!145664 res!69360) b!145666))

(assert (= (and b!145666 res!69361) b!145673))

(assert (= (and b!145673 res!69364) b!145679))

(assert (= (and b!145679 (not res!69363)) b!145660))

(assert (= (and b!145660 (not res!69356)) b!145668))

(assert (= (and b!145668 (not res!69358)) b!145675))

(assert (= (and b!145675 (not res!69355)) b!145671))

(assert (= (and b!145671 (not res!69362)) b!145667))

(assert (= (and b!145670 condMapEmpty!4934) mapIsEmpty!4934))

(assert (= (and b!145670 (not condMapEmpty!4934)) mapNonEmpty!4933))

(get-info :version)

(assert (= (and mapNonEmpty!4933 ((_ is ValueCellFull!1134) mapValue!4933)) b!145661))

(assert (= (and b!145670 ((_ is ValueCellFull!1134) mapDefault!4934)) b!145662))

(assert (= b!145676 b!145670))

(assert (= b!145669 b!145676))

(assert (= b!145677 b!145669))

(assert (= start!15168 b!145677))

(assert (= (and b!145659 condMapEmpty!4933) mapIsEmpty!4933))

(assert (= (and b!145659 (not condMapEmpty!4933)) mapNonEmpty!4934))

(assert (= (and mapNonEmpty!4934 ((_ is ValueCellFull!1134) mapValue!4934)) b!145672))

(assert (= (and b!145659 ((_ is ValueCellFull!1134) mapDefault!4933)) b!145674))

(assert (= b!145678 b!145659))

(assert (= start!15168 b!145678))

(declare-fun b_lambda!6563 () Bool)

(assert (=> (not b_lambda!6563) (not b!145673)))

(declare-fun t!6446 () Bool)

(declare-fun tb!2629 () Bool)

(assert (=> (and b!145676 (= (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) (defaultEntry!3002 (v!3331 (underlying!491 thiss!992)))) t!6446) tb!2629))

(declare-fun result!4293 () Bool)

(assert (=> tb!2629 (= result!4293 tp_is_empty!2955)))

(assert (=> b!145673 t!6446))

(declare-fun b_and!9097 () Bool)

(assert (= b_and!9093 (and (=> t!6446 result!4293) b_and!9097)))

(declare-fun tb!2631 () Bool)

(declare-fun t!6448 () Bool)

(assert (=> (and b!145678 (= (defaultEntry!3002 newMap!16) (defaultEntry!3002 (v!3331 (underlying!491 thiss!992)))) t!6448) tb!2631))

(declare-fun result!4297 () Bool)

(assert (= result!4297 result!4293))

(assert (=> b!145673 t!6448))

(declare-fun b_and!9099 () Bool)

(assert (= b_and!9095 (and (=> t!6448 result!4297) b_and!9099)))

(declare-fun m!175789 () Bool)

(assert (=> b!145668 m!175789))

(declare-fun m!175791 () Bool)

(assert (=> b!145665 m!175791))

(declare-fun m!175793 () Bool)

(assert (=> b!145667 m!175793))

(assert (=> b!145667 m!175793))

(declare-fun m!175795 () Bool)

(assert (=> b!145667 m!175795))

(declare-fun m!175797 () Bool)

(assert (=> mapNonEmpty!4934 m!175797))

(declare-fun m!175799 () Bool)

(assert (=> b!145660 m!175799))

(assert (=> b!145666 m!175793))

(declare-fun m!175801 () Bool)

(assert (=> b!145666 m!175801))

(declare-fun m!175803 () Bool)

(assert (=> b!145666 m!175803))

(declare-fun m!175805 () Bool)

(assert (=> b!145671 m!175805))

(declare-fun m!175807 () Bool)

(assert (=> b!145678 m!175807))

(declare-fun m!175809 () Bool)

(assert (=> b!145678 m!175809))

(declare-fun m!175811 () Bool)

(assert (=> b!145679 m!175811))

(declare-fun m!175813 () Bool)

(assert (=> b!145679 m!175813))

(assert (=> b!145679 m!175793))

(declare-fun m!175815 () Bool)

(assert (=> b!145679 m!175815))

(assert (=> b!145679 m!175793))

(assert (=> b!145679 m!175793))

(declare-fun m!175817 () Bool)

(assert (=> b!145679 m!175817))

(declare-fun m!175819 () Bool)

(assert (=> start!15168 m!175819))

(declare-fun m!175821 () Bool)

(assert (=> b!145675 m!175821))

(declare-fun m!175823 () Bool)

(assert (=> mapNonEmpty!4933 m!175823))

(declare-fun m!175825 () Bool)

(assert (=> b!145676 m!175825))

(declare-fun m!175827 () Bool)

(assert (=> b!145676 m!175827))

(declare-fun m!175829 () Bool)

(assert (=> b!145673 m!175829))

(declare-fun m!175831 () Bool)

(assert (=> b!145673 m!175831))

(declare-fun m!175833 () Bool)

(assert (=> b!145673 m!175833))

(assert (=> b!145673 m!175793))

(assert (=> b!145673 m!175831))

(assert (=> b!145673 m!175793))

(declare-fun m!175835 () Bool)

(assert (=> b!145673 m!175835))

(assert (=> b!145673 m!175793))

(assert (=> b!145673 m!175833))

(declare-fun m!175837 () Bool)

(assert (=> b!145673 m!175837))

(assert (=> b!145673 m!175829))

(check-sat (not mapNonEmpty!4934) (not b_next!3079) (not b!145679) (not b!145675) (not b!145666) (not b!145665) b_and!9097 (not mapNonEmpty!4933) (not b!145667) (not b!145660) (not b!145676) (not b!145671) (not start!15168) tp_is_empty!2955 (not b!145678) b_and!9099 (not b_lambda!6563) (not b!145668) (not b!145673) (not b_next!3077))
(check-sat b_and!9097 b_and!9099 (not b_next!3077) (not b_next!3079))
(get-model)

(declare-fun b_lambda!6567 () Bool)

(assert (= b_lambda!6563 (or (and b!145676 b_free!3077) (and b!145678 b_free!3079 (= (defaultEntry!3002 newMap!16) (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))))) b_lambda!6567)))

(check-sat (not mapNonEmpty!4934) (not b_next!3079) (not b!145679) (not b!145675) (not b!145666) (not b!145665) b_and!9097 (not mapNonEmpty!4933) (not b!145667) (not b!145660) (not b!145676) (not b!145671) (not start!15168) tp_is_empty!2955 (not b!145678) b_and!9099 (not b!145668) (not b!145673) (not b_lambda!6567) (not b_next!3077))
(check-sat b_and!9097 b_and!9099 (not b_next!3077) (not b_next!3079))
(get-model)

(declare-fun bm!16264 () Bool)

(declare-fun call!16267 () Bool)

(declare-fun c!27607 () Bool)

(assert (=> bm!16264 (= call!16267 (arrayNoDuplicates!0 (_keys!4771 (v!3331 (underlying!491 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!27607 (Cons!1776 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) Nil!1777) Nil!1777)))))

(declare-fun b!145757 () Bool)

(declare-fun e!94986 () Bool)

(assert (=> b!145757 (= e!94986 call!16267)))

(declare-fun b!145758 () Bool)

(declare-fun e!94984 () Bool)

(declare-fun e!94983 () Bool)

(assert (=> b!145758 (= e!94984 e!94983)))

(declare-fun res!69407 () Bool)

(assert (=> b!145758 (=> (not res!69407) (not e!94983))))

(declare-fun e!94985 () Bool)

(assert (=> b!145758 (= res!69407 (not e!94985))))

(declare-fun res!69405 () Bool)

(assert (=> b!145758 (=> (not res!69405) (not e!94985))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!145758 (= res!69405 (validKeyInArray!0 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355)))))

(declare-fun b!145759 () Bool)

(assert (=> b!145759 (= e!94985 (contains!937 Nil!1777 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355)))))

(declare-fun b!145761 () Bool)

(assert (=> b!145761 (= e!94983 e!94986)))

(assert (=> b!145761 (= c!27607 (validKeyInArray!0 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355)))))

(declare-fun d!46371 () Bool)

(declare-fun res!69406 () Bool)

(assert (=> d!46371 (=> res!69406 e!94984)))

(assert (=> d!46371 (= res!69406 (bvsge from!355 (size!2614 (_keys!4771 (v!3331 (underlying!491 thiss!992))))))))

(assert (=> d!46371 (= (arrayNoDuplicates!0 (_keys!4771 (v!3331 (underlying!491 thiss!992))) from!355 Nil!1777) e!94984)))

(declare-fun b!145760 () Bool)

(assert (=> b!145760 (= e!94986 call!16267)))

(assert (= (and d!46371 (not res!69406)) b!145758))

(assert (= (and b!145758 res!69405) b!145759))

(assert (= (and b!145758 res!69407) b!145761))

(assert (= (and b!145761 c!27607) b!145757))

(assert (= (and b!145761 (not c!27607)) b!145760))

(assert (= (or b!145757 b!145760) bm!16264))

(assert (=> bm!16264 m!175793))

(declare-fun m!175889 () Bool)

(assert (=> bm!16264 m!175889))

(assert (=> b!145758 m!175793))

(assert (=> b!145758 m!175793))

(declare-fun m!175891 () Bool)

(assert (=> b!145758 m!175891))

(assert (=> b!145759 m!175793))

(assert (=> b!145759 m!175793))

(declare-fun m!175893 () Bool)

(assert (=> b!145759 m!175893))

(assert (=> b!145761 m!175793))

(assert (=> b!145761 m!175793))

(assert (=> b!145761 m!175891))

(assert (=> b!145679 d!46371))

(declare-fun d!46373 () Bool)

(assert (=> d!46373 (arrayNoDuplicates!0 (_keys!4771 (v!3331 (underlying!491 thiss!992))) from!355 Nil!1777)))

(declare-fun lt!76651 () Unit!4611)

(declare-fun choose!39 (array!4952 (_ BitVec 32) (_ BitVec 32)) Unit!4611)

(assert (=> d!46373 (= lt!76651 (choose!39 (_keys!4771 (v!3331 (underlying!491 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!46373 (bvslt (size!2614 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!46373 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4771 (v!3331 (underlying!491 thiss!992))) #b00000000000000000000000000000000 from!355) lt!76651)))

(declare-fun bs!6137 () Bool)

(assert (= bs!6137 d!46373))

(assert (=> bs!6137 m!175813))

(declare-fun m!175895 () Bool)

(assert (=> bs!6137 m!175895))

(assert (=> b!145679 d!46373))

(declare-fun d!46375 () Bool)

(declare-fun res!69412 () Bool)

(declare-fun e!94991 () Bool)

(assert (=> d!46375 (=> res!69412 e!94991)))

(assert (=> d!46375 (= res!69412 (= (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355)))))

(assert (=> d!46375 (= (arrayContainsKey!0 (_keys!4771 (v!3331 (underlying!491 thiss!992))) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!94991)))

(declare-fun b!145766 () Bool)

(declare-fun e!94992 () Bool)

(assert (=> b!145766 (= e!94991 e!94992)))

(declare-fun res!69413 () Bool)

(assert (=> b!145766 (=> (not res!69413) (not e!94992))))

(assert (=> b!145766 (= res!69413 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2614 (_keys!4771 (v!3331 (underlying!491 thiss!992))))))))

(declare-fun b!145767 () Bool)

(assert (=> b!145767 (= e!94992 (arrayContainsKey!0 (_keys!4771 (v!3331 (underlying!491 thiss!992))) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!46375 (not res!69412)) b!145766))

(assert (= (and b!145766 res!69413) b!145767))

(declare-fun m!175897 () Bool)

(assert (=> d!46375 m!175897))

(assert (=> b!145767 m!175793))

(declare-fun m!175899 () Bool)

(assert (=> b!145767 m!175899))

(assert (=> b!145679 d!46375))

(declare-fun d!46377 () Bool)

(declare-fun e!94995 () Bool)

(assert (=> d!46377 e!94995))

(declare-fun c!27610 () Bool)

(assert (=> d!46377 (= c!27610 (and (not (= (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!76654 () Unit!4611)

(declare-fun choose!907 (array!4952 array!4954 (_ BitVec 32) (_ BitVec 32) V!3587 V!3587 (_ BitVec 64) (_ BitVec 32) Int) Unit!4611)

(assert (=> d!46377 (= lt!76654 (choose!907 (_keys!4771 (v!3331 (underlying!491 thiss!992))) (_values!2985 (v!3331 (underlying!491 thiss!992))) (mask!7372 (v!3331 (underlying!491 thiss!992))) (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) (zeroValue!2847 (v!3331 (underlying!491 thiss!992))) (minValue!2847 (v!3331 (underlying!491 thiss!992))) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3002 (v!3331 (underlying!491 thiss!992)))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!46377 (validMask!0 (mask!7372 (v!3331 (underlying!491 thiss!992))))))

(assert (=> d!46377 (= (lemmaListMapContainsThenArrayContainsFrom!150 (_keys!4771 (v!3331 (underlying!491 thiss!992))) (_values!2985 (v!3331 (underlying!491 thiss!992))) (mask!7372 (v!3331 (underlying!491 thiss!992))) (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) (zeroValue!2847 (v!3331 (underlying!491 thiss!992))) (minValue!2847 (v!3331 (underlying!491 thiss!992))) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3002 (v!3331 (underlying!491 thiss!992)))) lt!76654)))

(declare-fun b!145772 () Bool)

(assert (=> b!145772 (= e!94995 (arrayContainsKey!0 (_keys!4771 (v!3331 (underlying!491 thiss!992))) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!145773 () Bool)

(assert (=> b!145773 (= e!94995 (ite (= (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!46377 c!27610) b!145772))

(assert (= (and d!46377 (not c!27610)) b!145773))

(assert (=> d!46377 m!175793))

(declare-fun m!175901 () Bool)

(assert (=> d!46377 m!175901))

(declare-fun m!175903 () Bool)

(assert (=> d!46377 m!175903))

(assert (=> b!145772 m!175793))

(assert (=> b!145772 m!175817))

(assert (=> b!145679 d!46377))

(declare-fun d!46379 () Bool)

(assert (=> d!46379 (= (valid!571 thiss!992) (valid!570 (v!3331 (underlying!491 thiss!992))))))

(declare-fun bs!6138 () Bool)

(assert (= bs!6138 d!46379))

(declare-fun m!175905 () Bool)

(assert (=> bs!6138 m!175905))

(assert (=> start!15168 d!46379))

(declare-fun c!27611 () Bool)

(declare-fun bm!16265 () Bool)

(declare-fun call!16268 () Bool)

(assert (=> bm!16265 (= call!16268 (arrayNoDuplicates!0 (_keys!4771 (v!3331 (underlying!491 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (ite c!27611 (Cons!1776 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) lt!76628) lt!76628)))))

(declare-fun b!145774 () Bool)

(declare-fun e!94999 () Bool)

(assert (=> b!145774 (= e!94999 call!16268)))

(declare-fun b!145775 () Bool)

(declare-fun e!94997 () Bool)

(declare-fun e!94996 () Bool)

(assert (=> b!145775 (= e!94997 e!94996)))

(declare-fun res!69416 () Bool)

(assert (=> b!145775 (=> (not res!69416) (not e!94996))))

(declare-fun e!94998 () Bool)

(assert (=> b!145775 (= res!69416 (not e!94998))))

(declare-fun res!69414 () Bool)

(assert (=> b!145775 (=> (not res!69414) (not e!94998))))

(assert (=> b!145775 (= res!69414 (validKeyInArray!0 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!145776 () Bool)

(assert (=> b!145776 (= e!94998 (contains!937 lt!76628 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!145778 () Bool)

(assert (=> b!145778 (= e!94996 e!94999)))

(assert (=> b!145778 (= c!27611 (validKeyInArray!0 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun d!46381 () Bool)

(declare-fun res!69415 () Bool)

(assert (=> d!46381 (=> res!69415 e!94997)))

(assert (=> d!46381 (= res!69415 (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2614 (_keys!4771 (v!3331 (underlying!491 thiss!992))))))))

(assert (=> d!46381 (= (arrayNoDuplicates!0 (_keys!4771 (v!3331 (underlying!491 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) lt!76628) e!94997)))

(declare-fun b!145777 () Bool)

(assert (=> b!145777 (= e!94999 call!16268)))

(assert (= (and d!46381 (not res!69415)) b!145775))

(assert (= (and b!145775 res!69414) b!145776))

(assert (= (and b!145775 res!69416) b!145778))

(assert (= (and b!145778 c!27611) b!145774))

(assert (= (and b!145778 (not c!27611)) b!145777))

(assert (= (or b!145774 b!145777) bm!16265))

(assert (=> bm!16265 m!175897))

(declare-fun m!175907 () Bool)

(assert (=> bm!16265 m!175907))

(assert (=> b!145775 m!175897))

(assert (=> b!145775 m!175897))

(declare-fun m!175909 () Bool)

(assert (=> b!145775 m!175909))

(assert (=> b!145776 m!175897))

(assert (=> b!145776 m!175897))

(declare-fun m!175911 () Bool)

(assert (=> b!145776 m!175911))

(assert (=> b!145778 m!175897))

(assert (=> b!145778 m!175897))

(assert (=> b!145778 m!175909))

(assert (=> b!145671 d!46381))

(declare-fun d!46383 () Bool)

(declare-fun res!69421 () Bool)

(declare-fun e!95004 () Bool)

(assert (=> d!46383 (=> res!69421 e!95004)))

(assert (=> d!46383 (= res!69421 ((_ is Nil!1777) lt!76628))))

(assert (=> d!46383 (= (noDuplicate!56 lt!76628) e!95004)))

(declare-fun b!145783 () Bool)

(declare-fun e!95005 () Bool)

(assert (=> b!145783 (= e!95004 e!95005)))

(declare-fun res!69422 () Bool)

(assert (=> b!145783 (=> (not res!69422) (not e!95005))))

(assert (=> b!145783 (= res!69422 (not (contains!937 (t!6449 lt!76628) (h!2384 lt!76628))))))

(declare-fun b!145784 () Bool)

(assert (=> b!145784 (= e!95005 (noDuplicate!56 (t!6449 lt!76628)))))

(assert (= (and d!46383 (not res!69421)) b!145783))

(assert (= (and b!145783 res!69422) b!145784))

(declare-fun m!175913 () Bool)

(assert (=> b!145783 m!175913))

(declare-fun m!175915 () Bool)

(assert (=> b!145784 m!175915))

(assert (=> b!145660 d!46383))

(declare-fun d!46385 () Bool)

(assert (=> d!46385 (= (array_inv!1449 (_keys!4771 newMap!16)) (bvsge (size!2614 (_keys!4771 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!145678 d!46385))

(declare-fun d!46387 () Bool)

(assert (=> d!46387 (= (array_inv!1450 (_values!2985 newMap!16)) (bvsge (size!2615 (_values!2985 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!145678 d!46387))

(declare-fun d!46389 () Bool)

(assert (=> d!46389 (= (map!1453 newMap!16) (getCurrentListMap!562 (_keys!4771 newMap!16) (_values!2985 newMap!16) (mask!7372 newMap!16) (extraKeys!2747 newMap!16) (zeroValue!2847 newMap!16) (minValue!2847 newMap!16) #b00000000000000000000000000000000 (defaultEntry!3002 newMap!16)))))

(declare-fun bs!6139 () Bool)

(assert (= bs!6139 d!46389))

(declare-fun m!175917 () Bool)

(assert (=> bs!6139 m!175917))

(assert (=> b!145666 d!46389))

(declare-fun b!145827 () Bool)

(declare-fun res!69447 () Bool)

(declare-fun e!95040 () Bool)

(assert (=> b!145827 (=> (not res!69447) (not e!95040))))

(declare-fun e!95032 () Bool)

(assert (=> b!145827 (= res!69447 e!95032)))

(declare-fun c!27626 () Bool)

(assert (=> b!145827 (= c!27626 (not (= (bvand (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!145828 () Bool)

(declare-fun e!95038 () Bool)

(assert (=> b!145828 (= e!95038 (validKeyInArray!0 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!16280 () Bool)

(declare-fun call!16286 () ListLongMap!1761)

(declare-fun call!16283 () ListLongMap!1761)

(assert (=> bm!16280 (= call!16286 call!16283)))

(declare-fun b!145829 () Bool)

(declare-fun e!95033 () ListLongMap!1761)

(assert (=> b!145829 (= e!95033 call!16286)))

(declare-fun bm!16281 () Bool)

(declare-fun call!16284 () Bool)

(declare-fun lt!76708 () ListLongMap!1761)

(assert (=> bm!16281 (= call!16284 (contains!938 lt!76708 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145830 () Bool)

(declare-fun call!16285 () Bool)

(assert (=> b!145830 (= e!95032 (not call!16285))))

(declare-fun b!145831 () Bool)

(declare-fun e!95043 () ListLongMap!1761)

(assert (=> b!145831 (= e!95043 e!95033)))

(declare-fun c!27629 () Bool)

(assert (=> b!145831 (= c!27629 (and (not (= (bvand (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!145832 () Bool)

(declare-fun e!95039 () Unit!4611)

(declare-fun lt!76704 () Unit!4611)

(assert (=> b!145832 (= e!95039 lt!76704)))

(declare-fun lt!76705 () ListLongMap!1761)

(declare-fun getCurrentListMapNoExtraKeys!145 (array!4952 array!4954 (_ BitVec 32) (_ BitVec 32) V!3587 V!3587 (_ BitVec 32) Int) ListLongMap!1761)

(assert (=> b!145832 (= lt!76705 (getCurrentListMapNoExtraKeys!145 (_keys!4771 (v!3331 (underlying!491 thiss!992))) (_values!2985 (v!3331 (underlying!491 thiss!992))) (mask!7372 (v!3331 (underlying!491 thiss!992))) (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) (zeroValue!2847 (v!3331 (underlying!491 thiss!992))) (minValue!2847 (v!3331 (underlying!491 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3002 (v!3331 (underlying!491 thiss!992)))))))

(declare-fun lt!76717 () (_ BitVec 64))

(assert (=> b!145832 (= lt!76717 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76714 () (_ BitVec 64))

(assert (=> b!145832 (= lt!76714 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!76699 () Unit!4611)

(declare-fun addStillContains!100 (ListLongMap!1761 (_ BitVec 64) V!3587 (_ BitVec 64)) Unit!4611)

(assert (=> b!145832 (= lt!76699 (addStillContains!100 lt!76705 lt!76717 (zeroValue!2847 (v!3331 (underlying!491 thiss!992))) lt!76714))))

(declare-fun +!178 (ListLongMap!1761 tuple2!2708) ListLongMap!1761)

(assert (=> b!145832 (contains!938 (+!178 lt!76705 (tuple2!2709 lt!76717 (zeroValue!2847 (v!3331 (underlying!491 thiss!992))))) lt!76714)))

(declare-fun lt!76715 () Unit!4611)

(assert (=> b!145832 (= lt!76715 lt!76699)))

(declare-fun lt!76701 () ListLongMap!1761)

(assert (=> b!145832 (= lt!76701 (getCurrentListMapNoExtraKeys!145 (_keys!4771 (v!3331 (underlying!491 thiss!992))) (_values!2985 (v!3331 (underlying!491 thiss!992))) (mask!7372 (v!3331 (underlying!491 thiss!992))) (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) (zeroValue!2847 (v!3331 (underlying!491 thiss!992))) (minValue!2847 (v!3331 (underlying!491 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3002 (v!3331 (underlying!491 thiss!992)))))))

(declare-fun lt!76710 () (_ BitVec 64))

(assert (=> b!145832 (= lt!76710 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76718 () (_ BitVec 64))

(assert (=> b!145832 (= lt!76718 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!76700 () Unit!4611)

(declare-fun addApplyDifferent!100 (ListLongMap!1761 (_ BitVec 64) V!3587 (_ BitVec 64)) Unit!4611)

(assert (=> b!145832 (= lt!76700 (addApplyDifferent!100 lt!76701 lt!76710 (minValue!2847 (v!3331 (underlying!491 thiss!992))) lt!76718))))

(declare-fun apply!124 (ListLongMap!1761 (_ BitVec 64)) V!3587)

(assert (=> b!145832 (= (apply!124 (+!178 lt!76701 (tuple2!2709 lt!76710 (minValue!2847 (v!3331 (underlying!491 thiss!992))))) lt!76718) (apply!124 lt!76701 lt!76718))))

(declare-fun lt!76706 () Unit!4611)

(assert (=> b!145832 (= lt!76706 lt!76700)))

(declare-fun lt!76711 () ListLongMap!1761)

(assert (=> b!145832 (= lt!76711 (getCurrentListMapNoExtraKeys!145 (_keys!4771 (v!3331 (underlying!491 thiss!992))) (_values!2985 (v!3331 (underlying!491 thiss!992))) (mask!7372 (v!3331 (underlying!491 thiss!992))) (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) (zeroValue!2847 (v!3331 (underlying!491 thiss!992))) (minValue!2847 (v!3331 (underlying!491 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3002 (v!3331 (underlying!491 thiss!992)))))))

(declare-fun lt!76703 () (_ BitVec 64))

(assert (=> b!145832 (= lt!76703 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76720 () (_ BitVec 64))

(assert (=> b!145832 (= lt!76720 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!76716 () Unit!4611)

(assert (=> b!145832 (= lt!76716 (addApplyDifferent!100 lt!76711 lt!76703 (zeroValue!2847 (v!3331 (underlying!491 thiss!992))) lt!76720))))

(assert (=> b!145832 (= (apply!124 (+!178 lt!76711 (tuple2!2709 lt!76703 (zeroValue!2847 (v!3331 (underlying!491 thiss!992))))) lt!76720) (apply!124 lt!76711 lt!76720))))

(declare-fun lt!76719 () Unit!4611)

(assert (=> b!145832 (= lt!76719 lt!76716)))

(declare-fun lt!76709 () ListLongMap!1761)

(assert (=> b!145832 (= lt!76709 (getCurrentListMapNoExtraKeys!145 (_keys!4771 (v!3331 (underlying!491 thiss!992))) (_values!2985 (v!3331 (underlying!491 thiss!992))) (mask!7372 (v!3331 (underlying!491 thiss!992))) (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) (zeroValue!2847 (v!3331 (underlying!491 thiss!992))) (minValue!2847 (v!3331 (underlying!491 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3002 (v!3331 (underlying!491 thiss!992)))))))

(declare-fun lt!76702 () (_ BitVec 64))

(assert (=> b!145832 (= lt!76702 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!76713 () (_ BitVec 64))

(assert (=> b!145832 (= lt!76713 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!145832 (= lt!76704 (addApplyDifferent!100 lt!76709 lt!76702 (minValue!2847 (v!3331 (underlying!491 thiss!992))) lt!76713))))

(assert (=> b!145832 (= (apply!124 (+!178 lt!76709 (tuple2!2709 lt!76702 (minValue!2847 (v!3331 (underlying!491 thiss!992))))) lt!76713) (apply!124 lt!76709 lt!76713))))

(declare-fun b!145833 () Bool)

(declare-fun c!27628 () Bool)

(assert (=> b!145833 (= c!27628 (and (not (= (bvand (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!95042 () ListLongMap!1761)

(assert (=> b!145833 (= e!95033 e!95042)))

(declare-fun e!95044 () Bool)

(declare-fun b!145834 () Bool)

(assert (=> b!145834 (= e!95044 (= (apply!124 lt!76708 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1560 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!145834 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2615 (_values!2985 (v!3331 (underlying!491 thiss!992))))))))

(assert (=> b!145834 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2614 (_keys!4771 (v!3331 (underlying!491 thiss!992))))))))

(declare-fun b!145836 () Bool)

(assert (=> b!145836 (= e!95042 call!16286)))

(declare-fun b!145837 () Bool)

(declare-fun e!95037 () Bool)

(declare-fun e!95041 () Bool)

(assert (=> b!145837 (= e!95037 e!95041)))

(declare-fun res!69448 () Bool)

(assert (=> b!145837 (= res!69448 call!16284)))

(assert (=> b!145837 (=> (not res!69448) (not e!95041))))

(declare-fun b!145838 () Bool)

(declare-fun Unit!4613 () Unit!4611)

(assert (=> b!145838 (= e!95039 Unit!4613)))

(declare-fun b!145839 () Bool)

(assert (=> b!145839 (= e!95041 (= (apply!124 lt!76708 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2847 (v!3331 (underlying!491 thiss!992)))))))

(declare-fun b!145840 () Bool)

(assert (=> b!145840 (= e!95040 e!95037)))

(declare-fun c!27627 () Bool)

(assert (=> b!145840 (= c!27627 (not (= (bvand (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!16282 () Bool)

(declare-fun call!16288 () ListLongMap!1761)

(declare-fun c!27625 () Bool)

(declare-fun call!16287 () ListLongMap!1761)

(declare-fun call!16289 () ListLongMap!1761)

(assert (=> bm!16282 (= call!16283 (+!178 (ite c!27625 call!16288 (ite c!27629 call!16289 call!16287)) (ite (or c!27625 c!27629) (tuple2!2709 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2847 (v!3331 (underlying!491 thiss!992)))) (tuple2!2709 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2847 (v!3331 (underlying!491 thiss!992)))))))))

(declare-fun b!145841 () Bool)

(assert (=> b!145841 (= e!95042 call!16287)))

(declare-fun bm!16283 () Bool)

(assert (=> bm!16283 (= call!16289 call!16288)))

(declare-fun d!46391 () Bool)

(assert (=> d!46391 e!95040))

(declare-fun res!69442 () Bool)

(assert (=> d!46391 (=> (not res!69442) (not e!95040))))

(assert (=> d!46391 (= res!69442 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2614 (_keys!4771 (v!3331 (underlying!491 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2614 (_keys!4771 (v!3331 (underlying!491 thiss!992))))))))))

(declare-fun lt!76707 () ListLongMap!1761)

(assert (=> d!46391 (= lt!76708 lt!76707)))

(declare-fun lt!76712 () Unit!4611)

(assert (=> d!46391 (= lt!76712 e!95039)))

(declare-fun c!27624 () Bool)

(assert (=> d!46391 (= c!27624 e!95038)))

(declare-fun res!69443 () Bool)

(assert (=> d!46391 (=> (not res!69443) (not e!95038))))

(assert (=> d!46391 (= res!69443 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2614 (_keys!4771 (v!3331 (underlying!491 thiss!992))))))))

(assert (=> d!46391 (= lt!76707 e!95043)))

(assert (=> d!46391 (= c!27625 (and (not (= (bvand (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!46391 (validMask!0 (mask!7372 (v!3331 (underlying!491 thiss!992))))))

(assert (=> d!46391 (= (getCurrentListMap!562 (_keys!4771 (v!3331 (underlying!491 thiss!992))) (_values!2985 (v!3331 (underlying!491 thiss!992))) (mask!7372 (v!3331 (underlying!491 thiss!992))) (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) (zeroValue!2847 (v!3331 (underlying!491 thiss!992))) (minValue!2847 (v!3331 (underlying!491 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3002 (v!3331 (underlying!491 thiss!992)))) lt!76708)))

(declare-fun b!145835 () Bool)

(assert (=> b!145835 (= e!95043 (+!178 call!16283 (tuple2!2709 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2847 (v!3331 (underlying!491 thiss!992))))))))

(declare-fun bm!16284 () Bool)

(assert (=> bm!16284 (= call!16288 (getCurrentListMapNoExtraKeys!145 (_keys!4771 (v!3331 (underlying!491 thiss!992))) (_values!2985 (v!3331 (underlying!491 thiss!992))) (mask!7372 (v!3331 (underlying!491 thiss!992))) (extraKeys!2747 (v!3331 (underlying!491 thiss!992))) (zeroValue!2847 (v!3331 (underlying!491 thiss!992))) (minValue!2847 (v!3331 (underlying!491 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3002 (v!3331 (underlying!491 thiss!992)))))))

(declare-fun bm!16285 () Bool)

(assert (=> bm!16285 (= call!16285 (contains!938 lt!76708 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145842 () Bool)

(declare-fun res!69444 () Bool)

(assert (=> b!145842 (=> (not res!69444) (not e!95040))))

(declare-fun e!95034 () Bool)

(assert (=> b!145842 (= res!69444 e!95034)))

(declare-fun res!69449 () Bool)

(assert (=> b!145842 (=> res!69449 e!95034)))

(declare-fun e!95036 () Bool)

(assert (=> b!145842 (= res!69449 (not e!95036))))

(declare-fun res!69445 () Bool)

(assert (=> b!145842 (=> (not res!69445) (not e!95036))))

(assert (=> b!145842 (= res!69445 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2614 (_keys!4771 (v!3331 (underlying!491 thiss!992))))))))

(declare-fun b!145843 () Bool)

(declare-fun e!95035 () Bool)

(assert (=> b!145843 (= e!95035 (= (apply!124 lt!76708 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2847 (v!3331 (underlying!491 thiss!992)))))))

(declare-fun b!145844 () Bool)

(assert (=> b!145844 (= e!95032 e!95035)))

(declare-fun res!69446 () Bool)

(assert (=> b!145844 (= res!69446 call!16285)))

(assert (=> b!145844 (=> (not res!69446) (not e!95035))))

(declare-fun b!145845 () Bool)

(assert (=> b!145845 (= e!95034 e!95044)))

(declare-fun res!69441 () Bool)

(assert (=> b!145845 (=> (not res!69441) (not e!95044))))

(assert (=> b!145845 (= res!69441 (contains!938 lt!76708 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!145845 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2614 (_keys!4771 (v!3331 (underlying!491 thiss!992))))))))

(declare-fun bm!16286 () Bool)

(assert (=> bm!16286 (= call!16287 call!16289)))

(declare-fun b!145846 () Bool)

(assert (=> b!145846 (= e!95036 (validKeyInArray!0 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!145847 () Bool)

(assert (=> b!145847 (= e!95037 (not call!16284))))

(assert (= (and d!46391 c!27625) b!145835))

(assert (= (and d!46391 (not c!27625)) b!145831))

(assert (= (and b!145831 c!27629) b!145829))

(assert (= (and b!145831 (not c!27629)) b!145833))

(assert (= (and b!145833 c!27628) b!145836))

(assert (= (and b!145833 (not c!27628)) b!145841))

(assert (= (or b!145836 b!145841) bm!16286))

(assert (= (or b!145829 bm!16286) bm!16283))

(assert (= (or b!145829 b!145836) bm!16280))

(assert (= (or b!145835 bm!16283) bm!16284))

(assert (= (or b!145835 bm!16280) bm!16282))

(assert (= (and d!46391 res!69443) b!145828))

(assert (= (and d!46391 c!27624) b!145832))

(assert (= (and d!46391 (not c!27624)) b!145838))

(assert (= (and d!46391 res!69442) b!145842))

(assert (= (and b!145842 res!69445) b!145846))

(assert (= (and b!145842 (not res!69449)) b!145845))

(assert (= (and b!145845 res!69441) b!145834))

(assert (= (and b!145842 res!69444) b!145827))

(assert (= (and b!145827 c!27626) b!145844))

(assert (= (and b!145827 (not c!27626)) b!145830))

(assert (= (and b!145844 res!69446) b!145843))

(assert (= (or b!145844 b!145830) bm!16285))

(assert (= (and b!145827 res!69447) b!145840))

(assert (= (and b!145840 c!27627) b!145837))

(assert (= (and b!145840 (not c!27627)) b!145847))

(assert (= (and b!145837 res!69448) b!145839))

(assert (= (or b!145837 b!145847) bm!16281))

(declare-fun b_lambda!6569 () Bool)

(assert (=> (not b_lambda!6569) (not b!145834)))

(assert (=> b!145834 t!6446))

(declare-fun b_and!9109 () Bool)

(assert (= b_and!9097 (and (=> t!6446 result!4293) b_and!9109)))

(assert (=> b!145834 t!6448))

(declare-fun b_and!9111 () Bool)

(assert (= b_and!9099 (and (=> t!6448 result!4297) b_and!9111)))

(declare-fun m!175919 () Bool)

(assert (=> b!145839 m!175919))

(assert (=> b!145834 m!175897))

(declare-fun m!175921 () Bool)

(assert (=> b!145834 m!175921))

(declare-fun m!175923 () Bool)

(assert (=> b!145834 m!175923))

(assert (=> b!145834 m!175831))

(declare-fun m!175925 () Bool)

(assert (=> b!145834 m!175925))

(assert (=> b!145834 m!175831))

(assert (=> b!145834 m!175923))

(assert (=> b!145834 m!175897))

(declare-fun m!175927 () Bool)

(assert (=> b!145843 m!175927))

(declare-fun m!175929 () Bool)

(assert (=> bm!16284 m!175929))

(assert (=> b!145845 m!175897))

(assert (=> b!145845 m!175897))

(declare-fun m!175931 () Bool)

(assert (=> b!145845 m!175931))

(assert (=> b!145846 m!175897))

(assert (=> b!145846 m!175897))

(assert (=> b!145846 m!175909))

(declare-fun m!175933 () Bool)

(assert (=> bm!16285 m!175933))

(assert (=> b!145828 m!175897))

(assert (=> b!145828 m!175897))

(assert (=> b!145828 m!175909))

(assert (=> d!46391 m!175903))

(declare-fun m!175935 () Bool)

(assert (=> b!145835 m!175935))

(declare-fun m!175937 () Bool)

(assert (=> b!145832 m!175937))

(declare-fun m!175939 () Bool)

(assert (=> b!145832 m!175939))

(declare-fun m!175941 () Bool)

(assert (=> b!145832 m!175941))

(declare-fun m!175943 () Bool)

(assert (=> b!145832 m!175943))

(declare-fun m!175945 () Bool)

(assert (=> b!145832 m!175945))

(declare-fun m!175947 () Bool)

(assert (=> b!145832 m!175947))

(declare-fun m!175949 () Bool)

(assert (=> b!145832 m!175949))

(declare-fun m!175951 () Bool)

(assert (=> b!145832 m!175951))

(declare-fun m!175953 () Bool)

(assert (=> b!145832 m!175953))

(declare-fun m!175955 () Bool)

(assert (=> b!145832 m!175955))

(assert (=> b!145832 m!175949))

(assert (=> b!145832 m!175929))

(assert (=> b!145832 m!175897))

(declare-fun m!175957 () Bool)

(assert (=> b!145832 m!175957))

(declare-fun m!175959 () Bool)

(assert (=> b!145832 m!175959))

(declare-fun m!175961 () Bool)

(assert (=> b!145832 m!175961))

(assert (=> b!145832 m!175937))

(assert (=> b!145832 m!175941))

(declare-fun m!175963 () Bool)

(assert (=> b!145832 m!175963))

(assert (=> b!145832 m!175961))

(declare-fun m!175965 () Bool)

(assert (=> b!145832 m!175965))

(declare-fun m!175967 () Bool)

(assert (=> bm!16282 m!175967))

(declare-fun m!175969 () Bool)

(assert (=> bm!16281 m!175969))

(assert (=> b!145666 d!46391))

(declare-fun d!46393 () Bool)

(declare-fun lt!76723 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!141 (List!1780) (InoxSet (_ BitVec 64)))

(assert (=> d!46393 (= lt!76723 (select (content!141 lt!76628) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!95049 () Bool)

(assert (=> d!46393 (= lt!76723 e!95049)))

(declare-fun res!69454 () Bool)

(assert (=> d!46393 (=> (not res!69454) (not e!95049))))

(assert (=> d!46393 (= res!69454 ((_ is Cons!1776) lt!76628))))

(assert (=> d!46393 (= (contains!937 lt!76628 #b1000000000000000000000000000000000000000000000000000000000000000) lt!76723)))

(declare-fun b!145852 () Bool)

(declare-fun e!95050 () Bool)

(assert (=> b!145852 (= e!95049 e!95050)))

(declare-fun res!69455 () Bool)

(assert (=> b!145852 (=> res!69455 e!95050)))

(assert (=> b!145852 (= res!69455 (= (h!2384 lt!76628) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145853 () Bool)

(assert (=> b!145853 (= e!95050 (contains!937 (t!6449 lt!76628) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!46393 res!69454) b!145852))

(assert (= (and b!145852 (not res!69455)) b!145853))

(declare-fun m!175971 () Bool)

(assert (=> d!46393 m!175971))

(declare-fun m!175973 () Bool)

(assert (=> d!46393 m!175973))

(declare-fun m!175975 () Bool)

(assert (=> b!145853 m!175975))

(assert (=> b!145675 d!46393))

(declare-fun d!46395 () Bool)

(assert (=> d!46395 (= (array_inv!1449 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) (bvsge (size!2614 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!145676 d!46395))

(declare-fun d!46397 () Bool)

(assert (=> d!46397 (= (array_inv!1450 (_values!2985 (v!3331 (underlying!491 thiss!992)))) (bvsge (size!2615 (_values!2985 (v!3331 (underlying!491 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!145676 d!46397))

(declare-fun d!46399 () Bool)

(declare-fun lt!76724 () Bool)

(assert (=> d!46399 (= lt!76724 (select (content!141 lt!76628) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355)))))

(declare-fun e!95051 () Bool)

(assert (=> d!46399 (= lt!76724 e!95051)))

(declare-fun res!69456 () Bool)

(assert (=> d!46399 (=> (not res!69456) (not e!95051))))

(assert (=> d!46399 (= res!69456 ((_ is Cons!1776) lt!76628))))

(assert (=> d!46399 (= (contains!937 lt!76628 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355)) lt!76724)))

(declare-fun b!145854 () Bool)

(declare-fun e!95052 () Bool)

(assert (=> b!145854 (= e!95051 e!95052)))

(declare-fun res!69457 () Bool)

(assert (=> b!145854 (=> res!69457 e!95052)))

(assert (=> b!145854 (= res!69457 (= (h!2384 lt!76628) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355)))))

(declare-fun b!145855 () Bool)

(assert (=> b!145855 (= e!95052 (contains!937 (t!6449 lt!76628) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355)))))

(assert (= (and d!46399 res!69456) b!145854))

(assert (= (and b!145854 (not res!69457)) b!145855))

(assert (=> d!46399 m!175971))

(assert (=> d!46399 m!175793))

(declare-fun m!175977 () Bool)

(assert (=> d!46399 m!175977))

(assert (=> b!145855 m!175793))

(declare-fun m!175979 () Bool)

(assert (=> b!145855 m!175979))

(assert (=> b!145667 d!46399))

(declare-fun d!46401 () Bool)

(declare-fun lt!76725 () Bool)

(assert (=> d!46401 (= lt!76725 (select (content!141 lt!76628) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!95053 () Bool)

(assert (=> d!46401 (= lt!76725 e!95053)))

(declare-fun res!69458 () Bool)

(assert (=> d!46401 (=> (not res!69458) (not e!95053))))

(assert (=> d!46401 (= res!69458 ((_ is Cons!1776) lt!76628))))

(assert (=> d!46401 (= (contains!937 lt!76628 #b0000000000000000000000000000000000000000000000000000000000000000) lt!76725)))

(declare-fun b!145856 () Bool)

(declare-fun e!95054 () Bool)

(assert (=> b!145856 (= e!95053 e!95054)))

(declare-fun res!69459 () Bool)

(assert (=> b!145856 (=> res!69459 e!95054)))

(assert (=> b!145856 (= res!69459 (= (h!2384 lt!76628) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145857 () Bool)

(assert (=> b!145857 (= e!95054 (contains!937 (t!6449 lt!76628) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!46401 res!69458) b!145856))

(assert (= (and b!145856 (not res!69459)) b!145857))

(assert (=> d!46401 m!175971))

(declare-fun m!175981 () Bool)

(assert (=> d!46401 m!175981))

(declare-fun m!175983 () Bool)

(assert (=> b!145857 m!175983))

(assert (=> b!145668 d!46401))

(declare-fun d!46403 () Bool)

(declare-fun e!95060 () Bool)

(assert (=> d!46403 e!95060))

(declare-fun res!69462 () Bool)

(assert (=> d!46403 (=> res!69462 e!95060)))

(declare-fun lt!76736 () Bool)

(assert (=> d!46403 (= res!69462 (not lt!76736))))

(declare-fun lt!76734 () Bool)

(assert (=> d!46403 (= lt!76736 lt!76734)))

(declare-fun lt!76737 () Unit!4611)

(declare-fun e!95059 () Unit!4611)

(assert (=> d!46403 (= lt!76737 e!95059)))

(declare-fun c!27632 () Bool)

(assert (=> d!46403 (= c!27632 lt!76734)))

(declare-fun containsKey!183 (List!1781 (_ BitVec 64)) Bool)

(assert (=> d!46403 (= lt!76734 (containsKey!183 (toList!896 lt!76627) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355)))))

(assert (=> d!46403 (= (contains!938 lt!76627 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355)) lt!76736)))

(declare-fun b!145864 () Bool)

(declare-fun lt!76735 () Unit!4611)

(assert (=> b!145864 (= e!95059 lt!76735)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!132 (List!1781 (_ BitVec 64)) Unit!4611)

(assert (=> b!145864 (= lt!76735 (lemmaContainsKeyImpliesGetValueByKeyDefined!132 (toList!896 lt!76627) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355)))))

(declare-datatypes ((Option!185 0))(
  ( (Some!184 (v!3336 V!3587)) (None!183) )
))
(declare-fun isDefined!133 (Option!185) Bool)

(declare-fun getValueByKey!179 (List!1781 (_ BitVec 64)) Option!185)

(assert (=> b!145864 (isDefined!133 (getValueByKey!179 (toList!896 lt!76627) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355)))))

(declare-fun b!145865 () Bool)

(declare-fun Unit!4614 () Unit!4611)

(assert (=> b!145865 (= e!95059 Unit!4614)))

(declare-fun b!145866 () Bool)

(assert (=> b!145866 (= e!95060 (isDefined!133 (getValueByKey!179 (toList!896 lt!76627) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355))))))

(assert (= (and d!46403 c!27632) b!145864))

(assert (= (and d!46403 (not c!27632)) b!145865))

(assert (= (and d!46403 (not res!69462)) b!145866))

(assert (=> d!46403 m!175793))

(declare-fun m!175985 () Bool)

(assert (=> d!46403 m!175985))

(assert (=> b!145864 m!175793))

(declare-fun m!175987 () Bool)

(assert (=> b!145864 m!175987))

(assert (=> b!145864 m!175793))

(declare-fun m!175989 () Bool)

(assert (=> b!145864 m!175989))

(assert (=> b!145864 m!175989))

(declare-fun m!175991 () Bool)

(assert (=> b!145864 m!175991))

(assert (=> b!145866 m!175793))

(assert (=> b!145866 m!175989))

(assert (=> b!145866 m!175989))

(assert (=> b!145866 m!175991))

(assert (=> b!145673 d!46403))

(declare-fun b!145947 () Bool)

(declare-fun e!95110 () tuple2!2710)

(declare-fun e!95105 () tuple2!2710)

(assert (=> b!145947 (= e!95110 e!95105)))

(declare-datatypes ((SeekEntryResult!293 0))(
  ( (MissingZero!293 (index!3339 (_ BitVec 32))) (Found!293 (index!3340 (_ BitVec 32))) (Intermediate!293 (undefined!1105 Bool) (index!3341 (_ BitVec 32)) (x!16614 (_ BitVec 32))) (Undefined!293) (MissingVacant!293 (index!3342 (_ BitVec 32))) )
))
(declare-fun lt!76805 () SeekEntryResult!293)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4952 (_ BitVec 32)) SeekEntryResult!293)

(assert (=> b!145947 (= lt!76805 (seekEntryOrOpen!0 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) (_keys!4771 newMap!16) (mask!7372 newMap!16)))))

(declare-fun c!27665 () Bool)

(assert (=> b!145947 (= c!27665 ((_ is Undefined!293) lt!76805))))

(declare-fun lt!76813 () (_ BitVec 32))

(declare-fun bm!16335 () Bool)

(declare-fun lt!76794 () array!4954)

(declare-fun c!27663 () Bool)

(declare-fun c!27659 () Bool)

(declare-fun call!16342 () ListLongMap!1761)

(assert (=> bm!16335 (= call!16342 (getCurrentListMap!562 (_keys!4771 newMap!16) (ite (or c!27659 c!27665) (_values!2985 newMap!16) lt!76794) (mask!7372 newMap!16) (ite c!27659 (ite c!27663 (extraKeys!2747 newMap!16) lt!76813) (extraKeys!2747 newMap!16)) (zeroValue!2847 newMap!16) (ite c!27659 (ite c!27663 (minValue!2847 newMap!16) (get!1560 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2847 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!3002 newMap!16)))))

(declare-fun b!145948 () Bool)

(declare-fun e!95104 () Unit!4611)

(declare-fun Unit!4615 () Unit!4611)

(assert (=> b!145948 (= e!95104 Unit!4615)))

(declare-fun lt!76804 () Unit!4611)

(declare-fun call!16344 () Unit!4611)

(assert (=> b!145948 (= lt!76804 call!16344)))

(declare-fun lt!76793 () SeekEntryResult!293)

(declare-fun call!16352 () SeekEntryResult!293)

(assert (=> b!145948 (= lt!76793 call!16352)))

(declare-fun c!27670 () Bool)

(assert (=> b!145948 (= c!27670 ((_ is MissingZero!293) lt!76793))))

(declare-fun e!95117 () Bool)

(assert (=> b!145948 e!95117))

(declare-fun lt!76809 () Unit!4611)

(assert (=> b!145948 (= lt!76809 lt!76804)))

(assert (=> b!145948 false))

(declare-fun b!145949 () Bool)

(declare-fun res!69495 () Bool)

(declare-fun call!16350 () Bool)

(assert (=> b!145949 (= res!69495 call!16350)))

(declare-fun e!95107 () Bool)

(assert (=> b!145949 (=> (not res!69495) (not e!95107))))

(declare-fun bm!16336 () Bool)

(declare-fun call!16341 () Bool)

(assert (=> bm!16336 (= call!16350 call!16341)))

(declare-fun bm!16337 () Bool)

(declare-fun call!16340 () Bool)

(declare-fun call!16355 () Bool)

(assert (=> bm!16337 (= call!16340 call!16355)))

(declare-fun b!145950 () Bool)

(declare-fun e!95111 () Unit!4611)

(declare-fun lt!76797 () Unit!4611)

(assert (=> b!145950 (= e!95111 lt!76797)))

(assert (=> b!145950 (= lt!76797 call!16344)))

(declare-fun lt!76803 () SeekEntryResult!293)

(declare-fun call!16347 () SeekEntryResult!293)

(assert (=> b!145950 (= lt!76803 call!16347)))

(declare-fun c!27667 () Bool)

(assert (=> b!145950 (= c!27667 ((_ is MissingZero!293) lt!76803))))

(declare-fun e!95119 () Bool)

(assert (=> b!145950 e!95119))

(declare-fun b!145951 () Bool)

(declare-fun c!27662 () Bool)

(assert (=> b!145951 (= c!27662 ((_ is MissingVacant!293) lt!76793))))

(declare-fun e!95112 () Bool)

(assert (=> b!145951 (= e!95117 e!95112)))

(declare-fun bm!16338 () Bool)

(declare-fun lt!76806 () SeekEntryResult!293)

(declare-fun c!27660 () Bool)

(declare-fun lt!76795 () SeekEntryResult!293)

(declare-fun c!27666 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!16338 (= call!16341 (inRange!0 (ite c!27665 (ite c!27666 (index!3340 lt!76806) (ite c!27667 (index!3339 lt!76803) (index!3342 lt!76803))) (ite c!27660 (index!3340 lt!76795) (ite c!27670 (index!3339 lt!76793) (index!3342 lt!76793)))) (mask!7372 newMap!16)))))

(declare-fun b!145952 () Bool)

(declare-fun c!27669 () Bool)

(assert (=> b!145952 (= c!27669 ((_ is MissingVacant!293) lt!76803))))

(declare-fun e!95114 () Bool)

(assert (=> b!145952 (= e!95119 e!95114)))

(declare-fun b!145953 () Bool)

(declare-fun e!95121 () tuple2!2710)

(declare-fun lt!76796 () tuple2!2710)

(assert (=> b!145953 (= e!95121 (tuple2!2711 (_1!1365 lt!76796) (_2!1365 lt!76796)))))

(declare-fun call!16357 () tuple2!2710)

(assert (=> b!145953 (= lt!76796 call!16357)))

(declare-fun call!16343 () ListLongMap!1761)

(declare-fun call!16359 () Bool)

(declare-fun bm!16339 () Bool)

(assert (=> bm!16339 (= call!16359 (contains!938 call!16343 (ite c!27665 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) (select (arr!2338 (_keys!4771 newMap!16)) (index!3340 lt!76805)))))))

(declare-fun e!95122 () ListLongMap!1761)

(declare-fun call!16360 () ListLongMap!1761)

(declare-fun bm!16340 () Bool)

(assert (=> bm!16340 (= call!16360 (+!178 e!95122 (ite c!27659 (ite c!27663 (tuple2!2709 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1560 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2709 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1560 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2709 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) (get!1560 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!27661 () Bool)

(assert (=> bm!16340 (= c!27661 c!27659)))

(declare-fun bm!16341 () Bool)

(declare-fun call!16353 () Bool)

(declare-fun call!16339 () Bool)

(assert (=> bm!16341 (= call!16353 call!16339)))

(declare-fun call!16349 () ListLongMap!1761)

(declare-fun b!145954 () Bool)

(declare-fun call!16354 () ListLongMap!1761)

(assert (=> b!145954 (= e!95122 (ite c!27663 call!16354 call!16349))))

(declare-fun b!145955 () Bool)

(declare-fun res!69499 () Bool)

(assert (=> b!145955 (= res!69499 (= (select (arr!2338 (_keys!4771 newMap!16)) (index!3342 lt!76793)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!95109 () Bool)

(assert (=> b!145955 (=> (not res!69499) (not e!95109))))

(declare-fun b!145956 () Bool)

(assert (=> b!145956 (= e!95107 (= (select (arr!2338 (_keys!4771 newMap!16)) (index!3340 lt!76795)) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355)))))

(declare-fun bm!16342 () Bool)

(declare-fun lt!76812 () (_ BitVec 32))

(declare-fun call!16338 () ListLongMap!1761)

(assert (=> bm!16342 (= call!16338 (getCurrentListMap!562 (_keys!4771 newMap!16) (ite c!27659 (_values!2985 newMap!16) (array!4955 (store (arr!2339 (_values!2985 newMap!16)) (index!3340 lt!76805) (ValueCellFull!1134 (get!1560 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2615 (_values!2985 newMap!16)))) (mask!7372 newMap!16) (ite (and c!27659 c!27663) lt!76812 (extraKeys!2747 newMap!16)) (ite (and c!27659 c!27663) (get!1560 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2847 newMap!16)) (minValue!2847 newMap!16) #b00000000000000000000000000000000 (defaultEntry!3002 newMap!16)))))

(declare-fun bm!16343 () Bool)

(assert (=> bm!16343 (= call!16343 call!16342)))

(declare-fun e!95115 () Bool)

(declare-fun b!145957 () Bool)

(assert (=> b!145957 (= e!95115 (= (select (arr!2338 (_keys!4771 newMap!16)) (index!3340 lt!76806)) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355)))))

(declare-fun call!16356 () ListLongMap!1761)

(declare-fun call!16346 () ListLongMap!1761)

(declare-fun e!95108 () Bool)

(declare-fun b!145958 () Bool)

(assert (=> b!145958 (= e!95108 (= call!16356 (+!178 call!16346 (tuple2!2709 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) (get!1560 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun bm!16344 () Bool)

(assert (=> bm!16344 (= call!16354 call!16342)))

(declare-fun b!145959 () Bool)

(assert (=> b!145959 (= e!95122 (getCurrentListMap!562 (_keys!4771 newMap!16) (_values!2985 newMap!16) (mask!7372 newMap!16) (extraKeys!2747 newMap!16) (zeroValue!2847 newMap!16) (minValue!2847 newMap!16) #b00000000000000000000000000000000 (defaultEntry!3002 newMap!16)))))

(declare-fun b!145960 () Bool)

(declare-fun e!95103 () Bool)

(assert (=> b!145960 (= e!95114 e!95103)))

(declare-fun res!69501 () Bool)

(assert (=> b!145960 (= res!69501 call!16340)))

(assert (=> b!145960 (=> (not res!69501) (not e!95103))))

(declare-fun b!145961 () Bool)

(declare-fun res!69496 () Bool)

(declare-fun e!95116 () Bool)

(assert (=> b!145961 (=> (not res!69496) (not e!95116))))

(assert (=> b!145961 (= res!69496 (= (select (arr!2338 (_keys!4771 newMap!16)) (index!3339 lt!76793)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!46405 () Bool)

(declare-fun e!95113 () Bool)

(assert (=> d!46405 e!95113))

(declare-fun res!69498 () Bool)

(assert (=> d!46405 (=> (not res!69498) (not e!95113))))

(declare-fun lt!76816 () tuple2!2710)

(assert (=> d!46405 (= res!69498 (valid!570 (_2!1365 lt!76816)))))

(assert (=> d!46405 (= lt!76816 e!95110)))

(assert (=> d!46405 (= c!27659 (= (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) (bvneg (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355))))))

(assert (=> d!46405 (valid!570 newMap!16)))

(assert (=> d!46405 (= (update!215 newMap!16 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) (get!1560 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) lt!76816)))

(declare-fun b!145962 () Bool)

(declare-fun res!69502 () Bool)

(declare-fun e!95123 () Bool)

(assert (=> b!145962 (=> (not res!69502) (not e!95123))))

(assert (=> b!145962 (= res!69502 (= (select (arr!2338 (_keys!4771 newMap!16)) (index!3339 lt!76803)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145963 () Bool)

(declare-fun e!95120 () Bool)

(assert (=> b!145963 (= e!95120 (= call!16356 call!16346))))

(declare-fun b!145964 () Bool)

(declare-fun call!16345 () Bool)

(assert (=> b!145964 (= e!95123 (not call!16345))))

(declare-fun b!145965 () Bool)

(assert (=> b!145965 (= e!95116 (not call!16353))))

(declare-fun b!145966 () Bool)

(assert (=> b!145966 (= e!95114 ((_ is Undefined!293) lt!76803))))

(declare-fun b!145967 () Bool)

(assert (=> b!145967 (= e!95112 ((_ is Undefined!293) lt!76793))))

(declare-fun b!145968 () Bool)

(declare-fun e!95106 () tuple2!2710)

(assert (=> b!145968 (= e!95121 e!95106)))

(declare-fun c!27668 () Bool)

(assert (=> b!145968 (= c!27668 ((_ is MissingZero!293) lt!76805))))

(declare-fun b!145969 () Bool)

(declare-fun c!27671 () Bool)

(assert (=> b!145969 (= c!27671 ((_ is MissingVacant!293) lt!76805))))

(assert (=> b!145969 (= e!95105 e!95121)))

(declare-fun bm!16345 () Bool)

(assert (=> bm!16345 (= call!16345 call!16339)))

(declare-fun bm!16346 () Bool)

(assert (=> bm!16346 (= call!16356 (map!1453 (_2!1365 lt!76816)))))

(declare-fun call!16351 () SeekEntryResult!293)

(declare-fun bm!16347 () Bool)

(assert (=> bm!16347 (= call!16351 (seekEntryOrOpen!0 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) (_keys!4771 newMap!16) (mask!7372 newMap!16)))))

(declare-fun b!145970 () Bool)

(declare-fun lt!76815 () Unit!4611)

(declare-fun lt!76792 () Unit!4611)

(assert (=> b!145970 (= lt!76815 lt!76792)))

(assert (=> b!145970 call!16359))

(declare-fun lemmaValidKeyInArrayIsInListMap!127 (array!4952 array!4954 (_ BitVec 32) (_ BitVec 32) V!3587 V!3587 (_ BitVec 32) Int) Unit!4611)

(assert (=> b!145970 (= lt!76792 (lemmaValidKeyInArrayIsInListMap!127 (_keys!4771 newMap!16) lt!76794 (mask!7372 newMap!16) (extraKeys!2747 newMap!16) (zeroValue!2847 newMap!16) (minValue!2847 newMap!16) (index!3340 lt!76805) (defaultEntry!3002 newMap!16)))))

(assert (=> b!145970 (= lt!76794 (array!4955 (store (arr!2339 (_values!2985 newMap!16)) (index!3340 lt!76805) (ValueCellFull!1134 (get!1560 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2615 (_values!2985 newMap!16))))))

(declare-fun lt!76817 () Unit!4611)

(declare-fun lt!76818 () Unit!4611)

(assert (=> b!145970 (= lt!76817 lt!76818)))

(assert (=> b!145970 (= call!16360 call!16338)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!69 (array!4952 array!4954 (_ BitVec 32) (_ BitVec 32) V!3587 V!3587 (_ BitVec 32) (_ BitVec 64) V!3587 Int) Unit!4611)

(assert (=> b!145970 (= lt!76818 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!69 (_keys!4771 newMap!16) (_values!2985 newMap!16) (mask!7372 newMap!16) (extraKeys!2747 newMap!16) (zeroValue!2847 newMap!16) (minValue!2847 newMap!16) (index!3340 lt!76805) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) (get!1560 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!3002 newMap!16)))))

(declare-fun lt!76807 () Unit!4611)

(assert (=> b!145970 (= lt!76807 e!95104)))

(assert (=> b!145970 (= c!27660 (contains!938 (getCurrentListMap!562 (_keys!4771 newMap!16) (_values!2985 newMap!16) (mask!7372 newMap!16) (extraKeys!2747 newMap!16) (zeroValue!2847 newMap!16) (minValue!2847 newMap!16) #b00000000000000000000000000000000 (defaultEntry!3002 newMap!16)) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355)))))

(assert (=> b!145970 (= e!95106 (tuple2!2711 true (LongMapFixedSize!1177 (defaultEntry!3002 newMap!16) (mask!7372 newMap!16) (extraKeys!2747 newMap!16) (zeroValue!2847 newMap!16) (minValue!2847 newMap!16) (_size!637 newMap!16) (_keys!4771 newMap!16) (array!4955 (store (arr!2339 (_values!2985 newMap!16)) (index!3340 lt!76805) (ValueCellFull!1134 (get!1560 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2615 (_values!2985 newMap!16))) (_vacant!637 newMap!16))))))

(declare-fun bm!16348 () Bool)

(assert (=> bm!16348 (= call!16349 call!16338)))

(declare-fun b!145971 () Bool)

(declare-fun lt!76811 () Unit!4611)

(declare-fun lt!76814 () Unit!4611)

(assert (=> b!145971 (= lt!76811 lt!76814)))

(declare-fun call!16358 () ListLongMap!1761)

(assert (=> b!145971 (= call!16358 call!16354)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!69 (array!4952 array!4954 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3587 V!3587 V!3587 Int) Unit!4611)

(assert (=> b!145971 (= lt!76814 (lemmaChangeLongMinValueKeyThenAddPairToListMap!69 (_keys!4771 newMap!16) (_values!2985 newMap!16) (mask!7372 newMap!16) (extraKeys!2747 newMap!16) lt!76813 (zeroValue!2847 newMap!16) (minValue!2847 newMap!16) (get!1560 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!3002 newMap!16)))))

(assert (=> b!145971 (= lt!76813 (bvor (extraKeys!2747 newMap!16) #b00000000000000000000000000000010))))

(declare-fun e!95118 () tuple2!2710)

(assert (=> b!145971 (= e!95118 (tuple2!2711 true (LongMapFixedSize!1177 (defaultEntry!3002 newMap!16) (mask!7372 newMap!16) (bvor (extraKeys!2747 newMap!16) #b00000000000000000000000000000010) (zeroValue!2847 newMap!16) (get!1560 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (_size!637 newMap!16) (_keys!4771 newMap!16) (_values!2985 newMap!16) (_vacant!637 newMap!16))))))

(declare-fun bm!16349 () Bool)

(assert (=> bm!16349 (= call!16347 call!16351)))

(declare-fun b!145972 () Bool)

(assert (=> b!145972 (= e!95120 e!95108)))

(declare-fun res!69494 () Bool)

(assert (=> b!145972 (= res!69494 (contains!938 call!16356 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355)))))

(assert (=> b!145972 (=> (not res!69494) (not e!95108))))

(declare-fun b!145973 () Bool)

(declare-fun Unit!4616 () Unit!4611)

(assert (=> b!145973 (= e!95111 Unit!4616)))

(declare-fun lt!76799 () Unit!4611)

(declare-fun call!16361 () Unit!4611)

(assert (=> b!145973 (= lt!76799 call!16361)))

(assert (=> b!145973 (= lt!76806 call!16347)))

(declare-fun res!69493 () Bool)

(assert (=> b!145973 (= res!69493 ((_ is Found!293) lt!76806))))

(assert (=> b!145973 (=> (not res!69493) (not e!95115))))

(assert (=> b!145973 e!95115))

(declare-fun lt!76802 () Unit!4611)

(assert (=> b!145973 (= lt!76802 lt!76799)))

(assert (=> b!145973 false))

(declare-fun b!145974 () Bool)

(assert (=> b!145974 (= e!95113 e!95120)))

(declare-fun c!27664 () Bool)

(assert (=> b!145974 (= c!27664 (_1!1365 lt!76816))))

(declare-fun bm!16350 () Bool)

(assert (=> bm!16350 (= call!16355 call!16341)))

(declare-fun bm!16351 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!69 (array!4952 array!4954 (_ BitVec 32) (_ BitVec 32) V!3587 V!3587 (_ BitVec 64) Int) Unit!4611)

(assert (=> bm!16351 (= call!16361 (lemmaInListMapThenSeekEntryOrOpenFindsIt!69 (_keys!4771 newMap!16) (_values!2985 newMap!16) (mask!7372 newMap!16) (extraKeys!2747 newMap!16) (zeroValue!2847 newMap!16) (minValue!2847 newMap!16) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) (defaultEntry!3002 newMap!16)))))

(declare-fun b!145975 () Bool)

(declare-fun res!69491 () Bool)

(assert (=> b!145975 (=> (not res!69491) (not e!95116))))

(declare-fun call!16348 () Bool)

(assert (=> b!145975 (= res!69491 call!16348)))

(assert (=> b!145975 (= e!95117 e!95116)))

(declare-fun b!145976 () Bool)

(declare-fun res!69504 () Bool)

(assert (=> b!145976 (=> (not res!69504) (not e!95123))))

(assert (=> b!145976 (= res!69504 call!16340)))

(assert (=> b!145976 (= e!95119 e!95123)))

(declare-fun b!145977 () Bool)

(declare-fun lt!76801 () Unit!4611)

(assert (=> b!145977 (= e!95104 lt!76801)))

(assert (=> b!145977 (= lt!76801 call!16361)))

(assert (=> b!145977 (= lt!76795 call!16352)))

(declare-fun res!69497 () Bool)

(assert (=> b!145977 (= res!69497 ((_ is Found!293) lt!76795))))

(assert (=> b!145977 (=> (not res!69497) (not e!95107))))

(assert (=> b!145977 e!95107))

(declare-fun b!145978 () Bool)

(assert (=> b!145978 (= e!95112 e!95109)))

(declare-fun res!69492 () Bool)

(assert (=> b!145978 (= res!69492 call!16348)))

(assert (=> b!145978 (=> (not res!69492) (not e!95109))))

(declare-fun b!145979 () Bool)

(assert (=> b!145979 (= e!95110 e!95118)))

(assert (=> b!145979 (= c!27663 (= (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!145980 () Bool)

(declare-fun res!69503 () Bool)

(assert (=> b!145980 (= res!69503 (= (select (arr!2338 (_keys!4771 newMap!16)) (index!3342 lt!76803)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!145980 (=> (not res!69503) (not e!95103))))

(declare-fun bm!16352 () Bool)

(assert (=> bm!16352 (= call!16358 call!16360)))

(declare-fun bm!16353 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!69 (array!4952 array!4954 (_ BitVec 32) (_ BitVec 32) V!3587 V!3587 (_ BitVec 64) Int) Unit!4611)

(assert (=> bm!16353 (= call!16344 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!69 (_keys!4771 newMap!16) (_values!2985 newMap!16) (mask!7372 newMap!16) (extraKeys!2747 newMap!16) (zeroValue!2847 newMap!16) (minValue!2847 newMap!16) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) (defaultEntry!3002 newMap!16)))))

(declare-fun bm!16354 () Bool)

(assert (=> bm!16354 (= call!16352 call!16351)))

(declare-fun b!145981 () Bool)

(assert (=> b!145981 (= e!95103 (not call!16345))))

(declare-fun b!145982 () Bool)

(declare-fun lt!76800 () tuple2!2710)

(assert (=> b!145982 (= lt!76800 call!16357)))

(assert (=> b!145982 (= e!95106 (tuple2!2711 (_1!1365 lt!76800) (_2!1365 lt!76800)))))

(declare-fun bm!16355 () Bool)

(assert (=> bm!16355 (= call!16346 (map!1453 newMap!16))))

(declare-fun b!145983 () Bool)

(assert (=> b!145983 (= e!95109 (not call!16353))))

(declare-fun b!145984 () Bool)

(declare-fun res!69500 () Bool)

(assert (=> b!145984 (= res!69500 call!16355)))

(assert (=> b!145984 (=> (not res!69500) (not e!95115))))

(declare-fun b!145985 () Bool)

(declare-fun lt!76798 () Unit!4611)

(assert (=> b!145985 (= lt!76798 e!95111)))

(assert (=> b!145985 (= c!27666 call!16359)))

(assert (=> b!145985 (= e!95105 (tuple2!2711 false newMap!16))))

(declare-fun bm!16356 () Bool)

(declare-fun updateHelperNewKey!69 (LongMapFixedSize!1176 (_ BitVec 64) V!3587 (_ BitVec 32)) tuple2!2710)

(assert (=> bm!16356 (= call!16357 (updateHelperNewKey!69 newMap!16 (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) (get!1560 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!27671 (index!3342 lt!76805) (index!3339 lt!76805))))))

(declare-fun bm!16357 () Bool)

(assert (=> bm!16357 (= call!16339 (arrayContainsKey!0 (_keys!4771 newMap!16) (select (arr!2338 (_keys!4771 (v!3331 (underlying!491 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun bm!16358 () Bool)

(assert (=> bm!16358 (= call!16348 call!16350)))

(declare-fun b!145986 () Bool)

(declare-fun lt!76810 () Unit!4611)

(declare-fun lt!76808 () Unit!4611)

(assert (=> b!145986 (= lt!76810 lt!76808)))

(assert (=> b!145986 (= call!16358 call!16349)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!69 (array!4952 array!4954 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3587 V!3587 V!3587 Int) Unit!4611)

(assert (=> b!145986 (= lt!76808 (lemmaChangeZeroKeyThenAddPairToListMap!69 (_keys!4771 newMap!16) (_values!2985 newMap!16) (mask!7372 newMap!16) (extraKeys!2747 newMap!16) lt!76812 (zeroValue!2847 newMap!16) (get!1560 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2847 newMap!16) (defaultEntry!3002 newMap!16)))))

(assert (=> b!145986 (= lt!76812 (bvor (extraKeys!2747 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!145986 (= e!95118 (tuple2!2711 true (LongMapFixedSize!1177 (defaultEntry!3002 newMap!16) (mask!7372 newMap!16) (bvor (extraKeys!2747 newMap!16) #b00000000000000000000000000000001) (get!1560 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2847 newMap!16) (_size!637 newMap!16) (_keys!4771 newMap!16) (_values!2985 newMap!16) (_vacant!637 newMap!16))))))

(assert (= (and d!46405 c!27659) b!145979))

(assert (= (and d!46405 (not c!27659)) b!145947))

(assert (= (and b!145979 c!27663) b!145986))

(assert (= (and b!145979 (not c!27663)) b!145971))

(assert (= (or b!145986 b!145971) bm!16344))

(assert (= (or b!145986 b!145971) bm!16348))

(assert (= (or b!145986 b!145971) bm!16352))

(assert (= (and b!145947 c!27665) b!145985))

(assert (= (and b!145947 (not c!27665)) b!145969))

(assert (= (and b!145985 c!27666) b!145973))

(assert (= (and b!145985 (not c!27666)) b!145950))

(assert (= (and b!145973 res!69493) b!145984))

(assert (= (and b!145984 res!69500) b!145957))

(assert (= (and b!145950 c!27667) b!145976))

(assert (= (and b!145950 (not c!27667)) b!145952))

(assert (= (and b!145976 res!69504) b!145962))

(assert (= (and b!145962 res!69502) b!145964))

(assert (= (and b!145952 c!27669) b!145960))

(assert (= (and b!145952 (not c!27669)) b!145966))

(assert (= (and b!145960 res!69501) b!145980))

(assert (= (and b!145980 res!69503) b!145981))

(assert (= (or b!145976 b!145960) bm!16337))

(assert (= (or b!145964 b!145981) bm!16345))

(assert (= (or b!145984 bm!16337) bm!16350))

(assert (= (or b!145973 b!145950) bm!16349))

(assert (= (and b!145969 c!27671) b!145953))

(assert (= (and b!145969 (not c!27671)) b!145968))

(assert (= (and b!145968 c!27668) b!145982))

(assert (= (and b!145968 (not c!27668)) b!145970))

(assert (= (and b!145970 c!27660) b!145977))

(assert (= (and b!145970 (not c!27660)) b!145948))

(assert (= (and b!145977 res!69497) b!145949))

(assert (= (and b!145949 res!69495) b!145956))

(assert (= (and b!145948 c!27670) b!145975))

(assert (= (and b!145948 (not c!27670)) b!145951))

(assert (= (and b!145975 res!69491) b!145961))

(assert (= (and b!145961 res!69496) b!145965))

(assert (= (and b!145951 c!27662) b!145978))

(assert (= (and b!145951 (not c!27662)) b!145967))

(assert (= (and b!145978 res!69492) b!145955))

(assert (= (and b!145955 res!69499) b!145983))

(assert (= (or b!145975 b!145978) bm!16358))

(assert (= (or b!145965 b!145983) bm!16341))

(assert (= (or b!145949 bm!16358) bm!16336))

(assert (= (or b!145977 b!145948) bm!16354))

(assert (= (or b!145953 b!145982) bm!16356))

(assert (= (or b!145973 b!145977) bm!16351))

(assert (= (or bm!16345 bm!16341) bm!16357))

(assert (= (or bm!16350 bm!16336) bm!16338))

(assert (= (or bm!16349 bm!16354) bm!16347))

(assert (= (or b!145985 b!145970) bm!16343))

(assert (= (or b!145950 b!145948) bm!16353))

(assert (= (or b!145985 b!145970) bm!16339))

(assert (= (or bm!16344 bm!16343) bm!16335))

(assert (= (or bm!16348 b!145970) bm!16342))

(assert (= (or bm!16352 b!145970) bm!16340))

(assert (= (and bm!16340 c!27661) b!145954))

(assert (= (and bm!16340 (not c!27661)) b!145959))

(assert (= (and d!46405 res!69498) b!145974))

(assert (= (and b!145974 c!27664) b!145972))

(assert (= (and b!145974 (not c!27664)) b!145963))

(assert (= (and b!145972 res!69494) b!145958))

(assert (= (or b!145958 b!145963) bm!16355))

(assert (= (or b!145972 b!145958 b!145963) bm!16346))

(assert (=> b!145970 m!175917))

(assert (=> b!145970 m!175793))

(declare-fun m!175993 () Bool)

(assert (=> b!145970 m!175993))

(assert (=> b!145970 m!175793))

(assert (=> b!145970 m!175833))

(declare-fun m!175995 () Bool)

(assert (=> b!145970 m!175995))

(declare-fun m!175997 () Bool)

(assert (=> b!145970 m!175997))

(assert (=> b!145970 m!175917))

(declare-fun m!175999 () Bool)

(assert (=> b!145970 m!175999))

(declare-fun m!176001 () Bool)

(assert (=> bm!16339 m!176001))

(declare-fun m!176003 () Bool)

(assert (=> bm!16339 m!176003))

(declare-fun m!176005 () Bool)

(assert (=> b!145962 m!176005))

(assert (=> bm!16351 m!175793))

(declare-fun m!176007 () Bool)

(assert (=> bm!16351 m!176007))

(declare-fun m!176009 () Bool)

(assert (=> b!145958 m!176009))

(assert (=> bm!16342 m!175997))

(declare-fun m!176011 () Bool)

(assert (=> bm!16342 m!176011))

(declare-fun m!176013 () Bool)

(assert (=> b!145956 m!176013))

(declare-fun m!176015 () Bool)

(assert (=> bm!16340 m!176015))

(assert (=> b!145959 m!175917))

(declare-fun m!176017 () Bool)

(assert (=> b!145955 m!176017))

(assert (=> bm!16355 m!175801))

(assert (=> bm!16356 m!175793))

(assert (=> bm!16356 m!175833))

(declare-fun m!176019 () Bool)

(assert (=> bm!16356 m!176019))

(assert (=> bm!16347 m!175793))

(declare-fun m!176021 () Bool)

(assert (=> bm!16347 m!176021))

(declare-fun m!176023 () Bool)

(assert (=> d!46405 m!176023))

(assert (=> d!46405 m!175791))

(declare-fun m!176025 () Bool)

(assert (=> b!145961 m!176025))

(assert (=> b!145947 m!175793))

(assert (=> b!145947 m!176021))

(assert (=> b!145986 m!175833))

(declare-fun m!176027 () Bool)

(assert (=> b!145986 m!176027))

(assert (=> bm!16357 m!175793))

(declare-fun m!176029 () Bool)

(assert (=> bm!16357 m!176029))

(declare-fun m!176031 () Bool)

(assert (=> b!145957 m!176031))

(declare-fun m!176033 () Bool)

(assert (=> b!145980 m!176033))

(assert (=> bm!16353 m!175793))

(declare-fun m!176035 () Bool)

(assert (=> bm!16353 m!176035))

(declare-fun m!176037 () Bool)

(assert (=> bm!16335 m!176037))

(declare-fun m!176039 () Bool)

(assert (=> bm!16346 m!176039))

(assert (=> b!145971 m!175833))

(declare-fun m!176041 () Bool)

(assert (=> b!145971 m!176041))

(declare-fun m!176043 () Bool)

(assert (=> bm!16338 m!176043))

(assert (=> b!145972 m!175793))

(declare-fun m!176045 () Bool)

(assert (=> b!145972 m!176045))

(assert (=> b!145673 d!46405))

(declare-fun d!46407 () Bool)

(declare-fun c!27674 () Bool)

(assert (=> d!46407 (= c!27674 ((_ is ValueCellFull!1134) (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355)))))

(declare-fun e!95126 () V!3587)

(assert (=> d!46407 (= (get!1560 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!95126)))

(declare-fun b!145991 () Bool)

(declare-fun get!1562 (ValueCell!1134 V!3587) V!3587)

(assert (=> b!145991 (= e!95126 (get!1562 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!145992 () Bool)

(declare-fun get!1563 (ValueCell!1134 V!3587) V!3587)

(assert (=> b!145992 (= e!95126 (get!1563 (select (arr!2339 (_values!2985 (v!3331 (underlying!491 thiss!992)))) from!355) (dynLambda!448 (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!46407 c!27674) b!145991))

(assert (= (and d!46407 (not c!27674)) b!145992))

(assert (=> b!145991 m!175829))

(assert (=> b!145991 m!175831))

(declare-fun m!176047 () Bool)

(assert (=> b!145991 m!176047))

(assert (=> b!145992 m!175829))

(assert (=> b!145992 m!175831))

(declare-fun m!176049 () Bool)

(assert (=> b!145992 m!176049))

(assert (=> b!145673 d!46407))

(declare-fun d!46409 () Bool)

(declare-fun res!69511 () Bool)

(declare-fun e!95129 () Bool)

(assert (=> d!46409 (=> (not res!69511) (not e!95129))))

(declare-fun simpleValid!99 (LongMapFixedSize!1176) Bool)

(assert (=> d!46409 (= res!69511 (simpleValid!99 newMap!16))))

(assert (=> d!46409 (= (valid!570 newMap!16) e!95129)))

(declare-fun b!145999 () Bool)

(declare-fun res!69512 () Bool)

(assert (=> b!145999 (=> (not res!69512) (not e!95129))))

(declare-fun arrayCountValidKeys!0 (array!4952 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!145999 (= res!69512 (= (arrayCountValidKeys!0 (_keys!4771 newMap!16) #b00000000000000000000000000000000 (size!2614 (_keys!4771 newMap!16))) (_size!637 newMap!16)))))

(declare-fun b!146000 () Bool)

(declare-fun res!69513 () Bool)

(assert (=> b!146000 (=> (not res!69513) (not e!95129))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4952 (_ BitVec 32)) Bool)

(assert (=> b!146000 (= res!69513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4771 newMap!16) (mask!7372 newMap!16)))))

(declare-fun b!146001 () Bool)

(assert (=> b!146001 (= e!95129 (arrayNoDuplicates!0 (_keys!4771 newMap!16) #b00000000000000000000000000000000 Nil!1777))))

(assert (= (and d!46409 res!69511) b!145999))

(assert (= (and b!145999 res!69512) b!146000))

(assert (= (and b!146000 res!69513) b!146001))

(declare-fun m!176051 () Bool)

(assert (=> d!46409 m!176051))

(declare-fun m!176053 () Bool)

(assert (=> b!145999 m!176053))

(declare-fun m!176055 () Bool)

(assert (=> b!146000 m!176055))

(declare-fun m!176057 () Bool)

(assert (=> b!146001 m!176057))

(assert (=> b!145665 d!46409))

(declare-fun b!146008 () Bool)

(declare-fun e!95135 () Bool)

(assert (=> b!146008 (= e!95135 tp_is_empty!2955)))

(declare-fun b!146009 () Bool)

(declare-fun e!95134 () Bool)

(assert (=> b!146009 (= e!95134 tp_is_empty!2955)))

(declare-fun condMapEmpty!4943 () Bool)

(declare-fun mapDefault!4943 () ValueCell!1134)

(assert (=> mapNonEmpty!4934 (= condMapEmpty!4943 (= mapRest!4933 ((as const (Array (_ BitVec 32) ValueCell!1134)) mapDefault!4943)))))

(declare-fun mapRes!4943 () Bool)

(assert (=> mapNonEmpty!4934 (= tp!11732 (and e!95134 mapRes!4943))))

(declare-fun mapIsEmpty!4943 () Bool)

(assert (=> mapIsEmpty!4943 mapRes!4943))

(declare-fun mapNonEmpty!4943 () Bool)

(declare-fun tp!11747 () Bool)

(assert (=> mapNonEmpty!4943 (= mapRes!4943 (and tp!11747 e!95135))))

(declare-fun mapRest!4943 () (Array (_ BitVec 32) ValueCell!1134))

(declare-fun mapValue!4943 () ValueCell!1134)

(declare-fun mapKey!4943 () (_ BitVec 32))

(assert (=> mapNonEmpty!4943 (= mapRest!4933 (store mapRest!4943 mapKey!4943 mapValue!4943))))

(assert (= (and mapNonEmpty!4934 condMapEmpty!4943) mapIsEmpty!4943))

(assert (= (and mapNonEmpty!4934 (not condMapEmpty!4943)) mapNonEmpty!4943))

(assert (= (and mapNonEmpty!4943 ((_ is ValueCellFull!1134) mapValue!4943)) b!146008))

(assert (= (and mapNonEmpty!4934 ((_ is ValueCellFull!1134) mapDefault!4943)) b!146009))

(declare-fun m!176059 () Bool)

(assert (=> mapNonEmpty!4943 m!176059))

(declare-fun b!146010 () Bool)

(declare-fun e!95137 () Bool)

(assert (=> b!146010 (= e!95137 tp_is_empty!2955)))

(declare-fun b!146011 () Bool)

(declare-fun e!95136 () Bool)

(assert (=> b!146011 (= e!95136 tp_is_empty!2955)))

(declare-fun condMapEmpty!4944 () Bool)

(declare-fun mapDefault!4944 () ValueCell!1134)

(assert (=> mapNonEmpty!4933 (= condMapEmpty!4944 (= mapRest!4934 ((as const (Array (_ BitVec 32) ValueCell!1134)) mapDefault!4944)))))

(declare-fun mapRes!4944 () Bool)

(assert (=> mapNonEmpty!4933 (= tp!11730 (and e!95136 mapRes!4944))))

(declare-fun mapIsEmpty!4944 () Bool)

(assert (=> mapIsEmpty!4944 mapRes!4944))

(declare-fun mapNonEmpty!4944 () Bool)

(declare-fun tp!11748 () Bool)

(assert (=> mapNonEmpty!4944 (= mapRes!4944 (and tp!11748 e!95137))))

(declare-fun mapValue!4944 () ValueCell!1134)

(declare-fun mapRest!4944 () (Array (_ BitVec 32) ValueCell!1134))

(declare-fun mapKey!4944 () (_ BitVec 32))

(assert (=> mapNonEmpty!4944 (= mapRest!4934 (store mapRest!4944 mapKey!4944 mapValue!4944))))

(assert (= (and mapNonEmpty!4933 condMapEmpty!4944) mapIsEmpty!4944))

(assert (= (and mapNonEmpty!4933 (not condMapEmpty!4944)) mapNonEmpty!4944))

(assert (= (and mapNonEmpty!4944 ((_ is ValueCellFull!1134) mapValue!4944)) b!146010))

(assert (= (and mapNonEmpty!4933 ((_ is ValueCellFull!1134) mapDefault!4944)) b!146011))

(declare-fun m!176061 () Bool)

(assert (=> mapNonEmpty!4944 m!176061))

(declare-fun b_lambda!6571 () Bool)

(assert (= b_lambda!6569 (or (and b!145676 b_free!3077) (and b!145678 b_free!3079 (= (defaultEntry!3002 newMap!16) (defaultEntry!3002 (v!3331 (underlying!491 thiss!992))))) b_lambda!6571)))

(check-sat (not bm!16346) (not bm!16265) (not mapNonEmpty!4943) (not bm!16353) (not b_lambda!6571) (not bm!16338) (not b!145761) (not b!145866) (not bm!16281) (not b!145845) (not bm!16339) (not b!145972) (not bm!16357) (not b!145864) (not b!145999) (not d!46377) (not b!145784) (not b!145958) (not b!145857) (not b!145959) (not b_next!3079) (not b!145986) (not bm!16335) (not bm!16282) (not b!145832) tp_is_empty!2955 (not d!46393) (not b!145767) (not d!46379) (not d!46373) (not bm!16284) (not d!46405) (not b!145992) (not b!145776) (not b!145846) (not b!146001) (not bm!16264) (not b!145828) b_and!9111 b_and!9109 (not b!146000) (not b!145971) (not bm!16347) (not b!145778) (not b!145775) (not bm!16340) (not b!145839) (not b!145759) (not b!145970) (not mapNonEmpty!4944) (not d!46403) (not bm!16356) (not b!145855) (not bm!16285) (not bm!16355) (not bm!16342) (not d!46389) (not bm!16351) (not b!145843) (not b!145991) (not b_lambda!6567) (not b_next!3077) (not b!145758) (not d!46391) (not b!145834) (not b!145772) (not b!145835) (not d!46401) (not b!145947) (not d!46399) (not d!46409) (not b!145783) (not b!145853))
(check-sat b_and!9109 b_and!9111 (not b_next!3077) (not b_next!3079))
