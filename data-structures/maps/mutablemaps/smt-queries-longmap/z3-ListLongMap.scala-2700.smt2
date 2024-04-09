; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40028 () Bool)

(assert start!40028)

(declare-fun b_free!10287 () Bool)

(declare-fun b_next!10287 () Bool)

(assert (=> start!40028 (= b_free!10287 (not b_next!10287))))

(declare-fun tp!36390 () Bool)

(declare-fun b_and!18251 () Bool)

(assert (=> start!40028 (= tp!36390 b_and!18251)))

(declare-fun b!435903 () Bool)

(declare-fun res!256986 () Bool)

(declare-fun e!257458 () Bool)

(assert (=> b!435903 (=> (not res!256986) (not e!257458))))

(declare-datatypes ((array!26681 0))(
  ( (array!26682 (arr!12787 (Array (_ BitVec 32) (_ BitVec 64))) (size!13139 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26681)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26681 (_ BitVec 32)) Bool)

(assert (=> b!435903 (= res!256986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!435904 () Bool)

(declare-fun res!256993 () Bool)

(assert (=> b!435904 (=> (not res!256993) (not e!257458))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!435904 (= res!256993 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13139 _keys!709))))))

(declare-fun b!435905 () Bool)

(declare-fun res!256983 () Bool)

(assert (=> b!435905 (=> (not res!256983) (not e!257458))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!435905 (= res!256983 (validMask!0 mask!1025))))

(declare-fun b!435906 () Bool)

(declare-fun e!257457 () Bool)

(declare-fun e!257463 () Bool)

(assert (=> b!435906 (= e!257457 e!257463)))

(declare-fun res!256982 () Bool)

(assert (=> b!435906 (=> res!256982 e!257463)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!435906 (= res!256982 (= k0!794 (select (arr!12787 _keys!709) from!863)))))

(assert (=> b!435906 (not (= (select (arr!12787 _keys!709) from!863) k0!794))))

(declare-datatypes ((Unit!12914 0))(
  ( (Unit!12915) )
))
(declare-fun lt!200934 () Unit!12914)

(declare-fun e!257459 () Unit!12914)

(assert (=> b!435906 (= lt!200934 e!257459)))

(declare-fun c!55691 () Bool)

(assert (=> b!435906 (= c!55691 (= (select (arr!12787 _keys!709) from!863) k0!794))))

(declare-datatypes ((V!16357 0))(
  ( (V!16358 (val!5764 Int)) )
))
(declare-datatypes ((tuple2!7568 0))(
  ( (tuple2!7569 (_1!3794 (_ BitVec 64)) (_2!3794 V!16357)) )
))
(declare-datatypes ((List!7612 0))(
  ( (Nil!7609) (Cons!7608 (h!8464 tuple2!7568) (t!13356 List!7612)) )
))
(declare-datatypes ((ListLongMap!6495 0))(
  ( (ListLongMap!6496 (toList!3263 List!7612)) )
))
(declare-fun lt!200927 () ListLongMap!6495)

(declare-fun lt!200932 () ListLongMap!6495)

(assert (=> b!435906 (= lt!200927 lt!200932)))

(declare-fun lt!200930 () ListLongMap!6495)

(declare-fun lt!200931 () tuple2!7568)

(declare-fun +!1407 (ListLongMap!6495 tuple2!7568) ListLongMap!6495)

(assert (=> b!435906 (= lt!200932 (+!1407 lt!200930 lt!200931))))

(declare-fun lt!200928 () V!16357)

(assert (=> b!435906 (= lt!200931 (tuple2!7569 (select (arr!12787 _keys!709) from!863) lt!200928))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5376 0))(
  ( (ValueCellFull!5376 (v!8007 V!16357)) (EmptyCell!5376) )
))
(declare-datatypes ((array!26683 0))(
  ( (array!26684 (arr!12788 (Array (_ BitVec 32) ValueCell!5376)) (size!13140 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26683)

(declare-fun get!6383 (ValueCell!5376 V!16357) V!16357)

(declare-fun dynLambda!834 (Int (_ BitVec 64)) V!16357)

(assert (=> b!435906 (= lt!200928 (get!6383 (select (arr!12788 _values!549) from!863) (dynLambda!834 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!435907 () Bool)

(assert (=> b!435907 (= e!257463 true)))

(declare-fun lt!200929 () ListLongMap!6495)

(declare-fun lt!200926 () tuple2!7568)

(assert (=> b!435907 (= lt!200932 (+!1407 (+!1407 lt!200929 lt!200931) lt!200926))))

(declare-fun lt!200935 () Unit!12914)

(declare-fun v!412 () V!16357)

(declare-fun addCommutativeForDiffKeys!410 (ListLongMap!6495 (_ BitVec 64) V!16357 (_ BitVec 64) V!16357) Unit!12914)

(assert (=> b!435907 (= lt!200935 (addCommutativeForDiffKeys!410 lt!200929 k0!794 v!412 (select (arr!12787 _keys!709) from!863) lt!200928))))

(declare-fun mapNonEmpty!18780 () Bool)

(declare-fun mapRes!18780 () Bool)

(declare-fun tp!36389 () Bool)

(declare-fun e!257460 () Bool)

(assert (=> mapNonEmpty!18780 (= mapRes!18780 (and tp!36389 e!257460))))

(declare-fun mapRest!18780 () (Array (_ BitVec 32) ValueCell!5376))

(declare-fun mapValue!18780 () ValueCell!5376)

(declare-fun mapKey!18780 () (_ BitVec 32))

(assert (=> mapNonEmpty!18780 (= (arr!12788 _values!549) (store mapRest!18780 mapKey!18780 mapValue!18780))))

(declare-fun b!435908 () Bool)

(declare-fun res!256992 () Bool)

(declare-fun e!257462 () Bool)

(assert (=> b!435908 (=> (not res!256992) (not e!257462))))

(assert (=> b!435908 (= res!256992 (bvsle from!863 i!563))))

(declare-fun b!435909 () Bool)

(declare-fun res!256985 () Bool)

(assert (=> b!435909 (=> (not res!256985) (not e!257458))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!435909 (= res!256985 (validKeyInArray!0 k0!794))))

(declare-fun res!256984 () Bool)

(assert (=> start!40028 (=> (not res!256984) (not e!257458))))

(assert (=> start!40028 (= res!256984 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13139 _keys!709))))))

(assert (=> start!40028 e!257458))

(declare-fun tp_is_empty!11439 () Bool)

(assert (=> start!40028 tp_is_empty!11439))

(assert (=> start!40028 tp!36390))

(assert (=> start!40028 true))

(declare-fun e!257456 () Bool)

(declare-fun array_inv!9286 (array!26683) Bool)

(assert (=> start!40028 (and (array_inv!9286 _values!549) e!257456)))

(declare-fun array_inv!9287 (array!26681) Bool)

(assert (=> start!40028 (array_inv!9287 _keys!709)))

(declare-fun b!435910 () Bool)

(declare-fun res!256990 () Bool)

(assert (=> b!435910 (=> (not res!256990) (not e!257458))))

(declare-datatypes ((List!7613 0))(
  ( (Nil!7610) (Cons!7609 (h!8465 (_ BitVec 64)) (t!13357 List!7613)) )
))
(declare-fun arrayNoDuplicates!0 (array!26681 (_ BitVec 32) List!7613) Bool)

(assert (=> b!435910 (= res!256990 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7610))))

(declare-fun b!435911 () Bool)

(declare-fun e!257464 () Bool)

(assert (=> b!435911 (= e!257456 (and e!257464 mapRes!18780))))

(declare-fun condMapEmpty!18780 () Bool)

(declare-fun mapDefault!18780 () ValueCell!5376)

(assert (=> b!435911 (= condMapEmpty!18780 (= (arr!12788 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5376)) mapDefault!18780)))))

(declare-fun b!435912 () Bool)

(declare-fun res!256994 () Bool)

(assert (=> b!435912 (=> (not res!256994) (not e!257458))))

(declare-fun arrayContainsKey!0 (array!26681 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!435912 (= res!256994 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18780 () Bool)

(assert (=> mapIsEmpty!18780 mapRes!18780))

(declare-fun b!435913 () Bool)

(declare-fun e!257461 () Bool)

(assert (=> b!435913 (= e!257462 e!257461)))

(declare-fun res!256995 () Bool)

(assert (=> b!435913 (=> (not res!256995) (not e!257461))))

(assert (=> b!435913 (= res!256995 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16357)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!200937 () array!26681)

(declare-fun zeroValue!515 () V!16357)

(declare-fun lt!200936 () array!26683)

(declare-fun getCurrentListMapNoExtraKeys!1446 (array!26681 array!26683 (_ BitVec 32) (_ BitVec 32) V!16357 V!16357 (_ BitVec 32) Int) ListLongMap!6495)

(assert (=> b!435913 (= lt!200927 (getCurrentListMapNoExtraKeys!1446 lt!200937 lt!200936 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!435913 (= lt!200936 (array!26684 (store (arr!12788 _values!549) i!563 (ValueCellFull!5376 v!412)) (size!13140 _values!549)))))

(declare-fun lt!200933 () ListLongMap!6495)

(assert (=> b!435913 (= lt!200933 (getCurrentListMapNoExtraKeys!1446 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!435914 () Bool)

(assert (=> b!435914 (= e!257464 tp_is_empty!11439)))

(declare-fun b!435915 () Bool)

(assert (=> b!435915 (= e!257461 (not e!257457))))

(declare-fun res!256991 () Bool)

(assert (=> b!435915 (=> res!256991 e!257457)))

(assert (=> b!435915 (= res!256991 (not (validKeyInArray!0 (select (arr!12787 _keys!709) from!863))))))

(declare-fun lt!200923 () ListLongMap!6495)

(assert (=> b!435915 (= lt!200923 lt!200930)))

(assert (=> b!435915 (= lt!200930 (+!1407 lt!200929 lt!200926))))

(assert (=> b!435915 (= lt!200923 (getCurrentListMapNoExtraKeys!1446 lt!200937 lt!200936 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!435915 (= lt!200926 (tuple2!7569 k0!794 v!412))))

(assert (=> b!435915 (= lt!200929 (getCurrentListMapNoExtraKeys!1446 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!200924 () Unit!12914)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!586 (array!26681 array!26683 (_ BitVec 32) (_ BitVec 32) V!16357 V!16357 (_ BitVec 32) (_ BitVec 64) V!16357 (_ BitVec 32) Int) Unit!12914)

(assert (=> b!435915 (= lt!200924 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!586 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!435916 () Bool)

(declare-fun Unit!12916 () Unit!12914)

(assert (=> b!435916 (= e!257459 Unit!12916)))

(declare-fun lt!200925 () Unit!12914)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26681 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12914)

(assert (=> b!435916 (= lt!200925 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!435916 false))

(declare-fun b!435917 () Bool)

(declare-fun res!256981 () Bool)

(assert (=> b!435917 (=> (not res!256981) (not e!257458))))

(assert (=> b!435917 (= res!256981 (and (= (size!13140 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13139 _keys!709) (size!13140 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!435918 () Bool)

(declare-fun res!256987 () Bool)

(assert (=> b!435918 (=> (not res!256987) (not e!257462))))

(assert (=> b!435918 (= res!256987 (arrayNoDuplicates!0 lt!200937 #b00000000000000000000000000000000 Nil!7610))))

(declare-fun b!435919 () Bool)

(declare-fun res!256989 () Bool)

(assert (=> b!435919 (=> (not res!256989) (not e!257458))))

(assert (=> b!435919 (= res!256989 (or (= (select (arr!12787 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12787 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!435920 () Bool)

(assert (=> b!435920 (= e!257460 tp_is_empty!11439)))

(declare-fun b!435921 () Bool)

(declare-fun Unit!12917 () Unit!12914)

(assert (=> b!435921 (= e!257459 Unit!12917)))

(declare-fun b!435922 () Bool)

(assert (=> b!435922 (= e!257458 e!257462)))

(declare-fun res!256988 () Bool)

(assert (=> b!435922 (=> (not res!256988) (not e!257462))))

(assert (=> b!435922 (= res!256988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!200937 mask!1025))))

(assert (=> b!435922 (= lt!200937 (array!26682 (store (arr!12787 _keys!709) i!563 k0!794) (size!13139 _keys!709)))))

(assert (= (and start!40028 res!256984) b!435905))

(assert (= (and b!435905 res!256983) b!435917))

(assert (= (and b!435917 res!256981) b!435903))

(assert (= (and b!435903 res!256986) b!435910))

(assert (= (and b!435910 res!256990) b!435904))

(assert (= (and b!435904 res!256993) b!435909))

(assert (= (and b!435909 res!256985) b!435919))

(assert (= (and b!435919 res!256989) b!435912))

(assert (= (and b!435912 res!256994) b!435922))

(assert (= (and b!435922 res!256988) b!435918))

(assert (= (and b!435918 res!256987) b!435908))

(assert (= (and b!435908 res!256992) b!435913))

(assert (= (and b!435913 res!256995) b!435915))

(assert (= (and b!435915 (not res!256991)) b!435906))

(assert (= (and b!435906 c!55691) b!435916))

(assert (= (and b!435906 (not c!55691)) b!435921))

(assert (= (and b!435906 (not res!256982)) b!435907))

(assert (= (and b!435911 condMapEmpty!18780) mapIsEmpty!18780))

(assert (= (and b!435911 (not condMapEmpty!18780)) mapNonEmpty!18780))

(get-info :version)

(assert (= (and mapNonEmpty!18780 ((_ is ValueCellFull!5376) mapValue!18780)) b!435920))

(assert (= (and b!435911 ((_ is ValueCellFull!5376) mapDefault!18780)) b!435914))

(assert (= start!40028 b!435911))

(declare-fun b_lambda!9405 () Bool)

(assert (=> (not b_lambda!9405) (not b!435906)))

(declare-fun t!13355 () Bool)

(declare-fun tb!3701 () Bool)

(assert (=> (and start!40028 (= defaultEntry!557 defaultEntry!557) t!13355) tb!3701))

(declare-fun result!6921 () Bool)

(assert (=> tb!3701 (= result!6921 tp_is_empty!11439)))

(assert (=> b!435906 t!13355))

(declare-fun b_and!18253 () Bool)

(assert (= b_and!18251 (and (=> t!13355 result!6921) b_and!18253)))

(declare-fun m!423785 () Bool)

(assert (=> b!435906 m!423785))

(declare-fun m!423787 () Bool)

(assert (=> b!435906 m!423787))

(declare-fun m!423789 () Bool)

(assert (=> b!435906 m!423789))

(declare-fun m!423791 () Bool)

(assert (=> b!435906 m!423791))

(assert (=> b!435906 m!423789))

(assert (=> b!435906 m!423787))

(declare-fun m!423793 () Bool)

(assert (=> b!435906 m!423793))

(declare-fun m!423795 () Bool)

(assert (=> b!435919 m!423795))

(declare-fun m!423797 () Bool)

(assert (=> mapNonEmpty!18780 m!423797))

(assert (=> b!435915 m!423785))

(assert (=> b!435915 m!423785))

(declare-fun m!423799 () Bool)

(assert (=> b!435915 m!423799))

(declare-fun m!423801 () Bool)

(assert (=> b!435915 m!423801))

(declare-fun m!423803 () Bool)

(assert (=> b!435915 m!423803))

(declare-fun m!423805 () Bool)

(assert (=> b!435915 m!423805))

(declare-fun m!423807 () Bool)

(assert (=> b!435915 m!423807))

(declare-fun m!423809 () Bool)

(assert (=> b!435916 m!423809))

(declare-fun m!423811 () Bool)

(assert (=> b!435910 m!423811))

(declare-fun m!423813 () Bool)

(assert (=> b!435912 m!423813))

(declare-fun m!423815 () Bool)

(assert (=> b!435918 m!423815))

(declare-fun m!423817 () Bool)

(assert (=> b!435907 m!423817))

(assert (=> b!435907 m!423817))

(declare-fun m!423819 () Bool)

(assert (=> b!435907 m!423819))

(assert (=> b!435907 m!423785))

(assert (=> b!435907 m!423785))

(declare-fun m!423821 () Bool)

(assert (=> b!435907 m!423821))

(declare-fun m!423823 () Bool)

(assert (=> b!435903 m!423823))

(declare-fun m!423825 () Bool)

(assert (=> b!435909 m!423825))

(declare-fun m!423827 () Bool)

(assert (=> b!435922 m!423827))

(declare-fun m!423829 () Bool)

(assert (=> b!435922 m!423829))

(declare-fun m!423831 () Bool)

(assert (=> start!40028 m!423831))

(declare-fun m!423833 () Bool)

(assert (=> start!40028 m!423833))

(declare-fun m!423835 () Bool)

(assert (=> b!435905 m!423835))

(declare-fun m!423837 () Bool)

(assert (=> b!435913 m!423837))

(declare-fun m!423839 () Bool)

(assert (=> b!435913 m!423839))

(declare-fun m!423841 () Bool)

(assert (=> b!435913 m!423841))

(check-sat (not b!435922) (not start!40028) (not b!435905) b_and!18253 (not b!435910) (not mapNonEmpty!18780) (not b!435906) (not b!435915) (not b!435913) (not b_lambda!9405) (not b!435903) (not b!435909) (not b_next!10287) (not b!435912) tp_is_empty!11439 (not b!435916) (not b!435907) (not b!435918))
(check-sat b_and!18253 (not b_next!10287))
