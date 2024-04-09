; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40258 () Bool)

(assert start!40258)

(declare-fun b_free!10517 () Bool)

(declare-fun b_next!10517 () Bool)

(assert (=> start!40258 (= b_free!10517 (not b_next!10517))))

(declare-fun tp!37079 () Bool)

(declare-fun b_and!18503 () Bool)

(assert (=> start!40258 (= tp!37079 b_and!18503)))

(declare-fun b!441569 () Bool)

(declare-fun res!261534 () Bool)

(declare-fun e!259963 () Bool)

(assert (=> b!441569 (=> (not res!261534) (not e!259963))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!441569 (= res!261534 (bvsle from!863 i!563))))

(declare-fun b!441570 () Bool)

(declare-fun res!261537 () Bool)

(declare-fun e!259966 () Bool)

(assert (=> b!441570 (=> (not res!261537) (not e!259966))))

(declare-datatypes ((array!27125 0))(
  ( (array!27126 (arr!13009 (Array (_ BitVec 32) (_ BitVec 64))) (size!13361 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27125)

(assert (=> b!441570 (= res!261537 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13361 _keys!709))))))

(declare-fun b!441571 () Bool)

(declare-fun res!261538 () Bool)

(assert (=> b!441571 (=> (not res!261538) (not e!259966))))

(assert (=> b!441571 (= res!261538 (or (= (select (arr!13009 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13009 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!19125 () Bool)

(declare-fun mapRes!19125 () Bool)

(assert (=> mapIsEmpty!19125 mapRes!19125))

(declare-fun b!441572 () Bool)

(declare-fun res!261532 () Bool)

(assert (=> b!441572 (=> (not res!261532) (not e!259966))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!441572 (= res!261532 (validMask!0 mask!1025))))

(declare-fun b!441573 () Bool)

(declare-fun e!259968 () Bool)

(declare-fun tp_is_empty!11669 () Bool)

(assert (=> b!441573 (= e!259968 tp_is_empty!11669)))

(declare-fun b!441574 () Bool)

(assert (=> b!441574 (= e!259966 e!259963)))

(declare-fun res!261528 () Bool)

(assert (=> b!441574 (=> (not res!261528) (not e!259963))))

(declare-fun lt!202961 () array!27125)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27125 (_ BitVec 32)) Bool)

(assert (=> b!441574 (= res!261528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202961 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!441574 (= lt!202961 (array!27126 (store (arr!13009 _keys!709) i!563 k!794) (size!13361 _keys!709)))))

(declare-fun b!441575 () Bool)

(declare-fun res!261531 () Bool)

(assert (=> b!441575 (=> (not res!261531) (not e!259966))))

(declare-fun arrayContainsKey!0 (array!27125 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!441575 (= res!261531 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!441576 () Bool)

(declare-fun e!259969 () Bool)

(assert (=> b!441576 (= e!259969 tp_is_empty!11669)))

(declare-fun b!441577 () Bool)

(declare-fun res!261533 () Bool)

(assert (=> b!441577 (=> (not res!261533) (not e!259966))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16663 0))(
  ( (V!16664 (val!5879 Int)) )
))
(declare-datatypes ((ValueCell!5491 0))(
  ( (ValueCellFull!5491 (v!8122 V!16663)) (EmptyCell!5491) )
))
(declare-datatypes ((array!27127 0))(
  ( (array!27128 (arr!13010 (Array (_ BitVec 32) ValueCell!5491)) (size!13362 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27127)

(assert (=> b!441577 (= res!261533 (and (= (size!13362 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13361 _keys!709) (size!13362 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!441578 () Bool)

(declare-fun e!259967 () Bool)

(assert (=> b!441578 (= e!259967 (and e!259968 mapRes!19125))))

(declare-fun condMapEmpty!19125 () Bool)

(declare-fun mapDefault!19125 () ValueCell!5491)

