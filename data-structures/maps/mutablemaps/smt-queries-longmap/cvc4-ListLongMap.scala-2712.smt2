; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40102 () Bool)

(assert start!40102)

(declare-fun b_free!10361 () Bool)

(declare-fun b_next!10361 () Bool)

(assert (=> start!40102 (= b_free!10361 (not b_next!10361))))

(declare-fun tp!36611 () Bool)

(declare-fun b_and!18347 () Bool)

(assert (=> start!40102 (= tp!36611 b_and!18347)))

(declare-fun res!258490 () Bool)

(declare-fun e!258329 () Bool)

(assert (=> start!40102 (=> (not res!258490) (not e!258329))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!26823 0))(
  ( (array!26824 (arr!12858 (Array (_ BitVec 32) (_ BitVec 64))) (size!13210 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26823)

(assert (=> start!40102 (= res!258490 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13210 _keys!709))))))

(assert (=> start!40102 e!258329))

(declare-fun tp_is_empty!11513 () Bool)

(assert (=> start!40102 tp_is_empty!11513))

(assert (=> start!40102 tp!36611))

(assert (=> start!40102 true))

(declare-datatypes ((V!16455 0))(
  ( (V!16456 (val!5801 Int)) )
))
(declare-datatypes ((ValueCell!5413 0))(
  ( (ValueCellFull!5413 (v!8044 V!16455)) (EmptyCell!5413) )
))
(declare-datatypes ((array!26825 0))(
  ( (array!26826 (arr!12859 (Array (_ BitVec 32) ValueCell!5413)) (size!13211 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26825)

(declare-fun e!258330 () Bool)

(declare-fun array_inv!9336 (array!26825) Bool)

(assert (=> start!40102 (and (array_inv!9336 _values!549) e!258330)))

(declare-fun array_inv!9337 (array!26823) Bool)

(assert (=> start!40102 (array_inv!9337 _keys!709)))

(declare-fun b!437825 () Bool)

(declare-fun res!258486 () Bool)

(assert (=> b!437825 (=> (not res!258486) (not e!258329))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26823 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!437825 (= res!258486 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!437826 () Bool)

(declare-fun res!258493 () Bool)

(assert (=> b!437826 (=> (not res!258493) (not e!258329))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26823 (_ BitVec 32)) Bool)

(assert (=> b!437826 (= res!258493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!437827 () Bool)

(declare-fun e!258325 () Bool)

(assert (=> b!437827 (= e!258325 tp_is_empty!11513)))

(declare-fun b!437828 () Bool)

(declare-fun e!258326 () Bool)

(assert (=> b!437828 (= e!258326 (not true))))

(declare-fun minValue!515 () V!16455)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16455)

(declare-fun v!412 () V!16455)

(declare-fun lt!201790 () array!26823)

(declare-fun lt!201791 () array!26825)

(declare-datatypes ((tuple2!7620 0))(
  ( (tuple2!7621 (_1!3820 (_ BitVec 64)) (_2!3820 V!16455)) )
))
(declare-datatypes ((List!7665 0))(
  ( (Nil!7662) (Cons!7661 (h!8517 tuple2!7620) (t!13429 List!7665)) )
))
(declare-datatypes ((ListLongMap!6547 0))(
  ( (ListLongMap!6548 (toList!3289 List!7665)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1471 (array!26823 array!26825 (_ BitVec 32) (_ BitVec 32) V!16455 V!16455 (_ BitVec 32) Int) ListLongMap!6547)

(declare-fun +!1432 (ListLongMap!6547 tuple2!7620) ListLongMap!6547)

(assert (=> b!437828 (= (getCurrentListMapNoExtraKeys!1471 lt!201790 lt!201791 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1432 (getCurrentListMapNoExtraKeys!1471 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7621 k!794 v!412)))))

(declare-datatypes ((Unit!12979 0))(
  ( (Unit!12980) )
))
(declare-fun lt!201788 () Unit!12979)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!610 (array!26823 array!26825 (_ BitVec 32) (_ BitVec 32) V!16455 V!16455 (_ BitVec 32) (_ BitVec 64) V!16455 (_ BitVec 32) Int) Unit!12979)

(assert (=> b!437828 (= lt!201788 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!610 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!437829 () Bool)

(declare-fun res!258494 () Bool)

(assert (=> b!437829 (=> (not res!258494) (not e!258329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!437829 (= res!258494 (validKeyInArray!0 k!794))))

(declare-fun b!437830 () Bool)

(declare-fun res!258498 () Bool)

(declare-fun e!258331 () Bool)

(assert (=> b!437830 (=> (not res!258498) (not e!258331))))

(assert (=> b!437830 (= res!258498 (bvsle from!863 i!563))))

(declare-fun b!437831 () Bool)

(declare-fun res!258489 () Bool)

(assert (=> b!437831 (=> (not res!258489) (not e!258329))))

(assert (=> b!437831 (= res!258489 (or (= (select (arr!12858 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12858 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!18891 () Bool)

(declare-fun mapRes!18891 () Bool)

(declare-fun tp!36612 () Bool)

(declare-fun e!258328 () Bool)

(assert (=> mapNonEmpty!18891 (= mapRes!18891 (and tp!36612 e!258328))))

(declare-fun mapKey!18891 () (_ BitVec 32))

(declare-fun mapRest!18891 () (Array (_ BitVec 32) ValueCell!5413))

(declare-fun mapValue!18891 () ValueCell!5413)

(assert (=> mapNonEmpty!18891 (= (arr!12859 _values!549) (store mapRest!18891 mapKey!18891 mapValue!18891))))

(declare-fun b!437832 () Bool)

(declare-fun res!258497 () Bool)

(assert (=> b!437832 (=> (not res!258497) (not e!258329))))

(assert (=> b!437832 (= res!258497 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13210 _keys!709))))))

(declare-fun b!437833 () Bool)

(assert (=> b!437833 (= e!258330 (and e!258325 mapRes!18891))))

(declare-fun condMapEmpty!18891 () Bool)

(declare-fun mapDefault!18891 () ValueCell!5413)

