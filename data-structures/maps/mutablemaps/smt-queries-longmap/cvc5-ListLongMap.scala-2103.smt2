; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35794 () Bool)

(assert start!35794)

(declare-fun b!359259 () Bool)

(declare-fun res!199747 () Bool)

(declare-fun e!220059 () Bool)

(assert (=> b!359259 (=> (not res!199747) (not e!220059))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((array!19999 0))(
  ( (array!20000 (arr!9490 (Array (_ BitVec 32) (_ BitVec 64))) (size!9842 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19999)

(declare-datatypes ((V!11963 0))(
  ( (V!11964 (val!4164 Int)) )
))
(declare-datatypes ((ValueCell!3776 0))(
  ( (ValueCellFull!3776 (v!6354 V!11963)) (EmptyCell!3776) )
))
(declare-datatypes ((array!20001 0))(
  ( (array!20002 (arr!9491 (Array (_ BitVec 32) ValueCell!3776)) (size!9843 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20001)

(assert (=> b!359259 (= res!199747 (and (= (size!9843 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9842 _keys!1456) (size!9843 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!13866 () Bool)

(declare-fun mapRes!13866 () Bool)

(assert (=> mapIsEmpty!13866 mapRes!13866))

(declare-fun b!359260 () Bool)

(declare-fun e!220057 () Bool)

(declare-fun e!220060 () Bool)

(assert (=> b!359260 (= e!220057 (and e!220060 mapRes!13866))))

(declare-fun condMapEmpty!13866 () Bool)

(declare-fun mapDefault!13866 () ValueCell!3776)

