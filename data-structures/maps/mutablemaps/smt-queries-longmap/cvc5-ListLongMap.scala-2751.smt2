; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40366 () Bool)

(assert start!40366)

(declare-fun b!443132 () Bool)

(declare-fun res!262640 () Bool)

(declare-fun e!260756 () Bool)

(assert (=> b!443132 (=> (not res!262640) (not e!260756))))

(declare-datatypes ((array!27267 0))(
  ( (array!27268 (arr!13078 (Array (_ BitVec 32) (_ BitVec 64))) (size!13430 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27267)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27267 (_ BitVec 32)) Bool)

(assert (=> b!443132 (= res!262640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!443133 () Bool)

(declare-fun res!262645 () Bool)

(assert (=> b!443133 (=> (not res!262645) (not e!260756))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!443133 (= res!262645 (or (= (select (arr!13078 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13078 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!443134 () Bool)

(declare-fun e!260757 () Bool)

(assert (=> b!443134 (= e!260756 e!260757)))

(declare-fun res!262643 () Bool)

(assert (=> b!443134 (=> (not res!262643) (not e!260757))))

(declare-fun lt!203283 () array!27267)

(assert (=> b!443134 (= res!262643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203283 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!443134 (= lt!203283 (array!27268 (store (arr!13078 _keys!709) i!563 k!794) (size!13430 _keys!709)))))

(declare-fun b!443135 () Bool)

(declare-fun res!262642 () Bool)

(assert (=> b!443135 (=> (not res!262642) (not e!260756))))

(assert (=> b!443135 (= res!262642 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13430 _keys!709))))))

(declare-fun b!443136 () Bool)

(declare-fun res!262638 () Bool)

(assert (=> b!443136 (=> (not res!262638) (not e!260756))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16763 0))(
  ( (V!16764 (val!5916 Int)) )
))
(declare-datatypes ((ValueCell!5528 0))(
  ( (ValueCellFull!5528 (v!8163 V!16763)) (EmptyCell!5528) )
))
(declare-datatypes ((array!27269 0))(
  ( (array!27270 (arr!13079 (Array (_ BitVec 32) ValueCell!5528)) (size!13431 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27269)

(assert (=> b!443136 (= res!262638 (and (= (size!13431 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13430 _keys!709) (size!13431 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!443137 () Bool)

(declare-fun res!262641 () Bool)

(assert (=> b!443137 (=> (not res!262641) (not e!260756))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!443137 (= res!262641 (validKeyInArray!0 k!794))))

(declare-fun b!443138 () Bool)

(declare-fun e!260753 () Bool)

(declare-fun e!260754 () Bool)

(declare-fun mapRes!19242 () Bool)

(assert (=> b!443138 (= e!260753 (and e!260754 mapRes!19242))))

(declare-fun condMapEmpty!19242 () Bool)

(declare-fun mapDefault!19242 () ValueCell!5528)

