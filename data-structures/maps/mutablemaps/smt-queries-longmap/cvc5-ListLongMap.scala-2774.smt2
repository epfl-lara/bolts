; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40524 () Bool)

(assert start!40524)

(declare-fun b!446151 () Bool)

(declare-fun res!264869 () Bool)

(declare-fun e!262130 () Bool)

(assert (=> b!446151 (=> (not res!264869) (not e!262130))))

(declare-datatypes ((array!27529 0))(
  ( (array!27530 (arr!13208 (Array (_ BitVec 32) (_ BitVec 64))) (size!13560 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27529)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16947 0))(
  ( (V!16948 (val!5985 Int)) )
))
(declare-datatypes ((ValueCell!5597 0))(
  ( (ValueCellFull!5597 (v!8236 V!16947)) (EmptyCell!5597) )
))
(declare-datatypes ((array!27531 0))(
  ( (array!27532 (arr!13209 (Array (_ BitVec 32) ValueCell!5597)) (size!13561 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27531)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!446151 (= res!264869 (and (= (size!13561 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13560 _keys!709) (size!13561 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!446152 () Bool)

(declare-fun res!264865 () Bool)

(assert (=> b!446152 (=> (not res!264865) (not e!262130))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27529 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!446152 (= res!264865 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!446153 () Bool)

(declare-fun e!262135 () Bool)

(assert (=> b!446153 (= e!262130 e!262135)))

(declare-fun res!264870 () Bool)

(assert (=> b!446153 (=> (not res!264870) (not e!262135))))

(declare-fun lt!203757 () array!27529)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27529 (_ BitVec 32)) Bool)

(assert (=> b!446153 (= res!264870 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203757 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!446153 (= lt!203757 (array!27530 (store (arr!13208 _keys!709) i!563 k!794) (size!13560 _keys!709)))))

(declare-fun b!446154 () Bool)

(declare-fun res!264873 () Bool)

(assert (=> b!446154 (=> (not res!264873) (not e!262130))))

(assert (=> b!446154 (= res!264873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!446155 () Bool)

(declare-fun res!264867 () Bool)

(assert (=> b!446155 (=> (not res!264867) (not e!262130))))

(declare-datatypes ((List!7886 0))(
  ( (Nil!7883) (Cons!7882 (h!8738 (_ BitVec 64)) (t!13654 List!7886)) )
))
(declare-fun arrayNoDuplicates!0 (array!27529 (_ BitVec 32) List!7886) Bool)

(assert (=> b!446155 (= res!264867 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7883))))

(declare-fun b!446156 () Bool)

(declare-fun e!262134 () Bool)

(declare-fun tp_is_empty!11881 () Bool)

(assert (=> b!446156 (= e!262134 tp_is_empty!11881)))

(declare-fun b!446157 () Bool)

(declare-fun res!264864 () Bool)

(assert (=> b!446157 (=> (not res!264864) (not e!262130))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!446157 (= res!264864 (validKeyInArray!0 k!794))))

(declare-fun b!446158 () Bool)

(declare-fun e!262133 () Bool)

(declare-fun mapRes!19452 () Bool)

(assert (=> b!446158 (= e!262133 (and e!262134 mapRes!19452))))

(declare-fun condMapEmpty!19452 () Bool)

(declare-fun mapDefault!19452 () ValueCell!5597)

