; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104756 () Bool)

(assert start!104756)

(declare-fun b_free!26537 () Bool)

(declare-fun b_next!26537 () Bool)

(assert (=> start!104756 (= b_free!26537 (not b_next!26537))))

(declare-fun tp!93099 () Bool)

(declare-fun b_and!44311 () Bool)

(assert (=> start!104756 (= tp!93099 b_and!44311)))

(declare-fun res!832938 () Bool)

(declare-fun e!708414 () Bool)

(assert (=> start!104756 (=> (not res!832938) (not e!708414))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104756 (= res!832938 (validMask!0 mask!1466))))

(assert (=> start!104756 e!708414))

(assert (=> start!104756 true))

(assert (=> start!104756 tp!93099))

(declare-fun tp_is_empty!31439 () Bool)

(assert (=> start!104756 tp_is_empty!31439))

(declare-datatypes ((array!80545 0))(
  ( (array!80546 (arr!38836 (Array (_ BitVec 32) (_ BitVec 64))) (size!39373 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80545)

(declare-fun array_inv!29569 (array!80545) Bool)

(assert (=> start!104756 (array_inv!29569 _keys!1118)))

(declare-datatypes ((V!47283 0))(
  ( (V!47284 (val!15782 Int)) )
))
(declare-datatypes ((ValueCell!14956 0))(
  ( (ValueCellFull!14956 (v!18478 V!47283)) (EmptyCell!14956) )
))
(declare-datatypes ((array!80547 0))(
  ( (array!80548 (arr!38837 (Array (_ BitVec 32) ValueCell!14956)) (size!39374 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80547)

(declare-fun e!708412 () Bool)

(declare-fun array_inv!29570 (array!80547) Bool)

(assert (=> start!104756 (and (array_inv!29570 _values!914) e!708412)))

(declare-fun mapNonEmpty!48916 () Bool)

(declare-fun mapRes!48916 () Bool)

(declare-fun tp!93098 () Bool)

(declare-fun e!708411 () Bool)

(assert (=> mapNonEmpty!48916 (= mapRes!48916 (and tp!93098 e!708411))))

(declare-fun mapValue!48916 () ValueCell!14956)

(declare-fun mapRest!48916 () (Array (_ BitVec 32) ValueCell!14956))

(declare-fun mapKey!48916 () (_ BitVec 32))

(assert (=> mapNonEmpty!48916 (= (arr!38837 _values!914) (store mapRest!48916 mapKey!48916 mapValue!48916))))

(declare-fun b!1248357 () Bool)

(declare-fun e!708410 () Bool)

(assert (=> b!1248357 (= e!708412 (and e!708410 mapRes!48916))))

(declare-fun condMapEmpty!48916 () Bool)

(declare-fun mapDefault!48916 () ValueCell!14956)

