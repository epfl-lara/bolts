; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40384 () Bool)

(assert start!40384)

(declare-fun b!443483 () Bool)

(declare-fun res!262912 () Bool)

(declare-fun e!260914 () Bool)

(assert (=> b!443483 (=> (not res!262912) (not e!260914))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!443483 (= res!262912 (validMask!0 mask!1025))))

(declare-fun b!443484 () Bool)

(declare-fun e!260918 () Bool)

(assert (=> b!443484 (= e!260918 false)))

(declare-fun lt!203337 () Bool)

(declare-datatypes ((array!27301 0))(
  ( (array!27302 (arr!13095 (Array (_ BitVec 32) (_ BitVec 64))) (size!13447 (_ BitVec 32))) )
))
(declare-fun lt!203336 () array!27301)

(declare-datatypes ((List!7826 0))(
  ( (Nil!7823) (Cons!7822 (h!8678 (_ BitVec 64)) (t!13592 List!7826)) )
))
(declare-fun arrayNoDuplicates!0 (array!27301 (_ BitVec 32) List!7826) Bool)

(assert (=> b!443484 (= lt!203337 (arrayNoDuplicates!0 lt!203336 #b00000000000000000000000000000000 Nil!7823))))

(declare-fun b!443485 () Bool)

(declare-fun res!262907 () Bool)

(assert (=> b!443485 (=> (not res!262907) (not e!260914))))

(declare-fun _keys!709 () array!27301)

(assert (=> b!443485 (= res!262907 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7823))))

(declare-fun b!443486 () Bool)

(assert (=> b!443486 (= e!260914 e!260918)))

(declare-fun res!262908 () Bool)

(assert (=> b!443486 (=> (not res!262908) (not e!260918))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27301 (_ BitVec 32)) Bool)

(assert (=> b!443486 (= res!262908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203336 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!443486 (= lt!203336 (array!27302 (store (arr!13095 _keys!709) i!563 k!794) (size!13447 _keys!709)))))

(declare-fun b!443487 () Bool)

(declare-fun e!260919 () Bool)

(declare-fun tp_is_empty!11761 () Bool)

(assert (=> b!443487 (= e!260919 tp_is_empty!11761)))

(declare-fun b!443488 () Bool)

(declare-fun res!262914 () Bool)

(assert (=> b!443488 (=> (not res!262914) (not e!260914))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!443488 (= res!262914 (validKeyInArray!0 k!794))))

(declare-fun b!443489 () Bool)

(declare-fun res!262906 () Bool)

(assert (=> b!443489 (=> (not res!262906) (not e!260914))))

(declare-fun arrayContainsKey!0 (array!27301 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!443489 (= res!262906 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!443490 () Bool)

(declare-fun res!262915 () Bool)

(assert (=> b!443490 (=> (not res!262915) (not e!260914))))

(assert (=> b!443490 (= res!262915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!443491 () Bool)

(declare-fun e!260916 () Bool)

(declare-fun e!260915 () Bool)

(declare-fun mapRes!19269 () Bool)

(assert (=> b!443491 (= e!260916 (and e!260915 mapRes!19269))))

(declare-fun condMapEmpty!19269 () Bool)

(declare-datatypes ((V!16787 0))(
  ( (V!16788 (val!5925 Int)) )
))
(declare-datatypes ((ValueCell!5537 0))(
  ( (ValueCellFull!5537 (v!8172 V!16787)) (EmptyCell!5537) )
))
(declare-datatypes ((array!27303 0))(
  ( (array!27304 (arr!13096 (Array (_ BitVec 32) ValueCell!5537)) (size!13448 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27303)

(declare-fun mapDefault!19269 () ValueCell!5537)

