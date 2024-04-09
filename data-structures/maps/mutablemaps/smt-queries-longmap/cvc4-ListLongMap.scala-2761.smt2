; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40430 () Bool)

(assert start!40430)

(declare-fun b!444380 () Bool)

(declare-fun res!263603 () Bool)

(declare-fun e!261328 () Bool)

(assert (=> b!444380 (=> (not res!263603) (not e!261328))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!444380 (= res!263603 (validKeyInArray!0 k!794))))

(declare-fun b!444381 () Bool)

(declare-fun e!261333 () Bool)

(assert (=> b!444381 (= e!261333 false)))

(declare-fun lt!203475 () Bool)

(declare-datatypes ((array!27385 0))(
  ( (array!27386 (arr!13137 (Array (_ BitVec 32) (_ BitVec 64))) (size!13489 (_ BitVec 32))) )
))
(declare-fun lt!203474 () array!27385)

(declare-datatypes ((List!7844 0))(
  ( (Nil!7841) (Cons!7840 (h!8696 (_ BitVec 64)) (t!13610 List!7844)) )
))
(declare-fun arrayNoDuplicates!0 (array!27385 (_ BitVec 32) List!7844) Bool)

(assert (=> b!444381 (= lt!203475 (arrayNoDuplicates!0 lt!203474 #b00000000000000000000000000000000 Nil!7841))))

(declare-fun b!444382 () Bool)

(assert (=> b!444382 (= e!261328 e!261333)))

(declare-fun res!263599 () Bool)

(assert (=> b!444382 (=> (not res!263599) (not e!261333))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27385 (_ BitVec 32)) Bool)

(assert (=> b!444382 (= res!263599 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203474 mask!1025))))

(declare-fun _keys!709 () array!27385)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!444382 (= lt!203474 (array!27386 (store (arr!13137 _keys!709) i!563 k!794) (size!13489 _keys!709)))))

(declare-fun b!444383 () Bool)

(declare-fun e!261329 () Bool)

(declare-fun tp_is_empty!11807 () Bool)

(assert (=> b!444383 (= e!261329 tp_is_empty!11807)))

(declare-fun b!444384 () Bool)

(declare-fun res!263600 () Bool)

(assert (=> b!444384 (=> (not res!263600) (not e!261328))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16847 0))(
  ( (V!16848 (val!5948 Int)) )
))
(declare-datatypes ((ValueCell!5560 0))(
  ( (ValueCellFull!5560 (v!8195 V!16847)) (EmptyCell!5560) )
))
(declare-datatypes ((array!27387 0))(
  ( (array!27388 (arr!13138 (Array (_ BitVec 32) ValueCell!5560)) (size!13490 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27387)

(assert (=> b!444384 (= res!263600 (and (= (size!13490 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13489 _keys!709) (size!13490 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!19338 () Bool)

(declare-fun mapRes!19338 () Bool)

(assert (=> mapIsEmpty!19338 mapRes!19338))

(declare-fun b!444385 () Bool)

(declare-fun res!263597 () Bool)

(assert (=> b!444385 (=> (not res!263597) (not e!261328))))

(assert (=> b!444385 (= res!263597 (or (= (select (arr!13137 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13137 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!263596 () Bool)

(assert (=> start!40430 (=> (not res!263596) (not e!261328))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40430 (= res!263596 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13489 _keys!709))))))

(assert (=> start!40430 e!261328))

(assert (=> start!40430 true))

(declare-fun e!261331 () Bool)

(declare-fun array_inv!9516 (array!27387) Bool)

(assert (=> start!40430 (and (array_inv!9516 _values!549) e!261331)))

(declare-fun array_inv!9517 (array!27385) Bool)

(assert (=> start!40430 (array_inv!9517 _keys!709)))

(declare-fun b!444386 () Bool)

(declare-fun res!263602 () Bool)

(assert (=> b!444386 (=> (not res!263602) (not e!261328))))

(assert (=> b!444386 (= res!263602 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7841))))

(declare-fun b!444387 () Bool)

(declare-fun res!263601 () Bool)

(assert (=> b!444387 (=> (not res!263601) (not e!261328))))

(assert (=> b!444387 (= res!263601 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13489 _keys!709))))))

(declare-fun b!444388 () Bool)

(declare-fun res!263604 () Bool)

(assert (=> b!444388 (=> (not res!263604) (not e!261328))))

(declare-fun arrayContainsKey!0 (array!27385 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!444388 (= res!263604 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!444389 () Bool)

(declare-fun res!263605 () Bool)

(assert (=> b!444389 (=> (not res!263605) (not e!261328))))

(assert (=> b!444389 (= res!263605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!444390 () Bool)

(assert (=> b!444390 (= e!261331 (and e!261329 mapRes!19338))))

(declare-fun condMapEmpty!19338 () Bool)

(declare-fun mapDefault!19338 () ValueCell!5560)

