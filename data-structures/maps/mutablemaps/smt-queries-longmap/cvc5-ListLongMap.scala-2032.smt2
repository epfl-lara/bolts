; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35356 () Bool)

(assert start!35356)

(declare-fun b!353774 () Bool)

(declare-fun res!196200 () Bool)

(declare-fun e!216757 () Bool)

(assert (=> b!353774 (=> (not res!196200) (not e!216757))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-datatypes ((array!19183 0))(
  ( (array!19184 (arr!9083 (Array (_ BitVec 32) (_ BitVec 64))) (size!9435 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19183)

(declare-datatypes ((V!11395 0))(
  ( (V!11396 (val!3951 Int)) )
))
(declare-datatypes ((ValueCell!3563 0))(
  ( (ValueCellFull!3563 (v!6141 V!11395)) (EmptyCell!3563) )
))
(declare-datatypes ((array!19185 0))(
  ( (array!19186 (arr!9084 (Array (_ BitVec 32) ValueCell!3563)) (size!9436 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19185)

(declare-fun mask!1842 () (_ BitVec 32))

(assert (=> b!353774 (= res!196200 (and (= (size!9436 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9435 _keys!1456) (size!9436 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!353776 () Bool)

(declare-fun e!216754 () Bool)

(declare-fun tp_is_empty!7813 () Bool)

(assert (=> b!353776 (= e!216754 tp_is_empty!7813)))

(declare-fun b!353777 () Bool)

(declare-fun res!196201 () Bool)

(assert (=> b!353777 (=> (not res!196201) (not e!216757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19183 (_ BitVec 32)) Bool)

(assert (=> b!353777 (= res!196201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!353778 () Bool)

(declare-fun res!196197 () Bool)

(assert (=> b!353778 (=> (not res!196197) (not e!216757))))

(declare-fun k!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!353778 (= res!196197 (validKeyInArray!0 k!1077))))

(declare-fun b!353779 () Bool)

(declare-fun e!216758 () Bool)

(declare-fun e!216755 () Bool)

(declare-fun mapRes!13224 () Bool)

(assert (=> b!353779 (= e!216758 (and e!216755 mapRes!13224))))

(declare-fun condMapEmpty!13224 () Bool)

(declare-fun mapDefault!13224 () ValueCell!3563)

