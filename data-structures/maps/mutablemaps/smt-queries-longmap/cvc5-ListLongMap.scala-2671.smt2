; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39852 () Bool)

(assert start!39852)

(declare-fun b_free!10111 () Bool)

(declare-fun b_next!10111 () Bool)

(assert (=> start!39852 (= b_free!10111 (not b_next!10111))))

(declare-fun tp!35861 () Bool)

(declare-fun b_and!17899 () Bool)

(assert (=> start!39852 (= tp!35861 b_and!17899)))

(declare-fun b!430447 () Bool)

(declare-fun e!254816 () Bool)

(declare-fun tp_is_empty!11263 () Bool)

(assert (=> b!430447 (= e!254816 tp_is_empty!11263)))

(declare-fun b!430448 () Bool)

(declare-fun res!253021 () Bool)

(declare-fun e!254822 () Bool)

(assert (=> b!430448 (=> (not res!253021) (not e!254822))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!430448 (= res!253021 (bvsle from!863 i!563))))

(declare-fun b!430449 () Bool)

(declare-fun res!253025 () Bool)

(declare-fun e!254824 () Bool)

(assert (=> b!430449 (=> (not res!253025) (not e!254824))))

(declare-datatypes ((array!26339 0))(
  ( (array!26340 (arr!12616 (Array (_ BitVec 32) (_ BitVec 64))) (size!12968 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26339)

(assert (=> b!430449 (= res!253025 (or (= (select (arr!12616 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12616 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!430450 () Bool)

(declare-fun res!253032 () Bool)

(assert (=> b!430450 (=> (not res!253032) (not e!254824))))

(assert (=> b!430450 (= res!253032 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12968 _keys!709))))))

(declare-fun b!430451 () Bool)

(declare-datatypes ((Unit!12637 0))(
  ( (Unit!12638) )
))
(declare-fun e!254821 () Unit!12637)

(declare-fun Unit!12639 () Unit!12637)

(assert (=> b!430451 (= e!254821 Unit!12639)))

(declare-fun lt!196963 () Unit!12637)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26339 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12637)

(assert (=> b!430451 (= lt!196963 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!430451 false))

(declare-fun b!430452 () Bool)

(declare-fun res!253035 () Bool)

(assert (=> b!430452 (=> (not res!253035) (not e!254824))))

(declare-datatypes ((List!7465 0))(
  ( (Nil!7462) (Cons!7461 (h!8317 (_ BitVec 64)) (t!13033 List!7465)) )
))
(declare-fun arrayNoDuplicates!0 (array!26339 (_ BitVec 32) List!7465) Bool)

(assert (=> b!430452 (= res!253035 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7462))))

(declare-fun b!430453 () Bool)

(declare-fun res!253031 () Bool)

(assert (=> b!430453 (=> (not res!253031) (not e!254824))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26339 (_ BitVec 32)) Bool)

(assert (=> b!430453 (= res!253031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!430454 () Bool)

(declare-fun e!254823 () Bool)

(declare-fun e!254819 () Bool)

(declare-fun mapRes!18516 () Bool)

(assert (=> b!430454 (= e!254823 (and e!254819 mapRes!18516))))

(declare-fun condMapEmpty!18516 () Bool)

(declare-datatypes ((V!16123 0))(
  ( (V!16124 (val!5676 Int)) )
))
(declare-datatypes ((ValueCell!5288 0))(
  ( (ValueCellFull!5288 (v!7919 V!16123)) (EmptyCell!5288) )
))
(declare-datatypes ((array!26341 0))(
  ( (array!26342 (arr!12617 (Array (_ BitVec 32) ValueCell!5288)) (size!12969 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26341)

(declare-fun mapDefault!18516 () ValueCell!5288)

