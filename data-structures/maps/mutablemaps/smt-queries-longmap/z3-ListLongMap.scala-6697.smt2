; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84184 () Bool)

(assert start!84184)

(declare-fun b_free!19857 () Bool)

(declare-fun b_next!19857 () Bool)

(assert (=> start!84184 (= b_free!19857 (not b_next!19857))))

(declare-fun tp!69175 () Bool)

(declare-fun b_and!31809 () Bool)

(assert (=> start!84184 (= tp!69175 b_and!31809)))

(declare-fun b!983887 () Bool)

(declare-fun res!658472 () Bool)

(declare-fun e!554707 () Bool)

(assert (=> b!983887 (=> (not res!658472) (not e!554707))))

(declare-datatypes ((array!61887 0))(
  ( (array!61888 (arr!29797 (Array (_ BitVec 32) (_ BitVec 64))) (size!30277 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61887)

(declare-datatypes ((List!20764 0))(
  ( (Nil!20761) (Cons!20760 (h!21922 (_ BitVec 64)) (t!29573 List!20764)) )
))
(declare-fun arrayNoDuplicates!0 (array!61887 (_ BitVec 32) List!20764) Bool)

(assert (=> b!983887 (= res!658472 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20761))))

(declare-fun b!983888 () Bool)

(declare-fun res!658471 () Bool)

(assert (=> b!983888 (=> (not res!658471) (not e!554707))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!983888 (= res!658471 (validKeyInArray!0 (select (arr!29797 _keys!1544) from!1932)))))

(declare-fun b!983889 () Bool)

(declare-fun e!554706 () Bool)

(assert (=> b!983889 (= e!554706 (not true))))

(declare-datatypes ((V!35595 0))(
  ( (V!35596 (val!11530 Int)) )
))
(declare-datatypes ((tuple2!14844 0))(
  ( (tuple2!14845 (_1!7432 (_ BitVec 64)) (_2!7432 V!35595)) )
))
(declare-datatypes ((List!20765 0))(
  ( (Nil!20762) (Cons!20761 (h!21923 tuple2!14844) (t!29574 List!20765)) )
))
(declare-datatypes ((ListLongMap!13555 0))(
  ( (ListLongMap!13556 (toList!6793 List!20765)) )
))
(declare-fun lt!436589 () ListLongMap!13555)

(declare-fun lt!436587 () tuple2!14844)

(declare-fun lt!436591 () tuple2!14844)

(declare-fun +!2986 (ListLongMap!13555 tuple2!14844) ListLongMap!13555)

(assert (=> b!983889 (= (+!2986 (+!2986 lt!436589 lt!436587) lt!436591) (+!2986 (+!2986 lt!436589 lt!436591) lt!436587))))

(declare-fun lt!436588 () V!35595)

(assert (=> b!983889 (= lt!436591 (tuple2!14845 (select (arr!29797 _keys!1544) from!1932) lt!436588))))

(declare-fun minValue!1220 () V!35595)

(assert (=> b!983889 (= lt!436587 (tuple2!14845 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32647 0))(
  ( (Unit!32648) )
))
(declare-fun lt!436590 () Unit!32647)

(declare-fun addCommutativeForDiffKeys!648 (ListLongMap!13555 (_ BitVec 64) V!35595 (_ BitVec 64) V!35595) Unit!32647)

(assert (=> b!983889 (= lt!436590 (addCommutativeForDiffKeys!648 lt!436589 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29797 _keys!1544) from!1932) lt!436588))))

(declare-fun b!983890 () Bool)

(assert (=> b!983890 (= e!554707 e!554706)))

(declare-fun res!658474 () Bool)

(assert (=> b!983890 (=> (not res!658474) (not e!554706))))

(assert (=> b!983890 (= res!658474 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29797 _keys!1544) from!1932))))))

(declare-datatypes ((ValueCell!10998 0))(
  ( (ValueCellFull!10998 (v!14092 V!35595)) (EmptyCell!10998) )
))
(declare-datatypes ((array!61889 0))(
  ( (array!61890 (arr!29798 (Array (_ BitVec 32) ValueCell!10998)) (size!30278 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61889)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15476 (ValueCell!10998 V!35595) V!35595)

(declare-fun dynLambda!1823 (Int (_ BitVec 64)) V!35595)

(assert (=> b!983890 (= lt!436588 (get!15476 (select (arr!29798 _values!1278) from!1932) (dynLambda!1823 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35595)

(declare-fun getCurrentListMapNoExtraKeys!3452 (array!61887 array!61889 (_ BitVec 32) (_ BitVec 32) V!35595 V!35595 (_ BitVec 32) Int) ListLongMap!13555)

(assert (=> b!983890 (= lt!436589 (getCurrentListMapNoExtraKeys!3452 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!983891 () Bool)

(declare-fun res!658476 () Bool)

(assert (=> b!983891 (=> (not res!658476) (not e!554707))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61887 (_ BitVec 32)) Bool)

(assert (=> b!983891 (= res!658476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun res!658469 () Bool)

(assert (=> start!84184 (=> (not res!658469) (not e!554707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84184 (= res!658469 (validMask!0 mask!1948))))

(assert (=> start!84184 e!554707))

(assert (=> start!84184 true))

(declare-fun tp_is_empty!22959 () Bool)

(assert (=> start!84184 tp_is_empty!22959))

(declare-fun e!554705 () Bool)

(declare-fun array_inv!22907 (array!61889) Bool)

(assert (=> start!84184 (and (array_inv!22907 _values!1278) e!554705)))

(assert (=> start!84184 tp!69175))

(declare-fun array_inv!22908 (array!61887) Bool)

(assert (=> start!84184 (array_inv!22908 _keys!1544)))

(declare-fun b!983892 () Bool)

(declare-fun res!658475 () Bool)

(assert (=> b!983892 (=> (not res!658475) (not e!554707))))

(assert (=> b!983892 (= res!658475 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30277 _keys!1544))))))

(declare-fun b!983893 () Bool)

(declare-fun e!554708 () Bool)

(assert (=> b!983893 (= e!554708 tp_is_empty!22959)))

(declare-fun b!983894 () Bool)

(declare-fun e!554704 () Bool)

(declare-fun mapRes!36467 () Bool)

(assert (=> b!983894 (= e!554705 (and e!554704 mapRes!36467))))

(declare-fun condMapEmpty!36467 () Bool)

(declare-fun mapDefault!36467 () ValueCell!10998)

(assert (=> b!983894 (= condMapEmpty!36467 (= (arr!29798 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10998)) mapDefault!36467)))))

(declare-fun b!983895 () Bool)

(assert (=> b!983895 (= e!554704 tp_is_empty!22959)))

(declare-fun b!983896 () Bool)

(declare-fun res!658473 () Bool)

(assert (=> b!983896 (=> (not res!658473) (not e!554707))))

(assert (=> b!983896 (= res!658473 (and (= (size!30278 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30277 _keys!1544) (size!30278 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983897 () Bool)

(declare-fun res!658470 () Bool)

(assert (=> b!983897 (=> (not res!658470) (not e!554707))))

(assert (=> b!983897 (= res!658470 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!36467 () Bool)

(declare-fun tp!69176 () Bool)

(assert (=> mapNonEmpty!36467 (= mapRes!36467 (and tp!69176 e!554708))))

(declare-fun mapValue!36467 () ValueCell!10998)

(declare-fun mapRest!36467 () (Array (_ BitVec 32) ValueCell!10998))

(declare-fun mapKey!36467 () (_ BitVec 32))

(assert (=> mapNonEmpty!36467 (= (arr!29798 _values!1278) (store mapRest!36467 mapKey!36467 mapValue!36467))))

(declare-fun mapIsEmpty!36467 () Bool)

(assert (=> mapIsEmpty!36467 mapRes!36467))

(assert (= (and start!84184 res!658469) b!983896))

(assert (= (and b!983896 res!658473) b!983891))

(assert (= (and b!983891 res!658476) b!983887))

(assert (= (and b!983887 res!658472) b!983892))

(assert (= (and b!983892 res!658475) b!983888))

(assert (= (and b!983888 res!658471) b!983897))

(assert (= (and b!983897 res!658470) b!983890))

(assert (= (and b!983890 res!658474) b!983889))

(assert (= (and b!983894 condMapEmpty!36467) mapIsEmpty!36467))

(assert (= (and b!983894 (not condMapEmpty!36467)) mapNonEmpty!36467))

(get-info :version)

(assert (= (and mapNonEmpty!36467 ((_ is ValueCellFull!10998) mapValue!36467)) b!983893))

(assert (= (and b!983894 ((_ is ValueCellFull!10998) mapDefault!36467)) b!983895))

(assert (= start!84184 b!983894))

(declare-fun b_lambda!14919 () Bool)

(assert (=> (not b_lambda!14919) (not b!983890)))

(declare-fun t!29572 () Bool)

(declare-fun tb!6659 () Bool)

(assert (=> (and start!84184 (= defaultEntry!1281 defaultEntry!1281) t!29572) tb!6659))

(declare-fun result!13299 () Bool)

(assert (=> tb!6659 (= result!13299 tp_is_empty!22959)))

(assert (=> b!983890 t!29572))

(declare-fun b_and!31811 () Bool)

(assert (= b_and!31809 (and (=> t!29572 result!13299) b_and!31811)))

(declare-fun m!911091 () Bool)

(assert (=> start!84184 m!911091))

(declare-fun m!911093 () Bool)

(assert (=> start!84184 m!911093))

(declare-fun m!911095 () Bool)

(assert (=> start!84184 m!911095))

(declare-fun m!911097 () Bool)

(assert (=> b!983890 m!911097))

(declare-fun m!911099 () Bool)

(assert (=> b!983890 m!911099))

(declare-fun m!911101 () Bool)

(assert (=> b!983890 m!911101))

(declare-fun m!911103 () Bool)

(assert (=> b!983890 m!911103))

(assert (=> b!983890 m!911099))

(assert (=> b!983890 m!911103))

(declare-fun m!911105 () Bool)

(assert (=> b!983890 m!911105))

(declare-fun m!911107 () Bool)

(assert (=> b!983887 m!911107))

(assert (=> b!983888 m!911097))

(assert (=> b!983888 m!911097))

(declare-fun m!911109 () Bool)

(assert (=> b!983888 m!911109))

(declare-fun m!911111 () Bool)

(assert (=> mapNonEmpty!36467 m!911111))

(declare-fun m!911113 () Bool)

(assert (=> b!983891 m!911113))

(assert (=> b!983889 m!911097))

(assert (=> b!983889 m!911097))

(declare-fun m!911115 () Bool)

(assert (=> b!983889 m!911115))

(declare-fun m!911117 () Bool)

(assert (=> b!983889 m!911117))

(declare-fun m!911119 () Bool)

(assert (=> b!983889 m!911119))

(assert (=> b!983889 m!911117))

(declare-fun m!911121 () Bool)

(assert (=> b!983889 m!911121))

(assert (=> b!983889 m!911121))

(declare-fun m!911123 () Bool)

(assert (=> b!983889 m!911123))

(check-sat (not b!983887) (not b_lambda!14919) b_and!31811 (not b_next!19857) (not b!983888) (not start!84184) tp_is_empty!22959 (not b!983890) (not b!983891) (not mapNonEmpty!36467) (not b!983889))
(check-sat b_and!31811 (not b_next!19857))
