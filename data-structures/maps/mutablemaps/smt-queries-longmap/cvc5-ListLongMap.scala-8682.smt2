; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105526 () Bool)

(assert start!105526)

(declare-fun b_free!27127 () Bool)

(declare-fun b_next!27127 () Bool)

(assert (=> start!105526 (= b_free!27127 (not b_next!27127))))

(declare-fun tp!94899 () Bool)

(declare-fun b_and!44993 () Bool)

(assert (=> start!105526 (= tp!94899 b_and!44993)))

(declare-fun mapIsEmpty!49831 () Bool)

(declare-fun mapRes!49831 () Bool)

(assert (=> mapIsEmpty!49831 mapRes!49831))

(declare-fun b!1256690 () Bool)

(declare-fun e!714505 () Bool)

(declare-fun tp_is_empty!32029 () Bool)

(assert (=> b!1256690 (= e!714505 tp_is_empty!32029)))

(declare-fun b!1256691 () Bool)

(declare-fun res!837831 () Bool)

(declare-fun e!714503 () Bool)

(assert (=> b!1256691 (=> (not res!837831) (not e!714503))))

(declare-datatypes ((array!81693 0))(
  ( (array!81694 (arr!39400 (Array (_ BitVec 32) (_ BitVec 64))) (size!39937 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81693)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81693 (_ BitVec 32)) Bool)

(assert (=> b!1256691 (= res!837831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!49831 () Bool)

(declare-fun tp!94898 () Bool)

(assert (=> mapNonEmpty!49831 (= mapRes!49831 (and tp!94898 e!714505))))

(declare-datatypes ((V!48071 0))(
  ( (V!48072 (val!16077 Int)) )
))
(declare-datatypes ((ValueCell!15251 0))(
  ( (ValueCellFull!15251 (v!18778 V!48071)) (EmptyCell!15251) )
))
(declare-fun mapRest!49831 () (Array (_ BitVec 32) ValueCell!15251))

(declare-fun mapKey!49831 () (_ BitVec 32))

(declare-fun mapValue!49831 () ValueCell!15251)

(declare-datatypes ((array!81695 0))(
  ( (array!81696 (arr!39401 (Array (_ BitVec 32) ValueCell!15251)) (size!39938 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81695)

(assert (=> mapNonEmpty!49831 (= (arr!39401 _values!914) (store mapRest!49831 mapKey!49831 mapValue!49831))))

(declare-fun b!1256692 () Bool)

(declare-fun res!837827 () Bool)

(assert (=> b!1256692 (=> (not res!837827) (not e!714503))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1256692 (= res!837827 (and (= (size!39938 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39937 _keys!1118) (size!39938 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1256693 () Bool)

(declare-fun e!714508 () Bool)

(declare-fun e!714504 () Bool)

(assert (=> b!1256693 (= e!714508 (and e!714504 mapRes!49831))))

(declare-fun condMapEmpty!49831 () Bool)

(declare-fun mapDefault!49831 () ValueCell!15251)

