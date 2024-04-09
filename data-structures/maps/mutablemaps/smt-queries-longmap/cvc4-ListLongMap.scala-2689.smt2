; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39964 () Bool)

(assert start!39964)

(declare-fun b_free!10223 () Bool)

(declare-fun b_next!10223 () Bool)

(assert (=> start!39964 (= b_free!10223 (not b_next!10223))))

(declare-fun tp!36198 () Bool)

(declare-fun b_and!18123 () Bool)

(assert (=> start!39964 (= tp!36198 b_and!18123)))

(declare-fun mapIsEmpty!18684 () Bool)

(declare-fun mapRes!18684 () Bool)

(assert (=> mapIsEmpty!18684 mapRes!18684))

(declare-fun b!433919 () Bool)

(declare-fun res!255545 () Bool)

(declare-fun e!256503 () Bool)

(assert (=> b!433919 (=> (not res!255545) (not e!256503))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!26557 0))(
  ( (array!26558 (arr!12725 (Array (_ BitVec 32) (_ BitVec 64))) (size!13077 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26557)

(assert (=> b!433919 (= res!255545 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13077 _keys!709))))))

(declare-fun b!433920 () Bool)

(declare-datatypes ((Unit!12816 0))(
  ( (Unit!12817) )
))
(declare-fun e!256501 () Unit!12816)

(declare-fun Unit!12818 () Unit!12816)

(assert (=> b!433920 (= e!256501 Unit!12818)))

(declare-fun b!433921 () Bool)

(declare-fun e!256496 () Bool)

(assert (=> b!433921 (= e!256503 e!256496)))

(declare-fun res!255553 () Bool)

(assert (=> b!433921 (=> (not res!255553) (not e!256496))))

(declare-fun lt!199483 () array!26557)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26557 (_ BitVec 32)) Bool)

(assert (=> b!433921 (= res!255553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!199483 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!433921 (= lt!199483 (array!26558 (store (arr!12725 _keys!709) i!563 k!794) (size!13077 _keys!709)))))

(declare-fun res!255547 () Bool)

(assert (=> start!39964 (=> (not res!255547) (not e!256503))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39964 (= res!255547 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13077 _keys!709))))))

(assert (=> start!39964 e!256503))

(declare-fun tp_is_empty!11375 () Bool)

(assert (=> start!39964 tp_is_empty!11375))

(assert (=> start!39964 tp!36198))

(assert (=> start!39964 true))

(declare-datatypes ((V!16271 0))(
  ( (V!16272 (val!5732 Int)) )
))
(declare-datatypes ((ValueCell!5344 0))(
  ( (ValueCellFull!5344 (v!7975 V!16271)) (EmptyCell!5344) )
))
(declare-datatypes ((array!26559 0))(
  ( (array!26560 (arr!12726 (Array (_ BitVec 32) ValueCell!5344)) (size!13078 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26559)

(declare-fun e!256499 () Bool)

(declare-fun array_inv!9252 (array!26559) Bool)

(assert (=> start!39964 (and (array_inv!9252 _values!549) e!256499)))

(declare-fun array_inv!9253 (array!26557) Bool)

(assert (=> start!39964 (array_inv!9253 _keys!709)))

(declare-fun b!433922 () Bool)

(declare-fun res!255542 () Bool)

(assert (=> b!433922 (=> (not res!255542) (not e!256503))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!433922 (= res!255542 (and (= (size!13078 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13077 _keys!709) (size!13078 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!433923 () Bool)

(declare-fun e!256495 () Bool)

(assert (=> b!433923 (= e!256495 tp_is_empty!11375)))

(declare-fun b!433924 () Bool)

(declare-fun res!255544 () Bool)

(assert (=> b!433924 (=> (not res!255544) (not e!256503))))

(assert (=> b!433924 (= res!255544 (or (= (select (arr!12725 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12725 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433925 () Bool)

(declare-fun res!255550 () Bool)

(assert (=> b!433925 (=> (not res!255550) (not e!256503))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!433925 (= res!255550 (validMask!0 mask!1025))))

(declare-fun b!433926 () Bool)

(declare-fun res!255554 () Bool)

(assert (=> b!433926 (=> (not res!255554) (not e!256496))))

(declare-datatypes ((List!7561 0))(
  ( (Nil!7558) (Cons!7557 (h!8413 (_ BitVec 64)) (t!13241 List!7561)) )
))
(declare-fun arrayNoDuplicates!0 (array!26557 (_ BitVec 32) List!7561) Bool)

(assert (=> b!433926 (= res!255554 (arrayNoDuplicates!0 lt!199483 #b00000000000000000000000000000000 Nil!7558))))

(declare-fun b!433927 () Bool)

(declare-fun res!255546 () Bool)

(assert (=> b!433927 (=> (not res!255546) (not e!256503))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!433927 (= res!255546 (validKeyInArray!0 k!794))))

(declare-fun b!433928 () Bool)

(declare-fun Unit!12819 () Unit!12816)

(assert (=> b!433928 (= e!256501 Unit!12819)))

(declare-fun lt!199495 () Unit!12816)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26557 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12816)

(assert (=> b!433928 (= lt!199495 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!433928 false))

(declare-fun b!433929 () Bool)

(declare-fun e!256497 () Bool)

(assert (=> b!433929 (= e!256496 e!256497)))

(declare-fun res!255549 () Bool)

(assert (=> b!433929 (=> (not res!255549) (not e!256497))))

(assert (=> b!433929 (= res!255549 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16271)

(declare-fun lt!199488 () array!26559)

(declare-fun zeroValue!515 () V!16271)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!7512 0))(
  ( (tuple2!7513 (_1!3766 (_ BitVec 64)) (_2!3766 V!16271)) )
))
(declare-datatypes ((List!7562 0))(
  ( (Nil!7559) (Cons!7558 (h!8414 tuple2!7512) (t!13242 List!7562)) )
))
(declare-datatypes ((ListLongMap!6439 0))(
  ( (ListLongMap!6440 (toList!3235 List!7562)) )
))
(declare-fun lt!199489 () ListLongMap!6439)

(declare-fun getCurrentListMapNoExtraKeys!1424 (array!26557 array!26559 (_ BitVec 32) (_ BitVec 32) V!16271 V!16271 (_ BitVec 32) Int) ListLongMap!6439)

(assert (=> b!433929 (= lt!199489 (getCurrentListMapNoExtraKeys!1424 lt!199483 lt!199488 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16271)

(assert (=> b!433929 (= lt!199488 (array!26560 (store (arr!12726 _values!549) i!563 (ValueCellFull!5344 v!412)) (size!13078 _values!549)))))

(declare-fun lt!199491 () ListLongMap!6439)

(assert (=> b!433929 (= lt!199491 (getCurrentListMapNoExtraKeys!1424 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!433930 () Bool)

(declare-fun e!256498 () Bool)

(declare-fun e!256500 () Bool)

(assert (=> b!433930 (= e!256498 e!256500)))

(declare-fun res!255551 () Bool)

(assert (=> b!433930 (=> res!255551 e!256500)))

(assert (=> b!433930 (= res!255551 (= k!794 (select (arr!12725 _keys!709) from!863)))))

(assert (=> b!433930 (not (= (select (arr!12725 _keys!709) from!863) k!794))))

(declare-fun lt!199484 () Unit!12816)

(assert (=> b!433930 (= lt!199484 e!256501)))

(declare-fun c!55595 () Bool)

(assert (=> b!433930 (= c!55595 (= (select (arr!12725 _keys!709) from!863) k!794))))

(declare-fun lt!199494 () ListLongMap!6439)

(assert (=> b!433930 (= lt!199489 lt!199494)))

(declare-fun lt!199487 () ListLongMap!6439)

(declare-fun lt!199492 () tuple2!7512)

(declare-fun +!1381 (ListLongMap!6439 tuple2!7512) ListLongMap!6439)

(assert (=> b!433930 (= lt!199494 (+!1381 lt!199487 lt!199492))))

(declare-fun lt!199493 () V!16271)

(assert (=> b!433930 (= lt!199492 (tuple2!7513 (select (arr!12725 _keys!709) from!863) lt!199493))))

(declare-fun get!6340 (ValueCell!5344 V!16271) V!16271)

(declare-fun dynLambda!813 (Int (_ BitVec 64)) V!16271)

(assert (=> b!433930 (= lt!199493 (get!6340 (select (arr!12726 _values!549) from!863) (dynLambda!813 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433931 () Bool)

(declare-fun res!255555 () Bool)

(assert (=> b!433931 (=> (not res!255555) (not e!256503))))

(assert (=> b!433931 (= res!255555 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7558))))

(declare-fun b!433932 () Bool)

(declare-fun res!255548 () Bool)

(assert (=> b!433932 (=> (not res!255548) (not e!256503))))

(declare-fun arrayContainsKey!0 (array!26557 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!433932 (= res!255548 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!433933 () Bool)

(assert (=> b!433933 (= e!256497 (not e!256498))))

(declare-fun res!255552 () Bool)

(assert (=> b!433933 (=> res!255552 e!256498)))

(assert (=> b!433933 (= res!255552 (not (validKeyInArray!0 (select (arr!12725 _keys!709) from!863))))))

(declare-fun lt!199490 () ListLongMap!6439)

(assert (=> b!433933 (= lt!199490 lt!199487)))

(declare-fun lt!199497 () ListLongMap!6439)

(declare-fun lt!199496 () tuple2!7512)

(assert (=> b!433933 (= lt!199487 (+!1381 lt!199497 lt!199496))))

(assert (=> b!433933 (= lt!199490 (getCurrentListMapNoExtraKeys!1424 lt!199483 lt!199488 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!433933 (= lt!199496 (tuple2!7513 k!794 v!412))))

(assert (=> b!433933 (= lt!199497 (getCurrentListMapNoExtraKeys!1424 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!199486 () Unit!12816)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!568 (array!26557 array!26559 (_ BitVec 32) (_ BitVec 32) V!16271 V!16271 (_ BitVec 32) (_ BitVec 64) V!16271 (_ BitVec 32) Int) Unit!12816)

(assert (=> b!433933 (= lt!199486 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!568 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!18684 () Bool)

(declare-fun tp!36197 () Bool)

(declare-fun e!256504 () Bool)

(assert (=> mapNonEmpty!18684 (= mapRes!18684 (and tp!36197 e!256504))))

(declare-fun mapKey!18684 () (_ BitVec 32))

(declare-fun mapRest!18684 () (Array (_ BitVec 32) ValueCell!5344))

(declare-fun mapValue!18684 () ValueCell!5344)

(assert (=> mapNonEmpty!18684 (= (arr!12726 _values!549) (store mapRest!18684 mapKey!18684 mapValue!18684))))

(declare-fun b!433934 () Bool)

(assert (=> b!433934 (= e!256504 tp_is_empty!11375)))

(declare-fun b!433935 () Bool)

(declare-fun res!255541 () Bool)

(assert (=> b!433935 (=> (not res!255541) (not e!256496))))

(assert (=> b!433935 (= res!255541 (bvsle from!863 i!563))))

(declare-fun b!433936 () Bool)

(assert (=> b!433936 (= e!256500 true)))

(assert (=> b!433936 (= lt!199494 (+!1381 (+!1381 lt!199497 lt!199492) lt!199496))))

(declare-fun lt!199485 () Unit!12816)

(declare-fun addCommutativeForDiffKeys!390 (ListLongMap!6439 (_ BitVec 64) V!16271 (_ BitVec 64) V!16271) Unit!12816)

(assert (=> b!433936 (= lt!199485 (addCommutativeForDiffKeys!390 lt!199497 k!794 v!412 (select (arr!12725 _keys!709) from!863) lt!199493))))

(declare-fun b!433937 () Bool)

(assert (=> b!433937 (= e!256499 (and e!256495 mapRes!18684))))

(declare-fun condMapEmpty!18684 () Bool)

(declare-fun mapDefault!18684 () ValueCell!5344)

