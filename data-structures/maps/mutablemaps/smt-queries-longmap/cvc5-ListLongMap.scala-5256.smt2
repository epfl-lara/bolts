; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70680 () Bool)

(assert start!70680)

(declare-fun b_free!12943 () Bool)

(declare-fun b_next!12943 () Bool)

(assert (=> start!70680 (= b_free!12943 (not b_next!12943))))

(declare-fun tp!45568 () Bool)

(declare-fun b_and!21815 () Bool)

(assert (=> start!70680 (= tp!45568 b_and!21815)))

(declare-fun mapIsEmpty!23584 () Bool)

(declare-fun mapRes!23584 () Bool)

(assert (=> mapIsEmpty!23584 mapRes!23584))

(declare-fun res!559992 () Bool)

(declare-fun e!455992 () Bool)

(assert (=> start!70680 (=> (not res!559992) (not e!455992))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70680 (= res!559992 (validMask!0 mask!1312))))

(assert (=> start!70680 e!455992))

(declare-fun tp_is_empty!14653 () Bool)

(assert (=> start!70680 tp_is_empty!14653))

(declare-datatypes ((array!45468 0))(
  ( (array!45469 (arr!21782 (Array (_ BitVec 32) (_ BitVec 64))) (size!22203 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45468)

(declare-fun array_inv!17377 (array!45468) Bool)

(assert (=> start!70680 (array_inv!17377 _keys!976)))

(assert (=> start!70680 true))

(declare-datatypes ((V!24539 0))(
  ( (V!24540 (val!7374 Int)) )
))
(declare-datatypes ((ValueCell!6911 0))(
  ( (ValueCellFull!6911 (v!9801 V!24539)) (EmptyCell!6911) )
))
(declare-datatypes ((array!45470 0))(
  ( (array!45471 (arr!21783 (Array (_ BitVec 32) ValueCell!6911)) (size!22204 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45470)

(declare-fun e!455993 () Bool)

(declare-fun array_inv!17378 (array!45470) Bool)

(assert (=> start!70680 (and (array_inv!17378 _values!788) e!455993)))

(assert (=> start!70680 tp!45568))

(declare-fun b!820623 () Bool)

(declare-fun e!455991 () Bool)

(assert (=> b!820623 (= e!455993 (and e!455991 mapRes!23584))))

(declare-fun condMapEmpty!23584 () Bool)

(declare-fun mapDefault!23584 () ValueCell!6911)

