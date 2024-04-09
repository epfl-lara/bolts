; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39700 () Bool)

(assert start!39700)

(declare-fun b_free!9959 () Bool)

(declare-fun b_next!9959 () Bool)

(assert (=> start!39700 (= b_free!9959 (not b_next!9959))))

(declare-fun tp!35405 () Bool)

(declare-fun b_and!17633 () Bool)

(assert (=> start!39700 (= tp!35405 b_and!17633)))

(declare-fun b!426236 () Bool)

(declare-fun res!249852 () Bool)

(declare-fun e!252891 () Bool)

(assert (=> b!426236 (=> (not res!249852) (not e!252891))))

(declare-datatypes ((array!26047 0))(
  ( (array!26048 (arr!12470 (Array (_ BitVec 32) (_ BitVec 64))) (size!12822 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26047)

(declare-datatypes ((List!7346 0))(
  ( (Nil!7343) (Cons!7342 (h!8198 (_ BitVec 64)) (t!12798 List!7346)) )
))
(declare-fun arrayNoDuplicates!0 (array!26047 (_ BitVec 32) List!7346) Bool)

(assert (=> b!426236 (= res!249852 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7343))))

(declare-fun b!426237 () Bool)

(declare-fun res!249846 () Bool)

(assert (=> b!426237 (=> (not res!249846) (not e!252891))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!426237 (= res!249846 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12822 _keys!709))))))

(declare-fun b!426239 () Bool)

(declare-fun res!249858 () Bool)

(assert (=> b!426239 (=> (not res!249858) (not e!252891))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((V!15919 0))(
  ( (V!15920 (val!5600 Int)) )
))
(declare-datatypes ((ValueCell!5212 0))(
  ( (ValueCellFull!5212 (v!7843 V!15919)) (EmptyCell!5212) )
))
(declare-datatypes ((array!26049 0))(
  ( (array!26050 (arr!12471 (Array (_ BitVec 32) ValueCell!5212)) (size!12823 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26049)

(assert (=> b!426239 (= res!249858 (and (= (size!12823 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12822 _keys!709) (size!12823 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!426240 () Bool)

(declare-fun e!252893 () Bool)

(declare-fun tp_is_empty!11111 () Bool)

(assert (=> b!426240 (= e!252893 tp_is_empty!11111)))

(declare-fun b!426241 () Bool)

(declare-fun res!249857 () Bool)

(assert (=> b!426241 (=> (not res!249857) (not e!252891))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26047 (_ BitVec 32)) Bool)

(assert (=> b!426241 (= res!249857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!426242 () Bool)

(declare-fun res!249851 () Bool)

(assert (=> b!426242 (=> (not res!249851) (not e!252891))))

(assert (=> b!426242 (= res!249851 (or (= (select (arr!12470 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12470 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!426243 () Bool)

(declare-fun e!252889 () Bool)

(declare-fun e!252894 () Bool)

(declare-fun mapRes!18288 () Bool)

(assert (=> b!426243 (= e!252889 (and e!252894 mapRes!18288))))

(declare-fun condMapEmpty!18288 () Bool)

(declare-fun mapDefault!18288 () ValueCell!5212)

