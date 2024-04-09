; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39804 () Bool)

(assert start!39804)

(declare-fun b_free!10063 () Bool)

(declare-fun b_next!10063 () Bool)

(assert (=> start!39804 (= b_free!10063 (not b_next!10063))))

(declare-fun tp!35717 () Bool)

(declare-fun b_and!17803 () Bool)

(assert (=> start!39804 (= tp!35717 b_and!17803)))

(declare-fun b!429002 () Bool)

(declare-fun res!251993 () Bool)

(declare-fun e!254139 () Bool)

(assert (=> b!429002 (=> (not res!251993) (not e!254139))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!26247 0))(
  ( (array!26248 (arr!12570 (Array (_ BitVec 32) (_ BitVec 64))) (size!12922 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26247)

(assert (=> b!429002 (= res!251993 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12922 _keys!709))))))

(declare-fun b!429003 () Bool)

(declare-fun res!251992 () Bool)

(declare-fun e!254146 () Bool)

(assert (=> b!429003 (=> (not res!251992) (not e!254146))))

(declare-fun lt!196101 () array!26247)

(declare-datatypes ((List!7425 0))(
  ( (Nil!7422) (Cons!7421 (h!8277 (_ BitVec 64)) (t!12945 List!7425)) )
))
(declare-fun arrayNoDuplicates!0 (array!26247 (_ BitVec 32) List!7425) Bool)

(assert (=> b!429003 (= res!251992 (arrayNoDuplicates!0 lt!196101 #b00000000000000000000000000000000 Nil!7422))))

(declare-fun b!429004 () Bool)

(declare-fun res!251997 () Bool)

(assert (=> b!429004 (=> (not res!251997) (not e!254139))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16059 0))(
  ( (V!16060 (val!5652 Int)) )
))
(declare-datatypes ((ValueCell!5264 0))(
  ( (ValueCellFull!5264 (v!7895 V!16059)) (EmptyCell!5264) )
))
(declare-datatypes ((array!26249 0))(
  ( (array!26250 (arr!12571 (Array (_ BitVec 32) ValueCell!5264)) (size!12923 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26249)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!429004 (= res!251997 (and (= (size!12923 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12922 _keys!709) (size!12923 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!429005 () Bool)

(declare-fun e!254145 () Bool)

(declare-fun e!254138 () Bool)

(assert (=> b!429005 (= e!254145 (not e!254138))))

(declare-fun res!251996 () Bool)

(assert (=> b!429005 (=> res!251996 e!254138)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!429005 (= res!251996 (not (validKeyInArray!0 (select (arr!12570 _keys!709) from!863))))))

(declare-datatypes ((tuple2!7376 0))(
  ( (tuple2!7377 (_1!3698 (_ BitVec 64)) (_2!3698 V!16059)) )
))
(declare-datatypes ((List!7426 0))(
  ( (Nil!7423) (Cons!7422 (h!8278 tuple2!7376) (t!12946 List!7426)) )
))
(declare-datatypes ((ListLongMap!6303 0))(
  ( (ListLongMap!6304 (toList!3167 List!7426)) )
))
(declare-fun lt!196106 () ListLongMap!6303)

(declare-fun lt!196104 () ListLongMap!6303)

(assert (=> b!429005 (= lt!196106 lt!196104)))

(declare-fun lt!196105 () ListLongMap!6303)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!16059)

(declare-fun +!1317 (ListLongMap!6303 tuple2!7376) ListLongMap!6303)

(assert (=> b!429005 (= lt!196104 (+!1317 lt!196105 (tuple2!7377 k!794 v!412)))))

(declare-fun minValue!515 () V!16059)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16059)

(declare-fun lt!196107 () array!26249)

(declare-fun getCurrentListMapNoExtraKeys!1366 (array!26247 array!26249 (_ BitVec 32) (_ BitVec 32) V!16059 V!16059 (_ BitVec 32) Int) ListLongMap!6303)

(assert (=> b!429005 (= lt!196106 (getCurrentListMapNoExtraKeys!1366 lt!196101 lt!196107 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!429005 (= lt!196105 (getCurrentListMapNoExtraKeys!1366 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12558 0))(
  ( (Unit!12559) )
))
(declare-fun lt!196100 () Unit!12558)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!517 (array!26247 array!26249 (_ BitVec 32) (_ BitVec 32) V!16059 V!16059 (_ BitVec 32) (_ BitVec 64) V!16059 (_ BitVec 32) Int) Unit!12558)

(assert (=> b!429005 (= lt!196100 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!517 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!429006 () Bool)

(assert (=> b!429006 (= e!254146 e!254145)))

(declare-fun res!251990 () Bool)

(assert (=> b!429006 (=> (not res!251990) (not e!254145))))

(assert (=> b!429006 (= res!251990 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!196098 () ListLongMap!6303)

(assert (=> b!429006 (= lt!196098 (getCurrentListMapNoExtraKeys!1366 lt!196101 lt!196107 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!429006 (= lt!196107 (array!26250 (store (arr!12571 _values!549) i!563 (ValueCellFull!5264 v!412)) (size!12923 _values!549)))))

(declare-fun lt!196102 () ListLongMap!6303)

(assert (=> b!429006 (= lt!196102 (getCurrentListMapNoExtraKeys!1366 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!429007 () Bool)

(declare-fun e!254142 () Unit!12558)

(declare-fun Unit!12560 () Unit!12558)

(assert (=> b!429007 (= e!254142 Unit!12560)))

(declare-fun b!429008 () Bool)

(declare-fun res!251991 () Bool)

(assert (=> b!429008 (=> (not res!251991) (not e!254146))))

(assert (=> b!429008 (= res!251991 (bvsle from!863 i!563))))

(declare-fun b!429009 () Bool)

(declare-fun res!251994 () Bool)

(assert (=> b!429009 (=> (not res!251994) (not e!254139))))

(assert (=> b!429009 (= res!251994 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7422))))

(declare-fun b!429010 () Bool)

(assert (=> b!429010 (= e!254139 e!254146)))

(declare-fun res!251987 () Bool)

(assert (=> b!429010 (=> (not res!251987) (not e!254146))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26247 (_ BitVec 32)) Bool)

(assert (=> b!429010 (= res!251987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!196101 mask!1025))))

(assert (=> b!429010 (= lt!196101 (array!26248 (store (arr!12570 _keys!709) i!563 k!794) (size!12922 _keys!709)))))

(declare-fun b!429011 () Bool)

(assert (=> b!429011 (= e!254138 true)))

(assert (=> b!429011 (not (= (select (arr!12570 _keys!709) from!863) k!794))))

(declare-fun lt!196099 () Unit!12558)

(assert (=> b!429011 (= lt!196099 e!254142)))

(declare-fun c!55355 () Bool)

(assert (=> b!429011 (= c!55355 (= (select (arr!12570 _keys!709) from!863) k!794))))

(declare-fun get!6238 (ValueCell!5264 V!16059) V!16059)

(declare-fun dynLambda!763 (Int (_ BitVec 64)) V!16059)

(assert (=> b!429011 (= lt!196098 (+!1317 lt!196104 (tuple2!7377 (select (arr!12570 _keys!709) from!863) (get!6238 (select (arr!12571 _values!549) from!863) (dynLambda!763 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun res!251989 () Bool)

(assert (=> start!39804 (=> (not res!251989) (not e!254139))))

(assert (=> start!39804 (= res!251989 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12922 _keys!709))))))

(assert (=> start!39804 e!254139))

(declare-fun tp_is_empty!11215 () Bool)

(assert (=> start!39804 tp_is_empty!11215))

(assert (=> start!39804 tp!35717))

(assert (=> start!39804 true))

(declare-fun e!254141 () Bool)

(declare-fun array_inv!9146 (array!26249) Bool)

(assert (=> start!39804 (and (array_inv!9146 _values!549) e!254141)))

(declare-fun array_inv!9147 (array!26247) Bool)

(assert (=> start!39804 (array_inv!9147 _keys!709)))

(declare-fun b!429012 () Bool)

(declare-fun res!251984 () Bool)

(assert (=> b!429012 (=> (not res!251984) (not e!254139))))

(assert (=> b!429012 (= res!251984 (validKeyInArray!0 k!794))))

(declare-fun b!429013 () Bool)

(declare-fun e!254144 () Bool)

(assert (=> b!429013 (= e!254144 tp_is_empty!11215)))

(declare-fun b!429014 () Bool)

(declare-fun res!251988 () Bool)

(assert (=> b!429014 (=> (not res!251988) (not e!254139))))

(declare-fun arrayContainsKey!0 (array!26247 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!429014 (= res!251988 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!429015 () Bool)

(declare-fun e!254140 () Bool)

(assert (=> b!429015 (= e!254140 tp_is_empty!11215)))

(declare-fun b!429016 () Bool)

(declare-fun res!251985 () Bool)

(assert (=> b!429016 (=> (not res!251985) (not e!254139))))

(assert (=> b!429016 (= res!251985 (or (= (select (arr!12570 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12570 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18444 () Bool)

(declare-fun mapRes!18444 () Bool)

(assert (=> mapIsEmpty!18444 mapRes!18444))

(declare-fun b!429017 () Bool)

(declare-fun Unit!12561 () Unit!12558)

(assert (=> b!429017 (= e!254142 Unit!12561)))

(declare-fun lt!196103 () Unit!12558)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26247 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12558)

(assert (=> b!429017 (= lt!196103 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!429017 false))

(declare-fun b!429018 () Bool)

(declare-fun res!251986 () Bool)

(assert (=> b!429018 (=> (not res!251986) (not e!254139))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!429018 (= res!251986 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!18444 () Bool)

(declare-fun tp!35718 () Bool)

(assert (=> mapNonEmpty!18444 (= mapRes!18444 (and tp!35718 e!254144))))

(declare-fun mapRest!18444 () (Array (_ BitVec 32) ValueCell!5264))

(declare-fun mapValue!18444 () ValueCell!5264)

(declare-fun mapKey!18444 () (_ BitVec 32))

(assert (=> mapNonEmpty!18444 (= (arr!12571 _values!549) (store mapRest!18444 mapKey!18444 mapValue!18444))))

(declare-fun b!429019 () Bool)

(declare-fun res!251995 () Bool)

(assert (=> b!429019 (=> (not res!251995) (not e!254139))))

(assert (=> b!429019 (= res!251995 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!429020 () Bool)

(assert (=> b!429020 (= e!254141 (and e!254140 mapRes!18444))))

(declare-fun condMapEmpty!18444 () Bool)

(declare-fun mapDefault!18444 () ValueCell!5264)

