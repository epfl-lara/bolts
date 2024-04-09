; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40414 () Bool)

(assert start!40414)

(declare-fun res!263360 () Bool)

(declare-fun e!261184 () Bool)

(assert (=> start!40414 (=> (not res!263360) (not e!261184))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!27355 0))(
  ( (array!27356 (arr!13122 (Array (_ BitVec 32) (_ BitVec 64))) (size!13474 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27355)

(assert (=> start!40414 (= res!263360 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13474 _keys!709))))))

(assert (=> start!40414 e!261184))

(assert (=> start!40414 true))

(declare-datatypes ((V!16827 0))(
  ( (V!16828 (val!5940 Int)) )
))
(declare-datatypes ((ValueCell!5552 0))(
  ( (ValueCellFull!5552 (v!8187 V!16827)) (EmptyCell!5552) )
))
(declare-datatypes ((array!27357 0))(
  ( (array!27358 (arr!13123 (Array (_ BitVec 32) ValueCell!5552)) (size!13475 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27357)

(declare-fun e!261187 () Bool)

(declare-fun array_inv!9508 (array!27357) Bool)

(assert (=> start!40414 (and (array_inv!9508 _values!549) e!261187)))

(declare-fun array_inv!9509 (array!27355) Bool)

(assert (=> start!40414 (array_inv!9509 _keys!709)))

(declare-fun b!444068 () Bool)

(declare-fun e!261186 () Bool)

(assert (=> b!444068 (= e!261186 false)))

(declare-fun lt!203426 () Bool)

(declare-fun lt!203427 () array!27355)

(declare-datatypes ((List!7837 0))(
  ( (Nil!7834) (Cons!7833 (h!8689 (_ BitVec 64)) (t!13603 List!7837)) )
))
(declare-fun arrayNoDuplicates!0 (array!27355 (_ BitVec 32) List!7837) Bool)

(assert (=> b!444068 (= lt!203426 (arrayNoDuplicates!0 lt!203427 #b00000000000000000000000000000000 Nil!7834))))

(declare-fun b!444069 () Bool)

(declare-fun e!261188 () Bool)

(declare-fun tp_is_empty!11791 () Bool)

(assert (=> b!444069 (= e!261188 tp_is_empty!11791)))

(declare-fun b!444070 () Bool)

(declare-fun res!263357 () Bool)

(assert (=> b!444070 (=> (not res!263357) (not e!261184))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!444070 (= res!263357 (validKeyInArray!0 k!794))))

(declare-fun b!444071 () Bool)

(declare-fun res!263365 () Bool)

(assert (=> b!444071 (=> (not res!263365) (not e!261184))))

(declare-fun arrayContainsKey!0 (array!27355 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!444071 (= res!263365 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!444072 () Bool)

(declare-fun res!263364 () Bool)

(assert (=> b!444072 (=> (not res!263364) (not e!261184))))

(assert (=> b!444072 (= res!263364 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7834))))

(declare-fun b!444073 () Bool)

(declare-fun res!263363 () Bool)

(assert (=> b!444073 (=> (not res!263363) (not e!261184))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!444073 (= res!263363 (and (= (size!13475 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13474 _keys!709) (size!13475 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!19314 () Bool)

(declare-fun mapRes!19314 () Bool)

(assert (=> mapIsEmpty!19314 mapRes!19314))

(declare-fun mapNonEmpty!19314 () Bool)

(declare-fun tp!37296 () Bool)

(assert (=> mapNonEmpty!19314 (= mapRes!19314 (and tp!37296 e!261188))))

(declare-fun mapValue!19314 () ValueCell!5552)

(declare-fun mapKey!19314 () (_ BitVec 32))

(declare-fun mapRest!19314 () (Array (_ BitVec 32) ValueCell!5552))

(assert (=> mapNonEmpty!19314 (= (arr!13123 _values!549) (store mapRest!19314 mapKey!19314 mapValue!19314))))

(declare-fun b!444074 () Bool)

(assert (=> b!444074 (= e!261184 e!261186)))

(declare-fun res!263362 () Bool)

(assert (=> b!444074 (=> (not res!263362) (not e!261186))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27355 (_ BitVec 32)) Bool)

(assert (=> b!444074 (= res!263362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203427 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!444074 (= lt!203427 (array!27356 (store (arr!13122 _keys!709) i!563 k!794) (size!13474 _keys!709)))))

(declare-fun b!444075 () Bool)

(declare-fun res!263358 () Bool)

(assert (=> b!444075 (=> (not res!263358) (not e!261184))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!444075 (= res!263358 (validMask!0 mask!1025))))

(declare-fun b!444076 () Bool)

(declare-fun res!263361 () Bool)

(assert (=> b!444076 (=> (not res!263361) (not e!261184))))

(assert (=> b!444076 (= res!263361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!444077 () Bool)

(declare-fun e!261189 () Bool)

(assert (=> b!444077 (= e!261189 tp_is_empty!11791)))

(declare-fun b!444078 () Bool)

(declare-fun res!263359 () Bool)

(assert (=> b!444078 (=> (not res!263359) (not e!261184))))

(assert (=> b!444078 (= res!263359 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13474 _keys!709))))))

(declare-fun b!444079 () Bool)

(assert (=> b!444079 (= e!261187 (and e!261189 mapRes!19314))))

(declare-fun condMapEmpty!19314 () Bool)

(declare-fun mapDefault!19314 () ValueCell!5552)

