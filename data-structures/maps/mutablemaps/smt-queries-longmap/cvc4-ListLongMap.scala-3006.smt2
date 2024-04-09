; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42366 () Bool)

(assert start!42366)

(declare-fun b_free!11849 () Bool)

(declare-fun b_next!11849 () Bool)

(assert (=> start!42366 (= b_free!11849 (not b_next!11849))))

(declare-fun tp!41577 () Bool)

(declare-fun b_and!20313 () Bool)

(assert (=> start!42366 (= tp!41577 b_and!20313)))

(declare-fun b!472417 () Bool)

(declare-fun res!282271 () Bool)

(declare-fun e!277042 () Bool)

(assert (=> b!472417 (=> (not res!282271) (not e!277042))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30275 0))(
  ( (array!30276 (arr!14555 (Array (_ BitVec 32) (_ BitVec 64))) (size!14907 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30275)

(declare-datatypes ((V!18807 0))(
  ( (V!18808 (val!6683 Int)) )
))
(declare-datatypes ((ValueCell!6295 0))(
  ( (ValueCellFull!6295 (v!8970 V!18807)) (EmptyCell!6295) )
))
(declare-datatypes ((array!30277 0))(
  ( (array!30278 (arr!14556 (Array (_ BitVec 32) ValueCell!6295)) (size!14908 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30277)

(assert (=> b!472417 (= res!282271 (and (= (size!14908 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14907 _keys!1025) (size!14908 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!472418 () Bool)

(declare-fun e!277043 () Bool)

(declare-fun tp_is_empty!13277 () Bool)

(assert (=> b!472418 (= e!277043 tp_is_empty!13277)))

(declare-fun b!472419 () Bool)

(declare-fun res!282272 () Bool)

(assert (=> b!472419 (=> (not res!282272) (not e!277042))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30275 (_ BitVec 32)) Bool)

(assert (=> b!472419 (= res!282272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!472420 () Bool)

(declare-fun res!282273 () Bool)

(assert (=> b!472420 (=> (not res!282273) (not e!277042))))

(declare-datatypes ((List!8907 0))(
  ( (Nil!8904) (Cons!8903 (h!9759 (_ BitVec 64)) (t!14883 List!8907)) )
))
(declare-fun arrayNoDuplicates!0 (array!30275 (_ BitVec 32) List!8907) Bool)

(assert (=> b!472420 (= res!282273 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8904))))

(declare-fun b!472421 () Bool)

(declare-fun e!277045 () Bool)

(declare-fun e!277044 () Bool)

(declare-fun mapRes!21625 () Bool)

(assert (=> b!472421 (= e!277045 (and e!277044 mapRes!21625))))

(declare-fun condMapEmpty!21625 () Bool)

(declare-fun mapDefault!21625 () ValueCell!6295)

