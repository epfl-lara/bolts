; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35684 () Bool)

(assert start!35684)

(declare-fun b!358171 () Bool)

(declare-fun res!199152 () Bool)

(declare-fun e!219233 () Bool)

(assert (=> b!358171 (=> (not res!199152) (not e!219233))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19787 0))(
  ( (array!19788 (arr!9384 (Array (_ BitVec 32) (_ BitVec 64))) (size!9736 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19787)

(declare-datatypes ((V!11815 0))(
  ( (V!11816 (val!4109 Int)) )
))
(declare-datatypes ((ValueCell!3721 0))(
  ( (ValueCellFull!3721 (v!6299 V!11815)) (EmptyCell!3721) )
))
(declare-datatypes ((array!19789 0))(
  ( (array!19790 (arr!9385 (Array (_ BitVec 32) ValueCell!3721)) (size!9737 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19789)

(assert (=> b!358171 (= res!199152 (and (= (size!9737 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9736 _keys!1456) (size!9737 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!358172 () Bool)

(declare-fun e!219232 () Bool)

(declare-fun e!219235 () Bool)

(declare-fun mapRes!13701 () Bool)

(assert (=> b!358172 (= e!219232 (and e!219235 mapRes!13701))))

(declare-fun condMapEmpty!13701 () Bool)

(declare-fun mapDefault!13701 () ValueCell!3721)

