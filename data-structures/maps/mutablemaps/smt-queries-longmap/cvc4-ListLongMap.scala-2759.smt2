; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40418 () Bool)

(assert start!40418)

(declare-fun b!444146 () Bool)

(declare-fun res!263424 () Bool)

(declare-fun e!261224 () Bool)

(assert (=> b!444146 (=> (not res!263424) (not e!261224))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!444146 (= res!263424 (validKeyInArray!0 k!794))))

(declare-fun b!444148 () Bool)

(declare-fun res!263422 () Bool)

(assert (=> b!444148 (=> (not res!263422) (not e!261224))))

(declare-datatypes ((array!27363 0))(
  ( (array!27364 (arr!13126 (Array (_ BitVec 32) (_ BitVec 64))) (size!13478 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27363)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16831 0))(
  ( (V!16832 (val!5942 Int)) )
))
(declare-datatypes ((ValueCell!5554 0))(
  ( (ValueCellFull!5554 (v!8189 V!16831)) (EmptyCell!5554) )
))
(declare-datatypes ((array!27365 0))(
  ( (array!27366 (arr!13127 (Array (_ BitVec 32) ValueCell!5554)) (size!13479 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27365)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!444148 (= res!263422 (and (= (size!13479 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13478 _keys!709) (size!13479 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!444149 () Bool)

(declare-fun res!263417 () Bool)

(assert (=> b!444149 (=> (not res!263417) (not e!261224))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27363 (_ BitVec 32)) Bool)

(assert (=> b!444149 (= res!263417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!444150 () Bool)

(declare-fun res!263420 () Bool)

(assert (=> b!444150 (=> (not res!263420) (not e!261224))))

(declare-datatypes ((List!7839 0))(
  ( (Nil!7836) (Cons!7835 (h!8691 (_ BitVec 64)) (t!13605 List!7839)) )
))
(declare-fun arrayNoDuplicates!0 (array!27363 (_ BitVec 32) List!7839) Bool)

(assert (=> b!444150 (= res!263420 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7836))))

(declare-fun mapNonEmpty!19320 () Bool)

(declare-fun mapRes!19320 () Bool)

(declare-fun tp!37302 () Bool)

(declare-fun e!261225 () Bool)

(assert (=> mapNonEmpty!19320 (= mapRes!19320 (and tp!37302 e!261225))))

(declare-fun mapKey!19320 () (_ BitVec 32))

(declare-fun mapRest!19320 () (Array (_ BitVec 32) ValueCell!5554))

(declare-fun mapValue!19320 () ValueCell!5554)

(assert (=> mapNonEmpty!19320 (= (arr!13127 _values!549) (store mapRest!19320 mapKey!19320 mapValue!19320))))

(declare-fun b!444151 () Bool)

(declare-fun tp_is_empty!11795 () Bool)

(assert (=> b!444151 (= e!261225 tp_is_empty!11795)))

(declare-fun b!444152 () Bool)

(declare-fun res!263425 () Bool)

(assert (=> b!444152 (=> (not res!263425) (not e!261224))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!444152 (= res!263425 (or (= (select (arr!13126 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13126 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!444147 () Bool)

(declare-fun e!261221 () Bool)

(declare-fun e!261220 () Bool)

(assert (=> b!444147 (= e!261221 (and e!261220 mapRes!19320))))

(declare-fun condMapEmpty!19320 () Bool)

(declare-fun mapDefault!19320 () ValueCell!5554)

