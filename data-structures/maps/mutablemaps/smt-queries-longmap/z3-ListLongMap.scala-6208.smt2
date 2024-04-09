; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79412 () Bool)

(assert start!79412)

(declare-fun b_free!17571 () Bool)

(declare-fun b_next!17571 () Bool)

(assert (=> start!79412 (= b_free!17571 (not b_next!17571))))

(declare-fun tp!61158 () Bool)

(declare-fun b_and!28719 () Bool)

(assert (=> start!79412 (= tp!61158 b_and!28719)))

(declare-fun b!932541 () Bool)

(declare-fun res!628184 () Bool)

(declare-fun e!523707 () Bool)

(assert (=> b!932541 (=> (not res!628184) (not e!523707))))

(declare-datatypes ((array!56120 0))(
  ( (array!56121 (arr!27000 (Array (_ BitVec 32) (_ BitVec 64))) (size!27460 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56120)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56120 (_ BitVec 32)) Bool)

(assert (=> b!932541 (= res!628184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!31878 () Bool)

(declare-fun mapRes!31878 () Bool)

(declare-fun tp!61157 () Bool)

(declare-fun e!523709 () Bool)

(assert (=> mapNonEmpty!31878 (= mapRes!31878 (and tp!61157 e!523709))))

(declare-fun mapKey!31878 () (_ BitVec 32))

(declare-datatypes ((V!31737 0))(
  ( (V!31738 (val!10090 Int)) )
))
(declare-datatypes ((ValueCell!9558 0))(
  ( (ValueCellFull!9558 (v!12609 V!31737)) (EmptyCell!9558) )
))
(declare-fun mapRest!31878 () (Array (_ BitVec 32) ValueCell!9558))

(declare-datatypes ((array!56122 0))(
  ( (array!56123 (arr!27001 (Array (_ BitVec 32) ValueCell!9558)) (size!27461 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56122)

(declare-fun mapValue!31878 () ValueCell!9558)

(assert (=> mapNonEmpty!31878 (= (arr!27001 _values!1231) (store mapRest!31878 mapKey!31878 mapValue!31878))))

(declare-fun mapIsEmpty!31878 () Bool)

(assert (=> mapIsEmpty!31878 mapRes!31878))

(declare-fun b!932542 () Bool)

(declare-fun res!628186 () Bool)

(assert (=> b!932542 (=> (not res!628186) (not e!523707))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!932542 (= res!628186 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27460 _keys!1487))))))

(declare-fun b!932543 () Bool)

(declare-fun e!523710 () Bool)

(assert (=> b!932543 (= e!523707 e!523710)))

(declare-fun res!628178 () Bool)

(assert (=> b!932543 (=> (not res!628178) (not e!523710))))

(declare-datatypes ((tuple2!13326 0))(
  ( (tuple2!13327 (_1!6673 (_ BitVec 64)) (_2!6673 V!31737)) )
))
(declare-datatypes ((List!19136 0))(
  ( (Nil!19133) (Cons!19132 (h!20278 tuple2!13326) (t!27259 List!19136)) )
))
(declare-datatypes ((ListLongMap!12037 0))(
  ( (ListLongMap!12038 (toList!6034 List!19136)) )
))
(declare-fun lt!419967 () ListLongMap!12037)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5034 (ListLongMap!12037 (_ BitVec 64)) Bool)

(assert (=> b!932543 (= res!628178 (contains!5034 lt!419967 k0!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31737)

(declare-fun minValue!1173 () V!31737)

(declare-fun getCurrentListMap!3227 (array!56120 array!56122 (_ BitVec 32) (_ BitVec 32) V!31737 V!31737 (_ BitVec 32) Int) ListLongMap!12037)

(assert (=> b!932543 (= lt!419967 (getCurrentListMap!3227 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!932544 () Bool)

(declare-fun res!628185 () Bool)

(assert (=> b!932544 (=> (not res!628185) (not e!523707))))

(assert (=> b!932544 (= res!628185 (and (= (size!27461 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27460 _keys!1487) (size!27461 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!628179 () Bool)

(assert (=> start!79412 (=> (not res!628179) (not e!523707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79412 (= res!628179 (validMask!0 mask!1881))))

(assert (=> start!79412 e!523707))

(assert (=> start!79412 true))

(declare-fun tp_is_empty!20079 () Bool)

(assert (=> start!79412 tp_is_empty!20079))

(declare-fun e!523706 () Bool)

(declare-fun array_inv!20982 (array!56122) Bool)

(assert (=> start!79412 (and (array_inv!20982 _values!1231) e!523706)))

(assert (=> start!79412 tp!61158))

(declare-fun array_inv!20983 (array!56120) Bool)

(assert (=> start!79412 (array_inv!20983 _keys!1487)))

(declare-fun b!932545 () Bool)

(declare-fun res!628180 () Bool)

(assert (=> b!932545 (=> (not res!628180) (not e!523710))))

(assert (=> b!932545 (= res!628180 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!932546 () Bool)

(declare-fun res!628181 () Bool)

(assert (=> b!932546 (=> (not res!628181) (not e!523707))))

(declare-datatypes ((List!19137 0))(
  ( (Nil!19134) (Cons!19133 (h!20279 (_ BitVec 64)) (t!27260 List!19137)) )
))
(declare-fun arrayNoDuplicates!0 (array!56120 (_ BitVec 32) List!19137) Bool)

(assert (=> b!932546 (= res!628181 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19134))))

(declare-fun b!932547 () Bool)

(declare-fun e!523712 () Bool)

(assert (=> b!932547 (= e!523706 (and e!523712 mapRes!31878))))

(declare-fun condMapEmpty!31878 () Bool)

(declare-fun mapDefault!31878 () ValueCell!9558)

(assert (=> b!932547 (= condMapEmpty!31878 (= (arr!27001 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9558)) mapDefault!31878)))))

(declare-fun b!932548 () Bool)

(declare-fun e!523711 () Bool)

(assert (=> b!932548 (= e!523711 (not true))))

(assert (=> b!932548 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19134)))

(declare-datatypes ((Unit!31468 0))(
  ( (Unit!31469) )
))
(declare-fun lt!419966 () Unit!31468)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56120 (_ BitVec 32) (_ BitVec 32)) Unit!31468)

(assert (=> b!932548 (= lt!419966 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!419962 () tuple2!13326)

(declare-fun +!2740 (ListLongMap!12037 tuple2!13326) ListLongMap!12037)

(assert (=> b!932548 (contains!5034 (+!2740 lt!419967 lt!419962) k0!1099)))

(declare-fun lt!419963 () Unit!31468)

(declare-fun lt!419964 () V!31737)

(declare-fun lt!419965 () (_ BitVec 64))

(declare-fun addStillContains!496 (ListLongMap!12037 (_ BitVec 64) V!31737 (_ BitVec 64)) Unit!31468)

(assert (=> b!932548 (= lt!419963 (addStillContains!496 lt!419967 lt!419965 lt!419964 k0!1099))))

(assert (=> b!932548 (= (getCurrentListMap!3227 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2740 (getCurrentListMap!3227 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!419962))))

(assert (=> b!932548 (= lt!419962 (tuple2!13327 lt!419965 lt!419964))))

(declare-fun get!14212 (ValueCell!9558 V!31737) V!31737)

(declare-fun dynLambda!1579 (Int (_ BitVec 64)) V!31737)

(assert (=> b!932548 (= lt!419964 (get!14212 (select (arr!27001 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1579 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!419968 () Unit!31468)

(declare-fun lemmaListMapRecursiveValidKeyArray!175 (array!56120 array!56122 (_ BitVec 32) (_ BitVec 32) V!31737 V!31737 (_ BitVec 32) Int) Unit!31468)

(assert (=> b!932548 (= lt!419968 (lemmaListMapRecursiveValidKeyArray!175 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!932549 () Bool)

(assert (=> b!932549 (= e!523712 tp_is_empty!20079)))

(declare-fun b!932550 () Bool)

(assert (=> b!932550 (= e!523710 e!523711)))

(declare-fun res!628182 () Bool)

(assert (=> b!932550 (=> (not res!628182) (not e!523711))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!932550 (= res!628182 (validKeyInArray!0 lt!419965))))

(assert (=> b!932550 (= lt!419965 (select (arr!27000 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!932551 () Bool)

(declare-fun res!628183 () Bool)

(assert (=> b!932551 (=> (not res!628183) (not e!523710))))

(declare-fun v!791 () V!31737)

(declare-fun apply!819 (ListLongMap!12037 (_ BitVec 64)) V!31737)

(assert (=> b!932551 (= res!628183 (= (apply!819 lt!419967 k0!1099) v!791))))

(declare-fun b!932552 () Bool)

(assert (=> b!932552 (= e!523709 tp_is_empty!20079)))

(declare-fun b!932553 () Bool)

(declare-fun res!628187 () Bool)

(assert (=> b!932553 (=> (not res!628187) (not e!523710))))

(assert (=> b!932553 (= res!628187 (validKeyInArray!0 k0!1099))))

(assert (= (and start!79412 res!628179) b!932544))

(assert (= (and b!932544 res!628185) b!932541))

(assert (= (and b!932541 res!628184) b!932546))

(assert (= (and b!932546 res!628181) b!932542))

(assert (= (and b!932542 res!628186) b!932543))

(assert (= (and b!932543 res!628178) b!932551))

(assert (= (and b!932551 res!628183) b!932545))

(assert (= (and b!932545 res!628180) b!932553))

(assert (= (and b!932553 res!628187) b!932550))

(assert (= (and b!932550 res!628182) b!932548))

(assert (= (and b!932547 condMapEmpty!31878) mapIsEmpty!31878))

(assert (= (and b!932547 (not condMapEmpty!31878)) mapNonEmpty!31878))

(get-info :version)

(assert (= (and mapNonEmpty!31878 ((_ is ValueCellFull!9558) mapValue!31878)) b!932552))

(assert (= (and b!932547 ((_ is ValueCellFull!9558) mapDefault!31878)) b!932549))

(assert (= start!79412 b!932547))

(declare-fun b_lambda!13935 () Bool)

(assert (=> (not b_lambda!13935) (not b!932548)))

(declare-fun t!27258 () Bool)

(declare-fun tb!5973 () Bool)

(assert (=> (and start!79412 (= defaultEntry!1235 defaultEntry!1235) t!27258) tb!5973))

(declare-fun result!11763 () Bool)

(assert (=> tb!5973 (= result!11763 tp_is_empty!20079)))

(assert (=> b!932548 t!27258))

(declare-fun b_and!28721 () Bool)

(assert (= b_and!28719 (and (=> t!27258 result!11763) b_and!28721)))

(declare-fun m!866651 () Bool)

(assert (=> b!932543 m!866651))

(declare-fun m!866653 () Bool)

(assert (=> b!932543 m!866653))

(declare-fun m!866655 () Bool)

(assert (=> b!932553 m!866655))

(declare-fun m!866657 () Bool)

(assert (=> b!932546 m!866657))

(declare-fun m!866659 () Bool)

(assert (=> mapNonEmpty!31878 m!866659))

(declare-fun m!866661 () Bool)

(assert (=> b!932551 m!866661))

(declare-fun m!866663 () Bool)

(assert (=> b!932550 m!866663))

(declare-fun m!866665 () Bool)

(assert (=> b!932550 m!866665))

(declare-fun m!866667 () Bool)

(assert (=> b!932541 m!866667))

(declare-fun m!866669 () Bool)

(assert (=> b!932548 m!866669))

(declare-fun m!866671 () Bool)

(assert (=> b!932548 m!866671))

(declare-fun m!866673 () Bool)

(assert (=> b!932548 m!866673))

(declare-fun m!866675 () Bool)

(assert (=> b!932548 m!866675))

(declare-fun m!866677 () Bool)

(assert (=> b!932548 m!866677))

(declare-fun m!866679 () Bool)

(assert (=> b!932548 m!866679))

(assert (=> b!932548 m!866677))

(assert (=> b!932548 m!866679))

(declare-fun m!866681 () Bool)

(assert (=> b!932548 m!866681))

(declare-fun m!866683 () Bool)

(assert (=> b!932548 m!866683))

(assert (=> b!932548 m!866669))

(declare-fun m!866685 () Bool)

(assert (=> b!932548 m!866685))

(declare-fun m!866687 () Bool)

(assert (=> b!932548 m!866687))

(assert (=> b!932548 m!866673))

(declare-fun m!866689 () Bool)

(assert (=> b!932548 m!866689))

(declare-fun m!866691 () Bool)

(assert (=> b!932548 m!866691))

(declare-fun m!866693 () Bool)

(assert (=> start!79412 m!866693))

(declare-fun m!866695 () Bool)

(assert (=> start!79412 m!866695))

(declare-fun m!866697 () Bool)

(assert (=> start!79412 m!866697))

(check-sat (not b!932551) (not b_next!17571) tp_is_empty!20079 (not start!79412) (not b!932541) (not b!932548) (not mapNonEmpty!31878) (not b!932550) (not b!932543) b_and!28721 (not b!932553) (not b_lambda!13935) (not b!932546))
(check-sat b_and!28721 (not b_next!17571))
