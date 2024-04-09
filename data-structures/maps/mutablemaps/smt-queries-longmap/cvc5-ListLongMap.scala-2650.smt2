; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39726 () Bool)

(assert start!39726)

(declare-fun b_free!9985 () Bool)

(declare-fun b_next!9985 () Bool)

(assert (=> start!39726 (= b_free!9985 (not b_next!9985))))

(declare-fun tp!35484 () Bool)

(declare-fun b_and!17659 () Bool)

(assert (=> start!39726 (= tp!35484 b_and!17659)))

(declare-fun b!426860 () Bool)

(declare-fun e!253167 () Bool)

(declare-fun tp_is_empty!11137 () Bool)

(assert (=> b!426860 (= e!253167 tp_is_empty!11137)))

(declare-fun mapNonEmpty!18327 () Bool)

(declare-fun mapRes!18327 () Bool)

(declare-fun tp!35483 () Bool)

(assert (=> mapNonEmpty!18327 (= mapRes!18327 (and tp!35483 e!253167))))

(declare-datatypes ((V!15955 0))(
  ( (V!15956 (val!5613 Int)) )
))
(declare-datatypes ((ValueCell!5225 0))(
  ( (ValueCellFull!5225 (v!7856 V!15955)) (EmptyCell!5225) )
))
(declare-fun mapValue!18327 () ValueCell!5225)

(declare-fun mapKey!18327 () (_ BitVec 32))

(declare-datatypes ((array!26093 0))(
  ( (array!26094 (arr!12493 (Array (_ BitVec 32) ValueCell!5225)) (size!12845 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26093)

(declare-fun mapRest!18327 () (Array (_ BitVec 32) ValueCell!5225))

(assert (=> mapNonEmpty!18327 (= (arr!12493 _values!549) (store mapRest!18327 mapKey!18327 mapValue!18327))))

(declare-fun mapIsEmpty!18327 () Bool)

(assert (=> mapIsEmpty!18327 mapRes!18327))

(declare-fun b!426861 () Bool)

(declare-fun e!253166 () Bool)

(assert (=> b!426861 (= e!253166 (not true))))

(declare-datatypes ((array!26095 0))(
  ( (array!26096 (arr!12494 (Array (_ BitVec 32) (_ BitVec 64))) (size!12846 (_ BitVec 32))) )
))
(declare-fun lt!195116 () array!26095)

(declare-fun minValue!515 () V!15955)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15955)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!195120 () array!26093)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!26095)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun v!412 () V!15955)

(declare-datatypes ((tuple2!7314 0))(
  ( (tuple2!7315 (_1!3667 (_ BitVec 64)) (_2!3667 V!15955)) )
))
(declare-datatypes ((List!7362 0))(
  ( (Nil!7359) (Cons!7358 (h!8214 tuple2!7314) (t!12814 List!7362)) )
))
(declare-datatypes ((ListLongMap!6241 0))(
  ( (ListLongMap!6242 (toList!3136 List!7362)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1337 (array!26095 array!26093 (_ BitVec 32) (_ BitVec 32) V!15955 V!15955 (_ BitVec 32) Int) ListLongMap!6241)

(declare-fun +!1289 (ListLongMap!6241 tuple2!7314) ListLongMap!6241)

(assert (=> b!426861 (= (getCurrentListMapNoExtraKeys!1337 lt!195116 lt!195120 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1289 (getCurrentListMapNoExtraKeys!1337 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7315 k!794 v!412)))))

(declare-datatypes ((Unit!12481 0))(
  ( (Unit!12482) )
))
(declare-fun lt!195118 () Unit!12481)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!491 (array!26095 array!26093 (_ BitVec 32) (_ BitVec 32) V!15955 V!15955 (_ BitVec 32) (_ BitVec 64) V!15955 (_ BitVec 32) Int) Unit!12481)

(assert (=> b!426861 (= lt!195118 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!491 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!426862 () Bool)

(declare-fun res!250360 () Bool)

(declare-fun e!253165 () Bool)

(assert (=> b!426862 (=> (not res!250360) (not e!253165))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26095 (_ BitVec 32)) Bool)

(assert (=> b!426862 (= res!250360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!426863 () Bool)

(declare-fun res!250362 () Bool)

(assert (=> b!426863 (=> (not res!250362) (not e!253165))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!426863 (= res!250362 (validKeyInArray!0 k!794))))

(declare-fun b!426864 () Bool)

(declare-fun res!250356 () Bool)

(assert (=> b!426864 (=> (not res!250356) (not e!253165))))

(declare-fun arrayContainsKey!0 (array!26095 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!426864 (= res!250356 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!426865 () Bool)

(declare-fun e!253163 () Bool)

(assert (=> b!426865 (= e!253163 e!253166)))

(declare-fun res!250357 () Bool)

(assert (=> b!426865 (=> (not res!250357) (not e!253166))))

(assert (=> b!426865 (= res!250357 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!195119 () ListLongMap!6241)

(assert (=> b!426865 (= lt!195119 (getCurrentListMapNoExtraKeys!1337 lt!195116 lt!195120 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!426865 (= lt!195120 (array!26094 (store (arr!12493 _values!549) i!563 (ValueCellFull!5225 v!412)) (size!12845 _values!549)))))

(declare-fun lt!195117 () ListLongMap!6241)

(assert (=> b!426865 (= lt!195117 (getCurrentListMapNoExtraKeys!1337 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!426866 () Bool)

(declare-fun res!250361 () Bool)

(assert (=> b!426866 (=> (not res!250361) (not e!253165))))

(declare-datatypes ((List!7363 0))(
  ( (Nil!7360) (Cons!7359 (h!8215 (_ BitVec 64)) (t!12815 List!7363)) )
))
(declare-fun arrayNoDuplicates!0 (array!26095 (_ BitVec 32) List!7363) Bool)

(assert (=> b!426866 (= res!250361 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7360))))

(declare-fun b!426867 () Bool)

(declare-fun e!253162 () Bool)

(assert (=> b!426867 (= e!253162 tp_is_empty!11137)))

(declare-fun b!426868 () Bool)

(declare-fun res!250364 () Bool)

(assert (=> b!426868 (=> (not res!250364) (not e!253165))))

(assert (=> b!426868 (= res!250364 (or (= (select (arr!12494 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12494 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!426869 () Bool)

(declare-fun res!250353 () Bool)

(assert (=> b!426869 (=> (not res!250353) (not e!253165))))

(assert (=> b!426869 (= res!250353 (and (= (size!12845 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12846 _keys!709) (size!12845 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!426870 () Bool)

(declare-fun res!250365 () Bool)

(assert (=> b!426870 (=> (not res!250365) (not e!253163))))

(assert (=> b!426870 (= res!250365 (arrayNoDuplicates!0 lt!195116 #b00000000000000000000000000000000 Nil!7360))))

(declare-fun b!426871 () Bool)

(declare-fun res!250363 () Bool)

(assert (=> b!426871 (=> (not res!250363) (not e!253165))))

(assert (=> b!426871 (= res!250363 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12846 _keys!709))))))

(declare-fun b!426872 () Bool)

(assert (=> b!426872 (= e!253165 e!253163)))

(declare-fun res!250359 () Bool)

(assert (=> b!426872 (=> (not res!250359) (not e!253163))))

(assert (=> b!426872 (= res!250359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!195116 mask!1025))))

(assert (=> b!426872 (= lt!195116 (array!26096 (store (arr!12494 _keys!709) i!563 k!794) (size!12846 _keys!709)))))

(declare-fun b!426873 () Bool)

(declare-fun e!253164 () Bool)

(assert (=> b!426873 (= e!253164 (and e!253162 mapRes!18327))))

(declare-fun condMapEmpty!18327 () Bool)

(declare-fun mapDefault!18327 () ValueCell!5225)

