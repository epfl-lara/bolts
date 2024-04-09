; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84226 () Bool)

(assert start!84226)

(declare-fun b_free!19899 () Bool)

(declare-fun b_next!19899 () Bool)

(assert (=> start!84226 (= b_free!19899 (not b_next!19899))))

(declare-fun tp!69301 () Bool)

(declare-fun b_and!31893 () Bool)

(assert (=> start!84226 (= tp!69301 b_and!31893)))

(declare-fun b!984622 () Bool)

(declare-fun res!658979 () Bool)

(declare-fun e!555081 () Bool)

(assert (=> b!984622 (=> (not res!658979) (not e!555081))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35651 0))(
  ( (V!35652 (val!11551 Int)) )
))
(declare-datatypes ((ValueCell!11019 0))(
  ( (ValueCellFull!11019 (v!14113 V!35651)) (EmptyCell!11019) )
))
(declare-datatypes ((array!61969 0))(
  ( (array!61970 (arr!29838 (Array (_ BitVec 32) ValueCell!11019)) (size!30318 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61969)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61971 0))(
  ( (array!61972 (arr!29839 (Array (_ BitVec 32) (_ BitVec 64))) (size!30319 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61971)

(assert (=> b!984622 (= res!658979 (and (= (size!30318 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30319 _keys!1544) (size!30318 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!984623 () Bool)

(declare-fun res!658976 () Bool)

(assert (=> b!984623 (=> (not res!658976) (not e!555081))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61971 (_ BitVec 32)) Bool)

(assert (=> b!984623 (= res!658976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!984624 () Bool)

(declare-fun res!658980 () Bool)

(assert (=> b!984624 (=> (not res!658980) (not e!555081))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!984624 (= res!658980 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30319 _keys!1544))))))

(declare-fun b!984625 () Bool)

(declare-fun res!658978 () Bool)

(assert (=> b!984625 (=> (not res!658978) (not e!555081))))

(assert (=> b!984625 (= res!658978 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!984626 () Bool)

(declare-fun e!555086 () Bool)

(declare-fun tp_is_empty!23001 () Bool)

(assert (=> b!984626 (= e!555086 tp_is_empty!23001)))

(declare-fun b!984627 () Bool)

(declare-fun e!555084 () Bool)

(assert (=> b!984627 (= e!555081 e!555084)))

(declare-fun res!658974 () Bool)

(assert (=> b!984627 (=> (not res!658974) (not e!555084))))

(assert (=> b!984627 (= res!658974 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29839 _keys!1544) from!1932))))))

(declare-fun lt!436903 () V!35651)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15502 (ValueCell!11019 V!35651) V!35651)

(declare-fun dynLambda!1835 (Int (_ BitVec 64)) V!35651)

(assert (=> b!984627 (= lt!436903 (get!15502 (select (arr!29838 _values!1278) from!1932) (dynLambda!1835 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35651)

(declare-fun zeroValue!1220 () V!35651)

(declare-datatypes ((tuple2!14876 0))(
  ( (tuple2!14877 (_1!7448 (_ BitVec 64)) (_2!7448 V!35651)) )
))
(declare-datatypes ((List!20795 0))(
  ( (Nil!20792) (Cons!20791 (h!21953 tuple2!14876) (t!29646 List!20795)) )
))
(declare-datatypes ((ListLongMap!13587 0))(
  ( (ListLongMap!13588 (toList!6809 List!20795)) )
))
(declare-fun lt!436906 () ListLongMap!13587)

(declare-fun getCurrentListMapNoExtraKeys!3464 (array!61971 array!61969 (_ BitVec 32) (_ BitVec 32) V!35651 V!35651 (_ BitVec 32) Int) ListLongMap!13587)

(assert (=> b!984627 (= lt!436906 (getCurrentListMapNoExtraKeys!3464 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun res!658977 () Bool)

(assert (=> start!84226 (=> (not res!658977) (not e!555081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84226 (= res!658977 (validMask!0 mask!1948))))

(assert (=> start!84226 e!555081))

(assert (=> start!84226 true))

(assert (=> start!84226 tp_is_empty!23001))

(declare-fun e!555085 () Bool)

(declare-fun array_inv!22929 (array!61969) Bool)

(assert (=> start!84226 (and (array_inv!22929 _values!1278) e!555085)))

(assert (=> start!84226 tp!69301))

(declare-fun array_inv!22930 (array!61971) Bool)

(assert (=> start!84226 (array_inv!22930 _keys!1544)))

(declare-fun b!984628 () Bool)

(assert (=> b!984628 (= e!555084 (not (bvsle from!1932 (size!30319 _keys!1544))))))

(declare-fun lt!436905 () tuple2!14876)

(declare-fun lt!436902 () tuple2!14876)

(declare-fun +!2999 (ListLongMap!13587 tuple2!14876) ListLongMap!13587)

(assert (=> b!984628 (= (+!2999 (+!2999 lt!436906 lt!436905) lt!436902) (+!2999 (+!2999 lt!436906 lt!436902) lt!436905))))

(assert (=> b!984628 (= lt!436902 (tuple2!14877 (select (arr!29839 _keys!1544) from!1932) lt!436903))))

(assert (=> b!984628 (= lt!436905 (tuple2!14877 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32673 0))(
  ( (Unit!32674) )
))
(declare-fun lt!436904 () Unit!32673)

(declare-fun addCommutativeForDiffKeys!661 (ListLongMap!13587 (_ BitVec 64) V!35651 (_ BitVec 64) V!35651) Unit!32673)

(assert (=> b!984628 (= lt!436904 (addCommutativeForDiffKeys!661 lt!436906 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29839 _keys!1544) from!1932) lt!436903))))

(declare-fun mapIsEmpty!36530 () Bool)

(declare-fun mapRes!36530 () Bool)

(assert (=> mapIsEmpty!36530 mapRes!36530))

(declare-fun b!984629 () Bool)

(declare-fun e!555083 () Bool)

(assert (=> b!984629 (= e!555083 tp_is_empty!23001)))

(declare-fun mapNonEmpty!36530 () Bool)

(declare-fun tp!69302 () Bool)

(assert (=> mapNonEmpty!36530 (= mapRes!36530 (and tp!69302 e!555083))))

(declare-fun mapRest!36530 () (Array (_ BitVec 32) ValueCell!11019))

(declare-fun mapValue!36530 () ValueCell!11019)

(declare-fun mapKey!36530 () (_ BitVec 32))

(assert (=> mapNonEmpty!36530 (= (arr!29838 _values!1278) (store mapRest!36530 mapKey!36530 mapValue!36530))))

(declare-fun b!984630 () Bool)

(declare-fun res!658975 () Bool)

(assert (=> b!984630 (=> (not res!658975) (not e!555081))))

(declare-datatypes ((List!20796 0))(
  ( (Nil!20793) (Cons!20792 (h!21954 (_ BitVec 64)) (t!29647 List!20796)) )
))
(declare-fun arrayNoDuplicates!0 (array!61971 (_ BitVec 32) List!20796) Bool)

(assert (=> b!984630 (= res!658975 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20793))))

(declare-fun b!984631 () Bool)

(declare-fun res!658973 () Bool)

(assert (=> b!984631 (=> (not res!658973) (not e!555081))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984631 (= res!658973 (validKeyInArray!0 (select (arr!29839 _keys!1544) from!1932)))))

(declare-fun b!984632 () Bool)

(assert (=> b!984632 (= e!555085 (and e!555086 mapRes!36530))))

(declare-fun condMapEmpty!36530 () Bool)

(declare-fun mapDefault!36530 () ValueCell!11019)

(assert (=> b!984632 (= condMapEmpty!36530 (= (arr!29838 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11019)) mapDefault!36530)))))

(assert (= (and start!84226 res!658977) b!984622))

(assert (= (and b!984622 res!658979) b!984623))

(assert (= (and b!984623 res!658976) b!984630))

(assert (= (and b!984630 res!658975) b!984624))

(assert (= (and b!984624 res!658980) b!984631))

(assert (= (and b!984631 res!658973) b!984625))

(assert (= (and b!984625 res!658978) b!984627))

(assert (= (and b!984627 res!658974) b!984628))

(assert (= (and b!984632 condMapEmpty!36530) mapIsEmpty!36530))

(assert (= (and b!984632 (not condMapEmpty!36530)) mapNonEmpty!36530))

(get-info :version)

(assert (= (and mapNonEmpty!36530 ((_ is ValueCellFull!11019) mapValue!36530)) b!984629))

(assert (= (and b!984632 ((_ is ValueCellFull!11019) mapDefault!36530)) b!984626))

(assert (= start!84226 b!984632))

(declare-fun b_lambda!14961 () Bool)

(assert (=> (not b_lambda!14961) (not b!984627)))

(declare-fun t!29645 () Bool)

(declare-fun tb!6701 () Bool)

(assert (=> (and start!84226 (= defaultEntry!1281 defaultEntry!1281) t!29645) tb!6701))

(declare-fun result!13383 () Bool)

(assert (=> tb!6701 (= result!13383 tp_is_empty!23001)))

(assert (=> b!984627 t!29645))

(declare-fun b_and!31895 () Bool)

(assert (= b_and!31893 (and (=> t!29645 result!13383) b_and!31895)))

(declare-fun m!911805 () Bool)

(assert (=> b!984627 m!911805))

(declare-fun m!911807 () Bool)

(assert (=> b!984627 m!911807))

(declare-fun m!911809 () Bool)

(assert (=> b!984627 m!911809))

(declare-fun m!911811 () Bool)

(assert (=> b!984627 m!911811))

(assert (=> b!984627 m!911807))

(assert (=> b!984627 m!911811))

(declare-fun m!911813 () Bool)

(assert (=> b!984627 m!911813))

(assert (=> b!984631 m!911805))

(assert (=> b!984631 m!911805))

(declare-fun m!911815 () Bool)

(assert (=> b!984631 m!911815))

(declare-fun m!911817 () Bool)

(assert (=> b!984628 m!911817))

(assert (=> b!984628 m!911817))

(declare-fun m!911819 () Bool)

(assert (=> b!984628 m!911819))

(declare-fun m!911821 () Bool)

(assert (=> b!984628 m!911821))

(assert (=> b!984628 m!911821))

(declare-fun m!911823 () Bool)

(assert (=> b!984628 m!911823))

(assert (=> b!984628 m!911805))

(assert (=> b!984628 m!911805))

(declare-fun m!911825 () Bool)

(assert (=> b!984628 m!911825))

(declare-fun m!911827 () Bool)

(assert (=> mapNonEmpty!36530 m!911827))

(declare-fun m!911829 () Bool)

(assert (=> b!984630 m!911829))

(declare-fun m!911831 () Bool)

(assert (=> start!84226 m!911831))

(declare-fun m!911833 () Bool)

(assert (=> start!84226 m!911833))

(declare-fun m!911835 () Bool)

(assert (=> start!84226 m!911835))

(declare-fun m!911837 () Bool)

(assert (=> b!984623 m!911837))

(check-sat (not b!984627) (not b_lambda!14961) (not b_next!19899) b_and!31895 tp_is_empty!23001 (not b!984628) (not b!984623) (not b!984630) (not b!984631) (not start!84226) (not mapNonEmpty!36530))
(check-sat b_and!31895 (not b_next!19899))
