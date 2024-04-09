; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104738 () Bool)

(assert start!104738)

(declare-fun b_free!26519 () Bool)

(declare-fun b_next!26519 () Bool)

(assert (=> start!104738 (= b_free!26519 (not b_next!26519))))

(declare-fun tp!93044 () Bool)

(declare-fun b_and!44293 () Bool)

(assert (=> start!104738 (= tp!93044 b_and!44293)))

(declare-fun res!832831 () Bool)

(declare-fun e!708277 () Bool)

(assert (=> start!104738 (=> (not res!832831) (not e!708277))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104738 (= res!832831 (validMask!0 mask!1466))))

(assert (=> start!104738 e!708277))

(assert (=> start!104738 true))

(assert (=> start!104738 tp!93044))

(declare-fun tp_is_empty!31421 () Bool)

(assert (=> start!104738 tp_is_empty!31421))

(declare-datatypes ((array!80509 0))(
  ( (array!80510 (arr!38818 (Array (_ BitVec 32) (_ BitVec 64))) (size!39355 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80509)

(declare-fun array_inv!29557 (array!80509) Bool)

(assert (=> start!104738 (array_inv!29557 _keys!1118)))

(declare-datatypes ((V!47259 0))(
  ( (V!47260 (val!15773 Int)) )
))
(declare-datatypes ((ValueCell!14947 0))(
  ( (ValueCellFull!14947 (v!18469 V!47259)) (EmptyCell!14947) )
))
(declare-datatypes ((array!80511 0))(
  ( (array!80512 (arr!38819 (Array (_ BitVec 32) ValueCell!14947)) (size!39356 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80511)

(declare-fun e!708278 () Bool)

(declare-fun array_inv!29558 (array!80511) Bool)

(assert (=> start!104738 (and (array_inv!29558 _values!914) e!708278)))

(declare-fun mapNonEmpty!48889 () Bool)

(declare-fun mapRes!48889 () Bool)

(declare-fun tp!93045 () Bool)

(declare-fun e!708276 () Bool)

(assert (=> mapNonEmpty!48889 (= mapRes!48889 (and tp!93045 e!708276))))

(declare-fun mapValue!48889 () ValueCell!14947)

(declare-fun mapKey!48889 () (_ BitVec 32))

(declare-fun mapRest!48889 () (Array (_ BitVec 32) ValueCell!14947))

(assert (=> mapNonEmpty!48889 (= (arr!38819 _values!914) (store mapRest!48889 mapKey!48889 mapValue!48889))))

(declare-fun b!1248168 () Bool)

(declare-fun e!708275 () Bool)

(assert (=> b!1248168 (= e!708275 tp_is_empty!31421)))

(declare-fun b!1248169 () Bool)

(declare-fun res!832833 () Bool)

(assert (=> b!1248169 (=> (not res!832833) (not e!708277))))

(declare-datatypes ((List!27730 0))(
  ( (Nil!27727) (Cons!27726 (h!28935 (_ BitVec 64)) (t!41206 List!27730)) )
))
(declare-fun arrayNoDuplicates!0 (array!80509 (_ BitVec 32) List!27730) Bool)

(assert (=> b!1248169 (= res!832833 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27727))))

(declare-fun b!1248170 () Bool)

(declare-fun res!832830 () Bool)

(assert (=> b!1248170 (=> (not res!832830) (not e!708277))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80509 (_ BitVec 32)) Bool)

(assert (=> b!1248170 (= res!832830 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248171 () Bool)

(declare-fun res!832832 () Bool)

(assert (=> b!1248171 (=> (not res!832832) (not e!708277))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1248171 (= res!832832 (and (= (size!39356 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39355 _keys!1118) (size!39356 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1248172 () Bool)

(assert (=> b!1248172 (= e!708278 (and e!708275 mapRes!48889))))

(declare-fun condMapEmpty!48889 () Bool)

(declare-fun mapDefault!48889 () ValueCell!14947)

