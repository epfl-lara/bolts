; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105600 () Bool)

(assert start!105600)

(declare-fun b_free!27179 () Bool)

(declare-fun b_next!27179 () Bool)

(assert (=> start!105600 (= b_free!27179 (not b_next!27179))))

(declare-fun tp!95058 () Bool)

(declare-fun b_and!45055 () Bool)

(assert (=> start!105600 (= tp!95058 b_and!45055)))

(declare-fun res!838304 () Bool)

(declare-fun e!715101 () Bool)

(assert (=> start!105600 (=> (not res!838304) (not e!715101))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105600 (= res!838304 (validMask!0 mask!1466))))

(assert (=> start!105600 e!715101))

(assert (=> start!105600 true))

(assert (=> start!105600 tp!95058))

(declare-fun tp_is_empty!32081 () Bool)

(assert (=> start!105600 tp_is_empty!32081))

(declare-datatypes ((array!81793 0))(
  ( (array!81794 (arr!39449 (Array (_ BitVec 32) (_ BitVec 64))) (size!39986 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81793)

(declare-fun array_inv!29997 (array!81793) Bool)

(assert (=> start!105600 (array_inv!29997 _keys!1118)))

(declare-datatypes ((V!48139 0))(
  ( (V!48140 (val!16103 Int)) )
))
(declare-datatypes ((ValueCell!15277 0))(
  ( (ValueCellFull!15277 (v!18805 V!48139)) (EmptyCell!15277) )
))
(declare-datatypes ((array!81795 0))(
  ( (array!81796 (arr!39450 (Array (_ BitVec 32) ValueCell!15277)) (size!39987 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81795)

(declare-fun e!715097 () Bool)

(declare-fun array_inv!29998 (array!81795) Bool)

(assert (=> start!105600 (and (array_inv!29998 _values!914) e!715097)))

(declare-fun b!1257497 () Bool)

(declare-fun res!838303 () Bool)

(assert (=> b!1257497 (=> (not res!838303) (not e!715101))))

(declare-datatypes ((List!28194 0))(
  ( (Nil!28191) (Cons!28190 (h!29399 (_ BitVec 64)) (t!41692 List!28194)) )
))
(declare-fun arrayNoDuplicates!0 (array!81793 (_ BitVec 32) List!28194) Bool)

(assert (=> b!1257497 (= res!838303 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28191))))

(declare-fun b!1257498 () Bool)

(declare-fun e!715100 () Bool)

(declare-fun mapRes!49912 () Bool)

(assert (=> b!1257498 (= e!715097 (and e!715100 mapRes!49912))))

(declare-fun condMapEmpty!49912 () Bool)

(declare-fun mapDefault!49912 () ValueCell!15277)

