; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34956 () Bool)

(assert start!34956)

(declare-fun b_free!7663 () Bool)

(declare-fun b_next!7663 () Bool)

(assert (=> start!34956 (= b_free!7663 (not b_next!7663))))

(declare-fun tp!26565 () Bool)

(declare-fun b_and!14909 () Bool)

(assert (=> start!34956 (= tp!26565 b_and!14909)))

(declare-fun b!349762 () Bool)

(declare-fun e!214264 () Bool)

(declare-fun e!214262 () Bool)

(assert (=> b!349762 (= e!214264 e!214262)))

(declare-fun res!193907 () Bool)

(assert (=> b!349762 (=> (not res!193907) (not e!214262))))

(declare-datatypes ((SeekEntryResult!3425 0))(
  ( (MissingZero!3425 (index!15879 (_ BitVec 32))) (Found!3425 (index!15880 (_ BitVec 32))) (Intermediate!3425 (undefined!4237 Bool) (index!15881 (_ BitVec 32)) (x!34834 (_ BitVec 32))) (Undefined!3425) (MissingVacant!3425 (index!15882 (_ BitVec 32))) )
))
(declare-fun lt!164368 () SeekEntryResult!3425)

(assert (=> b!349762 (= res!193907 (and (not (is-Found!3425 lt!164368)) (is-MissingZero!3425 lt!164368)))))

(declare-datatypes ((array!18783 0))(
  ( (array!18784 (arr!8895 (Array (_ BitVec 32) (_ BitVec 64))) (size!9247 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18783)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18783 (_ BitVec 32)) SeekEntryResult!3425)

(assert (=> b!349762 (= lt!164368 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!349763 () Bool)

(declare-fun res!193906 () Bool)

(assert (=> b!349763 (=> (not res!193906) (not e!214264))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18783 (_ BitVec 32)) Bool)

(assert (=> b!349763 (= res!193906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12891 () Bool)

(declare-fun mapRes!12891 () Bool)

(assert (=> mapIsEmpty!12891 mapRes!12891))

(declare-fun b!349764 () Bool)

(declare-fun e!214258 () Bool)

(declare-fun e!214260 () Bool)

(assert (=> b!349764 (= e!214258 (and e!214260 mapRes!12891))))

(declare-fun condMapEmpty!12891 () Bool)

(declare-datatypes ((V!11131 0))(
  ( (V!11132 (val!3852 Int)) )
))
(declare-datatypes ((ValueCell!3464 0))(
  ( (ValueCellFull!3464 (v!6034 V!11131)) (EmptyCell!3464) )
))
(declare-datatypes ((array!18785 0))(
  ( (array!18786 (arr!8896 (Array (_ BitVec 32) ValueCell!3464)) (size!9248 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18785)

(declare-fun mapDefault!12891 () ValueCell!3464)

