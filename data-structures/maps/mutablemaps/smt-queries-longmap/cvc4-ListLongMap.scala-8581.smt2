; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104744 () Bool)

(assert start!104744)

(declare-fun b_free!26525 () Bool)

(declare-fun b_next!26525 () Bool)

(assert (=> start!104744 (= b_free!26525 (not b_next!26525))))

(declare-fun tp!93062 () Bool)

(declare-fun b_and!44299 () Bool)

(assert (=> start!104744 (= tp!93062 b_and!44299)))

(declare-fun b!1248231 () Bool)

(declare-fun res!832868 () Bool)

(declare-fun e!708321 () Bool)

(assert (=> b!1248231 (=> (not res!832868) (not e!708321))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80521 0))(
  ( (array!80522 (arr!38824 (Array (_ BitVec 32) (_ BitVec 64))) (size!39361 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80521)

(declare-datatypes ((V!47267 0))(
  ( (V!47268 (val!15776 Int)) )
))
(declare-datatypes ((ValueCell!14950 0))(
  ( (ValueCellFull!14950 (v!18472 V!47267)) (EmptyCell!14950) )
))
(declare-datatypes ((array!80523 0))(
  ( (array!80524 (arr!38825 (Array (_ BitVec 32) ValueCell!14950)) (size!39362 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80523)

(declare-fun mask!1466 () (_ BitVec 32))

(assert (=> b!1248231 (= res!832868 (and (= (size!39362 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39361 _keys!1118) (size!39362 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1248232 () Bool)

(declare-fun e!708324 () Bool)

(declare-fun tp_is_empty!31427 () Bool)

(assert (=> b!1248232 (= e!708324 tp_is_empty!31427)))

(declare-fun mapNonEmpty!48898 () Bool)

(declare-fun mapRes!48898 () Bool)

(declare-fun tp!93063 () Bool)

(declare-fun e!708320 () Bool)

(assert (=> mapNonEmpty!48898 (= mapRes!48898 (and tp!93063 e!708320))))

(declare-fun mapRest!48898 () (Array (_ BitVec 32) ValueCell!14950))

(declare-fun mapValue!48898 () ValueCell!14950)

(declare-fun mapKey!48898 () (_ BitVec 32))

(assert (=> mapNonEmpty!48898 (= (arr!38825 _values!914) (store mapRest!48898 mapKey!48898 mapValue!48898))))

(declare-fun b!1248234 () Bool)

(declare-fun res!832869 () Bool)

(assert (=> b!1248234 (=> (not res!832869) (not e!708321))))

(declare-datatypes ((List!27735 0))(
  ( (Nil!27732) (Cons!27731 (h!28940 (_ BitVec 64)) (t!41211 List!27735)) )
))
(declare-fun arrayNoDuplicates!0 (array!80521 (_ BitVec 32) List!27735) Bool)

(assert (=> b!1248234 (= res!832869 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27732))))

(declare-fun b!1248235 () Bool)

(assert (=> b!1248235 (= e!708320 tp_is_empty!31427)))

(declare-fun mapIsEmpty!48898 () Bool)

(assert (=> mapIsEmpty!48898 mapRes!48898))

(declare-fun res!832866 () Bool)

(assert (=> start!104744 (=> (not res!832866) (not e!708321))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104744 (= res!832866 (validMask!0 mask!1466))))

(assert (=> start!104744 e!708321))

(assert (=> start!104744 true))

(assert (=> start!104744 tp!93062))

(assert (=> start!104744 tp_is_empty!31427))

(declare-fun array_inv!29561 (array!80521) Bool)

(assert (=> start!104744 (array_inv!29561 _keys!1118)))

(declare-fun e!708323 () Bool)

(declare-fun array_inv!29562 (array!80523) Bool)

(assert (=> start!104744 (and (array_inv!29562 _values!914) e!708323)))

(declare-fun b!1248233 () Bool)

(declare-fun res!832867 () Bool)

(assert (=> b!1248233 (=> (not res!832867) (not e!708321))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80521 (_ BitVec 32)) Bool)

(assert (=> b!1248233 (= res!832867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248236 () Bool)

(assert (=> b!1248236 (= e!708323 (and e!708324 mapRes!48898))))

(declare-fun condMapEmpty!48898 () Bool)

(declare-fun mapDefault!48898 () ValueCell!14950)

