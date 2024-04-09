; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36970 () Bool)

(assert start!36970)

(declare-fun b_free!8089 () Bool)

(declare-fun b_next!8089 () Bool)

(assert (=> start!36970 (= b_free!8089 (not b_next!8089))))

(declare-fun tp!28983 () Bool)

(declare-fun b_and!15349 () Bool)

(assert (=> start!36970 (= tp!28983 b_and!15349)))

(declare-fun b!370580 () Bool)

(declare-fun res!208238 () Bool)

(declare-fun e!226303 () Bool)

(assert (=> b!370580 (=> (not res!208238) (not e!226303))))

(declare-datatypes ((array!21391 0))(
  ( (array!21392 (arr!10161 (Array (_ BitVec 32) (_ BitVec 64))) (size!10513 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21391)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21391 (_ BitVec 32)) Bool)

(assert (=> b!370580 (= res!208238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!14670 () Bool)

(declare-fun mapRes!14670 () Bool)

(assert (=> mapIsEmpty!14670 mapRes!14670))

(declare-fun b!370581 () Bool)

(declare-fun res!208242 () Bool)

(assert (=> b!370581 (=> (not res!208242) (not e!226303))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!370581 (= res!208242 (validKeyInArray!0 k!778))))

(declare-fun res!208239 () Bool)

(assert (=> start!36970 (=> (not res!208239) (not e!226303))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36970 (= res!208239 (validMask!0 mask!970))))

(assert (=> start!36970 e!226303))

(declare-datatypes ((V!12755 0))(
  ( (V!12756 (val!4413 Int)) )
))
(declare-datatypes ((ValueCell!4025 0))(
  ( (ValueCellFull!4025 (v!6606 V!12755)) (EmptyCell!4025) )
))
(declare-datatypes ((array!21393 0))(
  ( (array!21394 (arr!10162 (Array (_ BitVec 32) ValueCell!4025)) (size!10514 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21393)

(declare-fun e!226304 () Bool)

(declare-fun array_inv!7502 (array!21393) Bool)

(assert (=> start!36970 (and (array_inv!7502 _values!506) e!226304)))

(assert (=> start!36970 tp!28983))

(assert (=> start!36970 true))

(declare-fun tp_is_empty!8737 () Bool)

(assert (=> start!36970 tp_is_empty!8737))

(declare-fun array_inv!7503 (array!21391) Bool)

(assert (=> start!36970 (array_inv!7503 _keys!658)))

(declare-fun b!370582 () Bool)

(declare-fun e!226308 () Bool)

(assert (=> b!370582 (= e!226304 (and e!226308 mapRes!14670))))

(declare-fun condMapEmpty!14670 () Bool)

(declare-fun mapDefault!14670 () ValueCell!4025)

