; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41366 () Bool)

(assert start!41366)

(declare-fun b!462099 () Bool)

(declare-fun res!276448 () Bool)

(declare-fun e!269620 () Bool)

(assert (=> b!462099 (=> (not res!276448) (not e!269620))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28719 0))(
  ( (array!28720 (arr!13790 (Array (_ BitVec 32) (_ BitVec 64))) (size!14142 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28719)

(declare-datatypes ((V!17739 0))(
  ( (V!17740 (val!6282 Int)) )
))
(declare-datatypes ((ValueCell!5894 0))(
  ( (ValueCellFull!5894 (v!8565 V!17739)) (EmptyCell!5894) )
))
(declare-datatypes ((array!28721 0))(
  ( (array!28722 (arr!13791 (Array (_ BitVec 32) ValueCell!5894)) (size!14143 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28721)

(assert (=> b!462099 (= res!276448 (and (= (size!14143 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14142 _keys!1025) (size!14143 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!20383 () Bool)

(declare-fun mapRes!20383 () Bool)

(assert (=> mapIsEmpty!20383 mapRes!20383))

(declare-fun b!462100 () Bool)

(declare-fun e!269617 () Bool)

(declare-fun tp_is_empty!12475 () Bool)

(assert (=> b!462100 (= e!269617 tp_is_empty!12475)))

(declare-fun res!276449 () Bool)

(assert (=> start!41366 (=> (not res!276449) (not e!269620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41366 (= res!276449 (validMask!0 mask!1365))))

(assert (=> start!41366 e!269620))

(assert (=> start!41366 true))

(declare-fun array_inv!9954 (array!28719) Bool)

(assert (=> start!41366 (array_inv!9954 _keys!1025)))

(declare-fun e!269619 () Bool)

(declare-fun array_inv!9955 (array!28721) Bool)

(assert (=> start!41366 (and (array_inv!9955 _values!833) e!269619)))

(declare-fun b!462098 () Bool)

(assert (=> b!462098 (= e!269620 false)))

(declare-fun lt!209148 () Bool)

(declare-datatypes ((List!8341 0))(
  ( (Nil!8338) (Cons!8337 (h!9193 (_ BitVec 64)) (t!14293 List!8341)) )
))
(declare-fun arrayNoDuplicates!0 (array!28719 (_ BitVec 32) List!8341) Bool)

(assert (=> b!462098 (= lt!209148 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8338))))

(declare-fun b!462101 () Bool)

(declare-fun e!269616 () Bool)

(assert (=> b!462101 (= e!269619 (and e!269616 mapRes!20383))))

(declare-fun condMapEmpty!20383 () Bool)

(declare-fun mapDefault!20383 () ValueCell!5894)

