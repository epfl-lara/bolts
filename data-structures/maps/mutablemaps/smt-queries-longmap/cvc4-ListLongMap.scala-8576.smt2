; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104714 () Bool)

(assert start!104714)

(declare-fun b_free!26495 () Bool)

(declare-fun b_next!26495 () Bool)

(assert (=> start!104714 (= b_free!26495 (not b_next!26495))))

(declare-fun tp!92972 () Bool)

(declare-fun b_and!44269 () Bool)

(assert (=> start!104714 (= tp!92972 b_and!44269)))

(declare-fun b!1247916 () Bool)

(declare-fun res!832689 () Bool)

(declare-fun e!708096 () Bool)

(assert (=> b!1247916 (=> (not res!832689) (not e!708096))))

(declare-datatypes ((array!80463 0))(
  ( (array!80464 (arr!38795 (Array (_ BitVec 32) (_ BitVec 64))) (size!39332 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80463)

(declare-datatypes ((List!27713 0))(
  ( (Nil!27710) (Cons!27709 (h!28918 (_ BitVec 64)) (t!41189 List!27713)) )
))
(declare-fun arrayNoDuplicates!0 (array!80463 (_ BitVec 32) List!27713) Bool)

(assert (=> b!1247916 (= res!832689 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27710))))

(declare-fun res!832686 () Bool)

(assert (=> start!104714 (=> (not res!832686) (not e!708096))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104714 (= res!832686 (validMask!0 mask!1466))))

(assert (=> start!104714 e!708096))

(assert (=> start!104714 true))

(assert (=> start!104714 tp!92972))

(declare-fun tp_is_empty!31397 () Bool)

(assert (=> start!104714 tp_is_empty!31397))

(declare-fun array_inv!29541 (array!80463) Bool)

(assert (=> start!104714 (array_inv!29541 _keys!1118)))

(declare-datatypes ((V!47227 0))(
  ( (V!47228 (val!15761 Int)) )
))
(declare-datatypes ((ValueCell!14935 0))(
  ( (ValueCellFull!14935 (v!18457 V!47227)) (EmptyCell!14935) )
))
(declare-datatypes ((array!80465 0))(
  ( (array!80466 (arr!38796 (Array (_ BitVec 32) ValueCell!14935)) (size!39333 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80465)

(declare-fun e!708095 () Bool)

(declare-fun array_inv!29542 (array!80465) Bool)

(assert (=> start!104714 (and (array_inv!29542 _values!914) e!708095)))

(declare-fun b!1247917 () Bool)

(declare-fun e!708099 () Bool)

(assert (=> b!1247917 (= e!708099 tp_is_empty!31397)))

(declare-fun mapNonEmpty!48853 () Bool)

(declare-fun mapRes!48853 () Bool)

(declare-fun tp!92973 () Bool)

(declare-fun e!708098 () Bool)

(assert (=> mapNonEmpty!48853 (= mapRes!48853 (and tp!92973 e!708098))))

(declare-fun mapKey!48853 () (_ BitVec 32))

(declare-fun mapRest!48853 () (Array (_ BitVec 32) ValueCell!14935))

(declare-fun mapValue!48853 () ValueCell!14935)

(assert (=> mapNonEmpty!48853 (= (arr!38796 _values!914) (store mapRest!48853 mapKey!48853 mapValue!48853))))

(declare-fun b!1247918 () Bool)

(assert (=> b!1247918 (= e!708098 tp_is_empty!31397)))

(declare-fun b!1247919 () Bool)

(assert (=> b!1247919 (= e!708095 (and e!708099 mapRes!48853))))

(declare-fun condMapEmpty!48853 () Bool)

(declare-fun mapDefault!48853 () ValueCell!14935)

