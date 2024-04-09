; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39998 () Bool)

(assert start!39998)

(declare-fun b_free!10257 () Bool)

(declare-fun b_next!10257 () Bool)

(assert (=> start!39998 (= b_free!10257 (not b_next!10257))))

(declare-fun tp!36299 () Bool)

(declare-fun b_and!18191 () Bool)

(assert (=> start!39998 (= tp!36299 b_and!18191)))

(declare-fun b!434973 () Bool)

(declare-fun res!256310 () Bool)

(declare-fun e!257009 () Bool)

(assert (=> b!434973 (=> (not res!256310) (not e!257009))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!434973 (= res!256310 (validMask!0 mask!1025))))

(declare-fun b!434974 () Bool)

(declare-fun e!257008 () Bool)

(declare-fun tp_is_empty!11409 () Bool)

(assert (=> b!434974 (= e!257008 tp_is_empty!11409)))

(declare-fun b!434975 () Bool)

(declare-datatypes ((Unit!12870 0))(
  ( (Unit!12871) )
))
(declare-fun e!257014 () Unit!12870)

(declare-fun Unit!12872 () Unit!12870)

(assert (=> b!434975 (= e!257014 Unit!12872)))

(declare-fun b!434976 () Bool)

(declare-fun e!257012 () Bool)

(assert (=> b!434976 (= e!257009 e!257012)))

(declare-fun res!256309 () Bool)

(assert (=> b!434976 (=> (not res!256309) (not e!257012))))

(declare-datatypes ((array!26623 0))(
  ( (array!26624 (arr!12758 (Array (_ BitVec 32) (_ BitVec 64))) (size!13110 (_ BitVec 32))) )
))
(declare-fun lt!200255 () array!26623)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26623 (_ BitVec 32)) Bool)

(assert (=> b!434976 (= res!256309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!200255 mask!1025))))

(declare-fun _keys!709 () array!26623)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!434976 (= lt!200255 (array!26624 (store (arr!12758 _keys!709) i!563 k0!794) (size!13110 _keys!709)))))

(declare-fun b!434977 () Bool)

(declare-fun res!256315 () Bool)

(assert (=> b!434977 (=> (not res!256315) (not e!257009))))

(declare-fun arrayContainsKey!0 (array!26623 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!434977 (= res!256315 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!434978 () Bool)

(declare-fun e!257007 () Bool)

(declare-fun e!257005 () Bool)

(declare-fun mapRes!18735 () Bool)

(assert (=> b!434978 (= e!257007 (and e!257005 mapRes!18735))))

(declare-fun condMapEmpty!18735 () Bool)

(declare-datatypes ((V!16317 0))(
  ( (V!16318 (val!5749 Int)) )
))
(declare-datatypes ((ValueCell!5361 0))(
  ( (ValueCellFull!5361 (v!7992 V!16317)) (EmptyCell!5361) )
))
(declare-datatypes ((array!26625 0))(
  ( (array!26626 (arr!12759 (Array (_ BitVec 32) ValueCell!5361)) (size!13111 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26625)

(declare-fun mapDefault!18735 () ValueCell!5361)

(assert (=> b!434978 (= condMapEmpty!18735 (= (arr!12759 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5361)) mapDefault!18735)))))

(declare-fun b!434979 () Bool)

(assert (=> b!434979 (= e!257005 tp_is_empty!11409)))

(declare-fun b!434980 () Bool)

(declare-fun res!256314 () Bool)

(assert (=> b!434980 (=> (not res!256314) (not e!257009))))

(assert (=> b!434980 (= res!256314 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13110 _keys!709))))))

(declare-fun b!434981 () Bool)

(declare-fun Unit!12873 () Unit!12870)

(assert (=> b!434981 (= e!257014 Unit!12873)))

(declare-fun lt!200261 () Unit!12870)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26623 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12870)

(assert (=> b!434981 (= lt!200261 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!434981 false))

(declare-fun mapNonEmpty!18735 () Bool)

(declare-fun tp!36300 () Bool)

(assert (=> mapNonEmpty!18735 (= mapRes!18735 (and tp!36300 e!257008))))

(declare-fun mapKey!18735 () (_ BitVec 32))

(declare-fun mapValue!18735 () ValueCell!5361)

(declare-fun mapRest!18735 () (Array (_ BitVec 32) ValueCell!5361))

(assert (=> mapNonEmpty!18735 (= (arr!12759 _values!549) (store mapRest!18735 mapKey!18735 mapValue!18735))))

(declare-fun b!434982 () Bool)

(declare-fun res!256319 () Bool)

(assert (=> b!434982 (=> (not res!256319) (not e!257012))))

(assert (=> b!434982 (= res!256319 (bvsle from!863 i!563))))

(declare-fun b!434983 () Bool)

(declare-fun e!257006 () Bool)

(declare-fun e!257011 () Bool)

(assert (=> b!434983 (= e!257006 (not e!257011))))

(declare-fun res!256306 () Bool)

(assert (=> b!434983 (=> res!256306 e!257011)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!434983 (= res!256306 (not (validKeyInArray!0 (select (arr!12758 _keys!709) from!863))))))

(declare-datatypes ((tuple2!7542 0))(
  ( (tuple2!7543 (_1!3781 (_ BitVec 64)) (_2!3781 V!16317)) )
))
(declare-datatypes ((List!7589 0))(
  ( (Nil!7586) (Cons!7585 (h!8441 tuple2!7542) (t!13303 List!7589)) )
))
(declare-datatypes ((ListLongMap!6469 0))(
  ( (ListLongMap!6470 (toList!3250 List!7589)) )
))
(declare-fun lt!200260 () ListLongMap!6469)

(declare-fun lt!200262 () ListLongMap!6469)

(assert (=> b!434983 (= lt!200260 lt!200262)))

(declare-fun lt!200248 () ListLongMap!6469)

(declare-fun lt!200253 () tuple2!7542)

(declare-fun +!1395 (ListLongMap!6469 tuple2!7542) ListLongMap!6469)

(assert (=> b!434983 (= lt!200262 (+!1395 lt!200248 lt!200253))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!200256 () array!26625)

(declare-fun minValue!515 () V!16317)

(declare-fun zeroValue!515 () V!16317)

(declare-fun getCurrentListMapNoExtraKeys!1434 (array!26623 array!26625 (_ BitVec 32) (_ BitVec 32) V!16317 V!16317 (_ BitVec 32) Int) ListLongMap!6469)

(assert (=> b!434983 (= lt!200260 (getCurrentListMapNoExtraKeys!1434 lt!200255 lt!200256 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!16317)

(assert (=> b!434983 (= lt!200253 (tuple2!7543 k0!794 v!412))))

(assert (=> b!434983 (= lt!200248 (getCurrentListMapNoExtraKeys!1434 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!200249 () Unit!12870)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!576 (array!26623 array!26625 (_ BitVec 32) (_ BitVec 32) V!16317 V!16317 (_ BitVec 32) (_ BitVec 64) V!16317 (_ BitVec 32) Int) Unit!12870)

(assert (=> b!434983 (= lt!200249 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!576 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!434984 () Bool)

(declare-fun res!256308 () Bool)

(assert (=> b!434984 (=> (not res!256308) (not e!257012))))

(declare-datatypes ((List!7590 0))(
  ( (Nil!7587) (Cons!7586 (h!8442 (_ BitVec 64)) (t!13304 List!7590)) )
))
(declare-fun arrayNoDuplicates!0 (array!26623 (_ BitVec 32) List!7590) Bool)

(assert (=> b!434984 (= res!256308 (arrayNoDuplicates!0 lt!200255 #b00000000000000000000000000000000 Nil!7587))))

(declare-fun b!434985 () Bool)

(declare-fun res!256318 () Bool)

(assert (=> b!434985 (=> (not res!256318) (not e!257009))))

(assert (=> b!434985 (= res!256318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!434986 () Bool)

(declare-fun res!256307 () Bool)

(assert (=> b!434986 (=> (not res!256307) (not e!257009))))

(assert (=> b!434986 (= res!256307 (and (= (size!13111 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13110 _keys!709) (size!13111 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!434987 () Bool)

(declare-fun e!257010 () Bool)

(assert (=> b!434987 (= e!257011 e!257010)))

(declare-fun res!256313 () Bool)

(assert (=> b!434987 (=> res!256313 e!257010)))

(assert (=> b!434987 (= res!256313 (= k0!794 (select (arr!12758 _keys!709) from!863)))))

(assert (=> b!434987 (not (= (select (arr!12758 _keys!709) from!863) k0!794))))

(declare-fun lt!200252 () Unit!12870)

(assert (=> b!434987 (= lt!200252 e!257014)))

(declare-fun c!55646 () Bool)

(assert (=> b!434987 (= c!55646 (= (select (arr!12758 _keys!709) from!863) k0!794))))

(declare-fun lt!200254 () ListLongMap!6469)

(declare-fun lt!200251 () ListLongMap!6469)

(assert (=> b!434987 (= lt!200254 lt!200251)))

(declare-fun lt!200250 () tuple2!7542)

(assert (=> b!434987 (= lt!200251 (+!1395 lt!200262 lt!200250))))

(declare-fun lt!200259 () V!16317)

(assert (=> b!434987 (= lt!200250 (tuple2!7543 (select (arr!12758 _keys!709) from!863) lt!200259))))

(declare-fun get!6364 (ValueCell!5361 V!16317) V!16317)

(declare-fun dynLambda!825 (Int (_ BitVec 64)) V!16317)

(assert (=> b!434987 (= lt!200259 (get!6364 (select (arr!12759 _values!549) from!863) (dynLambda!825 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!434988 () Bool)

(assert (=> b!434988 (= e!257012 e!257006)))

(declare-fun res!256311 () Bool)

(assert (=> b!434988 (=> (not res!256311) (not e!257006))))

(assert (=> b!434988 (= res!256311 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!434988 (= lt!200254 (getCurrentListMapNoExtraKeys!1434 lt!200255 lt!200256 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!434988 (= lt!200256 (array!26626 (store (arr!12759 _values!549) i!563 (ValueCellFull!5361 v!412)) (size!13111 _values!549)))))

(declare-fun lt!200257 () ListLongMap!6469)

(assert (=> b!434988 (= lt!200257 (getCurrentListMapNoExtraKeys!1434 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!434989 () Bool)

(declare-fun res!256317 () Bool)

(assert (=> b!434989 (=> (not res!256317) (not e!257009))))

(assert (=> b!434989 (= res!256317 (validKeyInArray!0 k0!794))))

(declare-fun res!256316 () Bool)

(assert (=> start!39998 (=> (not res!256316) (not e!257009))))

(assert (=> start!39998 (= res!256316 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13110 _keys!709))))))

(assert (=> start!39998 e!257009))

(assert (=> start!39998 tp_is_empty!11409))

(assert (=> start!39998 tp!36299))

(assert (=> start!39998 true))

(declare-fun array_inv!9272 (array!26625) Bool)

(assert (=> start!39998 (and (array_inv!9272 _values!549) e!257007)))

(declare-fun array_inv!9273 (array!26623) Bool)

(assert (=> start!39998 (array_inv!9273 _keys!709)))

(declare-fun b!434990 () Bool)

(declare-fun res!256320 () Bool)

(assert (=> b!434990 (=> (not res!256320) (not e!257009))))

(assert (=> b!434990 (= res!256320 (or (= (select (arr!12758 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12758 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18735 () Bool)

(assert (=> mapIsEmpty!18735 mapRes!18735))

(declare-fun b!434991 () Bool)

(declare-fun res!256312 () Bool)

(assert (=> b!434991 (=> (not res!256312) (not e!257009))))

(assert (=> b!434991 (= res!256312 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7587))))

(declare-fun b!434992 () Bool)

(assert (=> b!434992 (= e!257010 true)))

(assert (=> b!434992 (= lt!200251 (+!1395 (+!1395 lt!200248 lt!200250) lt!200253))))

(declare-fun lt!200258 () Unit!12870)

(declare-fun addCommutativeForDiffKeys!401 (ListLongMap!6469 (_ BitVec 64) V!16317 (_ BitVec 64) V!16317) Unit!12870)

(assert (=> b!434992 (= lt!200258 (addCommutativeForDiffKeys!401 lt!200248 k0!794 v!412 (select (arr!12758 _keys!709) from!863) lt!200259))))

(assert (= (and start!39998 res!256316) b!434973))

(assert (= (and b!434973 res!256310) b!434986))

(assert (= (and b!434986 res!256307) b!434985))

(assert (= (and b!434985 res!256318) b!434991))

(assert (= (and b!434991 res!256312) b!434980))

(assert (= (and b!434980 res!256314) b!434989))

(assert (= (and b!434989 res!256317) b!434990))

(assert (= (and b!434990 res!256320) b!434977))

(assert (= (and b!434977 res!256315) b!434976))

(assert (= (and b!434976 res!256309) b!434984))

(assert (= (and b!434984 res!256308) b!434982))

(assert (= (and b!434982 res!256319) b!434988))

(assert (= (and b!434988 res!256311) b!434983))

(assert (= (and b!434983 (not res!256306)) b!434987))

(assert (= (and b!434987 c!55646) b!434981))

(assert (= (and b!434987 (not c!55646)) b!434975))

(assert (= (and b!434987 (not res!256313)) b!434992))

(assert (= (and b!434978 condMapEmpty!18735) mapIsEmpty!18735))

(assert (= (and b!434978 (not condMapEmpty!18735)) mapNonEmpty!18735))

(get-info :version)

(assert (= (and mapNonEmpty!18735 ((_ is ValueCellFull!5361) mapValue!18735)) b!434974))

(assert (= (and b!434978 ((_ is ValueCellFull!5361) mapDefault!18735)) b!434979))

(assert (= start!39998 b!434978))

(declare-fun b_lambda!9375 () Bool)

(assert (=> (not b_lambda!9375) (not b!434987)))

(declare-fun t!13302 () Bool)

(declare-fun tb!3671 () Bool)

(assert (=> (and start!39998 (= defaultEntry!557 defaultEntry!557) t!13302) tb!3671))

(declare-fun result!6861 () Bool)

(assert (=> tb!3671 (= result!6861 tp_is_empty!11409)))

(assert (=> b!434987 t!13302))

(declare-fun b_and!18193 () Bool)

(assert (= b_and!18191 (and (=> t!13302 result!6861) b_and!18193)))

(declare-fun m!422915 () Bool)

(assert (=> b!434988 m!422915))

(declare-fun m!422917 () Bool)

(assert (=> b!434988 m!422917))

(declare-fun m!422919 () Bool)

(assert (=> b!434988 m!422919))

(declare-fun m!422921 () Bool)

(assert (=> b!434991 m!422921))

(declare-fun m!422923 () Bool)

(assert (=> b!434977 m!422923))

(declare-fun m!422925 () Bool)

(assert (=> b!434976 m!422925))

(declare-fun m!422927 () Bool)

(assert (=> b!434976 m!422927))

(declare-fun m!422929 () Bool)

(assert (=> start!39998 m!422929))

(declare-fun m!422931 () Bool)

(assert (=> start!39998 m!422931))

(declare-fun m!422933 () Bool)

(assert (=> b!434987 m!422933))

(declare-fun m!422935 () Bool)

(assert (=> b!434987 m!422935))

(declare-fun m!422937 () Bool)

(assert (=> b!434987 m!422937))

(declare-fun m!422939 () Bool)

(assert (=> b!434987 m!422939))

(assert (=> b!434987 m!422937))

(assert (=> b!434987 m!422935))

(declare-fun m!422941 () Bool)

(assert (=> b!434987 m!422941))

(declare-fun m!422943 () Bool)

(assert (=> b!434984 m!422943))

(declare-fun m!422945 () Bool)

(assert (=> b!434992 m!422945))

(assert (=> b!434992 m!422945))

(declare-fun m!422947 () Bool)

(assert (=> b!434992 m!422947))

(assert (=> b!434992 m!422933))

(assert (=> b!434992 m!422933))

(declare-fun m!422949 () Bool)

(assert (=> b!434992 m!422949))

(assert (=> b!434983 m!422933))

(declare-fun m!422951 () Bool)

(assert (=> b!434983 m!422951))

(assert (=> b!434983 m!422933))

(declare-fun m!422953 () Bool)

(assert (=> b!434983 m!422953))

(declare-fun m!422955 () Bool)

(assert (=> b!434983 m!422955))

(declare-fun m!422957 () Bool)

(assert (=> b!434983 m!422957))

(declare-fun m!422959 () Bool)

(assert (=> b!434983 m!422959))

(declare-fun m!422961 () Bool)

(assert (=> b!434985 m!422961))

(declare-fun m!422963 () Bool)

(assert (=> b!434989 m!422963))

(declare-fun m!422965 () Bool)

(assert (=> b!434981 m!422965))

(declare-fun m!422967 () Bool)

(assert (=> b!434973 m!422967))

(declare-fun m!422969 () Bool)

(assert (=> b!434990 m!422969))

(declare-fun m!422971 () Bool)

(assert (=> mapNonEmpty!18735 m!422971))

(check-sat (not b!434977) (not b!434976) (not b!434991) (not b!434973) (not b!434985) (not b!434989) (not b_lambda!9375) (not b!434983) (not b!434987) b_and!18193 (not mapNonEmpty!18735) (not b!434981) (not b!434992) (not start!39998) (not b!434984) (not b!434988) tp_is_empty!11409 (not b_next!10257))
(check-sat b_and!18193 (not b_next!10257))
