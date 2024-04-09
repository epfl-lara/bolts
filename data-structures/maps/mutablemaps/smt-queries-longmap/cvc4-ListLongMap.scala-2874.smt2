; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41376 () Bool)

(assert start!41376)

(declare-fun b!462188 () Bool)

(declare-fun res!276492 () Bool)

(declare-fun e!269691 () Bool)

(assert (=> b!462188 (=> (not res!276492) (not e!269691))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!28737 0))(
  ( (array!28738 (arr!13799 (Array (_ BitVec 32) (_ BitVec 64))) (size!14151 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28737)

(declare-datatypes ((V!17751 0))(
  ( (V!17752 (val!6287 Int)) )
))
(declare-datatypes ((ValueCell!5899 0))(
  ( (ValueCellFull!5899 (v!8570 V!17751)) (EmptyCell!5899) )
))
(declare-datatypes ((array!28739 0))(
  ( (array!28740 (arr!13800 (Array (_ BitVec 32) ValueCell!5899)) (size!14152 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28739)

(declare-fun mask!1365 () (_ BitVec 32))

(assert (=> b!462188 (= res!276492 (and (= (size!14152 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14151 _keys!1025) (size!14152 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462189 () Bool)

(declare-fun e!269693 () Bool)

(declare-fun e!269694 () Bool)

(declare-fun mapRes!20398 () Bool)

(assert (=> b!462189 (= e!269693 (and e!269694 mapRes!20398))))

(declare-fun condMapEmpty!20398 () Bool)

(declare-fun mapDefault!20398 () ValueCell!5899)

