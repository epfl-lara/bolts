; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39956 () Bool)

(assert start!39956)

(declare-fun b_free!10215 () Bool)

(declare-fun b_next!10215 () Bool)

(assert (=> start!39956 (= b_free!10215 (not b_next!10215))))

(declare-fun tp!36174 () Bool)

(declare-fun b_and!18107 () Bool)

(assert (=> start!39956 (= tp!36174 b_and!18107)))

(declare-fun b!433671 () Bool)

(declare-fun res!255368 () Bool)

(declare-fun e!256379 () Bool)

(assert (=> b!433671 (=> (not res!255368) (not e!256379))))

(declare-datatypes ((array!26543 0))(
  ( (array!26544 (arr!12718 (Array (_ BitVec 32) (_ BitVec 64))) (size!13070 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26543)

(declare-datatypes ((List!7555 0))(
  ( (Nil!7552) (Cons!7551 (h!8407 (_ BitVec 64)) (t!13227 List!7555)) )
))
(declare-fun arrayNoDuplicates!0 (array!26543 (_ BitVec 32) List!7555) Bool)

(assert (=> b!433671 (= res!255368 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7552))))

(declare-fun b!433672 () Bool)

(declare-fun res!255362 () Bool)

(assert (=> b!433672 (=> (not res!255362) (not e!256379))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!433672 (= res!255362 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13070 _keys!709))))))

(declare-fun mapNonEmpty!18672 () Bool)

(declare-fun mapRes!18672 () Bool)

(declare-fun tp!36173 () Bool)

(declare-fun e!256383 () Bool)

(assert (=> mapNonEmpty!18672 (= mapRes!18672 (and tp!36173 e!256383))))

(declare-fun mapKey!18672 () (_ BitVec 32))

(declare-datatypes ((V!16261 0))(
  ( (V!16262 (val!5728 Int)) )
))
(declare-datatypes ((ValueCell!5340 0))(
  ( (ValueCellFull!5340 (v!7971 V!16261)) (EmptyCell!5340) )
))
(declare-datatypes ((array!26545 0))(
  ( (array!26546 (arr!12719 (Array (_ BitVec 32) ValueCell!5340)) (size!13071 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26545)

(declare-fun mapValue!18672 () ValueCell!5340)

(declare-fun mapRest!18672 () (Array (_ BitVec 32) ValueCell!5340))

(assert (=> mapNonEmpty!18672 (= (arr!12719 _values!549) (store mapRest!18672 mapKey!18672 mapValue!18672))))

(declare-fun b!433673 () Bool)

(declare-fun res!255369 () Bool)

(assert (=> b!433673 (=> (not res!255369) (not e!256379))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!433673 (= res!255369 (validMask!0 mask!1025))))

(declare-fun b!433674 () Bool)

(declare-datatypes ((Unit!12804 0))(
  ( (Unit!12805) )
))
(declare-fun e!256376 () Unit!12804)

(declare-fun Unit!12806 () Unit!12804)

(assert (=> b!433674 (= e!256376 Unit!12806)))

(declare-fun b!433675 () Bool)

(declare-fun res!255365 () Bool)

(assert (=> b!433675 (=> (not res!255365) (not e!256379))))

(assert (=> b!433675 (= res!255365 (or (= (select (arr!12718 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12718 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433676 () Bool)

(declare-fun e!256378 () Bool)

(declare-fun e!256382 () Bool)

(assert (=> b!433676 (= e!256378 (not e!256382))))

(declare-fun res!255364 () Bool)

(assert (=> b!433676 (=> res!255364 e!256382)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!433676 (= res!255364 (not (validKeyInArray!0 (select (arr!12718 _keys!709) from!863))))))

(declare-datatypes ((tuple2!7506 0))(
  ( (tuple2!7507 (_1!3763 (_ BitVec 64)) (_2!3763 V!16261)) )
))
(declare-datatypes ((List!7556 0))(
  ( (Nil!7553) (Cons!7552 (h!8408 tuple2!7506) (t!13228 List!7556)) )
))
(declare-datatypes ((ListLongMap!6433 0))(
  ( (ListLongMap!6434 (toList!3232 List!7556)) )
))
(declare-fun lt!199316 () ListLongMap!6433)

(declare-fun lt!199304 () ListLongMap!6433)

(assert (=> b!433676 (= lt!199316 lt!199304)))

(declare-fun lt!199308 () ListLongMap!6433)

(declare-fun lt!199309 () tuple2!7506)

(declare-fun +!1378 (ListLongMap!6433 tuple2!7506) ListLongMap!6433)

(assert (=> b!433676 (= lt!199304 (+!1378 lt!199308 lt!199309))))

(declare-fun minValue!515 () V!16261)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16261)

(declare-fun lt!199303 () array!26545)

(declare-fun lt!199313 () array!26543)

(declare-fun getCurrentListMapNoExtraKeys!1421 (array!26543 array!26545 (_ BitVec 32) (_ BitVec 32) V!16261 V!16261 (_ BitVec 32) Int) ListLongMap!6433)

(assert (=> b!433676 (= lt!199316 (getCurrentListMapNoExtraKeys!1421 lt!199313 lt!199303 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun v!412 () V!16261)

(assert (=> b!433676 (= lt!199309 (tuple2!7507 k0!794 v!412))))

(assert (=> b!433676 (= lt!199308 (getCurrentListMapNoExtraKeys!1421 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!199311 () Unit!12804)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!565 (array!26543 array!26545 (_ BitVec 32) (_ BitVec 32) V!16261 V!16261 (_ BitVec 32) (_ BitVec 64) V!16261 (_ BitVec 32) Int) Unit!12804)

(assert (=> b!433676 (= lt!199311 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!565 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!433677 () Bool)

(declare-fun e!256380 () Bool)

(assert (=> b!433677 (= e!256380 true)))

(declare-fun lt!199314 () ListLongMap!6433)

(declare-fun lt!199315 () tuple2!7506)

(assert (=> b!433677 (= lt!199314 (+!1378 (+!1378 lt!199308 lt!199315) lt!199309))))

(declare-fun lt!199306 () V!16261)

(declare-fun lt!199312 () Unit!12804)

(declare-fun addCommutativeForDiffKeys!387 (ListLongMap!6433 (_ BitVec 64) V!16261 (_ BitVec 64) V!16261) Unit!12804)

(assert (=> b!433677 (= lt!199312 (addCommutativeForDiffKeys!387 lt!199308 k0!794 v!412 (select (arr!12718 _keys!709) from!863) lt!199306))))

(declare-fun b!433678 () Bool)

(declare-fun res!255375 () Bool)

(declare-fun e!256375 () Bool)

(assert (=> b!433678 (=> (not res!255375) (not e!256375))))

(assert (=> b!433678 (= res!255375 (arrayNoDuplicates!0 lt!199313 #b00000000000000000000000000000000 Nil!7552))))

(declare-fun b!433679 () Bool)

(declare-fun e!256377 () Bool)

(declare-fun e!256384 () Bool)

(assert (=> b!433679 (= e!256377 (and e!256384 mapRes!18672))))

(declare-fun condMapEmpty!18672 () Bool)

(declare-fun mapDefault!18672 () ValueCell!5340)

(assert (=> b!433679 (= condMapEmpty!18672 (= (arr!12719 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5340)) mapDefault!18672)))))

(declare-fun b!433680 () Bool)

(declare-fun res!255367 () Bool)

(assert (=> b!433680 (=> (not res!255367) (not e!256379))))

(assert (=> b!433680 (= res!255367 (and (= (size!13071 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13070 _keys!709) (size!13071 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!433681 () Bool)

(declare-fun res!255374 () Bool)

(assert (=> b!433681 (=> (not res!255374) (not e!256379))))

(assert (=> b!433681 (= res!255374 (validKeyInArray!0 k0!794))))

(declare-fun b!433682 () Bool)

(assert (=> b!433682 (= e!256382 e!256380)))

(declare-fun res!255361 () Bool)

(assert (=> b!433682 (=> res!255361 e!256380)))

(assert (=> b!433682 (= res!255361 (= k0!794 (select (arr!12718 _keys!709) from!863)))))

(assert (=> b!433682 (not (= (select (arr!12718 _keys!709) from!863) k0!794))))

(declare-fun lt!199305 () Unit!12804)

(assert (=> b!433682 (= lt!199305 e!256376)))

(declare-fun c!55583 () Bool)

(assert (=> b!433682 (= c!55583 (= (select (arr!12718 _keys!709) from!863) k0!794))))

(declare-fun lt!199317 () ListLongMap!6433)

(assert (=> b!433682 (= lt!199317 lt!199314)))

(assert (=> b!433682 (= lt!199314 (+!1378 lt!199304 lt!199315))))

(assert (=> b!433682 (= lt!199315 (tuple2!7507 (select (arr!12718 _keys!709) from!863) lt!199306))))

(declare-fun get!6335 (ValueCell!5340 V!16261) V!16261)

(declare-fun dynLambda!810 (Int (_ BitVec 64)) V!16261)

(assert (=> b!433682 (= lt!199306 (get!6335 (select (arr!12719 _values!549) from!863) (dynLambda!810 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433683 () Bool)

(declare-fun res!255372 () Bool)

(assert (=> b!433683 (=> (not res!255372) (not e!256379))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26543 (_ BitVec 32)) Bool)

(assert (=> b!433683 (= res!255372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!433684 () Bool)

(declare-fun tp_is_empty!11367 () Bool)

(assert (=> b!433684 (= e!256384 tp_is_empty!11367)))

(declare-fun b!433685 () Bool)

(declare-fun res!255366 () Bool)

(assert (=> b!433685 (=> (not res!255366) (not e!256375))))

(assert (=> b!433685 (= res!255366 (bvsle from!863 i!563))))

(declare-fun b!433686 () Bool)

(declare-fun Unit!12807 () Unit!12804)

(assert (=> b!433686 (= e!256376 Unit!12807)))

(declare-fun lt!199307 () Unit!12804)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26543 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12804)

(assert (=> b!433686 (= lt!199307 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!433686 false))

(declare-fun b!433687 () Bool)

(assert (=> b!433687 (= e!256379 e!256375)))

(declare-fun res!255363 () Bool)

(assert (=> b!433687 (=> (not res!255363) (not e!256375))))

(assert (=> b!433687 (= res!255363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!199313 mask!1025))))

(assert (=> b!433687 (= lt!199313 (array!26544 (store (arr!12718 _keys!709) i!563 k0!794) (size!13070 _keys!709)))))

(declare-fun b!433688 () Bool)

(assert (=> b!433688 (= e!256375 e!256378)))

(declare-fun res!255370 () Bool)

(assert (=> b!433688 (=> (not res!255370) (not e!256378))))

(assert (=> b!433688 (= res!255370 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!433688 (= lt!199317 (getCurrentListMapNoExtraKeys!1421 lt!199313 lt!199303 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!433688 (= lt!199303 (array!26546 (store (arr!12719 _values!549) i!563 (ValueCellFull!5340 v!412)) (size!13071 _values!549)))))

(declare-fun lt!199310 () ListLongMap!6433)

(assert (=> b!433688 (= lt!199310 (getCurrentListMapNoExtraKeys!1421 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!433689 () Bool)

(declare-fun res!255371 () Bool)

(assert (=> b!433689 (=> (not res!255371) (not e!256379))))

(declare-fun arrayContainsKey!0 (array!26543 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!433689 (= res!255371 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!433690 () Bool)

(assert (=> b!433690 (= e!256383 tp_is_empty!11367)))

(declare-fun mapIsEmpty!18672 () Bool)

(assert (=> mapIsEmpty!18672 mapRes!18672))

(declare-fun res!255373 () Bool)

(assert (=> start!39956 (=> (not res!255373) (not e!256379))))

(assert (=> start!39956 (= res!255373 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13070 _keys!709))))))

(assert (=> start!39956 e!256379))

(assert (=> start!39956 tp_is_empty!11367))

(assert (=> start!39956 tp!36174))

(assert (=> start!39956 true))

(declare-fun array_inv!9246 (array!26545) Bool)

(assert (=> start!39956 (and (array_inv!9246 _values!549) e!256377)))

(declare-fun array_inv!9247 (array!26543) Bool)

(assert (=> start!39956 (array_inv!9247 _keys!709)))

(assert (= (and start!39956 res!255373) b!433673))

(assert (= (and b!433673 res!255369) b!433680))

(assert (= (and b!433680 res!255367) b!433683))

(assert (= (and b!433683 res!255372) b!433671))

(assert (= (and b!433671 res!255368) b!433672))

(assert (= (and b!433672 res!255362) b!433681))

(assert (= (and b!433681 res!255374) b!433675))

(assert (= (and b!433675 res!255365) b!433689))

(assert (= (and b!433689 res!255371) b!433687))

(assert (= (and b!433687 res!255363) b!433678))

(assert (= (and b!433678 res!255375) b!433685))

(assert (= (and b!433685 res!255366) b!433688))

(assert (= (and b!433688 res!255370) b!433676))

(assert (= (and b!433676 (not res!255364)) b!433682))

(assert (= (and b!433682 c!55583) b!433686))

(assert (= (and b!433682 (not c!55583)) b!433674))

(assert (= (and b!433682 (not res!255361)) b!433677))

(assert (= (and b!433679 condMapEmpty!18672) mapIsEmpty!18672))

(assert (= (and b!433679 (not condMapEmpty!18672)) mapNonEmpty!18672))

(get-info :version)

(assert (= (and mapNonEmpty!18672 ((_ is ValueCellFull!5340) mapValue!18672)) b!433690))

(assert (= (and b!433679 ((_ is ValueCellFull!5340) mapDefault!18672)) b!433684))

(assert (= start!39956 b!433679))

(declare-fun b_lambda!9333 () Bool)

(assert (=> (not b_lambda!9333) (not b!433682)))

(declare-fun t!13226 () Bool)

(declare-fun tb!3629 () Bool)

(assert (=> (and start!39956 (= defaultEntry!557 defaultEntry!557) t!13226) tb!3629))

(declare-fun result!6777 () Bool)

(assert (=> tb!3629 (= result!6777 tp_is_empty!11367)))

(assert (=> b!433682 t!13226))

(declare-fun b_and!18109 () Bool)

(assert (= b_and!18107 (and (=> t!13226 result!6777) b_and!18109)))

(declare-fun m!421697 () Bool)

(assert (=> b!433677 m!421697))

(assert (=> b!433677 m!421697))

(declare-fun m!421699 () Bool)

(assert (=> b!433677 m!421699))

(declare-fun m!421701 () Bool)

(assert (=> b!433677 m!421701))

(assert (=> b!433677 m!421701))

(declare-fun m!421703 () Bool)

(assert (=> b!433677 m!421703))

(declare-fun m!421705 () Bool)

(assert (=> b!433686 m!421705))

(assert (=> b!433676 m!421701))

(declare-fun m!421707 () Bool)

(assert (=> b!433676 m!421707))

(declare-fun m!421709 () Bool)

(assert (=> b!433676 m!421709))

(declare-fun m!421711 () Bool)

(assert (=> b!433676 m!421711))

(assert (=> b!433676 m!421701))

(declare-fun m!421713 () Bool)

(assert (=> b!433676 m!421713))

(declare-fun m!421715 () Bool)

(assert (=> b!433676 m!421715))

(declare-fun m!421717 () Bool)

(assert (=> b!433671 m!421717))

(declare-fun m!421719 () Bool)

(assert (=> b!433681 m!421719))

(declare-fun m!421721 () Bool)

(assert (=> mapNonEmpty!18672 m!421721))

(assert (=> b!433682 m!421701))

(declare-fun m!421723 () Bool)

(assert (=> b!433682 m!421723))

(declare-fun m!421725 () Bool)

(assert (=> b!433682 m!421725))

(declare-fun m!421727 () Bool)

(assert (=> b!433682 m!421727))

(assert (=> b!433682 m!421725))

(assert (=> b!433682 m!421723))

(declare-fun m!421729 () Bool)

(assert (=> b!433682 m!421729))

(declare-fun m!421731 () Bool)

(assert (=> b!433687 m!421731))

(declare-fun m!421733 () Bool)

(assert (=> b!433687 m!421733))

(declare-fun m!421735 () Bool)

(assert (=> b!433688 m!421735))

(declare-fun m!421737 () Bool)

(assert (=> b!433688 m!421737))

(declare-fun m!421739 () Bool)

(assert (=> b!433688 m!421739))

(declare-fun m!421741 () Bool)

(assert (=> b!433689 m!421741))

(declare-fun m!421743 () Bool)

(assert (=> b!433683 m!421743))

(declare-fun m!421745 () Bool)

(assert (=> b!433678 m!421745))

(declare-fun m!421747 () Bool)

(assert (=> b!433673 m!421747))

(declare-fun m!421749 () Bool)

(assert (=> start!39956 m!421749))

(declare-fun m!421751 () Bool)

(assert (=> start!39956 m!421751))

(declare-fun m!421753 () Bool)

(assert (=> b!433675 m!421753))

(check-sat (not b!433676) b_and!18109 (not start!39956) (not b!433681) (not b!433677) (not b!433686) (not b!433683) (not b!433678) tp_is_empty!11367 (not b!433671) (not b_next!10215) (not b!433682) (not mapNonEmpty!18672) (not b!433688) (not b!433687) (not b!433689) (not b!433673) (not b_lambda!9333))
(check-sat b_and!18109 (not b_next!10215))
