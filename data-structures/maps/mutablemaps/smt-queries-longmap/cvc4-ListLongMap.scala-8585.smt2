; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104780 () Bool)

(assert start!104780)

(declare-fun b_free!26549 () Bool)

(declare-fun b_next!26549 () Bool)

(assert (=> start!104780 (= b_free!26549 (not b_next!26549))))

(declare-fun tp!93138 () Bool)

(declare-fun b_and!44327 () Bool)

(assert (=> start!104780 (= tp!93138 b_and!44327)))

(declare-fun mapNonEmpty!48937 () Bool)

(declare-fun mapRes!48937 () Bool)

(declare-fun tp!93137 () Bool)

(declare-fun e!708552 () Bool)

(assert (=> mapNonEmpty!48937 (= mapRes!48937 (and tp!93137 e!708552))))

(declare-fun mapKey!48937 () (_ BitVec 32))

(declare-datatypes ((V!47299 0))(
  ( (V!47300 (val!15788 Int)) )
))
(declare-datatypes ((ValueCell!14962 0))(
  ( (ValueCellFull!14962 (v!18484 V!47299)) (EmptyCell!14962) )
))
(declare-datatypes ((array!80571 0))(
  ( (array!80572 (arr!38848 (Array (_ BitVec 32) ValueCell!14962)) (size!39385 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80571)

(declare-fun mapRest!48937 () (Array (_ BitVec 32) ValueCell!14962))

(declare-fun mapValue!48937 () ValueCell!14962)

(assert (=> mapNonEmpty!48937 (= (arr!38848 _values!914) (store mapRest!48937 mapKey!48937 mapValue!48937))))

(declare-fun mapIsEmpty!48937 () Bool)

(assert (=> mapIsEmpty!48937 mapRes!48937))

(declare-fun b!1248557 () Bool)

(declare-fun res!833038 () Bool)

(declare-fun e!708549 () Bool)

(assert (=> b!1248557 (=> (not res!833038) (not e!708549))))

(declare-datatypes ((array!80573 0))(
  ( (array!80574 (arr!38849 (Array (_ BitVec 32) (_ BitVec 64))) (size!39386 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80573)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80573 (_ BitVec 32)) Bool)

(assert (=> b!1248557 (= res!833038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248558 () Bool)

(declare-fun e!708550 () Bool)

(declare-fun e!708551 () Bool)

(assert (=> b!1248558 (= e!708550 (and e!708551 mapRes!48937))))

(declare-fun condMapEmpty!48937 () Bool)

(declare-fun mapDefault!48937 () ValueCell!14962)

