; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20346 () Bool)

(assert start!20346)

(declare-fun b_free!4993 () Bool)

(declare-fun b_next!4993 () Bool)

(assert (=> start!20346 (= b_free!4993 (not b_next!4993))))

(declare-fun tp!18010 () Bool)

(declare-fun b_and!11757 () Bool)

(assert (=> start!20346 (= tp!18010 b_and!11757)))

(declare-fun b!200458 () Bool)

(declare-fun res!95548 () Bool)

(declare-fun e!131457 () Bool)

(assert (=> b!200458 (=> (not res!95548) (not e!131457))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!200458 (= res!95548 (validKeyInArray!0 k!843))))

(declare-fun b!200459 () Bool)

(declare-fun res!95549 () Bool)

(assert (=> b!200459 (=> (not res!95549) (not e!131457))))

(declare-datatypes ((array!8928 0))(
  ( (array!8929 (arr!4214 (Array (_ BitVec 32) (_ BitVec 64))) (size!4539 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8928)

(declare-datatypes ((List!2668 0))(
  ( (Nil!2665) (Cons!2664 (h!3306 (_ BitVec 64)) (t!7607 List!2668)) )
))
(declare-fun arrayNoDuplicates!0 (array!8928 (_ BitVec 32) List!2668) Bool)

(assert (=> b!200459 (= res!95549 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2665))))

(declare-fun b!200460 () Bool)

(declare-fun e!131456 () Bool)

(declare-fun e!131455 () Bool)

(declare-fun mapRes!8342 () Bool)

(assert (=> b!200460 (= e!131456 (and e!131455 mapRes!8342))))

(declare-fun condMapEmpty!8342 () Bool)

(declare-datatypes ((V!6113 0))(
  ( (V!6114 (val!2469 Int)) )
))
(declare-datatypes ((ValueCell!2081 0))(
  ( (ValueCellFull!2081 (v!4435 V!6113)) (EmptyCell!2081) )
))
(declare-datatypes ((array!8930 0))(
  ( (array!8931 (arr!4215 (Array (_ BitVec 32) ValueCell!2081)) (size!4540 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8930)

(declare-fun mapDefault!8342 () ValueCell!2081)

