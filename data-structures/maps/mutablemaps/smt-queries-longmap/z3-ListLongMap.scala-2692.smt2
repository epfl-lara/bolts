; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39980 () Bool)

(assert start!39980)

(declare-fun b_free!10239 () Bool)

(declare-fun b_next!10239 () Bool)

(assert (=> start!39980 (= b_free!10239 (not b_next!10239))))

(declare-fun tp!36246 () Bool)

(declare-fun b_and!18155 () Bool)

(assert (=> start!39980 (= tp!36246 b_and!18155)))

(declare-fun b!434415 () Bool)

(declare-fun e!256741 () Bool)

(assert (=> b!434415 (= e!256741 true)))

(declare-datatypes ((V!16293 0))(
  ( (V!16294 (val!5740 Int)) )
))
(declare-datatypes ((tuple2!7526 0))(
  ( (tuple2!7527 (_1!3773 (_ BitVec 64)) (_2!3773 V!16293)) )
))
(declare-fun lt!199854 () tuple2!7526)

(declare-datatypes ((List!7574 0))(
  ( (Nil!7571) (Cons!7570 (h!8426 tuple2!7526) (t!13270 List!7574)) )
))
(declare-datatypes ((ListLongMap!6453 0))(
  ( (ListLongMap!6454 (toList!3242 List!7574)) )
))
(declare-fun lt!199849 () ListLongMap!6453)

(declare-fun lt!199853 () ListLongMap!6453)

(declare-fun lt!199851 () tuple2!7526)

(declare-fun +!1387 (ListLongMap!6453 tuple2!7526) ListLongMap!6453)

(assert (=> b!434415 (= lt!199849 (+!1387 (+!1387 lt!199853 lt!199851) lt!199854))))

(declare-datatypes ((Unit!12843 0))(
  ( (Unit!12844) )
))
(declare-fun lt!199855 () Unit!12843)

(declare-fun v!412 () V!16293)

(declare-datatypes ((array!26589 0))(
  ( (array!26590 (arr!12741 (Array (_ BitVec 32) (_ BitVec 64))) (size!13093 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26589)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!199844 () V!16293)

(declare-fun addCommutativeForDiffKeys!394 (ListLongMap!6453 (_ BitVec 64) V!16293 (_ BitVec 64) V!16293) Unit!12843)

(assert (=> b!434415 (= lt!199855 (addCommutativeForDiffKeys!394 lt!199853 k0!794 v!412 (select (arr!12741 _keys!709) from!863) lt!199844))))

(declare-fun mapNonEmpty!18708 () Bool)

(declare-fun mapRes!18708 () Bool)

(declare-fun tp!36245 () Bool)

(declare-fun e!256742 () Bool)

(assert (=> mapNonEmpty!18708 (= mapRes!18708 (and tp!36245 e!256742))))

(declare-datatypes ((ValueCell!5352 0))(
  ( (ValueCellFull!5352 (v!7983 V!16293)) (EmptyCell!5352) )
))
(declare-datatypes ((array!26591 0))(
  ( (array!26592 (arr!12742 (Array (_ BitVec 32) ValueCell!5352)) (size!13094 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26591)

(declare-fun mapValue!18708 () ValueCell!5352)

(declare-fun mapRest!18708 () (Array (_ BitVec 32) ValueCell!5352))

(declare-fun mapKey!18708 () (_ BitVec 32))

(assert (=> mapNonEmpty!18708 (= (arr!12742 _values!549) (store mapRest!18708 mapKey!18708 mapValue!18708))))

(declare-fun b!434416 () Bool)

(declare-fun res!255913 () Bool)

(declare-fun e!256743 () Bool)

(assert (=> b!434416 (=> (not res!255913) (not e!256743))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!434416 (= res!255913 (or (= (select (arr!12741 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12741 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!434417 () Bool)

(declare-fun e!256735 () Bool)

(assert (=> b!434417 (= e!256743 e!256735)))

(declare-fun res!255905 () Bool)

(assert (=> b!434417 (=> (not res!255905) (not e!256735))))

(declare-fun lt!199848 () array!26589)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26589 (_ BitVec 32)) Bool)

(assert (=> b!434417 (= res!255905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!199848 mask!1025))))

(assert (=> b!434417 (= lt!199848 (array!26590 (store (arr!12741 _keys!709) i!563 k0!794) (size!13093 _keys!709)))))

(declare-fun b!434418 () Bool)

(declare-fun res!255912 () Bool)

(assert (=> b!434418 (=> (not res!255912) (not e!256743))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!434418 (= res!255912 (validKeyInArray!0 k0!794))))

(declare-fun b!434419 () Bool)

(declare-fun e!256744 () Bool)

(assert (=> b!434419 (= e!256735 e!256744)))

(declare-fun res!255907 () Bool)

(assert (=> b!434419 (=> (not res!255907) (not e!256744))))

(assert (=> b!434419 (= res!255907 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16293)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16293)

(declare-fun lt!199846 () ListLongMap!6453)

(declare-fun lt!199843 () array!26591)

(declare-fun getCurrentListMapNoExtraKeys!1429 (array!26589 array!26591 (_ BitVec 32) (_ BitVec 32) V!16293 V!16293 (_ BitVec 32) Int) ListLongMap!6453)

(assert (=> b!434419 (= lt!199846 (getCurrentListMapNoExtraKeys!1429 lt!199848 lt!199843 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!434419 (= lt!199843 (array!26592 (store (arr!12742 _values!549) i!563 (ValueCellFull!5352 v!412)) (size!13094 _values!549)))))

(declare-fun lt!199845 () ListLongMap!6453)

(assert (=> b!434419 (= lt!199845 (getCurrentListMapNoExtraKeys!1429 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!434420 () Bool)

(declare-fun e!256739 () Bool)

(assert (=> b!434420 (= e!256744 (not e!256739))))

(declare-fun res!255908 () Bool)

(assert (=> b!434420 (=> res!255908 e!256739)))

(assert (=> b!434420 (= res!255908 (not (validKeyInArray!0 (select (arr!12741 _keys!709) from!863))))))

(declare-fun lt!199852 () ListLongMap!6453)

(declare-fun lt!199856 () ListLongMap!6453)

(assert (=> b!434420 (= lt!199852 lt!199856)))

(assert (=> b!434420 (= lt!199856 (+!1387 lt!199853 lt!199854))))

(assert (=> b!434420 (= lt!199852 (getCurrentListMapNoExtraKeys!1429 lt!199848 lt!199843 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!434420 (= lt!199854 (tuple2!7527 k0!794 v!412))))

(assert (=> b!434420 (= lt!199853 (getCurrentListMapNoExtraKeys!1429 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!199850 () Unit!12843)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!571 (array!26589 array!26591 (_ BitVec 32) (_ BitVec 32) V!16293 V!16293 (_ BitVec 32) (_ BitVec 64) V!16293 (_ BitVec 32) Int) Unit!12843)

(assert (=> b!434420 (= lt!199850 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!571 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!434421 () Bool)

(declare-fun e!256736 () Bool)

(declare-fun e!256738 () Bool)

(assert (=> b!434421 (= e!256736 (and e!256738 mapRes!18708))))

(declare-fun condMapEmpty!18708 () Bool)

(declare-fun mapDefault!18708 () ValueCell!5352)

(assert (=> b!434421 (= condMapEmpty!18708 (= (arr!12742 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5352)) mapDefault!18708)))))

(declare-fun b!434422 () Bool)

(declare-fun tp_is_empty!11391 () Bool)

(assert (=> b!434422 (= e!256738 tp_is_empty!11391)))

(declare-fun b!434423 () Bool)

(declare-fun res!255910 () Bool)

(assert (=> b!434423 (=> (not res!255910) (not e!256743))))

(assert (=> b!434423 (= res!255910 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13093 _keys!709))))))

(declare-fun b!434424 () Bool)

(declare-fun res!255906 () Bool)

(assert (=> b!434424 (=> (not res!255906) (not e!256735))))

(declare-datatypes ((List!7575 0))(
  ( (Nil!7572) (Cons!7571 (h!8427 (_ BitVec 64)) (t!13271 List!7575)) )
))
(declare-fun arrayNoDuplicates!0 (array!26589 (_ BitVec 32) List!7575) Bool)

(assert (=> b!434424 (= res!255906 (arrayNoDuplicates!0 lt!199848 #b00000000000000000000000000000000 Nil!7572))))

(declare-fun res!255904 () Bool)

(assert (=> start!39980 (=> (not res!255904) (not e!256743))))

(assert (=> start!39980 (= res!255904 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13093 _keys!709))))))

(assert (=> start!39980 e!256743))

(assert (=> start!39980 tp_is_empty!11391))

(assert (=> start!39980 tp!36246))

(assert (=> start!39980 true))

(declare-fun array_inv!9264 (array!26591) Bool)

(assert (=> start!39980 (and (array_inv!9264 _values!549) e!256736)))

(declare-fun array_inv!9265 (array!26589) Bool)

(assert (=> start!39980 (array_inv!9265 _keys!709)))

(declare-fun b!434425 () Bool)

(declare-fun res!255901 () Bool)

(assert (=> b!434425 (=> (not res!255901) (not e!256743))))

(assert (=> b!434425 (= res!255901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!434426 () Bool)

(declare-fun res!255902 () Bool)

(assert (=> b!434426 (=> (not res!255902) (not e!256735))))

(assert (=> b!434426 (= res!255902 (bvsle from!863 i!563))))

(declare-fun b!434427 () Bool)

(declare-fun res!255915 () Bool)

(assert (=> b!434427 (=> (not res!255915) (not e!256743))))

(assert (=> b!434427 (= res!255915 (and (= (size!13094 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13093 _keys!709) (size!13094 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!434428 () Bool)

(declare-fun e!256737 () Unit!12843)

(declare-fun Unit!12845 () Unit!12843)

(assert (=> b!434428 (= e!256737 Unit!12845)))

(declare-fun lt!199847 () Unit!12843)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26589 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12843)

(assert (=> b!434428 (= lt!199847 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!434428 false))

(declare-fun b!434429 () Bool)

(declare-fun res!255914 () Bool)

(assert (=> b!434429 (=> (not res!255914) (not e!256743))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!434429 (= res!255914 (validMask!0 mask!1025))))

(declare-fun b!434430 () Bool)

(assert (=> b!434430 (= e!256742 tp_is_empty!11391)))

(declare-fun mapIsEmpty!18708 () Bool)

(assert (=> mapIsEmpty!18708 mapRes!18708))

(declare-fun b!434431 () Bool)

(declare-fun res!255911 () Bool)

(assert (=> b!434431 (=> (not res!255911) (not e!256743))))

(declare-fun arrayContainsKey!0 (array!26589 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!434431 (= res!255911 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!434432 () Bool)

(assert (=> b!434432 (= e!256739 e!256741)))

(declare-fun res!255903 () Bool)

(assert (=> b!434432 (=> res!255903 e!256741)))

(assert (=> b!434432 (= res!255903 (= k0!794 (select (arr!12741 _keys!709) from!863)))))

(assert (=> b!434432 (not (= (select (arr!12741 _keys!709) from!863) k0!794))))

(declare-fun lt!199857 () Unit!12843)

(assert (=> b!434432 (= lt!199857 e!256737)))

(declare-fun c!55619 () Bool)

(assert (=> b!434432 (= c!55619 (= (select (arr!12741 _keys!709) from!863) k0!794))))

(assert (=> b!434432 (= lt!199846 lt!199849)))

(assert (=> b!434432 (= lt!199849 (+!1387 lt!199856 lt!199851))))

(assert (=> b!434432 (= lt!199851 (tuple2!7527 (select (arr!12741 _keys!709) from!863) lt!199844))))

(declare-fun get!6352 (ValueCell!5352 V!16293) V!16293)

(declare-fun dynLambda!819 (Int (_ BitVec 64)) V!16293)

(assert (=> b!434432 (= lt!199844 (get!6352 (select (arr!12742 _values!549) from!863) (dynLambda!819 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!434433 () Bool)

(declare-fun Unit!12846 () Unit!12843)

(assert (=> b!434433 (= e!256737 Unit!12846)))

(declare-fun b!434434 () Bool)

(declare-fun res!255909 () Bool)

(assert (=> b!434434 (=> (not res!255909) (not e!256743))))

(assert (=> b!434434 (= res!255909 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7572))))

(assert (= (and start!39980 res!255904) b!434429))

(assert (= (and b!434429 res!255914) b!434427))

(assert (= (and b!434427 res!255915) b!434425))

(assert (= (and b!434425 res!255901) b!434434))

(assert (= (and b!434434 res!255909) b!434423))

(assert (= (and b!434423 res!255910) b!434418))

(assert (= (and b!434418 res!255912) b!434416))

(assert (= (and b!434416 res!255913) b!434431))

(assert (= (and b!434431 res!255911) b!434417))

(assert (= (and b!434417 res!255905) b!434424))

(assert (= (and b!434424 res!255906) b!434426))

(assert (= (and b!434426 res!255902) b!434419))

(assert (= (and b!434419 res!255907) b!434420))

(assert (= (and b!434420 (not res!255908)) b!434432))

(assert (= (and b!434432 c!55619) b!434428))

(assert (= (and b!434432 (not c!55619)) b!434433))

(assert (= (and b!434432 (not res!255903)) b!434415))

(assert (= (and b!434421 condMapEmpty!18708) mapIsEmpty!18708))

(assert (= (and b!434421 (not condMapEmpty!18708)) mapNonEmpty!18708))

(get-info :version)

(assert (= (and mapNonEmpty!18708 ((_ is ValueCellFull!5352) mapValue!18708)) b!434430))

(assert (= (and b!434421 ((_ is ValueCellFull!5352) mapDefault!18708)) b!434422))

(assert (= start!39980 b!434421))

(declare-fun b_lambda!9357 () Bool)

(assert (=> (not b_lambda!9357) (not b!434432)))

(declare-fun t!13269 () Bool)

(declare-fun tb!3653 () Bool)

(assert (=> (and start!39980 (= defaultEntry!557 defaultEntry!557) t!13269) tb!3653))

(declare-fun result!6825 () Bool)

(assert (=> tb!3653 (= result!6825 tp_is_empty!11391)))

(assert (=> b!434432 t!13269))

(declare-fun b_and!18157 () Bool)

(assert (= b_and!18155 (and (=> t!13269 result!6825) b_and!18157)))

(declare-fun m!422393 () Bool)

(assert (=> b!434416 m!422393))

(declare-fun m!422395 () Bool)

(assert (=> b!434424 m!422395))

(declare-fun m!422397 () Bool)

(assert (=> b!434425 m!422397))

(declare-fun m!422399 () Bool)

(assert (=> b!434432 m!422399))

(declare-fun m!422401 () Bool)

(assert (=> b!434432 m!422401))

(declare-fun m!422403 () Bool)

(assert (=> b!434432 m!422403))

(declare-fun m!422405 () Bool)

(assert (=> b!434432 m!422405))

(assert (=> b!434432 m!422405))

(assert (=> b!434432 m!422401))

(declare-fun m!422407 () Bool)

(assert (=> b!434432 m!422407))

(declare-fun m!422409 () Bool)

(assert (=> b!434415 m!422409))

(assert (=> b!434415 m!422409))

(declare-fun m!422411 () Bool)

(assert (=> b!434415 m!422411))

(assert (=> b!434415 m!422399))

(assert (=> b!434415 m!422399))

(declare-fun m!422413 () Bool)

(assert (=> b!434415 m!422413))

(declare-fun m!422415 () Bool)

(assert (=> start!39980 m!422415))

(declare-fun m!422417 () Bool)

(assert (=> start!39980 m!422417))

(declare-fun m!422419 () Bool)

(assert (=> mapNonEmpty!18708 m!422419))

(declare-fun m!422421 () Bool)

(assert (=> b!434418 m!422421))

(declare-fun m!422423 () Bool)

(assert (=> b!434428 m!422423))

(declare-fun m!422425 () Bool)

(assert (=> b!434417 m!422425))

(declare-fun m!422427 () Bool)

(assert (=> b!434417 m!422427))

(declare-fun m!422429 () Bool)

(assert (=> b!434431 m!422429))

(declare-fun m!422431 () Bool)

(assert (=> b!434429 m!422431))

(declare-fun m!422433 () Bool)

(assert (=> b!434434 m!422433))

(assert (=> b!434420 m!422399))

(declare-fun m!422435 () Bool)

(assert (=> b!434420 m!422435))

(declare-fun m!422437 () Bool)

(assert (=> b!434420 m!422437))

(declare-fun m!422439 () Bool)

(assert (=> b!434420 m!422439))

(assert (=> b!434420 m!422399))

(declare-fun m!422441 () Bool)

(assert (=> b!434420 m!422441))

(declare-fun m!422443 () Bool)

(assert (=> b!434420 m!422443))

(declare-fun m!422445 () Bool)

(assert (=> b!434419 m!422445))

(declare-fun m!422447 () Bool)

(assert (=> b!434419 m!422447))

(declare-fun m!422449 () Bool)

(assert (=> b!434419 m!422449))

(check-sat (not b!434425) (not b!434415) (not b!434417) (not b!434420) (not b!434431) (not mapNonEmpty!18708) (not b!434434) (not b!434424) (not b!434428) tp_is_empty!11391 (not start!39980) b_and!18157 (not b!434418) (not b!434429) (not b!434432) (not b_lambda!9357) (not b!434419) (not b_next!10239))
(check-sat b_and!18157 (not b_next!10239))
