; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39952 () Bool)

(assert start!39952)

(declare-fun b_free!10211 () Bool)

(declare-fun b_next!10211 () Bool)

(assert (=> start!39952 (= b_free!10211 (not b_next!10211))))

(declare-fun tp!36161 () Bool)

(declare-fun b_and!18099 () Bool)

(assert (=> start!39952 (= tp!36161 b_and!18099)))

(declare-fun b!433547 () Bool)

(declare-fun res!255282 () Bool)

(declare-fun e!256317 () Bool)

(assert (=> b!433547 (=> (not res!255282) (not e!256317))))

(declare-datatypes ((array!26535 0))(
  ( (array!26536 (arr!12714 (Array (_ BitVec 32) (_ BitVec 64))) (size!13066 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26535)

(declare-datatypes ((List!7551 0))(
  ( (Nil!7548) (Cons!7547 (h!8403 (_ BitVec 64)) (t!13219 List!7551)) )
))
(declare-fun arrayNoDuplicates!0 (array!26535 (_ BitVec 32) List!7551) Bool)

(assert (=> b!433547 (= res!255282 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7548))))

(declare-fun b!433548 () Bool)

(declare-fun e!256322 () Bool)

(declare-fun tp_is_empty!11363 () Bool)

(assert (=> b!433548 (= e!256322 tp_is_empty!11363)))

(declare-fun mapNonEmpty!18666 () Bool)

(declare-fun mapRes!18666 () Bool)

(declare-fun tp!36162 () Bool)

(declare-fun e!256318 () Bool)

(assert (=> mapNonEmpty!18666 (= mapRes!18666 (and tp!36162 e!256318))))

(declare-datatypes ((V!16255 0))(
  ( (V!16256 (val!5726 Int)) )
))
(declare-datatypes ((ValueCell!5338 0))(
  ( (ValueCellFull!5338 (v!7969 V!16255)) (EmptyCell!5338) )
))
(declare-fun mapRest!18666 () (Array (_ BitVec 32) ValueCell!5338))

(declare-datatypes ((array!26537 0))(
  ( (array!26538 (arr!12715 (Array (_ BitVec 32) ValueCell!5338)) (size!13067 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26537)

(declare-fun mapKey!18666 () (_ BitVec 32))

(declare-fun mapValue!18666 () ValueCell!5338)

(assert (=> mapNonEmpty!18666 (= (arr!12715 _values!549) (store mapRest!18666 mapKey!18666 mapValue!18666))))

(declare-fun b!433549 () Bool)

(assert (=> b!433549 (= e!256318 tp_is_empty!11363)))

(declare-fun res!255277 () Bool)

(assert (=> start!39952 (=> (not res!255277) (not e!256317))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39952 (= res!255277 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13066 _keys!709))))))

(assert (=> start!39952 e!256317))

(assert (=> start!39952 tp_is_empty!11363))

(assert (=> start!39952 tp!36161))

(assert (=> start!39952 true))

(declare-fun e!256323 () Bool)

(declare-fun array_inv!9244 (array!26537) Bool)

(assert (=> start!39952 (and (array_inv!9244 _values!549) e!256323)))

(declare-fun array_inv!9245 (array!26535) Bool)

(assert (=> start!39952 (array_inv!9245 _keys!709)))

(declare-fun b!433550 () Bool)

(declare-fun e!256321 () Bool)

(declare-fun e!256320 () Bool)

(assert (=> b!433550 (= e!256321 e!256320)))

(declare-fun res!255272 () Bool)

(assert (=> b!433550 (=> res!255272 e!256320)))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!433550 (= res!255272 (= k!794 (select (arr!12714 _keys!709) from!863)))))

(assert (=> b!433550 (not (= (select (arr!12714 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!12797 0))(
  ( (Unit!12798) )
))
(declare-fun lt!199213 () Unit!12797)

(declare-fun e!256316 () Unit!12797)

(assert (=> b!433550 (= lt!199213 e!256316)))

(declare-fun c!55577 () Bool)

(assert (=> b!433550 (= c!55577 (= (select (arr!12714 _keys!709) from!863) k!794))))

(declare-datatypes ((tuple2!7502 0))(
  ( (tuple2!7503 (_1!3761 (_ BitVec 64)) (_2!3761 V!16255)) )
))
(declare-datatypes ((List!7552 0))(
  ( (Nil!7549) (Cons!7548 (h!8404 tuple2!7502) (t!13220 List!7552)) )
))
(declare-datatypes ((ListLongMap!6429 0))(
  ( (ListLongMap!6430 (toList!3230 List!7552)) )
))
(declare-fun lt!199226 () ListLongMap!6429)

(declare-fun lt!199219 () ListLongMap!6429)

(assert (=> b!433550 (= lt!199226 lt!199219)))

(declare-fun lt!199221 () ListLongMap!6429)

(declare-fun lt!199222 () tuple2!7502)

(declare-fun +!1376 (ListLongMap!6429 tuple2!7502) ListLongMap!6429)

(assert (=> b!433550 (= lt!199219 (+!1376 lt!199221 lt!199222))))

(declare-fun lt!199224 () V!16255)

(assert (=> b!433550 (= lt!199222 (tuple2!7503 (select (arr!12714 _keys!709) from!863) lt!199224))))

(declare-fun defaultEntry!557 () Int)

(declare-fun get!6331 (ValueCell!5338 V!16255) V!16255)

(declare-fun dynLambda!808 (Int (_ BitVec 64)) V!16255)

(assert (=> b!433550 (= lt!199224 (get!6331 (select (arr!12715 _values!549) from!863) (dynLambda!808 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433551 () Bool)

(declare-fun Unit!12799 () Unit!12797)

(assert (=> b!433551 (= e!256316 Unit!12799)))

(declare-fun b!433552 () Bool)

(declare-fun res!255284 () Bool)

(assert (=> b!433552 (=> (not res!255284) (not e!256317))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!433552 (= res!255284 (and (= (size!13067 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13066 _keys!709) (size!13067 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!433553 () Bool)

(declare-fun res!255275 () Bool)

(assert (=> b!433553 (=> (not res!255275) (not e!256317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!433553 (= res!255275 (validMask!0 mask!1025))))

(declare-fun b!433554 () Bool)

(declare-fun e!256324 () Bool)

(assert (=> b!433554 (= e!256317 e!256324)))

(declare-fun res!255285 () Bool)

(assert (=> b!433554 (=> (not res!255285) (not e!256324))))

(declare-fun lt!199223 () array!26535)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26535 (_ BitVec 32)) Bool)

(assert (=> b!433554 (= res!255285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!199223 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!433554 (= lt!199223 (array!26536 (store (arr!12714 _keys!709) i!563 k!794) (size!13066 _keys!709)))))

(declare-fun b!433555 () Bool)

(declare-fun res!255280 () Bool)

(assert (=> b!433555 (=> (not res!255280) (not e!256324))))

(assert (=> b!433555 (= res!255280 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18666 () Bool)

(assert (=> mapIsEmpty!18666 mapRes!18666))

(declare-fun b!433556 () Bool)

(assert (=> b!433556 (= e!256320 true)))

(declare-fun lt!199214 () ListLongMap!6429)

(declare-fun lt!199225 () tuple2!7502)

(assert (=> b!433556 (= lt!199219 (+!1376 (+!1376 lt!199214 lt!199222) lt!199225))))

(declare-fun lt!199216 () Unit!12797)

(declare-fun v!412 () V!16255)

(declare-fun addCommutativeForDiffKeys!386 (ListLongMap!6429 (_ BitVec 64) V!16255 (_ BitVec 64) V!16255) Unit!12797)

(assert (=> b!433556 (= lt!199216 (addCommutativeForDiffKeys!386 lt!199214 k!794 v!412 (select (arr!12714 _keys!709) from!863) lt!199224))))

(declare-fun b!433557 () Bool)

(declare-fun Unit!12800 () Unit!12797)

(assert (=> b!433557 (= e!256316 Unit!12800)))

(declare-fun lt!199218 () Unit!12797)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26535 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12797)

(assert (=> b!433557 (= lt!199218 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!433557 false))

(declare-fun b!433558 () Bool)

(declare-fun e!256319 () Bool)

(assert (=> b!433558 (= e!256319 (not e!256321))))

(declare-fun res!255274 () Bool)

(assert (=> b!433558 (=> res!255274 e!256321)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!433558 (= res!255274 (not (validKeyInArray!0 (select (arr!12714 _keys!709) from!863))))))

(declare-fun lt!199220 () ListLongMap!6429)

(assert (=> b!433558 (= lt!199220 lt!199221)))

(assert (=> b!433558 (= lt!199221 (+!1376 lt!199214 lt!199225))))

(declare-fun zeroValue!515 () V!16255)

(declare-fun lt!199227 () array!26537)

(declare-fun minValue!515 () V!16255)

(declare-fun getCurrentListMapNoExtraKeys!1419 (array!26535 array!26537 (_ BitVec 32) (_ BitVec 32) V!16255 V!16255 (_ BitVec 32) Int) ListLongMap!6429)

(assert (=> b!433558 (= lt!199220 (getCurrentListMapNoExtraKeys!1419 lt!199223 lt!199227 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!433558 (= lt!199225 (tuple2!7503 k!794 v!412))))

(assert (=> b!433558 (= lt!199214 (getCurrentListMapNoExtraKeys!1419 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!199215 () Unit!12797)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!563 (array!26535 array!26537 (_ BitVec 32) (_ BitVec 32) V!16255 V!16255 (_ BitVec 32) (_ BitVec 64) V!16255 (_ BitVec 32) Int) Unit!12797)

(assert (=> b!433558 (= lt!199215 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!563 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!433559 () Bool)

(assert (=> b!433559 (= e!256324 e!256319)))

(declare-fun res!255278 () Bool)

(assert (=> b!433559 (=> (not res!255278) (not e!256319))))

(assert (=> b!433559 (= res!255278 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!433559 (= lt!199226 (getCurrentListMapNoExtraKeys!1419 lt!199223 lt!199227 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!433559 (= lt!199227 (array!26538 (store (arr!12715 _values!549) i!563 (ValueCellFull!5338 v!412)) (size!13067 _values!549)))))

(declare-fun lt!199217 () ListLongMap!6429)

(assert (=> b!433559 (= lt!199217 (getCurrentListMapNoExtraKeys!1419 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!433560 () Bool)

(declare-fun res!255281 () Bool)

(assert (=> b!433560 (=> (not res!255281) (not e!256317))))

(declare-fun arrayContainsKey!0 (array!26535 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!433560 (= res!255281 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!433561 () Bool)

(assert (=> b!433561 (= e!256323 (and e!256322 mapRes!18666))))

(declare-fun condMapEmpty!18666 () Bool)

(declare-fun mapDefault!18666 () ValueCell!5338)

