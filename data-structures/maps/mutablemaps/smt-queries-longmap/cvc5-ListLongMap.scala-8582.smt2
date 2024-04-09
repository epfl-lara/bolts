; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104746 () Bool)

(assert start!104746)

(declare-fun b_free!26527 () Bool)

(declare-fun b_next!26527 () Bool)

(assert (=> start!104746 (= b_free!26527 (not b_next!26527))))

(declare-fun tp!93069 () Bool)

(declare-fun b_and!44301 () Bool)

(assert (=> start!104746 (= tp!93069 b_and!44301)))

(declare-fun b!1248252 () Bool)

(declare-fun res!832881 () Bool)

(declare-fun e!708335 () Bool)

(assert (=> b!1248252 (=> (not res!832881) (not e!708335))))

(declare-datatypes ((array!80525 0))(
  ( (array!80526 (arr!38826 (Array (_ BitVec 32) (_ BitVec 64))) (size!39363 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80525)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80525 (_ BitVec 32)) Bool)

(assert (=> b!1248252 (= res!832881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248253 () Bool)

(declare-fun e!708339 () Bool)

(declare-fun e!708336 () Bool)

(declare-fun mapRes!48901 () Bool)

(assert (=> b!1248253 (= e!708339 (and e!708336 mapRes!48901))))

(declare-fun condMapEmpty!48901 () Bool)

(declare-datatypes ((V!47271 0))(
  ( (V!47272 (val!15777 Int)) )
))
(declare-datatypes ((ValueCell!14951 0))(
  ( (ValueCellFull!14951 (v!18473 V!47271)) (EmptyCell!14951) )
))
(declare-datatypes ((array!80527 0))(
  ( (array!80528 (arr!38827 (Array (_ BitVec 32) ValueCell!14951)) (size!39364 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80527)

(declare-fun mapDefault!48901 () ValueCell!14951)

