; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20562 () Bool)

(assert start!20562)

(declare-fun b_free!5209 () Bool)

(declare-fun b_next!5209 () Bool)

(assert (=> start!20562 (= b_free!5209 (not b_next!5209))))

(declare-fun tp!18659 () Bool)

(declare-fun b_and!11973 () Bool)

(assert (=> start!20562 (= tp!18659 b_and!11973)))

(declare-fun b!204358 () Bool)

(declare-fun res!98474 () Bool)

(declare-fun e!133726 () Bool)

(assert (=> b!204358 (=> (not res!98474) (not e!133726))))

(declare-datatypes ((array!9346 0))(
  ( (array!9347 (arr!4423 (Array (_ BitVec 32) (_ BitVec 64))) (size!4748 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9346)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9346 (_ BitVec 32)) Bool)

(assert (=> b!204358 (= res!98474 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!204359 () Bool)

(declare-fun res!98473 () Bool)

(assert (=> b!204359 (=> (not res!98473) (not e!133726))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!204359 (= res!98473 (validKeyInArray!0 k!843))))

(declare-fun mapIsEmpty!8666 () Bool)

(declare-fun mapRes!8666 () Bool)

(assert (=> mapIsEmpty!8666 mapRes!8666))

(declare-fun b!204360 () Bool)

(declare-fun e!133729 () Bool)

(declare-fun e!133723 () Bool)

(assert (=> b!204360 (= e!133729 (and e!133723 mapRes!8666))))

(declare-fun condMapEmpty!8666 () Bool)

(declare-datatypes ((V!6401 0))(
  ( (V!6402 (val!2577 Int)) )
))
(declare-datatypes ((ValueCell!2189 0))(
  ( (ValueCellFull!2189 (v!4543 V!6401)) (EmptyCell!2189) )
))
(declare-datatypes ((array!9348 0))(
  ( (array!9349 (arr!4424 (Array (_ BitVec 32) ValueCell!2189)) (size!4749 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9348)

(declare-fun mapDefault!8666 () ValueCell!2189)

