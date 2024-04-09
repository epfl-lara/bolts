; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39866 () Bool)

(assert start!39866)

(declare-fun b_free!10125 () Bool)

(declare-fun b_next!10125 () Bool)

(assert (=> start!39866 (= b_free!10125 (not b_next!10125))))

(declare-fun tp!35904 () Bool)

(declare-fun b_and!17927 () Bool)

(assert (=> start!39866 (= tp!35904 b_and!17927)))

(declare-fun b!430881 () Bool)

(declare-fun res!253345 () Bool)

(declare-fun e!255027 () Bool)

(assert (=> b!430881 (=> (not res!253345) (not e!255027))))

(declare-datatypes ((array!26367 0))(
  ( (array!26368 (arr!12630 (Array (_ BitVec 32) (_ BitVec 64))) (size!12982 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26367)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26367 (_ BitVec 32)) Bool)

(assert (=> b!430881 (= res!253345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!430882 () Bool)

(declare-fun res!253340 () Bool)

(assert (=> b!430882 (=> (not res!253340) (not e!255027))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16141 0))(
  ( (V!16142 (val!5683 Int)) )
))
(declare-datatypes ((ValueCell!5295 0))(
  ( (ValueCellFull!5295 (v!7926 V!16141)) (EmptyCell!5295) )
))
(declare-datatypes ((array!26369 0))(
  ( (array!26370 (arr!12631 (Array (_ BitVec 32) ValueCell!5295)) (size!12983 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26369)

(assert (=> b!430882 (= res!253340 (and (= (size!12983 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12982 _keys!709) (size!12983 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!430883 () Bool)

(declare-fun res!253349 () Bool)

(declare-fun e!255025 () Bool)

(assert (=> b!430883 (=> (not res!253349) (not e!255025))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!430883 (= res!253349 (bvsle from!863 i!563))))

(declare-fun b!430884 () Bool)

(declare-fun e!255030 () Bool)

(declare-fun e!255032 () Bool)

(declare-fun mapRes!18537 () Bool)

(assert (=> b!430884 (= e!255030 (and e!255032 mapRes!18537))))

(declare-fun condMapEmpty!18537 () Bool)

(declare-fun mapDefault!18537 () ValueCell!5295)

(assert (=> b!430884 (= condMapEmpty!18537 (= (arr!12631 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5295)) mapDefault!18537)))))

(declare-fun b!430886 () Bool)

(declare-fun e!255028 () Bool)

(declare-fun e!255026 () Bool)

(assert (=> b!430886 (= e!255028 e!255026)))

(declare-fun res!253344 () Bool)

(assert (=> b!430886 (=> res!253344 e!255026)))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!430886 (= res!253344 (= k0!794 (select (arr!12630 _keys!709) from!863)))))

(assert (=> b!430886 (not (= (select (arr!12630 _keys!709) from!863) k0!794))))

(declare-datatypes ((Unit!12661 0))(
  ( (Unit!12662) )
))
(declare-fun lt!197286 () Unit!12661)

(declare-fun e!255034 () Unit!12661)

(assert (=> b!430886 (= lt!197286 e!255034)))

(declare-fun c!55448 () Bool)

(assert (=> b!430886 (= c!55448 (= (select (arr!12630 _keys!709) from!863) k0!794))))

(declare-datatypes ((tuple2!7424 0))(
  ( (tuple2!7425 (_1!3722 (_ BitVec 64)) (_2!3722 V!16141)) )
))
(declare-datatypes ((List!7478 0))(
  ( (Nil!7475) (Cons!7474 (h!8330 tuple2!7424) (t!13060 List!7478)) )
))
(declare-datatypes ((ListLongMap!6351 0))(
  ( (ListLongMap!6352 (toList!3191 List!7478)) )
))
(declare-fun lt!197278 () ListLongMap!6351)

(declare-fun lt!197289 () ListLongMap!6351)

(assert (=> b!430886 (= lt!197278 lt!197289)))

(declare-fun lt!197285 () ListLongMap!6351)

(declare-fun lt!197287 () tuple2!7424)

(declare-fun +!1339 (ListLongMap!6351 tuple2!7424) ListLongMap!6351)

(assert (=> b!430886 (= lt!197289 (+!1339 lt!197285 lt!197287))))

(declare-fun lt!197279 () V!16141)

(assert (=> b!430886 (= lt!197287 (tuple2!7425 (select (arr!12630 _keys!709) from!863) lt!197279))))

(declare-fun defaultEntry!557 () Int)

(declare-fun get!6277 (ValueCell!5295 V!16141) V!16141)

(declare-fun dynLambda!782 (Int (_ BitVec 64)) V!16141)

(assert (=> b!430886 (= lt!197279 (get!6277 (select (arr!12631 _values!549) from!863) (dynLambda!782 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!430887 () Bool)

(declare-fun res!253337 () Bool)

(assert (=> b!430887 (=> (not res!253337) (not e!255027))))

(assert (=> b!430887 (= res!253337 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12982 _keys!709))))))

(declare-fun b!430888 () Bool)

(declare-fun Unit!12663 () Unit!12661)

(assert (=> b!430888 (= e!255034 Unit!12663)))

(declare-fun lt!197280 () Unit!12661)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26367 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12661)

(assert (=> b!430888 (= lt!197280 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!430888 false))

(declare-fun mapIsEmpty!18537 () Bool)

(assert (=> mapIsEmpty!18537 mapRes!18537))

(declare-fun b!430889 () Bool)

(declare-fun res!253338 () Bool)

(assert (=> b!430889 (=> (not res!253338) (not e!255027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!430889 (= res!253338 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!18537 () Bool)

(declare-fun tp!35903 () Bool)

(declare-fun e!255029 () Bool)

(assert (=> mapNonEmpty!18537 (= mapRes!18537 (and tp!35903 e!255029))))

(declare-fun mapKey!18537 () (_ BitVec 32))

(declare-fun mapRest!18537 () (Array (_ BitVec 32) ValueCell!5295))

(declare-fun mapValue!18537 () ValueCell!5295)

(assert (=> mapNonEmpty!18537 (= (arr!12631 _values!549) (store mapRest!18537 mapKey!18537 mapValue!18537))))

(declare-fun b!430890 () Bool)

(declare-fun res!253348 () Bool)

(assert (=> b!430890 (=> (not res!253348) (not e!255027))))

(declare-fun arrayContainsKey!0 (array!26367 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!430890 (= res!253348 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!430891 () Bool)

(declare-fun res!253336 () Bool)

(assert (=> b!430891 (=> (not res!253336) (not e!255027))))

(declare-datatypes ((List!7479 0))(
  ( (Nil!7476) (Cons!7475 (h!8331 (_ BitVec 64)) (t!13061 List!7479)) )
))
(declare-fun arrayNoDuplicates!0 (array!26367 (_ BitVec 32) List!7479) Bool)

(assert (=> b!430891 (= res!253336 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7476))))

(declare-fun b!430892 () Bool)

(declare-fun e!255033 () Bool)

(assert (=> b!430892 (= e!255025 e!255033)))

(declare-fun res!253342 () Bool)

(assert (=> b!430892 (=> (not res!253342) (not e!255033))))

(assert (=> b!430892 (= res!253342 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16141)

(declare-fun zeroValue!515 () V!16141)

(declare-fun lt!197283 () array!26369)

(declare-fun lt!197288 () array!26367)

(declare-fun getCurrentListMapNoExtraKeys!1386 (array!26367 array!26369 (_ BitVec 32) (_ BitVec 32) V!16141 V!16141 (_ BitVec 32) Int) ListLongMap!6351)

(assert (=> b!430892 (= lt!197278 (getCurrentListMapNoExtraKeys!1386 lt!197288 lt!197283 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16141)

(assert (=> b!430892 (= lt!197283 (array!26370 (store (arr!12631 _values!549) i!563 (ValueCellFull!5295 v!412)) (size!12983 _values!549)))))

(declare-fun lt!197291 () ListLongMap!6351)

(assert (=> b!430892 (= lt!197291 (getCurrentListMapNoExtraKeys!1386 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!430893 () Bool)

(assert (=> b!430893 (= e!255027 e!255025)))

(declare-fun res!253343 () Bool)

(assert (=> b!430893 (=> (not res!253343) (not e!255025))))

(assert (=> b!430893 (= res!253343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!197288 mask!1025))))

(assert (=> b!430893 (= lt!197288 (array!26368 (store (arr!12630 _keys!709) i!563 k0!794) (size!12982 _keys!709)))))

(declare-fun b!430894 () Bool)

(assert (=> b!430894 (= e!255026 true)))

(declare-fun lt!197292 () tuple2!7424)

(declare-fun lt!197282 () ListLongMap!6351)

(assert (=> b!430894 (= lt!197289 (+!1339 (+!1339 lt!197282 lt!197287) lt!197292))))

(declare-fun lt!197290 () Unit!12661)

(declare-fun addCommutativeForDiffKeys!356 (ListLongMap!6351 (_ BitVec 64) V!16141 (_ BitVec 64) V!16141) Unit!12661)

(assert (=> b!430894 (= lt!197290 (addCommutativeForDiffKeys!356 lt!197282 k0!794 v!412 (select (arr!12630 _keys!709) from!863) lt!197279))))

(declare-fun b!430895 () Bool)

(declare-fun res!253347 () Bool)

(assert (=> b!430895 (=> (not res!253347) (not e!255027))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!430895 (= res!253347 (validKeyInArray!0 k0!794))))

(declare-fun b!430896 () Bool)

(declare-fun Unit!12664 () Unit!12661)

(assert (=> b!430896 (= e!255034 Unit!12664)))

(declare-fun b!430897 () Bool)

(declare-fun tp_is_empty!11277 () Bool)

(assert (=> b!430897 (= e!255032 tp_is_empty!11277)))

(declare-fun b!430898 () Bool)

(assert (=> b!430898 (= e!255033 (not e!255028))))

(declare-fun res!253341 () Bool)

(assert (=> b!430898 (=> res!253341 e!255028)))

(assert (=> b!430898 (= res!253341 (not (validKeyInArray!0 (select (arr!12630 _keys!709) from!863))))))

(declare-fun lt!197281 () ListLongMap!6351)

(assert (=> b!430898 (= lt!197281 lt!197285)))

(assert (=> b!430898 (= lt!197285 (+!1339 lt!197282 lt!197292))))

(assert (=> b!430898 (= lt!197281 (getCurrentListMapNoExtraKeys!1386 lt!197288 lt!197283 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!430898 (= lt!197292 (tuple2!7425 k0!794 v!412))))

(assert (=> b!430898 (= lt!197282 (getCurrentListMapNoExtraKeys!1386 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!197284 () Unit!12661)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!533 (array!26367 array!26369 (_ BitVec 32) (_ BitVec 32) V!16141 V!16141 (_ BitVec 32) (_ BitVec 64) V!16141 (_ BitVec 32) Int) Unit!12661)

(assert (=> b!430898 (= lt!197284 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!533 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!430885 () Bool)

(assert (=> b!430885 (= e!255029 tp_is_empty!11277)))

(declare-fun res!253350 () Bool)

(assert (=> start!39866 (=> (not res!253350) (not e!255027))))

(assert (=> start!39866 (= res!253350 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12982 _keys!709))))))

(assert (=> start!39866 e!255027))

(assert (=> start!39866 tp_is_empty!11277))

(assert (=> start!39866 tp!35904))

(assert (=> start!39866 true))

(declare-fun array_inv!9186 (array!26369) Bool)

(assert (=> start!39866 (and (array_inv!9186 _values!549) e!255030)))

(declare-fun array_inv!9187 (array!26367) Bool)

(assert (=> start!39866 (array_inv!9187 _keys!709)))

(declare-fun b!430899 () Bool)

(declare-fun res!253346 () Bool)

(assert (=> b!430899 (=> (not res!253346) (not e!255025))))

(assert (=> b!430899 (= res!253346 (arrayNoDuplicates!0 lt!197288 #b00000000000000000000000000000000 Nil!7476))))

(declare-fun b!430900 () Bool)

(declare-fun res!253339 () Bool)

(assert (=> b!430900 (=> (not res!253339) (not e!255027))))

(assert (=> b!430900 (= res!253339 (or (= (select (arr!12630 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12630 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!39866 res!253350) b!430889))

(assert (= (and b!430889 res!253338) b!430882))

(assert (= (and b!430882 res!253340) b!430881))

(assert (= (and b!430881 res!253345) b!430891))

(assert (= (and b!430891 res!253336) b!430887))

(assert (= (and b!430887 res!253337) b!430895))

(assert (= (and b!430895 res!253347) b!430900))

(assert (= (and b!430900 res!253339) b!430890))

(assert (= (and b!430890 res!253348) b!430893))

(assert (= (and b!430893 res!253343) b!430899))

(assert (= (and b!430899 res!253346) b!430883))

(assert (= (and b!430883 res!253349) b!430892))

(assert (= (and b!430892 res!253342) b!430898))

(assert (= (and b!430898 (not res!253341)) b!430886))

(assert (= (and b!430886 c!55448) b!430888))

(assert (= (and b!430886 (not c!55448)) b!430896))

(assert (= (and b!430886 (not res!253344)) b!430894))

(assert (= (and b!430884 condMapEmpty!18537) mapIsEmpty!18537))

(assert (= (and b!430884 (not condMapEmpty!18537)) mapNonEmpty!18537))

(get-info :version)

(assert (= (and mapNonEmpty!18537 ((_ is ValueCellFull!5295) mapValue!18537)) b!430885))

(assert (= (and b!430884 ((_ is ValueCellFull!5295) mapDefault!18537)) b!430897))

(assert (= start!39866 b!430884))

(declare-fun b_lambda!9243 () Bool)

(assert (=> (not b_lambda!9243) (not b!430886)))

(declare-fun t!13059 () Bool)

(declare-fun tb!3539 () Bool)

(assert (=> (and start!39866 (= defaultEntry!557 defaultEntry!557) t!13059) tb!3539))

(declare-fun result!6597 () Bool)

(assert (=> tb!3539 (= result!6597 tp_is_empty!11277)))

(assert (=> b!430886 t!13059))

(declare-fun b_and!17929 () Bool)

(assert (= b_and!17927 (and (=> t!13059 result!6597) b_and!17929)))

(declare-fun m!419087 () Bool)

(assert (=> b!430892 m!419087))

(declare-fun m!419089 () Bool)

(assert (=> b!430892 m!419089))

(declare-fun m!419091 () Bool)

(assert (=> b!430892 m!419091))

(declare-fun m!419093 () Bool)

(assert (=> b!430891 m!419093))

(declare-fun m!419095 () Bool)

(assert (=> mapNonEmpty!18537 m!419095))

(declare-fun m!419097 () Bool)

(assert (=> b!430881 m!419097))

(declare-fun m!419099 () Bool)

(assert (=> b!430890 m!419099))

(declare-fun m!419101 () Bool)

(assert (=> start!39866 m!419101))

(declare-fun m!419103 () Bool)

(assert (=> start!39866 m!419103))

(declare-fun m!419105 () Bool)

(assert (=> b!430900 m!419105))

(declare-fun m!419107 () Bool)

(assert (=> b!430898 m!419107))

(declare-fun m!419109 () Bool)

(assert (=> b!430898 m!419109))

(declare-fun m!419111 () Bool)

(assert (=> b!430898 m!419111))

(declare-fun m!419113 () Bool)

(assert (=> b!430898 m!419113))

(declare-fun m!419115 () Bool)

(assert (=> b!430898 m!419115))

(assert (=> b!430898 m!419111))

(declare-fun m!419117 () Bool)

(assert (=> b!430898 m!419117))

(assert (=> b!430886 m!419111))

(declare-fun m!419119 () Bool)

(assert (=> b!430886 m!419119))

(declare-fun m!419121 () Bool)

(assert (=> b!430886 m!419121))

(declare-fun m!419123 () Bool)

(assert (=> b!430886 m!419123))

(assert (=> b!430886 m!419123))

(assert (=> b!430886 m!419121))

(declare-fun m!419125 () Bool)

(assert (=> b!430886 m!419125))

(declare-fun m!419127 () Bool)

(assert (=> b!430895 m!419127))

(declare-fun m!419129 () Bool)

(assert (=> b!430893 m!419129))

(declare-fun m!419131 () Bool)

(assert (=> b!430893 m!419131))

(declare-fun m!419133 () Bool)

(assert (=> b!430888 m!419133))

(declare-fun m!419135 () Bool)

(assert (=> b!430889 m!419135))

(declare-fun m!419137 () Bool)

(assert (=> b!430899 m!419137))

(declare-fun m!419139 () Bool)

(assert (=> b!430894 m!419139))

(assert (=> b!430894 m!419139))

(declare-fun m!419141 () Bool)

(assert (=> b!430894 m!419141))

(assert (=> b!430894 m!419111))

(assert (=> b!430894 m!419111))

(declare-fun m!419143 () Bool)

(assert (=> b!430894 m!419143))

(check-sat (not b!430892) (not b!430891) (not b!430895) (not b!430893) (not start!39866) (not b!430890) (not b_next!10125) (not b!430894) (not b!430888) (not mapNonEmpty!18537) tp_is_empty!11277 (not b!430899) (not b_lambda!9243) (not b!430898) (not b!430886) b_and!17929 (not b!430881) (not b!430889))
(check-sat b_and!17929 (not b_next!10125))
