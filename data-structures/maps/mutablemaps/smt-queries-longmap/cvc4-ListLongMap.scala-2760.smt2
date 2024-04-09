; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40424 () Bool)

(assert start!40424)

(declare-fun b!444263 () Bool)

(declare-fun res!263508 () Bool)

(declare-fun e!261278 () Bool)

(assert (=> b!444263 (=> (not res!263508) (not e!261278))))

(declare-datatypes ((array!27373 0))(
  ( (array!27374 (arr!13131 (Array (_ BitVec 32) (_ BitVec 64))) (size!13483 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27373)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27373 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!444263 (= res!263508 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!444264 () Bool)

(declare-fun e!261277 () Bool)

(assert (=> b!444264 (= e!261278 e!261277)))

(declare-fun res!263515 () Bool)

(assert (=> b!444264 (=> (not res!263515) (not e!261277))))

(declare-fun lt!203457 () array!27373)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27373 (_ BitVec 32)) Bool)

(assert (=> b!444264 (= res!263515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203457 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!444264 (= lt!203457 (array!27374 (store (arr!13131 _keys!709) i!563 k!794) (size!13483 _keys!709)))))

(declare-fun b!444265 () Bool)

(declare-fun res!263506 () Bool)

(assert (=> b!444265 (=> (not res!263506) (not e!261278))))

(declare-datatypes ((List!7841 0))(
  ( (Nil!7838) (Cons!7837 (h!8693 (_ BitVec 64)) (t!13607 List!7841)) )
))
(declare-fun arrayNoDuplicates!0 (array!27373 (_ BitVec 32) List!7841) Bool)

(assert (=> b!444265 (= res!263506 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7838))))

(declare-fun b!444266 () Bool)

(declare-fun res!263514 () Bool)

(assert (=> b!444266 (=> (not res!263514) (not e!261278))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!444266 (= res!263514 (validMask!0 mask!1025))))

(declare-fun mapNonEmpty!19329 () Bool)

(declare-fun mapRes!19329 () Bool)

(declare-fun tp!37311 () Bool)

(declare-fun e!261276 () Bool)

(assert (=> mapNonEmpty!19329 (= mapRes!19329 (and tp!37311 e!261276))))

(declare-fun mapKey!19329 () (_ BitVec 32))

(declare-datatypes ((V!16839 0))(
  ( (V!16840 (val!5945 Int)) )
))
(declare-datatypes ((ValueCell!5557 0))(
  ( (ValueCellFull!5557 (v!8192 V!16839)) (EmptyCell!5557) )
))
(declare-fun mapValue!19329 () ValueCell!5557)

(declare-datatypes ((array!27375 0))(
  ( (array!27376 (arr!13132 (Array (_ BitVec 32) ValueCell!5557)) (size!13484 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27375)

(declare-fun mapRest!19329 () (Array (_ BitVec 32) ValueCell!5557))

(assert (=> mapNonEmpty!19329 (= (arr!13132 _values!549) (store mapRest!19329 mapKey!19329 mapValue!19329))))

(declare-fun b!444267 () Bool)

(declare-fun res!263507 () Bool)

(assert (=> b!444267 (=> (not res!263507) (not e!261278))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!444267 (= res!263507 (and (= (size!13484 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13483 _keys!709) (size!13484 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!444268 () Bool)

(declare-fun res!263509 () Bool)

(assert (=> b!444268 (=> (not res!263509) (not e!261278))))

(assert (=> b!444268 (= res!263509 (or (= (select (arr!13131 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13131 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!444269 () Bool)

(declare-fun res!263512 () Bool)

(assert (=> b!444269 (=> (not res!263512) (not e!261278))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!444269 (= res!263512 (validKeyInArray!0 k!794))))

(declare-fun b!444270 () Bool)

(declare-fun e!261274 () Bool)

(declare-fun e!261275 () Bool)

(assert (=> b!444270 (= e!261274 (and e!261275 mapRes!19329))))

(declare-fun condMapEmpty!19329 () Bool)

(declare-fun mapDefault!19329 () ValueCell!5557)

