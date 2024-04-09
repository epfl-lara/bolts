; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100174 () Bool)

(assert start!100174)

(declare-fun res!794618 () Bool)

(declare-fun e!678712 () Bool)

(assert (=> start!100174 (=> (not res!794618) (not e!678712))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77256 0))(
  ( (array!77257 (arr!37274 (Array (_ BitVec 32) (_ BitVec 64))) (size!37811 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77256)

(assert (=> start!100174 (= res!794618 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37811 _keys!1208))))))

(assert (=> start!100174 e!678712))

(declare-fun array_inv!28314 (array!77256) Bool)

(assert (=> start!100174 (array_inv!28314 _keys!1208)))

(assert (=> start!100174 true))

(declare-datatypes ((V!45457 0))(
  ( (V!45458 (val!15180 Int)) )
))
(declare-datatypes ((ValueCell!14414 0))(
  ( (ValueCellFull!14414 (v!17819 V!45457)) (EmptyCell!14414) )
))
(declare-datatypes ((array!77258 0))(
  ( (array!77259 (arr!37275 (Array (_ BitVec 32) ValueCell!14414)) (size!37812 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77258)

(declare-fun e!678709 () Bool)

(declare-fun array_inv!28315 (array!77258) Bool)

(assert (=> start!100174 (and (array_inv!28315 _values!996) e!678709)))

(declare-fun b!1194174 () Bool)

(declare-fun res!794620 () Bool)

(assert (=> b!1194174 (=> (not res!794620) (not e!678712))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1194174 (= res!794620 (validKeyInArray!0 k!934))))

(declare-fun b!1194175 () Bool)

(declare-fun e!678711 () Bool)

(declare-fun mapRes!47198 () Bool)

(assert (=> b!1194175 (= e!678709 (and e!678711 mapRes!47198))))

(declare-fun condMapEmpty!47198 () Bool)

(declare-fun mapDefault!47198 () ValueCell!14414)

