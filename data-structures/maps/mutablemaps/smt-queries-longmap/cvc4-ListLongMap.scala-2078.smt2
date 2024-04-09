; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35648 () Bool)

(assert start!35648)

(declare-fun b_free!7895 () Bool)

(declare-fun b_next!7895 () Bool)

(assert (=> start!35648 (= b_free!7895 (not b_next!7895))))

(declare-fun tp!27668 () Bool)

(declare-fun b_and!15155 () Bool)

(assert (=> start!35648 (= tp!27668 b_and!15155)))

(declare-fun b!357588 () Bool)

(declare-fun e!218927 () Bool)

(declare-fun tp_is_empty!8093 () Bool)

(assert (=> b!357588 (= e!218927 tp_is_empty!8093)))

(declare-fun b!357589 () Bool)

(declare-fun res!198737 () Bool)

(declare-fun e!218925 () Bool)

(assert (=> b!357589 (=> (not res!198737) (not e!218925))))

(declare-datatypes ((array!19719 0))(
  ( (array!19720 (arr!9350 (Array (_ BitVec 32) (_ BitVec 64))) (size!9702 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19719)

(declare-datatypes ((List!5426 0))(
  ( (Nil!5423) (Cons!5422 (h!6278 (_ BitVec 64)) (t!10584 List!5426)) )
))
(declare-fun arrayNoDuplicates!0 (array!19719 (_ BitVec 32) List!5426) Bool)

(assert (=> b!357589 (= res!198737 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5423))))

(declare-fun b!357590 () Bool)

(declare-fun e!218926 () Bool)

(declare-fun mapRes!13647 () Bool)

(assert (=> b!357590 (= e!218926 (and e!218927 mapRes!13647))))

(declare-fun condMapEmpty!13647 () Bool)

(declare-datatypes ((V!11767 0))(
  ( (V!11768 (val!4091 Int)) )
))
(declare-datatypes ((ValueCell!3703 0))(
  ( (ValueCellFull!3703 (v!6281 V!11767)) (EmptyCell!3703) )
))
(declare-datatypes ((array!19721 0))(
  ( (array!19722 (arr!9351 (Array (_ BitVec 32) ValueCell!3703)) (size!9703 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19721)

(declare-fun mapDefault!13647 () ValueCell!3703)

