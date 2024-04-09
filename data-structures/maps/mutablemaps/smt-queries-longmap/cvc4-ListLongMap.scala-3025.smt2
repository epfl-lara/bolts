; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42516 () Bool)

(assert start!42516)

(declare-fun b_free!11963 () Bool)

(declare-fun b_next!11963 () Bool)

(assert (=> start!42516 (= b_free!11963 (not b_next!11963))))

(declare-fun tp!41925 () Bool)

(declare-fun b_and!20449 () Bool)

(assert (=> start!42516 (= tp!41925 b_and!20449)))

(declare-fun b!474114 () Bool)

(declare-fun res!283261 () Bool)

(declare-fun e!278279 () Bool)

(assert (=> b!474114 (=> (not res!283261) (not e!278279))))

(declare-datatypes ((array!30499 0))(
  ( (array!30500 (arr!14665 (Array (_ BitVec 32) (_ BitVec 64))) (size!15017 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30499)

(declare-datatypes ((List!8992 0))(
  ( (Nil!8989) (Cons!8988 (h!9844 (_ BitVec 64)) (t!14972 List!8992)) )
))
(declare-fun arrayNoDuplicates!0 (array!30499 (_ BitVec 32) List!8992) Bool)

(assert (=> b!474114 (= res!283261 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8989))))

(declare-fun b!474115 () Bool)

(declare-fun e!278275 () Bool)

(declare-fun e!278278 () Bool)

(declare-fun mapRes!21802 () Bool)

(assert (=> b!474115 (= e!278275 (and e!278278 mapRes!21802))))

(declare-fun condMapEmpty!21802 () Bool)

(declare-datatypes ((V!18959 0))(
  ( (V!18960 (val!6740 Int)) )
))
(declare-datatypes ((ValueCell!6352 0))(
  ( (ValueCellFull!6352 (v!9028 V!18959)) (EmptyCell!6352) )
))
(declare-datatypes ((array!30501 0))(
  ( (array!30502 (arr!14666 (Array (_ BitVec 32) ValueCell!6352)) (size!15018 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30501)

(declare-fun mapDefault!21802 () ValueCell!6352)

