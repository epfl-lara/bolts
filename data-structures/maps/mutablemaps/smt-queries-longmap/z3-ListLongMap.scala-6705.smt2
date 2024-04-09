; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84232 () Bool)

(assert start!84232)

(declare-fun b_free!19905 () Bool)

(declare-fun b_next!19905 () Bool)

(assert (=> start!84232 (= b_free!19905 (not b_next!19905))))

(declare-fun tp!69320 () Bool)

(declare-fun b_and!31905 () Bool)

(assert (=> start!84232 (= tp!69320 b_and!31905)))

(declare-fun b!984727 () Bool)

(declare-fun res!659045 () Bool)

(declare-fun e!555136 () Bool)

(assert (=> b!984727 (=> (not res!659045) (not e!555136))))

(declare-datatypes ((array!61981 0))(
  ( (array!61982 (arr!29844 (Array (_ BitVec 32) (_ BitVec 64))) (size!30324 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61981)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984727 (= res!659045 (validKeyInArray!0 (select (arr!29844 _keys!1544) from!1932)))))

(declare-fun mapIsEmpty!36539 () Bool)

(declare-fun mapRes!36539 () Bool)

(assert (=> mapIsEmpty!36539 mapRes!36539))

(declare-fun b!984728 () Bool)

(declare-fun e!555135 () Bool)

(declare-fun tp_is_empty!23007 () Bool)

(assert (=> b!984728 (= e!555135 tp_is_empty!23007)))

(declare-fun b!984729 () Bool)

(declare-fun e!555138 () Bool)

(assert (=> b!984729 (= e!555138 (not true))))

(declare-datatypes ((V!35659 0))(
  ( (V!35660 (val!11554 Int)) )
))
(declare-datatypes ((tuple2!14882 0))(
  ( (tuple2!14883 (_1!7451 (_ BitVec 64)) (_2!7451 V!35659)) )
))
(declare-datatypes ((List!20801 0))(
  ( (Nil!20798) (Cons!20797 (h!21959 tuple2!14882) (t!29658 List!20801)) )
))
(declare-datatypes ((ListLongMap!13593 0))(
  ( (ListLongMap!13594 (toList!6812 List!20801)) )
))
(declare-fun lt!436948 () ListLongMap!13593)

(declare-fun lt!436949 () tuple2!14882)

(declare-fun lt!436951 () tuple2!14882)

(declare-fun +!3002 (ListLongMap!13593 tuple2!14882) ListLongMap!13593)

(assert (=> b!984729 (= (+!3002 (+!3002 lt!436948 lt!436949) lt!436951) (+!3002 (+!3002 lt!436948 lt!436951) lt!436949))))

(declare-fun lt!436950 () V!35659)

(assert (=> b!984729 (= lt!436951 (tuple2!14883 (select (arr!29844 _keys!1544) from!1932) lt!436950))))

(declare-fun minValue!1220 () V!35659)

(assert (=> b!984729 (= lt!436949 (tuple2!14883 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32679 0))(
  ( (Unit!32680) )
))
(declare-fun lt!436947 () Unit!32679)

(declare-fun addCommutativeForDiffKeys!664 (ListLongMap!13593 (_ BitVec 64) V!35659 (_ BitVec 64) V!35659) Unit!32679)

(assert (=> b!984729 (= lt!436947 (addCommutativeForDiffKeys!664 lt!436948 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29844 _keys!1544) from!1932) lt!436950))))

(declare-fun b!984730 () Bool)

(declare-fun res!659050 () Bool)

(assert (=> b!984730 (=> (not res!659050) (not e!555136))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((ValueCell!11022 0))(
  ( (ValueCellFull!11022 (v!14116 V!35659)) (EmptyCell!11022) )
))
(declare-datatypes ((array!61983 0))(
  ( (array!61984 (arr!29845 (Array (_ BitVec 32) ValueCell!11022)) (size!30325 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61983)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!984730 (= res!659050 (and (= (size!30325 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30324 _keys!1544) (size!30325 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!659047 () Bool)

(assert (=> start!84232 (=> (not res!659047) (not e!555136))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84232 (= res!659047 (validMask!0 mask!1948))))

(assert (=> start!84232 e!555136))

(assert (=> start!84232 true))

(assert (=> start!84232 tp_is_empty!23007))

(declare-fun e!555140 () Bool)

(declare-fun array_inv!22935 (array!61983) Bool)

(assert (=> start!84232 (and (array_inv!22935 _values!1278) e!555140)))

(assert (=> start!84232 tp!69320))

(declare-fun array_inv!22936 (array!61981) Bool)

(assert (=> start!84232 (array_inv!22936 _keys!1544)))

(declare-fun b!984731 () Bool)

(declare-fun res!659046 () Bool)

(assert (=> b!984731 (=> (not res!659046) (not e!555136))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61981 (_ BitVec 32)) Bool)

(assert (=> b!984731 (= res!659046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!984732 () Bool)

(declare-fun res!659049 () Bool)

(assert (=> b!984732 (=> (not res!659049) (not e!555136))))

(assert (=> b!984732 (= res!659049 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!984733 () Bool)

(assert (=> b!984733 (= e!555136 e!555138)))

(declare-fun res!659052 () Bool)

(assert (=> b!984733 (=> (not res!659052) (not e!555138))))

(assert (=> b!984733 (= res!659052 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29844 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15507 (ValueCell!11022 V!35659) V!35659)

(declare-fun dynLambda!1838 (Int (_ BitVec 64)) V!35659)

(assert (=> b!984733 (= lt!436950 (get!15507 (select (arr!29845 _values!1278) from!1932) (dynLambda!1838 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35659)

(declare-fun getCurrentListMapNoExtraKeys!3467 (array!61981 array!61983 (_ BitVec 32) (_ BitVec 32) V!35659 V!35659 (_ BitVec 32) Int) ListLongMap!13593)

(assert (=> b!984733 (= lt!436948 (getCurrentListMapNoExtraKeys!3467 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!984734 () Bool)

(assert (=> b!984734 (= e!555140 (and e!555135 mapRes!36539))))

(declare-fun condMapEmpty!36539 () Bool)

(declare-fun mapDefault!36539 () ValueCell!11022)

(assert (=> b!984734 (= condMapEmpty!36539 (= (arr!29845 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11022)) mapDefault!36539)))))

(declare-fun b!984735 () Bool)

(declare-fun e!555137 () Bool)

(assert (=> b!984735 (= e!555137 tp_is_empty!23007)))

(declare-fun b!984736 () Bool)

(declare-fun res!659051 () Bool)

(assert (=> b!984736 (=> (not res!659051) (not e!555136))))

(declare-datatypes ((List!20802 0))(
  ( (Nil!20799) (Cons!20798 (h!21960 (_ BitVec 64)) (t!29659 List!20802)) )
))
(declare-fun arrayNoDuplicates!0 (array!61981 (_ BitVec 32) List!20802) Bool)

(assert (=> b!984736 (= res!659051 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20799))))

(declare-fun b!984737 () Bool)

(declare-fun res!659048 () Bool)

(assert (=> b!984737 (=> (not res!659048) (not e!555136))))

(assert (=> b!984737 (= res!659048 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30324 _keys!1544))))))

(declare-fun mapNonEmpty!36539 () Bool)

(declare-fun tp!69319 () Bool)

(assert (=> mapNonEmpty!36539 (= mapRes!36539 (and tp!69319 e!555137))))

(declare-fun mapKey!36539 () (_ BitVec 32))

(declare-fun mapValue!36539 () ValueCell!11022)

(declare-fun mapRest!36539 () (Array (_ BitVec 32) ValueCell!11022))

(assert (=> mapNonEmpty!36539 (= (arr!29845 _values!1278) (store mapRest!36539 mapKey!36539 mapValue!36539))))

(assert (= (and start!84232 res!659047) b!984730))

(assert (= (and b!984730 res!659050) b!984731))

(assert (= (and b!984731 res!659046) b!984736))

(assert (= (and b!984736 res!659051) b!984737))

(assert (= (and b!984737 res!659048) b!984727))

(assert (= (and b!984727 res!659045) b!984732))

(assert (= (and b!984732 res!659049) b!984733))

(assert (= (and b!984733 res!659052) b!984729))

(assert (= (and b!984734 condMapEmpty!36539) mapIsEmpty!36539))

(assert (= (and b!984734 (not condMapEmpty!36539)) mapNonEmpty!36539))

(get-info :version)

(assert (= (and mapNonEmpty!36539 ((_ is ValueCellFull!11022) mapValue!36539)) b!984735))

(assert (= (and b!984734 ((_ is ValueCellFull!11022) mapDefault!36539)) b!984728))

(assert (= start!84232 b!984734))

(declare-fun b_lambda!14967 () Bool)

(assert (=> (not b_lambda!14967) (not b!984733)))

(declare-fun t!29657 () Bool)

(declare-fun tb!6707 () Bool)

(assert (=> (and start!84232 (= defaultEntry!1281 defaultEntry!1281) t!29657) tb!6707))

(declare-fun result!13395 () Bool)

(assert (=> tb!6707 (= result!13395 tp_is_empty!23007)))

(assert (=> b!984733 t!29657))

(declare-fun b_and!31907 () Bool)

(assert (= b_and!31905 (and (=> t!29657 result!13395) b_and!31907)))

(declare-fun m!911907 () Bool)

(assert (=> mapNonEmpty!36539 m!911907))

(declare-fun m!911909 () Bool)

(assert (=> b!984733 m!911909))

(declare-fun m!911911 () Bool)

(assert (=> b!984733 m!911911))

(declare-fun m!911913 () Bool)

(assert (=> b!984733 m!911913))

(declare-fun m!911915 () Bool)

(assert (=> b!984733 m!911915))

(assert (=> b!984733 m!911911))

(assert (=> b!984733 m!911915))

(declare-fun m!911917 () Bool)

(assert (=> b!984733 m!911917))

(assert (=> b!984727 m!911909))

(assert (=> b!984727 m!911909))

(declare-fun m!911919 () Bool)

(assert (=> b!984727 m!911919))

(declare-fun m!911921 () Bool)

(assert (=> b!984736 m!911921))

(declare-fun m!911923 () Bool)

(assert (=> b!984731 m!911923))

(assert (=> b!984729 m!911909))

(declare-fun m!911925 () Bool)

(assert (=> b!984729 m!911925))

(declare-fun m!911927 () Bool)

(assert (=> b!984729 m!911927))

(declare-fun m!911929 () Bool)

(assert (=> b!984729 m!911929))

(assert (=> b!984729 m!911927))

(assert (=> b!984729 m!911909))

(declare-fun m!911931 () Bool)

(assert (=> b!984729 m!911931))

(assert (=> b!984729 m!911925))

(declare-fun m!911933 () Bool)

(assert (=> b!984729 m!911933))

(declare-fun m!911935 () Bool)

(assert (=> start!84232 m!911935))

(declare-fun m!911937 () Bool)

(assert (=> start!84232 m!911937))

(declare-fun m!911939 () Bool)

(assert (=> start!84232 m!911939))

(check-sat (not b!984727) (not mapNonEmpty!36539) tp_is_empty!23007 (not b_lambda!14967) b_and!31907 (not b_next!19905) (not b!984736) (not start!84232) (not b!984729) (not b!984731) (not b!984733))
(check-sat b_and!31907 (not b_next!19905))
