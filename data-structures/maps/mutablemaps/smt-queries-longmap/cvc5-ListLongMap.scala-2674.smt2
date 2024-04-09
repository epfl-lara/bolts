; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39870 () Bool)

(assert start!39870)

(declare-fun b_free!10129 () Bool)

(declare-fun b_next!10129 () Bool)

(assert (=> start!39870 (= b_free!10129 (not b_next!10129))))

(declare-fun tp!35916 () Bool)

(declare-fun b_and!17935 () Bool)

(assert (=> start!39870 (= tp!35916 b_and!17935)))

(declare-fun b!431005 () Bool)

(declare-datatypes ((Unit!12667 0))(
  ( (Unit!12668) )
))
(declare-fun e!255088 () Unit!12667)

(declare-fun Unit!12669 () Unit!12667)

(assert (=> b!431005 (= e!255088 Unit!12669)))

(declare-fun b!431006 () Bool)

(declare-fun res!253436 () Bool)

(declare-fun e!255085 () Bool)

(assert (=> b!431006 (=> (not res!253436) (not e!255085))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!431006 (= res!253436 (validKeyInArray!0 k!794))))

(declare-fun b!431007 () Bool)

(declare-fun e!255094 () Bool)

(declare-fun e!255086 () Bool)

(assert (=> b!431007 (= e!255094 e!255086)))

(declare-fun res!253440 () Bool)

(assert (=> b!431007 (=> (not res!253440) (not e!255086))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!431007 (= res!253440 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((array!26375 0))(
  ( (array!26376 (arr!12634 (Array (_ BitVec 32) (_ BitVec 64))) (size!12986 (_ BitVec 32))) )
))
(declare-fun lt!197374 () array!26375)

(declare-datatypes ((V!16147 0))(
  ( (V!16148 (val!5685 Int)) )
))
(declare-fun minValue!515 () V!16147)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16147)

(declare-datatypes ((ValueCell!5297 0))(
  ( (ValueCellFull!5297 (v!7928 V!16147)) (EmptyCell!5297) )
))
(declare-datatypes ((array!26377 0))(
  ( (array!26378 (arr!12635 (Array (_ BitVec 32) ValueCell!5297)) (size!12987 (_ BitVec 32))) )
))
(declare-fun lt!197382 () array!26377)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7428 0))(
  ( (tuple2!7429 (_1!3724 (_ BitVec 64)) (_2!3724 V!16147)) )
))
(declare-datatypes ((List!7481 0))(
  ( (Nil!7478) (Cons!7477 (h!8333 tuple2!7428) (t!13067 List!7481)) )
))
(declare-datatypes ((ListLongMap!6355 0))(
  ( (ListLongMap!6356 (toList!3193 List!7481)) )
))
(declare-fun lt!197368 () ListLongMap!6355)

(declare-fun getCurrentListMapNoExtraKeys!1388 (array!26375 array!26377 (_ BitVec 32) (_ BitVec 32) V!16147 V!16147 (_ BitVec 32) Int) ListLongMap!6355)

(assert (=> b!431007 (= lt!197368 (getCurrentListMapNoExtraKeys!1388 lt!197374 lt!197382 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26377)

(declare-fun v!412 () V!16147)

(assert (=> b!431007 (= lt!197382 (array!26378 (store (arr!12635 _values!549) i!563 (ValueCellFull!5297 v!412)) (size!12987 _values!549)))))

(declare-fun lt!197372 () ListLongMap!6355)

(declare-fun _keys!709 () array!26375)

(assert (=> b!431007 (= lt!197372 (getCurrentListMapNoExtraKeys!1388 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!18543 () Bool)

(declare-fun mapRes!18543 () Bool)

(declare-fun tp!35915 () Bool)

(declare-fun e!255091 () Bool)

(assert (=> mapNonEmpty!18543 (= mapRes!18543 (and tp!35915 e!255091))))

(declare-fun mapKey!18543 () (_ BitVec 32))

(declare-fun mapValue!18543 () ValueCell!5297)

(declare-fun mapRest!18543 () (Array (_ BitVec 32) ValueCell!5297))

(assert (=> mapNonEmpty!18543 (= (arr!12635 _values!549) (store mapRest!18543 mapKey!18543 mapValue!18543))))

(declare-fun b!431008 () Bool)

(declare-fun res!253432 () Bool)

(assert (=> b!431008 (=> (not res!253432) (not e!255085))))

(assert (=> b!431008 (= res!253432 (or (= (select (arr!12634 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12634 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431010 () Bool)

(assert (=> b!431010 (= e!255085 e!255094)))

(declare-fun res!253434 () Bool)

(assert (=> b!431010 (=> (not res!253434) (not e!255094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26375 (_ BitVec 32)) Bool)

(assert (=> b!431010 (= res!253434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!197374 mask!1025))))

(assert (=> b!431010 (= lt!197374 (array!26376 (store (arr!12634 _keys!709) i!563 k!794) (size!12986 _keys!709)))))

(declare-fun b!431011 () Bool)

(declare-fun res!253428 () Bool)

(assert (=> b!431011 (=> (not res!253428) (not e!255085))))

(assert (=> b!431011 (= res!253428 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12986 _keys!709))))))

(declare-fun b!431012 () Bool)

(declare-fun res!253427 () Bool)

(assert (=> b!431012 (=> (not res!253427) (not e!255085))))

(declare-fun arrayContainsKey!0 (array!26375 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!431012 (= res!253427 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!431013 () Bool)

(declare-fun res!253433 () Bool)

(assert (=> b!431013 (=> (not res!253433) (not e!255085))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!431013 (= res!253433 (validMask!0 mask!1025))))

(declare-fun b!431014 () Bool)

(declare-fun e!255087 () Bool)

(assert (=> b!431014 (= e!255086 (not e!255087))))

(declare-fun res!253430 () Bool)

(assert (=> b!431014 (=> res!253430 e!255087)))

(assert (=> b!431014 (= res!253430 (not (validKeyInArray!0 (select (arr!12634 _keys!709) from!863))))))

(declare-fun lt!197378 () ListLongMap!6355)

(declare-fun lt!197381 () ListLongMap!6355)

(assert (=> b!431014 (= lt!197378 lt!197381)))

(declare-fun lt!197369 () ListLongMap!6355)

(declare-fun lt!197370 () tuple2!7428)

(declare-fun +!1341 (ListLongMap!6355 tuple2!7428) ListLongMap!6355)

(assert (=> b!431014 (= lt!197381 (+!1341 lt!197369 lt!197370))))

(assert (=> b!431014 (= lt!197378 (getCurrentListMapNoExtraKeys!1388 lt!197374 lt!197382 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!431014 (= lt!197370 (tuple2!7429 k!794 v!412))))

(assert (=> b!431014 (= lt!197369 (getCurrentListMapNoExtraKeys!1388 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!197376 () Unit!12667)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!535 (array!26375 array!26377 (_ BitVec 32) (_ BitVec 32) V!16147 V!16147 (_ BitVec 32) (_ BitVec 64) V!16147 (_ BitVec 32) Int) Unit!12667)

(assert (=> b!431014 (= lt!197376 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!535 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!431015 () Bool)

(declare-fun e!255089 () Bool)

(assert (=> b!431015 (= e!255087 e!255089)))

(declare-fun res!253437 () Bool)

(assert (=> b!431015 (=> res!253437 e!255089)))

(assert (=> b!431015 (= res!253437 (= k!794 (select (arr!12634 _keys!709) from!863)))))

(assert (=> b!431015 (not (= (select (arr!12634 _keys!709) from!863) k!794))))

(declare-fun lt!197375 () Unit!12667)

(assert (=> b!431015 (= lt!197375 e!255088)))

(declare-fun c!55454 () Bool)

(assert (=> b!431015 (= c!55454 (= (select (arr!12634 _keys!709) from!863) k!794))))

(declare-fun lt!197373 () ListLongMap!6355)

(assert (=> b!431015 (= lt!197368 lt!197373)))

(declare-fun lt!197379 () tuple2!7428)

(assert (=> b!431015 (= lt!197373 (+!1341 lt!197381 lt!197379))))

(declare-fun lt!197377 () V!16147)

(assert (=> b!431015 (= lt!197379 (tuple2!7429 (select (arr!12634 _keys!709) from!863) lt!197377))))

(declare-fun get!6280 (ValueCell!5297 V!16147) V!16147)

(declare-fun dynLambda!783 (Int (_ BitVec 64)) V!16147)

(assert (=> b!431015 (= lt!197377 (get!6280 (select (arr!12635 _values!549) from!863) (dynLambda!783 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431016 () Bool)

(declare-fun res!253438 () Bool)

(assert (=> b!431016 (=> (not res!253438) (not e!255085))))

(assert (=> b!431016 (= res!253438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!431017 () Bool)

(declare-fun res!253431 () Bool)

(assert (=> b!431017 (=> (not res!253431) (not e!255085))))

(declare-datatypes ((List!7482 0))(
  ( (Nil!7479) (Cons!7478 (h!8334 (_ BitVec 64)) (t!13068 List!7482)) )
))
(declare-fun arrayNoDuplicates!0 (array!26375 (_ BitVec 32) List!7482) Bool)

(assert (=> b!431017 (= res!253431 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7479))))

(declare-fun b!431018 () Bool)

(declare-fun e!255093 () Bool)

(declare-fun e!255092 () Bool)

(assert (=> b!431018 (= e!255093 (and e!255092 mapRes!18543))))

(declare-fun condMapEmpty!18543 () Bool)

(declare-fun mapDefault!18543 () ValueCell!5297)

