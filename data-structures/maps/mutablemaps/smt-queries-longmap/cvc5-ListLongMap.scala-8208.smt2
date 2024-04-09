; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100150 () Bool)

(assert start!100150)

(declare-fun res!794338 () Bool)

(declare-fun e!678509 () Bool)

(assert (=> start!100150 (=> (not res!794338) (not e!678509))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77208 0))(
  ( (array!77209 (arr!37250 (Array (_ BitVec 32) (_ BitVec 64))) (size!37787 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77208)

(assert (=> start!100150 (= res!794338 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37787 _keys!1208))))))

(assert (=> start!100150 e!678509))

(declare-fun array_inv!28296 (array!77208) Bool)

(assert (=> start!100150 (array_inv!28296 _keys!1208)))

(assert (=> start!100150 true))

(declare-datatypes ((V!45425 0))(
  ( (V!45426 (val!15168 Int)) )
))
(declare-datatypes ((ValueCell!14402 0))(
  ( (ValueCellFull!14402 (v!17807 V!45425)) (EmptyCell!14402) )
))
(declare-datatypes ((array!77210 0))(
  ( (array!77211 (arr!37251 (Array (_ BitVec 32) ValueCell!14402)) (size!37788 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77210)

(declare-fun e!678507 () Bool)

(declare-fun array_inv!28297 (array!77210) Bool)

(assert (=> start!100150 (and (array_inv!28297 _values!996) e!678507)))

(declare-fun b!1193786 () Bool)

(declare-fun e!678508 () Bool)

(declare-fun mapRes!47162 () Bool)

(assert (=> b!1193786 (= e!678507 (and e!678508 mapRes!47162))))

(declare-fun condMapEmpty!47162 () Bool)

(declare-fun mapDefault!47162 () ValueCell!14402)

