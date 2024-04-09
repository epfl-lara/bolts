; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40174 () Bool)

(assert start!40174)

(declare-fun b_free!10433 () Bool)

(declare-fun b_next!10433 () Bool)

(assert (=> start!40174 (= b_free!10433 (not b_next!10433))))

(declare-fun tp!36827 () Bool)

(declare-fun b_and!18419 () Bool)

(assert (=> start!40174 (= tp!36827 b_and!18419)))

(declare-fun res!259902 () Bool)

(declare-fun e!259081 () Bool)

(assert (=> start!40174 (=> (not res!259902) (not e!259081))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!26961 0))(
  ( (array!26962 (arr!12927 (Array (_ BitVec 32) (_ BitVec 64))) (size!13279 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26961)

(assert (=> start!40174 (= res!259902 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13279 _keys!709))))))

(assert (=> start!40174 e!259081))

(declare-fun tp_is_empty!11585 () Bool)

(assert (=> start!40174 tp_is_empty!11585))

(assert (=> start!40174 tp!36827))

(assert (=> start!40174 true))

(declare-datatypes ((V!16551 0))(
  ( (V!16552 (val!5837 Int)) )
))
(declare-datatypes ((ValueCell!5449 0))(
  ( (ValueCellFull!5449 (v!8080 V!16551)) (EmptyCell!5449) )
))
(declare-datatypes ((array!26963 0))(
  ( (array!26964 (arr!12928 (Array (_ BitVec 32) ValueCell!5449)) (size!13280 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26963)

(declare-fun e!259085 () Bool)

(declare-fun array_inv!9376 (array!26963) Bool)

(assert (=> start!40174 (and (array_inv!9376 _values!549) e!259085)))

(declare-fun array_inv!9377 (array!26961) Bool)

(assert (=> start!40174 (array_inv!9377 _keys!709)))

(declare-fun b!439553 () Bool)

(declare-fun res!259890 () Bool)

(declare-fun e!259084 () Bool)

(assert (=> b!439553 (=> (not res!259890) (not e!259084))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!439553 (= res!259890 (bvsle from!863 i!563))))

(declare-fun b!439554 () Bool)

(declare-fun res!259895 () Bool)

(assert (=> b!439554 (=> (not res!259895) (not e!259081))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!439554 (= res!259895 (validKeyInArray!0 k!794))))

(declare-fun b!439555 () Bool)

(declare-fun e!259083 () Bool)

(assert (=> b!439555 (= e!259083 (not true))))

(declare-fun minValue!515 () V!16551)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16551)

(declare-fun lt!202328 () array!26963)

(declare-fun lt!202332 () array!26961)

(declare-fun v!412 () V!16551)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7674 0))(
  ( (tuple2!7675 (_1!3847 (_ BitVec 64)) (_2!3847 V!16551)) )
))
(declare-datatypes ((List!7717 0))(
  ( (Nil!7714) (Cons!7713 (h!8569 tuple2!7674) (t!13481 List!7717)) )
))
(declare-datatypes ((ListLongMap!6601 0))(
  ( (ListLongMap!6602 (toList!3316 List!7717)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1498 (array!26961 array!26963 (_ BitVec 32) (_ BitVec 32) V!16551 V!16551 (_ BitVec 32) Int) ListLongMap!6601)

(declare-fun +!1455 (ListLongMap!6601 tuple2!7674) ListLongMap!6601)

(assert (=> b!439555 (= (getCurrentListMapNoExtraKeys!1498 lt!202332 lt!202328 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1455 (getCurrentListMapNoExtraKeys!1498 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7675 k!794 v!412)))))

(declare-datatypes ((Unit!13025 0))(
  ( (Unit!13026) )
))
(declare-fun lt!202329 () Unit!13025)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!633 (array!26961 array!26963 (_ BitVec 32) (_ BitVec 32) V!16551 V!16551 (_ BitVec 32) (_ BitVec 64) V!16551 (_ BitVec 32) Int) Unit!13025)

(assert (=> b!439555 (= lt!202329 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!633 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!18999 () Bool)

(declare-fun mapRes!18999 () Bool)

(assert (=> mapIsEmpty!18999 mapRes!18999))

(declare-fun b!439556 () Bool)

(declare-fun e!259087 () Bool)

(assert (=> b!439556 (= e!259087 tp_is_empty!11585)))

(declare-fun b!439557 () Bool)

(assert (=> b!439557 (= e!259081 e!259084)))

(declare-fun res!259897 () Bool)

(assert (=> b!439557 (=> (not res!259897) (not e!259084))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26961 (_ BitVec 32)) Bool)

(assert (=> b!439557 (= res!259897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202332 mask!1025))))

(assert (=> b!439557 (= lt!202332 (array!26962 (store (arr!12927 _keys!709) i!563 k!794) (size!13279 _keys!709)))))

(declare-fun b!439558 () Bool)

(declare-fun e!259082 () Bool)

(assert (=> b!439558 (= e!259082 tp_is_empty!11585)))

(declare-fun b!439559 () Bool)

(declare-fun res!259896 () Bool)

(assert (=> b!439559 (=> (not res!259896) (not e!259081))))

(declare-datatypes ((List!7718 0))(
  ( (Nil!7715) (Cons!7714 (h!8570 (_ BitVec 64)) (t!13482 List!7718)) )
))
(declare-fun arrayNoDuplicates!0 (array!26961 (_ BitVec 32) List!7718) Bool)

(assert (=> b!439559 (= res!259896 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7715))))

(declare-fun b!439560 () Bool)

(declare-fun res!259899 () Bool)

(assert (=> b!439560 (=> (not res!259899) (not e!259081))))

(declare-fun arrayContainsKey!0 (array!26961 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!439560 (= res!259899 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!439561 () Bool)

(declare-fun res!259900 () Bool)

(assert (=> b!439561 (=> (not res!259900) (not e!259081))))

(assert (=> b!439561 (= res!259900 (and (= (size!13280 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13279 _keys!709) (size!13280 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!439562 () Bool)

(declare-fun res!259894 () Bool)

(assert (=> b!439562 (=> (not res!259894) (not e!259081))))

(assert (=> b!439562 (= res!259894 (or (= (select (arr!12927 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12927 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!439563 () Bool)

(assert (=> b!439563 (= e!259085 (and e!259082 mapRes!18999))))

(declare-fun condMapEmpty!18999 () Bool)

(declare-fun mapDefault!18999 () ValueCell!5449)

