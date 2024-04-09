; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40432 () Bool)

(assert start!40432)

(declare-fun mapNonEmpty!19341 () Bool)

(declare-fun mapRes!19341 () Bool)

(declare-fun tp!37323 () Bool)

(declare-fun e!261347 () Bool)

(assert (=> mapNonEmpty!19341 (= mapRes!19341 (and tp!37323 e!261347))))

(declare-fun mapKey!19341 () (_ BitVec 32))

(declare-datatypes ((V!16851 0))(
  ( (V!16852 (val!5949 Int)) )
))
(declare-datatypes ((ValueCell!5561 0))(
  ( (ValueCellFull!5561 (v!8196 V!16851)) (EmptyCell!5561) )
))
(declare-fun mapValue!19341 () ValueCell!5561)

(declare-fun mapRest!19341 () (Array (_ BitVec 32) ValueCell!5561))

(declare-datatypes ((array!27389 0))(
  ( (array!27390 (arr!13139 (Array (_ BitVec 32) ValueCell!5561)) (size!13491 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27389)

(assert (=> mapNonEmpty!19341 (= (arr!13139 _values!549) (store mapRest!19341 mapKey!19341 mapValue!19341))))

(declare-fun b!444419 () Bool)

(declare-fun e!261349 () Bool)

(assert (=> b!444419 (= e!261349 false)))

(declare-fun lt!203481 () Bool)

(declare-datatypes ((array!27391 0))(
  ( (array!27392 (arr!13140 (Array (_ BitVec 32) (_ BitVec 64))) (size!13492 (_ BitVec 32))) )
))
(declare-fun lt!203480 () array!27391)

(declare-datatypes ((List!7845 0))(
  ( (Nil!7842) (Cons!7841 (h!8697 (_ BitVec 64)) (t!13611 List!7845)) )
))
(declare-fun arrayNoDuplicates!0 (array!27391 (_ BitVec 32) List!7845) Bool)

(assert (=> b!444419 (= lt!203481 (arrayNoDuplicates!0 lt!203480 #b00000000000000000000000000000000 Nil!7842))))

(declare-fun b!444420 () Bool)

(declare-fun res!263627 () Bool)

(declare-fun e!261350 () Bool)

(assert (=> b!444420 (=> (not res!263627) (not e!261350))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!444420 (= res!263627 (validKeyInArray!0 k!794))))

(declare-fun b!444421 () Bool)

(assert (=> b!444421 (= e!261350 e!261349)))

(declare-fun res!263634 () Bool)

(assert (=> b!444421 (=> (not res!263634) (not e!261349))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27391 (_ BitVec 32)) Bool)

(assert (=> b!444421 (= res!263634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203480 mask!1025))))

(declare-fun _keys!709 () array!27391)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!444421 (= lt!203480 (array!27392 (store (arr!13140 _keys!709) i!563 k!794) (size!13492 _keys!709)))))

(declare-fun res!263629 () Bool)

(assert (=> start!40432 (=> (not res!263629) (not e!261350))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40432 (= res!263629 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13492 _keys!709))))))

(assert (=> start!40432 e!261350))

(assert (=> start!40432 true))

(declare-fun e!261346 () Bool)

(declare-fun array_inv!9518 (array!27389) Bool)

(assert (=> start!40432 (and (array_inv!9518 _values!549) e!261346)))

(declare-fun array_inv!9519 (array!27391) Bool)

(assert (=> start!40432 (array_inv!9519 _keys!709)))

(declare-fun b!444422 () Bool)

(declare-fun res!263630 () Bool)

(assert (=> b!444422 (=> (not res!263630) (not e!261350))))

(assert (=> b!444422 (= res!263630 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7842))))

(declare-fun b!444423 () Bool)

(declare-fun res!263626 () Bool)

(assert (=> b!444423 (=> (not res!263626) (not e!261350))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!444423 (= res!263626 (validMask!0 mask!1025))))

(declare-fun b!444424 () Bool)

(declare-fun res!263632 () Bool)

(assert (=> b!444424 (=> (not res!263632) (not e!261350))))

(assert (=> b!444424 (= res!263632 (or (= (select (arr!13140 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13140 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!444425 () Bool)

(declare-fun res!263633 () Bool)

(assert (=> b!444425 (=> (not res!263633) (not e!261350))))

(declare-fun arrayContainsKey!0 (array!27391 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!444425 (= res!263633 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!444426 () Bool)

(declare-fun e!261351 () Bool)

(declare-fun tp_is_empty!11809 () Bool)

(assert (=> b!444426 (= e!261351 tp_is_empty!11809)))

(declare-fun b!444427 () Bool)

(declare-fun res!263628 () Bool)

(assert (=> b!444427 (=> (not res!263628) (not e!261350))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!444427 (= res!263628 (and (= (size!13491 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13492 _keys!709) (size!13491 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!444428 () Bool)

(assert (=> b!444428 (= e!261347 tp_is_empty!11809)))

(declare-fun b!444429 () Bool)

(declare-fun res!263635 () Bool)

(assert (=> b!444429 (=> (not res!263635) (not e!261350))))

(assert (=> b!444429 (= res!263635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19341 () Bool)

(assert (=> mapIsEmpty!19341 mapRes!19341))

(declare-fun b!444430 () Bool)

(declare-fun res!263631 () Bool)

(assert (=> b!444430 (=> (not res!263631) (not e!261350))))

(assert (=> b!444430 (= res!263631 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13492 _keys!709))))))

(declare-fun b!444431 () Bool)

(assert (=> b!444431 (= e!261346 (and e!261351 mapRes!19341))))

(declare-fun condMapEmpty!19341 () Bool)

(declare-fun mapDefault!19341 () ValueCell!5561)

