; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42378 () Bool)

(assert start!42378)

(declare-fun b_free!11861 () Bool)

(declare-fun b_next!11861 () Bool)

(assert (=> start!42378 (= b_free!11861 (not b_next!11861))))

(declare-fun tp!41613 () Bool)

(declare-fun b_and!20325 () Bool)

(assert (=> start!42378 (= tp!41613 b_and!20325)))

(declare-fun b!472561 () Bool)

(declare-fun res!282361 () Bool)

(declare-fun e!277152 () Bool)

(assert (=> b!472561 (=> (not res!282361) (not e!277152))))

(declare-datatypes ((array!30299 0))(
  ( (array!30300 (arr!14567 (Array (_ BitVec 32) (_ BitVec 64))) (size!14919 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30299)

(declare-datatypes ((List!8916 0))(
  ( (Nil!8913) (Cons!8912 (h!9768 (_ BitVec 64)) (t!14892 List!8916)) )
))
(declare-fun arrayNoDuplicates!0 (array!30299 (_ BitVec 32) List!8916) Bool)

(assert (=> b!472561 (= res!282361 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8913))))

(declare-fun mapIsEmpty!21643 () Bool)

(declare-fun mapRes!21643 () Bool)

(assert (=> mapIsEmpty!21643 mapRes!21643))

(declare-fun b!472562 () Bool)

(declare-fun e!277154 () Bool)

(declare-fun e!277149 () Bool)

(assert (=> b!472562 (= e!277154 (and e!277149 mapRes!21643))))

(declare-fun condMapEmpty!21643 () Bool)

(declare-datatypes ((V!18823 0))(
  ( (V!18824 (val!6689 Int)) )
))
(declare-datatypes ((ValueCell!6301 0))(
  ( (ValueCellFull!6301 (v!8976 V!18823)) (EmptyCell!6301) )
))
(declare-datatypes ((array!30301 0))(
  ( (array!30302 (arr!14568 (Array (_ BitVec 32) ValueCell!6301)) (size!14920 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30301)

(declare-fun mapDefault!21643 () ValueCell!6301)

