; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100436 () Bool)

(assert start!100436)

(declare-fun b_free!25723 () Bool)

(declare-fun b_next!25723 () Bool)

(assert (=> start!100436 (= b_free!25723 (not b_next!25723))))

(declare-fun tp!90160 () Bool)

(declare-fun b_and!42353 () Bool)

(assert (=> start!100436 (= tp!90160 b_and!42353)))

(declare-fun b!1198250 () Bool)

(declare-fun res!797554 () Bool)

(declare-fun e!680708 () Bool)

(assert (=> b!1198250 (=> (not res!797554) (not e!680708))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!77616 0))(
  ( (array!77617 (arr!37449 (Array (_ BitVec 32) (_ BitVec 64))) (size!37986 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77616)

(assert (=> b!1198250 (= res!797554 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37986 _keys!1208))))))

(declare-fun b!1198251 () Bool)

(declare-fun e!680711 () Bool)

(assert (=> b!1198251 (= e!680708 e!680711)))

(declare-fun res!797553 () Bool)

(assert (=> b!1198251 (=> (not res!797553) (not e!680711))))

(declare-fun lt!543414 () array!77616)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77616 (_ BitVec 32)) Bool)

(assert (=> b!1198251 (= res!797553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543414 mask!1564))))

(assert (=> b!1198251 (= lt!543414 (array!77617 (store (arr!37449 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37986 _keys!1208)))))

(declare-fun b!1198252 () Bool)

(declare-fun res!797556 () Bool)

(assert (=> b!1198252 (=> (not res!797556) (not e!680708))))

(declare-datatypes ((List!26510 0))(
  ( (Nil!26507) (Cons!26506 (h!27715 (_ BitVec 64)) (t!39224 List!26510)) )
))
(declare-fun arrayNoDuplicates!0 (array!77616 (_ BitVec 32) List!26510) Bool)

(assert (=> b!1198252 (= res!797556 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26507))))

(declare-fun b!1198253 () Bool)

(declare-fun e!680707 () Bool)

(declare-fun e!680709 () Bool)

(declare-fun mapRes!47483 () Bool)

(assert (=> b!1198253 (= e!680707 (and e!680709 mapRes!47483))))

(declare-fun condMapEmpty!47483 () Bool)

(declare-datatypes ((V!45697 0))(
  ( (V!45698 (val!15270 Int)) )
))
(declare-datatypes ((ValueCell!14504 0))(
  ( (ValueCellFull!14504 (v!17909 V!45697)) (EmptyCell!14504) )
))
(declare-datatypes ((array!77618 0))(
  ( (array!77619 (arr!37450 (Array (_ BitVec 32) ValueCell!14504)) (size!37987 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77618)

(declare-fun mapDefault!47483 () ValueCell!14504)

