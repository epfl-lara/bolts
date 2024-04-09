; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41158 () Bool)

(assert start!41158)

(declare-fun b_free!11019 () Bool)

(declare-fun b_next!11019 () Bool)

(assert (=> start!41158 (= b_free!11019 (not b_next!11019))))

(declare-fun tp!38893 () Bool)

(declare-fun b_and!19295 () Bool)

(assert (=> start!41158 (= tp!38893 b_and!19295)))

(declare-fun b!459206 () Bool)

(declare-datatypes ((Unit!13289 0))(
  ( (Unit!13290) )
))
(declare-fun e!268033 () Unit!13289)

(declare-fun Unit!13291 () Unit!13289)

(assert (=> b!459206 (= e!268033 Unit!13291)))

(declare-fun b!459207 () Bool)

(declare-fun res!274500 () Bool)

(declare-fun e!268025 () Bool)

(assert (=> b!459207 (=> (not res!274500) (not e!268025))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!459207 (= res!274500 (bvsle from!863 i!563))))

(declare-fun b!459208 () Bool)

(declare-fun res!274506 () Bool)

(declare-fun e!268029 () Bool)

(assert (=> b!459208 (=> (not res!274506) (not e!268029))))

(declare-datatypes ((array!28479 0))(
  ( (array!28480 (arr!13677 (Array (_ BitVec 32) (_ BitVec 64))) (size!14029 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28479)

(assert (=> b!459208 (= res!274506 (or (= (select (arr!13677 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13677 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!459209 () Bool)

(declare-fun e!268028 () Bool)

(declare-fun e!268030 () Bool)

(declare-fun mapRes!20185 () Bool)

(assert (=> b!459209 (= e!268028 (and e!268030 mapRes!20185))))

(declare-fun condMapEmpty!20185 () Bool)

(declare-datatypes ((V!17581 0))(
  ( (V!17582 (val!6223 Int)) )
))
(declare-datatypes ((ValueCell!5835 0))(
  ( (ValueCellFull!5835 (v!8497 V!17581)) (EmptyCell!5835) )
))
(declare-datatypes ((array!28481 0))(
  ( (array!28482 (arr!13678 (Array (_ BitVec 32) ValueCell!5835)) (size!14030 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28481)

(declare-fun mapDefault!20185 () ValueCell!5835)

(assert (=> b!459209 (= condMapEmpty!20185 (= (arr!13678 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5835)) mapDefault!20185)))))

(declare-fun b!459210 () Bool)

(declare-fun e!268032 () Bool)

(declare-fun tp_is_empty!12357 () Bool)

(assert (=> b!459210 (= e!268032 tp_is_empty!12357)))

(declare-fun b!459211 () Bool)

(declare-fun res!274503 () Bool)

(assert (=> b!459211 (=> (not res!274503) (not e!268025))))

(declare-fun lt!207807 () array!28479)

(declare-datatypes ((List!8271 0))(
  ( (Nil!8268) (Cons!8267 (h!9123 (_ BitVec 64)) (t!14177 List!8271)) )
))
(declare-fun arrayNoDuplicates!0 (array!28479 (_ BitVec 32) List!8271) Bool)

(assert (=> b!459211 (= res!274503 (arrayNoDuplicates!0 lt!207807 #b00000000000000000000000000000000 Nil!8268))))

(declare-fun mapIsEmpty!20185 () Bool)

(assert (=> mapIsEmpty!20185 mapRes!20185))

(declare-fun b!459212 () Bool)

(declare-fun e!268026 () Bool)

(declare-fun e!268031 () Bool)

(assert (=> b!459212 (= e!268026 (not e!268031))))

(declare-fun res!274496 () Bool)

(assert (=> b!459212 (=> res!274496 e!268031)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!459212 (= res!274496 (not (validKeyInArray!0 (select (arr!13677 _keys!709) from!863))))))

(declare-datatypes ((tuple2!8166 0))(
  ( (tuple2!8167 (_1!4093 (_ BitVec 64)) (_2!4093 V!17581)) )
))
(declare-datatypes ((List!8272 0))(
  ( (Nil!8269) (Cons!8268 (h!9124 tuple2!8166) (t!14178 List!8272)) )
))
(declare-datatypes ((ListLongMap!7093 0))(
  ( (ListLongMap!7094 (toList!3562 List!8272)) )
))
(declare-fun lt!207808 () ListLongMap!7093)

(declare-fun lt!207809 () ListLongMap!7093)

(assert (=> b!459212 (= lt!207808 lt!207809)))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!207805 () ListLongMap!7093)

(declare-fun v!412 () V!17581)

(declare-fun +!1582 (ListLongMap!7093 tuple2!8166) ListLongMap!7093)

(assert (=> b!459212 (= lt!207809 (+!1582 lt!207805 (tuple2!8167 k0!794 v!412)))))

(declare-fun minValue!515 () V!17581)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17581)

(declare-fun lt!207811 () array!28481)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1733 (array!28479 array!28481 (_ BitVec 32) (_ BitVec 32) V!17581 V!17581 (_ BitVec 32) Int) ListLongMap!7093)

(assert (=> b!459212 (= lt!207808 (getCurrentListMapNoExtraKeys!1733 lt!207807 lt!207811 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!459212 (= lt!207805 (getCurrentListMapNoExtraKeys!1733 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!207806 () Unit!13289)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!738 (array!28479 array!28481 (_ BitVec 32) (_ BitVec 32) V!17581 V!17581 (_ BitVec 32) (_ BitVec 64) V!17581 (_ BitVec 32) Int) Unit!13289)

(assert (=> b!459212 (= lt!207806 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!738 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!459213 () Bool)

(declare-fun res!274501 () Bool)

(assert (=> b!459213 (=> (not res!274501) (not e!268029))))

(assert (=> b!459213 (= res!274501 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14029 _keys!709))))))

(declare-fun b!459214 () Bool)

(declare-fun res!274499 () Bool)

(assert (=> b!459214 (=> (not res!274499) (not e!268029))))

(declare-fun arrayContainsKey!0 (array!28479 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!459214 (= res!274499 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!459215 () Bool)

(declare-fun res!274494 () Bool)

(assert (=> b!459215 (=> (not res!274494) (not e!268029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!459215 (= res!274494 (validMask!0 mask!1025))))

(declare-fun b!459216 () Bool)

(assert (=> b!459216 (= e!268031 (bvslt from!863 (size!14029 _keys!709)))))

(assert (=> b!459216 (not (= (select (arr!13677 _keys!709) from!863) k0!794))))

(declare-fun lt!207804 () Unit!13289)

(assert (=> b!459216 (= lt!207804 e!268033)))

(declare-fun c!56402 () Bool)

(assert (=> b!459216 (= c!56402 (= (select (arr!13677 _keys!709) from!863) k0!794))))

(declare-fun lt!207810 () ListLongMap!7093)

(declare-fun get!6758 (ValueCell!5835 V!17581) V!17581)

(declare-fun dynLambda!892 (Int (_ BitVec 64)) V!17581)

(assert (=> b!459216 (= lt!207810 (+!1582 lt!207809 (tuple2!8167 (select (arr!13677 _keys!709) from!863) (get!6758 (select (arr!13678 _values!549) from!863) (dynLambda!892 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!459217 () Bool)

(declare-fun res!274504 () Bool)

(assert (=> b!459217 (=> (not res!274504) (not e!268029))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28479 (_ BitVec 32)) Bool)

(assert (=> b!459217 (= res!274504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!459218 () Bool)

(assert (=> b!459218 (= e!268030 tp_is_empty!12357)))

(declare-fun mapNonEmpty!20185 () Bool)

(declare-fun tp!38892 () Bool)

(assert (=> mapNonEmpty!20185 (= mapRes!20185 (and tp!38892 e!268032))))

(declare-fun mapRest!20185 () (Array (_ BitVec 32) ValueCell!5835))

(declare-fun mapValue!20185 () ValueCell!5835)

(declare-fun mapKey!20185 () (_ BitVec 32))

(assert (=> mapNonEmpty!20185 (= (arr!13678 _values!549) (store mapRest!20185 mapKey!20185 mapValue!20185))))

(declare-fun b!459220 () Bool)

(declare-fun Unit!13292 () Unit!13289)

(assert (=> b!459220 (= e!268033 Unit!13292)))

(declare-fun lt!207812 () Unit!13289)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28479 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13289)

(assert (=> b!459220 (= lt!207812 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!459220 false))

(declare-fun b!459219 () Bool)

(declare-fun res!274505 () Bool)

(assert (=> b!459219 (=> (not res!274505) (not e!268029))))

(assert (=> b!459219 (= res!274505 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8268))))

(declare-fun res!274498 () Bool)

(assert (=> start!41158 (=> (not res!274498) (not e!268029))))

(assert (=> start!41158 (= res!274498 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14029 _keys!709))))))

(assert (=> start!41158 e!268029))

(assert (=> start!41158 tp_is_empty!12357))

(assert (=> start!41158 tp!38893))

(assert (=> start!41158 true))

(declare-fun array_inv!9890 (array!28481) Bool)

(assert (=> start!41158 (and (array_inv!9890 _values!549) e!268028)))

(declare-fun array_inv!9891 (array!28479) Bool)

(assert (=> start!41158 (array_inv!9891 _keys!709)))

(declare-fun b!459221 () Bool)

(declare-fun res!274502 () Bool)

(assert (=> b!459221 (=> (not res!274502) (not e!268029))))

(assert (=> b!459221 (= res!274502 (and (= (size!14030 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14029 _keys!709) (size!14030 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!459222 () Bool)

(assert (=> b!459222 (= e!268025 e!268026)))

(declare-fun res!274507 () Bool)

(assert (=> b!459222 (=> (not res!274507) (not e!268026))))

(assert (=> b!459222 (= res!274507 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!459222 (= lt!207810 (getCurrentListMapNoExtraKeys!1733 lt!207807 lt!207811 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!459222 (= lt!207811 (array!28482 (store (arr!13678 _values!549) i!563 (ValueCellFull!5835 v!412)) (size!14030 _values!549)))))

(declare-fun lt!207813 () ListLongMap!7093)

(assert (=> b!459222 (= lt!207813 (getCurrentListMapNoExtraKeys!1733 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!459223 () Bool)

(declare-fun res!274495 () Bool)

(assert (=> b!459223 (=> (not res!274495) (not e!268029))))

(assert (=> b!459223 (= res!274495 (validKeyInArray!0 k0!794))))

(declare-fun b!459224 () Bool)

(assert (=> b!459224 (= e!268029 e!268025)))

(declare-fun res!274497 () Bool)

(assert (=> b!459224 (=> (not res!274497) (not e!268025))))

(assert (=> b!459224 (= res!274497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207807 mask!1025))))

(assert (=> b!459224 (= lt!207807 (array!28480 (store (arr!13677 _keys!709) i!563 k0!794) (size!14029 _keys!709)))))

(assert (= (and start!41158 res!274498) b!459215))

(assert (= (and b!459215 res!274494) b!459221))

(assert (= (and b!459221 res!274502) b!459217))

(assert (= (and b!459217 res!274504) b!459219))

(assert (= (and b!459219 res!274505) b!459213))

(assert (= (and b!459213 res!274501) b!459223))

(assert (= (and b!459223 res!274495) b!459208))

(assert (= (and b!459208 res!274506) b!459214))

(assert (= (and b!459214 res!274499) b!459224))

(assert (= (and b!459224 res!274497) b!459211))

(assert (= (and b!459211 res!274503) b!459207))

(assert (= (and b!459207 res!274500) b!459222))

(assert (= (and b!459222 res!274507) b!459212))

(assert (= (and b!459212 (not res!274496)) b!459216))

(assert (= (and b!459216 c!56402) b!459220))

(assert (= (and b!459216 (not c!56402)) b!459206))

(assert (= (and b!459209 condMapEmpty!20185) mapIsEmpty!20185))

(assert (= (and b!459209 (not condMapEmpty!20185)) mapNonEmpty!20185))

(get-info :version)

(assert (= (and mapNonEmpty!20185 ((_ is ValueCellFull!5835) mapValue!20185)) b!459210))

(assert (= (and b!459209 ((_ is ValueCellFull!5835) mapDefault!20185)) b!459218))

(assert (= start!41158 b!459209))

(declare-fun b_lambda!9883 () Bool)

(assert (=> (not b_lambda!9883) (not b!459216)))

(declare-fun t!14176 () Bool)

(declare-fun tb!3863 () Bool)

(assert (=> (and start!41158 (= defaultEntry!557 defaultEntry!557) t!14176) tb!3863))

(declare-fun result!7263 () Bool)

(assert (=> tb!3863 (= result!7263 tp_is_empty!12357)))

(assert (=> b!459216 t!14176))

(declare-fun b_and!19297 () Bool)

(assert (= b_and!19295 (and (=> t!14176 result!7263) b_and!19297)))

(declare-fun m!442527 () Bool)

(assert (=> b!459215 m!442527))

(declare-fun m!442529 () Bool)

(assert (=> b!459216 m!442529))

(declare-fun m!442531 () Bool)

(assert (=> b!459216 m!442531))

(declare-fun m!442533 () Bool)

(assert (=> b!459216 m!442533))

(declare-fun m!442535 () Bool)

(assert (=> b!459216 m!442535))

(assert (=> b!459216 m!442533))

(assert (=> b!459216 m!442531))

(declare-fun m!442537 () Bool)

(assert (=> b!459216 m!442537))

(declare-fun m!442539 () Bool)

(assert (=> b!459219 m!442539))

(declare-fun m!442541 () Bool)

(assert (=> b!459223 m!442541))

(declare-fun m!442543 () Bool)

(assert (=> b!459217 m!442543))

(declare-fun m!442545 () Bool)

(assert (=> b!459211 m!442545))

(declare-fun m!442547 () Bool)

(assert (=> b!459208 m!442547))

(declare-fun m!442549 () Bool)

(assert (=> b!459222 m!442549))

(declare-fun m!442551 () Bool)

(assert (=> b!459222 m!442551))

(declare-fun m!442553 () Bool)

(assert (=> b!459222 m!442553))

(declare-fun m!442555 () Bool)

(assert (=> b!459214 m!442555))

(declare-fun m!442557 () Bool)

(assert (=> mapNonEmpty!20185 m!442557))

(declare-fun m!442559 () Bool)

(assert (=> start!41158 m!442559))

(declare-fun m!442561 () Bool)

(assert (=> start!41158 m!442561))

(declare-fun m!442563 () Bool)

(assert (=> b!459224 m!442563))

(declare-fun m!442565 () Bool)

(assert (=> b!459224 m!442565))

(assert (=> b!459212 m!442529))

(declare-fun m!442567 () Bool)

(assert (=> b!459212 m!442567))

(declare-fun m!442569 () Bool)

(assert (=> b!459212 m!442569))

(assert (=> b!459212 m!442529))

(declare-fun m!442571 () Bool)

(assert (=> b!459212 m!442571))

(declare-fun m!442573 () Bool)

(assert (=> b!459212 m!442573))

(declare-fun m!442575 () Bool)

(assert (=> b!459212 m!442575))

(declare-fun m!442577 () Bool)

(assert (=> b!459220 m!442577))

(check-sat (not b_lambda!9883) b_and!19297 (not b!459216) (not start!41158) (not b!459220) (not mapNonEmpty!20185) (not b!459211) (not b!459223) (not b!459224) (not b!459219) (not b!459217) (not b_next!11019) (not b!459215) (not b!459222) tp_is_empty!12357 (not b!459212) (not b!459214))
(check-sat b_and!19297 (not b_next!11019))
