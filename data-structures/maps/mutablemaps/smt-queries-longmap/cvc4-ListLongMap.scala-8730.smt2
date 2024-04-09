; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105914 () Bool)

(assert start!105914)

(declare-fun b_free!27419 () Bool)

(declare-fun b_next!27419 () Bool)

(assert (=> start!105914 (= b_free!27419 (not b_next!27419))))

(declare-fun tp!95790 () Bool)

(declare-fun b_and!45337 () Bool)

(assert (=> start!105914 (= tp!95790 b_and!45337)))

(declare-fun b!1261049 () Bool)

(declare-fun e!717714 () Bool)

(declare-fun e!717711 () Bool)

(declare-fun mapRes!50284 () Bool)

(assert (=> b!1261049 (= e!717714 (and e!717711 mapRes!50284))))

(declare-fun condMapEmpty!50284 () Bool)

(declare-datatypes ((V!48459 0))(
  ( (V!48460 (val!16223 Int)) )
))
(declare-datatypes ((ValueCell!15397 0))(
  ( (ValueCellFull!15397 (v!18927 V!48459)) (EmptyCell!15397) )
))
(declare-datatypes ((array!82247 0))(
  ( (array!82248 (arr!39672 (Array (_ BitVec 32) ValueCell!15397)) (size!40209 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82247)

(declare-fun mapDefault!50284 () ValueCell!15397)

