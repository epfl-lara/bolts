; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39344 () Bool)

(assert start!39344)

(declare-fun b_free!9603 () Bool)

(declare-fun b_next!9603 () Bool)

(assert (=> start!39344 (= b_free!9603 (not b_next!9603))))

(declare-fun tp!34337 () Bool)

(declare-fun b_and!17099 () Bool)

(assert (=> start!39344 (= tp!34337 b_and!17099)))

(declare-fun b!416881 () Bool)

(declare-fun e!248791 () Bool)

(declare-fun e!248784 () Bool)

(assert (=> b!416881 (= e!248791 e!248784)))

(declare-fun res!242804 () Bool)

(assert (=> b!416881 (=> (not res!242804) (not e!248784))))

(declare-datatypes ((array!25345 0))(
  ( (array!25346 (arr!12119 (Array (_ BitVec 32) (_ BitVec 64))) (size!12471 (_ BitVec 32))) )
))
(declare-fun lt!190989 () array!25345)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25345 (_ BitVec 32)) Bool)

(assert (=> b!416881 (= res!242804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!190989 mask!1025))))

(declare-fun _keys!709 () array!25345)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!416881 (= lt!190989 (array!25346 (store (arr!12119 _keys!709) i!563 k0!794) (size!12471 _keys!709)))))

(declare-fun b!416882 () Bool)

(declare-fun e!248789 () Bool)

(declare-fun tp_is_empty!10755 () Bool)

(assert (=> b!416882 (= e!248789 tp_is_empty!10755)))

(declare-fun b!416883 () Bool)

(declare-fun e!248788 () Bool)

(assert (=> b!416883 (= e!248784 e!248788)))

(declare-fun res!242809 () Bool)

(assert (=> b!416883 (=> (not res!242809) (not e!248788))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!416883 (= res!242809 (= from!863 i!563))))

(declare-datatypes ((V!15445 0))(
  ( (V!15446 (val!5422 Int)) )
))
(declare-fun minValue!515 () V!15445)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7004 0))(
  ( (tuple2!7005 (_1!3512 (_ BitVec 64)) (_2!3512 V!15445)) )
))
(declare-datatypes ((List!7057 0))(
  ( (Nil!7054) (Cons!7053 (h!7909 tuple2!7004) (t!12333 List!7057)) )
))
(declare-datatypes ((ListLongMap!5931 0))(
  ( (ListLongMap!5932 (toList!2981 List!7057)) )
))
(declare-fun lt!190993 () ListLongMap!5931)

(declare-fun zeroValue!515 () V!15445)

(declare-datatypes ((ValueCell!5034 0))(
  ( (ValueCellFull!5034 (v!7665 V!15445)) (EmptyCell!5034) )
))
(declare-datatypes ((array!25347 0))(
  ( (array!25348 (arr!12120 (Array (_ BitVec 32) ValueCell!5034)) (size!12472 (_ BitVec 32))) )
))
(declare-fun lt!190992 () array!25347)

(declare-fun getCurrentListMapNoExtraKeys!1184 (array!25345 array!25347 (_ BitVec 32) (_ BitVec 32) V!15445 V!15445 (_ BitVec 32) Int) ListLongMap!5931)

(assert (=> b!416883 (= lt!190993 (getCurrentListMapNoExtraKeys!1184 lt!190989 lt!190992 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25347)

(declare-fun v!412 () V!15445)

(assert (=> b!416883 (= lt!190992 (array!25348 (store (arr!12120 _values!549) i!563 (ValueCellFull!5034 v!412)) (size!12472 _values!549)))))

(declare-fun lt!190991 () ListLongMap!5931)

(assert (=> b!416883 (= lt!190991 (getCurrentListMapNoExtraKeys!1184 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!416884 () Bool)

(declare-fun e!248787 () Bool)

(declare-fun call!28984 () ListLongMap!5931)

(declare-fun call!28985 () ListLongMap!5931)

(declare-fun +!1192 (ListLongMap!5931 tuple2!7004) ListLongMap!5931)

(assert (=> b!416884 (= e!248787 (= call!28984 (+!1192 call!28985 (tuple2!7005 k0!794 v!412))))))

(declare-fun b!416885 () Bool)

(declare-fun res!242802 () Bool)

(assert (=> b!416885 (=> (not res!242802) (not e!248791))))

(declare-fun arrayContainsKey!0 (array!25345 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!416885 (= res!242802 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun c!55043 () Bool)

(declare-fun bm!28981 () Bool)

(assert (=> bm!28981 (= call!28984 (getCurrentListMapNoExtraKeys!1184 (ite c!55043 lt!190989 _keys!709) (ite c!55043 lt!190992 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416886 () Bool)

(assert (=> b!416886 (= e!248787 (= call!28985 call!28984))))

(declare-fun b!416887 () Bool)

(declare-fun e!248790 () Bool)

(assert (=> b!416887 (= e!248790 tp_is_empty!10755)))

(declare-fun bm!28982 () Bool)

(assert (=> bm!28982 (= call!28985 (getCurrentListMapNoExtraKeys!1184 (ite c!55043 _keys!709 lt!190989) (ite c!55043 _values!549 lt!190992) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!242807 () Bool)

(assert (=> start!39344 (=> (not res!242807) (not e!248791))))

(assert (=> start!39344 (= res!242807 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12471 _keys!709))))))

(assert (=> start!39344 e!248791))

(assert (=> start!39344 tp_is_empty!10755))

(assert (=> start!39344 tp!34337))

(assert (=> start!39344 true))

(declare-fun e!248786 () Bool)

(declare-fun array_inv!8838 (array!25347) Bool)

(assert (=> start!39344 (and (array_inv!8838 _values!549) e!248786)))

(declare-fun array_inv!8839 (array!25345) Bool)

(assert (=> start!39344 (array_inv!8839 _keys!709)))

(declare-fun b!416888 () Bool)

(declare-fun res!242803 () Bool)

(assert (=> b!416888 (=> (not res!242803) (not e!248784))))

(declare-datatypes ((List!7058 0))(
  ( (Nil!7055) (Cons!7054 (h!7910 (_ BitVec 64)) (t!12334 List!7058)) )
))
(declare-fun arrayNoDuplicates!0 (array!25345 (_ BitVec 32) List!7058) Bool)

(assert (=> b!416888 (= res!242803 (arrayNoDuplicates!0 lt!190989 #b00000000000000000000000000000000 Nil!7055))))

(declare-fun mapNonEmpty!17754 () Bool)

(declare-fun mapRes!17754 () Bool)

(declare-fun tp!34338 () Bool)

(assert (=> mapNonEmpty!17754 (= mapRes!17754 (and tp!34338 e!248790))))

(declare-fun mapValue!17754 () ValueCell!5034)

(declare-fun mapKey!17754 () (_ BitVec 32))

(declare-fun mapRest!17754 () (Array (_ BitVec 32) ValueCell!5034))

(assert (=> mapNonEmpty!17754 (= (arr!12120 _values!549) (store mapRest!17754 mapKey!17754 mapValue!17754))))

(declare-fun b!416889 () Bool)

(declare-fun e!248785 () Bool)

(assert (=> b!416889 (= e!248785 true)))

(declare-fun lt!190987 () tuple2!7004)

(declare-fun lt!190995 () V!15445)

(declare-fun lt!190994 () ListLongMap!5931)

(assert (=> b!416889 (= (+!1192 lt!190994 lt!190987) (+!1192 (+!1192 lt!190994 (tuple2!7005 k0!794 lt!190995)) lt!190987))))

(declare-fun lt!190988 () V!15445)

(assert (=> b!416889 (= lt!190987 (tuple2!7005 k0!794 lt!190988))))

(declare-datatypes ((Unit!12285 0))(
  ( (Unit!12286) )
))
(declare-fun lt!190986 () Unit!12285)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!15 (ListLongMap!5931 (_ BitVec 64) V!15445 V!15445) Unit!12285)

(assert (=> b!416889 (= lt!190986 (addSameAsAddTwiceSameKeyDiffValues!15 lt!190994 k0!794 lt!190995 lt!190988))))

(declare-fun lt!190990 () V!15445)

(declare-fun get!5998 (ValueCell!5034 V!15445) V!15445)

(assert (=> b!416889 (= lt!190995 (get!5998 (select (arr!12120 _values!549) from!863) lt!190990))))

(assert (=> b!416889 (= lt!190993 (+!1192 lt!190994 (tuple2!7005 (select (arr!12119 lt!190989) from!863) lt!190988)))))

(assert (=> b!416889 (= lt!190988 (get!5998 (select (store (arr!12120 _values!549) i!563 (ValueCellFull!5034 v!412)) from!863) lt!190990))))

(declare-fun dynLambda!677 (Int (_ BitVec 64)) V!15445)

(assert (=> b!416889 (= lt!190990 (dynLambda!677 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!416889 (= lt!190994 (getCurrentListMapNoExtraKeys!1184 lt!190989 lt!190992 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416890 () Bool)

(declare-fun res!242813 () Bool)

(assert (=> b!416890 (=> (not res!242813) (not e!248784))))

(assert (=> b!416890 (= res!242813 (bvsle from!863 i!563))))

(declare-fun b!416891 () Bool)

(declare-fun res!242811 () Bool)

(assert (=> b!416891 (=> (not res!242811) (not e!248791))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!416891 (= res!242811 (validMask!0 mask!1025))))

(declare-fun b!416892 () Bool)

(declare-fun res!242805 () Bool)

(assert (=> b!416892 (=> (not res!242805) (not e!248791))))

(assert (=> b!416892 (= res!242805 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12471 _keys!709))))))

(declare-fun b!416893 () Bool)

(declare-fun res!242808 () Bool)

(assert (=> b!416893 (=> (not res!242808) (not e!248791))))

(assert (=> b!416893 (= res!242808 (and (= (size!12472 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12471 _keys!709) (size!12472 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!17754 () Bool)

(assert (=> mapIsEmpty!17754 mapRes!17754))

(declare-fun b!416894 () Bool)

(declare-fun res!242812 () Bool)

(assert (=> b!416894 (=> (not res!242812) (not e!248791))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!416894 (= res!242812 (validKeyInArray!0 k0!794))))

(declare-fun b!416895 () Bool)

(assert (=> b!416895 (= e!248788 (not e!248785))))

(declare-fun res!242810 () Bool)

(assert (=> b!416895 (=> res!242810 e!248785)))

(assert (=> b!416895 (= res!242810 (validKeyInArray!0 (select (arr!12119 _keys!709) from!863)))))

(assert (=> b!416895 e!248787))

(assert (=> b!416895 (= c!55043 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!190985 () Unit!12285)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!404 (array!25345 array!25347 (_ BitVec 32) (_ BitVec 32) V!15445 V!15445 (_ BitVec 32) (_ BitVec 64) V!15445 (_ BitVec 32) Int) Unit!12285)

(assert (=> b!416895 (= lt!190985 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!404 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!416896 () Bool)

(declare-fun res!242801 () Bool)

(assert (=> b!416896 (=> (not res!242801) (not e!248791))))

(assert (=> b!416896 (= res!242801 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7055))))

(declare-fun b!416897 () Bool)

(declare-fun res!242814 () Bool)

(assert (=> b!416897 (=> (not res!242814) (not e!248791))))

(assert (=> b!416897 (= res!242814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!416898 () Bool)

(declare-fun res!242806 () Bool)

(assert (=> b!416898 (=> (not res!242806) (not e!248791))))

(assert (=> b!416898 (= res!242806 (or (= (select (arr!12119 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12119 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!416899 () Bool)

(assert (=> b!416899 (= e!248786 (and e!248789 mapRes!17754))))

(declare-fun condMapEmpty!17754 () Bool)

(declare-fun mapDefault!17754 () ValueCell!5034)

(assert (=> b!416899 (= condMapEmpty!17754 (= (arr!12120 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5034)) mapDefault!17754)))))

(assert (= (and start!39344 res!242807) b!416891))

(assert (= (and b!416891 res!242811) b!416893))

(assert (= (and b!416893 res!242808) b!416897))

(assert (= (and b!416897 res!242814) b!416896))

(assert (= (and b!416896 res!242801) b!416892))

(assert (= (and b!416892 res!242805) b!416894))

(assert (= (and b!416894 res!242812) b!416898))

(assert (= (and b!416898 res!242806) b!416885))

(assert (= (and b!416885 res!242802) b!416881))

(assert (= (and b!416881 res!242804) b!416888))

(assert (= (and b!416888 res!242803) b!416890))

(assert (= (and b!416890 res!242813) b!416883))

(assert (= (and b!416883 res!242809) b!416895))

(assert (= (and b!416895 c!55043) b!416884))

(assert (= (and b!416895 (not c!55043)) b!416886))

(assert (= (or b!416884 b!416886) bm!28981))

(assert (= (or b!416884 b!416886) bm!28982))

(assert (= (and b!416895 (not res!242810)) b!416889))

(assert (= (and b!416899 condMapEmpty!17754) mapIsEmpty!17754))

(assert (= (and b!416899 (not condMapEmpty!17754)) mapNonEmpty!17754))

(get-info :version)

(assert (= (and mapNonEmpty!17754 ((_ is ValueCellFull!5034) mapValue!17754)) b!416887))

(assert (= (and b!416899 ((_ is ValueCellFull!5034) mapDefault!17754)) b!416882))

(assert (= start!39344 b!416899))

(declare-fun b_lambda!8937 () Bool)

(assert (=> (not b_lambda!8937) (not b!416889)))

(declare-fun t!12332 () Bool)

(declare-fun tb!3233 () Bool)

(assert (=> (and start!39344 (= defaultEntry!557 defaultEntry!557) t!12332) tb!3233))

(declare-fun result!5985 () Bool)

(assert (=> tb!3233 (= result!5985 tp_is_empty!10755)))

(assert (=> b!416889 t!12332))

(declare-fun b_and!17101 () Bool)

(assert (= b_and!17099 (and (=> t!12332 result!5985) b_and!17101)))

(declare-fun m!406147 () Bool)

(assert (=> bm!28982 m!406147))

(declare-fun m!406149 () Bool)

(assert (=> b!416889 m!406149))

(declare-fun m!406151 () Bool)

(assert (=> b!416889 m!406151))

(declare-fun m!406153 () Bool)

(assert (=> b!416889 m!406153))

(declare-fun m!406155 () Bool)

(assert (=> b!416889 m!406155))

(declare-fun m!406157 () Bool)

(assert (=> b!416889 m!406157))

(assert (=> b!416889 m!406149))

(declare-fun m!406159 () Bool)

(assert (=> b!416889 m!406159))

(assert (=> b!416889 m!406153))

(declare-fun m!406161 () Bool)

(assert (=> b!416889 m!406161))

(declare-fun m!406163 () Bool)

(assert (=> b!416889 m!406163))

(declare-fun m!406165 () Bool)

(assert (=> b!416889 m!406165))

(declare-fun m!406167 () Bool)

(assert (=> b!416889 m!406167))

(declare-fun m!406169 () Bool)

(assert (=> b!416889 m!406169))

(assert (=> b!416889 m!406161))

(declare-fun m!406171 () Bool)

(assert (=> b!416889 m!406171))

(declare-fun m!406173 () Bool)

(assert (=> b!416889 m!406173))

(declare-fun m!406175 () Bool)

(assert (=> b!416898 m!406175))

(declare-fun m!406177 () Bool)

(assert (=> b!416881 m!406177))

(declare-fun m!406179 () Bool)

(assert (=> b!416881 m!406179))

(declare-fun m!406181 () Bool)

(assert (=> b!416897 m!406181))

(declare-fun m!406183 () Bool)

(assert (=> b!416896 m!406183))

(declare-fun m!406185 () Bool)

(assert (=> bm!28981 m!406185))

(declare-fun m!406187 () Bool)

(assert (=> b!416884 m!406187))

(declare-fun m!406189 () Bool)

(assert (=> b!416885 m!406189))

(declare-fun m!406191 () Bool)

(assert (=> b!416888 m!406191))

(declare-fun m!406193 () Bool)

(assert (=> b!416891 m!406193))

(declare-fun m!406195 () Bool)

(assert (=> b!416895 m!406195))

(assert (=> b!416895 m!406195))

(declare-fun m!406197 () Bool)

(assert (=> b!416895 m!406197))

(declare-fun m!406199 () Bool)

(assert (=> b!416895 m!406199))

(declare-fun m!406201 () Bool)

(assert (=> start!39344 m!406201))

(declare-fun m!406203 () Bool)

(assert (=> start!39344 m!406203))

(declare-fun m!406205 () Bool)

(assert (=> b!416894 m!406205))

(declare-fun m!406207 () Bool)

(assert (=> mapNonEmpty!17754 m!406207))

(declare-fun m!406209 () Bool)

(assert (=> b!416883 m!406209))

(assert (=> b!416883 m!406169))

(declare-fun m!406211 () Bool)

(assert (=> b!416883 m!406211))

(check-sat (not b!416881) (not bm!28982) tp_is_empty!10755 (not b!416891) (not b!416884) (not b!416883) (not bm!28981) (not b!416896) (not mapNonEmpty!17754) (not b_lambda!8937) b_and!17101 (not b!416885) (not b!416897) (not b_next!9603) (not b!416894) (not b!416889) (not b!416895) (not start!39344) (not b!416888))
(check-sat b_and!17101 (not b_next!9603))
