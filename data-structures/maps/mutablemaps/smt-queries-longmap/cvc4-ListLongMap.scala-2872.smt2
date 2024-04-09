; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41364 () Bool)

(assert start!41364)

(declare-fun b!462080 () Bool)

(declare-fun e!269601 () Bool)

(assert (=> b!462080 (= e!269601 false)))

(declare-fun lt!209145 () Bool)

(declare-datatypes ((array!28715 0))(
  ( (array!28716 (arr!13788 (Array (_ BitVec 32) (_ BitVec 64))) (size!14140 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28715)

(declare-datatypes ((List!8340 0))(
  ( (Nil!8337) (Cons!8336 (h!9192 (_ BitVec 64)) (t!14292 List!8340)) )
))
(declare-fun arrayNoDuplicates!0 (array!28715 (_ BitVec 32) List!8340) Bool)

(assert (=> b!462080 (= lt!209145 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8337))))

(declare-fun b!462081 () Bool)

(declare-fun res!276440 () Bool)

(assert (=> b!462081 (=> (not res!276440) (not e!269601))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!17735 0))(
  ( (V!17736 (val!6281 Int)) )
))
(declare-datatypes ((ValueCell!5893 0))(
  ( (ValueCellFull!5893 (v!8564 V!17735)) (EmptyCell!5893) )
))
(declare-datatypes ((array!28717 0))(
  ( (array!28718 (arr!13789 (Array (_ BitVec 32) ValueCell!5893)) (size!14141 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28717)

(assert (=> b!462081 (= res!276440 (and (= (size!14141 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14140 _keys!1025) (size!14141 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!276438 () Bool)

(assert (=> start!41364 (=> (not res!276438) (not e!269601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41364 (= res!276438 (validMask!0 mask!1365))))

(assert (=> start!41364 e!269601))

(assert (=> start!41364 true))

(declare-fun array_inv!9952 (array!28715) Bool)

(assert (=> start!41364 (array_inv!9952 _keys!1025)))

(declare-fun e!269603 () Bool)

(declare-fun array_inv!9953 (array!28717) Bool)

(assert (=> start!41364 (and (array_inv!9953 _values!833) e!269603)))

(declare-fun b!462082 () Bool)

(declare-fun res!276439 () Bool)

(assert (=> b!462082 (=> (not res!276439) (not e!269601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28715 (_ BitVec 32)) Bool)

(assert (=> b!462082 (= res!276439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462083 () Bool)

(declare-fun e!269602 () Bool)

(declare-fun mapRes!20380 () Bool)

(assert (=> b!462083 (= e!269603 (and e!269602 mapRes!20380))))

(declare-fun condMapEmpty!20380 () Bool)

(declare-fun mapDefault!20380 () ValueCell!5893)

