; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83842 () Bool)

(assert start!83842)

(declare-fun b_free!19623 () Bool)

(declare-fun b_next!19623 () Bool)

(assert (=> start!83842 (= b_free!19623 (not b_next!19623))))

(declare-fun tp!68311 () Bool)

(declare-fun b_and!31353 () Bool)

(assert (=> start!83842 (= tp!68311 b_and!31353)))

(declare-fun b!978796 () Bool)

(declare-fun res!655140 () Bool)

(declare-fun e!551806 () Bool)

(assert (=> b!978796 (=> (not res!655140) (not e!551806))))

(declare-datatypes ((array!61249 0))(
  ( (array!61250 (arr!29478 (Array (_ BitVec 32) (_ BitVec 64))) (size!29958 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61249)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978796 (= res!655140 (validKeyInArray!0 (select (arr!29478 _keys!1544) from!1932)))))

(declare-fun b!978797 () Bool)

(declare-fun e!551808 () Bool)

(declare-fun e!551810 () Bool)

(declare-fun mapRes!35954 () Bool)

(assert (=> b!978797 (= e!551808 (and e!551810 mapRes!35954))))

(declare-fun condMapEmpty!35954 () Bool)

(declare-datatypes ((V!35139 0))(
  ( (V!35140 (val!11359 Int)) )
))
(declare-datatypes ((ValueCell!10827 0))(
  ( (ValueCellFull!10827 (v!13921 V!35139)) (EmptyCell!10827) )
))
(declare-datatypes ((array!61251 0))(
  ( (array!61252 (arr!29479 (Array (_ BitVec 32) ValueCell!10827)) (size!29959 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61251)

(declare-fun mapDefault!35954 () ValueCell!10827)

(assert (=> b!978797 (= condMapEmpty!35954 (= (arr!29479 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10827)) mapDefault!35954)))))

(declare-fun b!978798 () Bool)

(declare-fun e!551807 () Bool)

(assert (=> b!978798 (= e!551806 (not e!551807))))

(declare-fun res!655141 () Bool)

(assert (=> b!978798 (=> res!655141 e!551807)))

(assert (=> b!978798 (= res!655141 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29478 _keys!1544) from!1932)))))

(declare-datatypes ((tuple2!14662 0))(
  ( (tuple2!14663 (_1!7341 (_ BitVec 64)) (_2!7341 V!35139)) )
))
(declare-datatypes ((List!20561 0))(
  ( (Nil!20558) (Cons!20557 (h!21719 tuple2!14662) (t!29148 List!20561)) )
))
(declare-datatypes ((ListLongMap!13373 0))(
  ( (ListLongMap!13374 (toList!6702 List!20561)) )
))
(declare-fun lt!433982 () ListLongMap!13373)

(declare-fun lt!433976 () tuple2!14662)

(declare-fun lt!433978 () ListLongMap!13373)

(declare-fun lt!433979 () tuple2!14662)

(declare-fun +!2908 (ListLongMap!13373 tuple2!14662) ListLongMap!13373)

(assert (=> b!978798 (= (+!2908 lt!433978 lt!433979) (+!2908 lt!433982 lt!433976))))

(declare-fun lt!433981 () ListLongMap!13373)

(assert (=> b!978798 (= lt!433982 (+!2908 lt!433981 lt!433979))))

(declare-fun lt!433975 () V!35139)

(assert (=> b!978798 (= lt!433979 (tuple2!14663 (select (arr!29478 _keys!1544) from!1932) lt!433975))))

(assert (=> b!978798 (= lt!433978 (+!2908 lt!433981 lt!433976))))

(declare-fun minValue!1220 () V!35139)

(assert (=> b!978798 (= lt!433976 (tuple2!14663 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32491 0))(
  ( (Unit!32492) )
))
(declare-fun lt!433980 () Unit!32491)

(declare-fun addCommutativeForDiffKeys!570 (ListLongMap!13373 (_ BitVec 64) V!35139 (_ BitVec 64) V!35139) Unit!32491)

(assert (=> b!978798 (= lt!433980 (addCommutativeForDiffKeys!570 lt!433981 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29478 _keys!1544) from!1932) lt!433975))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15283 (ValueCell!10827 V!35139) V!35139)

(declare-fun dynLambda!1744 (Int (_ BitVec 64)) V!35139)

(assert (=> b!978798 (= lt!433975 (get!15283 (select (arr!29479 _values!1278) from!1932) (dynLambda!1744 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!433984 () ListLongMap!13373)

(declare-fun lt!433983 () tuple2!14662)

(assert (=> b!978798 (= lt!433981 (+!2908 lt!433984 lt!433983))))

(declare-fun zeroValue!1220 () V!35139)

(assert (=> b!978798 (= lt!433983 (tuple2!14663 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3369 (array!61249 array!61251 (_ BitVec 32) (_ BitVec 32) V!35139 V!35139 (_ BitVec 32) Int) ListLongMap!13373)

(assert (=> b!978798 (= lt!433984 (getCurrentListMapNoExtraKeys!3369 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun mapIsEmpty!35954 () Bool)

(assert (=> mapIsEmpty!35954 mapRes!35954))

(declare-fun b!978799 () Bool)

(declare-fun res!655144 () Bool)

(assert (=> b!978799 (=> (not res!655144) (not e!551806))))

(assert (=> b!978799 (= res!655144 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!978801 () Bool)

(declare-fun res!655146 () Bool)

(assert (=> b!978801 (=> (not res!655146) (not e!551806))))

(assert (=> b!978801 (= res!655146 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29958 _keys!1544))))))

(declare-fun b!978802 () Bool)

(declare-fun res!655145 () Bool)

(assert (=> b!978802 (=> (not res!655145) (not e!551806))))

(assert (=> b!978802 (= res!655145 (and (= (size!29959 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29958 _keys!1544) (size!29959 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!978803 () Bool)

(assert (=> b!978803 (= e!551807 true)))

(assert (=> b!978803 (= lt!433982 (+!2908 (+!2908 lt!433984 lt!433979) lt!433983))))

(declare-fun lt!433977 () Unit!32491)

(assert (=> b!978803 (= lt!433977 (addCommutativeForDiffKeys!570 lt!433984 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29478 _keys!1544) from!1932) lt!433975))))

(declare-fun b!978804 () Bool)

(declare-fun res!655139 () Bool)

(assert (=> b!978804 (=> (not res!655139) (not e!551806))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61249 (_ BitVec 32)) Bool)

(assert (=> b!978804 (= res!655139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!978805 () Bool)

(declare-fun tp_is_empty!22617 () Bool)

(assert (=> b!978805 (= e!551810 tp_is_empty!22617)))

(declare-fun res!655143 () Bool)

(assert (=> start!83842 (=> (not res!655143) (not e!551806))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83842 (= res!655143 (validMask!0 mask!1948))))

(assert (=> start!83842 e!551806))

(assert (=> start!83842 true))

(assert (=> start!83842 tp_is_empty!22617))

(declare-fun array_inv!22689 (array!61251) Bool)

(assert (=> start!83842 (and (array_inv!22689 _values!1278) e!551808)))

(assert (=> start!83842 tp!68311))

(declare-fun array_inv!22690 (array!61249) Bool)

(assert (=> start!83842 (array_inv!22690 _keys!1544)))

(declare-fun b!978800 () Bool)

(declare-fun res!655142 () Bool)

(assert (=> b!978800 (=> (not res!655142) (not e!551806))))

(declare-datatypes ((List!20562 0))(
  ( (Nil!20559) (Cons!20558 (h!21720 (_ BitVec 64)) (t!29149 List!20562)) )
))
(declare-fun arrayNoDuplicates!0 (array!61249 (_ BitVec 32) List!20562) Bool)

(assert (=> b!978800 (= res!655142 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20559))))

(declare-fun b!978806 () Bool)

(declare-fun e!551809 () Bool)

(assert (=> b!978806 (= e!551809 tp_is_empty!22617)))

(declare-fun mapNonEmpty!35954 () Bool)

(declare-fun tp!68312 () Bool)

(assert (=> mapNonEmpty!35954 (= mapRes!35954 (and tp!68312 e!551809))))

(declare-fun mapValue!35954 () ValueCell!10827)

(declare-fun mapKey!35954 () (_ BitVec 32))

(declare-fun mapRest!35954 () (Array (_ BitVec 32) ValueCell!10827))

(assert (=> mapNonEmpty!35954 (= (arr!29479 _values!1278) (store mapRest!35954 mapKey!35954 mapValue!35954))))

(assert (= (and start!83842 res!655143) b!978802))

(assert (= (and b!978802 res!655145) b!978804))

(assert (= (and b!978804 res!655139) b!978800))

(assert (= (and b!978800 res!655142) b!978801))

(assert (= (and b!978801 res!655146) b!978796))

(assert (= (and b!978796 res!655140) b!978799))

(assert (= (and b!978799 res!655144) b!978798))

(assert (= (and b!978798 (not res!655141)) b!978803))

(assert (= (and b!978797 condMapEmpty!35954) mapIsEmpty!35954))

(assert (= (and b!978797 (not condMapEmpty!35954)) mapNonEmpty!35954))

(get-info :version)

(assert (= (and mapNonEmpty!35954 ((_ is ValueCellFull!10827) mapValue!35954)) b!978806))

(assert (= (and b!978797 ((_ is ValueCellFull!10827) mapDefault!35954)) b!978805))

(assert (= start!83842 b!978797))

(declare-fun b_lambda!14697 () Bool)

(assert (=> (not b_lambda!14697) (not b!978798)))

(declare-fun t!29147 () Bool)

(declare-fun tb!6437 () Bool)

(assert (=> (and start!83842 (= defaultEntry!1281 defaultEntry!1281) t!29147) tb!6437))

(declare-fun result!12855 () Bool)

(assert (=> tb!6437 (= result!12855 tp_is_empty!22617)))

(assert (=> b!978798 t!29147))

(declare-fun b_and!31355 () Bool)

(assert (= b_and!31353 (and (=> t!29147 result!12855) b_and!31355)))

(declare-fun m!906113 () Bool)

(assert (=> start!83842 m!906113))

(declare-fun m!906115 () Bool)

(assert (=> start!83842 m!906115))

(declare-fun m!906117 () Bool)

(assert (=> start!83842 m!906117))

(declare-fun m!906119 () Bool)

(assert (=> b!978803 m!906119))

(assert (=> b!978803 m!906119))

(declare-fun m!906121 () Bool)

(assert (=> b!978803 m!906121))

(declare-fun m!906123 () Bool)

(assert (=> b!978803 m!906123))

(assert (=> b!978803 m!906123))

(declare-fun m!906125 () Bool)

(assert (=> b!978803 m!906125))

(assert (=> b!978796 m!906123))

(assert (=> b!978796 m!906123))

(declare-fun m!906127 () Bool)

(assert (=> b!978796 m!906127))

(assert (=> b!978798 m!906123))

(declare-fun m!906129 () Bool)

(assert (=> b!978798 m!906129))

(declare-fun m!906131 () Bool)

(assert (=> b!978798 m!906131))

(declare-fun m!906133 () Bool)

(assert (=> b!978798 m!906133))

(declare-fun m!906135 () Bool)

(assert (=> b!978798 m!906135))

(declare-fun m!906137 () Bool)

(assert (=> b!978798 m!906137))

(declare-fun m!906139 () Bool)

(assert (=> b!978798 m!906139))

(declare-fun m!906141 () Bool)

(assert (=> b!978798 m!906141))

(assert (=> b!978798 m!906123))

(declare-fun m!906143 () Bool)

(assert (=> b!978798 m!906143))

(declare-fun m!906145 () Bool)

(assert (=> b!978798 m!906145))

(assert (=> b!978798 m!906129))

(assert (=> b!978798 m!906145))

(declare-fun m!906147 () Bool)

(assert (=> b!978798 m!906147))

(declare-fun m!906149 () Bool)

(assert (=> mapNonEmpty!35954 m!906149))

(declare-fun m!906151 () Bool)

(assert (=> b!978800 m!906151))

(declare-fun m!906153 () Bool)

(assert (=> b!978804 m!906153))

(check-sat (not b!978803) tp_is_empty!22617 (not b_next!19623) (not mapNonEmpty!35954) (not b!978804) (not b!978798) (not b_lambda!14697) (not b!978800) b_and!31355 (not start!83842) (not b!978796))
(check-sat b_and!31355 (not b_next!19623))
