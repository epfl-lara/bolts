; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104728 () Bool)

(assert start!104728)

(declare-fun b_free!26509 () Bool)

(declare-fun b_next!26509 () Bool)

(assert (=> start!104728 (= b_free!26509 (not b_next!26509))))

(declare-fun tp!93014 () Bool)

(declare-fun b_and!44283 () Bool)

(assert (=> start!104728 (= tp!93014 b_and!44283)))

(declare-fun b!1248063 () Bool)

(declare-fun e!708204 () Bool)

(declare-fun tp_is_empty!31411 () Bool)

(assert (=> b!1248063 (= e!708204 tp_is_empty!31411)))

(declare-fun b!1248064 () Bool)

(declare-fun e!708200 () Bool)

(assert (=> b!1248064 (= e!708200 tp_is_empty!31411)))

(declare-fun mapIsEmpty!48874 () Bool)

(declare-fun mapRes!48874 () Bool)

(assert (=> mapIsEmpty!48874 mapRes!48874))

(declare-fun b!1248066 () Bool)

(declare-fun res!832773 () Bool)

(declare-fun e!708201 () Bool)

(assert (=> b!1248066 (=> (not res!832773) (not e!708201))))

(declare-datatypes ((array!80489 0))(
  ( (array!80490 (arr!38808 (Array (_ BitVec 32) (_ BitVec 64))) (size!39345 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80489)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80489 (_ BitVec 32)) Bool)

(assert (=> b!1248066 (= res!832773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248067 () Bool)

(declare-fun res!832771 () Bool)

(assert (=> b!1248067 (=> (not res!832771) (not e!708201))))

(declare-datatypes ((List!27721 0))(
  ( (Nil!27718) (Cons!27717 (h!28926 (_ BitVec 64)) (t!41197 List!27721)) )
))
(declare-fun arrayNoDuplicates!0 (array!80489 (_ BitVec 32) List!27721) Bool)

(assert (=> b!1248067 (= res!832771 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27718))))

(declare-fun b!1248068 () Bool)

(assert (=> b!1248068 (= e!708201 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((V!47247 0))(
  ( (V!47248 (val!15768 Int)) )
))
(declare-datatypes ((tuple2!20464 0))(
  ( (tuple2!20465 (_1!10242 (_ BitVec 64)) (_2!10242 V!47247)) )
))
(declare-datatypes ((List!27722 0))(
  ( (Nil!27719) (Cons!27718 (h!28927 tuple2!20464) (t!41198 List!27722)) )
))
(declare-datatypes ((ListLongMap!18349 0))(
  ( (ListLongMap!18350 (toList!9190 List!27722)) )
))
(declare-fun lt!563304 () ListLongMap!18349)

(declare-fun zeroValue!871 () V!47247)

(declare-datatypes ((ValueCell!14942 0))(
  ( (ValueCellFull!14942 (v!18464 V!47247)) (EmptyCell!14942) )
))
(declare-datatypes ((array!80491 0))(
  ( (array!80492 (arr!38809 (Array (_ BitVec 32) ValueCell!14942)) (size!39346 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80491)

(declare-fun minValueBefore!43 () V!47247)

(declare-fun getCurrentListMapNoExtraKeys!5573 (array!80489 array!80491 (_ BitVec 32) (_ BitVec 32) V!47247 V!47247 (_ BitVec 32) Int) ListLongMap!18349)

(assert (=> b!1248068 (= lt!563304 (getCurrentListMapNoExtraKeys!5573 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!48874 () Bool)

(declare-fun tp!93015 () Bool)

(assert (=> mapNonEmpty!48874 (= mapRes!48874 (and tp!93015 e!708204))))

(declare-fun mapValue!48874 () ValueCell!14942)

(declare-fun mapKey!48874 () (_ BitVec 32))

(declare-fun mapRest!48874 () (Array (_ BitVec 32) ValueCell!14942))

(assert (=> mapNonEmpty!48874 (= (arr!38809 _values!914) (store mapRest!48874 mapKey!48874 mapValue!48874))))

(declare-fun b!1248069 () Bool)

(declare-fun e!708202 () Bool)

(assert (=> b!1248069 (= e!708202 (and e!708200 mapRes!48874))))

(declare-fun condMapEmpty!48874 () Bool)

(declare-fun mapDefault!48874 () ValueCell!14942)

