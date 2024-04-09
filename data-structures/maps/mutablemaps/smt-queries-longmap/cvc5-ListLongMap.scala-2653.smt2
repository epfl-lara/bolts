; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39744 () Bool)

(assert start!39744)

(declare-fun b_free!10003 () Bool)

(declare-fun b_next!10003 () Bool)

(assert (=> start!39744 (= b_free!10003 (not b_next!10003))))

(declare-fun tp!35538 () Bool)

(declare-fun b_and!17683 () Bool)

(assert (=> start!39744 (= tp!35538 b_and!17683)))

(declare-fun b!427318 () Bool)

(declare-fun res!250726 () Bool)

(declare-fun e!253372 () Bool)

(assert (=> b!427318 (=> (not res!250726) (not e!253372))))

(declare-datatypes ((array!26129 0))(
  ( (array!26130 (arr!12511 (Array (_ BitVec 32) (_ BitVec 64))) (size!12863 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26129)

(declare-datatypes ((List!7377 0))(
  ( (Nil!7374) (Cons!7373 (h!8229 (_ BitVec 64)) (t!12837 List!7377)) )
))
(declare-fun arrayNoDuplicates!0 (array!26129 (_ BitVec 32) List!7377) Bool)

(assert (=> b!427318 (= res!250726 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7374))))

(declare-fun mapIsEmpty!18354 () Bool)

(declare-fun mapRes!18354 () Bool)

(assert (=> mapIsEmpty!18354 mapRes!18354))

(declare-fun b!427319 () Bool)

(declare-fun res!250737 () Bool)

(assert (=> b!427319 (=> (not res!250737) (not e!253372))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!427319 (= res!250737 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12863 _keys!709))))))

(declare-fun b!427320 () Bool)

(declare-fun res!250733 () Bool)

(declare-fun e!253377 () Bool)

(assert (=> b!427320 (=> (not res!250733) (not e!253377))))

(declare-fun lt!195284 () array!26129)

(assert (=> b!427320 (= res!250733 (arrayNoDuplicates!0 lt!195284 #b00000000000000000000000000000000 Nil!7374))))

(declare-fun b!427321 () Bool)

(declare-fun e!253371 () Bool)

(assert (=> b!427321 (= e!253377 e!253371)))

(declare-fun res!250735 () Bool)

(assert (=> b!427321 (=> (not res!250735) (not e!253371))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!427321 (= res!250735 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!15979 0))(
  ( (V!15980 (val!5622 Int)) )
))
(declare-fun minValue!515 () V!15979)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15979)

(declare-datatypes ((tuple2!7328 0))(
  ( (tuple2!7329 (_1!3674 (_ BitVec 64)) (_2!3674 V!15979)) )
))
(declare-datatypes ((List!7378 0))(
  ( (Nil!7375) (Cons!7374 (h!8230 tuple2!7328) (t!12838 List!7378)) )
))
(declare-datatypes ((ListLongMap!6255 0))(
  ( (ListLongMap!6256 (toList!3143 List!7378)) )
))
(declare-fun lt!195291 () ListLongMap!6255)

(declare-datatypes ((ValueCell!5234 0))(
  ( (ValueCellFull!5234 (v!7865 V!15979)) (EmptyCell!5234) )
))
(declare-datatypes ((array!26131 0))(
  ( (array!26132 (arr!12512 (Array (_ BitVec 32) ValueCell!5234)) (size!12864 (_ BitVec 32))) )
))
(declare-fun lt!195286 () array!26131)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1344 (array!26129 array!26131 (_ BitVec 32) (_ BitVec 32) V!15979 V!15979 (_ BitVec 32) Int) ListLongMap!6255)

(assert (=> b!427321 (= lt!195291 (getCurrentListMapNoExtraKeys!1344 lt!195284 lt!195286 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26131)

(declare-fun v!412 () V!15979)

(assert (=> b!427321 (= lt!195286 (array!26132 (store (arr!12512 _values!549) i!563 (ValueCellFull!5234 v!412)) (size!12864 _values!549)))))

(declare-fun lt!195290 () ListLongMap!6255)

(assert (=> b!427321 (= lt!195290 (getCurrentListMapNoExtraKeys!1344 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!427322 () Bool)

(declare-fun res!250725 () Bool)

(assert (=> b!427322 (=> (not res!250725) (not e!253377))))

(assert (=> b!427322 (= res!250725 (bvsle from!863 i!563))))

(declare-fun b!427323 () Bool)

(declare-fun res!250731 () Bool)

(assert (=> b!427323 (=> (not res!250731) (not e!253372))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!427323 (= res!250731 (validKeyInArray!0 k!794))))

(declare-fun b!427324 () Bool)

(declare-fun e!253375 () Bool)

(declare-fun tp_is_empty!11155 () Bool)

(assert (=> b!427324 (= e!253375 tp_is_empty!11155)))

(declare-fun b!427325 () Bool)

(declare-fun e!253373 () Bool)

(assert (=> b!427325 (= e!253373 tp_is_empty!11155)))

(declare-fun b!427326 () Bool)

(declare-fun res!250734 () Bool)

(assert (=> b!427326 (=> (not res!250734) (not e!253372))))

(declare-fun arrayContainsKey!0 (array!26129 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!427326 (= res!250734 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!427327 () Bool)

(declare-fun res!250736 () Bool)

(assert (=> b!427327 (=> (not res!250736) (not e!253372))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!427327 (= res!250736 (validMask!0 mask!1025))))

(declare-fun b!427328 () Bool)

(declare-fun e!253376 () Bool)

(assert (=> b!427328 (= e!253376 true)))

(declare-fun lt!195289 () ListLongMap!6255)

(declare-fun +!1296 (ListLongMap!6255 tuple2!7328) ListLongMap!6255)

(declare-fun get!6199 (ValueCell!5234 V!15979) V!15979)

(declare-fun dynLambda!744 (Int (_ BitVec 64)) V!15979)

(assert (=> b!427328 (= lt!195291 (+!1296 lt!195289 (tuple2!7329 (select (arr!12511 _keys!709) from!863) (get!6199 (select (arr!12512 _values!549) from!863) (dynLambda!744 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun res!250729 () Bool)

(assert (=> start!39744 (=> (not res!250729) (not e!253372))))

(assert (=> start!39744 (= res!250729 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12863 _keys!709))))))

(assert (=> start!39744 e!253372))

(assert (=> start!39744 tp_is_empty!11155))

(assert (=> start!39744 tp!35538))

(assert (=> start!39744 true))

(declare-fun e!253374 () Bool)

(declare-fun array_inv!9106 (array!26131) Bool)

(assert (=> start!39744 (and (array_inv!9106 _values!549) e!253374)))

(declare-fun array_inv!9107 (array!26129) Bool)

(assert (=> start!39744 (array_inv!9107 _keys!709)))

(declare-fun b!427329 () Bool)

(declare-fun res!250724 () Bool)

(assert (=> b!427329 (=> (not res!250724) (not e!253372))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26129 (_ BitVec 32)) Bool)

(assert (=> b!427329 (= res!250724 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!427330 () Bool)

(assert (=> b!427330 (= e!253371 (not e!253376))))

(declare-fun res!250728 () Bool)

(assert (=> b!427330 (=> res!250728 e!253376)))

(assert (=> b!427330 (= res!250728 (not (validKeyInArray!0 (select (arr!12511 _keys!709) from!863))))))

(declare-fun lt!195288 () ListLongMap!6255)

(assert (=> b!427330 (= lt!195288 lt!195289)))

(declare-fun lt!195287 () ListLongMap!6255)

(assert (=> b!427330 (= lt!195289 (+!1296 lt!195287 (tuple2!7329 k!794 v!412)))))

(assert (=> b!427330 (= lt!195288 (getCurrentListMapNoExtraKeys!1344 lt!195284 lt!195286 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!427330 (= lt!195287 (getCurrentListMapNoExtraKeys!1344 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12495 0))(
  ( (Unit!12496) )
))
(declare-fun lt!195285 () Unit!12495)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!498 (array!26129 array!26131 (_ BitVec 32) (_ BitVec 32) V!15979 V!15979 (_ BitVec 32) (_ BitVec 64) V!15979 (_ BitVec 32) Int) Unit!12495)

(assert (=> b!427330 (= lt!195285 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!498 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!427331 () Bool)

(assert (=> b!427331 (= e!253374 (and e!253373 mapRes!18354))))

(declare-fun condMapEmpty!18354 () Bool)

(declare-fun mapDefault!18354 () ValueCell!5234)

