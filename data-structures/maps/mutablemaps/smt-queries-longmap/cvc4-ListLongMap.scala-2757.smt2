; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40406 () Bool)

(assert start!40406)

(declare-fun b!443912 () Bool)

(declare-fun res!263244 () Bool)

(declare-fun e!261116 () Bool)

(assert (=> b!443912 (=> (not res!263244) (not e!261116))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!443912 (= res!263244 (validKeyInArray!0 k!794))))

(declare-fun b!443913 () Bool)

(declare-fun res!263242 () Bool)

(assert (=> b!443913 (=> (not res!263242) (not e!261116))))

(declare-datatypes ((array!27341 0))(
  ( (array!27342 (arr!13115 (Array (_ BitVec 32) (_ BitVec 64))) (size!13467 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27341)

(declare-datatypes ((List!7834 0))(
  ( (Nil!7831) (Cons!7830 (h!8686 (_ BitVec 64)) (t!13600 List!7834)) )
))
(declare-fun arrayNoDuplicates!0 (array!27341 (_ BitVec 32) List!7834) Bool)

(assert (=> b!443913 (= res!263242 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7831))))

(declare-fun b!443914 () Bool)

(declare-fun res!263237 () Bool)

(assert (=> b!443914 (=> (not res!263237) (not e!261116))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16815 0))(
  ( (V!16816 (val!5936 Int)) )
))
(declare-datatypes ((ValueCell!5548 0))(
  ( (ValueCellFull!5548 (v!8183 V!16815)) (EmptyCell!5548) )
))
(declare-datatypes ((array!27343 0))(
  ( (array!27344 (arr!13116 (Array (_ BitVec 32) ValueCell!5548)) (size!13468 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27343)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!443914 (= res!263237 (and (= (size!13468 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13467 _keys!709) (size!13468 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!443915 () Bool)

(declare-fun e!261114 () Bool)

(assert (=> b!443915 (= e!261116 e!261114)))

(declare-fun res!263238 () Bool)

(assert (=> b!443915 (=> (not res!263238) (not e!261114))))

(declare-fun lt!203402 () array!27341)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27341 (_ BitVec 32)) Bool)

(assert (=> b!443915 (= res!263238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203402 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!443915 (= lt!203402 (array!27342 (store (arr!13115 _keys!709) i!563 k!794) (size!13467 _keys!709)))))

(declare-fun b!443916 () Bool)

(declare-fun e!261112 () Bool)

(declare-fun tp_is_empty!11783 () Bool)

(assert (=> b!443916 (= e!261112 tp_is_empty!11783)))

(declare-fun b!443917 () Bool)

(declare-fun res!263240 () Bool)

(assert (=> b!443917 (=> (not res!263240) (not e!261116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!443917 (= res!263240 (validMask!0 mask!1025))))

(declare-fun b!443918 () Bool)

(declare-fun res!263236 () Bool)

(assert (=> b!443918 (=> (not res!263236) (not e!261116))))

(assert (=> b!443918 (= res!263236 (or (= (select (arr!13115 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13115 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!443919 () Bool)

(declare-fun res!263243 () Bool)

(assert (=> b!443919 (=> (not res!263243) (not e!261116))))

(assert (=> b!443919 (= res!263243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!263245 () Bool)

(assert (=> start!40406 (=> (not res!263245) (not e!261116))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40406 (= res!263245 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13467 _keys!709))))))

(assert (=> start!40406 e!261116))

(assert (=> start!40406 true))

(declare-fun e!261115 () Bool)

(declare-fun array_inv!9502 (array!27343) Bool)

(assert (=> start!40406 (and (array_inv!9502 _values!549) e!261115)))

(declare-fun array_inv!9503 (array!27341) Bool)

(assert (=> start!40406 (array_inv!9503 _keys!709)))

(declare-fun b!443920 () Bool)

(declare-fun e!261117 () Bool)

(declare-fun mapRes!19302 () Bool)

(assert (=> b!443920 (= e!261115 (and e!261117 mapRes!19302))))

(declare-fun condMapEmpty!19302 () Bool)

(declare-fun mapDefault!19302 () ValueCell!5548)

