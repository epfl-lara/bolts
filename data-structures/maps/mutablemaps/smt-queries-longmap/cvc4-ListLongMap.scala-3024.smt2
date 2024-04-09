; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42510 () Bool)

(assert start!42510)

(declare-fun b_free!11957 () Bool)

(declare-fun b_next!11957 () Bool)

(assert (=> start!42510 (= b_free!11957 (not b_next!11957))))

(declare-fun tp!41908 () Bool)

(declare-fun b_and!20443 () Bool)

(assert (=> start!42510 (= tp!41908 b_and!20443)))

(declare-fun mapIsEmpty!21793 () Bool)

(declare-fun mapRes!21793 () Bool)

(assert (=> mapIsEmpty!21793 mapRes!21793))

(declare-fun b!474042 () Bool)

(declare-fun e!278222 () Bool)

(declare-fun tp_is_empty!13385 () Bool)

(assert (=> b!474042 (= e!278222 tp_is_empty!13385)))

(declare-fun b!474043 () Bool)

(declare-fun e!278224 () Bool)

(assert (=> b!474043 (= e!278224 tp_is_empty!13385)))

(declare-fun res!283219 () Bool)

(declare-fun e!278223 () Bool)

(assert (=> start!42510 (=> (not res!283219) (not e!278223))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42510 (= res!283219 (validMask!0 mask!1365))))

(assert (=> start!42510 e!278223))

(assert (=> start!42510 tp_is_empty!13385))

(assert (=> start!42510 tp!41908))

(assert (=> start!42510 true))

(declare-datatypes ((array!30487 0))(
  ( (array!30488 (arr!14659 (Array (_ BitVec 32) (_ BitVec 64))) (size!15011 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30487)

(declare-fun array_inv!10566 (array!30487) Bool)

(assert (=> start!42510 (array_inv!10566 _keys!1025)))

(declare-datatypes ((V!18951 0))(
  ( (V!18952 (val!6737 Int)) )
))
(declare-datatypes ((ValueCell!6349 0))(
  ( (ValueCellFull!6349 (v!9025 V!18951)) (EmptyCell!6349) )
))
(declare-datatypes ((array!30489 0))(
  ( (array!30490 (arr!14660 (Array (_ BitVec 32) ValueCell!6349)) (size!15012 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30489)

(declare-fun e!278220 () Bool)

(declare-fun array_inv!10567 (array!30489) Bool)

(assert (=> start!42510 (and (array_inv!10567 _values!833) e!278220)))

(declare-fun b!474044 () Bool)

(declare-fun res!283220 () Bool)

(assert (=> b!474044 (=> (not res!283220) (not e!278223))))

(declare-datatypes ((List!8987 0))(
  ( (Nil!8984) (Cons!8983 (h!9839 (_ BitVec 64)) (t!14967 List!8987)) )
))
(declare-fun arrayNoDuplicates!0 (array!30487 (_ BitVec 32) List!8987) Bool)

(assert (=> b!474044 (= res!283220 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8984))))

(declare-fun b!474045 () Bool)

(declare-fun res!283217 () Bool)

(assert (=> b!474045 (=> (not res!283217) (not e!278223))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!474045 (= res!283217 (and (= (size!15012 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15011 _keys!1025) (size!15012 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!474046 () Bool)

(assert (=> b!474046 (= e!278220 (and e!278222 mapRes!21793))))

(declare-fun condMapEmpty!21793 () Bool)

(declare-fun mapDefault!21793 () ValueCell!6349)

