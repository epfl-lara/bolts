; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38044 () Bool)

(assert start!38044)

(declare-fun b_free!8983 () Bool)

(declare-fun b_next!8983 () Bool)

(assert (=> start!38044 (= b_free!8983 (not b_next!8983))))

(declare-fun tp!31721 () Bool)

(declare-fun b_and!16327 () Bool)

(assert (=> start!38044 (= tp!31721 b_and!16327)))

(declare-fun b!391332 () Bool)

(declare-fun e!237029 () Bool)

(declare-fun tp_is_empty!9655 () Bool)

(assert (=> b!391332 (= e!237029 tp_is_empty!9655)))

(declare-fun b!391333 () Bool)

(declare-fun res!224073 () Bool)

(declare-fun e!237028 () Bool)

(assert (=> b!391333 (=> (not res!224073) (not e!237028))))

(declare-datatypes ((array!23189 0))(
  ( (array!23190 (arr!11053 (Array (_ BitVec 32) (_ BitVec 64))) (size!11405 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23189)

(declare-datatypes ((List!6386 0))(
  ( (Nil!6383) (Cons!6382 (h!7238 (_ BitVec 64)) (t!11558 List!6386)) )
))
(declare-fun arrayNoDuplicates!0 (array!23189 (_ BitVec 32) List!6386) Bool)

(assert (=> b!391333 (= res!224073 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6383))))

(declare-fun b!391334 () Bool)

(declare-fun e!237033 () Bool)

(declare-fun mapRes!16068 () Bool)

(assert (=> b!391334 (= e!237033 (and e!237029 mapRes!16068))))

(declare-fun condMapEmpty!16068 () Bool)

(declare-datatypes ((V!13979 0))(
  ( (V!13980 (val!4872 Int)) )
))
(declare-datatypes ((ValueCell!4484 0))(
  ( (ValueCellFull!4484 (v!7093 V!13979)) (EmptyCell!4484) )
))
(declare-datatypes ((array!23191 0))(
  ( (array!23192 (arr!11054 (Array (_ BitVec 32) ValueCell!4484)) (size!11406 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23191)

(declare-fun mapDefault!16068 () ValueCell!4484)

