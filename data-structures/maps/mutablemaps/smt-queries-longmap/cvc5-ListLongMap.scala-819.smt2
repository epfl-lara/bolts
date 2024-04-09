; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19992 () Bool)

(assert start!19992)

(declare-fun b!195821 () Bool)

(declare-fun e!128904 () Bool)

(declare-fun tp_is_empty!4525 () Bool)

(assert (=> b!195821 (= e!128904 tp_is_empty!4525)))

(declare-fun b!195822 () Bool)

(declare-fun res!92407 () Bool)

(declare-fun e!128903 () Bool)

(assert (=> b!195822 (=> (not res!92407) (not e!128903))))

(declare-datatypes ((array!8306 0))(
  ( (array!8307 (arr!3906 (Array (_ BitVec 32) (_ BitVec 64))) (size!4231 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8306)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8306 (_ BitVec 32)) Bool)

(assert (=> b!195822 (= res!92407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!195823 () Bool)

(assert (=> b!195823 (= e!128903 (and (bvsle #b00000000000000000000000000000000 (size!4231 _keys!825)) (bvsge (size!4231 _keys!825) #b01111111111111111111111111111111)))))

(declare-fun b!195824 () Bool)

(declare-fun e!128902 () Bool)

(assert (=> b!195824 (= e!128902 tp_is_empty!4525)))

(declare-fun b!195825 () Bool)

(declare-fun res!92408 () Bool)

(assert (=> b!195825 (=> (not res!92408) (not e!128903))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5681 0))(
  ( (V!5682 (val!2307 Int)) )
))
(declare-datatypes ((ValueCell!1919 0))(
  ( (ValueCellFull!1919 (v!4272 V!5681)) (EmptyCell!1919) )
))
(declare-datatypes ((array!8308 0))(
  ( (array!8309 (arr!3907 (Array (_ BitVec 32) ValueCell!1919)) (size!4232 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8308)

(assert (=> b!195825 (= res!92408 (and (= (size!4232 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4231 _keys!825) (size!4232 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!195826 () Bool)

(declare-fun e!128906 () Bool)

(declare-fun mapRes!7847 () Bool)

(assert (=> b!195826 (= e!128906 (and e!128902 mapRes!7847))))

(declare-fun condMapEmpty!7847 () Bool)

(declare-fun mapDefault!7847 () ValueCell!1919)

