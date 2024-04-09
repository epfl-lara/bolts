; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36650 () Bool)

(assert start!36650)

(declare-fun mapIsEmpty!14268 () Bool)

(declare-fun mapRes!14268 () Bool)

(assert (=> mapIsEmpty!14268 mapRes!14268))

(declare-fun b!365558 () Bool)

(declare-fun res!204472 () Bool)

(declare-fun e!223876 () Bool)

(assert (=> b!365558 (=> (not res!204472) (not e!223876))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!365558 (= res!204472 (validKeyInArray!0 k!778))))

(declare-fun b!365559 () Bool)

(declare-fun res!204471 () Bool)

(assert (=> b!365559 (=> (not res!204471) (not e!223876))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((array!20885 0))(
  ( (array!20886 (arr!9912 (Array (_ BitVec 32) (_ BitVec 64))) (size!10264 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!20885)

(declare-fun mask!970 () (_ BitVec 32))

(declare-datatypes ((V!12407 0))(
  ( (V!12408 (val!4283 Int)) )
))
(declare-datatypes ((ValueCell!3895 0))(
  ( (ValueCellFull!3895 (v!6475 V!12407)) (EmptyCell!3895) )
))
(declare-datatypes ((array!20887 0))(
  ( (array!20888 (arr!9913 (Array (_ BitVec 32) ValueCell!3895)) (size!10265 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20887)

(assert (=> b!365559 (= res!204471 (and (= (size!10265 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10264 _keys!658) (size!10265 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!365560 () Bool)

(declare-fun e!223875 () Bool)

(declare-fun e!223874 () Bool)

(assert (=> b!365560 (= e!223875 (and e!223874 mapRes!14268))))

(declare-fun condMapEmpty!14268 () Bool)

(declare-fun mapDefault!14268 () ValueCell!3895)

