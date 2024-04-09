; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39940 () Bool)

(assert start!39940)

(declare-fun b_free!10199 () Bool)

(declare-fun b_next!10199 () Bool)

(assert (=> start!39940 (= b_free!10199 (not b_next!10199))))

(declare-fun tp!36125 () Bool)

(declare-fun b_and!18075 () Bool)

(assert (=> start!39940 (= tp!36125 b_and!18075)))

(declare-fun b!433176 () Bool)

(declare-fun e!256142 () Bool)

(assert (=> b!433176 (= e!256142 true)))

(declare-datatypes ((V!16239 0))(
  ( (V!16240 (val!5720 Int)) )
))
(declare-datatypes ((tuple2!7492 0))(
  ( (tuple2!7493 (_1!3756 (_ BitVec 64)) (_2!3756 V!16239)) )
))
(declare-datatypes ((List!7541 0))(
  ( (Nil!7538) (Cons!7537 (h!8393 tuple2!7492) (t!13197 List!7541)) )
))
(declare-datatypes ((ListLongMap!6419 0))(
  ( (ListLongMap!6420 (toList!3225 List!7541)) )
))
(declare-fun lt!198952 () ListLongMap!6419)

(declare-fun lt!198943 () tuple2!7492)

(declare-fun lt!198946 () ListLongMap!6419)

(declare-fun lt!198953 () tuple2!7492)

(declare-fun +!1371 (ListLongMap!6419 tuple2!7492) ListLongMap!6419)

(assert (=> b!433176 (= lt!198946 (+!1371 (+!1371 lt!198952 lt!198953) lt!198943))))

(declare-datatypes ((Unit!12779 0))(
  ( (Unit!12780) )
))
(declare-fun lt!198949 () Unit!12779)

(declare-fun v!412 () V!16239)

(declare-datatypes ((array!26511 0))(
  ( (array!26512 (arr!12702 (Array (_ BitVec 32) (_ BitVec 64))) (size!13054 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26511)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!198954 () V!16239)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun addCommutativeForDiffKeys!381 (ListLongMap!6419 (_ BitVec 64) V!16239 (_ BitVec 64) V!16239) Unit!12779)

(assert (=> b!433176 (= lt!198949 (addCommutativeForDiffKeys!381 lt!198952 k!794 v!412 (select (arr!12702 _keys!709) from!863) lt!198954))))

(declare-fun b!433177 () Bool)

(declare-fun e!256140 () Bool)

(assert (=> b!433177 (= e!256140 e!256142)))

(declare-fun res!255013 () Bool)

(assert (=> b!433177 (=> res!255013 e!256142)))

(assert (=> b!433177 (= res!255013 (= k!794 (select (arr!12702 _keys!709) from!863)))))

(assert (=> b!433177 (not (= (select (arr!12702 _keys!709) from!863) k!794))))

(declare-fun lt!198956 () Unit!12779)

(declare-fun e!256143 () Unit!12779)

(assert (=> b!433177 (= lt!198956 e!256143)))

(declare-fun c!55559 () Bool)

(assert (=> b!433177 (= c!55559 (= (select (arr!12702 _keys!709) from!863) k!794))))

(declare-fun lt!198947 () ListLongMap!6419)

(assert (=> b!433177 (= lt!198947 lt!198946)))

(declare-fun lt!198944 () ListLongMap!6419)

(assert (=> b!433177 (= lt!198946 (+!1371 lt!198944 lt!198953))))

(assert (=> b!433177 (= lt!198953 (tuple2!7493 (select (arr!12702 _keys!709) from!863) lt!198954))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5332 0))(
  ( (ValueCellFull!5332 (v!7963 V!16239)) (EmptyCell!5332) )
))
(declare-datatypes ((array!26513 0))(
  ( (array!26514 (arr!12703 (Array (_ BitVec 32) ValueCell!5332)) (size!13055 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26513)

(declare-fun get!6324 (ValueCell!5332 V!16239) V!16239)

(declare-fun dynLambda!805 (Int (_ BitVec 64)) V!16239)

(assert (=> b!433177 (= lt!198954 (get!6324 (select (arr!12703 _values!549) from!863) (dynLambda!805 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433178 () Bool)

(declare-fun res!255011 () Bool)

(declare-fun e!256144 () Bool)

(assert (=> b!433178 (=> (not res!255011) (not e!256144))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!433178 (= res!255011 (bvsle from!863 i!563))))

(declare-fun b!433179 () Bool)

(declare-fun res!255008 () Bool)

(declare-fun e!256136 () Bool)

(assert (=> b!433179 (=> (not res!255008) (not e!256136))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26511 (_ BitVec 32)) Bool)

(assert (=> b!433179 (= res!255008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!433180 () Bool)

(declare-fun res!255010 () Bool)

(assert (=> b!433180 (=> (not res!255010) (not e!256144))))

(declare-fun lt!198948 () array!26511)

(declare-datatypes ((List!7542 0))(
  ( (Nil!7539) (Cons!7538 (h!8394 (_ BitVec 64)) (t!13198 List!7542)) )
))
(declare-fun arrayNoDuplicates!0 (array!26511 (_ BitVec 32) List!7542) Bool)

(assert (=> b!433180 (= res!255010 (arrayNoDuplicates!0 lt!198948 #b00000000000000000000000000000000 Nil!7539))))

(declare-fun b!433181 () Bool)

(declare-fun res!255003 () Bool)

(assert (=> b!433181 (=> (not res!255003) (not e!256136))))

(assert (=> b!433181 (= res!255003 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7539))))

(declare-fun b!433182 () Bool)

(declare-fun e!256138 () Bool)

(declare-fun tp_is_empty!11351 () Bool)

(assert (=> b!433182 (= e!256138 tp_is_empty!11351)))

(declare-fun b!433183 () Bool)

(assert (=> b!433183 (= e!256136 e!256144)))

(declare-fun res!255015 () Bool)

(assert (=> b!433183 (=> (not res!255015) (not e!256144))))

(assert (=> b!433183 (= res!255015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!198948 mask!1025))))

(assert (=> b!433183 (= lt!198948 (array!26512 (store (arr!12702 _keys!709) i!563 k!794) (size!13054 _keys!709)))))

(declare-fun b!433184 () Bool)

(declare-fun res!255012 () Bool)

(assert (=> b!433184 (=> (not res!255012) (not e!256136))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!433184 (= res!255012 (validKeyInArray!0 k!794))))

(declare-fun b!433185 () Bool)

(declare-fun e!256137 () Bool)

(assert (=> b!433185 (= e!256144 e!256137)))

(declare-fun res!255009 () Bool)

(assert (=> b!433185 (=> (not res!255009) (not e!256137))))

(assert (=> b!433185 (= res!255009 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16239)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!198951 () array!26513)

(declare-fun zeroValue!515 () V!16239)

(declare-fun getCurrentListMapNoExtraKeys!1415 (array!26511 array!26513 (_ BitVec 32) (_ BitVec 32) V!16239 V!16239 (_ BitVec 32) Int) ListLongMap!6419)

(assert (=> b!433185 (= lt!198947 (getCurrentListMapNoExtraKeys!1415 lt!198948 lt!198951 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!433185 (= lt!198951 (array!26514 (store (arr!12703 _values!549) i!563 (ValueCellFull!5332 v!412)) (size!13055 _values!549)))))

(declare-fun lt!198955 () ListLongMap!6419)

(assert (=> b!433185 (= lt!198955 (getCurrentListMapNoExtraKeys!1415 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!433186 () Bool)

(declare-fun res!255004 () Bool)

(assert (=> b!433186 (=> (not res!255004) (not e!256136))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!433186 (= res!255004 (validMask!0 mask!1025))))

(declare-fun b!433187 () Bool)

(declare-fun e!256139 () Bool)

(assert (=> b!433187 (= e!256139 tp_is_empty!11351)))

(declare-fun b!433188 () Bool)

(declare-fun res!255002 () Bool)

(assert (=> b!433188 (=> (not res!255002) (not e!256136))))

(assert (=> b!433188 (= res!255002 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13054 _keys!709))))))

(declare-fun b!433189 () Bool)

(assert (=> b!433189 (= e!256137 (not e!256140))))

(declare-fun res!255005 () Bool)

(assert (=> b!433189 (=> res!255005 e!256140)))

(assert (=> b!433189 (= res!255005 (not (validKeyInArray!0 (select (arr!12702 _keys!709) from!863))))))

(declare-fun lt!198950 () ListLongMap!6419)

(assert (=> b!433189 (= lt!198950 lt!198944)))

(assert (=> b!433189 (= lt!198944 (+!1371 lt!198952 lt!198943))))

(assert (=> b!433189 (= lt!198950 (getCurrentListMapNoExtraKeys!1415 lt!198948 lt!198951 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!433189 (= lt!198943 (tuple2!7493 k!794 v!412))))

(assert (=> b!433189 (= lt!198952 (getCurrentListMapNoExtraKeys!1415 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!198957 () Unit!12779)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!559 (array!26511 array!26513 (_ BitVec 32) (_ BitVec 32) V!16239 V!16239 (_ BitVec 32) (_ BitVec 64) V!16239 (_ BitVec 32) Int) Unit!12779)

(assert (=> b!433189 (= lt!198957 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!559 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!433190 () Bool)

(declare-fun res!255014 () Bool)

(assert (=> b!433190 (=> (not res!255014) (not e!256136))))

(assert (=> b!433190 (= res!255014 (and (= (size!13055 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13054 _keys!709) (size!13055 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!18648 () Bool)

(declare-fun mapRes!18648 () Bool)

(declare-fun tp!36126 () Bool)

(assert (=> mapNonEmpty!18648 (= mapRes!18648 (and tp!36126 e!256139))))

(declare-fun mapValue!18648 () ValueCell!5332)

(declare-fun mapRest!18648 () (Array (_ BitVec 32) ValueCell!5332))

(declare-fun mapKey!18648 () (_ BitVec 32))

(assert (=> mapNonEmpty!18648 (= (arr!12703 _values!549) (store mapRest!18648 mapKey!18648 mapValue!18648))))

(declare-fun b!433191 () Bool)

(declare-fun e!256135 () Bool)

(assert (=> b!433191 (= e!256135 (and e!256138 mapRes!18648))))

(declare-fun condMapEmpty!18648 () Bool)

(declare-fun mapDefault!18648 () ValueCell!5332)

