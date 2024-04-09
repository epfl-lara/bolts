; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104852 () Bool)

(assert start!104852)

(declare-fun b_free!26621 () Bool)

(declare-fun b_next!26621 () Bool)

(assert (=> start!104852 (= b_free!26621 (not b_next!26621))))

(declare-fun tp!93353 () Bool)

(declare-fun b_and!44399 () Bool)

(assert (=> start!104852 (= tp!93353 b_and!44399)))

(declare-fun mapNonEmpty!49045 () Bool)

(declare-fun mapRes!49045 () Bool)

(declare-fun tp!93354 () Bool)

(declare-fun e!709089 () Bool)

(assert (=> mapNonEmpty!49045 (= mapRes!49045 (and tp!93354 e!709089))))

(declare-fun mapKey!49045 () (_ BitVec 32))

(declare-datatypes ((V!47395 0))(
  ( (V!47396 (val!15824 Int)) )
))
(declare-datatypes ((ValueCell!14998 0))(
  ( (ValueCellFull!14998 (v!18520 V!47395)) (EmptyCell!14998) )
))
(declare-fun mapValue!49045 () ValueCell!14998)

(declare-fun mapRest!49045 () (Array (_ BitVec 32) ValueCell!14998))

(declare-datatypes ((array!80703 0))(
  ( (array!80704 (arr!38914 (Array (_ BitVec 32) ValueCell!14998)) (size!39451 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80703)

(assert (=> mapNonEmpty!49045 (= (arr!38914 _values!914) (store mapRest!49045 mapKey!49045 mapValue!49045))))

(declare-fun b!1249312 () Bool)

(declare-fun e!709092 () Bool)

(declare-fun tp_is_empty!31523 () Bool)

(assert (=> b!1249312 (= e!709092 tp_is_empty!31523)))

(declare-fun res!833471 () Bool)

(declare-fun e!709091 () Bool)

(assert (=> start!104852 (=> (not res!833471) (not e!709091))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104852 (= res!833471 (validMask!0 mask!1466))))

(assert (=> start!104852 e!709091))

(assert (=> start!104852 true))

(assert (=> start!104852 tp!93353))

(assert (=> start!104852 tp_is_empty!31523))

(declare-datatypes ((array!80705 0))(
  ( (array!80706 (arr!38915 (Array (_ BitVec 32) (_ BitVec 64))) (size!39452 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80705)

(declare-fun array_inv!29627 (array!80705) Bool)

(assert (=> start!104852 (array_inv!29627 _keys!1118)))

(declare-fun e!709090 () Bool)

(declare-fun array_inv!29628 (array!80703) Bool)

(assert (=> start!104852 (and (array_inv!29628 _values!914) e!709090)))

(declare-fun b!1249313 () Bool)

(declare-fun res!833470 () Bool)

(assert (=> b!1249313 (=> (not res!833470) (not e!709091))))

(declare-datatypes ((List!27791 0))(
  ( (Nil!27788) (Cons!27787 (h!28996 (_ BitVec 64)) (t!41269 List!27791)) )
))
(declare-fun arrayNoDuplicates!0 (array!80705 (_ BitVec 32) List!27791) Bool)

(assert (=> b!1249313 (= res!833470 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27788))))

(declare-fun b!1249314 () Bool)

(declare-fun res!833469 () Bool)

(assert (=> b!1249314 (=> (not res!833469) (not e!709091))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1249314 (= res!833469 (and (= (size!39451 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39452 _keys!1118) (size!39451 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1249315 () Bool)

(assert (=> b!1249315 (= e!709089 tp_is_empty!31523)))

(declare-fun b!1249316 () Bool)

(assert (=> b!1249316 (= e!709090 (and e!709092 mapRes!49045))))

(declare-fun condMapEmpty!49045 () Bool)

(declare-fun mapDefault!49045 () ValueCell!14998)

