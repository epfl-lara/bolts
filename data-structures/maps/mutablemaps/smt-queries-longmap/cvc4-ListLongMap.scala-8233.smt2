; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100346 () Bool)

(assert start!100346)

(declare-fun b_free!25697 () Bool)

(declare-fun b_next!25697 () Bool)

(assert (=> start!100346 (= b_free!25697 (not b_next!25697))))

(declare-fun tp!90039 () Bool)

(declare-fun b_and!42275 () Bool)

(assert (=> start!100346 (= tp!90039 b_and!42275)))

(declare-fun b!1196949 () Bool)

(declare-fun e!680045 () Bool)

(declare-fun e!680049 () Bool)

(declare-fun mapRes!47402 () Bool)

(assert (=> b!1196949 (= e!680045 (and e!680049 mapRes!47402))))

(declare-fun condMapEmpty!47402 () Bool)

(declare-datatypes ((V!45629 0))(
  ( (V!45630 (val!15245 Int)) )
))
(declare-datatypes ((ValueCell!14479 0))(
  ( (ValueCellFull!14479 (v!17884 V!45629)) (EmptyCell!14479) )
))
(declare-datatypes ((array!77514 0))(
  ( (array!77515 (arr!37400 (Array (_ BitVec 32) ValueCell!14479)) (size!37937 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77514)

(declare-fun mapDefault!47402 () ValueCell!14479)

