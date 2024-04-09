; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40382 () Bool)

(assert start!40382)

(declare-fun b!443444 () Bool)

(declare-fun res!262878 () Bool)

(declare-fun e!260899 () Bool)

(assert (=> b!443444 (=> (not res!262878) (not e!260899))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!443444 (= res!262878 (validMask!0 mask!1025))))

(declare-fun b!443445 () Bool)

(declare-fun res!262885 () Bool)

(assert (=> b!443445 (=> (not res!262885) (not e!260899))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!443445 (= res!262885 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!19266 () Bool)

(declare-fun mapRes!19266 () Bool)

(declare-fun tp!37248 () Bool)

(declare-fun e!260897 () Bool)

(assert (=> mapNonEmpty!19266 (= mapRes!19266 (and tp!37248 e!260897))))

(declare-datatypes ((V!16783 0))(
  ( (V!16784 (val!5924 Int)) )
))
(declare-datatypes ((ValueCell!5536 0))(
  ( (ValueCellFull!5536 (v!8171 V!16783)) (EmptyCell!5536) )
))
(declare-fun mapValue!19266 () ValueCell!5536)

(declare-fun mapKey!19266 () (_ BitVec 32))

(declare-datatypes ((array!27297 0))(
  ( (array!27298 (arr!13093 (Array (_ BitVec 32) ValueCell!5536)) (size!13445 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27297)

(declare-fun mapRest!19266 () (Array (_ BitVec 32) ValueCell!5536))

(assert (=> mapNonEmpty!19266 (= (arr!13093 _values!549) (store mapRest!19266 mapKey!19266 mapValue!19266))))

(declare-fun b!443446 () Bool)

(declare-fun e!260898 () Bool)

(assert (=> b!443446 (= e!260899 e!260898)))

(declare-fun res!262882 () Bool)

(assert (=> b!443446 (=> (not res!262882) (not e!260898))))

(declare-datatypes ((array!27299 0))(
  ( (array!27300 (arr!13094 (Array (_ BitVec 32) (_ BitVec 64))) (size!13446 (_ BitVec 32))) )
))
(declare-fun lt!203331 () array!27299)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27299 (_ BitVec 32)) Bool)

(assert (=> b!443446 (= res!262882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203331 mask!1025))))

(declare-fun _keys!709 () array!27299)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!443446 (= lt!203331 (array!27300 (store (arr!13094 _keys!709) i!563 k!794) (size!13446 _keys!709)))))

(declare-fun b!443447 () Bool)

(declare-fun res!262876 () Bool)

(assert (=> b!443447 (=> (not res!262876) (not e!260899))))

(assert (=> b!443447 (= res!262876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!443448 () Bool)

(declare-fun res!262880 () Bool)

(assert (=> b!443448 (=> (not res!262880) (not e!260899))))

(assert (=> b!443448 (= res!262880 (or (= (select (arr!13094 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13094 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!443450 () Bool)

(assert (=> b!443450 (= e!260898 false)))

(declare-fun lt!203330 () Bool)

(declare-datatypes ((List!7825 0))(
  ( (Nil!7822) (Cons!7821 (h!8677 (_ BitVec 64)) (t!13591 List!7825)) )
))
(declare-fun arrayNoDuplicates!0 (array!27299 (_ BitVec 32) List!7825) Bool)

(assert (=> b!443450 (= lt!203330 (arrayNoDuplicates!0 lt!203331 #b00000000000000000000000000000000 Nil!7822))))

(declare-fun mapIsEmpty!19266 () Bool)

(assert (=> mapIsEmpty!19266 mapRes!19266))

(declare-fun b!443451 () Bool)

(declare-fun e!260896 () Bool)

(declare-fun e!260900 () Bool)

(assert (=> b!443451 (= e!260896 (and e!260900 mapRes!19266))))

(declare-fun condMapEmpty!19266 () Bool)

(declare-fun mapDefault!19266 () ValueCell!5536)

