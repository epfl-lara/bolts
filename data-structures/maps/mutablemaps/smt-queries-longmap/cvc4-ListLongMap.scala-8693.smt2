; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105618 () Bool)

(assert start!105618)

(declare-fun b_free!27197 () Bool)

(declare-fun b_next!27197 () Bool)

(assert (=> start!105618 (= b_free!27197 (not b_next!27197))))

(declare-fun tp!95111 () Bool)

(declare-fun b_and!45073 () Bool)

(assert (=> start!105618 (= tp!95111 b_and!45073)))

(declare-fun mapIsEmpty!49939 () Bool)

(declare-fun mapRes!49939 () Bool)

(assert (=> mapIsEmpty!49939 mapRes!49939))

(declare-fun b!1257686 () Bool)

(declare-fun res!838414 () Bool)

(declare-fun e!715235 () Bool)

(assert (=> b!1257686 (=> (not res!838414) (not e!715235))))

(declare-datatypes ((array!81825 0))(
  ( (array!81826 (arr!39465 (Array (_ BitVec 32) (_ BitVec 64))) (size!40002 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81825)

(declare-datatypes ((List!28207 0))(
  ( (Nil!28204) (Cons!28203 (h!29412 (_ BitVec 64)) (t!41705 List!28207)) )
))
(declare-fun arrayNoDuplicates!0 (array!81825 (_ BitVec 32) List!28207) Bool)

(assert (=> b!1257686 (= res!838414 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28204))))

(declare-fun b!1257687 () Bool)

(declare-fun e!715236 () Bool)

(declare-fun tp_is_empty!32099 () Bool)

(assert (=> b!1257687 (= e!715236 tp_is_empty!32099)))

(declare-fun b!1257688 () Bool)

(declare-fun e!715232 () Bool)

(assert (=> b!1257688 (= e!715232 tp_is_empty!32099)))

(declare-fun b!1257689 () Bool)

(declare-fun res!838412 () Bool)

(assert (=> b!1257689 (=> (not res!838412) (not e!715235))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!48163 0))(
  ( (V!48164 (val!16112 Int)) )
))
(declare-datatypes ((ValueCell!15286 0))(
  ( (ValueCellFull!15286 (v!18814 V!48163)) (EmptyCell!15286) )
))
(declare-datatypes ((array!81827 0))(
  ( (array!81828 (arr!39466 (Array (_ BitVec 32) ValueCell!15286)) (size!40003 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81827)

(assert (=> b!1257689 (= res!838412 (and (= (size!40003 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40002 _keys!1118) (size!40003 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1257690 () Bool)

(declare-fun res!838413 () Bool)

(assert (=> b!1257690 (=> (not res!838413) (not e!715235))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81825 (_ BitVec 32)) Bool)

(assert (=> b!1257690 (= res!838413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!49939 () Bool)

(declare-fun tp!95112 () Bool)

(assert (=> mapNonEmpty!49939 (= mapRes!49939 (and tp!95112 e!715236))))

(declare-fun mapRest!49939 () (Array (_ BitVec 32) ValueCell!15286))

(declare-fun mapValue!49939 () ValueCell!15286)

(declare-fun mapKey!49939 () (_ BitVec 32))

(assert (=> mapNonEmpty!49939 (= (arr!39466 _values!914) (store mapRest!49939 mapKey!49939 mapValue!49939))))

(declare-fun b!1257691 () Bool)

(declare-fun e!715233 () Bool)

(assert (=> b!1257691 (= e!715233 (and e!715232 mapRes!49939))))

(declare-fun condMapEmpty!49939 () Bool)

(declare-fun mapDefault!49939 () ValueCell!15286)

