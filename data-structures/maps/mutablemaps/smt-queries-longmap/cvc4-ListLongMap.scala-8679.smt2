; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105512 () Bool)

(assert start!105512)

(declare-fun b_free!27113 () Bool)

(declare-fun b_next!27113 () Bool)

(assert (=> start!105512 (= b_free!27113 (not b_next!27113))))

(declare-fun tp!94856 () Bool)

(declare-fun b_and!44979 () Bool)

(assert (=> start!105512 (= tp!94856 b_and!44979)))

(declare-fun b!1256501 () Bool)

(declare-fun e!714361 () Bool)

(declare-fun tp_is_empty!32015 () Bool)

(assert (=> b!1256501 (= e!714361 tp_is_empty!32015)))

(declare-fun res!837704 () Bool)

(declare-fun e!714360 () Bool)

(assert (=> start!105512 (=> (not res!837704) (not e!714360))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105512 (= res!837704 (validMask!0 mask!1466))))

(assert (=> start!105512 e!714360))

(assert (=> start!105512 true))

(assert (=> start!105512 tp!94856))

(assert (=> start!105512 tp_is_empty!32015))

(declare-datatypes ((array!81665 0))(
  ( (array!81666 (arr!39386 (Array (_ BitVec 32) (_ BitVec 64))) (size!39923 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81665)

(declare-fun array_inv!29951 (array!81665) Bool)

(assert (=> start!105512 (array_inv!29951 _keys!1118)))

(declare-datatypes ((V!48051 0))(
  ( (V!48052 (val!16070 Int)) )
))
(declare-datatypes ((ValueCell!15244 0))(
  ( (ValueCellFull!15244 (v!18771 V!48051)) (EmptyCell!15244) )
))
(declare-datatypes ((array!81667 0))(
  ( (array!81668 (arr!39387 (Array (_ BitVec 32) ValueCell!15244)) (size!39924 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81667)

(declare-fun e!714356 () Bool)

(declare-fun array_inv!29952 (array!81667) Bool)

(assert (=> start!105512 (and (array_inv!29952 _values!914) e!714356)))

(declare-fun b!1256502 () Bool)

(declare-fun e!714358 () Bool)

(assert (=> b!1256502 (= e!714358 tp_is_empty!32015)))

(declare-fun mapNonEmpty!49810 () Bool)

(declare-fun mapRes!49810 () Bool)

(declare-fun tp!94857 () Bool)

(assert (=> mapNonEmpty!49810 (= mapRes!49810 (and tp!94857 e!714361))))

(declare-fun mapValue!49810 () ValueCell!15244)

(declare-fun mapRest!49810 () (Array (_ BitVec 32) ValueCell!15244))

(declare-fun mapKey!49810 () (_ BitVec 32))

(assert (=> mapNonEmpty!49810 (= (arr!39387 _values!914) (store mapRest!49810 mapKey!49810 mapValue!49810))))

(declare-fun b!1256503 () Bool)

(declare-fun res!837702 () Bool)

(assert (=> b!1256503 (=> (not res!837702) (not e!714360))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1256503 (= res!837702 (and (= (size!39924 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39923 _keys!1118) (size!39924 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1256504 () Bool)

(declare-fun res!837701 () Bool)

(assert (=> b!1256504 (=> (not res!837701) (not e!714360))))

(declare-datatypes ((List!28146 0))(
  ( (Nil!28143) (Cons!28142 (h!29351 (_ BitVec 64)) (t!41642 List!28146)) )
))
(declare-fun arrayNoDuplicates!0 (array!81665 (_ BitVec 32) List!28146) Bool)

(assert (=> b!1256504 (= res!837701 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28143))))

(declare-fun b!1256505 () Bool)

(assert (=> b!1256505 (= e!714356 (and e!714358 mapRes!49810))))

(declare-fun condMapEmpty!49810 () Bool)

(declare-fun mapDefault!49810 () ValueCell!15244)

