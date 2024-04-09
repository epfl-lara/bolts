; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40798 () Bool)

(assert start!40798)

(declare-fun b_free!10779 () Bool)

(declare-fun b_next!10779 () Bool)

(assert (=> start!40798 (= b_free!10779 (not b_next!10779))))

(declare-fun tp!38159 () Bool)

(declare-fun b_and!18863 () Bool)

(assert (=> start!40798 (= tp!38159 b_and!18863)))

(declare-fun b!452159 () Bool)

(declare-fun e!264769 () Bool)

(declare-fun e!264764 () Bool)

(assert (=> b!452159 (= e!264769 e!264764)))

(declare-fun res!269383 () Bool)

(assert (=> b!452159 (=> (not res!269383) (not e!264764))))

(declare-datatypes ((array!28003 0))(
  ( (array!28004 (arr!13443 (Array (_ BitVec 32) (_ BitVec 64))) (size!13795 (_ BitVec 32))) )
))
(declare-fun lt!205158 () array!28003)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28003 (_ BitVec 32)) Bool)

(assert (=> b!452159 (= res!269383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!205158 mask!1025))))

(declare-fun _keys!709 () array!28003)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!452159 (= lt!205158 (array!28004 (store (arr!13443 _keys!709) i!563 k0!794) (size!13795 _keys!709)))))

(declare-fun b!452160 () Bool)

(declare-fun res!269382 () Bool)

(assert (=> b!452160 (=> (not res!269382) (not e!264769))))

(assert (=> b!452160 (= res!269382 (or (= (select (arr!13443 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13443 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!452161 () Bool)

(declare-fun e!264766 () Bool)

(declare-fun tp_is_empty!12117 () Bool)

(assert (=> b!452161 (= e!264766 tp_is_empty!12117)))

(declare-fun b!452162 () Bool)

(declare-fun e!264767 () Bool)

(declare-fun e!264765 () Bool)

(assert (=> b!452162 (= e!264767 (not e!264765))))

(declare-fun res!269389 () Bool)

(assert (=> b!452162 (=> res!269389 e!264765)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!452162 (= res!269389 (validKeyInArray!0 (select (arr!13443 _keys!709) from!863)))))

(declare-fun e!264768 () Bool)

(assert (=> b!452162 e!264768))

(declare-fun c!56042 () Bool)

(assert (=> b!452162 (= c!56042 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!17261 0))(
  ( (V!17262 (val!6103 Int)) )
))
(declare-fun minValue!515 () V!17261)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5715 0))(
  ( (ValueCellFull!5715 (v!8358 V!17261)) (EmptyCell!5715) )
))
(declare-datatypes ((array!28005 0))(
  ( (array!28006 (arr!13444 (Array (_ BitVec 32) ValueCell!5715)) (size!13796 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28005)

(declare-fun zeroValue!515 () V!17261)

(declare-datatypes ((Unit!13171 0))(
  ( (Unit!13172) )
))
(declare-fun lt!205155 () Unit!13171)

(declare-fun v!412 () V!17261)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!703 (array!28003 array!28005 (_ BitVec 32) (_ BitVec 32) V!17261 V!17261 (_ BitVec 32) (_ BitVec 64) V!17261 (_ BitVec 32) Int) Unit!13171)

(assert (=> b!452162 (= lt!205155 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!703 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452163 () Bool)

(declare-datatypes ((tuple2!7978 0))(
  ( (tuple2!7979 (_1!3999 (_ BitVec 64)) (_2!3999 V!17261)) )
))
(declare-datatypes ((List!8081 0))(
  ( (Nil!8078) (Cons!8077 (h!8933 tuple2!7978) (t!13891 List!8081)) )
))
(declare-datatypes ((ListLongMap!6905 0))(
  ( (ListLongMap!6906 (toList!3468 List!8081)) )
))
(declare-fun call!29948 () ListLongMap!6905)

(declare-fun call!29947 () ListLongMap!6905)

(assert (=> b!452163 (= e!264768 (= call!29948 call!29947))))

(declare-fun b!452164 () Bool)

(declare-fun e!264763 () Bool)

(assert (=> b!452164 (= e!264763 tp_is_empty!12117)))

(declare-fun b!452165 () Bool)

(declare-fun res!269381 () Bool)

(assert (=> b!452165 (=> (not res!269381) (not e!264764))))

(assert (=> b!452165 (= res!269381 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!19812 () Bool)

(declare-fun mapRes!19812 () Bool)

(declare-fun tp!38160 () Bool)

(assert (=> mapNonEmpty!19812 (= mapRes!19812 (and tp!38160 e!264766))))

(declare-fun mapKey!19812 () (_ BitVec 32))

(declare-fun mapValue!19812 () ValueCell!5715)

(declare-fun mapRest!19812 () (Array (_ BitVec 32) ValueCell!5715))

(assert (=> mapNonEmpty!19812 (= (arr!13444 _values!549) (store mapRest!19812 mapKey!19812 mapValue!19812))))

(declare-fun b!452166 () Bool)

(declare-fun res!269384 () Bool)

(assert (=> b!452166 (=> (not res!269384) (not e!264769))))

(assert (=> b!452166 (= res!269384 (validKeyInArray!0 k0!794))))

(declare-fun b!452167 () Bool)

(assert (=> b!452167 (= e!264765 true)))

(declare-fun lt!205156 () tuple2!7978)

(declare-fun lt!205154 () V!17261)

(declare-fun lt!205161 () ListLongMap!6905)

(declare-fun +!1534 (ListLongMap!6905 tuple2!7978) ListLongMap!6905)

(assert (=> b!452167 (= (+!1534 lt!205161 lt!205156) (+!1534 (+!1534 lt!205161 (tuple2!7979 k0!794 lt!205154)) lt!205156))))

(declare-fun lt!205152 () V!17261)

(assert (=> b!452167 (= lt!205156 (tuple2!7979 k0!794 lt!205152))))

(declare-fun lt!205160 () Unit!13171)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!80 (ListLongMap!6905 (_ BitVec 64) V!17261 V!17261) Unit!13171)

(assert (=> b!452167 (= lt!205160 (addSameAsAddTwiceSameKeyDiffValues!80 lt!205161 k0!794 lt!205154 lt!205152))))

(declare-fun lt!205157 () V!17261)

(declare-fun get!6635 (ValueCell!5715 V!17261) V!17261)

(assert (=> b!452167 (= lt!205154 (get!6635 (select (arr!13444 _values!549) from!863) lt!205157))))

(declare-fun lt!205153 () ListLongMap!6905)

(assert (=> b!452167 (= lt!205153 (+!1534 lt!205161 (tuple2!7979 (select (arr!13443 lt!205158) from!863) lt!205152)))))

(assert (=> b!452167 (= lt!205152 (get!6635 (select (store (arr!13444 _values!549) i!563 (ValueCellFull!5715 v!412)) from!863) lt!205157))))

(declare-fun dynLambda!858 (Int (_ BitVec 64)) V!17261)

(assert (=> b!452167 (= lt!205157 (dynLambda!858 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!205159 () array!28005)

(declare-fun getCurrentListMapNoExtraKeys!1645 (array!28003 array!28005 (_ BitVec 32) (_ BitVec 32) V!17261 V!17261 (_ BitVec 32) Int) ListLongMap!6905)

(assert (=> b!452167 (= lt!205161 (getCurrentListMapNoExtraKeys!1645 lt!205158 lt!205159 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!19812 () Bool)

(assert (=> mapIsEmpty!19812 mapRes!19812))

(declare-fun b!452168 () Bool)

(declare-fun res!269378 () Bool)

(assert (=> b!452168 (=> (not res!269378) (not e!264769))))

(assert (=> b!452168 (= res!269378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!452169 () Bool)

(assert (=> b!452169 (= e!264768 (= call!29947 (+!1534 call!29948 (tuple2!7979 k0!794 v!412))))))

(declare-fun res!269385 () Bool)

(assert (=> start!40798 (=> (not res!269385) (not e!264769))))

(assert (=> start!40798 (= res!269385 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13795 _keys!709))))))

(assert (=> start!40798 e!264769))

(assert (=> start!40798 tp_is_empty!12117))

(assert (=> start!40798 tp!38159))

(assert (=> start!40798 true))

(declare-fun e!264771 () Bool)

(declare-fun array_inv!9732 (array!28005) Bool)

(assert (=> start!40798 (and (array_inv!9732 _values!549) e!264771)))

(declare-fun array_inv!9733 (array!28003) Bool)

(assert (=> start!40798 (array_inv!9733 _keys!709)))

(declare-fun b!452158 () Bool)

(declare-fun res!269379 () Bool)

(assert (=> b!452158 (=> (not res!269379) (not e!264769))))

(declare-fun arrayContainsKey!0 (array!28003 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!452158 (= res!269379 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!452170 () Bool)

(assert (=> b!452170 (= e!264771 (and e!264763 mapRes!19812))))

(declare-fun condMapEmpty!19812 () Bool)

(declare-fun mapDefault!19812 () ValueCell!5715)

(assert (=> b!452170 (= condMapEmpty!19812 (= (arr!13444 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5715)) mapDefault!19812)))))

(declare-fun b!452171 () Bool)

(declare-fun res!269390 () Bool)

(assert (=> b!452171 (=> (not res!269390) (not e!264769))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!452171 (= res!269390 (validMask!0 mask!1025))))

(declare-fun bm!29944 () Bool)

(assert (=> bm!29944 (= call!29948 (getCurrentListMapNoExtraKeys!1645 (ite c!56042 _keys!709 lt!205158) (ite c!56042 _values!549 lt!205159) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452172 () Bool)

(declare-fun res!269387 () Bool)

(assert (=> b!452172 (=> (not res!269387) (not e!264769))))

(declare-datatypes ((List!8082 0))(
  ( (Nil!8079) (Cons!8078 (h!8934 (_ BitVec 64)) (t!13892 List!8082)) )
))
(declare-fun arrayNoDuplicates!0 (array!28003 (_ BitVec 32) List!8082) Bool)

(assert (=> b!452172 (= res!269387 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8079))))

(declare-fun b!452173 () Bool)

(assert (=> b!452173 (= e!264764 e!264767)))

(declare-fun res!269377 () Bool)

(assert (=> b!452173 (=> (not res!269377) (not e!264767))))

(assert (=> b!452173 (= res!269377 (= from!863 i!563))))

(assert (=> b!452173 (= lt!205153 (getCurrentListMapNoExtraKeys!1645 lt!205158 lt!205159 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!452173 (= lt!205159 (array!28006 (store (arr!13444 _values!549) i!563 (ValueCellFull!5715 v!412)) (size!13796 _values!549)))))

(declare-fun lt!205151 () ListLongMap!6905)

(assert (=> b!452173 (= lt!205151 (getCurrentListMapNoExtraKeys!1645 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!452174 () Bool)

(declare-fun res!269388 () Bool)

(assert (=> b!452174 (=> (not res!269388) (not e!264769))))

(assert (=> b!452174 (= res!269388 (and (= (size!13796 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13795 _keys!709) (size!13796 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!452175 () Bool)

(declare-fun res!269386 () Bool)

(assert (=> b!452175 (=> (not res!269386) (not e!264764))))

(assert (=> b!452175 (= res!269386 (arrayNoDuplicates!0 lt!205158 #b00000000000000000000000000000000 Nil!8079))))

(declare-fun bm!29945 () Bool)

(assert (=> bm!29945 (= call!29947 (getCurrentListMapNoExtraKeys!1645 (ite c!56042 lt!205158 _keys!709) (ite c!56042 lt!205159 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!452176 () Bool)

(declare-fun res!269380 () Bool)

(assert (=> b!452176 (=> (not res!269380) (not e!264769))))

(assert (=> b!452176 (= res!269380 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13795 _keys!709))))))

(assert (= (and start!40798 res!269385) b!452171))

(assert (= (and b!452171 res!269390) b!452174))

(assert (= (and b!452174 res!269388) b!452168))

(assert (= (and b!452168 res!269378) b!452172))

(assert (= (and b!452172 res!269387) b!452176))

(assert (= (and b!452176 res!269380) b!452166))

(assert (= (and b!452166 res!269384) b!452160))

(assert (= (and b!452160 res!269382) b!452158))

(assert (= (and b!452158 res!269379) b!452159))

(assert (= (and b!452159 res!269383) b!452175))

(assert (= (and b!452175 res!269386) b!452165))

(assert (= (and b!452165 res!269381) b!452173))

(assert (= (and b!452173 res!269377) b!452162))

(assert (= (and b!452162 c!56042) b!452169))

(assert (= (and b!452162 (not c!56042)) b!452163))

(assert (= (or b!452169 b!452163) bm!29945))

(assert (= (or b!452169 b!452163) bm!29944))

(assert (= (and b!452162 (not res!269389)) b!452167))

(assert (= (and b!452170 condMapEmpty!19812) mapIsEmpty!19812))

(assert (= (and b!452170 (not condMapEmpty!19812)) mapNonEmpty!19812))

(get-info :version)

(assert (= (and mapNonEmpty!19812 ((_ is ValueCellFull!5715) mapValue!19812)) b!452161))

(assert (= (and b!452170 ((_ is ValueCellFull!5715) mapDefault!19812)) b!452164))

(assert (= start!40798 b!452170))

(declare-fun b_lambda!9587 () Bool)

(assert (=> (not b_lambda!9587) (not b!452167)))

(declare-fun t!13890 () Bool)

(declare-fun tb!3767 () Bool)

(assert (=> (and start!40798 (= defaultEntry!557 defaultEntry!557) t!13890) tb!3767))

(declare-fun result!7063 () Bool)

(assert (=> tb!3767 (= result!7063 tp_is_empty!12117)))

(assert (=> b!452167 t!13890))

(declare-fun b_and!18865 () Bool)

(assert (= b_and!18863 (and (=> t!13890 result!7063) b_and!18865)))

(declare-fun m!435901 () Bool)

(assert (=> b!452158 m!435901))

(declare-fun m!435903 () Bool)

(assert (=> start!40798 m!435903))

(declare-fun m!435905 () Bool)

(assert (=> start!40798 m!435905))

(declare-fun m!435907 () Bool)

(assert (=> b!452159 m!435907))

(declare-fun m!435909 () Bool)

(assert (=> b!452159 m!435909))

(declare-fun m!435911 () Bool)

(assert (=> b!452166 m!435911))

(declare-fun m!435913 () Bool)

(assert (=> b!452171 m!435913))

(declare-fun m!435915 () Bool)

(assert (=> b!452162 m!435915))

(assert (=> b!452162 m!435915))

(declare-fun m!435917 () Bool)

(assert (=> b!452162 m!435917))

(declare-fun m!435919 () Bool)

(assert (=> b!452162 m!435919))

(declare-fun m!435921 () Bool)

(assert (=> b!452169 m!435921))

(declare-fun m!435923 () Bool)

(assert (=> b!452172 m!435923))

(declare-fun m!435925 () Bool)

(assert (=> b!452173 m!435925))

(declare-fun m!435927 () Bool)

(assert (=> b!452173 m!435927))

(declare-fun m!435929 () Bool)

(assert (=> b!452173 m!435929))

(declare-fun m!435931 () Bool)

(assert (=> mapNonEmpty!19812 m!435931))

(declare-fun m!435933 () Bool)

(assert (=> b!452167 m!435933))

(declare-fun m!435935 () Bool)

(assert (=> b!452167 m!435935))

(declare-fun m!435937 () Bool)

(assert (=> b!452167 m!435937))

(declare-fun m!435939 () Bool)

(assert (=> b!452167 m!435939))

(declare-fun m!435941 () Bool)

(assert (=> b!452167 m!435941))

(assert (=> b!452167 m!435927))

(declare-fun m!435943 () Bool)

(assert (=> b!452167 m!435943))

(declare-fun m!435945 () Bool)

(assert (=> b!452167 m!435945))

(assert (=> b!452167 m!435937))

(declare-fun m!435947 () Bool)

(assert (=> b!452167 m!435947))

(declare-fun m!435949 () Bool)

(assert (=> b!452167 m!435949))

(assert (=> b!452167 m!435943))

(declare-fun m!435951 () Bool)

(assert (=> b!452167 m!435951))

(declare-fun m!435953 () Bool)

(assert (=> b!452167 m!435953))

(assert (=> b!452167 m!435949))

(declare-fun m!435955 () Bool)

(assert (=> b!452167 m!435955))

(declare-fun m!435957 () Bool)

(assert (=> bm!29944 m!435957))

(declare-fun m!435959 () Bool)

(assert (=> bm!29945 m!435959))

(declare-fun m!435961 () Bool)

(assert (=> b!452160 m!435961))

(declare-fun m!435963 () Bool)

(assert (=> b!452168 m!435963))

(declare-fun m!435965 () Bool)

(assert (=> b!452175 m!435965))

(check-sat (not b_next!10779) b_and!18865 (not b!452171) (not b_lambda!9587) (not b!452172) (not b!452175) (not b!452166) (not b!452159) (not mapNonEmpty!19812) (not b!452169) (not b!452162) (not start!40798) (not bm!29945) (not b!452168) (not b!452158) (not b!452173) (not bm!29944) (not b!452167) tp_is_empty!12117)
(check-sat b_and!18865 (not b_next!10779))
