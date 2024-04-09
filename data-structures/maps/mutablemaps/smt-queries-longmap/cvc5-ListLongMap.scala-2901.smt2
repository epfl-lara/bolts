; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41556 () Bool)

(assert start!41556)

(declare-fun b_free!11215 () Bool)

(declare-fun b_next!11215 () Bool)

(assert (=> start!41556 (= b_free!11215 (not b_next!11215))))

(declare-fun tp!39642 () Bool)

(declare-fun b_and!19573 () Bool)

(assert (=> start!41556 (= tp!39642 b_and!19573)))

(declare-fun b!463909 () Bool)

(declare-fun res!277438 () Bool)

(declare-fun e!270952 () Bool)

(assert (=> b!463909 (=> (not res!277438) (not e!270952))))

(declare-datatypes ((array!29039 0))(
  ( (array!29040 (arr!13948 (Array (_ BitVec 32) (_ BitVec 64))) (size!14300 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29039)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29039 (_ BitVec 32)) Bool)

(assert (=> b!463909 (= res!277438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!463910 () Bool)

(declare-fun e!270951 () Bool)

(declare-fun e!270954 () Bool)

(declare-fun mapRes!20641 () Bool)

(assert (=> b!463910 (= e!270951 (and e!270954 mapRes!20641))))

(declare-fun condMapEmpty!20641 () Bool)

(declare-datatypes ((V!17963 0))(
  ( (V!17964 (val!6366 Int)) )
))
(declare-datatypes ((ValueCell!5978 0))(
  ( (ValueCellFull!5978 (v!8649 V!17963)) (EmptyCell!5978) )
))
(declare-datatypes ((array!29041 0))(
  ( (array!29042 (arr!13949 (Array (_ BitVec 32) ValueCell!5978)) (size!14301 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29041)

(declare-fun mapDefault!20641 () ValueCell!5978)

