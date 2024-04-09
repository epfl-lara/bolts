; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35776 () Bool)

(assert start!35776)

(declare-fun res!199666 () Bool)

(declare-fun e!219926 () Bool)

(assert (=> start!35776 (=> (not res!199666) (not e!219926))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35776 (= res!199666 (validMask!0 mask!1842))))

(assert (=> start!35776 e!219926))

(assert (=> start!35776 true))

(declare-datatypes ((V!11939 0))(
  ( (V!11940 (val!4155 Int)) )
))
(declare-datatypes ((ValueCell!3767 0))(
  ( (ValueCellFull!3767 (v!6345 V!11939)) (EmptyCell!3767) )
))
(declare-datatypes ((array!19963 0))(
  ( (array!19964 (arr!9472 (Array (_ BitVec 32) ValueCell!3767)) (size!9824 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19963)

(declare-fun e!219924 () Bool)

(declare-fun array_inv!6970 (array!19963) Bool)

(assert (=> start!35776 (and (array_inv!6970 _values!1208) e!219924)))

(declare-datatypes ((array!19965 0))(
  ( (array!19966 (arr!9473 (Array (_ BitVec 32) (_ BitVec 64))) (size!9825 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19965)

(declare-fun array_inv!6971 (array!19965) Bool)

(assert (=> start!35776 (array_inv!6971 _keys!1456)))

(declare-fun mapIsEmpty!13839 () Bool)

(declare-fun mapRes!13839 () Bool)

(assert (=> mapIsEmpty!13839 mapRes!13839))

(declare-fun b!359097 () Bool)

(declare-fun e!219925 () Bool)

(assert (=> b!359097 (= e!219924 (and e!219925 mapRes!13839))))

(declare-fun condMapEmpty!13839 () Bool)

(declare-fun mapDefault!13839 () ValueCell!3767)

