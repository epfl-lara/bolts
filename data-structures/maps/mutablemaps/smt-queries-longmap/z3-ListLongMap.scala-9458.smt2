; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112394 () Bool)

(assert start!112394)

(declare-fun b_free!30753 () Bool)

(declare-fun b_next!30753 () Bool)

(assert (=> start!112394 (= b_free!30753 (not b_next!30753))))

(declare-fun tp!107896 () Bool)

(declare-fun b_and!49571 () Bool)

(assert (=> start!112394 (= tp!107896 b_and!49571)))

(declare-fun b!1331768 () Bool)

(declare-fun e!758822 () Bool)

(declare-fun e!758820 () Bool)

(declare-fun mapRes!56668 () Bool)

(assert (=> b!1331768 (= e!758822 (and e!758820 mapRes!56668))))

(declare-fun condMapEmpty!56668 () Bool)

(declare-datatypes ((V!53987 0))(
  ( (V!53988 (val!18406 Int)) )
))
(declare-datatypes ((ValueCell!17433 0))(
  ( (ValueCellFull!17433 (v!21041 V!53987)) (EmptyCell!17433) )
))
(declare-datatypes ((array!90175 0))(
  ( (array!90176 (arr!43549 (Array (_ BitVec 32) ValueCell!17433)) (size!44100 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90175)

(declare-fun mapDefault!56668 () ValueCell!17433)

(assert (=> b!1331768 (= condMapEmpty!56668 (= (arr!43549 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17433)) mapDefault!56668)))))

(declare-fun b!1331769 () Bool)

(declare-fun res!883842 () Bool)

(declare-fun e!758824 () Bool)

(assert (=> b!1331769 (=> (not res!883842) (not e!758824))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90177 0))(
  ( (array!90178 (arr!43550 (Array (_ BitVec 32) (_ BitVec 64))) (size!44101 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90177)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1331769 (= res!883842 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44101 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!56668 () Bool)

(assert (=> mapIsEmpty!56668 mapRes!56668))

(declare-fun b!1331770 () Bool)

(declare-fun res!883843 () Bool)

(assert (=> b!1331770 (=> (not res!883843) (not e!758824))))

(assert (=> b!1331770 (= res!883843 (not (= (select (arr!43550 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1331771 () Bool)

(declare-fun res!883849 () Bool)

(assert (=> b!1331771 (=> (not res!883849) (not e!758824))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90177 (_ BitVec 32)) Bool)

(assert (=> b!1331771 (= res!883849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun mapNonEmpty!56668 () Bool)

(declare-fun tp!107897 () Bool)

(declare-fun e!758823 () Bool)

(assert (=> mapNonEmpty!56668 (= mapRes!56668 (and tp!107897 e!758823))))

(declare-fun mapKey!56668 () (_ BitVec 32))

(declare-fun mapValue!56668 () ValueCell!17433)

(declare-fun mapRest!56668 () (Array (_ BitVec 32) ValueCell!17433))

(assert (=> mapNonEmpty!56668 (= (arr!43549 _values!1320) (store mapRest!56668 mapKey!56668 mapValue!56668))))

(declare-fun res!883848 () Bool)

(assert (=> start!112394 (=> (not res!883848) (not e!758824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112394 (= res!883848 (validMask!0 mask!1998))))

(assert (=> start!112394 e!758824))

(declare-fun array_inv!32803 (array!90175) Bool)

(assert (=> start!112394 (and (array_inv!32803 _values!1320) e!758822)))

(assert (=> start!112394 true))

(declare-fun array_inv!32804 (array!90177) Bool)

(assert (=> start!112394 (array_inv!32804 _keys!1590)))

(assert (=> start!112394 tp!107896))

(declare-fun tp_is_empty!36663 () Bool)

(assert (=> start!112394 tp_is_empty!36663))

(declare-fun b!1331772 () Bool)

(declare-fun res!883844 () Bool)

(assert (=> b!1331772 (=> (not res!883844) (not e!758824))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1331772 (= res!883844 (validKeyInArray!0 (select (arr!43550 _keys!1590) from!1980)))))

(declare-fun b!1331773 () Bool)

(assert (=> b!1331773 (= e!758820 tp_is_empty!36663)))

(declare-fun b!1331774 () Bool)

(declare-fun res!883847 () Bool)

(assert (=> b!1331774 (=> (not res!883847) (not e!758824))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!53987)

(declare-fun zeroValue!1262 () V!53987)

(declare-datatypes ((tuple2!23862 0))(
  ( (tuple2!23863 (_1!11941 (_ BitVec 64)) (_2!11941 V!53987)) )
))
(declare-datatypes ((List!31044 0))(
  ( (Nil!31041) (Cons!31040 (h!32249 tuple2!23862) (t!45217 List!31044)) )
))
(declare-datatypes ((ListLongMap!21531 0))(
  ( (ListLongMap!21532 (toList!10781 List!31044)) )
))
(declare-fun contains!8881 (ListLongMap!21531 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5704 (array!90177 array!90175 (_ BitVec 32) (_ BitVec 32) V!53987 V!53987 (_ BitVec 32) Int) ListLongMap!21531)

(assert (=> b!1331774 (= res!883847 (contains!8881 (getCurrentListMap!5704 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1331775 () Bool)

(declare-fun res!883846 () Bool)

(assert (=> b!1331775 (=> (not res!883846) (not e!758824))))

(assert (=> b!1331775 (= res!883846 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1331776 () Bool)

(assert (=> b!1331776 (= e!758824 (not true))))

(declare-fun lt!591670 () ListLongMap!21531)

(declare-fun +!4670 (ListLongMap!21531 tuple2!23862) ListLongMap!21531)

(assert (=> b!1331776 (contains!8881 (+!4670 lt!591670 (tuple2!23863 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k0!1153)))

(declare-datatypes ((Unit!43767 0))(
  ( (Unit!43768) )
))
(declare-fun lt!591669 () Unit!43767)

(declare-fun addStillContains!1180 (ListLongMap!21531 (_ BitVec 64) V!53987 (_ BitVec 64)) Unit!43767)

(assert (=> b!1331776 (= lt!591669 (addStillContains!1180 lt!591670 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k0!1153))))

(assert (=> b!1331776 (contains!8881 lt!591670 k0!1153)))

(declare-fun lt!591672 () Unit!43767)

(declare-fun lt!591674 () V!53987)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!275 ((_ BitVec 64) (_ BitVec 64) V!53987 ListLongMap!21531) Unit!43767)

(assert (=> b!1331776 (= lt!591672 (lemmaInListMapAfterAddingDiffThenInBefore!275 k0!1153 (select (arr!43550 _keys!1590) from!1980) lt!591674 lt!591670))))

(declare-fun lt!591673 () ListLongMap!21531)

(assert (=> b!1331776 (contains!8881 lt!591673 k0!1153)))

(declare-fun lt!591671 () Unit!43767)

(assert (=> b!1331776 (= lt!591671 (lemmaInListMapAfterAddingDiffThenInBefore!275 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591673))))

(assert (=> b!1331776 (= lt!591673 (+!4670 lt!591670 (tuple2!23863 (select (arr!43550 _keys!1590) from!1980) lt!591674)))))

(declare-fun get!22006 (ValueCell!17433 V!53987) V!53987)

(declare-fun dynLambda!3707 (Int (_ BitVec 64)) V!53987)

(assert (=> b!1331776 (= lt!591674 (get!22006 (select (arr!43549 _values!1320) from!1980) (dynLambda!3707 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6388 (array!90177 array!90175 (_ BitVec 32) (_ BitVec 32) V!53987 V!53987 (_ BitVec 32) Int) ListLongMap!21531)

(assert (=> b!1331776 (= lt!591670 (getCurrentListMapNoExtraKeys!6388 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1331777 () Bool)

(declare-fun res!883845 () Bool)

(assert (=> b!1331777 (=> (not res!883845) (not e!758824))))

(declare-datatypes ((List!31045 0))(
  ( (Nil!31042) (Cons!31041 (h!32250 (_ BitVec 64)) (t!45218 List!31045)) )
))
(declare-fun arrayNoDuplicates!0 (array!90177 (_ BitVec 32) List!31045) Bool)

(assert (=> b!1331777 (= res!883845 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31042))))

(declare-fun b!1331778 () Bool)

(declare-fun res!883850 () Bool)

(assert (=> b!1331778 (=> (not res!883850) (not e!758824))))

(assert (=> b!1331778 (= res!883850 (and (= (size!44100 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44101 _keys!1590) (size!44100 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1331779 () Bool)

(assert (=> b!1331779 (= e!758823 tp_is_empty!36663)))

(assert (= (and start!112394 res!883848) b!1331778))

(assert (= (and b!1331778 res!883850) b!1331771))

(assert (= (and b!1331771 res!883849) b!1331777))

(assert (= (and b!1331777 res!883845) b!1331769))

(assert (= (and b!1331769 res!883842) b!1331774))

(assert (= (and b!1331774 res!883847) b!1331770))

(assert (= (and b!1331770 res!883843) b!1331772))

(assert (= (and b!1331772 res!883844) b!1331775))

(assert (= (and b!1331775 res!883846) b!1331776))

(assert (= (and b!1331768 condMapEmpty!56668) mapIsEmpty!56668))

(assert (= (and b!1331768 (not condMapEmpty!56668)) mapNonEmpty!56668))

(get-info :version)

(assert (= (and mapNonEmpty!56668 ((_ is ValueCellFull!17433) mapValue!56668)) b!1331779))

(assert (= (and b!1331768 ((_ is ValueCellFull!17433) mapDefault!56668)) b!1331773))

(assert (= start!112394 b!1331768))

(declare-fun b_lambda!24023 () Bool)

(assert (=> (not b_lambda!24023) (not b!1331776)))

(declare-fun t!45216 () Bool)

(declare-fun tb!11977 () Bool)

(assert (=> (and start!112394 (= defaultEntry!1323 defaultEntry!1323) t!45216) tb!11977))

(declare-fun result!25017 () Bool)

(assert (=> tb!11977 (= result!25017 tp_is_empty!36663)))

(assert (=> b!1331776 t!45216))

(declare-fun b_and!49573 () Bool)

(assert (= b_and!49571 (and (=> t!45216 result!25017) b_and!49573)))

(declare-fun m!1220531 () Bool)

(assert (=> b!1331772 m!1220531))

(assert (=> b!1331772 m!1220531))

(declare-fun m!1220533 () Bool)

(assert (=> b!1331772 m!1220533))

(declare-fun m!1220535 () Bool)

(assert (=> b!1331777 m!1220535))

(assert (=> b!1331770 m!1220531))

(declare-fun m!1220537 () Bool)

(assert (=> mapNonEmpty!56668 m!1220537))

(declare-fun m!1220539 () Bool)

(assert (=> start!112394 m!1220539))

(declare-fun m!1220541 () Bool)

(assert (=> start!112394 m!1220541))

(declare-fun m!1220543 () Bool)

(assert (=> start!112394 m!1220543))

(declare-fun m!1220545 () Bool)

(assert (=> b!1331771 m!1220545))

(declare-fun m!1220547 () Bool)

(assert (=> b!1331774 m!1220547))

(assert (=> b!1331774 m!1220547))

(declare-fun m!1220549 () Bool)

(assert (=> b!1331774 m!1220549))

(declare-fun m!1220551 () Bool)

(assert (=> b!1331776 m!1220551))

(declare-fun m!1220553 () Bool)

(assert (=> b!1331776 m!1220553))

(declare-fun m!1220555 () Bool)

(assert (=> b!1331776 m!1220555))

(declare-fun m!1220557 () Bool)

(assert (=> b!1331776 m!1220557))

(assert (=> b!1331776 m!1220555))

(declare-fun m!1220559 () Bool)

(assert (=> b!1331776 m!1220559))

(assert (=> b!1331776 m!1220553))

(declare-fun m!1220561 () Bool)

(assert (=> b!1331776 m!1220561))

(declare-fun m!1220563 () Bool)

(assert (=> b!1331776 m!1220563))

(assert (=> b!1331776 m!1220531))

(declare-fun m!1220565 () Bool)

(assert (=> b!1331776 m!1220565))

(declare-fun m!1220567 () Bool)

(assert (=> b!1331776 m!1220567))

(declare-fun m!1220569 () Bool)

(assert (=> b!1331776 m!1220569))

(declare-fun m!1220571 () Bool)

(assert (=> b!1331776 m!1220571))

(assert (=> b!1331776 m!1220557))

(declare-fun m!1220573 () Bool)

(assert (=> b!1331776 m!1220573))

(assert (=> b!1331776 m!1220531))

(check-sat (not b!1331776) b_and!49573 (not mapNonEmpty!56668) (not b!1331774) (not b!1331777) (not b_next!30753) (not b!1331772) (not start!112394) (not b!1331771) (not b_lambda!24023) tp_is_empty!36663)
(check-sat b_and!49573 (not b_next!30753))
