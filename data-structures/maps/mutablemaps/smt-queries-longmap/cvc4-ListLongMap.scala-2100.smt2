; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35780 () Bool)

(assert start!35780)

(declare-fun mapNonEmpty!13845 () Bool)

(declare-fun mapRes!13845 () Bool)

(declare-fun tp!27912 () Bool)

(declare-fun e!219952 () Bool)

(assert (=> mapNonEmpty!13845 (= mapRes!13845 (and tp!27912 e!219952))))

(declare-datatypes ((V!11943 0))(
  ( (V!11944 (val!4157 Int)) )
))
(declare-datatypes ((ValueCell!3769 0))(
  ( (ValueCellFull!3769 (v!6347 V!11943)) (EmptyCell!3769) )
))
(declare-fun mapValue!13845 () ValueCell!3769)

(declare-fun mapRest!13845 () (Array (_ BitVec 32) ValueCell!3769))

(declare-datatypes ((array!19971 0))(
  ( (array!19972 (arr!9476 (Array (_ BitVec 32) ValueCell!3769)) (size!9828 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19971)

(declare-fun mapKey!13845 () (_ BitVec 32))

(assert (=> mapNonEmpty!13845 (= (arr!9476 _values!1208) (store mapRest!13845 mapKey!13845 mapValue!13845))))

(declare-fun b!359133 () Bool)

(declare-fun tp_is_empty!8225 () Bool)

(assert (=> b!359133 (= e!219952 tp_is_empty!8225)))

(declare-fun b!359134 () Bool)

(declare-fun res!199684 () Bool)

(declare-fun e!219954 () Bool)

(assert (=> b!359134 (=> (not res!199684) (not e!219954))))

(declare-datatypes ((array!19973 0))(
  ( (array!19974 (arr!9477 (Array (_ BitVec 32) (_ BitVec 64))) (size!9829 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19973)

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19973 (_ BitVec 32)) Bool)

(assert (=> b!359134 (= res!199684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!199682 () Bool)

(assert (=> start!35780 (=> (not res!199682) (not e!219954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35780 (= res!199682 (validMask!0 mask!1842))))

(assert (=> start!35780 e!219954))

(assert (=> start!35780 true))

(declare-fun e!219953 () Bool)

(declare-fun array_inv!6974 (array!19971) Bool)

(assert (=> start!35780 (and (array_inv!6974 _values!1208) e!219953)))

(declare-fun array_inv!6975 (array!19973) Bool)

(assert (=> start!35780 (array_inv!6975 _keys!1456)))

(declare-fun mapIsEmpty!13845 () Bool)

(assert (=> mapIsEmpty!13845 mapRes!13845))

(declare-fun b!359135 () Bool)

(declare-fun e!219955 () Bool)

(assert (=> b!359135 (= e!219953 (and e!219955 mapRes!13845))))

(declare-fun condMapEmpty!13845 () Bool)

(declare-fun mapDefault!13845 () ValueCell!3769)

