; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35680 () Bool)

(assert start!35680)

(declare-fun b!358134 () Bool)

(declare-fun e!219204 () Bool)

(assert (=> b!358134 (= e!219204 false)))

(declare-fun lt!166135 () Bool)

(declare-datatypes ((array!19779 0))(
  ( (array!19780 (arr!9380 (Array (_ BitVec 32) (_ BitVec 64))) (size!9732 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19779)

(declare-datatypes ((List!5446 0))(
  ( (Nil!5443) (Cons!5442 (h!6298 (_ BitVec 64)) (t!10604 List!5446)) )
))
(declare-fun arrayNoDuplicates!0 (array!19779 (_ BitVec 32) List!5446) Bool)

(assert (=> b!358134 (= lt!166135 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5443))))

(declare-fun b!358135 () Bool)

(declare-fun e!219205 () Bool)

(declare-fun tp_is_empty!8125 () Bool)

(assert (=> b!358135 (= e!219205 tp_is_empty!8125)))

(declare-fun b!358136 () Bool)

(declare-fun res!199133 () Bool)

(assert (=> b!358136 (=> (not res!199133) (not e!219204))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!11811 0))(
  ( (V!11812 (val!4107 Int)) )
))
(declare-datatypes ((ValueCell!3719 0))(
  ( (ValueCellFull!3719 (v!6297 V!11811)) (EmptyCell!3719) )
))
(declare-datatypes ((array!19781 0))(
  ( (array!19782 (arr!9381 (Array (_ BitVec 32) ValueCell!3719)) (size!9733 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19781)

(assert (=> b!358136 (= res!199133 (and (= (size!9733 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9732 _keys!1456) (size!9733 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!358137 () Bool)

(declare-fun e!219203 () Bool)

(declare-fun mapRes!13695 () Bool)

(assert (=> b!358137 (= e!219203 (and e!219205 mapRes!13695))))

(declare-fun condMapEmpty!13695 () Bool)

(declare-fun mapDefault!13695 () ValueCell!3719)

