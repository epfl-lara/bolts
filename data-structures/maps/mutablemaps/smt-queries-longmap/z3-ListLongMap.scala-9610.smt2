; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113644 () Bool)

(assert start!113644)

(declare-fun b_free!31575 () Bool)

(declare-fun b_next!31575 () Bool)

(assert (=> start!113644 (= b_free!31575 (not b_next!31575))))

(declare-fun tp!110537 () Bool)

(declare-fun b_and!50945 () Bool)

(assert (=> start!113644 (= tp!110537 b_and!50945)))

(declare-fun b!1348600 () Bool)

(declare-fun res!894875 () Bool)

(declare-fun e!767210 () Bool)

(assert (=> b!1348600 (=> (not res!894875) (not e!767210))))

(declare-datatypes ((array!91939 0))(
  ( (array!91940 (arr!44419 (Array (_ BitVec 32) (_ BitVec 64))) (size!44970 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91939)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91939 (_ BitVec 32)) Bool)

(assert (=> b!1348600 (= res!894875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1348601 () Bool)

(declare-fun res!894870 () Bool)

(assert (=> b!1348601 (=> (not res!894870) (not e!767210))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1348601 (= res!894870 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44970 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1348602 () Bool)

(declare-fun e!767208 () Bool)

(declare-fun e!767207 () Bool)

(declare-fun mapRes!58076 () Bool)

(assert (=> b!1348602 (= e!767208 (and e!767207 mapRes!58076))))

(declare-fun condMapEmpty!58076 () Bool)

(declare-datatypes ((V!55203 0))(
  ( (V!55204 (val!18862 Int)) )
))
(declare-datatypes ((ValueCell!17889 0))(
  ( (ValueCellFull!17889 (v!21512 V!55203)) (EmptyCell!17889) )
))
(declare-datatypes ((array!91941 0))(
  ( (array!91942 (arr!44420 (Array (_ BitVec 32) ValueCell!17889)) (size!44971 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91941)

(declare-fun mapDefault!58076 () ValueCell!17889)

(assert (=> b!1348602 (= condMapEmpty!58076 (= (arr!44420 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17889)) mapDefault!58076)))))

(declare-fun b!1348603 () Bool)

(declare-fun res!894876 () Bool)

(assert (=> b!1348603 (=> (not res!894876) (not e!767210))))

(assert (=> b!1348603 (= res!894876 (and (= (size!44971 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44970 _keys!1571) (size!44971 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun minValue!1245 () V!55203)

(declare-fun b!1348604 () Bool)

(declare-fun zeroValue!1245 () V!55203)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24462 0))(
  ( (tuple2!24463 (_1!12241 (_ BitVec 64)) (_2!12241 V!55203)) )
))
(declare-datatypes ((List!31629 0))(
  ( (Nil!31626) (Cons!31625 (h!32834 tuple2!24462) (t!46278 List!31629)) )
))
(declare-datatypes ((ListLongMap!22131 0))(
  ( (ListLongMap!22132 (toList!11081 List!31629)) )
))
(declare-fun contains!9196 (ListLongMap!22131 (_ BitVec 64)) Bool)

(declare-fun +!4826 (ListLongMap!22131 tuple2!24462) ListLongMap!22131)

(declare-fun getCurrentListMapNoExtraKeys!6553 (array!91939 array!91941 (_ BitVec 32) (_ BitVec 32) V!55203 V!55203 (_ BitVec 32) Int) ListLongMap!22131)

(declare-fun get!22484 (ValueCell!17889 V!55203) V!55203)

(declare-fun dynLambda!3863 (Int (_ BitVec 64)) V!55203)

(assert (=> b!1348604 (= e!767210 (not (contains!9196 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) k0!1142)))))

(declare-fun mapIsEmpty!58076 () Bool)

(assert (=> mapIsEmpty!58076 mapRes!58076))

(declare-fun res!894871 () Bool)

(assert (=> start!113644 (=> (not res!894871) (not e!767210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113644 (= res!894871 (validMask!0 mask!1977))))

(assert (=> start!113644 e!767210))

(declare-fun tp_is_empty!37575 () Bool)

(assert (=> start!113644 tp_is_empty!37575))

(assert (=> start!113644 true))

(declare-fun array_inv!33371 (array!91939) Bool)

(assert (=> start!113644 (array_inv!33371 _keys!1571)))

(declare-fun array_inv!33372 (array!91941) Bool)

(assert (=> start!113644 (and (array_inv!33372 _values!1303) e!767208)))

(assert (=> start!113644 tp!110537))

(declare-fun b!1348605 () Bool)

(declare-fun e!767211 () Bool)

(assert (=> b!1348605 (= e!767211 tp_is_empty!37575)))

(declare-fun mapNonEmpty!58076 () Bool)

(declare-fun tp!110538 () Bool)

(assert (=> mapNonEmpty!58076 (= mapRes!58076 (and tp!110538 e!767211))))

(declare-fun mapRest!58076 () (Array (_ BitVec 32) ValueCell!17889))

(declare-fun mapKey!58076 () (_ BitVec 32))

(declare-fun mapValue!58076 () ValueCell!17889)

(assert (=> mapNonEmpty!58076 (= (arr!44420 _values!1303) (store mapRest!58076 mapKey!58076 mapValue!58076))))

(declare-fun b!1348606 () Bool)

(declare-fun res!894872 () Bool)

(assert (=> b!1348606 (=> (not res!894872) (not e!767210))))

(assert (=> b!1348606 (= res!894872 (not (= (select (arr!44419 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1348607 () Bool)

(declare-fun res!894869 () Bool)

(assert (=> b!1348607 (=> (not res!894869) (not e!767210))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1348607 (= res!894869 (validKeyInArray!0 (select (arr!44419 _keys!1571) from!1960)))))

(declare-fun b!1348608 () Bool)

(declare-fun res!894877 () Bool)

(assert (=> b!1348608 (=> (not res!894877) (not e!767210))))

(assert (=> b!1348608 (= res!894877 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1348609 () Bool)

(declare-fun res!894874 () Bool)

(assert (=> b!1348609 (=> (not res!894874) (not e!767210))))

(declare-datatypes ((List!31630 0))(
  ( (Nil!31627) (Cons!31626 (h!32835 (_ BitVec 64)) (t!46279 List!31630)) )
))
(declare-fun arrayNoDuplicates!0 (array!91939 (_ BitVec 32) List!31630) Bool)

(assert (=> b!1348609 (= res!894874 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31627))))

(declare-fun b!1348610 () Bool)

(assert (=> b!1348610 (= e!767207 tp_is_empty!37575)))

(declare-fun b!1348611 () Bool)

(declare-fun res!894873 () Bool)

(assert (=> b!1348611 (=> (not res!894873) (not e!767210))))

(declare-fun getCurrentListMap!5971 (array!91939 array!91941 (_ BitVec 32) (_ BitVec 32) V!55203 V!55203 (_ BitVec 32) Int) ListLongMap!22131)

(assert (=> b!1348611 (= res!894873 (contains!9196 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(assert (= (and start!113644 res!894871) b!1348603))

(assert (= (and b!1348603 res!894876) b!1348600))

(assert (= (and b!1348600 res!894875) b!1348609))

(assert (= (and b!1348609 res!894874) b!1348601))

(assert (= (and b!1348601 res!894870) b!1348611))

(assert (= (and b!1348611 res!894873) b!1348606))

(assert (= (and b!1348606 res!894872) b!1348607))

(assert (= (and b!1348607 res!894869) b!1348608))

(assert (= (and b!1348608 res!894877) b!1348604))

(assert (= (and b!1348602 condMapEmpty!58076) mapIsEmpty!58076))

(assert (= (and b!1348602 (not condMapEmpty!58076)) mapNonEmpty!58076))

(get-info :version)

(assert (= (and mapNonEmpty!58076 ((_ is ValueCellFull!17889) mapValue!58076)) b!1348605))

(assert (= (and b!1348602 ((_ is ValueCellFull!17889) mapDefault!58076)) b!1348610))

(assert (= start!113644 b!1348602))

(declare-fun b_lambda!24665 () Bool)

(assert (=> (not b_lambda!24665) (not b!1348604)))

(declare-fun t!46277 () Bool)

(declare-fun tb!12453 () Bool)

(assert (=> (and start!113644 (= defaultEntry!1306 defaultEntry!1306) t!46277) tb!12453))

(declare-fun result!25993 () Bool)

(assert (=> tb!12453 (= result!25993 tp_is_empty!37575)))

(assert (=> b!1348604 t!46277))

(declare-fun b_and!50947 () Bool)

(assert (= b_and!50945 (and (=> t!46277 result!25993) b_and!50947)))

(declare-fun m!1235651 () Bool)

(assert (=> b!1348609 m!1235651))

(declare-fun m!1235653 () Bool)

(assert (=> b!1348604 m!1235653))

(declare-fun m!1235655 () Bool)

(assert (=> b!1348604 m!1235655))

(declare-fun m!1235657 () Bool)

(assert (=> b!1348604 m!1235657))

(declare-fun m!1235659 () Bool)

(assert (=> b!1348604 m!1235659))

(assert (=> b!1348604 m!1235653))

(declare-fun m!1235661 () Bool)

(assert (=> b!1348604 m!1235661))

(assert (=> b!1348604 m!1235655))

(assert (=> b!1348604 m!1235657))

(assert (=> b!1348604 m!1235661))

(declare-fun m!1235663 () Bool)

(assert (=> b!1348604 m!1235663))

(declare-fun m!1235665 () Bool)

(assert (=> b!1348604 m!1235665))

(declare-fun m!1235667 () Bool)

(assert (=> start!113644 m!1235667))

(declare-fun m!1235669 () Bool)

(assert (=> start!113644 m!1235669))

(declare-fun m!1235671 () Bool)

(assert (=> start!113644 m!1235671))

(assert (=> b!1348606 m!1235665))

(assert (=> b!1348607 m!1235665))

(assert (=> b!1348607 m!1235665))

(declare-fun m!1235673 () Bool)

(assert (=> b!1348607 m!1235673))

(declare-fun m!1235675 () Bool)

(assert (=> mapNonEmpty!58076 m!1235675))

(declare-fun m!1235677 () Bool)

(assert (=> b!1348611 m!1235677))

(assert (=> b!1348611 m!1235677))

(declare-fun m!1235679 () Bool)

(assert (=> b!1348611 m!1235679))

(declare-fun m!1235681 () Bool)

(assert (=> b!1348600 m!1235681))

(check-sat (not mapNonEmpty!58076) (not b!1348609) b_and!50947 (not b_lambda!24665) tp_is_empty!37575 (not b!1348611) (not b_next!31575) (not start!113644) (not b!1348604) (not b!1348607) (not b!1348600))
(check-sat b_and!50947 (not b_next!31575))
(get-model)

(declare-fun b_lambda!24669 () Bool)

(assert (= b_lambda!24665 (or (and start!113644 b_free!31575) b_lambda!24669)))

(check-sat (not mapNonEmpty!58076) (not b!1348609) (not b_lambda!24669) b_and!50947 tp_is_empty!37575 (not b!1348611) (not b_next!31575) (not start!113644) (not b!1348604) (not b!1348607) (not b!1348600))
(check-sat b_and!50947 (not b_next!31575))
(get-model)

(declare-fun b!1348662 () Bool)

(declare-fun e!767238 () Bool)

(declare-fun e!767235 () Bool)

(assert (=> b!1348662 (= e!767238 e!767235)))

(declare-fun c!126400 () Bool)

(assert (=> b!1348662 (= c!126400 (validKeyInArray!0 (select (arr!44419 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun d!144427 () Bool)

(declare-fun res!894912 () Bool)

(declare-fun e!767236 () Bool)

(assert (=> d!144427 (=> res!894912 e!767236)))

(assert (=> d!144427 (= res!894912 (bvsge #b00000000000000000000000000000000 (size!44970 _keys!1571)))))

(assert (=> d!144427 (= (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31627) e!767236)))

(declare-fun bm!65116 () Bool)

(declare-fun call!65119 () Bool)

(assert (=> bm!65116 (= call!65119 (arrayNoDuplicates!0 _keys!1571 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!126400 (Cons!31626 (select (arr!44419 _keys!1571) #b00000000000000000000000000000000) Nil!31627) Nil!31627)))))

(declare-fun b!1348663 () Bool)

(assert (=> b!1348663 (= e!767235 call!65119)))

(declare-fun b!1348664 () Bool)

(assert (=> b!1348664 (= e!767236 e!767238)))

(declare-fun res!894911 () Bool)

(assert (=> b!1348664 (=> (not res!894911) (not e!767238))))

(declare-fun e!767237 () Bool)

(assert (=> b!1348664 (= res!894911 (not e!767237))))

(declare-fun res!894913 () Bool)

(assert (=> b!1348664 (=> (not res!894913) (not e!767237))))

(assert (=> b!1348664 (= res!894913 (validKeyInArray!0 (select (arr!44419 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun b!1348665 () Bool)

(assert (=> b!1348665 (= e!767235 call!65119)))

(declare-fun b!1348666 () Bool)

(declare-fun contains!9198 (List!31630 (_ BitVec 64)) Bool)

(assert (=> b!1348666 (= e!767237 (contains!9198 Nil!31627 (select (arr!44419 _keys!1571) #b00000000000000000000000000000000)))))

(assert (= (and d!144427 (not res!894912)) b!1348664))

(assert (= (and b!1348664 res!894913) b!1348666))

(assert (= (and b!1348664 res!894911) b!1348662))

(assert (= (and b!1348662 c!126400) b!1348663))

(assert (= (and b!1348662 (not c!126400)) b!1348665))

(assert (= (or b!1348663 b!1348665) bm!65116))

(declare-fun m!1235715 () Bool)

(assert (=> b!1348662 m!1235715))

(assert (=> b!1348662 m!1235715))

(declare-fun m!1235717 () Bool)

(assert (=> b!1348662 m!1235717))

(assert (=> bm!65116 m!1235715))

(declare-fun m!1235719 () Bool)

(assert (=> bm!65116 m!1235719))

(assert (=> b!1348664 m!1235715))

(assert (=> b!1348664 m!1235715))

(assert (=> b!1348664 m!1235717))

(assert (=> b!1348666 m!1235715))

(assert (=> b!1348666 m!1235715))

(declare-fun m!1235721 () Bool)

(assert (=> b!1348666 m!1235721))

(assert (=> b!1348609 d!144427))

(declare-fun bm!65119 () Bool)

(declare-fun call!65122 () Bool)

(assert (=> bm!65119 (= call!65122 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1571 mask!1977))))

(declare-fun b!1348675 () Bool)

(declare-fun e!767247 () Bool)

(assert (=> b!1348675 (= e!767247 call!65122)))

(declare-fun b!1348676 () Bool)

(declare-fun e!767246 () Bool)

(declare-fun e!767245 () Bool)

(assert (=> b!1348676 (= e!767246 e!767245)))

(declare-fun c!126403 () Bool)

(assert (=> b!1348676 (= c!126403 (validKeyInArray!0 (select (arr!44419 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun b!1348678 () Bool)

(assert (=> b!1348678 (= e!767245 e!767247)))

(declare-fun lt!596116 () (_ BitVec 64))

(assert (=> b!1348678 (= lt!596116 (select (arr!44419 _keys!1571) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!44127 0))(
  ( (Unit!44128) )
))
(declare-fun lt!596118 () Unit!44127)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!91939 (_ BitVec 64) (_ BitVec 32)) Unit!44127)

(assert (=> b!1348678 (= lt!596118 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1571 lt!596116 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!91939 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1348678 (arrayContainsKey!0 _keys!1571 lt!596116 #b00000000000000000000000000000000)))

(declare-fun lt!596117 () Unit!44127)

(assert (=> b!1348678 (= lt!596117 lt!596118)))

(declare-fun res!894918 () Bool)

(declare-datatypes ((SeekEntryResult!10055 0))(
  ( (MissingZero!10055 (index!42590 (_ BitVec 32))) (Found!10055 (index!42591 (_ BitVec 32))) (Intermediate!10055 (undefined!10867 Bool) (index!42592 (_ BitVec 32)) (x!120708 (_ BitVec 32))) (Undefined!10055) (MissingVacant!10055 (index!42593 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!91939 (_ BitVec 32)) SeekEntryResult!10055)

(assert (=> b!1348678 (= res!894918 (= (seekEntryOrOpen!0 (select (arr!44419 _keys!1571) #b00000000000000000000000000000000) _keys!1571 mask!1977) (Found!10055 #b00000000000000000000000000000000)))))

(assert (=> b!1348678 (=> (not res!894918) (not e!767247))))

(declare-fun d!144429 () Bool)

(declare-fun res!894919 () Bool)

(assert (=> d!144429 (=> res!894919 e!767246)))

(assert (=> d!144429 (= res!894919 (bvsge #b00000000000000000000000000000000 (size!44970 _keys!1571)))))

(assert (=> d!144429 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977) e!767246)))

(declare-fun b!1348677 () Bool)

(assert (=> b!1348677 (= e!767245 call!65122)))

(assert (= (and d!144429 (not res!894919)) b!1348676))

(assert (= (and b!1348676 c!126403) b!1348678))

(assert (= (and b!1348676 (not c!126403)) b!1348677))

(assert (= (and b!1348678 res!894918) b!1348675))

(assert (= (or b!1348675 b!1348677) bm!65119))

(declare-fun m!1235723 () Bool)

(assert (=> bm!65119 m!1235723))

(assert (=> b!1348676 m!1235715))

(assert (=> b!1348676 m!1235715))

(assert (=> b!1348676 m!1235717))

(assert (=> b!1348678 m!1235715))

(declare-fun m!1235725 () Bool)

(assert (=> b!1348678 m!1235725))

(declare-fun m!1235727 () Bool)

(assert (=> b!1348678 m!1235727))

(assert (=> b!1348678 m!1235715))

(declare-fun m!1235729 () Bool)

(assert (=> b!1348678 m!1235729))

(assert (=> b!1348600 d!144429))

(declare-fun d!144431 () Bool)

(declare-fun e!767253 () Bool)

(assert (=> d!144431 e!767253))

(declare-fun res!894922 () Bool)

(assert (=> d!144431 (=> res!894922 e!767253)))

(declare-fun lt!596127 () Bool)

(assert (=> d!144431 (= res!894922 (not lt!596127))))

(declare-fun lt!596129 () Bool)

(assert (=> d!144431 (= lt!596127 lt!596129)))

(declare-fun lt!596128 () Unit!44127)

(declare-fun e!767252 () Unit!44127)

(assert (=> d!144431 (= lt!596128 e!767252)))

(declare-fun c!126406 () Bool)

(assert (=> d!144431 (= c!126406 lt!596129)))

(declare-fun containsKey!742 (List!31629 (_ BitVec 64)) Bool)

(assert (=> d!144431 (= lt!596129 (containsKey!742 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(assert (=> d!144431 (= (contains!9196 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142) lt!596127)))

(declare-fun b!1348685 () Bool)

(declare-fun lt!596130 () Unit!44127)

(assert (=> b!1348685 (= e!767252 lt!596130)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!487 (List!31629 (_ BitVec 64)) Unit!44127)

(assert (=> b!1348685 (= lt!596130 (lemmaContainsKeyImpliesGetValueByKeyDefined!487 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(declare-datatypes ((Option!775 0))(
  ( (Some!774 (v!21514 V!55203)) (None!773) )
))
(declare-fun isDefined!527 (Option!775) Bool)

(declare-fun getValueByKey!724 (List!31629 (_ BitVec 64)) Option!775)

(assert (=> b!1348685 (isDefined!527 (getValueByKey!724 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(declare-fun b!1348686 () Bool)

(declare-fun Unit!44129 () Unit!44127)

(assert (=> b!1348686 (= e!767252 Unit!44129)))

(declare-fun b!1348687 () Bool)

(assert (=> b!1348687 (= e!767253 (isDefined!527 (getValueByKey!724 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142)))))

(assert (= (and d!144431 c!126406) b!1348685))

(assert (= (and d!144431 (not c!126406)) b!1348686))

(assert (= (and d!144431 (not res!894922)) b!1348687))

(declare-fun m!1235731 () Bool)

(assert (=> d!144431 m!1235731))

(declare-fun m!1235733 () Bool)

(assert (=> b!1348685 m!1235733))

(declare-fun m!1235735 () Bool)

(assert (=> b!1348685 m!1235735))

(assert (=> b!1348685 m!1235735))

(declare-fun m!1235737 () Bool)

(assert (=> b!1348685 m!1235737))

(assert (=> b!1348687 m!1235735))

(assert (=> b!1348687 m!1235735))

(assert (=> b!1348687 m!1235737))

(assert (=> b!1348611 d!144431))

(declare-fun b!1348730 () Bool)

(declare-fun e!767281 () ListLongMap!22131)

(declare-fun call!65141 () ListLongMap!22131)

(assert (=> b!1348730 (= e!767281 call!65141)))

(declare-fun b!1348731 () Bool)

(declare-fun e!767290 () ListLongMap!22131)

(assert (=> b!1348731 (= e!767290 call!65141)))

(declare-fun b!1348732 () Bool)

(declare-fun e!767288 () Bool)

(declare-fun e!767283 () Bool)

(assert (=> b!1348732 (= e!767288 e!767283)))

(declare-fun res!894941 () Bool)

(declare-fun call!65140 () Bool)

(assert (=> b!1348732 (= res!894941 call!65140)))

(assert (=> b!1348732 (=> (not res!894941) (not e!767283))))

(declare-fun b!1348733 () Bool)

(declare-fun e!767285 () Bool)

(declare-fun lt!596189 () ListLongMap!22131)

(declare-fun apply!1074 (ListLongMap!22131 (_ BitVec 64)) V!55203)

(assert (=> b!1348733 (= e!767285 (= (apply!1074 lt!596189 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1245))))

(declare-fun call!65139 () ListLongMap!22131)

(declare-fun bm!65134 () Bool)

(assert (=> bm!65134 (= call!65139 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun bm!65135 () Bool)

(assert (=> bm!65135 (= call!65140 (contains!9196 lt!596189 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!65137 () ListLongMap!22131)

(declare-fun c!126421 () Bool)

(declare-fun call!65142 () ListLongMap!22131)

(declare-fun call!65138 () ListLongMap!22131)

(declare-fun c!126420 () Bool)

(declare-fun bm!65136 () Bool)

(assert (=> bm!65136 (= call!65137 (+!4826 (ite c!126420 call!65139 (ite c!126421 call!65142 call!65138)) (ite (or c!126420 c!126421) (tuple2!24463 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(declare-fun b!1348734 () Bool)

(declare-fun res!894942 () Bool)

(declare-fun e!767282 () Bool)

(assert (=> b!1348734 (=> (not res!894942) (not e!767282))))

(declare-fun e!767284 () Bool)

(assert (=> b!1348734 (= res!894942 e!767284)))

(declare-fun res!894943 () Bool)

(assert (=> b!1348734 (=> res!894943 e!767284)))

(declare-fun e!767280 () Bool)

(assert (=> b!1348734 (= res!894943 (not e!767280))))

(declare-fun res!894944 () Bool)

(assert (=> b!1348734 (=> (not res!894944) (not e!767280))))

(assert (=> b!1348734 (= res!894944 (bvslt from!1960 (size!44970 _keys!1571)))))

(declare-fun b!1348735 () Bool)

(declare-fun e!767292 () Bool)

(assert (=> b!1348735 (= e!767292 e!767285)))

(declare-fun res!894945 () Bool)

(declare-fun call!65143 () Bool)

(assert (=> b!1348735 (= res!894945 call!65143)))

(assert (=> b!1348735 (=> (not res!894945) (not e!767285))))

(declare-fun bm!65137 () Bool)

(assert (=> bm!65137 (= call!65141 call!65137)))

(declare-fun b!1348736 () Bool)

(assert (=> b!1348736 (= e!767290 call!65138)))

(declare-fun d!144433 () Bool)

(assert (=> d!144433 e!767282))

(declare-fun res!894946 () Bool)

(assert (=> d!144433 (=> (not res!894946) (not e!767282))))

(assert (=> d!144433 (= res!894946 (or (bvsge from!1960 (size!44970 _keys!1571)) (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44970 _keys!1571)))))))

(declare-fun lt!596176 () ListLongMap!22131)

(assert (=> d!144433 (= lt!596189 lt!596176)))

(declare-fun lt!596196 () Unit!44127)

(declare-fun e!767291 () Unit!44127)

(assert (=> d!144433 (= lt!596196 e!767291)))

(declare-fun c!126422 () Bool)

(declare-fun e!767289 () Bool)

(assert (=> d!144433 (= c!126422 e!767289)))

(declare-fun res!894948 () Bool)

(assert (=> d!144433 (=> (not res!894948) (not e!767289))))

(assert (=> d!144433 (= res!894948 (bvslt from!1960 (size!44970 _keys!1571)))))

(declare-fun e!767286 () ListLongMap!22131)

(assert (=> d!144433 (= lt!596176 e!767286)))

(assert (=> d!144433 (= c!126420 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!144433 (validMask!0 mask!1977)))

(assert (=> d!144433 (= (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) lt!596189)))

(declare-fun b!1348737 () Bool)

(declare-fun lt!596180 () Unit!44127)

(assert (=> b!1348737 (= e!767291 lt!596180)))

(declare-fun lt!596187 () ListLongMap!22131)

(assert (=> b!1348737 (= lt!596187 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!596194 () (_ BitVec 64))

(assert (=> b!1348737 (= lt!596194 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596177 () (_ BitVec 64))

(assert (=> b!1348737 (= lt!596177 (select (arr!44419 _keys!1571) from!1960))))

(declare-fun lt!596188 () Unit!44127)

(declare-fun addStillContains!1219 (ListLongMap!22131 (_ BitVec 64) V!55203 (_ BitVec 64)) Unit!44127)

(assert (=> b!1348737 (= lt!596188 (addStillContains!1219 lt!596187 lt!596194 zeroValue!1245 lt!596177))))

(assert (=> b!1348737 (contains!9196 (+!4826 lt!596187 (tuple2!24463 lt!596194 zeroValue!1245)) lt!596177)))

(declare-fun lt!596191 () Unit!44127)

(assert (=> b!1348737 (= lt!596191 lt!596188)))

(declare-fun lt!596181 () ListLongMap!22131)

(assert (=> b!1348737 (= lt!596181 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!596179 () (_ BitVec 64))

(assert (=> b!1348737 (= lt!596179 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596186 () (_ BitVec 64))

(assert (=> b!1348737 (= lt!596186 (select (arr!44419 _keys!1571) from!1960))))

(declare-fun lt!596184 () Unit!44127)

(declare-fun addApplyDifferent!577 (ListLongMap!22131 (_ BitVec 64) V!55203 (_ BitVec 64)) Unit!44127)

(assert (=> b!1348737 (= lt!596184 (addApplyDifferent!577 lt!596181 lt!596179 minValue!1245 lt!596186))))

(assert (=> b!1348737 (= (apply!1074 (+!4826 lt!596181 (tuple2!24463 lt!596179 minValue!1245)) lt!596186) (apply!1074 lt!596181 lt!596186))))

(declare-fun lt!596182 () Unit!44127)

(assert (=> b!1348737 (= lt!596182 lt!596184)))

(declare-fun lt!596195 () ListLongMap!22131)

(assert (=> b!1348737 (= lt!596195 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!596190 () (_ BitVec 64))

(assert (=> b!1348737 (= lt!596190 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596193 () (_ BitVec 64))

(assert (=> b!1348737 (= lt!596193 (select (arr!44419 _keys!1571) from!1960))))

(declare-fun lt!596175 () Unit!44127)

(assert (=> b!1348737 (= lt!596175 (addApplyDifferent!577 lt!596195 lt!596190 zeroValue!1245 lt!596193))))

(assert (=> b!1348737 (= (apply!1074 (+!4826 lt!596195 (tuple2!24463 lt!596190 zeroValue!1245)) lt!596193) (apply!1074 lt!596195 lt!596193))))

(declare-fun lt!596185 () Unit!44127)

(assert (=> b!1348737 (= lt!596185 lt!596175)))

(declare-fun lt!596183 () ListLongMap!22131)

(assert (=> b!1348737 (= lt!596183 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))

(declare-fun lt!596192 () (_ BitVec 64))

(assert (=> b!1348737 (= lt!596192 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!596178 () (_ BitVec 64))

(assert (=> b!1348737 (= lt!596178 (select (arr!44419 _keys!1571) from!1960))))

(assert (=> b!1348737 (= lt!596180 (addApplyDifferent!577 lt!596183 lt!596192 minValue!1245 lt!596178))))

(assert (=> b!1348737 (= (apply!1074 (+!4826 lt!596183 (tuple2!24463 lt!596192 minValue!1245)) lt!596178) (apply!1074 lt!596183 lt!596178))))

(declare-fun b!1348738 () Bool)

(assert (=> b!1348738 (= e!767280 (validKeyInArray!0 (select (arr!44419 _keys!1571) from!1960)))))

(declare-fun b!1348739 () Bool)

(assert (=> b!1348739 (= e!767286 e!767281)))

(assert (=> b!1348739 (= c!126421 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1348740 () Bool)

(assert (=> b!1348740 (= e!767283 (= (apply!1074 lt!596189 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1245))))

(declare-fun b!1348741 () Bool)

(assert (=> b!1348741 (= e!767292 (not call!65143))))

(declare-fun b!1348742 () Bool)

(declare-fun res!894949 () Bool)

(assert (=> b!1348742 (=> (not res!894949) (not e!767282))))

(assert (=> b!1348742 (= res!894949 e!767288)))

(declare-fun c!126423 () Bool)

(assert (=> b!1348742 (= c!126423 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1348743 () Bool)

(declare-fun e!767287 () Bool)

(assert (=> b!1348743 (= e!767284 e!767287)))

(declare-fun res!894947 () Bool)

(assert (=> b!1348743 (=> (not res!894947) (not e!767287))))

(assert (=> b!1348743 (= res!894947 (contains!9196 lt!596189 (select (arr!44419 _keys!1571) from!1960)))))

(assert (=> b!1348743 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44970 _keys!1571)))))

(declare-fun b!1348744 () Bool)

(assert (=> b!1348744 (= e!767286 (+!4826 call!65137 (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))

(declare-fun b!1348745 () Bool)

(declare-fun c!126424 () Bool)

(assert (=> b!1348745 (= c!126424 (and (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1348745 (= e!767281 e!767290)))

(declare-fun b!1348746 () Bool)

(assert (=> b!1348746 (= e!767289 (validKeyInArray!0 (select (arr!44419 _keys!1571) from!1960)))))

(declare-fun bm!65138 () Bool)

(assert (=> bm!65138 (= call!65142 call!65139)))

(declare-fun b!1348747 () Bool)

(declare-fun Unit!44130 () Unit!44127)

(assert (=> b!1348747 (= e!767291 Unit!44130)))

(declare-fun b!1348748 () Bool)

(assert (=> b!1348748 (= e!767282 e!767292)))

(declare-fun c!126419 () Bool)

(assert (=> b!1348748 (= c!126419 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1348749 () Bool)

(assert (=> b!1348749 (= e!767287 (= (apply!1074 lt!596189 (select (arr!44419 _keys!1571) from!1960)) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1348749 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44971 _values!1303)))))

(assert (=> b!1348749 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44970 _keys!1571)))))

(declare-fun bm!65139 () Bool)

(assert (=> bm!65139 (= call!65143 (contains!9196 lt!596189 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1348750 () Bool)

(assert (=> b!1348750 (= e!767288 (not call!65140))))

(declare-fun bm!65140 () Bool)

(assert (=> bm!65140 (= call!65138 call!65142)))

(assert (= (and d!144433 c!126420) b!1348744))

(assert (= (and d!144433 (not c!126420)) b!1348739))

(assert (= (and b!1348739 c!126421) b!1348730))

(assert (= (and b!1348739 (not c!126421)) b!1348745))

(assert (= (and b!1348745 c!126424) b!1348731))

(assert (= (and b!1348745 (not c!126424)) b!1348736))

(assert (= (or b!1348731 b!1348736) bm!65140))

(assert (= (or b!1348730 bm!65140) bm!65138))

(assert (= (or b!1348730 b!1348731) bm!65137))

(assert (= (or b!1348744 bm!65138) bm!65134))

(assert (= (or b!1348744 bm!65137) bm!65136))

(assert (= (and d!144433 res!894948) b!1348746))

(assert (= (and d!144433 c!126422) b!1348737))

(assert (= (and d!144433 (not c!126422)) b!1348747))

(assert (= (and d!144433 res!894946) b!1348734))

(assert (= (and b!1348734 res!894944) b!1348738))

(assert (= (and b!1348734 (not res!894943)) b!1348743))

(assert (= (and b!1348743 res!894947) b!1348749))

(assert (= (and b!1348734 res!894942) b!1348742))

(assert (= (and b!1348742 c!126423) b!1348732))

(assert (= (and b!1348742 (not c!126423)) b!1348750))

(assert (= (and b!1348732 res!894941) b!1348740))

(assert (= (or b!1348732 b!1348750) bm!65135))

(assert (= (and b!1348742 res!894949) b!1348748))

(assert (= (and b!1348748 c!126419) b!1348735))

(assert (= (and b!1348748 (not c!126419)) b!1348741))

(assert (= (and b!1348735 res!894945) b!1348733))

(assert (= (or b!1348735 b!1348741) bm!65139))

(declare-fun b_lambda!24671 () Bool)

(assert (=> (not b_lambda!24671) (not b!1348749)))

(assert (=> b!1348749 t!46277))

(declare-fun b_and!50953 () Bool)

(assert (= b_and!50947 (and (=> t!46277 result!25993) b_and!50953)))

(declare-fun m!1235739 () Bool)

(assert (=> b!1348737 m!1235739))

(declare-fun m!1235741 () Bool)

(assert (=> b!1348737 m!1235741))

(declare-fun m!1235743 () Bool)

(assert (=> b!1348737 m!1235743))

(declare-fun m!1235745 () Bool)

(assert (=> b!1348737 m!1235745))

(assert (=> b!1348737 m!1235741))

(declare-fun m!1235747 () Bool)

(assert (=> b!1348737 m!1235747))

(declare-fun m!1235749 () Bool)

(assert (=> b!1348737 m!1235749))

(declare-fun m!1235751 () Bool)

(assert (=> b!1348737 m!1235751))

(declare-fun m!1235753 () Bool)

(assert (=> b!1348737 m!1235753))

(declare-fun m!1235755 () Bool)

(assert (=> b!1348737 m!1235755))

(assert (=> b!1348737 m!1235751))

(declare-fun m!1235757 () Bool)

(assert (=> b!1348737 m!1235757))

(assert (=> b!1348737 m!1235745))

(declare-fun m!1235759 () Bool)

(assert (=> b!1348737 m!1235759))

(declare-fun m!1235761 () Bool)

(assert (=> b!1348737 m!1235761))

(declare-fun m!1235763 () Bool)

(assert (=> b!1348737 m!1235763))

(declare-fun m!1235765 () Bool)

(assert (=> b!1348737 m!1235765))

(declare-fun m!1235767 () Bool)

(assert (=> b!1348737 m!1235767))

(assert (=> b!1348737 m!1235665))

(assert (=> b!1348737 m!1235739))

(declare-fun m!1235769 () Bool)

(assert (=> b!1348737 m!1235769))

(assert (=> b!1348743 m!1235665))

(assert (=> b!1348743 m!1235665))

(declare-fun m!1235771 () Bool)

(assert (=> b!1348743 m!1235771))

(assert (=> b!1348749 m!1235655))

(assert (=> b!1348749 m!1235657))

(assert (=> b!1348749 m!1235659))

(assert (=> b!1348749 m!1235657))

(assert (=> b!1348749 m!1235665))

(declare-fun m!1235773 () Bool)

(assert (=> b!1348749 m!1235773))

(assert (=> b!1348749 m!1235655))

(assert (=> b!1348749 m!1235665))

(assert (=> b!1348738 m!1235665))

(assert (=> b!1348738 m!1235665))

(assert (=> b!1348738 m!1235673))

(declare-fun m!1235775 () Bool)

(assert (=> b!1348733 m!1235775))

(assert (=> bm!65134 m!1235767))

(declare-fun m!1235777 () Bool)

(assert (=> bm!65135 m!1235777))

(declare-fun m!1235779 () Bool)

(assert (=> bm!65139 m!1235779))

(declare-fun m!1235781 () Bool)

(assert (=> bm!65136 m!1235781))

(declare-fun m!1235783 () Bool)

(assert (=> b!1348740 m!1235783))

(assert (=> d!144433 m!1235667))

(declare-fun m!1235785 () Bool)

(assert (=> b!1348744 m!1235785))

(assert (=> b!1348746 m!1235665))

(assert (=> b!1348746 m!1235665))

(assert (=> b!1348746 m!1235673))

(assert (=> b!1348611 d!144433))

(declare-fun d!144435 () Bool)

(assert (=> d!144435 (= (validKeyInArray!0 (select (arr!44419 _keys!1571) from!1960)) (and (not (= (select (arr!44419 _keys!1571) from!1960) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44419 _keys!1571) from!1960) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1348607 d!144435))

(declare-fun d!144437 () Bool)

(assert (=> d!144437 (= (validMask!0 mask!1977) (and (or (= mask!1977 #b00000000000000000000000000000111) (= mask!1977 #b00000000000000000000000000001111) (= mask!1977 #b00000000000000000000000000011111) (= mask!1977 #b00000000000000000000000000111111) (= mask!1977 #b00000000000000000000000001111111) (= mask!1977 #b00000000000000000000000011111111) (= mask!1977 #b00000000000000000000000111111111) (= mask!1977 #b00000000000000000000001111111111) (= mask!1977 #b00000000000000000000011111111111) (= mask!1977 #b00000000000000000000111111111111) (= mask!1977 #b00000000000000000001111111111111) (= mask!1977 #b00000000000000000011111111111111) (= mask!1977 #b00000000000000000111111111111111) (= mask!1977 #b00000000000000001111111111111111) (= mask!1977 #b00000000000000011111111111111111) (= mask!1977 #b00000000000000111111111111111111) (= mask!1977 #b00000000000001111111111111111111) (= mask!1977 #b00000000000011111111111111111111) (= mask!1977 #b00000000000111111111111111111111) (= mask!1977 #b00000000001111111111111111111111) (= mask!1977 #b00000000011111111111111111111111) (= mask!1977 #b00000000111111111111111111111111) (= mask!1977 #b00000001111111111111111111111111) (= mask!1977 #b00000011111111111111111111111111) (= mask!1977 #b00000111111111111111111111111111) (= mask!1977 #b00001111111111111111111111111111) (= mask!1977 #b00011111111111111111111111111111) (= mask!1977 #b00111111111111111111111111111111)) (bvsle mask!1977 #b00111111111111111111111111111111)))))

(assert (=> start!113644 d!144437))

(declare-fun d!144439 () Bool)

(assert (=> d!144439 (= (array_inv!33371 _keys!1571) (bvsge (size!44970 _keys!1571) #b00000000000000000000000000000000))))

(assert (=> start!113644 d!144439))

(declare-fun d!144441 () Bool)

(assert (=> d!144441 (= (array_inv!33372 _values!1303) (bvsge (size!44971 _values!1303) #b00000000000000000000000000000000))))

(assert (=> start!113644 d!144441))

(declare-fun d!144443 () Bool)

(declare-fun e!767294 () Bool)

(assert (=> d!144443 e!767294))

(declare-fun res!894950 () Bool)

(assert (=> d!144443 (=> res!894950 e!767294)))

(declare-fun lt!596197 () Bool)

(assert (=> d!144443 (= res!894950 (not lt!596197))))

(declare-fun lt!596199 () Bool)

(assert (=> d!144443 (= lt!596197 lt!596199)))

(declare-fun lt!596198 () Unit!44127)

(declare-fun e!767293 () Unit!44127)

(assert (=> d!144443 (= lt!596198 e!767293)))

(declare-fun c!126425 () Bool)

(assert (=> d!144443 (= c!126425 lt!596199)))

(assert (=> d!144443 (= lt!596199 (containsKey!742 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1142))))

(assert (=> d!144443 (= (contains!9196 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) k0!1142) lt!596197)))

(declare-fun b!1348751 () Bool)

(declare-fun lt!596200 () Unit!44127)

(assert (=> b!1348751 (= e!767293 lt!596200)))

(assert (=> b!1348751 (= lt!596200 (lemmaContainsKeyImpliesGetValueByKeyDefined!487 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1142))))

(assert (=> b!1348751 (isDefined!527 (getValueByKey!724 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1142))))

(declare-fun b!1348752 () Bool)

(declare-fun Unit!44131 () Unit!44127)

(assert (=> b!1348752 (= e!767293 Unit!44131)))

(declare-fun b!1348753 () Bool)

(assert (=> b!1348753 (= e!767294 (isDefined!527 (getValueByKey!724 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1142)))))

(assert (= (and d!144443 c!126425) b!1348751))

(assert (= (and d!144443 (not c!126425)) b!1348752))

(assert (= (and d!144443 (not res!894950)) b!1348753))

(declare-fun m!1235787 () Bool)

(assert (=> d!144443 m!1235787))

(declare-fun m!1235789 () Bool)

(assert (=> b!1348751 m!1235789))

(declare-fun m!1235791 () Bool)

(assert (=> b!1348751 m!1235791))

(assert (=> b!1348751 m!1235791))

(declare-fun m!1235793 () Bool)

(assert (=> b!1348751 m!1235793))

(assert (=> b!1348753 m!1235791))

(assert (=> b!1348753 m!1235791))

(assert (=> b!1348753 m!1235793))

(assert (=> b!1348604 d!144443))

(declare-fun d!144445 () Bool)

(declare-fun e!767297 () Bool)

(assert (=> d!144445 e!767297))

(declare-fun res!894956 () Bool)

(assert (=> d!144445 (=> (not res!894956) (not e!767297))))

(declare-fun lt!596210 () ListLongMap!22131)

(assert (=> d!144445 (= res!894956 (contains!9196 lt!596210 (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!596209 () List!31629)

(assert (=> d!144445 (= lt!596210 (ListLongMap!22132 lt!596209))))

(declare-fun lt!596211 () Unit!44127)

(declare-fun lt!596212 () Unit!44127)

(assert (=> d!144445 (= lt!596211 lt!596212)))

(assert (=> d!144445 (= (getValueByKey!724 lt!596209 (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!774 (_2!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!367 (List!31629 (_ BitVec 64) V!55203) Unit!44127)

(assert (=> d!144445 (= lt!596212 (lemmaContainsTupThenGetReturnValue!367 lt!596209 (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun insertStrictlySorted!496 (List!31629 (_ BitVec 64) V!55203) List!31629)

(assert (=> d!144445 (= lt!596209 (insertStrictlySorted!496 (toList!11081 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!144445 (= (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!596210)))

(declare-fun b!1348758 () Bool)

(declare-fun res!894955 () Bool)

(assert (=> b!1348758 (=> (not res!894955) (not e!767297))))

(assert (=> b!1348758 (= res!894955 (= (getValueByKey!724 (toList!11081 lt!596210) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!774 (_2!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1348759 () Bool)

(declare-fun contains!9199 (List!31629 tuple2!24462) Bool)

(assert (=> b!1348759 (= e!767297 (contains!9199 (toList!11081 lt!596210) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!144445 res!894956) b!1348758))

(assert (= (and b!1348758 res!894955) b!1348759))

(declare-fun m!1235795 () Bool)

(assert (=> d!144445 m!1235795))

(declare-fun m!1235797 () Bool)

(assert (=> d!144445 m!1235797))

(declare-fun m!1235799 () Bool)

(assert (=> d!144445 m!1235799))

(declare-fun m!1235801 () Bool)

(assert (=> d!144445 m!1235801))

(declare-fun m!1235803 () Bool)

(assert (=> b!1348758 m!1235803))

(declare-fun m!1235805 () Bool)

(assert (=> b!1348759 m!1235805))

(assert (=> b!1348604 d!144445))

(declare-fun b!1348784 () Bool)

(declare-fun e!767314 () Bool)

(declare-fun e!767318 () Bool)

(assert (=> b!1348784 (= e!767314 e!767318)))

(declare-fun c!126435 () Bool)

(declare-fun e!767313 () Bool)

(assert (=> b!1348784 (= c!126435 e!767313)))

(declare-fun res!894968 () Bool)

(assert (=> b!1348784 (=> (not res!894968) (not e!767313))))

(assert (=> b!1348784 (= res!894968 (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44970 _keys!1571)))))

(declare-fun b!1348785 () Bool)

(declare-fun e!767316 () ListLongMap!22131)

(assert (=> b!1348785 (= e!767316 (ListLongMap!22132 Nil!31626))))

(declare-fun b!1348786 () Bool)

(declare-fun lt!596229 () ListLongMap!22131)

(declare-fun e!767317 () Bool)

(assert (=> b!1348786 (= e!767317 (= lt!596229 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) defaultEntry!1306)))))

(declare-fun b!1348788 () Bool)

(declare-fun lt!596228 () Unit!44127)

(declare-fun lt!596230 () Unit!44127)

(assert (=> b!1348788 (= lt!596228 lt!596230)))

(declare-fun lt!596233 () (_ BitVec 64))

(declare-fun lt!596227 () ListLongMap!22131)

(declare-fun lt!596232 () (_ BitVec 64))

(declare-fun lt!596231 () V!55203)

(assert (=> b!1348788 (not (contains!9196 (+!4826 lt!596227 (tuple2!24463 lt!596233 lt!596231)) lt!596232))))

(declare-fun addStillNotContains!512 (ListLongMap!22131 (_ BitVec 64) V!55203 (_ BitVec 64)) Unit!44127)

(assert (=> b!1348788 (= lt!596230 (addStillNotContains!512 lt!596227 lt!596233 lt!596231 lt!596232))))

(assert (=> b!1348788 (= lt!596232 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1348788 (= lt!596231 (get!22484 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1348788 (= lt!596233 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))

(declare-fun call!65146 () ListLongMap!22131)

(assert (=> b!1348788 (= lt!596227 call!65146)))

(declare-fun e!767315 () ListLongMap!22131)

(assert (=> b!1348788 (= e!767315 (+!4826 call!65146 (tuple2!24463 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22484 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1348789 () Bool)

(assert (=> b!1348789 (= e!767315 call!65146)))

(declare-fun b!1348790 () Bool)

(assert (=> b!1348790 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44970 _keys!1571)))))

(assert (=> b!1348790 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44971 _values!1303)))))

(declare-fun e!767312 () Bool)

(assert (=> b!1348790 (= e!767312 (= (apply!1074 lt!596229 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))) (get!22484 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1348791 () Bool)

(assert (=> b!1348791 (= e!767316 e!767315)))

(declare-fun c!126436 () Bool)

(assert (=> b!1348791 (= c!126436 (validKeyInArray!0 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(declare-fun b!1348792 () Bool)

(declare-fun res!894966 () Bool)

(assert (=> b!1348792 (=> (not res!894966) (not e!767314))))

(assert (=> b!1348792 (= res!894966 (not (contains!9196 lt!596229 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!144447 () Bool)

(assert (=> d!144447 e!767314))

(declare-fun res!894967 () Bool)

(assert (=> d!144447 (=> (not res!894967) (not e!767314))))

(assert (=> d!144447 (= res!894967 (not (contains!9196 lt!596229 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!144447 (= lt!596229 e!767316)))

(declare-fun c!126434 () Bool)

(assert (=> d!144447 (= c!126434 (bvsge (bvadd #b00000000000000000000000000000001 from!1960) (size!44970 _keys!1571)))))

(assert (=> d!144447 (validMask!0 mask!1977)))

(assert (=> d!144447 (= (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) lt!596229)))

(declare-fun b!1348787 () Bool)

(assert (=> b!1348787 (= e!767313 (validKeyInArray!0 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (=> b!1348787 (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000)))

(declare-fun b!1348793 () Bool)

(assert (=> b!1348793 (= e!767318 e!767317)))

(declare-fun c!126437 () Bool)

(assert (=> b!1348793 (= c!126437 (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44970 _keys!1571)))))

(declare-fun b!1348794 () Bool)

(declare-fun isEmpty!1098 (ListLongMap!22131) Bool)

(assert (=> b!1348794 (= e!767317 (isEmpty!1098 lt!596229))))

(declare-fun bm!65143 () Bool)

(assert (=> bm!65143 (= call!65146 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) defaultEntry!1306))))

(declare-fun b!1348795 () Bool)

(assert (=> b!1348795 (= e!767318 e!767312)))

(assert (=> b!1348795 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960) (size!44970 _keys!1571)))))

(declare-fun res!894965 () Bool)

(assert (=> b!1348795 (= res!894965 (contains!9196 lt!596229 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (=> b!1348795 (=> (not res!894965) (not e!767312))))

(assert (= (and d!144447 c!126434) b!1348785))

(assert (= (and d!144447 (not c!126434)) b!1348791))

(assert (= (and b!1348791 c!126436) b!1348788))

(assert (= (and b!1348791 (not c!126436)) b!1348789))

(assert (= (or b!1348788 b!1348789) bm!65143))

(assert (= (and d!144447 res!894967) b!1348792))

(assert (= (and b!1348792 res!894966) b!1348784))

(assert (= (and b!1348784 res!894968) b!1348787))

(assert (= (and b!1348784 c!126435) b!1348795))

(assert (= (and b!1348784 (not c!126435)) b!1348793))

(assert (= (and b!1348795 res!894965) b!1348790))

(assert (= (and b!1348793 c!126437) b!1348786))

(assert (= (and b!1348793 (not c!126437)) b!1348794))

(declare-fun b_lambda!24673 () Bool)

(assert (=> (not b_lambda!24673) (not b!1348788)))

(assert (=> b!1348788 t!46277))

(declare-fun b_and!50955 () Bool)

(assert (= b_and!50953 (and (=> t!46277 result!25993) b_and!50955)))

(declare-fun b_lambda!24675 () Bool)

(assert (=> (not b_lambda!24675) (not b!1348790)))

(assert (=> b!1348790 t!46277))

(declare-fun b_and!50957 () Bool)

(assert (= b_and!50955 (and (=> t!46277 result!25993) b_and!50957)))

(declare-fun m!1235807 () Bool)

(assert (=> b!1348791 m!1235807))

(assert (=> b!1348791 m!1235807))

(declare-fun m!1235809 () Bool)

(assert (=> b!1348791 m!1235809))

(declare-fun m!1235811 () Bool)

(assert (=> d!144447 m!1235811))

(assert (=> d!144447 m!1235667))

(assert (=> b!1348788 m!1235657))

(declare-fun m!1235813 () Bool)

(assert (=> b!1348788 m!1235813))

(assert (=> b!1348788 m!1235807))

(declare-fun m!1235815 () Bool)

(assert (=> b!1348788 m!1235815))

(declare-fun m!1235817 () Bool)

(assert (=> b!1348788 m!1235817))

(assert (=> b!1348788 m!1235657))

(declare-fun m!1235819 () Bool)

(assert (=> b!1348788 m!1235819))

(assert (=> b!1348788 m!1235817))

(assert (=> b!1348788 m!1235813))

(declare-fun m!1235821 () Bool)

(assert (=> b!1348788 m!1235821))

(declare-fun m!1235823 () Bool)

(assert (=> b!1348788 m!1235823))

(assert (=> b!1348795 m!1235807))

(assert (=> b!1348795 m!1235807))

(declare-fun m!1235825 () Bool)

(assert (=> b!1348795 m!1235825))

(declare-fun m!1235827 () Bool)

(assert (=> b!1348792 m!1235827))

(assert (=> b!1348787 m!1235807))

(assert (=> b!1348787 m!1235807))

(assert (=> b!1348787 m!1235809))

(declare-fun m!1235829 () Bool)

(assert (=> b!1348794 m!1235829))

(assert (=> b!1348790 m!1235657))

(assert (=> b!1348790 m!1235807))

(declare-fun m!1235831 () Bool)

(assert (=> b!1348790 m!1235831))

(assert (=> b!1348790 m!1235807))

(assert (=> b!1348790 m!1235817))

(assert (=> b!1348790 m!1235657))

(assert (=> b!1348790 m!1235819))

(assert (=> b!1348790 m!1235817))

(declare-fun m!1235833 () Bool)

(assert (=> bm!65143 m!1235833))

(assert (=> b!1348786 m!1235833))

(assert (=> b!1348604 d!144447))

(declare-fun d!144449 () Bool)

(declare-fun c!126440 () Bool)

(assert (=> d!144449 (= c!126440 ((_ is ValueCellFull!17889) (select (arr!44420 _values!1303) from!1960)))))

(declare-fun e!767321 () V!55203)

(assert (=> d!144449 (= (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)) e!767321)))

(declare-fun b!1348800 () Bool)

(declare-fun get!22485 (ValueCell!17889 V!55203) V!55203)

(assert (=> b!1348800 (= e!767321 (get!22485 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1348801 () Bool)

(declare-fun get!22486 (ValueCell!17889 V!55203) V!55203)

(assert (=> b!1348801 (= e!767321 (get!22486 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144449 c!126440) b!1348800))

(assert (= (and d!144449 (not c!126440)) b!1348801))

(assert (=> b!1348800 m!1235655))

(assert (=> b!1348800 m!1235657))

(declare-fun m!1235835 () Bool)

(assert (=> b!1348800 m!1235835))

(assert (=> b!1348801 m!1235655))

(assert (=> b!1348801 m!1235657))

(declare-fun m!1235837 () Bool)

(assert (=> b!1348801 m!1235837))

(assert (=> b!1348604 d!144449))

(declare-fun mapIsEmpty!58082 () Bool)

(declare-fun mapRes!58082 () Bool)

(assert (=> mapIsEmpty!58082 mapRes!58082))

(declare-fun b!1348809 () Bool)

(declare-fun e!767327 () Bool)

(assert (=> b!1348809 (= e!767327 tp_is_empty!37575)))

(declare-fun mapNonEmpty!58082 () Bool)

(declare-fun tp!110547 () Bool)

(declare-fun e!767326 () Bool)

(assert (=> mapNonEmpty!58082 (= mapRes!58082 (and tp!110547 e!767326))))

(declare-fun mapKey!58082 () (_ BitVec 32))

(declare-fun mapRest!58082 () (Array (_ BitVec 32) ValueCell!17889))

(declare-fun mapValue!58082 () ValueCell!17889)

(assert (=> mapNonEmpty!58082 (= mapRest!58076 (store mapRest!58082 mapKey!58082 mapValue!58082))))

(declare-fun b!1348808 () Bool)

(assert (=> b!1348808 (= e!767326 tp_is_empty!37575)))

(declare-fun condMapEmpty!58082 () Bool)

(declare-fun mapDefault!58082 () ValueCell!17889)

(assert (=> mapNonEmpty!58076 (= condMapEmpty!58082 (= mapRest!58076 ((as const (Array (_ BitVec 32) ValueCell!17889)) mapDefault!58082)))))

(assert (=> mapNonEmpty!58076 (= tp!110538 (and e!767327 mapRes!58082))))

(assert (= (and mapNonEmpty!58076 condMapEmpty!58082) mapIsEmpty!58082))

(assert (= (and mapNonEmpty!58076 (not condMapEmpty!58082)) mapNonEmpty!58082))

(assert (= (and mapNonEmpty!58082 ((_ is ValueCellFull!17889) mapValue!58082)) b!1348808))

(assert (= (and mapNonEmpty!58076 ((_ is ValueCellFull!17889) mapDefault!58082)) b!1348809))

(declare-fun m!1235839 () Bool)

(assert (=> mapNonEmpty!58082 m!1235839))

(declare-fun b_lambda!24677 () Bool)

(assert (= b_lambda!24675 (or (and start!113644 b_free!31575) b_lambda!24677)))

(declare-fun b_lambda!24679 () Bool)

(assert (= b_lambda!24671 (or (and start!113644 b_free!31575) b_lambda!24679)))

(declare-fun b_lambda!24681 () Bool)

(assert (= b_lambda!24673 (or (and start!113644 b_free!31575) b_lambda!24681)))

(check-sat (not b!1348676) (not b!1348744) (not b_lambda!24669) (not b!1348758) (not d!144431) (not b!1348801) (not b!1348759) (not b!1348792) (not b!1348751) (not b!1348740) (not bm!65143) (not b!1348753) (not b!1348662) (not d!144447) (not b!1348685) (not b!1348738) (not b!1348786) (not d!144433) (not bm!65136) (not b!1348794) (not mapNonEmpty!58082) (not b!1348746) (not bm!65116) (not b!1348790) (not bm!65135) (not b!1348666) (not b!1348788) (not b_next!31575) (not b!1348678) (not b_lambda!24677) (not b!1348749) (not b!1348733) (not b!1348737) (not d!144445) (not b_lambda!24681) (not b!1348743) (not b!1348800) (not d!144443) (not b!1348795) (not b_lambda!24679) b_and!50957 (not bm!65134) (not b!1348664) (not b!1348791) tp_is_empty!37575 (not b!1348687) (not bm!65139) (not b!1348787) (not bm!65119))
(check-sat b_and!50957 (not b_next!31575))
(get-model)

(declare-fun d!144451 () Bool)

(declare-fun e!767329 () Bool)

(assert (=> d!144451 e!767329))

(declare-fun res!894969 () Bool)

(assert (=> d!144451 (=> res!894969 e!767329)))

(declare-fun lt!596234 () Bool)

(assert (=> d!144451 (= res!894969 (not lt!596234))))

(declare-fun lt!596236 () Bool)

(assert (=> d!144451 (= lt!596234 lt!596236)))

(declare-fun lt!596235 () Unit!44127)

(declare-fun e!767328 () Unit!44127)

(assert (=> d!144451 (= lt!596235 e!767328)))

(declare-fun c!126441 () Bool)

(assert (=> d!144451 (= c!126441 lt!596236)))

(assert (=> d!144451 (= lt!596236 (containsKey!742 (toList!11081 lt!596229) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!144451 (= (contains!9196 lt!596229 #b0000000000000000000000000000000000000000000000000000000000000000) lt!596234)))

(declare-fun b!1348810 () Bool)

(declare-fun lt!596237 () Unit!44127)

(assert (=> b!1348810 (= e!767328 lt!596237)))

(assert (=> b!1348810 (= lt!596237 (lemmaContainsKeyImpliesGetValueByKeyDefined!487 (toList!11081 lt!596229) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1348810 (isDefined!527 (getValueByKey!724 (toList!11081 lt!596229) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1348811 () Bool)

(declare-fun Unit!44132 () Unit!44127)

(assert (=> b!1348811 (= e!767328 Unit!44132)))

(declare-fun b!1348812 () Bool)

(assert (=> b!1348812 (= e!767329 (isDefined!527 (getValueByKey!724 (toList!11081 lt!596229) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144451 c!126441) b!1348810))

(assert (= (and d!144451 (not c!126441)) b!1348811))

(assert (= (and d!144451 (not res!894969)) b!1348812))

(declare-fun m!1235841 () Bool)

(assert (=> d!144451 m!1235841))

(declare-fun m!1235843 () Bool)

(assert (=> b!1348810 m!1235843))

(declare-fun m!1235845 () Bool)

(assert (=> b!1348810 m!1235845))

(assert (=> b!1348810 m!1235845))

(declare-fun m!1235847 () Bool)

(assert (=> b!1348810 m!1235847))

(assert (=> b!1348812 m!1235845))

(assert (=> b!1348812 m!1235845))

(assert (=> b!1348812 m!1235847))

(assert (=> d!144447 d!144451))

(assert (=> d!144447 d!144437))

(declare-fun d!144453 () Bool)

(declare-fun e!767330 () Bool)

(assert (=> d!144453 e!767330))

(declare-fun res!894971 () Bool)

(assert (=> d!144453 (=> (not res!894971) (not e!767330))))

(declare-fun lt!596239 () ListLongMap!22131)

(assert (=> d!144453 (= res!894971 (contains!9196 lt!596239 (_1!12241 (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(declare-fun lt!596238 () List!31629)

(assert (=> d!144453 (= lt!596239 (ListLongMap!22132 lt!596238))))

(declare-fun lt!596240 () Unit!44127)

(declare-fun lt!596241 () Unit!44127)

(assert (=> d!144453 (= lt!596240 lt!596241)))

(assert (=> d!144453 (= (getValueByKey!724 lt!596238 (_1!12241 (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) (Some!774 (_2!12241 (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(assert (=> d!144453 (= lt!596241 (lemmaContainsTupThenGetReturnValue!367 lt!596238 (_1!12241 (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)) (_2!12241 (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(assert (=> d!144453 (= lt!596238 (insertStrictlySorted!496 (toList!11081 call!65137) (_1!12241 (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)) (_2!12241 (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(assert (=> d!144453 (= (+!4826 call!65137 (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)) lt!596239)))

(declare-fun b!1348813 () Bool)

(declare-fun res!894970 () Bool)

(assert (=> b!1348813 (=> (not res!894970) (not e!767330))))

(assert (=> b!1348813 (= res!894970 (= (getValueByKey!724 (toList!11081 lt!596239) (_1!12241 (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) (Some!774 (_2!12241 (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(declare-fun b!1348814 () Bool)

(assert (=> b!1348814 (= e!767330 (contains!9199 (toList!11081 lt!596239) (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))

(assert (= (and d!144453 res!894971) b!1348813))

(assert (= (and b!1348813 res!894970) b!1348814))

(declare-fun m!1235849 () Bool)

(assert (=> d!144453 m!1235849))

(declare-fun m!1235851 () Bool)

(assert (=> d!144453 m!1235851))

(declare-fun m!1235853 () Bool)

(assert (=> d!144453 m!1235853))

(declare-fun m!1235855 () Bool)

(assert (=> d!144453 m!1235855))

(declare-fun m!1235857 () Bool)

(assert (=> b!1348813 m!1235857))

(declare-fun m!1235859 () Bool)

(assert (=> b!1348814 m!1235859))

(assert (=> b!1348744 d!144453))

(assert (=> d!144433 d!144437))

(declare-fun d!144455 () Bool)

(assert (=> d!144455 (= (get!22485 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)) (v!21512 (select (arr!44420 _values!1303) from!1960)))))

(assert (=> b!1348800 d!144455))

(assert (=> b!1348746 d!144435))

(declare-fun b!1348815 () Bool)

(declare-fun e!767333 () Bool)

(declare-fun e!767337 () Bool)

(assert (=> b!1348815 (= e!767333 e!767337)))

(declare-fun c!126443 () Bool)

(declare-fun e!767332 () Bool)

(assert (=> b!1348815 (= c!126443 e!767332)))

(declare-fun res!894975 () Bool)

(assert (=> b!1348815 (=> (not res!894975) (not e!767332))))

(assert (=> b!1348815 (= res!894975 (bvslt (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) (size!44970 _keys!1571)))))

(declare-fun b!1348816 () Bool)

(declare-fun e!767335 () ListLongMap!22131)

(assert (=> b!1348816 (= e!767335 (ListLongMap!22132 Nil!31626))))

(declare-fun b!1348817 () Bool)

(declare-fun lt!596244 () ListLongMap!22131)

(declare-fun e!767336 () Bool)

(assert (=> b!1348817 (= e!767336 (= lt!596244 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1306)))))

(declare-fun b!1348819 () Bool)

(declare-fun lt!596243 () Unit!44127)

(declare-fun lt!596245 () Unit!44127)

(assert (=> b!1348819 (= lt!596243 lt!596245)))

(declare-fun lt!596247 () (_ BitVec 64))

(declare-fun lt!596242 () ListLongMap!22131)

(declare-fun lt!596246 () V!55203)

(declare-fun lt!596248 () (_ BitVec 64))

(assert (=> b!1348819 (not (contains!9196 (+!4826 lt!596242 (tuple2!24463 lt!596248 lt!596246)) lt!596247))))

(assert (=> b!1348819 (= lt!596245 (addStillNotContains!512 lt!596242 lt!596248 lt!596246 lt!596247))))

(assert (=> b!1348819 (= lt!596247 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1348819 (= lt!596246 (get!22484 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1348819 (= lt!596248 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001)))))

(declare-fun call!65147 () ListLongMap!22131)

(assert (=> b!1348819 (= lt!596242 call!65147)))

(declare-fun e!767334 () ListLongMap!22131)

(assert (=> b!1348819 (= e!767334 (+!4826 call!65147 (tuple2!24463 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001)) (get!22484 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1348820 () Bool)

(assert (=> b!1348820 (= e!767334 call!65147)))

(declare-fun b!1348821 () Bool)

(assert (=> b!1348821 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) (size!44970 _keys!1571)))))

(assert (=> b!1348821 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) (size!44971 _values!1303)))))

(declare-fun e!767331 () Bool)

(assert (=> b!1348821 (= e!767331 (= (apply!1074 lt!596244 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001))) (get!22484 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1348822 () Bool)

(assert (=> b!1348822 (= e!767335 e!767334)))

(declare-fun c!126444 () Bool)

(assert (=> b!1348822 (= c!126444 (validKeyInArray!0 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001))))))

(declare-fun b!1348823 () Bool)

(declare-fun res!894973 () Bool)

(assert (=> b!1348823 (=> (not res!894973) (not e!767333))))

(assert (=> b!1348823 (= res!894973 (not (contains!9196 lt!596244 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!144457 () Bool)

(assert (=> d!144457 e!767333))

(declare-fun res!894974 () Bool)

(assert (=> d!144457 (=> (not res!894974) (not e!767333))))

(assert (=> d!144457 (= res!894974 (not (contains!9196 lt!596244 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!144457 (= lt!596244 e!767335)))

(declare-fun c!126442 () Bool)

(assert (=> d!144457 (= c!126442 (bvsge (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) (size!44970 _keys!1571)))))

(assert (=> d!144457 (validMask!0 mask!1977)))

(assert (=> d!144457 (= (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) defaultEntry!1306) lt!596244)))

(declare-fun b!1348818 () Bool)

(assert (=> b!1348818 (= e!767332 (validKeyInArray!0 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001))))))

(assert (=> b!1348818 (bvsge (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1348824 () Bool)

(assert (=> b!1348824 (= e!767337 e!767336)))

(declare-fun c!126445 () Bool)

(assert (=> b!1348824 (= c!126445 (bvslt (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) (size!44970 _keys!1571)))))

(declare-fun b!1348825 () Bool)

(assert (=> b!1348825 (= e!767336 (isEmpty!1098 lt!596244))))

(declare-fun bm!65144 () Bool)

(assert (=> bm!65144 (= call!65147 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1306))))

(declare-fun b!1348826 () Bool)

(assert (=> b!1348826 (= e!767337 e!767331)))

(assert (=> b!1348826 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001) (size!44970 _keys!1571)))))

(declare-fun res!894972 () Bool)

(assert (=> b!1348826 (= res!894972 (contains!9196 lt!596244 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960 #b00000000000000000000000000000001))))))

(assert (=> b!1348826 (=> (not res!894972) (not e!767331))))

(assert (= (and d!144457 c!126442) b!1348816))

(assert (= (and d!144457 (not c!126442)) b!1348822))

(assert (= (and b!1348822 c!126444) b!1348819))

(assert (= (and b!1348822 (not c!126444)) b!1348820))

(assert (= (or b!1348819 b!1348820) bm!65144))

(assert (= (and d!144457 res!894974) b!1348823))

(assert (= (and b!1348823 res!894973) b!1348815))

(assert (= (and b!1348815 res!894975) b!1348818))

(assert (= (and b!1348815 c!126443) b!1348826))

(assert (= (and b!1348815 (not c!126443)) b!1348824))

(assert (= (and b!1348826 res!894972) b!1348821))

(assert (= (and b!1348824 c!126445) b!1348817))

(assert (= (and b!1348824 (not c!126445)) b!1348825))

(declare-fun b_lambda!24683 () Bool)

(assert (=> (not b_lambda!24683) (not b!1348819)))

(assert (=> b!1348819 t!46277))

(declare-fun b_and!50959 () Bool)

(assert (= b_and!50957 (and (=> t!46277 result!25993) b_and!50959)))

(declare-fun b_lambda!24685 () Bool)

(assert (=> (not b_lambda!24685) (not b!1348821)))

(assert (=> b!1348821 t!46277))

(declare-fun b_and!50961 () Bool)

(assert (= b_and!50959 (and (=> t!46277 result!25993) b_and!50961)))

(declare-fun m!1235861 () Bool)

(assert (=> b!1348822 m!1235861))

(assert (=> b!1348822 m!1235861))

(declare-fun m!1235863 () Bool)

(assert (=> b!1348822 m!1235863))

(declare-fun m!1235865 () Bool)

(assert (=> d!144457 m!1235865))

(assert (=> d!144457 m!1235667))

(assert (=> b!1348819 m!1235657))

(declare-fun m!1235867 () Bool)

(assert (=> b!1348819 m!1235867))

(assert (=> b!1348819 m!1235861))

(declare-fun m!1235869 () Bool)

(assert (=> b!1348819 m!1235869))

(declare-fun m!1235871 () Bool)

(assert (=> b!1348819 m!1235871))

(assert (=> b!1348819 m!1235657))

(declare-fun m!1235873 () Bool)

(assert (=> b!1348819 m!1235873))

(assert (=> b!1348819 m!1235871))

(assert (=> b!1348819 m!1235867))

(declare-fun m!1235875 () Bool)

(assert (=> b!1348819 m!1235875))

(declare-fun m!1235877 () Bool)

(assert (=> b!1348819 m!1235877))

(assert (=> b!1348826 m!1235861))

(assert (=> b!1348826 m!1235861))

(declare-fun m!1235879 () Bool)

(assert (=> b!1348826 m!1235879))

(declare-fun m!1235881 () Bool)

(assert (=> b!1348823 m!1235881))

(assert (=> b!1348818 m!1235861))

(assert (=> b!1348818 m!1235861))

(assert (=> b!1348818 m!1235863))

(declare-fun m!1235883 () Bool)

(assert (=> b!1348825 m!1235883))

(assert (=> b!1348821 m!1235657))

(assert (=> b!1348821 m!1235861))

(declare-fun m!1235885 () Bool)

(assert (=> b!1348821 m!1235885))

(assert (=> b!1348821 m!1235861))

(assert (=> b!1348821 m!1235871))

(assert (=> b!1348821 m!1235657))

(assert (=> b!1348821 m!1235873))

(assert (=> b!1348821 m!1235871))

(declare-fun m!1235887 () Bool)

(assert (=> bm!65144 m!1235887))

(assert (=> b!1348817 m!1235887))

(assert (=> b!1348786 d!144457))

(declare-fun d!144459 () Bool)

(assert (=> d!144459 (= (get!22486 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1348801 d!144459))

(declare-fun bm!65145 () Bool)

(declare-fun call!65148 () Bool)

(assert (=> bm!65145 (= call!65148 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1571 mask!1977))))

(declare-fun b!1348827 () Bool)

(declare-fun e!767340 () Bool)

(assert (=> b!1348827 (= e!767340 call!65148)))

(declare-fun b!1348828 () Bool)

(declare-fun e!767339 () Bool)

(declare-fun e!767338 () Bool)

(assert (=> b!1348828 (= e!767339 e!767338)))

(declare-fun c!126446 () Bool)

(assert (=> b!1348828 (= c!126446 (validKeyInArray!0 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1348830 () Bool)

(assert (=> b!1348830 (= e!767338 e!767340)))

(declare-fun lt!596249 () (_ BitVec 64))

(assert (=> b!1348830 (= lt!596249 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!596251 () Unit!44127)

(assert (=> b!1348830 (= lt!596251 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1571 lt!596249 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1348830 (arrayContainsKey!0 _keys!1571 lt!596249 #b00000000000000000000000000000000)))

(declare-fun lt!596250 () Unit!44127)

(assert (=> b!1348830 (= lt!596250 lt!596251)))

(declare-fun res!894976 () Bool)

(assert (=> b!1348830 (= res!894976 (= (seekEntryOrOpen!0 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1571 mask!1977) (Found!10055 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1348830 (=> (not res!894976) (not e!767340))))

(declare-fun d!144461 () Bool)

(declare-fun res!894977 () Bool)

(assert (=> d!144461 (=> res!894977 e!767339)))

(assert (=> d!144461 (= res!894977 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!44970 _keys!1571)))))

(assert (=> d!144461 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1571 mask!1977) e!767339)))

(declare-fun b!1348829 () Bool)

(assert (=> b!1348829 (= e!767338 call!65148)))

(assert (= (and d!144461 (not res!894977)) b!1348828))

(assert (= (and b!1348828 c!126446) b!1348830))

(assert (= (and b!1348828 (not c!126446)) b!1348829))

(assert (= (and b!1348830 res!894976) b!1348827))

(assert (= (or b!1348827 b!1348829) bm!65145))

(declare-fun m!1235889 () Bool)

(assert (=> bm!65145 m!1235889))

(declare-fun m!1235891 () Bool)

(assert (=> b!1348828 m!1235891))

(assert (=> b!1348828 m!1235891))

(declare-fun m!1235893 () Bool)

(assert (=> b!1348828 m!1235893))

(assert (=> b!1348830 m!1235891))

(declare-fun m!1235895 () Bool)

(assert (=> b!1348830 m!1235895))

(declare-fun m!1235897 () Bool)

(assert (=> b!1348830 m!1235897))

(assert (=> b!1348830 m!1235891))

(declare-fun m!1235899 () Bool)

(assert (=> b!1348830 m!1235899))

(assert (=> bm!65119 d!144461))

(declare-fun d!144463 () Bool)

(assert (=> d!144463 (= (validKeyInArray!0 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))) (and (not (= (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1348787 d!144463))

(declare-fun d!144465 () Bool)

(declare-fun e!767341 () Bool)

(assert (=> d!144465 e!767341))

(declare-fun res!894979 () Bool)

(assert (=> d!144465 (=> (not res!894979) (not e!767341))))

(declare-fun lt!596253 () ListLongMap!22131)

(assert (=> d!144465 (= res!894979 (contains!9196 lt!596253 (_1!12241 (tuple2!24463 lt!596233 lt!596231))))))

(declare-fun lt!596252 () List!31629)

(assert (=> d!144465 (= lt!596253 (ListLongMap!22132 lt!596252))))

(declare-fun lt!596254 () Unit!44127)

(declare-fun lt!596255 () Unit!44127)

(assert (=> d!144465 (= lt!596254 lt!596255)))

(assert (=> d!144465 (= (getValueByKey!724 lt!596252 (_1!12241 (tuple2!24463 lt!596233 lt!596231))) (Some!774 (_2!12241 (tuple2!24463 lt!596233 lt!596231))))))

(assert (=> d!144465 (= lt!596255 (lemmaContainsTupThenGetReturnValue!367 lt!596252 (_1!12241 (tuple2!24463 lt!596233 lt!596231)) (_2!12241 (tuple2!24463 lt!596233 lt!596231))))))

(assert (=> d!144465 (= lt!596252 (insertStrictlySorted!496 (toList!11081 lt!596227) (_1!12241 (tuple2!24463 lt!596233 lt!596231)) (_2!12241 (tuple2!24463 lt!596233 lt!596231))))))

(assert (=> d!144465 (= (+!4826 lt!596227 (tuple2!24463 lt!596233 lt!596231)) lt!596253)))

(declare-fun b!1348831 () Bool)

(declare-fun res!894978 () Bool)

(assert (=> b!1348831 (=> (not res!894978) (not e!767341))))

(assert (=> b!1348831 (= res!894978 (= (getValueByKey!724 (toList!11081 lt!596253) (_1!12241 (tuple2!24463 lt!596233 lt!596231))) (Some!774 (_2!12241 (tuple2!24463 lt!596233 lt!596231)))))))

(declare-fun b!1348832 () Bool)

(assert (=> b!1348832 (= e!767341 (contains!9199 (toList!11081 lt!596253) (tuple2!24463 lt!596233 lt!596231)))))

(assert (= (and d!144465 res!894979) b!1348831))

(assert (= (and b!1348831 res!894978) b!1348832))

(declare-fun m!1235901 () Bool)

(assert (=> d!144465 m!1235901))

(declare-fun m!1235903 () Bool)

(assert (=> d!144465 m!1235903))

(declare-fun m!1235905 () Bool)

(assert (=> d!144465 m!1235905))

(declare-fun m!1235907 () Bool)

(assert (=> d!144465 m!1235907))

(declare-fun m!1235909 () Bool)

(assert (=> b!1348831 m!1235909))

(declare-fun m!1235911 () Bool)

(assert (=> b!1348832 m!1235911))

(assert (=> b!1348788 d!144465))

(declare-fun d!144467 () Bool)

(declare-fun c!126447 () Bool)

(assert (=> d!144467 (= c!126447 ((_ is ValueCellFull!17889) (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960))))))

(declare-fun e!767342 () V!55203)

(assert (=> d!144467 (= (get!22484 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)) e!767342)))

(declare-fun b!1348833 () Bool)

(assert (=> b!1348833 (= e!767342 (get!22485 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1348834 () Bool)

(assert (=> b!1348834 (= e!767342 (get!22486 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144467 c!126447) b!1348833))

(assert (= (and d!144467 (not c!126447)) b!1348834))

(assert (=> b!1348833 m!1235817))

(assert (=> b!1348833 m!1235657))

(declare-fun m!1235913 () Bool)

(assert (=> b!1348833 m!1235913))

(assert (=> b!1348834 m!1235817))

(assert (=> b!1348834 m!1235657))

(declare-fun m!1235915 () Bool)

(assert (=> b!1348834 m!1235915))

(assert (=> b!1348788 d!144467))

(declare-fun d!144469 () Bool)

(declare-fun e!767344 () Bool)

(assert (=> d!144469 e!767344))

(declare-fun res!894980 () Bool)

(assert (=> d!144469 (=> res!894980 e!767344)))

(declare-fun lt!596256 () Bool)

(assert (=> d!144469 (= res!894980 (not lt!596256))))

(declare-fun lt!596258 () Bool)

(assert (=> d!144469 (= lt!596256 lt!596258)))

(declare-fun lt!596257 () Unit!44127)

(declare-fun e!767343 () Unit!44127)

(assert (=> d!144469 (= lt!596257 e!767343)))

(declare-fun c!126448 () Bool)

(assert (=> d!144469 (= c!126448 lt!596258)))

(assert (=> d!144469 (= lt!596258 (containsKey!742 (toList!11081 (+!4826 lt!596227 (tuple2!24463 lt!596233 lt!596231))) lt!596232))))

(assert (=> d!144469 (= (contains!9196 (+!4826 lt!596227 (tuple2!24463 lt!596233 lt!596231)) lt!596232) lt!596256)))

(declare-fun b!1348835 () Bool)

(declare-fun lt!596259 () Unit!44127)

(assert (=> b!1348835 (= e!767343 lt!596259)))

(assert (=> b!1348835 (= lt!596259 (lemmaContainsKeyImpliesGetValueByKeyDefined!487 (toList!11081 (+!4826 lt!596227 (tuple2!24463 lt!596233 lt!596231))) lt!596232))))

(assert (=> b!1348835 (isDefined!527 (getValueByKey!724 (toList!11081 (+!4826 lt!596227 (tuple2!24463 lt!596233 lt!596231))) lt!596232))))

(declare-fun b!1348836 () Bool)

(declare-fun Unit!44133 () Unit!44127)

(assert (=> b!1348836 (= e!767343 Unit!44133)))

(declare-fun b!1348837 () Bool)

(assert (=> b!1348837 (= e!767344 (isDefined!527 (getValueByKey!724 (toList!11081 (+!4826 lt!596227 (tuple2!24463 lt!596233 lt!596231))) lt!596232)))))

(assert (= (and d!144469 c!126448) b!1348835))

(assert (= (and d!144469 (not c!126448)) b!1348836))

(assert (= (and d!144469 (not res!894980)) b!1348837))

(declare-fun m!1235917 () Bool)

(assert (=> d!144469 m!1235917))

(declare-fun m!1235919 () Bool)

(assert (=> b!1348835 m!1235919))

(declare-fun m!1235921 () Bool)

(assert (=> b!1348835 m!1235921))

(assert (=> b!1348835 m!1235921))

(declare-fun m!1235923 () Bool)

(assert (=> b!1348835 m!1235923))

(assert (=> b!1348837 m!1235921))

(assert (=> b!1348837 m!1235921))

(assert (=> b!1348837 m!1235923))

(assert (=> b!1348788 d!144469))

(declare-fun d!144471 () Bool)

(declare-fun e!767345 () Bool)

(assert (=> d!144471 e!767345))

(declare-fun res!894982 () Bool)

(assert (=> d!144471 (=> (not res!894982) (not e!767345))))

(declare-fun lt!596261 () ListLongMap!22131)

(assert (=> d!144471 (= res!894982 (contains!9196 lt!596261 (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22484 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!596260 () List!31629)

(assert (=> d!144471 (= lt!596261 (ListLongMap!22132 lt!596260))))

(declare-fun lt!596262 () Unit!44127)

(declare-fun lt!596263 () Unit!44127)

(assert (=> d!144471 (= lt!596262 lt!596263)))

(assert (=> d!144471 (= (getValueByKey!724 lt!596260 (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22484 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!774 (_2!12241 (tuple2!24463 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22484 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!144471 (= lt!596263 (lemmaContainsTupThenGetReturnValue!367 lt!596260 (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22484 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12241 (tuple2!24463 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22484 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!144471 (= lt!596260 (insertStrictlySorted!496 (toList!11081 call!65146) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22484 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12241 (tuple2!24463 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22484 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!144471 (= (+!4826 call!65146 (tuple2!24463 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22484 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!596261)))

(declare-fun b!1348838 () Bool)

(declare-fun res!894981 () Bool)

(assert (=> b!1348838 (=> (not res!894981) (not e!767345))))

(assert (=> b!1348838 (= res!894981 (= (getValueByKey!724 (toList!11081 lt!596261) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22484 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!774 (_2!12241 (tuple2!24463 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22484 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1348839 () Bool)

(assert (=> b!1348839 (= e!767345 (contains!9199 (toList!11081 lt!596261) (tuple2!24463 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)) (get!22484 (select (arr!44420 _values!1303) (bvadd #b00000000000000000000000000000001 from!1960)) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!144471 res!894982) b!1348838))

(assert (= (and b!1348838 res!894981) b!1348839))

(declare-fun m!1235925 () Bool)

(assert (=> d!144471 m!1235925))

(declare-fun m!1235927 () Bool)

(assert (=> d!144471 m!1235927))

(declare-fun m!1235929 () Bool)

(assert (=> d!144471 m!1235929))

(declare-fun m!1235931 () Bool)

(assert (=> d!144471 m!1235931))

(declare-fun m!1235933 () Bool)

(assert (=> b!1348838 m!1235933))

(declare-fun m!1235935 () Bool)

(assert (=> b!1348839 m!1235935))

(assert (=> b!1348788 d!144471))

(declare-fun d!144473 () Bool)

(assert (=> d!144473 (not (contains!9196 (+!4826 lt!596227 (tuple2!24463 lt!596233 lt!596231)) lt!596232))))

(declare-fun lt!596266 () Unit!44127)

(declare-fun choose!1987 (ListLongMap!22131 (_ BitVec 64) V!55203 (_ BitVec 64)) Unit!44127)

(assert (=> d!144473 (= lt!596266 (choose!1987 lt!596227 lt!596233 lt!596231 lt!596232))))

(declare-fun e!767348 () Bool)

(assert (=> d!144473 e!767348))

(declare-fun res!894985 () Bool)

(assert (=> d!144473 (=> (not res!894985) (not e!767348))))

(assert (=> d!144473 (= res!894985 (not (contains!9196 lt!596227 lt!596232)))))

(assert (=> d!144473 (= (addStillNotContains!512 lt!596227 lt!596233 lt!596231 lt!596232) lt!596266)))

(declare-fun b!1348843 () Bool)

(assert (=> b!1348843 (= e!767348 (not (= lt!596233 lt!596232)))))

(assert (= (and d!144473 res!894985) b!1348843))

(assert (=> d!144473 m!1235813))

(assert (=> d!144473 m!1235813))

(assert (=> d!144473 m!1235821))

(declare-fun m!1235937 () Bool)

(assert (=> d!144473 m!1235937))

(declare-fun m!1235939 () Bool)

(assert (=> d!144473 m!1235939))

(assert (=> b!1348788 d!144473))

(assert (=> b!1348738 d!144435))

(declare-fun d!144475 () Bool)

(declare-fun res!894990 () Bool)

(declare-fun e!767353 () Bool)

(assert (=> d!144475 (=> res!894990 e!767353)))

(assert (=> d!144475 (= res!894990 (and ((_ is Cons!31625) (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))) (= (_1!12241 (h!32834 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)))) k0!1142)))))

(assert (=> d!144475 (= (containsKey!742 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142) e!767353)))

(declare-fun b!1348848 () Bool)

(declare-fun e!767354 () Bool)

(assert (=> b!1348848 (= e!767353 e!767354)))

(declare-fun res!894991 () Bool)

(assert (=> b!1348848 (=> (not res!894991) (not e!767354))))

(assert (=> b!1348848 (= res!894991 (and (or (not ((_ is Cons!31625) (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)))) (bvsle (_1!12241 (h!32834 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)))) k0!1142)) ((_ is Cons!31625) (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))) (bvslt (_1!12241 (h!32834 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)))) k0!1142)))))

(declare-fun b!1348849 () Bool)

(assert (=> b!1348849 (= e!767354 (containsKey!742 (t!46278 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))) k0!1142))))

(assert (= (and d!144475 (not res!894990)) b!1348848))

(assert (= (and b!1348848 res!894991) b!1348849))

(declare-fun m!1235941 () Bool)

(assert (=> b!1348849 m!1235941))

(assert (=> d!144431 d!144475))

(declare-fun d!144477 () Bool)

(declare-fun get!22487 (Option!775) V!55203)

(assert (=> d!144477 (= (apply!1074 lt!596189 #b0000000000000000000000000000000000000000000000000000000000000000) (get!22487 (getValueByKey!724 (toList!11081 lt!596189) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!38654 () Bool)

(assert (= bs!38654 d!144477))

(declare-fun m!1235943 () Bool)

(assert (=> bs!38654 m!1235943))

(assert (=> bs!38654 m!1235943))

(declare-fun m!1235945 () Bool)

(assert (=> bs!38654 m!1235945))

(assert (=> b!1348740 d!144477))

(declare-fun d!144479 () Bool)

(declare-fun e!767356 () Bool)

(assert (=> d!144479 e!767356))

(declare-fun res!894992 () Bool)

(assert (=> d!144479 (=> res!894992 e!767356)))

(declare-fun lt!596267 () Bool)

(assert (=> d!144479 (= res!894992 (not lt!596267))))

(declare-fun lt!596269 () Bool)

(assert (=> d!144479 (= lt!596267 lt!596269)))

(declare-fun lt!596268 () Unit!44127)

(declare-fun e!767355 () Unit!44127)

(assert (=> d!144479 (= lt!596268 e!767355)))

(declare-fun c!126449 () Bool)

(assert (=> d!144479 (= c!126449 lt!596269)))

(assert (=> d!144479 (= lt!596269 (containsKey!742 (toList!11081 lt!596210) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!144479 (= (contains!9196 lt!596210 (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!596267)))

(declare-fun b!1348850 () Bool)

(declare-fun lt!596270 () Unit!44127)

(assert (=> b!1348850 (= e!767355 lt!596270)))

(assert (=> b!1348850 (= lt!596270 (lemmaContainsKeyImpliesGetValueByKeyDefined!487 (toList!11081 lt!596210) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!1348850 (isDefined!527 (getValueByKey!724 (toList!11081 lt!596210) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1348851 () Bool)

(declare-fun Unit!44134 () Unit!44127)

(assert (=> b!1348851 (= e!767355 Unit!44134)))

(declare-fun b!1348852 () Bool)

(assert (=> b!1348852 (= e!767356 (isDefined!527 (getValueByKey!724 (toList!11081 lt!596210) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!144479 c!126449) b!1348850))

(assert (= (and d!144479 (not c!126449)) b!1348851))

(assert (= (and d!144479 (not res!894992)) b!1348852))

(declare-fun m!1235947 () Bool)

(assert (=> d!144479 m!1235947))

(declare-fun m!1235949 () Bool)

(assert (=> b!1348850 m!1235949))

(assert (=> b!1348850 m!1235803))

(assert (=> b!1348850 m!1235803))

(declare-fun m!1235951 () Bool)

(assert (=> b!1348850 m!1235951))

(assert (=> b!1348852 m!1235803))

(assert (=> b!1348852 m!1235803))

(assert (=> b!1348852 m!1235951))

(assert (=> d!144445 d!144479))

(declare-fun c!126454 () Bool)

(declare-fun d!144481 () Bool)

(assert (=> d!144481 (= c!126454 (and ((_ is Cons!31625) lt!596209) (= (_1!12241 (h!32834 lt!596209)) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!767361 () Option!775)

(assert (=> d!144481 (= (getValueByKey!724 lt!596209 (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!767361)))

(declare-fun b!1348861 () Bool)

(assert (=> b!1348861 (= e!767361 (Some!774 (_2!12241 (h!32834 lt!596209))))))

(declare-fun b!1348862 () Bool)

(declare-fun e!767362 () Option!775)

(assert (=> b!1348862 (= e!767361 e!767362)))

(declare-fun c!126455 () Bool)

(assert (=> b!1348862 (= c!126455 (and ((_ is Cons!31625) lt!596209) (not (= (_1!12241 (h!32834 lt!596209)) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!1348864 () Bool)

(assert (=> b!1348864 (= e!767362 None!773)))

(declare-fun b!1348863 () Bool)

(assert (=> b!1348863 (= e!767362 (getValueByKey!724 (t!46278 lt!596209) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!144481 c!126454) b!1348861))

(assert (= (and d!144481 (not c!126454)) b!1348862))

(assert (= (and b!1348862 c!126455) b!1348863))

(assert (= (and b!1348862 (not c!126455)) b!1348864))

(declare-fun m!1235953 () Bool)

(assert (=> b!1348863 m!1235953))

(assert (=> d!144445 d!144481))

(declare-fun d!144483 () Bool)

(assert (=> d!144483 (= (getValueByKey!724 lt!596209 (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!774 (_2!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!596273 () Unit!44127)

(declare-fun choose!1988 (List!31629 (_ BitVec 64) V!55203) Unit!44127)

(assert (=> d!144483 (= lt!596273 (choose!1988 lt!596209 (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!767365 () Bool)

(assert (=> d!144483 e!767365))

(declare-fun res!894997 () Bool)

(assert (=> d!144483 (=> (not res!894997) (not e!767365))))

(declare-fun isStrictlySorted!879 (List!31629) Bool)

(assert (=> d!144483 (= res!894997 (isStrictlySorted!879 lt!596209))))

(assert (=> d!144483 (= (lemmaContainsTupThenGetReturnValue!367 lt!596209 (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!596273)))

(declare-fun b!1348869 () Bool)

(declare-fun res!894998 () Bool)

(assert (=> b!1348869 (=> (not res!894998) (not e!767365))))

(assert (=> b!1348869 (= res!894998 (containsKey!742 lt!596209 (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1348870 () Bool)

(assert (=> b!1348870 (= e!767365 (contains!9199 lt!596209 (tuple2!24463 (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!144483 res!894997) b!1348869))

(assert (= (and b!1348869 res!894998) b!1348870))

(assert (=> d!144483 m!1235797))

(declare-fun m!1235955 () Bool)

(assert (=> d!144483 m!1235955))

(declare-fun m!1235957 () Bool)

(assert (=> d!144483 m!1235957))

(declare-fun m!1235959 () Bool)

(assert (=> b!1348869 m!1235959))

(declare-fun m!1235961 () Bool)

(assert (=> b!1348870 m!1235961))

(assert (=> d!144445 d!144483))

(declare-fun b!1348891 () Bool)

(declare-fun e!767380 () List!31629)

(assert (=> b!1348891 (= e!767380 (insertStrictlySorted!496 (t!46278 (toList!11081 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1348892 () Bool)

(declare-fun res!895003 () Bool)

(declare-fun e!767377 () Bool)

(assert (=> b!1348892 (=> (not res!895003) (not e!767377))))

(declare-fun lt!596276 () List!31629)

(assert (=> b!1348892 (= res!895003 (containsKey!742 lt!596276 (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1348893 () Bool)

(declare-fun e!767378 () List!31629)

(declare-fun call!65157 () List!31629)

(assert (=> b!1348893 (= e!767378 call!65157)))

(declare-fun b!1348894 () Bool)

(declare-fun e!767376 () List!31629)

(declare-fun call!65156 () List!31629)

(assert (=> b!1348894 (= e!767376 call!65156)))

(declare-fun b!1348895 () Bool)

(assert (=> b!1348895 (= e!767377 (contains!9199 lt!596276 (tuple2!24463 (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun bm!65152 () Bool)

(declare-fun call!65155 () List!31629)

(assert (=> bm!65152 (= call!65156 call!65155)))

(declare-fun d!144485 () Bool)

(assert (=> d!144485 e!767377))

(declare-fun res!895004 () Bool)

(assert (=> d!144485 (=> (not res!895004) (not e!767377))))

(assert (=> d!144485 (= res!895004 (isStrictlySorted!879 lt!596276))))

(declare-fun e!767379 () List!31629)

(assert (=> d!144485 (= lt!596276 e!767379)))

(declare-fun c!126465 () Bool)

(assert (=> d!144485 (= c!126465 (and ((_ is Cons!31625) (toList!11081 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) (bvslt (_1!12241 (h!32834 (toList!11081 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)))) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!144485 (isStrictlySorted!879 (toList!11081 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)))))

(assert (=> d!144485 (= (insertStrictlySorted!496 (toList!11081 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!596276)))

(declare-fun b!1348896 () Bool)

(assert (=> b!1348896 (= e!767378 call!65157)))

(declare-fun b!1348897 () Bool)

(assert (=> b!1348897 (= e!767379 call!65155)))

(declare-fun bm!65153 () Bool)

(assert (=> bm!65153 (= call!65157 call!65156)))

(declare-fun b!1348898 () Bool)

(declare-fun c!126466 () Bool)

(assert (=> b!1348898 (= c!126466 (and ((_ is Cons!31625) (toList!11081 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) (bvsgt (_1!12241 (h!32834 (toList!11081 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)))) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> b!1348898 (= e!767376 e!767378)))

(declare-fun b!1348899 () Bool)

(declare-fun c!126464 () Bool)

(assert (=> b!1348899 (= e!767380 (ite c!126464 (t!46278 (toList!11081 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) (ite c!126466 (Cons!31625 (h!32834 (toList!11081 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) (t!46278 (toList!11081 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)))) Nil!31626)))))

(declare-fun bm!65154 () Bool)

(declare-fun $colon$colon!675 (List!31629 tuple2!24462) List!31629)

(assert (=> bm!65154 (= call!65155 ($colon$colon!675 e!767380 (ite c!126465 (h!32834 (toList!11081 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) (tuple2!24463 (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun c!126467 () Bool)

(assert (=> bm!65154 (= c!126467 c!126465)))

(declare-fun b!1348900 () Bool)

(assert (=> b!1348900 (= e!767379 e!767376)))

(assert (=> b!1348900 (= c!126464 (and ((_ is Cons!31625) (toList!11081 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))) (= (_1!12241 (h!32834 (toList!11081 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306)))) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!144485 c!126465) b!1348897))

(assert (= (and d!144485 (not c!126465)) b!1348900))

(assert (= (and b!1348900 c!126464) b!1348894))

(assert (= (and b!1348900 (not c!126464)) b!1348898))

(assert (= (and b!1348898 c!126466) b!1348896))

(assert (= (and b!1348898 (not c!126466)) b!1348893))

(assert (= (or b!1348896 b!1348893) bm!65153))

(assert (= (or b!1348894 bm!65153) bm!65152))

(assert (= (or b!1348897 bm!65152) bm!65154))

(assert (= (and bm!65154 c!126467) b!1348891))

(assert (= (and bm!65154 (not c!126467)) b!1348899))

(assert (= (and d!144485 res!895004) b!1348892))

(assert (= (and b!1348892 res!895003) b!1348895))

(declare-fun m!1235963 () Bool)

(assert (=> b!1348895 m!1235963))

(declare-fun m!1235965 () Bool)

(assert (=> b!1348892 m!1235965))

(declare-fun m!1235967 () Bool)

(assert (=> b!1348891 m!1235967))

(declare-fun m!1235969 () Bool)

(assert (=> bm!65154 m!1235969))

(declare-fun m!1235971 () Bool)

(assert (=> d!144485 m!1235971))

(declare-fun m!1235973 () Bool)

(assert (=> d!144485 m!1235973))

(assert (=> d!144445 d!144485))

(declare-fun d!144487 () Bool)

(declare-fun res!895005 () Bool)

(declare-fun e!767381 () Bool)

(assert (=> d!144487 (=> res!895005 e!767381)))

(assert (=> d!144487 (= res!895005 (and ((_ is Cons!31625) (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (= (_1!12241 (h!32834 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))) k0!1142)))))

(assert (=> d!144487 (= (containsKey!742 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1142) e!767381)))

(declare-fun b!1348901 () Bool)

(declare-fun e!767382 () Bool)

(assert (=> b!1348901 (= e!767381 e!767382)))

(declare-fun res!895006 () Bool)

(assert (=> b!1348901 (=> (not res!895006) (not e!767382))))

(assert (=> b!1348901 (= res!895006 (and (or (not ((_ is Cons!31625) (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))) (bvsle (_1!12241 (h!32834 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))) k0!1142)) ((_ is Cons!31625) (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (bvslt (_1!12241 (h!32834 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))) k0!1142)))))

(declare-fun b!1348902 () Bool)

(assert (=> b!1348902 (= e!767382 (containsKey!742 (t!46278 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))) k0!1142))))

(assert (= (and d!144487 (not res!895005)) b!1348901))

(assert (= (and b!1348901 res!895006) b!1348902))

(declare-fun m!1235975 () Bool)

(assert (=> b!1348902 m!1235975))

(assert (=> d!144443 d!144487))

(declare-fun d!144489 () Bool)

(declare-fun e!767384 () Bool)

(assert (=> d!144489 e!767384))

(declare-fun res!895007 () Bool)

(assert (=> d!144489 (=> res!895007 e!767384)))

(declare-fun lt!596277 () Bool)

(assert (=> d!144489 (= res!895007 (not lt!596277))))

(declare-fun lt!596279 () Bool)

(assert (=> d!144489 (= lt!596277 lt!596279)))

(declare-fun lt!596278 () Unit!44127)

(declare-fun e!767383 () Unit!44127)

(assert (=> d!144489 (= lt!596278 e!767383)))

(declare-fun c!126468 () Bool)

(assert (=> d!144489 (= c!126468 lt!596279)))

(assert (=> d!144489 (= lt!596279 (containsKey!742 (toList!11081 lt!596189) (select (arr!44419 _keys!1571) from!1960)))))

(assert (=> d!144489 (= (contains!9196 lt!596189 (select (arr!44419 _keys!1571) from!1960)) lt!596277)))

(declare-fun b!1348903 () Bool)

(declare-fun lt!596280 () Unit!44127)

(assert (=> b!1348903 (= e!767383 lt!596280)))

(assert (=> b!1348903 (= lt!596280 (lemmaContainsKeyImpliesGetValueByKeyDefined!487 (toList!11081 lt!596189) (select (arr!44419 _keys!1571) from!1960)))))

(assert (=> b!1348903 (isDefined!527 (getValueByKey!724 (toList!11081 lt!596189) (select (arr!44419 _keys!1571) from!1960)))))

(declare-fun b!1348904 () Bool)

(declare-fun Unit!44135 () Unit!44127)

(assert (=> b!1348904 (= e!767383 Unit!44135)))

(declare-fun b!1348905 () Bool)

(assert (=> b!1348905 (= e!767384 (isDefined!527 (getValueByKey!724 (toList!11081 lt!596189) (select (arr!44419 _keys!1571) from!1960))))))

(assert (= (and d!144489 c!126468) b!1348903))

(assert (= (and d!144489 (not c!126468)) b!1348904))

(assert (= (and d!144489 (not res!895007)) b!1348905))

(assert (=> d!144489 m!1235665))

(declare-fun m!1235977 () Bool)

(assert (=> d!144489 m!1235977))

(assert (=> b!1348903 m!1235665))

(declare-fun m!1235979 () Bool)

(assert (=> b!1348903 m!1235979))

(assert (=> b!1348903 m!1235665))

(declare-fun m!1235981 () Bool)

(assert (=> b!1348903 m!1235981))

(assert (=> b!1348903 m!1235981))

(declare-fun m!1235983 () Bool)

(assert (=> b!1348903 m!1235983))

(assert (=> b!1348905 m!1235665))

(assert (=> b!1348905 m!1235981))

(assert (=> b!1348905 m!1235981))

(assert (=> b!1348905 m!1235983))

(assert (=> b!1348743 d!144489))

(declare-fun d!144491 () Bool)

(declare-fun isEmpty!1099 (List!31629) Bool)

(assert (=> d!144491 (= (isEmpty!1098 lt!596229) (isEmpty!1099 (toList!11081 lt!596229)))))

(declare-fun bs!38655 () Bool)

(assert (= bs!38655 d!144491))

(declare-fun m!1235985 () Bool)

(assert (=> bs!38655 m!1235985))

(assert (=> b!1348794 d!144491))

(declare-fun d!144493 () Bool)

(declare-fun lt!596283 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!672 (List!31630) (InoxSet (_ BitVec 64)))

(assert (=> d!144493 (= lt!596283 (select (content!672 Nil!31627) (select (arr!44419 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun e!767390 () Bool)

(assert (=> d!144493 (= lt!596283 e!767390)))

(declare-fun res!895013 () Bool)

(assert (=> d!144493 (=> (not res!895013) (not e!767390))))

(assert (=> d!144493 (= res!895013 ((_ is Cons!31626) Nil!31627))))

(assert (=> d!144493 (= (contains!9198 Nil!31627 (select (arr!44419 _keys!1571) #b00000000000000000000000000000000)) lt!596283)))

(declare-fun b!1348910 () Bool)

(declare-fun e!767389 () Bool)

(assert (=> b!1348910 (= e!767390 e!767389)))

(declare-fun res!895012 () Bool)

(assert (=> b!1348910 (=> res!895012 e!767389)))

(assert (=> b!1348910 (= res!895012 (= (h!32835 Nil!31627) (select (arr!44419 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun b!1348911 () Bool)

(assert (=> b!1348911 (= e!767389 (contains!9198 (t!46279 Nil!31627) (select (arr!44419 _keys!1571) #b00000000000000000000000000000000)))))

(assert (= (and d!144493 res!895013) b!1348910))

(assert (= (and b!1348910 (not res!895012)) b!1348911))

(declare-fun m!1235987 () Bool)

(assert (=> d!144493 m!1235987))

(assert (=> d!144493 m!1235715))

(declare-fun m!1235989 () Bool)

(assert (=> d!144493 m!1235989))

(assert (=> b!1348911 m!1235715))

(declare-fun m!1235991 () Bool)

(assert (=> b!1348911 m!1235991))

(assert (=> b!1348666 d!144493))

(assert (=> bm!65143 d!144457))

(declare-fun d!144495 () Bool)

(declare-fun isEmpty!1100 (Option!775) Bool)

(assert (=> d!144495 (= (isDefined!527 (getValueByKey!724 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142)) (not (isEmpty!1100 (getValueByKey!724 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))))

(declare-fun bs!38656 () Bool)

(assert (= bs!38656 d!144495))

(assert (=> bs!38656 m!1235735))

(declare-fun m!1235993 () Bool)

(assert (=> bs!38656 m!1235993))

(assert (=> b!1348687 d!144495))

(declare-fun c!126469 () Bool)

(declare-fun d!144497 () Bool)

(assert (=> d!144497 (= c!126469 (and ((_ is Cons!31625) (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))) (= (_1!12241 (h!32834 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)))) k0!1142)))))

(declare-fun e!767391 () Option!775)

(assert (=> d!144497 (= (getValueByKey!724 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142) e!767391)))

(declare-fun b!1348912 () Bool)

(assert (=> b!1348912 (= e!767391 (Some!774 (_2!12241 (h!32834 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))))))

(declare-fun b!1348913 () Bool)

(declare-fun e!767392 () Option!775)

(assert (=> b!1348913 (= e!767391 e!767392)))

(declare-fun c!126470 () Bool)

(assert (=> b!1348913 (= c!126470 (and ((_ is Cons!31625) (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))) (not (= (_1!12241 (h!32834 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)))) k0!1142))))))

(declare-fun b!1348915 () Bool)

(assert (=> b!1348915 (= e!767392 None!773)))

(declare-fun b!1348914 () Bool)

(assert (=> b!1348914 (= e!767392 (getValueByKey!724 (t!46278 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))) k0!1142))))

(assert (= (and d!144497 c!126469) b!1348912))

(assert (= (and d!144497 (not c!126469)) b!1348913))

(assert (= (and b!1348913 c!126470) b!1348914))

(assert (= (and b!1348913 (not c!126470)) b!1348915))

(declare-fun m!1235995 () Bool)

(assert (=> b!1348914 m!1235995))

(assert (=> b!1348687 d!144497))

(declare-fun d!144499 () Bool)

(declare-fun e!767394 () Bool)

(assert (=> d!144499 e!767394))

(declare-fun res!895014 () Bool)

(assert (=> d!144499 (=> res!895014 e!767394)))

(declare-fun lt!596284 () Bool)

(assert (=> d!144499 (= res!895014 (not lt!596284))))

(declare-fun lt!596286 () Bool)

(assert (=> d!144499 (= lt!596284 lt!596286)))

(declare-fun lt!596285 () Unit!44127)

(declare-fun e!767393 () Unit!44127)

(assert (=> d!144499 (= lt!596285 e!767393)))

(declare-fun c!126471 () Bool)

(assert (=> d!144499 (= c!126471 lt!596286)))

(assert (=> d!144499 (= lt!596286 (containsKey!742 (toList!11081 lt!596229) (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (=> d!144499 (= (contains!9196 lt!596229 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))) lt!596284)))

(declare-fun b!1348916 () Bool)

(declare-fun lt!596287 () Unit!44127)

(assert (=> b!1348916 (= e!767393 lt!596287)))

(assert (=> b!1348916 (= lt!596287 (lemmaContainsKeyImpliesGetValueByKeyDefined!487 (toList!11081 lt!596229) (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(assert (=> b!1348916 (isDefined!527 (getValueByKey!724 (toList!11081 lt!596229) (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))))))

(declare-fun b!1348917 () Bool)

(declare-fun Unit!44136 () Unit!44127)

(assert (=> b!1348917 (= e!767393 Unit!44136)))

(declare-fun b!1348918 () Bool)

(assert (=> b!1348918 (= e!767394 (isDefined!527 (getValueByKey!724 (toList!11081 lt!596229) (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))))

(assert (= (and d!144499 c!126471) b!1348916))

(assert (= (and d!144499 (not c!126471)) b!1348917))

(assert (= (and d!144499 (not res!895014)) b!1348918))

(assert (=> d!144499 m!1235807))

(declare-fun m!1235997 () Bool)

(assert (=> d!144499 m!1235997))

(assert (=> b!1348916 m!1235807))

(declare-fun m!1235999 () Bool)

(assert (=> b!1348916 m!1235999))

(assert (=> b!1348916 m!1235807))

(declare-fun m!1236001 () Bool)

(assert (=> b!1348916 m!1236001))

(assert (=> b!1348916 m!1236001))

(declare-fun m!1236003 () Bool)

(assert (=> b!1348916 m!1236003))

(assert (=> b!1348918 m!1235807))

(assert (=> b!1348918 m!1236001))

(assert (=> b!1348918 m!1236001))

(assert (=> b!1348918 m!1236003))

(assert (=> b!1348795 d!144499))

(declare-fun d!144501 () Bool)

(assert (=> d!144501 (= (apply!1074 (+!4826 lt!596181 (tuple2!24463 lt!596179 minValue!1245)) lt!596186) (get!22487 (getValueByKey!724 (toList!11081 (+!4826 lt!596181 (tuple2!24463 lt!596179 minValue!1245))) lt!596186)))))

(declare-fun bs!38657 () Bool)

(assert (= bs!38657 d!144501))

(declare-fun m!1236005 () Bool)

(assert (=> bs!38657 m!1236005))

(assert (=> bs!38657 m!1236005))

(declare-fun m!1236007 () Bool)

(assert (=> bs!38657 m!1236007))

(assert (=> b!1348737 d!144501))

(declare-fun d!144503 () Bool)

(declare-fun e!767395 () Bool)

(assert (=> d!144503 e!767395))

(declare-fun res!895016 () Bool)

(assert (=> d!144503 (=> (not res!895016) (not e!767395))))

(declare-fun lt!596289 () ListLongMap!22131)

(assert (=> d!144503 (= res!895016 (contains!9196 lt!596289 (_1!12241 (tuple2!24463 lt!596192 minValue!1245))))))

(declare-fun lt!596288 () List!31629)

(assert (=> d!144503 (= lt!596289 (ListLongMap!22132 lt!596288))))

(declare-fun lt!596290 () Unit!44127)

(declare-fun lt!596291 () Unit!44127)

(assert (=> d!144503 (= lt!596290 lt!596291)))

(assert (=> d!144503 (= (getValueByKey!724 lt!596288 (_1!12241 (tuple2!24463 lt!596192 minValue!1245))) (Some!774 (_2!12241 (tuple2!24463 lt!596192 minValue!1245))))))

(assert (=> d!144503 (= lt!596291 (lemmaContainsTupThenGetReturnValue!367 lt!596288 (_1!12241 (tuple2!24463 lt!596192 minValue!1245)) (_2!12241 (tuple2!24463 lt!596192 minValue!1245))))))

(assert (=> d!144503 (= lt!596288 (insertStrictlySorted!496 (toList!11081 lt!596183) (_1!12241 (tuple2!24463 lt!596192 minValue!1245)) (_2!12241 (tuple2!24463 lt!596192 minValue!1245))))))

(assert (=> d!144503 (= (+!4826 lt!596183 (tuple2!24463 lt!596192 minValue!1245)) lt!596289)))

(declare-fun b!1348919 () Bool)

(declare-fun res!895015 () Bool)

(assert (=> b!1348919 (=> (not res!895015) (not e!767395))))

(assert (=> b!1348919 (= res!895015 (= (getValueByKey!724 (toList!11081 lt!596289) (_1!12241 (tuple2!24463 lt!596192 minValue!1245))) (Some!774 (_2!12241 (tuple2!24463 lt!596192 minValue!1245)))))))

(declare-fun b!1348920 () Bool)

(assert (=> b!1348920 (= e!767395 (contains!9199 (toList!11081 lt!596289) (tuple2!24463 lt!596192 minValue!1245)))))

(assert (= (and d!144503 res!895016) b!1348919))

(assert (= (and b!1348919 res!895015) b!1348920))

(declare-fun m!1236009 () Bool)

(assert (=> d!144503 m!1236009))

(declare-fun m!1236011 () Bool)

(assert (=> d!144503 m!1236011))

(declare-fun m!1236013 () Bool)

(assert (=> d!144503 m!1236013))

(declare-fun m!1236015 () Bool)

(assert (=> d!144503 m!1236015))

(declare-fun m!1236017 () Bool)

(assert (=> b!1348919 m!1236017))

(declare-fun m!1236019 () Bool)

(assert (=> b!1348920 m!1236019))

(assert (=> b!1348737 d!144503))

(declare-fun d!144505 () Bool)

(assert (=> d!144505 (contains!9196 (+!4826 lt!596187 (tuple2!24463 lt!596194 zeroValue!1245)) lt!596177)))

(declare-fun lt!596294 () Unit!44127)

(declare-fun choose!1989 (ListLongMap!22131 (_ BitVec 64) V!55203 (_ BitVec 64)) Unit!44127)

(assert (=> d!144505 (= lt!596294 (choose!1989 lt!596187 lt!596194 zeroValue!1245 lt!596177))))

(assert (=> d!144505 (contains!9196 lt!596187 lt!596177)))

(assert (=> d!144505 (= (addStillContains!1219 lt!596187 lt!596194 zeroValue!1245 lt!596177) lt!596294)))

(declare-fun bs!38658 () Bool)

(assert (= bs!38658 d!144505))

(assert (=> bs!38658 m!1235739))

(assert (=> bs!38658 m!1235739))

(assert (=> bs!38658 m!1235769))

(declare-fun m!1236021 () Bool)

(assert (=> bs!38658 m!1236021))

(declare-fun m!1236023 () Bool)

(assert (=> bs!38658 m!1236023))

(assert (=> b!1348737 d!144505))

(declare-fun d!144507 () Bool)

(assert (=> d!144507 (= (apply!1074 (+!4826 lt!596195 (tuple2!24463 lt!596190 zeroValue!1245)) lt!596193) (apply!1074 lt!596195 lt!596193))))

(declare-fun lt!596297 () Unit!44127)

(declare-fun choose!1990 (ListLongMap!22131 (_ BitVec 64) V!55203 (_ BitVec 64)) Unit!44127)

(assert (=> d!144507 (= lt!596297 (choose!1990 lt!596195 lt!596190 zeroValue!1245 lt!596193))))

(declare-fun e!767398 () Bool)

(assert (=> d!144507 e!767398))

(declare-fun res!895019 () Bool)

(assert (=> d!144507 (=> (not res!895019) (not e!767398))))

(assert (=> d!144507 (= res!895019 (contains!9196 lt!596195 lt!596193))))

(assert (=> d!144507 (= (addApplyDifferent!577 lt!596195 lt!596190 zeroValue!1245 lt!596193) lt!596297)))

(declare-fun b!1348925 () Bool)

(assert (=> b!1348925 (= e!767398 (not (= lt!596193 lt!596190)))))

(assert (= (and d!144507 res!895019) b!1348925))

(declare-fun m!1236025 () Bool)

(assert (=> d!144507 m!1236025))

(assert (=> d!144507 m!1235751))

(assert (=> d!144507 m!1235753))

(assert (=> d!144507 m!1235751))

(assert (=> d!144507 m!1235757))

(declare-fun m!1236027 () Bool)

(assert (=> d!144507 m!1236027))

(assert (=> b!1348737 d!144507))

(declare-fun d!144509 () Bool)

(declare-fun e!767399 () Bool)

(assert (=> d!144509 e!767399))

(declare-fun res!895021 () Bool)

(assert (=> d!144509 (=> (not res!895021) (not e!767399))))

(declare-fun lt!596299 () ListLongMap!22131)

(assert (=> d!144509 (= res!895021 (contains!9196 lt!596299 (_1!12241 (tuple2!24463 lt!596194 zeroValue!1245))))))

(declare-fun lt!596298 () List!31629)

(assert (=> d!144509 (= lt!596299 (ListLongMap!22132 lt!596298))))

(declare-fun lt!596300 () Unit!44127)

(declare-fun lt!596301 () Unit!44127)

(assert (=> d!144509 (= lt!596300 lt!596301)))

(assert (=> d!144509 (= (getValueByKey!724 lt!596298 (_1!12241 (tuple2!24463 lt!596194 zeroValue!1245))) (Some!774 (_2!12241 (tuple2!24463 lt!596194 zeroValue!1245))))))

(assert (=> d!144509 (= lt!596301 (lemmaContainsTupThenGetReturnValue!367 lt!596298 (_1!12241 (tuple2!24463 lt!596194 zeroValue!1245)) (_2!12241 (tuple2!24463 lt!596194 zeroValue!1245))))))

(assert (=> d!144509 (= lt!596298 (insertStrictlySorted!496 (toList!11081 lt!596187) (_1!12241 (tuple2!24463 lt!596194 zeroValue!1245)) (_2!12241 (tuple2!24463 lt!596194 zeroValue!1245))))))

(assert (=> d!144509 (= (+!4826 lt!596187 (tuple2!24463 lt!596194 zeroValue!1245)) lt!596299)))

(declare-fun b!1348926 () Bool)

(declare-fun res!895020 () Bool)

(assert (=> b!1348926 (=> (not res!895020) (not e!767399))))

(assert (=> b!1348926 (= res!895020 (= (getValueByKey!724 (toList!11081 lt!596299) (_1!12241 (tuple2!24463 lt!596194 zeroValue!1245))) (Some!774 (_2!12241 (tuple2!24463 lt!596194 zeroValue!1245)))))))

(declare-fun b!1348927 () Bool)

(assert (=> b!1348927 (= e!767399 (contains!9199 (toList!11081 lt!596299) (tuple2!24463 lt!596194 zeroValue!1245)))))

(assert (= (and d!144509 res!895021) b!1348926))

(assert (= (and b!1348926 res!895020) b!1348927))

(declare-fun m!1236029 () Bool)

(assert (=> d!144509 m!1236029))

(declare-fun m!1236031 () Bool)

(assert (=> d!144509 m!1236031))

(declare-fun m!1236033 () Bool)

(assert (=> d!144509 m!1236033))

(declare-fun m!1236035 () Bool)

(assert (=> d!144509 m!1236035))

(declare-fun m!1236037 () Bool)

(assert (=> b!1348926 m!1236037))

(declare-fun m!1236039 () Bool)

(assert (=> b!1348927 m!1236039))

(assert (=> b!1348737 d!144509))

(declare-fun d!144511 () Bool)

(assert (=> d!144511 (= (apply!1074 (+!4826 lt!596183 (tuple2!24463 lt!596192 minValue!1245)) lt!596178) (apply!1074 lt!596183 lt!596178))))

(declare-fun lt!596302 () Unit!44127)

(assert (=> d!144511 (= lt!596302 (choose!1990 lt!596183 lt!596192 minValue!1245 lt!596178))))

(declare-fun e!767400 () Bool)

(assert (=> d!144511 e!767400))

(declare-fun res!895022 () Bool)

(assert (=> d!144511 (=> (not res!895022) (not e!767400))))

(assert (=> d!144511 (= res!895022 (contains!9196 lt!596183 lt!596178))))

(assert (=> d!144511 (= (addApplyDifferent!577 lt!596183 lt!596192 minValue!1245 lt!596178) lt!596302)))

(declare-fun b!1348928 () Bool)

(assert (=> b!1348928 (= e!767400 (not (= lt!596178 lt!596192)))))

(assert (= (and d!144511 res!895022) b!1348928))

(declare-fun m!1236041 () Bool)

(assert (=> d!144511 m!1236041))

(assert (=> d!144511 m!1235741))

(assert (=> d!144511 m!1235743))

(assert (=> d!144511 m!1235741))

(assert (=> d!144511 m!1235761))

(declare-fun m!1236043 () Bool)

(assert (=> d!144511 m!1236043))

(assert (=> b!1348737 d!144511))

(declare-fun d!144513 () Bool)

(assert (=> d!144513 (= (apply!1074 (+!4826 lt!596183 (tuple2!24463 lt!596192 minValue!1245)) lt!596178) (get!22487 (getValueByKey!724 (toList!11081 (+!4826 lt!596183 (tuple2!24463 lt!596192 minValue!1245))) lt!596178)))))

(declare-fun bs!38659 () Bool)

(assert (= bs!38659 d!144513))

(declare-fun m!1236045 () Bool)

(assert (=> bs!38659 m!1236045))

(assert (=> bs!38659 m!1236045))

(declare-fun m!1236047 () Bool)

(assert (=> bs!38659 m!1236047))

(assert (=> b!1348737 d!144513))

(declare-fun d!144515 () Bool)

(assert (=> d!144515 (= (apply!1074 lt!596183 lt!596178) (get!22487 (getValueByKey!724 (toList!11081 lt!596183) lt!596178)))))

(declare-fun bs!38660 () Bool)

(assert (= bs!38660 d!144515))

(declare-fun m!1236049 () Bool)

(assert (=> bs!38660 m!1236049))

(assert (=> bs!38660 m!1236049))

(declare-fun m!1236051 () Bool)

(assert (=> bs!38660 m!1236051))

(assert (=> b!1348737 d!144515))

(declare-fun d!144517 () Bool)

(assert (=> d!144517 (= (apply!1074 lt!596195 lt!596193) (get!22487 (getValueByKey!724 (toList!11081 lt!596195) lt!596193)))))

(declare-fun bs!38661 () Bool)

(assert (= bs!38661 d!144517))

(declare-fun m!1236053 () Bool)

(assert (=> bs!38661 m!1236053))

(assert (=> bs!38661 m!1236053))

(declare-fun m!1236055 () Bool)

(assert (=> bs!38661 m!1236055))

(assert (=> b!1348737 d!144517))

(declare-fun d!144519 () Bool)

(assert (=> d!144519 (= (apply!1074 lt!596181 lt!596186) (get!22487 (getValueByKey!724 (toList!11081 lt!596181) lt!596186)))))

(declare-fun bs!38662 () Bool)

(assert (= bs!38662 d!144519))

(declare-fun m!1236057 () Bool)

(assert (=> bs!38662 m!1236057))

(assert (=> bs!38662 m!1236057))

(declare-fun m!1236059 () Bool)

(assert (=> bs!38662 m!1236059))

(assert (=> b!1348737 d!144519))

(declare-fun d!144521 () Bool)

(assert (=> d!144521 (= (apply!1074 (+!4826 lt!596181 (tuple2!24463 lt!596179 minValue!1245)) lt!596186) (apply!1074 lt!596181 lt!596186))))

(declare-fun lt!596303 () Unit!44127)

(assert (=> d!144521 (= lt!596303 (choose!1990 lt!596181 lt!596179 minValue!1245 lt!596186))))

(declare-fun e!767401 () Bool)

(assert (=> d!144521 e!767401))

(declare-fun res!895023 () Bool)

(assert (=> d!144521 (=> (not res!895023) (not e!767401))))

(assert (=> d!144521 (= res!895023 (contains!9196 lt!596181 lt!596186))))

(assert (=> d!144521 (= (addApplyDifferent!577 lt!596181 lt!596179 minValue!1245 lt!596186) lt!596303)))

(declare-fun b!1348929 () Bool)

(assert (=> b!1348929 (= e!767401 (not (= lt!596186 lt!596179)))))

(assert (= (and d!144521 res!895023) b!1348929))

(declare-fun m!1236061 () Bool)

(assert (=> d!144521 m!1236061))

(assert (=> d!144521 m!1235745))

(assert (=> d!144521 m!1235759))

(assert (=> d!144521 m!1235745))

(assert (=> d!144521 m!1235749))

(declare-fun m!1236063 () Bool)

(assert (=> d!144521 m!1236063))

(assert (=> b!1348737 d!144521))

(declare-fun d!144523 () Bool)

(declare-fun e!767402 () Bool)

(assert (=> d!144523 e!767402))

(declare-fun res!895025 () Bool)

(assert (=> d!144523 (=> (not res!895025) (not e!767402))))

(declare-fun lt!596305 () ListLongMap!22131)

(assert (=> d!144523 (= res!895025 (contains!9196 lt!596305 (_1!12241 (tuple2!24463 lt!596179 minValue!1245))))))

(declare-fun lt!596304 () List!31629)

(assert (=> d!144523 (= lt!596305 (ListLongMap!22132 lt!596304))))

(declare-fun lt!596306 () Unit!44127)

(declare-fun lt!596307 () Unit!44127)

(assert (=> d!144523 (= lt!596306 lt!596307)))

(assert (=> d!144523 (= (getValueByKey!724 lt!596304 (_1!12241 (tuple2!24463 lt!596179 minValue!1245))) (Some!774 (_2!12241 (tuple2!24463 lt!596179 minValue!1245))))))

(assert (=> d!144523 (= lt!596307 (lemmaContainsTupThenGetReturnValue!367 lt!596304 (_1!12241 (tuple2!24463 lt!596179 minValue!1245)) (_2!12241 (tuple2!24463 lt!596179 minValue!1245))))))

(assert (=> d!144523 (= lt!596304 (insertStrictlySorted!496 (toList!11081 lt!596181) (_1!12241 (tuple2!24463 lt!596179 minValue!1245)) (_2!12241 (tuple2!24463 lt!596179 minValue!1245))))))

(assert (=> d!144523 (= (+!4826 lt!596181 (tuple2!24463 lt!596179 minValue!1245)) lt!596305)))

(declare-fun b!1348930 () Bool)

(declare-fun res!895024 () Bool)

(assert (=> b!1348930 (=> (not res!895024) (not e!767402))))

(assert (=> b!1348930 (= res!895024 (= (getValueByKey!724 (toList!11081 lt!596305) (_1!12241 (tuple2!24463 lt!596179 minValue!1245))) (Some!774 (_2!12241 (tuple2!24463 lt!596179 minValue!1245)))))))

(declare-fun b!1348931 () Bool)

(assert (=> b!1348931 (= e!767402 (contains!9199 (toList!11081 lt!596305) (tuple2!24463 lt!596179 minValue!1245)))))

(assert (= (and d!144523 res!895025) b!1348930))

(assert (= (and b!1348930 res!895024) b!1348931))

(declare-fun m!1236065 () Bool)

(assert (=> d!144523 m!1236065))

(declare-fun m!1236067 () Bool)

(assert (=> d!144523 m!1236067))

(declare-fun m!1236069 () Bool)

(assert (=> d!144523 m!1236069))

(declare-fun m!1236071 () Bool)

(assert (=> d!144523 m!1236071))

(declare-fun m!1236073 () Bool)

(assert (=> b!1348930 m!1236073))

(declare-fun m!1236075 () Bool)

(assert (=> b!1348931 m!1236075))

(assert (=> b!1348737 d!144523))

(declare-fun d!144525 () Bool)

(declare-fun e!767404 () Bool)

(assert (=> d!144525 e!767404))

(declare-fun res!895026 () Bool)

(assert (=> d!144525 (=> res!895026 e!767404)))

(declare-fun lt!596308 () Bool)

(assert (=> d!144525 (= res!895026 (not lt!596308))))

(declare-fun lt!596310 () Bool)

(assert (=> d!144525 (= lt!596308 lt!596310)))

(declare-fun lt!596309 () Unit!44127)

(declare-fun e!767403 () Unit!44127)

(assert (=> d!144525 (= lt!596309 e!767403)))

(declare-fun c!126472 () Bool)

(assert (=> d!144525 (= c!126472 lt!596310)))

(assert (=> d!144525 (= lt!596310 (containsKey!742 (toList!11081 (+!4826 lt!596187 (tuple2!24463 lt!596194 zeroValue!1245))) lt!596177))))

(assert (=> d!144525 (= (contains!9196 (+!4826 lt!596187 (tuple2!24463 lt!596194 zeroValue!1245)) lt!596177) lt!596308)))

(declare-fun b!1348932 () Bool)

(declare-fun lt!596311 () Unit!44127)

(assert (=> b!1348932 (= e!767403 lt!596311)))

(assert (=> b!1348932 (= lt!596311 (lemmaContainsKeyImpliesGetValueByKeyDefined!487 (toList!11081 (+!4826 lt!596187 (tuple2!24463 lt!596194 zeroValue!1245))) lt!596177))))

(assert (=> b!1348932 (isDefined!527 (getValueByKey!724 (toList!11081 (+!4826 lt!596187 (tuple2!24463 lt!596194 zeroValue!1245))) lt!596177))))

(declare-fun b!1348933 () Bool)

(declare-fun Unit!44137 () Unit!44127)

(assert (=> b!1348933 (= e!767403 Unit!44137)))

(declare-fun b!1348934 () Bool)

(assert (=> b!1348934 (= e!767404 (isDefined!527 (getValueByKey!724 (toList!11081 (+!4826 lt!596187 (tuple2!24463 lt!596194 zeroValue!1245))) lt!596177)))))

(assert (= (and d!144525 c!126472) b!1348932))

(assert (= (and d!144525 (not c!126472)) b!1348933))

(assert (= (and d!144525 (not res!895026)) b!1348934))

(declare-fun m!1236077 () Bool)

(assert (=> d!144525 m!1236077))

(declare-fun m!1236079 () Bool)

(assert (=> b!1348932 m!1236079))

(declare-fun m!1236081 () Bool)

(assert (=> b!1348932 m!1236081))

(assert (=> b!1348932 m!1236081))

(declare-fun m!1236083 () Bool)

(assert (=> b!1348932 m!1236083))

(assert (=> b!1348934 m!1236081))

(assert (=> b!1348934 m!1236081))

(assert (=> b!1348934 m!1236083))

(assert (=> b!1348737 d!144525))

(declare-fun d!144527 () Bool)

(declare-fun e!767405 () Bool)

(assert (=> d!144527 e!767405))

(declare-fun res!895028 () Bool)

(assert (=> d!144527 (=> (not res!895028) (not e!767405))))

(declare-fun lt!596313 () ListLongMap!22131)

(assert (=> d!144527 (= res!895028 (contains!9196 lt!596313 (_1!12241 (tuple2!24463 lt!596190 zeroValue!1245))))))

(declare-fun lt!596312 () List!31629)

(assert (=> d!144527 (= lt!596313 (ListLongMap!22132 lt!596312))))

(declare-fun lt!596314 () Unit!44127)

(declare-fun lt!596315 () Unit!44127)

(assert (=> d!144527 (= lt!596314 lt!596315)))

(assert (=> d!144527 (= (getValueByKey!724 lt!596312 (_1!12241 (tuple2!24463 lt!596190 zeroValue!1245))) (Some!774 (_2!12241 (tuple2!24463 lt!596190 zeroValue!1245))))))

(assert (=> d!144527 (= lt!596315 (lemmaContainsTupThenGetReturnValue!367 lt!596312 (_1!12241 (tuple2!24463 lt!596190 zeroValue!1245)) (_2!12241 (tuple2!24463 lt!596190 zeroValue!1245))))))

(assert (=> d!144527 (= lt!596312 (insertStrictlySorted!496 (toList!11081 lt!596195) (_1!12241 (tuple2!24463 lt!596190 zeroValue!1245)) (_2!12241 (tuple2!24463 lt!596190 zeroValue!1245))))))

(assert (=> d!144527 (= (+!4826 lt!596195 (tuple2!24463 lt!596190 zeroValue!1245)) lt!596313)))

(declare-fun b!1348935 () Bool)

(declare-fun res!895027 () Bool)

(assert (=> b!1348935 (=> (not res!895027) (not e!767405))))

(assert (=> b!1348935 (= res!895027 (= (getValueByKey!724 (toList!11081 lt!596313) (_1!12241 (tuple2!24463 lt!596190 zeroValue!1245))) (Some!774 (_2!12241 (tuple2!24463 lt!596190 zeroValue!1245)))))))

(declare-fun b!1348936 () Bool)

(assert (=> b!1348936 (= e!767405 (contains!9199 (toList!11081 lt!596313) (tuple2!24463 lt!596190 zeroValue!1245)))))

(assert (= (and d!144527 res!895028) b!1348935))

(assert (= (and b!1348935 res!895027) b!1348936))

(declare-fun m!1236085 () Bool)

(assert (=> d!144527 m!1236085))

(declare-fun m!1236087 () Bool)

(assert (=> d!144527 m!1236087))

(declare-fun m!1236089 () Bool)

(assert (=> d!144527 m!1236089))

(declare-fun m!1236091 () Bool)

(assert (=> d!144527 m!1236091))

(declare-fun m!1236093 () Bool)

(assert (=> b!1348935 m!1236093))

(declare-fun m!1236095 () Bool)

(assert (=> b!1348936 m!1236095))

(assert (=> b!1348737 d!144527))

(declare-fun b!1348937 () Bool)

(declare-fun e!767408 () Bool)

(declare-fun e!767412 () Bool)

(assert (=> b!1348937 (= e!767408 e!767412)))

(declare-fun c!126474 () Bool)

(declare-fun e!767407 () Bool)

(assert (=> b!1348937 (= c!126474 e!767407)))

(declare-fun res!895032 () Bool)

(assert (=> b!1348937 (=> (not res!895032) (not e!767407))))

(assert (=> b!1348937 (= res!895032 (bvslt from!1960 (size!44970 _keys!1571)))))

(declare-fun b!1348938 () Bool)

(declare-fun e!767410 () ListLongMap!22131)

(assert (=> b!1348938 (= e!767410 (ListLongMap!22132 Nil!31626))))

(declare-fun lt!596318 () ListLongMap!22131)

(declare-fun e!767411 () Bool)

(declare-fun b!1348939 () Bool)

(assert (=> b!1348939 (= e!767411 (= lt!596318 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd from!1960 #b00000000000000000000000000000001) defaultEntry!1306)))))

(declare-fun b!1348941 () Bool)

(declare-fun lt!596317 () Unit!44127)

(declare-fun lt!596319 () Unit!44127)

(assert (=> b!1348941 (= lt!596317 lt!596319)))

(declare-fun lt!596322 () (_ BitVec 64))

(declare-fun lt!596321 () (_ BitVec 64))

(declare-fun lt!596316 () ListLongMap!22131)

(declare-fun lt!596320 () V!55203)

(assert (=> b!1348941 (not (contains!9196 (+!4826 lt!596316 (tuple2!24463 lt!596322 lt!596320)) lt!596321))))

(assert (=> b!1348941 (= lt!596319 (addStillNotContains!512 lt!596316 lt!596322 lt!596320 lt!596321))))

(assert (=> b!1348941 (= lt!596321 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1348941 (= lt!596320 (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1348941 (= lt!596322 (select (arr!44419 _keys!1571) from!1960))))

(declare-fun call!65158 () ListLongMap!22131)

(assert (=> b!1348941 (= lt!596316 call!65158)))

(declare-fun e!767409 () ListLongMap!22131)

(assert (=> b!1348941 (= e!767409 (+!4826 call!65158 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1348942 () Bool)

(assert (=> b!1348942 (= e!767409 call!65158)))

(declare-fun b!1348943 () Bool)

(assert (=> b!1348943 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44970 _keys!1571)))))

(assert (=> b!1348943 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44971 _values!1303)))))

(declare-fun e!767406 () Bool)

(assert (=> b!1348943 (= e!767406 (= (apply!1074 lt!596318 (select (arr!44419 _keys!1571) from!1960)) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1348944 () Bool)

(assert (=> b!1348944 (= e!767410 e!767409)))

(declare-fun c!126475 () Bool)

(assert (=> b!1348944 (= c!126475 (validKeyInArray!0 (select (arr!44419 _keys!1571) from!1960)))))

(declare-fun b!1348945 () Bool)

(declare-fun res!895030 () Bool)

(assert (=> b!1348945 (=> (not res!895030) (not e!767408))))

(assert (=> b!1348945 (= res!895030 (not (contains!9196 lt!596318 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!144529 () Bool)

(assert (=> d!144529 e!767408))

(declare-fun res!895031 () Bool)

(assert (=> d!144529 (=> (not res!895031) (not e!767408))))

(assert (=> d!144529 (= res!895031 (not (contains!9196 lt!596318 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!144529 (= lt!596318 e!767410)))

(declare-fun c!126473 () Bool)

(assert (=> d!144529 (= c!126473 (bvsge from!1960 (size!44970 _keys!1571)))))

(assert (=> d!144529 (validMask!0 mask!1977)))

(assert (=> d!144529 (= (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) lt!596318)))

(declare-fun b!1348940 () Bool)

(assert (=> b!1348940 (= e!767407 (validKeyInArray!0 (select (arr!44419 _keys!1571) from!1960)))))

(assert (=> b!1348940 (bvsge from!1960 #b00000000000000000000000000000000)))

(declare-fun b!1348946 () Bool)

(assert (=> b!1348946 (= e!767412 e!767411)))

(declare-fun c!126476 () Bool)

(assert (=> b!1348946 (= c!126476 (bvslt from!1960 (size!44970 _keys!1571)))))

(declare-fun b!1348947 () Bool)

(assert (=> b!1348947 (= e!767411 (isEmpty!1098 lt!596318))))

(declare-fun bm!65155 () Bool)

(assert (=> bm!65155 (= call!65158 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd from!1960 #b00000000000000000000000000000001) defaultEntry!1306))))

(declare-fun b!1348948 () Bool)

(assert (=> b!1348948 (= e!767412 e!767406)))

(assert (=> b!1348948 (and (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44970 _keys!1571)))))

(declare-fun res!895029 () Bool)

(assert (=> b!1348948 (= res!895029 (contains!9196 lt!596318 (select (arr!44419 _keys!1571) from!1960)))))

(assert (=> b!1348948 (=> (not res!895029) (not e!767406))))

(assert (= (and d!144529 c!126473) b!1348938))

(assert (= (and d!144529 (not c!126473)) b!1348944))

(assert (= (and b!1348944 c!126475) b!1348941))

(assert (= (and b!1348944 (not c!126475)) b!1348942))

(assert (= (or b!1348941 b!1348942) bm!65155))

(assert (= (and d!144529 res!895031) b!1348945))

(assert (= (and b!1348945 res!895030) b!1348937))

(assert (= (and b!1348937 res!895032) b!1348940))

(assert (= (and b!1348937 c!126474) b!1348948))

(assert (= (and b!1348937 (not c!126474)) b!1348946))

(assert (= (and b!1348948 res!895029) b!1348943))

(assert (= (and b!1348946 c!126476) b!1348939))

(assert (= (and b!1348946 (not c!126476)) b!1348947))

(declare-fun b_lambda!24687 () Bool)

(assert (=> (not b_lambda!24687) (not b!1348941)))

(assert (=> b!1348941 t!46277))

(declare-fun b_and!50963 () Bool)

(assert (= b_and!50961 (and (=> t!46277 result!25993) b_and!50963)))

(declare-fun b_lambda!24689 () Bool)

(assert (=> (not b_lambda!24689) (not b!1348943)))

(assert (=> b!1348943 t!46277))

(declare-fun b_and!50965 () Bool)

(assert (= b_and!50963 (and (=> t!46277 result!25993) b_and!50965)))

(assert (=> b!1348944 m!1235665))

(assert (=> b!1348944 m!1235665))

(assert (=> b!1348944 m!1235673))

(declare-fun m!1236097 () Bool)

(assert (=> d!144529 m!1236097))

(assert (=> d!144529 m!1235667))

(assert (=> b!1348941 m!1235657))

(declare-fun m!1236099 () Bool)

(assert (=> b!1348941 m!1236099))

(assert (=> b!1348941 m!1235665))

(declare-fun m!1236101 () Bool)

(assert (=> b!1348941 m!1236101))

(assert (=> b!1348941 m!1235655))

(assert (=> b!1348941 m!1235657))

(assert (=> b!1348941 m!1235659))

(assert (=> b!1348941 m!1235655))

(assert (=> b!1348941 m!1236099))

(declare-fun m!1236103 () Bool)

(assert (=> b!1348941 m!1236103))

(declare-fun m!1236105 () Bool)

(assert (=> b!1348941 m!1236105))

(assert (=> b!1348948 m!1235665))

(assert (=> b!1348948 m!1235665))

(declare-fun m!1236107 () Bool)

(assert (=> b!1348948 m!1236107))

(declare-fun m!1236109 () Bool)

(assert (=> b!1348945 m!1236109))

(assert (=> b!1348940 m!1235665))

(assert (=> b!1348940 m!1235665))

(assert (=> b!1348940 m!1235673))

(declare-fun m!1236111 () Bool)

(assert (=> b!1348947 m!1236111))

(assert (=> b!1348943 m!1235657))

(assert (=> b!1348943 m!1235665))

(declare-fun m!1236113 () Bool)

(assert (=> b!1348943 m!1236113))

(assert (=> b!1348943 m!1235665))

(assert (=> b!1348943 m!1235655))

(assert (=> b!1348943 m!1235657))

(assert (=> b!1348943 m!1235659))

(assert (=> b!1348943 m!1235655))

(declare-fun m!1236115 () Bool)

(assert (=> bm!65155 m!1236115))

(assert (=> b!1348939 m!1236115))

(assert (=> b!1348737 d!144529))

(declare-fun d!144531 () Bool)

(assert (=> d!144531 (= (apply!1074 (+!4826 lt!596195 (tuple2!24463 lt!596190 zeroValue!1245)) lt!596193) (get!22487 (getValueByKey!724 (toList!11081 (+!4826 lt!596195 (tuple2!24463 lt!596190 zeroValue!1245))) lt!596193)))))

(declare-fun bs!38663 () Bool)

(assert (= bs!38663 d!144531))

(declare-fun m!1236117 () Bool)

(assert (=> bs!38663 m!1236117))

(assert (=> bs!38663 m!1236117))

(declare-fun m!1236119 () Bool)

(assert (=> bs!38663 m!1236119))

(assert (=> b!1348737 d!144531))

(declare-fun d!144533 () Bool)

(assert (=> d!144533 (= (validKeyInArray!0 (select (arr!44419 _keys!1571) #b00000000000000000000000000000000)) (and (not (= (select (arr!44419 _keys!1571) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44419 _keys!1571) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1348676 d!144533))

(declare-fun d!144535 () Bool)

(assert (=> d!144535 (= (apply!1074 lt!596189 (select (arr!44419 _keys!1571) from!1960)) (get!22487 (getValueByKey!724 (toList!11081 lt!596189) (select (arr!44419 _keys!1571) from!1960))))))

(declare-fun bs!38664 () Bool)

(assert (= bs!38664 d!144535))

(assert (=> bs!38664 m!1235665))

(assert (=> bs!38664 m!1235981))

(assert (=> bs!38664 m!1235981))

(declare-fun m!1236121 () Bool)

(assert (=> bs!38664 m!1236121))

(assert (=> b!1348749 d!144535))

(assert (=> b!1348749 d!144449))

(declare-fun d!144537 () Bool)

(declare-fun c!126477 () Bool)

(assert (=> d!144537 (= c!126477 (and ((_ is Cons!31625) (toList!11081 lt!596210)) (= (_1!12241 (h!32834 (toList!11081 lt!596210))) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!767413 () Option!775)

(assert (=> d!144537 (= (getValueByKey!724 (toList!11081 lt!596210) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!767413)))

(declare-fun b!1348949 () Bool)

(assert (=> b!1348949 (= e!767413 (Some!774 (_2!12241 (h!32834 (toList!11081 lt!596210)))))))

(declare-fun b!1348950 () Bool)

(declare-fun e!767414 () Option!775)

(assert (=> b!1348950 (= e!767413 e!767414)))

(declare-fun c!126478 () Bool)

(assert (=> b!1348950 (= c!126478 (and ((_ is Cons!31625) (toList!11081 lt!596210)) (not (= (_1!12241 (h!32834 (toList!11081 lt!596210))) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!1348952 () Bool)

(assert (=> b!1348952 (= e!767414 None!773)))

(declare-fun b!1348951 () Bool)

(assert (=> b!1348951 (= e!767414 (getValueByKey!724 (t!46278 (toList!11081 lt!596210)) (_1!12241 (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!144537 c!126477) b!1348949))

(assert (= (and d!144537 (not c!126477)) b!1348950))

(assert (= (and b!1348950 c!126478) b!1348951))

(assert (= (and b!1348950 (not c!126478)) b!1348952))

(declare-fun m!1236123 () Bool)

(assert (=> b!1348951 m!1236123))

(assert (=> b!1348758 d!144537))

(declare-fun d!144539 () Bool)

(assert (=> d!144539 (= (apply!1074 lt!596229 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960))) (get!22487 (getValueByKey!724 (toList!11081 lt!596229) (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000001 from!1960)))))))

(declare-fun bs!38665 () Bool)

(assert (= bs!38665 d!144539))

(assert (=> bs!38665 m!1235807))

(assert (=> bs!38665 m!1236001))

(assert (=> bs!38665 m!1236001))

(declare-fun m!1236125 () Bool)

(assert (=> bs!38665 m!1236125))

(assert (=> b!1348790 d!144539))

(assert (=> b!1348790 d!144467))

(assert (=> b!1348662 d!144533))

(declare-fun d!144541 () Bool)

(assert (=> d!144541 (= (apply!1074 lt!596189 #b1000000000000000000000000000000000000000000000000000000000000000) (get!22487 (getValueByKey!724 (toList!11081 lt!596189) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!38666 () Bool)

(assert (= bs!38666 d!144541))

(declare-fun m!1236127 () Bool)

(assert (=> bs!38666 m!1236127))

(assert (=> bs!38666 m!1236127))

(declare-fun m!1236129 () Bool)

(assert (=> bs!38666 m!1236129))

(assert (=> b!1348733 d!144541))

(declare-fun b!1348953 () Bool)

(declare-fun e!767418 () Bool)

(declare-fun e!767415 () Bool)

(assert (=> b!1348953 (= e!767418 e!767415)))

(declare-fun c!126479 () Bool)

(assert (=> b!1348953 (= c!126479 (validKeyInArray!0 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!144543 () Bool)

(declare-fun res!895034 () Bool)

(declare-fun e!767416 () Bool)

(assert (=> d!144543 (=> res!895034 e!767416)))

(assert (=> d!144543 (= res!895034 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!44970 _keys!1571)))))

(assert (=> d!144543 (= (arrayNoDuplicates!0 _keys!1571 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!126400 (Cons!31626 (select (arr!44419 _keys!1571) #b00000000000000000000000000000000) Nil!31627) Nil!31627)) e!767416)))

(declare-fun call!65159 () Bool)

(declare-fun bm!65156 () Bool)

(assert (=> bm!65156 (= call!65159 (arrayNoDuplicates!0 _keys!1571 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!126479 (Cons!31626 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!126400 (Cons!31626 (select (arr!44419 _keys!1571) #b00000000000000000000000000000000) Nil!31627) Nil!31627)) (ite c!126400 (Cons!31626 (select (arr!44419 _keys!1571) #b00000000000000000000000000000000) Nil!31627) Nil!31627))))))

(declare-fun b!1348954 () Bool)

(assert (=> b!1348954 (= e!767415 call!65159)))

(declare-fun b!1348955 () Bool)

(assert (=> b!1348955 (= e!767416 e!767418)))

(declare-fun res!895033 () Bool)

(assert (=> b!1348955 (=> (not res!895033) (not e!767418))))

(declare-fun e!767417 () Bool)

(assert (=> b!1348955 (= res!895033 (not e!767417))))

(declare-fun res!895035 () Bool)

(assert (=> b!1348955 (=> (not res!895035) (not e!767417))))

(assert (=> b!1348955 (= res!895035 (validKeyInArray!0 (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1348956 () Bool)

(assert (=> b!1348956 (= e!767415 call!65159)))

(declare-fun b!1348957 () Bool)

(assert (=> b!1348957 (= e!767417 (contains!9198 (ite c!126400 (Cons!31626 (select (arr!44419 _keys!1571) #b00000000000000000000000000000000) Nil!31627) Nil!31627) (select (arr!44419 _keys!1571) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!144543 (not res!895034)) b!1348955))

(assert (= (and b!1348955 res!895035) b!1348957))

(assert (= (and b!1348955 res!895033) b!1348953))

(assert (= (and b!1348953 c!126479) b!1348954))

(assert (= (and b!1348953 (not c!126479)) b!1348956))

(assert (= (or b!1348954 b!1348956) bm!65156))

(assert (=> b!1348953 m!1235891))

(assert (=> b!1348953 m!1235891))

(assert (=> b!1348953 m!1235893))

(assert (=> bm!65156 m!1235891))

(declare-fun m!1236131 () Bool)

(assert (=> bm!65156 m!1236131))

(assert (=> b!1348955 m!1235891))

(assert (=> b!1348955 m!1235891))

(assert (=> b!1348955 m!1235893))

(assert (=> b!1348957 m!1235891))

(assert (=> b!1348957 m!1235891))

(declare-fun m!1236133 () Bool)

(assert (=> b!1348957 m!1236133))

(assert (=> bm!65116 d!144543))

(declare-fun d!144545 () Bool)

(assert (=> d!144545 (arrayContainsKey!0 _keys!1571 lt!596116 #b00000000000000000000000000000000)))

(declare-fun lt!596325 () Unit!44127)

(declare-fun choose!13 (array!91939 (_ BitVec 64) (_ BitVec 32)) Unit!44127)

(assert (=> d!144545 (= lt!596325 (choose!13 _keys!1571 lt!596116 #b00000000000000000000000000000000))))

(assert (=> d!144545 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!144545 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1571 lt!596116 #b00000000000000000000000000000000) lt!596325)))

(declare-fun bs!38667 () Bool)

(assert (= bs!38667 d!144545))

(assert (=> bs!38667 m!1235727))

(declare-fun m!1236135 () Bool)

(assert (=> bs!38667 m!1236135))

(assert (=> b!1348678 d!144545))

(declare-fun d!144547 () Bool)

(declare-fun res!895040 () Bool)

(declare-fun e!767423 () Bool)

(assert (=> d!144547 (=> res!895040 e!767423)))

(assert (=> d!144547 (= res!895040 (= (select (arr!44419 _keys!1571) #b00000000000000000000000000000000) lt!596116))))

(assert (=> d!144547 (= (arrayContainsKey!0 _keys!1571 lt!596116 #b00000000000000000000000000000000) e!767423)))

(declare-fun b!1348962 () Bool)

(declare-fun e!767424 () Bool)

(assert (=> b!1348962 (= e!767423 e!767424)))

(declare-fun res!895041 () Bool)

(assert (=> b!1348962 (=> (not res!895041) (not e!767424))))

(assert (=> b!1348962 (= res!895041 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!44970 _keys!1571)))))

(declare-fun b!1348963 () Bool)

(assert (=> b!1348963 (= e!767424 (arrayContainsKey!0 _keys!1571 lt!596116 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!144547 (not res!895040)) b!1348962))

(assert (= (and b!1348962 res!895041) b!1348963))

(assert (=> d!144547 m!1235715))

(declare-fun m!1236137 () Bool)

(assert (=> b!1348963 m!1236137))

(assert (=> b!1348678 d!144547))

(declare-fun d!144549 () Bool)

(declare-fun lt!596334 () SeekEntryResult!10055)

(assert (=> d!144549 (and (or ((_ is Undefined!10055) lt!596334) (not ((_ is Found!10055) lt!596334)) (and (bvsge (index!42591 lt!596334) #b00000000000000000000000000000000) (bvslt (index!42591 lt!596334) (size!44970 _keys!1571)))) (or ((_ is Undefined!10055) lt!596334) ((_ is Found!10055) lt!596334) (not ((_ is MissingZero!10055) lt!596334)) (and (bvsge (index!42590 lt!596334) #b00000000000000000000000000000000) (bvslt (index!42590 lt!596334) (size!44970 _keys!1571)))) (or ((_ is Undefined!10055) lt!596334) ((_ is Found!10055) lt!596334) ((_ is MissingZero!10055) lt!596334) (not ((_ is MissingVacant!10055) lt!596334)) (and (bvsge (index!42593 lt!596334) #b00000000000000000000000000000000) (bvslt (index!42593 lt!596334) (size!44970 _keys!1571)))) (or ((_ is Undefined!10055) lt!596334) (ite ((_ is Found!10055) lt!596334) (= (select (arr!44419 _keys!1571) (index!42591 lt!596334)) (select (arr!44419 _keys!1571) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!10055) lt!596334) (= (select (arr!44419 _keys!1571) (index!42590 lt!596334)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10055) lt!596334) (= (select (arr!44419 _keys!1571) (index!42593 lt!596334)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!767433 () SeekEntryResult!10055)

(assert (=> d!144549 (= lt!596334 e!767433)))

(declare-fun c!126488 () Bool)

(declare-fun lt!596333 () SeekEntryResult!10055)

(assert (=> d!144549 (= c!126488 (and ((_ is Intermediate!10055) lt!596333) (undefined!10867 lt!596333)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!91939 (_ BitVec 32)) SeekEntryResult!10055)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!144549 (= lt!596333 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!44419 _keys!1571) #b00000000000000000000000000000000) mask!1977) (select (arr!44419 _keys!1571) #b00000000000000000000000000000000) _keys!1571 mask!1977))))

(assert (=> d!144549 (validMask!0 mask!1977)))

(assert (=> d!144549 (= (seekEntryOrOpen!0 (select (arr!44419 _keys!1571) #b00000000000000000000000000000000) _keys!1571 mask!1977) lt!596334)))

(declare-fun b!1348976 () Bool)

(declare-fun c!126486 () Bool)

(declare-fun lt!596332 () (_ BitVec 64))

(assert (=> b!1348976 (= c!126486 (= lt!596332 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!767432 () SeekEntryResult!10055)

(declare-fun e!767431 () SeekEntryResult!10055)

(assert (=> b!1348976 (= e!767432 e!767431)))

(declare-fun b!1348977 () Bool)

(assert (=> b!1348977 (= e!767433 e!767432)))

(assert (=> b!1348977 (= lt!596332 (select (arr!44419 _keys!1571) (index!42592 lt!596333)))))

(declare-fun c!126487 () Bool)

(assert (=> b!1348977 (= c!126487 (= lt!596332 (select (arr!44419 _keys!1571) #b00000000000000000000000000000000)))))

(declare-fun b!1348978 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!91939 (_ BitVec 32)) SeekEntryResult!10055)

(assert (=> b!1348978 (= e!767431 (seekKeyOrZeroReturnVacant!0 (x!120708 lt!596333) (index!42592 lt!596333) (index!42592 lt!596333) (select (arr!44419 _keys!1571) #b00000000000000000000000000000000) _keys!1571 mask!1977))))

(declare-fun b!1348979 () Bool)

(assert (=> b!1348979 (= e!767431 (MissingZero!10055 (index!42592 lt!596333)))))

(declare-fun b!1348980 () Bool)

(assert (=> b!1348980 (= e!767433 Undefined!10055)))

(declare-fun b!1348981 () Bool)

(assert (=> b!1348981 (= e!767432 (Found!10055 (index!42592 lt!596333)))))

(assert (= (and d!144549 c!126488) b!1348980))

(assert (= (and d!144549 (not c!126488)) b!1348977))

(assert (= (and b!1348977 c!126487) b!1348981))

(assert (= (and b!1348977 (not c!126487)) b!1348976))

(assert (= (and b!1348976 c!126486) b!1348979))

(assert (= (and b!1348976 (not c!126486)) b!1348978))

(declare-fun m!1236139 () Bool)

(assert (=> d!144549 m!1236139))

(assert (=> d!144549 m!1235715))

(declare-fun m!1236141 () Bool)

(assert (=> d!144549 m!1236141))

(assert (=> d!144549 m!1235715))

(assert (=> d!144549 m!1236139))

(declare-fun m!1236143 () Bool)

(assert (=> d!144549 m!1236143))

(declare-fun m!1236145 () Bool)

(assert (=> d!144549 m!1236145))

(assert (=> d!144549 m!1235667))

(declare-fun m!1236147 () Bool)

(assert (=> d!144549 m!1236147))

(declare-fun m!1236149 () Bool)

(assert (=> b!1348977 m!1236149))

(assert (=> b!1348978 m!1235715))

(declare-fun m!1236151 () Bool)

(assert (=> b!1348978 m!1236151))

(assert (=> b!1348678 d!144549))

(declare-fun d!144551 () Bool)

(assert (=> d!144551 (isDefined!527 (getValueByKey!724 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1142))))

(declare-fun lt!596337 () Unit!44127)

(declare-fun choose!1991 (List!31629 (_ BitVec 64)) Unit!44127)

(assert (=> d!144551 (= lt!596337 (choose!1991 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1142))))

(declare-fun e!767436 () Bool)

(assert (=> d!144551 e!767436))

(declare-fun res!895044 () Bool)

(assert (=> d!144551 (=> (not res!895044) (not e!767436))))

(assert (=> d!144551 (= res!895044 (isStrictlySorted!879 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!144551 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!487 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1142) lt!596337)))

(declare-fun b!1348984 () Bool)

(assert (=> b!1348984 (= e!767436 (containsKey!742 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1142))))

(assert (= (and d!144551 res!895044) b!1348984))

(assert (=> d!144551 m!1235791))

(assert (=> d!144551 m!1235791))

(assert (=> d!144551 m!1235793))

(declare-fun m!1236153 () Bool)

(assert (=> d!144551 m!1236153))

(declare-fun m!1236155 () Bool)

(assert (=> d!144551 m!1236155))

(assert (=> b!1348984 m!1235787))

(assert (=> b!1348751 d!144551))

(declare-fun d!144553 () Bool)

(assert (=> d!144553 (= (isDefined!527 (getValueByKey!724 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1142)) (not (isEmpty!1100 (getValueByKey!724 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1142))))))

(declare-fun bs!38668 () Bool)

(assert (= bs!38668 d!144553))

(assert (=> bs!38668 m!1235791))

(declare-fun m!1236157 () Bool)

(assert (=> bs!38668 m!1236157))

(assert (=> b!1348751 d!144553))

(declare-fun c!126489 () Bool)

(declare-fun d!144555 () Bool)

(assert (=> d!144555 (= c!126489 (and ((_ is Cons!31625) (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (= (_1!12241 (h!32834 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))) k0!1142)))))

(declare-fun e!767437 () Option!775)

(assert (=> d!144555 (= (getValueByKey!724 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))) k0!1142) e!767437)))

(declare-fun b!1348985 () Bool)

(assert (=> b!1348985 (= e!767437 (Some!774 (_2!12241 (h!32834 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))))

(declare-fun b!1348986 () Bool)

(declare-fun e!767438 () Option!775)

(assert (=> b!1348986 (= e!767437 e!767438)))

(declare-fun c!126490 () Bool)

(assert (=> b!1348986 (= c!126490 (and ((_ is Cons!31625) (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (not (= (_1!12241 (h!32834 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000))))))) k0!1142))))))

(declare-fun b!1348988 () Bool)

(assert (=> b!1348988 (= e!767438 None!773)))

(declare-fun b!1348987 () Bool)

(assert (=> b!1348987 (= e!767438 (getValueByKey!724 (t!46278 (toList!11081 (+!4826 (getCurrentListMapNoExtraKeys!6553 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))) k0!1142))))

(assert (= (and d!144555 c!126489) b!1348985))

(assert (= (and d!144555 (not c!126489)) b!1348986))

(assert (= (and b!1348986 c!126490) b!1348987))

(assert (= (and b!1348986 (not c!126490)) b!1348988))

(declare-fun m!1236159 () Bool)

(assert (=> b!1348987 m!1236159))

(assert (=> b!1348751 d!144555))

(declare-fun d!144557 () Bool)

(declare-fun e!767440 () Bool)

(assert (=> d!144557 e!767440))

(declare-fun res!895045 () Bool)

(assert (=> d!144557 (=> res!895045 e!767440)))

(declare-fun lt!596338 () Bool)

(assert (=> d!144557 (= res!895045 (not lt!596338))))

(declare-fun lt!596340 () Bool)

(assert (=> d!144557 (= lt!596338 lt!596340)))

(declare-fun lt!596339 () Unit!44127)

(declare-fun e!767439 () Unit!44127)

(assert (=> d!144557 (= lt!596339 e!767439)))

(declare-fun c!126491 () Bool)

(assert (=> d!144557 (= c!126491 lt!596340)))

(assert (=> d!144557 (= lt!596340 (containsKey!742 (toList!11081 lt!596189) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!144557 (= (contains!9196 lt!596189 #b1000000000000000000000000000000000000000000000000000000000000000) lt!596338)))

(declare-fun b!1348989 () Bool)

(declare-fun lt!596341 () Unit!44127)

(assert (=> b!1348989 (= e!767439 lt!596341)))

(assert (=> b!1348989 (= lt!596341 (lemmaContainsKeyImpliesGetValueByKeyDefined!487 (toList!11081 lt!596189) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1348989 (isDefined!527 (getValueByKey!724 (toList!11081 lt!596189) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1348990 () Bool)

(declare-fun Unit!44138 () Unit!44127)

(assert (=> b!1348990 (= e!767439 Unit!44138)))

(declare-fun b!1348991 () Bool)

(assert (=> b!1348991 (= e!767440 (isDefined!527 (getValueByKey!724 (toList!11081 lt!596189) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144557 c!126491) b!1348989))

(assert (= (and d!144557 (not c!126491)) b!1348990))

(assert (= (and d!144557 (not res!895045)) b!1348991))

(declare-fun m!1236161 () Bool)

(assert (=> d!144557 m!1236161))

(declare-fun m!1236163 () Bool)

(assert (=> b!1348989 m!1236163))

(assert (=> b!1348989 m!1236127))

(assert (=> b!1348989 m!1236127))

(declare-fun m!1236165 () Bool)

(assert (=> b!1348989 m!1236165))

(assert (=> b!1348991 m!1236127))

(assert (=> b!1348991 m!1236127))

(assert (=> b!1348991 m!1236165))

(assert (=> bm!65139 d!144557))

(declare-fun d!144559 () Bool)

(declare-fun lt!596344 () Bool)

(declare-fun content!673 (List!31629) (InoxSet tuple2!24462))

(assert (=> d!144559 (= lt!596344 (select (content!673 (toList!11081 lt!596210)) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!767445 () Bool)

(assert (=> d!144559 (= lt!596344 e!767445)))

(declare-fun res!895051 () Bool)

(assert (=> d!144559 (=> (not res!895051) (not e!767445))))

(assert (=> d!144559 (= res!895051 ((_ is Cons!31625) (toList!11081 lt!596210)))))

(assert (=> d!144559 (= (contains!9199 (toList!11081 lt!596210) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!596344)))

(declare-fun b!1348996 () Bool)

(declare-fun e!767446 () Bool)

(assert (=> b!1348996 (= e!767445 e!767446)))

(declare-fun res!895050 () Bool)

(assert (=> b!1348996 (=> res!895050 e!767446)))

(assert (=> b!1348996 (= res!895050 (= (h!32834 (toList!11081 lt!596210)) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1348997 () Bool)

(assert (=> b!1348997 (= e!767446 (contains!9199 (t!46278 (toList!11081 lt!596210)) (tuple2!24463 (select (arr!44419 _keys!1571) from!1960) (get!22484 (select (arr!44420 _values!1303) from!1960) (dynLambda!3863 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!144559 res!895051) b!1348996))

(assert (= (and b!1348996 (not res!895050)) b!1348997))

(declare-fun m!1236167 () Bool)

(assert (=> d!144559 m!1236167))

(declare-fun m!1236169 () Bool)

(assert (=> d!144559 m!1236169))

(declare-fun m!1236171 () Bool)

(assert (=> b!1348997 m!1236171))

(assert (=> b!1348759 d!144559))

(assert (=> b!1348791 d!144463))

(assert (=> bm!65134 d!144529))

(declare-fun d!144561 () Bool)

(declare-fun e!767448 () Bool)

(assert (=> d!144561 e!767448))

(declare-fun res!895052 () Bool)

(assert (=> d!144561 (=> res!895052 e!767448)))

(declare-fun lt!596345 () Bool)

(assert (=> d!144561 (= res!895052 (not lt!596345))))

(declare-fun lt!596347 () Bool)

(assert (=> d!144561 (= lt!596345 lt!596347)))

(declare-fun lt!596346 () Unit!44127)

(declare-fun e!767447 () Unit!44127)

(assert (=> d!144561 (= lt!596346 e!767447)))

(declare-fun c!126492 () Bool)

(assert (=> d!144561 (= c!126492 lt!596347)))

(assert (=> d!144561 (= lt!596347 (containsKey!742 (toList!11081 lt!596229) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!144561 (= (contains!9196 lt!596229 #b1000000000000000000000000000000000000000000000000000000000000000) lt!596345)))

(declare-fun b!1348998 () Bool)

(declare-fun lt!596348 () Unit!44127)

(assert (=> b!1348998 (= e!767447 lt!596348)))

(assert (=> b!1348998 (= lt!596348 (lemmaContainsKeyImpliesGetValueByKeyDefined!487 (toList!11081 lt!596229) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1348998 (isDefined!527 (getValueByKey!724 (toList!11081 lt!596229) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1348999 () Bool)

(declare-fun Unit!44139 () Unit!44127)

(assert (=> b!1348999 (= e!767447 Unit!44139)))

(declare-fun b!1349000 () Bool)

(assert (=> b!1349000 (= e!767448 (isDefined!527 (getValueByKey!724 (toList!11081 lt!596229) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144561 c!126492) b!1348998))

(assert (= (and d!144561 (not c!126492)) b!1348999))

(assert (= (and d!144561 (not res!895052)) b!1349000))

(declare-fun m!1236173 () Bool)

(assert (=> d!144561 m!1236173))

(declare-fun m!1236175 () Bool)

(assert (=> b!1348998 m!1236175))

(declare-fun m!1236177 () Bool)

(assert (=> b!1348998 m!1236177))

(assert (=> b!1348998 m!1236177))

(declare-fun m!1236179 () Bool)

(assert (=> b!1348998 m!1236179))

(assert (=> b!1349000 m!1236177))

(assert (=> b!1349000 m!1236177))

(assert (=> b!1349000 m!1236179))

(assert (=> b!1348792 d!144561))

(declare-fun d!144563 () Bool)

(declare-fun e!767450 () Bool)

(assert (=> d!144563 e!767450))

(declare-fun res!895053 () Bool)

(assert (=> d!144563 (=> res!895053 e!767450)))

(declare-fun lt!596349 () Bool)

(assert (=> d!144563 (= res!895053 (not lt!596349))))

(declare-fun lt!596351 () Bool)

(assert (=> d!144563 (= lt!596349 lt!596351)))

(declare-fun lt!596350 () Unit!44127)

(declare-fun e!767449 () Unit!44127)

(assert (=> d!144563 (= lt!596350 e!767449)))

(declare-fun c!126493 () Bool)

(assert (=> d!144563 (= c!126493 lt!596351)))

(assert (=> d!144563 (= lt!596351 (containsKey!742 (toList!11081 lt!596189) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!144563 (= (contains!9196 lt!596189 #b0000000000000000000000000000000000000000000000000000000000000000) lt!596349)))

(declare-fun b!1349001 () Bool)

(declare-fun lt!596352 () Unit!44127)

(assert (=> b!1349001 (= e!767449 lt!596352)))

(assert (=> b!1349001 (= lt!596352 (lemmaContainsKeyImpliesGetValueByKeyDefined!487 (toList!11081 lt!596189) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1349001 (isDefined!527 (getValueByKey!724 (toList!11081 lt!596189) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1349002 () Bool)

(declare-fun Unit!44140 () Unit!44127)

(assert (=> b!1349002 (= e!767449 Unit!44140)))

(declare-fun b!1349003 () Bool)

(assert (=> b!1349003 (= e!767450 (isDefined!527 (getValueByKey!724 (toList!11081 lt!596189) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!144563 c!126493) b!1349001))

(assert (= (and d!144563 (not c!126493)) b!1349002))

(assert (= (and d!144563 (not res!895053)) b!1349003))

(declare-fun m!1236181 () Bool)

(assert (=> d!144563 m!1236181))

(declare-fun m!1236183 () Bool)

(assert (=> b!1349001 m!1236183))

(assert (=> b!1349001 m!1235943))

(assert (=> b!1349001 m!1235943))

(declare-fun m!1236185 () Bool)

(assert (=> b!1349001 m!1236185))

(assert (=> b!1349003 m!1235943))

(assert (=> b!1349003 m!1235943))

(assert (=> b!1349003 m!1236185))

(assert (=> bm!65135 d!144563))

(assert (=> b!1348664 d!144533))

(assert (=> b!1348753 d!144553))

(assert (=> b!1348753 d!144555))

(declare-fun d!144565 () Bool)

(declare-fun e!767451 () Bool)

(assert (=> d!144565 e!767451))

(declare-fun res!895055 () Bool)

(assert (=> d!144565 (=> (not res!895055) (not e!767451))))

(declare-fun lt!596354 () ListLongMap!22131)

(assert (=> d!144565 (= res!895055 (contains!9196 lt!596354 (_1!12241 (ite (or c!126420 c!126421) (tuple2!24463 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(declare-fun lt!596353 () List!31629)

(assert (=> d!144565 (= lt!596354 (ListLongMap!22132 lt!596353))))

(declare-fun lt!596355 () Unit!44127)

(declare-fun lt!596356 () Unit!44127)

(assert (=> d!144565 (= lt!596355 lt!596356)))

(assert (=> d!144565 (= (getValueByKey!724 lt!596353 (_1!12241 (ite (or c!126420 c!126421) (tuple2!24463 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))) (Some!774 (_2!12241 (ite (or c!126420 c!126421) (tuple2!24463 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(assert (=> d!144565 (= lt!596356 (lemmaContainsTupThenGetReturnValue!367 lt!596353 (_1!12241 (ite (or c!126420 c!126421) (tuple2!24463 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) (_2!12241 (ite (or c!126420 c!126421) (tuple2!24463 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(assert (=> d!144565 (= lt!596353 (insertStrictlySorted!496 (toList!11081 (ite c!126420 call!65139 (ite c!126421 call!65142 call!65138))) (_1!12241 (ite (or c!126420 c!126421) (tuple2!24463 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) (_2!12241 (ite (or c!126420 c!126421) (tuple2!24463 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))))))

(assert (=> d!144565 (= (+!4826 (ite c!126420 call!65139 (ite c!126421 call!65142 call!65138)) (ite (or c!126420 c!126421) (tuple2!24463 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))) lt!596354)))

(declare-fun b!1349004 () Bool)

(declare-fun res!895054 () Bool)

(assert (=> b!1349004 (=> (not res!895054) (not e!767451))))

(assert (=> b!1349004 (= res!895054 (= (getValueByKey!724 (toList!11081 lt!596354) (_1!12241 (ite (or c!126420 c!126421) (tuple2!24463 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245)))) (Some!774 (_2!12241 (ite (or c!126420 c!126421) (tuple2!24463 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))))

(declare-fun b!1349005 () Bool)

(assert (=> b!1349005 (= e!767451 (contains!9199 (toList!11081 lt!596354) (ite (or c!126420 c!126421) (tuple2!24463 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245) (tuple2!24463 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1245))))))

(assert (= (and d!144565 res!895055) b!1349004))

(assert (= (and b!1349004 res!895054) b!1349005))

(declare-fun m!1236187 () Bool)

(assert (=> d!144565 m!1236187))

(declare-fun m!1236189 () Bool)

(assert (=> d!144565 m!1236189))

(declare-fun m!1236191 () Bool)

(assert (=> d!144565 m!1236191))

(declare-fun m!1236193 () Bool)

(assert (=> d!144565 m!1236193))

(declare-fun m!1236195 () Bool)

(assert (=> b!1349004 m!1236195))

(declare-fun m!1236197 () Bool)

(assert (=> b!1349005 m!1236197))

(assert (=> bm!65136 d!144565))

(declare-fun d!144567 () Bool)

(assert (=> d!144567 (isDefined!527 (getValueByKey!724 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(declare-fun lt!596357 () Unit!44127)

(assert (=> d!144567 (= lt!596357 (choose!1991 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(declare-fun e!767452 () Bool)

(assert (=> d!144567 e!767452))

(declare-fun res!895056 () Bool)

(assert (=> d!144567 (=> (not res!895056) (not e!767452))))

(assert (=> d!144567 (= res!895056 (isStrictlySorted!879 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306))))))

(assert (=> d!144567 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!487 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142) lt!596357)))

(declare-fun b!1349006 () Bool)

(assert (=> b!1349006 (= e!767452 (containsKey!742 (toList!11081 (getCurrentListMap!5971 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306)) k0!1142))))

(assert (= (and d!144567 res!895056) b!1349006))

(assert (=> d!144567 m!1235735))

(assert (=> d!144567 m!1235735))

(assert (=> d!144567 m!1235737))

(declare-fun m!1236199 () Bool)

(assert (=> d!144567 m!1236199))

(declare-fun m!1236201 () Bool)

(assert (=> d!144567 m!1236201))

(assert (=> b!1349006 m!1235731))

(assert (=> b!1348685 d!144567))

(assert (=> b!1348685 d!144495))

(assert (=> b!1348685 d!144497))

(declare-fun mapIsEmpty!58083 () Bool)

(declare-fun mapRes!58083 () Bool)

(assert (=> mapIsEmpty!58083 mapRes!58083))

(declare-fun b!1349008 () Bool)

(declare-fun e!767454 () Bool)

(assert (=> b!1349008 (= e!767454 tp_is_empty!37575)))

(declare-fun mapNonEmpty!58083 () Bool)

(declare-fun tp!110548 () Bool)

(declare-fun e!767453 () Bool)

(assert (=> mapNonEmpty!58083 (= mapRes!58083 (and tp!110548 e!767453))))

(declare-fun mapValue!58083 () ValueCell!17889)

(declare-fun mapRest!58083 () (Array (_ BitVec 32) ValueCell!17889))

(declare-fun mapKey!58083 () (_ BitVec 32))

(assert (=> mapNonEmpty!58083 (= mapRest!58082 (store mapRest!58083 mapKey!58083 mapValue!58083))))

(declare-fun b!1349007 () Bool)

(assert (=> b!1349007 (= e!767453 tp_is_empty!37575)))

(declare-fun condMapEmpty!58083 () Bool)

(declare-fun mapDefault!58083 () ValueCell!17889)

(assert (=> mapNonEmpty!58082 (= condMapEmpty!58083 (= mapRest!58082 ((as const (Array (_ BitVec 32) ValueCell!17889)) mapDefault!58083)))))

(assert (=> mapNonEmpty!58082 (= tp!110547 (and e!767454 mapRes!58083))))

(assert (= (and mapNonEmpty!58082 condMapEmpty!58083) mapIsEmpty!58083))

(assert (= (and mapNonEmpty!58082 (not condMapEmpty!58083)) mapNonEmpty!58083))

(assert (= (and mapNonEmpty!58083 ((_ is ValueCellFull!17889) mapValue!58083)) b!1349007))

(assert (= (and mapNonEmpty!58082 ((_ is ValueCellFull!17889) mapDefault!58083)) b!1349008))

(declare-fun m!1236203 () Bool)

(assert (=> mapNonEmpty!58083 m!1236203))

(declare-fun b_lambda!24691 () Bool)

(assert (= b_lambda!24685 (or (and start!113644 b_free!31575) b_lambda!24691)))

(declare-fun b_lambda!24693 () Bool)

(assert (= b_lambda!24689 (or (and start!113644 b_free!31575) b_lambda!24693)))

(declare-fun b_lambda!24695 () Bool)

(assert (= b_lambda!24683 (or (and start!113644 b_free!31575) b_lambda!24695)))

(declare-fun b_lambda!24697 () Bool)

(assert (= b_lambda!24687 (or (and start!113644 b_free!31575) b_lambda!24697)))

(check-sat (not bm!65155) (not b!1348852) (not b!1348934) (not b!1348818) (not d!144485) (not d!144473) (not b!1348941) (not b!1348902) (not b!1348821) (not b!1348955) (not d!144453) (not b!1348831) (not b!1348914) (not b!1348926) (not b!1348837) (not d!144477) (not b!1348834) (not b!1349001) (not d!144541) (not b!1348920) (not b!1348939) (not b!1349006) (not d!144511) (not b!1349005) (not b_lambda!24691) (not b!1348869) (not b!1348927) (not d!144471) (not b!1348916) (not d!144451) (not b!1348989) (not d!144505) (not b!1348835) (not d!144509) (not b!1348825) (not b!1348849) (not d!144457) (not bm!65145) (not d!144465) (not b!1348963) (not b!1348892) (not b!1348810) (not b!1348905) (not d!144529) (not b!1348919) (not b!1348943) (not b!1348953) (not b!1348814) (not b!1348822) (not d!144565) (not d!144525) (not b!1348832) (not b!1348826) (not b!1348951) (not b!1348817) (not d!144567) (not b_lambda!24669) (not b!1348987) (not d!144551) (not bm!65144) (not b!1348936) (not d!144539) (not b!1348830) (not b!1348997) (not b_lambda!24697) (not d!144499) (not b_lambda!24693) (not b!1348935) (not d!144557) (not bm!65154) (not b!1348957) (not d!144549) (not b!1348828) (not b!1348895) (not b!1348850) (not b!1348991) (not mapNonEmpty!58083) (not b!1348984) (not d!144531) (not b!1348813) (not b_next!31575) (not b!1348870) (not b!1348863) (not b_lambda!24677) (not d!144523) (not b!1348931) (not d!144527) (not d!144491) (not d!144519) (not b!1348833) (not b!1348944) (not b!1348911) (not d!144553) (not b!1348932) (not b!1348891) (not b!1348998) (not b!1348978) (not b!1348838) (not d!144501) (not d!144479) (not b_lambda!24681) (not b!1349000) (not b!1348940) (not b!1348945) (not d!144489) (not bm!65156) (not b_lambda!24679) (not b!1348819) (not b!1348948) (not d!144513) (not b!1348812) (not b!1349004) (not d!144517) (not d!144495) tp_is_empty!37575 (not d!144483) b_and!50965 (not d!144559) (not d!144535) (not d!144521) (not d!144503) (not b!1348903) (not d!144515) (not b!1348930) (not d!144493) (not b!1348918) (not b!1349003) (not d!144563) (not b_lambda!24695) (not b!1348823) (not d!144561) (not b!1348947) (not d!144545) (not b!1348839) (not d!144469) (not d!144507))
(check-sat b_and!50965 (not b_next!31575))
