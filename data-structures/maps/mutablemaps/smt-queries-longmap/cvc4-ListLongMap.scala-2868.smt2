; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41302 () Bool)

(assert start!41302)

(declare-fun res!276252 () Bool)

(declare-fun e!269332 () Bool)

(assert (=> start!41302 (=> (not res!276252) (not e!269332))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41302 (= res!276252 (validMask!0 mask!1365))))

(assert (=> start!41302 e!269332))

(assert (=> start!41302 true))

(declare-datatypes ((array!28661 0))(
  ( (array!28662 (arr!13765 (Array (_ BitVec 32) (_ BitVec 64))) (size!14117 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28661)

(declare-fun array_inv!9938 (array!28661) Bool)

(assert (=> start!41302 (array_inv!9938 _keys!1025)))

(declare-datatypes ((V!17703 0))(
  ( (V!17704 (val!6269 Int)) )
))
(declare-datatypes ((ValueCell!5881 0))(
  ( (ValueCellFull!5881 (v!8551 V!17703)) (EmptyCell!5881) )
))
(declare-datatypes ((array!28663 0))(
  ( (array!28664 (arr!13766 (Array (_ BitVec 32) ValueCell!5881)) (size!14118 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28663)

(declare-fun e!269333 () Bool)

(declare-fun array_inv!9939 (array!28663) Bool)

(assert (=> start!41302 (and (array_inv!9939 _values!833) e!269333)))

(declare-fun b!461728 () Bool)

(declare-fun res!276251 () Bool)

(assert (=> b!461728 (=> (not res!276251) (not e!269332))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!461728 (= res!276251 (and (= (size!14118 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14117 _keys!1025) (size!14118 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!461729 () Bool)

(declare-fun e!269334 () Bool)

(declare-fun mapRes!20332 () Bool)

(assert (=> b!461729 (= e!269333 (and e!269334 mapRes!20332))))

(declare-fun condMapEmpty!20332 () Bool)

(declare-fun mapDefault!20332 () ValueCell!5881)

