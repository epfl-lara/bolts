; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35380 () Bool)

(assert start!35380)

(declare-fun b!353931 () Bool)

(declare-fun e!216872 () Bool)

(declare-fun tp_is_empty!7825 () Bool)

(assert (=> b!353931 (= e!216872 tp_is_empty!7825)))

(declare-fun b!353932 () Bool)

(declare-fun res!196282 () Bool)

(declare-fun e!216873 () Bool)

(assert (=> b!353932 (=> (not res!196282) (not e!216873))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19207 0))(
  ( (array!19208 (arr!9094 (Array (_ BitVec 32) (_ BitVec 64))) (size!9446 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19207)

(declare-datatypes ((V!11411 0))(
  ( (V!11412 (val!3957 Int)) )
))
(declare-datatypes ((ValueCell!3569 0))(
  ( (ValueCellFull!3569 (v!6147 V!11411)) (EmptyCell!3569) )
))
(declare-datatypes ((array!19209 0))(
  ( (array!19210 (arr!9095 (Array (_ BitVec 32) ValueCell!3569)) (size!9447 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19209)

(assert (=> b!353932 (= res!196282 (and (= (size!9447 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9446 _keys!1456) (size!9447 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!353933 () Bool)

(declare-fun e!216874 () Bool)

(declare-fun mapRes!13245 () Bool)

(assert (=> b!353933 (= e!216874 (and e!216872 mapRes!13245))))

(declare-fun condMapEmpty!13245 () Bool)

(declare-fun mapDefault!13245 () ValueCell!3569)

