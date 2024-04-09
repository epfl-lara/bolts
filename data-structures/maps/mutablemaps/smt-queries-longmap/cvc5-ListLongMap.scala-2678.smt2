; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39894 () Bool)

(assert start!39894)

(declare-fun b_free!10153 () Bool)

(declare-fun b_next!10153 () Bool)

(assert (=> start!39894 (= b_free!10153 (not b_next!10153))))

(declare-fun tp!35987 () Bool)

(declare-fun b_and!17983 () Bool)

(assert (=> start!39894 (= tp!35987 b_and!17983)))

(declare-fun b!431749 () Bool)

(declare-fun e!255447 () Bool)

(declare-fun e!255452 () Bool)

(assert (=> b!431749 (= e!255447 (not e!255452))))

(declare-fun res!253980 () Bool)

(assert (=> b!431749 (=> res!253980 e!255452)))

(declare-datatypes ((array!26423 0))(
  ( (array!26424 (arr!12658 (Array (_ BitVec 32) (_ BitVec 64))) (size!13010 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26423)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!431749 (= res!253980 (not (validKeyInArray!0 (select (arr!12658 _keys!709) from!863))))))

(declare-datatypes ((V!16179 0))(
  ( (V!16180 (val!5697 Int)) )
))
(declare-datatypes ((tuple2!7450 0))(
  ( (tuple2!7451 (_1!3735 (_ BitVec 64)) (_2!3735 V!16179)) )
))
(declare-datatypes ((List!7503 0))(
  ( (Nil!7500) (Cons!7499 (h!8355 tuple2!7450) (t!13113 List!7503)) )
))
(declare-datatypes ((ListLongMap!6377 0))(
  ( (ListLongMap!6378 (toList!3204 List!7503)) )
))
(declare-fun lt!197920 () ListLongMap!6377)

(declare-fun lt!197913 () ListLongMap!6377)

(assert (=> b!431749 (= lt!197920 lt!197913)))

(declare-fun lt!197915 () ListLongMap!6377)

(declare-fun lt!197921 () tuple2!7450)

(declare-fun +!1350 (ListLongMap!6377 tuple2!7450) ListLongMap!6377)

(assert (=> b!431749 (= lt!197913 (+!1350 lt!197915 lt!197921))))

(declare-fun minValue!515 () V!16179)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5309 0))(
  ( (ValueCellFull!5309 (v!7940 V!16179)) (EmptyCell!5309) )
))
(declare-datatypes ((array!26425 0))(
  ( (array!26426 (arr!12659 (Array (_ BitVec 32) ValueCell!5309)) (size!13011 (_ BitVec 32))) )
))
(declare-fun lt!197911 () array!26425)

(declare-fun zeroValue!515 () V!16179)

(declare-fun lt!197918 () array!26423)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1398 (array!26423 array!26425 (_ BitVec 32) (_ BitVec 32) V!16179 V!16179 (_ BitVec 32) Int) ListLongMap!6377)

(assert (=> b!431749 (= lt!197920 (getCurrentListMapNoExtraKeys!1398 lt!197918 lt!197911 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!16179)

(assert (=> b!431749 (= lt!197921 (tuple2!7451 k!794 v!412))))

(declare-fun _values!549 () array!26425)

(assert (=> b!431749 (= lt!197915 (getCurrentListMapNoExtraKeys!1398 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!12703 0))(
  ( (Unit!12704) )
))
(declare-fun lt!197916 () Unit!12703)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!542 (array!26423 array!26425 (_ BitVec 32) (_ BitVec 32) V!16179 V!16179 (_ BitVec 32) (_ BitVec 64) V!16179 (_ BitVec 32) Int) Unit!12703)

(assert (=> b!431749 (= lt!197916 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!542 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!431750 () Bool)

(declare-fun res!253977 () Bool)

(declare-fun e!255454 () Bool)

(assert (=> b!431750 (=> (not res!253977) (not e!255454))))

(declare-fun arrayContainsKey!0 (array!26423 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!431750 (= res!253977 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!431751 () Bool)

(declare-fun res!253971 () Bool)

(declare-fun e!255446 () Bool)

(assert (=> b!431751 (=> (not res!253971) (not e!255446))))

(declare-datatypes ((List!7504 0))(
  ( (Nil!7501) (Cons!7500 (h!8356 (_ BitVec 64)) (t!13114 List!7504)) )
))
(declare-fun arrayNoDuplicates!0 (array!26423 (_ BitVec 32) List!7504) Bool)

(assert (=> b!431751 (= res!253971 (arrayNoDuplicates!0 lt!197918 #b00000000000000000000000000000000 Nil!7501))))

(declare-fun b!431752 () Bool)

(declare-fun e!255453 () Bool)

(declare-fun tp_is_empty!11305 () Bool)

(assert (=> b!431752 (= e!255453 tp_is_empty!11305)))

(declare-fun b!431753 () Bool)

(declare-fun e!255448 () Unit!12703)

(declare-fun Unit!12705 () Unit!12703)

(assert (=> b!431753 (= e!255448 Unit!12705)))

(declare-fun res!253966 () Bool)

(assert (=> start!39894 (=> (not res!253966) (not e!255454))))

(assert (=> start!39894 (= res!253966 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13010 _keys!709))))))

(assert (=> start!39894 e!255454))

(assert (=> start!39894 tp_is_empty!11305))

(assert (=> start!39894 tp!35987))

(assert (=> start!39894 true))

(declare-fun e!255450 () Bool)

(declare-fun array_inv!9204 (array!26425) Bool)

(assert (=> start!39894 (and (array_inv!9204 _values!549) e!255450)))

(declare-fun array_inv!9205 (array!26423) Bool)

(assert (=> start!39894 (array_inv!9205 _keys!709)))

(declare-fun b!431754 () Bool)

(declare-fun e!255451 () Bool)

(assert (=> b!431754 (= e!255451 tp_is_empty!11305)))

(declare-fun mapNonEmpty!18579 () Bool)

(declare-fun mapRes!18579 () Bool)

(declare-fun tp!35988 () Bool)

(assert (=> mapNonEmpty!18579 (= mapRes!18579 (and tp!35988 e!255453))))

(declare-fun mapKey!18579 () (_ BitVec 32))

(declare-fun mapValue!18579 () ValueCell!5309)

(declare-fun mapRest!18579 () (Array (_ BitVec 32) ValueCell!5309))

(assert (=> mapNonEmpty!18579 (= (arr!12659 _values!549) (store mapRest!18579 mapKey!18579 mapValue!18579))))

(declare-fun b!431755 () Bool)

(declare-fun res!253975 () Bool)

(assert (=> b!431755 (=> (not res!253975) (not e!255446))))

(assert (=> b!431755 (= res!253975 (bvsle from!863 i!563))))

(declare-fun b!431756 () Bool)

(declare-fun res!253979 () Bool)

(assert (=> b!431756 (=> (not res!253979) (not e!255454))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!431756 (= res!253979 (validMask!0 mask!1025))))

(declare-fun b!431757 () Bool)

(declare-fun e!255445 () Bool)

(assert (=> b!431757 (= e!255452 e!255445)))

(declare-fun res!253970 () Bool)

(assert (=> b!431757 (=> res!253970 e!255445)))

(assert (=> b!431757 (= res!253970 (= k!794 (select (arr!12658 _keys!709) from!863)))))

(assert (=> b!431757 (not (= (select (arr!12658 _keys!709) from!863) k!794))))

(declare-fun lt!197917 () Unit!12703)

(assert (=> b!431757 (= lt!197917 e!255448)))

(declare-fun c!55490 () Bool)

(assert (=> b!431757 (= c!55490 (= (select (arr!12658 _keys!709) from!863) k!794))))

(declare-fun lt!197914 () ListLongMap!6377)

(declare-fun lt!197922 () ListLongMap!6377)

(assert (=> b!431757 (= lt!197914 lt!197922)))

(declare-fun lt!197919 () tuple2!7450)

(assert (=> b!431757 (= lt!197922 (+!1350 lt!197913 lt!197919))))

(declare-fun lt!197912 () V!16179)

(assert (=> b!431757 (= lt!197919 (tuple2!7451 (select (arr!12658 _keys!709) from!863) lt!197912))))

(declare-fun get!6295 (ValueCell!5309 V!16179) V!16179)

(declare-fun dynLambda!790 (Int (_ BitVec 64)) V!16179)

(assert (=> b!431757 (= lt!197912 (get!6295 (select (arr!12659 _values!549) from!863) (dynLambda!790 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431758 () Bool)

(assert (=> b!431758 (= e!255450 (and e!255451 mapRes!18579))))

(declare-fun condMapEmpty!18579 () Bool)

(declare-fun mapDefault!18579 () ValueCell!5309)

