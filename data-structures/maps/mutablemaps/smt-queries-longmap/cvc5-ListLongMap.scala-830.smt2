; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20088 () Bool)

(assert start!20088)

(declare-fun b!196537 () Bool)

(declare-fun res!92786 () Bool)

(declare-fun e!129473 () Bool)

(assert (=> b!196537 (=> (not res!92786) (not e!129473))))

(declare-datatypes ((array!8438 0))(
  ( (array!8439 (arr!3969 (Array (_ BitVec 32) (_ BitVec 64))) (size!4294 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8438)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8438 (_ BitVec 32)) Bool)

(assert (=> b!196537 (= res!92786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!196538 () Bool)

(declare-fun e!129474 () Bool)

(declare-fun tp_is_empty!4591 () Bool)

(assert (=> b!196538 (= e!129474 tp_is_empty!4591)))

(declare-fun res!92787 () Bool)

(assert (=> start!20088 (=> (not res!92787) (not e!129473))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20088 (= res!92787 (validMask!0 mask!1149))))

(assert (=> start!20088 e!129473))

(declare-fun array_inv!2579 (array!8438) Bool)

(assert (=> start!20088 (array_inv!2579 _keys!825)))

(assert (=> start!20088 true))

(declare-datatypes ((V!5769 0))(
  ( (V!5770 (val!2340 Int)) )
))
(declare-datatypes ((ValueCell!1952 0))(
  ( (ValueCellFull!1952 (v!4306 V!5769)) (EmptyCell!1952) )
))
(declare-datatypes ((array!8440 0))(
  ( (array!8441 (arr!3970 (Array (_ BitVec 32) ValueCell!1952)) (size!4295 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8440)

(declare-fun e!129471 () Bool)

(declare-fun array_inv!2580 (array!8440) Bool)

(assert (=> start!20088 (and (array_inv!2580 _values!649) e!129471)))

(declare-fun b!196539 () Bool)

(declare-fun mapRes!7955 () Bool)

(assert (=> b!196539 (= e!129471 (and e!129474 mapRes!7955))))

(declare-fun condMapEmpty!7955 () Bool)

(declare-fun mapDefault!7955 () ValueCell!1952)

