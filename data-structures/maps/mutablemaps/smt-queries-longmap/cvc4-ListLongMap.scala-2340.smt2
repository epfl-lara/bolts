; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37514 () Bool)

(assert start!37514)

(declare-fun b_free!8633 () Bool)

(declare-fun b_next!8633 () Bool)

(assert (=> start!37514 (= b_free!8633 (not b_next!8633))))

(declare-fun tp!30614 () Bool)

(declare-fun b_and!15893 () Bool)

(assert (=> start!37514 (= tp!30614 b_and!15893)))

(declare-fun b!382375 () Bool)

(declare-fun res!217583 () Bool)

(declare-fun e!232359 () Bool)

(assert (=> b!382375 (=> (not res!217583) (not e!232359))))

(declare-datatypes ((array!22453 0))(
  ( (array!22454 (arr!10692 (Array (_ BitVec 32) (_ BitVec 64))) (size!11044 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22453)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22453 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!382375 (= res!217583 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!382376 () Bool)

(declare-fun e!232361 () Bool)

(declare-fun tp_is_empty!9281 () Bool)

(assert (=> b!382376 (= e!232361 tp_is_empty!9281)))

(declare-fun b!382377 () Bool)

(declare-fun res!217591 () Bool)

(assert (=> b!382377 (=> (not res!217591) (not e!232359))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22453 (_ BitVec 32)) Bool)

(assert (=> b!382377 (= res!217591 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!217592 () Bool)

(assert (=> start!37514 (=> (not res!217592) (not e!232359))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37514 (= res!217592 (validMask!0 mask!970))))

(assert (=> start!37514 e!232359))

(declare-datatypes ((V!13479 0))(
  ( (V!13480 (val!4685 Int)) )
))
(declare-datatypes ((ValueCell!4297 0))(
  ( (ValueCellFull!4297 (v!6878 V!13479)) (EmptyCell!4297) )
))
(declare-datatypes ((array!22455 0))(
  ( (array!22456 (arr!10693 (Array (_ BitVec 32) ValueCell!4297)) (size!11045 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22455)

(declare-fun e!232364 () Bool)

(declare-fun array_inv!7852 (array!22455) Bool)

(assert (=> start!37514 (and (array_inv!7852 _values!506) e!232364)))

(assert (=> start!37514 tp!30614))

(assert (=> start!37514 true))

(assert (=> start!37514 tp_is_empty!9281))

(declare-fun array_inv!7853 (array!22453) Bool)

(assert (=> start!37514 (array_inv!7853 _keys!658)))

(declare-fun b!382378 () Bool)

(declare-fun e!232362 () Bool)

(assert (=> b!382378 (= e!232362 true)))

(declare-datatypes ((tuple2!6250 0))(
  ( (tuple2!6251 (_1!3135 (_ BitVec 64)) (_2!3135 V!13479)) )
))
(declare-datatypes ((List!6119 0))(
  ( (Nil!6116) (Cons!6115 (h!6971 tuple2!6250) (t!11277 List!6119)) )
))
(declare-datatypes ((ListLongMap!5177 0))(
  ( (ListLongMap!5178 (toList!2604 List!6119)) )
))
(declare-fun lt!179471 () ListLongMap!5177)

(declare-fun lt!179475 () ListLongMap!5177)

(assert (=> b!382378 (= lt!179471 lt!179475)))

(declare-fun b!382379 () Bool)

(declare-fun e!232363 () Bool)

(declare-fun mapRes!15486 () Bool)

(assert (=> b!382379 (= e!232364 (and e!232363 mapRes!15486))))

(declare-fun condMapEmpty!15486 () Bool)

(declare-fun mapDefault!15486 () ValueCell!4297)

