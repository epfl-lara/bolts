; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39782 () Bool)

(assert start!39782)

(declare-fun b_free!10041 () Bool)

(declare-fun b_next!10041 () Bool)

(assert (=> start!39782 (= b_free!10041 (not b_next!10041))))

(declare-fun tp!35651 () Bool)

(declare-fun b_and!17759 () Bool)

(assert (=> start!39782 (= tp!35651 b_and!17759)))

(declare-fun b!428353 () Bool)

(declare-fun e!253848 () Bool)

(declare-fun e!253842 () Bool)

(assert (=> b!428353 (= e!253848 e!253842)))

(declare-fun res!251527 () Bool)

(assert (=> b!428353 (=> (not res!251527) (not e!253842))))

(declare-datatypes ((array!26203 0))(
  ( (array!26204 (arr!12548 (Array (_ BitVec 32) (_ BitVec 64))) (size!12900 (_ BitVec 32))) )
))
(declare-fun lt!195772 () array!26203)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26203 (_ BitVec 32)) Bool)

(assert (=> b!428353 (= res!251527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195772 mask!1025))))

(declare-fun _keys!709 () array!26203)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!428353 (= lt!195772 (array!26204 (store (arr!12548 _keys!709) i!563 k0!794) (size!12900 _keys!709)))))

(declare-fun b!428354 () Bool)

(declare-fun e!253843 () Bool)

(declare-fun tp_is_empty!11193 () Bool)

(assert (=> b!428354 (= e!253843 tp_is_empty!11193)))

(declare-fun b!428355 () Bool)

(declare-fun res!251526 () Bool)

(assert (=> b!428355 (=> (not res!251526) (not e!253848))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!428355 (= res!251526 (validKeyInArray!0 k0!794))))

(declare-fun b!428356 () Bool)

(declare-fun res!251530 () Bool)

(assert (=> b!428356 (=> (not res!251530) (not e!253848))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!428356 (= res!251530 (validMask!0 mask!1025))))

(declare-fun b!428357 () Bool)

(declare-fun e!253849 () Bool)

(declare-fun e!253847 () Bool)

(declare-fun mapRes!18411 () Bool)

(assert (=> b!428357 (= e!253849 (and e!253847 mapRes!18411))))

(declare-fun condMapEmpty!18411 () Bool)

(declare-datatypes ((V!16029 0))(
  ( (V!16030 (val!5641 Int)) )
))
(declare-datatypes ((ValueCell!5253 0))(
  ( (ValueCellFull!5253 (v!7884 V!16029)) (EmptyCell!5253) )
))
(declare-datatypes ((array!26205 0))(
  ( (array!26206 (arr!12549 (Array (_ BitVec 32) ValueCell!5253)) (size!12901 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26205)

(declare-fun mapDefault!18411 () ValueCell!5253)

(assert (=> b!428357 (= condMapEmpty!18411 (= (arr!12549 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5253)) mapDefault!18411)))))

(declare-fun b!428358 () Bool)

(declare-fun res!251534 () Bool)

(assert (=> b!428358 (=> (not res!251534) (not e!253848))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!428358 (= res!251534 (and (= (size!12901 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12900 _keys!709) (size!12901 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!428359 () Bool)

(declare-fun res!251528 () Bool)

(assert (=> b!428359 (=> (not res!251528) (not e!253848))))

(declare-datatypes ((List!7410 0))(
  ( (Nil!7407) (Cons!7406 (h!8262 (_ BitVec 64)) (t!12908 List!7410)) )
))
(declare-fun arrayNoDuplicates!0 (array!26203 (_ BitVec 32) List!7410) Bool)

(assert (=> b!428359 (= res!251528 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7407))))

(declare-fun b!428361 () Bool)

(declare-fun res!251535 () Bool)

(assert (=> b!428361 (=> (not res!251535) (not e!253842))))

(assert (=> b!428361 (= res!251535 (arrayNoDuplicates!0 lt!195772 #b00000000000000000000000000000000 Nil!7407))))

(declare-fun b!428362 () Bool)

(declare-fun e!253841 () Bool)

(assert (=> b!428362 (= e!253841 true)))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!428362 (not (= (select (arr!12548 _keys!709) from!863) k0!794))))

(declare-datatypes ((Unit!12533 0))(
  ( (Unit!12534) )
))
(declare-fun lt!195775 () Unit!12533)

(declare-fun e!253846 () Unit!12533)

(assert (=> b!428362 (= lt!195775 e!253846)))

(declare-fun c!55322 () Bool)

(assert (=> b!428362 (= c!55322 (= (select (arr!12548 _keys!709) from!863) k0!794))))

(declare-datatypes ((tuple2!7360 0))(
  ( (tuple2!7361 (_1!3690 (_ BitVec 64)) (_2!3690 V!16029)) )
))
(declare-datatypes ((List!7411 0))(
  ( (Nil!7408) (Cons!7407 (h!8263 tuple2!7360) (t!12909 List!7411)) )
))
(declare-datatypes ((ListLongMap!6287 0))(
  ( (ListLongMap!6288 (toList!3159 List!7411)) )
))
(declare-fun lt!195770 () ListLongMap!6287)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!195773 () ListLongMap!6287)

(declare-fun +!1312 (ListLongMap!6287 tuple2!7360) ListLongMap!6287)

(declare-fun get!6226 (ValueCell!5253 V!16029) V!16029)

(declare-fun dynLambda!759 (Int (_ BitVec 64)) V!16029)

(assert (=> b!428362 (= lt!195773 (+!1312 lt!195770 (tuple2!7361 (select (arr!12548 _keys!709) from!863) (get!6226 (select (arr!12549 _values!549) from!863) (dynLambda!759 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!428363 () Bool)

(assert (=> b!428363 (= e!253847 tp_is_empty!11193)))

(declare-fun b!428364 () Bool)

(declare-fun e!253844 () Bool)

(assert (=> b!428364 (= e!253844 (not e!253841))))

(declare-fun res!251524 () Bool)

(assert (=> b!428364 (=> res!251524 e!253841)))

(assert (=> b!428364 (= res!251524 (not (validKeyInArray!0 (select (arr!12548 _keys!709) from!863))))))

(declare-fun lt!195771 () ListLongMap!6287)

(assert (=> b!428364 (= lt!195771 lt!195770)))

(declare-fun lt!195776 () ListLongMap!6287)

(declare-fun v!412 () V!16029)

(assert (=> b!428364 (= lt!195770 (+!1312 lt!195776 (tuple2!7361 k0!794 v!412)))))

(declare-fun minValue!515 () V!16029)

(declare-fun lt!195769 () array!26205)

(declare-fun zeroValue!515 () V!16029)

(declare-fun getCurrentListMapNoExtraKeys!1358 (array!26203 array!26205 (_ BitVec 32) (_ BitVec 32) V!16029 V!16029 (_ BitVec 32) Int) ListLongMap!6287)

(assert (=> b!428364 (= lt!195771 (getCurrentListMapNoExtraKeys!1358 lt!195772 lt!195769 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!428364 (= lt!195776 (getCurrentListMapNoExtraKeys!1358 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!195774 () Unit!12533)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!512 (array!26203 array!26205 (_ BitVec 32) (_ BitVec 32) V!16029 V!16029 (_ BitVec 32) (_ BitVec 64) V!16029 (_ BitVec 32) Int) Unit!12533)

(assert (=> b!428364 (= lt!195774 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!512 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!428365 () Bool)

(declare-fun res!251522 () Bool)

(assert (=> b!428365 (=> (not res!251522) (not e!253848))))

(assert (=> b!428365 (= res!251522 (or (= (select (arr!12548 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12548 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!428366 () Bool)

(declare-fun Unit!12535 () Unit!12533)

(assert (=> b!428366 (= e!253846 Unit!12535)))

(declare-fun lt!195777 () Unit!12533)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26203 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12533)

(assert (=> b!428366 (= lt!195777 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!428366 false))

(declare-fun b!428367 () Bool)

(declare-fun res!251523 () Bool)

(assert (=> b!428367 (=> (not res!251523) (not e!253848))))

(assert (=> b!428367 (= res!251523 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12900 _keys!709))))))

(declare-fun b!428368 () Bool)

(declare-fun res!251532 () Bool)

(assert (=> b!428368 (=> (not res!251532) (not e!253848))))

(assert (=> b!428368 (= res!251532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!18411 () Bool)

(declare-fun tp!35652 () Bool)

(assert (=> mapNonEmpty!18411 (= mapRes!18411 (and tp!35652 e!253843))))

(declare-fun mapValue!18411 () ValueCell!5253)

(declare-fun mapKey!18411 () (_ BitVec 32))

(declare-fun mapRest!18411 () (Array (_ BitVec 32) ValueCell!5253))

(assert (=> mapNonEmpty!18411 (= (arr!12549 _values!549) (store mapRest!18411 mapKey!18411 mapValue!18411))))

(declare-fun res!251531 () Bool)

(assert (=> start!39782 (=> (not res!251531) (not e!253848))))

(assert (=> start!39782 (= res!251531 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12900 _keys!709))))))

(assert (=> start!39782 e!253848))

(assert (=> start!39782 tp_is_empty!11193))

(assert (=> start!39782 tp!35651))

(assert (=> start!39782 true))

(declare-fun array_inv!9132 (array!26205) Bool)

(assert (=> start!39782 (and (array_inv!9132 _values!549) e!253849)))

(declare-fun array_inv!9133 (array!26203) Bool)

(assert (=> start!39782 (array_inv!9133 _keys!709)))

(declare-fun b!428360 () Bool)

(declare-fun res!251529 () Bool)

(assert (=> b!428360 (=> (not res!251529) (not e!253842))))

(assert (=> b!428360 (= res!251529 (bvsle from!863 i!563))))

(declare-fun b!428369 () Bool)

(declare-fun Unit!12536 () Unit!12533)

(assert (=> b!428369 (= e!253846 Unit!12536)))

(declare-fun mapIsEmpty!18411 () Bool)

(assert (=> mapIsEmpty!18411 mapRes!18411))

(declare-fun b!428370 () Bool)

(declare-fun res!251525 () Bool)

(assert (=> b!428370 (=> (not res!251525) (not e!253848))))

(declare-fun arrayContainsKey!0 (array!26203 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!428370 (= res!251525 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!428371 () Bool)

(assert (=> b!428371 (= e!253842 e!253844)))

(declare-fun res!251533 () Bool)

(assert (=> b!428371 (=> (not res!251533) (not e!253844))))

(assert (=> b!428371 (= res!251533 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!428371 (= lt!195773 (getCurrentListMapNoExtraKeys!1358 lt!195772 lt!195769 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!428371 (= lt!195769 (array!26206 (store (arr!12549 _values!549) i!563 (ValueCellFull!5253 v!412)) (size!12901 _values!549)))))

(declare-fun lt!195768 () ListLongMap!6287)

(assert (=> b!428371 (= lt!195768 (getCurrentListMapNoExtraKeys!1358 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (= (and start!39782 res!251531) b!428356))

(assert (= (and b!428356 res!251530) b!428358))

(assert (= (and b!428358 res!251534) b!428368))

(assert (= (and b!428368 res!251532) b!428359))

(assert (= (and b!428359 res!251528) b!428367))

(assert (= (and b!428367 res!251523) b!428355))

(assert (= (and b!428355 res!251526) b!428365))

(assert (= (and b!428365 res!251522) b!428370))

(assert (= (and b!428370 res!251525) b!428353))

(assert (= (and b!428353 res!251527) b!428361))

(assert (= (and b!428361 res!251535) b!428360))

(assert (= (and b!428360 res!251529) b!428371))

(assert (= (and b!428371 res!251533) b!428364))

(assert (= (and b!428364 (not res!251524)) b!428362))

(assert (= (and b!428362 c!55322) b!428366))

(assert (= (and b!428362 (not c!55322)) b!428369))

(assert (= (and b!428357 condMapEmpty!18411) mapIsEmpty!18411))

(assert (= (and b!428357 (not condMapEmpty!18411)) mapNonEmpty!18411))

(get-info :version)

(assert (= (and mapNonEmpty!18411 ((_ is ValueCellFull!5253) mapValue!18411)) b!428354))

(assert (= (and b!428357 ((_ is ValueCellFull!5253) mapDefault!18411)) b!428363))

(assert (= start!39782 b!428357))

(declare-fun b_lambda!9159 () Bool)

(assert (=> (not b_lambda!9159) (not b!428362)))

(declare-fun t!12907 () Bool)

(declare-fun tb!3455 () Bool)

(assert (=> (and start!39782 (= defaultEntry!557 defaultEntry!557) t!12907) tb!3455))

(declare-fun result!6429 () Bool)

(assert (=> tb!3455 (= result!6429 tp_is_empty!11193)))

(assert (=> b!428362 t!12907))

(declare-fun b_and!17761 () Bool)

(assert (= b_and!17759 (and (=> t!12907 result!6429) b_and!17761)))

(declare-fun m!416807 () Bool)

(assert (=> b!428364 m!416807))

(declare-fun m!416809 () Bool)

(assert (=> b!428364 m!416809))

(declare-fun m!416811 () Bool)

(assert (=> b!428364 m!416811))

(declare-fun m!416813 () Bool)

(assert (=> b!428364 m!416813))

(assert (=> b!428364 m!416807))

(declare-fun m!416815 () Bool)

(assert (=> b!428364 m!416815))

(declare-fun m!416817 () Bool)

(assert (=> b!428364 m!416817))

(declare-fun m!416819 () Bool)

(assert (=> b!428355 m!416819))

(declare-fun m!416821 () Bool)

(assert (=> b!428356 m!416821))

(declare-fun m!416823 () Bool)

(assert (=> b!428361 m!416823))

(declare-fun m!416825 () Bool)

(assert (=> b!428353 m!416825))

(declare-fun m!416827 () Bool)

(assert (=> b!428353 m!416827))

(declare-fun m!416829 () Bool)

(assert (=> b!428370 m!416829))

(declare-fun m!416831 () Bool)

(assert (=> b!428371 m!416831))

(declare-fun m!416833 () Bool)

(assert (=> b!428371 m!416833))

(declare-fun m!416835 () Bool)

(assert (=> b!428371 m!416835))

(declare-fun m!416837 () Bool)

(assert (=> b!428368 m!416837))

(declare-fun m!416839 () Bool)

(assert (=> b!428366 m!416839))

(declare-fun m!416841 () Bool)

(assert (=> start!39782 m!416841))

(declare-fun m!416843 () Bool)

(assert (=> start!39782 m!416843))

(declare-fun m!416845 () Bool)

(assert (=> b!428359 m!416845))

(declare-fun m!416847 () Bool)

(assert (=> b!428365 m!416847))

(assert (=> b!428362 m!416807))

(declare-fun m!416849 () Bool)

(assert (=> b!428362 m!416849))

(declare-fun m!416851 () Bool)

(assert (=> b!428362 m!416851))

(declare-fun m!416853 () Bool)

(assert (=> b!428362 m!416853))

(assert (=> b!428362 m!416853))

(assert (=> b!428362 m!416851))

(declare-fun m!416855 () Bool)

(assert (=> b!428362 m!416855))

(declare-fun m!416857 () Bool)

(assert (=> mapNonEmpty!18411 m!416857))

(check-sat (not b!428356) (not b!428366) (not b!428353) (not b!428362) (not b!428359) (not b_lambda!9159) tp_is_empty!11193 (not b_next!10041) (not b!428355) (not start!39782) b_and!17761 (not b!428371) (not b!428370) (not b!428368) (not b!428364) (not mapNonEmpty!18411) (not b!428361))
(check-sat b_and!17761 (not b_next!10041))
