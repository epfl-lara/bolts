; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39834 () Bool)

(assert start!39834)

(declare-fun b_free!10093 () Bool)

(declare-fun b_next!10093 () Bool)

(assert (=> start!39834 (= b_free!10093 (not b_next!10093))))

(declare-fun tp!35807 () Bool)

(declare-fun b_and!17863 () Bool)

(assert (=> start!39834 (= tp!35807 b_and!17863)))

(declare-fun mapIsEmpty!18489 () Bool)

(declare-fun mapRes!18489 () Bool)

(assert (=> mapIsEmpty!18489 mapRes!18489))

(declare-fun b!429890 () Bool)

(declare-fun res!252626 () Bool)

(declare-fun e!254554 () Bool)

(assert (=> b!429890 (=> (not res!252626) (not e!254554))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!429890 (= res!252626 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!18489 () Bool)

(declare-fun tp!35808 () Bool)

(declare-fun e!254553 () Bool)

(assert (=> mapNonEmpty!18489 (= mapRes!18489 (and tp!35808 e!254553))))

(declare-datatypes ((V!16099 0))(
  ( (V!16100 (val!5667 Int)) )
))
(declare-datatypes ((ValueCell!5279 0))(
  ( (ValueCellFull!5279 (v!7910 V!16099)) (EmptyCell!5279) )
))
(declare-fun mapRest!18489 () (Array (_ BitVec 32) ValueCell!5279))

(declare-fun mapValue!18489 () ValueCell!5279)

(declare-fun mapKey!18489 () (_ BitVec 32))

(declare-datatypes ((array!26307 0))(
  ( (array!26308 (arr!12600 (Array (_ BitVec 32) ValueCell!5279)) (size!12952 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26307)

(assert (=> mapNonEmpty!18489 (= (arr!12600 _values!549) (store mapRest!18489 mapKey!18489 mapValue!18489))))

(declare-fun b!429891 () Bool)

(declare-fun e!254549 () Bool)

(assert (=> b!429891 (= e!254554 e!254549)))

(declare-fun res!252617 () Bool)

(assert (=> b!429891 (=> (not res!252617) (not e!254549))))

(declare-datatypes ((array!26309 0))(
  ( (array!26310 (arr!12601 (Array (_ BitVec 32) (_ BitVec 64))) (size!12953 (_ BitVec 32))) )
))
(declare-fun lt!196567 () array!26309)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26309 (_ BitVec 32)) Bool)

(assert (=> b!429891 (= res!252617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!196567 mask!1025))))

(declare-fun _keys!709 () array!26309)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!429891 (= lt!196567 (array!26310 (store (arr!12601 _keys!709) i!563 k!794) (size!12953 _keys!709)))))

(declare-fun b!429892 () Bool)

(declare-fun res!252627 () Bool)

(assert (=> b!429892 (=> (not res!252627) (not e!254554))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!429892 (= res!252627 (and (= (size!12952 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12953 _keys!709) (size!12952 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!429893 () Bool)

(declare-fun e!254547 () Bool)

(assert (=> b!429893 (= e!254549 e!254547)))

(declare-fun res!252630 () Bool)

(assert (=> b!429893 (=> (not res!252630) (not e!254547))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!429893 (= res!252630 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!196572 () array!26307)

(declare-fun zeroValue!515 () V!16099)

(declare-datatypes ((tuple2!7398 0))(
  ( (tuple2!7399 (_1!3709 (_ BitVec 64)) (_2!3709 V!16099)) )
))
(declare-datatypes ((List!7451 0))(
  ( (Nil!7448) (Cons!7447 (h!8303 tuple2!7398) (t!13001 List!7451)) )
))
(declare-datatypes ((ListLongMap!6325 0))(
  ( (ListLongMap!6326 (toList!3178 List!7451)) )
))
(declare-fun lt!196571 () ListLongMap!6325)

(declare-fun minValue!515 () V!16099)

(declare-fun getCurrentListMapNoExtraKeys!1375 (array!26309 array!26307 (_ BitVec 32) (_ BitVec 32) V!16099 V!16099 (_ BitVec 32) Int) ListLongMap!6325)

(assert (=> b!429893 (= lt!196571 (getCurrentListMapNoExtraKeys!1375 lt!196567 lt!196572 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16099)

(assert (=> b!429893 (= lt!196572 (array!26308 (store (arr!12600 _values!549) i!563 (ValueCellFull!5279 v!412)) (size!12952 _values!549)))))

(declare-fun lt!196564 () ListLongMap!6325)

(assert (=> b!429893 (= lt!196564 (getCurrentListMapNoExtraKeys!1375 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!429894 () Bool)

(declare-fun e!254548 () Bool)

(assert (=> b!429894 (= e!254548 true)))

(declare-fun lt!196565 () ListLongMap!6325)

(declare-fun lt!196561 () tuple2!7398)

(declare-fun lt!196566 () tuple2!7398)

(declare-fun lt!196562 () ListLongMap!6325)

(declare-fun +!1327 (ListLongMap!6325 tuple2!7398) ListLongMap!6325)

(assert (=> b!429894 (= lt!196565 (+!1327 (+!1327 lt!196562 lt!196566) lt!196561))))

(declare-datatypes ((Unit!12612 0))(
  ( (Unit!12613) )
))
(declare-fun lt!196569 () Unit!12612)

(declare-fun lt!196563 () V!16099)

(declare-fun addCommutativeForDiffKeys!346 (ListLongMap!6325 (_ BitVec 64) V!16099 (_ BitVec 64) V!16099) Unit!12612)

(assert (=> b!429894 (= lt!196569 (addCommutativeForDiffKeys!346 lt!196562 k!794 v!412 (select (arr!12601 _keys!709) from!863) lt!196563))))

(declare-fun b!429895 () Bool)

(declare-fun res!252621 () Bool)

(assert (=> b!429895 (=> (not res!252621) (not e!254554))))

(declare-fun arrayContainsKey!0 (array!26309 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!429895 (= res!252621 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!429896 () Bool)

(declare-fun res!252620 () Bool)

(assert (=> b!429896 (=> (not res!252620) (not e!254554))))

(assert (=> b!429896 (= res!252620 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12953 _keys!709))))))

(declare-fun res!252618 () Bool)

(assert (=> start!39834 (=> (not res!252618) (not e!254554))))

(assert (=> start!39834 (= res!252618 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12953 _keys!709))))))

(assert (=> start!39834 e!254554))

(declare-fun tp_is_empty!11245 () Bool)

(assert (=> start!39834 tp_is_empty!11245))

(assert (=> start!39834 tp!35807))

(assert (=> start!39834 true))

(declare-fun e!254545 () Bool)

(declare-fun array_inv!9166 (array!26307) Bool)

(assert (=> start!39834 (and (array_inv!9166 _values!549) e!254545)))

(declare-fun array_inv!9167 (array!26309) Bool)

(assert (=> start!39834 (array_inv!9167 _keys!709)))

(declare-fun b!429889 () Bool)

(declare-fun e!254546 () Bool)

(assert (=> b!429889 (= e!254546 tp_is_empty!11245)))

(declare-fun b!429897 () Bool)

(declare-fun e!254551 () Unit!12612)

(declare-fun Unit!12614 () Unit!12612)

(assert (=> b!429897 (= e!254551 Unit!12614)))

(declare-fun b!429898 () Bool)

(declare-fun res!252628 () Bool)

(assert (=> b!429898 (=> (not res!252628) (not e!254554))))

(declare-datatypes ((List!7452 0))(
  ( (Nil!7449) (Cons!7448 (h!8304 (_ BitVec 64)) (t!13002 List!7452)) )
))
(declare-fun arrayNoDuplicates!0 (array!26309 (_ BitVec 32) List!7452) Bool)

(assert (=> b!429898 (= res!252628 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7449))))

(declare-fun b!429899 () Bool)

(declare-fun res!252629 () Bool)

(assert (=> b!429899 (=> (not res!252629) (not e!254554))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!429899 (= res!252629 (validMask!0 mask!1025))))

(declare-fun b!429900 () Bool)

(declare-fun Unit!12615 () Unit!12612)

(assert (=> b!429900 (= e!254551 Unit!12615)))

(declare-fun lt!196570 () Unit!12612)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26309 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12612)

(assert (=> b!429900 (= lt!196570 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!429900 false))

(declare-fun b!429901 () Bool)

(declare-fun e!254550 () Bool)

(assert (=> b!429901 (= e!254550 e!254548)))

(declare-fun res!252624 () Bool)

(assert (=> b!429901 (=> res!252624 e!254548)))

(assert (=> b!429901 (= res!252624 (= k!794 (select (arr!12601 _keys!709) from!863)))))

(assert (=> b!429901 (not (= (select (arr!12601 _keys!709) from!863) k!794))))

(declare-fun lt!196558 () Unit!12612)

(assert (=> b!429901 (= lt!196558 e!254551)))

(declare-fun c!55400 () Bool)

(assert (=> b!429901 (= c!55400 (= (select (arr!12601 _keys!709) from!863) k!794))))

(assert (=> b!429901 (= lt!196571 lt!196565)))

(declare-fun lt!196568 () ListLongMap!6325)

(assert (=> b!429901 (= lt!196565 (+!1327 lt!196568 lt!196566))))

(assert (=> b!429901 (= lt!196566 (tuple2!7399 (select (arr!12601 _keys!709) from!863) lt!196563))))

(declare-fun get!6258 (ValueCell!5279 V!16099) V!16099)

(declare-fun dynLambda!773 (Int (_ BitVec 64)) V!16099)

(assert (=> b!429901 (= lt!196563 (get!6258 (select (arr!12600 _values!549) from!863) (dynLambda!773 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!429902 () Bool)

(assert (=> b!429902 (= e!254545 (and e!254546 mapRes!18489))))

(declare-fun condMapEmpty!18489 () Bool)

(declare-fun mapDefault!18489 () ValueCell!5279)

