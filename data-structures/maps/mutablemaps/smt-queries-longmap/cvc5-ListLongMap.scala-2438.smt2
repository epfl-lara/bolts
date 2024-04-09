; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38454 () Bool)

(assert start!38454)

(declare-fun b!396398 () Bool)

(declare-fun res!227513 () Bool)

(declare-fun e!239863 () Bool)

(assert (=> b!396398 (=> (not res!227513) (not e!239863))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!396398 (= res!227513 (validMask!0 mask!1025))))

(declare-fun b!396399 () Bool)

(declare-fun e!239861 () Bool)

(declare-fun e!239859 () Bool)

(declare-fun mapRes!16419 () Bool)

(assert (=> b!396399 (= e!239861 (and e!239859 mapRes!16419))))

(declare-fun condMapEmpty!16419 () Bool)

(declare-datatypes ((V!14259 0))(
  ( (V!14260 (val!4977 Int)) )
))
(declare-datatypes ((ValueCell!4589 0))(
  ( (ValueCellFull!4589 (v!7220 V!14259)) (EmptyCell!4589) )
))
(declare-datatypes ((array!23619 0))(
  ( (array!23620 (arr!11256 (Array (_ BitVec 32) ValueCell!4589)) (size!11608 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23619)

(declare-fun mapDefault!16419 () ValueCell!4589)

