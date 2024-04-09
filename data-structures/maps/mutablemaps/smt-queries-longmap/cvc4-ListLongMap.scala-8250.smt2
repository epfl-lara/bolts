; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100488 () Bool)

(assert start!100488)

(declare-fun b_free!25775 () Bool)

(declare-fun b_next!25775 () Bool)

(assert (=> start!100488 (= b_free!25775 (not b_next!25775))))

(declare-fun tp!90315 () Bool)

(declare-fun b_and!42451 () Bool)

(assert (=> start!100488 (= tp!90315 b_and!42451)))

(declare-fun b!1199388 () Bool)

(declare-fun res!798414 () Bool)

(declare-fun e!681255 () Bool)

(assert (=> b!1199388 (=> (not res!798414) (not e!681255))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1199388 (= res!798414 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!47561 () Bool)

(declare-fun mapRes!47561 () Bool)

(assert (=> mapIsEmpty!47561 mapRes!47561))

(declare-fun b!1199389 () Bool)

(declare-fun res!798410 () Bool)

(assert (=> b!1199389 (=> (not res!798410) (not e!681255))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!77714 0))(
  ( (array!77715 (arr!37498 (Array (_ BitVec 32) (_ BitVec 64))) (size!38035 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77714)

(assert (=> b!1199389 (= res!798410 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38035 _keys!1208))))))

(declare-fun b!1199390 () Bool)

(declare-fun e!681254 () Bool)

(declare-fun e!681253 () Bool)

(assert (=> b!1199390 (= e!681254 (and e!681253 mapRes!47561))))

(declare-fun condMapEmpty!47561 () Bool)

(declare-datatypes ((V!45765 0))(
  ( (V!45766 (val!15296 Int)) )
))
(declare-datatypes ((ValueCell!14530 0))(
  ( (ValueCellFull!14530 (v!17935 V!45765)) (EmptyCell!14530) )
))
(declare-datatypes ((array!77716 0))(
  ( (array!77717 (arr!37499 (Array (_ BitVec 32) ValueCell!14530)) (size!38036 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77716)

(declare-fun mapDefault!47561 () ValueCell!14530)

