; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39946 () Bool)

(assert start!39946)

(declare-fun b_free!10205 () Bool)

(declare-fun b_next!10205 () Bool)

(assert (=> start!39946 (= b_free!10205 (not b_next!10205))))

(declare-fun tp!36143 () Bool)

(declare-fun b_and!18087 () Bool)

(assert (=> start!39946 (= tp!36143 b_and!18087)))

(declare-fun b!433361 () Bool)

(declare-fun res!255140 () Bool)

(declare-fun e!256229 () Bool)

(assert (=> b!433361 (=> (not res!255140) (not e!256229))))

(declare-datatypes ((array!26523 0))(
  ( (array!26524 (arr!12708 (Array (_ BitVec 32) (_ BitVec 64))) (size!13060 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26523)

(declare-datatypes ((List!7547 0))(
  ( (Nil!7544) (Cons!7543 (h!8399 (_ BitVec 64)) (t!13209 List!7547)) )
))
(declare-fun arrayNoDuplicates!0 (array!26523 (_ BitVec 32) List!7547) Bool)

(assert (=> b!433361 (= res!255140 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7544))))

(declare-fun b!433362 () Bool)

(declare-fun res!255144 () Bool)

(assert (=> b!433362 (=> (not res!255144) (not e!256229))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26523 (_ BitVec 32)) Bool)

(assert (=> b!433362 (= res!255144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!433363 () Bool)

(declare-fun e!256230 () Bool)

(declare-fun tp_is_empty!11357 () Bool)

(assert (=> b!433363 (= e!256230 tp_is_empty!11357)))

(declare-fun b!433364 () Bool)

(declare-fun e!256228 () Bool)

(assert (=> b!433364 (= e!256228 tp_is_empty!11357)))

(declare-fun b!433365 () Bool)

(declare-fun res!255139 () Bool)

(assert (=> b!433365 (=> (not res!255139) (not e!256229))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!433365 (= res!255139 (validKeyInArray!0 k!794))))

(declare-fun b!433366 () Bool)

(declare-fun res!255150 () Bool)

(assert (=> b!433366 (=> (not res!255150) (not e!256229))))

(declare-fun arrayContainsKey!0 (array!26523 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!433366 (= res!255150 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!433367 () Bool)

(declare-fun res!255143 () Bool)

(assert (=> b!433367 (=> (not res!255143) (not e!256229))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16247 0))(
  ( (V!16248 (val!5723 Int)) )
))
(declare-datatypes ((ValueCell!5335 0))(
  ( (ValueCellFull!5335 (v!7966 V!16247)) (EmptyCell!5335) )
))
(declare-datatypes ((array!26525 0))(
  ( (array!26526 (arr!12709 (Array (_ BitVec 32) ValueCell!5335)) (size!13061 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26525)

(assert (=> b!433367 (= res!255143 (and (= (size!13061 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13060 _keys!709) (size!13061 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!255149 () Bool)

(assert (=> start!39946 (=> (not res!255149) (not e!256229))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39946 (= res!255149 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13060 _keys!709))))))

(assert (=> start!39946 e!256229))

(assert (=> start!39946 tp_is_empty!11357))

(assert (=> start!39946 tp!36143))

(assert (=> start!39946 true))

(declare-fun e!256231 () Bool)

(declare-fun array_inv!9238 (array!26525) Bool)

(assert (=> start!39946 (and (array_inv!9238 _values!549) e!256231)))

(declare-fun array_inv!9239 (array!26523) Bool)

(assert (=> start!39946 (array_inv!9239 _keys!709)))

(declare-fun b!433368 () Bool)

(declare-datatypes ((Unit!12788 0))(
  ( (Unit!12789) )
))
(declare-fun e!256226 () Unit!12788)

(declare-fun Unit!12790 () Unit!12788)

(assert (=> b!433368 (= e!256226 Unit!12790)))

(declare-fun b!433369 () Bool)

(declare-fun res!255141 () Bool)

(declare-fun e!256234 () Bool)

(assert (=> b!433369 (=> (not res!255141) (not e!256234))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!433369 (= res!255141 (bvsle from!863 i!563))))

(declare-fun b!433370 () Bool)

(declare-fun mapRes!18657 () Bool)

(assert (=> b!433370 (= e!256231 (and e!256228 mapRes!18657))))

(declare-fun condMapEmpty!18657 () Bool)

(declare-fun mapDefault!18657 () ValueCell!5335)

