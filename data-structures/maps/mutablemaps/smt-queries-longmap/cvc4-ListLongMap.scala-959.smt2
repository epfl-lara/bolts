; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20866 () Bool)

(assert start!20866)

(declare-fun b_free!5507 () Bool)

(declare-fun b_next!5507 () Bool)

(assert (=> start!20866 (= b_free!5507 (not b_next!5507))))

(declare-fun tp!19562 () Bool)

(declare-fun b_and!12271 () Bool)

(assert (=> start!20866 (= tp!19562 b_and!12271)))

(declare-fun b!209226 () Bool)

(declare-fun res!101974 () Bool)

(declare-fun e!136342 () Bool)

(assert (=> b!209226 (=> (not res!101974) (not e!136342))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9936 0))(
  ( (array!9937 (arr!4718 (Array (_ BitVec 32) (_ BitVec 64))) (size!5043 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9936)

(assert (=> b!209226 (= res!101974 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5043 _keys!825))))))

(declare-fun b!209227 () Bool)

(declare-fun e!136341 () Bool)

(declare-fun tp_is_empty!5369 () Bool)

(assert (=> b!209227 (= e!136341 tp_is_empty!5369)))

(declare-fun b!209228 () Bool)

(declare-fun res!101972 () Bool)

(assert (=> b!209228 (=> (not res!101972) (not e!136342))))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!209228 (= res!101972 (= (select (arr!4718 _keys!825) i!601) k!843))))

(declare-fun b!209229 () Bool)

(declare-fun res!101971 () Bool)

(assert (=> b!209229 (=> (not res!101971) (not e!136342))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!209229 (= res!101971 (validKeyInArray!0 k!843))))

(declare-fun b!209230 () Bool)

(declare-fun e!136343 () Bool)

(declare-fun mapRes!9122 () Bool)

(assert (=> b!209230 (= e!136343 (and e!136341 mapRes!9122))))

(declare-fun condMapEmpty!9122 () Bool)

(declare-datatypes ((V!6805 0))(
  ( (V!6806 (val!2729 Int)) )
))
(declare-datatypes ((ValueCell!2341 0))(
  ( (ValueCellFull!2341 (v!4695 V!6805)) (EmptyCell!2341) )
))
(declare-datatypes ((array!9938 0))(
  ( (array!9939 (arr!4719 (Array (_ BitVec 32) ValueCell!2341)) (size!5044 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9938)

(declare-fun mapDefault!9122 () ValueCell!2341)

