; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104658 () Bool)

(assert start!104658)

(declare-fun b!1247441 () Bool)

(declare-fun e!707724 () Bool)

(assert (=> b!1247441 (= e!707724 false)))

(declare-fun lt!563214 () Bool)

(declare-datatypes ((array!80379 0))(
  ( (array!80380 (arr!38754 (Array (_ BitVec 32) (_ BitVec 64))) (size!39291 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80379)

(declare-datatypes ((List!27697 0))(
  ( (Nil!27694) (Cons!27693 (h!28902 (_ BitVec 64)) (t!41173 List!27697)) )
))
(declare-fun arrayNoDuplicates!0 (array!80379 (_ BitVec 32) List!27697) Bool)

(assert (=> b!1247441 (= lt!563214 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27694))))

(declare-fun b!1247442 () Bool)

(declare-fun e!707725 () Bool)

(declare-fun tp_is_empty!31351 () Bool)

(assert (=> b!1247442 (= e!707725 tp_is_empty!31351)))

(declare-fun b!1247443 () Bool)

(declare-fun e!707726 () Bool)

(assert (=> b!1247443 (= e!707726 tp_is_empty!31351)))

(declare-fun b!1247444 () Bool)

(declare-fun res!832438 () Bool)

(assert (=> b!1247444 (=> (not res!832438) (not e!707724))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!47167 0))(
  ( (V!47168 (val!15738 Int)) )
))
(declare-datatypes ((ValueCell!14912 0))(
  ( (ValueCellFull!14912 (v!18434 V!47167)) (EmptyCell!14912) )
))
(declare-datatypes ((array!80381 0))(
  ( (array!80382 (arr!38755 (Array (_ BitVec 32) ValueCell!14912)) (size!39292 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80381)

(assert (=> b!1247444 (= res!832438 (and (= (size!39292 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39291 _keys!1118) (size!39292 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1247445 () Bool)

(declare-fun res!832440 () Bool)

(assert (=> b!1247445 (=> (not res!832440) (not e!707724))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80379 (_ BitVec 32)) Bool)

(assert (=> b!1247445 (= res!832440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!48781 () Bool)

(declare-fun mapRes!48781 () Bool)

(declare-fun tp!92883 () Bool)

(assert (=> mapNonEmpty!48781 (= mapRes!48781 (and tp!92883 e!707725))))

(declare-fun mapKey!48781 () (_ BitVec 32))

(declare-fun mapValue!48781 () ValueCell!14912)

(declare-fun mapRest!48781 () (Array (_ BitVec 32) ValueCell!14912))

(assert (=> mapNonEmpty!48781 (= (arr!38755 _values!914) (store mapRest!48781 mapKey!48781 mapValue!48781))))

(declare-fun b!1247446 () Bool)

(declare-fun e!707723 () Bool)

(assert (=> b!1247446 (= e!707723 (and e!707726 mapRes!48781))))

(declare-fun condMapEmpty!48781 () Bool)

(declare-fun mapDefault!48781 () ValueCell!14912)

