; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39856 () Bool)

(assert start!39856)

(declare-fun b_free!10115 () Bool)

(declare-fun b_next!10115 () Bool)

(assert (=> start!39856 (= b_free!10115 (not b_next!10115))))

(declare-fun tp!35873 () Bool)

(declare-fun b_and!17907 () Bool)

(assert (=> start!39856 (= tp!35873 b_and!17907)))

(declare-fun b!430571 () Bool)

(declare-fun res!253123 () Bool)

(declare-fun e!254877 () Bool)

(assert (=> b!430571 (=> (not res!253123) (not e!254877))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!430571 (= res!253123 (validKeyInArray!0 k!794))))

(declare-fun b!430572 () Bool)

(declare-fun e!254878 () Bool)

(declare-fun e!254876 () Bool)

(assert (=> b!430572 (= e!254878 (not e!254876))))

(declare-fun res!253121 () Bool)

(assert (=> b!430572 (=> res!253121 e!254876)))

(declare-datatypes ((array!26347 0))(
  ( (array!26348 (arr!12620 (Array (_ BitVec 32) (_ BitVec 64))) (size!12972 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26347)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!430572 (= res!253121 (not (validKeyInArray!0 (select (arr!12620 _keys!709) from!863))))))

(declare-datatypes ((V!16127 0))(
  ( (V!16128 (val!5678 Int)) )
))
(declare-datatypes ((tuple2!7414 0))(
  ( (tuple2!7415 (_1!3717 (_ BitVec 64)) (_2!3717 V!16127)) )
))
(declare-datatypes ((List!7468 0))(
  ( (Nil!7465) (Cons!7464 (h!8320 tuple2!7414) (t!13040 List!7468)) )
))
(declare-datatypes ((ListLongMap!6341 0))(
  ( (ListLongMap!6342 (toList!3186 List!7468)) )
))
(declare-fun lt!197053 () ListLongMap!6341)

(declare-fun lt!197062 () ListLongMap!6341)

(assert (=> b!430572 (= lt!197053 lt!197062)))

(declare-fun lt!197054 () ListLongMap!6341)

(declare-fun lt!197061 () tuple2!7414)

(declare-fun +!1334 (ListLongMap!6341 tuple2!7414) ListLongMap!6341)

(assert (=> b!430572 (= lt!197062 (+!1334 lt!197054 lt!197061))))

(declare-datatypes ((ValueCell!5290 0))(
  ( (ValueCellFull!5290 (v!7921 V!16127)) (EmptyCell!5290) )
))
(declare-datatypes ((array!26349 0))(
  ( (array!26350 (arr!12621 (Array (_ BitVec 32) ValueCell!5290)) (size!12973 (_ BitVec 32))) )
))
(declare-fun lt!197065 () array!26349)

(declare-fun minValue!515 () V!16127)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!197056 () array!26347)

(declare-fun zeroValue!515 () V!16127)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1382 (array!26347 array!26349 (_ BitVec 32) (_ BitVec 32) V!16127 V!16127 (_ BitVec 32) Int) ListLongMap!6341)

(assert (=> b!430572 (= lt!197053 (getCurrentListMapNoExtraKeys!1382 lt!197056 lt!197065 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!16127)

(assert (=> b!430572 (= lt!197061 (tuple2!7415 k!794 v!412))))

(declare-fun _values!549 () array!26349)

(assert (=> b!430572 (= lt!197054 (getCurrentListMapNoExtraKeys!1382 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!12644 0))(
  ( (Unit!12645) )
))
(declare-fun lt!197060 () Unit!12644)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!529 (array!26347 array!26349 (_ BitVec 32) (_ BitVec 32) V!16127 V!16127 (_ BitVec 32) (_ BitVec 64) V!16127 (_ BitVec 32) Int) Unit!12644)

(assert (=> b!430572 (= lt!197060 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!529 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!430573 () Bool)

(declare-fun e!254880 () Bool)

(assert (=> b!430573 (= e!254880 e!254878)))

(declare-fun res!253120 () Bool)

(assert (=> b!430573 (=> (not res!253120) (not e!254878))))

(assert (=> b!430573 (= res!253120 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!197059 () ListLongMap!6341)

(assert (=> b!430573 (= lt!197059 (getCurrentListMapNoExtraKeys!1382 lt!197056 lt!197065 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!430573 (= lt!197065 (array!26350 (store (arr!12621 _values!549) i!563 (ValueCellFull!5290 v!412)) (size!12973 _values!549)))))

(declare-fun lt!197067 () ListLongMap!6341)

(assert (=> b!430573 (= lt!197067 (getCurrentListMapNoExtraKeys!1382 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!253113 () Bool)

(assert (=> start!39856 (=> (not res!253113) (not e!254877))))

(assert (=> start!39856 (= res!253113 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12972 _keys!709))))))

(assert (=> start!39856 e!254877))

(declare-fun tp_is_empty!11267 () Bool)

(assert (=> start!39856 tp_is_empty!11267))

(assert (=> start!39856 tp!35873))

(assert (=> start!39856 true))

(declare-fun e!254883 () Bool)

(declare-fun array_inv!9180 (array!26349) Bool)

(assert (=> start!39856 (and (array_inv!9180 _values!549) e!254883)))

(declare-fun array_inv!9181 (array!26347) Bool)

(assert (=> start!39856 (array_inv!9181 _keys!709)))

(declare-fun b!430574 () Bool)

(declare-fun res!253115 () Bool)

(assert (=> b!430574 (=> (not res!253115) (not e!254880))))

(assert (=> b!430574 (= res!253115 (bvsle from!863 i!563))))

(declare-fun b!430575 () Bool)

(declare-fun e!254881 () Unit!12644)

(declare-fun Unit!12646 () Unit!12644)

(assert (=> b!430575 (= e!254881 Unit!12646)))

(declare-fun b!430576 () Bool)

(declare-fun Unit!12647 () Unit!12644)

(assert (=> b!430576 (= e!254881 Unit!12647)))

(declare-fun lt!197058 () Unit!12644)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26347 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12644)

(assert (=> b!430576 (= lt!197058 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!430576 false))

(declare-fun b!430577 () Bool)

(declare-fun res!253119 () Bool)

(assert (=> b!430577 (=> (not res!253119) (not e!254877))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26347 (_ BitVec 32)) Bool)

(assert (=> b!430577 (= res!253119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!430578 () Bool)

(declare-fun e!254875 () Bool)

(assert (=> b!430578 (= e!254875 tp_is_empty!11267)))

(declare-fun b!430579 () Bool)

(declare-fun res!253112 () Bool)

(assert (=> b!430579 (=> (not res!253112) (not e!254877))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!430579 (= res!253112 (validMask!0 mask!1025))))

(declare-fun b!430580 () Bool)

(declare-fun res!253111 () Bool)

(assert (=> b!430580 (=> (not res!253111) (not e!254877))))

(declare-datatypes ((List!7469 0))(
  ( (Nil!7466) (Cons!7465 (h!8321 (_ BitVec 64)) (t!13041 List!7469)) )
))
(declare-fun arrayNoDuplicates!0 (array!26347 (_ BitVec 32) List!7469) Bool)

(assert (=> b!430580 (= res!253111 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7466))))

(declare-fun b!430581 () Bool)

(declare-fun e!254884 () Bool)

(assert (=> b!430581 (= e!254884 tp_is_empty!11267)))

(declare-fun b!430582 () Bool)

(declare-fun res!253114 () Bool)

(assert (=> b!430582 (=> (not res!253114) (not e!254880))))

(assert (=> b!430582 (= res!253114 (arrayNoDuplicates!0 lt!197056 #b00000000000000000000000000000000 Nil!7466))))

(declare-fun b!430583 () Bool)

(declare-fun res!253125 () Bool)

(assert (=> b!430583 (=> (not res!253125) (not e!254877))))

(assert (=> b!430583 (= res!253125 (or (= (select (arr!12620 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12620 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!430584 () Bool)

(declare-fun res!253116 () Bool)

(assert (=> b!430584 (=> (not res!253116) (not e!254877))))

(declare-fun arrayContainsKey!0 (array!26347 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!430584 (= res!253116 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!430585 () Bool)

(assert (=> b!430585 (= e!254877 e!254880)))

(declare-fun res!253117 () Bool)

(assert (=> b!430585 (=> (not res!253117) (not e!254880))))

(assert (=> b!430585 (= res!253117 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!197056 mask!1025))))

(assert (=> b!430585 (= lt!197056 (array!26348 (store (arr!12620 _keys!709) i!563 k!794) (size!12972 _keys!709)))))

(declare-fun mapNonEmpty!18522 () Bool)

(declare-fun mapRes!18522 () Bool)

(declare-fun tp!35874 () Bool)

(assert (=> mapNonEmpty!18522 (= mapRes!18522 (and tp!35874 e!254875))))

(declare-fun mapRest!18522 () (Array (_ BitVec 32) ValueCell!5290))

(declare-fun mapKey!18522 () (_ BitVec 32))

(declare-fun mapValue!18522 () ValueCell!5290)

(assert (=> mapNonEmpty!18522 (= (arr!12621 _values!549) (store mapRest!18522 mapKey!18522 mapValue!18522))))

(declare-fun b!430586 () Bool)

(declare-fun e!254882 () Bool)

(assert (=> b!430586 (= e!254882 true)))

(declare-fun lt!197063 () tuple2!7414)

(declare-fun lt!197064 () ListLongMap!6341)

(assert (=> b!430586 (= lt!197064 (+!1334 (+!1334 lt!197054 lt!197063) lt!197061))))

(declare-fun lt!197066 () V!16127)

(declare-fun lt!197055 () Unit!12644)

(declare-fun addCommutativeForDiffKeys!353 (ListLongMap!6341 (_ BitVec 64) V!16127 (_ BitVec 64) V!16127) Unit!12644)

(assert (=> b!430586 (= lt!197055 (addCommutativeForDiffKeys!353 lt!197054 k!794 v!412 (select (arr!12620 _keys!709) from!863) lt!197066))))

(declare-fun b!430587 () Bool)

(declare-fun res!253118 () Bool)

(assert (=> b!430587 (=> (not res!253118) (not e!254877))))

(assert (=> b!430587 (= res!253118 (and (= (size!12973 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12972 _keys!709) (size!12973 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!430588 () Bool)

(assert (=> b!430588 (= e!254883 (and e!254884 mapRes!18522))))

(declare-fun condMapEmpty!18522 () Bool)

(declare-fun mapDefault!18522 () ValueCell!5290)

